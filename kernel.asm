
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000d117          	auipc	sp,0xd
    80000004:	e7013103          	ld	sp,-400(sp) # 8000ce70 <_GLOBAL_OFFSET_TABLE_+0x38>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	000070ef          	jal	ra,8000701c <start>

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
    80001080:	6c5010ef          	jal	ra,80002f44 <_ZN5RiscV22handle_supervisor_trapEv>

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
    80001270:	67c080e7          	jalr	1660(ra) # 800028e8 <_ZN15MemoryAllocator20get_number_of_blocksEm>
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
    800016c4:	54078793          	addi	a5,a5,1344 # 8000cc00 <_ZTV3Sem+0x10>
    800016c8:	00f53023          	sd	a5,0(a0) # 1000 <_entry-0x7ffff000>
    blocked_threads -> free();
    800016cc:	00853503          	ld	a0,8(a0)
    800016d0:	00002097          	auipc	ra,0x2
    800016d4:	d7c080e7          	jalr	-644(ra) # 8000344c <_ZN10ThreadList4freeEv>
    delete blocked_threads;
    800016d8:	0084b503          	ld	a0,8(s1)
    800016dc:	00050663          	beqz	a0,800016e8 <_ZN3SemD1Ev+0x40>
    800016e0:	00002097          	auipc	ra,0x2
    800016e4:	c30080e7          	jalr	-976(ra) # 80003310 <_ZN10ThreadListdlEPv>
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
    80001718:	4ec78793          	addi	a5,a5,1260 # 8000cc00 <_ZTV3Sem+0x10>
    8000171c:	00f53023          	sd	a5,0(a0)
    80001720:	00b52823          	sw	a1,16(a0)
    blocked_threads = new ThreadList();
    80001724:	01000513          	li	a0,16
    80001728:	00002097          	auipc	ra,0x2
    8000172c:	bb8080e7          	jalr	-1096(ra) # 800032e0 <_ZN10ThreadListnwEm>
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
    8000176c:	72093903          	ld	s2,1824(s2) # 8000ce88 <_GLOBAL_OFFSET_TABLE_+0x50>
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
    8000178c:	be0080e7          	jalr	-1056(ra) # 80003368 <_ZN10ThreadList9push_backEP3TCB>
    TCB::running = Scheduler::get();
    80001790:	00001097          	auipc	ra,0x1
    80001794:	460080e7          	jalr	1120(ra) # 80002bf0 <_ZN9Scheduler3getEv>
    80001798:	00050593          	mv	a1,a0
    8000179c:	00a93023          	sd	a0,0(s2)
    TCB::yield(old, TCB::running);
    800017a0:	00048513          	mv	a0,s1
    800017a4:	00002097          	auipc	ra,0x2
    800017a8:	dd8080e7          	jalr	-552(ra) # 8000357c <_ZN3TCB5yieldEPS_S0_>
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
    800017e0:	c1c080e7          	jalr	-996(ra) # 800033f8 <_ZN10ThreadList12remove_firstEv>
    800017e4:	00050493          	mv	s1,a0
    if (thread -> timed_wait) Scheduler::remove_from_sleep(thread);
    800017e8:	04854783          	lbu	a5,72(a0)
    800017ec:	02079c63          	bnez	a5,80001824 <_ZN3Sem7unblockEv+0x60>
    thread -> clear_from_timed_wait(false);
    800017f0:	00000593          	li	a1,0
    800017f4:	00048513          	mv	a0,s1
    800017f8:	00002097          	auipc	ra,0x2
    800017fc:	0fc080e7          	jalr	252(ra) # 800038f4 <_ZN3TCB21clear_from_timed_waitEb>
    thread -> status = TCB::RUNNABLE;
    80001800:	0204a023          	sw	zero,32(s1)
    Scheduler::put(thread);
    80001804:	00048513          	mv	a0,s1
    80001808:	00001097          	auipc	ra,0x1
    8000180c:	378080e7          	jalr	888(ra) # 80002b80 <_ZN9Scheduler3putEP3TCB>
}
    80001810:	01813083          	ld	ra,24(sp)
    80001814:	01013403          	ld	s0,16(sp)
    80001818:	00813483          	ld	s1,8(sp)
    8000181c:	02010113          	addi	sp,sp,32
    80001820:	00008067          	ret
    if (thread -> timed_wait) Scheduler::remove_from_sleep(thread);
    80001824:	00001097          	auipc	ra,0x1
    80001828:	438080e7          	jalr	1080(ra) # 80002c5c <_ZN9Scheduler17remove_from_sleepEP3TCB>
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
    80001854:	a00080e7          	jalr	-1536(ra) # 80003250 <_ZN10ThreadList9get_firstEv>
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
    80001964:	5287b783          	ld	a5,1320(a5) # 8000ce88 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001968:	0007b903          	ld	s2,0(a5)
    thread -> timed_wait = true;
    8000196c:	00100793          	li	a5,1
    80001970:	04f90423          	sb	a5,72(s2)
    Scheduler::put_to_sleep(time);
    80001974:	00058513          	mv	a0,a1
    80001978:	00001097          	auipc	ra,0x1
    8000197c:	3e8080e7          	jalr	1000(ra) # 80002d60 <_ZN9Scheduler12put_to_sleepEm>
    int status = wait(handle);
    80001980:	00048513          	mv	a0,s1
    80001984:	00000097          	auipc	ra,0x0
    80001988:	f18080e7          	jalr	-232(ra) # 8000189c <_ZN3Sem4waitEPS_>
    8000198c:	00050493          	mv	s1,a0
    Scheduler::remove_from_sleep(thread);
    80001990:	00090513          	mv	a0,s2
    80001994:	00001097          	auipc	ra,0x1
    80001998:	2c8080e7          	jalr	712(ra) # 80002c5c <_ZN9Scheduler17remove_from_sleepEP3TCB>
    thread -> clear_from_timed_wait(false);
    8000199c:	00000593          	li	a1,0
    800019a0:	00090513          	mv	a0,s2
    800019a4:	00002097          	auipc	ra,0x2
    800019a8:	f50080e7          	jalr	-176(ra) # 800038f4 <_ZN3TCB21clear_from_timed_waitEb>
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
    80001a14:	ed8080e7          	jalr	-296(ra) # 800028e8 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80001a18:	00001097          	auipc	ra,0x1
    80001a1c:	b0c080e7          	jalr	-1268(ra) # 80002524 <_ZN15MemoryAllocator9mem_allocEm>
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
    80001a44:	c58080e7          	jalr	-936(ra) # 80002698 <_ZN15MemoryAllocator8mem_freeEPv>
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
    80001ae0:	58c080e7          	jalr	1420(ra) # 8000e068 <_Unwind_Resume>

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
    80001b3c:	378080e7          	jalr	888(ra) # 80001eb0 <_ZN3Con11getc_outputEv>
            *(char *) CONSOLE_TX_DATA = c;
    80001b40:	0000b797          	auipc	a5,0xb
    80001b44:	3207b783          	ld	a5,800(a5) # 8000ce60 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001b48:	0007b783          	ld	a5,0(a5)
    80001b4c:	00a78023          	sb	a0,0(a5)
        while (*(char *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT) {
    80001b50:	0000b797          	auipc	a5,0xb
    80001b54:	2f87b783          	ld	a5,760(a5) # 8000ce48 <_GLOBAL_OFFSET_TABLE_+0x10>
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
    80001b88:	c30080e7          	jalr	-976(ra) # 800067b4 <_Z8userMainv>
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

0000000080001c94 <_Z7workerAPv>:

sem_t sem;

void workerA(void*) {
    80001c94:	ff010113          	addi	sp,sp,-16
    80001c98:	00113423          	sd	ra,8(sp)
    80001c9c:	00813023          	sd	s0,0(sp)
    80001ca0:	01010413          	addi	s0,sp,16
    while (true) {
        putc('A');
    80001ca4:	04100513          	li	a0,65
    80001ca8:	00000097          	auipc	ra,0x0
    80001cac:	9c4080e7          	jalr	-1596(ra) # 8000166c <_Z4putcc>
        sem_timedwait(sem, 10);
    80001cb0:	00a00593          	li	a1,10
    80001cb4:	0000b517          	auipc	a0,0xb
    80001cb8:	22c53503          	ld	a0,556(a0) # 8000cee0 <sem>
    80001cbc:	00000097          	auipc	ra,0x0
    80001cc0:	880080e7          	jalr	-1920(ra) # 8000153c <_Z13sem_timedwaitP3Semm>
    while (true) {
    80001cc4:	fe1ff06f          	j	80001ca4 <_Z7workerAPv+0x10>

0000000080001cc8 <_Z7workerBPv>:
    }
}

void workerB(void*) {
    80001cc8:	ff010113          	addi	sp,sp,-16
    80001ccc:	00113423          	sd	ra,8(sp)
    80001cd0:	00813023          	sd	s0,0(sp)
    80001cd4:	01010413          	addi	s0,sp,16
    while (true) {
        putc('B');
    80001cd8:	04200513          	li	a0,66
    80001cdc:	00000097          	auipc	ra,0x0
    80001ce0:	990080e7          	jalr	-1648(ra) # 8000166c <_Z4putcc>
        time_sleep(5);
    80001ce4:	00500513          	li	a0,5
    80001ce8:	00000097          	auipc	ra,0x0
    80001cec:	8ec080e7          	jalr	-1812(ra) # 800015d4 <_Z10time_sleepm>
    while (true) {
    80001cf0:	fe9ff06f          	j	80001cd8 <_Z7workerBPv+0x10>

0000000080001cf4 <main>:
        printNumber(value--);
        if (value < 0) terminate();
    }
};

int main() {
    80001cf4:	fd010113          	addi	sp,sp,-48
    80001cf8:	02113423          	sd	ra,40(sp)
    80001cfc:	02813023          	sd	s0,32(sp)
    80001d00:	03010413          	addi	s0,sp,48
    /// Set interrupt routine handler
    RiscV::write_stvec((uint64) &RiscV::handle_interrupt);
    80001d04:	0000b797          	auipc	a5,0xb
    80001d08:	1647b783          	ld	a5,356(a5) # 8000ce68 <_GLOBAL_OFFSET_TABLE_+0x30>
    __asm__ volatile ("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void RiscV::write_stvec(uint64 val) {
    __asm__ volatile ("csrw stvec, %0" : : "r"(val));
    80001d0c:	10579073          	csrw	stvec,a5

    /// Initialization
    MemoryAllocator::initialize();
    80001d10:	00001097          	auipc	ra,0x1
    80001d14:	bf8080e7          	jalr	-1032(ra) # 80002908 <_ZN15MemoryAllocator10initializeEv>
    Con::initialize();
    80001d18:	00000097          	auipc	ra,0x0
    80001d1c:	0a0080e7          	jalr	160(ra) # 80001db8 <_ZN3Con10initializeEv>

    thread_t threads[3];

    /// Main Thread
    thread_create(&threads[0], nullptr, nullptr);
    80001d20:	00000613          	li	a2,0
    80001d24:	00000593          	li	a1,0
    80001d28:	fd840513          	addi	a0,s0,-40
    80001d2c:	fffff097          	auipc	ra,0xfffff
    80001d30:	5cc080e7          	jalr	1484(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running = threads[0];
    80001d34:	fd843703          	ld	a4,-40(s0)
    80001d38:	0000b797          	auipc	a5,0xb
    80001d3c:	1507b783          	ld	a5,336(a5) # 8000ce88 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001d40:	00e7b023          	sd	a4,0(a5)
inline void RiscV::write_sip(uint64 val) {
    __asm__ volatile ("csrw sip, %0" : : "r"(val));
}

inline void RiscV::ms_sstatus(uint64 mask) {
    __asm__ volatile ("csrs sstatus, %0" : : "r"(mask));
    80001d44:	00200793          	li	a5,2
    80001d48:	1007a073          	csrs	sstatus,a5

    /// Enable external interrupts
    RiscV::ms_sstatus(RiscV::SSTATUS_SIE);

    /// Kernel Thread for console output
    thread_create(&threads[1], kernelConsoleOutput, nullptr);
    80001d4c:	00000613          	li	a2,0
    80001d50:	00000597          	auipc	a1,0x0
    80001d54:	dd458593          	addi	a1,a1,-556 # 80001b24 <_Z19kernelConsoleOutputPv>
    80001d58:	fe040513          	addi	a0,s0,-32
    80001d5c:	fffff097          	auipc	ra,0xfffff
    80001d60:	59c080e7          	jalr	1436(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    /// Test Periodic Thread
//    PeriodicThread *periodic = new PeriodicWorker();
//    periodic -> start();

    /// Test Everything
    thread_create(&threads[2], userMainWrapper, nullptr);
    80001d64:	00000613          	li	a2,0
    80001d68:	00000597          	auipc	a1,0x0
    80001d6c:	e0c58593          	addi	a1,a1,-500 # 80001b74 <_Z15userMainWrapperPv>
    80001d70:	fe840513          	addi	a0,s0,-24
    80001d74:	fffff097          	auipc	ra,0xfffff
    80001d78:	584080e7          	jalr	1412(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    80001d7c:	00c0006f          	j	80001d88 <main+0x94>
    while (!threads[2] -> is_finished() || !Con::isOutputBufferEmpty()) thread_dispatch();
    80001d80:	fffff097          	auipc	ra,0xfffff
    80001d84:	64c080e7          	jalr	1612(ra) # 800013cc <_Z15thread_dispatchv>
    80001d88:	fe843503          	ld	a0,-24(s0)
    80001d8c:	00002097          	auipc	ra,0x2
    80001d90:	b44080e7          	jalr	-1212(ra) # 800038d0 <_ZNK3TCB11is_finishedEv>
    80001d94:	fe0506e3          	beqz	a0,80001d80 <main+0x8c>
    80001d98:	00000097          	auipc	ra,0x0
    80001d9c:	1ac080e7          	jalr	428(ra) # 80001f44 <_ZN3Con19isOutputBufferEmptyEv>
    80001da0:	fe0500e3          	beqz	a0,80001d80 <main+0x8c>

    return 0;
    80001da4:	00000513          	li	a0,0
    80001da8:	02813083          	ld	ra,40(sp)
    80001dac:	02013403          	ld	s0,32(sp)
    80001db0:	03010113          	addi	sp,sp,48
    80001db4:	00008067          	ret

0000000080001db8 <_ZN3Con10initializeEv>:
bool Con::initialized = false;
BoundedBuffer* Con::input_buffer = nullptr;
BoundedBuffer* Con::output_buffer = nullptr;

void Con::initialize() {
    if (!initialized) {
    80001db8:	0000b797          	auipc	a5,0xb
    80001dbc:	1307c783          	lbu	a5,304(a5) # 8000cee8 <_ZN3Con11initializedE>
    80001dc0:	00078463          	beqz	a5,80001dc8 <_ZN3Con10initializeEv+0x10>
    80001dc4:	00008067          	ret
void Con::initialize() {
    80001dc8:	fe010113          	addi	sp,sp,-32
    80001dcc:	00113c23          	sd	ra,24(sp)
    80001dd0:	00813823          	sd	s0,16(sp)
    80001dd4:	00913423          	sd	s1,8(sp)
    80001dd8:	01213023          	sd	s2,0(sp)
    80001ddc:	02010413          	addi	s0,sp,32
        initialized = true;
    80001de0:	00100793          	li	a5,1
    80001de4:	0000b717          	auipc	a4,0xb
    80001de8:	10f70223          	sb	a5,260(a4) # 8000cee8 <_ZN3Con11initializedE>
        input_buffer = new BoundedBuffer();
    80001dec:	21000513          	li	a0,528
    80001df0:	00001097          	auipc	ra,0x1
    80001df4:	c38080e7          	jalr	-968(ra) # 80002a28 <_ZN13BoundedBuffernwEm>
    80001df8:	00050493          	mv	s1,a0
    80001dfc:	00001097          	auipc	ra,0x1
    80001e00:	b94080e7          	jalr	-1132(ra) # 80002990 <_ZN13BoundedBufferC1Ev>
    80001e04:	0000b797          	auipc	a5,0xb
    80001e08:	0e97b623          	sd	s1,236(a5) # 8000cef0 <_ZN3Con12input_bufferE>
        output_buffer = new BoundedBuffer();
    80001e0c:	21000513          	li	a0,528
    80001e10:	00001097          	auipc	ra,0x1
    80001e14:	c18080e7          	jalr	-1000(ra) # 80002a28 <_ZN13BoundedBuffernwEm>
    80001e18:	00050493          	mv	s1,a0
    80001e1c:	00001097          	auipc	ra,0x1
    80001e20:	b74080e7          	jalr	-1164(ra) # 80002990 <_ZN13BoundedBufferC1Ev>
    80001e24:	0000b797          	auipc	a5,0xb
    80001e28:	0c97ba23          	sd	s1,212(a5) # 8000cef8 <_ZN3Con13output_bufferE>
    }
}
    80001e2c:	01813083          	ld	ra,24(sp)
    80001e30:	01013403          	ld	s0,16(sp)
    80001e34:	00813483          	ld	s1,8(sp)
    80001e38:	00013903          	ld	s2,0(sp)
    80001e3c:	02010113          	addi	sp,sp,32
    80001e40:	00008067          	ret
    80001e44:	00050913          	mv	s2,a0
        input_buffer = new BoundedBuffer();
    80001e48:	00048513          	mv	a0,s1
    80001e4c:	00001097          	auipc	ra,0x1
    80001e50:	c0c080e7          	jalr	-1012(ra) # 80002a58 <_ZN13BoundedBufferdlEPv>
    80001e54:	00090513          	mv	a0,s2
    80001e58:	0000c097          	auipc	ra,0xc
    80001e5c:	210080e7          	jalr	528(ra) # 8000e068 <_Unwind_Resume>
    80001e60:	00050913          	mv	s2,a0
        output_buffer = new BoundedBuffer();
    80001e64:	00048513          	mv	a0,s1
    80001e68:	00001097          	auipc	ra,0x1
    80001e6c:	bf0080e7          	jalr	-1040(ra) # 80002a58 <_ZN13BoundedBufferdlEPv>
    80001e70:	00090513          	mv	a0,s2
    80001e74:	0000c097          	auipc	ra,0xc
    80001e78:	1f4080e7          	jalr	500(ra) # 8000e068 <_Unwind_Resume>

0000000080001e7c <_ZN3Con11putc_outputEc>:

void Con::putc_output(char c) {
    80001e7c:	ff010113          	addi	sp,sp,-16
    80001e80:	00113423          	sd	ra,8(sp)
    80001e84:	00813023          	sd	s0,0(sp)
    80001e88:	01010413          	addi	s0,sp,16
    80001e8c:	00050593          	mv	a1,a0
    output_buffer -> putc(c);
    80001e90:	0000b517          	auipc	a0,0xb
    80001e94:	06853503          	ld	a0,104(a0) # 8000cef8 <_ZN3Con13output_bufferE>
    80001e98:	00001097          	auipc	ra,0x1
    80001e9c:	be8080e7          	jalr	-1048(ra) # 80002a80 <_ZN13BoundedBuffer4putcEc>
}
    80001ea0:	00813083          	ld	ra,8(sp)
    80001ea4:	00013403          	ld	s0,0(sp)
    80001ea8:	01010113          	addi	sp,sp,16
    80001eac:	00008067          	ret

0000000080001eb0 <_ZN3Con11getc_outputEv>:

char Con::getc_output() {
    80001eb0:	ff010113          	addi	sp,sp,-16
    80001eb4:	00113423          	sd	ra,8(sp)
    80001eb8:	00813023          	sd	s0,0(sp)
    80001ebc:	01010413          	addi	s0,sp,16
    return output_buffer -> getc();
    80001ec0:	0000b517          	auipc	a0,0xb
    80001ec4:	03853503          	ld	a0,56(a0) # 8000cef8 <_ZN3Con13output_bufferE>
    80001ec8:	00001097          	auipc	ra,0x1
    80001ecc:	c24080e7          	jalr	-988(ra) # 80002aec <_ZN13BoundedBuffer4getcEv>
}
    80001ed0:	00813083          	ld	ra,8(sp)
    80001ed4:	00013403          	ld	s0,0(sp)
    80001ed8:	01010113          	addi	sp,sp,16
    80001edc:	00008067          	ret

0000000080001ee0 <_ZN3Con10putc_inputEc>:

void Con::putc_input(char c) {
    80001ee0:	ff010113          	addi	sp,sp,-16
    80001ee4:	00113423          	sd	ra,8(sp)
    80001ee8:	00813023          	sd	s0,0(sp)
    80001eec:	01010413          	addi	s0,sp,16
    80001ef0:	00050593          	mv	a1,a0
    input_buffer -> putc(c);
    80001ef4:	0000b517          	auipc	a0,0xb
    80001ef8:	ffc53503          	ld	a0,-4(a0) # 8000cef0 <_ZN3Con12input_bufferE>
    80001efc:	00001097          	auipc	ra,0x1
    80001f00:	b84080e7          	jalr	-1148(ra) # 80002a80 <_ZN13BoundedBuffer4putcEc>
}
    80001f04:	00813083          	ld	ra,8(sp)
    80001f08:	00013403          	ld	s0,0(sp)
    80001f0c:	01010113          	addi	sp,sp,16
    80001f10:	00008067          	ret

0000000080001f14 <_ZN3Con10getc_inputEv>:

char Con::getc_input() {
    80001f14:	ff010113          	addi	sp,sp,-16
    80001f18:	00113423          	sd	ra,8(sp)
    80001f1c:	00813023          	sd	s0,0(sp)
    80001f20:	01010413          	addi	s0,sp,16
    return input_buffer -> getc();
    80001f24:	0000b517          	auipc	a0,0xb
    80001f28:	fcc53503          	ld	a0,-52(a0) # 8000cef0 <_ZN3Con12input_bufferE>
    80001f2c:	00001097          	auipc	ra,0x1
    80001f30:	bc0080e7          	jalr	-1088(ra) # 80002aec <_ZN13BoundedBuffer4getcEv>
}
    80001f34:	00813083          	ld	ra,8(sp)
    80001f38:	00013403          	ld	s0,0(sp)
    80001f3c:	01010113          	addi	sp,sp,16
    80001f40:	00008067          	ret

0000000080001f44 <_ZN3Con19isOutputBufferEmptyEv>:

bool Con::isOutputBufferEmpty() {
    80001f44:	ff010113          	addi	sp,sp,-16
    80001f48:	00113423          	sd	ra,8(sp)
    80001f4c:	00813023          	sd	s0,0(sp)
    80001f50:	01010413          	addi	s0,sp,16
    return output_buffer -> isEmpty();
    80001f54:	0000b517          	auipc	a0,0xb
    80001f58:	fa453503          	ld	a0,-92(a0) # 8000cef8 <_ZN3Con13output_bufferE>
    80001f5c:	00001097          	auipc	ra,0x1
    80001f60:	bfc080e7          	jalr	-1028(ra) # 80002b58 <_ZN13BoundedBuffer7isEmptyEv>
}
    80001f64:	00813083          	ld	ra,8(sp)
    80001f68:	00013403          	ld	s0,0(sp)
    80001f6c:	01010113          	addi	sp,sp,16
    80001f70:	00008067          	ret

0000000080001f74 <_ZN6Thread12start_helperEPv>:

Thread::~Thread() {
    if (myHandle -> is_finished()) delete myHandle;
}

void Thread::start_helper(void *args) {
    80001f74:	ff010113          	addi	sp,sp,-16
    80001f78:	00113423          	sd	ra,8(sp)
    80001f7c:	00813023          	sd	s0,0(sp)
    80001f80:	01010413          	addi	s0,sp,16
    auto* thread = (Thread*) args;
    if (!thread -> body) thread -> run();
    80001f84:	01053783          	ld	a5,16(a0)
    80001f88:	00078e63          	beqz	a5,80001fa4 <_ZN6Thread12start_helperEPv+0x30>
    else thread -> body(thread -> arg);
    80001f8c:	01853503          	ld	a0,24(a0)
    80001f90:	000780e7          	jalr	a5
}
    80001f94:	00813083          	ld	ra,8(sp)
    80001f98:	00013403          	ld	s0,0(sp)
    80001f9c:	01010113          	addi	sp,sp,16
    80001fa0:	00008067          	ret
    if (!thread -> body) thread -> run();
    80001fa4:	00053783          	ld	a5,0(a0)
    80001fa8:	0107b783          	ld	a5,16(a5)
    80001fac:	000780e7          	jalr	a5
    80001fb0:	fe5ff06f          	j	80001f94 <_ZN6Thread12start_helperEPv+0x20>

0000000080001fb4 <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    80001fb4:	fe010113          	addi	sp,sp,-32
    80001fb8:	00113c23          	sd	ra,24(sp)
    80001fbc:	00813823          	sd	s0,16(sp)
    80001fc0:	00913423          	sd	s1,8(sp)
    80001fc4:	02010413          	addi	s0,sp,32
    80001fc8:	00050493          	mv	s1,a0
    80001fcc:	0000b797          	auipc	a5,0xb
    80001fd0:	c5c78793          	addi	a5,a5,-932 # 8000cc28 <_ZTV6Thread+0x10>
    80001fd4:	00f53023          	sd	a5,0(a0)
    if (myHandle -> is_finished()) delete myHandle;
    80001fd8:	00853503          	ld	a0,8(a0)
    80001fdc:	00002097          	auipc	ra,0x2
    80001fe0:	8f4080e7          	jalr	-1804(ra) # 800038d0 <_ZNK3TCB11is_finishedEv>
    80001fe4:	00050a63          	beqz	a0,80001ff8 <_ZN6ThreadD1Ev+0x44>
    80001fe8:	0084b503          	ld	a0,8(s1)
    80001fec:	00050663          	beqz	a0,80001ff8 <_ZN6ThreadD1Ev+0x44>
    80001ff0:	00001097          	auipc	ra,0x1
    80001ff4:	7b4080e7          	jalr	1972(ra) # 800037a4 <_ZN3TCBdlEPv>
}
    80001ff8:	01813083          	ld	ra,24(sp)
    80001ffc:	01013403          	ld	s0,16(sp)
    80002000:	00813483          	ld	s1,8(sp)
    80002004:	02010113          	addi	sp,sp,32
    80002008:	00008067          	ret

000000008000200c <_ZN14PeriodicThread3runEv>:

PeriodicThread::PeriodicThread(time_t period) : Thread() {
    this -> period = period;
}

void PeriodicThread::run() {
    8000200c:	fe010113          	addi	sp,sp,-32
    80002010:	00113c23          	sd	ra,24(sp)
    80002014:	00813823          	sd	s0,16(sp)
    80002018:	00913423          	sd	s1,8(sp)
    8000201c:	02010413          	addi	s0,sp,32
    80002020:	00050493          	mv	s1,a0
    while (period != (time_t) -1) {
    80002024:	0204b703          	ld	a4,32(s1)
    80002028:	fff00793          	li	a5,-1
    8000202c:	02f70263          	beq	a4,a5,80002050 <_ZN14PeriodicThread3runEv+0x44>
        periodicActivation();
    80002030:	0004b783          	ld	a5,0(s1)
    80002034:	0187b783          	ld	a5,24(a5)
    80002038:	00048513          	mv	a0,s1
    8000203c:	000780e7          	jalr	a5
        time_sleep(period);
    80002040:	0204b503          	ld	a0,32(s1)
    80002044:	fffff097          	auipc	ra,0xfffff
    80002048:	590080e7          	jalr	1424(ra) # 800015d4 <_Z10time_sleepm>
    while (period != (time_t) -1) {
    8000204c:	fd9ff06f          	j	80002024 <_ZN14PeriodicThread3runEv+0x18>
    }
}
    80002050:	01813083          	ld	ra,24(sp)
    80002054:	01013403          	ld	s0,16(sp)
    80002058:	00813483          	ld	s1,8(sp)
    8000205c:	02010113          	addi	sp,sp,32
    80002060:	00008067          	ret

0000000080002064 <_ZN9SemaphoreD1Ev>:
Semaphore::~Semaphore() {
    80002064:	0000b797          	auipc	a5,0xb
    80002068:	bec78793          	addi	a5,a5,-1044 # 8000cc50 <_ZTV9Semaphore+0x10>
    8000206c:	00f53023          	sd	a5,0(a0)
    if (myHandle) sem_close(myHandle);
    80002070:	00853503          	ld	a0,8(a0)
    80002074:	02050663          	beqz	a0,800020a0 <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    80002078:	ff010113          	addi	sp,sp,-16
    8000207c:	00113423          	sd	ra,8(sp)
    80002080:	00813023          	sd	s0,0(sp)
    80002084:	01010413          	addi	s0,sp,16
    if (myHandle) sem_close(myHandle);
    80002088:	fffff097          	auipc	ra,0xfffff
    8000208c:	3d0080e7          	jalr	976(ra) # 80001458 <_Z9sem_closeP3Sem>
}
    80002090:	00813083          	ld	ra,8(sp)
    80002094:	00013403          	ld	s0,0(sp)
    80002098:	01010113          	addi	sp,sp,16
    8000209c:	00008067          	ret
    800020a0:	00008067          	ret

00000000800020a4 <_Znwm>:
void* operator new(size_t size){
    800020a4:	ff010113          	addi	sp,sp,-16
    800020a8:	00113423          	sd	ra,8(sp)
    800020ac:	00813023          	sd	s0,0(sp)
    800020b0:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800020b4:	fffff097          	auipc	ra,0xfffff
    800020b8:	1a4080e7          	jalr	420(ra) # 80001258 <_Z9mem_allocm>
}
    800020bc:	00813083          	ld	ra,8(sp)
    800020c0:	00013403          	ld	s0,0(sp)
    800020c4:	01010113          	addi	sp,sp,16
    800020c8:	00008067          	ret

00000000800020cc <_ZdlPv>:
void operator delete(void* p) noexcept {
    800020cc:	ff010113          	addi	sp,sp,-16
    800020d0:	00113423          	sd	ra,8(sp)
    800020d4:	00813023          	sd	s0,0(sp)
    800020d8:	01010413          	addi	s0,sp,16
    mem_free(p);
    800020dc:	fffff097          	auipc	ra,0xfffff
    800020e0:	1d0080e7          	jalr	464(ra) # 800012ac <_Z8mem_freePv>
}
    800020e4:	00813083          	ld	ra,8(sp)
    800020e8:	00013403          	ld	s0,0(sp)
    800020ec:	01010113          	addi	sp,sp,16
    800020f0:	00008067          	ret

00000000800020f4 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    800020f4:	fe010113          	addi	sp,sp,-32
    800020f8:	00113c23          	sd	ra,24(sp)
    800020fc:	00813823          	sd	s0,16(sp)
    80002100:	00913423          	sd	s1,8(sp)
    80002104:	02010413          	addi	s0,sp,32
    80002108:	00050493          	mv	s1,a0
}
    8000210c:	00000097          	auipc	ra,0x0
    80002110:	ea8080e7          	jalr	-344(ra) # 80001fb4 <_ZN6ThreadD1Ev>
    80002114:	00048513          	mv	a0,s1
    80002118:	00000097          	auipc	ra,0x0
    8000211c:	fb4080e7          	jalr	-76(ra) # 800020cc <_ZdlPv>
    80002120:	01813083          	ld	ra,24(sp)
    80002124:	01013403          	ld	s0,16(sp)
    80002128:	00813483          	ld	s1,8(sp)
    8000212c:	02010113          	addi	sp,sp,32
    80002130:	00008067          	ret

0000000080002134 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80002134:	fe010113          	addi	sp,sp,-32
    80002138:	00113c23          	sd	ra,24(sp)
    8000213c:	00813823          	sd	s0,16(sp)
    80002140:	00913423          	sd	s1,8(sp)
    80002144:	02010413          	addi	s0,sp,32
    80002148:	00050493          	mv	s1,a0
}
    8000214c:	00000097          	auipc	ra,0x0
    80002150:	f18080e7          	jalr	-232(ra) # 80002064 <_ZN9SemaphoreD1Ev>
    80002154:	00048513          	mv	a0,s1
    80002158:	00000097          	auipc	ra,0x0
    8000215c:	f74080e7          	jalr	-140(ra) # 800020cc <_ZdlPv>
    80002160:	01813083          	ld	ra,24(sp)
    80002164:	01013403          	ld	s0,16(sp)
    80002168:	00813483          	ld	s1,8(sp)
    8000216c:	02010113          	addi	sp,sp,32
    80002170:	00008067          	ret

0000000080002174 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    80002174:	ff010113          	addi	sp,sp,-16
    80002178:	00813423          	sd	s0,8(sp)
    8000217c:	01010413          	addi	s0,sp,16
    80002180:	0000b797          	auipc	a5,0xb
    80002184:	aa878793          	addi	a5,a5,-1368 # 8000cc28 <_ZTV6Thread+0x10>
    80002188:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    8000218c:	00053423          	sd	zero,8(a0)
    this -> body = body;
    80002190:	00b53823          	sd	a1,16(a0)
    this -> arg = arg;
    80002194:	00c53c23          	sd	a2,24(a0)
}
    80002198:	00813403          	ld	s0,8(sp)
    8000219c:	01010113          	addi	sp,sp,16
    800021a0:	00008067          	ret

00000000800021a4 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    800021a4:	ff010113          	addi	sp,sp,-16
    800021a8:	00813423          	sd	s0,8(sp)
    800021ac:	01010413          	addi	s0,sp,16
    800021b0:	0000b797          	auipc	a5,0xb
    800021b4:	a7878793          	addi	a5,a5,-1416 # 8000cc28 <_ZTV6Thread+0x10>
    800021b8:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    800021bc:	00053423          	sd	zero,8(a0)
    body = nullptr;
    800021c0:	00053823          	sd	zero,16(a0)
    arg = nullptr;
    800021c4:	00053c23          	sd	zero,24(a0)
}
    800021c8:	00813403          	ld	s0,8(sp)
    800021cc:	01010113          	addi	sp,sp,16
    800021d0:	00008067          	ret

00000000800021d4 <_ZN6Thread5startEv>:
int Thread::start() {
    800021d4:	ff010113          	addi	sp,sp,-16
    800021d8:	00113423          	sd	ra,8(sp)
    800021dc:	00813023          	sd	s0,0(sp)
    800021e0:	01010413          	addi	s0,sp,16
    return thread_create(&myHandle, start_helper, this);
    800021e4:	00050613          	mv	a2,a0
    800021e8:	00000597          	auipc	a1,0x0
    800021ec:	d8c58593          	addi	a1,a1,-628 # 80001f74 <_ZN6Thread12start_helperEPv>
    800021f0:	00850513          	addi	a0,a0,8
    800021f4:	fffff097          	auipc	ra,0xfffff
    800021f8:	104080e7          	jalr	260(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
}
    800021fc:	00813083          	ld	ra,8(sp)
    80002200:	00013403          	ld	s0,0(sp)
    80002204:	01010113          	addi	sp,sp,16
    80002208:	00008067          	ret

000000008000220c <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    8000220c:	ff010113          	addi	sp,sp,-16
    80002210:	00113423          	sd	ra,8(sp)
    80002214:	00813023          	sd	s0,0(sp)
    80002218:	01010413          	addi	s0,sp,16
    thread_dispatch();
    8000221c:	fffff097          	auipc	ra,0xfffff
    80002220:	1b0080e7          	jalr	432(ra) # 800013cc <_Z15thread_dispatchv>
}
    80002224:	00813083          	ld	ra,8(sp)
    80002228:	00013403          	ld	s0,0(sp)
    8000222c:	01010113          	addi	sp,sp,16
    80002230:	00008067          	ret

0000000080002234 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    80002234:	ff010113          	addi	sp,sp,-16
    80002238:	00113423          	sd	ra,8(sp)
    8000223c:	00813023          	sd	s0,0(sp)
    80002240:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    80002244:	fffff097          	auipc	ra,0xfffff
    80002248:	390080e7          	jalr	912(ra) # 800015d4 <_Z10time_sleepm>
}
    8000224c:	00813083          	ld	ra,8(sp)
    80002250:	00013403          	ld	s0,0(sp)
    80002254:	01010113          	addi	sp,sp,16
    80002258:	00008067          	ret

000000008000225c <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    8000225c:	ff010113          	addi	sp,sp,-16
    80002260:	00113423          	sd	ra,8(sp)
    80002264:	00813023          	sd	s0,0(sp)
    80002268:	01010413          	addi	s0,sp,16
    8000226c:	0000b797          	auipc	a5,0xb
    80002270:	9e478793          	addi	a5,a5,-1564 # 8000cc50 <_ZTV9Semaphore+0x10>
    80002274:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    80002278:	00053423          	sd	zero,8(a0)
    sem_open(&myHandle, init);
    8000227c:	00850513          	addi	a0,a0,8
    80002280:	fffff097          	auipc	ra,0xfffff
    80002284:	188080e7          	jalr	392(ra) # 80001408 <_Z8sem_openPP3Semj>
}
    80002288:	00813083          	ld	ra,8(sp)
    8000228c:	00013403          	ld	s0,0(sp)
    80002290:	01010113          	addi	sp,sp,16
    80002294:	00008067          	ret

0000000080002298 <_ZN9Semaphore4waitEv>:
    if (myHandle) return sem_wait(myHandle);
    80002298:	00853503          	ld	a0,8(a0)
    8000229c:	02050663          	beqz	a0,800022c8 <_ZN9Semaphore4waitEv+0x30>
int Semaphore::wait() {
    800022a0:	ff010113          	addi	sp,sp,-16
    800022a4:	00113423          	sd	ra,8(sp)
    800022a8:	00813023          	sd	s0,0(sp)
    800022ac:	01010413          	addi	s0,sp,16
    if (myHandle) return sem_wait(myHandle);
    800022b0:	fffff097          	auipc	ra,0xfffff
    800022b4:	1f4080e7          	jalr	500(ra) # 800014a4 <_Z8sem_waitP3Sem>
}
    800022b8:	00813083          	ld	ra,8(sp)
    800022bc:	00013403          	ld	s0,0(sp)
    800022c0:	01010113          	addi	sp,sp,16
    800022c4:	00008067          	ret
    return -1;
    800022c8:	fff00513          	li	a0,-1
}
    800022cc:	00008067          	ret

00000000800022d0 <_ZN9Semaphore6signalEv>:
    if (myHandle) return sem_signal(myHandle);
    800022d0:	00853503          	ld	a0,8(a0)
    800022d4:	02050663          	beqz	a0,80002300 <_ZN9Semaphore6signalEv+0x30>
int Semaphore::signal() {
    800022d8:	ff010113          	addi	sp,sp,-16
    800022dc:	00113423          	sd	ra,8(sp)
    800022e0:	00813023          	sd	s0,0(sp)
    800022e4:	01010413          	addi	s0,sp,16
    if (myHandle) return sem_signal(myHandle);
    800022e8:	fffff097          	auipc	ra,0xfffff
    800022ec:	208080e7          	jalr	520(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    800022f0:	00813083          	ld	ra,8(sp)
    800022f4:	00013403          	ld	s0,0(sp)
    800022f8:	01010113          	addi	sp,sp,16
    800022fc:	00008067          	ret
    return -1;
    80002300:	fff00513          	li	a0,-1
}
    80002304:	00008067          	ret

0000000080002308 <_ZN9Semaphore9timedWaitEm>:
int Semaphore::timedWait(time_t time) {
    80002308:	ff010113          	addi	sp,sp,-16
    8000230c:	00113423          	sd	ra,8(sp)
    80002310:	00813023          	sd	s0,0(sp)
    80002314:	01010413          	addi	s0,sp,16
    return sem_timedwait(myHandle, time);
    80002318:	00853503          	ld	a0,8(a0)
    8000231c:	fffff097          	auipc	ra,0xfffff
    80002320:	220080e7          	jalr	544(ra) # 8000153c <_Z13sem_timedwaitP3Semm>
}
    80002324:	00813083          	ld	ra,8(sp)
    80002328:	00013403          	ld	s0,0(sp)
    8000232c:	01010113          	addi	sp,sp,16
    80002330:	00008067          	ret

0000000080002334 <_ZN9Semaphore7tryWaitEv>:
int Semaphore::tryWait() {
    80002334:	ff010113          	addi	sp,sp,-16
    80002338:	00113423          	sd	ra,8(sp)
    8000233c:	00813023          	sd	s0,0(sp)
    80002340:	01010413          	addi	s0,sp,16
    return sem_trywait(myHandle);
    80002344:	00853503          	ld	a0,8(a0)
    80002348:	fffff097          	auipc	ra,0xfffff
    8000234c:	240080e7          	jalr	576(ra) # 80001588 <_Z11sem_trywaitP3Sem>
}
    80002350:	00813083          	ld	ra,8(sp)
    80002354:	00013403          	ld	s0,0(sp)
    80002358:	01010113          	addi	sp,sp,16
    8000235c:	00008067          	ret

0000000080002360 <_ZN14PeriodicThread9terminateEv>:
void PeriodicThread::terminate() {
    80002360:	ff010113          	addi	sp,sp,-16
    80002364:	00813423          	sd	s0,8(sp)
    80002368:	01010413          	addi	s0,sp,16
    period = (time_t) -1;
    8000236c:	fff00793          	li	a5,-1
    80002370:	02f53023          	sd	a5,32(a0)
}
    80002374:	00813403          	ld	s0,8(sp)
    80002378:	01010113          	addi	sp,sp,16
    8000237c:	00008067          	ret

0000000080002380 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread() {
    80002380:	fe010113          	addi	sp,sp,-32
    80002384:	00113c23          	sd	ra,24(sp)
    80002388:	00813823          	sd	s0,16(sp)
    8000238c:	00913423          	sd	s1,8(sp)
    80002390:	01213023          	sd	s2,0(sp)
    80002394:	02010413          	addi	s0,sp,32
    80002398:	00050493          	mv	s1,a0
    8000239c:	00058913          	mv	s2,a1
    800023a0:	00000097          	auipc	ra,0x0
    800023a4:	e04080e7          	jalr	-508(ra) # 800021a4 <_ZN6ThreadC1Ev>
    800023a8:	0000b797          	auipc	a5,0xb
    800023ac:	8c878793          	addi	a5,a5,-1848 # 8000cc70 <_ZTV14PeriodicThread+0x10>
    800023b0:	00f4b023          	sd	a5,0(s1)
    this -> period = period;
    800023b4:	0324b023          	sd	s2,32(s1)
}
    800023b8:	01813083          	ld	ra,24(sp)
    800023bc:	01013403          	ld	s0,16(sp)
    800023c0:	00813483          	ld	s1,8(sp)
    800023c4:	00013903          	ld	s2,0(sp)
    800023c8:	02010113          	addi	sp,sp,32
    800023cc:	00008067          	ret

00000000800023d0 <_ZN7Console4getcEv>:

char Console::getc() {
    800023d0:	ff010113          	addi	sp,sp,-16
    800023d4:	00113423          	sd	ra,8(sp)
    800023d8:	00813023          	sd	s0,0(sp)
    800023dc:	01010413          	addi	s0,sp,16
    return ::getc();
    800023e0:	fffff097          	auipc	ra,0xfffff
    800023e4:	240080e7          	jalr	576(ra) # 80001620 <_Z4getcv>
}
    800023e8:	00813083          	ld	ra,8(sp)
    800023ec:	00013403          	ld	s0,0(sp)
    800023f0:	01010113          	addi	sp,sp,16
    800023f4:	00008067          	ret

00000000800023f8 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    800023f8:	ff010113          	addi	sp,sp,-16
    800023fc:	00113423          	sd	ra,8(sp)
    80002400:	00813023          	sd	s0,0(sp)
    80002404:	01010413          	addi	s0,sp,16
    ::putc(c);
    80002408:	fffff097          	auipc	ra,0xfffff
    8000240c:	264080e7          	jalr	612(ra) # 8000166c <_Z4putcc>
}
    80002410:	00813083          	ld	ra,8(sp)
    80002414:	00013403          	ld	s0,0(sp)
    80002418:	01010113          	addi	sp,sp,16
    8000241c:	00008067          	ret

0000000080002420 <_ZN6Thread3runEv>:
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    80002420:	ff010113          	addi	sp,sp,-16
    80002424:	00813423          	sd	s0,8(sp)
    80002428:	01010413          	addi	s0,sp,16
    8000242c:	00813403          	ld	s0,8(sp)
    80002430:	01010113          	addi	sp,sp,16
    80002434:	00008067          	ret

0000000080002438 <_ZN14PeriodicThread18periodicActivationEv>:
    void terminate ();
protected:
    PeriodicThread (time_t period);

    virtual void run() override;
    virtual void periodicActivation () {}
    80002438:	ff010113          	addi	sp,sp,-16
    8000243c:	00813423          	sd	s0,8(sp)
    80002440:	01010413          	addi	s0,sp,16
    80002444:	00813403          	ld	s0,8(sp)
    80002448:	01010113          	addi	sp,sp,16
    8000244c:	00008067          	ret

0000000080002450 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80002450:	ff010113          	addi	sp,sp,-16
    80002454:	00113423          	sd	ra,8(sp)
    80002458:	00813023          	sd	s0,0(sp)
    8000245c:	01010413          	addi	s0,sp,16
    80002460:	0000b797          	auipc	a5,0xb
    80002464:	81078793          	addi	a5,a5,-2032 # 8000cc70 <_ZTV14PeriodicThread+0x10>
    80002468:	00f53023          	sd	a5,0(a0)
    8000246c:	00000097          	auipc	ra,0x0
    80002470:	b48080e7          	jalr	-1208(ra) # 80001fb4 <_ZN6ThreadD1Ev>
    80002474:	00813083          	ld	ra,8(sp)
    80002478:	00013403          	ld	s0,0(sp)
    8000247c:	01010113          	addi	sp,sp,16
    80002480:	00008067          	ret

0000000080002484 <_ZN14PeriodicThreadD0Ev>:
    80002484:	fe010113          	addi	sp,sp,-32
    80002488:	00113c23          	sd	ra,24(sp)
    8000248c:	00813823          	sd	s0,16(sp)
    80002490:	00913423          	sd	s1,8(sp)
    80002494:	02010413          	addi	s0,sp,32
    80002498:	00050493          	mv	s1,a0
    8000249c:	0000a797          	auipc	a5,0xa
    800024a0:	7d478793          	addi	a5,a5,2004 # 8000cc70 <_ZTV14PeriodicThread+0x10>
    800024a4:	00f53023          	sd	a5,0(a0)
    800024a8:	00000097          	auipc	ra,0x0
    800024ac:	b0c080e7          	jalr	-1268(ra) # 80001fb4 <_ZN6ThreadD1Ev>
    800024b0:	00048513          	mv	a0,s1
    800024b4:	00000097          	auipc	ra,0x0
    800024b8:	c18080e7          	jalr	-1000(ra) # 800020cc <_ZdlPv>
    800024bc:	01813083          	ld	ra,24(sp)
    800024c0:	01013403          	ld	s0,16(sp)
    800024c4:	00813483          	ld	s1,8(sp)
    800024c8:	02010113          	addi	sp,sp,32
    800024cc:	00008067          	ret

00000000800024d0 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb>:
        instance = (MemoryAllocator*) MemoryAllocator::mem_alloc(get_number_of_blocks(sizeof(MemoryAllocator)));
    }
}

/// helper function for removing element from linked list
void MemoryAllocator::removeNode(MemSeg *toRemove, MemSeg *nextSeg, bool newIsCreated, bool free_list) {
    800024d0:	ff010113          	addi	sp,sp,-16
    800024d4:	00813423          	sd	s0,8(sp)
    800024d8:	01010413          	addi	s0,sp,16
    if (toRemove -> prev) toRemove -> prev -> next = nextSeg;
    800024dc:	00853783          	ld	a5,8(a0)
    800024e0:	02078463          	beqz	a5,80002508 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb+0x38>
    800024e4:	00b7b823          	sd	a1,16(a5)
    else (free_list ? freeSegHead : usedSegHead) = nextSeg;
    if (toRemove -> next) toRemove -> next -> prev = (newIsCreated) ? nextSeg : toRemove -> prev;
    800024e8:	01053783          	ld	a5,16(a0)
    800024ec:	00078863          	beqz	a5,800024fc <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb+0x2c>
    800024f0:	00061463          	bnez	a2,800024f8 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb+0x28>
    800024f4:	00853583          	ld	a1,8(a0)
    800024f8:	00b7b423          	sd	a1,8(a5)
}
    800024fc:	00813403          	ld	s0,8(sp)
    80002500:	01010113          	addi	sp,sp,16
    80002504:	00008067          	ret
    else (free_list ? freeSegHead : usedSegHead) = nextSeg;
    80002508:	00068863          	beqz	a3,80002518 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb+0x48>
    8000250c:	0000b797          	auipc	a5,0xb
    80002510:	9eb7ba23          	sd	a1,-1548(a5) # 8000cf00 <_ZN15MemoryAllocator11freeSegHeadE>
    80002514:	fd5ff06f          	j	800024e8 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb+0x18>
    80002518:	0000b797          	auipc	a5,0xb
    8000251c:	9eb7b823          	sd	a1,-1552(a5) # 8000cf08 <_ZN15MemoryAllocator11usedSegHeadE>
    80002520:	fc9ff06f          	j	800024e8 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb+0x18>

0000000080002524 <_ZN15MemoryAllocator9mem_allocEm>:

/// allocate `size` blocks
void *MemoryAllocator::mem_alloc(size_t size) {
    80002524:	fe010113          	addi	sp,sp,-32
    80002528:	00113c23          	sd	ra,24(sp)
    8000252c:	00813823          	sd	s0,16(sp)
    80002530:	00913423          	sd	s1,8(sp)
    80002534:	01213023          	sd	s2,0(sp)
    80002538:	02010413          	addi	s0,sp,32
    if (size <= 0) return nullptr;
    8000253c:	10050263          	beqz	a0,80002640 <_ZN15MemoryAllocator9mem_allocEm+0x11c>
    size_t bytesToAllocate = size * MEM_BLOCK_SIZE;
    80002540:	00651913          	slli	s2,a0,0x6
    MemSeg *tmp = freeSegHead;
    80002544:	0000b497          	auipc	s1,0xb
    80002548:	9bc4b483          	ld	s1,-1604(s1) # 8000cf00 <_ZN15MemoryAllocator11freeSegHeadE>
    while (tmp) {
    8000254c:	0c048263          	beqz	s1,80002610 <_ZN15MemoryAllocator9mem_allocEm+0xec>
        if (tmp -> size < bytesToAllocate) {
    80002550:	0004b783          	ld	a5,0(s1)
    80002554:	0527e663          	bltu	a5,s2,800025a0 <_ZN15MemoryAllocator9mem_allocEm+0x7c>
            tmp = tmp -> next;
            continue;
        }
        /// update free memory list
        size_t remaining = tmp -> size - bytesToAllocate;
    80002558:	412787b3          	sub	a5,a5,s2
        if (remaining <= sizeof(MemSeg)) removeNode(tmp, tmp->next, false, true);
    8000255c:	01800713          	li	a4,24
    80002560:	04f76463          	bltu	a4,a5,800025a8 <_ZN15MemoryAllocator9mem_allocEm+0x84>
    80002564:	00100693          	li	a3,1
    80002568:	00000613          	li	a2,0
    8000256c:	0104b583          	ld	a1,16(s1)
    80002570:	00048513          	mv	a0,s1
    80002574:	00000097          	auipc	ra,0x0
    80002578:	f5c080e7          	jalr	-164(ra) # 800024d0 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb>
        }

        /// update used memory list
        /// insert segment after tmp2
        MemSeg* tmp2 = nullptr;
        if (usedSegHead && (char*) tmp > (char*) usedSegHead)
    8000257c:	0000b797          	auipc	a5,0xb
    80002580:	98c7b783          	ld	a5,-1652(a5) # 8000cf08 <_ZN15MemoryAllocator11usedSegHeadE>
    80002584:	04078a63          	beqz	a5,800025d8 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
    80002588:	0497fc63          	bgeu	a5,s1,800025e0 <_ZN15MemoryAllocator9mem_allocEm+0xbc>
            for (tmp2 = usedSegHead; tmp2 -> next && (char*) tmp > (char*) (tmp2 -> next); tmp2 = tmp2 -> next);
    8000258c:	00078713          	mv	a4,a5
    80002590:	0107b783          	ld	a5,16(a5)
    80002594:	04078863          	beqz	a5,800025e4 <_ZN15MemoryAllocator9mem_allocEm+0xc0>
    80002598:	fe97eae3          	bltu	a5,s1,8000258c <_ZN15MemoryAllocator9mem_allocEm+0x68>
    8000259c:	0480006f          	j	800025e4 <_ZN15MemoryAllocator9mem_allocEm+0xc0>
            tmp = tmp -> next;
    800025a0:	0104b483          	ld	s1,16(s1)
    while (tmp) {
    800025a4:	fa9ff06f          	j	8000254c <_ZN15MemoryAllocator9mem_allocEm+0x28>
            MemSeg* newFree = (MemSeg*) ((char*) tmp + bytesToAllocate);
    800025a8:	012485b3          	add	a1,s1,s2
            newFree -> prev = tmp -> prev;
    800025ac:	0084b703          	ld	a4,8(s1)
    800025b0:	00e5b423          	sd	a4,8(a1)
            newFree -> next = tmp -> next;
    800025b4:	0104b703          	ld	a4,16(s1)
    800025b8:	00e5b823          	sd	a4,16(a1)
            newFree -> size = remaining;
    800025bc:	00f5b023          	sd	a5,0(a1)
            removeNode(tmp, newFree, true, true);
    800025c0:	00100693          	li	a3,1
    800025c4:	00100613          	li	a2,1
    800025c8:	00048513          	mv	a0,s1
    800025cc:	00000097          	auipc	ra,0x0
    800025d0:	f04080e7          	jalr	-252(ra) # 800024d0 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb>
    800025d4:	fa9ff06f          	j	8000257c <_ZN15MemoryAllocator9mem_allocEm+0x58>
        MemSeg* tmp2 = nullptr;
    800025d8:	00078713          	mv	a4,a5
    800025dc:	0080006f          	j	800025e4 <_ZN15MemoryAllocator9mem_allocEm+0xc0>
    800025e0:	00000713          	li	a4,0
        MemSeg* newUsed = (MemSeg*) tmp;
        newUsed -> size = bytesToAllocate;
    800025e4:	0124b023          	sd	s2,0(s1)
        newUsed -> prev = tmp2;
    800025e8:	00e4b423          	sd	a4,8(s1)
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    800025ec:	04070063          	beqz	a4,8000262c <_ZN15MemoryAllocator9mem_allocEm+0x108>
    800025f0:	01073783          	ld	a5,16(a4)
    800025f4:	00f4b823          	sd	a5,16(s1)
        if (tmp2) tmp2 -> next = newUsed;
    800025f8:	02070e63          	beqz	a4,80002634 <_ZN15MemoryAllocator9mem_allocEm+0x110>
    800025fc:	00973823          	sd	s1,16(a4)
        else usedSegHead = newUsed;
        if (newUsed -> next) newUsed -> next -> prev = newUsed;
    80002600:	0104b783          	ld	a5,16(s1)
    80002604:	00078463          	beqz	a5,8000260c <_ZN15MemoryAllocator9mem_allocEm+0xe8>
    80002608:	0097b423          	sd	s1,8(a5)
        return (void*) ((char*)tmp + sizeof(MemSeg));
    8000260c:	01848493          	addi	s1,s1,24
    }
    return nullptr;
}
    80002610:	00048513          	mv	a0,s1
    80002614:	01813083          	ld	ra,24(sp)
    80002618:	01013403          	ld	s0,16(sp)
    8000261c:	00813483          	ld	s1,8(sp)
    80002620:	00013903          	ld	s2,0(sp)
    80002624:	02010113          	addi	sp,sp,32
    80002628:	00008067          	ret
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    8000262c:	00070793          	mv	a5,a4
    80002630:	fc5ff06f          	j	800025f4 <_ZN15MemoryAllocator9mem_allocEm+0xd0>
        else usedSegHead = newUsed;
    80002634:	0000b797          	auipc	a5,0xb
    80002638:	8c97ba23          	sd	s1,-1836(a5) # 8000cf08 <_ZN15MemoryAllocator11usedSegHeadE>
    8000263c:	fc5ff06f          	j	80002600 <_ZN15MemoryAllocator9mem_allocEm+0xdc>
    if (size <= 0) return nullptr;
    80002640:	00000493          	li	s1,0
    80002644:	fcdff06f          	j	80002610 <_ZN15MemoryAllocator9mem_allocEm+0xec>

0000000080002648 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>:
    }
    return 0;
}

/// join free segment with next if possible
void MemoryAllocator::tryToJoin(MemSeg *seg) {
    80002648:	ff010113          	addi	sp,sp,-16
    8000264c:	00813423          	sd	s0,8(sp)
    80002650:	01010413          	addi	s0,sp,16
    if (seg -> next && (char*) seg + seg -> size == (char*) seg -> next) {
    80002654:	01053783          	ld	a5,16(a0)
    80002658:	00078863          	beqz	a5,80002668 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    8000265c:	00053703          	ld	a4,0(a0)
    80002660:	00e506b3          	add	a3,a0,a4
    80002664:	00d78863          	beq	a5,a3,80002674 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x2c>
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
        seg -> next = seg -> next -> next;
        if (seg -> next) seg -> next -> prev = seg;
    }
}
    80002668:	00813403          	ld	s0,8(sp)
    8000266c:	01010113          	addi	sp,sp,16
    80002670:	00008067          	ret
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
    80002674:	0007b683          	ld	a3,0(a5)
    80002678:	00d70733          	add	a4,a4,a3
    8000267c:	01870713          	addi	a4,a4,24
    80002680:	00e53023          	sd	a4,0(a0)
        seg -> next = seg -> next -> next;
    80002684:	0107b783          	ld	a5,16(a5)
    80002688:	00f53823          	sd	a5,16(a0)
        if (seg -> next) seg -> next -> prev = seg;
    8000268c:	fc078ee3          	beqz	a5,80002668 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    80002690:	00a7b423          	sd	a0,8(a5)
}
    80002694:	fd5ff06f          	j	80002668 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>

0000000080002698 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    80002698:	14050a63          	beqz	a0,800027ec <_ZN15MemoryAllocator8mem_freeEPv+0x154>
int MemoryAllocator::mem_free(void *addr) {
    8000269c:	fd010113          	addi	sp,sp,-48
    800026a0:	02113423          	sd	ra,40(sp)
    800026a4:	02813023          	sd	s0,32(sp)
    800026a8:	00913c23          	sd	s1,24(sp)
    800026ac:	01213823          	sd	s2,16(sp)
    800026b0:	01313423          	sd	s3,8(sp)
    800026b4:	03010413          	addi	s0,sp,48
    800026b8:	00050913          	mv	s2,a0
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    800026bc:	0000a797          	auipc	a5,0xa
    800026c0:	7947b783          	ld	a5,1940(a5) # 8000ce50 <_GLOBAL_OFFSET_TABLE_+0x18>
    800026c4:	0007b783          	ld	a5,0(a5)
    800026c8:	12f56663          	bltu	a0,a5,800027f4 <_ZN15MemoryAllocator8mem_freeEPv+0x15c>
    800026cc:	0000a797          	auipc	a5,0xa
    800026d0:	7c47b783          	ld	a5,1988(a5) # 8000ce90 <_GLOBAL_OFFSET_TABLE_+0x58>
    800026d4:	0007b783          	ld	a5,0(a5)
    800026d8:	12a7e263          	bltu	a5,a0,800027fc <_ZN15MemoryAllocator8mem_freeEPv+0x164>
    if (!usedSegHead) return -2;
    800026dc:	0000b797          	auipc	a5,0xb
    800026e0:	82c7b783          	ld	a5,-2004(a5) # 8000cf08 <_ZN15MemoryAllocator11usedSegHeadE>
    800026e4:	12078063          	beqz	a5,80002804 <_ZN15MemoryAllocator8mem_freeEPv+0x16c>
    addr = (void*) ((char*) addr - sizeof(MemSeg));
    800026e8:	fe850493          	addi	s1,a0,-24
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    800026ec:	00078863          	beqz	a5,800026fc <_ZN15MemoryAllocator8mem_freeEPv+0x64>
        if (tmp == segToFree) {
    800026f0:	0a978663          	beq	a5,s1,8000279c <_ZN15MemoryAllocator8mem_freeEPv+0x104>
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    800026f4:	0107b783          	ld	a5,16(a5)
    800026f8:	ff5ff06f          	j	800026ec <_ZN15MemoryAllocator8mem_freeEPv+0x54>
    bool found = false;
    800026fc:	00000793          	li	a5,0
    if (!found) return -3;
    80002700:	10078663          	beqz	a5,8000280c <_ZN15MemoryAllocator8mem_freeEPv+0x174>
    removeNode(segToFree, segToFree -> next, false, false);
    80002704:	00000693          	li	a3,0
    80002708:	00000613          	li	a2,0
    8000270c:	ff893583          	ld	a1,-8(s2)
    80002710:	00048513          	mv	a0,s1
    80002714:	00000097          	auipc	ra,0x0
    80002718:	dbc080e7          	jalr	-580(ra) # 800024d0 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb>
    segToFree -> size += sizeof(MemSeg);
    8000271c:	fe893783          	ld	a5,-24(s2)
    80002720:	01878793          	addi	a5,a5,24
    80002724:	fef93423          	sd	a5,-24(s2)
    if (!freeSegHead) {
    80002728:	0000a797          	auipc	a5,0xa
    8000272c:	7d87b783          	ld	a5,2008(a5) # 8000cf00 <_ZN15MemoryAllocator11freeSegHeadE>
    80002730:	06078a63          	beqz	a5,800027a4 <_ZN15MemoryAllocator8mem_freeEPv+0x10c>
    else if ((char*) addr < (char*) freeSegHead) {
    80002734:	08f4e463          	bltu	s1,a5,800027bc <_ZN15MemoryAllocator8mem_freeEPv+0x124>
        for (tmp = freeSegHead; tmp -> next && (char*) (tmp -> next) < (char*) segToFree; tmp = tmp -> next);
    80002738:	00078993          	mv	s3,a5
    8000273c:	0107b783          	ld	a5,16(a5)
    80002740:	00078463          	beqz	a5,80002748 <_ZN15MemoryAllocator8mem_freeEPv+0xb0>
    80002744:	fe97eae3          	bltu	a5,s1,80002738 <_ZN15MemoryAllocator8mem_freeEPv+0xa0>
        segToFree -> prev = tmp;
    80002748:	ff393823          	sd	s3,-16(s2)
        segToFree -> next = tmp -> next;
    8000274c:	0109b783          	ld	a5,16(s3)
    80002750:	fef93c23          	sd	a5,-8(s2)
        tmp -> next = segToFree;
    80002754:	0099b823          	sd	s1,16(s3)
        if (segToFree -> next) segToFree -> next -> prev = segToFree;
    80002758:	ff893783          	ld	a5,-8(s2)
    8000275c:	00078463          	beqz	a5,80002764 <_ZN15MemoryAllocator8mem_freeEPv+0xcc>
    80002760:	0097b423          	sd	s1,8(a5)
        tryToJoin(segToFree);
    80002764:	00048513          	mv	a0,s1
    80002768:	00000097          	auipc	ra,0x0
    8000276c:	ee0080e7          	jalr	-288(ra) # 80002648 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
        tryToJoin(tmp);
    80002770:	00098513          	mv	a0,s3
    80002774:	00000097          	auipc	ra,0x0
    80002778:	ed4080e7          	jalr	-300(ra) # 80002648 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    8000277c:	00000513          	li	a0,0
}
    80002780:	02813083          	ld	ra,40(sp)
    80002784:	02013403          	ld	s0,32(sp)
    80002788:	01813483          	ld	s1,24(sp)
    8000278c:	01013903          	ld	s2,16(sp)
    80002790:	00813983          	ld	s3,8(sp)
    80002794:	03010113          	addi	sp,sp,48
    80002798:	00008067          	ret
            found = true;
    8000279c:	00100793          	li	a5,1
    800027a0:	f61ff06f          	j	80002700 <_ZN15MemoryAllocator8mem_freeEPv+0x68>
        freeSegHead = segToFree;
    800027a4:	0000a797          	auipc	a5,0xa
    800027a8:	7497be23          	sd	s1,1884(a5) # 8000cf00 <_ZN15MemoryAllocator11freeSegHeadE>
        segToFree -> prev = segToFree -> next = nullptr;
    800027ac:	fe093c23          	sd	zero,-8(s2)
    800027b0:	fe093823          	sd	zero,-16(s2)
    return 0;
    800027b4:	00000513          	li	a0,0
    800027b8:	fc9ff06f          	j	80002780 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
        segToFree -> prev = nullptr;
    800027bc:	fe093823          	sd	zero,-16(s2)
        segToFree -> next = freeSegHead;
    800027c0:	0000a797          	auipc	a5,0xa
    800027c4:	74078793          	addi	a5,a5,1856 # 8000cf00 <_ZN15MemoryAllocator11freeSegHeadE>
    800027c8:	0007b703          	ld	a4,0(a5)
    800027cc:	fee93c23          	sd	a4,-8(s2)
        freeSegHead -> prev = segToFree;
    800027d0:	00973423          	sd	s1,8(a4)
        freeSegHead = segToFree;
    800027d4:	0097b023          	sd	s1,0(a5)
        tryToJoin(segToFree);
    800027d8:	00048513          	mv	a0,s1
    800027dc:	00000097          	auipc	ra,0x0
    800027e0:	e6c080e7          	jalr	-404(ra) # 80002648 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    800027e4:	00000513          	li	a0,0
    800027e8:	f99ff06f          	j	80002780 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    800027ec:	fff00513          	li	a0,-1
}
    800027f0:	00008067          	ret
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    800027f4:	fff00513          	li	a0,-1
    800027f8:	f89ff06f          	j	80002780 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
    800027fc:	fff00513          	li	a0,-1
    80002800:	f81ff06f          	j	80002780 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
    if (!usedSegHead) return -2;
    80002804:	ffe00513          	li	a0,-2
    80002808:	f79ff06f          	j	80002780 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
    if (!found) return -3;
    8000280c:	ffd00513          	li	a0,-3
    80002810:	f71ff06f          	j	80002780 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>

0000000080002814 <_ZN15MemoryAllocator5printEv>:

void MemoryAllocator::print() {
    80002814:	fe010113          	addi	sp,sp,-32
    80002818:	00113c23          	sd	ra,24(sp)
    8000281c:	00813823          	sd	s0,16(sp)
    80002820:	00913423          	sd	s1,8(sp)
    80002824:	02010413          	addi	s0,sp,32
    putc('\n');
    80002828:	00a00513          	li	a0,10
    8000282c:	fffff097          	auipc	ra,0xfffff
    80002830:	e40080e7          	jalr	-448(ra) # 8000166c <_Z4putcc>
    putc('M');
    80002834:	04d00513          	li	a0,77
    80002838:	fffff097          	auipc	ra,0xfffff
    8000283c:	e34080e7          	jalr	-460(ra) # 8000166c <_Z4putcc>
    putc(':');
    80002840:	03a00513          	li	a0,58
    80002844:	fffff097          	auipc	ra,0xfffff
    80002848:	e28080e7          	jalr	-472(ra) # 8000166c <_Z4putcc>
    putc(' ');
    8000284c:	02000513          	li	a0,32
    80002850:	fffff097          	auipc	ra,0xfffff
    80002854:	e1c080e7          	jalr	-484(ra) # 8000166c <_Z4putcc>
    for (MemSeg* tmp = freeSegHead; tmp; tmp = tmp -> next) {
    80002858:	0000a497          	auipc	s1,0xa
    8000285c:	6a84b483          	ld	s1,1704(s1) # 8000cf00 <_ZN15MemoryAllocator11freeSegHeadE>
    80002860:	02048863          	beqz	s1,80002890 <_ZN15MemoryAllocator5printEv+0x7c>
        printNumber(tmp -> size);
    80002864:	0004b503          	ld	a0,0(s1)
    80002868:	fffff097          	auipc	ra,0xfffff
    8000286c:	334080e7          	jalr	820(ra) # 80001b9c <_Z11printNumberm>
        putc(' ');
    80002870:	02000513          	li	a0,32
    80002874:	fffff097          	auipc	ra,0xfffff
    80002878:	df8080e7          	jalr	-520(ra) # 8000166c <_Z4putcc>
        putc('f');
    8000287c:	06600513          	li	a0,102
    80002880:	fffff097          	auipc	ra,0xfffff
    80002884:	dec080e7          	jalr	-532(ra) # 8000166c <_Z4putcc>
    for (MemSeg* tmp = freeSegHead; tmp; tmp = tmp -> next) {
    80002888:	0104b483          	ld	s1,16(s1)
    8000288c:	fd5ff06f          	j	80002860 <_ZN15MemoryAllocator5printEv+0x4c>
    }
    putc('\t');
    80002890:	00900513          	li	a0,9
    80002894:	fffff097          	auipc	ra,0xfffff
    80002898:	dd8080e7          	jalr	-552(ra) # 8000166c <_Z4putcc>
    for (MemSeg* tmp = usedSegHead; tmp; tmp = tmp -> next) {
    8000289c:	0000a497          	auipc	s1,0xa
    800028a0:	66c4b483          	ld	s1,1644(s1) # 8000cf08 <_ZN15MemoryAllocator11usedSegHeadE>
    800028a4:	02048863          	beqz	s1,800028d4 <_ZN15MemoryAllocator5printEv+0xc0>
        printNumber(tmp -> size);
    800028a8:	0004b503          	ld	a0,0(s1)
    800028ac:	fffff097          	auipc	ra,0xfffff
    800028b0:	2f0080e7          	jalr	752(ra) # 80001b9c <_Z11printNumberm>
        putc(' ');
    800028b4:	02000513          	li	a0,32
    800028b8:	fffff097          	auipc	ra,0xfffff
    800028bc:	db4080e7          	jalr	-588(ra) # 8000166c <_Z4putcc>
        putc('u');
    800028c0:	07500513          	li	a0,117
    800028c4:	fffff097          	auipc	ra,0xfffff
    800028c8:	da8080e7          	jalr	-600(ra) # 8000166c <_Z4putcc>
    for (MemSeg* tmp = usedSegHead; tmp; tmp = tmp -> next) {
    800028cc:	0104b483          	ld	s1,16(s1)
    800028d0:	fd5ff06f          	j	800028a4 <_ZN15MemoryAllocator5printEv+0x90>
    }
}
    800028d4:	01813083          	ld	ra,24(sp)
    800028d8:	01013403          	ld	s0,16(sp)
    800028dc:	00813483          	ld	s1,8(sp)
    800028e0:	02010113          	addi	sp,sp,32
    800028e4:	00008067          	ret

00000000800028e8 <_ZN15MemoryAllocator20get_number_of_blocksEm>:

size_t MemoryAllocator::get_number_of_blocks(size_t size) {
    800028e8:	ff010113          	addi	sp,sp,-16
    800028ec:	00813423          	sd	s0,8(sp)
    800028f0:	01010413          	addi	s0,sp,16
    return (size + sizeof(MemoryAllocator::MemSeg) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    800028f4:	05750513          	addi	a0,a0,87
}
    800028f8:	00655513          	srli	a0,a0,0x6
    800028fc:	00813403          	ld	s0,8(sp)
    80002900:	01010113          	addi	sp,sp,16
    80002904:	00008067          	ret

0000000080002908 <_ZN15MemoryAllocator10initializeEv>:
    if (!instance) {
    80002908:	0000a797          	auipc	a5,0xa
    8000290c:	6087b783          	ld	a5,1544(a5) # 8000cf10 <_ZN15MemoryAllocator8instanceE>
    80002910:	00078463          	beqz	a5,80002918 <_ZN15MemoryAllocator10initializeEv+0x10>
    80002914:	00008067          	ret
void MemoryAllocator::initialize() {
    80002918:	fe010113          	addi	sp,sp,-32
    8000291c:	00113c23          	sd	ra,24(sp)
    80002920:	00813823          	sd	s0,16(sp)
    80002924:	00913423          	sd	s1,8(sp)
    80002928:	02010413          	addi	s0,sp,32
        freeSegHead = (MemSeg*) HEAP_START_ADDR;
    8000292c:	0000a797          	auipc	a5,0xa
    80002930:	5247b783          	ld	a5,1316(a5) # 8000ce50 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002934:	0007b783          	ld	a5,0(a5)
    80002938:	0000a497          	auipc	s1,0xa
    8000293c:	5c848493          	addi	s1,s1,1480 # 8000cf00 <_ZN15MemoryAllocator11freeSegHeadE>
    80002940:	00f4b023          	sd	a5,0(s1)
        freeSegHead -> size = (size_t) HEAP_END_ADDR - (size_t) HEAP_START_ADDR;
    80002944:	0000a717          	auipc	a4,0xa
    80002948:	54c73703          	ld	a4,1356(a4) # 8000ce90 <_GLOBAL_OFFSET_TABLE_+0x58>
    8000294c:	00073703          	ld	a4,0(a4)
    80002950:	40f70733          	sub	a4,a4,a5
    80002954:	00e7b023          	sd	a4,0(a5)
        freeSegHead -> prev = nullptr;
    80002958:	0004b783          	ld	a5,0(s1)
    8000295c:	0007b423          	sd	zero,8(a5)
        freeSegHead -> next = nullptr;
    80002960:	0007b823          	sd	zero,16(a5)
        instance = (MemoryAllocator*) MemoryAllocator::mem_alloc(get_number_of_blocks(sizeof(MemoryAllocator)));
    80002964:	00100513          	li	a0,1
    80002968:	00000097          	auipc	ra,0x0
    8000296c:	f80080e7          	jalr	-128(ra) # 800028e8 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80002970:	00000097          	auipc	ra,0x0
    80002974:	bb4080e7          	jalr	-1100(ra) # 80002524 <_ZN15MemoryAllocator9mem_allocEm>
    80002978:	00a4b823          	sd	a0,16(s1)
}
    8000297c:	01813083          	ld	ra,24(sp)
    80002980:	01013403          	ld	s0,16(sp)
    80002984:	00813483          	ld	s1,8(sp)
    80002988:	02010113          	addi	sp,sp,32
    8000298c:	00008067          	ret

0000000080002990 <_ZN13BoundedBufferC1Ev>:
#include "../h/bounded_bufffer.hpp"

BoundedBuffer::BoundedBuffer() {
    80002990:	fe010113          	addi	sp,sp,-32
    80002994:	00113c23          	sd	ra,24(sp)
    80002998:	00813823          	sd	s0,16(sp)
    8000299c:	00913423          	sd	s1,8(sp)
    800029a0:	02010413          	addi	s0,sp,32
    800029a4:	00050493          	mv	s1,a0
    800029a8:	00052023          	sw	zero,0(a0)
    800029ac:	00052223          	sw	zero,4(a0)
    Sem::open(&item_available, 0);
    800029b0:	00000593          	li	a1,0
    800029b4:	01050513          	addi	a0,a0,16
    800029b8:	fffff097          	auipc	ra,0xfffff
    800029bc:	0a0080e7          	jalr	160(ra) # 80001a58 <_ZN3Sem4openEPPS_j>
    Sem::open(&space_available, CAPACITY);
    800029c0:	1f400593          	li	a1,500
    800029c4:	00848513          	addi	a0,s1,8
    800029c8:	fffff097          	auipc	ra,0xfffff
    800029cc:	090080e7          	jalr	144(ra) # 80001a58 <_ZN3Sem4openEPPS_j>
}
    800029d0:	01813083          	ld	ra,24(sp)
    800029d4:	01013403          	ld	s0,16(sp)
    800029d8:	00813483          	ld	s1,8(sp)
    800029dc:	02010113          	addi	sp,sp,32
    800029e0:	00008067          	ret

00000000800029e4 <_ZN13BoundedBufferD1Ev>:

BoundedBuffer::~BoundedBuffer() {
    800029e4:	fe010113          	addi	sp,sp,-32
    800029e8:	00113c23          	sd	ra,24(sp)
    800029ec:	00813823          	sd	s0,16(sp)
    800029f0:	00913423          	sd	s1,8(sp)
    800029f4:	02010413          	addi	s0,sp,32
    800029f8:	00050493          	mv	s1,a0
    Sem::close(item_available);
    800029fc:	01053503          	ld	a0,16(a0)
    80002a00:	fffff097          	auipc	ra,0xfffff
    80002a04:	e30080e7          	jalr	-464(ra) # 80001830 <_ZN3Sem5closeEPS_>
    Sem::close(space_available);
    80002a08:	0084b503          	ld	a0,8(s1)
    80002a0c:	fffff097          	auipc	ra,0xfffff
    80002a10:	e24080e7          	jalr	-476(ra) # 80001830 <_ZN3Sem5closeEPS_>
}
    80002a14:	01813083          	ld	ra,24(sp)
    80002a18:	01013403          	ld	s0,16(sp)
    80002a1c:	00813483          	ld	s1,8(sp)
    80002a20:	02010113          	addi	sp,sp,32
    80002a24:	00008067          	ret

0000000080002a28 <_ZN13BoundedBuffernwEm>:

void *BoundedBuffer::operator new(size_t size) {
    80002a28:	ff010113          	addi	sp,sp,-16
    80002a2c:	00113423          	sd	ra,8(sp)
    80002a30:	00813023          	sd	s0,0(sp)
    80002a34:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    80002a38:	00000097          	auipc	ra,0x0
    80002a3c:	eb0080e7          	jalr	-336(ra) # 800028e8 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80002a40:	00000097          	auipc	ra,0x0
    80002a44:	ae4080e7          	jalr	-1308(ra) # 80002524 <_ZN15MemoryAllocator9mem_allocEm>
}
    80002a48:	00813083          	ld	ra,8(sp)
    80002a4c:	00013403          	ld	s0,0(sp)
    80002a50:	01010113          	addi	sp,sp,16
    80002a54:	00008067          	ret

0000000080002a58 <_ZN13BoundedBufferdlEPv>:

void BoundedBuffer::operator delete(void *addr) {
    80002a58:	ff010113          	addi	sp,sp,-16
    80002a5c:	00113423          	sd	ra,8(sp)
    80002a60:	00813023          	sd	s0,0(sp)
    80002a64:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    80002a68:	00000097          	auipc	ra,0x0
    80002a6c:	c30080e7          	jalr	-976(ra) # 80002698 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80002a70:	00813083          	ld	ra,8(sp)
    80002a74:	00013403          	ld	s0,0(sp)
    80002a78:	01010113          	addi	sp,sp,16
    80002a7c:	00008067          	ret

0000000080002a80 <_ZN13BoundedBuffer4putcEc>:

void BoundedBuffer::putc(char c) {
    80002a80:	fe010113          	addi	sp,sp,-32
    80002a84:	00113c23          	sd	ra,24(sp)
    80002a88:	00813823          	sd	s0,16(sp)
    80002a8c:	00913423          	sd	s1,8(sp)
    80002a90:	01213023          	sd	s2,0(sp)
    80002a94:	02010413          	addi	s0,sp,32
    80002a98:	00050493          	mv	s1,a0
    80002a9c:	00058913          	mv	s2,a1
    Sem::wait(space_available);
    80002aa0:	00853503          	ld	a0,8(a0)
    80002aa4:	fffff097          	auipc	ra,0xfffff
    80002aa8:	df8080e7          	jalr	-520(ra) # 8000189c <_ZN3Sem4waitEPS_>
    array[tail] = c;
    80002aac:	0044a783          	lw	a5,4(s1)
    80002ab0:	00f48733          	add	a4,s1,a5
    80002ab4:	01270c23          	sb	s2,24(a4)
    tail = (tail + 1) % CAPACITY;
    80002ab8:	0017879b          	addiw	a5,a5,1
    80002abc:	1f400713          	li	a4,500
    80002ac0:	02e7e7bb          	remw	a5,a5,a4
    80002ac4:	00f4a223          	sw	a5,4(s1)
    Sem::signal(item_available);
    80002ac8:	0104b503          	ld	a0,16(s1)
    80002acc:	fffff097          	auipc	ra,0xfffff
    80002ad0:	e24080e7          	jalr	-476(ra) # 800018f0 <_ZN3Sem6signalEPS_>
}
    80002ad4:	01813083          	ld	ra,24(sp)
    80002ad8:	01013403          	ld	s0,16(sp)
    80002adc:	00813483          	ld	s1,8(sp)
    80002ae0:	00013903          	ld	s2,0(sp)
    80002ae4:	02010113          	addi	sp,sp,32
    80002ae8:	00008067          	ret

0000000080002aec <_ZN13BoundedBuffer4getcEv>:

char BoundedBuffer::getc() {
    80002aec:	fe010113          	addi	sp,sp,-32
    80002af0:	00113c23          	sd	ra,24(sp)
    80002af4:	00813823          	sd	s0,16(sp)
    80002af8:	00913423          	sd	s1,8(sp)
    80002afc:	01213023          	sd	s2,0(sp)
    80002b00:	02010413          	addi	s0,sp,32
    80002b04:	00050493          	mv	s1,a0
    Sem::wait(item_available);
    80002b08:	01053503          	ld	a0,16(a0)
    80002b0c:	fffff097          	auipc	ra,0xfffff
    80002b10:	d90080e7          	jalr	-624(ra) # 8000189c <_ZN3Sem4waitEPS_>
    char c = array[head];
    80002b14:	0004a783          	lw	a5,0(s1)
    80002b18:	00f48733          	add	a4,s1,a5
    80002b1c:	01874903          	lbu	s2,24(a4)
    head = (head + 1) % CAPACITY;
    80002b20:	0017879b          	addiw	a5,a5,1
    80002b24:	1f400713          	li	a4,500
    80002b28:	02e7e7bb          	remw	a5,a5,a4
    80002b2c:	00f4a023          	sw	a5,0(s1)
    Sem::signal(space_available);
    80002b30:	0084b503          	ld	a0,8(s1)
    80002b34:	fffff097          	auipc	ra,0xfffff
    80002b38:	dbc080e7          	jalr	-580(ra) # 800018f0 <_ZN3Sem6signalEPS_>
    return c;
}
    80002b3c:	00090513          	mv	a0,s2
    80002b40:	01813083          	ld	ra,24(sp)
    80002b44:	01013403          	ld	s0,16(sp)
    80002b48:	00813483          	ld	s1,8(sp)
    80002b4c:	00013903          	ld	s2,0(sp)
    80002b50:	02010113          	addi	sp,sp,32
    80002b54:	00008067          	ret

0000000080002b58 <_ZN13BoundedBuffer7isEmptyEv>:

bool BoundedBuffer::isEmpty() {
    80002b58:	ff010113          	addi	sp,sp,-16
    80002b5c:	00813423          	sd	s0,8(sp)
    80002b60:	01010413          	addi	s0,sp,16
    return head == tail;
    80002b64:	00052783          	lw	a5,0(a0)
    80002b68:	00452503          	lw	a0,4(a0)
    80002b6c:	40f50533          	sub	a0,a0,a5
}
    80002b70:	00153513          	seqz	a0,a0
    80002b74:	00813403          	ld	s0,8(sp)
    80002b78:	01010113          	addi	sp,sp,16
    80002b7c:	00008067          	ret

0000000080002b80 <_ZN9Scheduler3putEP3TCB>:
TCB* Scheduler::head_ready = nullptr;
TCB* Scheduler::tail_ready = nullptr;
TCB* Scheduler::head_sleeping = nullptr;

/// place thread in scheduler
void Scheduler::put(TCB *thread) {
    80002b80:	fe010113          	addi	sp,sp,-32
    80002b84:	00113c23          	sd	ra,24(sp)
    80002b88:	00813823          	sd	s0,16(sp)
    80002b8c:	00913423          	sd	s1,8(sp)
    80002b90:	02010413          	addi	s0,sp,32
    80002b94:	00050493          	mv	s1,a0
    if (tail_ready) {
    80002b98:	0000a517          	auipc	a0,0xa
    80002b9c:	38053503          	ld	a0,896(a0) # 8000cf18 <_ZN9Scheduler10tail_readyE>
    80002ba0:	02050e63          	beqz	a0,80002bdc <_ZN9Scheduler3putEP3TCB+0x5c>
        tail_ready -> set_next_ready(thread);
    80002ba4:	00048593          	mv	a1,s1
    80002ba8:	00001097          	auipc	ra,0x1
    80002bac:	ad8080e7          	jalr	-1320(ra) # 80003680 <_ZN3TCB14set_next_readyEPS_>
        tail_ready = thread;
    80002bb0:	0000a797          	auipc	a5,0xa
    80002bb4:	3697b423          	sd	s1,872(a5) # 8000cf18 <_ZN9Scheduler10tail_readyE>
    }
    else head_ready = tail_ready = thread;
    thread -> set_next_ready(nullptr);
    80002bb8:	00000593          	li	a1,0
    80002bbc:	00048513          	mv	a0,s1
    80002bc0:	00001097          	auipc	ra,0x1
    80002bc4:	ac0080e7          	jalr	-1344(ra) # 80003680 <_ZN3TCB14set_next_readyEPS_>
}
    80002bc8:	01813083          	ld	ra,24(sp)
    80002bcc:	01013403          	ld	s0,16(sp)
    80002bd0:	00813483          	ld	s1,8(sp)
    80002bd4:	02010113          	addi	sp,sp,32
    80002bd8:	00008067          	ret
    else head_ready = tail_ready = thread;
    80002bdc:	0000a797          	auipc	a5,0xa
    80002be0:	33c78793          	addi	a5,a5,828 # 8000cf18 <_ZN9Scheduler10tail_readyE>
    80002be4:	0097b023          	sd	s1,0(a5)
    80002be8:	0097b423          	sd	s1,8(a5)
    80002bec:	fcdff06f          	j	80002bb8 <_ZN9Scheduler3putEP3TCB+0x38>

0000000080002bf0 <_ZN9Scheduler3getEv>:

/// retrieve thread from scheduler
TCB* Scheduler::get() {
    80002bf0:	fe010113          	addi	sp,sp,-32
    80002bf4:	00113c23          	sd	ra,24(sp)
    80002bf8:	00813823          	sd	s0,16(sp)
    80002bfc:	00913423          	sd	s1,8(sp)
    80002c00:	02010413          	addi	s0,sp,32
    if (!head_ready) return nullptr;
    80002c04:	0000a497          	auipc	s1,0xa
    80002c08:	31c4b483          	ld	s1,796(s1) # 8000cf20 <_ZN9Scheduler10head_readyE>
    80002c0c:	02048663          	beqz	s1,80002c38 <_ZN9Scheduler3getEv+0x48>
    TCB *tmp = head_ready;
    head_ready = head_ready -> get_next_ready();
    80002c10:	00048513          	mv	a0,s1
    80002c14:	00001097          	auipc	ra,0x1
    80002c18:	a50080e7          	jalr	-1456(ra) # 80003664 <_ZNK3TCB14get_next_readyEv>
    80002c1c:	0000a797          	auipc	a5,0xa
    80002c20:	30a7b223          	sd	a0,772(a5) # 8000cf20 <_ZN9Scheduler10head_readyE>
    if (!head_ready) tail_ready = nullptr;
    80002c24:	02050663          	beqz	a0,80002c50 <_ZN9Scheduler3getEv+0x60>
    tmp -> set_next_ready(nullptr);
    80002c28:	00000593          	li	a1,0
    80002c2c:	00048513          	mv	a0,s1
    80002c30:	00001097          	auipc	ra,0x1
    80002c34:	a50080e7          	jalr	-1456(ra) # 80003680 <_ZN3TCB14set_next_readyEPS_>
    return tmp;
}
    80002c38:	00048513          	mv	a0,s1
    80002c3c:	01813083          	ld	ra,24(sp)
    80002c40:	01013403          	ld	s0,16(sp)
    80002c44:	00813483          	ld	s1,8(sp)
    80002c48:	02010113          	addi	sp,sp,32
    80002c4c:	00008067          	ret
    if (!head_ready) tail_ready = nullptr;
    80002c50:	0000a797          	auipc	a5,0xa
    80002c54:	2c07b423          	sd	zero,712(a5) # 8000cf18 <_ZN9Scheduler10tail_readyE>
    80002c58:	fd1ff06f          	j	80002c28 <_ZN9Scheduler3getEv+0x38>

0000000080002c5c <_ZN9Scheduler17remove_from_sleepEP3TCB>:
    change_thread();
    return 0;
}

/// remove thread from sleeping list (used for timed wait)
int Scheduler::remove_from_sleep(TCB *thread) {
    80002c5c:	ff010113          	addi	sp,sp,-16
    80002c60:	00813423          	sd	s0,8(sp)
    80002c64:	01010413          	addi	s0,sp,16
    if (!thread) return -1;
    80002c68:	06050863          	beqz	a0,80002cd8 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x7c>
    TCB *prev = nullptr, *tmp = head_sleeping;
    80002c6c:	0000a797          	auipc	a5,0xa
    80002c70:	2bc7b783          	ld	a5,700(a5) # 8000cf28 <_ZN9Scheduler13head_sleepingE>
    80002c74:	00000713          	li	a4,0
    while (tmp && tmp != thread) {
    80002c78:	00078a63          	beqz	a5,80002c8c <_ZN9Scheduler17remove_from_sleepEP3TCB+0x30>
    80002c7c:	00a78863          	beq	a5,a0,80002c8c <_ZN9Scheduler17remove_from_sleepEP3TCB+0x30>
        prev = tmp;
    80002c80:	00078713          	mv	a4,a5
        tmp = tmp -> next_sleeping;
    80002c84:	0587b783          	ld	a5,88(a5)
    while (tmp && tmp != thread) {
    80002c88:	ff1ff06f          	j	80002c78 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x1c>
    }
    if (!tmp) return -2;
    80002c8c:	04078a63          	beqz	a5,80002ce0 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x84>
    if (prev) prev -> next_sleeping = tmp -> next_sleeping;
    80002c90:	02070c63          	beqz	a4,80002cc8 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x6c>
    80002c94:	0587b683          	ld	a3,88(a5)
    80002c98:	04d73c23          	sd	a3,88(a4)
    else head_sleeping = tmp -> next_sleeping;
    if (tmp -> next_sleeping) tmp -> next_sleeping -> time_to_sleep += tmp -> time_to_sleep;
    80002c9c:	0587b703          	ld	a4,88(a5)
    80002ca0:	00070a63          	beqz	a4,80002cb4 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x58>
    80002ca4:	0507b603          	ld	a2,80(a5)
    80002ca8:	05073683          	ld	a3,80(a4)
    80002cac:	00c686b3          	add	a3,a3,a2
    80002cb0:	04d73823          	sd	a3,80(a4)
    tmp -> next_sleeping = nullptr;
    80002cb4:	0407bc23          	sd	zero,88(a5)
    return 0;
    80002cb8:	00000513          	li	a0,0
}
    80002cbc:	00813403          	ld	s0,8(sp)
    80002cc0:	01010113          	addi	sp,sp,16
    80002cc4:	00008067          	ret
    else head_sleeping = tmp -> next_sleeping;
    80002cc8:	0587b703          	ld	a4,88(a5)
    80002ccc:	0000a697          	auipc	a3,0xa
    80002cd0:	24e6be23          	sd	a4,604(a3) # 8000cf28 <_ZN9Scheduler13head_sleepingE>
    80002cd4:	fc9ff06f          	j	80002c9c <_ZN9Scheduler17remove_from_sleepEP3TCB+0x40>
    if (!thread) return -1;
    80002cd8:	fff00513          	li	a0,-1
    80002cdc:	fe1ff06f          	j	80002cbc <_ZN9Scheduler17remove_from_sleepEP3TCB+0x60>
    if (!tmp) return -2;
    80002ce0:	ffe00513          	li	a0,-2
    80002ce4:	fd9ff06f          	j	80002cbc <_ZN9Scheduler17remove_from_sleepEP3TCB+0x60>

0000000080002ce8 <_ZN9Scheduler13change_threadEv>:

/// dispatch, without putting running back in scheduler
void Scheduler::change_thread() {
    80002ce8:	fe010113          	addi	sp,sp,-32
    80002cec:	00113c23          	sd	ra,24(sp)
    80002cf0:	00813823          	sd	s0,16(sp)
    80002cf4:	00913423          	sd	s1,8(sp)
    80002cf8:	02010413          	addi	s0,sp,32
    TCB* old = TCB::running;
    80002cfc:	0000a797          	auipc	a5,0xa
    80002d00:	18c7b783          	ld	a5,396(a5) # 8000ce88 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002d04:	0007b483          	ld	s1,0(a5)
    old -> set_status(TCB::SLEEPING);
    80002d08:	00100593          	li	a1,1
    80002d0c:	00048513          	mv	a0,s1
    80002d10:	00001097          	auipc	ra,0x1
    80002d14:	9fc080e7          	jalr	-1540(ra) # 8000370c <_ZN3TCB10set_statusENS_6StatusE>
    if (!old-> timed_wait) {
    80002d18:	0484c783          	lbu	a5,72(s1)
    80002d1c:	00078c63          	beqz	a5,80002d34 <_ZN9Scheduler13change_threadEv+0x4c>
        TCB::running = Scheduler::get();
        if (old != TCB::running) TCB::yield(old, TCB::running);
    }
}
    80002d20:	01813083          	ld	ra,24(sp)
    80002d24:	01013403          	ld	s0,16(sp)
    80002d28:	00813483          	ld	s1,8(sp)
    80002d2c:	02010113          	addi	sp,sp,32
    80002d30:	00008067          	ret
        TCB::running = Scheduler::get();
    80002d34:	00000097          	auipc	ra,0x0
    80002d38:	ebc080e7          	jalr	-324(ra) # 80002bf0 <_ZN9Scheduler3getEv>
    80002d3c:	00050593          	mv	a1,a0
    80002d40:	0000a797          	auipc	a5,0xa
    80002d44:	1487b783          	ld	a5,328(a5) # 8000ce88 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002d48:	00a7b023          	sd	a0,0(a5)
        if (old != TCB::running) TCB::yield(old, TCB::running);
    80002d4c:	fca48ae3          	beq	s1,a0,80002d20 <_ZN9Scheduler13change_threadEv+0x38>
    80002d50:	00048513          	mv	a0,s1
    80002d54:	00001097          	auipc	ra,0x1
    80002d58:	828080e7          	jalr	-2008(ra) # 8000357c <_ZN3TCB5yieldEPS_S0_>
}
    80002d5c:	fc5ff06f          	j	80002d20 <_ZN9Scheduler13change_threadEv+0x38>

0000000080002d60 <_ZN9Scheduler12put_to_sleepEm>:
    if (time <= 0) return -1;
    80002d60:	18050a63          	beqz	a0,80002ef4 <_ZN9Scheduler12put_to_sleepEm+0x194>
int Scheduler::put_to_sleep(time_t time) {
    80002d64:	fc010113          	addi	sp,sp,-64
    80002d68:	02113c23          	sd	ra,56(sp)
    80002d6c:	02813823          	sd	s0,48(sp)
    80002d70:	02913423          	sd	s1,40(sp)
    80002d74:	03213023          	sd	s2,32(sp)
    80002d78:	01313c23          	sd	s3,24(sp)
    80002d7c:	01413823          	sd	s4,16(sp)
    80002d80:	01513423          	sd	s5,8(sp)
    80002d84:	04010413          	addi	s0,sp,64
    80002d88:	00050993          	mv	s3,a0
    TCB* thread = TCB::running;
    80002d8c:	0000a797          	auipc	a5,0xa
    80002d90:	0fc7b783          	ld	a5,252(a5) # 8000ce88 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002d94:	0007ba83          	ld	s5,0(a5)
    if (!head_sleeping) {
    80002d98:	0000a497          	auipc	s1,0xa
    80002d9c:	1904b483          	ld	s1,400(s1) # 8000cf28 <_ZN9Scheduler13head_sleepingE>
    80002da0:	02048e63          	beqz	s1,80002ddc <_ZN9Scheduler12put_to_sleepEm+0x7c>
    time_t current_time = 0;
    80002da4:	00000913          	li	s2,0
    TCB* tmp = head_sleeping, *prev = nullptr;
    80002da8:	00000a13          	li	s4,0
    while (tmp) {
    80002dac:	0e048463          	beqz	s1,80002e94 <_ZN9Scheduler12put_to_sleepEm+0x134>
        current_time += tmp -> get_time_to_sleep();
    80002db0:	00048513          	mv	a0,s1
    80002db4:	00001097          	auipc	ra,0x1
    80002db8:	93c080e7          	jalr	-1732(ra) # 800036f0 <_ZNK3TCB17get_time_to_sleepEv>
    80002dbc:	00a90933          	add	s2,s2,a0
        if (current_time > time) {
    80002dc0:	0529ea63          	bltu	s3,s2,80002e14 <_ZN9Scheduler12put_to_sleepEm+0xb4>
        tmp = tmp -> get_next_sleeping();
    80002dc4:	00048513          	mv	a0,s1
    80002dc8:	00001097          	auipc	ra,0x1
    80002dcc:	8f0080e7          	jalr	-1808(ra) # 800036b8 <_ZNK3TCB17get_next_sleepingEv>
        prev = tmp;
    80002dd0:	00048a13          	mv	s4,s1
        tmp = tmp -> get_next_sleeping();
    80002dd4:	00050493          	mv	s1,a0
    while (tmp) {
    80002dd8:	fd5ff06f          	j	80002dac <_ZN9Scheduler12put_to_sleepEm+0x4c>
        head_sleeping = thread;
    80002ddc:	0000a797          	auipc	a5,0xa
    80002de0:	1557b623          	sd	s5,332(a5) # 8000cf28 <_ZN9Scheduler13head_sleepingE>
        thread -> set_next_sleeping(nullptr);
    80002de4:	00000593          	li	a1,0
    80002de8:	000a8513          	mv	a0,s5
    80002dec:	00001097          	auipc	ra,0x1
    80002df0:	8b0080e7          	jalr	-1872(ra) # 8000369c <_ZN3TCB17set_next_sleepingEPS_>
        thread -> set_time_to_sleep(time);
    80002df4:	00098593          	mv	a1,s3
    80002df8:	000a8513          	mv	a0,s5
    80002dfc:	00001097          	auipc	ra,0x1
    80002e00:	8d8080e7          	jalr	-1832(ra) # 800036d4 <_ZN3TCB17set_time_to_sleepEm>
        change_thread();
    80002e04:	00000097          	auipc	ra,0x0
    80002e08:	ee4080e7          	jalr	-284(ra) # 80002ce8 <_ZN9Scheduler13change_threadEv>
        return 0;
    80002e0c:	00000513          	li	a0,0
    80002e10:	0c00006f          	j	80002ed0 <_ZN9Scheduler12put_to_sleepEm+0x170>
            time_t new_time = time - (current_time - tmp -> get_time_to_sleep());
    80002e14:	00048513          	mv	a0,s1
    80002e18:	00001097          	auipc	ra,0x1
    80002e1c:	8d8080e7          	jalr	-1832(ra) # 800036f0 <_ZNK3TCB17get_time_to_sleepEv>
    80002e20:	41250933          	sub	s2,a0,s2
    80002e24:	013909b3          	add	s3,s2,s3
            thread -> set_time_to_sleep(new_time);
    80002e28:	00098593          	mv	a1,s3
    80002e2c:	000a8513          	mv	a0,s5
    80002e30:	00001097          	auipc	ra,0x1
    80002e34:	8a4080e7          	jalr	-1884(ra) # 800036d4 <_ZN3TCB17set_time_to_sleepEm>
            thread -> set_next_sleeping(tmp);
    80002e38:	00048593          	mv	a1,s1
    80002e3c:	000a8513          	mv	a0,s5
    80002e40:	00001097          	auipc	ra,0x1
    80002e44:	85c080e7          	jalr	-1956(ra) # 8000369c <_ZN3TCB17set_next_sleepingEPS_>
            if (prev) prev -> set_next_sleeping(thread);
    80002e48:	040a0063          	beqz	s4,80002e88 <_ZN9Scheduler12put_to_sleepEm+0x128>
    80002e4c:	000a8593          	mv	a1,s5
    80002e50:	000a0513          	mv	a0,s4
    80002e54:	00001097          	auipc	ra,0x1
    80002e58:	848080e7          	jalr	-1976(ra) # 8000369c <_ZN3TCB17set_next_sleepingEPS_>
            tmp -> set_time_to_sleep(tmp -> get_time_to_sleep() - new_time);
    80002e5c:	00048513          	mv	a0,s1
    80002e60:	00001097          	auipc	ra,0x1
    80002e64:	890080e7          	jalr	-1904(ra) # 800036f0 <_ZNK3TCB17get_time_to_sleepEv>
    80002e68:	413505b3          	sub	a1,a0,s3
    80002e6c:	00048513          	mv	a0,s1
    80002e70:	00001097          	auipc	ra,0x1
    80002e74:	864080e7          	jalr	-1948(ra) # 800036d4 <_ZN3TCB17set_time_to_sleepEm>
            change_thread();
    80002e78:	00000097          	auipc	ra,0x0
    80002e7c:	e70080e7          	jalr	-400(ra) # 80002ce8 <_ZN9Scheduler13change_threadEv>
            return 0;
    80002e80:	00000513          	li	a0,0
    80002e84:	04c0006f          	j	80002ed0 <_ZN9Scheduler12put_to_sleepEm+0x170>
            else head_sleeping = thread;
    80002e88:	0000a797          	auipc	a5,0xa
    80002e8c:	0b57b023          	sd	s5,160(a5) # 8000cf28 <_ZN9Scheduler13head_sleepingE>
    80002e90:	fcdff06f          	j	80002e5c <_ZN9Scheduler12put_to_sleepEm+0xfc>
    thread -> set_time_to_sleep(time - current_time);
    80002e94:	412985b3          	sub	a1,s3,s2
    80002e98:	000a8513          	mv	a0,s5
    80002e9c:	00001097          	auipc	ra,0x1
    80002ea0:	838080e7          	jalr	-1992(ra) # 800036d4 <_ZN3TCB17set_time_to_sleepEm>
    prev -> set_next_sleeping(thread);
    80002ea4:	000a8593          	mv	a1,s5
    80002ea8:	000a0513          	mv	a0,s4
    80002eac:	00000097          	auipc	ra,0x0
    80002eb0:	7f0080e7          	jalr	2032(ra) # 8000369c <_ZN3TCB17set_next_sleepingEPS_>
    thread -> set_next_sleeping(nullptr);
    80002eb4:	00000593          	li	a1,0
    80002eb8:	000a8513          	mv	a0,s5
    80002ebc:	00000097          	auipc	ra,0x0
    80002ec0:	7e0080e7          	jalr	2016(ra) # 8000369c <_ZN3TCB17set_next_sleepingEPS_>
    change_thread();
    80002ec4:	00000097          	auipc	ra,0x0
    80002ec8:	e24080e7          	jalr	-476(ra) # 80002ce8 <_ZN9Scheduler13change_threadEv>
    return 0;
    80002ecc:	00000513          	li	a0,0
}
    80002ed0:	03813083          	ld	ra,56(sp)
    80002ed4:	03013403          	ld	s0,48(sp)
    80002ed8:	02813483          	ld	s1,40(sp)
    80002edc:	02013903          	ld	s2,32(sp)
    80002ee0:	01813983          	ld	s3,24(sp)
    80002ee4:	01013a03          	ld	s4,16(sp)
    80002ee8:	00813a83          	ld	s5,8(sp)
    80002eec:	04010113          	addi	sp,sp,64
    80002ef0:	00008067          	ret
    if (time <= 0) return -1;
    80002ef4:	fff00513          	li	a0,-1
}
    80002ef8:	00008067          	ret

0000000080002efc <_ZN5RiscV10popSppSpieEv>:
    SUPERVISOR_INTERRUPT = 0x0000000000000009UL,
};

/// used in thread wrapper function when initializing thread because thread stack is empty
/// pc = (sepc = ra)
void RiscV::popSppSpie() {
    80002efc:	ff010113          	addi	sp,sp,-16
    80002f00:	00813423          	sd	s0,8(sp)
    80002f04:	01010413          	addi	s0,sp,16
    /// conditionally return to User mode
    if (TCB::running -> function_body && TCB::running->function_body != kernelConsoleOutput) mc_sstatus(SSTATUS_SPP);
    80002f08:	0000a797          	auipc	a5,0xa
    80002f0c:	f807b783          	ld	a5,-128(a5) # 8000ce88 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002f10:	0007b783          	ld	a5,0(a5)
    80002f14:	0287b783          	ld	a5,40(a5)
    80002f18:	00078c63          	beqz	a5,80002f30 <_ZN5RiscV10popSppSpieEv+0x34>
    80002f1c:	0000a717          	auipc	a4,0xa
    80002f20:	f6473703          	ld	a4,-156(a4) # 8000ce80 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002f24:	00e78663          	beq	a5,a4,80002f30 <_ZN5RiscV10popSppSpieEv+0x34>
}

inline void RiscV::mc_sstatus(uint64 mask) {
    __asm__ volatile ("csrc sstatus, %0" : : "r"(mask));
    80002f28:	10000793          	li	a5,256
    80002f2c:	1007b073          	csrc	sstatus,a5
    __asm__ volatile("csrw sepc, ra");
    80002f30:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80002f34:	10200073          	sret
}
    80002f38:	00813403          	ld	s0,8(sp)
    80002f3c:	01010113          	addi	sp,sp,16
    80002f40:	00008067          	ret

0000000080002f44 <_ZN5RiscV22handle_supervisor_trapEv>:

/// interrupt handler
void RiscV::handle_supervisor_trap() {
    80002f44:	f9010113          	addi	sp,sp,-112
    80002f48:	06113423          	sd	ra,104(sp)
    80002f4c:	06813023          	sd	s0,96(sp)
    80002f50:	04913c23          	sd	s1,88(sp)
    80002f54:	05213823          	sd	s2,80(sp)
    80002f58:	05313423          	sd	s3,72(sp)
    80002f5c:	07010413          	addi	s0,sp,112
    /// read values from registers
    uint64 syscall_code, a1, a2, a3, a4;
    __asm__ volatile("mv %0, a0" : "=r"(syscall_code));
    80002f60:	00050793          	mv	a5,a0
    __asm__ volatile("mv %0, a1" : "=r"(a1));
    80002f64:	00058513          	mv	a0,a1
    __asm__ volatile("mv %0, a2" : "=r"(a2));
    80002f68:	00060593          	mv	a1,a2
    __asm__ volatile("mv %0, a3" : "=r"(a3));
    80002f6c:	00068613          	mv	a2,a3
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    80002f70:	00070693          	mv	a3,a4
    __asm__ volatile ("csrr %0, scause" : "=r"(scause));
    80002f74:	14202773          	csrr	a4,scause
    80002f78:	f8e43c23          	sd	a4,-104(s0)
    return scause;
    80002f7c:	f9843703          	ld	a4,-104(s0)

    /// read scause register value
    uint64 scause = read_scause();

    /// interrupt from supervisor / user mode
    if (scause == USER_INTERRUPT || scause == SUPERVISOR_INTERRUPT) {
    80002f80:	ff870893          	addi	a7,a4,-8
    80002f84:	00100813          	li	a6,1
    80002f88:	07187063          	bgeu	a6,a7,80002fe8 <_ZN5RiscV22handle_supervisor_trapEv+0xa4>
        write_sepc(sepc);
        write_sstatus(sstatus);
    }

    /// interrupt caused by Timer
    else if (scause == SOFTWARE_INTERRUPT) {
    80002f8c:	fff00793          	li	a5,-1
    80002f90:	03f79793          	slli	a5,a5,0x3f
    80002f94:	00178793          	addi	a5,a5,1
    80002f98:	16f70063          	beq	a4,a5,800030f8 <_ZN5RiscV22handle_supervisor_trapEv+0x1b4>
            write_sepc(sepc);
        }
    }

    /// External interrupt (Console)
    else if (scause == HARDWARE_INTERRUPT) {
    80002f9c:	fff00793          	li	a5,-1
    80002fa0:	03f79793          	slli	a5,a5,0x3f
    80002fa4:	00978793          	addi	a5,a5,9
    80002fa8:	22f70463          	beq	a4,a5,800031d0 <_ZN5RiscV22handle_supervisor_trapEv+0x28c>
        mc_sip(SIP_SEIP);
    }

    /// Illegal instruction / Bad memory access
    else {
        printNumber(scause);
    80002fac:	00070513          	mv	a0,a4
    80002fb0:	fffff097          	auipc	ra,0xfffff
    80002fb4:	bec080e7          	jalr	-1044(ra) # 80001b9c <_Z11printNumberm>
        putc('!');
    80002fb8:	02100513          	li	a0,33
    80002fbc:	ffffe097          	auipc	ra,0xffffe
    80002fc0:	6b0080e7          	jalr	1712(ra) # 8000166c <_Z4putcc>
        putc('?');
    80002fc4:	03f00513          	li	a0,63
    80002fc8:	ffffe097          	auipc	ra,0xffffe
    80002fcc:	6a4080e7          	jalr	1700(ra) # 8000166c <_Z4putcc>
        putc('!');
    80002fd0:	02100513          	li	a0,33
    80002fd4:	ffffe097          	auipc	ra,0xffffe
    80002fd8:	698080e7          	jalr	1688(ra) # 8000166c <_Z4putcc>
        uint64 val = 1;
        __asm__ volatile("mv a0, %0" : : "r"(val));
    80002fdc:	00100793          	li	a5,1
    80002fe0:	00078513          	mv	a0,a5
    }
    80002fe4:	0540006f          	j	80003038 <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
    __asm__ volatile ("csrr %0, sepc" : "=r"(sepc));
    80002fe8:	14102773          	csrr	a4,sepc
    80002fec:	fae43423          	sd	a4,-88(s0)
    return sepc;
    80002ff0:	fa843483          	ld	s1,-88(s0)
        uint64 sepc = read_sepc() + 4;
    80002ff4:	00448493          	addi	s1,s1,4
}

inline uint64 RiscV::read_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    80002ff8:	10002773          	csrr	a4,sstatus
    80002ffc:	fae43023          	sd	a4,-96(s0)
    return sstatus;
    80003000:	fa043903          	ld	s2,-96(s0)
        switch(syscall_code) {
    80003004:	04200713          	li	a4,66
    80003008:	02f76463          	bltu	a4,a5,80003030 <_ZN5RiscV22handle_supervisor_trapEv+0xec>
    8000300c:	00279793          	slli	a5,a5,0x2
    80003010:	00007717          	auipc	a4,0x7
    80003014:	01070713          	addi	a4,a4,16 # 8000a020 <CONSOLE_STATUS+0x10>
    80003018:	00e787b3          	add	a5,a5,a4
    8000301c:	0007a783          	lw	a5,0(a5)
    80003020:	00e787b3          	add	a5,a5,a4
    80003024:	00078067          	jr	a5
                MemoryAllocator::mem_alloc((size_t) a1);
    80003028:	fffff097          	auipc	ra,0xfffff
    8000302c:	4fc080e7          	jalr	1276(ra) # 80002524 <_ZN15MemoryAllocator9mem_allocEm>
    __asm__ volatile ("csrw sepc, %0" : : "r"(val));
    80003030:	14149073          	csrw	sepc,s1
}

inline void RiscV::write_sstatus(uint64 val) {
    __asm__ volatile ("csrw sstatus, %0" : : "r"(val));
    80003034:	10091073          	csrw	sstatus,s2
    80003038:	06813083          	ld	ra,104(sp)
    8000303c:	06013403          	ld	s0,96(sp)
    80003040:	05813483          	ld	s1,88(sp)
    80003044:	05013903          	ld	s2,80(sp)
    80003048:	04813983          	ld	s3,72(sp)
    8000304c:	07010113          	addi	sp,sp,112
    80003050:	00008067          	ret
                MemoryAllocator::mem_free((void *) a1);
    80003054:	fffff097          	auipc	ra,0xfffff
    80003058:	644080e7          	jalr	1604(ra) # 80002698 <_ZN15MemoryAllocator8mem_freeEPv>
                break;
    8000305c:	fd5ff06f          	j	80003030 <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                TCB::thread_create((thread_t *) a1, (void (*)(void *)) a2, (void *) a3, (void *) a4);
    80003060:	00000097          	auipc	ra,0x0
    80003064:	76c080e7          	jalr	1900(ra) # 800037cc <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>
                break;
    80003068:	fc9ff06f          	j	80003030 <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                TCB::thread_exit();
    8000306c:	00000097          	auipc	ra,0x0
    80003070:	6bc080e7          	jalr	1724(ra) # 80003728 <_ZN3TCB11thread_exitEv>
                break;
    80003074:	fbdff06f          	j	80003030 <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                TCB::dispatch();
    80003078:	00000097          	auipc	ra,0x0
    8000307c:	560080e7          	jalr	1376(ra) # 800035d8 <_ZN3TCB8dispatchEv>
                break;
    80003080:	fb1ff06f          	j	80003030 <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Sem::open((sem_t *) a1, a2);
    80003084:	0005859b          	sext.w	a1,a1
    80003088:	fffff097          	auipc	ra,0xfffff
    8000308c:	9d0080e7          	jalr	-1584(ra) # 80001a58 <_ZN3Sem4openEPPS_j>
                break;
    80003090:	fa1ff06f          	j	80003030 <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Sem::close((sem_t) a1);
    80003094:	ffffe097          	auipc	ra,0xffffe
    80003098:	79c080e7          	jalr	1948(ra) # 80001830 <_ZN3Sem5closeEPS_>
                break;
    8000309c:	f95ff06f          	j	80003030 <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Sem::wait((sem_t) a1);
    800030a0:	ffffe097          	auipc	ra,0xffffe
    800030a4:	7fc080e7          	jalr	2044(ra) # 8000189c <_ZN3Sem4waitEPS_>
                break;
    800030a8:	f89ff06f          	j	80003030 <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Sem::signal((sem_t) a1);
    800030ac:	fffff097          	auipc	ra,0xfffff
    800030b0:	844080e7          	jalr	-1980(ra) # 800018f0 <_ZN3Sem6signalEPS_>
                break;
    800030b4:	f7dff06f          	j	80003030 <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Sem::timedWait((sem_t) a1, (time_t) a2);
    800030b8:	fffff097          	auipc	ra,0xfffff
    800030bc:	88c080e7          	jalr	-1908(ra) # 80001944 <_ZN3Sem9timedWaitEPS_m>
                break;
    800030c0:	f71ff06f          	j	80003030 <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Sem::tryWait((sem_t) a1);
    800030c4:	fffff097          	auipc	ra,0xfffff
    800030c8:	904080e7          	jalr	-1788(ra) # 800019c8 <_ZN3Sem7tryWaitEPS_>
                break;
    800030cc:	f65ff06f          	j	80003030 <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Scheduler::put_to_sleep((time_t) a1);
    800030d0:	00000097          	auipc	ra,0x0
    800030d4:	c90080e7          	jalr	-880(ra) # 80002d60 <_ZN9Scheduler12put_to_sleepEm>
                break;
    800030d8:	f59ff06f          	j	80003030 <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Con::getc_input();
    800030dc:	fffff097          	auipc	ra,0xfffff
    800030e0:	e38080e7          	jalr	-456(ra) # 80001f14 <_ZN3Con10getc_inputEv>
                break;
    800030e4:	f4dff06f          	j	80003030 <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Con::putc_output((char) a1);
    800030e8:	0ff57513          	andi	a0,a0,255
    800030ec:	fffff097          	auipc	ra,0xfffff
    800030f0:	d90080e7          	jalr	-624(ra) # 80001e7c <_ZN3Con11putc_outputEc>
                break;
    800030f4:	f3dff06f          	j	80003030 <_ZN5RiscV22handle_supervisor_trapEv+0xec>
    __asm__ volatile ("csrc sip, %0" : : "r"(mask));
    800030f8:	00200793          	li	a5,2
    800030fc:	1447b073          	csrc	sip,a5
        TCB* first_waiting = Scheduler::head_sleeping;
    80003100:	0000a797          	auipc	a5,0xa
    80003104:	d587b783          	ld	a5,-680(a5) # 8000ce58 <_GLOBAL_OFFSET_TABLE_+0x20>
    80003108:	0007b483          	ld	s1,0(a5)
        if (first_waiting) {
    8000310c:	06048263          	beqz	s1,80003170 <_ZN5RiscV22handle_supervisor_trapEv+0x22c>
            --first_waiting -> time_to_sleep;
    80003110:	0504b783          	ld	a5,80(s1)
    80003114:	fff78793          	addi	a5,a5,-1
    80003118:	04f4b823          	sd	a5,80(s1)
    8000311c:	03c0006f          	j	80003158 <_ZN5RiscV22handle_supervisor_trapEv+0x214>
                if (first_waiting -> timed_wait) first_waiting -> clear_from_timed_wait(true);
    80003120:	00100593          	li	a1,1
    80003124:	00048513          	mv	a0,s1
    80003128:	00000097          	auipc	ra,0x0
    8000312c:	7cc080e7          	jalr	1996(ra) # 800038f4 <_ZN3TCB21clear_from_timed_waitEb>
                Scheduler::put(first_waiting);
    80003130:	00048513          	mv	a0,s1
    80003134:	00000097          	auipc	ra,0x0
    80003138:	a4c080e7          	jalr	-1460(ra) # 80002b80 <_ZN9Scheduler3putEP3TCB>
                first_waiting -> status = TCB::RUNNABLE;
    8000313c:	0204a023          	sw	zero,32(s1)
                first_waiting = first_waiting -> next_sleeping;
    80003140:	0584b783          	ld	a5,88(s1)
                tmp -> next_sleeping = nullptr;
    80003144:	0404bc23          	sd	zero,88(s1)
                Scheduler::head_sleeping = first_waiting;
    80003148:	0000a717          	auipc	a4,0xa
    8000314c:	d1073703          	ld	a4,-752(a4) # 8000ce58 <_GLOBAL_OFFSET_TABLE_+0x20>
    80003150:	00f73023          	sd	a5,0(a4)
                first_waiting = first_waiting -> next_sleeping;
    80003154:	00078493          	mv	s1,a5
            while (first_waiting && first_waiting -> time_to_sleep == 0) {
    80003158:	00048c63          	beqz	s1,80003170 <_ZN5RiscV22handle_supervisor_trapEv+0x22c>
    8000315c:	0504b783          	ld	a5,80(s1)
    80003160:	00079863          	bnez	a5,80003170 <_ZN5RiscV22handle_supervisor_trapEv+0x22c>
                if (first_waiting -> timed_wait) first_waiting -> clear_from_timed_wait(true);
    80003164:	0484c783          	lbu	a5,72(s1)
    80003168:	fc0784e3          	beqz	a5,80003130 <_ZN5RiscV22handle_supervisor_trapEv+0x1ec>
    8000316c:	fb5ff06f          	j	80003120 <_ZN5RiscV22handle_supervisor_trapEv+0x1dc>
        ++TCB::time_slice_counter;
    80003170:	0000a717          	auipc	a4,0xa
    80003174:	d0873703          	ld	a4,-760(a4) # 8000ce78 <_GLOBAL_OFFSET_TABLE_+0x40>
    80003178:	00073783          	ld	a5,0(a4)
    8000317c:	00178793          	addi	a5,a5,1
    80003180:	00f73023          	sd	a5,0(a4)
        if (TCB::time_slice_counter >= TCB::running -> time_slice) {
    80003184:	0000a717          	auipc	a4,0xa
    80003188:	d0473703          	ld	a4,-764(a4) # 8000ce88 <_GLOBAL_OFFSET_TABLE_+0x50>
    8000318c:	00073703          	ld	a4,0(a4)
    80003190:	00073703          	ld	a4,0(a4)
    80003194:	eae7e2e3          	bltu	a5,a4,80003038 <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
    __asm__ volatile ("csrr %0, sepc" : "=r"(sepc));
    80003198:	141027f3          	csrr	a5,sepc
    8000319c:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    800031a0:	fb843483          	ld	s1,-72(s0)
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    800031a4:	100027f3          	csrr	a5,sstatus
    800031a8:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    800031ac:	fb043903          	ld	s2,-80(s0)
            TCB::time_slice_counter = 0;
    800031b0:	0000a797          	auipc	a5,0xa
    800031b4:	cc87b783          	ld	a5,-824(a5) # 8000ce78 <_GLOBAL_OFFSET_TABLE_+0x40>
    800031b8:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    800031bc:	00000097          	auipc	ra,0x0
    800031c0:	41c080e7          	jalr	1052(ra) # 800035d8 <_ZN3TCB8dispatchEv>
    __asm__ volatile ("csrw sstatus, %0" : : "r"(val));
    800031c4:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %0" : : "r"(val));
    800031c8:	14149073          	csrw	sepc,s1
}
    800031cc:	e6dff06f          	j	80003038 <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
    __asm__ volatile ("csrr %0, sepc" : "=r"(sepc));
    800031d0:	141027f3          	csrr	a5,sepc
    800031d4:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    800031d8:	fc843983          	ld	s3,-56(s0)
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    800031dc:	100027f3          	csrr	a5,sstatus
    800031e0:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    800031e4:	fc043903          	ld	s2,-64(s0)
        int irq = plic_claim();
    800031e8:	00004097          	auipc	ra,0x4
    800031ec:	68c080e7          	jalr	1676(ra) # 80007874 <plic_claim>
    800031f0:	00050493          	mv	s1,a0
        if (irq == CONSOLE_IRQ) {
    800031f4:	00a00793          	li	a5,10
    800031f8:	02f50263          	beq	a0,a5,8000321c <_ZN5RiscV22handle_supervisor_trapEv+0x2d8>
        plic_complete(irq);
    800031fc:	00048513          	mv	a0,s1
    80003200:	00004097          	auipc	ra,0x4
    80003204:	6ac080e7          	jalr	1708(ra) # 800078ac <plic_complete>
    __asm__ volatile ("csrw sepc, %0" : : "r"(val));
    80003208:	14199073          	csrw	sepc,s3
    __asm__ volatile ("csrw sstatus, %0" : : "r"(val));
    8000320c:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrc sip, %0" : : "r"(mask));
    80003210:	20000793          	li	a5,512
    80003214:	1447b073          	csrc	sip,a5
}
    80003218:	e21ff06f          	j	80003038 <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
            while (*(char *) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT) {
    8000321c:	0000a797          	auipc	a5,0xa
    80003220:	c2c7b783          	ld	a5,-980(a5) # 8000ce48 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003224:	0007b783          	ld	a5,0(a5)
    80003228:	0007c783          	lbu	a5,0(a5)
    8000322c:	0017f793          	andi	a5,a5,1
    80003230:	fc0786e3          	beqz	a5,800031fc <_ZN5RiscV22handle_supervisor_trapEv+0x2b8>
                char c = *(char *) CONSOLE_RX_DATA;
    80003234:	0000a797          	auipc	a5,0xa
    80003238:	c0c7b783          	ld	a5,-1012(a5) # 8000ce40 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000323c:	0007b783          	ld	a5,0(a5)
                Con::putc_input(c);
    80003240:	0007c503          	lbu	a0,0(a5)
    80003244:	fffff097          	auipc	ra,0xfffff
    80003248:	c9c080e7          	jalr	-868(ra) # 80001ee0 <_ZN3Con10putc_inputEc>
            while (*(char *) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT) {
    8000324c:	fd1ff06f          	j	8000321c <_ZN5RiscV22handle_supervisor_trapEv+0x2d8>

0000000080003250 <_ZN10ThreadList9get_firstEv>:
void ThreadList::push_back(TCB *thread) {
    tail = (head ? tail -> next : head) = new Node(thread);
}

/// get first element
TCB *ThreadList::get_first() {
    80003250:	ff010113          	addi	sp,sp,-16
    80003254:	00813423          	sd	s0,8(sp)
    80003258:	01010413          	addi	s0,sp,16
    return (head ? head -> data : nullptr);
    8000325c:	00053503          	ld	a0,0(a0)
    80003260:	00050463          	beqz	a0,80003268 <_ZN10ThreadList9get_firstEv+0x18>
    80003264:	00053503          	ld	a0,0(a0)
}
    80003268:	00813403          	ld	s0,8(sp)
    8000326c:	01010113          	addi	sp,sp,16
    80003270:	00008067          	ret

0000000080003274 <_ZN10ThreadList6removeEP3TCB>:
    delete tmp;
    return thread;
}

/// remove element `thread` is pointing to
int ThreadList::remove(TCB *thread) {
    80003274:	ff010113          	addi	sp,sp,-16
    80003278:	00813423          	sd	s0,8(sp)
    8000327c:	01010413          	addi	s0,sp,16
    if (!thread) return -1;
    80003280:	04058863          	beqz	a1,800032d0 <_ZN10ThreadList6removeEP3TCB+0x5c>
    Node *tmp = head, *prev = nullptr;
    80003284:	00053783          	ld	a5,0(a0)
    80003288:	00000693          	li	a3,0
    while (tmp && tmp -> data != thread) {
    8000328c:	00078c63          	beqz	a5,800032a4 <_ZN10ThreadList6removeEP3TCB+0x30>
    80003290:	0007b703          	ld	a4,0(a5)
    80003294:	00b70863          	beq	a4,a1,800032a4 <_ZN10ThreadList6removeEP3TCB+0x30>
        prev = tmp;
    80003298:	00078693          	mv	a3,a5
        tmp = tmp -> next;
    8000329c:	0087b783          	ld	a5,8(a5)
    while (tmp && tmp -> data != thread) {
    800032a0:	fedff06f          	j	8000328c <_ZN10ThreadList6removeEP3TCB+0x18>
    }
    if (!tmp) return -2;
    800032a4:	02078a63          	beqz	a5,800032d8 <_ZN10ThreadList6removeEP3TCB+0x64>
    if (prev) prev -> next = tmp -> next;
    800032a8:	00068e63          	beqz	a3,800032c4 <_ZN10ThreadList6removeEP3TCB+0x50>
    800032ac:	0087b783          	ld	a5,8(a5)
    800032b0:	00f6b423          	sd	a5,8(a3)
    else head = tmp;
    return 0;
    800032b4:	00000513          	li	a0,0
}
    800032b8:	00813403          	ld	s0,8(sp)
    800032bc:	01010113          	addi	sp,sp,16
    800032c0:	00008067          	ret
    else head = tmp;
    800032c4:	00f53023          	sd	a5,0(a0)
    return 0;
    800032c8:	00000513          	li	a0,0
    800032cc:	fedff06f          	j	800032b8 <_ZN10ThreadList6removeEP3TCB+0x44>
    if (!thread) return -1;
    800032d0:	fff00513          	li	a0,-1
    800032d4:	fe5ff06f          	j	800032b8 <_ZN10ThreadList6removeEP3TCB+0x44>
    if (!tmp) return -2;
    800032d8:	ffe00513          	li	a0,-2
    800032dc:	fddff06f          	j	800032b8 <_ZN10ThreadList6removeEP3TCB+0x44>

00000000800032e0 <_ZN10ThreadListnwEm>:
/// free the list
void ThreadList::free() {
    while (get_first()) remove_first();
}

void *ThreadList::operator new(size_t size) {
    800032e0:	ff010113          	addi	sp,sp,-16
    800032e4:	00113423          	sd	ra,8(sp)
    800032e8:	00813023          	sd	s0,0(sp)
    800032ec:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    800032f0:	fffff097          	auipc	ra,0xfffff
    800032f4:	5f8080e7          	jalr	1528(ra) # 800028e8 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    800032f8:	fffff097          	auipc	ra,0xfffff
    800032fc:	22c080e7          	jalr	556(ra) # 80002524 <_ZN15MemoryAllocator9mem_allocEm>
}
    80003300:	00813083          	ld	ra,8(sp)
    80003304:	00013403          	ld	s0,0(sp)
    80003308:	01010113          	addi	sp,sp,16
    8000330c:	00008067          	ret

0000000080003310 <_ZN10ThreadListdlEPv>:

void ThreadList::operator delete(void *addr) {
    80003310:	ff010113          	addi	sp,sp,-16
    80003314:	00113423          	sd	ra,8(sp)
    80003318:	00813023          	sd	s0,0(sp)
    8000331c:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    80003320:	fffff097          	auipc	ra,0xfffff
    80003324:	378080e7          	jalr	888(ra) # 80002698 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80003328:	00813083          	ld	ra,8(sp)
    8000332c:	00013403          	ld	s0,0(sp)
    80003330:	01010113          	addi	sp,sp,16
    80003334:	00008067          	ret

0000000080003338 <_ZN10ThreadList4NodenwEm>:

void *ThreadList::Node::operator new(size_t size) {
    80003338:	ff010113          	addi	sp,sp,-16
    8000333c:	00113423          	sd	ra,8(sp)
    80003340:	00813023          	sd	s0,0(sp)
    80003344:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    80003348:	fffff097          	auipc	ra,0xfffff
    8000334c:	5a0080e7          	jalr	1440(ra) # 800028e8 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80003350:	fffff097          	auipc	ra,0xfffff
    80003354:	1d4080e7          	jalr	468(ra) # 80002524 <_ZN15MemoryAllocator9mem_allocEm>
}
    80003358:	00813083          	ld	ra,8(sp)
    8000335c:	00013403          	ld	s0,0(sp)
    80003360:	01010113          	addi	sp,sp,16
    80003364:	00008067          	ret

0000000080003368 <_ZN10ThreadList9push_backEP3TCB>:
void ThreadList::push_back(TCB *thread) {
    80003368:	fe010113          	addi	sp,sp,-32
    8000336c:	00113c23          	sd	ra,24(sp)
    80003370:	00813823          	sd	s0,16(sp)
    80003374:	00913423          	sd	s1,8(sp)
    80003378:	01213023          	sd	s2,0(sp)
    8000337c:	02010413          	addi	s0,sp,32
    80003380:	00050493          	mv	s1,a0
    80003384:	00058913          	mv	s2,a1
    tail = (head ? tail -> next : head) = new Node(thread);
    80003388:	01000513          	li	a0,16
    8000338c:	00000097          	auipc	ra,0x0
    80003390:	fac080e7          	jalr	-84(ra) # 80003338 <_ZN10ThreadList4NodenwEm>
        struct Node *next;

        void* operator new(size_t size);
        void operator delete(void* addr);

        explicit Node(TCB* data) : data(data), next(nullptr) {}
    80003394:	01253023          	sd	s2,0(a0)
    80003398:	00053423          	sd	zero,8(a0)
    8000339c:	0004b783          	ld	a5,0(s1)
    800033a0:	02078463          	beqz	a5,800033c8 <_ZN10ThreadList9push_backEP3TCB+0x60>
    800033a4:	0084b783          	ld	a5,8(s1)
    800033a8:	00a7b423          	sd	a0,8(a5)
    800033ac:	00a4b423          	sd	a0,8(s1)
}
    800033b0:	01813083          	ld	ra,24(sp)
    800033b4:	01013403          	ld	s0,16(sp)
    800033b8:	00813483          	ld	s1,8(sp)
    800033bc:	00013903          	ld	s2,0(sp)
    800033c0:	02010113          	addi	sp,sp,32
    800033c4:	00008067          	ret
    tail = (head ? tail -> next : head) = new Node(thread);
    800033c8:	00a4b023          	sd	a0,0(s1)
    800033cc:	fe1ff06f          	j	800033ac <_ZN10ThreadList9push_backEP3TCB+0x44>

00000000800033d0 <_ZN10ThreadList4NodedlEPv>:

void ThreadList::Node::operator delete(void *addr) {
    800033d0:	ff010113          	addi	sp,sp,-16
    800033d4:	00113423          	sd	ra,8(sp)
    800033d8:	00813023          	sd	s0,0(sp)
    800033dc:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    800033e0:	fffff097          	auipc	ra,0xfffff
    800033e4:	2b8080e7          	jalr	696(ra) # 80002698 <_ZN15MemoryAllocator8mem_freeEPv>
}
    800033e8:	00813083          	ld	ra,8(sp)
    800033ec:	00013403          	ld	s0,0(sp)
    800033f0:	01010113          	addi	sp,sp,16
    800033f4:	00008067          	ret

00000000800033f8 <_ZN10ThreadList12remove_firstEv>:
TCB *ThreadList::remove_first() {
    800033f8:	fe010113          	addi	sp,sp,-32
    800033fc:	00113c23          	sd	ra,24(sp)
    80003400:	00813823          	sd	s0,16(sp)
    80003404:	00913423          	sd	s1,8(sp)
    80003408:	02010413          	addi	s0,sp,32
    8000340c:	00050793          	mv	a5,a0
    if (!head) return nullptr;
    80003410:	00053503          	ld	a0,0(a0)
    80003414:	02050863          	beqz	a0,80003444 <_ZN10ThreadList12remove_firstEv+0x4c>
    TCB* thread = tmp -> data;
    80003418:	00053483          	ld	s1,0(a0)
    head = head -> next;
    8000341c:	00853703          	ld	a4,8(a0)
    80003420:	00e7b023          	sd	a4,0(a5)
    delete tmp;
    80003424:	00000097          	auipc	ra,0x0
    80003428:	fac080e7          	jalr	-84(ra) # 800033d0 <_ZN10ThreadList4NodedlEPv>
}
    8000342c:	00048513          	mv	a0,s1
    80003430:	01813083          	ld	ra,24(sp)
    80003434:	01013403          	ld	s0,16(sp)
    80003438:	00813483          	ld	s1,8(sp)
    8000343c:	02010113          	addi	sp,sp,32
    80003440:	00008067          	ret
    if (!head) return nullptr;
    80003444:	00050493          	mv	s1,a0
    80003448:	fe5ff06f          	j	8000342c <_ZN10ThreadList12remove_firstEv+0x34>

000000008000344c <_ZN10ThreadList4freeEv>:
void ThreadList::free() {
    8000344c:	fe010113          	addi	sp,sp,-32
    80003450:	00113c23          	sd	ra,24(sp)
    80003454:	00813823          	sd	s0,16(sp)
    80003458:	00913423          	sd	s1,8(sp)
    8000345c:	02010413          	addi	s0,sp,32
    80003460:	00050493          	mv	s1,a0
    while (get_first()) remove_first();
    80003464:	00048513          	mv	a0,s1
    80003468:	00000097          	auipc	ra,0x0
    8000346c:	de8080e7          	jalr	-536(ra) # 80003250 <_ZN10ThreadList9get_firstEv>
    80003470:	00050a63          	beqz	a0,80003484 <_ZN10ThreadList4freeEv+0x38>
    80003474:	00048513          	mv	a0,s1
    80003478:	00000097          	auipc	ra,0x0
    8000347c:	f80080e7          	jalr	-128(ra) # 800033f8 <_ZN10ThreadList12remove_firstEv>
    80003480:	fe5ff06f          	j	80003464 <_ZN10ThreadList4freeEv+0x18>
}
    80003484:	01813083          	ld	ra,24(sp)
    80003488:	01013403          	ld	s0,16(sp)
    8000348c:	00813483          	ld	s1,8(sp)
    80003490:	02010113          	addi	sp,sp,32
    80003494:	00008067          	ret

0000000080003498 <_ZN3TCB16wrapper_functionEv>:
    running -> set_status(Status::FINISHED);
    dispatch();
    return 0;
}

void TCB::wrapper_function() {
    80003498:	ff010113          	addi	sp,sp,-16
    8000349c:	00113423          	sd	ra,8(sp)
    800034a0:	00813023          	sd	s0,0(sp)
    800034a4:	01010413          	addi	s0,sp,16
    RiscV::popSppSpie();
    800034a8:	00000097          	auipc	ra,0x0
    800034ac:	a54080e7          	jalr	-1452(ra) # 80002efc <_ZN5RiscV10popSppSpieEv>
    if (running -> function_body) running -> function_body(running -> arg);
    800034b0:	0000a717          	auipc	a4,0xa
    800034b4:	a8073703          	ld	a4,-1408(a4) # 8000cf30 <_ZN3TCB7runningE>
    800034b8:	02873783          	ld	a5,40(a4)
    800034bc:	00078663          	beqz	a5,800034c8 <_ZN3TCB16wrapper_functionEv+0x30>
    800034c0:	03073503          	ld	a0,48(a4)
    800034c4:	000780e7          	jalr	a5
    ::thread_exit();
    800034c8:	ffffe097          	auipc	ra,0xffffe
    800034cc:	eb8080e7          	jalr	-328(ra) # 80001380 <_Z11thread_exitv>
}
    800034d0:	00813083          	ld	ra,8(sp)
    800034d4:	00013403          	ld	s0,0(sp)
    800034d8:	01010113          	addi	sp,sp,16
    800034dc:	00008067          	ret

00000000800034e0 <_ZN3TCBC1EPFvPvES0_S0_>:
            (uint64) (stack ? (uint64) stack + DEFAULT_STACK_SIZE - 1 : 0)
    800034e0:	08068863          	beqz	a3,80003570 <_ZN3TCBC1EPFvPvES0_S0_+0x90>
    800034e4:	000017b7          	lui	a5,0x1
    800034e8:	fff78793          	addi	a5,a5,-1 # fff <_entry-0x7ffff001>
    800034ec:	00f687b3          	add	a5,a3,a5
    context = {
    800034f0:	00000717          	auipc	a4,0x0
    800034f4:	fa870713          	addi	a4,a4,-88 # 80003498 <_ZN3TCB16wrapper_functionEv>
    800034f8:	00e53823          	sd	a4,16(a0)
    800034fc:	00f53c23          	sd	a5,24(a0)
    id = cnt++;
    80003500:	0000a717          	auipc	a4,0xa
    80003504:	a3070713          	addi	a4,a4,-1488 # 8000cf30 <_ZN3TCB7runningE>
    80003508:	00872783          	lw	a5,8(a4)
    8000350c:	0017881b          	addiw	a6,a5,1
    80003510:	01072423          	sw	a6,8(a4)
    80003514:	00f52423          	sw	a5,8(a0)
    time_slice = DEFAULT_TIME_SLICE;
    80003518:	00200793          	li	a5,2
    8000351c:	00f53023          	sd	a5,0(a0)
    status = RUNNABLE;
    80003520:	02052023          	sw	zero,32(a0)
    this -> function_body = function_body;
    80003524:	02b53423          	sd	a1,40(a0)
    this -> arg = arg;
    80003528:	02c53823          	sd	a2,48(a0)
    this -> stack = stack;
    8000352c:	02d53c23          	sd	a3,56(a0)
    timed_wait = false;
    80003530:	04050423          	sb	zero,72(a0)
    time_to_sleep = 0;
    80003534:	04053823          	sd	zero,80(a0)
    next_ready = nullptr;
    80003538:	04053023          	sd	zero,64(a0)
    next_sleeping = nullptr;
    8000353c:	04053c23          	sd	zero,88(a0)
    sem = nullptr;
    80003540:	06053023          	sd	zero,96(a0)
    if (function_body) Scheduler::put(this);
    80003544:	02058a63          	beqz	a1,80003578 <_ZN3TCBC1EPFvPvES0_S0_+0x98>
TCB::TCB(void (*function_body)(void *), void *arg, void *stack) {
    80003548:	ff010113          	addi	sp,sp,-16
    8000354c:	00113423          	sd	ra,8(sp)
    80003550:	00813023          	sd	s0,0(sp)
    80003554:	01010413          	addi	s0,sp,16
    if (function_body) Scheduler::put(this);
    80003558:	fffff097          	auipc	ra,0xfffff
    8000355c:	628080e7          	jalr	1576(ra) # 80002b80 <_ZN9Scheduler3putEP3TCB>
}
    80003560:	00813083          	ld	ra,8(sp)
    80003564:	00013403          	ld	s0,0(sp)
    80003568:	01010113          	addi	sp,sp,16
    8000356c:	00008067          	ret
            (uint64) (stack ? (uint64) stack + DEFAULT_STACK_SIZE - 1 : 0)
    80003570:	00000793          	li	a5,0
    80003574:	f7dff06f          	j	800034f0 <_ZN3TCBC1EPFvPvES0_S0_+0x10>
    80003578:	00008067          	ret

000000008000357c <_ZN3TCB5yieldEPS_S0_>:

void TCB::yield(TCB *old_running, TCB *new_running) {
    8000357c:	fe010113          	addi	sp,sp,-32
    80003580:	00113c23          	sd	ra,24(sp)
    80003584:	00813823          	sd	s0,16(sp)
    80003588:	00913423          	sd	s1,8(sp)
    8000358c:	01213023          	sd	s2,0(sp)
    80003590:	02010413          	addi	s0,sp,32
    80003594:	00050493          	mv	s1,a0
    80003598:	00058913          	mv	s2,a1
    RiscV::push_registers();
    8000359c:	ffffe097          	auipc	ra,0xffffe
    800035a0:	b6c080e7          	jalr	-1172(ra) # 80001108 <_ZN5RiscV14push_registersEv>
    if (old_running != new_running) context_switch(&old_running -> context, &new_running -> context);
    800035a4:	01248a63          	beq	s1,s2,800035b8 <_ZN3TCB5yieldEPS_S0_+0x3c>
    800035a8:	01090593          	addi	a1,s2,16
    800035ac:	01048513          	addi	a0,s1,16
    800035b0:	ffffe097          	auipc	ra,0xffffe
    800035b4:	c58080e7          	jalr	-936(ra) # 80001208 <_ZN3TCB14context_switchEPNS_7ContextES1_>
    RiscV::pop_registers();
    800035b8:	ffffe097          	auipc	ra,0xffffe
    800035bc:	bd0080e7          	jalr	-1072(ra) # 80001188 <_ZN5RiscV13pop_registersEv>
}
    800035c0:	01813083          	ld	ra,24(sp)
    800035c4:	01013403          	ld	s0,16(sp)
    800035c8:	00813483          	ld	s1,8(sp)
    800035cc:	00013903          	ld	s2,0(sp)
    800035d0:	02010113          	addi	sp,sp,32
    800035d4:	00008067          	ret

00000000800035d8 <_ZN3TCB8dispatchEv>:

void TCB::dispatch() {
    800035d8:	fe010113          	addi	sp,sp,-32
    800035dc:	00113c23          	sd	ra,24(sp)
    800035e0:	00813823          	sd	s0,16(sp)
    800035e4:	00913423          	sd	s1,8(sp)
    800035e8:	02010413          	addi	s0,sp,32
    TCB* old = running;
    800035ec:	0000a497          	auipc	s1,0xa
    800035f0:	9444b483          	ld	s1,-1724(s1) # 8000cf30 <_ZN3TCB7runningE>
    if (old -> status == RUNNABLE) Scheduler::put(old);
    800035f4:	0204a783          	lw	a5,32(s1)
    800035f8:	04078663          	beqz	a5,80003644 <_ZN3TCB8dispatchEv+0x6c>
    else if (old -> status == FINISHED) MemoryAllocator::mem_free(old -> stack);
    800035fc:	00300713          	li	a4,3
    80003600:	04e78a63          	beq	a5,a4,80003654 <_ZN3TCB8dispatchEv+0x7c>
    running = Scheduler::get();
    80003604:	fffff097          	auipc	ra,0xfffff
    80003608:	5ec080e7          	jalr	1516(ra) # 80002bf0 <_ZN9Scheduler3getEv>
    8000360c:	00050593          	mv	a1,a0
    80003610:	0000a797          	auipc	a5,0xa
    80003614:	92078793          	addi	a5,a5,-1760 # 8000cf30 <_ZN3TCB7runningE>
    80003618:	00a7b023          	sd	a0,0(a5)
    time_slice_counter = 0;
    8000361c:	0007b823          	sd	zero,16(a5)
    if (old != running) yield(old, running);
    80003620:	00a48863          	beq	s1,a0,80003630 <_ZN3TCB8dispatchEv+0x58>
    80003624:	00048513          	mv	a0,s1
    80003628:	00000097          	auipc	ra,0x0
    8000362c:	f54080e7          	jalr	-172(ra) # 8000357c <_ZN3TCB5yieldEPS_S0_>
}
    80003630:	01813083          	ld	ra,24(sp)
    80003634:	01013403          	ld	s0,16(sp)
    80003638:	00813483          	ld	s1,8(sp)
    8000363c:	02010113          	addi	sp,sp,32
    80003640:	00008067          	ret
    if (old -> status == RUNNABLE) Scheduler::put(old);
    80003644:	00048513          	mv	a0,s1
    80003648:	fffff097          	auipc	ra,0xfffff
    8000364c:	538080e7          	jalr	1336(ra) # 80002b80 <_ZN9Scheduler3putEP3TCB>
    80003650:	fb5ff06f          	j	80003604 <_ZN3TCB8dispatchEv+0x2c>
    else if (old -> status == FINISHED) MemoryAllocator::mem_free(old -> stack);
    80003654:	0384b503          	ld	a0,56(s1)
    80003658:	fffff097          	auipc	ra,0xfffff
    8000365c:	040080e7          	jalr	64(ra) # 80002698 <_ZN15MemoryAllocator8mem_freeEPv>
    80003660:	fa5ff06f          	j	80003604 <_ZN3TCB8dispatchEv+0x2c>

0000000080003664 <_ZNK3TCB14get_next_readyEv>:

TCB *TCB::get_next_ready() const {
    80003664:	ff010113          	addi	sp,sp,-16
    80003668:	00813423          	sd	s0,8(sp)
    8000366c:	01010413          	addi	s0,sp,16
    return next_ready;
}
    80003670:	04053503          	ld	a0,64(a0)
    80003674:	00813403          	ld	s0,8(sp)
    80003678:	01010113          	addi	sp,sp,16
    8000367c:	00008067          	ret

0000000080003680 <_ZN3TCB14set_next_readyEPS_>:

void TCB::set_next_ready(TCB *next) {
    80003680:	ff010113          	addi	sp,sp,-16
    80003684:	00813423          	sd	s0,8(sp)
    80003688:	01010413          	addi	s0,sp,16
    next_ready = next;
    8000368c:	04b53023          	sd	a1,64(a0)
}
    80003690:	00813403          	ld	s0,8(sp)
    80003694:	01010113          	addi	sp,sp,16
    80003698:	00008067          	ret

000000008000369c <_ZN3TCB17set_next_sleepingEPS_>:

void TCB::set_next_sleeping(TCB *next) {
    8000369c:	ff010113          	addi	sp,sp,-16
    800036a0:	00813423          	sd	s0,8(sp)
    800036a4:	01010413          	addi	s0,sp,16
    next_sleeping = next;
    800036a8:	04b53c23          	sd	a1,88(a0)
}
    800036ac:	00813403          	ld	s0,8(sp)
    800036b0:	01010113          	addi	sp,sp,16
    800036b4:	00008067          	ret

00000000800036b8 <_ZNK3TCB17get_next_sleepingEv>:

TCB* TCB::get_next_sleeping() const {
    800036b8:	ff010113          	addi	sp,sp,-16
    800036bc:	00813423          	sd	s0,8(sp)
    800036c0:	01010413          	addi	s0,sp,16
    return next_sleeping;
}
    800036c4:	05853503          	ld	a0,88(a0)
    800036c8:	00813403          	ld	s0,8(sp)
    800036cc:	01010113          	addi	sp,sp,16
    800036d0:	00008067          	ret

00000000800036d4 <_ZN3TCB17set_time_to_sleepEm>:

void TCB::set_time_to_sleep(time_t time) {
    800036d4:	ff010113          	addi	sp,sp,-16
    800036d8:	00813423          	sd	s0,8(sp)
    800036dc:	01010413          	addi	s0,sp,16
    time_to_sleep = time;
    800036e0:	04b53823          	sd	a1,80(a0)
}
    800036e4:	00813403          	ld	s0,8(sp)
    800036e8:	01010113          	addi	sp,sp,16
    800036ec:	00008067          	ret

00000000800036f0 <_ZNK3TCB17get_time_to_sleepEv>:

time_t TCB::get_time_to_sleep() const {
    800036f0:	ff010113          	addi	sp,sp,-16
    800036f4:	00813423          	sd	s0,8(sp)
    800036f8:	01010413          	addi	s0,sp,16
    return time_to_sleep;
}
    800036fc:	05053503          	ld	a0,80(a0)
    80003700:	00813403          	ld	s0,8(sp)
    80003704:	01010113          	addi	sp,sp,16
    80003708:	00008067          	ret

000000008000370c <_ZN3TCB10set_statusENS_6StatusE>:

void TCB::set_status(TCB::Status stat) {
    8000370c:	ff010113          	addi	sp,sp,-16
    80003710:	00813423          	sd	s0,8(sp)
    80003714:	01010413          	addi	s0,sp,16
    this -> status = stat;
    80003718:	02b52023          	sw	a1,32(a0)
}
    8000371c:	00813403          	ld	s0,8(sp)
    80003720:	01010113          	addi	sp,sp,16
    80003724:	00008067          	ret

0000000080003728 <_ZN3TCB11thread_exitEv>:
    if (!running) return -1;
    80003728:	0000a517          	auipc	a0,0xa
    8000372c:	80853503          	ld	a0,-2040(a0) # 8000cf30 <_ZN3TCB7runningE>
    80003730:	02050e63          	beqz	a0,8000376c <_ZN3TCB11thread_exitEv+0x44>
int TCB::thread_exit() {
    80003734:	ff010113          	addi	sp,sp,-16
    80003738:	00113423          	sd	ra,8(sp)
    8000373c:	00813023          	sd	s0,0(sp)
    80003740:	01010413          	addi	s0,sp,16
    running -> set_status(Status::FINISHED);
    80003744:	00300593          	li	a1,3
    80003748:	00000097          	auipc	ra,0x0
    8000374c:	fc4080e7          	jalr	-60(ra) # 8000370c <_ZN3TCB10set_statusENS_6StatusE>
    dispatch();
    80003750:	00000097          	auipc	ra,0x0
    80003754:	e88080e7          	jalr	-376(ra) # 800035d8 <_ZN3TCB8dispatchEv>
    return 0;
    80003758:	00000513          	li	a0,0
}
    8000375c:	00813083          	ld	ra,8(sp)
    80003760:	00013403          	ld	s0,0(sp)
    80003764:	01010113          	addi	sp,sp,16
    80003768:	00008067          	ret
    if (!running) return -1;
    8000376c:	fff00513          	li	a0,-1
}
    80003770:	00008067          	ret

0000000080003774 <_ZN3TCBnwEm>:

void *TCB::operator new(size_t size) {
    80003774:	ff010113          	addi	sp,sp,-16
    80003778:	00113423          	sd	ra,8(sp)
    8000377c:	00813023          	sd	s0,0(sp)
    80003780:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    80003784:	fffff097          	auipc	ra,0xfffff
    80003788:	164080e7          	jalr	356(ra) # 800028e8 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    8000378c:	fffff097          	auipc	ra,0xfffff
    80003790:	d98080e7          	jalr	-616(ra) # 80002524 <_ZN15MemoryAllocator9mem_allocEm>
}
    80003794:	00813083          	ld	ra,8(sp)
    80003798:	00013403          	ld	s0,0(sp)
    8000379c:	01010113          	addi	sp,sp,16
    800037a0:	00008067          	ret

00000000800037a4 <_ZN3TCBdlEPv>:

void TCB::operator delete(void *addr) {
    800037a4:	ff010113          	addi	sp,sp,-16
    800037a8:	00113423          	sd	ra,8(sp)
    800037ac:	00813023          	sd	s0,0(sp)
    800037b0:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    800037b4:	fffff097          	auipc	ra,0xfffff
    800037b8:	ee4080e7          	jalr	-284(ra) # 80002698 <_ZN15MemoryAllocator8mem_freeEPv>
}
    800037bc:	00813083          	ld	ra,8(sp)
    800037c0:	00013403          	ld	s0,0(sp)
    800037c4:	01010113          	addi	sp,sp,16
    800037c8:	00008067          	ret

00000000800037cc <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>:
int TCB::thread_create(thread_t *handle, void(*start_routine)(void *), void *arg, void *stack_begin_address) {
    800037cc:	fc010113          	addi	sp,sp,-64
    800037d0:	02113c23          	sd	ra,56(sp)
    800037d4:	02813823          	sd	s0,48(sp)
    800037d8:	02913423          	sd	s1,40(sp)
    800037dc:	03213023          	sd	s2,32(sp)
    800037e0:	01313c23          	sd	s3,24(sp)
    800037e4:	01413823          	sd	s4,16(sp)
    800037e8:	01513423          	sd	s5,8(sp)
    800037ec:	04010413          	addi	s0,sp,64
    800037f0:	00050913          	mv	s2,a0
    800037f4:	00058993          	mv	s3,a1
    800037f8:	00060a13          	mv	s4,a2
    800037fc:	00068a93          	mv	s5,a3
    *handle = new TCB(start_routine, arg, stack_begin_address);
    80003800:	06800513          	li	a0,104
    80003804:	00000097          	auipc	ra,0x0
    80003808:	f70080e7          	jalr	-144(ra) # 80003774 <_ZN3TCBnwEm>
    8000380c:	00050493          	mv	s1,a0
    80003810:	000a8693          	mv	a3,s5
    80003814:	000a0613          	mv	a2,s4
    80003818:	00098593          	mv	a1,s3
    8000381c:	00000097          	auipc	ra,0x0
    80003820:	cc4080e7          	jalr	-828(ra) # 800034e0 <_ZN3TCBC1EPFvPvES0_S0_>
    80003824:	00993023          	sd	s1,0(s2)
    if (!*handle) return -1;
    80003828:	02048663          	beqz	s1,80003854 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_+0x88>
    return 0;
    8000382c:	00000513          	li	a0,0
}
    80003830:	03813083          	ld	ra,56(sp)
    80003834:	03013403          	ld	s0,48(sp)
    80003838:	02813483          	ld	s1,40(sp)
    8000383c:	02013903          	ld	s2,32(sp)
    80003840:	01813983          	ld	s3,24(sp)
    80003844:	01013a03          	ld	s4,16(sp)
    80003848:	00813a83          	ld	s5,8(sp)
    8000384c:	04010113          	addi	sp,sp,64
    80003850:	00008067          	ret
    if (!*handle) return -1;
    80003854:	fff00513          	li	a0,-1
    80003858:	fd9ff06f          	j	80003830 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_+0x64>
    8000385c:	00050913          	mv	s2,a0
    *handle = new TCB(start_routine, arg, stack_begin_address);
    80003860:	00048513          	mv	a0,s1
    80003864:	00000097          	auipc	ra,0x0
    80003868:	f40080e7          	jalr	-192(ra) # 800037a4 <_ZN3TCBdlEPv>
    8000386c:	00090513          	mv	a0,s2
    80003870:	0000a097          	auipc	ra,0xa
    80003874:	7f8080e7          	jalr	2040(ra) # 8000e068 <_Unwind_Resume>

0000000080003878 <_ZN3TCBnaEm>:

void *TCB::operator new[](size_t size) {
    80003878:	ff010113          	addi	sp,sp,-16
    8000387c:	00113423          	sd	ra,8(sp)
    80003880:	00813023          	sd	s0,0(sp)
    80003884:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    80003888:	fffff097          	auipc	ra,0xfffff
    8000388c:	060080e7          	jalr	96(ra) # 800028e8 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80003890:	fffff097          	auipc	ra,0xfffff
    80003894:	c94080e7          	jalr	-876(ra) # 80002524 <_ZN15MemoryAllocator9mem_allocEm>
}
    80003898:	00813083          	ld	ra,8(sp)
    8000389c:	00013403          	ld	s0,0(sp)
    800038a0:	01010113          	addi	sp,sp,16
    800038a4:	00008067          	ret

00000000800038a8 <_ZN3TCBdaEPv>:

void TCB::operator delete[](void *addr) {
    800038a8:	ff010113          	addi	sp,sp,-16
    800038ac:	00113423          	sd	ra,8(sp)
    800038b0:	00813023          	sd	s0,0(sp)
    800038b4:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    800038b8:	fffff097          	auipc	ra,0xfffff
    800038bc:	de0080e7          	jalr	-544(ra) # 80002698 <_ZN15MemoryAllocator8mem_freeEPv>
}
    800038c0:	00813083          	ld	ra,8(sp)
    800038c4:	00013403          	ld	s0,0(sp)
    800038c8:	01010113          	addi	sp,sp,16
    800038cc:	00008067          	ret

00000000800038d0 <_ZNK3TCB11is_finishedEv>:

bool TCB::is_finished() const {
    800038d0:	ff010113          	addi	sp,sp,-16
    800038d4:	00813423          	sd	s0,8(sp)
    800038d8:	01010413          	addi	s0,sp,16
    return status == FINISHED;
    800038dc:	02052503          	lw	a0,32(a0)
    800038e0:	ffd50513          	addi	a0,a0,-3
}
    800038e4:	00153513          	seqz	a0,a0
    800038e8:	00813403          	ld	s0,8(sp)
    800038ec:	01010113          	addi	sp,sp,16
    800038f0:	00008067          	ret

00000000800038f4 <_ZN3TCB21clear_from_timed_waitEb>:

/// reset state after timed wait
void TCB::clear_from_timed_wait(bool removed_from_timer) {
    800038f4:	fe010113          	addi	sp,sp,-32
    800038f8:	00113c23          	sd	ra,24(sp)
    800038fc:	00813823          	sd	s0,16(sp)
    80003900:	00913423          	sd	s1,8(sp)
    80003904:	02010413          	addi	s0,sp,32
    80003908:	00050493          	mv	s1,a0
    if (removed_from_timer) {
    8000390c:	02059063          	bnez	a1,8000392c <_ZN3TCB21clear_from_timed_waitEb+0x38>
        sem -> blocked_threads -> remove(this);
        ++sem -> value;
    }
    timed_wait = false;
    80003910:	04048423          	sb	zero,72(s1)
    sem = nullptr;
    80003914:	0604b023          	sd	zero,96(s1)
}
    80003918:	01813083          	ld	ra,24(sp)
    8000391c:	01013403          	ld	s0,16(sp)
    80003920:	00813483          	ld	s1,8(sp)
    80003924:	02010113          	addi	sp,sp,32
    80003928:	00008067          	ret
        sem -> blocked_threads -> remove(this);
    8000392c:	06053783          	ld	a5,96(a0)
    80003930:	00050593          	mv	a1,a0
    80003934:	0087b503          	ld	a0,8(a5)
    80003938:	00000097          	auipc	ra,0x0
    8000393c:	93c080e7          	jalr	-1732(ra) # 80003274 <_ZN10ThreadList6removeEP3TCB>
        ++sem -> value;
    80003940:	0604b703          	ld	a4,96(s1)
    80003944:	01072783          	lw	a5,16(a4)
    80003948:	0017879b          	addiw	a5,a5,1
    8000394c:	00f72823          	sw	a5,16(a4)
    80003950:	fc1ff06f          	j	80003910 <_ZN3TCB21clear_from_timed_waitEb+0x1c>

0000000080003954 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80003954:	fe010113          	addi	sp,sp,-32
    80003958:	00113c23          	sd	ra,24(sp)
    8000395c:	00813823          	sd	s0,16(sp)
    80003960:	00913423          	sd	s1,8(sp)
    80003964:	01213023          	sd	s2,0(sp)
    80003968:	02010413          	addi	s0,sp,32
    8000396c:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80003970:	00000913          	li	s2,0
    80003974:	00c0006f          	j	80003980 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x31) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003978:	ffffe097          	auipc	ra,0xffffe
    8000397c:	a54080e7          	jalr	-1452(ra) # 800013cc <_Z15thread_dispatchv>
    while ((key = getc()) != 0x31) {
    80003980:	ffffe097          	auipc	ra,0xffffe
    80003984:	ca0080e7          	jalr	-864(ra) # 80001620 <_Z4getcv>
    80003988:	0005059b          	sext.w	a1,a0
    8000398c:	03100793          	li	a5,49
    80003990:	02f58a63          	beq	a1,a5,800039c4 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80003994:	0084b503          	ld	a0,8(s1)
    80003998:	00001097          	auipc	ra,0x1
    8000399c:	66c080e7          	jalr	1644(ra) # 80005004 <_ZN6Buffer3putEi>
        i++;
    800039a0:	0019071b          	addiw	a4,s2,1
    800039a4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800039a8:	0004a683          	lw	a3,0(s1)
    800039ac:	0026979b          	slliw	a5,a3,0x2
    800039b0:	00d787bb          	addw	a5,a5,a3
    800039b4:	0017979b          	slliw	a5,a5,0x1
    800039b8:	02f767bb          	remw	a5,a4,a5
    800039bc:	fc0792e3          	bnez	a5,80003980 <_ZL16producerKeyboardPv+0x2c>
    800039c0:	fb9ff06f          	j	80003978 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    800039c4:	00100793          	li	a5,1
    800039c8:	00009717          	auipc	a4,0x9
    800039cc:	58f72023          	sw	a5,1408(a4) # 8000cf48 <_ZL9threadEnd>
    data->buffer->put('!');
    800039d0:	02100593          	li	a1,33
    800039d4:	0084b503          	ld	a0,8(s1)
    800039d8:	00001097          	auipc	ra,0x1
    800039dc:	62c080e7          	jalr	1580(ra) # 80005004 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    800039e0:	0104b503          	ld	a0,16(s1)
    800039e4:	ffffe097          	auipc	ra,0xffffe
    800039e8:	b0c080e7          	jalr	-1268(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    800039ec:	01813083          	ld	ra,24(sp)
    800039f0:	01013403          	ld	s0,16(sp)
    800039f4:	00813483          	ld	s1,8(sp)
    800039f8:	00013903          	ld	s2,0(sp)
    800039fc:	02010113          	addi	sp,sp,32
    80003a00:	00008067          	ret

0000000080003a04 <_ZL8producerPv>:

static void producer(void *arg) {
    80003a04:	fe010113          	addi	sp,sp,-32
    80003a08:	00113c23          	sd	ra,24(sp)
    80003a0c:	00813823          	sd	s0,16(sp)
    80003a10:	00913423          	sd	s1,8(sp)
    80003a14:	01213023          	sd	s2,0(sp)
    80003a18:	02010413          	addi	s0,sp,32
    80003a1c:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003a20:	00000913          	li	s2,0
    80003a24:	00c0006f          	j	80003a30 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003a28:	ffffe097          	auipc	ra,0xffffe
    80003a2c:	9a4080e7          	jalr	-1628(ra) # 800013cc <_Z15thread_dispatchv>
    while (!threadEnd) {
    80003a30:	00009797          	auipc	a5,0x9
    80003a34:	5187a783          	lw	a5,1304(a5) # 8000cf48 <_ZL9threadEnd>
    80003a38:	02079e63          	bnez	a5,80003a74 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80003a3c:	0004a583          	lw	a1,0(s1)
    80003a40:	0305859b          	addiw	a1,a1,48
    80003a44:	0084b503          	ld	a0,8(s1)
    80003a48:	00001097          	auipc	ra,0x1
    80003a4c:	5bc080e7          	jalr	1468(ra) # 80005004 <_ZN6Buffer3putEi>
        i++;
    80003a50:	0019071b          	addiw	a4,s2,1
    80003a54:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003a58:	0004a683          	lw	a3,0(s1)
    80003a5c:	0026979b          	slliw	a5,a3,0x2
    80003a60:	00d787bb          	addw	a5,a5,a3
    80003a64:	0017979b          	slliw	a5,a5,0x1
    80003a68:	02f767bb          	remw	a5,a4,a5
    80003a6c:	fc0792e3          	bnez	a5,80003a30 <_ZL8producerPv+0x2c>
    80003a70:	fb9ff06f          	j	80003a28 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80003a74:	0104b503          	ld	a0,16(s1)
    80003a78:	ffffe097          	auipc	ra,0xffffe
    80003a7c:	a78080e7          	jalr	-1416(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    80003a80:	01813083          	ld	ra,24(sp)
    80003a84:	01013403          	ld	s0,16(sp)
    80003a88:	00813483          	ld	s1,8(sp)
    80003a8c:	00013903          	ld	s2,0(sp)
    80003a90:	02010113          	addi	sp,sp,32
    80003a94:	00008067          	ret

0000000080003a98 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80003a98:	fd010113          	addi	sp,sp,-48
    80003a9c:	02113423          	sd	ra,40(sp)
    80003aa0:	02813023          	sd	s0,32(sp)
    80003aa4:	00913c23          	sd	s1,24(sp)
    80003aa8:	01213823          	sd	s2,16(sp)
    80003aac:	01313423          	sd	s3,8(sp)
    80003ab0:	03010413          	addi	s0,sp,48
    80003ab4:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003ab8:	00000993          	li	s3,0
    80003abc:	01c0006f          	j	80003ad8 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80003ac0:	ffffe097          	auipc	ra,0xffffe
    80003ac4:	90c080e7          	jalr	-1780(ra) # 800013cc <_Z15thread_dispatchv>
    80003ac8:	0500006f          	j	80003b18 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80003acc:	00a00513          	li	a0,10
    80003ad0:	ffffe097          	auipc	ra,0xffffe
    80003ad4:	b9c080e7          	jalr	-1124(ra) # 8000166c <_Z4putcc>
    while (!threadEnd) {
    80003ad8:	00009797          	auipc	a5,0x9
    80003adc:	4707a783          	lw	a5,1136(a5) # 8000cf48 <_ZL9threadEnd>
    80003ae0:	06079063          	bnez	a5,80003b40 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80003ae4:	00893503          	ld	a0,8(s2)
    80003ae8:	00001097          	auipc	ra,0x1
    80003aec:	5ac080e7          	jalr	1452(ra) # 80005094 <_ZN6Buffer3getEv>
        i++;
    80003af0:	0019849b          	addiw	s1,s3,1
    80003af4:	0004899b          	sext.w	s3,s1
        putc(key);
    80003af8:	0ff57513          	andi	a0,a0,255
    80003afc:	ffffe097          	auipc	ra,0xffffe
    80003b00:	b70080e7          	jalr	-1168(ra) # 8000166c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80003b04:	00092703          	lw	a4,0(s2)
    80003b08:	0027179b          	slliw	a5,a4,0x2
    80003b0c:	00e787bb          	addw	a5,a5,a4
    80003b10:	02f4e7bb          	remw	a5,s1,a5
    80003b14:	fa0786e3          	beqz	a5,80003ac0 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80003b18:	05000793          	li	a5,80
    80003b1c:	02f4e4bb          	remw	s1,s1,a5
    80003b20:	fa049ce3          	bnez	s1,80003ad8 <_ZL8consumerPv+0x40>
    80003b24:	fa9ff06f          	j	80003acc <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80003b28:	00893503          	ld	a0,8(s2)
    80003b2c:	00001097          	auipc	ra,0x1
    80003b30:	568080e7          	jalr	1384(ra) # 80005094 <_ZN6Buffer3getEv>
        putc(key);
    80003b34:	0ff57513          	andi	a0,a0,255
    80003b38:	ffffe097          	auipc	ra,0xffffe
    80003b3c:	b34080e7          	jalr	-1228(ra) # 8000166c <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80003b40:	00893503          	ld	a0,8(s2)
    80003b44:	00001097          	auipc	ra,0x1
    80003b48:	5dc080e7          	jalr	1500(ra) # 80005120 <_ZN6Buffer6getCntEv>
    80003b4c:	fca04ee3          	bgtz	a0,80003b28 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80003b50:	01093503          	ld	a0,16(s2)
    80003b54:	ffffe097          	auipc	ra,0xffffe
    80003b58:	99c080e7          	jalr	-1636(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    80003b5c:	02813083          	ld	ra,40(sp)
    80003b60:	02013403          	ld	s0,32(sp)
    80003b64:	01813483          	ld	s1,24(sp)
    80003b68:	01013903          	ld	s2,16(sp)
    80003b6c:	00813983          	ld	s3,8(sp)
    80003b70:	03010113          	addi	sp,sp,48
    80003b74:	00008067          	ret

0000000080003b78 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80003b78:	f9010113          	addi	sp,sp,-112
    80003b7c:	06113423          	sd	ra,104(sp)
    80003b80:	06813023          	sd	s0,96(sp)
    80003b84:	04913c23          	sd	s1,88(sp)
    80003b88:	05213823          	sd	s2,80(sp)
    80003b8c:	05313423          	sd	s3,72(sp)
    80003b90:	05413023          	sd	s4,64(sp)
    80003b94:	03513c23          	sd	s5,56(sp)
    80003b98:	03613823          	sd	s6,48(sp)
    80003b9c:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80003ba0:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003ba4:	00006517          	auipc	a0,0x6
    80003ba8:	58c50513          	addi	a0,a0,1420 # 8000a130 <CONSOLE_STATUS+0x120>
    80003bac:	00002097          	auipc	ra,0x2
    80003bb0:	540080e7          	jalr	1344(ra) # 800060ec <_Z11printStringPKc>
    getString(input, 30);
    80003bb4:	01e00593          	li	a1,30
    80003bb8:	fa040493          	addi	s1,s0,-96
    80003bbc:	00048513          	mv	a0,s1
    80003bc0:	00002097          	auipc	ra,0x2
    80003bc4:	5b4080e7          	jalr	1460(ra) # 80006174 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003bc8:	00048513          	mv	a0,s1
    80003bcc:	00002097          	auipc	ra,0x2
    80003bd0:	680080e7          	jalr	1664(ra) # 8000624c <_Z11stringToIntPKc>
    80003bd4:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003bd8:	00006517          	auipc	a0,0x6
    80003bdc:	57850513          	addi	a0,a0,1400 # 8000a150 <CONSOLE_STATUS+0x140>
    80003be0:	00002097          	auipc	ra,0x2
    80003be4:	50c080e7          	jalr	1292(ra) # 800060ec <_Z11printStringPKc>
    getString(input, 30);
    80003be8:	01e00593          	li	a1,30
    80003bec:	00048513          	mv	a0,s1
    80003bf0:	00002097          	auipc	ra,0x2
    80003bf4:	584080e7          	jalr	1412(ra) # 80006174 <_Z9getStringPci>
    n = stringToInt(input);
    80003bf8:	00048513          	mv	a0,s1
    80003bfc:	00002097          	auipc	ra,0x2
    80003c00:	650080e7          	jalr	1616(ra) # 8000624c <_Z11stringToIntPKc>
    80003c04:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003c08:	00006517          	auipc	a0,0x6
    80003c0c:	56850513          	addi	a0,a0,1384 # 8000a170 <CONSOLE_STATUS+0x160>
    80003c10:	00002097          	auipc	ra,0x2
    80003c14:	4dc080e7          	jalr	1244(ra) # 800060ec <_Z11printStringPKc>
    80003c18:	00000613          	li	a2,0
    80003c1c:	00a00593          	li	a1,10
    80003c20:	00090513          	mv	a0,s2
    80003c24:	00002097          	auipc	ra,0x2
    80003c28:	678080e7          	jalr	1656(ra) # 8000629c <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003c2c:	00006517          	auipc	a0,0x6
    80003c30:	55c50513          	addi	a0,a0,1372 # 8000a188 <CONSOLE_STATUS+0x178>
    80003c34:	00002097          	auipc	ra,0x2
    80003c38:	4b8080e7          	jalr	1208(ra) # 800060ec <_Z11printStringPKc>
    80003c3c:	00000613          	li	a2,0
    80003c40:	00a00593          	li	a1,10
    80003c44:	00048513          	mv	a0,s1
    80003c48:	00002097          	auipc	ra,0x2
    80003c4c:	654080e7          	jalr	1620(ra) # 8000629c <_Z8printIntiii>
    printString(".\n");
    80003c50:	00006517          	auipc	a0,0x6
    80003c54:	55050513          	addi	a0,a0,1360 # 8000a1a0 <CONSOLE_STATUS+0x190>
    80003c58:	00002097          	auipc	ra,0x2
    80003c5c:	494080e7          	jalr	1172(ra) # 800060ec <_Z11printStringPKc>
    if(threadNum > n) {
    80003c60:	0324c463          	blt	s1,s2,80003c88 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003c64:	03205c63          	blez	s2,80003c9c <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003c68:	03800513          	li	a0,56
    80003c6c:	ffffe097          	auipc	ra,0xffffe
    80003c70:	438080e7          	jalr	1080(ra) # 800020a4 <_Znwm>
    80003c74:	00050a13          	mv	s4,a0
    80003c78:	00048593          	mv	a1,s1
    80003c7c:	00001097          	auipc	ra,0x1
    80003c80:	2ec080e7          	jalr	748(ra) # 80004f68 <_ZN6BufferC1Ei>
    80003c84:	0300006f          	j	80003cb4 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003c88:	00006517          	auipc	a0,0x6
    80003c8c:	52050513          	addi	a0,a0,1312 # 8000a1a8 <CONSOLE_STATUS+0x198>
    80003c90:	00002097          	auipc	ra,0x2
    80003c94:	45c080e7          	jalr	1116(ra) # 800060ec <_Z11printStringPKc>
        return;
    80003c98:	0140006f          	j	80003cac <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003c9c:	00006517          	auipc	a0,0x6
    80003ca0:	54c50513          	addi	a0,a0,1356 # 8000a1e8 <CONSOLE_STATUS+0x1d8>
    80003ca4:	00002097          	auipc	ra,0x2
    80003ca8:	448080e7          	jalr	1096(ra) # 800060ec <_Z11printStringPKc>
        return;
    80003cac:	000b0113          	mv	sp,s6
    80003cb0:	1500006f          	j	80003e00 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003cb4:	00000593          	li	a1,0
    80003cb8:	00009517          	auipc	a0,0x9
    80003cbc:	29850513          	addi	a0,a0,664 # 8000cf50 <_ZL10waitForAll>
    80003cc0:	ffffd097          	auipc	ra,0xffffd
    80003cc4:	748080e7          	jalr	1864(ra) # 80001408 <_Z8sem_openPP3Semj>
    thread_t threads[threadNum];
    80003cc8:	00391793          	slli	a5,s2,0x3
    80003ccc:	00f78793          	addi	a5,a5,15
    80003cd0:	ff07f793          	andi	a5,a5,-16
    80003cd4:	40f10133          	sub	sp,sp,a5
    80003cd8:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003cdc:	0019071b          	addiw	a4,s2,1
    80003ce0:	00171793          	slli	a5,a4,0x1
    80003ce4:	00e787b3          	add	a5,a5,a4
    80003ce8:	00379793          	slli	a5,a5,0x3
    80003cec:	00f78793          	addi	a5,a5,15
    80003cf0:	ff07f793          	andi	a5,a5,-16
    80003cf4:	40f10133          	sub	sp,sp,a5
    80003cf8:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003cfc:	00191613          	slli	a2,s2,0x1
    80003d00:	012607b3          	add	a5,a2,s2
    80003d04:	00379793          	slli	a5,a5,0x3
    80003d08:	00f987b3          	add	a5,s3,a5
    80003d0c:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003d10:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003d14:	00009717          	auipc	a4,0x9
    80003d18:	23c73703          	ld	a4,572(a4) # 8000cf50 <_ZL10waitForAll>
    80003d1c:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003d20:	00078613          	mv	a2,a5
    80003d24:	00000597          	auipc	a1,0x0
    80003d28:	d7458593          	addi	a1,a1,-652 # 80003a98 <_ZL8consumerPv>
    80003d2c:	f9840513          	addi	a0,s0,-104
    80003d30:	ffffd097          	auipc	ra,0xffffd
    80003d34:	5c8080e7          	jalr	1480(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003d38:	00000493          	li	s1,0
    80003d3c:	0280006f          	j	80003d64 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003d40:	00000597          	auipc	a1,0x0
    80003d44:	c1458593          	addi	a1,a1,-1004 # 80003954 <_ZL16producerKeyboardPv>
                      data + i);
    80003d48:	00179613          	slli	a2,a5,0x1
    80003d4c:	00f60633          	add	a2,a2,a5
    80003d50:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003d54:	00c98633          	add	a2,s3,a2
    80003d58:	ffffd097          	auipc	ra,0xffffd
    80003d5c:	5a0080e7          	jalr	1440(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003d60:	0014849b          	addiw	s1,s1,1
    80003d64:	0524d263          	bge	s1,s2,80003da8 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003d68:	00149793          	slli	a5,s1,0x1
    80003d6c:	009787b3          	add	a5,a5,s1
    80003d70:	00379793          	slli	a5,a5,0x3
    80003d74:	00f987b3          	add	a5,s3,a5
    80003d78:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003d7c:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80003d80:	00009717          	auipc	a4,0x9
    80003d84:	1d073703          	ld	a4,464(a4) # 8000cf50 <_ZL10waitForAll>
    80003d88:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003d8c:	00048793          	mv	a5,s1
    80003d90:	00349513          	slli	a0,s1,0x3
    80003d94:	00aa8533          	add	a0,s5,a0
    80003d98:	fa9054e3          	blez	s1,80003d40 <_Z22producerConsumer_C_APIv+0x1c8>
    80003d9c:	00000597          	auipc	a1,0x0
    80003da0:	c6858593          	addi	a1,a1,-920 # 80003a04 <_ZL8producerPv>
    80003da4:	fa5ff06f          	j	80003d48 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003da8:	ffffd097          	auipc	ra,0xffffd
    80003dac:	624080e7          	jalr	1572(ra) # 800013cc <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003db0:	00000493          	li	s1,0
    80003db4:	00994e63          	blt	s2,s1,80003dd0 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003db8:	00009517          	auipc	a0,0x9
    80003dbc:	19853503          	ld	a0,408(a0) # 8000cf50 <_ZL10waitForAll>
    80003dc0:	ffffd097          	auipc	ra,0xffffd
    80003dc4:	6e4080e7          	jalr	1764(ra) # 800014a4 <_Z8sem_waitP3Sem>
    for (int i = 0; i <= threadNum; i++) {
    80003dc8:	0014849b          	addiw	s1,s1,1
    80003dcc:	fe9ff06f          	j	80003db4 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003dd0:	00009517          	auipc	a0,0x9
    80003dd4:	18053503          	ld	a0,384(a0) # 8000cf50 <_ZL10waitForAll>
    80003dd8:	ffffd097          	auipc	ra,0xffffd
    80003ddc:	680080e7          	jalr	1664(ra) # 80001458 <_Z9sem_closeP3Sem>
    delete buffer;
    80003de0:	000a0e63          	beqz	s4,80003dfc <_Z22producerConsumer_C_APIv+0x284>
    80003de4:	000a0513          	mv	a0,s4
    80003de8:	00001097          	auipc	ra,0x1
    80003dec:	3c0080e7          	jalr	960(ra) # 800051a8 <_ZN6BufferD1Ev>
    80003df0:	000a0513          	mv	a0,s4
    80003df4:	ffffe097          	auipc	ra,0xffffe
    80003df8:	2d8080e7          	jalr	728(ra) # 800020cc <_ZdlPv>
    80003dfc:	000b0113          	mv	sp,s6

}
    80003e00:	f9040113          	addi	sp,s0,-112
    80003e04:	06813083          	ld	ra,104(sp)
    80003e08:	06013403          	ld	s0,96(sp)
    80003e0c:	05813483          	ld	s1,88(sp)
    80003e10:	05013903          	ld	s2,80(sp)
    80003e14:	04813983          	ld	s3,72(sp)
    80003e18:	04013a03          	ld	s4,64(sp)
    80003e1c:	03813a83          	ld	s5,56(sp)
    80003e20:	03013b03          	ld	s6,48(sp)
    80003e24:	07010113          	addi	sp,sp,112
    80003e28:	00008067          	ret
    80003e2c:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003e30:	000a0513          	mv	a0,s4
    80003e34:	ffffe097          	auipc	ra,0xffffe
    80003e38:	298080e7          	jalr	664(ra) # 800020cc <_ZdlPv>
    80003e3c:	00048513          	mv	a0,s1
    80003e40:	0000a097          	auipc	ra,0xa
    80003e44:	228080e7          	jalr	552(ra) # 8000e068 <_Unwind_Resume>

0000000080003e48 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003e48:	fe010113          	addi	sp,sp,-32
    80003e4c:	00113c23          	sd	ra,24(sp)
    80003e50:	00813823          	sd	s0,16(sp)
    80003e54:	00913423          	sd	s1,8(sp)
    80003e58:	01213023          	sd	s2,0(sp)
    80003e5c:	02010413          	addi	s0,sp,32
    80003e60:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003e64:	00100793          	li	a5,1
    80003e68:	02a7f863          	bgeu	a5,a0,80003e98 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003e6c:	00a00793          	li	a5,10
    80003e70:	02f577b3          	remu	a5,a0,a5
    80003e74:	02078e63          	beqz	a5,80003eb0 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003e78:	fff48513          	addi	a0,s1,-1
    80003e7c:	00000097          	auipc	ra,0x0
    80003e80:	fcc080e7          	jalr	-52(ra) # 80003e48 <_ZL9fibonaccim>
    80003e84:	00050913          	mv	s2,a0
    80003e88:	ffe48513          	addi	a0,s1,-2
    80003e8c:	00000097          	auipc	ra,0x0
    80003e90:	fbc080e7          	jalr	-68(ra) # 80003e48 <_ZL9fibonaccim>
    80003e94:	00a90533          	add	a0,s2,a0
}
    80003e98:	01813083          	ld	ra,24(sp)
    80003e9c:	01013403          	ld	s0,16(sp)
    80003ea0:	00813483          	ld	s1,8(sp)
    80003ea4:	00013903          	ld	s2,0(sp)
    80003ea8:	02010113          	addi	sp,sp,32
    80003eac:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003eb0:	ffffd097          	auipc	ra,0xffffd
    80003eb4:	51c080e7          	jalr	1308(ra) # 800013cc <_Z15thread_dispatchv>
    80003eb8:	fc1ff06f          	j	80003e78 <_ZL9fibonaccim+0x30>

0000000080003ebc <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003ebc:	fe010113          	addi	sp,sp,-32
    80003ec0:	00113c23          	sd	ra,24(sp)
    80003ec4:	00813823          	sd	s0,16(sp)
    80003ec8:	00913423          	sd	s1,8(sp)
    80003ecc:	01213023          	sd	s2,0(sp)
    80003ed0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003ed4:	00000913          	li	s2,0
    80003ed8:	0380006f          	j	80003f10 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003edc:	ffffd097          	auipc	ra,0xffffd
    80003ee0:	4f0080e7          	jalr	1264(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003ee4:	00148493          	addi	s1,s1,1
    80003ee8:	000027b7          	lui	a5,0x2
    80003eec:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003ef0:	0097ee63          	bltu	a5,s1,80003f0c <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003ef4:	00000713          	li	a4,0
    80003ef8:	000077b7          	lui	a5,0x7
    80003efc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003f00:	fce7eee3          	bltu	a5,a4,80003edc <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003f04:	00170713          	addi	a4,a4,1
    80003f08:	ff1ff06f          	j	80003ef8 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003f0c:	00190913          	addi	s2,s2,1
    80003f10:	00900793          	li	a5,9
    80003f14:	0527e063          	bltu	a5,s2,80003f54 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003f18:	00006517          	auipc	a0,0x6
    80003f1c:	30050513          	addi	a0,a0,768 # 8000a218 <CONSOLE_STATUS+0x208>
    80003f20:	00002097          	auipc	ra,0x2
    80003f24:	1cc080e7          	jalr	460(ra) # 800060ec <_Z11printStringPKc>
    80003f28:	00000613          	li	a2,0
    80003f2c:	00a00593          	li	a1,10
    80003f30:	0009051b          	sext.w	a0,s2
    80003f34:	00002097          	auipc	ra,0x2
    80003f38:	368080e7          	jalr	872(ra) # 8000629c <_Z8printIntiii>
    80003f3c:	00006517          	auipc	a0,0x6
    80003f40:	53c50513          	addi	a0,a0,1340 # 8000a478 <CONSOLE_STATUS+0x468>
    80003f44:	00002097          	auipc	ra,0x2
    80003f48:	1a8080e7          	jalr	424(ra) # 800060ec <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003f4c:	00000493          	li	s1,0
    80003f50:	f99ff06f          	j	80003ee8 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003f54:	00006517          	auipc	a0,0x6
    80003f58:	2cc50513          	addi	a0,a0,716 # 8000a220 <CONSOLE_STATUS+0x210>
    80003f5c:	00002097          	auipc	ra,0x2
    80003f60:	190080e7          	jalr	400(ra) # 800060ec <_Z11printStringPKc>
    finishedA = true;
    80003f64:	00100793          	li	a5,1
    80003f68:	00009717          	auipc	a4,0x9
    80003f6c:	fef70823          	sb	a5,-16(a4) # 8000cf58 <_ZL9finishedA>
}
    80003f70:	01813083          	ld	ra,24(sp)
    80003f74:	01013403          	ld	s0,16(sp)
    80003f78:	00813483          	ld	s1,8(sp)
    80003f7c:	00013903          	ld	s2,0(sp)
    80003f80:	02010113          	addi	sp,sp,32
    80003f84:	00008067          	ret

0000000080003f88 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003f88:	fe010113          	addi	sp,sp,-32
    80003f8c:	00113c23          	sd	ra,24(sp)
    80003f90:	00813823          	sd	s0,16(sp)
    80003f94:	00913423          	sd	s1,8(sp)
    80003f98:	01213023          	sd	s2,0(sp)
    80003f9c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003fa0:	00000913          	li	s2,0
    80003fa4:	0380006f          	j	80003fdc <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003fa8:	ffffd097          	auipc	ra,0xffffd
    80003fac:	424080e7          	jalr	1060(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003fb0:	00148493          	addi	s1,s1,1
    80003fb4:	000027b7          	lui	a5,0x2
    80003fb8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003fbc:	0097ee63          	bltu	a5,s1,80003fd8 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003fc0:	00000713          	li	a4,0
    80003fc4:	000077b7          	lui	a5,0x7
    80003fc8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003fcc:	fce7eee3          	bltu	a5,a4,80003fa8 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003fd0:	00170713          	addi	a4,a4,1
    80003fd4:	ff1ff06f          	j	80003fc4 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003fd8:	00190913          	addi	s2,s2,1
    80003fdc:	00f00793          	li	a5,15
    80003fe0:	0527e063          	bltu	a5,s2,80004020 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003fe4:	00006517          	auipc	a0,0x6
    80003fe8:	24c50513          	addi	a0,a0,588 # 8000a230 <CONSOLE_STATUS+0x220>
    80003fec:	00002097          	auipc	ra,0x2
    80003ff0:	100080e7          	jalr	256(ra) # 800060ec <_Z11printStringPKc>
    80003ff4:	00000613          	li	a2,0
    80003ff8:	00a00593          	li	a1,10
    80003ffc:	0009051b          	sext.w	a0,s2
    80004000:	00002097          	auipc	ra,0x2
    80004004:	29c080e7          	jalr	668(ra) # 8000629c <_Z8printIntiii>
    80004008:	00006517          	auipc	a0,0x6
    8000400c:	47050513          	addi	a0,a0,1136 # 8000a478 <CONSOLE_STATUS+0x468>
    80004010:	00002097          	auipc	ra,0x2
    80004014:	0dc080e7          	jalr	220(ra) # 800060ec <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004018:	00000493          	li	s1,0
    8000401c:	f99ff06f          	j	80003fb4 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80004020:	00006517          	auipc	a0,0x6
    80004024:	21850513          	addi	a0,a0,536 # 8000a238 <CONSOLE_STATUS+0x228>
    80004028:	00002097          	auipc	ra,0x2
    8000402c:	0c4080e7          	jalr	196(ra) # 800060ec <_Z11printStringPKc>
    finishedB = true;
    80004030:	00100793          	li	a5,1
    80004034:	00009717          	auipc	a4,0x9
    80004038:	f2f702a3          	sb	a5,-219(a4) # 8000cf59 <_ZL9finishedB>
    thread_dispatch();
    8000403c:	ffffd097          	auipc	ra,0xffffd
    80004040:	390080e7          	jalr	912(ra) # 800013cc <_Z15thread_dispatchv>
}
    80004044:	01813083          	ld	ra,24(sp)
    80004048:	01013403          	ld	s0,16(sp)
    8000404c:	00813483          	ld	s1,8(sp)
    80004050:	00013903          	ld	s2,0(sp)
    80004054:	02010113          	addi	sp,sp,32
    80004058:	00008067          	ret

000000008000405c <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    8000405c:	fe010113          	addi	sp,sp,-32
    80004060:	00113c23          	sd	ra,24(sp)
    80004064:	00813823          	sd	s0,16(sp)
    80004068:	00913423          	sd	s1,8(sp)
    8000406c:	01213023          	sd	s2,0(sp)
    80004070:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004074:	00000493          	li	s1,0
    80004078:	0400006f          	j	800040b8 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    8000407c:	00006517          	auipc	a0,0x6
    80004080:	1cc50513          	addi	a0,a0,460 # 8000a248 <CONSOLE_STATUS+0x238>
    80004084:	00002097          	auipc	ra,0x2
    80004088:	068080e7          	jalr	104(ra) # 800060ec <_Z11printStringPKc>
    8000408c:	00000613          	li	a2,0
    80004090:	00a00593          	li	a1,10
    80004094:	00048513          	mv	a0,s1
    80004098:	00002097          	auipc	ra,0x2
    8000409c:	204080e7          	jalr	516(ra) # 8000629c <_Z8printIntiii>
    800040a0:	00006517          	auipc	a0,0x6
    800040a4:	3d850513          	addi	a0,a0,984 # 8000a478 <CONSOLE_STATUS+0x468>
    800040a8:	00002097          	auipc	ra,0x2
    800040ac:	044080e7          	jalr	68(ra) # 800060ec <_Z11printStringPKc>
    for (; i < 3; i++) {
    800040b0:	0014849b          	addiw	s1,s1,1
    800040b4:	0ff4f493          	andi	s1,s1,255
    800040b8:	00200793          	li	a5,2
    800040bc:	fc97f0e3          	bgeu	a5,s1,8000407c <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    800040c0:	00006517          	auipc	a0,0x6
    800040c4:	19050513          	addi	a0,a0,400 # 8000a250 <CONSOLE_STATUS+0x240>
    800040c8:	00002097          	auipc	ra,0x2
    800040cc:	024080e7          	jalr	36(ra) # 800060ec <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800040d0:	00700313          	li	t1,7
    thread_dispatch();
    800040d4:	ffffd097          	auipc	ra,0xffffd
    800040d8:	2f8080e7          	jalr	760(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800040dc:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    800040e0:	00006517          	auipc	a0,0x6
    800040e4:	18050513          	addi	a0,a0,384 # 8000a260 <CONSOLE_STATUS+0x250>
    800040e8:	00002097          	auipc	ra,0x2
    800040ec:	004080e7          	jalr	4(ra) # 800060ec <_Z11printStringPKc>
    800040f0:	00000613          	li	a2,0
    800040f4:	00a00593          	li	a1,10
    800040f8:	0009051b          	sext.w	a0,s2
    800040fc:	00002097          	auipc	ra,0x2
    80004100:	1a0080e7          	jalr	416(ra) # 8000629c <_Z8printIntiii>
    80004104:	00006517          	auipc	a0,0x6
    80004108:	37450513          	addi	a0,a0,884 # 8000a478 <CONSOLE_STATUS+0x468>
    8000410c:	00002097          	auipc	ra,0x2
    80004110:	fe0080e7          	jalr	-32(ra) # 800060ec <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80004114:	00c00513          	li	a0,12
    80004118:	00000097          	auipc	ra,0x0
    8000411c:	d30080e7          	jalr	-720(ra) # 80003e48 <_ZL9fibonaccim>
    80004120:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004124:	00006517          	auipc	a0,0x6
    80004128:	14450513          	addi	a0,a0,324 # 8000a268 <CONSOLE_STATUS+0x258>
    8000412c:	00002097          	auipc	ra,0x2
    80004130:	fc0080e7          	jalr	-64(ra) # 800060ec <_Z11printStringPKc>
    80004134:	00000613          	li	a2,0
    80004138:	00a00593          	li	a1,10
    8000413c:	0009051b          	sext.w	a0,s2
    80004140:	00002097          	auipc	ra,0x2
    80004144:	15c080e7          	jalr	348(ra) # 8000629c <_Z8printIntiii>
    80004148:	00006517          	auipc	a0,0x6
    8000414c:	33050513          	addi	a0,a0,816 # 8000a478 <CONSOLE_STATUS+0x468>
    80004150:	00002097          	auipc	ra,0x2
    80004154:	f9c080e7          	jalr	-100(ra) # 800060ec <_Z11printStringPKc>
    80004158:	0400006f          	j	80004198 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    8000415c:	00006517          	auipc	a0,0x6
    80004160:	0ec50513          	addi	a0,a0,236 # 8000a248 <CONSOLE_STATUS+0x238>
    80004164:	00002097          	auipc	ra,0x2
    80004168:	f88080e7          	jalr	-120(ra) # 800060ec <_Z11printStringPKc>
    8000416c:	00000613          	li	a2,0
    80004170:	00a00593          	li	a1,10
    80004174:	00048513          	mv	a0,s1
    80004178:	00002097          	auipc	ra,0x2
    8000417c:	124080e7          	jalr	292(ra) # 8000629c <_Z8printIntiii>
    80004180:	00006517          	auipc	a0,0x6
    80004184:	2f850513          	addi	a0,a0,760 # 8000a478 <CONSOLE_STATUS+0x468>
    80004188:	00002097          	auipc	ra,0x2
    8000418c:	f64080e7          	jalr	-156(ra) # 800060ec <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004190:	0014849b          	addiw	s1,s1,1
    80004194:	0ff4f493          	andi	s1,s1,255
    80004198:	00500793          	li	a5,5
    8000419c:	fc97f0e3          	bgeu	a5,s1,8000415c <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    800041a0:	00006517          	auipc	a0,0x6
    800041a4:	08050513          	addi	a0,a0,128 # 8000a220 <CONSOLE_STATUS+0x210>
    800041a8:	00002097          	auipc	ra,0x2
    800041ac:	f44080e7          	jalr	-188(ra) # 800060ec <_Z11printStringPKc>
    finishedC = true;
    800041b0:	00100793          	li	a5,1
    800041b4:	00009717          	auipc	a4,0x9
    800041b8:	daf70323          	sb	a5,-602(a4) # 8000cf5a <_ZL9finishedC>
    thread_dispatch();
    800041bc:	ffffd097          	auipc	ra,0xffffd
    800041c0:	210080e7          	jalr	528(ra) # 800013cc <_Z15thread_dispatchv>
}
    800041c4:	01813083          	ld	ra,24(sp)
    800041c8:	01013403          	ld	s0,16(sp)
    800041cc:	00813483          	ld	s1,8(sp)
    800041d0:	00013903          	ld	s2,0(sp)
    800041d4:	02010113          	addi	sp,sp,32
    800041d8:	00008067          	ret

00000000800041dc <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    800041dc:	fe010113          	addi	sp,sp,-32
    800041e0:	00113c23          	sd	ra,24(sp)
    800041e4:	00813823          	sd	s0,16(sp)
    800041e8:	00913423          	sd	s1,8(sp)
    800041ec:	01213023          	sd	s2,0(sp)
    800041f0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800041f4:	00a00493          	li	s1,10
    800041f8:	0400006f          	j	80004238 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800041fc:	00006517          	auipc	a0,0x6
    80004200:	07c50513          	addi	a0,a0,124 # 8000a278 <CONSOLE_STATUS+0x268>
    80004204:	00002097          	auipc	ra,0x2
    80004208:	ee8080e7          	jalr	-280(ra) # 800060ec <_Z11printStringPKc>
    8000420c:	00000613          	li	a2,0
    80004210:	00a00593          	li	a1,10
    80004214:	00048513          	mv	a0,s1
    80004218:	00002097          	auipc	ra,0x2
    8000421c:	084080e7          	jalr	132(ra) # 8000629c <_Z8printIntiii>
    80004220:	00006517          	auipc	a0,0x6
    80004224:	25850513          	addi	a0,a0,600 # 8000a478 <CONSOLE_STATUS+0x468>
    80004228:	00002097          	auipc	ra,0x2
    8000422c:	ec4080e7          	jalr	-316(ra) # 800060ec <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004230:	0014849b          	addiw	s1,s1,1
    80004234:	0ff4f493          	andi	s1,s1,255
    80004238:	00c00793          	li	a5,12
    8000423c:	fc97f0e3          	bgeu	a5,s1,800041fc <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80004240:	00006517          	auipc	a0,0x6
    80004244:	04050513          	addi	a0,a0,64 # 8000a280 <CONSOLE_STATUS+0x270>
    80004248:	00002097          	auipc	ra,0x2
    8000424c:	ea4080e7          	jalr	-348(ra) # 800060ec <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004250:	00500313          	li	t1,5
    thread_dispatch();
    80004254:	ffffd097          	auipc	ra,0xffffd
    80004258:	178080e7          	jalr	376(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    8000425c:	01000513          	li	a0,16
    80004260:	00000097          	auipc	ra,0x0
    80004264:	be8080e7          	jalr	-1048(ra) # 80003e48 <_ZL9fibonaccim>
    80004268:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    8000426c:	00006517          	auipc	a0,0x6
    80004270:	02450513          	addi	a0,a0,36 # 8000a290 <CONSOLE_STATUS+0x280>
    80004274:	00002097          	auipc	ra,0x2
    80004278:	e78080e7          	jalr	-392(ra) # 800060ec <_Z11printStringPKc>
    8000427c:	00000613          	li	a2,0
    80004280:	00a00593          	li	a1,10
    80004284:	0009051b          	sext.w	a0,s2
    80004288:	00002097          	auipc	ra,0x2
    8000428c:	014080e7          	jalr	20(ra) # 8000629c <_Z8printIntiii>
    80004290:	00006517          	auipc	a0,0x6
    80004294:	1e850513          	addi	a0,a0,488 # 8000a478 <CONSOLE_STATUS+0x468>
    80004298:	00002097          	auipc	ra,0x2
    8000429c:	e54080e7          	jalr	-428(ra) # 800060ec <_Z11printStringPKc>
    800042a0:	0400006f          	j	800042e0 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800042a4:	00006517          	auipc	a0,0x6
    800042a8:	fd450513          	addi	a0,a0,-44 # 8000a278 <CONSOLE_STATUS+0x268>
    800042ac:	00002097          	auipc	ra,0x2
    800042b0:	e40080e7          	jalr	-448(ra) # 800060ec <_Z11printStringPKc>
    800042b4:	00000613          	li	a2,0
    800042b8:	00a00593          	li	a1,10
    800042bc:	00048513          	mv	a0,s1
    800042c0:	00002097          	auipc	ra,0x2
    800042c4:	fdc080e7          	jalr	-36(ra) # 8000629c <_Z8printIntiii>
    800042c8:	00006517          	auipc	a0,0x6
    800042cc:	1b050513          	addi	a0,a0,432 # 8000a478 <CONSOLE_STATUS+0x468>
    800042d0:	00002097          	auipc	ra,0x2
    800042d4:	e1c080e7          	jalr	-484(ra) # 800060ec <_Z11printStringPKc>
    for (; i < 16; i++) {
    800042d8:	0014849b          	addiw	s1,s1,1
    800042dc:	0ff4f493          	andi	s1,s1,255
    800042e0:	00f00793          	li	a5,15
    800042e4:	fc97f0e3          	bgeu	a5,s1,800042a4 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    800042e8:	00006517          	auipc	a0,0x6
    800042ec:	fb850513          	addi	a0,a0,-72 # 8000a2a0 <CONSOLE_STATUS+0x290>
    800042f0:	00002097          	auipc	ra,0x2
    800042f4:	dfc080e7          	jalr	-516(ra) # 800060ec <_Z11printStringPKc>
    finishedD = true;
    800042f8:	00100793          	li	a5,1
    800042fc:	00009717          	auipc	a4,0x9
    80004300:	c4f70fa3          	sb	a5,-929(a4) # 8000cf5b <_ZL9finishedD>
    thread_dispatch();
    80004304:	ffffd097          	auipc	ra,0xffffd
    80004308:	0c8080e7          	jalr	200(ra) # 800013cc <_Z15thread_dispatchv>
}
    8000430c:	01813083          	ld	ra,24(sp)
    80004310:	01013403          	ld	s0,16(sp)
    80004314:	00813483          	ld	s1,8(sp)
    80004318:	00013903          	ld	s2,0(sp)
    8000431c:	02010113          	addi	sp,sp,32
    80004320:	00008067          	ret

0000000080004324 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80004324:	fc010113          	addi	sp,sp,-64
    80004328:	02113c23          	sd	ra,56(sp)
    8000432c:	02813823          	sd	s0,48(sp)
    80004330:	02913423          	sd	s1,40(sp)
    80004334:	03213023          	sd	s2,32(sp)
    80004338:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    8000433c:	02000513          	li	a0,32
    80004340:	ffffe097          	auipc	ra,0xffffe
    80004344:	d64080e7          	jalr	-668(ra) # 800020a4 <_Znwm>
    80004348:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    8000434c:	ffffe097          	auipc	ra,0xffffe
    80004350:	e58080e7          	jalr	-424(ra) # 800021a4 <_ZN6ThreadC1Ev>
    80004354:	00009797          	auipc	a5,0x9
    80004358:	94c78793          	addi	a5,a5,-1716 # 8000cca0 <_ZTV7WorkerA+0x10>
    8000435c:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80004360:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80004364:	00006517          	auipc	a0,0x6
    80004368:	f4c50513          	addi	a0,a0,-180 # 8000a2b0 <CONSOLE_STATUS+0x2a0>
    8000436c:	00002097          	auipc	ra,0x2
    80004370:	d80080e7          	jalr	-640(ra) # 800060ec <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80004374:	02000513          	li	a0,32
    80004378:	ffffe097          	auipc	ra,0xffffe
    8000437c:	d2c080e7          	jalr	-724(ra) # 800020a4 <_Znwm>
    80004380:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80004384:	ffffe097          	auipc	ra,0xffffe
    80004388:	e20080e7          	jalr	-480(ra) # 800021a4 <_ZN6ThreadC1Ev>
    8000438c:	00009797          	auipc	a5,0x9
    80004390:	93c78793          	addi	a5,a5,-1732 # 8000ccc8 <_ZTV7WorkerB+0x10>
    80004394:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80004398:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    8000439c:	00006517          	auipc	a0,0x6
    800043a0:	f2c50513          	addi	a0,a0,-212 # 8000a2c8 <CONSOLE_STATUS+0x2b8>
    800043a4:	00002097          	auipc	ra,0x2
    800043a8:	d48080e7          	jalr	-696(ra) # 800060ec <_Z11printStringPKc>

    threads[2] = new WorkerC();
    800043ac:	02000513          	li	a0,32
    800043b0:	ffffe097          	auipc	ra,0xffffe
    800043b4:	cf4080e7          	jalr	-780(ra) # 800020a4 <_Znwm>
    800043b8:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    800043bc:	ffffe097          	auipc	ra,0xffffe
    800043c0:	de8080e7          	jalr	-536(ra) # 800021a4 <_ZN6ThreadC1Ev>
    800043c4:	00009797          	auipc	a5,0x9
    800043c8:	92c78793          	addi	a5,a5,-1748 # 8000ccf0 <_ZTV7WorkerC+0x10>
    800043cc:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    800043d0:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    800043d4:	00006517          	auipc	a0,0x6
    800043d8:	f0c50513          	addi	a0,a0,-244 # 8000a2e0 <CONSOLE_STATUS+0x2d0>
    800043dc:	00002097          	auipc	ra,0x2
    800043e0:	d10080e7          	jalr	-752(ra) # 800060ec <_Z11printStringPKc>

    threads[3] = new WorkerD();
    800043e4:	02000513          	li	a0,32
    800043e8:	ffffe097          	auipc	ra,0xffffe
    800043ec:	cbc080e7          	jalr	-836(ra) # 800020a4 <_Znwm>
    800043f0:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    800043f4:	ffffe097          	auipc	ra,0xffffe
    800043f8:	db0080e7          	jalr	-592(ra) # 800021a4 <_ZN6ThreadC1Ev>
    800043fc:	00009797          	auipc	a5,0x9
    80004400:	91c78793          	addi	a5,a5,-1764 # 8000cd18 <_ZTV7WorkerD+0x10>
    80004404:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80004408:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    8000440c:	00006517          	auipc	a0,0x6
    80004410:	eec50513          	addi	a0,a0,-276 # 8000a2f8 <CONSOLE_STATUS+0x2e8>
    80004414:	00002097          	auipc	ra,0x2
    80004418:	cd8080e7          	jalr	-808(ra) # 800060ec <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    8000441c:	00000493          	li	s1,0
    80004420:	00300793          	li	a5,3
    80004424:	0297c663          	blt	a5,s1,80004450 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80004428:	00349793          	slli	a5,s1,0x3
    8000442c:	fe040713          	addi	a4,s0,-32
    80004430:	00f707b3          	add	a5,a4,a5
    80004434:	fe07b503          	ld	a0,-32(a5)
    80004438:	ffffe097          	auipc	ra,0xffffe
    8000443c:	d9c080e7          	jalr	-612(ra) # 800021d4 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80004440:	0014849b          	addiw	s1,s1,1
    80004444:	fddff06f          	j	80004420 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80004448:	ffffe097          	auipc	ra,0xffffe
    8000444c:	dc4080e7          	jalr	-572(ra) # 8000220c <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004450:	00009797          	auipc	a5,0x9
    80004454:	b087c783          	lbu	a5,-1272(a5) # 8000cf58 <_ZL9finishedA>
    80004458:	fe0788e3          	beqz	a5,80004448 <_Z20Threads_CPP_API_testv+0x124>
    8000445c:	00009797          	auipc	a5,0x9
    80004460:	afd7c783          	lbu	a5,-1283(a5) # 8000cf59 <_ZL9finishedB>
    80004464:	fe0782e3          	beqz	a5,80004448 <_Z20Threads_CPP_API_testv+0x124>
    80004468:	00009797          	auipc	a5,0x9
    8000446c:	af27c783          	lbu	a5,-1294(a5) # 8000cf5a <_ZL9finishedC>
    80004470:	fc078ce3          	beqz	a5,80004448 <_Z20Threads_CPP_API_testv+0x124>
    80004474:	00009797          	auipc	a5,0x9
    80004478:	ae77c783          	lbu	a5,-1305(a5) # 8000cf5b <_ZL9finishedD>
    8000447c:	fc0786e3          	beqz	a5,80004448 <_Z20Threads_CPP_API_testv+0x124>
    80004480:	fc040493          	addi	s1,s0,-64
    80004484:	0080006f          	j	8000448c <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80004488:	00848493          	addi	s1,s1,8
    8000448c:	fe040793          	addi	a5,s0,-32
    80004490:	08f48663          	beq	s1,a5,8000451c <_Z20Threads_CPP_API_testv+0x1f8>
    80004494:	0004b503          	ld	a0,0(s1)
    80004498:	fe0508e3          	beqz	a0,80004488 <_Z20Threads_CPP_API_testv+0x164>
    8000449c:	00053783          	ld	a5,0(a0)
    800044a0:	0087b783          	ld	a5,8(a5)
    800044a4:	000780e7          	jalr	a5
    800044a8:	fe1ff06f          	j	80004488 <_Z20Threads_CPP_API_testv+0x164>
    800044ac:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    800044b0:	00048513          	mv	a0,s1
    800044b4:	ffffe097          	auipc	ra,0xffffe
    800044b8:	c18080e7          	jalr	-1000(ra) # 800020cc <_ZdlPv>
    800044bc:	00090513          	mv	a0,s2
    800044c0:	0000a097          	auipc	ra,0xa
    800044c4:	ba8080e7          	jalr	-1112(ra) # 8000e068 <_Unwind_Resume>
    800044c8:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    800044cc:	00048513          	mv	a0,s1
    800044d0:	ffffe097          	auipc	ra,0xffffe
    800044d4:	bfc080e7          	jalr	-1028(ra) # 800020cc <_ZdlPv>
    800044d8:	00090513          	mv	a0,s2
    800044dc:	0000a097          	auipc	ra,0xa
    800044e0:	b8c080e7          	jalr	-1140(ra) # 8000e068 <_Unwind_Resume>
    800044e4:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    800044e8:	00048513          	mv	a0,s1
    800044ec:	ffffe097          	auipc	ra,0xffffe
    800044f0:	be0080e7          	jalr	-1056(ra) # 800020cc <_ZdlPv>
    800044f4:	00090513          	mv	a0,s2
    800044f8:	0000a097          	auipc	ra,0xa
    800044fc:	b70080e7          	jalr	-1168(ra) # 8000e068 <_Unwind_Resume>
    80004500:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80004504:	00048513          	mv	a0,s1
    80004508:	ffffe097          	auipc	ra,0xffffe
    8000450c:	bc4080e7          	jalr	-1084(ra) # 800020cc <_ZdlPv>
    80004510:	00090513          	mv	a0,s2
    80004514:	0000a097          	auipc	ra,0xa
    80004518:	b54080e7          	jalr	-1196(ra) # 8000e068 <_Unwind_Resume>
}
    8000451c:	03813083          	ld	ra,56(sp)
    80004520:	03013403          	ld	s0,48(sp)
    80004524:	02813483          	ld	s1,40(sp)
    80004528:	02013903          	ld	s2,32(sp)
    8000452c:	04010113          	addi	sp,sp,64
    80004530:	00008067          	ret

0000000080004534 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80004534:	ff010113          	addi	sp,sp,-16
    80004538:	00113423          	sd	ra,8(sp)
    8000453c:	00813023          	sd	s0,0(sp)
    80004540:	01010413          	addi	s0,sp,16
    80004544:	00008797          	auipc	a5,0x8
    80004548:	75c78793          	addi	a5,a5,1884 # 8000cca0 <_ZTV7WorkerA+0x10>
    8000454c:	00f53023          	sd	a5,0(a0)
    80004550:	ffffe097          	auipc	ra,0xffffe
    80004554:	a64080e7          	jalr	-1436(ra) # 80001fb4 <_ZN6ThreadD1Ev>
    80004558:	00813083          	ld	ra,8(sp)
    8000455c:	00013403          	ld	s0,0(sp)
    80004560:	01010113          	addi	sp,sp,16
    80004564:	00008067          	ret

0000000080004568 <_ZN7WorkerAD0Ev>:
    80004568:	fe010113          	addi	sp,sp,-32
    8000456c:	00113c23          	sd	ra,24(sp)
    80004570:	00813823          	sd	s0,16(sp)
    80004574:	00913423          	sd	s1,8(sp)
    80004578:	02010413          	addi	s0,sp,32
    8000457c:	00050493          	mv	s1,a0
    80004580:	00008797          	auipc	a5,0x8
    80004584:	72078793          	addi	a5,a5,1824 # 8000cca0 <_ZTV7WorkerA+0x10>
    80004588:	00f53023          	sd	a5,0(a0)
    8000458c:	ffffe097          	auipc	ra,0xffffe
    80004590:	a28080e7          	jalr	-1496(ra) # 80001fb4 <_ZN6ThreadD1Ev>
    80004594:	00048513          	mv	a0,s1
    80004598:	ffffe097          	auipc	ra,0xffffe
    8000459c:	b34080e7          	jalr	-1228(ra) # 800020cc <_ZdlPv>
    800045a0:	01813083          	ld	ra,24(sp)
    800045a4:	01013403          	ld	s0,16(sp)
    800045a8:	00813483          	ld	s1,8(sp)
    800045ac:	02010113          	addi	sp,sp,32
    800045b0:	00008067          	ret

00000000800045b4 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800045b4:	ff010113          	addi	sp,sp,-16
    800045b8:	00113423          	sd	ra,8(sp)
    800045bc:	00813023          	sd	s0,0(sp)
    800045c0:	01010413          	addi	s0,sp,16
    800045c4:	00008797          	auipc	a5,0x8
    800045c8:	70478793          	addi	a5,a5,1796 # 8000ccc8 <_ZTV7WorkerB+0x10>
    800045cc:	00f53023          	sd	a5,0(a0)
    800045d0:	ffffe097          	auipc	ra,0xffffe
    800045d4:	9e4080e7          	jalr	-1564(ra) # 80001fb4 <_ZN6ThreadD1Ev>
    800045d8:	00813083          	ld	ra,8(sp)
    800045dc:	00013403          	ld	s0,0(sp)
    800045e0:	01010113          	addi	sp,sp,16
    800045e4:	00008067          	ret

00000000800045e8 <_ZN7WorkerBD0Ev>:
    800045e8:	fe010113          	addi	sp,sp,-32
    800045ec:	00113c23          	sd	ra,24(sp)
    800045f0:	00813823          	sd	s0,16(sp)
    800045f4:	00913423          	sd	s1,8(sp)
    800045f8:	02010413          	addi	s0,sp,32
    800045fc:	00050493          	mv	s1,a0
    80004600:	00008797          	auipc	a5,0x8
    80004604:	6c878793          	addi	a5,a5,1736 # 8000ccc8 <_ZTV7WorkerB+0x10>
    80004608:	00f53023          	sd	a5,0(a0)
    8000460c:	ffffe097          	auipc	ra,0xffffe
    80004610:	9a8080e7          	jalr	-1624(ra) # 80001fb4 <_ZN6ThreadD1Ev>
    80004614:	00048513          	mv	a0,s1
    80004618:	ffffe097          	auipc	ra,0xffffe
    8000461c:	ab4080e7          	jalr	-1356(ra) # 800020cc <_ZdlPv>
    80004620:	01813083          	ld	ra,24(sp)
    80004624:	01013403          	ld	s0,16(sp)
    80004628:	00813483          	ld	s1,8(sp)
    8000462c:	02010113          	addi	sp,sp,32
    80004630:	00008067          	ret

0000000080004634 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80004634:	ff010113          	addi	sp,sp,-16
    80004638:	00113423          	sd	ra,8(sp)
    8000463c:	00813023          	sd	s0,0(sp)
    80004640:	01010413          	addi	s0,sp,16
    80004644:	00008797          	auipc	a5,0x8
    80004648:	6ac78793          	addi	a5,a5,1708 # 8000ccf0 <_ZTV7WorkerC+0x10>
    8000464c:	00f53023          	sd	a5,0(a0)
    80004650:	ffffe097          	auipc	ra,0xffffe
    80004654:	964080e7          	jalr	-1692(ra) # 80001fb4 <_ZN6ThreadD1Ev>
    80004658:	00813083          	ld	ra,8(sp)
    8000465c:	00013403          	ld	s0,0(sp)
    80004660:	01010113          	addi	sp,sp,16
    80004664:	00008067          	ret

0000000080004668 <_ZN7WorkerCD0Ev>:
    80004668:	fe010113          	addi	sp,sp,-32
    8000466c:	00113c23          	sd	ra,24(sp)
    80004670:	00813823          	sd	s0,16(sp)
    80004674:	00913423          	sd	s1,8(sp)
    80004678:	02010413          	addi	s0,sp,32
    8000467c:	00050493          	mv	s1,a0
    80004680:	00008797          	auipc	a5,0x8
    80004684:	67078793          	addi	a5,a5,1648 # 8000ccf0 <_ZTV7WorkerC+0x10>
    80004688:	00f53023          	sd	a5,0(a0)
    8000468c:	ffffe097          	auipc	ra,0xffffe
    80004690:	928080e7          	jalr	-1752(ra) # 80001fb4 <_ZN6ThreadD1Ev>
    80004694:	00048513          	mv	a0,s1
    80004698:	ffffe097          	auipc	ra,0xffffe
    8000469c:	a34080e7          	jalr	-1484(ra) # 800020cc <_ZdlPv>
    800046a0:	01813083          	ld	ra,24(sp)
    800046a4:	01013403          	ld	s0,16(sp)
    800046a8:	00813483          	ld	s1,8(sp)
    800046ac:	02010113          	addi	sp,sp,32
    800046b0:	00008067          	ret

00000000800046b4 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800046b4:	ff010113          	addi	sp,sp,-16
    800046b8:	00113423          	sd	ra,8(sp)
    800046bc:	00813023          	sd	s0,0(sp)
    800046c0:	01010413          	addi	s0,sp,16
    800046c4:	00008797          	auipc	a5,0x8
    800046c8:	65478793          	addi	a5,a5,1620 # 8000cd18 <_ZTV7WorkerD+0x10>
    800046cc:	00f53023          	sd	a5,0(a0)
    800046d0:	ffffe097          	auipc	ra,0xffffe
    800046d4:	8e4080e7          	jalr	-1820(ra) # 80001fb4 <_ZN6ThreadD1Ev>
    800046d8:	00813083          	ld	ra,8(sp)
    800046dc:	00013403          	ld	s0,0(sp)
    800046e0:	01010113          	addi	sp,sp,16
    800046e4:	00008067          	ret

00000000800046e8 <_ZN7WorkerDD0Ev>:
    800046e8:	fe010113          	addi	sp,sp,-32
    800046ec:	00113c23          	sd	ra,24(sp)
    800046f0:	00813823          	sd	s0,16(sp)
    800046f4:	00913423          	sd	s1,8(sp)
    800046f8:	02010413          	addi	s0,sp,32
    800046fc:	00050493          	mv	s1,a0
    80004700:	00008797          	auipc	a5,0x8
    80004704:	61878793          	addi	a5,a5,1560 # 8000cd18 <_ZTV7WorkerD+0x10>
    80004708:	00f53023          	sd	a5,0(a0)
    8000470c:	ffffe097          	auipc	ra,0xffffe
    80004710:	8a8080e7          	jalr	-1880(ra) # 80001fb4 <_ZN6ThreadD1Ev>
    80004714:	00048513          	mv	a0,s1
    80004718:	ffffe097          	auipc	ra,0xffffe
    8000471c:	9b4080e7          	jalr	-1612(ra) # 800020cc <_ZdlPv>
    80004720:	01813083          	ld	ra,24(sp)
    80004724:	01013403          	ld	s0,16(sp)
    80004728:	00813483          	ld	s1,8(sp)
    8000472c:	02010113          	addi	sp,sp,32
    80004730:	00008067          	ret

0000000080004734 <_ZN7WorkerA3runEv>:
    void run() override {
    80004734:	ff010113          	addi	sp,sp,-16
    80004738:	00113423          	sd	ra,8(sp)
    8000473c:	00813023          	sd	s0,0(sp)
    80004740:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80004744:	00000593          	li	a1,0
    80004748:	fffff097          	auipc	ra,0xfffff
    8000474c:	774080e7          	jalr	1908(ra) # 80003ebc <_ZN7WorkerA11workerBodyAEPv>
    }
    80004750:	00813083          	ld	ra,8(sp)
    80004754:	00013403          	ld	s0,0(sp)
    80004758:	01010113          	addi	sp,sp,16
    8000475c:	00008067          	ret

0000000080004760 <_ZN7WorkerB3runEv>:
    void run() override {
    80004760:	ff010113          	addi	sp,sp,-16
    80004764:	00113423          	sd	ra,8(sp)
    80004768:	00813023          	sd	s0,0(sp)
    8000476c:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80004770:	00000593          	li	a1,0
    80004774:	00000097          	auipc	ra,0x0
    80004778:	814080e7          	jalr	-2028(ra) # 80003f88 <_ZN7WorkerB11workerBodyBEPv>
    }
    8000477c:	00813083          	ld	ra,8(sp)
    80004780:	00013403          	ld	s0,0(sp)
    80004784:	01010113          	addi	sp,sp,16
    80004788:	00008067          	ret

000000008000478c <_ZN7WorkerC3runEv>:
    void run() override {
    8000478c:	ff010113          	addi	sp,sp,-16
    80004790:	00113423          	sd	ra,8(sp)
    80004794:	00813023          	sd	s0,0(sp)
    80004798:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    8000479c:	00000593          	li	a1,0
    800047a0:	00000097          	auipc	ra,0x0
    800047a4:	8bc080e7          	jalr	-1860(ra) # 8000405c <_ZN7WorkerC11workerBodyCEPv>
    }
    800047a8:	00813083          	ld	ra,8(sp)
    800047ac:	00013403          	ld	s0,0(sp)
    800047b0:	01010113          	addi	sp,sp,16
    800047b4:	00008067          	ret

00000000800047b8 <_ZN7WorkerD3runEv>:
    void run() override {
    800047b8:	ff010113          	addi	sp,sp,-16
    800047bc:	00113423          	sd	ra,8(sp)
    800047c0:	00813023          	sd	s0,0(sp)
    800047c4:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800047c8:	00000593          	li	a1,0
    800047cc:	00000097          	auipc	ra,0x0
    800047d0:	a10080e7          	jalr	-1520(ra) # 800041dc <_ZN7WorkerD11workerBodyDEPv>
    }
    800047d4:	00813083          	ld	ra,8(sp)
    800047d8:	00013403          	ld	s0,0(sp)
    800047dc:	01010113          	addi	sp,sp,16
    800047e0:	00008067          	ret

00000000800047e4 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    800047e4:	f8010113          	addi	sp,sp,-128
    800047e8:	06113c23          	sd	ra,120(sp)
    800047ec:	06813823          	sd	s0,112(sp)
    800047f0:	06913423          	sd	s1,104(sp)
    800047f4:	07213023          	sd	s2,96(sp)
    800047f8:	05313c23          	sd	s3,88(sp)
    800047fc:	05413823          	sd	s4,80(sp)
    80004800:	05513423          	sd	s5,72(sp)
    80004804:	05613023          	sd	s6,64(sp)
    80004808:	03713c23          	sd	s7,56(sp)
    8000480c:	03813823          	sd	s8,48(sp)
    80004810:	03913423          	sd	s9,40(sp)
    80004814:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80004818:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    8000481c:	00006517          	auipc	a0,0x6
    80004820:	91450513          	addi	a0,a0,-1772 # 8000a130 <CONSOLE_STATUS+0x120>
    80004824:	00002097          	auipc	ra,0x2
    80004828:	8c8080e7          	jalr	-1848(ra) # 800060ec <_Z11printStringPKc>
    getString(input, 30);
    8000482c:	01e00593          	li	a1,30
    80004830:	f8040493          	addi	s1,s0,-128
    80004834:	00048513          	mv	a0,s1
    80004838:	00002097          	auipc	ra,0x2
    8000483c:	93c080e7          	jalr	-1732(ra) # 80006174 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004840:	00048513          	mv	a0,s1
    80004844:	00002097          	auipc	ra,0x2
    80004848:	a08080e7          	jalr	-1528(ra) # 8000624c <_Z11stringToIntPKc>
    8000484c:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80004850:	00006517          	auipc	a0,0x6
    80004854:	90050513          	addi	a0,a0,-1792 # 8000a150 <CONSOLE_STATUS+0x140>
    80004858:	00002097          	auipc	ra,0x2
    8000485c:	894080e7          	jalr	-1900(ra) # 800060ec <_Z11printStringPKc>
    getString(input, 30);
    80004860:	01e00593          	li	a1,30
    80004864:	00048513          	mv	a0,s1
    80004868:	00002097          	auipc	ra,0x2
    8000486c:	90c080e7          	jalr	-1780(ra) # 80006174 <_Z9getStringPci>
    n = stringToInt(input);
    80004870:	00048513          	mv	a0,s1
    80004874:	00002097          	auipc	ra,0x2
    80004878:	9d8080e7          	jalr	-1576(ra) # 8000624c <_Z11stringToIntPKc>
    8000487c:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80004880:	00006517          	auipc	a0,0x6
    80004884:	8f050513          	addi	a0,a0,-1808 # 8000a170 <CONSOLE_STATUS+0x160>
    80004888:	00002097          	auipc	ra,0x2
    8000488c:	864080e7          	jalr	-1948(ra) # 800060ec <_Z11printStringPKc>
    printInt(threadNum);
    80004890:	00000613          	li	a2,0
    80004894:	00a00593          	li	a1,10
    80004898:	00098513          	mv	a0,s3
    8000489c:	00002097          	auipc	ra,0x2
    800048a0:	a00080e7          	jalr	-1536(ra) # 8000629c <_Z8printIntiii>
    printString(" i velicina bafera ");
    800048a4:	00006517          	auipc	a0,0x6
    800048a8:	8e450513          	addi	a0,a0,-1820 # 8000a188 <CONSOLE_STATUS+0x178>
    800048ac:	00002097          	auipc	ra,0x2
    800048b0:	840080e7          	jalr	-1984(ra) # 800060ec <_Z11printStringPKc>
    printInt(n);
    800048b4:	00000613          	li	a2,0
    800048b8:	00a00593          	li	a1,10
    800048bc:	00048513          	mv	a0,s1
    800048c0:	00002097          	auipc	ra,0x2
    800048c4:	9dc080e7          	jalr	-1572(ra) # 8000629c <_Z8printIntiii>
    printString(".\n");
    800048c8:	00006517          	auipc	a0,0x6
    800048cc:	8d850513          	addi	a0,a0,-1832 # 8000a1a0 <CONSOLE_STATUS+0x190>
    800048d0:	00002097          	auipc	ra,0x2
    800048d4:	81c080e7          	jalr	-2020(ra) # 800060ec <_Z11printStringPKc>
    if (threadNum > n) {
    800048d8:	0334c463          	blt	s1,s3,80004900 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    800048dc:	03305c63          	blez	s3,80004914 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    800048e0:	03800513          	li	a0,56
    800048e4:	ffffd097          	auipc	ra,0xffffd
    800048e8:	7c0080e7          	jalr	1984(ra) # 800020a4 <_Znwm>
    800048ec:	00050a93          	mv	s5,a0
    800048f0:	00048593          	mv	a1,s1
    800048f4:	00002097          	auipc	ra,0x2
    800048f8:	ac8080e7          	jalr	-1336(ra) # 800063bc <_ZN9BufferCPPC1Ei>
    800048fc:	0300006f          	j	8000492c <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004900:	00006517          	auipc	a0,0x6
    80004904:	8a850513          	addi	a0,a0,-1880 # 8000a1a8 <CONSOLE_STATUS+0x198>
    80004908:	00001097          	auipc	ra,0x1
    8000490c:	7e4080e7          	jalr	2020(ra) # 800060ec <_Z11printStringPKc>
        return;
    80004910:	0140006f          	j	80004924 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004914:	00006517          	auipc	a0,0x6
    80004918:	8d450513          	addi	a0,a0,-1836 # 8000a1e8 <CONSOLE_STATUS+0x1d8>
    8000491c:	00001097          	auipc	ra,0x1
    80004920:	7d0080e7          	jalr	2000(ra) # 800060ec <_Z11printStringPKc>
        return;
    80004924:	000c0113          	mv	sp,s8
    80004928:	2140006f          	j	80004b3c <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    8000492c:	01000513          	li	a0,16
    80004930:	ffffd097          	auipc	ra,0xffffd
    80004934:	774080e7          	jalr	1908(ra) # 800020a4 <_Znwm>
    80004938:	00050913          	mv	s2,a0
    8000493c:	00000593          	li	a1,0
    80004940:	ffffe097          	auipc	ra,0xffffe
    80004944:	91c080e7          	jalr	-1764(ra) # 8000225c <_ZN9SemaphoreC1Ej>
    80004948:	00008797          	auipc	a5,0x8
    8000494c:	6327b023          	sd	s2,1568(a5) # 8000cf68 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80004950:	00399793          	slli	a5,s3,0x3
    80004954:	00f78793          	addi	a5,a5,15
    80004958:	ff07f793          	andi	a5,a5,-16
    8000495c:	40f10133          	sub	sp,sp,a5
    80004960:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80004964:	0019871b          	addiw	a4,s3,1
    80004968:	00171793          	slli	a5,a4,0x1
    8000496c:	00e787b3          	add	a5,a5,a4
    80004970:	00379793          	slli	a5,a5,0x3
    80004974:	00f78793          	addi	a5,a5,15
    80004978:	ff07f793          	andi	a5,a5,-16
    8000497c:	40f10133          	sub	sp,sp,a5
    80004980:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80004984:	00199493          	slli	s1,s3,0x1
    80004988:	013484b3          	add	s1,s1,s3
    8000498c:	00349493          	slli	s1,s1,0x3
    80004990:	009b04b3          	add	s1,s6,s1
    80004994:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80004998:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    8000499c:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800049a0:	02800513          	li	a0,40
    800049a4:	ffffd097          	auipc	ra,0xffffd
    800049a8:	700080e7          	jalr	1792(ra) # 800020a4 <_Znwm>
    800049ac:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    800049b0:	ffffd097          	auipc	ra,0xffffd
    800049b4:	7f4080e7          	jalr	2036(ra) # 800021a4 <_ZN6ThreadC1Ev>
    800049b8:	00008797          	auipc	a5,0x8
    800049bc:	3d878793          	addi	a5,a5,984 # 8000cd90 <_ZTV8Consumer+0x10>
    800049c0:	00fbb023          	sd	a5,0(s7)
    800049c4:	029bb023          	sd	s1,32(s7)
    consumer->start();
    800049c8:	000b8513          	mv	a0,s7
    800049cc:	ffffe097          	auipc	ra,0xffffe
    800049d0:	808080e7          	jalr	-2040(ra) # 800021d4 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    800049d4:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    800049d8:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    800049dc:	00008797          	auipc	a5,0x8
    800049e0:	58c7b783          	ld	a5,1420(a5) # 8000cf68 <_ZL10waitForAll>
    800049e4:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800049e8:	02800513          	li	a0,40
    800049ec:	ffffd097          	auipc	ra,0xffffd
    800049f0:	6b8080e7          	jalr	1720(ra) # 800020a4 <_Znwm>
    800049f4:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    800049f8:	ffffd097          	auipc	ra,0xffffd
    800049fc:	7ac080e7          	jalr	1964(ra) # 800021a4 <_ZN6ThreadC1Ev>
    80004a00:	00008797          	auipc	a5,0x8
    80004a04:	34078793          	addi	a5,a5,832 # 8000cd40 <_ZTV16ProducerKeyborad+0x10>
    80004a08:	00f4b023          	sd	a5,0(s1)
    80004a0c:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004a10:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80004a14:	00048513          	mv	a0,s1
    80004a18:	ffffd097          	auipc	ra,0xffffd
    80004a1c:	7bc080e7          	jalr	1980(ra) # 800021d4 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004a20:	00100913          	li	s2,1
    80004a24:	0300006f          	j	80004a54 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004a28:	00008797          	auipc	a5,0x8
    80004a2c:	34078793          	addi	a5,a5,832 # 8000cd68 <_ZTV8Producer+0x10>
    80004a30:	00fcb023          	sd	a5,0(s9)
    80004a34:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80004a38:	00391793          	slli	a5,s2,0x3
    80004a3c:	00fa07b3          	add	a5,s4,a5
    80004a40:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80004a44:	000c8513          	mv	a0,s9
    80004a48:	ffffd097          	auipc	ra,0xffffd
    80004a4c:	78c080e7          	jalr	1932(ra) # 800021d4 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004a50:	0019091b          	addiw	s2,s2,1
    80004a54:	05395263          	bge	s2,s3,80004a98 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80004a58:	00191493          	slli	s1,s2,0x1
    80004a5c:	012484b3          	add	s1,s1,s2
    80004a60:	00349493          	slli	s1,s1,0x3
    80004a64:	009b04b3          	add	s1,s6,s1
    80004a68:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80004a6c:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80004a70:	00008797          	auipc	a5,0x8
    80004a74:	4f87b783          	ld	a5,1272(a5) # 8000cf68 <_ZL10waitForAll>
    80004a78:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80004a7c:	02800513          	li	a0,40
    80004a80:	ffffd097          	auipc	ra,0xffffd
    80004a84:	624080e7          	jalr	1572(ra) # 800020a4 <_Znwm>
    80004a88:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004a8c:	ffffd097          	auipc	ra,0xffffd
    80004a90:	718080e7          	jalr	1816(ra) # 800021a4 <_ZN6ThreadC1Ev>
    80004a94:	f95ff06f          	j	80004a28 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80004a98:	ffffd097          	auipc	ra,0xffffd
    80004a9c:	774080e7          	jalr	1908(ra) # 8000220c <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004aa0:	00000493          	li	s1,0
    80004aa4:	0099ce63          	blt	s3,s1,80004ac0 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80004aa8:	00008517          	auipc	a0,0x8
    80004aac:	4c053503          	ld	a0,1216(a0) # 8000cf68 <_ZL10waitForAll>
    80004ab0:	ffffd097          	auipc	ra,0xffffd
    80004ab4:	7e8080e7          	jalr	2024(ra) # 80002298 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004ab8:	0014849b          	addiw	s1,s1,1
    80004abc:	fe9ff06f          	j	80004aa4 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80004ac0:	00008517          	auipc	a0,0x8
    80004ac4:	4a853503          	ld	a0,1192(a0) # 8000cf68 <_ZL10waitForAll>
    80004ac8:	00050863          	beqz	a0,80004ad8 <_Z20testConsumerProducerv+0x2f4>
    80004acc:	00053783          	ld	a5,0(a0)
    80004ad0:	0087b783          	ld	a5,8(a5)
    80004ad4:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80004ad8:	00000493          	li	s1,0
    80004adc:	0080006f          	j	80004ae4 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80004ae0:	0014849b          	addiw	s1,s1,1
    80004ae4:	0334d263          	bge	s1,s3,80004b08 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80004ae8:	00349793          	slli	a5,s1,0x3
    80004aec:	00fa07b3          	add	a5,s4,a5
    80004af0:	0007b503          	ld	a0,0(a5)
    80004af4:	fe0506e3          	beqz	a0,80004ae0 <_Z20testConsumerProducerv+0x2fc>
    80004af8:	00053783          	ld	a5,0(a0)
    80004afc:	0087b783          	ld	a5,8(a5)
    80004b00:	000780e7          	jalr	a5
    80004b04:	fddff06f          	j	80004ae0 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80004b08:	000b8a63          	beqz	s7,80004b1c <_Z20testConsumerProducerv+0x338>
    80004b0c:	000bb783          	ld	a5,0(s7)
    80004b10:	0087b783          	ld	a5,8(a5)
    80004b14:	000b8513          	mv	a0,s7
    80004b18:	000780e7          	jalr	a5
    delete buffer;
    80004b1c:	000a8e63          	beqz	s5,80004b38 <_Z20testConsumerProducerv+0x354>
    80004b20:	000a8513          	mv	a0,s5
    80004b24:	00002097          	auipc	ra,0x2
    80004b28:	b90080e7          	jalr	-1136(ra) # 800066b4 <_ZN9BufferCPPD1Ev>
    80004b2c:	000a8513          	mv	a0,s5
    80004b30:	ffffd097          	auipc	ra,0xffffd
    80004b34:	59c080e7          	jalr	1436(ra) # 800020cc <_ZdlPv>
    80004b38:	000c0113          	mv	sp,s8
}
    80004b3c:	f8040113          	addi	sp,s0,-128
    80004b40:	07813083          	ld	ra,120(sp)
    80004b44:	07013403          	ld	s0,112(sp)
    80004b48:	06813483          	ld	s1,104(sp)
    80004b4c:	06013903          	ld	s2,96(sp)
    80004b50:	05813983          	ld	s3,88(sp)
    80004b54:	05013a03          	ld	s4,80(sp)
    80004b58:	04813a83          	ld	s5,72(sp)
    80004b5c:	04013b03          	ld	s6,64(sp)
    80004b60:	03813b83          	ld	s7,56(sp)
    80004b64:	03013c03          	ld	s8,48(sp)
    80004b68:	02813c83          	ld	s9,40(sp)
    80004b6c:	08010113          	addi	sp,sp,128
    80004b70:	00008067          	ret
    80004b74:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004b78:	000a8513          	mv	a0,s5
    80004b7c:	ffffd097          	auipc	ra,0xffffd
    80004b80:	550080e7          	jalr	1360(ra) # 800020cc <_ZdlPv>
    80004b84:	00048513          	mv	a0,s1
    80004b88:	00009097          	auipc	ra,0x9
    80004b8c:	4e0080e7          	jalr	1248(ra) # 8000e068 <_Unwind_Resume>
    80004b90:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80004b94:	00090513          	mv	a0,s2
    80004b98:	ffffd097          	auipc	ra,0xffffd
    80004b9c:	534080e7          	jalr	1332(ra) # 800020cc <_ZdlPv>
    80004ba0:	00048513          	mv	a0,s1
    80004ba4:	00009097          	auipc	ra,0x9
    80004ba8:	4c4080e7          	jalr	1220(ra) # 8000e068 <_Unwind_Resume>
    80004bac:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004bb0:	000b8513          	mv	a0,s7
    80004bb4:	ffffd097          	auipc	ra,0xffffd
    80004bb8:	518080e7          	jalr	1304(ra) # 800020cc <_ZdlPv>
    80004bbc:	00048513          	mv	a0,s1
    80004bc0:	00009097          	auipc	ra,0x9
    80004bc4:	4a8080e7          	jalr	1192(ra) # 8000e068 <_Unwind_Resume>
    80004bc8:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004bcc:	00048513          	mv	a0,s1
    80004bd0:	ffffd097          	auipc	ra,0xffffd
    80004bd4:	4fc080e7          	jalr	1276(ra) # 800020cc <_ZdlPv>
    80004bd8:	00090513          	mv	a0,s2
    80004bdc:	00009097          	auipc	ra,0x9
    80004be0:	48c080e7          	jalr	1164(ra) # 8000e068 <_Unwind_Resume>
    80004be4:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80004be8:	000c8513          	mv	a0,s9
    80004bec:	ffffd097          	auipc	ra,0xffffd
    80004bf0:	4e0080e7          	jalr	1248(ra) # 800020cc <_ZdlPv>
    80004bf4:	00048513          	mv	a0,s1
    80004bf8:	00009097          	auipc	ra,0x9
    80004bfc:	470080e7          	jalr	1136(ra) # 8000e068 <_Unwind_Resume>

0000000080004c00 <_ZN8Consumer3runEv>:
    void run() override {
    80004c00:	fd010113          	addi	sp,sp,-48
    80004c04:	02113423          	sd	ra,40(sp)
    80004c08:	02813023          	sd	s0,32(sp)
    80004c0c:	00913c23          	sd	s1,24(sp)
    80004c10:	01213823          	sd	s2,16(sp)
    80004c14:	01313423          	sd	s3,8(sp)
    80004c18:	03010413          	addi	s0,sp,48
    80004c1c:	00050913          	mv	s2,a0
        int i = 0;
    80004c20:	00000993          	li	s3,0
    80004c24:	0100006f          	j	80004c34 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80004c28:	00a00513          	li	a0,10
    80004c2c:	ffffd097          	auipc	ra,0xffffd
    80004c30:	7cc080e7          	jalr	1996(ra) # 800023f8 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80004c34:	00008797          	auipc	a5,0x8
    80004c38:	32c7a783          	lw	a5,812(a5) # 8000cf60 <_ZL9threadEnd>
    80004c3c:	04079a63          	bnez	a5,80004c90 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80004c40:	02093783          	ld	a5,32(s2)
    80004c44:	0087b503          	ld	a0,8(a5)
    80004c48:	00002097          	auipc	ra,0x2
    80004c4c:	958080e7          	jalr	-1704(ra) # 800065a0 <_ZN9BufferCPP3getEv>
            i++;
    80004c50:	0019849b          	addiw	s1,s3,1
    80004c54:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80004c58:	0ff57513          	andi	a0,a0,255
    80004c5c:	ffffd097          	auipc	ra,0xffffd
    80004c60:	79c080e7          	jalr	1948(ra) # 800023f8 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80004c64:	05000793          	li	a5,80
    80004c68:	02f4e4bb          	remw	s1,s1,a5
    80004c6c:	fc0494e3          	bnez	s1,80004c34 <_ZN8Consumer3runEv+0x34>
    80004c70:	fb9ff06f          	j	80004c28 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80004c74:	02093783          	ld	a5,32(s2)
    80004c78:	0087b503          	ld	a0,8(a5)
    80004c7c:	00002097          	auipc	ra,0x2
    80004c80:	924080e7          	jalr	-1756(ra) # 800065a0 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80004c84:	0ff57513          	andi	a0,a0,255
    80004c88:	ffffd097          	auipc	ra,0xffffd
    80004c8c:	770080e7          	jalr	1904(ra) # 800023f8 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80004c90:	02093783          	ld	a5,32(s2)
    80004c94:	0087b503          	ld	a0,8(a5)
    80004c98:	00002097          	auipc	ra,0x2
    80004c9c:	994080e7          	jalr	-1644(ra) # 8000662c <_ZN9BufferCPP6getCntEv>
    80004ca0:	fca04ae3          	bgtz	a0,80004c74 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004ca4:	02093783          	ld	a5,32(s2)
    80004ca8:	0107b503          	ld	a0,16(a5)
    80004cac:	ffffd097          	auipc	ra,0xffffd
    80004cb0:	624080e7          	jalr	1572(ra) # 800022d0 <_ZN9Semaphore6signalEv>
    }
    80004cb4:	02813083          	ld	ra,40(sp)
    80004cb8:	02013403          	ld	s0,32(sp)
    80004cbc:	01813483          	ld	s1,24(sp)
    80004cc0:	01013903          	ld	s2,16(sp)
    80004cc4:	00813983          	ld	s3,8(sp)
    80004cc8:	03010113          	addi	sp,sp,48
    80004ccc:	00008067          	ret

0000000080004cd0 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004cd0:	ff010113          	addi	sp,sp,-16
    80004cd4:	00113423          	sd	ra,8(sp)
    80004cd8:	00813023          	sd	s0,0(sp)
    80004cdc:	01010413          	addi	s0,sp,16
    80004ce0:	00008797          	auipc	a5,0x8
    80004ce4:	0b078793          	addi	a5,a5,176 # 8000cd90 <_ZTV8Consumer+0x10>
    80004ce8:	00f53023          	sd	a5,0(a0)
    80004cec:	ffffd097          	auipc	ra,0xffffd
    80004cf0:	2c8080e7          	jalr	712(ra) # 80001fb4 <_ZN6ThreadD1Ev>
    80004cf4:	00813083          	ld	ra,8(sp)
    80004cf8:	00013403          	ld	s0,0(sp)
    80004cfc:	01010113          	addi	sp,sp,16
    80004d00:	00008067          	ret

0000000080004d04 <_ZN8ConsumerD0Ev>:
    80004d04:	fe010113          	addi	sp,sp,-32
    80004d08:	00113c23          	sd	ra,24(sp)
    80004d0c:	00813823          	sd	s0,16(sp)
    80004d10:	00913423          	sd	s1,8(sp)
    80004d14:	02010413          	addi	s0,sp,32
    80004d18:	00050493          	mv	s1,a0
    80004d1c:	00008797          	auipc	a5,0x8
    80004d20:	07478793          	addi	a5,a5,116 # 8000cd90 <_ZTV8Consumer+0x10>
    80004d24:	00f53023          	sd	a5,0(a0)
    80004d28:	ffffd097          	auipc	ra,0xffffd
    80004d2c:	28c080e7          	jalr	652(ra) # 80001fb4 <_ZN6ThreadD1Ev>
    80004d30:	00048513          	mv	a0,s1
    80004d34:	ffffd097          	auipc	ra,0xffffd
    80004d38:	398080e7          	jalr	920(ra) # 800020cc <_ZdlPv>
    80004d3c:	01813083          	ld	ra,24(sp)
    80004d40:	01013403          	ld	s0,16(sp)
    80004d44:	00813483          	ld	s1,8(sp)
    80004d48:	02010113          	addi	sp,sp,32
    80004d4c:	00008067          	ret

0000000080004d50 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004d50:	ff010113          	addi	sp,sp,-16
    80004d54:	00113423          	sd	ra,8(sp)
    80004d58:	00813023          	sd	s0,0(sp)
    80004d5c:	01010413          	addi	s0,sp,16
    80004d60:	00008797          	auipc	a5,0x8
    80004d64:	fe078793          	addi	a5,a5,-32 # 8000cd40 <_ZTV16ProducerKeyborad+0x10>
    80004d68:	00f53023          	sd	a5,0(a0)
    80004d6c:	ffffd097          	auipc	ra,0xffffd
    80004d70:	248080e7          	jalr	584(ra) # 80001fb4 <_ZN6ThreadD1Ev>
    80004d74:	00813083          	ld	ra,8(sp)
    80004d78:	00013403          	ld	s0,0(sp)
    80004d7c:	01010113          	addi	sp,sp,16
    80004d80:	00008067          	ret

0000000080004d84 <_ZN16ProducerKeyboradD0Ev>:
    80004d84:	fe010113          	addi	sp,sp,-32
    80004d88:	00113c23          	sd	ra,24(sp)
    80004d8c:	00813823          	sd	s0,16(sp)
    80004d90:	00913423          	sd	s1,8(sp)
    80004d94:	02010413          	addi	s0,sp,32
    80004d98:	00050493          	mv	s1,a0
    80004d9c:	00008797          	auipc	a5,0x8
    80004da0:	fa478793          	addi	a5,a5,-92 # 8000cd40 <_ZTV16ProducerKeyborad+0x10>
    80004da4:	00f53023          	sd	a5,0(a0)
    80004da8:	ffffd097          	auipc	ra,0xffffd
    80004dac:	20c080e7          	jalr	524(ra) # 80001fb4 <_ZN6ThreadD1Ev>
    80004db0:	00048513          	mv	a0,s1
    80004db4:	ffffd097          	auipc	ra,0xffffd
    80004db8:	318080e7          	jalr	792(ra) # 800020cc <_ZdlPv>
    80004dbc:	01813083          	ld	ra,24(sp)
    80004dc0:	01013403          	ld	s0,16(sp)
    80004dc4:	00813483          	ld	s1,8(sp)
    80004dc8:	02010113          	addi	sp,sp,32
    80004dcc:	00008067          	ret

0000000080004dd0 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004dd0:	ff010113          	addi	sp,sp,-16
    80004dd4:	00113423          	sd	ra,8(sp)
    80004dd8:	00813023          	sd	s0,0(sp)
    80004ddc:	01010413          	addi	s0,sp,16
    80004de0:	00008797          	auipc	a5,0x8
    80004de4:	f8878793          	addi	a5,a5,-120 # 8000cd68 <_ZTV8Producer+0x10>
    80004de8:	00f53023          	sd	a5,0(a0)
    80004dec:	ffffd097          	auipc	ra,0xffffd
    80004df0:	1c8080e7          	jalr	456(ra) # 80001fb4 <_ZN6ThreadD1Ev>
    80004df4:	00813083          	ld	ra,8(sp)
    80004df8:	00013403          	ld	s0,0(sp)
    80004dfc:	01010113          	addi	sp,sp,16
    80004e00:	00008067          	ret

0000000080004e04 <_ZN8ProducerD0Ev>:
    80004e04:	fe010113          	addi	sp,sp,-32
    80004e08:	00113c23          	sd	ra,24(sp)
    80004e0c:	00813823          	sd	s0,16(sp)
    80004e10:	00913423          	sd	s1,8(sp)
    80004e14:	02010413          	addi	s0,sp,32
    80004e18:	00050493          	mv	s1,a0
    80004e1c:	00008797          	auipc	a5,0x8
    80004e20:	f4c78793          	addi	a5,a5,-180 # 8000cd68 <_ZTV8Producer+0x10>
    80004e24:	00f53023          	sd	a5,0(a0)
    80004e28:	ffffd097          	auipc	ra,0xffffd
    80004e2c:	18c080e7          	jalr	396(ra) # 80001fb4 <_ZN6ThreadD1Ev>
    80004e30:	00048513          	mv	a0,s1
    80004e34:	ffffd097          	auipc	ra,0xffffd
    80004e38:	298080e7          	jalr	664(ra) # 800020cc <_ZdlPv>
    80004e3c:	01813083          	ld	ra,24(sp)
    80004e40:	01013403          	ld	s0,16(sp)
    80004e44:	00813483          	ld	s1,8(sp)
    80004e48:	02010113          	addi	sp,sp,32
    80004e4c:	00008067          	ret

0000000080004e50 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004e50:	fe010113          	addi	sp,sp,-32
    80004e54:	00113c23          	sd	ra,24(sp)
    80004e58:	00813823          	sd	s0,16(sp)
    80004e5c:	00913423          	sd	s1,8(sp)
    80004e60:	02010413          	addi	s0,sp,32
    80004e64:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x31) {
    80004e68:	ffffc097          	auipc	ra,0xffffc
    80004e6c:	7b8080e7          	jalr	1976(ra) # 80001620 <_Z4getcv>
    80004e70:	0005059b          	sext.w	a1,a0
    80004e74:	03100793          	li	a5,49
    80004e78:	00f58c63          	beq	a1,a5,80004e90 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80004e7c:	0204b783          	ld	a5,32(s1)
    80004e80:	0087b503          	ld	a0,8(a5)
    80004e84:	00001097          	auipc	ra,0x1
    80004e88:	68c080e7          	jalr	1676(ra) # 80006510 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x31) {
    80004e8c:	fddff06f          	j	80004e68 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004e90:	00100793          	li	a5,1
    80004e94:	00008717          	auipc	a4,0x8
    80004e98:	0cf72623          	sw	a5,204(a4) # 8000cf60 <_ZL9threadEnd>
        td->buffer->put('!');
    80004e9c:	0204b783          	ld	a5,32(s1)
    80004ea0:	02100593          	li	a1,33
    80004ea4:	0087b503          	ld	a0,8(a5)
    80004ea8:	00001097          	auipc	ra,0x1
    80004eac:	668080e7          	jalr	1640(ra) # 80006510 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004eb0:	0204b783          	ld	a5,32(s1)
    80004eb4:	0107b503          	ld	a0,16(a5)
    80004eb8:	ffffd097          	auipc	ra,0xffffd
    80004ebc:	418080e7          	jalr	1048(ra) # 800022d0 <_ZN9Semaphore6signalEv>
    }
    80004ec0:	01813083          	ld	ra,24(sp)
    80004ec4:	01013403          	ld	s0,16(sp)
    80004ec8:	00813483          	ld	s1,8(sp)
    80004ecc:	02010113          	addi	sp,sp,32
    80004ed0:	00008067          	ret

0000000080004ed4 <_ZN8Producer3runEv>:
    void run() override {
    80004ed4:	fe010113          	addi	sp,sp,-32
    80004ed8:	00113c23          	sd	ra,24(sp)
    80004edc:	00813823          	sd	s0,16(sp)
    80004ee0:	00913423          	sd	s1,8(sp)
    80004ee4:	01213023          	sd	s2,0(sp)
    80004ee8:	02010413          	addi	s0,sp,32
    80004eec:	00050493          	mv	s1,a0
        int i = 0;
    80004ef0:	00000913          	li	s2,0
        while (!threadEnd) {
    80004ef4:	00008797          	auipc	a5,0x8
    80004ef8:	06c7a783          	lw	a5,108(a5) # 8000cf60 <_ZL9threadEnd>
    80004efc:	04079263          	bnez	a5,80004f40 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004f00:	0204b783          	ld	a5,32(s1)
    80004f04:	0007a583          	lw	a1,0(a5)
    80004f08:	0305859b          	addiw	a1,a1,48
    80004f0c:	0087b503          	ld	a0,8(a5)
    80004f10:	00001097          	auipc	ra,0x1
    80004f14:	600080e7          	jalr	1536(ra) # 80006510 <_ZN9BufferCPP3putEi>
            i++;
    80004f18:	0019071b          	addiw	a4,s2,1
    80004f1c:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004f20:	0204b783          	ld	a5,32(s1)
    80004f24:	0007a783          	lw	a5,0(a5)
    80004f28:	00e787bb          	addw	a5,a5,a4
    80004f2c:	00500513          	li	a0,5
    80004f30:	02a7e53b          	remw	a0,a5,a0
    80004f34:	ffffd097          	auipc	ra,0xffffd
    80004f38:	300080e7          	jalr	768(ra) # 80002234 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004f3c:	fb9ff06f          	j	80004ef4 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004f40:	0204b783          	ld	a5,32(s1)
    80004f44:	0107b503          	ld	a0,16(a5)
    80004f48:	ffffd097          	auipc	ra,0xffffd
    80004f4c:	388080e7          	jalr	904(ra) # 800022d0 <_ZN9Semaphore6signalEv>
    }
    80004f50:	01813083          	ld	ra,24(sp)
    80004f54:	01013403          	ld	s0,16(sp)
    80004f58:	00813483          	ld	s1,8(sp)
    80004f5c:	00013903          	ld	s2,0(sp)
    80004f60:	02010113          	addi	sp,sp,32
    80004f64:	00008067          	ret

0000000080004f68 <_ZN6BufferC1Ei>:
#include "bounded_buffer.hpp"


Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004f68:	fe010113          	addi	sp,sp,-32
    80004f6c:	00113c23          	sd	ra,24(sp)
    80004f70:	00813823          	sd	s0,16(sp)
    80004f74:	00913423          	sd	s1,8(sp)
    80004f78:	01213023          	sd	s2,0(sp)
    80004f7c:	02010413          	addi	s0,sp,32
    80004f80:	00050493          	mv	s1,a0
    80004f84:	00058913          	mv	s2,a1
    80004f88:	0015879b          	addiw	a5,a1,1
    80004f8c:	0007851b          	sext.w	a0,a5
    80004f90:	00f4a023          	sw	a5,0(s1)
    80004f94:	0004a823          	sw	zero,16(s1)
    80004f98:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004f9c:	00251513          	slli	a0,a0,0x2
    80004fa0:	ffffc097          	auipc	ra,0xffffc
    80004fa4:	2b8080e7          	jalr	696(ra) # 80001258 <_Z9mem_allocm>
    80004fa8:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80004fac:	00000593          	li	a1,0
    80004fb0:	02048513          	addi	a0,s1,32
    80004fb4:	ffffc097          	auipc	ra,0xffffc
    80004fb8:	454080e7          	jalr	1108(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&spaceAvailable, _cap);
    80004fbc:	00090593          	mv	a1,s2
    80004fc0:	01848513          	addi	a0,s1,24
    80004fc4:	ffffc097          	auipc	ra,0xffffc
    80004fc8:	444080e7          	jalr	1092(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&mutexHead, 1);
    80004fcc:	00100593          	li	a1,1
    80004fd0:	02848513          	addi	a0,s1,40
    80004fd4:	ffffc097          	auipc	ra,0xffffc
    80004fd8:	434080e7          	jalr	1076(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&mutexTail, 1);
    80004fdc:	00100593          	li	a1,1
    80004fe0:	03048513          	addi	a0,s1,48
    80004fe4:	ffffc097          	auipc	ra,0xffffc
    80004fe8:	424080e7          	jalr	1060(ra) # 80001408 <_Z8sem_openPP3Semj>
}
    80004fec:	01813083          	ld	ra,24(sp)
    80004ff0:	01013403          	ld	s0,16(sp)
    80004ff4:	00813483          	ld	s1,8(sp)
    80004ff8:	00013903          	ld	s2,0(sp)
    80004ffc:	02010113          	addi	sp,sp,32
    80005000:	00008067          	ret

0000000080005004 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80005004:	fe010113          	addi	sp,sp,-32
    80005008:	00113c23          	sd	ra,24(sp)
    8000500c:	00813823          	sd	s0,16(sp)
    80005010:	00913423          	sd	s1,8(sp)
    80005014:	01213023          	sd	s2,0(sp)
    80005018:	02010413          	addi	s0,sp,32
    8000501c:	00050493          	mv	s1,a0
    80005020:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80005024:	01853503          	ld	a0,24(a0)
    80005028:	ffffc097          	auipc	ra,0xffffc
    8000502c:	47c080e7          	jalr	1148(ra) # 800014a4 <_Z8sem_waitP3Sem>

    sem_wait(mutexTail);
    80005030:	0304b503          	ld	a0,48(s1)
    80005034:	ffffc097          	auipc	ra,0xffffc
    80005038:	470080e7          	jalr	1136(ra) # 800014a4 <_Z8sem_waitP3Sem>
    buffer[tail] = val;
    8000503c:	0084b783          	ld	a5,8(s1)
    80005040:	0144a703          	lw	a4,20(s1)
    80005044:	00271713          	slli	a4,a4,0x2
    80005048:	00e787b3          	add	a5,a5,a4
    8000504c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005050:	0144a783          	lw	a5,20(s1)
    80005054:	0017879b          	addiw	a5,a5,1
    80005058:	0004a703          	lw	a4,0(s1)
    8000505c:	02e7e7bb          	remw	a5,a5,a4
    80005060:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80005064:	0304b503          	ld	a0,48(s1)
    80005068:	ffffc097          	auipc	ra,0xffffc
    8000506c:	488080e7          	jalr	1160(ra) # 800014f0 <_Z10sem_signalP3Sem>

    sem_signal(itemAvailable);
    80005070:	0204b503          	ld	a0,32(s1)
    80005074:	ffffc097          	auipc	ra,0xffffc
    80005078:	47c080e7          	jalr	1148(ra) # 800014f0 <_Z10sem_signalP3Sem>

}
    8000507c:	01813083          	ld	ra,24(sp)
    80005080:	01013403          	ld	s0,16(sp)
    80005084:	00813483          	ld	s1,8(sp)
    80005088:	00013903          	ld	s2,0(sp)
    8000508c:	02010113          	addi	sp,sp,32
    80005090:	00008067          	ret

0000000080005094 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80005094:	fe010113          	addi	sp,sp,-32
    80005098:	00113c23          	sd	ra,24(sp)
    8000509c:	00813823          	sd	s0,16(sp)
    800050a0:	00913423          	sd	s1,8(sp)
    800050a4:	01213023          	sd	s2,0(sp)
    800050a8:	02010413          	addi	s0,sp,32
    800050ac:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800050b0:	02053503          	ld	a0,32(a0)
    800050b4:	ffffc097          	auipc	ra,0xffffc
    800050b8:	3f0080e7          	jalr	1008(ra) # 800014a4 <_Z8sem_waitP3Sem>

    sem_wait(mutexHead);
    800050bc:	0284b503          	ld	a0,40(s1)
    800050c0:	ffffc097          	auipc	ra,0xffffc
    800050c4:	3e4080e7          	jalr	996(ra) # 800014a4 <_Z8sem_waitP3Sem>

    int ret = buffer[head];
    800050c8:	0084b703          	ld	a4,8(s1)
    800050cc:	0104a783          	lw	a5,16(s1)
    800050d0:	00279693          	slli	a3,a5,0x2
    800050d4:	00d70733          	add	a4,a4,a3
    800050d8:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800050dc:	0017879b          	addiw	a5,a5,1
    800050e0:	0004a703          	lw	a4,0(s1)
    800050e4:	02e7e7bb          	remw	a5,a5,a4
    800050e8:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800050ec:	0284b503          	ld	a0,40(s1)
    800050f0:	ffffc097          	auipc	ra,0xffffc
    800050f4:	400080e7          	jalr	1024(ra) # 800014f0 <_Z10sem_signalP3Sem>

    sem_signal(spaceAvailable);
    800050f8:	0184b503          	ld	a0,24(s1)
    800050fc:	ffffc097          	auipc	ra,0xffffc
    80005100:	3f4080e7          	jalr	1012(ra) # 800014f0 <_Z10sem_signalP3Sem>

    return ret;
}
    80005104:	00090513          	mv	a0,s2
    80005108:	01813083          	ld	ra,24(sp)
    8000510c:	01013403          	ld	s0,16(sp)
    80005110:	00813483          	ld	s1,8(sp)
    80005114:	00013903          	ld	s2,0(sp)
    80005118:	02010113          	addi	sp,sp,32
    8000511c:	00008067          	ret

0000000080005120 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80005120:	fe010113          	addi	sp,sp,-32
    80005124:	00113c23          	sd	ra,24(sp)
    80005128:	00813823          	sd	s0,16(sp)
    8000512c:	00913423          	sd	s1,8(sp)
    80005130:	01213023          	sd	s2,0(sp)
    80005134:	02010413          	addi	s0,sp,32
    80005138:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    8000513c:	02853503          	ld	a0,40(a0)
    80005140:	ffffc097          	auipc	ra,0xffffc
    80005144:	364080e7          	jalr	868(ra) # 800014a4 <_Z8sem_waitP3Sem>
    sem_wait(mutexTail);
    80005148:	0304b503          	ld	a0,48(s1)
    8000514c:	ffffc097          	auipc	ra,0xffffc
    80005150:	358080e7          	jalr	856(ra) # 800014a4 <_Z8sem_waitP3Sem>

    if (tail >= head) {
    80005154:	0144a783          	lw	a5,20(s1)
    80005158:	0104a903          	lw	s2,16(s1)
    8000515c:	0327ce63          	blt	a5,s2,80005198 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80005160:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80005164:	0304b503          	ld	a0,48(s1)
    80005168:	ffffc097          	auipc	ra,0xffffc
    8000516c:	388080e7          	jalr	904(ra) # 800014f0 <_Z10sem_signalP3Sem>
    sem_signal(mutexHead);
    80005170:	0284b503          	ld	a0,40(s1)
    80005174:	ffffc097          	auipc	ra,0xffffc
    80005178:	37c080e7          	jalr	892(ra) # 800014f0 <_Z10sem_signalP3Sem>

    return ret;
}
    8000517c:	00090513          	mv	a0,s2
    80005180:	01813083          	ld	ra,24(sp)
    80005184:	01013403          	ld	s0,16(sp)
    80005188:	00813483          	ld	s1,8(sp)
    8000518c:	00013903          	ld	s2,0(sp)
    80005190:	02010113          	addi	sp,sp,32
    80005194:	00008067          	ret
        ret = cap - head + tail;
    80005198:	0004a703          	lw	a4,0(s1)
    8000519c:	4127093b          	subw	s2,a4,s2
    800051a0:	00f9093b          	addw	s2,s2,a5
    800051a4:	fc1ff06f          	j	80005164 <_ZN6Buffer6getCntEv+0x44>

00000000800051a8 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    800051a8:	fe010113          	addi	sp,sp,-32
    800051ac:	00113c23          	sd	ra,24(sp)
    800051b0:	00813823          	sd	s0,16(sp)
    800051b4:	00913423          	sd	s1,8(sp)
    800051b8:	02010413          	addi	s0,sp,32
    800051bc:	00050493          	mv	s1,a0
    putc('\n');
    800051c0:	00a00513          	li	a0,10
    800051c4:	ffffc097          	auipc	ra,0xffffc
    800051c8:	4a8080e7          	jalr	1192(ra) # 8000166c <_Z4putcc>
    printString("Buffer deleted!\n");
    800051cc:	00005517          	auipc	a0,0x5
    800051d0:	14450513          	addi	a0,a0,324 # 8000a310 <CONSOLE_STATUS+0x300>
    800051d4:	00001097          	auipc	ra,0x1
    800051d8:	f18080e7          	jalr	-232(ra) # 800060ec <_Z11printStringPKc>
    while (getCnt() > 0) {
    800051dc:	00048513          	mv	a0,s1
    800051e0:	00000097          	auipc	ra,0x0
    800051e4:	f40080e7          	jalr	-192(ra) # 80005120 <_ZN6Buffer6getCntEv>
    800051e8:	02a05c63          	blez	a0,80005220 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    800051ec:	0084b783          	ld	a5,8(s1)
    800051f0:	0104a703          	lw	a4,16(s1)
    800051f4:	00271713          	slli	a4,a4,0x2
    800051f8:	00e787b3          	add	a5,a5,a4
        putc(ch);
    800051fc:	0007c503          	lbu	a0,0(a5)
    80005200:	ffffc097          	auipc	ra,0xffffc
    80005204:	46c080e7          	jalr	1132(ra) # 8000166c <_Z4putcc>
        head = (head + 1) % cap;
    80005208:	0104a783          	lw	a5,16(s1)
    8000520c:	0017879b          	addiw	a5,a5,1
    80005210:	0004a703          	lw	a4,0(s1)
    80005214:	02e7e7bb          	remw	a5,a5,a4
    80005218:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    8000521c:	fc1ff06f          	j	800051dc <_ZN6BufferD1Ev+0x34>
    putc('!');
    80005220:	02100513          	li	a0,33
    80005224:	ffffc097          	auipc	ra,0xffffc
    80005228:	448080e7          	jalr	1096(ra) # 8000166c <_Z4putcc>
    putc('\n');
    8000522c:	00a00513          	li	a0,10
    80005230:	ffffc097          	auipc	ra,0xffffc
    80005234:	43c080e7          	jalr	1084(ra) # 8000166c <_Z4putcc>
    mem_free(buffer);
    80005238:	0084b503          	ld	a0,8(s1)
    8000523c:	ffffc097          	auipc	ra,0xffffc
    80005240:	070080e7          	jalr	112(ra) # 800012ac <_Z8mem_freePv>
    sem_close(itemAvailable);
    80005244:	0204b503          	ld	a0,32(s1)
    80005248:	ffffc097          	auipc	ra,0xffffc
    8000524c:	210080e7          	jalr	528(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(spaceAvailable);
    80005250:	0184b503          	ld	a0,24(s1)
    80005254:	ffffc097          	auipc	ra,0xffffc
    80005258:	204080e7          	jalr	516(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(mutexTail);
    8000525c:	0304b503          	ld	a0,48(s1)
    80005260:	ffffc097          	auipc	ra,0xffffc
    80005264:	1f8080e7          	jalr	504(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(mutexHead);
    80005268:	0284b503          	ld	a0,40(s1)
    8000526c:	ffffc097          	auipc	ra,0xffffc
    80005270:	1ec080e7          	jalr	492(ra) # 80001458 <_Z9sem_closeP3Sem>
}
    80005274:	01813083          	ld	ra,24(sp)
    80005278:	01013403          	ld	s0,16(sp)
    8000527c:	00813483          	ld	s1,8(sp)
    80005280:	02010113          	addi	sp,sp,32
    80005284:	00008067          	ret

0000000080005288 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005288:	fe010113          	addi	sp,sp,-32
    8000528c:	00113c23          	sd	ra,24(sp)
    80005290:	00813823          	sd	s0,16(sp)
    80005294:	00913423          	sd	s1,8(sp)
    80005298:	01213023          	sd	s2,0(sp)
    8000529c:	02010413          	addi	s0,sp,32
    800052a0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800052a4:	00100793          	li	a5,1
    800052a8:	02a7f863          	bgeu	a5,a0,800052d8 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800052ac:	00a00793          	li	a5,10
    800052b0:	02f577b3          	remu	a5,a0,a5
    800052b4:	02078e63          	beqz	a5,800052f0 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800052b8:	fff48513          	addi	a0,s1,-1
    800052bc:	00000097          	auipc	ra,0x0
    800052c0:	fcc080e7          	jalr	-52(ra) # 80005288 <_ZL9fibonaccim>
    800052c4:	00050913          	mv	s2,a0
    800052c8:	ffe48513          	addi	a0,s1,-2
    800052cc:	00000097          	auipc	ra,0x0
    800052d0:	fbc080e7          	jalr	-68(ra) # 80005288 <_ZL9fibonaccim>
    800052d4:	00a90533          	add	a0,s2,a0
}
    800052d8:	01813083          	ld	ra,24(sp)
    800052dc:	01013403          	ld	s0,16(sp)
    800052e0:	00813483          	ld	s1,8(sp)
    800052e4:	00013903          	ld	s2,0(sp)
    800052e8:	02010113          	addi	sp,sp,32
    800052ec:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800052f0:	ffffc097          	auipc	ra,0xffffc
    800052f4:	0dc080e7          	jalr	220(ra) # 800013cc <_Z15thread_dispatchv>
    800052f8:	fc1ff06f          	j	800052b8 <_ZL9fibonaccim+0x30>

00000000800052fc <_ZL11workerBodyDPv>:
    printString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800052fc:	fe010113          	addi	sp,sp,-32
    80005300:	00113c23          	sd	ra,24(sp)
    80005304:	00813823          	sd	s0,16(sp)
    80005308:	00913423          	sd	s1,8(sp)
    8000530c:	01213023          	sd	s2,0(sp)
    80005310:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005314:	00a00493          	li	s1,10
    80005318:	0400006f          	j	80005358 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000531c:	00005517          	auipc	a0,0x5
    80005320:	f5c50513          	addi	a0,a0,-164 # 8000a278 <CONSOLE_STATUS+0x268>
    80005324:	00001097          	auipc	ra,0x1
    80005328:	dc8080e7          	jalr	-568(ra) # 800060ec <_Z11printStringPKc>
    8000532c:	00000613          	li	a2,0
    80005330:	00a00593          	li	a1,10
    80005334:	00048513          	mv	a0,s1
    80005338:	00001097          	auipc	ra,0x1
    8000533c:	f64080e7          	jalr	-156(ra) # 8000629c <_Z8printIntiii>
    80005340:	00005517          	auipc	a0,0x5
    80005344:	13850513          	addi	a0,a0,312 # 8000a478 <CONSOLE_STATUS+0x468>
    80005348:	00001097          	auipc	ra,0x1
    8000534c:	da4080e7          	jalr	-604(ra) # 800060ec <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005350:	0014849b          	addiw	s1,s1,1
    80005354:	0ff4f493          	andi	s1,s1,255
    80005358:	00c00793          	li	a5,12
    8000535c:	fc97f0e3          	bgeu	a5,s1,8000531c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005360:	00005517          	auipc	a0,0x5
    80005364:	f2050513          	addi	a0,a0,-224 # 8000a280 <CONSOLE_STATUS+0x270>
    80005368:	00001097          	auipc	ra,0x1
    8000536c:	d84080e7          	jalr	-636(ra) # 800060ec <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005370:	00500313          	li	t1,5
    thread_dispatch();
    80005374:	ffffc097          	auipc	ra,0xffffc
    80005378:	058080e7          	jalr	88(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    8000537c:	01000513          	li	a0,16
    80005380:	00000097          	auipc	ra,0x0
    80005384:	f08080e7          	jalr	-248(ra) # 80005288 <_ZL9fibonaccim>
    80005388:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    8000538c:	00005517          	auipc	a0,0x5
    80005390:	f0450513          	addi	a0,a0,-252 # 8000a290 <CONSOLE_STATUS+0x280>
    80005394:	00001097          	auipc	ra,0x1
    80005398:	d58080e7          	jalr	-680(ra) # 800060ec <_Z11printStringPKc>
    8000539c:	00000613          	li	a2,0
    800053a0:	00a00593          	li	a1,10
    800053a4:	0009051b          	sext.w	a0,s2
    800053a8:	00001097          	auipc	ra,0x1
    800053ac:	ef4080e7          	jalr	-268(ra) # 8000629c <_Z8printIntiii>
    800053b0:	00005517          	auipc	a0,0x5
    800053b4:	0c850513          	addi	a0,a0,200 # 8000a478 <CONSOLE_STATUS+0x468>
    800053b8:	00001097          	auipc	ra,0x1
    800053bc:	d34080e7          	jalr	-716(ra) # 800060ec <_Z11printStringPKc>
    800053c0:	0400006f          	j	80005400 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800053c4:	00005517          	auipc	a0,0x5
    800053c8:	eb450513          	addi	a0,a0,-332 # 8000a278 <CONSOLE_STATUS+0x268>
    800053cc:	00001097          	auipc	ra,0x1
    800053d0:	d20080e7          	jalr	-736(ra) # 800060ec <_Z11printStringPKc>
    800053d4:	00000613          	li	a2,0
    800053d8:	00a00593          	li	a1,10
    800053dc:	00048513          	mv	a0,s1
    800053e0:	00001097          	auipc	ra,0x1
    800053e4:	ebc080e7          	jalr	-324(ra) # 8000629c <_Z8printIntiii>
    800053e8:	00005517          	auipc	a0,0x5
    800053ec:	09050513          	addi	a0,a0,144 # 8000a478 <CONSOLE_STATUS+0x468>
    800053f0:	00001097          	auipc	ra,0x1
    800053f4:	cfc080e7          	jalr	-772(ra) # 800060ec <_Z11printStringPKc>
    for (; i < 16; i++) {
    800053f8:	0014849b          	addiw	s1,s1,1
    800053fc:	0ff4f493          	andi	s1,s1,255
    80005400:	00f00793          	li	a5,15
    80005404:	fc97f0e3          	bgeu	a5,s1,800053c4 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005408:	00005517          	auipc	a0,0x5
    8000540c:	e9850513          	addi	a0,a0,-360 # 8000a2a0 <CONSOLE_STATUS+0x290>
    80005410:	00001097          	auipc	ra,0x1
    80005414:	cdc080e7          	jalr	-804(ra) # 800060ec <_Z11printStringPKc>
    finishedD = true;
    80005418:	00100793          	li	a5,1
    8000541c:	00008717          	auipc	a4,0x8
    80005420:	b4f70a23          	sb	a5,-1196(a4) # 8000cf70 <_ZL9finishedD>
    thread_dispatch();
    80005424:	ffffc097          	auipc	ra,0xffffc
    80005428:	fa8080e7          	jalr	-88(ra) # 800013cc <_Z15thread_dispatchv>
}
    8000542c:	01813083          	ld	ra,24(sp)
    80005430:	01013403          	ld	s0,16(sp)
    80005434:	00813483          	ld	s1,8(sp)
    80005438:	00013903          	ld	s2,0(sp)
    8000543c:	02010113          	addi	sp,sp,32
    80005440:	00008067          	ret

0000000080005444 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005444:	fe010113          	addi	sp,sp,-32
    80005448:	00113c23          	sd	ra,24(sp)
    8000544c:	00813823          	sd	s0,16(sp)
    80005450:	00913423          	sd	s1,8(sp)
    80005454:	01213023          	sd	s2,0(sp)
    80005458:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000545c:	00000493          	li	s1,0
    80005460:	0400006f          	j	800054a0 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005464:	00005517          	auipc	a0,0x5
    80005468:	de450513          	addi	a0,a0,-540 # 8000a248 <CONSOLE_STATUS+0x238>
    8000546c:	00001097          	auipc	ra,0x1
    80005470:	c80080e7          	jalr	-896(ra) # 800060ec <_Z11printStringPKc>
    80005474:	00000613          	li	a2,0
    80005478:	00a00593          	li	a1,10
    8000547c:	00048513          	mv	a0,s1
    80005480:	00001097          	auipc	ra,0x1
    80005484:	e1c080e7          	jalr	-484(ra) # 8000629c <_Z8printIntiii>
    80005488:	00005517          	auipc	a0,0x5
    8000548c:	ff050513          	addi	a0,a0,-16 # 8000a478 <CONSOLE_STATUS+0x468>
    80005490:	00001097          	auipc	ra,0x1
    80005494:	c5c080e7          	jalr	-932(ra) # 800060ec <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005498:	0014849b          	addiw	s1,s1,1
    8000549c:	0ff4f493          	andi	s1,s1,255
    800054a0:	00200793          	li	a5,2
    800054a4:	fc97f0e3          	bgeu	a5,s1,80005464 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800054a8:	00005517          	auipc	a0,0x5
    800054ac:	da850513          	addi	a0,a0,-600 # 8000a250 <CONSOLE_STATUS+0x240>
    800054b0:	00001097          	auipc	ra,0x1
    800054b4:	c3c080e7          	jalr	-964(ra) # 800060ec <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800054b8:	00700313          	li	t1,7
    thread_dispatch();
    800054bc:	ffffc097          	auipc	ra,0xffffc
    800054c0:	f10080e7          	jalr	-240(ra) # 800013cc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800054c4:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800054c8:	00005517          	auipc	a0,0x5
    800054cc:	d9850513          	addi	a0,a0,-616 # 8000a260 <CONSOLE_STATUS+0x250>
    800054d0:	00001097          	auipc	ra,0x1
    800054d4:	c1c080e7          	jalr	-996(ra) # 800060ec <_Z11printStringPKc>
    800054d8:	00000613          	li	a2,0
    800054dc:	00a00593          	li	a1,10
    800054e0:	0009051b          	sext.w	a0,s2
    800054e4:	00001097          	auipc	ra,0x1
    800054e8:	db8080e7          	jalr	-584(ra) # 8000629c <_Z8printIntiii>
    800054ec:	00005517          	auipc	a0,0x5
    800054f0:	f8c50513          	addi	a0,a0,-116 # 8000a478 <CONSOLE_STATUS+0x468>
    800054f4:	00001097          	auipc	ra,0x1
    800054f8:	bf8080e7          	jalr	-1032(ra) # 800060ec <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800054fc:	00c00513          	li	a0,12
    80005500:	00000097          	auipc	ra,0x0
    80005504:	d88080e7          	jalr	-632(ra) # 80005288 <_ZL9fibonaccim>
    80005508:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    8000550c:	00005517          	auipc	a0,0x5
    80005510:	d5c50513          	addi	a0,a0,-676 # 8000a268 <CONSOLE_STATUS+0x258>
    80005514:	00001097          	auipc	ra,0x1
    80005518:	bd8080e7          	jalr	-1064(ra) # 800060ec <_Z11printStringPKc>
    8000551c:	00000613          	li	a2,0
    80005520:	00a00593          	li	a1,10
    80005524:	0009051b          	sext.w	a0,s2
    80005528:	00001097          	auipc	ra,0x1
    8000552c:	d74080e7          	jalr	-652(ra) # 8000629c <_Z8printIntiii>
    80005530:	00005517          	auipc	a0,0x5
    80005534:	f4850513          	addi	a0,a0,-184 # 8000a478 <CONSOLE_STATUS+0x468>
    80005538:	00001097          	auipc	ra,0x1
    8000553c:	bb4080e7          	jalr	-1100(ra) # 800060ec <_Z11printStringPKc>
    80005540:	0400006f          	j	80005580 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005544:	00005517          	auipc	a0,0x5
    80005548:	d0450513          	addi	a0,a0,-764 # 8000a248 <CONSOLE_STATUS+0x238>
    8000554c:	00001097          	auipc	ra,0x1
    80005550:	ba0080e7          	jalr	-1120(ra) # 800060ec <_Z11printStringPKc>
    80005554:	00000613          	li	a2,0
    80005558:	00a00593          	li	a1,10
    8000555c:	00048513          	mv	a0,s1
    80005560:	00001097          	auipc	ra,0x1
    80005564:	d3c080e7          	jalr	-708(ra) # 8000629c <_Z8printIntiii>
    80005568:	00005517          	auipc	a0,0x5
    8000556c:	f1050513          	addi	a0,a0,-240 # 8000a478 <CONSOLE_STATUS+0x468>
    80005570:	00001097          	auipc	ra,0x1
    80005574:	b7c080e7          	jalr	-1156(ra) # 800060ec <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005578:	0014849b          	addiw	s1,s1,1
    8000557c:	0ff4f493          	andi	s1,s1,255
    80005580:	00500793          	li	a5,5
    80005584:	fc97f0e3          	bgeu	a5,s1,80005544 <_ZL11workerBodyCPv+0x100>
    printString("C finished!\n");
    80005588:	00005517          	auipc	a0,0x5
    8000558c:	da050513          	addi	a0,a0,-608 # 8000a328 <CONSOLE_STATUS+0x318>
    80005590:	00001097          	auipc	ra,0x1
    80005594:	b5c080e7          	jalr	-1188(ra) # 800060ec <_Z11printStringPKc>
    finishedC = true;
    80005598:	00100793          	li	a5,1
    8000559c:	00008717          	auipc	a4,0x8
    800055a0:	9cf70aa3          	sb	a5,-1579(a4) # 8000cf71 <_ZL9finishedC>
    thread_dispatch();
    800055a4:	ffffc097          	auipc	ra,0xffffc
    800055a8:	e28080e7          	jalr	-472(ra) # 800013cc <_Z15thread_dispatchv>
}
    800055ac:	01813083          	ld	ra,24(sp)
    800055b0:	01013403          	ld	s0,16(sp)
    800055b4:	00813483          	ld	s1,8(sp)
    800055b8:	00013903          	ld	s2,0(sp)
    800055bc:	02010113          	addi	sp,sp,32
    800055c0:	00008067          	ret

00000000800055c4 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800055c4:	fe010113          	addi	sp,sp,-32
    800055c8:	00113c23          	sd	ra,24(sp)
    800055cc:	00813823          	sd	s0,16(sp)
    800055d0:	00913423          	sd	s1,8(sp)
    800055d4:	01213023          	sd	s2,0(sp)
    800055d8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800055dc:	00000913          	li	s2,0
    800055e0:	0380006f          	j	80005618 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    800055e4:	ffffc097          	auipc	ra,0xffffc
    800055e8:	de8080e7          	jalr	-536(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800055ec:	00148493          	addi	s1,s1,1
    800055f0:	000027b7          	lui	a5,0x2
    800055f4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800055f8:	0097ee63          	bltu	a5,s1,80005614 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800055fc:	00000713          	li	a4,0
    80005600:	000077b7          	lui	a5,0x7
    80005604:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005608:	fce7eee3          	bltu	a5,a4,800055e4 <_ZL11workerBodyBPv+0x20>
    8000560c:	00170713          	addi	a4,a4,1
    80005610:	ff1ff06f          	j	80005600 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80005614:	00190913          	addi	s2,s2,1
    80005618:	00f00793          	li	a5,15
    8000561c:	0527e063          	bltu	a5,s2,8000565c <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80005620:	00005517          	auipc	a0,0x5
    80005624:	c1050513          	addi	a0,a0,-1008 # 8000a230 <CONSOLE_STATUS+0x220>
    80005628:	00001097          	auipc	ra,0x1
    8000562c:	ac4080e7          	jalr	-1340(ra) # 800060ec <_Z11printStringPKc>
    80005630:	00000613          	li	a2,0
    80005634:	00a00593          	li	a1,10
    80005638:	0009051b          	sext.w	a0,s2
    8000563c:	00001097          	auipc	ra,0x1
    80005640:	c60080e7          	jalr	-928(ra) # 8000629c <_Z8printIntiii>
    80005644:	00005517          	auipc	a0,0x5
    80005648:	e3450513          	addi	a0,a0,-460 # 8000a478 <CONSOLE_STATUS+0x468>
    8000564c:	00001097          	auipc	ra,0x1
    80005650:	aa0080e7          	jalr	-1376(ra) # 800060ec <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005654:	00000493          	li	s1,0
    80005658:	f99ff06f          	j	800055f0 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    8000565c:	00005517          	auipc	a0,0x5
    80005660:	bdc50513          	addi	a0,a0,-1060 # 8000a238 <CONSOLE_STATUS+0x228>
    80005664:	00001097          	auipc	ra,0x1
    80005668:	a88080e7          	jalr	-1400(ra) # 800060ec <_Z11printStringPKc>
    finishedB = true;
    8000566c:	00100793          	li	a5,1
    80005670:	00008717          	auipc	a4,0x8
    80005674:	90f70123          	sb	a5,-1790(a4) # 8000cf72 <_ZL9finishedB>
    thread_dispatch();
    80005678:	ffffc097          	auipc	ra,0xffffc
    8000567c:	d54080e7          	jalr	-684(ra) # 800013cc <_Z15thread_dispatchv>
}
    80005680:	01813083          	ld	ra,24(sp)
    80005684:	01013403          	ld	s0,16(sp)
    80005688:	00813483          	ld	s1,8(sp)
    8000568c:	00013903          	ld	s2,0(sp)
    80005690:	02010113          	addi	sp,sp,32
    80005694:	00008067          	ret

0000000080005698 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005698:	fe010113          	addi	sp,sp,-32
    8000569c:	00113c23          	sd	ra,24(sp)
    800056a0:	00813823          	sd	s0,16(sp)
    800056a4:	00913423          	sd	s1,8(sp)
    800056a8:	01213023          	sd	s2,0(sp)
    800056ac:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800056b0:	00000913          	li	s2,0
    800056b4:	0380006f          	j	800056ec <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800056b8:	ffffc097          	auipc	ra,0xffffc
    800056bc:	d14080e7          	jalr	-748(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800056c0:	00148493          	addi	s1,s1,1
    800056c4:	000027b7          	lui	a5,0x2
    800056c8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800056cc:	0097ee63          	bltu	a5,s1,800056e8 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800056d0:	00000713          	li	a4,0
    800056d4:	000077b7          	lui	a5,0x7
    800056d8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800056dc:	fce7eee3          	bltu	a5,a4,800056b8 <_ZL11workerBodyAPv+0x20>
    800056e0:	00170713          	addi	a4,a4,1
    800056e4:	ff1ff06f          	j	800056d4 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800056e8:	00190913          	addi	s2,s2,1
    800056ec:	00900793          	li	a5,9
    800056f0:	0527e063          	bltu	a5,s2,80005730 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800056f4:	00005517          	auipc	a0,0x5
    800056f8:	b2450513          	addi	a0,a0,-1244 # 8000a218 <CONSOLE_STATUS+0x208>
    800056fc:	00001097          	auipc	ra,0x1
    80005700:	9f0080e7          	jalr	-1552(ra) # 800060ec <_Z11printStringPKc>
    80005704:	00000613          	li	a2,0
    80005708:	00a00593          	li	a1,10
    8000570c:	0009051b          	sext.w	a0,s2
    80005710:	00001097          	auipc	ra,0x1
    80005714:	b8c080e7          	jalr	-1140(ra) # 8000629c <_Z8printIntiii>
    80005718:	00005517          	auipc	a0,0x5
    8000571c:	d6050513          	addi	a0,a0,-672 # 8000a478 <CONSOLE_STATUS+0x468>
    80005720:	00001097          	auipc	ra,0x1
    80005724:	9cc080e7          	jalr	-1588(ra) # 800060ec <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005728:	00000493          	li	s1,0
    8000572c:	f99ff06f          	j	800056c4 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80005730:	00005517          	auipc	a0,0x5
    80005734:	af050513          	addi	a0,a0,-1296 # 8000a220 <CONSOLE_STATUS+0x210>
    80005738:	00001097          	auipc	ra,0x1
    8000573c:	9b4080e7          	jalr	-1612(ra) # 800060ec <_Z11printStringPKc>
    finishedA = true;
    80005740:	00100793          	li	a5,1
    80005744:	00008717          	auipc	a4,0x8
    80005748:	82f707a3          	sb	a5,-2001(a4) # 8000cf73 <_ZL9finishedA>
}
    8000574c:	01813083          	ld	ra,24(sp)
    80005750:	01013403          	ld	s0,16(sp)
    80005754:	00813483          	ld	s1,8(sp)
    80005758:	00013903          	ld	s2,0(sp)
    8000575c:	02010113          	addi	sp,sp,32
    80005760:	00008067          	ret

0000000080005764 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80005764:	fd010113          	addi	sp,sp,-48
    80005768:	02113423          	sd	ra,40(sp)
    8000576c:	02813023          	sd	s0,32(sp)
    80005770:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005774:	00000613          	li	a2,0
    80005778:	00000597          	auipc	a1,0x0
    8000577c:	f2058593          	addi	a1,a1,-224 # 80005698 <_ZL11workerBodyAPv>
    80005780:	fd040513          	addi	a0,s0,-48
    80005784:	ffffc097          	auipc	ra,0xffffc
    80005788:	b74080e7          	jalr	-1164(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    8000578c:	00005517          	auipc	a0,0x5
    80005790:	b2450513          	addi	a0,a0,-1244 # 8000a2b0 <CONSOLE_STATUS+0x2a0>
    80005794:	00001097          	auipc	ra,0x1
    80005798:	958080e7          	jalr	-1704(ra) # 800060ec <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    8000579c:	00000613          	li	a2,0
    800057a0:	00000597          	auipc	a1,0x0
    800057a4:	e2458593          	addi	a1,a1,-476 # 800055c4 <_ZL11workerBodyBPv>
    800057a8:	fd840513          	addi	a0,s0,-40
    800057ac:	ffffc097          	auipc	ra,0xffffc
    800057b0:	b4c080e7          	jalr	-1204(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    800057b4:	00005517          	auipc	a0,0x5
    800057b8:	b1450513          	addi	a0,a0,-1260 # 8000a2c8 <CONSOLE_STATUS+0x2b8>
    800057bc:	00001097          	auipc	ra,0x1
    800057c0:	930080e7          	jalr	-1744(ra) # 800060ec <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800057c4:	00000613          	li	a2,0
    800057c8:	00000597          	auipc	a1,0x0
    800057cc:	c7c58593          	addi	a1,a1,-900 # 80005444 <_ZL11workerBodyCPv>
    800057d0:	fe040513          	addi	a0,s0,-32
    800057d4:	ffffc097          	auipc	ra,0xffffc
    800057d8:	b24080e7          	jalr	-1244(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    800057dc:	00005517          	auipc	a0,0x5
    800057e0:	b0450513          	addi	a0,a0,-1276 # 8000a2e0 <CONSOLE_STATUS+0x2d0>
    800057e4:	00001097          	auipc	ra,0x1
    800057e8:	908080e7          	jalr	-1784(ra) # 800060ec <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800057ec:	00000613          	li	a2,0
    800057f0:	00000597          	auipc	a1,0x0
    800057f4:	b0c58593          	addi	a1,a1,-1268 # 800052fc <_ZL11workerBodyDPv>
    800057f8:	fe840513          	addi	a0,s0,-24
    800057fc:	ffffc097          	auipc	ra,0xffffc
    80005800:	afc080e7          	jalr	-1284(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80005804:	00005517          	auipc	a0,0x5
    80005808:	af450513          	addi	a0,a0,-1292 # 8000a2f8 <CONSOLE_STATUS+0x2e8>
    8000580c:	00001097          	auipc	ra,0x1
    80005810:	8e0080e7          	jalr	-1824(ra) # 800060ec <_Z11printStringPKc>
    80005814:	00c0006f          	j	80005820 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005818:	ffffc097          	auipc	ra,0xffffc
    8000581c:	bb4080e7          	jalr	-1100(ra) # 800013cc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005820:	00007797          	auipc	a5,0x7
    80005824:	7537c783          	lbu	a5,1875(a5) # 8000cf73 <_ZL9finishedA>
    80005828:	fe0788e3          	beqz	a5,80005818 <_Z18Threads_C_API_testv+0xb4>
    8000582c:	00007797          	auipc	a5,0x7
    80005830:	7467c783          	lbu	a5,1862(a5) # 8000cf72 <_ZL9finishedB>
    80005834:	fe0782e3          	beqz	a5,80005818 <_Z18Threads_C_API_testv+0xb4>
    80005838:	00007797          	auipc	a5,0x7
    8000583c:	7397c783          	lbu	a5,1849(a5) # 8000cf71 <_ZL9finishedC>
    80005840:	fc078ce3          	beqz	a5,80005818 <_Z18Threads_C_API_testv+0xb4>
    80005844:	00007797          	auipc	a5,0x7
    80005848:	72c7c783          	lbu	a5,1836(a5) # 8000cf70 <_ZL9finishedD>
    8000584c:	fc0786e3          	beqz	a5,80005818 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80005850:	02813083          	ld	ra,40(sp)
    80005854:	02013403          	ld	s0,32(sp)
    80005858:	03010113          	addi	sp,sp,48
    8000585c:	00008067          	ret

0000000080005860 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80005860:	fd010113          	addi	sp,sp,-48
    80005864:	02113423          	sd	ra,40(sp)
    80005868:	02813023          	sd	s0,32(sp)
    8000586c:	00913c23          	sd	s1,24(sp)
    80005870:	01213823          	sd	s2,16(sp)
    80005874:	01313423          	sd	s3,8(sp)
    80005878:	03010413          	addi	s0,sp,48
    8000587c:	00050993          	mv	s3,a0
    80005880:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80005884:	00000913          	li	s2,0
    80005888:	00c0006f          	j	80005894 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    8000588c:	ffffd097          	auipc	ra,0xffffd
    80005890:	980080e7          	jalr	-1664(ra) # 8000220c <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80005894:	ffffc097          	auipc	ra,0xffffc
    80005898:	d8c080e7          	jalr	-628(ra) # 80001620 <_Z4getcv>
    8000589c:	0005059b          	sext.w	a1,a0
    800058a0:	01b00793          	li	a5,27
    800058a4:	02f58a63          	beq	a1,a5,800058d8 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    800058a8:	0084b503          	ld	a0,8(s1)
    800058ac:	00001097          	auipc	ra,0x1
    800058b0:	c64080e7          	jalr	-924(ra) # 80006510 <_ZN9BufferCPP3putEi>
        i++;
    800058b4:	0019071b          	addiw	a4,s2,1
    800058b8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800058bc:	0004a683          	lw	a3,0(s1)
    800058c0:	0026979b          	slliw	a5,a3,0x2
    800058c4:	00d787bb          	addw	a5,a5,a3
    800058c8:	0017979b          	slliw	a5,a5,0x1
    800058cc:	02f767bb          	remw	a5,a4,a5
    800058d0:	fc0792e3          	bnez	a5,80005894 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    800058d4:	fb9ff06f          	j	8000588c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    800058d8:	00100793          	li	a5,1
    800058dc:	00007717          	auipc	a4,0x7
    800058e0:	68f72e23          	sw	a5,1692(a4) # 8000cf78 <_ZL9threadEnd>
    td->buffer->put('!');
    800058e4:	0209b783          	ld	a5,32(s3)
    800058e8:	02100593          	li	a1,33
    800058ec:	0087b503          	ld	a0,8(a5)
    800058f0:	00001097          	auipc	ra,0x1
    800058f4:	c20080e7          	jalr	-992(ra) # 80006510 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    800058f8:	0104b503          	ld	a0,16(s1)
    800058fc:	ffffd097          	auipc	ra,0xffffd
    80005900:	9d4080e7          	jalr	-1580(ra) # 800022d0 <_ZN9Semaphore6signalEv>
}
    80005904:	02813083          	ld	ra,40(sp)
    80005908:	02013403          	ld	s0,32(sp)
    8000590c:	01813483          	ld	s1,24(sp)
    80005910:	01013903          	ld	s2,16(sp)
    80005914:	00813983          	ld	s3,8(sp)
    80005918:	03010113          	addi	sp,sp,48
    8000591c:	00008067          	ret

0000000080005920 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80005920:	fe010113          	addi	sp,sp,-32
    80005924:	00113c23          	sd	ra,24(sp)
    80005928:	00813823          	sd	s0,16(sp)
    8000592c:	00913423          	sd	s1,8(sp)
    80005930:	01213023          	sd	s2,0(sp)
    80005934:	02010413          	addi	s0,sp,32
    80005938:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000593c:	00000913          	li	s2,0
    80005940:	00c0006f          	j	8000594c <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005944:	ffffd097          	auipc	ra,0xffffd
    80005948:	8c8080e7          	jalr	-1848(ra) # 8000220c <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    8000594c:	00007797          	auipc	a5,0x7
    80005950:	62c7a783          	lw	a5,1580(a5) # 8000cf78 <_ZL9threadEnd>
    80005954:	02079e63          	bnez	a5,80005990 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80005958:	0004a583          	lw	a1,0(s1)
    8000595c:	0305859b          	addiw	a1,a1,48
    80005960:	0084b503          	ld	a0,8(s1)
    80005964:	00001097          	auipc	ra,0x1
    80005968:	bac080e7          	jalr	-1108(ra) # 80006510 <_ZN9BufferCPP3putEi>
        i++;
    8000596c:	0019071b          	addiw	a4,s2,1
    80005970:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005974:	0004a683          	lw	a3,0(s1)
    80005978:	0026979b          	slliw	a5,a3,0x2
    8000597c:	00d787bb          	addw	a5,a5,a3
    80005980:	0017979b          	slliw	a5,a5,0x1
    80005984:	02f767bb          	remw	a5,a4,a5
    80005988:	fc0792e3          	bnez	a5,8000594c <_ZN12ProducerSync8producerEPv+0x2c>
    8000598c:	fb9ff06f          	j	80005944 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80005990:	0104b503          	ld	a0,16(s1)
    80005994:	ffffd097          	auipc	ra,0xffffd
    80005998:	93c080e7          	jalr	-1732(ra) # 800022d0 <_ZN9Semaphore6signalEv>
}
    8000599c:	01813083          	ld	ra,24(sp)
    800059a0:	01013403          	ld	s0,16(sp)
    800059a4:	00813483          	ld	s1,8(sp)
    800059a8:	00013903          	ld	s2,0(sp)
    800059ac:	02010113          	addi	sp,sp,32
    800059b0:	00008067          	ret

00000000800059b4 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    800059b4:	fd010113          	addi	sp,sp,-48
    800059b8:	02113423          	sd	ra,40(sp)
    800059bc:	02813023          	sd	s0,32(sp)
    800059c0:	00913c23          	sd	s1,24(sp)
    800059c4:	01213823          	sd	s2,16(sp)
    800059c8:	01313423          	sd	s3,8(sp)
    800059cc:	01413023          	sd	s4,0(sp)
    800059d0:	03010413          	addi	s0,sp,48
    800059d4:	00050993          	mv	s3,a0
    800059d8:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800059dc:	00000a13          	li	s4,0
    800059e0:	01c0006f          	j	800059fc <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    800059e4:	ffffd097          	auipc	ra,0xffffd
    800059e8:	828080e7          	jalr	-2008(ra) # 8000220c <_ZN6Thread8dispatchEv>
    800059ec:	0500006f          	j	80005a3c <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    800059f0:	00a00513          	li	a0,10
    800059f4:	ffffc097          	auipc	ra,0xffffc
    800059f8:	c78080e7          	jalr	-904(ra) # 8000166c <_Z4putcc>
    while (!threadEnd) {
    800059fc:	00007797          	auipc	a5,0x7
    80005a00:	57c7a783          	lw	a5,1404(a5) # 8000cf78 <_ZL9threadEnd>
    80005a04:	06079263          	bnez	a5,80005a68 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80005a08:	00893503          	ld	a0,8(s2)
    80005a0c:	00001097          	auipc	ra,0x1
    80005a10:	b94080e7          	jalr	-1132(ra) # 800065a0 <_ZN9BufferCPP3getEv>
        i++;
    80005a14:	001a049b          	addiw	s1,s4,1
    80005a18:	00048a1b          	sext.w	s4,s1
        putc(key);
    80005a1c:	0ff57513          	andi	a0,a0,255
    80005a20:	ffffc097          	auipc	ra,0xffffc
    80005a24:	c4c080e7          	jalr	-948(ra) # 8000166c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80005a28:	00092703          	lw	a4,0(s2)
    80005a2c:	0027179b          	slliw	a5,a4,0x2
    80005a30:	00e787bb          	addw	a5,a5,a4
    80005a34:	02f4e7bb          	remw	a5,s1,a5
    80005a38:	fa0786e3          	beqz	a5,800059e4 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80005a3c:	05000793          	li	a5,80
    80005a40:	02f4e4bb          	remw	s1,s1,a5
    80005a44:	fa049ce3          	bnez	s1,800059fc <_ZN12ConsumerSync8consumerEPv+0x48>
    80005a48:	fa9ff06f          	j	800059f0 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80005a4c:	0209b783          	ld	a5,32(s3)
    80005a50:	0087b503          	ld	a0,8(a5)
    80005a54:	00001097          	auipc	ra,0x1
    80005a58:	b4c080e7          	jalr	-1204(ra) # 800065a0 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80005a5c:	0ff57513          	andi	a0,a0,255
    80005a60:	ffffd097          	auipc	ra,0xffffd
    80005a64:	998080e7          	jalr	-1640(ra) # 800023f8 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80005a68:	0209b783          	ld	a5,32(s3)
    80005a6c:	0087b503          	ld	a0,8(a5)
    80005a70:	00001097          	auipc	ra,0x1
    80005a74:	bbc080e7          	jalr	-1092(ra) # 8000662c <_ZN9BufferCPP6getCntEv>
    80005a78:	fca04ae3          	bgtz	a0,80005a4c <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80005a7c:	01093503          	ld	a0,16(s2)
    80005a80:	ffffd097          	auipc	ra,0xffffd
    80005a84:	850080e7          	jalr	-1968(ra) # 800022d0 <_ZN9Semaphore6signalEv>
}
    80005a88:	02813083          	ld	ra,40(sp)
    80005a8c:	02013403          	ld	s0,32(sp)
    80005a90:	01813483          	ld	s1,24(sp)
    80005a94:	01013903          	ld	s2,16(sp)
    80005a98:	00813983          	ld	s3,8(sp)
    80005a9c:	00013a03          	ld	s4,0(sp)
    80005aa0:	03010113          	addi	sp,sp,48
    80005aa4:	00008067          	ret

0000000080005aa8 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80005aa8:	f8010113          	addi	sp,sp,-128
    80005aac:	06113c23          	sd	ra,120(sp)
    80005ab0:	06813823          	sd	s0,112(sp)
    80005ab4:	06913423          	sd	s1,104(sp)
    80005ab8:	07213023          	sd	s2,96(sp)
    80005abc:	05313c23          	sd	s3,88(sp)
    80005ac0:	05413823          	sd	s4,80(sp)
    80005ac4:	05513423          	sd	s5,72(sp)
    80005ac8:	05613023          	sd	s6,64(sp)
    80005acc:	03713c23          	sd	s7,56(sp)
    80005ad0:	03813823          	sd	s8,48(sp)
    80005ad4:	03913423          	sd	s9,40(sp)
    80005ad8:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80005adc:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80005ae0:	00004517          	auipc	a0,0x4
    80005ae4:	65050513          	addi	a0,a0,1616 # 8000a130 <CONSOLE_STATUS+0x120>
    80005ae8:	00000097          	auipc	ra,0x0
    80005aec:	604080e7          	jalr	1540(ra) # 800060ec <_Z11printStringPKc>
    getString(input, 30);
    80005af0:	01e00593          	li	a1,30
    80005af4:	f8040493          	addi	s1,s0,-128
    80005af8:	00048513          	mv	a0,s1
    80005afc:	00000097          	auipc	ra,0x0
    80005b00:	678080e7          	jalr	1656(ra) # 80006174 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80005b04:	00048513          	mv	a0,s1
    80005b08:	00000097          	auipc	ra,0x0
    80005b0c:	744080e7          	jalr	1860(ra) # 8000624c <_Z11stringToIntPKc>
    80005b10:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80005b14:	00004517          	auipc	a0,0x4
    80005b18:	63c50513          	addi	a0,a0,1596 # 8000a150 <CONSOLE_STATUS+0x140>
    80005b1c:	00000097          	auipc	ra,0x0
    80005b20:	5d0080e7          	jalr	1488(ra) # 800060ec <_Z11printStringPKc>
    getString(input, 30);
    80005b24:	01e00593          	li	a1,30
    80005b28:	00048513          	mv	a0,s1
    80005b2c:	00000097          	auipc	ra,0x0
    80005b30:	648080e7          	jalr	1608(ra) # 80006174 <_Z9getStringPci>
    n = stringToInt(input);
    80005b34:	00048513          	mv	a0,s1
    80005b38:	00000097          	auipc	ra,0x0
    80005b3c:	714080e7          	jalr	1812(ra) # 8000624c <_Z11stringToIntPKc>
    80005b40:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80005b44:	00004517          	auipc	a0,0x4
    80005b48:	62c50513          	addi	a0,a0,1580 # 8000a170 <CONSOLE_STATUS+0x160>
    80005b4c:	00000097          	auipc	ra,0x0
    80005b50:	5a0080e7          	jalr	1440(ra) # 800060ec <_Z11printStringPKc>
    80005b54:	00000613          	li	a2,0
    80005b58:	00a00593          	li	a1,10
    80005b5c:	00090513          	mv	a0,s2
    80005b60:	00000097          	auipc	ra,0x0
    80005b64:	73c080e7          	jalr	1852(ra) # 8000629c <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80005b68:	00004517          	auipc	a0,0x4
    80005b6c:	62050513          	addi	a0,a0,1568 # 8000a188 <CONSOLE_STATUS+0x178>
    80005b70:	00000097          	auipc	ra,0x0
    80005b74:	57c080e7          	jalr	1404(ra) # 800060ec <_Z11printStringPKc>
    80005b78:	00000613          	li	a2,0
    80005b7c:	00a00593          	li	a1,10
    80005b80:	00048513          	mv	a0,s1
    80005b84:	00000097          	auipc	ra,0x0
    80005b88:	718080e7          	jalr	1816(ra) # 8000629c <_Z8printIntiii>
    printString(".\n");
    80005b8c:	00004517          	auipc	a0,0x4
    80005b90:	61450513          	addi	a0,a0,1556 # 8000a1a0 <CONSOLE_STATUS+0x190>
    80005b94:	00000097          	auipc	ra,0x0
    80005b98:	558080e7          	jalr	1368(ra) # 800060ec <_Z11printStringPKc>
    if(threadNum > n) {
    80005b9c:	0324c463          	blt	s1,s2,80005bc4 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80005ba0:	03205c63          	blez	s2,80005bd8 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80005ba4:	03800513          	li	a0,56
    80005ba8:	ffffc097          	auipc	ra,0xffffc
    80005bac:	4fc080e7          	jalr	1276(ra) # 800020a4 <_Znwm>
    80005bb0:	00050a93          	mv	s5,a0
    80005bb4:	00048593          	mv	a1,s1
    80005bb8:	00001097          	auipc	ra,0x1
    80005bbc:	804080e7          	jalr	-2044(ra) # 800063bc <_ZN9BufferCPPC1Ei>
    80005bc0:	0300006f          	j	80005bf0 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005bc4:	00004517          	auipc	a0,0x4
    80005bc8:	5e450513          	addi	a0,a0,1508 # 8000a1a8 <CONSOLE_STATUS+0x198>
    80005bcc:	00000097          	auipc	ra,0x0
    80005bd0:	520080e7          	jalr	1312(ra) # 800060ec <_Z11printStringPKc>
        return;
    80005bd4:	0140006f          	j	80005be8 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80005bd8:	00004517          	auipc	a0,0x4
    80005bdc:	61050513          	addi	a0,a0,1552 # 8000a1e8 <CONSOLE_STATUS+0x1d8>
    80005be0:	00000097          	auipc	ra,0x0
    80005be4:	50c080e7          	jalr	1292(ra) # 800060ec <_Z11printStringPKc>
        return;
    80005be8:	000b8113          	mv	sp,s7
    80005bec:	2380006f          	j	80005e24 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80005bf0:	01000513          	li	a0,16
    80005bf4:	ffffc097          	auipc	ra,0xffffc
    80005bf8:	4b0080e7          	jalr	1200(ra) # 800020a4 <_Znwm>
    80005bfc:	00050493          	mv	s1,a0
    80005c00:	00000593          	li	a1,0
    80005c04:	ffffc097          	auipc	ra,0xffffc
    80005c08:	658080e7          	jalr	1624(ra) # 8000225c <_ZN9SemaphoreC1Ej>
    80005c0c:	00007797          	auipc	a5,0x7
    80005c10:	3697ba23          	sd	s1,884(a5) # 8000cf80 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80005c14:	00391793          	slli	a5,s2,0x3
    80005c18:	00f78793          	addi	a5,a5,15
    80005c1c:	ff07f793          	andi	a5,a5,-16
    80005c20:	40f10133          	sub	sp,sp,a5
    80005c24:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80005c28:	0019071b          	addiw	a4,s2,1
    80005c2c:	00171793          	slli	a5,a4,0x1
    80005c30:	00e787b3          	add	a5,a5,a4
    80005c34:	00379793          	slli	a5,a5,0x3
    80005c38:	00f78793          	addi	a5,a5,15
    80005c3c:	ff07f793          	andi	a5,a5,-16
    80005c40:	40f10133          	sub	sp,sp,a5
    80005c44:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80005c48:	00191c13          	slli	s8,s2,0x1
    80005c4c:	012c07b3          	add	a5,s8,s2
    80005c50:	00379793          	slli	a5,a5,0x3
    80005c54:	00fa07b3          	add	a5,s4,a5
    80005c58:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80005c5c:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80005c60:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80005c64:	02800513          	li	a0,40
    80005c68:	ffffc097          	auipc	ra,0xffffc
    80005c6c:	43c080e7          	jalr	1084(ra) # 800020a4 <_Znwm>
    80005c70:	00050b13          	mv	s6,a0
    80005c74:	012c0c33          	add	s8,s8,s2
    80005c78:	003c1c13          	slli	s8,s8,0x3
    80005c7c:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80005c80:	ffffc097          	auipc	ra,0xffffc
    80005c84:	524080e7          	jalr	1316(ra) # 800021a4 <_ZN6ThreadC1Ev>
    80005c88:	00007797          	auipc	a5,0x7
    80005c8c:	18078793          	addi	a5,a5,384 # 8000ce08 <_ZTV12ConsumerSync+0x10>
    80005c90:	00fb3023          	sd	a5,0(s6)
    80005c94:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80005c98:	000b0513          	mv	a0,s6
    80005c9c:	ffffc097          	auipc	ra,0xffffc
    80005ca0:	538080e7          	jalr	1336(ra) # 800021d4 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005ca4:	00000493          	li	s1,0
    80005ca8:	0380006f          	j	80005ce0 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005cac:	00007797          	auipc	a5,0x7
    80005cb0:	13478793          	addi	a5,a5,308 # 8000cde0 <_ZTV12ProducerSync+0x10>
    80005cb4:	00fcb023          	sd	a5,0(s9)
    80005cb8:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80005cbc:	00349793          	slli	a5,s1,0x3
    80005cc0:	00f987b3          	add	a5,s3,a5
    80005cc4:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80005cc8:	00349793          	slli	a5,s1,0x3
    80005ccc:	00f987b3          	add	a5,s3,a5
    80005cd0:	0007b503          	ld	a0,0(a5)
    80005cd4:	ffffc097          	auipc	ra,0xffffc
    80005cd8:	500080e7          	jalr	1280(ra) # 800021d4 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005cdc:	0014849b          	addiw	s1,s1,1
    80005ce0:	0b24d063          	bge	s1,s2,80005d80 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80005ce4:	00149793          	slli	a5,s1,0x1
    80005ce8:	009787b3          	add	a5,a5,s1
    80005cec:	00379793          	slli	a5,a5,0x3
    80005cf0:	00fa07b3          	add	a5,s4,a5
    80005cf4:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005cf8:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80005cfc:	00007717          	auipc	a4,0x7
    80005d00:	28473703          	ld	a4,644(a4) # 8000cf80 <_ZL10waitForAll>
    80005d04:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80005d08:	02905863          	blez	s1,80005d38 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80005d0c:	02800513          	li	a0,40
    80005d10:	ffffc097          	auipc	ra,0xffffc
    80005d14:	394080e7          	jalr	916(ra) # 800020a4 <_Znwm>
    80005d18:	00050c93          	mv	s9,a0
    80005d1c:	00149c13          	slli	s8,s1,0x1
    80005d20:	009c0c33          	add	s8,s8,s1
    80005d24:	003c1c13          	slli	s8,s8,0x3
    80005d28:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005d2c:	ffffc097          	auipc	ra,0xffffc
    80005d30:	478080e7          	jalr	1144(ra) # 800021a4 <_ZN6ThreadC1Ev>
    80005d34:	f79ff06f          	j	80005cac <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80005d38:	02800513          	li	a0,40
    80005d3c:	ffffc097          	auipc	ra,0xffffc
    80005d40:	368080e7          	jalr	872(ra) # 800020a4 <_Znwm>
    80005d44:	00050c93          	mv	s9,a0
    80005d48:	00149c13          	slli	s8,s1,0x1
    80005d4c:	009c0c33          	add	s8,s8,s1
    80005d50:	003c1c13          	slli	s8,s8,0x3
    80005d54:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80005d58:	ffffc097          	auipc	ra,0xffffc
    80005d5c:	44c080e7          	jalr	1100(ra) # 800021a4 <_ZN6ThreadC1Ev>
    80005d60:	00007797          	auipc	a5,0x7
    80005d64:	05878793          	addi	a5,a5,88 # 8000cdb8 <_ZTV16ProducerKeyboard+0x10>
    80005d68:	00fcb023          	sd	a5,0(s9)
    80005d6c:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80005d70:	00349793          	slli	a5,s1,0x3
    80005d74:	00f987b3          	add	a5,s3,a5
    80005d78:	0197b023          	sd	s9,0(a5)
    80005d7c:	f4dff06f          	j	80005cc8 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80005d80:	ffffc097          	auipc	ra,0xffffc
    80005d84:	48c080e7          	jalr	1164(ra) # 8000220c <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80005d88:	00000493          	li	s1,0
    80005d8c:	00994e63          	blt	s2,s1,80005da8 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80005d90:	00007517          	auipc	a0,0x7
    80005d94:	1f053503          	ld	a0,496(a0) # 8000cf80 <_ZL10waitForAll>
    80005d98:	ffffc097          	auipc	ra,0xffffc
    80005d9c:	500080e7          	jalr	1280(ra) # 80002298 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80005da0:	0014849b          	addiw	s1,s1,1
    80005da4:	fe9ff06f          	j	80005d8c <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80005da8:	00000493          	li	s1,0
    80005dac:	0080006f          	j	80005db4 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80005db0:	0014849b          	addiw	s1,s1,1
    80005db4:	0324d263          	bge	s1,s2,80005dd8 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80005db8:	00349793          	slli	a5,s1,0x3
    80005dbc:	00f987b3          	add	a5,s3,a5
    80005dc0:	0007b503          	ld	a0,0(a5)
    80005dc4:	fe0506e3          	beqz	a0,80005db0 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80005dc8:	00053783          	ld	a5,0(a0)
    80005dcc:	0087b783          	ld	a5,8(a5)
    80005dd0:	000780e7          	jalr	a5
    80005dd4:	fddff06f          	j	80005db0 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80005dd8:	000b0a63          	beqz	s6,80005dec <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80005ddc:	000b3783          	ld	a5,0(s6)
    80005de0:	0087b783          	ld	a5,8(a5)
    80005de4:	000b0513          	mv	a0,s6
    80005de8:	000780e7          	jalr	a5
    delete waitForAll;
    80005dec:	00007517          	auipc	a0,0x7
    80005df0:	19453503          	ld	a0,404(a0) # 8000cf80 <_ZL10waitForAll>
    80005df4:	00050863          	beqz	a0,80005e04 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80005df8:	00053783          	ld	a5,0(a0)
    80005dfc:	0087b783          	ld	a5,8(a5)
    80005e00:	000780e7          	jalr	a5
    delete buffer;
    80005e04:	000a8e63          	beqz	s5,80005e20 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80005e08:	000a8513          	mv	a0,s5
    80005e0c:	00001097          	auipc	ra,0x1
    80005e10:	8a8080e7          	jalr	-1880(ra) # 800066b4 <_ZN9BufferCPPD1Ev>
    80005e14:	000a8513          	mv	a0,s5
    80005e18:	ffffc097          	auipc	ra,0xffffc
    80005e1c:	2b4080e7          	jalr	692(ra) # 800020cc <_ZdlPv>
    80005e20:	000b8113          	mv	sp,s7

}
    80005e24:	f8040113          	addi	sp,s0,-128
    80005e28:	07813083          	ld	ra,120(sp)
    80005e2c:	07013403          	ld	s0,112(sp)
    80005e30:	06813483          	ld	s1,104(sp)
    80005e34:	06013903          	ld	s2,96(sp)
    80005e38:	05813983          	ld	s3,88(sp)
    80005e3c:	05013a03          	ld	s4,80(sp)
    80005e40:	04813a83          	ld	s5,72(sp)
    80005e44:	04013b03          	ld	s6,64(sp)
    80005e48:	03813b83          	ld	s7,56(sp)
    80005e4c:	03013c03          	ld	s8,48(sp)
    80005e50:	02813c83          	ld	s9,40(sp)
    80005e54:	08010113          	addi	sp,sp,128
    80005e58:	00008067          	ret
    80005e5c:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80005e60:	000a8513          	mv	a0,s5
    80005e64:	ffffc097          	auipc	ra,0xffffc
    80005e68:	268080e7          	jalr	616(ra) # 800020cc <_ZdlPv>
    80005e6c:	00048513          	mv	a0,s1
    80005e70:	00008097          	auipc	ra,0x8
    80005e74:	1f8080e7          	jalr	504(ra) # 8000e068 <_Unwind_Resume>
    80005e78:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80005e7c:	00048513          	mv	a0,s1
    80005e80:	ffffc097          	auipc	ra,0xffffc
    80005e84:	24c080e7          	jalr	588(ra) # 800020cc <_ZdlPv>
    80005e88:	00090513          	mv	a0,s2
    80005e8c:	00008097          	auipc	ra,0x8
    80005e90:	1dc080e7          	jalr	476(ra) # 8000e068 <_Unwind_Resume>
    80005e94:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80005e98:	000b0513          	mv	a0,s6
    80005e9c:	ffffc097          	auipc	ra,0xffffc
    80005ea0:	230080e7          	jalr	560(ra) # 800020cc <_ZdlPv>
    80005ea4:	00048513          	mv	a0,s1
    80005ea8:	00008097          	auipc	ra,0x8
    80005eac:	1c0080e7          	jalr	448(ra) # 8000e068 <_Unwind_Resume>
    80005eb0:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005eb4:	000c8513          	mv	a0,s9
    80005eb8:	ffffc097          	auipc	ra,0xffffc
    80005ebc:	214080e7          	jalr	532(ra) # 800020cc <_ZdlPv>
    80005ec0:	00048513          	mv	a0,s1
    80005ec4:	00008097          	auipc	ra,0x8
    80005ec8:	1a4080e7          	jalr	420(ra) # 8000e068 <_Unwind_Resume>
    80005ecc:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005ed0:	000c8513          	mv	a0,s9
    80005ed4:	ffffc097          	auipc	ra,0xffffc
    80005ed8:	1f8080e7          	jalr	504(ra) # 800020cc <_ZdlPv>
    80005edc:	00048513          	mv	a0,s1
    80005ee0:	00008097          	auipc	ra,0x8
    80005ee4:	188080e7          	jalr	392(ra) # 8000e068 <_Unwind_Resume>

0000000080005ee8 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005ee8:	ff010113          	addi	sp,sp,-16
    80005eec:	00113423          	sd	ra,8(sp)
    80005ef0:	00813023          	sd	s0,0(sp)
    80005ef4:	01010413          	addi	s0,sp,16
    80005ef8:	00007797          	auipc	a5,0x7
    80005efc:	f1078793          	addi	a5,a5,-240 # 8000ce08 <_ZTV12ConsumerSync+0x10>
    80005f00:	00f53023          	sd	a5,0(a0)
    80005f04:	ffffc097          	auipc	ra,0xffffc
    80005f08:	0b0080e7          	jalr	176(ra) # 80001fb4 <_ZN6ThreadD1Ev>
    80005f0c:	00813083          	ld	ra,8(sp)
    80005f10:	00013403          	ld	s0,0(sp)
    80005f14:	01010113          	addi	sp,sp,16
    80005f18:	00008067          	ret

0000000080005f1c <_ZN12ConsumerSyncD0Ev>:
    80005f1c:	fe010113          	addi	sp,sp,-32
    80005f20:	00113c23          	sd	ra,24(sp)
    80005f24:	00813823          	sd	s0,16(sp)
    80005f28:	00913423          	sd	s1,8(sp)
    80005f2c:	02010413          	addi	s0,sp,32
    80005f30:	00050493          	mv	s1,a0
    80005f34:	00007797          	auipc	a5,0x7
    80005f38:	ed478793          	addi	a5,a5,-300 # 8000ce08 <_ZTV12ConsumerSync+0x10>
    80005f3c:	00f53023          	sd	a5,0(a0)
    80005f40:	ffffc097          	auipc	ra,0xffffc
    80005f44:	074080e7          	jalr	116(ra) # 80001fb4 <_ZN6ThreadD1Ev>
    80005f48:	00048513          	mv	a0,s1
    80005f4c:	ffffc097          	auipc	ra,0xffffc
    80005f50:	180080e7          	jalr	384(ra) # 800020cc <_ZdlPv>
    80005f54:	01813083          	ld	ra,24(sp)
    80005f58:	01013403          	ld	s0,16(sp)
    80005f5c:	00813483          	ld	s1,8(sp)
    80005f60:	02010113          	addi	sp,sp,32
    80005f64:	00008067          	ret

0000000080005f68 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80005f68:	ff010113          	addi	sp,sp,-16
    80005f6c:	00113423          	sd	ra,8(sp)
    80005f70:	00813023          	sd	s0,0(sp)
    80005f74:	01010413          	addi	s0,sp,16
    80005f78:	00007797          	auipc	a5,0x7
    80005f7c:	e6878793          	addi	a5,a5,-408 # 8000cde0 <_ZTV12ProducerSync+0x10>
    80005f80:	00f53023          	sd	a5,0(a0)
    80005f84:	ffffc097          	auipc	ra,0xffffc
    80005f88:	030080e7          	jalr	48(ra) # 80001fb4 <_ZN6ThreadD1Ev>
    80005f8c:	00813083          	ld	ra,8(sp)
    80005f90:	00013403          	ld	s0,0(sp)
    80005f94:	01010113          	addi	sp,sp,16
    80005f98:	00008067          	ret

0000000080005f9c <_ZN12ProducerSyncD0Ev>:
    80005f9c:	fe010113          	addi	sp,sp,-32
    80005fa0:	00113c23          	sd	ra,24(sp)
    80005fa4:	00813823          	sd	s0,16(sp)
    80005fa8:	00913423          	sd	s1,8(sp)
    80005fac:	02010413          	addi	s0,sp,32
    80005fb0:	00050493          	mv	s1,a0
    80005fb4:	00007797          	auipc	a5,0x7
    80005fb8:	e2c78793          	addi	a5,a5,-468 # 8000cde0 <_ZTV12ProducerSync+0x10>
    80005fbc:	00f53023          	sd	a5,0(a0)
    80005fc0:	ffffc097          	auipc	ra,0xffffc
    80005fc4:	ff4080e7          	jalr	-12(ra) # 80001fb4 <_ZN6ThreadD1Ev>
    80005fc8:	00048513          	mv	a0,s1
    80005fcc:	ffffc097          	auipc	ra,0xffffc
    80005fd0:	100080e7          	jalr	256(ra) # 800020cc <_ZdlPv>
    80005fd4:	01813083          	ld	ra,24(sp)
    80005fd8:	01013403          	ld	s0,16(sp)
    80005fdc:	00813483          	ld	s1,8(sp)
    80005fe0:	02010113          	addi	sp,sp,32
    80005fe4:	00008067          	ret

0000000080005fe8 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005fe8:	ff010113          	addi	sp,sp,-16
    80005fec:	00113423          	sd	ra,8(sp)
    80005ff0:	00813023          	sd	s0,0(sp)
    80005ff4:	01010413          	addi	s0,sp,16
    80005ff8:	00007797          	auipc	a5,0x7
    80005ffc:	dc078793          	addi	a5,a5,-576 # 8000cdb8 <_ZTV16ProducerKeyboard+0x10>
    80006000:	00f53023          	sd	a5,0(a0)
    80006004:	ffffc097          	auipc	ra,0xffffc
    80006008:	fb0080e7          	jalr	-80(ra) # 80001fb4 <_ZN6ThreadD1Ev>
    8000600c:	00813083          	ld	ra,8(sp)
    80006010:	00013403          	ld	s0,0(sp)
    80006014:	01010113          	addi	sp,sp,16
    80006018:	00008067          	ret

000000008000601c <_ZN16ProducerKeyboardD0Ev>:
    8000601c:	fe010113          	addi	sp,sp,-32
    80006020:	00113c23          	sd	ra,24(sp)
    80006024:	00813823          	sd	s0,16(sp)
    80006028:	00913423          	sd	s1,8(sp)
    8000602c:	02010413          	addi	s0,sp,32
    80006030:	00050493          	mv	s1,a0
    80006034:	00007797          	auipc	a5,0x7
    80006038:	d8478793          	addi	a5,a5,-636 # 8000cdb8 <_ZTV16ProducerKeyboard+0x10>
    8000603c:	00f53023          	sd	a5,0(a0)
    80006040:	ffffc097          	auipc	ra,0xffffc
    80006044:	f74080e7          	jalr	-140(ra) # 80001fb4 <_ZN6ThreadD1Ev>
    80006048:	00048513          	mv	a0,s1
    8000604c:	ffffc097          	auipc	ra,0xffffc
    80006050:	080080e7          	jalr	128(ra) # 800020cc <_ZdlPv>
    80006054:	01813083          	ld	ra,24(sp)
    80006058:	01013403          	ld	s0,16(sp)
    8000605c:	00813483          	ld	s1,8(sp)
    80006060:	02010113          	addi	sp,sp,32
    80006064:	00008067          	ret

0000000080006068 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80006068:	ff010113          	addi	sp,sp,-16
    8000606c:	00113423          	sd	ra,8(sp)
    80006070:	00813023          	sd	s0,0(sp)
    80006074:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80006078:	02053583          	ld	a1,32(a0)
    8000607c:	fffff097          	auipc	ra,0xfffff
    80006080:	7e4080e7          	jalr	2020(ra) # 80005860 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80006084:	00813083          	ld	ra,8(sp)
    80006088:	00013403          	ld	s0,0(sp)
    8000608c:	01010113          	addi	sp,sp,16
    80006090:	00008067          	ret

0000000080006094 <_ZN12ProducerSync3runEv>:
    void run() override {
    80006094:	ff010113          	addi	sp,sp,-16
    80006098:	00113423          	sd	ra,8(sp)
    8000609c:	00813023          	sd	s0,0(sp)
    800060a0:	01010413          	addi	s0,sp,16
        producer(td);
    800060a4:	02053583          	ld	a1,32(a0)
    800060a8:	00000097          	auipc	ra,0x0
    800060ac:	878080e7          	jalr	-1928(ra) # 80005920 <_ZN12ProducerSync8producerEPv>
    }
    800060b0:	00813083          	ld	ra,8(sp)
    800060b4:	00013403          	ld	s0,0(sp)
    800060b8:	01010113          	addi	sp,sp,16
    800060bc:	00008067          	ret

00000000800060c0 <_ZN12ConsumerSync3runEv>:
    void run() override {
    800060c0:	ff010113          	addi	sp,sp,-16
    800060c4:	00113423          	sd	ra,8(sp)
    800060c8:	00813023          	sd	s0,0(sp)
    800060cc:	01010413          	addi	s0,sp,16
        consumer(td);
    800060d0:	02053583          	ld	a1,32(a0)
    800060d4:	00000097          	auipc	ra,0x0
    800060d8:	8e0080e7          	jalr	-1824(ra) # 800059b4 <_ZN12ConsumerSync8consumerEPv>
    }
    800060dc:	00813083          	ld	ra,8(sp)
    800060e0:	00013403          	ld	s0,0(sp)
    800060e4:	01010113          	addi	sp,sp,16
    800060e8:	00008067          	ret

00000000800060ec <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    800060ec:	fe010113          	addi	sp,sp,-32
    800060f0:	00113c23          	sd	ra,24(sp)
    800060f4:	00813823          	sd	s0,16(sp)
    800060f8:	00913423          	sd	s1,8(sp)
    800060fc:	02010413          	addi	s0,sp,32
    80006100:	00050493          	mv	s1,a0
    LOCK();
    80006104:	00100613          	li	a2,1
    80006108:	00000593          	li	a1,0
    8000610c:	00007517          	auipc	a0,0x7
    80006110:	e7c50513          	addi	a0,a0,-388 # 8000cf88 <lockPrint>
    80006114:	ffffb097          	auipc	ra,0xffffb
    80006118:	108080e7          	jalr	264(ra) # 8000121c <copy_and_swap>
    8000611c:	00050863          	beqz	a0,8000612c <_Z11printStringPKc+0x40>
    80006120:	ffffb097          	auipc	ra,0xffffb
    80006124:	2ac080e7          	jalr	684(ra) # 800013cc <_Z15thread_dispatchv>
    80006128:	fddff06f          	j	80006104 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    8000612c:	0004c503          	lbu	a0,0(s1)
    80006130:	00050a63          	beqz	a0,80006144 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80006134:	ffffb097          	auipc	ra,0xffffb
    80006138:	538080e7          	jalr	1336(ra) # 8000166c <_Z4putcc>
        string++;
    8000613c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80006140:	fedff06f          	j	8000612c <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80006144:	00000613          	li	a2,0
    80006148:	00100593          	li	a1,1
    8000614c:	00007517          	auipc	a0,0x7
    80006150:	e3c50513          	addi	a0,a0,-452 # 8000cf88 <lockPrint>
    80006154:	ffffb097          	auipc	ra,0xffffb
    80006158:	0c8080e7          	jalr	200(ra) # 8000121c <copy_and_swap>
    8000615c:	fe0514e3          	bnez	a0,80006144 <_Z11printStringPKc+0x58>
}
    80006160:	01813083          	ld	ra,24(sp)
    80006164:	01013403          	ld	s0,16(sp)
    80006168:	00813483          	ld	s1,8(sp)
    8000616c:	02010113          	addi	sp,sp,32
    80006170:	00008067          	ret

0000000080006174 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80006174:	fd010113          	addi	sp,sp,-48
    80006178:	02113423          	sd	ra,40(sp)
    8000617c:	02813023          	sd	s0,32(sp)
    80006180:	00913c23          	sd	s1,24(sp)
    80006184:	01213823          	sd	s2,16(sp)
    80006188:	01313423          	sd	s3,8(sp)
    8000618c:	01413023          	sd	s4,0(sp)
    80006190:	03010413          	addi	s0,sp,48
    80006194:	00050993          	mv	s3,a0
    80006198:	00058a13          	mv	s4,a1
    LOCK();
    8000619c:	00100613          	li	a2,1
    800061a0:	00000593          	li	a1,0
    800061a4:	00007517          	auipc	a0,0x7
    800061a8:	de450513          	addi	a0,a0,-540 # 8000cf88 <lockPrint>
    800061ac:	ffffb097          	auipc	ra,0xffffb
    800061b0:	070080e7          	jalr	112(ra) # 8000121c <copy_and_swap>
    800061b4:	00050863          	beqz	a0,800061c4 <_Z9getStringPci+0x50>
    800061b8:	ffffb097          	auipc	ra,0xffffb
    800061bc:	214080e7          	jalr	532(ra) # 800013cc <_Z15thread_dispatchv>
    800061c0:	fddff06f          	j	8000619c <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800061c4:	00000913          	li	s2,0
    800061c8:	00090493          	mv	s1,s2
    800061cc:	0019091b          	addiw	s2,s2,1
    800061d0:	03495a63          	bge	s2,s4,80006204 <_Z9getStringPci+0x90>
        cc = getc();
    800061d4:	ffffb097          	auipc	ra,0xffffb
    800061d8:	44c080e7          	jalr	1100(ra) # 80001620 <_Z4getcv>
        if(cc < 1)
    800061dc:	02050463          	beqz	a0,80006204 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    800061e0:	009984b3          	add	s1,s3,s1
    800061e4:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800061e8:	00a00793          	li	a5,10
    800061ec:	00f50a63          	beq	a0,a5,80006200 <_Z9getStringPci+0x8c>
    800061f0:	00d00793          	li	a5,13
    800061f4:	fcf51ae3          	bne	a0,a5,800061c8 <_Z9getStringPci+0x54>
        buf[i++] = c;
    800061f8:	00090493          	mv	s1,s2
    800061fc:	0080006f          	j	80006204 <_Z9getStringPci+0x90>
    80006200:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80006204:	009984b3          	add	s1,s3,s1
    80006208:	00048023          	sb	zero,0(s1)

    UNLOCK();
    8000620c:	00000613          	li	a2,0
    80006210:	00100593          	li	a1,1
    80006214:	00007517          	auipc	a0,0x7
    80006218:	d7450513          	addi	a0,a0,-652 # 8000cf88 <lockPrint>
    8000621c:	ffffb097          	auipc	ra,0xffffb
    80006220:	000080e7          	jalr	ra # 8000121c <copy_and_swap>
    80006224:	fe0514e3          	bnez	a0,8000620c <_Z9getStringPci+0x98>
    return buf;
}
    80006228:	00098513          	mv	a0,s3
    8000622c:	02813083          	ld	ra,40(sp)
    80006230:	02013403          	ld	s0,32(sp)
    80006234:	01813483          	ld	s1,24(sp)
    80006238:	01013903          	ld	s2,16(sp)
    8000623c:	00813983          	ld	s3,8(sp)
    80006240:	00013a03          	ld	s4,0(sp)
    80006244:	03010113          	addi	sp,sp,48
    80006248:	00008067          	ret

000000008000624c <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    8000624c:	ff010113          	addi	sp,sp,-16
    80006250:	00813423          	sd	s0,8(sp)
    80006254:	01010413          	addi	s0,sp,16
    80006258:	00050693          	mv	a3,a0
    int n;

    n = 0;
    8000625c:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80006260:	0006c603          	lbu	a2,0(a3)
    80006264:	fd06071b          	addiw	a4,a2,-48
    80006268:	0ff77713          	andi	a4,a4,255
    8000626c:	00900793          	li	a5,9
    80006270:	02e7e063          	bltu	a5,a4,80006290 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80006274:	0025179b          	slliw	a5,a0,0x2
    80006278:	00a787bb          	addw	a5,a5,a0
    8000627c:	0017979b          	slliw	a5,a5,0x1
    80006280:	00168693          	addi	a3,a3,1
    80006284:	00c787bb          	addw	a5,a5,a2
    80006288:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    8000628c:	fd5ff06f          	j	80006260 <_Z11stringToIntPKc+0x14>
    return n;
}
    80006290:	00813403          	ld	s0,8(sp)
    80006294:	01010113          	addi	sp,sp,16
    80006298:	00008067          	ret

000000008000629c <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    8000629c:	fc010113          	addi	sp,sp,-64
    800062a0:	02113c23          	sd	ra,56(sp)
    800062a4:	02813823          	sd	s0,48(sp)
    800062a8:	02913423          	sd	s1,40(sp)
    800062ac:	03213023          	sd	s2,32(sp)
    800062b0:	01313c23          	sd	s3,24(sp)
    800062b4:	04010413          	addi	s0,sp,64
    800062b8:	00050493          	mv	s1,a0
    800062bc:	00058913          	mv	s2,a1
    800062c0:	00060993          	mv	s3,a2
    LOCK();
    800062c4:	00100613          	li	a2,1
    800062c8:	00000593          	li	a1,0
    800062cc:	00007517          	auipc	a0,0x7
    800062d0:	cbc50513          	addi	a0,a0,-836 # 8000cf88 <lockPrint>
    800062d4:	ffffb097          	auipc	ra,0xffffb
    800062d8:	f48080e7          	jalr	-184(ra) # 8000121c <copy_and_swap>
    800062dc:	00050863          	beqz	a0,800062ec <_Z8printIntiii+0x50>
    800062e0:	ffffb097          	auipc	ra,0xffffb
    800062e4:	0ec080e7          	jalr	236(ra) # 800013cc <_Z15thread_dispatchv>
    800062e8:	fddff06f          	j	800062c4 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    800062ec:	00098463          	beqz	s3,800062f4 <_Z8printIntiii+0x58>
    800062f0:	0804c463          	bltz	s1,80006378 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800062f4:	0004851b          	sext.w	a0,s1
    neg = 0;
    800062f8:	00000593          	li	a1,0
    }

    i = 0;
    800062fc:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80006300:	0009079b          	sext.w	a5,s2
    80006304:	0325773b          	remuw	a4,a0,s2
    80006308:	00048613          	mv	a2,s1
    8000630c:	0014849b          	addiw	s1,s1,1
    80006310:	02071693          	slli	a3,a4,0x20
    80006314:	0206d693          	srli	a3,a3,0x20
    80006318:	00007717          	auipc	a4,0x7
    8000631c:	b0870713          	addi	a4,a4,-1272 # 8000ce20 <digits>
    80006320:	00d70733          	add	a4,a4,a3
    80006324:	00074683          	lbu	a3,0(a4)
    80006328:	fd040713          	addi	a4,s0,-48
    8000632c:	00c70733          	add	a4,a4,a2
    80006330:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80006334:	0005071b          	sext.w	a4,a0
    80006338:	0325553b          	divuw	a0,a0,s2
    8000633c:	fcf772e3          	bgeu	a4,a5,80006300 <_Z8printIntiii+0x64>
    if(neg)
    80006340:	00058c63          	beqz	a1,80006358 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80006344:	fd040793          	addi	a5,s0,-48
    80006348:	009784b3          	add	s1,a5,s1
    8000634c:	02d00793          	li	a5,45
    80006350:	fef48823          	sb	a5,-16(s1)
    80006354:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80006358:	fff4849b          	addiw	s1,s1,-1
    8000635c:	0204c463          	bltz	s1,80006384 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80006360:	fd040793          	addi	a5,s0,-48
    80006364:	009787b3          	add	a5,a5,s1
    80006368:	ff07c503          	lbu	a0,-16(a5)
    8000636c:	ffffb097          	auipc	ra,0xffffb
    80006370:	300080e7          	jalr	768(ra) # 8000166c <_Z4putcc>
    80006374:	fe5ff06f          	j	80006358 <_Z8printIntiii+0xbc>
        x = -xx;
    80006378:	4090053b          	negw	a0,s1
        neg = 1;
    8000637c:	00100593          	li	a1,1
        x = -xx;
    80006380:	f7dff06f          	j	800062fc <_Z8printIntiii+0x60>

    UNLOCK();
    80006384:	00000613          	li	a2,0
    80006388:	00100593          	li	a1,1
    8000638c:	00007517          	auipc	a0,0x7
    80006390:	bfc50513          	addi	a0,a0,-1028 # 8000cf88 <lockPrint>
    80006394:	ffffb097          	auipc	ra,0xffffb
    80006398:	e88080e7          	jalr	-376(ra) # 8000121c <copy_and_swap>
    8000639c:	fe0514e3          	bnez	a0,80006384 <_Z8printIntiii+0xe8>
    800063a0:	03813083          	ld	ra,56(sp)
    800063a4:	03013403          	ld	s0,48(sp)
    800063a8:	02813483          	ld	s1,40(sp)
    800063ac:	02013903          	ld	s2,32(sp)
    800063b0:	01813983          	ld	s3,24(sp)
    800063b4:	04010113          	addi	sp,sp,64
    800063b8:	00008067          	ret

00000000800063bc <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800063bc:	fd010113          	addi	sp,sp,-48
    800063c0:	02113423          	sd	ra,40(sp)
    800063c4:	02813023          	sd	s0,32(sp)
    800063c8:	00913c23          	sd	s1,24(sp)
    800063cc:	01213823          	sd	s2,16(sp)
    800063d0:	01313423          	sd	s3,8(sp)
    800063d4:	03010413          	addi	s0,sp,48
    800063d8:	00050493          	mv	s1,a0
    800063dc:	00058913          	mv	s2,a1
    800063e0:	0015879b          	addiw	a5,a1,1
    800063e4:	0007851b          	sext.w	a0,a5
    800063e8:	00f4a023          	sw	a5,0(s1)
    800063ec:	0004a823          	sw	zero,16(s1)
    800063f0:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800063f4:	00251513          	slli	a0,a0,0x2
    800063f8:	ffffb097          	auipc	ra,0xffffb
    800063fc:	e60080e7          	jalr	-416(ra) # 80001258 <_Z9mem_allocm>
    80006400:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80006404:	01000513          	li	a0,16
    80006408:	ffffc097          	auipc	ra,0xffffc
    8000640c:	c9c080e7          	jalr	-868(ra) # 800020a4 <_Znwm>
    80006410:	00050993          	mv	s3,a0
    80006414:	00000593          	li	a1,0
    80006418:	ffffc097          	auipc	ra,0xffffc
    8000641c:	e44080e7          	jalr	-444(ra) # 8000225c <_ZN9SemaphoreC1Ej>
    80006420:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80006424:	01000513          	li	a0,16
    80006428:	ffffc097          	auipc	ra,0xffffc
    8000642c:	c7c080e7          	jalr	-900(ra) # 800020a4 <_Znwm>
    80006430:	00050993          	mv	s3,a0
    80006434:	00090593          	mv	a1,s2
    80006438:	ffffc097          	auipc	ra,0xffffc
    8000643c:	e24080e7          	jalr	-476(ra) # 8000225c <_ZN9SemaphoreC1Ej>
    80006440:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80006444:	01000513          	li	a0,16
    80006448:	ffffc097          	auipc	ra,0xffffc
    8000644c:	c5c080e7          	jalr	-932(ra) # 800020a4 <_Znwm>
    80006450:	00050913          	mv	s2,a0
    80006454:	00100593          	li	a1,1
    80006458:	ffffc097          	auipc	ra,0xffffc
    8000645c:	e04080e7          	jalr	-508(ra) # 8000225c <_ZN9SemaphoreC1Ej>
    80006460:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80006464:	01000513          	li	a0,16
    80006468:	ffffc097          	auipc	ra,0xffffc
    8000646c:	c3c080e7          	jalr	-964(ra) # 800020a4 <_Znwm>
    80006470:	00050913          	mv	s2,a0
    80006474:	00100593          	li	a1,1
    80006478:	ffffc097          	auipc	ra,0xffffc
    8000647c:	de4080e7          	jalr	-540(ra) # 8000225c <_ZN9SemaphoreC1Ej>
    80006480:	0324b823          	sd	s2,48(s1)
}
    80006484:	02813083          	ld	ra,40(sp)
    80006488:	02013403          	ld	s0,32(sp)
    8000648c:	01813483          	ld	s1,24(sp)
    80006490:	01013903          	ld	s2,16(sp)
    80006494:	00813983          	ld	s3,8(sp)
    80006498:	03010113          	addi	sp,sp,48
    8000649c:	00008067          	ret
    800064a0:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    800064a4:	00098513          	mv	a0,s3
    800064a8:	ffffc097          	auipc	ra,0xffffc
    800064ac:	c24080e7          	jalr	-988(ra) # 800020cc <_ZdlPv>
    800064b0:	00048513          	mv	a0,s1
    800064b4:	00008097          	auipc	ra,0x8
    800064b8:	bb4080e7          	jalr	-1100(ra) # 8000e068 <_Unwind_Resume>
    800064bc:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    800064c0:	00098513          	mv	a0,s3
    800064c4:	ffffc097          	auipc	ra,0xffffc
    800064c8:	c08080e7          	jalr	-1016(ra) # 800020cc <_ZdlPv>
    800064cc:	00048513          	mv	a0,s1
    800064d0:	00008097          	auipc	ra,0x8
    800064d4:	b98080e7          	jalr	-1128(ra) # 8000e068 <_Unwind_Resume>
    800064d8:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    800064dc:	00090513          	mv	a0,s2
    800064e0:	ffffc097          	auipc	ra,0xffffc
    800064e4:	bec080e7          	jalr	-1044(ra) # 800020cc <_ZdlPv>
    800064e8:	00048513          	mv	a0,s1
    800064ec:	00008097          	auipc	ra,0x8
    800064f0:	b7c080e7          	jalr	-1156(ra) # 8000e068 <_Unwind_Resume>
    800064f4:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800064f8:	00090513          	mv	a0,s2
    800064fc:	ffffc097          	auipc	ra,0xffffc
    80006500:	bd0080e7          	jalr	-1072(ra) # 800020cc <_ZdlPv>
    80006504:	00048513          	mv	a0,s1
    80006508:	00008097          	auipc	ra,0x8
    8000650c:	b60080e7          	jalr	-1184(ra) # 8000e068 <_Unwind_Resume>

0000000080006510 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80006510:	fe010113          	addi	sp,sp,-32
    80006514:	00113c23          	sd	ra,24(sp)
    80006518:	00813823          	sd	s0,16(sp)
    8000651c:	00913423          	sd	s1,8(sp)
    80006520:	01213023          	sd	s2,0(sp)
    80006524:	02010413          	addi	s0,sp,32
    80006528:	00050493          	mv	s1,a0
    8000652c:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80006530:	01853503          	ld	a0,24(a0)
    80006534:	ffffc097          	auipc	ra,0xffffc
    80006538:	d64080e7          	jalr	-668(ra) # 80002298 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    8000653c:	0304b503          	ld	a0,48(s1)
    80006540:	ffffc097          	auipc	ra,0xffffc
    80006544:	d58080e7          	jalr	-680(ra) # 80002298 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80006548:	0084b783          	ld	a5,8(s1)
    8000654c:	0144a703          	lw	a4,20(s1)
    80006550:	00271713          	slli	a4,a4,0x2
    80006554:	00e787b3          	add	a5,a5,a4
    80006558:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000655c:	0144a783          	lw	a5,20(s1)
    80006560:	0017879b          	addiw	a5,a5,1
    80006564:	0004a703          	lw	a4,0(s1)
    80006568:	02e7e7bb          	remw	a5,a5,a4
    8000656c:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80006570:	0304b503          	ld	a0,48(s1)
    80006574:	ffffc097          	auipc	ra,0xffffc
    80006578:	d5c080e7          	jalr	-676(ra) # 800022d0 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    8000657c:	0204b503          	ld	a0,32(s1)
    80006580:	ffffc097          	auipc	ra,0xffffc
    80006584:	d50080e7          	jalr	-688(ra) # 800022d0 <_ZN9Semaphore6signalEv>

}
    80006588:	01813083          	ld	ra,24(sp)
    8000658c:	01013403          	ld	s0,16(sp)
    80006590:	00813483          	ld	s1,8(sp)
    80006594:	00013903          	ld	s2,0(sp)
    80006598:	02010113          	addi	sp,sp,32
    8000659c:	00008067          	ret

00000000800065a0 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    800065a0:	fe010113          	addi	sp,sp,-32
    800065a4:	00113c23          	sd	ra,24(sp)
    800065a8:	00813823          	sd	s0,16(sp)
    800065ac:	00913423          	sd	s1,8(sp)
    800065b0:	01213023          	sd	s2,0(sp)
    800065b4:	02010413          	addi	s0,sp,32
    800065b8:	00050493          	mv	s1,a0
    itemAvailable->wait();
    800065bc:	02053503          	ld	a0,32(a0)
    800065c0:	ffffc097          	auipc	ra,0xffffc
    800065c4:	cd8080e7          	jalr	-808(ra) # 80002298 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    800065c8:	0284b503          	ld	a0,40(s1)
    800065cc:	ffffc097          	auipc	ra,0xffffc
    800065d0:	ccc080e7          	jalr	-820(ra) # 80002298 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    800065d4:	0084b703          	ld	a4,8(s1)
    800065d8:	0104a783          	lw	a5,16(s1)
    800065dc:	00279693          	slli	a3,a5,0x2
    800065e0:	00d70733          	add	a4,a4,a3
    800065e4:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800065e8:	0017879b          	addiw	a5,a5,1
    800065ec:	0004a703          	lw	a4,0(s1)
    800065f0:	02e7e7bb          	remw	a5,a5,a4
    800065f4:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800065f8:	0284b503          	ld	a0,40(s1)
    800065fc:	ffffc097          	auipc	ra,0xffffc
    80006600:	cd4080e7          	jalr	-812(ra) # 800022d0 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80006604:	0184b503          	ld	a0,24(s1)
    80006608:	ffffc097          	auipc	ra,0xffffc
    8000660c:	cc8080e7          	jalr	-824(ra) # 800022d0 <_ZN9Semaphore6signalEv>

    return ret;
}
    80006610:	00090513          	mv	a0,s2
    80006614:	01813083          	ld	ra,24(sp)
    80006618:	01013403          	ld	s0,16(sp)
    8000661c:	00813483          	ld	s1,8(sp)
    80006620:	00013903          	ld	s2,0(sp)
    80006624:	02010113          	addi	sp,sp,32
    80006628:	00008067          	ret

000000008000662c <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    8000662c:	fe010113          	addi	sp,sp,-32
    80006630:	00113c23          	sd	ra,24(sp)
    80006634:	00813823          	sd	s0,16(sp)
    80006638:	00913423          	sd	s1,8(sp)
    8000663c:	01213023          	sd	s2,0(sp)
    80006640:	02010413          	addi	s0,sp,32
    80006644:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80006648:	02853503          	ld	a0,40(a0)
    8000664c:	ffffc097          	auipc	ra,0xffffc
    80006650:	c4c080e7          	jalr	-948(ra) # 80002298 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80006654:	0304b503          	ld	a0,48(s1)
    80006658:	ffffc097          	auipc	ra,0xffffc
    8000665c:	c40080e7          	jalr	-960(ra) # 80002298 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80006660:	0144a783          	lw	a5,20(s1)
    80006664:	0104a903          	lw	s2,16(s1)
    80006668:	0327ce63          	blt	a5,s2,800066a4 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    8000666c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80006670:	0304b503          	ld	a0,48(s1)
    80006674:	ffffc097          	auipc	ra,0xffffc
    80006678:	c5c080e7          	jalr	-932(ra) # 800022d0 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    8000667c:	0284b503          	ld	a0,40(s1)
    80006680:	ffffc097          	auipc	ra,0xffffc
    80006684:	c50080e7          	jalr	-944(ra) # 800022d0 <_ZN9Semaphore6signalEv>

    return ret;
}
    80006688:	00090513          	mv	a0,s2
    8000668c:	01813083          	ld	ra,24(sp)
    80006690:	01013403          	ld	s0,16(sp)
    80006694:	00813483          	ld	s1,8(sp)
    80006698:	00013903          	ld	s2,0(sp)
    8000669c:	02010113          	addi	sp,sp,32
    800066a0:	00008067          	ret
        ret = cap - head + tail;
    800066a4:	0004a703          	lw	a4,0(s1)
    800066a8:	4127093b          	subw	s2,a4,s2
    800066ac:	00f9093b          	addw	s2,s2,a5
    800066b0:	fc1ff06f          	j	80006670 <_ZN9BufferCPP6getCntEv+0x44>

00000000800066b4 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    800066b4:	fe010113          	addi	sp,sp,-32
    800066b8:	00113c23          	sd	ra,24(sp)
    800066bc:	00813823          	sd	s0,16(sp)
    800066c0:	00913423          	sd	s1,8(sp)
    800066c4:	02010413          	addi	s0,sp,32
    800066c8:	00050493          	mv	s1,a0
    Console::putc('\n');
    800066cc:	00a00513          	li	a0,10
    800066d0:	ffffc097          	auipc	ra,0xffffc
    800066d4:	d28080e7          	jalr	-728(ra) # 800023f8 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    800066d8:	00004517          	auipc	a0,0x4
    800066dc:	c3850513          	addi	a0,a0,-968 # 8000a310 <CONSOLE_STATUS+0x300>
    800066e0:	00000097          	auipc	ra,0x0
    800066e4:	a0c080e7          	jalr	-1524(ra) # 800060ec <_Z11printStringPKc>
    while (getCnt()) {
    800066e8:	00048513          	mv	a0,s1
    800066ec:	00000097          	auipc	ra,0x0
    800066f0:	f40080e7          	jalr	-192(ra) # 8000662c <_ZN9BufferCPP6getCntEv>
    800066f4:	02050c63          	beqz	a0,8000672c <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    800066f8:	0084b783          	ld	a5,8(s1)
    800066fc:	0104a703          	lw	a4,16(s1)
    80006700:	00271713          	slli	a4,a4,0x2
    80006704:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80006708:	0007c503          	lbu	a0,0(a5)
    8000670c:	ffffc097          	auipc	ra,0xffffc
    80006710:	cec080e7          	jalr	-788(ra) # 800023f8 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80006714:	0104a783          	lw	a5,16(s1)
    80006718:	0017879b          	addiw	a5,a5,1
    8000671c:	0004a703          	lw	a4,0(s1)
    80006720:	02e7e7bb          	remw	a5,a5,a4
    80006724:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80006728:	fc1ff06f          	j	800066e8 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    8000672c:	02100513          	li	a0,33
    80006730:	ffffc097          	auipc	ra,0xffffc
    80006734:	cc8080e7          	jalr	-824(ra) # 800023f8 <_ZN7Console4putcEc>
    Console::putc('\n');
    80006738:	00a00513          	li	a0,10
    8000673c:	ffffc097          	auipc	ra,0xffffc
    80006740:	cbc080e7          	jalr	-836(ra) # 800023f8 <_ZN7Console4putcEc>
    mem_free(buffer);
    80006744:	0084b503          	ld	a0,8(s1)
    80006748:	ffffb097          	auipc	ra,0xffffb
    8000674c:	b64080e7          	jalr	-1180(ra) # 800012ac <_Z8mem_freePv>
    delete itemAvailable;
    80006750:	0204b503          	ld	a0,32(s1)
    80006754:	00050863          	beqz	a0,80006764 <_ZN9BufferCPPD1Ev+0xb0>
    80006758:	00053783          	ld	a5,0(a0)
    8000675c:	0087b783          	ld	a5,8(a5)
    80006760:	000780e7          	jalr	a5
    delete spaceAvailable;
    80006764:	0184b503          	ld	a0,24(s1)
    80006768:	00050863          	beqz	a0,80006778 <_ZN9BufferCPPD1Ev+0xc4>
    8000676c:	00053783          	ld	a5,0(a0)
    80006770:	0087b783          	ld	a5,8(a5)
    80006774:	000780e7          	jalr	a5
    delete mutexTail;
    80006778:	0304b503          	ld	a0,48(s1)
    8000677c:	00050863          	beqz	a0,8000678c <_ZN9BufferCPPD1Ev+0xd8>
    80006780:	00053783          	ld	a5,0(a0)
    80006784:	0087b783          	ld	a5,8(a5)
    80006788:	000780e7          	jalr	a5
    delete mutexHead;
    8000678c:	0284b503          	ld	a0,40(s1)
    80006790:	00050863          	beqz	a0,800067a0 <_ZN9BufferCPPD1Ev+0xec>
    80006794:	00053783          	ld	a5,0(a0)
    80006798:	0087b783          	ld	a5,8(a5)
    8000679c:	000780e7          	jalr	a5
}
    800067a0:	01813083          	ld	ra,24(sp)
    800067a4:	01013403          	ld	s0,16(sp)
    800067a8:	00813483          	ld	s1,8(sp)
    800067ac:	02010113          	addi	sp,sp,32
    800067b0:	00008067          	ret

00000000800067b4 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    800067b4:	fe010113          	addi	sp,sp,-32
    800067b8:	00113c23          	sd	ra,24(sp)
    800067bc:	00813823          	sd	s0,16(sp)
    800067c0:	00913423          	sd	s1,8(sp)
    800067c4:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    800067c8:	00004517          	auipc	a0,0x4
    800067cc:	b7050513          	addi	a0,a0,-1168 # 8000a338 <CONSOLE_STATUS+0x328>
    800067d0:	00000097          	auipc	ra,0x0
    800067d4:	91c080e7          	jalr	-1764(ra) # 800060ec <_Z11printStringPKc>
    int test = getc() - '0';
    800067d8:	ffffb097          	auipc	ra,0xffffb
    800067dc:	e48080e7          	jalr	-440(ra) # 80001620 <_Z4getcv>
    800067e0:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    800067e4:	ffffb097          	auipc	ra,0xffffb
    800067e8:	e3c080e7          	jalr	-452(ra) # 80001620 <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    800067ec:	00700793          	li	a5,7
    800067f0:	1097e263          	bltu	a5,s1,800068f4 <_Z8userMainv+0x140>
    800067f4:	00249493          	slli	s1,s1,0x2
    800067f8:	00004717          	auipc	a4,0x4
    800067fc:	d9870713          	addi	a4,a4,-616 # 8000a590 <CONSOLE_STATUS+0x580>
    80006800:	00e484b3          	add	s1,s1,a4
    80006804:	0004a783          	lw	a5,0(s1)
    80006808:	00e787b3          	add	a5,a5,a4
    8000680c:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80006810:	fffff097          	auipc	ra,0xfffff
    80006814:	f54080e7          	jalr	-172(ra) # 80005764 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80006818:	00004517          	auipc	a0,0x4
    8000681c:	b4050513          	addi	a0,a0,-1216 # 8000a358 <CONSOLE_STATUS+0x348>
    80006820:	00000097          	auipc	ra,0x0
    80006824:	8cc080e7          	jalr	-1844(ra) # 800060ec <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80006828:	01813083          	ld	ra,24(sp)
    8000682c:	01013403          	ld	s0,16(sp)
    80006830:	00813483          	ld	s1,8(sp)
    80006834:	02010113          	addi	sp,sp,32
    80006838:	00008067          	ret
            Threads_CPP_API_test();
    8000683c:	ffffe097          	auipc	ra,0xffffe
    80006840:	ae8080e7          	jalr	-1304(ra) # 80004324 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80006844:	00004517          	auipc	a0,0x4
    80006848:	b5450513          	addi	a0,a0,-1196 # 8000a398 <CONSOLE_STATUS+0x388>
    8000684c:	00000097          	auipc	ra,0x0
    80006850:	8a0080e7          	jalr	-1888(ra) # 800060ec <_Z11printStringPKc>
            break;
    80006854:	fd5ff06f          	j	80006828 <_Z8userMainv+0x74>
            producerConsumer_C_API();
    80006858:	ffffd097          	auipc	ra,0xffffd
    8000685c:	320080e7          	jalr	800(ra) # 80003b78 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80006860:	00004517          	auipc	a0,0x4
    80006864:	b7850513          	addi	a0,a0,-1160 # 8000a3d8 <CONSOLE_STATUS+0x3c8>
    80006868:	00000097          	auipc	ra,0x0
    8000686c:	884080e7          	jalr	-1916(ra) # 800060ec <_Z11printStringPKc>
            break;
    80006870:	fb9ff06f          	j	80006828 <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    80006874:	fffff097          	auipc	ra,0xfffff
    80006878:	234080e7          	jalr	564(ra) # 80005aa8 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    8000687c:	00004517          	auipc	a0,0x4
    80006880:	bac50513          	addi	a0,a0,-1108 # 8000a428 <CONSOLE_STATUS+0x418>
    80006884:	00000097          	auipc	ra,0x0
    80006888:	868080e7          	jalr	-1944(ra) # 800060ec <_Z11printStringPKc>
            break;
    8000688c:	f9dff06f          	j	80006828 <_Z8userMainv+0x74>
            testSleeping();
    80006890:	00000097          	auipc	ra,0x0
    80006894:	11c080e7          	jalr	284(ra) # 800069ac <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    80006898:	00004517          	auipc	a0,0x4
    8000689c:	be850513          	addi	a0,a0,-1048 # 8000a480 <CONSOLE_STATUS+0x470>
    800068a0:	00000097          	auipc	ra,0x0
    800068a4:	84c080e7          	jalr	-1972(ra) # 800060ec <_Z11printStringPKc>
            break;
    800068a8:	f81ff06f          	j	80006828 <_Z8userMainv+0x74>
            testConsumerProducer();
    800068ac:	ffffe097          	auipc	ra,0xffffe
    800068b0:	f38080e7          	jalr	-200(ra) # 800047e4 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    800068b4:	00004517          	auipc	a0,0x4
    800068b8:	bfc50513          	addi	a0,a0,-1028 # 8000a4b0 <CONSOLE_STATUS+0x4a0>
    800068bc:	00000097          	auipc	ra,0x0
    800068c0:	830080e7          	jalr	-2000(ra) # 800060ec <_Z11printStringPKc>
            break;
    800068c4:	f65ff06f          	j	80006828 <_Z8userMainv+0x74>
            System_Mode_test();
    800068c8:	00000097          	auipc	ra,0x0
    800068cc:	658080e7          	jalr	1624(ra) # 80006f20 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    800068d0:	00004517          	auipc	a0,0x4
    800068d4:	c2050513          	addi	a0,a0,-992 # 8000a4f0 <CONSOLE_STATUS+0x4e0>
    800068d8:	00000097          	auipc	ra,0x0
    800068dc:	814080e7          	jalr	-2028(ra) # 800060ec <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    800068e0:	00004517          	auipc	a0,0x4
    800068e4:	c3050513          	addi	a0,a0,-976 # 8000a510 <CONSOLE_STATUS+0x500>
    800068e8:	00000097          	auipc	ra,0x0
    800068ec:	804080e7          	jalr	-2044(ra) # 800060ec <_Z11printStringPKc>
            break;
    800068f0:	f39ff06f          	j	80006828 <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    800068f4:	00004517          	auipc	a0,0x4
    800068f8:	c7450513          	addi	a0,a0,-908 # 8000a568 <CONSOLE_STATUS+0x558>
    800068fc:	fffff097          	auipc	ra,0xfffff
    80006900:	7f0080e7          	jalr	2032(ra) # 800060ec <_Z11printStringPKc>
    80006904:	f25ff06f          	j	80006828 <_Z8userMainv+0x74>

0000000080006908 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80006908:	fe010113          	addi	sp,sp,-32
    8000690c:	00113c23          	sd	ra,24(sp)
    80006910:	00813823          	sd	s0,16(sp)
    80006914:	00913423          	sd	s1,8(sp)
    80006918:	01213023          	sd	s2,0(sp)
    8000691c:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80006920:	00053903          	ld	s2,0(a0)
    int i = 6;
    80006924:	00600493          	li	s1,6
    while (--i > 0) {
    80006928:	fff4849b          	addiw	s1,s1,-1
    8000692c:	04905463          	blez	s1,80006974 <_ZL9sleepyRunPv+0x6c>
        printString("Hello ");
    80006930:	00004517          	auipc	a0,0x4
    80006934:	c8050513          	addi	a0,a0,-896 # 8000a5b0 <CONSOLE_STATUS+0x5a0>
    80006938:	fffff097          	auipc	ra,0xfffff
    8000693c:	7b4080e7          	jalr	1972(ra) # 800060ec <_Z11printStringPKc>
        printInt(sleep_time);
    80006940:	00000613          	li	a2,0
    80006944:	00a00593          	li	a1,10
    80006948:	0009051b          	sext.w	a0,s2
    8000694c:	00000097          	auipc	ra,0x0
    80006950:	950080e7          	jalr	-1712(ra) # 8000629c <_Z8printIntiii>
        printString(" !\n");
    80006954:	00004517          	auipc	a0,0x4
    80006958:	c6450513          	addi	a0,a0,-924 # 8000a5b8 <CONSOLE_STATUS+0x5a8>
    8000695c:	fffff097          	auipc	ra,0xfffff
    80006960:	790080e7          	jalr	1936(ra) # 800060ec <_Z11printStringPKc>
        time_sleep(sleep_time);
    80006964:	00090513          	mv	a0,s2
    80006968:	ffffb097          	auipc	ra,0xffffb
    8000696c:	c6c080e7          	jalr	-916(ra) # 800015d4 <_Z10time_sleepm>
    while (--i > 0) {
    80006970:	fb9ff06f          	j	80006928 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80006974:	00a00793          	li	a5,10
    80006978:	02f95933          	divu	s2,s2,a5
    8000697c:	fff90913          	addi	s2,s2,-1
    80006980:	00006797          	auipc	a5,0x6
    80006984:	61078793          	addi	a5,a5,1552 # 8000cf90 <_ZL8finished>
    80006988:	01278933          	add	s2,a5,s2
    8000698c:	00100793          	li	a5,1
    80006990:	00f90023          	sb	a5,0(s2)
}
    80006994:	01813083          	ld	ra,24(sp)
    80006998:	01013403          	ld	s0,16(sp)
    8000699c:	00813483          	ld	s1,8(sp)
    800069a0:	00013903          	ld	s2,0(sp)
    800069a4:	02010113          	addi	sp,sp,32
    800069a8:	00008067          	ret

00000000800069ac <_Z12testSleepingv>:

void testSleeping() {
    800069ac:	fc010113          	addi	sp,sp,-64
    800069b0:	02113c23          	sd	ra,56(sp)
    800069b4:	02813823          	sd	s0,48(sp)
    800069b8:	02913423          	sd	s1,40(sp)
    800069bc:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    800069c0:	00a00793          	li	a5,10
    800069c4:	fcf43823          	sd	a5,-48(s0)
    800069c8:	01400793          	li	a5,20
    800069cc:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    800069d0:	00000493          	li	s1,0
    800069d4:	02c0006f          	j	80006a00 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    800069d8:	00349793          	slli	a5,s1,0x3
    800069dc:	fd040613          	addi	a2,s0,-48
    800069e0:	00f60633          	add	a2,a2,a5
    800069e4:	00000597          	auipc	a1,0x0
    800069e8:	f2458593          	addi	a1,a1,-220 # 80006908 <_ZL9sleepyRunPv>
    800069ec:	fc040513          	addi	a0,s0,-64
    800069f0:	00f50533          	add	a0,a0,a5
    800069f4:	ffffb097          	auipc	ra,0xffffb
    800069f8:	904080e7          	jalr	-1788(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    800069fc:	0014849b          	addiw	s1,s1,1
    80006a00:	00100793          	li	a5,1
    80006a04:	fc97dae3          	bge	a5,s1,800069d8 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80006a08:	00006797          	auipc	a5,0x6
    80006a0c:	5887c783          	lbu	a5,1416(a5) # 8000cf90 <_ZL8finished>
    80006a10:	fe078ce3          	beqz	a5,80006a08 <_Z12testSleepingv+0x5c>
    80006a14:	00006797          	auipc	a5,0x6
    80006a18:	57d7c783          	lbu	a5,1405(a5) # 8000cf91 <_ZL8finished+0x1>
    80006a1c:	fe0786e3          	beqz	a5,80006a08 <_Z12testSleepingv+0x5c>
}
    80006a20:	03813083          	ld	ra,56(sp)
    80006a24:	03013403          	ld	s0,48(sp)
    80006a28:	02813483          	ld	s1,40(sp)
    80006a2c:	04010113          	addi	sp,sp,64
    80006a30:	00008067          	ret

0000000080006a34 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80006a34:	fe010113          	addi	sp,sp,-32
    80006a38:	00113c23          	sd	ra,24(sp)
    80006a3c:	00813823          	sd	s0,16(sp)
    80006a40:	00913423          	sd	s1,8(sp)
    80006a44:	01213023          	sd	s2,0(sp)
    80006a48:	02010413          	addi	s0,sp,32
    80006a4c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80006a50:	00100793          	li	a5,1
    80006a54:	02a7f863          	bgeu	a5,a0,80006a84 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80006a58:	00a00793          	li	a5,10
    80006a5c:	02f577b3          	remu	a5,a0,a5
    80006a60:	02078e63          	beqz	a5,80006a9c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80006a64:	fff48513          	addi	a0,s1,-1
    80006a68:	00000097          	auipc	ra,0x0
    80006a6c:	fcc080e7          	jalr	-52(ra) # 80006a34 <_ZL9fibonaccim>
    80006a70:	00050913          	mv	s2,a0
    80006a74:	ffe48513          	addi	a0,s1,-2
    80006a78:	00000097          	auipc	ra,0x0
    80006a7c:	fbc080e7          	jalr	-68(ra) # 80006a34 <_ZL9fibonaccim>
    80006a80:	00a90533          	add	a0,s2,a0
}
    80006a84:	01813083          	ld	ra,24(sp)
    80006a88:	01013403          	ld	s0,16(sp)
    80006a8c:	00813483          	ld	s1,8(sp)
    80006a90:	00013903          	ld	s2,0(sp)
    80006a94:	02010113          	addi	sp,sp,32
    80006a98:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80006a9c:	ffffb097          	auipc	ra,0xffffb
    80006aa0:	930080e7          	jalr	-1744(ra) # 800013cc <_Z15thread_dispatchv>
    80006aa4:	fc1ff06f          	j	80006a64 <_ZL9fibonaccim+0x30>

0000000080006aa8 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80006aa8:	fe010113          	addi	sp,sp,-32
    80006aac:	00113c23          	sd	ra,24(sp)
    80006ab0:	00813823          	sd	s0,16(sp)
    80006ab4:	00913423          	sd	s1,8(sp)
    80006ab8:	01213023          	sd	s2,0(sp)
    80006abc:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80006ac0:	00a00493          	li	s1,10
    80006ac4:	0400006f          	j	80006b04 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006ac8:	00003517          	auipc	a0,0x3
    80006acc:	7b050513          	addi	a0,a0,1968 # 8000a278 <CONSOLE_STATUS+0x268>
    80006ad0:	fffff097          	auipc	ra,0xfffff
    80006ad4:	61c080e7          	jalr	1564(ra) # 800060ec <_Z11printStringPKc>
    80006ad8:	00000613          	li	a2,0
    80006adc:	00a00593          	li	a1,10
    80006ae0:	00048513          	mv	a0,s1
    80006ae4:	fffff097          	auipc	ra,0xfffff
    80006ae8:	7b8080e7          	jalr	1976(ra) # 8000629c <_Z8printIntiii>
    80006aec:	00004517          	auipc	a0,0x4
    80006af0:	98c50513          	addi	a0,a0,-1652 # 8000a478 <CONSOLE_STATUS+0x468>
    80006af4:	fffff097          	auipc	ra,0xfffff
    80006af8:	5f8080e7          	jalr	1528(ra) # 800060ec <_Z11printStringPKc>
    for (; i < 13; i++) {
    80006afc:	0014849b          	addiw	s1,s1,1
    80006b00:	0ff4f493          	andi	s1,s1,255
    80006b04:	00c00793          	li	a5,12
    80006b08:	fc97f0e3          	bgeu	a5,s1,80006ac8 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80006b0c:	00003517          	auipc	a0,0x3
    80006b10:	77450513          	addi	a0,a0,1908 # 8000a280 <CONSOLE_STATUS+0x270>
    80006b14:	fffff097          	auipc	ra,0xfffff
    80006b18:	5d8080e7          	jalr	1496(ra) # 800060ec <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80006b1c:	00500313          	li	t1,5
    thread_dispatch();
    80006b20:	ffffb097          	auipc	ra,0xffffb
    80006b24:	8ac080e7          	jalr	-1876(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80006b28:	01000513          	li	a0,16
    80006b2c:	00000097          	auipc	ra,0x0
    80006b30:	f08080e7          	jalr	-248(ra) # 80006a34 <_ZL9fibonaccim>
    80006b34:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80006b38:	00003517          	auipc	a0,0x3
    80006b3c:	75850513          	addi	a0,a0,1880 # 8000a290 <CONSOLE_STATUS+0x280>
    80006b40:	fffff097          	auipc	ra,0xfffff
    80006b44:	5ac080e7          	jalr	1452(ra) # 800060ec <_Z11printStringPKc>
    80006b48:	00000613          	li	a2,0
    80006b4c:	00a00593          	li	a1,10
    80006b50:	0009051b          	sext.w	a0,s2
    80006b54:	fffff097          	auipc	ra,0xfffff
    80006b58:	748080e7          	jalr	1864(ra) # 8000629c <_Z8printIntiii>
    80006b5c:	00004517          	auipc	a0,0x4
    80006b60:	91c50513          	addi	a0,a0,-1764 # 8000a478 <CONSOLE_STATUS+0x468>
    80006b64:	fffff097          	auipc	ra,0xfffff
    80006b68:	588080e7          	jalr	1416(ra) # 800060ec <_Z11printStringPKc>
    80006b6c:	0400006f          	j	80006bac <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006b70:	00003517          	auipc	a0,0x3
    80006b74:	70850513          	addi	a0,a0,1800 # 8000a278 <CONSOLE_STATUS+0x268>
    80006b78:	fffff097          	auipc	ra,0xfffff
    80006b7c:	574080e7          	jalr	1396(ra) # 800060ec <_Z11printStringPKc>
    80006b80:	00000613          	li	a2,0
    80006b84:	00a00593          	li	a1,10
    80006b88:	00048513          	mv	a0,s1
    80006b8c:	fffff097          	auipc	ra,0xfffff
    80006b90:	710080e7          	jalr	1808(ra) # 8000629c <_Z8printIntiii>
    80006b94:	00004517          	auipc	a0,0x4
    80006b98:	8e450513          	addi	a0,a0,-1820 # 8000a478 <CONSOLE_STATUS+0x468>
    80006b9c:	fffff097          	auipc	ra,0xfffff
    80006ba0:	550080e7          	jalr	1360(ra) # 800060ec <_Z11printStringPKc>
    for (; i < 16; i++) {
    80006ba4:	0014849b          	addiw	s1,s1,1
    80006ba8:	0ff4f493          	andi	s1,s1,255
    80006bac:	00f00793          	li	a5,15
    80006bb0:	fc97f0e3          	bgeu	a5,s1,80006b70 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80006bb4:	00003517          	auipc	a0,0x3
    80006bb8:	6ec50513          	addi	a0,a0,1772 # 8000a2a0 <CONSOLE_STATUS+0x290>
    80006bbc:	fffff097          	auipc	ra,0xfffff
    80006bc0:	530080e7          	jalr	1328(ra) # 800060ec <_Z11printStringPKc>
    finishedD = true;
    80006bc4:	00100793          	li	a5,1
    80006bc8:	00006717          	auipc	a4,0x6
    80006bcc:	3cf70523          	sb	a5,970(a4) # 8000cf92 <_ZL9finishedD>
    thread_dispatch();
    80006bd0:	ffffa097          	auipc	ra,0xffffa
    80006bd4:	7fc080e7          	jalr	2044(ra) # 800013cc <_Z15thread_dispatchv>
}
    80006bd8:	01813083          	ld	ra,24(sp)
    80006bdc:	01013403          	ld	s0,16(sp)
    80006be0:	00813483          	ld	s1,8(sp)
    80006be4:	00013903          	ld	s2,0(sp)
    80006be8:	02010113          	addi	sp,sp,32
    80006bec:	00008067          	ret

0000000080006bf0 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80006bf0:	fe010113          	addi	sp,sp,-32
    80006bf4:	00113c23          	sd	ra,24(sp)
    80006bf8:	00813823          	sd	s0,16(sp)
    80006bfc:	00913423          	sd	s1,8(sp)
    80006c00:	01213023          	sd	s2,0(sp)
    80006c04:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80006c08:	00000493          	li	s1,0
    80006c0c:	0400006f          	j	80006c4c <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80006c10:	00003517          	auipc	a0,0x3
    80006c14:	63850513          	addi	a0,a0,1592 # 8000a248 <CONSOLE_STATUS+0x238>
    80006c18:	fffff097          	auipc	ra,0xfffff
    80006c1c:	4d4080e7          	jalr	1236(ra) # 800060ec <_Z11printStringPKc>
    80006c20:	00000613          	li	a2,0
    80006c24:	00a00593          	li	a1,10
    80006c28:	00048513          	mv	a0,s1
    80006c2c:	fffff097          	auipc	ra,0xfffff
    80006c30:	670080e7          	jalr	1648(ra) # 8000629c <_Z8printIntiii>
    80006c34:	00004517          	auipc	a0,0x4
    80006c38:	84450513          	addi	a0,a0,-1980 # 8000a478 <CONSOLE_STATUS+0x468>
    80006c3c:	fffff097          	auipc	ra,0xfffff
    80006c40:	4b0080e7          	jalr	1200(ra) # 800060ec <_Z11printStringPKc>
    for (; i < 3; i++) {
    80006c44:	0014849b          	addiw	s1,s1,1
    80006c48:	0ff4f493          	andi	s1,s1,255
    80006c4c:	00200793          	li	a5,2
    80006c50:	fc97f0e3          	bgeu	a5,s1,80006c10 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80006c54:	00003517          	auipc	a0,0x3
    80006c58:	5fc50513          	addi	a0,a0,1532 # 8000a250 <CONSOLE_STATUS+0x240>
    80006c5c:	fffff097          	auipc	ra,0xfffff
    80006c60:	490080e7          	jalr	1168(ra) # 800060ec <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80006c64:	00700313          	li	t1,7
    thread_dispatch();
    80006c68:	ffffa097          	auipc	ra,0xffffa
    80006c6c:	764080e7          	jalr	1892(ra) # 800013cc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80006c70:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80006c74:	00003517          	auipc	a0,0x3
    80006c78:	5ec50513          	addi	a0,a0,1516 # 8000a260 <CONSOLE_STATUS+0x250>
    80006c7c:	fffff097          	auipc	ra,0xfffff
    80006c80:	470080e7          	jalr	1136(ra) # 800060ec <_Z11printStringPKc>
    80006c84:	00000613          	li	a2,0
    80006c88:	00a00593          	li	a1,10
    80006c8c:	0009051b          	sext.w	a0,s2
    80006c90:	fffff097          	auipc	ra,0xfffff
    80006c94:	60c080e7          	jalr	1548(ra) # 8000629c <_Z8printIntiii>
    80006c98:	00003517          	auipc	a0,0x3
    80006c9c:	7e050513          	addi	a0,a0,2016 # 8000a478 <CONSOLE_STATUS+0x468>
    80006ca0:	fffff097          	auipc	ra,0xfffff
    80006ca4:	44c080e7          	jalr	1100(ra) # 800060ec <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80006ca8:	00c00513          	li	a0,12
    80006cac:	00000097          	auipc	ra,0x0
    80006cb0:	d88080e7          	jalr	-632(ra) # 80006a34 <_ZL9fibonaccim>
    80006cb4:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80006cb8:	00003517          	auipc	a0,0x3
    80006cbc:	5b050513          	addi	a0,a0,1456 # 8000a268 <CONSOLE_STATUS+0x258>
    80006cc0:	fffff097          	auipc	ra,0xfffff
    80006cc4:	42c080e7          	jalr	1068(ra) # 800060ec <_Z11printStringPKc>
    80006cc8:	00000613          	li	a2,0
    80006ccc:	00a00593          	li	a1,10
    80006cd0:	0009051b          	sext.w	a0,s2
    80006cd4:	fffff097          	auipc	ra,0xfffff
    80006cd8:	5c8080e7          	jalr	1480(ra) # 8000629c <_Z8printIntiii>
    80006cdc:	00003517          	auipc	a0,0x3
    80006ce0:	79c50513          	addi	a0,a0,1948 # 8000a478 <CONSOLE_STATUS+0x468>
    80006ce4:	fffff097          	auipc	ra,0xfffff
    80006ce8:	408080e7          	jalr	1032(ra) # 800060ec <_Z11printStringPKc>
    80006cec:	0400006f          	j	80006d2c <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80006cf0:	00003517          	auipc	a0,0x3
    80006cf4:	55850513          	addi	a0,a0,1368 # 8000a248 <CONSOLE_STATUS+0x238>
    80006cf8:	fffff097          	auipc	ra,0xfffff
    80006cfc:	3f4080e7          	jalr	1012(ra) # 800060ec <_Z11printStringPKc>
    80006d00:	00000613          	li	a2,0
    80006d04:	00a00593          	li	a1,10
    80006d08:	00048513          	mv	a0,s1
    80006d0c:	fffff097          	auipc	ra,0xfffff
    80006d10:	590080e7          	jalr	1424(ra) # 8000629c <_Z8printIntiii>
    80006d14:	00003517          	auipc	a0,0x3
    80006d18:	76450513          	addi	a0,a0,1892 # 8000a478 <CONSOLE_STATUS+0x468>
    80006d1c:	fffff097          	auipc	ra,0xfffff
    80006d20:	3d0080e7          	jalr	976(ra) # 800060ec <_Z11printStringPKc>
    for (; i < 6; i++) {
    80006d24:	0014849b          	addiw	s1,s1,1
    80006d28:	0ff4f493          	andi	s1,s1,255
    80006d2c:	00500793          	li	a5,5
    80006d30:	fc97f0e3          	bgeu	a5,s1,80006cf0 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80006d34:	00003517          	auipc	a0,0x3
    80006d38:	4ec50513          	addi	a0,a0,1260 # 8000a220 <CONSOLE_STATUS+0x210>
    80006d3c:	fffff097          	auipc	ra,0xfffff
    80006d40:	3b0080e7          	jalr	944(ra) # 800060ec <_Z11printStringPKc>
    finishedC = true;
    80006d44:	00100793          	li	a5,1
    80006d48:	00006717          	auipc	a4,0x6
    80006d4c:	24f705a3          	sb	a5,587(a4) # 8000cf93 <_ZL9finishedC>
    thread_dispatch();
    80006d50:	ffffa097          	auipc	ra,0xffffa
    80006d54:	67c080e7          	jalr	1660(ra) # 800013cc <_Z15thread_dispatchv>
}
    80006d58:	01813083          	ld	ra,24(sp)
    80006d5c:	01013403          	ld	s0,16(sp)
    80006d60:	00813483          	ld	s1,8(sp)
    80006d64:	00013903          	ld	s2,0(sp)
    80006d68:	02010113          	addi	sp,sp,32
    80006d6c:	00008067          	ret

0000000080006d70 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80006d70:	fe010113          	addi	sp,sp,-32
    80006d74:	00113c23          	sd	ra,24(sp)
    80006d78:	00813823          	sd	s0,16(sp)
    80006d7c:	00913423          	sd	s1,8(sp)
    80006d80:	01213023          	sd	s2,0(sp)
    80006d84:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80006d88:	00000913          	li	s2,0
    80006d8c:	0400006f          	j	80006dcc <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80006d90:	ffffa097          	auipc	ra,0xffffa
    80006d94:	63c080e7          	jalr	1596(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006d98:	00148493          	addi	s1,s1,1
    80006d9c:	000027b7          	lui	a5,0x2
    80006da0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006da4:	0097ee63          	bltu	a5,s1,80006dc0 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006da8:	00000713          	li	a4,0
    80006dac:	000077b7          	lui	a5,0x7
    80006db0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006db4:	fce7eee3          	bltu	a5,a4,80006d90 <_ZL11workerBodyBPv+0x20>
    80006db8:	00170713          	addi	a4,a4,1
    80006dbc:	ff1ff06f          	j	80006dac <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80006dc0:	00a00793          	li	a5,10
    80006dc4:	04f90663          	beq	s2,a5,80006e10 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80006dc8:	00190913          	addi	s2,s2,1
    80006dcc:	00f00793          	li	a5,15
    80006dd0:	0527e463          	bltu	a5,s2,80006e18 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80006dd4:	00003517          	auipc	a0,0x3
    80006dd8:	45c50513          	addi	a0,a0,1116 # 8000a230 <CONSOLE_STATUS+0x220>
    80006ddc:	fffff097          	auipc	ra,0xfffff
    80006de0:	310080e7          	jalr	784(ra) # 800060ec <_Z11printStringPKc>
    80006de4:	00000613          	li	a2,0
    80006de8:	00a00593          	li	a1,10
    80006dec:	0009051b          	sext.w	a0,s2
    80006df0:	fffff097          	auipc	ra,0xfffff
    80006df4:	4ac080e7          	jalr	1196(ra) # 8000629c <_Z8printIntiii>
    80006df8:	00003517          	auipc	a0,0x3
    80006dfc:	68050513          	addi	a0,a0,1664 # 8000a478 <CONSOLE_STATUS+0x468>
    80006e00:	fffff097          	auipc	ra,0xfffff
    80006e04:	2ec080e7          	jalr	748(ra) # 800060ec <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006e08:	00000493          	li	s1,0
    80006e0c:	f91ff06f          	j	80006d9c <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80006e10:	14102ff3          	csrr	t6,sepc
    80006e14:	fb5ff06f          	j	80006dc8 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80006e18:	00003517          	auipc	a0,0x3
    80006e1c:	42050513          	addi	a0,a0,1056 # 8000a238 <CONSOLE_STATUS+0x228>
    80006e20:	fffff097          	auipc	ra,0xfffff
    80006e24:	2cc080e7          	jalr	716(ra) # 800060ec <_Z11printStringPKc>
    finishedB = true;
    80006e28:	00100793          	li	a5,1
    80006e2c:	00006717          	auipc	a4,0x6
    80006e30:	16f70423          	sb	a5,360(a4) # 8000cf94 <_ZL9finishedB>
    thread_dispatch();
    80006e34:	ffffa097          	auipc	ra,0xffffa
    80006e38:	598080e7          	jalr	1432(ra) # 800013cc <_Z15thread_dispatchv>
}
    80006e3c:	01813083          	ld	ra,24(sp)
    80006e40:	01013403          	ld	s0,16(sp)
    80006e44:	00813483          	ld	s1,8(sp)
    80006e48:	00013903          	ld	s2,0(sp)
    80006e4c:	02010113          	addi	sp,sp,32
    80006e50:	00008067          	ret

0000000080006e54 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80006e54:	fe010113          	addi	sp,sp,-32
    80006e58:	00113c23          	sd	ra,24(sp)
    80006e5c:	00813823          	sd	s0,16(sp)
    80006e60:	00913423          	sd	s1,8(sp)
    80006e64:	01213023          	sd	s2,0(sp)
    80006e68:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006e6c:	00000913          	li	s2,0
    80006e70:	0380006f          	j	80006ea8 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80006e74:	ffffa097          	auipc	ra,0xffffa
    80006e78:	558080e7          	jalr	1368(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006e7c:	00148493          	addi	s1,s1,1
    80006e80:	000027b7          	lui	a5,0x2
    80006e84:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006e88:	0097ee63          	bltu	a5,s1,80006ea4 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006e8c:	00000713          	li	a4,0
    80006e90:	000077b7          	lui	a5,0x7
    80006e94:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006e98:	fce7eee3          	bltu	a5,a4,80006e74 <_ZL11workerBodyAPv+0x20>
    80006e9c:	00170713          	addi	a4,a4,1
    80006ea0:	ff1ff06f          	j	80006e90 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80006ea4:	00190913          	addi	s2,s2,1
    80006ea8:	00900793          	li	a5,9
    80006eac:	0527e063          	bltu	a5,s2,80006eec <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80006eb0:	00003517          	auipc	a0,0x3
    80006eb4:	36850513          	addi	a0,a0,872 # 8000a218 <CONSOLE_STATUS+0x208>
    80006eb8:	fffff097          	auipc	ra,0xfffff
    80006ebc:	234080e7          	jalr	564(ra) # 800060ec <_Z11printStringPKc>
    80006ec0:	00000613          	li	a2,0
    80006ec4:	00a00593          	li	a1,10
    80006ec8:	0009051b          	sext.w	a0,s2
    80006ecc:	fffff097          	auipc	ra,0xfffff
    80006ed0:	3d0080e7          	jalr	976(ra) # 8000629c <_Z8printIntiii>
    80006ed4:	00003517          	auipc	a0,0x3
    80006ed8:	5a450513          	addi	a0,a0,1444 # 8000a478 <CONSOLE_STATUS+0x468>
    80006edc:	fffff097          	auipc	ra,0xfffff
    80006ee0:	210080e7          	jalr	528(ra) # 800060ec <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006ee4:	00000493          	li	s1,0
    80006ee8:	f99ff06f          	j	80006e80 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006eec:	00003517          	auipc	a0,0x3
    80006ef0:	33450513          	addi	a0,a0,820 # 8000a220 <CONSOLE_STATUS+0x210>
    80006ef4:	fffff097          	auipc	ra,0xfffff
    80006ef8:	1f8080e7          	jalr	504(ra) # 800060ec <_Z11printStringPKc>
    finishedA = true;
    80006efc:	00100793          	li	a5,1
    80006f00:	00006717          	auipc	a4,0x6
    80006f04:	08f70aa3          	sb	a5,149(a4) # 8000cf95 <_ZL9finishedA>
}
    80006f08:	01813083          	ld	ra,24(sp)
    80006f0c:	01013403          	ld	s0,16(sp)
    80006f10:	00813483          	ld	s1,8(sp)
    80006f14:	00013903          	ld	s2,0(sp)
    80006f18:	02010113          	addi	sp,sp,32
    80006f1c:	00008067          	ret

0000000080006f20 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006f20:	fd010113          	addi	sp,sp,-48
    80006f24:	02113423          	sd	ra,40(sp)
    80006f28:	02813023          	sd	s0,32(sp)
    80006f2c:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006f30:	00000613          	li	a2,0
    80006f34:	00000597          	auipc	a1,0x0
    80006f38:	f2058593          	addi	a1,a1,-224 # 80006e54 <_ZL11workerBodyAPv>
    80006f3c:	fd040513          	addi	a0,s0,-48
    80006f40:	ffffa097          	auipc	ra,0xffffa
    80006f44:	3b8080e7          	jalr	952(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80006f48:	00003517          	auipc	a0,0x3
    80006f4c:	36850513          	addi	a0,a0,872 # 8000a2b0 <CONSOLE_STATUS+0x2a0>
    80006f50:	fffff097          	auipc	ra,0xfffff
    80006f54:	19c080e7          	jalr	412(ra) # 800060ec <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80006f58:	00000613          	li	a2,0
    80006f5c:	00000597          	auipc	a1,0x0
    80006f60:	e1458593          	addi	a1,a1,-492 # 80006d70 <_ZL11workerBodyBPv>
    80006f64:	fd840513          	addi	a0,s0,-40
    80006f68:	ffffa097          	auipc	ra,0xffffa
    80006f6c:	390080e7          	jalr	912(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80006f70:	00003517          	auipc	a0,0x3
    80006f74:	35850513          	addi	a0,a0,856 # 8000a2c8 <CONSOLE_STATUS+0x2b8>
    80006f78:	fffff097          	auipc	ra,0xfffff
    80006f7c:	174080e7          	jalr	372(ra) # 800060ec <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006f80:	00000613          	li	a2,0
    80006f84:	00000597          	auipc	a1,0x0
    80006f88:	c6c58593          	addi	a1,a1,-916 # 80006bf0 <_ZL11workerBodyCPv>
    80006f8c:	fe040513          	addi	a0,s0,-32
    80006f90:	ffffa097          	auipc	ra,0xffffa
    80006f94:	368080e7          	jalr	872(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80006f98:	00003517          	auipc	a0,0x3
    80006f9c:	34850513          	addi	a0,a0,840 # 8000a2e0 <CONSOLE_STATUS+0x2d0>
    80006fa0:	fffff097          	auipc	ra,0xfffff
    80006fa4:	14c080e7          	jalr	332(ra) # 800060ec <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80006fa8:	00000613          	li	a2,0
    80006fac:	00000597          	auipc	a1,0x0
    80006fb0:	afc58593          	addi	a1,a1,-1284 # 80006aa8 <_ZL11workerBodyDPv>
    80006fb4:	fe840513          	addi	a0,s0,-24
    80006fb8:	ffffa097          	auipc	ra,0xffffa
    80006fbc:	340080e7          	jalr	832(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80006fc0:	00003517          	auipc	a0,0x3
    80006fc4:	33850513          	addi	a0,a0,824 # 8000a2f8 <CONSOLE_STATUS+0x2e8>
    80006fc8:	fffff097          	auipc	ra,0xfffff
    80006fcc:	124080e7          	jalr	292(ra) # 800060ec <_Z11printStringPKc>
    80006fd0:	00c0006f          	j	80006fdc <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006fd4:	ffffa097          	auipc	ra,0xffffa
    80006fd8:	3f8080e7          	jalr	1016(ra) # 800013cc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006fdc:	00006797          	auipc	a5,0x6
    80006fe0:	fb97c783          	lbu	a5,-71(a5) # 8000cf95 <_ZL9finishedA>
    80006fe4:	fe0788e3          	beqz	a5,80006fd4 <_Z16System_Mode_testv+0xb4>
    80006fe8:	00006797          	auipc	a5,0x6
    80006fec:	fac7c783          	lbu	a5,-84(a5) # 8000cf94 <_ZL9finishedB>
    80006ff0:	fe0782e3          	beqz	a5,80006fd4 <_Z16System_Mode_testv+0xb4>
    80006ff4:	00006797          	auipc	a5,0x6
    80006ff8:	f9f7c783          	lbu	a5,-97(a5) # 8000cf93 <_ZL9finishedC>
    80006ffc:	fc078ce3          	beqz	a5,80006fd4 <_Z16System_Mode_testv+0xb4>
    80007000:	00006797          	auipc	a5,0x6
    80007004:	f927c783          	lbu	a5,-110(a5) # 8000cf92 <_ZL9finishedD>
    80007008:	fc0786e3          	beqz	a5,80006fd4 <_Z16System_Mode_testv+0xb4>
    }

}
    8000700c:	02813083          	ld	ra,40(sp)
    80007010:	02013403          	ld	s0,32(sp)
    80007014:	03010113          	addi	sp,sp,48
    80007018:	00008067          	ret

000000008000701c <start>:
    8000701c:	ff010113          	addi	sp,sp,-16
    80007020:	00813423          	sd	s0,8(sp)
    80007024:	01010413          	addi	s0,sp,16
    80007028:	300027f3          	csrr	a5,mstatus
    8000702c:	ffffe737          	lui	a4,0xffffe
    80007030:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff05ff>
    80007034:	00e7f7b3          	and	a5,a5,a4
    80007038:	00001737          	lui	a4,0x1
    8000703c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80007040:	00e7e7b3          	or	a5,a5,a4
    80007044:	30079073          	csrw	mstatus,a5
    80007048:	00000797          	auipc	a5,0x0
    8000704c:	16078793          	addi	a5,a5,352 # 800071a8 <system_main>
    80007050:	34179073          	csrw	mepc,a5
    80007054:	00000793          	li	a5,0
    80007058:	18079073          	csrw	satp,a5
    8000705c:	000107b7          	lui	a5,0x10
    80007060:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80007064:	30279073          	csrw	medeleg,a5
    80007068:	30379073          	csrw	mideleg,a5
    8000706c:	104027f3          	csrr	a5,sie
    80007070:	2227e793          	ori	a5,a5,546
    80007074:	10479073          	csrw	sie,a5
    80007078:	fff00793          	li	a5,-1
    8000707c:	00a7d793          	srli	a5,a5,0xa
    80007080:	3b079073          	csrw	pmpaddr0,a5
    80007084:	00f00793          	li	a5,15
    80007088:	3a079073          	csrw	pmpcfg0,a5
    8000708c:	f14027f3          	csrr	a5,mhartid
    80007090:	0200c737          	lui	a4,0x200c
    80007094:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80007098:	0007869b          	sext.w	a3,a5
    8000709c:	00269713          	slli	a4,a3,0x2
    800070a0:	000f4637          	lui	a2,0xf4
    800070a4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800070a8:	00d70733          	add	a4,a4,a3
    800070ac:	0037979b          	slliw	a5,a5,0x3
    800070b0:	020046b7          	lui	a3,0x2004
    800070b4:	00d787b3          	add	a5,a5,a3
    800070b8:	00c585b3          	add	a1,a1,a2
    800070bc:	00371693          	slli	a3,a4,0x3
    800070c0:	00006717          	auipc	a4,0x6
    800070c4:	ee070713          	addi	a4,a4,-288 # 8000cfa0 <timer_scratch>
    800070c8:	00b7b023          	sd	a1,0(a5)
    800070cc:	00d70733          	add	a4,a4,a3
    800070d0:	00f73c23          	sd	a5,24(a4)
    800070d4:	02c73023          	sd	a2,32(a4)
    800070d8:	34071073          	csrw	mscratch,a4
    800070dc:	00000797          	auipc	a5,0x0
    800070e0:	6e478793          	addi	a5,a5,1764 # 800077c0 <timervec>
    800070e4:	30579073          	csrw	mtvec,a5
    800070e8:	300027f3          	csrr	a5,mstatus
    800070ec:	0087e793          	ori	a5,a5,8
    800070f0:	30079073          	csrw	mstatus,a5
    800070f4:	304027f3          	csrr	a5,mie
    800070f8:	0807e793          	ori	a5,a5,128
    800070fc:	30479073          	csrw	mie,a5
    80007100:	f14027f3          	csrr	a5,mhartid
    80007104:	0007879b          	sext.w	a5,a5
    80007108:	00078213          	mv	tp,a5
    8000710c:	30200073          	mret
    80007110:	00813403          	ld	s0,8(sp)
    80007114:	01010113          	addi	sp,sp,16
    80007118:	00008067          	ret

000000008000711c <timerinit>:
    8000711c:	ff010113          	addi	sp,sp,-16
    80007120:	00813423          	sd	s0,8(sp)
    80007124:	01010413          	addi	s0,sp,16
    80007128:	f14027f3          	csrr	a5,mhartid
    8000712c:	0200c737          	lui	a4,0x200c
    80007130:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80007134:	0007869b          	sext.w	a3,a5
    80007138:	00269713          	slli	a4,a3,0x2
    8000713c:	000f4637          	lui	a2,0xf4
    80007140:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80007144:	00d70733          	add	a4,a4,a3
    80007148:	0037979b          	slliw	a5,a5,0x3
    8000714c:	020046b7          	lui	a3,0x2004
    80007150:	00d787b3          	add	a5,a5,a3
    80007154:	00c585b3          	add	a1,a1,a2
    80007158:	00371693          	slli	a3,a4,0x3
    8000715c:	00006717          	auipc	a4,0x6
    80007160:	e4470713          	addi	a4,a4,-444 # 8000cfa0 <timer_scratch>
    80007164:	00b7b023          	sd	a1,0(a5)
    80007168:	00d70733          	add	a4,a4,a3
    8000716c:	00f73c23          	sd	a5,24(a4)
    80007170:	02c73023          	sd	a2,32(a4)
    80007174:	34071073          	csrw	mscratch,a4
    80007178:	00000797          	auipc	a5,0x0
    8000717c:	64878793          	addi	a5,a5,1608 # 800077c0 <timervec>
    80007180:	30579073          	csrw	mtvec,a5
    80007184:	300027f3          	csrr	a5,mstatus
    80007188:	0087e793          	ori	a5,a5,8
    8000718c:	30079073          	csrw	mstatus,a5
    80007190:	304027f3          	csrr	a5,mie
    80007194:	0807e793          	ori	a5,a5,128
    80007198:	30479073          	csrw	mie,a5
    8000719c:	00813403          	ld	s0,8(sp)
    800071a0:	01010113          	addi	sp,sp,16
    800071a4:	00008067          	ret

00000000800071a8 <system_main>:
    800071a8:	fe010113          	addi	sp,sp,-32
    800071ac:	00813823          	sd	s0,16(sp)
    800071b0:	00913423          	sd	s1,8(sp)
    800071b4:	00113c23          	sd	ra,24(sp)
    800071b8:	02010413          	addi	s0,sp,32
    800071bc:	00000097          	auipc	ra,0x0
    800071c0:	0c4080e7          	jalr	196(ra) # 80007280 <cpuid>
    800071c4:	00006497          	auipc	s1,0x6
    800071c8:	cec48493          	addi	s1,s1,-788 # 8000ceb0 <started>
    800071cc:	02050263          	beqz	a0,800071f0 <system_main+0x48>
    800071d0:	0004a783          	lw	a5,0(s1)
    800071d4:	0007879b          	sext.w	a5,a5
    800071d8:	fe078ce3          	beqz	a5,800071d0 <system_main+0x28>
    800071dc:	0ff0000f          	fence
    800071e0:	00003517          	auipc	a0,0x3
    800071e4:	41050513          	addi	a0,a0,1040 # 8000a5f0 <CONSOLE_STATUS+0x5e0>
    800071e8:	00001097          	auipc	ra,0x1
    800071ec:	a74080e7          	jalr	-1420(ra) # 80007c5c <panic>
    800071f0:	00001097          	auipc	ra,0x1
    800071f4:	9c8080e7          	jalr	-1592(ra) # 80007bb8 <consoleinit>
    800071f8:	00001097          	auipc	ra,0x1
    800071fc:	154080e7          	jalr	340(ra) # 8000834c <printfinit>
    80007200:	00003517          	auipc	a0,0x3
    80007204:	27850513          	addi	a0,a0,632 # 8000a478 <CONSOLE_STATUS+0x468>
    80007208:	00001097          	auipc	ra,0x1
    8000720c:	ab0080e7          	jalr	-1360(ra) # 80007cb8 <__printf>
    80007210:	00003517          	auipc	a0,0x3
    80007214:	3b050513          	addi	a0,a0,944 # 8000a5c0 <CONSOLE_STATUS+0x5b0>
    80007218:	00001097          	auipc	ra,0x1
    8000721c:	aa0080e7          	jalr	-1376(ra) # 80007cb8 <__printf>
    80007220:	00003517          	auipc	a0,0x3
    80007224:	25850513          	addi	a0,a0,600 # 8000a478 <CONSOLE_STATUS+0x468>
    80007228:	00001097          	auipc	ra,0x1
    8000722c:	a90080e7          	jalr	-1392(ra) # 80007cb8 <__printf>
    80007230:	00001097          	auipc	ra,0x1
    80007234:	4a8080e7          	jalr	1192(ra) # 800086d8 <kinit>
    80007238:	00000097          	auipc	ra,0x0
    8000723c:	148080e7          	jalr	328(ra) # 80007380 <trapinit>
    80007240:	00000097          	auipc	ra,0x0
    80007244:	16c080e7          	jalr	364(ra) # 800073ac <trapinithart>
    80007248:	00000097          	auipc	ra,0x0
    8000724c:	5b8080e7          	jalr	1464(ra) # 80007800 <plicinit>
    80007250:	00000097          	auipc	ra,0x0
    80007254:	5d8080e7          	jalr	1496(ra) # 80007828 <plicinithart>
    80007258:	00000097          	auipc	ra,0x0
    8000725c:	078080e7          	jalr	120(ra) # 800072d0 <userinit>
    80007260:	0ff0000f          	fence
    80007264:	00100793          	li	a5,1
    80007268:	00003517          	auipc	a0,0x3
    8000726c:	37050513          	addi	a0,a0,880 # 8000a5d8 <CONSOLE_STATUS+0x5c8>
    80007270:	00f4a023          	sw	a5,0(s1)
    80007274:	00001097          	auipc	ra,0x1
    80007278:	a44080e7          	jalr	-1468(ra) # 80007cb8 <__printf>
    8000727c:	0000006f          	j	8000727c <system_main+0xd4>

0000000080007280 <cpuid>:
    80007280:	ff010113          	addi	sp,sp,-16
    80007284:	00813423          	sd	s0,8(sp)
    80007288:	01010413          	addi	s0,sp,16
    8000728c:	00020513          	mv	a0,tp
    80007290:	00813403          	ld	s0,8(sp)
    80007294:	0005051b          	sext.w	a0,a0
    80007298:	01010113          	addi	sp,sp,16
    8000729c:	00008067          	ret

00000000800072a0 <mycpu>:
    800072a0:	ff010113          	addi	sp,sp,-16
    800072a4:	00813423          	sd	s0,8(sp)
    800072a8:	01010413          	addi	s0,sp,16
    800072ac:	00020793          	mv	a5,tp
    800072b0:	00813403          	ld	s0,8(sp)
    800072b4:	0007879b          	sext.w	a5,a5
    800072b8:	00779793          	slli	a5,a5,0x7
    800072bc:	00007517          	auipc	a0,0x7
    800072c0:	d1450513          	addi	a0,a0,-748 # 8000dfd0 <cpus>
    800072c4:	00f50533          	add	a0,a0,a5
    800072c8:	01010113          	addi	sp,sp,16
    800072cc:	00008067          	ret

00000000800072d0 <userinit>:
    800072d0:	ff010113          	addi	sp,sp,-16
    800072d4:	00813423          	sd	s0,8(sp)
    800072d8:	01010413          	addi	s0,sp,16
    800072dc:	00813403          	ld	s0,8(sp)
    800072e0:	01010113          	addi	sp,sp,16
    800072e4:	ffffb317          	auipc	t1,0xffffb
    800072e8:	a1030067          	jr	-1520(t1) # 80001cf4 <main>

00000000800072ec <either_copyout>:
    800072ec:	ff010113          	addi	sp,sp,-16
    800072f0:	00813023          	sd	s0,0(sp)
    800072f4:	00113423          	sd	ra,8(sp)
    800072f8:	01010413          	addi	s0,sp,16
    800072fc:	02051663          	bnez	a0,80007328 <either_copyout+0x3c>
    80007300:	00058513          	mv	a0,a1
    80007304:	00060593          	mv	a1,a2
    80007308:	0006861b          	sext.w	a2,a3
    8000730c:	00002097          	auipc	ra,0x2
    80007310:	c58080e7          	jalr	-936(ra) # 80008f64 <__memmove>
    80007314:	00813083          	ld	ra,8(sp)
    80007318:	00013403          	ld	s0,0(sp)
    8000731c:	00000513          	li	a0,0
    80007320:	01010113          	addi	sp,sp,16
    80007324:	00008067          	ret
    80007328:	00003517          	auipc	a0,0x3
    8000732c:	2f050513          	addi	a0,a0,752 # 8000a618 <CONSOLE_STATUS+0x608>
    80007330:	00001097          	auipc	ra,0x1
    80007334:	92c080e7          	jalr	-1748(ra) # 80007c5c <panic>

0000000080007338 <either_copyin>:
    80007338:	ff010113          	addi	sp,sp,-16
    8000733c:	00813023          	sd	s0,0(sp)
    80007340:	00113423          	sd	ra,8(sp)
    80007344:	01010413          	addi	s0,sp,16
    80007348:	02059463          	bnez	a1,80007370 <either_copyin+0x38>
    8000734c:	00060593          	mv	a1,a2
    80007350:	0006861b          	sext.w	a2,a3
    80007354:	00002097          	auipc	ra,0x2
    80007358:	c10080e7          	jalr	-1008(ra) # 80008f64 <__memmove>
    8000735c:	00813083          	ld	ra,8(sp)
    80007360:	00013403          	ld	s0,0(sp)
    80007364:	00000513          	li	a0,0
    80007368:	01010113          	addi	sp,sp,16
    8000736c:	00008067          	ret
    80007370:	00003517          	auipc	a0,0x3
    80007374:	2d050513          	addi	a0,a0,720 # 8000a640 <CONSOLE_STATUS+0x630>
    80007378:	00001097          	auipc	ra,0x1
    8000737c:	8e4080e7          	jalr	-1820(ra) # 80007c5c <panic>

0000000080007380 <trapinit>:
    80007380:	ff010113          	addi	sp,sp,-16
    80007384:	00813423          	sd	s0,8(sp)
    80007388:	01010413          	addi	s0,sp,16
    8000738c:	00813403          	ld	s0,8(sp)
    80007390:	00003597          	auipc	a1,0x3
    80007394:	2d858593          	addi	a1,a1,728 # 8000a668 <CONSOLE_STATUS+0x658>
    80007398:	00007517          	auipc	a0,0x7
    8000739c:	cb850513          	addi	a0,a0,-840 # 8000e050 <tickslock>
    800073a0:	01010113          	addi	sp,sp,16
    800073a4:	00001317          	auipc	t1,0x1
    800073a8:	5c430067          	jr	1476(t1) # 80008968 <initlock>

00000000800073ac <trapinithart>:
    800073ac:	ff010113          	addi	sp,sp,-16
    800073b0:	00813423          	sd	s0,8(sp)
    800073b4:	01010413          	addi	s0,sp,16
    800073b8:	00000797          	auipc	a5,0x0
    800073bc:	2f878793          	addi	a5,a5,760 # 800076b0 <kernelvec>
    800073c0:	10579073          	csrw	stvec,a5
    800073c4:	00813403          	ld	s0,8(sp)
    800073c8:	01010113          	addi	sp,sp,16
    800073cc:	00008067          	ret

00000000800073d0 <usertrap>:
    800073d0:	ff010113          	addi	sp,sp,-16
    800073d4:	00813423          	sd	s0,8(sp)
    800073d8:	01010413          	addi	s0,sp,16
    800073dc:	00813403          	ld	s0,8(sp)
    800073e0:	01010113          	addi	sp,sp,16
    800073e4:	00008067          	ret

00000000800073e8 <usertrapret>:
    800073e8:	ff010113          	addi	sp,sp,-16
    800073ec:	00813423          	sd	s0,8(sp)
    800073f0:	01010413          	addi	s0,sp,16
    800073f4:	00813403          	ld	s0,8(sp)
    800073f8:	01010113          	addi	sp,sp,16
    800073fc:	00008067          	ret

0000000080007400 <kerneltrap>:
    80007400:	fe010113          	addi	sp,sp,-32
    80007404:	00813823          	sd	s0,16(sp)
    80007408:	00113c23          	sd	ra,24(sp)
    8000740c:	00913423          	sd	s1,8(sp)
    80007410:	02010413          	addi	s0,sp,32
    80007414:	142025f3          	csrr	a1,scause
    80007418:	100027f3          	csrr	a5,sstatus
    8000741c:	0027f793          	andi	a5,a5,2
    80007420:	10079c63          	bnez	a5,80007538 <kerneltrap+0x138>
    80007424:	142027f3          	csrr	a5,scause
    80007428:	0207ce63          	bltz	a5,80007464 <kerneltrap+0x64>
    8000742c:	00003517          	auipc	a0,0x3
    80007430:	28450513          	addi	a0,a0,644 # 8000a6b0 <CONSOLE_STATUS+0x6a0>
    80007434:	00001097          	auipc	ra,0x1
    80007438:	884080e7          	jalr	-1916(ra) # 80007cb8 <__printf>
    8000743c:	141025f3          	csrr	a1,sepc
    80007440:	14302673          	csrr	a2,stval
    80007444:	00003517          	auipc	a0,0x3
    80007448:	27c50513          	addi	a0,a0,636 # 8000a6c0 <CONSOLE_STATUS+0x6b0>
    8000744c:	00001097          	auipc	ra,0x1
    80007450:	86c080e7          	jalr	-1940(ra) # 80007cb8 <__printf>
    80007454:	00003517          	auipc	a0,0x3
    80007458:	28450513          	addi	a0,a0,644 # 8000a6d8 <CONSOLE_STATUS+0x6c8>
    8000745c:	00001097          	auipc	ra,0x1
    80007460:	800080e7          	jalr	-2048(ra) # 80007c5c <panic>
    80007464:	0ff7f713          	andi	a4,a5,255
    80007468:	00900693          	li	a3,9
    8000746c:	04d70063          	beq	a4,a3,800074ac <kerneltrap+0xac>
    80007470:	fff00713          	li	a4,-1
    80007474:	03f71713          	slli	a4,a4,0x3f
    80007478:	00170713          	addi	a4,a4,1
    8000747c:	fae798e3          	bne	a5,a4,8000742c <kerneltrap+0x2c>
    80007480:	00000097          	auipc	ra,0x0
    80007484:	e00080e7          	jalr	-512(ra) # 80007280 <cpuid>
    80007488:	06050663          	beqz	a0,800074f4 <kerneltrap+0xf4>
    8000748c:	144027f3          	csrr	a5,sip
    80007490:	ffd7f793          	andi	a5,a5,-3
    80007494:	14479073          	csrw	sip,a5
    80007498:	01813083          	ld	ra,24(sp)
    8000749c:	01013403          	ld	s0,16(sp)
    800074a0:	00813483          	ld	s1,8(sp)
    800074a4:	02010113          	addi	sp,sp,32
    800074a8:	00008067          	ret
    800074ac:	00000097          	auipc	ra,0x0
    800074b0:	3c8080e7          	jalr	968(ra) # 80007874 <plic_claim>
    800074b4:	00a00793          	li	a5,10
    800074b8:	00050493          	mv	s1,a0
    800074bc:	06f50863          	beq	a0,a5,8000752c <kerneltrap+0x12c>
    800074c0:	fc050ce3          	beqz	a0,80007498 <kerneltrap+0x98>
    800074c4:	00050593          	mv	a1,a0
    800074c8:	00003517          	auipc	a0,0x3
    800074cc:	1c850513          	addi	a0,a0,456 # 8000a690 <CONSOLE_STATUS+0x680>
    800074d0:	00000097          	auipc	ra,0x0
    800074d4:	7e8080e7          	jalr	2024(ra) # 80007cb8 <__printf>
    800074d8:	01013403          	ld	s0,16(sp)
    800074dc:	01813083          	ld	ra,24(sp)
    800074e0:	00048513          	mv	a0,s1
    800074e4:	00813483          	ld	s1,8(sp)
    800074e8:	02010113          	addi	sp,sp,32
    800074ec:	00000317          	auipc	t1,0x0
    800074f0:	3c030067          	jr	960(t1) # 800078ac <plic_complete>
    800074f4:	00007517          	auipc	a0,0x7
    800074f8:	b5c50513          	addi	a0,a0,-1188 # 8000e050 <tickslock>
    800074fc:	00001097          	auipc	ra,0x1
    80007500:	490080e7          	jalr	1168(ra) # 8000898c <acquire>
    80007504:	00006717          	auipc	a4,0x6
    80007508:	9b070713          	addi	a4,a4,-1616 # 8000ceb4 <ticks>
    8000750c:	00072783          	lw	a5,0(a4)
    80007510:	00007517          	auipc	a0,0x7
    80007514:	b4050513          	addi	a0,a0,-1216 # 8000e050 <tickslock>
    80007518:	0017879b          	addiw	a5,a5,1
    8000751c:	00f72023          	sw	a5,0(a4)
    80007520:	00001097          	auipc	ra,0x1
    80007524:	538080e7          	jalr	1336(ra) # 80008a58 <release>
    80007528:	f65ff06f          	j	8000748c <kerneltrap+0x8c>
    8000752c:	00001097          	auipc	ra,0x1
    80007530:	094080e7          	jalr	148(ra) # 800085c0 <uartintr>
    80007534:	fa5ff06f          	j	800074d8 <kerneltrap+0xd8>
    80007538:	00003517          	auipc	a0,0x3
    8000753c:	13850513          	addi	a0,a0,312 # 8000a670 <CONSOLE_STATUS+0x660>
    80007540:	00000097          	auipc	ra,0x0
    80007544:	71c080e7          	jalr	1820(ra) # 80007c5c <panic>

0000000080007548 <clockintr>:
    80007548:	fe010113          	addi	sp,sp,-32
    8000754c:	00813823          	sd	s0,16(sp)
    80007550:	00913423          	sd	s1,8(sp)
    80007554:	00113c23          	sd	ra,24(sp)
    80007558:	02010413          	addi	s0,sp,32
    8000755c:	00007497          	auipc	s1,0x7
    80007560:	af448493          	addi	s1,s1,-1292 # 8000e050 <tickslock>
    80007564:	00048513          	mv	a0,s1
    80007568:	00001097          	auipc	ra,0x1
    8000756c:	424080e7          	jalr	1060(ra) # 8000898c <acquire>
    80007570:	00006717          	auipc	a4,0x6
    80007574:	94470713          	addi	a4,a4,-1724 # 8000ceb4 <ticks>
    80007578:	00072783          	lw	a5,0(a4)
    8000757c:	01013403          	ld	s0,16(sp)
    80007580:	01813083          	ld	ra,24(sp)
    80007584:	00048513          	mv	a0,s1
    80007588:	0017879b          	addiw	a5,a5,1
    8000758c:	00813483          	ld	s1,8(sp)
    80007590:	00f72023          	sw	a5,0(a4)
    80007594:	02010113          	addi	sp,sp,32
    80007598:	00001317          	auipc	t1,0x1
    8000759c:	4c030067          	jr	1216(t1) # 80008a58 <release>

00000000800075a0 <devintr>:
    800075a0:	142027f3          	csrr	a5,scause
    800075a4:	00000513          	li	a0,0
    800075a8:	0007c463          	bltz	a5,800075b0 <devintr+0x10>
    800075ac:	00008067          	ret
    800075b0:	fe010113          	addi	sp,sp,-32
    800075b4:	00813823          	sd	s0,16(sp)
    800075b8:	00113c23          	sd	ra,24(sp)
    800075bc:	00913423          	sd	s1,8(sp)
    800075c0:	02010413          	addi	s0,sp,32
    800075c4:	0ff7f713          	andi	a4,a5,255
    800075c8:	00900693          	li	a3,9
    800075cc:	04d70c63          	beq	a4,a3,80007624 <devintr+0x84>
    800075d0:	fff00713          	li	a4,-1
    800075d4:	03f71713          	slli	a4,a4,0x3f
    800075d8:	00170713          	addi	a4,a4,1
    800075dc:	00e78c63          	beq	a5,a4,800075f4 <devintr+0x54>
    800075e0:	01813083          	ld	ra,24(sp)
    800075e4:	01013403          	ld	s0,16(sp)
    800075e8:	00813483          	ld	s1,8(sp)
    800075ec:	02010113          	addi	sp,sp,32
    800075f0:	00008067          	ret
    800075f4:	00000097          	auipc	ra,0x0
    800075f8:	c8c080e7          	jalr	-884(ra) # 80007280 <cpuid>
    800075fc:	06050663          	beqz	a0,80007668 <devintr+0xc8>
    80007600:	144027f3          	csrr	a5,sip
    80007604:	ffd7f793          	andi	a5,a5,-3
    80007608:	14479073          	csrw	sip,a5
    8000760c:	01813083          	ld	ra,24(sp)
    80007610:	01013403          	ld	s0,16(sp)
    80007614:	00813483          	ld	s1,8(sp)
    80007618:	00200513          	li	a0,2
    8000761c:	02010113          	addi	sp,sp,32
    80007620:	00008067          	ret
    80007624:	00000097          	auipc	ra,0x0
    80007628:	250080e7          	jalr	592(ra) # 80007874 <plic_claim>
    8000762c:	00a00793          	li	a5,10
    80007630:	00050493          	mv	s1,a0
    80007634:	06f50663          	beq	a0,a5,800076a0 <devintr+0x100>
    80007638:	00100513          	li	a0,1
    8000763c:	fa0482e3          	beqz	s1,800075e0 <devintr+0x40>
    80007640:	00048593          	mv	a1,s1
    80007644:	00003517          	auipc	a0,0x3
    80007648:	04c50513          	addi	a0,a0,76 # 8000a690 <CONSOLE_STATUS+0x680>
    8000764c:	00000097          	auipc	ra,0x0
    80007650:	66c080e7          	jalr	1644(ra) # 80007cb8 <__printf>
    80007654:	00048513          	mv	a0,s1
    80007658:	00000097          	auipc	ra,0x0
    8000765c:	254080e7          	jalr	596(ra) # 800078ac <plic_complete>
    80007660:	00100513          	li	a0,1
    80007664:	f7dff06f          	j	800075e0 <devintr+0x40>
    80007668:	00007517          	auipc	a0,0x7
    8000766c:	9e850513          	addi	a0,a0,-1560 # 8000e050 <tickslock>
    80007670:	00001097          	auipc	ra,0x1
    80007674:	31c080e7          	jalr	796(ra) # 8000898c <acquire>
    80007678:	00006717          	auipc	a4,0x6
    8000767c:	83c70713          	addi	a4,a4,-1988 # 8000ceb4 <ticks>
    80007680:	00072783          	lw	a5,0(a4)
    80007684:	00007517          	auipc	a0,0x7
    80007688:	9cc50513          	addi	a0,a0,-1588 # 8000e050 <tickslock>
    8000768c:	0017879b          	addiw	a5,a5,1
    80007690:	00f72023          	sw	a5,0(a4)
    80007694:	00001097          	auipc	ra,0x1
    80007698:	3c4080e7          	jalr	964(ra) # 80008a58 <release>
    8000769c:	f65ff06f          	j	80007600 <devintr+0x60>
    800076a0:	00001097          	auipc	ra,0x1
    800076a4:	f20080e7          	jalr	-224(ra) # 800085c0 <uartintr>
    800076a8:	fadff06f          	j	80007654 <devintr+0xb4>
    800076ac:	0000                	unimp
	...

00000000800076b0 <kernelvec>:
    800076b0:	f0010113          	addi	sp,sp,-256
    800076b4:	00113023          	sd	ra,0(sp)
    800076b8:	00213423          	sd	sp,8(sp)
    800076bc:	00313823          	sd	gp,16(sp)
    800076c0:	00413c23          	sd	tp,24(sp)
    800076c4:	02513023          	sd	t0,32(sp)
    800076c8:	02613423          	sd	t1,40(sp)
    800076cc:	02713823          	sd	t2,48(sp)
    800076d0:	02813c23          	sd	s0,56(sp)
    800076d4:	04913023          	sd	s1,64(sp)
    800076d8:	04a13423          	sd	a0,72(sp)
    800076dc:	04b13823          	sd	a1,80(sp)
    800076e0:	04c13c23          	sd	a2,88(sp)
    800076e4:	06d13023          	sd	a3,96(sp)
    800076e8:	06e13423          	sd	a4,104(sp)
    800076ec:	06f13823          	sd	a5,112(sp)
    800076f0:	07013c23          	sd	a6,120(sp)
    800076f4:	09113023          	sd	a7,128(sp)
    800076f8:	09213423          	sd	s2,136(sp)
    800076fc:	09313823          	sd	s3,144(sp)
    80007700:	09413c23          	sd	s4,152(sp)
    80007704:	0b513023          	sd	s5,160(sp)
    80007708:	0b613423          	sd	s6,168(sp)
    8000770c:	0b713823          	sd	s7,176(sp)
    80007710:	0b813c23          	sd	s8,184(sp)
    80007714:	0d913023          	sd	s9,192(sp)
    80007718:	0da13423          	sd	s10,200(sp)
    8000771c:	0db13823          	sd	s11,208(sp)
    80007720:	0dc13c23          	sd	t3,216(sp)
    80007724:	0fd13023          	sd	t4,224(sp)
    80007728:	0fe13423          	sd	t5,232(sp)
    8000772c:	0ff13823          	sd	t6,240(sp)
    80007730:	cd1ff0ef          	jal	ra,80007400 <kerneltrap>
    80007734:	00013083          	ld	ra,0(sp)
    80007738:	00813103          	ld	sp,8(sp)
    8000773c:	01013183          	ld	gp,16(sp)
    80007740:	02013283          	ld	t0,32(sp)
    80007744:	02813303          	ld	t1,40(sp)
    80007748:	03013383          	ld	t2,48(sp)
    8000774c:	03813403          	ld	s0,56(sp)
    80007750:	04013483          	ld	s1,64(sp)
    80007754:	04813503          	ld	a0,72(sp)
    80007758:	05013583          	ld	a1,80(sp)
    8000775c:	05813603          	ld	a2,88(sp)
    80007760:	06013683          	ld	a3,96(sp)
    80007764:	06813703          	ld	a4,104(sp)
    80007768:	07013783          	ld	a5,112(sp)
    8000776c:	07813803          	ld	a6,120(sp)
    80007770:	08013883          	ld	a7,128(sp)
    80007774:	08813903          	ld	s2,136(sp)
    80007778:	09013983          	ld	s3,144(sp)
    8000777c:	09813a03          	ld	s4,152(sp)
    80007780:	0a013a83          	ld	s5,160(sp)
    80007784:	0a813b03          	ld	s6,168(sp)
    80007788:	0b013b83          	ld	s7,176(sp)
    8000778c:	0b813c03          	ld	s8,184(sp)
    80007790:	0c013c83          	ld	s9,192(sp)
    80007794:	0c813d03          	ld	s10,200(sp)
    80007798:	0d013d83          	ld	s11,208(sp)
    8000779c:	0d813e03          	ld	t3,216(sp)
    800077a0:	0e013e83          	ld	t4,224(sp)
    800077a4:	0e813f03          	ld	t5,232(sp)
    800077a8:	0f013f83          	ld	t6,240(sp)
    800077ac:	10010113          	addi	sp,sp,256
    800077b0:	10200073          	sret
    800077b4:	00000013          	nop
    800077b8:	00000013          	nop
    800077bc:	00000013          	nop

00000000800077c0 <timervec>:
    800077c0:	34051573          	csrrw	a0,mscratch,a0
    800077c4:	00b53023          	sd	a1,0(a0)
    800077c8:	00c53423          	sd	a2,8(a0)
    800077cc:	00d53823          	sd	a3,16(a0)
    800077d0:	01853583          	ld	a1,24(a0)
    800077d4:	02053603          	ld	a2,32(a0)
    800077d8:	0005b683          	ld	a3,0(a1)
    800077dc:	00c686b3          	add	a3,a3,a2
    800077e0:	00d5b023          	sd	a3,0(a1)
    800077e4:	00200593          	li	a1,2
    800077e8:	14459073          	csrw	sip,a1
    800077ec:	01053683          	ld	a3,16(a0)
    800077f0:	00853603          	ld	a2,8(a0)
    800077f4:	00053583          	ld	a1,0(a0)
    800077f8:	34051573          	csrrw	a0,mscratch,a0
    800077fc:	30200073          	mret

0000000080007800 <plicinit>:
    80007800:	ff010113          	addi	sp,sp,-16
    80007804:	00813423          	sd	s0,8(sp)
    80007808:	01010413          	addi	s0,sp,16
    8000780c:	00813403          	ld	s0,8(sp)
    80007810:	0c0007b7          	lui	a5,0xc000
    80007814:	00100713          	li	a4,1
    80007818:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000781c:	00e7a223          	sw	a4,4(a5)
    80007820:	01010113          	addi	sp,sp,16
    80007824:	00008067          	ret

0000000080007828 <plicinithart>:
    80007828:	ff010113          	addi	sp,sp,-16
    8000782c:	00813023          	sd	s0,0(sp)
    80007830:	00113423          	sd	ra,8(sp)
    80007834:	01010413          	addi	s0,sp,16
    80007838:	00000097          	auipc	ra,0x0
    8000783c:	a48080e7          	jalr	-1464(ra) # 80007280 <cpuid>
    80007840:	0085171b          	slliw	a4,a0,0x8
    80007844:	0c0027b7          	lui	a5,0xc002
    80007848:	00e787b3          	add	a5,a5,a4
    8000784c:	40200713          	li	a4,1026
    80007850:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80007854:	00813083          	ld	ra,8(sp)
    80007858:	00013403          	ld	s0,0(sp)
    8000785c:	00d5151b          	slliw	a0,a0,0xd
    80007860:	0c2017b7          	lui	a5,0xc201
    80007864:	00a78533          	add	a0,a5,a0
    80007868:	00052023          	sw	zero,0(a0)
    8000786c:	01010113          	addi	sp,sp,16
    80007870:	00008067          	ret

0000000080007874 <plic_claim>:
    80007874:	ff010113          	addi	sp,sp,-16
    80007878:	00813023          	sd	s0,0(sp)
    8000787c:	00113423          	sd	ra,8(sp)
    80007880:	01010413          	addi	s0,sp,16
    80007884:	00000097          	auipc	ra,0x0
    80007888:	9fc080e7          	jalr	-1540(ra) # 80007280 <cpuid>
    8000788c:	00813083          	ld	ra,8(sp)
    80007890:	00013403          	ld	s0,0(sp)
    80007894:	00d5151b          	slliw	a0,a0,0xd
    80007898:	0c2017b7          	lui	a5,0xc201
    8000789c:	00a78533          	add	a0,a5,a0
    800078a0:	00452503          	lw	a0,4(a0)
    800078a4:	01010113          	addi	sp,sp,16
    800078a8:	00008067          	ret

00000000800078ac <plic_complete>:
    800078ac:	fe010113          	addi	sp,sp,-32
    800078b0:	00813823          	sd	s0,16(sp)
    800078b4:	00913423          	sd	s1,8(sp)
    800078b8:	00113c23          	sd	ra,24(sp)
    800078bc:	02010413          	addi	s0,sp,32
    800078c0:	00050493          	mv	s1,a0
    800078c4:	00000097          	auipc	ra,0x0
    800078c8:	9bc080e7          	jalr	-1604(ra) # 80007280 <cpuid>
    800078cc:	01813083          	ld	ra,24(sp)
    800078d0:	01013403          	ld	s0,16(sp)
    800078d4:	00d5179b          	slliw	a5,a0,0xd
    800078d8:	0c201737          	lui	a4,0xc201
    800078dc:	00f707b3          	add	a5,a4,a5
    800078e0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800078e4:	00813483          	ld	s1,8(sp)
    800078e8:	02010113          	addi	sp,sp,32
    800078ec:	00008067          	ret

00000000800078f0 <consolewrite>:
    800078f0:	fb010113          	addi	sp,sp,-80
    800078f4:	04813023          	sd	s0,64(sp)
    800078f8:	04113423          	sd	ra,72(sp)
    800078fc:	02913c23          	sd	s1,56(sp)
    80007900:	03213823          	sd	s2,48(sp)
    80007904:	03313423          	sd	s3,40(sp)
    80007908:	03413023          	sd	s4,32(sp)
    8000790c:	01513c23          	sd	s5,24(sp)
    80007910:	05010413          	addi	s0,sp,80
    80007914:	06c05c63          	blez	a2,8000798c <consolewrite+0x9c>
    80007918:	00060993          	mv	s3,a2
    8000791c:	00050a13          	mv	s4,a0
    80007920:	00058493          	mv	s1,a1
    80007924:	00000913          	li	s2,0
    80007928:	fff00a93          	li	s5,-1
    8000792c:	01c0006f          	j	80007948 <consolewrite+0x58>
    80007930:	fbf44503          	lbu	a0,-65(s0)
    80007934:	0019091b          	addiw	s2,s2,1
    80007938:	00148493          	addi	s1,s1,1
    8000793c:	00001097          	auipc	ra,0x1
    80007940:	a9c080e7          	jalr	-1380(ra) # 800083d8 <uartputc>
    80007944:	03298063          	beq	s3,s2,80007964 <consolewrite+0x74>
    80007948:	00048613          	mv	a2,s1
    8000794c:	00100693          	li	a3,1
    80007950:	000a0593          	mv	a1,s4
    80007954:	fbf40513          	addi	a0,s0,-65
    80007958:	00000097          	auipc	ra,0x0
    8000795c:	9e0080e7          	jalr	-1568(ra) # 80007338 <either_copyin>
    80007960:	fd5518e3          	bne	a0,s5,80007930 <consolewrite+0x40>
    80007964:	04813083          	ld	ra,72(sp)
    80007968:	04013403          	ld	s0,64(sp)
    8000796c:	03813483          	ld	s1,56(sp)
    80007970:	02813983          	ld	s3,40(sp)
    80007974:	02013a03          	ld	s4,32(sp)
    80007978:	01813a83          	ld	s5,24(sp)
    8000797c:	00090513          	mv	a0,s2
    80007980:	03013903          	ld	s2,48(sp)
    80007984:	05010113          	addi	sp,sp,80
    80007988:	00008067          	ret
    8000798c:	00000913          	li	s2,0
    80007990:	fd5ff06f          	j	80007964 <consolewrite+0x74>

0000000080007994 <consoleread>:
    80007994:	f9010113          	addi	sp,sp,-112
    80007998:	06813023          	sd	s0,96(sp)
    8000799c:	04913c23          	sd	s1,88(sp)
    800079a0:	05213823          	sd	s2,80(sp)
    800079a4:	05313423          	sd	s3,72(sp)
    800079a8:	05413023          	sd	s4,64(sp)
    800079ac:	03513c23          	sd	s5,56(sp)
    800079b0:	03613823          	sd	s6,48(sp)
    800079b4:	03713423          	sd	s7,40(sp)
    800079b8:	03813023          	sd	s8,32(sp)
    800079bc:	06113423          	sd	ra,104(sp)
    800079c0:	01913c23          	sd	s9,24(sp)
    800079c4:	07010413          	addi	s0,sp,112
    800079c8:	00060b93          	mv	s7,a2
    800079cc:	00050913          	mv	s2,a0
    800079d0:	00058c13          	mv	s8,a1
    800079d4:	00060b1b          	sext.w	s6,a2
    800079d8:	00006497          	auipc	s1,0x6
    800079dc:	6a048493          	addi	s1,s1,1696 # 8000e078 <cons>
    800079e0:	00400993          	li	s3,4
    800079e4:	fff00a13          	li	s4,-1
    800079e8:	00a00a93          	li	s5,10
    800079ec:	05705e63          	blez	s7,80007a48 <consoleread+0xb4>
    800079f0:	09c4a703          	lw	a4,156(s1)
    800079f4:	0984a783          	lw	a5,152(s1)
    800079f8:	0007071b          	sext.w	a4,a4
    800079fc:	08e78463          	beq	a5,a4,80007a84 <consoleread+0xf0>
    80007a00:	07f7f713          	andi	a4,a5,127
    80007a04:	00e48733          	add	a4,s1,a4
    80007a08:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80007a0c:	0017869b          	addiw	a3,a5,1
    80007a10:	08d4ac23          	sw	a3,152(s1)
    80007a14:	00070c9b          	sext.w	s9,a4
    80007a18:	0b370663          	beq	a4,s3,80007ac4 <consoleread+0x130>
    80007a1c:	00100693          	li	a3,1
    80007a20:	f9f40613          	addi	a2,s0,-97
    80007a24:	000c0593          	mv	a1,s8
    80007a28:	00090513          	mv	a0,s2
    80007a2c:	f8e40fa3          	sb	a4,-97(s0)
    80007a30:	00000097          	auipc	ra,0x0
    80007a34:	8bc080e7          	jalr	-1860(ra) # 800072ec <either_copyout>
    80007a38:	01450863          	beq	a0,s4,80007a48 <consoleread+0xb4>
    80007a3c:	001c0c13          	addi	s8,s8,1
    80007a40:	fffb8b9b          	addiw	s7,s7,-1
    80007a44:	fb5c94e3          	bne	s9,s5,800079ec <consoleread+0x58>
    80007a48:	000b851b          	sext.w	a0,s7
    80007a4c:	06813083          	ld	ra,104(sp)
    80007a50:	06013403          	ld	s0,96(sp)
    80007a54:	05813483          	ld	s1,88(sp)
    80007a58:	05013903          	ld	s2,80(sp)
    80007a5c:	04813983          	ld	s3,72(sp)
    80007a60:	04013a03          	ld	s4,64(sp)
    80007a64:	03813a83          	ld	s5,56(sp)
    80007a68:	02813b83          	ld	s7,40(sp)
    80007a6c:	02013c03          	ld	s8,32(sp)
    80007a70:	01813c83          	ld	s9,24(sp)
    80007a74:	40ab053b          	subw	a0,s6,a0
    80007a78:	03013b03          	ld	s6,48(sp)
    80007a7c:	07010113          	addi	sp,sp,112
    80007a80:	00008067          	ret
    80007a84:	00001097          	auipc	ra,0x1
    80007a88:	1d8080e7          	jalr	472(ra) # 80008c5c <push_on>
    80007a8c:	0984a703          	lw	a4,152(s1)
    80007a90:	09c4a783          	lw	a5,156(s1)
    80007a94:	0007879b          	sext.w	a5,a5
    80007a98:	fef70ce3          	beq	a4,a5,80007a90 <consoleread+0xfc>
    80007a9c:	00001097          	auipc	ra,0x1
    80007aa0:	234080e7          	jalr	564(ra) # 80008cd0 <pop_on>
    80007aa4:	0984a783          	lw	a5,152(s1)
    80007aa8:	07f7f713          	andi	a4,a5,127
    80007aac:	00e48733          	add	a4,s1,a4
    80007ab0:	01874703          	lbu	a4,24(a4)
    80007ab4:	0017869b          	addiw	a3,a5,1
    80007ab8:	08d4ac23          	sw	a3,152(s1)
    80007abc:	00070c9b          	sext.w	s9,a4
    80007ac0:	f5371ee3          	bne	a4,s3,80007a1c <consoleread+0x88>
    80007ac4:	000b851b          	sext.w	a0,s7
    80007ac8:	f96bf2e3          	bgeu	s7,s6,80007a4c <consoleread+0xb8>
    80007acc:	08f4ac23          	sw	a5,152(s1)
    80007ad0:	f7dff06f          	j	80007a4c <consoleread+0xb8>

0000000080007ad4 <consputc>:
    80007ad4:	10000793          	li	a5,256
    80007ad8:	00f50663          	beq	a0,a5,80007ae4 <consputc+0x10>
    80007adc:	00001317          	auipc	t1,0x1
    80007ae0:	9f430067          	jr	-1548(t1) # 800084d0 <uartputc_sync>
    80007ae4:	ff010113          	addi	sp,sp,-16
    80007ae8:	00113423          	sd	ra,8(sp)
    80007aec:	00813023          	sd	s0,0(sp)
    80007af0:	01010413          	addi	s0,sp,16
    80007af4:	00800513          	li	a0,8
    80007af8:	00001097          	auipc	ra,0x1
    80007afc:	9d8080e7          	jalr	-1576(ra) # 800084d0 <uartputc_sync>
    80007b00:	02000513          	li	a0,32
    80007b04:	00001097          	auipc	ra,0x1
    80007b08:	9cc080e7          	jalr	-1588(ra) # 800084d0 <uartputc_sync>
    80007b0c:	00013403          	ld	s0,0(sp)
    80007b10:	00813083          	ld	ra,8(sp)
    80007b14:	00800513          	li	a0,8
    80007b18:	01010113          	addi	sp,sp,16
    80007b1c:	00001317          	auipc	t1,0x1
    80007b20:	9b430067          	jr	-1612(t1) # 800084d0 <uartputc_sync>

0000000080007b24 <consoleintr>:
    80007b24:	fe010113          	addi	sp,sp,-32
    80007b28:	00813823          	sd	s0,16(sp)
    80007b2c:	00913423          	sd	s1,8(sp)
    80007b30:	01213023          	sd	s2,0(sp)
    80007b34:	00113c23          	sd	ra,24(sp)
    80007b38:	02010413          	addi	s0,sp,32
    80007b3c:	00006917          	auipc	s2,0x6
    80007b40:	53c90913          	addi	s2,s2,1340 # 8000e078 <cons>
    80007b44:	00050493          	mv	s1,a0
    80007b48:	00090513          	mv	a0,s2
    80007b4c:	00001097          	auipc	ra,0x1
    80007b50:	e40080e7          	jalr	-448(ra) # 8000898c <acquire>
    80007b54:	02048c63          	beqz	s1,80007b8c <consoleintr+0x68>
    80007b58:	0a092783          	lw	a5,160(s2)
    80007b5c:	09892703          	lw	a4,152(s2)
    80007b60:	07f00693          	li	a3,127
    80007b64:	40e7873b          	subw	a4,a5,a4
    80007b68:	02e6e263          	bltu	a3,a4,80007b8c <consoleintr+0x68>
    80007b6c:	00d00713          	li	a4,13
    80007b70:	04e48063          	beq	s1,a4,80007bb0 <consoleintr+0x8c>
    80007b74:	07f7f713          	andi	a4,a5,127
    80007b78:	00e90733          	add	a4,s2,a4
    80007b7c:	0017879b          	addiw	a5,a5,1
    80007b80:	0af92023          	sw	a5,160(s2)
    80007b84:	00970c23          	sb	s1,24(a4)
    80007b88:	08f92e23          	sw	a5,156(s2)
    80007b8c:	01013403          	ld	s0,16(sp)
    80007b90:	01813083          	ld	ra,24(sp)
    80007b94:	00813483          	ld	s1,8(sp)
    80007b98:	00013903          	ld	s2,0(sp)
    80007b9c:	00006517          	auipc	a0,0x6
    80007ba0:	4dc50513          	addi	a0,a0,1244 # 8000e078 <cons>
    80007ba4:	02010113          	addi	sp,sp,32
    80007ba8:	00001317          	auipc	t1,0x1
    80007bac:	eb030067          	jr	-336(t1) # 80008a58 <release>
    80007bb0:	00a00493          	li	s1,10
    80007bb4:	fc1ff06f          	j	80007b74 <consoleintr+0x50>

0000000080007bb8 <consoleinit>:
    80007bb8:	fe010113          	addi	sp,sp,-32
    80007bbc:	00113c23          	sd	ra,24(sp)
    80007bc0:	00813823          	sd	s0,16(sp)
    80007bc4:	00913423          	sd	s1,8(sp)
    80007bc8:	02010413          	addi	s0,sp,32
    80007bcc:	00006497          	auipc	s1,0x6
    80007bd0:	4ac48493          	addi	s1,s1,1196 # 8000e078 <cons>
    80007bd4:	00048513          	mv	a0,s1
    80007bd8:	00003597          	auipc	a1,0x3
    80007bdc:	b1058593          	addi	a1,a1,-1264 # 8000a6e8 <CONSOLE_STATUS+0x6d8>
    80007be0:	00001097          	auipc	ra,0x1
    80007be4:	d88080e7          	jalr	-632(ra) # 80008968 <initlock>
    80007be8:	00000097          	auipc	ra,0x0
    80007bec:	7ac080e7          	jalr	1964(ra) # 80008394 <uartinit>
    80007bf0:	01813083          	ld	ra,24(sp)
    80007bf4:	01013403          	ld	s0,16(sp)
    80007bf8:	00000797          	auipc	a5,0x0
    80007bfc:	d9c78793          	addi	a5,a5,-612 # 80007994 <consoleread>
    80007c00:	0af4bc23          	sd	a5,184(s1)
    80007c04:	00000797          	auipc	a5,0x0
    80007c08:	cec78793          	addi	a5,a5,-788 # 800078f0 <consolewrite>
    80007c0c:	0cf4b023          	sd	a5,192(s1)
    80007c10:	00813483          	ld	s1,8(sp)
    80007c14:	02010113          	addi	sp,sp,32
    80007c18:	00008067          	ret

0000000080007c1c <console_read>:
    80007c1c:	ff010113          	addi	sp,sp,-16
    80007c20:	00813423          	sd	s0,8(sp)
    80007c24:	01010413          	addi	s0,sp,16
    80007c28:	00813403          	ld	s0,8(sp)
    80007c2c:	00006317          	auipc	t1,0x6
    80007c30:	50433303          	ld	t1,1284(t1) # 8000e130 <devsw+0x10>
    80007c34:	01010113          	addi	sp,sp,16
    80007c38:	00030067          	jr	t1

0000000080007c3c <console_write>:
    80007c3c:	ff010113          	addi	sp,sp,-16
    80007c40:	00813423          	sd	s0,8(sp)
    80007c44:	01010413          	addi	s0,sp,16
    80007c48:	00813403          	ld	s0,8(sp)
    80007c4c:	00006317          	auipc	t1,0x6
    80007c50:	4ec33303          	ld	t1,1260(t1) # 8000e138 <devsw+0x18>
    80007c54:	01010113          	addi	sp,sp,16
    80007c58:	00030067          	jr	t1

0000000080007c5c <panic>:
    80007c5c:	fe010113          	addi	sp,sp,-32
    80007c60:	00113c23          	sd	ra,24(sp)
    80007c64:	00813823          	sd	s0,16(sp)
    80007c68:	00913423          	sd	s1,8(sp)
    80007c6c:	02010413          	addi	s0,sp,32
    80007c70:	00050493          	mv	s1,a0
    80007c74:	00003517          	auipc	a0,0x3
    80007c78:	a7c50513          	addi	a0,a0,-1412 # 8000a6f0 <CONSOLE_STATUS+0x6e0>
    80007c7c:	00006797          	auipc	a5,0x6
    80007c80:	5407ae23          	sw	zero,1372(a5) # 8000e1d8 <pr+0x18>
    80007c84:	00000097          	auipc	ra,0x0
    80007c88:	034080e7          	jalr	52(ra) # 80007cb8 <__printf>
    80007c8c:	00048513          	mv	a0,s1
    80007c90:	00000097          	auipc	ra,0x0
    80007c94:	028080e7          	jalr	40(ra) # 80007cb8 <__printf>
    80007c98:	00002517          	auipc	a0,0x2
    80007c9c:	7e050513          	addi	a0,a0,2016 # 8000a478 <CONSOLE_STATUS+0x468>
    80007ca0:	00000097          	auipc	ra,0x0
    80007ca4:	018080e7          	jalr	24(ra) # 80007cb8 <__printf>
    80007ca8:	00100793          	li	a5,1
    80007cac:	00005717          	auipc	a4,0x5
    80007cb0:	20f72623          	sw	a5,524(a4) # 8000ceb8 <panicked>
    80007cb4:	0000006f          	j	80007cb4 <panic+0x58>

0000000080007cb8 <__printf>:
    80007cb8:	f3010113          	addi	sp,sp,-208
    80007cbc:	08813023          	sd	s0,128(sp)
    80007cc0:	07313423          	sd	s3,104(sp)
    80007cc4:	09010413          	addi	s0,sp,144
    80007cc8:	05813023          	sd	s8,64(sp)
    80007ccc:	08113423          	sd	ra,136(sp)
    80007cd0:	06913c23          	sd	s1,120(sp)
    80007cd4:	07213823          	sd	s2,112(sp)
    80007cd8:	07413023          	sd	s4,96(sp)
    80007cdc:	05513c23          	sd	s5,88(sp)
    80007ce0:	05613823          	sd	s6,80(sp)
    80007ce4:	05713423          	sd	s7,72(sp)
    80007ce8:	03913c23          	sd	s9,56(sp)
    80007cec:	03a13823          	sd	s10,48(sp)
    80007cf0:	03b13423          	sd	s11,40(sp)
    80007cf4:	00006317          	auipc	t1,0x6
    80007cf8:	4cc30313          	addi	t1,t1,1228 # 8000e1c0 <pr>
    80007cfc:	01832c03          	lw	s8,24(t1)
    80007d00:	00b43423          	sd	a1,8(s0)
    80007d04:	00c43823          	sd	a2,16(s0)
    80007d08:	00d43c23          	sd	a3,24(s0)
    80007d0c:	02e43023          	sd	a4,32(s0)
    80007d10:	02f43423          	sd	a5,40(s0)
    80007d14:	03043823          	sd	a6,48(s0)
    80007d18:	03143c23          	sd	a7,56(s0)
    80007d1c:	00050993          	mv	s3,a0
    80007d20:	4a0c1663          	bnez	s8,800081cc <__printf+0x514>
    80007d24:	60098c63          	beqz	s3,8000833c <__printf+0x684>
    80007d28:	0009c503          	lbu	a0,0(s3)
    80007d2c:	00840793          	addi	a5,s0,8
    80007d30:	f6f43c23          	sd	a5,-136(s0)
    80007d34:	00000493          	li	s1,0
    80007d38:	22050063          	beqz	a0,80007f58 <__printf+0x2a0>
    80007d3c:	00002a37          	lui	s4,0x2
    80007d40:	00018ab7          	lui	s5,0x18
    80007d44:	000f4b37          	lui	s6,0xf4
    80007d48:	00989bb7          	lui	s7,0x989
    80007d4c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007d50:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007d54:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007d58:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80007d5c:	00148c9b          	addiw	s9,s1,1
    80007d60:	02500793          	li	a5,37
    80007d64:	01998933          	add	s2,s3,s9
    80007d68:	38f51263          	bne	a0,a5,800080ec <__printf+0x434>
    80007d6c:	00094783          	lbu	a5,0(s2)
    80007d70:	00078c9b          	sext.w	s9,a5
    80007d74:	1e078263          	beqz	a5,80007f58 <__printf+0x2a0>
    80007d78:	0024849b          	addiw	s1,s1,2
    80007d7c:	07000713          	li	a4,112
    80007d80:	00998933          	add	s2,s3,s1
    80007d84:	38e78a63          	beq	a5,a4,80008118 <__printf+0x460>
    80007d88:	20f76863          	bltu	a4,a5,80007f98 <__printf+0x2e0>
    80007d8c:	42a78863          	beq	a5,a0,800081bc <__printf+0x504>
    80007d90:	06400713          	li	a4,100
    80007d94:	40e79663          	bne	a5,a4,800081a0 <__printf+0x4e8>
    80007d98:	f7843783          	ld	a5,-136(s0)
    80007d9c:	0007a603          	lw	a2,0(a5)
    80007da0:	00878793          	addi	a5,a5,8
    80007da4:	f6f43c23          	sd	a5,-136(s0)
    80007da8:	42064a63          	bltz	a2,800081dc <__printf+0x524>
    80007dac:	00a00713          	li	a4,10
    80007db0:	02e677bb          	remuw	a5,a2,a4
    80007db4:	00003d97          	auipc	s11,0x3
    80007db8:	964d8d93          	addi	s11,s11,-1692 # 8000a718 <digits>
    80007dbc:	00900593          	li	a1,9
    80007dc0:	0006051b          	sext.w	a0,a2
    80007dc4:	00000c93          	li	s9,0
    80007dc8:	02079793          	slli	a5,a5,0x20
    80007dcc:	0207d793          	srli	a5,a5,0x20
    80007dd0:	00fd87b3          	add	a5,s11,a5
    80007dd4:	0007c783          	lbu	a5,0(a5)
    80007dd8:	02e656bb          	divuw	a3,a2,a4
    80007ddc:	f8f40023          	sb	a5,-128(s0)
    80007de0:	14c5d863          	bge	a1,a2,80007f30 <__printf+0x278>
    80007de4:	06300593          	li	a1,99
    80007de8:	00100c93          	li	s9,1
    80007dec:	02e6f7bb          	remuw	a5,a3,a4
    80007df0:	02079793          	slli	a5,a5,0x20
    80007df4:	0207d793          	srli	a5,a5,0x20
    80007df8:	00fd87b3          	add	a5,s11,a5
    80007dfc:	0007c783          	lbu	a5,0(a5)
    80007e00:	02e6d73b          	divuw	a4,a3,a4
    80007e04:	f8f400a3          	sb	a5,-127(s0)
    80007e08:	12a5f463          	bgeu	a1,a0,80007f30 <__printf+0x278>
    80007e0c:	00a00693          	li	a3,10
    80007e10:	00900593          	li	a1,9
    80007e14:	02d777bb          	remuw	a5,a4,a3
    80007e18:	02079793          	slli	a5,a5,0x20
    80007e1c:	0207d793          	srli	a5,a5,0x20
    80007e20:	00fd87b3          	add	a5,s11,a5
    80007e24:	0007c503          	lbu	a0,0(a5)
    80007e28:	02d757bb          	divuw	a5,a4,a3
    80007e2c:	f8a40123          	sb	a0,-126(s0)
    80007e30:	48e5f263          	bgeu	a1,a4,800082b4 <__printf+0x5fc>
    80007e34:	06300513          	li	a0,99
    80007e38:	02d7f5bb          	remuw	a1,a5,a3
    80007e3c:	02059593          	slli	a1,a1,0x20
    80007e40:	0205d593          	srli	a1,a1,0x20
    80007e44:	00bd85b3          	add	a1,s11,a1
    80007e48:	0005c583          	lbu	a1,0(a1)
    80007e4c:	02d7d7bb          	divuw	a5,a5,a3
    80007e50:	f8b401a3          	sb	a1,-125(s0)
    80007e54:	48e57263          	bgeu	a0,a4,800082d8 <__printf+0x620>
    80007e58:	3e700513          	li	a0,999
    80007e5c:	02d7f5bb          	remuw	a1,a5,a3
    80007e60:	02059593          	slli	a1,a1,0x20
    80007e64:	0205d593          	srli	a1,a1,0x20
    80007e68:	00bd85b3          	add	a1,s11,a1
    80007e6c:	0005c583          	lbu	a1,0(a1)
    80007e70:	02d7d7bb          	divuw	a5,a5,a3
    80007e74:	f8b40223          	sb	a1,-124(s0)
    80007e78:	46e57663          	bgeu	a0,a4,800082e4 <__printf+0x62c>
    80007e7c:	02d7f5bb          	remuw	a1,a5,a3
    80007e80:	02059593          	slli	a1,a1,0x20
    80007e84:	0205d593          	srli	a1,a1,0x20
    80007e88:	00bd85b3          	add	a1,s11,a1
    80007e8c:	0005c583          	lbu	a1,0(a1)
    80007e90:	02d7d7bb          	divuw	a5,a5,a3
    80007e94:	f8b402a3          	sb	a1,-123(s0)
    80007e98:	46ea7863          	bgeu	s4,a4,80008308 <__printf+0x650>
    80007e9c:	02d7f5bb          	remuw	a1,a5,a3
    80007ea0:	02059593          	slli	a1,a1,0x20
    80007ea4:	0205d593          	srli	a1,a1,0x20
    80007ea8:	00bd85b3          	add	a1,s11,a1
    80007eac:	0005c583          	lbu	a1,0(a1)
    80007eb0:	02d7d7bb          	divuw	a5,a5,a3
    80007eb4:	f8b40323          	sb	a1,-122(s0)
    80007eb8:	3eeaf863          	bgeu	s5,a4,800082a8 <__printf+0x5f0>
    80007ebc:	02d7f5bb          	remuw	a1,a5,a3
    80007ec0:	02059593          	slli	a1,a1,0x20
    80007ec4:	0205d593          	srli	a1,a1,0x20
    80007ec8:	00bd85b3          	add	a1,s11,a1
    80007ecc:	0005c583          	lbu	a1,0(a1)
    80007ed0:	02d7d7bb          	divuw	a5,a5,a3
    80007ed4:	f8b403a3          	sb	a1,-121(s0)
    80007ed8:	42eb7e63          	bgeu	s6,a4,80008314 <__printf+0x65c>
    80007edc:	02d7f5bb          	remuw	a1,a5,a3
    80007ee0:	02059593          	slli	a1,a1,0x20
    80007ee4:	0205d593          	srli	a1,a1,0x20
    80007ee8:	00bd85b3          	add	a1,s11,a1
    80007eec:	0005c583          	lbu	a1,0(a1)
    80007ef0:	02d7d7bb          	divuw	a5,a5,a3
    80007ef4:	f8b40423          	sb	a1,-120(s0)
    80007ef8:	42ebfc63          	bgeu	s7,a4,80008330 <__printf+0x678>
    80007efc:	02079793          	slli	a5,a5,0x20
    80007f00:	0207d793          	srli	a5,a5,0x20
    80007f04:	00fd8db3          	add	s11,s11,a5
    80007f08:	000dc703          	lbu	a4,0(s11)
    80007f0c:	00a00793          	li	a5,10
    80007f10:	00900c93          	li	s9,9
    80007f14:	f8e404a3          	sb	a4,-119(s0)
    80007f18:	00065c63          	bgez	a2,80007f30 <__printf+0x278>
    80007f1c:	f9040713          	addi	a4,s0,-112
    80007f20:	00f70733          	add	a4,a4,a5
    80007f24:	02d00693          	li	a3,45
    80007f28:	fed70823          	sb	a3,-16(a4)
    80007f2c:	00078c93          	mv	s9,a5
    80007f30:	f8040793          	addi	a5,s0,-128
    80007f34:	01978cb3          	add	s9,a5,s9
    80007f38:	f7f40d13          	addi	s10,s0,-129
    80007f3c:	000cc503          	lbu	a0,0(s9)
    80007f40:	fffc8c93          	addi	s9,s9,-1
    80007f44:	00000097          	auipc	ra,0x0
    80007f48:	b90080e7          	jalr	-1136(ra) # 80007ad4 <consputc>
    80007f4c:	ffac98e3          	bne	s9,s10,80007f3c <__printf+0x284>
    80007f50:	00094503          	lbu	a0,0(s2)
    80007f54:	e00514e3          	bnez	a0,80007d5c <__printf+0xa4>
    80007f58:	1a0c1663          	bnez	s8,80008104 <__printf+0x44c>
    80007f5c:	08813083          	ld	ra,136(sp)
    80007f60:	08013403          	ld	s0,128(sp)
    80007f64:	07813483          	ld	s1,120(sp)
    80007f68:	07013903          	ld	s2,112(sp)
    80007f6c:	06813983          	ld	s3,104(sp)
    80007f70:	06013a03          	ld	s4,96(sp)
    80007f74:	05813a83          	ld	s5,88(sp)
    80007f78:	05013b03          	ld	s6,80(sp)
    80007f7c:	04813b83          	ld	s7,72(sp)
    80007f80:	04013c03          	ld	s8,64(sp)
    80007f84:	03813c83          	ld	s9,56(sp)
    80007f88:	03013d03          	ld	s10,48(sp)
    80007f8c:	02813d83          	ld	s11,40(sp)
    80007f90:	0d010113          	addi	sp,sp,208
    80007f94:	00008067          	ret
    80007f98:	07300713          	li	a4,115
    80007f9c:	1ce78a63          	beq	a5,a4,80008170 <__printf+0x4b8>
    80007fa0:	07800713          	li	a4,120
    80007fa4:	1ee79e63          	bne	a5,a4,800081a0 <__printf+0x4e8>
    80007fa8:	f7843783          	ld	a5,-136(s0)
    80007fac:	0007a703          	lw	a4,0(a5)
    80007fb0:	00878793          	addi	a5,a5,8
    80007fb4:	f6f43c23          	sd	a5,-136(s0)
    80007fb8:	28074263          	bltz	a4,8000823c <__printf+0x584>
    80007fbc:	00002d97          	auipc	s11,0x2
    80007fc0:	75cd8d93          	addi	s11,s11,1884 # 8000a718 <digits>
    80007fc4:	00f77793          	andi	a5,a4,15
    80007fc8:	00fd87b3          	add	a5,s11,a5
    80007fcc:	0007c683          	lbu	a3,0(a5)
    80007fd0:	00f00613          	li	a2,15
    80007fd4:	0007079b          	sext.w	a5,a4
    80007fd8:	f8d40023          	sb	a3,-128(s0)
    80007fdc:	0047559b          	srliw	a1,a4,0x4
    80007fe0:	0047569b          	srliw	a3,a4,0x4
    80007fe4:	00000c93          	li	s9,0
    80007fe8:	0ee65063          	bge	a2,a4,800080c8 <__printf+0x410>
    80007fec:	00f6f693          	andi	a3,a3,15
    80007ff0:	00dd86b3          	add	a3,s11,a3
    80007ff4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007ff8:	0087d79b          	srliw	a5,a5,0x8
    80007ffc:	00100c93          	li	s9,1
    80008000:	f8d400a3          	sb	a3,-127(s0)
    80008004:	0cb67263          	bgeu	a2,a1,800080c8 <__printf+0x410>
    80008008:	00f7f693          	andi	a3,a5,15
    8000800c:	00dd86b3          	add	a3,s11,a3
    80008010:	0006c583          	lbu	a1,0(a3)
    80008014:	00f00613          	li	a2,15
    80008018:	0047d69b          	srliw	a3,a5,0x4
    8000801c:	f8b40123          	sb	a1,-126(s0)
    80008020:	0047d593          	srli	a1,a5,0x4
    80008024:	28f67e63          	bgeu	a2,a5,800082c0 <__printf+0x608>
    80008028:	00f6f693          	andi	a3,a3,15
    8000802c:	00dd86b3          	add	a3,s11,a3
    80008030:	0006c503          	lbu	a0,0(a3)
    80008034:	0087d813          	srli	a6,a5,0x8
    80008038:	0087d69b          	srliw	a3,a5,0x8
    8000803c:	f8a401a3          	sb	a0,-125(s0)
    80008040:	28b67663          	bgeu	a2,a1,800082cc <__printf+0x614>
    80008044:	00f6f693          	andi	a3,a3,15
    80008048:	00dd86b3          	add	a3,s11,a3
    8000804c:	0006c583          	lbu	a1,0(a3)
    80008050:	00c7d513          	srli	a0,a5,0xc
    80008054:	00c7d69b          	srliw	a3,a5,0xc
    80008058:	f8b40223          	sb	a1,-124(s0)
    8000805c:	29067a63          	bgeu	a2,a6,800082f0 <__printf+0x638>
    80008060:	00f6f693          	andi	a3,a3,15
    80008064:	00dd86b3          	add	a3,s11,a3
    80008068:	0006c583          	lbu	a1,0(a3)
    8000806c:	0107d813          	srli	a6,a5,0x10
    80008070:	0107d69b          	srliw	a3,a5,0x10
    80008074:	f8b402a3          	sb	a1,-123(s0)
    80008078:	28a67263          	bgeu	a2,a0,800082fc <__printf+0x644>
    8000807c:	00f6f693          	andi	a3,a3,15
    80008080:	00dd86b3          	add	a3,s11,a3
    80008084:	0006c683          	lbu	a3,0(a3)
    80008088:	0147d79b          	srliw	a5,a5,0x14
    8000808c:	f8d40323          	sb	a3,-122(s0)
    80008090:	21067663          	bgeu	a2,a6,8000829c <__printf+0x5e4>
    80008094:	02079793          	slli	a5,a5,0x20
    80008098:	0207d793          	srli	a5,a5,0x20
    8000809c:	00fd8db3          	add	s11,s11,a5
    800080a0:	000dc683          	lbu	a3,0(s11)
    800080a4:	00800793          	li	a5,8
    800080a8:	00700c93          	li	s9,7
    800080ac:	f8d403a3          	sb	a3,-121(s0)
    800080b0:	00075c63          	bgez	a4,800080c8 <__printf+0x410>
    800080b4:	f9040713          	addi	a4,s0,-112
    800080b8:	00f70733          	add	a4,a4,a5
    800080bc:	02d00693          	li	a3,45
    800080c0:	fed70823          	sb	a3,-16(a4)
    800080c4:	00078c93          	mv	s9,a5
    800080c8:	f8040793          	addi	a5,s0,-128
    800080cc:	01978cb3          	add	s9,a5,s9
    800080d0:	f7f40d13          	addi	s10,s0,-129
    800080d4:	000cc503          	lbu	a0,0(s9)
    800080d8:	fffc8c93          	addi	s9,s9,-1
    800080dc:	00000097          	auipc	ra,0x0
    800080e0:	9f8080e7          	jalr	-1544(ra) # 80007ad4 <consputc>
    800080e4:	ff9d18e3          	bne	s10,s9,800080d4 <__printf+0x41c>
    800080e8:	0100006f          	j	800080f8 <__printf+0x440>
    800080ec:	00000097          	auipc	ra,0x0
    800080f0:	9e8080e7          	jalr	-1560(ra) # 80007ad4 <consputc>
    800080f4:	000c8493          	mv	s1,s9
    800080f8:	00094503          	lbu	a0,0(s2)
    800080fc:	c60510e3          	bnez	a0,80007d5c <__printf+0xa4>
    80008100:	e40c0ee3          	beqz	s8,80007f5c <__printf+0x2a4>
    80008104:	00006517          	auipc	a0,0x6
    80008108:	0bc50513          	addi	a0,a0,188 # 8000e1c0 <pr>
    8000810c:	00001097          	auipc	ra,0x1
    80008110:	94c080e7          	jalr	-1716(ra) # 80008a58 <release>
    80008114:	e49ff06f          	j	80007f5c <__printf+0x2a4>
    80008118:	f7843783          	ld	a5,-136(s0)
    8000811c:	03000513          	li	a0,48
    80008120:	01000d13          	li	s10,16
    80008124:	00878713          	addi	a4,a5,8
    80008128:	0007bc83          	ld	s9,0(a5)
    8000812c:	f6e43c23          	sd	a4,-136(s0)
    80008130:	00000097          	auipc	ra,0x0
    80008134:	9a4080e7          	jalr	-1628(ra) # 80007ad4 <consputc>
    80008138:	07800513          	li	a0,120
    8000813c:	00000097          	auipc	ra,0x0
    80008140:	998080e7          	jalr	-1640(ra) # 80007ad4 <consputc>
    80008144:	00002d97          	auipc	s11,0x2
    80008148:	5d4d8d93          	addi	s11,s11,1492 # 8000a718 <digits>
    8000814c:	03ccd793          	srli	a5,s9,0x3c
    80008150:	00fd87b3          	add	a5,s11,a5
    80008154:	0007c503          	lbu	a0,0(a5)
    80008158:	fffd0d1b          	addiw	s10,s10,-1
    8000815c:	004c9c93          	slli	s9,s9,0x4
    80008160:	00000097          	auipc	ra,0x0
    80008164:	974080e7          	jalr	-1676(ra) # 80007ad4 <consputc>
    80008168:	fe0d12e3          	bnez	s10,8000814c <__printf+0x494>
    8000816c:	f8dff06f          	j	800080f8 <__printf+0x440>
    80008170:	f7843783          	ld	a5,-136(s0)
    80008174:	0007bc83          	ld	s9,0(a5)
    80008178:	00878793          	addi	a5,a5,8
    8000817c:	f6f43c23          	sd	a5,-136(s0)
    80008180:	000c9a63          	bnez	s9,80008194 <__printf+0x4dc>
    80008184:	1080006f          	j	8000828c <__printf+0x5d4>
    80008188:	001c8c93          	addi	s9,s9,1
    8000818c:	00000097          	auipc	ra,0x0
    80008190:	948080e7          	jalr	-1720(ra) # 80007ad4 <consputc>
    80008194:	000cc503          	lbu	a0,0(s9)
    80008198:	fe0518e3          	bnez	a0,80008188 <__printf+0x4d0>
    8000819c:	f5dff06f          	j	800080f8 <__printf+0x440>
    800081a0:	02500513          	li	a0,37
    800081a4:	00000097          	auipc	ra,0x0
    800081a8:	930080e7          	jalr	-1744(ra) # 80007ad4 <consputc>
    800081ac:	000c8513          	mv	a0,s9
    800081b0:	00000097          	auipc	ra,0x0
    800081b4:	924080e7          	jalr	-1756(ra) # 80007ad4 <consputc>
    800081b8:	f41ff06f          	j	800080f8 <__printf+0x440>
    800081bc:	02500513          	li	a0,37
    800081c0:	00000097          	auipc	ra,0x0
    800081c4:	914080e7          	jalr	-1772(ra) # 80007ad4 <consputc>
    800081c8:	f31ff06f          	j	800080f8 <__printf+0x440>
    800081cc:	00030513          	mv	a0,t1
    800081d0:	00000097          	auipc	ra,0x0
    800081d4:	7bc080e7          	jalr	1980(ra) # 8000898c <acquire>
    800081d8:	b4dff06f          	j	80007d24 <__printf+0x6c>
    800081dc:	40c0053b          	negw	a0,a2
    800081e0:	00a00713          	li	a4,10
    800081e4:	02e576bb          	remuw	a3,a0,a4
    800081e8:	00002d97          	auipc	s11,0x2
    800081ec:	530d8d93          	addi	s11,s11,1328 # 8000a718 <digits>
    800081f0:	ff700593          	li	a1,-9
    800081f4:	02069693          	slli	a3,a3,0x20
    800081f8:	0206d693          	srli	a3,a3,0x20
    800081fc:	00dd86b3          	add	a3,s11,a3
    80008200:	0006c683          	lbu	a3,0(a3)
    80008204:	02e557bb          	divuw	a5,a0,a4
    80008208:	f8d40023          	sb	a3,-128(s0)
    8000820c:	10b65e63          	bge	a2,a1,80008328 <__printf+0x670>
    80008210:	06300593          	li	a1,99
    80008214:	02e7f6bb          	remuw	a3,a5,a4
    80008218:	02069693          	slli	a3,a3,0x20
    8000821c:	0206d693          	srli	a3,a3,0x20
    80008220:	00dd86b3          	add	a3,s11,a3
    80008224:	0006c683          	lbu	a3,0(a3)
    80008228:	02e7d73b          	divuw	a4,a5,a4
    8000822c:	00200793          	li	a5,2
    80008230:	f8d400a3          	sb	a3,-127(s0)
    80008234:	bca5ece3          	bltu	a1,a0,80007e0c <__printf+0x154>
    80008238:	ce5ff06f          	j	80007f1c <__printf+0x264>
    8000823c:	40e007bb          	negw	a5,a4
    80008240:	00002d97          	auipc	s11,0x2
    80008244:	4d8d8d93          	addi	s11,s11,1240 # 8000a718 <digits>
    80008248:	00f7f693          	andi	a3,a5,15
    8000824c:	00dd86b3          	add	a3,s11,a3
    80008250:	0006c583          	lbu	a1,0(a3)
    80008254:	ff100613          	li	a2,-15
    80008258:	0047d69b          	srliw	a3,a5,0x4
    8000825c:	f8b40023          	sb	a1,-128(s0)
    80008260:	0047d59b          	srliw	a1,a5,0x4
    80008264:	0ac75e63          	bge	a4,a2,80008320 <__printf+0x668>
    80008268:	00f6f693          	andi	a3,a3,15
    8000826c:	00dd86b3          	add	a3,s11,a3
    80008270:	0006c603          	lbu	a2,0(a3)
    80008274:	00f00693          	li	a3,15
    80008278:	0087d79b          	srliw	a5,a5,0x8
    8000827c:	f8c400a3          	sb	a2,-127(s0)
    80008280:	d8b6e4e3          	bltu	a3,a1,80008008 <__printf+0x350>
    80008284:	00200793          	li	a5,2
    80008288:	e2dff06f          	j	800080b4 <__printf+0x3fc>
    8000828c:	00002c97          	auipc	s9,0x2
    80008290:	46cc8c93          	addi	s9,s9,1132 # 8000a6f8 <CONSOLE_STATUS+0x6e8>
    80008294:	02800513          	li	a0,40
    80008298:	ef1ff06f          	j	80008188 <__printf+0x4d0>
    8000829c:	00700793          	li	a5,7
    800082a0:	00600c93          	li	s9,6
    800082a4:	e0dff06f          	j	800080b0 <__printf+0x3f8>
    800082a8:	00700793          	li	a5,7
    800082ac:	00600c93          	li	s9,6
    800082b0:	c69ff06f          	j	80007f18 <__printf+0x260>
    800082b4:	00300793          	li	a5,3
    800082b8:	00200c93          	li	s9,2
    800082bc:	c5dff06f          	j	80007f18 <__printf+0x260>
    800082c0:	00300793          	li	a5,3
    800082c4:	00200c93          	li	s9,2
    800082c8:	de9ff06f          	j	800080b0 <__printf+0x3f8>
    800082cc:	00400793          	li	a5,4
    800082d0:	00300c93          	li	s9,3
    800082d4:	dddff06f          	j	800080b0 <__printf+0x3f8>
    800082d8:	00400793          	li	a5,4
    800082dc:	00300c93          	li	s9,3
    800082e0:	c39ff06f          	j	80007f18 <__printf+0x260>
    800082e4:	00500793          	li	a5,5
    800082e8:	00400c93          	li	s9,4
    800082ec:	c2dff06f          	j	80007f18 <__printf+0x260>
    800082f0:	00500793          	li	a5,5
    800082f4:	00400c93          	li	s9,4
    800082f8:	db9ff06f          	j	800080b0 <__printf+0x3f8>
    800082fc:	00600793          	li	a5,6
    80008300:	00500c93          	li	s9,5
    80008304:	dadff06f          	j	800080b0 <__printf+0x3f8>
    80008308:	00600793          	li	a5,6
    8000830c:	00500c93          	li	s9,5
    80008310:	c09ff06f          	j	80007f18 <__printf+0x260>
    80008314:	00800793          	li	a5,8
    80008318:	00700c93          	li	s9,7
    8000831c:	bfdff06f          	j	80007f18 <__printf+0x260>
    80008320:	00100793          	li	a5,1
    80008324:	d91ff06f          	j	800080b4 <__printf+0x3fc>
    80008328:	00100793          	li	a5,1
    8000832c:	bf1ff06f          	j	80007f1c <__printf+0x264>
    80008330:	00900793          	li	a5,9
    80008334:	00800c93          	li	s9,8
    80008338:	be1ff06f          	j	80007f18 <__printf+0x260>
    8000833c:	00002517          	auipc	a0,0x2
    80008340:	3c450513          	addi	a0,a0,964 # 8000a700 <CONSOLE_STATUS+0x6f0>
    80008344:	00000097          	auipc	ra,0x0
    80008348:	918080e7          	jalr	-1768(ra) # 80007c5c <panic>

000000008000834c <printfinit>:
    8000834c:	fe010113          	addi	sp,sp,-32
    80008350:	00813823          	sd	s0,16(sp)
    80008354:	00913423          	sd	s1,8(sp)
    80008358:	00113c23          	sd	ra,24(sp)
    8000835c:	02010413          	addi	s0,sp,32
    80008360:	00006497          	auipc	s1,0x6
    80008364:	e6048493          	addi	s1,s1,-416 # 8000e1c0 <pr>
    80008368:	00048513          	mv	a0,s1
    8000836c:	00002597          	auipc	a1,0x2
    80008370:	3a458593          	addi	a1,a1,932 # 8000a710 <CONSOLE_STATUS+0x700>
    80008374:	00000097          	auipc	ra,0x0
    80008378:	5f4080e7          	jalr	1524(ra) # 80008968 <initlock>
    8000837c:	01813083          	ld	ra,24(sp)
    80008380:	01013403          	ld	s0,16(sp)
    80008384:	0004ac23          	sw	zero,24(s1)
    80008388:	00813483          	ld	s1,8(sp)
    8000838c:	02010113          	addi	sp,sp,32
    80008390:	00008067          	ret

0000000080008394 <uartinit>:
    80008394:	ff010113          	addi	sp,sp,-16
    80008398:	00813423          	sd	s0,8(sp)
    8000839c:	01010413          	addi	s0,sp,16
    800083a0:	100007b7          	lui	a5,0x10000
    800083a4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800083a8:	f8000713          	li	a4,-128
    800083ac:	00e781a3          	sb	a4,3(a5)
    800083b0:	00300713          	li	a4,3
    800083b4:	00e78023          	sb	a4,0(a5)
    800083b8:	000780a3          	sb	zero,1(a5)
    800083bc:	00e781a3          	sb	a4,3(a5)
    800083c0:	00700693          	li	a3,7
    800083c4:	00d78123          	sb	a3,2(a5)
    800083c8:	00e780a3          	sb	a4,1(a5)
    800083cc:	00813403          	ld	s0,8(sp)
    800083d0:	01010113          	addi	sp,sp,16
    800083d4:	00008067          	ret

00000000800083d8 <uartputc>:
    800083d8:	00005797          	auipc	a5,0x5
    800083dc:	ae07a783          	lw	a5,-1312(a5) # 8000ceb8 <panicked>
    800083e0:	00078463          	beqz	a5,800083e8 <uartputc+0x10>
    800083e4:	0000006f          	j	800083e4 <uartputc+0xc>
    800083e8:	fd010113          	addi	sp,sp,-48
    800083ec:	02813023          	sd	s0,32(sp)
    800083f0:	00913c23          	sd	s1,24(sp)
    800083f4:	01213823          	sd	s2,16(sp)
    800083f8:	01313423          	sd	s3,8(sp)
    800083fc:	02113423          	sd	ra,40(sp)
    80008400:	03010413          	addi	s0,sp,48
    80008404:	00005917          	auipc	s2,0x5
    80008408:	abc90913          	addi	s2,s2,-1348 # 8000cec0 <uart_tx_r>
    8000840c:	00093783          	ld	a5,0(s2)
    80008410:	00005497          	auipc	s1,0x5
    80008414:	ab848493          	addi	s1,s1,-1352 # 8000cec8 <uart_tx_w>
    80008418:	0004b703          	ld	a4,0(s1)
    8000841c:	02078693          	addi	a3,a5,32
    80008420:	00050993          	mv	s3,a0
    80008424:	02e69c63          	bne	a3,a4,8000845c <uartputc+0x84>
    80008428:	00001097          	auipc	ra,0x1
    8000842c:	834080e7          	jalr	-1996(ra) # 80008c5c <push_on>
    80008430:	00093783          	ld	a5,0(s2)
    80008434:	0004b703          	ld	a4,0(s1)
    80008438:	02078793          	addi	a5,a5,32
    8000843c:	00e79463          	bne	a5,a4,80008444 <uartputc+0x6c>
    80008440:	0000006f          	j	80008440 <uartputc+0x68>
    80008444:	00001097          	auipc	ra,0x1
    80008448:	88c080e7          	jalr	-1908(ra) # 80008cd0 <pop_on>
    8000844c:	00093783          	ld	a5,0(s2)
    80008450:	0004b703          	ld	a4,0(s1)
    80008454:	02078693          	addi	a3,a5,32
    80008458:	fce688e3          	beq	a3,a4,80008428 <uartputc+0x50>
    8000845c:	01f77693          	andi	a3,a4,31
    80008460:	00006597          	auipc	a1,0x6
    80008464:	d8058593          	addi	a1,a1,-640 # 8000e1e0 <uart_tx_buf>
    80008468:	00d586b3          	add	a3,a1,a3
    8000846c:	00170713          	addi	a4,a4,1
    80008470:	01368023          	sb	s3,0(a3)
    80008474:	00e4b023          	sd	a4,0(s1)
    80008478:	10000637          	lui	a2,0x10000
    8000847c:	02f71063          	bne	a4,a5,8000849c <uartputc+0xc4>
    80008480:	0340006f          	j	800084b4 <uartputc+0xdc>
    80008484:	00074703          	lbu	a4,0(a4)
    80008488:	00f93023          	sd	a5,0(s2)
    8000848c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80008490:	00093783          	ld	a5,0(s2)
    80008494:	0004b703          	ld	a4,0(s1)
    80008498:	00f70e63          	beq	a4,a5,800084b4 <uartputc+0xdc>
    8000849c:	00564683          	lbu	a3,5(a2)
    800084a0:	01f7f713          	andi	a4,a5,31
    800084a4:	00e58733          	add	a4,a1,a4
    800084a8:	0206f693          	andi	a3,a3,32
    800084ac:	00178793          	addi	a5,a5,1
    800084b0:	fc069ae3          	bnez	a3,80008484 <uartputc+0xac>
    800084b4:	02813083          	ld	ra,40(sp)
    800084b8:	02013403          	ld	s0,32(sp)
    800084bc:	01813483          	ld	s1,24(sp)
    800084c0:	01013903          	ld	s2,16(sp)
    800084c4:	00813983          	ld	s3,8(sp)
    800084c8:	03010113          	addi	sp,sp,48
    800084cc:	00008067          	ret

00000000800084d0 <uartputc_sync>:
    800084d0:	ff010113          	addi	sp,sp,-16
    800084d4:	00813423          	sd	s0,8(sp)
    800084d8:	01010413          	addi	s0,sp,16
    800084dc:	00005717          	auipc	a4,0x5
    800084e0:	9dc72703          	lw	a4,-1572(a4) # 8000ceb8 <panicked>
    800084e4:	02071663          	bnez	a4,80008510 <uartputc_sync+0x40>
    800084e8:	00050793          	mv	a5,a0
    800084ec:	100006b7          	lui	a3,0x10000
    800084f0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800084f4:	02077713          	andi	a4,a4,32
    800084f8:	fe070ce3          	beqz	a4,800084f0 <uartputc_sync+0x20>
    800084fc:	0ff7f793          	andi	a5,a5,255
    80008500:	00f68023          	sb	a5,0(a3)
    80008504:	00813403          	ld	s0,8(sp)
    80008508:	01010113          	addi	sp,sp,16
    8000850c:	00008067          	ret
    80008510:	0000006f          	j	80008510 <uartputc_sync+0x40>

0000000080008514 <uartstart>:
    80008514:	ff010113          	addi	sp,sp,-16
    80008518:	00813423          	sd	s0,8(sp)
    8000851c:	01010413          	addi	s0,sp,16
    80008520:	00005617          	auipc	a2,0x5
    80008524:	9a060613          	addi	a2,a2,-1632 # 8000cec0 <uart_tx_r>
    80008528:	00005517          	auipc	a0,0x5
    8000852c:	9a050513          	addi	a0,a0,-1632 # 8000cec8 <uart_tx_w>
    80008530:	00063783          	ld	a5,0(a2)
    80008534:	00053703          	ld	a4,0(a0)
    80008538:	04f70263          	beq	a4,a5,8000857c <uartstart+0x68>
    8000853c:	100005b7          	lui	a1,0x10000
    80008540:	00006817          	auipc	a6,0x6
    80008544:	ca080813          	addi	a6,a6,-864 # 8000e1e0 <uart_tx_buf>
    80008548:	01c0006f          	j	80008564 <uartstart+0x50>
    8000854c:	0006c703          	lbu	a4,0(a3)
    80008550:	00f63023          	sd	a5,0(a2)
    80008554:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80008558:	00063783          	ld	a5,0(a2)
    8000855c:	00053703          	ld	a4,0(a0)
    80008560:	00f70e63          	beq	a4,a5,8000857c <uartstart+0x68>
    80008564:	01f7f713          	andi	a4,a5,31
    80008568:	00e806b3          	add	a3,a6,a4
    8000856c:	0055c703          	lbu	a4,5(a1)
    80008570:	00178793          	addi	a5,a5,1
    80008574:	02077713          	andi	a4,a4,32
    80008578:	fc071ae3          	bnez	a4,8000854c <uartstart+0x38>
    8000857c:	00813403          	ld	s0,8(sp)
    80008580:	01010113          	addi	sp,sp,16
    80008584:	00008067          	ret

0000000080008588 <uartgetc>:
    80008588:	ff010113          	addi	sp,sp,-16
    8000858c:	00813423          	sd	s0,8(sp)
    80008590:	01010413          	addi	s0,sp,16
    80008594:	10000737          	lui	a4,0x10000
    80008598:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000859c:	0017f793          	andi	a5,a5,1
    800085a0:	00078c63          	beqz	a5,800085b8 <uartgetc+0x30>
    800085a4:	00074503          	lbu	a0,0(a4)
    800085a8:	0ff57513          	andi	a0,a0,255
    800085ac:	00813403          	ld	s0,8(sp)
    800085b0:	01010113          	addi	sp,sp,16
    800085b4:	00008067          	ret
    800085b8:	fff00513          	li	a0,-1
    800085bc:	ff1ff06f          	j	800085ac <uartgetc+0x24>

00000000800085c0 <uartintr>:
    800085c0:	100007b7          	lui	a5,0x10000
    800085c4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800085c8:	0017f793          	andi	a5,a5,1
    800085cc:	0a078463          	beqz	a5,80008674 <uartintr+0xb4>
    800085d0:	fe010113          	addi	sp,sp,-32
    800085d4:	00813823          	sd	s0,16(sp)
    800085d8:	00913423          	sd	s1,8(sp)
    800085dc:	00113c23          	sd	ra,24(sp)
    800085e0:	02010413          	addi	s0,sp,32
    800085e4:	100004b7          	lui	s1,0x10000
    800085e8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800085ec:	0ff57513          	andi	a0,a0,255
    800085f0:	fffff097          	auipc	ra,0xfffff
    800085f4:	534080e7          	jalr	1332(ra) # 80007b24 <consoleintr>
    800085f8:	0054c783          	lbu	a5,5(s1)
    800085fc:	0017f793          	andi	a5,a5,1
    80008600:	fe0794e3          	bnez	a5,800085e8 <uartintr+0x28>
    80008604:	00005617          	auipc	a2,0x5
    80008608:	8bc60613          	addi	a2,a2,-1860 # 8000cec0 <uart_tx_r>
    8000860c:	00005517          	auipc	a0,0x5
    80008610:	8bc50513          	addi	a0,a0,-1860 # 8000cec8 <uart_tx_w>
    80008614:	00063783          	ld	a5,0(a2)
    80008618:	00053703          	ld	a4,0(a0)
    8000861c:	04f70263          	beq	a4,a5,80008660 <uartintr+0xa0>
    80008620:	100005b7          	lui	a1,0x10000
    80008624:	00006817          	auipc	a6,0x6
    80008628:	bbc80813          	addi	a6,a6,-1092 # 8000e1e0 <uart_tx_buf>
    8000862c:	01c0006f          	j	80008648 <uartintr+0x88>
    80008630:	0006c703          	lbu	a4,0(a3)
    80008634:	00f63023          	sd	a5,0(a2)
    80008638:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000863c:	00063783          	ld	a5,0(a2)
    80008640:	00053703          	ld	a4,0(a0)
    80008644:	00f70e63          	beq	a4,a5,80008660 <uartintr+0xa0>
    80008648:	01f7f713          	andi	a4,a5,31
    8000864c:	00e806b3          	add	a3,a6,a4
    80008650:	0055c703          	lbu	a4,5(a1)
    80008654:	00178793          	addi	a5,a5,1
    80008658:	02077713          	andi	a4,a4,32
    8000865c:	fc071ae3          	bnez	a4,80008630 <uartintr+0x70>
    80008660:	01813083          	ld	ra,24(sp)
    80008664:	01013403          	ld	s0,16(sp)
    80008668:	00813483          	ld	s1,8(sp)
    8000866c:	02010113          	addi	sp,sp,32
    80008670:	00008067          	ret
    80008674:	00005617          	auipc	a2,0x5
    80008678:	84c60613          	addi	a2,a2,-1972 # 8000cec0 <uart_tx_r>
    8000867c:	00005517          	auipc	a0,0x5
    80008680:	84c50513          	addi	a0,a0,-1972 # 8000cec8 <uart_tx_w>
    80008684:	00063783          	ld	a5,0(a2)
    80008688:	00053703          	ld	a4,0(a0)
    8000868c:	04f70263          	beq	a4,a5,800086d0 <uartintr+0x110>
    80008690:	100005b7          	lui	a1,0x10000
    80008694:	00006817          	auipc	a6,0x6
    80008698:	b4c80813          	addi	a6,a6,-1204 # 8000e1e0 <uart_tx_buf>
    8000869c:	01c0006f          	j	800086b8 <uartintr+0xf8>
    800086a0:	0006c703          	lbu	a4,0(a3)
    800086a4:	00f63023          	sd	a5,0(a2)
    800086a8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800086ac:	00063783          	ld	a5,0(a2)
    800086b0:	00053703          	ld	a4,0(a0)
    800086b4:	02f70063          	beq	a4,a5,800086d4 <uartintr+0x114>
    800086b8:	01f7f713          	andi	a4,a5,31
    800086bc:	00e806b3          	add	a3,a6,a4
    800086c0:	0055c703          	lbu	a4,5(a1)
    800086c4:	00178793          	addi	a5,a5,1
    800086c8:	02077713          	andi	a4,a4,32
    800086cc:	fc071ae3          	bnez	a4,800086a0 <uartintr+0xe0>
    800086d0:	00008067          	ret
    800086d4:	00008067          	ret

00000000800086d8 <kinit>:
    800086d8:	fc010113          	addi	sp,sp,-64
    800086dc:	02913423          	sd	s1,40(sp)
    800086e0:	fffff7b7          	lui	a5,0xfffff
    800086e4:	00007497          	auipc	s1,0x7
    800086e8:	b1b48493          	addi	s1,s1,-1253 # 8000f1ff <end+0xfff>
    800086ec:	02813823          	sd	s0,48(sp)
    800086f0:	01313c23          	sd	s3,24(sp)
    800086f4:	00f4f4b3          	and	s1,s1,a5
    800086f8:	02113c23          	sd	ra,56(sp)
    800086fc:	03213023          	sd	s2,32(sp)
    80008700:	01413823          	sd	s4,16(sp)
    80008704:	01513423          	sd	s5,8(sp)
    80008708:	04010413          	addi	s0,sp,64
    8000870c:	000017b7          	lui	a5,0x1
    80008710:	01100993          	li	s3,17
    80008714:	00f487b3          	add	a5,s1,a5
    80008718:	01b99993          	slli	s3,s3,0x1b
    8000871c:	06f9e063          	bltu	s3,a5,8000877c <kinit+0xa4>
    80008720:	00006a97          	auipc	s5,0x6
    80008724:	ae0a8a93          	addi	s5,s5,-1312 # 8000e200 <end>
    80008728:	0754ec63          	bltu	s1,s5,800087a0 <kinit+0xc8>
    8000872c:	0734fa63          	bgeu	s1,s3,800087a0 <kinit+0xc8>
    80008730:	00088a37          	lui	s4,0x88
    80008734:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80008738:	00004917          	auipc	s2,0x4
    8000873c:	79890913          	addi	s2,s2,1944 # 8000ced0 <kmem>
    80008740:	00ca1a13          	slli	s4,s4,0xc
    80008744:	0140006f          	j	80008758 <kinit+0x80>
    80008748:	000017b7          	lui	a5,0x1
    8000874c:	00f484b3          	add	s1,s1,a5
    80008750:	0554e863          	bltu	s1,s5,800087a0 <kinit+0xc8>
    80008754:	0534f663          	bgeu	s1,s3,800087a0 <kinit+0xc8>
    80008758:	00001637          	lui	a2,0x1
    8000875c:	00100593          	li	a1,1
    80008760:	00048513          	mv	a0,s1
    80008764:	00000097          	auipc	ra,0x0
    80008768:	5e4080e7          	jalr	1508(ra) # 80008d48 <__memset>
    8000876c:	00093783          	ld	a5,0(s2)
    80008770:	00f4b023          	sd	a5,0(s1)
    80008774:	00993023          	sd	s1,0(s2)
    80008778:	fd4498e3          	bne	s1,s4,80008748 <kinit+0x70>
    8000877c:	03813083          	ld	ra,56(sp)
    80008780:	03013403          	ld	s0,48(sp)
    80008784:	02813483          	ld	s1,40(sp)
    80008788:	02013903          	ld	s2,32(sp)
    8000878c:	01813983          	ld	s3,24(sp)
    80008790:	01013a03          	ld	s4,16(sp)
    80008794:	00813a83          	ld	s5,8(sp)
    80008798:	04010113          	addi	sp,sp,64
    8000879c:	00008067          	ret
    800087a0:	00002517          	auipc	a0,0x2
    800087a4:	f9050513          	addi	a0,a0,-112 # 8000a730 <digits+0x18>
    800087a8:	fffff097          	auipc	ra,0xfffff
    800087ac:	4b4080e7          	jalr	1204(ra) # 80007c5c <panic>

00000000800087b0 <freerange>:
    800087b0:	fc010113          	addi	sp,sp,-64
    800087b4:	000017b7          	lui	a5,0x1
    800087b8:	02913423          	sd	s1,40(sp)
    800087bc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800087c0:	009504b3          	add	s1,a0,s1
    800087c4:	fffff537          	lui	a0,0xfffff
    800087c8:	02813823          	sd	s0,48(sp)
    800087cc:	02113c23          	sd	ra,56(sp)
    800087d0:	03213023          	sd	s2,32(sp)
    800087d4:	01313c23          	sd	s3,24(sp)
    800087d8:	01413823          	sd	s4,16(sp)
    800087dc:	01513423          	sd	s5,8(sp)
    800087e0:	01613023          	sd	s6,0(sp)
    800087e4:	04010413          	addi	s0,sp,64
    800087e8:	00a4f4b3          	and	s1,s1,a0
    800087ec:	00f487b3          	add	a5,s1,a5
    800087f0:	06f5e463          	bltu	a1,a5,80008858 <freerange+0xa8>
    800087f4:	00006a97          	auipc	s5,0x6
    800087f8:	a0ca8a93          	addi	s5,s5,-1524 # 8000e200 <end>
    800087fc:	0954e263          	bltu	s1,s5,80008880 <freerange+0xd0>
    80008800:	01100993          	li	s3,17
    80008804:	01b99993          	slli	s3,s3,0x1b
    80008808:	0734fc63          	bgeu	s1,s3,80008880 <freerange+0xd0>
    8000880c:	00058a13          	mv	s4,a1
    80008810:	00004917          	auipc	s2,0x4
    80008814:	6c090913          	addi	s2,s2,1728 # 8000ced0 <kmem>
    80008818:	00002b37          	lui	s6,0x2
    8000881c:	0140006f          	j	80008830 <freerange+0x80>
    80008820:	000017b7          	lui	a5,0x1
    80008824:	00f484b3          	add	s1,s1,a5
    80008828:	0554ec63          	bltu	s1,s5,80008880 <freerange+0xd0>
    8000882c:	0534fa63          	bgeu	s1,s3,80008880 <freerange+0xd0>
    80008830:	00001637          	lui	a2,0x1
    80008834:	00100593          	li	a1,1
    80008838:	00048513          	mv	a0,s1
    8000883c:	00000097          	auipc	ra,0x0
    80008840:	50c080e7          	jalr	1292(ra) # 80008d48 <__memset>
    80008844:	00093703          	ld	a4,0(s2)
    80008848:	016487b3          	add	a5,s1,s6
    8000884c:	00e4b023          	sd	a4,0(s1)
    80008850:	00993023          	sd	s1,0(s2)
    80008854:	fcfa76e3          	bgeu	s4,a5,80008820 <freerange+0x70>
    80008858:	03813083          	ld	ra,56(sp)
    8000885c:	03013403          	ld	s0,48(sp)
    80008860:	02813483          	ld	s1,40(sp)
    80008864:	02013903          	ld	s2,32(sp)
    80008868:	01813983          	ld	s3,24(sp)
    8000886c:	01013a03          	ld	s4,16(sp)
    80008870:	00813a83          	ld	s5,8(sp)
    80008874:	00013b03          	ld	s6,0(sp)
    80008878:	04010113          	addi	sp,sp,64
    8000887c:	00008067          	ret
    80008880:	00002517          	auipc	a0,0x2
    80008884:	eb050513          	addi	a0,a0,-336 # 8000a730 <digits+0x18>
    80008888:	fffff097          	auipc	ra,0xfffff
    8000888c:	3d4080e7          	jalr	980(ra) # 80007c5c <panic>

0000000080008890 <kfree>:
    80008890:	fe010113          	addi	sp,sp,-32
    80008894:	00813823          	sd	s0,16(sp)
    80008898:	00113c23          	sd	ra,24(sp)
    8000889c:	00913423          	sd	s1,8(sp)
    800088a0:	02010413          	addi	s0,sp,32
    800088a4:	03451793          	slli	a5,a0,0x34
    800088a8:	04079c63          	bnez	a5,80008900 <kfree+0x70>
    800088ac:	00006797          	auipc	a5,0x6
    800088b0:	95478793          	addi	a5,a5,-1708 # 8000e200 <end>
    800088b4:	00050493          	mv	s1,a0
    800088b8:	04f56463          	bltu	a0,a5,80008900 <kfree+0x70>
    800088bc:	01100793          	li	a5,17
    800088c0:	01b79793          	slli	a5,a5,0x1b
    800088c4:	02f57e63          	bgeu	a0,a5,80008900 <kfree+0x70>
    800088c8:	00001637          	lui	a2,0x1
    800088cc:	00100593          	li	a1,1
    800088d0:	00000097          	auipc	ra,0x0
    800088d4:	478080e7          	jalr	1144(ra) # 80008d48 <__memset>
    800088d8:	00004797          	auipc	a5,0x4
    800088dc:	5f878793          	addi	a5,a5,1528 # 8000ced0 <kmem>
    800088e0:	0007b703          	ld	a4,0(a5)
    800088e4:	01813083          	ld	ra,24(sp)
    800088e8:	01013403          	ld	s0,16(sp)
    800088ec:	00e4b023          	sd	a4,0(s1)
    800088f0:	0097b023          	sd	s1,0(a5)
    800088f4:	00813483          	ld	s1,8(sp)
    800088f8:	02010113          	addi	sp,sp,32
    800088fc:	00008067          	ret
    80008900:	00002517          	auipc	a0,0x2
    80008904:	e3050513          	addi	a0,a0,-464 # 8000a730 <digits+0x18>
    80008908:	fffff097          	auipc	ra,0xfffff
    8000890c:	354080e7          	jalr	852(ra) # 80007c5c <panic>

0000000080008910 <kalloc>:
    80008910:	fe010113          	addi	sp,sp,-32
    80008914:	00813823          	sd	s0,16(sp)
    80008918:	00913423          	sd	s1,8(sp)
    8000891c:	00113c23          	sd	ra,24(sp)
    80008920:	02010413          	addi	s0,sp,32
    80008924:	00004797          	auipc	a5,0x4
    80008928:	5ac78793          	addi	a5,a5,1452 # 8000ced0 <kmem>
    8000892c:	0007b483          	ld	s1,0(a5)
    80008930:	02048063          	beqz	s1,80008950 <kalloc+0x40>
    80008934:	0004b703          	ld	a4,0(s1)
    80008938:	00001637          	lui	a2,0x1
    8000893c:	00500593          	li	a1,5
    80008940:	00048513          	mv	a0,s1
    80008944:	00e7b023          	sd	a4,0(a5)
    80008948:	00000097          	auipc	ra,0x0
    8000894c:	400080e7          	jalr	1024(ra) # 80008d48 <__memset>
    80008950:	01813083          	ld	ra,24(sp)
    80008954:	01013403          	ld	s0,16(sp)
    80008958:	00048513          	mv	a0,s1
    8000895c:	00813483          	ld	s1,8(sp)
    80008960:	02010113          	addi	sp,sp,32
    80008964:	00008067          	ret

0000000080008968 <initlock>:
    80008968:	ff010113          	addi	sp,sp,-16
    8000896c:	00813423          	sd	s0,8(sp)
    80008970:	01010413          	addi	s0,sp,16
    80008974:	00813403          	ld	s0,8(sp)
    80008978:	00b53423          	sd	a1,8(a0)
    8000897c:	00052023          	sw	zero,0(a0)
    80008980:	00053823          	sd	zero,16(a0)
    80008984:	01010113          	addi	sp,sp,16
    80008988:	00008067          	ret

000000008000898c <acquire>:
    8000898c:	fe010113          	addi	sp,sp,-32
    80008990:	00813823          	sd	s0,16(sp)
    80008994:	00913423          	sd	s1,8(sp)
    80008998:	00113c23          	sd	ra,24(sp)
    8000899c:	01213023          	sd	s2,0(sp)
    800089a0:	02010413          	addi	s0,sp,32
    800089a4:	00050493          	mv	s1,a0
    800089a8:	10002973          	csrr	s2,sstatus
    800089ac:	100027f3          	csrr	a5,sstatus
    800089b0:	ffd7f793          	andi	a5,a5,-3
    800089b4:	10079073          	csrw	sstatus,a5
    800089b8:	fffff097          	auipc	ra,0xfffff
    800089bc:	8e8080e7          	jalr	-1816(ra) # 800072a0 <mycpu>
    800089c0:	07852783          	lw	a5,120(a0)
    800089c4:	06078e63          	beqz	a5,80008a40 <acquire+0xb4>
    800089c8:	fffff097          	auipc	ra,0xfffff
    800089cc:	8d8080e7          	jalr	-1832(ra) # 800072a0 <mycpu>
    800089d0:	07852783          	lw	a5,120(a0)
    800089d4:	0004a703          	lw	a4,0(s1)
    800089d8:	0017879b          	addiw	a5,a5,1
    800089dc:	06f52c23          	sw	a5,120(a0)
    800089e0:	04071063          	bnez	a4,80008a20 <acquire+0x94>
    800089e4:	00100713          	li	a4,1
    800089e8:	00070793          	mv	a5,a4
    800089ec:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800089f0:	0007879b          	sext.w	a5,a5
    800089f4:	fe079ae3          	bnez	a5,800089e8 <acquire+0x5c>
    800089f8:	0ff0000f          	fence
    800089fc:	fffff097          	auipc	ra,0xfffff
    80008a00:	8a4080e7          	jalr	-1884(ra) # 800072a0 <mycpu>
    80008a04:	01813083          	ld	ra,24(sp)
    80008a08:	01013403          	ld	s0,16(sp)
    80008a0c:	00a4b823          	sd	a0,16(s1)
    80008a10:	00013903          	ld	s2,0(sp)
    80008a14:	00813483          	ld	s1,8(sp)
    80008a18:	02010113          	addi	sp,sp,32
    80008a1c:	00008067          	ret
    80008a20:	0104b903          	ld	s2,16(s1)
    80008a24:	fffff097          	auipc	ra,0xfffff
    80008a28:	87c080e7          	jalr	-1924(ra) # 800072a0 <mycpu>
    80008a2c:	faa91ce3          	bne	s2,a0,800089e4 <acquire+0x58>
    80008a30:	00002517          	auipc	a0,0x2
    80008a34:	d0850513          	addi	a0,a0,-760 # 8000a738 <digits+0x20>
    80008a38:	fffff097          	auipc	ra,0xfffff
    80008a3c:	224080e7          	jalr	548(ra) # 80007c5c <panic>
    80008a40:	00195913          	srli	s2,s2,0x1
    80008a44:	fffff097          	auipc	ra,0xfffff
    80008a48:	85c080e7          	jalr	-1956(ra) # 800072a0 <mycpu>
    80008a4c:	00197913          	andi	s2,s2,1
    80008a50:	07252e23          	sw	s2,124(a0)
    80008a54:	f75ff06f          	j	800089c8 <acquire+0x3c>

0000000080008a58 <release>:
    80008a58:	fe010113          	addi	sp,sp,-32
    80008a5c:	00813823          	sd	s0,16(sp)
    80008a60:	00113c23          	sd	ra,24(sp)
    80008a64:	00913423          	sd	s1,8(sp)
    80008a68:	01213023          	sd	s2,0(sp)
    80008a6c:	02010413          	addi	s0,sp,32
    80008a70:	00052783          	lw	a5,0(a0)
    80008a74:	00079a63          	bnez	a5,80008a88 <release+0x30>
    80008a78:	00002517          	auipc	a0,0x2
    80008a7c:	cc850513          	addi	a0,a0,-824 # 8000a740 <digits+0x28>
    80008a80:	fffff097          	auipc	ra,0xfffff
    80008a84:	1dc080e7          	jalr	476(ra) # 80007c5c <panic>
    80008a88:	01053903          	ld	s2,16(a0)
    80008a8c:	00050493          	mv	s1,a0
    80008a90:	fffff097          	auipc	ra,0xfffff
    80008a94:	810080e7          	jalr	-2032(ra) # 800072a0 <mycpu>
    80008a98:	fea910e3          	bne	s2,a0,80008a78 <release+0x20>
    80008a9c:	0004b823          	sd	zero,16(s1)
    80008aa0:	0ff0000f          	fence
    80008aa4:	0f50000f          	fence	iorw,ow
    80008aa8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80008aac:	ffffe097          	auipc	ra,0xffffe
    80008ab0:	7f4080e7          	jalr	2036(ra) # 800072a0 <mycpu>
    80008ab4:	100027f3          	csrr	a5,sstatus
    80008ab8:	0027f793          	andi	a5,a5,2
    80008abc:	04079a63          	bnez	a5,80008b10 <release+0xb8>
    80008ac0:	07852783          	lw	a5,120(a0)
    80008ac4:	02f05e63          	blez	a5,80008b00 <release+0xa8>
    80008ac8:	fff7871b          	addiw	a4,a5,-1
    80008acc:	06e52c23          	sw	a4,120(a0)
    80008ad0:	00071c63          	bnez	a4,80008ae8 <release+0x90>
    80008ad4:	07c52783          	lw	a5,124(a0)
    80008ad8:	00078863          	beqz	a5,80008ae8 <release+0x90>
    80008adc:	100027f3          	csrr	a5,sstatus
    80008ae0:	0027e793          	ori	a5,a5,2
    80008ae4:	10079073          	csrw	sstatus,a5
    80008ae8:	01813083          	ld	ra,24(sp)
    80008aec:	01013403          	ld	s0,16(sp)
    80008af0:	00813483          	ld	s1,8(sp)
    80008af4:	00013903          	ld	s2,0(sp)
    80008af8:	02010113          	addi	sp,sp,32
    80008afc:	00008067          	ret
    80008b00:	00002517          	auipc	a0,0x2
    80008b04:	c6050513          	addi	a0,a0,-928 # 8000a760 <digits+0x48>
    80008b08:	fffff097          	auipc	ra,0xfffff
    80008b0c:	154080e7          	jalr	340(ra) # 80007c5c <panic>
    80008b10:	00002517          	auipc	a0,0x2
    80008b14:	c3850513          	addi	a0,a0,-968 # 8000a748 <digits+0x30>
    80008b18:	fffff097          	auipc	ra,0xfffff
    80008b1c:	144080e7          	jalr	324(ra) # 80007c5c <panic>

0000000080008b20 <holding>:
    80008b20:	00052783          	lw	a5,0(a0)
    80008b24:	00079663          	bnez	a5,80008b30 <holding+0x10>
    80008b28:	00000513          	li	a0,0
    80008b2c:	00008067          	ret
    80008b30:	fe010113          	addi	sp,sp,-32
    80008b34:	00813823          	sd	s0,16(sp)
    80008b38:	00913423          	sd	s1,8(sp)
    80008b3c:	00113c23          	sd	ra,24(sp)
    80008b40:	02010413          	addi	s0,sp,32
    80008b44:	01053483          	ld	s1,16(a0)
    80008b48:	ffffe097          	auipc	ra,0xffffe
    80008b4c:	758080e7          	jalr	1880(ra) # 800072a0 <mycpu>
    80008b50:	01813083          	ld	ra,24(sp)
    80008b54:	01013403          	ld	s0,16(sp)
    80008b58:	40a48533          	sub	a0,s1,a0
    80008b5c:	00153513          	seqz	a0,a0
    80008b60:	00813483          	ld	s1,8(sp)
    80008b64:	02010113          	addi	sp,sp,32
    80008b68:	00008067          	ret

0000000080008b6c <push_off>:
    80008b6c:	fe010113          	addi	sp,sp,-32
    80008b70:	00813823          	sd	s0,16(sp)
    80008b74:	00113c23          	sd	ra,24(sp)
    80008b78:	00913423          	sd	s1,8(sp)
    80008b7c:	02010413          	addi	s0,sp,32
    80008b80:	100024f3          	csrr	s1,sstatus
    80008b84:	100027f3          	csrr	a5,sstatus
    80008b88:	ffd7f793          	andi	a5,a5,-3
    80008b8c:	10079073          	csrw	sstatus,a5
    80008b90:	ffffe097          	auipc	ra,0xffffe
    80008b94:	710080e7          	jalr	1808(ra) # 800072a0 <mycpu>
    80008b98:	07852783          	lw	a5,120(a0)
    80008b9c:	02078663          	beqz	a5,80008bc8 <push_off+0x5c>
    80008ba0:	ffffe097          	auipc	ra,0xffffe
    80008ba4:	700080e7          	jalr	1792(ra) # 800072a0 <mycpu>
    80008ba8:	07852783          	lw	a5,120(a0)
    80008bac:	01813083          	ld	ra,24(sp)
    80008bb0:	01013403          	ld	s0,16(sp)
    80008bb4:	0017879b          	addiw	a5,a5,1
    80008bb8:	06f52c23          	sw	a5,120(a0)
    80008bbc:	00813483          	ld	s1,8(sp)
    80008bc0:	02010113          	addi	sp,sp,32
    80008bc4:	00008067          	ret
    80008bc8:	0014d493          	srli	s1,s1,0x1
    80008bcc:	ffffe097          	auipc	ra,0xffffe
    80008bd0:	6d4080e7          	jalr	1748(ra) # 800072a0 <mycpu>
    80008bd4:	0014f493          	andi	s1,s1,1
    80008bd8:	06952e23          	sw	s1,124(a0)
    80008bdc:	fc5ff06f          	j	80008ba0 <push_off+0x34>

0000000080008be0 <pop_off>:
    80008be0:	ff010113          	addi	sp,sp,-16
    80008be4:	00813023          	sd	s0,0(sp)
    80008be8:	00113423          	sd	ra,8(sp)
    80008bec:	01010413          	addi	s0,sp,16
    80008bf0:	ffffe097          	auipc	ra,0xffffe
    80008bf4:	6b0080e7          	jalr	1712(ra) # 800072a0 <mycpu>
    80008bf8:	100027f3          	csrr	a5,sstatus
    80008bfc:	0027f793          	andi	a5,a5,2
    80008c00:	04079663          	bnez	a5,80008c4c <pop_off+0x6c>
    80008c04:	07852783          	lw	a5,120(a0)
    80008c08:	02f05a63          	blez	a5,80008c3c <pop_off+0x5c>
    80008c0c:	fff7871b          	addiw	a4,a5,-1
    80008c10:	06e52c23          	sw	a4,120(a0)
    80008c14:	00071c63          	bnez	a4,80008c2c <pop_off+0x4c>
    80008c18:	07c52783          	lw	a5,124(a0)
    80008c1c:	00078863          	beqz	a5,80008c2c <pop_off+0x4c>
    80008c20:	100027f3          	csrr	a5,sstatus
    80008c24:	0027e793          	ori	a5,a5,2
    80008c28:	10079073          	csrw	sstatus,a5
    80008c2c:	00813083          	ld	ra,8(sp)
    80008c30:	00013403          	ld	s0,0(sp)
    80008c34:	01010113          	addi	sp,sp,16
    80008c38:	00008067          	ret
    80008c3c:	00002517          	auipc	a0,0x2
    80008c40:	b2450513          	addi	a0,a0,-1244 # 8000a760 <digits+0x48>
    80008c44:	fffff097          	auipc	ra,0xfffff
    80008c48:	018080e7          	jalr	24(ra) # 80007c5c <panic>
    80008c4c:	00002517          	auipc	a0,0x2
    80008c50:	afc50513          	addi	a0,a0,-1284 # 8000a748 <digits+0x30>
    80008c54:	fffff097          	auipc	ra,0xfffff
    80008c58:	008080e7          	jalr	8(ra) # 80007c5c <panic>

0000000080008c5c <push_on>:
    80008c5c:	fe010113          	addi	sp,sp,-32
    80008c60:	00813823          	sd	s0,16(sp)
    80008c64:	00113c23          	sd	ra,24(sp)
    80008c68:	00913423          	sd	s1,8(sp)
    80008c6c:	02010413          	addi	s0,sp,32
    80008c70:	100024f3          	csrr	s1,sstatus
    80008c74:	100027f3          	csrr	a5,sstatus
    80008c78:	0027e793          	ori	a5,a5,2
    80008c7c:	10079073          	csrw	sstatus,a5
    80008c80:	ffffe097          	auipc	ra,0xffffe
    80008c84:	620080e7          	jalr	1568(ra) # 800072a0 <mycpu>
    80008c88:	07852783          	lw	a5,120(a0)
    80008c8c:	02078663          	beqz	a5,80008cb8 <push_on+0x5c>
    80008c90:	ffffe097          	auipc	ra,0xffffe
    80008c94:	610080e7          	jalr	1552(ra) # 800072a0 <mycpu>
    80008c98:	07852783          	lw	a5,120(a0)
    80008c9c:	01813083          	ld	ra,24(sp)
    80008ca0:	01013403          	ld	s0,16(sp)
    80008ca4:	0017879b          	addiw	a5,a5,1
    80008ca8:	06f52c23          	sw	a5,120(a0)
    80008cac:	00813483          	ld	s1,8(sp)
    80008cb0:	02010113          	addi	sp,sp,32
    80008cb4:	00008067          	ret
    80008cb8:	0014d493          	srli	s1,s1,0x1
    80008cbc:	ffffe097          	auipc	ra,0xffffe
    80008cc0:	5e4080e7          	jalr	1508(ra) # 800072a0 <mycpu>
    80008cc4:	0014f493          	andi	s1,s1,1
    80008cc8:	06952e23          	sw	s1,124(a0)
    80008ccc:	fc5ff06f          	j	80008c90 <push_on+0x34>

0000000080008cd0 <pop_on>:
    80008cd0:	ff010113          	addi	sp,sp,-16
    80008cd4:	00813023          	sd	s0,0(sp)
    80008cd8:	00113423          	sd	ra,8(sp)
    80008cdc:	01010413          	addi	s0,sp,16
    80008ce0:	ffffe097          	auipc	ra,0xffffe
    80008ce4:	5c0080e7          	jalr	1472(ra) # 800072a0 <mycpu>
    80008ce8:	100027f3          	csrr	a5,sstatus
    80008cec:	0027f793          	andi	a5,a5,2
    80008cf0:	04078463          	beqz	a5,80008d38 <pop_on+0x68>
    80008cf4:	07852783          	lw	a5,120(a0)
    80008cf8:	02f05863          	blez	a5,80008d28 <pop_on+0x58>
    80008cfc:	fff7879b          	addiw	a5,a5,-1
    80008d00:	06f52c23          	sw	a5,120(a0)
    80008d04:	07853783          	ld	a5,120(a0)
    80008d08:	00079863          	bnez	a5,80008d18 <pop_on+0x48>
    80008d0c:	100027f3          	csrr	a5,sstatus
    80008d10:	ffd7f793          	andi	a5,a5,-3
    80008d14:	10079073          	csrw	sstatus,a5
    80008d18:	00813083          	ld	ra,8(sp)
    80008d1c:	00013403          	ld	s0,0(sp)
    80008d20:	01010113          	addi	sp,sp,16
    80008d24:	00008067          	ret
    80008d28:	00002517          	auipc	a0,0x2
    80008d2c:	a6050513          	addi	a0,a0,-1440 # 8000a788 <digits+0x70>
    80008d30:	fffff097          	auipc	ra,0xfffff
    80008d34:	f2c080e7          	jalr	-212(ra) # 80007c5c <panic>
    80008d38:	00002517          	auipc	a0,0x2
    80008d3c:	a3050513          	addi	a0,a0,-1488 # 8000a768 <digits+0x50>
    80008d40:	fffff097          	auipc	ra,0xfffff
    80008d44:	f1c080e7          	jalr	-228(ra) # 80007c5c <panic>

0000000080008d48 <__memset>:
    80008d48:	ff010113          	addi	sp,sp,-16
    80008d4c:	00813423          	sd	s0,8(sp)
    80008d50:	01010413          	addi	s0,sp,16
    80008d54:	1a060e63          	beqz	a2,80008f10 <__memset+0x1c8>
    80008d58:	40a007b3          	neg	a5,a0
    80008d5c:	0077f793          	andi	a5,a5,7
    80008d60:	00778693          	addi	a3,a5,7
    80008d64:	00b00813          	li	a6,11
    80008d68:	0ff5f593          	andi	a1,a1,255
    80008d6c:	fff6071b          	addiw	a4,a2,-1
    80008d70:	1b06e663          	bltu	a3,a6,80008f1c <__memset+0x1d4>
    80008d74:	1cd76463          	bltu	a4,a3,80008f3c <__memset+0x1f4>
    80008d78:	1a078e63          	beqz	a5,80008f34 <__memset+0x1ec>
    80008d7c:	00b50023          	sb	a1,0(a0)
    80008d80:	00100713          	li	a4,1
    80008d84:	1ae78463          	beq	a5,a4,80008f2c <__memset+0x1e4>
    80008d88:	00b500a3          	sb	a1,1(a0)
    80008d8c:	00200713          	li	a4,2
    80008d90:	1ae78a63          	beq	a5,a4,80008f44 <__memset+0x1fc>
    80008d94:	00b50123          	sb	a1,2(a0)
    80008d98:	00300713          	li	a4,3
    80008d9c:	18e78463          	beq	a5,a4,80008f24 <__memset+0x1dc>
    80008da0:	00b501a3          	sb	a1,3(a0)
    80008da4:	00400713          	li	a4,4
    80008da8:	1ae78263          	beq	a5,a4,80008f4c <__memset+0x204>
    80008dac:	00b50223          	sb	a1,4(a0)
    80008db0:	00500713          	li	a4,5
    80008db4:	1ae78063          	beq	a5,a4,80008f54 <__memset+0x20c>
    80008db8:	00b502a3          	sb	a1,5(a0)
    80008dbc:	00700713          	li	a4,7
    80008dc0:	18e79e63          	bne	a5,a4,80008f5c <__memset+0x214>
    80008dc4:	00b50323          	sb	a1,6(a0)
    80008dc8:	00700e93          	li	t4,7
    80008dcc:	00859713          	slli	a4,a1,0x8
    80008dd0:	00e5e733          	or	a4,a1,a4
    80008dd4:	01059e13          	slli	t3,a1,0x10
    80008dd8:	01c76e33          	or	t3,a4,t3
    80008ddc:	01859313          	slli	t1,a1,0x18
    80008de0:	006e6333          	or	t1,t3,t1
    80008de4:	02059893          	slli	a7,a1,0x20
    80008de8:	40f60e3b          	subw	t3,a2,a5
    80008dec:	011368b3          	or	a7,t1,a7
    80008df0:	02859813          	slli	a6,a1,0x28
    80008df4:	0108e833          	or	a6,a7,a6
    80008df8:	03059693          	slli	a3,a1,0x30
    80008dfc:	003e589b          	srliw	a7,t3,0x3
    80008e00:	00d866b3          	or	a3,a6,a3
    80008e04:	03859713          	slli	a4,a1,0x38
    80008e08:	00389813          	slli	a6,a7,0x3
    80008e0c:	00f507b3          	add	a5,a0,a5
    80008e10:	00e6e733          	or	a4,a3,a4
    80008e14:	000e089b          	sext.w	a7,t3
    80008e18:	00f806b3          	add	a3,a6,a5
    80008e1c:	00e7b023          	sd	a4,0(a5)
    80008e20:	00878793          	addi	a5,a5,8
    80008e24:	fed79ce3          	bne	a5,a3,80008e1c <__memset+0xd4>
    80008e28:	ff8e7793          	andi	a5,t3,-8
    80008e2c:	0007871b          	sext.w	a4,a5
    80008e30:	01d787bb          	addw	a5,a5,t4
    80008e34:	0ce88e63          	beq	a7,a4,80008f10 <__memset+0x1c8>
    80008e38:	00f50733          	add	a4,a0,a5
    80008e3c:	00b70023          	sb	a1,0(a4)
    80008e40:	0017871b          	addiw	a4,a5,1
    80008e44:	0cc77663          	bgeu	a4,a2,80008f10 <__memset+0x1c8>
    80008e48:	00e50733          	add	a4,a0,a4
    80008e4c:	00b70023          	sb	a1,0(a4)
    80008e50:	0027871b          	addiw	a4,a5,2
    80008e54:	0ac77e63          	bgeu	a4,a2,80008f10 <__memset+0x1c8>
    80008e58:	00e50733          	add	a4,a0,a4
    80008e5c:	00b70023          	sb	a1,0(a4)
    80008e60:	0037871b          	addiw	a4,a5,3
    80008e64:	0ac77663          	bgeu	a4,a2,80008f10 <__memset+0x1c8>
    80008e68:	00e50733          	add	a4,a0,a4
    80008e6c:	00b70023          	sb	a1,0(a4)
    80008e70:	0047871b          	addiw	a4,a5,4
    80008e74:	08c77e63          	bgeu	a4,a2,80008f10 <__memset+0x1c8>
    80008e78:	00e50733          	add	a4,a0,a4
    80008e7c:	00b70023          	sb	a1,0(a4)
    80008e80:	0057871b          	addiw	a4,a5,5
    80008e84:	08c77663          	bgeu	a4,a2,80008f10 <__memset+0x1c8>
    80008e88:	00e50733          	add	a4,a0,a4
    80008e8c:	00b70023          	sb	a1,0(a4)
    80008e90:	0067871b          	addiw	a4,a5,6
    80008e94:	06c77e63          	bgeu	a4,a2,80008f10 <__memset+0x1c8>
    80008e98:	00e50733          	add	a4,a0,a4
    80008e9c:	00b70023          	sb	a1,0(a4)
    80008ea0:	0077871b          	addiw	a4,a5,7
    80008ea4:	06c77663          	bgeu	a4,a2,80008f10 <__memset+0x1c8>
    80008ea8:	00e50733          	add	a4,a0,a4
    80008eac:	00b70023          	sb	a1,0(a4)
    80008eb0:	0087871b          	addiw	a4,a5,8
    80008eb4:	04c77e63          	bgeu	a4,a2,80008f10 <__memset+0x1c8>
    80008eb8:	00e50733          	add	a4,a0,a4
    80008ebc:	00b70023          	sb	a1,0(a4)
    80008ec0:	0097871b          	addiw	a4,a5,9
    80008ec4:	04c77663          	bgeu	a4,a2,80008f10 <__memset+0x1c8>
    80008ec8:	00e50733          	add	a4,a0,a4
    80008ecc:	00b70023          	sb	a1,0(a4)
    80008ed0:	00a7871b          	addiw	a4,a5,10
    80008ed4:	02c77e63          	bgeu	a4,a2,80008f10 <__memset+0x1c8>
    80008ed8:	00e50733          	add	a4,a0,a4
    80008edc:	00b70023          	sb	a1,0(a4)
    80008ee0:	00b7871b          	addiw	a4,a5,11
    80008ee4:	02c77663          	bgeu	a4,a2,80008f10 <__memset+0x1c8>
    80008ee8:	00e50733          	add	a4,a0,a4
    80008eec:	00b70023          	sb	a1,0(a4)
    80008ef0:	00c7871b          	addiw	a4,a5,12
    80008ef4:	00c77e63          	bgeu	a4,a2,80008f10 <__memset+0x1c8>
    80008ef8:	00e50733          	add	a4,a0,a4
    80008efc:	00b70023          	sb	a1,0(a4)
    80008f00:	00d7879b          	addiw	a5,a5,13
    80008f04:	00c7f663          	bgeu	a5,a2,80008f10 <__memset+0x1c8>
    80008f08:	00f507b3          	add	a5,a0,a5
    80008f0c:	00b78023          	sb	a1,0(a5)
    80008f10:	00813403          	ld	s0,8(sp)
    80008f14:	01010113          	addi	sp,sp,16
    80008f18:	00008067          	ret
    80008f1c:	00b00693          	li	a3,11
    80008f20:	e55ff06f          	j	80008d74 <__memset+0x2c>
    80008f24:	00300e93          	li	t4,3
    80008f28:	ea5ff06f          	j	80008dcc <__memset+0x84>
    80008f2c:	00100e93          	li	t4,1
    80008f30:	e9dff06f          	j	80008dcc <__memset+0x84>
    80008f34:	00000e93          	li	t4,0
    80008f38:	e95ff06f          	j	80008dcc <__memset+0x84>
    80008f3c:	00000793          	li	a5,0
    80008f40:	ef9ff06f          	j	80008e38 <__memset+0xf0>
    80008f44:	00200e93          	li	t4,2
    80008f48:	e85ff06f          	j	80008dcc <__memset+0x84>
    80008f4c:	00400e93          	li	t4,4
    80008f50:	e7dff06f          	j	80008dcc <__memset+0x84>
    80008f54:	00500e93          	li	t4,5
    80008f58:	e75ff06f          	j	80008dcc <__memset+0x84>
    80008f5c:	00600e93          	li	t4,6
    80008f60:	e6dff06f          	j	80008dcc <__memset+0x84>

0000000080008f64 <__memmove>:
    80008f64:	ff010113          	addi	sp,sp,-16
    80008f68:	00813423          	sd	s0,8(sp)
    80008f6c:	01010413          	addi	s0,sp,16
    80008f70:	0e060863          	beqz	a2,80009060 <__memmove+0xfc>
    80008f74:	fff6069b          	addiw	a3,a2,-1
    80008f78:	0006881b          	sext.w	a6,a3
    80008f7c:	0ea5e863          	bltu	a1,a0,8000906c <__memmove+0x108>
    80008f80:	00758713          	addi	a4,a1,7
    80008f84:	00a5e7b3          	or	a5,a1,a0
    80008f88:	40a70733          	sub	a4,a4,a0
    80008f8c:	0077f793          	andi	a5,a5,7
    80008f90:	00f73713          	sltiu	a4,a4,15
    80008f94:	00174713          	xori	a4,a4,1
    80008f98:	0017b793          	seqz	a5,a5
    80008f9c:	00e7f7b3          	and	a5,a5,a4
    80008fa0:	10078863          	beqz	a5,800090b0 <__memmove+0x14c>
    80008fa4:	00900793          	li	a5,9
    80008fa8:	1107f463          	bgeu	a5,a6,800090b0 <__memmove+0x14c>
    80008fac:	0036581b          	srliw	a6,a2,0x3
    80008fb0:	fff8081b          	addiw	a6,a6,-1
    80008fb4:	02081813          	slli	a6,a6,0x20
    80008fb8:	01d85893          	srli	a7,a6,0x1d
    80008fbc:	00858813          	addi	a6,a1,8
    80008fc0:	00058793          	mv	a5,a1
    80008fc4:	00050713          	mv	a4,a0
    80008fc8:	01088833          	add	a6,a7,a6
    80008fcc:	0007b883          	ld	a7,0(a5)
    80008fd0:	00878793          	addi	a5,a5,8
    80008fd4:	00870713          	addi	a4,a4,8
    80008fd8:	ff173c23          	sd	a7,-8(a4)
    80008fdc:	ff0798e3          	bne	a5,a6,80008fcc <__memmove+0x68>
    80008fe0:	ff867713          	andi	a4,a2,-8
    80008fe4:	02071793          	slli	a5,a4,0x20
    80008fe8:	0207d793          	srli	a5,a5,0x20
    80008fec:	00f585b3          	add	a1,a1,a5
    80008ff0:	40e686bb          	subw	a3,a3,a4
    80008ff4:	00f507b3          	add	a5,a0,a5
    80008ff8:	06e60463          	beq	a2,a4,80009060 <__memmove+0xfc>
    80008ffc:	0005c703          	lbu	a4,0(a1)
    80009000:	00e78023          	sb	a4,0(a5)
    80009004:	04068e63          	beqz	a3,80009060 <__memmove+0xfc>
    80009008:	0015c603          	lbu	a2,1(a1)
    8000900c:	00100713          	li	a4,1
    80009010:	00c780a3          	sb	a2,1(a5)
    80009014:	04e68663          	beq	a3,a4,80009060 <__memmove+0xfc>
    80009018:	0025c603          	lbu	a2,2(a1)
    8000901c:	00200713          	li	a4,2
    80009020:	00c78123          	sb	a2,2(a5)
    80009024:	02e68e63          	beq	a3,a4,80009060 <__memmove+0xfc>
    80009028:	0035c603          	lbu	a2,3(a1)
    8000902c:	00300713          	li	a4,3
    80009030:	00c781a3          	sb	a2,3(a5)
    80009034:	02e68663          	beq	a3,a4,80009060 <__memmove+0xfc>
    80009038:	0045c603          	lbu	a2,4(a1)
    8000903c:	00400713          	li	a4,4
    80009040:	00c78223          	sb	a2,4(a5)
    80009044:	00e68e63          	beq	a3,a4,80009060 <__memmove+0xfc>
    80009048:	0055c603          	lbu	a2,5(a1)
    8000904c:	00500713          	li	a4,5
    80009050:	00c782a3          	sb	a2,5(a5)
    80009054:	00e68663          	beq	a3,a4,80009060 <__memmove+0xfc>
    80009058:	0065c703          	lbu	a4,6(a1)
    8000905c:	00e78323          	sb	a4,6(a5)
    80009060:	00813403          	ld	s0,8(sp)
    80009064:	01010113          	addi	sp,sp,16
    80009068:	00008067          	ret
    8000906c:	02061713          	slli	a4,a2,0x20
    80009070:	02075713          	srli	a4,a4,0x20
    80009074:	00e587b3          	add	a5,a1,a4
    80009078:	f0f574e3          	bgeu	a0,a5,80008f80 <__memmove+0x1c>
    8000907c:	02069613          	slli	a2,a3,0x20
    80009080:	02065613          	srli	a2,a2,0x20
    80009084:	fff64613          	not	a2,a2
    80009088:	00e50733          	add	a4,a0,a4
    8000908c:	00c78633          	add	a2,a5,a2
    80009090:	fff7c683          	lbu	a3,-1(a5)
    80009094:	fff78793          	addi	a5,a5,-1
    80009098:	fff70713          	addi	a4,a4,-1
    8000909c:	00d70023          	sb	a3,0(a4)
    800090a0:	fec798e3          	bne	a5,a2,80009090 <__memmove+0x12c>
    800090a4:	00813403          	ld	s0,8(sp)
    800090a8:	01010113          	addi	sp,sp,16
    800090ac:	00008067          	ret
    800090b0:	02069713          	slli	a4,a3,0x20
    800090b4:	02075713          	srli	a4,a4,0x20
    800090b8:	00170713          	addi	a4,a4,1
    800090bc:	00e50733          	add	a4,a0,a4
    800090c0:	00050793          	mv	a5,a0
    800090c4:	0005c683          	lbu	a3,0(a1)
    800090c8:	00178793          	addi	a5,a5,1
    800090cc:	00158593          	addi	a1,a1,1
    800090d0:	fed78fa3          	sb	a3,-1(a5)
    800090d4:	fee798e3          	bne	a5,a4,800090c4 <__memmove+0x160>
    800090d8:	f89ff06f          	j	80009060 <__memmove+0xfc>
	...
