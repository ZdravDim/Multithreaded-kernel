
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	b0013103          	ld	sp,-1280(sp) # 8000bb00 <_GLOBAL_OFFSET_TABLE_+0x38>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	259060ef          	jal	ra,80006a74 <start>

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
    80001080:	301010ef          	jal	ra,80002b80 <_ZN5RiscV22handle_supervisor_trapEv>

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
    80001270:	430080e7          	jalr	1072(ra) # 8000269c <_ZN15MemoryAllocator20get_number_of_blocksEm>
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
    syscall(PUTC, c);
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

void Sem::close() {
    closed = true;
}

Sem::~Sem() {
    800016a8:	ff010113          	addi	sp,sp,-16
    800016ac:	00113423          	sd	ra,8(sp)
    800016b0:	00813023          	sd	s0,0(sp)
    800016b4:	01010413          	addi	s0,sp,16
    800016b8:	0000a797          	auipc	a5,0xa
    800016bc:	1d878793          	addi	a5,a5,472 # 8000b890 <_ZTV3Sem+0x10>
    800016c0:	00f53023          	sd	a5,0(a0) # 1000 <_entry-0x7ffff000>
    blocked_threads.free();
    800016c4:	00850513          	addi	a0,a0,8
    800016c8:	00002097          	auipc	ra,0x2
    800016cc:	8b8080e7          	jalr	-1864(ra) # 80002f80 <_ZN10ThreadList4freeEv>
}
    800016d0:	00813083          	ld	ra,8(sp)
    800016d4:	00013403          	ld	s0,0(sp)
    800016d8:	01010113          	addi	sp,sp,16
    800016dc:	00008067          	ret

00000000800016e0 <_ZN3SemD0Ev>:
Sem::~Sem() {
    800016e0:	fe010113          	addi	sp,sp,-32
    800016e4:	00113c23          	sd	ra,24(sp)
    800016e8:	00813823          	sd	s0,16(sp)
    800016ec:	00913423          	sd	s1,8(sp)
    800016f0:	02010413          	addi	s0,sp,32
    800016f4:	00050493          	mv	s1,a0
}
    800016f8:	00000097          	auipc	ra,0x0
    800016fc:	fb0080e7          	jalr	-80(ra) # 800016a8 <_ZN3SemD1Ev>
    80001700:	00048513          	mv	a0,s1
    80001704:	00000097          	auipc	ra,0x0
    80001708:	78c080e7          	jalr	1932(ra) # 80001e90 <_ZdlPv>
    8000170c:	01813083          	ld	ra,24(sp)
    80001710:	01013403          	ld	s0,16(sp)
    80001714:	00813483          	ld	s1,8(sp)
    80001718:	02010113          	addi	sp,sp,32
    8000171c:	00008067          	ret

0000000080001720 <_ZN3Sem4openEPPS_j>:
int Sem::open(Sem **handle, unsigned int init) {
    80001720:	fe010113          	addi	sp,sp,-32
    80001724:	00113c23          	sd	ra,24(sp)
    80001728:	00813823          	sd	s0,16(sp)
    8000172c:	00913423          	sd	s1,8(sp)
    80001730:	01213023          	sd	s2,0(sp)
    80001734:	02010413          	addi	s0,sp,32
    80001738:	00050493          	mv	s1,a0
    8000173c:	00058913          	mv	s2,a1
    *handle = new Sem(init);
    80001740:	02000513          	li	a0,32
    80001744:	00000097          	auipc	ra,0x0
    80001748:	724080e7          	jalr	1828(ra) # 80001e68 <_Znwm>
    int tryWait();
    void block();
    void unblock();

private:
    explicit Sem(unsigned init = 1) : value((int) init), closed(false) {}
    8000174c:	0000a797          	auipc	a5,0xa
    80001750:	14478793          	addi	a5,a5,324 # 8000b890 <_ZTV3Sem+0x10>
    80001754:	00f53023          	sd	a5,0(a0)
#ifndef thread_list
#define thread_list

#include "thread.hpp"

class ThreadList {
    80001758:	00053423          	sd	zero,8(a0)
    8000175c:	00053823          	sd	zero,16(a0)
    80001760:	01252c23          	sw	s2,24(a0)
    80001764:	00050e23          	sb	zero,28(a0)
    80001768:	00a4b023          	sd	a0,0(s1)
    if (!(*handle)) return -1;
    8000176c:	02050063          	beqz	a0,8000178c <_ZN3Sem4openEPPS_j+0x6c>
    return 0;
    80001770:	00000513          	li	a0,0
}
    80001774:	01813083          	ld	ra,24(sp)
    80001778:	01013403          	ld	s0,16(sp)
    8000177c:	00813483          	ld	s1,8(sp)
    80001780:	00013903          	ld	s2,0(sp)
    80001784:	02010113          	addi	sp,sp,32
    80001788:	00008067          	ret
    if (!(*handle)) return -1;
    8000178c:	fff00513          	li	a0,-1
    80001790:	fe5ff06f          	j	80001774 <_ZN3Sem4openEPPS_j+0x54>

0000000080001794 <_ZN3Sem5closeEv>:
void Sem::close() {
    80001794:	ff010113          	addi	sp,sp,-16
    80001798:	00813423          	sd	s0,8(sp)
    8000179c:	01010413          	addi	s0,sp,16
    closed = true;
    800017a0:	00100793          	li	a5,1
    800017a4:	00f50e23          	sb	a5,28(a0)
}
    800017a8:	00813403          	ld	s0,8(sp)
    800017ac:	01010113          	addi	sp,sp,16
    800017b0:	00008067          	ret

00000000800017b4 <_ZN3Sem5blockEv>:
    if (closed) return -1;
    if (++value <= 0) unblock();
    return 0;
}

void Sem::block() {
    800017b4:	fe010113          	addi	sp,sp,-32
    800017b8:	00113c23          	sd	ra,24(sp)
    800017bc:	00813823          	sd	s0,16(sp)
    800017c0:	00913423          	sd	s1,8(sp)
    800017c4:	01213023          	sd	s2,0(sp)
    800017c8:	02010413          	addi	s0,sp,32
    TCB* old = TCB::running;
    800017cc:	0000a917          	auipc	s2,0xa
    800017d0:	34c93903          	ld	s2,844(s2) # 8000bb18 <_GLOBAL_OFFSET_TABLE_+0x50>
    800017d4:	00093483          	ld	s1,0(s2)
    blocked_threads.push_back(old);
    800017d8:	00048593          	mv	a1,s1
    800017dc:	00850513          	addi	a0,a0,8
    800017e0:	00001097          	auipc	ra,0x1
    800017e4:	6b8080e7          	jalr	1720(ra) # 80002e98 <_ZN10ThreadList9push_backEP3TCB>
    TCB::running = Scheduler::get();
    800017e8:	00001097          	auipc	ra,0x1
    800017ec:	104080e7          	jalr	260(ra) # 800028ec <_ZN9Scheduler3getEv>
    800017f0:	00050593          	mv	a1,a0
    800017f4:	00a93023          	sd	a0,0(s2)
    TCB::yield(old, TCB::running);
    800017f8:	00048513          	mv	a0,s1
    800017fc:	00002097          	auipc	ra,0x2
    80001800:	864080e7          	jalr	-1948(ra) # 80003060 <_ZN3TCB5yieldEPS_S0_>
}
    80001804:	01813083          	ld	ra,24(sp)
    80001808:	01013403          	ld	s0,16(sp)
    8000180c:	00813483          	ld	s1,8(sp)
    80001810:	00013903          	ld	s2,0(sp)
    80001814:	02010113          	addi	sp,sp,32
    80001818:	00008067          	ret

000000008000181c <_ZN3Sem4waitEv>:
    if (closed) return -1;
    8000181c:	01c54783          	lbu	a5,28(a0)
    80001820:	06079063          	bnez	a5,80001880 <_ZN3Sem4waitEv+0x64>
int Sem::wait() {
    80001824:	fe010113          	addi	sp,sp,-32
    80001828:	00113c23          	sd	ra,24(sp)
    8000182c:	00813823          	sd	s0,16(sp)
    80001830:	00913423          	sd	s1,8(sp)
    80001834:	02010413          	addi	s0,sp,32
    80001838:	00050493          	mv	s1,a0
    if (--value < 0) {
    8000183c:	01852783          	lw	a5,24(a0)
    80001840:	fff7879b          	addiw	a5,a5,-1
    80001844:	00f52c23          	sw	a5,24(a0)
    80001848:	02079713          	slli	a4,a5,0x20
    8000184c:	00074e63          	bltz	a4,80001868 <_ZN3Sem4waitEv+0x4c>
    return 0;
    80001850:	00000513          	li	a0,0
}
    80001854:	01813083          	ld	ra,24(sp)
    80001858:	01013403          	ld	s0,16(sp)
    8000185c:	00813483          	ld	s1,8(sp)
    80001860:	02010113          	addi	sp,sp,32
    80001864:	00008067          	ret
        block();
    80001868:	00000097          	auipc	ra,0x0
    8000186c:	f4c080e7          	jalr	-180(ra) # 800017b4 <_ZN3Sem5blockEv>
        if (closed) return -2; /// thread released because Semaphore is closed
    80001870:	01c4c783          	lbu	a5,28(s1)
    80001874:	00079a63          	bnez	a5,80001888 <_ZN3Sem4waitEv+0x6c>
    return 0;
    80001878:	00000513          	li	a0,0
    8000187c:	fd9ff06f          	j	80001854 <_ZN3Sem4waitEv+0x38>
    if (closed) return -1;
    80001880:	fff00513          	li	a0,-1
}
    80001884:	00008067          	ret
        if (closed) return -2; /// thread released because Semaphore is closed
    80001888:	ffe00513          	li	a0,-2
    8000188c:	fc9ff06f          	j	80001854 <_ZN3Sem4waitEv+0x38>

0000000080001890 <_ZN3Sem7unblockEv>:

void Sem::unblock() {
    80001890:	ff010113          	addi	sp,sp,-16
    80001894:	00113423          	sd	ra,8(sp)
    80001898:	00813023          	sd	s0,0(sp)
    8000189c:	01010413          	addi	s0,sp,16
    TCB* thread = blocked_threads.get_first();
    800018a0:	00850513          	addi	a0,a0,8
    800018a4:	00001097          	auipc	ra,0x1
    800018a8:	5a0080e7          	jalr	1440(ra) # 80002e44 <_ZN10ThreadList9get_firstEv>
    Scheduler::put(thread);
    800018ac:	00001097          	auipc	ra,0x1
    800018b0:	fe0080e7          	jalr	-32(ra) # 8000288c <_ZN9Scheduler3putEP3TCB>
}
    800018b4:	00813083          	ld	ra,8(sp)
    800018b8:	00013403          	ld	s0,0(sp)
    800018bc:	01010113          	addi	sp,sp,16
    800018c0:	00008067          	ret

00000000800018c4 <_ZN3Sem6signalEv>:
    if (closed) return -1;
    800018c4:	01c54783          	lbu	a5,28(a0)
    800018c8:	04079663          	bnez	a5,80001914 <_ZN3Sem6signalEv+0x50>
    if (++value <= 0) unblock();
    800018cc:	01852783          	lw	a5,24(a0)
    800018d0:	0017879b          	addiw	a5,a5,1
    800018d4:	0007871b          	sext.w	a4,a5
    800018d8:	00f52c23          	sw	a5,24(a0)
    800018dc:	00e05663          	blez	a4,800018e8 <_ZN3Sem6signalEv+0x24>
    return 0;
    800018e0:	00000513          	li	a0,0
}
    800018e4:	00008067          	ret
int Sem::signal() {
    800018e8:	ff010113          	addi	sp,sp,-16
    800018ec:	00113423          	sd	ra,8(sp)
    800018f0:	00813023          	sd	s0,0(sp)
    800018f4:	01010413          	addi	s0,sp,16
    if (++value <= 0) unblock();
    800018f8:	00000097          	auipc	ra,0x0
    800018fc:	f98080e7          	jalr	-104(ra) # 80001890 <_ZN3Sem7unblockEv>
    return 0;
    80001900:	00000513          	li	a0,0
}
    80001904:	00813083          	ld	ra,8(sp)
    80001908:	00013403          	ld	s0,0(sp)
    8000190c:	01010113          	addi	sp,sp,16
    80001910:	00008067          	ret
    if (closed) return -1;
    80001914:	fff00513          	li	a0,-1
    80001918:	00008067          	ret

000000008000191c <_ZN3Sem9timedWaitEm>:

int Sem::timedWait(time_t time) {
    8000191c:	ff010113          	addi	sp,sp,-16
    80001920:	00813423          	sd	s0,8(sp)
    80001924:	01010413          	addi	s0,sp,16
    return 0;
}
    80001928:	00000513          	li	a0,0
    8000192c:	00813403          	ld	s0,8(sp)
    80001930:	01010113          	addi	sp,sp,16
    80001934:	00008067          	ret

0000000080001938 <_ZN3Sem7tryWaitEv>:

int Sem::tryWait() {
    80001938:	ff010113          	addi	sp,sp,-16
    8000193c:	00813423          	sd	s0,8(sp)
    80001940:	01010413          	addi	s0,sp,16
    return 0;
}
    80001944:	00000513          	li	a0,0
    80001948:	00813403          	ld	s0,8(sp)
    8000194c:	01010113          	addi	sp,sp,16
    80001950:	00008067          	ret

0000000080001954 <_Z13workerForeverPv>:
            *(char *) CONSOLE_TX_DATA = c;
        }
    }
}

void workerForever(void *args) {
    80001954:	ff010113          	addi	sp,sp,-16
    80001958:	00813423          	sd	s0,8(sp)
    8000195c:	01010413          	addi	s0,sp,16
    while (1);
    80001960:	0000006f          	j	80001960 <_Z13workerForeverPv+0xc>

0000000080001964 <_Z19kernelConsoleOutputPv>:
        while (*(char *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT) {
    80001964:	0000a797          	auipc	a5,0xa
    80001968:	1747b783          	ld	a5,372(a5) # 8000bad8 <_GLOBAL_OFFSET_TABLE_+0x10>
    8000196c:	0007b783          	ld	a5,0(a5)
    80001970:	0007c783          	lbu	a5,0(a5)
    80001974:	0207f793          	andi	a5,a5,32
    80001978:	fe0786e3          	beqz	a5,80001964 <_Z19kernelConsoleOutputPv>
void kernelConsoleOutput(void *args) {
    8000197c:	ff010113          	addi	sp,sp,-16
    80001980:	00113423          	sd	ra,8(sp)
    80001984:	00813023          	sd	s0,0(sp)
    80001988:	01010413          	addi	s0,sp,16
            char c = Con::getc_output();
    8000198c:	00000097          	auipc	ra,0x0
    80001990:	3b0080e7          	jalr	944(ra) # 80001d3c <_ZN3Con11getc_outputEv>
            *(char *) CONSOLE_TX_DATA = c;
    80001994:	0000a797          	auipc	a5,0xa
    80001998:	15c7b783          	ld	a5,348(a5) # 8000baf0 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000199c:	0007b783          	ld	a5,0(a5)
    800019a0:	00a78023          	sb	a0,0(a5)
        while (*(char *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT) {
    800019a4:	0000a797          	auipc	a5,0xa
    800019a8:	1347b783          	ld	a5,308(a5) # 8000bad8 <_GLOBAL_OFFSET_TABLE_+0x10>
    800019ac:	0007b783          	ld	a5,0(a5)
    800019b0:	0007c783          	lbu	a5,0(a5)
    800019b4:	0207f793          	andi	a5,a5,32
    800019b8:	fe0786e3          	beqz	a5,800019a4 <_Z19kernelConsoleOutputPv+0x40>
    800019bc:	fd1ff06f          	j	8000198c <_Z19kernelConsoleOutputPv+0x28>

00000000800019c0 <_Z7workerAPv>:
}
void workerA(void *args) {
    800019c0:	ff010113          	addi	sp,sp,-16
    800019c4:	00113423          	sd	ra,8(sp)
    800019c8:	00813023          	sd	s0,0(sp)
    800019cc:	01010413          	addi	s0,sp,16
    while (1) {
        time_sleep(4);
    800019d0:	00400513          	li	a0,4
    800019d4:	00000097          	auipc	ra,0x0
    800019d8:	c00080e7          	jalr	-1024(ra) # 800015d4 <_Z10time_sleepm>
        __putc('A');
    800019dc:	04100513          	li	a0,65
    800019e0:	00007097          	auipc	ra,0x7
    800019e4:	15c080e7          	jalr	348(ra) # 80008b3c <__putc>
    while (1) {
    800019e8:	fe9ff06f          	j	800019d0 <_Z7workerAPv+0x10>

00000000800019ec <_Z7workerBPv>:
    }
}
void workerB(void *args) {
    800019ec:	ff010113          	addi	sp,sp,-16
    800019f0:	00113423          	sd	ra,8(sp)
    800019f4:	00813023          	sd	s0,0(sp)
    800019f8:	01010413          	addi	s0,sp,16
    while (1) {
        time_sleep(5);
    800019fc:	00500513          	li	a0,5
    80001a00:	00000097          	auipc	ra,0x0
    80001a04:	bd4080e7          	jalr	-1068(ra) # 800015d4 <_Z10time_sleepm>
        __putc('B');
    80001a08:	04200513          	li	a0,66
    80001a0c:	00007097          	auipc	ra,0x7
    80001a10:	130080e7          	jalr	304(ra) # 80008b3c <__putc>
    while (1) {
    80001a14:	fe9ff06f          	j	800019fc <_Z7workerBPv+0x10>

0000000080001a18 <_Z13workerConsolePv>:
    }
}
void workerConsole(void *args) {
    80001a18:	ff010113          	addi	sp,sp,-16
    80001a1c:	00113423          	sd	ra,8(sp)
    80001a20:	00813023          	sd	s0,0(sp)
    80001a24:	01010413          	addi	s0,sp,16
    char c = getc();
    80001a28:	00000097          	auipc	ra,0x0
    80001a2c:	bf8080e7          	jalr	-1032(ra) # 80001620 <_Z4getcv>
    putc(c);
    80001a30:	00000097          	auipc	ra,0x0
    80001a34:	c3c080e7          	jalr	-964(ra) # 8000166c <_Z4putcc>
}
    80001a38:	00813083          	ld	ra,8(sp)
    80001a3c:	00013403          	ld	s0,0(sp)
    80001a40:	01010113          	addi	sp,sp,16
    80001a44:	00008067          	ret

0000000080001a48 <_Z11printNumberm>:
void printNumber(uint64 num) {
    80001a48:	fd010113          	addi	sp,sp,-48
    80001a4c:	02113423          	sd	ra,40(sp)
    80001a50:	02813023          	sd	s0,32(sp)
    80001a54:	00913c23          	sd	s1,24(sp)
    80001a58:	01213823          	sd	s2,16(sp)
    80001a5c:	01313423          	sd	s3,8(sp)
    80001a60:	03010413          	addi	s0,sp,48
    80001a64:	00050913          	mv	s2,a0
    __putc('\n');
    80001a68:	00a00513          	li	a0,10
    80001a6c:	00007097          	auipc	ra,0x7
    80001a70:	0d0080e7          	jalr	208(ra) # 80008b3c <__putc>
    __putc('N');
    80001a74:	04e00513          	li	a0,78
    80001a78:	00007097          	auipc	ra,0x7
    80001a7c:	0c4080e7          	jalr	196(ra) # 80008b3c <__putc>
    __putc(':');
    80001a80:	03a00513          	li	a0,58
    80001a84:	00007097          	auipc	ra,0x7
    80001a88:	0b8080e7          	jalr	184(ra) # 80008b3c <__putc>
    __putc(' ');
    80001a8c:	02000513          	li	a0,32
    80001a90:	00007097          	auipc	ra,0x7
    80001a94:	0ac080e7          	jalr	172(ra) # 80008b3c <__putc>
    if (!num) __putc('0');
    80001a98:	00090863          	beqz	s2,80001aa8 <_Z11printNumberm+0x60>
    uint64 num2 = 0, zero_count = 0;
    80001a9c:	00000993          	li	s3,0
    80001aa0:	00000493          	li	s1,0
    80001aa4:	01c0006f          	j	80001ac0 <_Z11printNumberm+0x78>
    if (!num) __putc('0');
    80001aa8:	03000513          	li	a0,48
    80001aac:	00007097          	auipc	ra,0x7
    80001ab0:	090080e7          	jalr	144(ra) # 80008b3c <__putc>
    80001ab4:	fe9ff06f          	j	80001a9c <_Z11printNumberm+0x54>
        num /= 10;
    80001ab8:	00a00793          	li	a5,10
    80001abc:	02f95933          	divu	s2,s2,a5
    while (num) {
    80001ac0:	02090463          	beqz	s2,80001ae8 <_Z11printNumberm+0xa0>
        num2 *= 10;
    80001ac4:	00249793          	slli	a5,s1,0x2
    80001ac8:	009784b3          	add	s1,a5,s1
    80001acc:	00149793          	slli	a5,s1,0x1
        num2 += num % 10;
    80001ad0:	00a00493          	li	s1,10
    80001ad4:	029974b3          	remu	s1,s2,s1
    80001ad8:	00f484b3          	add	s1,s1,a5
        if (!num2) ++zero_count;
    80001adc:	fc049ee3          	bnez	s1,80001ab8 <_Z11printNumberm+0x70>
    80001ae0:	00198993          	addi	s3,s3,1
    80001ae4:	fd5ff06f          	j	80001ab8 <_Z11printNumberm+0x70>
    while (num2) {
    80001ae8:	02048063          	beqz	s1,80001b08 <_Z11printNumberm+0xc0>
        __putc(num2 % 10 + '0');
    80001aec:	00a00913          	li	s2,10
    80001af0:	0324f533          	remu	a0,s1,s2
    80001af4:	03050513          	addi	a0,a0,48
    80001af8:	00007097          	auipc	ra,0x7
    80001afc:	044080e7          	jalr	68(ra) # 80008b3c <__putc>
        num2 /= 10;
    80001b00:	0324d4b3          	divu	s1,s1,s2
    while (num2) {
    80001b04:	fe5ff06f          	j	80001ae8 <_Z11printNumberm+0xa0>
    while (zero_count--) __putc('0');
    80001b08:	fff98493          	addi	s1,s3,-1
    80001b0c:	00098c63          	beqz	s3,80001b24 <_Z11printNumberm+0xdc>
    80001b10:	03000513          	li	a0,48
    80001b14:	00007097          	auipc	ra,0x7
    80001b18:	028080e7          	jalr	40(ra) # 80008b3c <__putc>
    80001b1c:	00048993          	mv	s3,s1
    80001b20:	fe9ff06f          	j	80001b08 <_Z11printNumberm+0xc0>
}
    80001b24:	02813083          	ld	ra,40(sp)
    80001b28:	02013403          	ld	s0,32(sp)
    80001b2c:	01813483          	ld	s1,24(sp)
    80001b30:	01013903          	ld	s2,16(sp)
    80001b34:	00813983          	ld	s3,8(sp)
    80001b38:	03010113          	addi	sp,sp,48
    80001b3c:	00008067          	ret

0000000080001b40 <_Z15userMainWrapperPv>:

void userMain();
void userMainWrapper(void *args) {
    80001b40:	ff010113          	addi	sp,sp,-16
    80001b44:	00113423          	sd	ra,8(sp)
    80001b48:	00813023          	sd	s0,0(sp)
    80001b4c:	01010413          	addi	s0,sp,16
    userMain();
    80001b50:	00004097          	auipc	ra,0x4
    80001b54:	738080e7          	jalr	1848(ra) # 80006288 <_Z8userMainv>
}
    80001b58:	00813083          	ld	ra,8(sp)
    80001b5c:	00013403          	ld	s0,0(sp)
    80001b60:	01010113          	addi	sp,sp,16
    80001b64:	00008067          	ret

0000000080001b68 <main>:

int main() {
    80001b68:	fc010113          	addi	sp,sp,-64
    80001b6c:	02113c23          	sd	ra,56(sp)
    80001b70:	02813823          	sd	s0,48(sp)
    80001b74:	04010413          	addi	s0,sp,64
    /// Set interrupt routine handler
    RiscV::write_stvec((uint64) &RiscV::handle_interrupt);
    80001b78:	0000a797          	auipc	a5,0xa
    80001b7c:	f807b783          	ld	a5,-128(a5) # 8000baf8 <_GLOBAL_OFFSET_TABLE_+0x30>
    __asm__ volatile ("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void RiscV::write_stvec(uint64 val) {
    __asm__ volatile ("csrw stvec, %0" : : "r"(val));
    80001b80:	10579073          	csrw	stvec,a5
    /// Initialization
    MemoryAllocator::initialize();
    80001b84:	00001097          	auipc	ra,0x1
    80001b88:	838080e7          	jalr	-1992(ra) # 800023bc <_ZN15MemoryAllocator10initializeEv>
    Con::initialize();
    80001b8c:	00000097          	auipc	ra,0x0
    80001b90:	0b8080e7          	jalr	184(ra) # 80001c44 <_ZN3Con10initializeEv>

    thread_t threads[6];

    thread_create(&threads[0], nullptr, nullptr);
    80001b94:	00000613          	li	a2,0
    80001b98:	00000593          	li	a1,0
    80001b9c:	fc040513          	addi	a0,s0,-64
    80001ba0:	fffff097          	auipc	ra,0xfffff
    80001ba4:	758080e7          	jalr	1880(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running = threads[0];
    80001ba8:	fc043703          	ld	a4,-64(s0)
    80001bac:	0000a797          	auipc	a5,0xa
    80001bb0:	f6c7b783          	ld	a5,-148(a5) # 8000bb18 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001bb4:	00e7b023          	sd	a4,0(a5)
inline void RiscV::write_sip(uint64 val) {
    __asm__ volatile ("csrw sip, %0" : : "r"(val));
}

inline void RiscV::ms_sstatus(uint64 mask) {
    __asm__ volatile ("csrs sstatus, %0" : : "r"(mask));
    80001bb8:	00200793          	li	a5,2
    80001bbc:	1007a073          	csrs	sstatus,a5

    /// Enable software interrupts
    RiscV::ms_sstatus(RiscV::SSTATUS_SIE);

    thread_create(&threads[1], kernelConsoleOutput, nullptr); /// this gets blocked immediately
    80001bc0:	00000613          	li	a2,0
    80001bc4:	00000597          	auipc	a1,0x0
    80001bc8:	da058593          	addi	a1,a1,-608 # 80001964 <_Z19kernelConsoleOutputPv>
    80001bcc:	fc840513          	addi	a0,s0,-56
    80001bd0:	fffff097          	auipc	ra,0xfffff
    80001bd4:	728080e7          	jalr	1832(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&threads[2], workerA, nullptr);
    80001bd8:	00000613          	li	a2,0
    80001bdc:	00000597          	auipc	a1,0x0
    80001be0:	de458593          	addi	a1,a1,-540 # 800019c0 <_Z7workerAPv>
    80001be4:	fd040513          	addi	a0,s0,-48
    80001be8:	fffff097          	auipc	ra,0xfffff
    80001bec:	710080e7          	jalr	1808(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&threads[3], workerB, nullptr);
    80001bf0:	00000613          	li	a2,0
    80001bf4:	00000597          	auipc	a1,0x0
    80001bf8:	df858593          	addi	a1,a1,-520 # 800019ec <_Z7workerBPv>
    80001bfc:	fd840513          	addi	a0,s0,-40
    80001c00:	fffff097          	auipc	ra,0xfffff
    80001c04:	6f8080e7          	jalr	1784(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&threads[4], workerForever, nullptr);
    80001c08:	00000613          	li	a2,0
    80001c0c:	00000597          	auipc	a1,0x0
    80001c10:	d4858593          	addi	a1,a1,-696 # 80001954 <_Z13workerForeverPv>
    80001c14:	fe040513          	addi	a0,s0,-32
    80001c18:	fffff097          	auipc	ra,0xfffff
    80001c1c:	6e0080e7          	jalr	1760(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&threads[5], workerConsole, nullptr); /// this as well
    80001c20:	00000613          	li	a2,0
    80001c24:	00000597          	auipc	a1,0x0
    80001c28:	df458593          	addi	a1,a1,-524 # 80001a18 <_Z13workerConsolePv>
    80001c2c:	fe840513          	addi	a0,s0,-24
    80001c30:	fffff097          	auipc	ra,0xfffff
    80001c34:	6c8080e7          	jalr	1736(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>

    while (1) thread_dispatch();
    80001c38:	fffff097          	auipc	ra,0xfffff
    80001c3c:	794080e7          	jalr	1940(ra) # 800013cc <_Z15thread_dispatchv>
    80001c40:	ff9ff06f          	j	80001c38 <main+0xd0>

0000000080001c44 <_ZN3Con10initializeEv>:
bool Con::initialized = false;
BoundedBuffer* Con::input_buffer = nullptr;
BoundedBuffer* Con::output_buffer = nullptr;

void Con::initialize() {
    if (!initialized) {
    80001c44:	0000a797          	auipc	a5,0xa
    80001c48:	f2c7c783          	lbu	a5,-212(a5) # 8000bb70 <_ZN3Con11initializedE>
    80001c4c:	00078463          	beqz	a5,80001c54 <_ZN3Con10initializeEv+0x10>
    80001c50:	00008067          	ret
void Con::initialize() {
    80001c54:	fe010113          	addi	sp,sp,-32
    80001c58:	00113c23          	sd	ra,24(sp)
    80001c5c:	00813823          	sd	s0,16(sp)
    80001c60:	00913423          	sd	s1,8(sp)
    80001c64:	01213023          	sd	s2,0(sp)
    80001c68:	02010413          	addi	s0,sp,32
        initialized = true;
    80001c6c:	00100793          	li	a5,1
    80001c70:	0000a717          	auipc	a4,0xa
    80001c74:	f0f70023          	sb	a5,-256(a4) # 8000bb70 <_ZN3Con11initializedE>
        input_buffer = new BoundedBuffer();
    80001c78:	40800513          	li	a0,1032
    80001c7c:	00001097          	auipc	ra,0x1
    80001c80:	ae0080e7          	jalr	-1312(ra) # 8000275c <_ZN13BoundedBuffernwEm>
    80001c84:	00050493          	mv	s1,a0
    80001c88:	00001097          	auipc	ra,0x1
    80001c8c:	a34080e7          	jalr	-1484(ra) # 800026bc <_ZN13BoundedBufferC1Ev>
    80001c90:	0000a797          	auipc	a5,0xa
    80001c94:	ee97b423          	sd	s1,-280(a5) # 8000bb78 <_ZN3Con12input_bufferE>
        output_buffer = new BoundedBuffer();
    80001c98:	40800513          	li	a0,1032
    80001c9c:	00001097          	auipc	ra,0x1
    80001ca0:	ac0080e7          	jalr	-1344(ra) # 8000275c <_ZN13BoundedBuffernwEm>
    80001ca4:	00050493          	mv	s1,a0
    80001ca8:	00001097          	auipc	ra,0x1
    80001cac:	a14080e7          	jalr	-1516(ra) # 800026bc <_ZN13BoundedBufferC1Ev>
    80001cb0:	0000a797          	auipc	a5,0xa
    80001cb4:	ec97b823          	sd	s1,-304(a5) # 8000bb80 <_ZN3Con13output_bufferE>
    }
}
    80001cb8:	01813083          	ld	ra,24(sp)
    80001cbc:	01013403          	ld	s0,16(sp)
    80001cc0:	00813483          	ld	s1,8(sp)
    80001cc4:	00013903          	ld	s2,0(sp)
    80001cc8:	02010113          	addi	sp,sp,32
    80001ccc:	00008067          	ret
    80001cd0:	00050913          	mv	s2,a0
        input_buffer = new BoundedBuffer();
    80001cd4:	00048513          	mv	a0,s1
    80001cd8:	00001097          	auipc	ra,0x1
    80001cdc:	ab4080e7          	jalr	-1356(ra) # 8000278c <_ZN13BoundedBufferdlEPv>
    80001ce0:	00090513          	mv	a0,s2
    80001ce4:	0000b097          	auipc	ra,0xb
    80001ce8:	004080e7          	jalr	4(ra) # 8000cce8 <_Unwind_Resume>
    80001cec:	00050913          	mv	s2,a0
        output_buffer = new BoundedBuffer();
    80001cf0:	00048513          	mv	a0,s1
    80001cf4:	00001097          	auipc	ra,0x1
    80001cf8:	a98080e7          	jalr	-1384(ra) # 8000278c <_ZN13BoundedBufferdlEPv>
    80001cfc:	00090513          	mv	a0,s2
    80001d00:	0000b097          	auipc	ra,0xb
    80001d04:	fe8080e7          	jalr	-24(ra) # 8000cce8 <_Unwind_Resume>

0000000080001d08 <_ZN3Con11putc_outputEc>:

void Con::putc_output(char c) {
    80001d08:	ff010113          	addi	sp,sp,-16
    80001d0c:	00113423          	sd	ra,8(sp)
    80001d10:	00813023          	sd	s0,0(sp)
    80001d14:	01010413          	addi	s0,sp,16
    80001d18:	00050593          	mv	a1,a0
    output_buffer -> putc(c);
    80001d1c:	0000a517          	auipc	a0,0xa
    80001d20:	e6453503          	ld	a0,-412(a0) # 8000bb80 <_ZN3Con13output_bufferE>
    80001d24:	00001097          	auipc	ra,0x1
    80001d28:	a90080e7          	jalr	-1392(ra) # 800027b4 <_ZN13BoundedBuffer4putcEc>
}
    80001d2c:	00813083          	ld	ra,8(sp)
    80001d30:	00013403          	ld	s0,0(sp)
    80001d34:	01010113          	addi	sp,sp,16
    80001d38:	00008067          	ret

0000000080001d3c <_ZN3Con11getc_outputEv>:

char Con::getc_output() {
    80001d3c:	ff010113          	addi	sp,sp,-16
    80001d40:	00113423          	sd	ra,8(sp)
    80001d44:	00813023          	sd	s0,0(sp)
    80001d48:	01010413          	addi	s0,sp,16
    return output_buffer -> getc();
    80001d4c:	0000a517          	auipc	a0,0xa
    80001d50:	e3453503          	ld	a0,-460(a0) # 8000bb80 <_ZN3Con13output_bufferE>
    80001d54:	00001097          	auipc	ra,0x1
    80001d58:	acc080e7          	jalr	-1332(ra) # 80002820 <_ZN13BoundedBuffer4getcEv>
}
    80001d5c:	00813083          	ld	ra,8(sp)
    80001d60:	00013403          	ld	s0,0(sp)
    80001d64:	01010113          	addi	sp,sp,16
    80001d68:	00008067          	ret

0000000080001d6c <_ZN3Con10putc_inputEc>:

void Con::putc_input(char c) {
    80001d6c:	ff010113          	addi	sp,sp,-16
    80001d70:	00113423          	sd	ra,8(sp)
    80001d74:	00813023          	sd	s0,0(sp)
    80001d78:	01010413          	addi	s0,sp,16
    80001d7c:	00050593          	mv	a1,a0
    input_buffer -> putc(c);
    80001d80:	0000a517          	auipc	a0,0xa
    80001d84:	df853503          	ld	a0,-520(a0) # 8000bb78 <_ZN3Con12input_bufferE>
    80001d88:	00001097          	auipc	ra,0x1
    80001d8c:	a2c080e7          	jalr	-1492(ra) # 800027b4 <_ZN13BoundedBuffer4putcEc>
}
    80001d90:	00813083          	ld	ra,8(sp)
    80001d94:	00013403          	ld	s0,0(sp)
    80001d98:	01010113          	addi	sp,sp,16
    80001d9c:	00008067          	ret

0000000080001da0 <_ZN3Con10getc_inputEv>:

char Con::getc_input() {
    80001da0:	ff010113          	addi	sp,sp,-16
    80001da4:	00113423          	sd	ra,8(sp)
    80001da8:	00813023          	sd	s0,0(sp)
    80001dac:	01010413          	addi	s0,sp,16
    return input_buffer -> getc();
    80001db0:	0000a517          	auipc	a0,0xa
    80001db4:	dc853503          	ld	a0,-568(a0) # 8000bb78 <_ZN3Con12input_bufferE>
    80001db8:	00001097          	auipc	ra,0x1
    80001dbc:	a68080e7          	jalr	-1432(ra) # 80002820 <_ZN13BoundedBuffer4getcEv>
    80001dc0:	00813083          	ld	ra,8(sp)
    80001dc4:	00013403          	ld	s0,0(sp)
    80001dc8:	01010113          	addi	sp,sp,16
    80001dcc:	00008067          	ret

0000000080001dd0 <_ZN6ThreadD1Ev>:

Thread::Thread(void (*body)(void *), void *arg) : myHandle(nullptr) {
    thread_create(&myHandle, body, arg);
}

Thread::~Thread() {
    80001dd0:	fe010113          	addi	sp,sp,-32
    80001dd4:	00113c23          	sd	ra,24(sp)
    80001dd8:	00813823          	sd	s0,16(sp)
    80001ddc:	00913423          	sd	s1,8(sp)
    80001de0:	02010413          	addi	s0,sp,32
    80001de4:	00050493          	mv	s1,a0
    80001de8:	0000a797          	auipc	a5,0xa
    80001dec:	b0078793          	addi	a5,a5,-1280 # 8000b8e8 <_ZTV6Thread+0x10>
    80001df0:	00f53023          	sd	a5,0(a0)
    myHandle -> set_status(TCB::FINISHED);
    80001df4:	00400593          	li	a1,4
    80001df8:	00853503          	ld	a0,8(a0)
    80001dfc:	00001097          	auipc	ra,0x1
    80001e00:	3d4080e7          	jalr	980(ra) # 800031d0 <_ZN3TCB10set_statusENS_6StatusE>
    delete myHandle;
    80001e04:	0084b503          	ld	a0,8(s1)
    80001e08:	00050663          	beqz	a0,80001e14 <_ZN6ThreadD1Ev+0x44>
    80001e0c:	00001097          	auipc	ra,0x1
    80001e10:	510080e7          	jalr	1296(ra) # 8000331c <_ZN3TCBdlEPv>
}
    80001e14:	01813083          	ld	ra,24(sp)
    80001e18:	01013403          	ld	s0,16(sp)
    80001e1c:	00813483          	ld	s1,8(sp)
    80001e20:	02010113          	addi	sp,sp,32
    80001e24:	00008067          	ret

0000000080001e28 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) : myHandle(nullptr) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    80001e28:	0000a797          	auipc	a5,0xa
    80001e2c:	ae878793          	addi	a5,a5,-1304 # 8000b910 <_ZTV9Semaphore+0x10>
    80001e30:	00f53023          	sd	a5,0(a0)
    if (myHandle) sem_close(myHandle);
    80001e34:	00853503          	ld	a0,8(a0)
    80001e38:	02050663          	beqz	a0,80001e64 <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    80001e3c:	ff010113          	addi	sp,sp,-16
    80001e40:	00113423          	sd	ra,8(sp)
    80001e44:	00813023          	sd	s0,0(sp)
    80001e48:	01010413          	addi	s0,sp,16
    if (myHandle) sem_close(myHandle);
    80001e4c:	fffff097          	auipc	ra,0xfffff
    80001e50:	60c080e7          	jalr	1548(ra) # 80001458 <_Z9sem_closeP3Sem>
}
    80001e54:	00813083          	ld	ra,8(sp)
    80001e58:	00013403          	ld	s0,0(sp)
    80001e5c:	01010113          	addi	sp,sp,16
    80001e60:	00008067          	ret
    80001e64:	00008067          	ret

0000000080001e68 <_Znwm>:
void* operator new(size_t size){
    80001e68:	ff010113          	addi	sp,sp,-16
    80001e6c:	00113423          	sd	ra,8(sp)
    80001e70:	00813023          	sd	s0,0(sp)
    80001e74:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001e78:	fffff097          	auipc	ra,0xfffff
    80001e7c:	3e0080e7          	jalr	992(ra) # 80001258 <_Z9mem_allocm>
}
    80001e80:	00813083          	ld	ra,8(sp)
    80001e84:	00013403          	ld	s0,0(sp)
    80001e88:	01010113          	addi	sp,sp,16
    80001e8c:	00008067          	ret

0000000080001e90 <_ZdlPv>:
void operator delete(void* p) noexcept {
    80001e90:	ff010113          	addi	sp,sp,-16
    80001e94:	00113423          	sd	ra,8(sp)
    80001e98:	00813023          	sd	s0,0(sp)
    80001e9c:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001ea0:	fffff097          	auipc	ra,0xfffff
    80001ea4:	40c080e7          	jalr	1036(ra) # 800012ac <_Z8mem_freePv>
}
    80001ea8:	00813083          	ld	ra,8(sp)
    80001eac:	00013403          	ld	s0,0(sp)
    80001eb0:	01010113          	addi	sp,sp,16
    80001eb4:	00008067          	ret

0000000080001eb8 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80001eb8:	fe010113          	addi	sp,sp,-32
    80001ebc:	00113c23          	sd	ra,24(sp)
    80001ec0:	00813823          	sd	s0,16(sp)
    80001ec4:	00913423          	sd	s1,8(sp)
    80001ec8:	02010413          	addi	s0,sp,32
    80001ecc:	00050493          	mv	s1,a0
}
    80001ed0:	00000097          	auipc	ra,0x0
    80001ed4:	f00080e7          	jalr	-256(ra) # 80001dd0 <_ZN6ThreadD1Ev>
    80001ed8:	00048513          	mv	a0,s1
    80001edc:	00000097          	auipc	ra,0x0
    80001ee0:	fb4080e7          	jalr	-76(ra) # 80001e90 <_ZdlPv>
    80001ee4:	01813083          	ld	ra,24(sp)
    80001ee8:	01013403          	ld	s0,16(sp)
    80001eec:	00813483          	ld	s1,8(sp)
    80001ef0:	02010113          	addi	sp,sp,32
    80001ef4:	00008067          	ret

0000000080001ef8 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001ef8:	fe010113          	addi	sp,sp,-32
    80001efc:	00113c23          	sd	ra,24(sp)
    80001f00:	00813823          	sd	s0,16(sp)
    80001f04:	00913423          	sd	s1,8(sp)
    80001f08:	02010413          	addi	s0,sp,32
    80001f0c:	00050493          	mv	s1,a0
}
    80001f10:	00000097          	auipc	ra,0x0
    80001f14:	f18080e7          	jalr	-232(ra) # 80001e28 <_ZN9SemaphoreD1Ev>
    80001f18:	00048513          	mv	a0,s1
    80001f1c:	00000097          	auipc	ra,0x0
    80001f20:	f74080e7          	jalr	-140(ra) # 80001e90 <_ZdlPv>
    80001f24:	01813083          	ld	ra,24(sp)
    80001f28:	01013403          	ld	s0,16(sp)
    80001f2c:	00813483          	ld	s1,8(sp)
    80001f30:	02010113          	addi	sp,sp,32
    80001f34:	00008067          	ret

0000000080001f38 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) : myHandle(nullptr) {
    80001f38:	ff010113          	addi	sp,sp,-16
    80001f3c:	00113423          	sd	ra,8(sp)
    80001f40:	00813023          	sd	s0,0(sp)
    80001f44:	01010413          	addi	s0,sp,16
    80001f48:	0000a797          	auipc	a5,0xa
    80001f4c:	9a078793          	addi	a5,a5,-1632 # 8000b8e8 <_ZTV6Thread+0x10>
    80001f50:	00f53023          	sd	a5,0(a0)
    80001f54:	00053423          	sd	zero,8(a0)
    thread_create(&myHandle, body, arg);
    80001f58:	00850513          	addi	a0,a0,8
    80001f5c:	fffff097          	auipc	ra,0xfffff
    80001f60:	39c080e7          	jalr	924(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
}
    80001f64:	00813083          	ld	ra,8(sp)
    80001f68:	00013403          	ld	s0,0(sp)
    80001f6c:	01010113          	addi	sp,sp,16
    80001f70:	00008067          	ret

0000000080001f74 <_ZN6Thread5startEv>:
int Thread::start() {
    80001f74:	ff010113          	addi	sp,sp,-16
    80001f78:	00113423          	sd	ra,8(sp)
    80001f7c:	00813023          	sd	s0,0(sp)
    80001f80:	01010413          	addi	s0,sp,16
    myHandle -> start();
    80001f84:	00853503          	ld	a0,8(a0)
    80001f88:	00001097          	auipc	ra,0x1
    80001f8c:	318080e7          	jalr	792(ra) # 800032a0 <_ZN3TCB5startEv>
}
    80001f90:	00000513          	li	a0,0
    80001f94:	00813083          	ld	ra,8(sp)
    80001f98:	00013403          	ld	s0,0(sp)
    80001f9c:	01010113          	addi	sp,sp,16
    80001fa0:	00008067          	ret

0000000080001fa4 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001fa4:	ff010113          	addi	sp,sp,-16
    80001fa8:	00113423          	sd	ra,8(sp)
    80001fac:	00813023          	sd	s0,0(sp)
    80001fb0:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001fb4:	fffff097          	auipc	ra,0xfffff
    80001fb8:	418080e7          	jalr	1048(ra) # 800013cc <_Z15thread_dispatchv>
}
    80001fbc:	00813083          	ld	ra,8(sp)
    80001fc0:	00013403          	ld	s0,0(sp)
    80001fc4:	01010113          	addi	sp,sp,16
    80001fc8:	00008067          	ret

0000000080001fcc <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    80001fcc:	ff010113          	addi	sp,sp,-16
    80001fd0:	00113423          	sd	ra,8(sp)
    80001fd4:	00813023          	sd	s0,0(sp)
    80001fd8:	01010413          	addi	s0,sp,16
    time_sleep(time);
    80001fdc:	fffff097          	auipc	ra,0xfffff
    80001fe0:	5f8080e7          	jalr	1528(ra) # 800015d4 <_Z10time_sleepm>
}
    80001fe4:	00000513          	li	a0,0
    80001fe8:	00813083          	ld	ra,8(sp)
    80001fec:	00013403          	ld	s0,0(sp)
    80001ff0:	01010113          	addi	sp,sp,16
    80001ff4:	00008067          	ret

0000000080001ff8 <_ZN6ThreadC1Ev>:
Thread::Thread() : myHandle(nullptr) {
    80001ff8:	ff010113          	addi	sp,sp,-16
    80001ffc:	00813423          	sd	s0,8(sp)
    80002000:	01010413          	addi	s0,sp,16
    80002004:	0000a797          	auipc	a5,0xa
    80002008:	8e478793          	addi	a5,a5,-1820 # 8000b8e8 <_ZTV6Thread+0x10>
    8000200c:	00f53023          	sd	a5,0(a0)
    80002010:	00053423          	sd	zero,8(a0)
}
    80002014:	00813403          	ld	s0,8(sp)
    80002018:	01010113          	addi	sp,sp,16
    8000201c:	00008067          	ret

0000000080002020 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) : myHandle(nullptr) {
    80002020:	ff010113          	addi	sp,sp,-16
    80002024:	00113423          	sd	ra,8(sp)
    80002028:	00813023          	sd	s0,0(sp)
    8000202c:	01010413          	addi	s0,sp,16
    80002030:	0000a797          	auipc	a5,0xa
    80002034:	8e078793          	addi	a5,a5,-1824 # 8000b910 <_ZTV9Semaphore+0x10>
    80002038:	00f53023          	sd	a5,0(a0)
    8000203c:	00053423          	sd	zero,8(a0)
    sem_open(&myHandle, init);
    80002040:	00850513          	addi	a0,a0,8
    80002044:	fffff097          	auipc	ra,0xfffff
    80002048:	3c4080e7          	jalr	964(ra) # 80001408 <_Z8sem_openPP3Semj>
}
    8000204c:	00813083          	ld	ra,8(sp)
    80002050:	00013403          	ld	s0,0(sp)
    80002054:	01010113          	addi	sp,sp,16
    80002058:	00008067          	ret

000000008000205c <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    if (myHandle) return sem_wait(myHandle);
    8000205c:	00853503          	ld	a0,8(a0)
    80002060:	02050663          	beqz	a0,8000208c <_ZN9Semaphore4waitEv+0x30>
int Semaphore::wait() {
    80002064:	ff010113          	addi	sp,sp,-16
    80002068:	00113423          	sd	ra,8(sp)
    8000206c:	00813023          	sd	s0,0(sp)
    80002070:	01010413          	addi	s0,sp,16
    if (myHandle) return sem_wait(myHandle);
    80002074:	fffff097          	auipc	ra,0xfffff
    80002078:	430080e7          	jalr	1072(ra) # 800014a4 <_Z8sem_waitP3Sem>
    return -1;
}
    8000207c:	00813083          	ld	ra,8(sp)
    80002080:	00013403          	ld	s0,0(sp)
    80002084:	01010113          	addi	sp,sp,16
    80002088:	00008067          	ret
    return -1;
    8000208c:	fff00513          	li	a0,-1
}
    80002090:	00008067          	ret

0000000080002094 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    if (myHandle) return sem_signal(myHandle);
    80002094:	00853503          	ld	a0,8(a0)
    80002098:	02050663          	beqz	a0,800020c4 <_ZN9Semaphore6signalEv+0x30>
int Semaphore::signal() {
    8000209c:	ff010113          	addi	sp,sp,-16
    800020a0:	00113423          	sd	ra,8(sp)
    800020a4:	00813023          	sd	s0,0(sp)
    800020a8:	01010413          	addi	s0,sp,16
    if (myHandle) return sem_signal(myHandle);
    800020ac:	fffff097          	auipc	ra,0xfffff
    800020b0:	444080e7          	jalr	1092(ra) # 800014f0 <_Z10sem_signalP3Sem>
    return -1;
}
    800020b4:	00813083          	ld	ra,8(sp)
    800020b8:	00013403          	ld	s0,0(sp)
    800020bc:	01010113          	addi	sp,sp,16
    800020c0:	00008067          	ret
    return -1;
    800020c4:	fff00513          	li	a0,-1
}
    800020c8:	00008067          	ret

00000000800020cc <_ZN9Semaphore9timedWaitEm>:

int Semaphore::timedWait(time_t) {
    800020cc:	ff010113          	addi	sp,sp,-16
    800020d0:	00813423          	sd	s0,8(sp)
    800020d4:	01010413          	addi	s0,sp,16
    return 0;
}
    800020d8:	00000513          	li	a0,0
    800020dc:	00813403          	ld	s0,8(sp)
    800020e0:	01010113          	addi	sp,sp,16
    800020e4:	00008067          	ret

00000000800020e8 <_ZN9Semaphore7tryWaitEv>:

int Semaphore::tryWait() {
    800020e8:	ff010113          	addi	sp,sp,-16
    800020ec:	00813423          	sd	s0,8(sp)
    800020f0:	01010413          	addi	s0,sp,16
    return 0;
}
    800020f4:	00000513          	li	a0,0
    800020f8:	00813403          	ld	s0,8(sp)
    800020fc:	01010113          	addi	sp,sp,16
    80002100:	00008067          	ret

0000000080002104 <_ZN14PeriodicThread9terminateEv>:

void PeriodicThread::terminate() {
    80002104:	ff010113          	addi	sp,sp,-16
    80002108:	00813423          	sd	s0,8(sp)
    8000210c:	01010413          	addi	s0,sp,16

}
    80002110:	00813403          	ld	s0,8(sp)
    80002114:	01010113          	addi	sp,sp,16
    80002118:	00008067          	ret

000000008000211c <_ZN14PeriodicThreadC1Em>:

PeriodicThread::PeriodicThread(time_t period) {
    8000211c:	fe010113          	addi	sp,sp,-32
    80002120:	00113c23          	sd	ra,24(sp)
    80002124:	00813823          	sd	s0,16(sp)
    80002128:	00913423          	sd	s1,8(sp)
    8000212c:	02010413          	addi	s0,sp,32
    80002130:	00050493          	mv	s1,a0
    80002134:	00000097          	auipc	ra,0x0
    80002138:	ec4080e7          	jalr	-316(ra) # 80001ff8 <_ZN6ThreadC1Ev>
    8000213c:	00009797          	auipc	a5,0x9
    80002140:	77c78793          	addi	a5,a5,1916 # 8000b8b8 <_ZTV14PeriodicThread+0x10>
    80002144:	00f4b023          	sd	a5,0(s1)

}
    80002148:	01813083          	ld	ra,24(sp)
    8000214c:	01013403          	ld	s0,16(sp)
    80002150:	00813483          	ld	s1,8(sp)
    80002154:	02010113          	addi	sp,sp,32
    80002158:	00008067          	ret

000000008000215c <_ZN7Console4getcEv>:

char Console::getc() {
    8000215c:	ff010113          	addi	sp,sp,-16
    80002160:	00113423          	sd	ra,8(sp)
    80002164:	00813023          	sd	s0,0(sp)
    80002168:	01010413          	addi	s0,sp,16
    return ::getc();
    8000216c:	fffff097          	auipc	ra,0xfffff
    80002170:	4b4080e7          	jalr	1204(ra) # 80001620 <_Z4getcv>
}
    80002174:	00813083          	ld	ra,8(sp)
    80002178:	00013403          	ld	s0,0(sp)
    8000217c:	01010113          	addi	sp,sp,16
    80002180:	00008067          	ret

0000000080002184 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80002184:	ff010113          	addi	sp,sp,-16
    80002188:	00113423          	sd	ra,8(sp)
    8000218c:	00813023          	sd	s0,0(sp)
    80002190:	01010413          	addi	s0,sp,16
    ::putc(c);
    80002194:	fffff097          	auipc	ra,0xfffff
    80002198:	4d8080e7          	jalr	1240(ra) # 8000166c <_Z4putcc>
}
    8000219c:	00813083          	ld	ra,8(sp)
    800021a0:	00013403          	ld	s0,0(sp)
    800021a4:	01010113          	addi	sp,sp,16
    800021a8:	00008067          	ret

00000000800021ac <_ZN6Thread3runEv>:
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    800021ac:	ff010113          	addi	sp,sp,-16
    800021b0:	00813423          	sd	s0,8(sp)
    800021b4:	01010413          	addi	s0,sp,16
    800021b8:	00813403          	ld	s0,8(sp)
    800021bc:	01010113          	addi	sp,sp,16
    800021c0:	00008067          	ret

00000000800021c4 <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    800021c4:	ff010113          	addi	sp,sp,-16
    800021c8:	00813423          	sd	s0,8(sp)
    800021cc:	01010413          	addi	s0,sp,16
    800021d0:	00813403          	ld	s0,8(sp)
    800021d4:	01010113          	addi	sp,sp,16
    800021d8:	00008067          	ret

00000000800021dc <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    800021dc:	ff010113          	addi	sp,sp,-16
    800021e0:	00113423          	sd	ra,8(sp)
    800021e4:	00813023          	sd	s0,0(sp)
    800021e8:	01010413          	addi	s0,sp,16
    800021ec:	00009797          	auipc	a5,0x9
    800021f0:	6cc78793          	addi	a5,a5,1740 # 8000b8b8 <_ZTV14PeriodicThread+0x10>
    800021f4:	00f53023          	sd	a5,0(a0)
    800021f8:	00000097          	auipc	ra,0x0
    800021fc:	bd8080e7          	jalr	-1064(ra) # 80001dd0 <_ZN6ThreadD1Ev>
    80002200:	00813083          	ld	ra,8(sp)
    80002204:	00013403          	ld	s0,0(sp)
    80002208:	01010113          	addi	sp,sp,16
    8000220c:	00008067          	ret

0000000080002210 <_ZN14PeriodicThreadD0Ev>:
    80002210:	fe010113          	addi	sp,sp,-32
    80002214:	00113c23          	sd	ra,24(sp)
    80002218:	00813823          	sd	s0,16(sp)
    8000221c:	00913423          	sd	s1,8(sp)
    80002220:	02010413          	addi	s0,sp,32
    80002224:	00050493          	mv	s1,a0
    80002228:	00009797          	auipc	a5,0x9
    8000222c:	69078793          	addi	a5,a5,1680 # 8000b8b8 <_ZTV14PeriodicThread+0x10>
    80002230:	00f53023          	sd	a5,0(a0)
    80002234:	00000097          	auipc	ra,0x0
    80002238:	b9c080e7          	jalr	-1124(ra) # 80001dd0 <_ZN6ThreadD1Ev>
    8000223c:	00048513          	mv	a0,s1
    80002240:	00000097          	auipc	ra,0x0
    80002244:	c50080e7          	jalr	-944(ra) # 80001e90 <_ZdlPv>
    80002248:	01813083          	ld	ra,24(sp)
    8000224c:	01013403          	ld	s0,16(sp)
    80002250:	00813483          	ld	s1,8(sp)
    80002254:	02010113          	addi	sp,sp,32
    80002258:	00008067          	ret

000000008000225c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>:
        instance = (MemoryAllocator*) MemoryAllocator::mem_alloc(sizeof(MemoryAllocator));
    }
}

/// helper function for removing element from linked list
void MemoryAllocator::removeNode(MemSeg *toRemove, MemSeg *nextSeg, bool newIsCreated) {
    8000225c:	ff010113          	addi	sp,sp,-16
    80002260:	00813423          	sd	s0,8(sp)
    80002264:	01010413          	addi	s0,sp,16
    if (toRemove -> prev) toRemove -> prev -> next = nextSeg;
    80002268:	00853783          	ld	a5,8(a0)
    8000226c:	02078463          	beqz	a5,80002294 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x38>
    80002270:	00b7b823          	sd	a1,16(a5)
    else freeSegHead = nextSeg;
    if (toRemove -> next) toRemove -> next -> prev = (newIsCreated) ? toRemove -> prev : nextSeg;
    80002274:	01053783          	ld	a5,16(a0)
    80002278:	00078863          	beqz	a5,80002288 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x2c>
    8000227c:	00060463          	beqz	a2,80002284 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x28>
    80002280:	00853583          	ld	a1,8(a0)
    80002284:	00b7b423          	sd	a1,8(a5)
}
    80002288:	00813403          	ld	s0,8(sp)
    8000228c:	01010113          	addi	sp,sp,16
    80002290:	00008067          	ret
    else freeSegHead = nextSeg;
    80002294:	0000a797          	auipc	a5,0xa
    80002298:	8eb7ba23          	sd	a1,-1804(a5) # 8000bb88 <_ZN15MemoryAllocator11freeSegHeadE>
    8000229c:	fd9ff06f          	j	80002274 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x18>

00000000800022a0 <_ZN15MemoryAllocator9mem_allocEm>:

/// allocate `size` blocks
void *MemoryAllocator::mem_alloc(size_t size) {
    800022a0:	fe010113          	addi	sp,sp,-32
    800022a4:	00113c23          	sd	ra,24(sp)
    800022a8:	00813823          	sd	s0,16(sp)
    800022ac:	00913423          	sd	s1,8(sp)
    800022b0:	01213023          	sd	s2,0(sp)
    800022b4:	02010413          	addi	s0,sp,32
    if (size <= 0) return nullptr;
    800022b8:	0e050e63          	beqz	a0,800023b4 <_ZN15MemoryAllocator9mem_allocEm+0x114>
    size_t bytesToAllocate = size * MEM_BLOCK_SIZE;
    800022bc:	00651913          	slli	s2,a0,0x6
    MemSeg *tmp = freeSegHead;
    800022c0:	0000a497          	auipc	s1,0xa
    800022c4:	8c84b483          	ld	s1,-1848(s1) # 8000bb88 <_ZN15MemoryAllocator11freeSegHeadE>
    while (tmp) {
    800022c8:	0a048e63          	beqz	s1,80002384 <_ZN15MemoryAllocator9mem_allocEm+0xe4>
        if (tmp -> size < bytesToAllocate) {
    800022cc:	0004b783          	ld	a5,0(s1)
    800022d0:	0527e463          	bltu	a5,s2,80002318 <_ZN15MemoryAllocator9mem_allocEm+0x78>
            tmp = tmp -> next;
            continue;
        }
        /// update free memory list
        size_t remaining = tmp -> size - bytesToAllocate;
    800022d4:	412787b3          	sub	a5,a5,s2
        if (remaining < sizeof(MemSeg)) removeNode(tmp, tmp->next, false);
    800022d8:	01700713          	li	a4,23
    800022dc:	04f76263          	bltu	a4,a5,80002320 <_ZN15MemoryAllocator9mem_allocEm+0x80>
    800022e0:	00000613          	li	a2,0
    800022e4:	0104b583          	ld	a1,16(s1)
    800022e8:	00048513          	mv	a0,s1
    800022ec:	00000097          	auipc	ra,0x0
    800022f0:	f70080e7          	jalr	-144(ra) # 8000225c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
        }

        /// update used memory list
        /// insert segment after tmp2
        MemSeg* tmp2 = nullptr;
        if (usedSegHead && (char*) tmp > (char*) usedSegHead)
    800022f4:	0000a797          	auipc	a5,0xa
    800022f8:	89c7b783          	ld	a5,-1892(a5) # 8000bb90 <_ZN15MemoryAllocator11usedSegHeadE>
    800022fc:	04078863          	beqz	a5,8000234c <_ZN15MemoryAllocator9mem_allocEm+0xac>
    80002300:	0497fa63          	bgeu	a5,s1,80002354 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
            for (tmp2 = usedSegHead; tmp2 -> next && (char*) tmp > (char*) (tmp2 -> next); tmp2 = tmp2 -> next);
    80002304:	00078713          	mv	a4,a5
    80002308:	0107b783          	ld	a5,16(a5)
    8000230c:	04078663          	beqz	a5,80002358 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
    80002310:	fe97eae3          	bltu	a5,s1,80002304 <_ZN15MemoryAllocator9mem_allocEm+0x64>
    80002314:	0440006f          	j	80002358 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
            tmp = tmp -> next;
    80002318:	0104b483          	ld	s1,16(s1)
    while (tmp) {
    8000231c:	fadff06f          	j	800022c8 <_ZN15MemoryAllocator9mem_allocEm+0x28>
            MemSeg* newFree = (MemSeg*) ((char*) tmp + bytesToAllocate);
    80002320:	012485b3          	add	a1,s1,s2
            newFree -> prev = tmp -> prev;
    80002324:	0084b703          	ld	a4,8(s1)
    80002328:	00e5b423          	sd	a4,8(a1)
            newFree -> next = tmp -> next;
    8000232c:	0104b703          	ld	a4,16(s1)
    80002330:	00e5b823          	sd	a4,16(a1)
            newFree -> size = remaining;
    80002334:	00f5b023          	sd	a5,0(a1)
            removeNode(tmp, newFree, true);
    80002338:	00100613          	li	a2,1
    8000233c:	00048513          	mv	a0,s1
    80002340:	00000097          	auipc	ra,0x0
    80002344:	f1c080e7          	jalr	-228(ra) # 8000225c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
    80002348:	fadff06f          	j	800022f4 <_ZN15MemoryAllocator9mem_allocEm+0x54>
        MemSeg* tmp2 = nullptr;
    8000234c:	00078713          	mv	a4,a5
    80002350:	0080006f          	j	80002358 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
    80002354:	00000713          	li	a4,0
        MemSeg* newUsed = (MemSeg*) tmp;
        newUsed -> size = bytesToAllocate;
    80002358:	0124b023          	sd	s2,0(s1)
        newUsed -> prev = tmp2;
    8000235c:	00e4b423          	sd	a4,8(s1)
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    80002360:	04070063          	beqz	a4,800023a0 <_ZN15MemoryAllocator9mem_allocEm+0x100>
    80002364:	01073783          	ld	a5,16(a4)
    80002368:	00f4b823          	sd	a5,16(s1)
        if (tmp2) tmp2 -> next = newUsed;
    8000236c:	02070e63          	beqz	a4,800023a8 <_ZN15MemoryAllocator9mem_allocEm+0x108>
    80002370:	00973823          	sd	s1,16(a4)
        else usedSegHead = newUsed;
        if (newUsed -> next) newUsed -> next -> prev = newUsed;
    80002374:	0104b783          	ld	a5,16(s1)
    80002378:	00078463          	beqz	a5,80002380 <_ZN15MemoryAllocator9mem_allocEm+0xe0>
    8000237c:	0097b423          	sd	s1,8(a5)
        return (void*) ((char*)tmp + sizeof(MemSeg));
    80002380:	01848493          	addi	s1,s1,24
    }
    return nullptr;
}
    80002384:	00048513          	mv	a0,s1
    80002388:	01813083          	ld	ra,24(sp)
    8000238c:	01013403          	ld	s0,16(sp)
    80002390:	00813483          	ld	s1,8(sp)
    80002394:	00013903          	ld	s2,0(sp)
    80002398:	02010113          	addi	sp,sp,32
    8000239c:	00008067          	ret
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    800023a0:	00070793          	mv	a5,a4
    800023a4:	fc5ff06f          	j	80002368 <_ZN15MemoryAllocator9mem_allocEm+0xc8>
        else usedSegHead = newUsed;
    800023a8:	00009797          	auipc	a5,0x9
    800023ac:	7e97b423          	sd	s1,2024(a5) # 8000bb90 <_ZN15MemoryAllocator11usedSegHeadE>
    800023b0:	fc5ff06f          	j	80002374 <_ZN15MemoryAllocator9mem_allocEm+0xd4>
    if (size <= 0) return nullptr;
    800023b4:	00000493          	li	s1,0
    800023b8:	fcdff06f          	j	80002384 <_ZN15MemoryAllocator9mem_allocEm+0xe4>

00000000800023bc <_ZN15MemoryAllocator10initializeEv>:
    if (!instance) {
    800023bc:	00009797          	auipc	a5,0x9
    800023c0:	7dc7b783          	ld	a5,2012(a5) # 8000bb98 <_ZN15MemoryAllocator8instanceE>
    800023c4:	00078463          	beqz	a5,800023cc <_ZN15MemoryAllocator10initializeEv+0x10>
    800023c8:	00008067          	ret
void MemoryAllocator::initialize() {
    800023cc:	fe010113          	addi	sp,sp,-32
    800023d0:	00113c23          	sd	ra,24(sp)
    800023d4:	00813823          	sd	s0,16(sp)
    800023d8:	00913423          	sd	s1,8(sp)
    800023dc:	02010413          	addi	s0,sp,32
        freeSegHead = (MemSeg*) HEAP_START_ADDR;
    800023e0:	00009797          	auipc	a5,0x9
    800023e4:	7007b783          	ld	a5,1792(a5) # 8000bae0 <_GLOBAL_OFFSET_TABLE_+0x18>
    800023e8:	0007b783          	ld	a5,0(a5)
    800023ec:	00009497          	auipc	s1,0x9
    800023f0:	79c48493          	addi	s1,s1,1948 # 8000bb88 <_ZN15MemoryAllocator11freeSegHeadE>
    800023f4:	00f4b023          	sd	a5,0(s1)
        freeSegHead -> size = (size_t) HEAP_END_ADDR - (size_t) HEAP_START_ADDR;
    800023f8:	00009717          	auipc	a4,0x9
    800023fc:	72873703          	ld	a4,1832(a4) # 8000bb20 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002400:	00073703          	ld	a4,0(a4)
    80002404:	40f70733          	sub	a4,a4,a5
    80002408:	00e7b023          	sd	a4,0(a5)
        freeSegHead -> prev = nullptr;
    8000240c:	0004b783          	ld	a5,0(s1)
    80002410:	0007b423          	sd	zero,8(a5)
        freeSegHead -> next = nullptr;
    80002414:	0007b823          	sd	zero,16(a5)
        instance = (MemoryAllocator*) MemoryAllocator::mem_alloc(sizeof(MemoryAllocator));
    80002418:	00100513          	li	a0,1
    8000241c:	00000097          	auipc	ra,0x0
    80002420:	e84080e7          	jalr	-380(ra) # 800022a0 <_ZN15MemoryAllocator9mem_allocEm>
    80002424:	00a4b823          	sd	a0,16(s1)
}
    80002428:	01813083          	ld	ra,24(sp)
    8000242c:	01013403          	ld	s0,16(sp)
    80002430:	00813483          	ld	s1,8(sp)
    80002434:	02010113          	addi	sp,sp,32
    80002438:	00008067          	ret

000000008000243c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>:
    }
    return 0;
}

/// join free segment with next if possible
void MemoryAllocator::tryToJoin(MemSeg *seg) {
    8000243c:	ff010113          	addi	sp,sp,-16
    80002440:	00813423          	sd	s0,8(sp)
    80002444:	01010413          	addi	s0,sp,16
    if (seg -> next && (char*) seg + seg -> size == (char*) seg -> next) {
    80002448:	01053783          	ld	a5,16(a0)
    8000244c:	00078863          	beqz	a5,8000245c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    80002450:	00053703          	ld	a4,0(a0)
    80002454:	00e506b3          	add	a3,a0,a4
    80002458:	00d78863          	beq	a5,a3,80002468 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x2c>
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
        seg -> next = seg -> next -> next;
        if (seg -> next) seg -> next -> prev = seg;
    }
}
    8000245c:	00813403          	ld	s0,8(sp)
    80002460:	01010113          	addi	sp,sp,16
    80002464:	00008067          	ret
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
    80002468:	0007b683          	ld	a3,0(a5)
    8000246c:	00d70733          	add	a4,a4,a3
    80002470:	01870713          	addi	a4,a4,24
    80002474:	00e53023          	sd	a4,0(a0)
        seg -> next = seg -> next -> next;
    80002478:	0107b783          	ld	a5,16(a5)
    8000247c:	00f53823          	sd	a5,16(a0)
        if (seg -> next) seg -> next -> prev = seg;
    80002480:	fc078ee3          	beqz	a5,8000245c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    80002484:	00a7b423          	sd	a0,8(a5)
}
    80002488:	fd5ff06f          	j	8000245c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>

000000008000248c <_ZN15MemoryAllocator8mem_freeEPv>:
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    8000248c:	14050263          	beqz	a0,800025d0 <_ZN15MemoryAllocator8mem_freeEPv+0x144>
int MemoryAllocator::mem_free(void *addr) {
    80002490:	fd010113          	addi	sp,sp,-48
    80002494:	02113423          	sd	ra,40(sp)
    80002498:	02813023          	sd	s0,32(sp)
    8000249c:	00913c23          	sd	s1,24(sp)
    800024a0:	01213823          	sd	s2,16(sp)
    800024a4:	01313423          	sd	s3,8(sp)
    800024a8:	03010413          	addi	s0,sp,48
    800024ac:	00050913          	mv	s2,a0
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    800024b0:	00009797          	auipc	a5,0x9
    800024b4:	6307b783          	ld	a5,1584(a5) # 8000bae0 <_GLOBAL_OFFSET_TABLE_+0x18>
    800024b8:	0007b783          	ld	a5,0(a5)
    800024bc:	10f56e63          	bltu	a0,a5,800025d8 <_ZN15MemoryAllocator8mem_freeEPv+0x14c>
    800024c0:	00009797          	auipc	a5,0x9
    800024c4:	6607b783          	ld	a5,1632(a5) # 8000bb20 <_GLOBAL_OFFSET_TABLE_+0x58>
    800024c8:	0007b783          	ld	a5,0(a5)
    800024cc:	10a7ea63          	bltu	a5,a0,800025e0 <_ZN15MemoryAllocator8mem_freeEPv+0x154>
    if (!usedSegHead) return -2;
    800024d0:	00009797          	auipc	a5,0x9
    800024d4:	6c07b783          	ld	a5,1728(a5) # 8000bb90 <_ZN15MemoryAllocator11usedSegHeadE>
    800024d8:	10078863          	beqz	a5,800025e8 <_ZN15MemoryAllocator8mem_freeEPv+0x15c>
    addr = (void*) ((char*) addr - sizeof(MemSeg));
    800024dc:	fe850493          	addi	s1,a0,-24
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    800024e0:	00078863          	beqz	a5,800024f0 <_ZN15MemoryAllocator8mem_freeEPv+0x64>
        if (tmp == segToFree) {
    800024e4:	08978e63          	beq	a5,s1,80002580 <_ZN15MemoryAllocator8mem_freeEPv+0xf4>
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    800024e8:	0107b783          	ld	a5,16(a5)
    800024ec:	ff5ff06f          	j	800024e0 <_ZN15MemoryAllocator8mem_freeEPv+0x54>
    bool found = false;
    800024f0:	00000793          	li	a5,0
    if (!found) return -3;
    800024f4:	0e078e63          	beqz	a5,800025f0 <_ZN15MemoryAllocator8mem_freeEPv+0x164>
    removeNode(segToFree, segToFree -> next, false);
    800024f8:	00000613          	li	a2,0
    800024fc:	ff893583          	ld	a1,-8(s2)
    80002500:	00048513          	mv	a0,s1
    80002504:	00000097          	auipc	ra,0x0
    80002508:	d58080e7          	jalr	-680(ra) # 8000225c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
    if (!freeSegHead) {
    8000250c:	00009797          	auipc	a5,0x9
    80002510:	67c7b783          	ld	a5,1660(a5) # 8000bb88 <_ZN15MemoryAllocator11freeSegHeadE>
    80002514:	06078a63          	beqz	a5,80002588 <_ZN15MemoryAllocator8mem_freeEPv+0xfc>
    else if ((char*) addr < (char*) freeSegHead) {
    80002518:	08f4e463          	bltu	s1,a5,800025a0 <_ZN15MemoryAllocator8mem_freeEPv+0x114>
        for (tmp = freeSegHead; tmp -> next && (char*) (tmp -> next) < (char*) segToFree; tmp = tmp -> next);
    8000251c:	00078993          	mv	s3,a5
    80002520:	0107b783          	ld	a5,16(a5)
    80002524:	00078463          	beqz	a5,8000252c <_ZN15MemoryAllocator8mem_freeEPv+0xa0>
    80002528:	fe97eae3          	bltu	a5,s1,8000251c <_ZN15MemoryAllocator8mem_freeEPv+0x90>
        segToFree -> prev = tmp;
    8000252c:	ff393823          	sd	s3,-16(s2)
        segToFree -> next = tmp -> next;
    80002530:	0109b783          	ld	a5,16(s3)
    80002534:	fef93c23          	sd	a5,-8(s2)
        tmp -> next = segToFree;
    80002538:	0099b823          	sd	s1,16(s3)
        if (segToFree -> next) segToFree -> next -> prev = segToFree;
    8000253c:	ff893783          	ld	a5,-8(s2)
    80002540:	00078463          	beqz	a5,80002548 <_ZN15MemoryAllocator8mem_freeEPv+0xbc>
    80002544:	0097b423          	sd	s1,8(a5)
        tryToJoin(segToFree);
    80002548:	00048513          	mv	a0,s1
    8000254c:	00000097          	auipc	ra,0x0
    80002550:	ef0080e7          	jalr	-272(ra) # 8000243c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
        tryToJoin(tmp);
    80002554:	00098513          	mv	a0,s3
    80002558:	00000097          	auipc	ra,0x0
    8000255c:	ee4080e7          	jalr	-284(ra) # 8000243c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    80002560:	00000513          	li	a0,0
}
    80002564:	02813083          	ld	ra,40(sp)
    80002568:	02013403          	ld	s0,32(sp)
    8000256c:	01813483          	ld	s1,24(sp)
    80002570:	01013903          	ld	s2,16(sp)
    80002574:	00813983          	ld	s3,8(sp)
    80002578:	03010113          	addi	sp,sp,48
    8000257c:	00008067          	ret
            found = true;
    80002580:	00100793          	li	a5,1
    80002584:	f71ff06f          	j	800024f4 <_ZN15MemoryAllocator8mem_freeEPv+0x68>
        freeSegHead = segToFree;
    80002588:	00009797          	auipc	a5,0x9
    8000258c:	6097b023          	sd	s1,1536(a5) # 8000bb88 <_ZN15MemoryAllocator11freeSegHeadE>
        segToFree -> prev = segToFree -> next = nullptr;
    80002590:	fe093c23          	sd	zero,-8(s2)
    80002594:	fe093823          	sd	zero,-16(s2)
    return 0;
    80002598:	00000513          	li	a0,0
    8000259c:	fc9ff06f          	j	80002564 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
        segToFree -> prev = nullptr;
    800025a0:	fe093823          	sd	zero,-16(s2)
        segToFree -> next = freeSegHead;
    800025a4:	00009797          	auipc	a5,0x9
    800025a8:	5e478793          	addi	a5,a5,1508 # 8000bb88 <_ZN15MemoryAllocator11freeSegHeadE>
    800025ac:	0007b703          	ld	a4,0(a5)
    800025b0:	fee93c23          	sd	a4,-8(s2)
        freeSegHead -> prev = segToFree;
    800025b4:	00973423          	sd	s1,8(a4)
        freeSegHead = segToFree;
    800025b8:	0097b023          	sd	s1,0(a5)
        tryToJoin(segToFree);
    800025bc:	00048513          	mv	a0,s1
    800025c0:	00000097          	auipc	ra,0x0
    800025c4:	e7c080e7          	jalr	-388(ra) # 8000243c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    800025c8:	00000513          	li	a0,0
    800025cc:	f99ff06f          	j	80002564 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    800025d0:	fff00513          	li	a0,-1
}
    800025d4:	00008067          	ret
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    800025d8:	fff00513          	li	a0,-1
    800025dc:	f89ff06f          	j	80002564 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    800025e0:	fff00513          	li	a0,-1
    800025e4:	f81ff06f          	j	80002564 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!usedSegHead) return -2;
    800025e8:	ffe00513          	li	a0,-2
    800025ec:	f79ff06f          	j	80002564 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!found) return -3;
    800025f0:	ffd00513          	li	a0,-3
    800025f4:	f71ff06f          	j	80002564 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>

00000000800025f8 <_ZN15MemoryAllocator5printEv>:

void MemoryAllocator::print() {
    800025f8:	fe010113          	addi	sp,sp,-32
    800025fc:	00113c23          	sd	ra,24(sp)
    80002600:	00813823          	sd	s0,16(sp)
    80002604:	00913423          	sd	s1,8(sp)
    80002608:	02010413          	addi	s0,sp,32
    __putc('\n');
    8000260c:	00a00513          	li	a0,10
    80002610:	00006097          	auipc	ra,0x6
    80002614:	52c080e7          	jalr	1324(ra) # 80008b3c <__putc>
    __putc('M');
    80002618:	04d00513          	li	a0,77
    8000261c:	00006097          	auipc	ra,0x6
    80002620:	520080e7          	jalr	1312(ra) # 80008b3c <__putc>
    __putc(':');
    80002624:	03a00513          	li	a0,58
    80002628:	00006097          	auipc	ra,0x6
    8000262c:	514080e7          	jalr	1300(ra) # 80008b3c <__putc>
    __putc(' ');
    80002630:	02000513          	li	a0,32
    80002634:	00006097          	auipc	ra,0x6
    80002638:	508080e7          	jalr	1288(ra) # 80008b3c <__putc>
    for (MemSeg* tmp = freeSegHead; tmp; tmp = tmp -> next) __putc('f');
    8000263c:	00009497          	auipc	s1,0x9
    80002640:	54c4b483          	ld	s1,1356(s1) # 8000bb88 <_ZN15MemoryAllocator11freeSegHeadE>
    80002644:	00048c63          	beqz	s1,8000265c <_ZN15MemoryAllocator5printEv+0x64>
    80002648:	06600513          	li	a0,102
    8000264c:	00006097          	auipc	ra,0x6
    80002650:	4f0080e7          	jalr	1264(ra) # 80008b3c <__putc>
    80002654:	0104b483          	ld	s1,16(s1)
    80002658:	fedff06f          	j	80002644 <_ZN15MemoryAllocator5printEv+0x4c>
    __putc('\t');
    8000265c:	00900513          	li	a0,9
    80002660:	00006097          	auipc	ra,0x6
    80002664:	4dc080e7          	jalr	1244(ra) # 80008b3c <__putc>
    for (MemSeg* tmp = usedSegHead; tmp; tmp = tmp -> next) __putc('u');
    80002668:	00009497          	auipc	s1,0x9
    8000266c:	5284b483          	ld	s1,1320(s1) # 8000bb90 <_ZN15MemoryAllocator11usedSegHeadE>
    80002670:	00048c63          	beqz	s1,80002688 <_ZN15MemoryAllocator5printEv+0x90>
    80002674:	07500513          	li	a0,117
    80002678:	00006097          	auipc	ra,0x6
    8000267c:	4c4080e7          	jalr	1220(ra) # 80008b3c <__putc>
    80002680:	0104b483          	ld	s1,16(s1)
    80002684:	fedff06f          	j	80002670 <_ZN15MemoryAllocator5printEv+0x78>
}
    80002688:	01813083          	ld	ra,24(sp)
    8000268c:	01013403          	ld	s0,16(sp)
    80002690:	00813483          	ld	s1,8(sp)
    80002694:	02010113          	addi	sp,sp,32
    80002698:	00008067          	ret

000000008000269c <_ZN15MemoryAllocator20get_number_of_blocksEm>:

size_t MemoryAllocator::get_number_of_blocks(size_t size) {
    8000269c:	ff010113          	addi	sp,sp,-16
    800026a0:	00813423          	sd	s0,8(sp)
    800026a4:	01010413          	addi	s0,sp,16
    return (size + sizeof(MemoryAllocator::MemSeg) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    800026a8:	05750513          	addi	a0,a0,87
}
    800026ac:	00655513          	srli	a0,a0,0x6
    800026b0:	00813403          	ld	s0,8(sp)
    800026b4:	01010113          	addi	sp,sp,16
    800026b8:	00008067          	ret

00000000800026bc <_ZN13BoundedBufferC1Ev>:
#include "../h/bounded_bufffer.hpp"

BoundedBuffer::BoundedBuffer() {
    800026bc:	fe010113          	addi	sp,sp,-32
    800026c0:	00113c23          	sd	ra,24(sp)
    800026c4:	00813823          	sd	s0,16(sp)
    800026c8:	00913423          	sd	s1,8(sp)
    800026cc:	02010413          	addi	s0,sp,32
    800026d0:	00050493          	mv	s1,a0
    800026d4:	3e800793          	li	a5,1000
    800026d8:	00f52023          	sw	a5,0(a0)
    800026dc:	00052223          	sw	zero,4(a0)
    800026e0:	00052423          	sw	zero,8(a0)
    Sem::open(&item_available, 0);
    800026e4:	00000593          	li	a1,0
    800026e8:	01850513          	addi	a0,a0,24
    800026ec:	fffff097          	auipc	ra,0xfffff
    800026f0:	034080e7          	jalr	52(ra) # 80001720 <_ZN3Sem4openEPPS_j>
    Sem::open(&space_available, CAPACITY);
    800026f4:	3e800593          	li	a1,1000
    800026f8:	01048513          	addi	a0,s1,16
    800026fc:	fffff097          	auipc	ra,0xfffff
    80002700:	024080e7          	jalr	36(ra) # 80001720 <_ZN3Sem4openEPPS_j>
}
    80002704:	01813083          	ld	ra,24(sp)
    80002708:	01013403          	ld	s0,16(sp)
    8000270c:	00813483          	ld	s1,8(sp)
    80002710:	02010113          	addi	sp,sp,32
    80002714:	00008067          	ret

0000000080002718 <_ZN13BoundedBufferD1Ev>:

BoundedBuffer::~BoundedBuffer() {
    80002718:	fe010113          	addi	sp,sp,-32
    8000271c:	00113c23          	sd	ra,24(sp)
    80002720:	00813823          	sd	s0,16(sp)
    80002724:	00913423          	sd	s1,8(sp)
    80002728:	02010413          	addi	s0,sp,32
    8000272c:	00050493          	mv	s1,a0
    item_available -> close();
    80002730:	01853503          	ld	a0,24(a0)
    80002734:	fffff097          	auipc	ra,0xfffff
    80002738:	060080e7          	jalr	96(ra) # 80001794 <_ZN3Sem5closeEv>
    space_available -> close();
    8000273c:	0104b503          	ld	a0,16(s1)
    80002740:	fffff097          	auipc	ra,0xfffff
    80002744:	054080e7          	jalr	84(ra) # 80001794 <_ZN3Sem5closeEv>
}
    80002748:	01813083          	ld	ra,24(sp)
    8000274c:	01013403          	ld	s0,16(sp)
    80002750:	00813483          	ld	s1,8(sp)
    80002754:	02010113          	addi	sp,sp,32
    80002758:	00008067          	ret

000000008000275c <_ZN13BoundedBuffernwEm>:

void *BoundedBuffer::operator new(size_t size) {
    8000275c:	ff010113          	addi	sp,sp,-16
    80002760:	00113423          	sd	ra,8(sp)
    80002764:	00813023          	sd	s0,0(sp)
    80002768:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    8000276c:	00000097          	auipc	ra,0x0
    80002770:	f30080e7          	jalr	-208(ra) # 8000269c <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80002774:	00000097          	auipc	ra,0x0
    80002778:	b2c080e7          	jalr	-1236(ra) # 800022a0 <_ZN15MemoryAllocator9mem_allocEm>
}
    8000277c:	00813083          	ld	ra,8(sp)
    80002780:	00013403          	ld	s0,0(sp)
    80002784:	01010113          	addi	sp,sp,16
    80002788:	00008067          	ret

000000008000278c <_ZN13BoundedBufferdlEPv>:

void BoundedBuffer::operator delete(void *addr) {
    8000278c:	ff010113          	addi	sp,sp,-16
    80002790:	00113423          	sd	ra,8(sp)
    80002794:	00813023          	sd	s0,0(sp)
    80002798:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    8000279c:	00000097          	auipc	ra,0x0
    800027a0:	cf0080e7          	jalr	-784(ra) # 8000248c <_ZN15MemoryAllocator8mem_freeEPv>
}
    800027a4:	00813083          	ld	ra,8(sp)
    800027a8:	00013403          	ld	s0,0(sp)
    800027ac:	01010113          	addi	sp,sp,16
    800027b0:	00008067          	ret

00000000800027b4 <_ZN13BoundedBuffer4putcEc>:

void BoundedBuffer::putc(char c) {
    800027b4:	fe010113          	addi	sp,sp,-32
    800027b8:	00113c23          	sd	ra,24(sp)
    800027bc:	00813823          	sd	s0,16(sp)
    800027c0:	00913423          	sd	s1,8(sp)
    800027c4:	01213023          	sd	s2,0(sp)
    800027c8:	02010413          	addi	s0,sp,32
    800027cc:	00050493          	mv	s1,a0
    800027d0:	00058913          	mv	s2,a1
    space_available -> wait();
    800027d4:	01053503          	ld	a0,16(a0)
    800027d8:	fffff097          	auipc	ra,0xfffff
    800027dc:	044080e7          	jalr	68(ra) # 8000181c <_ZN3Sem4waitEv>
    array[tail] = c;
    800027e0:	0084a783          	lw	a5,8(s1)
    800027e4:	00f48733          	add	a4,s1,a5
    800027e8:	03270023          	sb	s2,32(a4)
    tail = (tail + 1) % capacity;
    800027ec:	0017879b          	addiw	a5,a5,1
    800027f0:	0004a703          	lw	a4,0(s1)
    800027f4:	02e7e7bb          	remw	a5,a5,a4
    800027f8:	00f4a423          	sw	a5,8(s1)
    item_available -> signal();
    800027fc:	0184b503          	ld	a0,24(s1)
    80002800:	fffff097          	auipc	ra,0xfffff
    80002804:	0c4080e7          	jalr	196(ra) # 800018c4 <_ZN3Sem6signalEv>
}
    80002808:	01813083          	ld	ra,24(sp)
    8000280c:	01013403          	ld	s0,16(sp)
    80002810:	00813483          	ld	s1,8(sp)
    80002814:	00013903          	ld	s2,0(sp)
    80002818:	02010113          	addi	sp,sp,32
    8000281c:	00008067          	ret

0000000080002820 <_ZN13BoundedBuffer4getcEv>:

char BoundedBuffer::getc() {
    80002820:	fe010113          	addi	sp,sp,-32
    80002824:	00113c23          	sd	ra,24(sp)
    80002828:	00813823          	sd	s0,16(sp)
    8000282c:	00913423          	sd	s1,8(sp)
    80002830:	01213023          	sd	s2,0(sp)
    80002834:	02010413          	addi	s0,sp,32
    80002838:	00050493          	mv	s1,a0
    item_available -> wait();
    8000283c:	01853503          	ld	a0,24(a0)
    80002840:	fffff097          	auipc	ra,0xfffff
    80002844:	fdc080e7          	jalr	-36(ra) # 8000181c <_ZN3Sem4waitEv>
    char c = array[head];
    80002848:	0044a783          	lw	a5,4(s1)
    8000284c:	00f48733          	add	a4,s1,a5
    80002850:	02074903          	lbu	s2,32(a4)
    head = (head + 1) % capacity;
    80002854:	0017879b          	addiw	a5,a5,1
    80002858:	0004a703          	lw	a4,0(s1)
    8000285c:	02e7e7bb          	remw	a5,a5,a4
    80002860:	00f4a223          	sw	a5,4(s1)
    space_available -> signal();
    80002864:	0104b503          	ld	a0,16(s1)
    80002868:	fffff097          	auipc	ra,0xfffff
    8000286c:	05c080e7          	jalr	92(ra) # 800018c4 <_ZN3Sem6signalEv>
    return c;
}
    80002870:	00090513          	mv	a0,s2
    80002874:	01813083          	ld	ra,24(sp)
    80002878:	01013403          	ld	s0,16(sp)
    8000287c:	00813483          	ld	s1,8(sp)
    80002880:	00013903          	ld	s2,0(sp)
    80002884:	02010113          	addi	sp,sp,32
    80002888:	00008067          	ret

000000008000288c <_ZN9Scheduler3putEP3TCB>:

TCB* Scheduler::head_ready = nullptr;
TCB* Scheduler::tail_ready = nullptr;
TCB* Scheduler::head_sleeping = nullptr;

void Scheduler::put(TCB *thread) {
    8000288c:	fe010113          	addi	sp,sp,-32
    80002890:	00113c23          	sd	ra,24(sp)
    80002894:	00813823          	sd	s0,16(sp)
    80002898:	00913423          	sd	s1,8(sp)
    8000289c:	02010413          	addi	s0,sp,32
    800028a0:	00050493          	mv	s1,a0
    if (tail_ready) {
    800028a4:	00009517          	auipc	a0,0x9
    800028a8:	2fc53503          	ld	a0,764(a0) # 8000bba0 <_ZN9Scheduler10tail_readyE>
    800028ac:	02051463          	bnez	a0,800028d4 <_ZN9Scheduler3putEP3TCB+0x48>
        tail_ready -> set_next_ready(thread);
        tail_ready = thread;
        return;
    }
    head_ready = tail_ready = thread;
    800028b0:	00009797          	auipc	a5,0x9
    800028b4:	2f078793          	addi	a5,a5,752 # 8000bba0 <_ZN9Scheduler10tail_readyE>
    800028b8:	0097b023          	sd	s1,0(a5)
    800028bc:	0097b423          	sd	s1,8(a5)
}
    800028c0:	01813083          	ld	ra,24(sp)
    800028c4:	01013403          	ld	s0,16(sp)
    800028c8:	00813483          	ld	s1,8(sp)
    800028cc:	02010113          	addi	sp,sp,32
    800028d0:	00008067          	ret
        tail_ready -> set_next_ready(thread);
    800028d4:	00048593          	mv	a1,s1
    800028d8:	00001097          	auipc	ra,0x1
    800028dc:	86c080e7          	jalr	-1940(ra) # 80003144 <_ZN3TCB14set_next_readyEPS_>
        tail_ready = thread;
    800028e0:	00009797          	auipc	a5,0x9
    800028e4:	2c97b023          	sd	s1,704(a5) # 8000bba0 <_ZN9Scheduler10tail_readyE>
        return;
    800028e8:	fd9ff06f          	j	800028c0 <_ZN9Scheduler3putEP3TCB+0x34>

00000000800028ec <_ZN9Scheduler3getEv>:

TCB* Scheduler::get() {
    800028ec:	fe010113          	addi	sp,sp,-32
    800028f0:	00113c23          	sd	ra,24(sp)
    800028f4:	00813823          	sd	s0,16(sp)
    800028f8:	00913423          	sd	s1,8(sp)
    800028fc:	02010413          	addi	s0,sp,32
    if (!head_ready) return nullptr;
    80002900:	00009497          	auipc	s1,0x9
    80002904:	2a84b483          	ld	s1,680(s1) # 8000bba8 <_ZN9Scheduler10head_readyE>
    80002908:	02048463          	beqz	s1,80002930 <_ZN9Scheduler3getEv+0x44>
    TCB *head = head_ready;
    TCB *tmp = head;
    head_ready = head_ready -> get_next_ready();
    8000290c:	00048513          	mv	a0,s1
    80002910:	00001097          	auipc	ra,0x1
    80002914:	818080e7          	jalr	-2024(ra) # 80003128 <_ZNK3TCB14get_next_readyEv>
    80002918:	00009797          	auipc	a5,0x9
    8000291c:	28a7b823          	sd	a0,656(a5) # 8000bba8 <_ZN9Scheduler10head_readyE>
    tmp -> set_next_ready(nullptr);
    80002920:	00000593          	li	a1,0
    80002924:	00048513          	mv	a0,s1
    80002928:	00001097          	auipc	ra,0x1
    8000292c:	81c080e7          	jalr	-2020(ra) # 80003144 <_ZN3TCB14set_next_readyEPS_>
    return head;
}
    80002930:	00048513          	mv	a0,s1
    80002934:	01813083          	ld	ra,24(sp)
    80002938:	01013403          	ld	s0,16(sp)
    8000293c:	00813483          	ld	s1,8(sp)
    80002940:	02010113          	addi	sp,sp,32
    80002944:	00008067          	ret

0000000080002948 <_ZN9Scheduler13change_threadEv>:
    thread -> set_next_sleeping(nullptr);
    change_thread();
    return 0;
}

void Scheduler::change_thread() {
    80002948:	fe010113          	addi	sp,sp,-32
    8000294c:	00113c23          	sd	ra,24(sp)
    80002950:	00813823          	sd	s0,16(sp)
    80002954:	00913423          	sd	s1,8(sp)
    80002958:	01213023          	sd	s2,0(sp)
    8000295c:	02010413          	addi	s0,sp,32
    TCB* old = TCB::running;
    80002960:	00009497          	auipc	s1,0x9
    80002964:	1b84b483          	ld	s1,440(s1) # 8000bb18 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002968:	0004b903          	ld	s2,0(s1)
    TCB::running = Scheduler::get();
    8000296c:	00000097          	auipc	ra,0x0
    80002970:	f80080e7          	jalr	-128(ra) # 800028ec <_ZN9Scheduler3getEv>
    80002974:	00a4b023          	sd	a0,0(s1)
    if (old != TCB::running) TCB::yield(old, TCB::running);
    80002978:	00a90a63          	beq	s2,a0,8000298c <_ZN9Scheduler13change_threadEv+0x44>
    8000297c:	00050593          	mv	a1,a0
    80002980:	00090513          	mv	a0,s2
    80002984:	00000097          	auipc	ra,0x0
    80002988:	6dc080e7          	jalr	1756(ra) # 80003060 <_ZN3TCB5yieldEPS_S0_>
}
    8000298c:	01813083          	ld	ra,24(sp)
    80002990:	01013403          	ld	s0,16(sp)
    80002994:	00813483          	ld	s1,8(sp)
    80002998:	00013903          	ld	s2,0(sp)
    8000299c:	02010113          	addi	sp,sp,32
    800029a0:	00008067          	ret

00000000800029a4 <_ZN9Scheduler12put_to_sleepEm>:
int Scheduler::put_to_sleep(time_t time) {
    800029a4:	fc010113          	addi	sp,sp,-64
    800029a8:	02113c23          	sd	ra,56(sp)
    800029ac:	02813823          	sd	s0,48(sp)
    800029b0:	02913423          	sd	s1,40(sp)
    800029b4:	03213023          	sd	s2,32(sp)
    800029b8:	01313c23          	sd	s3,24(sp)
    800029bc:	01413823          	sd	s4,16(sp)
    800029c0:	01513423          	sd	s5,8(sp)
    800029c4:	04010413          	addi	s0,sp,64
    800029c8:	00050993          	mv	s3,a0
    TCB* thread = TCB::running;
    800029cc:	00009797          	auipc	a5,0x9
    800029d0:	14c7b783          	ld	a5,332(a5) # 8000bb18 <_GLOBAL_OFFSET_TABLE_+0x50>
    800029d4:	0007ba83          	ld	s5,0(a5)
    thread -> set_status(TCB::Status::SLEEPING);
    800029d8:	00100593          	li	a1,1
    800029dc:	000a8513          	mv	a0,s5
    800029e0:	00000097          	auipc	ra,0x0
    800029e4:	7f0080e7          	jalr	2032(ra) # 800031d0 <_ZN3TCB10set_statusENS_6StatusE>
    if (!head_sleeping) {
    800029e8:	00009497          	auipc	s1,0x9
    800029ec:	1c84b483          	ld	s1,456(s1) # 8000bbb0 <_ZN9Scheduler13head_sleepingE>
    800029f0:	02048e63          	beqz	s1,80002a2c <_ZN9Scheduler12put_to_sleepEm+0x88>
    time_t current_time = 0;
    800029f4:	00000913          	li	s2,0
    TCB* tmp = head_sleeping, *prev = nullptr;
    800029f8:	00000a13          	li	s4,0
    while (tmp) {
    800029fc:	0e048c63          	beqz	s1,80002af4 <_ZN9Scheduler12put_to_sleepEm+0x150>
        current_time += tmp -> get_time_to_sleep();
    80002a00:	00048513          	mv	a0,s1
    80002a04:	00000097          	auipc	ra,0x0
    80002a08:	7b0080e7          	jalr	1968(ra) # 800031b4 <_ZNK3TCB17get_time_to_sleepEv>
    80002a0c:	00a90933          	add	s2,s2,a0
        if (current_time > time) {
    80002a10:	0529e863          	bltu	s3,s2,80002a60 <_ZN9Scheduler12put_to_sleepEm+0xbc>
        tmp = tmp -> get_next_sleeping();
    80002a14:	00048513          	mv	a0,s1
    80002a18:	00000097          	auipc	ra,0x0
    80002a1c:	764080e7          	jalr	1892(ra) # 8000317c <_ZNK3TCB17get_next_sleepingEv>
        prev = tmp;
    80002a20:	00048a13          	mv	s4,s1
        tmp = tmp -> get_next_sleeping();
    80002a24:	00050493          	mv	s1,a0
    while (tmp) {
    80002a28:	fd5ff06f          	j	800029fc <_ZN9Scheduler12put_to_sleepEm+0x58>
        head_sleeping = thread;
    80002a2c:	00009797          	auipc	a5,0x9
    80002a30:	1957b223          	sd	s5,388(a5) # 8000bbb0 <_ZN9Scheduler13head_sleepingE>
        thread -> set_next_sleeping(nullptr);
    80002a34:	00000593          	li	a1,0
    80002a38:	000a8513          	mv	a0,s5
    80002a3c:	00000097          	auipc	ra,0x0
    80002a40:	724080e7          	jalr	1828(ra) # 80003160 <_ZN3TCB17set_next_sleepingEPS_>
        thread -> set_time_to_sleep(time);
    80002a44:	00098593          	mv	a1,s3
    80002a48:	000a8513          	mv	a0,s5
    80002a4c:	00000097          	auipc	ra,0x0
    80002a50:	74c080e7          	jalr	1868(ra) # 80003198 <_ZN3TCB17set_time_to_sleepEm>
        change_thread();
    80002a54:	00000097          	auipc	ra,0x0
    80002a58:	ef4080e7          	jalr	-268(ra) # 80002948 <_ZN9Scheduler13change_threadEv>
        return 0;
    80002a5c:	0d00006f          	j	80002b2c <_ZN9Scheduler12put_to_sleepEm+0x188>
            time_t new_time = time - (current_time - tmp -> get_time_to_sleep());
    80002a60:	00048513          	mv	a0,s1
    80002a64:	00000097          	auipc	ra,0x0
    80002a68:	750080e7          	jalr	1872(ra) # 800031b4 <_ZNK3TCB17get_time_to_sleepEv>
    80002a6c:	41250933          	sub	s2,a0,s2
    80002a70:	013909b3          	add	s3,s2,s3
            thread -> set_time_to_sleep(new_time);
    80002a74:	00098593          	mv	a1,s3
    80002a78:	000a8513          	mv	a0,s5
    80002a7c:	00000097          	auipc	ra,0x0
    80002a80:	71c080e7          	jalr	1820(ra) # 80003198 <_ZN3TCB17set_time_to_sleepEm>
            thread -> set_next_sleeping(tmp);
    80002a84:	00048593          	mv	a1,s1
    80002a88:	000a8513          	mv	a0,s5
    80002a8c:	00000097          	auipc	ra,0x0
    80002a90:	6d4080e7          	jalr	1748(ra) # 80003160 <_ZN3TCB17set_next_sleepingEPS_>
            if (prev) prev -> set_next_sleeping(thread);
    80002a94:	040a0463          	beqz	s4,80002adc <_ZN9Scheduler12put_to_sleepEm+0x138>
    80002a98:	000a8593          	mv	a1,s5
    80002a9c:	000a0513          	mv	a0,s4
    80002aa0:	00000097          	auipc	ra,0x0
    80002aa4:	6c0080e7          	jalr	1728(ra) # 80003160 <_ZN3TCB17set_next_sleepingEPS_>
            for (TCB* curr = tmp; curr; curr = curr -> get_next_sleeping())
    80002aa8:	04048063          	beqz	s1,80002ae8 <_ZN9Scheduler12put_to_sleepEm+0x144>
                curr -> set_time_to_sleep(curr -> get_time_to_sleep() - new_time);
    80002aac:	00048513          	mv	a0,s1
    80002ab0:	00000097          	auipc	ra,0x0
    80002ab4:	704080e7          	jalr	1796(ra) # 800031b4 <_ZNK3TCB17get_time_to_sleepEv>
    80002ab8:	413505b3          	sub	a1,a0,s3
    80002abc:	00048513          	mv	a0,s1
    80002ac0:	00000097          	auipc	ra,0x0
    80002ac4:	6d8080e7          	jalr	1752(ra) # 80003198 <_ZN3TCB17set_time_to_sleepEm>
            for (TCB* curr = tmp; curr; curr = curr -> get_next_sleeping())
    80002ac8:	00048513          	mv	a0,s1
    80002acc:	00000097          	auipc	ra,0x0
    80002ad0:	6b0080e7          	jalr	1712(ra) # 8000317c <_ZNK3TCB17get_next_sleepingEv>
    80002ad4:	00050493          	mv	s1,a0
    80002ad8:	fd1ff06f          	j	80002aa8 <_ZN9Scheduler12put_to_sleepEm+0x104>
            else head_sleeping = thread;
    80002adc:	00009797          	auipc	a5,0x9
    80002ae0:	0d57ba23          	sd	s5,212(a5) # 8000bbb0 <_ZN9Scheduler13head_sleepingE>
    80002ae4:	fc5ff06f          	j	80002aa8 <_ZN9Scheduler12put_to_sleepEm+0x104>
            change_thread();
    80002ae8:	00000097          	auipc	ra,0x0
    80002aec:	e60080e7          	jalr	-416(ra) # 80002948 <_ZN9Scheduler13change_threadEv>
            return 0;
    80002af0:	03c0006f          	j	80002b2c <_ZN9Scheduler12put_to_sleepEm+0x188>
    thread -> set_time_to_sleep(time - current_time);
    80002af4:	412985b3          	sub	a1,s3,s2
    80002af8:	000a8513          	mv	a0,s5
    80002afc:	00000097          	auipc	ra,0x0
    80002b00:	69c080e7          	jalr	1692(ra) # 80003198 <_ZN3TCB17set_time_to_sleepEm>
    prev -> set_next_sleeping(thread);
    80002b04:	000a8593          	mv	a1,s5
    80002b08:	000a0513          	mv	a0,s4
    80002b0c:	00000097          	auipc	ra,0x0
    80002b10:	654080e7          	jalr	1620(ra) # 80003160 <_ZN3TCB17set_next_sleepingEPS_>
    thread -> set_next_sleeping(nullptr);
    80002b14:	00000593          	li	a1,0
    80002b18:	000a8513          	mv	a0,s5
    80002b1c:	00000097          	auipc	ra,0x0
    80002b20:	644080e7          	jalr	1604(ra) # 80003160 <_ZN3TCB17set_next_sleepingEPS_>
    change_thread();
    80002b24:	00000097          	auipc	ra,0x0
    80002b28:	e24080e7          	jalr	-476(ra) # 80002948 <_ZN9Scheduler13change_threadEv>
}
    80002b2c:	00000513          	li	a0,0
    80002b30:	03813083          	ld	ra,56(sp)
    80002b34:	03013403          	ld	s0,48(sp)
    80002b38:	02813483          	ld	s1,40(sp)
    80002b3c:	02013903          	ld	s2,32(sp)
    80002b40:	01813983          	ld	s3,24(sp)
    80002b44:	01013a03          	ld	s4,16(sp)
    80002b48:	00813a83          	ld	s5,8(sp)
    80002b4c:	04010113          	addi	sp,sp,64
    80002b50:	00008067          	ret

0000000080002b54 <_ZN5RiscV10popSppSpieEb>:
    SUPERVISOR_INTERRUPT = 0x0000000000000009UL,
};

/// used in thread wrapper function when initializing thread because thread stack is empty
/// pc = (sepc = ra)
void RiscV::popSppSpie(bool return_to_user_mode) {
    80002b54:	ff010113          	addi	sp,sp,-16
    80002b58:	00813423          	sd	s0,8(sp)
    80002b5c:	01010413          	addi	s0,sp,16
    if (return_to_user_mode) mc_sstatus(SSTATUS_SPP);
    80002b60:	00050663          	beqz	a0,80002b6c <_ZN5RiscV10popSppSpieEb+0x18>
}

inline void RiscV::mc_sstatus(uint64 mask) {
    __asm__ volatile ("csrc sstatus, %0" : : "r"(mask));
    80002b64:	10000793          	li	a5,256
    80002b68:	1007b073          	csrc	sstatus,a5
    __asm__ volatile("csrw sepc, ra");
    80002b6c:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80002b70:	10200073          	sret
}
    80002b74:	00813403          	ld	s0,8(sp)
    80002b78:	01010113          	addi	sp,sp,16
    80002b7c:	00008067          	ret

0000000080002b80 <_ZN5RiscV22handle_supervisor_trapEv>:

/// interrupt handler
void RiscV::handle_supervisor_trap() {
    80002b80:	f9010113          	addi	sp,sp,-112
    80002b84:	06113423          	sd	ra,104(sp)
    80002b88:	06813023          	sd	s0,96(sp)
    80002b8c:	04913c23          	sd	s1,88(sp)
    80002b90:	05213823          	sd	s2,80(sp)
    80002b94:	05313423          	sd	s3,72(sp)
    80002b98:	07010413          	addi	s0,sp,112
    /// read values from registers
    uint64 syscall_code, a1, a2, a3, a4;
    __asm__ volatile("mv %0, a0" : "=r"(syscall_code));
    80002b9c:	00050813          	mv	a6,a0
    __asm__ volatile("mv %0, a1" : "=r"(a1));
    80002ba0:	00058513          	mv	a0,a1
    __asm__ volatile("mv %0, a2" : "=r"(a2));
    80002ba4:	00060593          	mv	a1,a2
    __asm__ volatile("mv %0, a3" : "=r"(a3));
    80002ba8:	00068613          	mv	a2,a3
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    80002bac:	00070693          	mv	a3,a4
    __asm__ volatile ("csrr %0, scause" : "=r"(scause));
    80002bb0:	142027f3          	csrr	a5,scause
    80002bb4:	f8f43c23          	sd	a5,-104(s0)
    return scause;
    80002bb8:	f9843703          	ld	a4,-104(s0)

    uint64 scause = read_scause();

    /// interrupt caused by Timer
    if (scause == SOFTWARE_INTERRUPT) {
    80002bbc:	fff00793          	li	a5,-1
    80002bc0:	03f79793          	slli	a5,a5,0x3f
    80002bc4:	00178793          	addi	a5,a5,1
    80002bc8:	04f70263          	beq	a4,a5,80002c0c <_ZN5RiscV22handle_supervisor_trapEv+0x8c>
            write_sepc(sepc);
        }
    }

    /// External interrupt (Console)
    else if (scause == HARDWARE_INTERRUPT) {
    80002bcc:	fff00793          	li	a5,-1
    80002bd0:	03f79793          	slli	a5,a5,0x3f
    80002bd4:	00978793          	addi	a5,a5,9
    80002bd8:	0ef70863          	beq	a4,a5,80002cc8 <_ZN5RiscV22handle_supervisor_trapEv+0x148>
        write_sepc(sepc);
        write_sstatus(sstatus);
    }

    /// illegal instruction
    else if (scause == INVALID_INTERRUPT) {
    80002bdc:	00200793          	li	a5,2
    80002be0:	16f70063          	beq	a4,a5,80002d40 <_ZN5RiscV22handle_supervisor_trapEv+0x1c0>
        __asm__ volatile("mv a0, %0" : : "r"(val));
        return;
    }

    /// interrupt from supervisor / user mode
    else if (scause == USER_INTERRUPT || scause == SUPERVISOR_INTERRUPT) {
    80002be4:	ff870713          	addi	a4,a4,-8
    80002be8:	00100793          	li	a5,1
    80002bec:	16e7f063          	bgeu	a5,a4,80002d4c <_ZN5RiscV22handle_supervisor_trapEv+0x1cc>
        }

        write_sepc(sepc);
        write_sstatus(sstatus);
    }
    80002bf0:	06813083          	ld	ra,104(sp)
    80002bf4:	06013403          	ld	s0,96(sp)
    80002bf8:	05813483          	ld	s1,88(sp)
    80002bfc:	05013903          	ld	s2,80(sp)
    80002c00:	04813983          	ld	s3,72(sp)
    80002c04:	07010113          	addi	sp,sp,112
    80002c08:	00008067          	ret
    __asm__ volatile ("csrc sip, %0" : : "r"(mask));
    80002c0c:	00200793          	li	a5,2
    80002c10:	1447b073          	csrc	sip,a5
        TCB* first_waiting = Scheduler::head_sleeping;
    80002c14:	00009797          	auipc	a5,0x9
    80002c18:	ed47b783          	ld	a5,-300(a5) # 8000bae8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002c1c:	0007b483          	ld	s1,0(a5)
        if (first_waiting) {
    80002c20:	04048463          	beqz	s1,80002c68 <_ZN5RiscV22handle_supervisor_trapEv+0xe8>
            --first_waiting -> time_to_sleep;
    80002c24:	0484b783          	ld	a5,72(s1)
    80002c28:	fff78793          	addi	a5,a5,-1
    80002c2c:	04f4b423          	sd	a5,72(s1)
            while (first_waiting && first_waiting -> time_to_sleep <= 0) {
    80002c30:	02048c63          	beqz	s1,80002c68 <_ZN5RiscV22handle_supervisor_trapEv+0xe8>
    80002c34:	0484b783          	ld	a5,72(s1)
    80002c38:	02079863          	bnez	a5,80002c68 <_ZN5RiscV22handle_supervisor_trapEv+0xe8>
                Scheduler::put(first_waiting);
    80002c3c:	00048513          	mv	a0,s1
    80002c40:	00000097          	auipc	ra,0x0
    80002c44:	c4c080e7          	jalr	-948(ra) # 8000288c <_ZN9Scheduler3putEP3TCB>
                first_waiting -> status = TCB::RUNNABLE;
    80002c48:	0004ac23          	sw	zero,24(s1)
                first_waiting = first_waiting -> next_sleeping;
    80002c4c:	0504b783          	ld	a5,80(s1)
                tmp -> next_sleeping = nullptr;
    80002c50:	0404b823          	sd	zero,80(s1)
                Scheduler::head_sleeping = first_waiting;
    80002c54:	00009717          	auipc	a4,0x9
    80002c58:	e9473703          	ld	a4,-364(a4) # 8000bae8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002c5c:	00f73023          	sd	a5,0(a4)
                first_waiting = first_waiting -> next_sleeping;
    80002c60:	00078493          	mv	s1,a5
            while (first_waiting && first_waiting -> time_to_sleep <= 0) {
    80002c64:	fcdff06f          	j	80002c30 <_ZN5RiscV22handle_supervisor_trapEv+0xb0>
        ++TCB::time_slice_counter;
    80002c68:	00009717          	auipc	a4,0x9
    80002c6c:	ea073703          	ld	a4,-352(a4) # 8000bb08 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002c70:	00073783          	ld	a5,0(a4)
    80002c74:	00178793          	addi	a5,a5,1
    80002c78:	00f73023          	sd	a5,0(a4)
        if (TCB::time_slice_counter >= TCB::running -> time_slice) {
    80002c7c:	00009717          	auipc	a4,0x9
    80002c80:	e9c73703          	ld	a4,-356(a4) # 8000bb18 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002c84:	00073703          	ld	a4,0(a4)
    80002c88:	03873703          	ld	a4,56(a4)
    80002c8c:	f6e7e2e3          	bltu	a5,a4,80002bf0 <_ZN5RiscV22handle_supervisor_trapEv+0x70>
    __asm__ volatile ("csrr %0, sepc" : "=r"(sepc));
    80002c90:	141027f3          	csrr	a5,sepc
    80002c94:	faf43423          	sd	a5,-88(s0)
    return sepc;
    80002c98:	fa843483          	ld	s1,-88(s0)
}

inline uint64 RiscV::read_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    80002c9c:	100027f3          	csrr	a5,sstatus
    80002ca0:	faf43023          	sd	a5,-96(s0)
    return sstatus;
    80002ca4:	fa043903          	ld	s2,-96(s0)
            TCB::time_slice_counter = 0;
    80002ca8:	00009797          	auipc	a5,0x9
    80002cac:	e607b783          	ld	a5,-416(a5) # 8000bb08 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002cb0:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80002cb4:	00000097          	auipc	ra,0x0
    80002cb8:	408080e7          	jalr	1032(ra) # 800030bc <_ZN3TCB8dispatchEv>
}

inline void RiscV::write_sstatus(uint64 val) {
    __asm__ volatile ("csrw sstatus, %0" : : "r"(val));
    80002cbc:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %0" : : "r"(val));
    80002cc0:	14149073          	csrw	sepc,s1
}
    80002cc4:	f2dff06f          	j	80002bf0 <_ZN5RiscV22handle_supervisor_trapEv+0x70>
    __asm__ volatile ("csrr %0, sepc" : "=r"(sepc));
    80002cc8:	141027f3          	csrr	a5,sepc
    80002ccc:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    80002cd0:	fb843983          	ld	s3,-72(s0)
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    80002cd4:	100027f3          	csrr	a5,sstatus
    80002cd8:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    80002cdc:	fb043903          	ld	s2,-80(s0)
        int irq = plic_claim();
    80002ce0:	00004097          	auipc	ra,0x4
    80002ce4:	5f4080e7          	jalr	1524(ra) # 800072d4 <plic_claim>
    80002ce8:	00050493          	mv	s1,a0
        if (irq == CONSOLE_IRQ) {
    80002cec:	00a00793          	li	a5,10
    80002cf0:	00f50e63          	beq	a0,a5,80002d0c <_ZN5RiscV22handle_supervisor_trapEv+0x18c>
        plic_complete(irq);
    80002cf4:	00048513          	mv	a0,s1
    80002cf8:	00004097          	auipc	ra,0x4
    80002cfc:	614080e7          	jalr	1556(ra) # 8000730c <plic_complete>
    __asm__ volatile ("csrw sepc, %0" : : "r"(val));
    80002d00:	14199073          	csrw	sepc,s3
    __asm__ volatile ("csrw sstatus, %0" : : "r"(val));
    80002d04:	10091073          	csrw	sstatus,s2
}
    80002d08:	ee9ff06f          	j	80002bf0 <_ZN5RiscV22handle_supervisor_trapEv+0x70>
            while (*(char *) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT) {
    80002d0c:	00009797          	auipc	a5,0x9
    80002d10:	dcc7b783          	ld	a5,-564(a5) # 8000bad8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002d14:	0007b783          	ld	a5,0(a5)
    80002d18:	0007c783          	lbu	a5,0(a5)
    80002d1c:	0017f793          	andi	a5,a5,1
    80002d20:	fc078ae3          	beqz	a5,80002cf4 <_ZN5RiscV22handle_supervisor_trapEv+0x174>
                char c = *(char *) CONSOLE_RX_DATA;
    80002d24:	00009797          	auipc	a5,0x9
    80002d28:	dac7b783          	ld	a5,-596(a5) # 8000bad0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002d2c:	0007b783          	ld	a5,0(a5)
                Con::putc_input(c);
    80002d30:	0007c503          	lbu	a0,0(a5)
    80002d34:	fffff097          	auipc	ra,0xfffff
    80002d38:	038080e7          	jalr	56(ra) # 80001d6c <_ZN3Con10putc_inputEc>
            while (*(char *) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT) {
    80002d3c:	fd1ff06f          	j	80002d0c <_ZN5RiscV22handle_supervisor_trapEv+0x18c>
        __asm__ volatile("mv a0, %0" : : "r"(val));
    80002d40:	00100793          	li	a5,1
    80002d44:	00078513          	mv	a0,a5
        return;
    80002d48:	ea9ff06f          	j	80002bf0 <_ZN5RiscV22handle_supervisor_trapEv+0x70>
    __asm__ volatile ("csrr %0, sepc" : "=r"(sepc));
    80002d4c:	141027f3          	csrr	a5,sepc
    80002d50:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80002d54:	fc843483          	ld	s1,-56(s0)
        uint64 sepc = read_sepc() + 4;
    80002d58:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    80002d5c:	100027f3          	csrr	a5,sstatus
    80002d60:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80002d64:	fc043903          	ld	s2,-64(s0)
        switch(syscall_code) {
    80002d68:	04200793          	li	a5,66
    80002d6c:	0307e463          	bltu	a5,a6,80002d94 <_ZN5RiscV22handle_supervisor_trapEv+0x214>
    80002d70:	00281813          	slli	a6,a6,0x2
    80002d74:	00006717          	auipc	a4,0x6
    80002d78:	2ac70713          	addi	a4,a4,684 # 80009020 <CONSOLE_STATUS+0x10>
    80002d7c:	00e80833          	add	a6,a6,a4
    80002d80:	00082783          	lw	a5,0(a6)
    80002d84:	00e787b3          	add	a5,a5,a4
    80002d88:	00078067          	jr	a5
                MemoryAllocator::mem_alloc((size_t) a1);
    80002d8c:	fffff097          	auipc	ra,0xfffff
    80002d90:	514080e7          	jalr	1300(ra) # 800022a0 <_ZN15MemoryAllocator9mem_allocEm>
    __asm__ volatile ("csrw sepc, %0" : : "r"(val));
    80002d94:	14149073          	csrw	sepc,s1
    __asm__ volatile ("csrw sstatus, %0" : : "r"(val));
    80002d98:	10091073          	csrw	sstatus,s2
}
    80002d9c:	e55ff06f          	j	80002bf0 <_ZN5RiscV22handle_supervisor_trapEv+0x70>
                MemoryAllocator::mem_free((void *) a1);
    80002da0:	fffff097          	auipc	ra,0xfffff
    80002da4:	6ec080e7          	jalr	1772(ra) # 8000248c <_ZN15MemoryAllocator8mem_freeEPv>
                break;
    80002da8:	fedff06f          	j	80002d94 <_ZN5RiscV22handle_supervisor_trapEv+0x214>
                TCB::thread_create((thread_t *) a1, (void (*)(void *)) a2, (void *) a3, (void *) a4);
    80002dac:	00000097          	auipc	ra,0x0
    80002db0:	598080e7          	jalr	1432(ra) # 80003344 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>
                break;
    80002db4:	fe1ff06f          	j	80002d94 <_ZN5RiscV22handle_supervisor_trapEv+0x214>
                TCB::thread_exit();
    80002db8:	00000097          	auipc	ra,0x0
    80002dbc:	434080e7          	jalr	1076(ra) # 800031ec <_ZN3TCB11thread_exitEv>
                break;
    80002dc0:	fd5ff06f          	j	80002d94 <_ZN5RiscV22handle_supervisor_trapEv+0x214>
                TCB::dispatch();
    80002dc4:	00000097          	auipc	ra,0x0
    80002dc8:	2f8080e7          	jalr	760(ra) # 800030bc <_ZN3TCB8dispatchEv>
                break;
    80002dcc:	fc9ff06f          	j	80002d94 <_ZN5RiscV22handle_supervisor_trapEv+0x214>
                Sem::open((sem_t *) a1, a2);
    80002dd0:	0005859b          	sext.w	a1,a1
    80002dd4:	fffff097          	auipc	ra,0xfffff
    80002dd8:	94c080e7          	jalr	-1716(ra) # 80001720 <_ZN3Sem4openEPPS_j>
                break;
    80002ddc:	fb9ff06f          	j	80002d94 <_ZN5RiscV22handle_supervisor_trapEv+0x214>
                ((sem_t) a1) -> close();
    80002de0:	fffff097          	auipc	ra,0xfffff
    80002de4:	9b4080e7          	jalr	-1612(ra) # 80001794 <_ZN3Sem5closeEv>
                break;
    80002de8:	fadff06f          	j	80002d94 <_ZN5RiscV22handle_supervisor_trapEv+0x214>
                ((sem_t) a1) -> wait();
    80002dec:	fffff097          	auipc	ra,0xfffff
    80002df0:	a30080e7          	jalr	-1488(ra) # 8000181c <_ZN3Sem4waitEv>
                break;
    80002df4:	fa1ff06f          	j	80002d94 <_ZN5RiscV22handle_supervisor_trapEv+0x214>
                ((sem_t) a1) -> signal();
    80002df8:	fffff097          	auipc	ra,0xfffff
    80002dfc:	acc080e7          	jalr	-1332(ra) # 800018c4 <_ZN3Sem6signalEv>
                break;
    80002e00:	f95ff06f          	j	80002d94 <_ZN5RiscV22handle_supervisor_trapEv+0x214>
                ((sem_t) a1) -> timedWait((time_t) a2);
    80002e04:	fffff097          	auipc	ra,0xfffff
    80002e08:	b18080e7          	jalr	-1256(ra) # 8000191c <_ZN3Sem9timedWaitEm>
                break;
    80002e0c:	f89ff06f          	j	80002d94 <_ZN5RiscV22handle_supervisor_trapEv+0x214>
                ((sem_t) a1) -> tryWait();
    80002e10:	fffff097          	auipc	ra,0xfffff
    80002e14:	b28080e7          	jalr	-1240(ra) # 80001938 <_ZN3Sem7tryWaitEv>
                break;
    80002e18:	f7dff06f          	j	80002d94 <_ZN5RiscV22handle_supervisor_trapEv+0x214>
                Scheduler::put_to_sleep((time_t) a1);
    80002e1c:	00000097          	auipc	ra,0x0
    80002e20:	b88080e7          	jalr	-1144(ra) # 800029a4 <_ZN9Scheduler12put_to_sleepEm>
                break;
    80002e24:	f71ff06f          	j	80002d94 <_ZN5RiscV22handle_supervisor_trapEv+0x214>
                Con::getc_input();
    80002e28:	fffff097          	auipc	ra,0xfffff
    80002e2c:	f78080e7          	jalr	-136(ra) # 80001da0 <_ZN3Con10getc_inputEv>
                break;
    80002e30:	f65ff06f          	j	80002d94 <_ZN5RiscV22handle_supervisor_trapEv+0x214>
                Con::putc_output((char) a1);
    80002e34:	0ff57513          	andi	a0,a0,255
    80002e38:	fffff097          	auipc	ra,0xfffff
    80002e3c:	ed0080e7          	jalr	-304(ra) # 80001d08 <_ZN3Con11putc_outputEc>
                break;
    80002e40:	f55ff06f          	j	80002d94 <_ZN5RiscV22handle_supervisor_trapEv+0x214>

0000000080002e44 <_ZN10ThreadList9get_firstEv>:

void ThreadList::push_back(TCB *thread) {
    tail = (head ? head : tail -> next) = new Node(thread);
}

TCB *ThreadList::get_first() {
    80002e44:	ff010113          	addi	sp,sp,-16
    80002e48:	00813423          	sd	s0,8(sp)
    80002e4c:	01010413          	addi	s0,sp,16
    return (head ? head -> data : nullptr);
    80002e50:	00053503          	ld	a0,0(a0)
    80002e54:	00050463          	beqz	a0,80002e5c <_ZN10ThreadList9get_firstEv+0x18>
    80002e58:	00053503          	ld	a0,0(a0)
}
    80002e5c:	00813403          	ld	s0,8(sp)
    80002e60:	01010113          	addi	sp,sp,16
    80002e64:	00008067          	ret

0000000080002e68 <_ZN10ThreadList4NodenwEm>:

void ThreadList::free() {
    while (get_first()) remove_first();
}

void *ThreadList::Node::operator new(size_t size) {
    80002e68:	ff010113          	addi	sp,sp,-16
    80002e6c:	00113423          	sd	ra,8(sp)
    80002e70:	00813023          	sd	s0,0(sp)
    80002e74:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    80002e78:	00000097          	auipc	ra,0x0
    80002e7c:	824080e7          	jalr	-2012(ra) # 8000269c <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80002e80:	fffff097          	auipc	ra,0xfffff
    80002e84:	420080e7          	jalr	1056(ra) # 800022a0 <_ZN15MemoryAllocator9mem_allocEm>
}
    80002e88:	00813083          	ld	ra,8(sp)
    80002e8c:	00013403          	ld	s0,0(sp)
    80002e90:	01010113          	addi	sp,sp,16
    80002e94:	00008067          	ret

0000000080002e98 <_ZN10ThreadList9push_backEP3TCB>:
void ThreadList::push_back(TCB *thread) {
    80002e98:	fe010113          	addi	sp,sp,-32
    80002e9c:	00113c23          	sd	ra,24(sp)
    80002ea0:	00813823          	sd	s0,16(sp)
    80002ea4:	00913423          	sd	s1,8(sp)
    80002ea8:	01213023          	sd	s2,0(sp)
    80002eac:	02010413          	addi	s0,sp,32
    80002eb0:	00050493          	mv	s1,a0
    80002eb4:	00058913          	mv	s2,a1
    tail = (head ? head : tail -> next) = new Node(thread);
    80002eb8:	01000513          	li	a0,16
    80002ebc:	00000097          	auipc	ra,0x0
    80002ec0:	fac080e7          	jalr	-84(ra) # 80002e68 <_ZN10ThreadList4NodenwEm>
        struct Node *next;

        void* operator new(size_t size);
        void operator delete(void* addr);

        explicit Node(TCB* data) : data(data), next(nullptr) {}
    80002ec4:	01253023          	sd	s2,0(a0)
    80002ec8:	00053423          	sd	zero,8(a0)
    80002ecc:	0004b783          	ld	a5,0(s1)
    80002ed0:	02078263          	beqz	a5,80002ef4 <_ZN10ThreadList9push_backEP3TCB+0x5c>
    80002ed4:	00a4b023          	sd	a0,0(s1)
    80002ed8:	00a4b423          	sd	a0,8(s1)
}
    80002edc:	01813083          	ld	ra,24(sp)
    80002ee0:	01013403          	ld	s0,16(sp)
    80002ee4:	00813483          	ld	s1,8(sp)
    80002ee8:	00013903          	ld	s2,0(sp)
    80002eec:	02010113          	addi	sp,sp,32
    80002ef0:	00008067          	ret
    tail = (head ? head : tail -> next) = new Node(thread);
    80002ef4:	0084b783          	ld	a5,8(s1)
    80002ef8:	00a7b423          	sd	a0,8(a5)
    80002efc:	fddff06f          	j	80002ed8 <_ZN10ThreadList9push_backEP3TCB+0x40>

0000000080002f00 <_ZN10ThreadList4NodedlEPv>:

void ThreadList::Node::operator delete(void *addr) {
    80002f00:	ff010113          	addi	sp,sp,-16
    80002f04:	00113423          	sd	ra,8(sp)
    80002f08:	00813023          	sd	s0,0(sp)
    80002f0c:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    80002f10:	fffff097          	auipc	ra,0xfffff
    80002f14:	57c080e7          	jalr	1404(ra) # 8000248c <_ZN15MemoryAllocator8mem_freeEPv>
}
    80002f18:	00813083          	ld	ra,8(sp)
    80002f1c:	00013403          	ld	s0,0(sp)
    80002f20:	01010113          	addi	sp,sp,16
    80002f24:	00008067          	ret

0000000080002f28 <_ZN10ThreadList12remove_firstEv>:
TCB *ThreadList::remove_first() {
    80002f28:	fe010113          	addi	sp,sp,-32
    80002f2c:	00113c23          	sd	ra,24(sp)
    80002f30:	00813823          	sd	s0,16(sp)
    80002f34:	00913423          	sd	s1,8(sp)
    80002f38:	02010413          	addi	s0,sp,32
    80002f3c:	00050793          	mv	a5,a0
    if (!head) return nullptr;
    80002f40:	00053503          	ld	a0,0(a0)
    80002f44:	02050a63          	beqz	a0,80002f78 <_ZN10ThreadList12remove_firstEv+0x50>
    TCB* thread = tmp -> data;
    80002f48:	00053483          	ld	s1,0(a0)
    head = head -> next;
    80002f4c:	00853703          	ld	a4,8(a0)
    80002f50:	00e7b023          	sd	a4,0(a5)
    head -> next = nullptr;
    80002f54:	00073423          	sd	zero,8(a4)
    delete tmp;
    80002f58:	00000097          	auipc	ra,0x0
    80002f5c:	fa8080e7          	jalr	-88(ra) # 80002f00 <_ZN10ThreadList4NodedlEPv>
}
    80002f60:	00048513          	mv	a0,s1
    80002f64:	01813083          	ld	ra,24(sp)
    80002f68:	01013403          	ld	s0,16(sp)
    80002f6c:	00813483          	ld	s1,8(sp)
    80002f70:	02010113          	addi	sp,sp,32
    80002f74:	00008067          	ret
    if (!head) return nullptr;
    80002f78:	00050493          	mv	s1,a0
    80002f7c:	fe5ff06f          	j	80002f60 <_ZN10ThreadList12remove_firstEv+0x38>

0000000080002f80 <_ZN10ThreadList4freeEv>:
void ThreadList::free() {
    80002f80:	fe010113          	addi	sp,sp,-32
    80002f84:	00113c23          	sd	ra,24(sp)
    80002f88:	00813823          	sd	s0,16(sp)
    80002f8c:	00913423          	sd	s1,8(sp)
    80002f90:	02010413          	addi	s0,sp,32
    80002f94:	00050493          	mv	s1,a0
    while (get_first()) remove_first();
    80002f98:	00048513          	mv	a0,s1
    80002f9c:	00000097          	auipc	ra,0x0
    80002fa0:	ea8080e7          	jalr	-344(ra) # 80002e44 <_ZN10ThreadList9get_firstEv>
    80002fa4:	00050a63          	beqz	a0,80002fb8 <_ZN10ThreadList4freeEv+0x38>
    80002fa8:	00048513          	mv	a0,s1
    80002fac:	00000097          	auipc	ra,0x0
    80002fb0:	f7c080e7          	jalr	-132(ra) # 80002f28 <_ZN10ThreadList12remove_firstEv>
    80002fb4:	fe5ff06f          	j	80002f98 <_ZN10ThreadList4freeEv+0x18>
}
    80002fb8:	01813083          	ld	ra,24(sp)
    80002fbc:	01013403          	ld	s0,16(sp)
    80002fc0:	00813483          	ld	s1,8(sp)
    80002fc4:	02010113          	addi	sp,sp,32
    80002fc8:	00008067          	ret

0000000080002fcc <_ZN3TCBC1EPFvPvES0_S0_>:

TCB::TCB(void (*function_body)(void *), void *arg, void *stack) {
    context = {
            (uint64) wrapper_function,
            /// stack starts from max address, rises to lower locations
            (uint64) (stack ? (uint64) stack + DEFAULT_STACK_SIZE - 1 : 0)
    80002fcc:	08068463          	beqz	a3,80003054 <_ZN3TCBC1EPFvPvES0_S0_+0x88>
    80002fd0:	000017b7          	lui	a5,0x1
    80002fd4:	fff78793          	addi	a5,a5,-1 # fff <_entry-0x7ffff001>
    80002fd8:	00f687b3          	add	a5,a3,a5
    context = {
    80002fdc:	00000717          	auipc	a4,0x0
    80002fe0:	24c70713          	addi	a4,a4,588 # 80003228 <_ZN3TCB16wrapper_functionEv>
    80002fe4:	00e53423          	sd	a4,8(a0)
    80002fe8:	00f53823          	sd	a5,16(a0)
    };
    id = cnt++;
    80002fec:	00009717          	auipc	a4,0x9
    80002ff0:	bcc70713          	addi	a4,a4,-1076 # 8000bbb8 <_ZN3TCB3cntE>
    80002ff4:	00072783          	lw	a5,0(a4)
    80002ff8:	0017881b          	addiw	a6,a5,1
    80002ffc:	01072023          	sw	a6,0(a4)
    80003000:	00f52023          	sw	a5,0(a0)
    status = RUNNABLE;
    80003004:	00052c23          	sw	zero,24(a0)
    this -> function_body = function_body;
    80003008:	02b53023          	sd	a1,32(a0)
    this -> arg = arg;
    8000300c:	02c53423          	sd	a2,40(a0)
    this -> stack = stack;
    80003010:	02d53823          	sd	a3,48(a0)
    time_slice = DEFAULT_TIME_SLICE;
    80003014:	00200793          	li	a5,2
    80003018:	02f53c23          	sd	a5,56(a0)
    time_to_sleep = 0;
    8000301c:	04053423          	sd	zero,72(a0)
    next_ready = nullptr;
    80003020:	04053023          	sd	zero,64(a0)
    next_sleeping = nullptr;
    80003024:	04053823          	sd	zero,80(a0)
    if (function_body) Scheduler::put(this);
    80003028:	02058a63          	beqz	a1,8000305c <_ZN3TCBC1EPFvPvES0_S0_+0x90>
TCB::TCB(void (*function_body)(void *), void *arg, void *stack) {
    8000302c:	ff010113          	addi	sp,sp,-16
    80003030:	00113423          	sd	ra,8(sp)
    80003034:	00813023          	sd	s0,0(sp)
    80003038:	01010413          	addi	s0,sp,16
    if (function_body) Scheduler::put(this);
    8000303c:	00000097          	auipc	ra,0x0
    80003040:	850080e7          	jalr	-1968(ra) # 8000288c <_ZN9Scheduler3putEP3TCB>
}
    80003044:	00813083          	ld	ra,8(sp)
    80003048:	00013403          	ld	s0,0(sp)
    8000304c:	01010113          	addi	sp,sp,16
    80003050:	00008067          	ret
            (uint64) (stack ? (uint64) stack + DEFAULT_STACK_SIZE - 1 : 0)
    80003054:	00000793          	li	a5,0
    80003058:	f85ff06f          	j	80002fdc <_ZN3TCBC1EPFvPvES0_S0_+0x10>
    8000305c:	00008067          	ret

0000000080003060 <_ZN3TCB5yieldEPS_S0_>:
    else RiscV::popSppSpie(true);
    if (running -> function_body) running -> function_body(running -> arg);
    thread_exit();
}

void TCB::yield(TCB *old_running, TCB *new_running) {
    80003060:	fe010113          	addi	sp,sp,-32
    80003064:	00113c23          	sd	ra,24(sp)
    80003068:	00813823          	sd	s0,16(sp)
    8000306c:	00913423          	sd	s1,8(sp)
    80003070:	01213023          	sd	s2,0(sp)
    80003074:	02010413          	addi	s0,sp,32
    80003078:	00050493          	mv	s1,a0
    8000307c:	00058913          	mv	s2,a1
    RiscV::push_registers();
    80003080:	ffffe097          	auipc	ra,0xffffe
    80003084:	088080e7          	jalr	136(ra) # 80001108 <_ZN5RiscV14push_registersEv>
    if (old_running != new_running) context_switch(&old_running -> context, &new_running -> context);
    80003088:	01248a63          	beq	s1,s2,8000309c <_ZN3TCB5yieldEPS_S0_+0x3c>
    8000308c:	00890593          	addi	a1,s2,8
    80003090:	00848513          	addi	a0,s1,8
    80003094:	ffffe097          	auipc	ra,0xffffe
    80003098:	174080e7          	jalr	372(ra) # 80001208 <_ZN3TCB14context_switchEPNS_7ContextES1_>
    RiscV::pop_registers();
    8000309c:	ffffe097          	auipc	ra,0xffffe
    800030a0:	0ec080e7          	jalr	236(ra) # 80001188 <_ZN5RiscV13pop_registersEv>
}
    800030a4:	01813083          	ld	ra,24(sp)
    800030a8:	01013403          	ld	s0,16(sp)
    800030ac:	00813483          	ld	s1,8(sp)
    800030b0:	00013903          	ld	s2,0(sp)
    800030b4:	02010113          	addi	sp,sp,32
    800030b8:	00008067          	ret

00000000800030bc <_ZN3TCB8dispatchEv>:

void TCB::dispatch() {
    800030bc:	fe010113          	addi	sp,sp,-32
    800030c0:	00113c23          	sd	ra,24(sp)
    800030c4:	00813823          	sd	s0,16(sp)
    800030c8:	00913423          	sd	s1,8(sp)
    800030cc:	02010413          	addi	s0,sp,32
    TCB* old = running;
    800030d0:	00009497          	auipc	s1,0x9
    800030d4:	af04b483          	ld	s1,-1296(s1) # 8000bbc0 <_ZN3TCB7runningE>
    if (old -> status == RUNNABLE) Scheduler::put(old);
    800030d8:	0184a783          	lw	a5,24(s1)
    800030dc:	02078e63          	beqz	a5,80003118 <_ZN3TCB8dispatchEv+0x5c>
    running = Scheduler::get();
    800030e0:	00000097          	auipc	ra,0x0
    800030e4:	80c080e7          	jalr	-2036(ra) # 800028ec <_ZN9Scheduler3getEv>
    800030e8:	00050593          	mv	a1,a0
    800030ec:	00009797          	auipc	a5,0x9
    800030f0:	aca7ba23          	sd	a0,-1324(a5) # 8000bbc0 <_ZN3TCB7runningE>
    if (old != running) yield(old, running);
    800030f4:	00a48863          	beq	s1,a0,80003104 <_ZN3TCB8dispatchEv+0x48>
    800030f8:	00048513          	mv	a0,s1
    800030fc:	00000097          	auipc	ra,0x0
    80003100:	f64080e7          	jalr	-156(ra) # 80003060 <_ZN3TCB5yieldEPS_S0_>
}
    80003104:	01813083          	ld	ra,24(sp)
    80003108:	01013403          	ld	s0,16(sp)
    8000310c:	00813483          	ld	s1,8(sp)
    80003110:	02010113          	addi	sp,sp,32
    80003114:	00008067          	ret
    if (old -> status == RUNNABLE) Scheduler::put(old);
    80003118:	00048513          	mv	a0,s1
    8000311c:	fffff097          	auipc	ra,0xfffff
    80003120:	770080e7          	jalr	1904(ra) # 8000288c <_ZN9Scheduler3putEP3TCB>
    80003124:	fbdff06f          	j	800030e0 <_ZN3TCB8dispatchEv+0x24>

0000000080003128 <_ZNK3TCB14get_next_readyEv>:

TCB *TCB::get_next_ready() const {
    80003128:	ff010113          	addi	sp,sp,-16
    8000312c:	00813423          	sd	s0,8(sp)
    80003130:	01010413          	addi	s0,sp,16
    return next_ready;
}
    80003134:	04053503          	ld	a0,64(a0)
    80003138:	00813403          	ld	s0,8(sp)
    8000313c:	01010113          	addi	sp,sp,16
    80003140:	00008067          	ret

0000000080003144 <_ZN3TCB14set_next_readyEPS_>:

void TCB::set_next_ready(TCB *next) {
    80003144:	ff010113          	addi	sp,sp,-16
    80003148:	00813423          	sd	s0,8(sp)
    8000314c:	01010413          	addi	s0,sp,16
    next_ready = next;
    80003150:	04b53023          	sd	a1,64(a0)
}
    80003154:	00813403          	ld	s0,8(sp)
    80003158:	01010113          	addi	sp,sp,16
    8000315c:	00008067          	ret

0000000080003160 <_ZN3TCB17set_next_sleepingEPS_>:

void TCB::set_next_sleeping(TCB *next) {
    80003160:	ff010113          	addi	sp,sp,-16
    80003164:	00813423          	sd	s0,8(sp)
    80003168:	01010413          	addi	s0,sp,16
    next_sleeping = next;
    8000316c:	04b53823          	sd	a1,80(a0)
}
    80003170:	00813403          	ld	s0,8(sp)
    80003174:	01010113          	addi	sp,sp,16
    80003178:	00008067          	ret

000000008000317c <_ZNK3TCB17get_next_sleepingEv>:

TCB* TCB::get_next_sleeping() const {
    8000317c:	ff010113          	addi	sp,sp,-16
    80003180:	00813423          	sd	s0,8(sp)
    80003184:	01010413          	addi	s0,sp,16
    return next_sleeping;
}
    80003188:	05053503          	ld	a0,80(a0)
    8000318c:	00813403          	ld	s0,8(sp)
    80003190:	01010113          	addi	sp,sp,16
    80003194:	00008067          	ret

0000000080003198 <_ZN3TCB17set_time_to_sleepEm>:

void TCB::set_time_to_sleep(time_t time) {
    80003198:	ff010113          	addi	sp,sp,-16
    8000319c:	00813423          	sd	s0,8(sp)
    800031a0:	01010413          	addi	s0,sp,16
    time_to_sleep = time;
    800031a4:	04b53423          	sd	a1,72(a0)
}
    800031a8:	00813403          	ld	s0,8(sp)
    800031ac:	01010113          	addi	sp,sp,16
    800031b0:	00008067          	ret

00000000800031b4 <_ZNK3TCB17get_time_to_sleepEv>:

time_t TCB::get_time_to_sleep() const {
    800031b4:	ff010113          	addi	sp,sp,-16
    800031b8:	00813423          	sd	s0,8(sp)
    800031bc:	01010413          	addi	s0,sp,16
    return time_to_sleep;
}
    800031c0:	04853503          	ld	a0,72(a0)
    800031c4:	00813403          	ld	s0,8(sp)
    800031c8:	01010113          	addi	sp,sp,16
    800031cc:	00008067          	ret

00000000800031d0 <_ZN3TCB10set_statusENS_6StatusE>:

void TCB::set_status(TCB::Status stat) {
    800031d0:	ff010113          	addi	sp,sp,-16
    800031d4:	00813423          	sd	s0,8(sp)
    800031d8:	01010413          	addi	s0,sp,16
    this -> status = stat;
    800031dc:	00b52c23          	sw	a1,24(a0)
}
    800031e0:	00813403          	ld	s0,8(sp)
    800031e4:	01010113          	addi	sp,sp,16
    800031e8:	00008067          	ret

00000000800031ec <_ZN3TCB11thread_exitEv>:
void TCB::thread_exit() {
    800031ec:	ff010113          	addi	sp,sp,-16
    800031f0:	00113423          	sd	ra,8(sp)
    800031f4:	00813023          	sd	s0,0(sp)
    800031f8:	01010413          	addi	s0,sp,16
    running -> set_status(Status::FINISHED);
    800031fc:	00400593          	li	a1,4
    80003200:	00009517          	auipc	a0,0x9
    80003204:	9c053503          	ld	a0,-1600(a0) # 8000bbc0 <_ZN3TCB7runningE>
    80003208:	00000097          	auipc	ra,0x0
    8000320c:	fc8080e7          	jalr	-56(ra) # 800031d0 <_ZN3TCB10set_statusENS_6StatusE>
    dispatch();
    80003210:	00000097          	auipc	ra,0x0
    80003214:	eac080e7          	jalr	-340(ra) # 800030bc <_ZN3TCB8dispatchEv>
}
    80003218:	00813083          	ld	ra,8(sp)
    8000321c:	00013403          	ld	s0,0(sp)
    80003220:	01010113          	addi	sp,sp,16
    80003224:	00008067          	ret

0000000080003228 <_ZN3TCB16wrapper_functionEv>:
void TCB::wrapper_function() {
    80003228:	ff010113          	addi	sp,sp,-16
    8000322c:	00113423          	sd	ra,8(sp)
    80003230:	00813023          	sd	s0,0(sp)
    80003234:	01010413          	addi	s0,sp,16
    if (running -> function_body && running->function_body != kernelConsoleOutput) RiscV::popSppSpie(false);
    80003238:	00009797          	auipc	a5,0x9
    8000323c:	9887b783          	ld	a5,-1656(a5) # 8000bbc0 <_ZN3TCB7runningE>
    80003240:	0207b783          	ld	a5,32(a5)
    80003244:	02078063          	beqz	a5,80003264 <_ZN3TCB16wrapper_functionEv+0x3c>
    80003248:	00009717          	auipc	a4,0x9
    8000324c:	8c873703          	ld	a4,-1848(a4) # 8000bb10 <_GLOBAL_OFFSET_TABLE_+0x48>
    80003250:	00e78a63          	beq	a5,a4,80003264 <_ZN3TCB16wrapper_functionEv+0x3c>
    80003254:	00000513          	li	a0,0
    80003258:	00000097          	auipc	ra,0x0
    8000325c:	8fc080e7          	jalr	-1796(ra) # 80002b54 <_ZN5RiscV10popSppSpieEb>
    80003260:	0100006f          	j	80003270 <_ZN3TCB16wrapper_functionEv+0x48>
    else RiscV::popSppSpie(true);
    80003264:	00100513          	li	a0,1
    80003268:	00000097          	auipc	ra,0x0
    8000326c:	8ec080e7          	jalr	-1812(ra) # 80002b54 <_ZN5RiscV10popSppSpieEb>
    if (running -> function_body) running -> function_body(running -> arg);
    80003270:	00009717          	auipc	a4,0x9
    80003274:	95073703          	ld	a4,-1712(a4) # 8000bbc0 <_ZN3TCB7runningE>
    80003278:	02073783          	ld	a5,32(a4)
    8000327c:	00078663          	beqz	a5,80003288 <_ZN3TCB16wrapper_functionEv+0x60>
    80003280:	02873503          	ld	a0,40(a4)
    80003284:	000780e7          	jalr	a5
    thread_exit();
    80003288:	00000097          	auipc	ra,0x0
    8000328c:	f64080e7          	jalr	-156(ra) # 800031ec <_ZN3TCB11thread_exitEv>
}
    80003290:	00813083          	ld	ra,8(sp)
    80003294:	00013403          	ld	s0,0(sp)
    80003298:	01010113          	addi	sp,sp,16
    8000329c:	00008067          	ret

00000000800032a0 <_ZN3TCB5startEv>:

void TCB::start() {
    800032a0:	fe010113          	addi	sp,sp,-32
    800032a4:	00113c23          	sd	ra,24(sp)
    800032a8:	00813823          	sd	s0,16(sp)
    800032ac:	00913423          	sd	s1,8(sp)
    800032b0:	02010413          	addi	s0,sp,32
    800032b4:	00050493          	mv	s1,a0
    Scheduler::put(this);
    800032b8:	fffff097          	auipc	ra,0xfffff
    800032bc:	5d4080e7          	jalr	1492(ra) # 8000288c <_ZN9Scheduler3putEP3TCB>
    if (!running) running = this;
    800032c0:	00009797          	auipc	a5,0x9
    800032c4:	9007b783          	ld	a5,-1792(a5) # 8000bbc0 <_ZN3TCB7runningE>
    800032c8:	00078c63          	beqz	a5,800032e0 <_ZN3TCB5startEv+0x40>
}
    800032cc:	01813083          	ld	ra,24(sp)
    800032d0:	01013403          	ld	s0,16(sp)
    800032d4:	00813483          	ld	s1,8(sp)
    800032d8:	02010113          	addi	sp,sp,32
    800032dc:	00008067          	ret
    if (!running) running = this;
    800032e0:	00009797          	auipc	a5,0x9
    800032e4:	8e97b023          	sd	s1,-1824(a5) # 8000bbc0 <_ZN3TCB7runningE>
}
    800032e8:	fe5ff06f          	j	800032cc <_ZN3TCB5startEv+0x2c>

00000000800032ec <_ZN3TCBnwEm>:

void *TCB::operator new(size_t size) {
    800032ec:	ff010113          	addi	sp,sp,-16
    800032f0:	00113423          	sd	ra,8(sp)
    800032f4:	00813023          	sd	s0,0(sp)
    800032f8:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    800032fc:	fffff097          	auipc	ra,0xfffff
    80003300:	3a0080e7          	jalr	928(ra) # 8000269c <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80003304:	fffff097          	auipc	ra,0xfffff
    80003308:	f9c080e7          	jalr	-100(ra) # 800022a0 <_ZN15MemoryAllocator9mem_allocEm>
}
    8000330c:	00813083          	ld	ra,8(sp)
    80003310:	00013403          	ld	s0,0(sp)
    80003314:	01010113          	addi	sp,sp,16
    80003318:	00008067          	ret

000000008000331c <_ZN3TCBdlEPv>:

void TCB::operator delete(void *addr) {
    8000331c:	ff010113          	addi	sp,sp,-16
    80003320:	00113423          	sd	ra,8(sp)
    80003324:	00813023          	sd	s0,0(sp)
    80003328:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    8000332c:	fffff097          	auipc	ra,0xfffff
    80003330:	160080e7          	jalr	352(ra) # 8000248c <_ZN15MemoryAllocator8mem_freeEPv>
}
    80003334:	00813083          	ld	ra,8(sp)
    80003338:	00013403          	ld	s0,0(sp)
    8000333c:	01010113          	addi	sp,sp,16
    80003340:	00008067          	ret

0000000080003344 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>:
int TCB::thread_create(thread_t *handle, void(*start_routine)(void *), void *arg, void *stack_begin_address) {
    80003344:	fc010113          	addi	sp,sp,-64
    80003348:	02113c23          	sd	ra,56(sp)
    8000334c:	02813823          	sd	s0,48(sp)
    80003350:	02913423          	sd	s1,40(sp)
    80003354:	03213023          	sd	s2,32(sp)
    80003358:	01313c23          	sd	s3,24(sp)
    8000335c:	01413823          	sd	s4,16(sp)
    80003360:	01513423          	sd	s5,8(sp)
    80003364:	04010413          	addi	s0,sp,64
    80003368:	00050913          	mv	s2,a0
    8000336c:	00058993          	mv	s3,a1
    80003370:	00060a13          	mv	s4,a2
    80003374:	00068a93          	mv	s5,a3
    *handle = new TCB(start_routine, arg, stack_begin_address);
    80003378:	05800513          	li	a0,88
    8000337c:	00000097          	auipc	ra,0x0
    80003380:	f70080e7          	jalr	-144(ra) # 800032ec <_ZN3TCBnwEm>
    80003384:	00050493          	mv	s1,a0
    80003388:	000a8693          	mv	a3,s5
    8000338c:	000a0613          	mv	a2,s4
    80003390:	00098593          	mv	a1,s3
    80003394:	00000097          	auipc	ra,0x0
    80003398:	c38080e7          	jalr	-968(ra) # 80002fcc <_ZN3TCBC1EPFvPvES0_S0_>
    8000339c:	0200006f          	j	800033bc <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_+0x78>
    800033a0:	00050913          	mv	s2,a0
    800033a4:	00048513          	mv	a0,s1
    800033a8:	00000097          	auipc	ra,0x0
    800033ac:	f74080e7          	jalr	-140(ra) # 8000331c <_ZN3TCBdlEPv>
    800033b0:	00090513          	mv	a0,s2
    800033b4:	0000a097          	auipc	ra,0xa
    800033b8:	934080e7          	jalr	-1740(ra) # 8000cce8 <_Unwind_Resume>
    800033bc:	00993023          	sd	s1,0(s2)
}
    800033c0:	00000513          	li	a0,0
    800033c4:	03813083          	ld	ra,56(sp)
    800033c8:	03013403          	ld	s0,48(sp)
    800033cc:	02813483          	ld	s1,40(sp)
    800033d0:	02013903          	ld	s2,32(sp)
    800033d4:	01813983          	ld	s3,24(sp)
    800033d8:	01013a03          	ld	s4,16(sp)
    800033dc:	00813a83          	ld	s5,8(sp)
    800033e0:	04010113          	addi	sp,sp,64
    800033e4:	00008067          	ret

00000000800033e8 <_ZNK3TCB14get_time_sliceEv>:

time_t TCB::get_time_slice() const {
    800033e8:	ff010113          	addi	sp,sp,-16
    800033ec:	00813423          	sd	s0,8(sp)
    800033f0:	01010413          	addi	s0,sp,16
    return time_slice;
}
    800033f4:	03853503          	ld	a0,56(a0)
    800033f8:	00813403          	ld	s0,8(sp)
    800033fc:	01010113          	addi	sp,sp,16
    80003400:	00008067          	ret

0000000080003404 <_ZNK3TCB11is_finishedEv>:

bool TCB::is_finished() const {
    80003404:	ff010113          	addi	sp,sp,-16
    80003408:	00813423          	sd	s0,8(sp)
    8000340c:	01010413          	addi	s0,sp,16
    return status == FINISHED;
    80003410:	01852503          	lw	a0,24(a0)
    80003414:	ffc50513          	addi	a0,a0,-4
}
    80003418:	00153513          	seqz	a0,a0
    8000341c:	00813403          	ld	s0,8(sp)
    80003420:	01010113          	addi	sp,sp,16
    80003424:	00008067          	ret

0000000080003428 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80003428:	fe010113          	addi	sp,sp,-32
    8000342c:	00113c23          	sd	ra,24(sp)
    80003430:	00813823          	sd	s0,16(sp)
    80003434:	00913423          	sd	s1,8(sp)
    80003438:	01213023          	sd	s2,0(sp)
    8000343c:	02010413          	addi	s0,sp,32
    80003440:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80003444:	00000913          	li	s2,0
    80003448:	00c0006f          	j	80003454 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    8000344c:	ffffe097          	auipc	ra,0xffffe
    80003450:	f80080e7          	jalr	-128(ra) # 800013cc <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80003454:	ffffe097          	auipc	ra,0xffffe
    80003458:	1cc080e7          	jalr	460(ra) # 80001620 <_Z4getcv>
    8000345c:	0005059b          	sext.w	a1,a0
    80003460:	01b00793          	li	a5,27
    80003464:	02f58a63          	beq	a1,a5,80003498 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80003468:	0084b503          	ld	a0,8(s1)
    8000346c:	00001097          	auipc	ra,0x1
    80003470:	66c080e7          	jalr	1644(ra) # 80004ad8 <_ZN6Buffer3putEi>
        i++;
    80003474:	0019071b          	addiw	a4,s2,1
    80003478:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000347c:	0004a683          	lw	a3,0(s1)
    80003480:	0026979b          	slliw	a5,a3,0x2
    80003484:	00d787bb          	addw	a5,a5,a3
    80003488:	0017979b          	slliw	a5,a5,0x1
    8000348c:	02f767bb          	remw	a5,a4,a5
    80003490:	fc0792e3          	bnez	a5,80003454 <_ZL16producerKeyboardPv+0x2c>
    80003494:	fb9ff06f          	j	8000344c <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80003498:	00100793          	li	a5,1
    8000349c:	00008717          	auipc	a4,0x8
    800034a0:	72f72a23          	sw	a5,1844(a4) # 8000bbd0 <_ZL9threadEnd>
    data->buffer->put('!');
    800034a4:	02100593          	li	a1,33
    800034a8:	0084b503          	ld	a0,8(s1)
    800034ac:	00001097          	auipc	ra,0x1
    800034b0:	62c080e7          	jalr	1580(ra) # 80004ad8 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    800034b4:	0104b503          	ld	a0,16(s1)
    800034b8:	ffffe097          	auipc	ra,0xffffe
    800034bc:	038080e7          	jalr	56(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    800034c0:	01813083          	ld	ra,24(sp)
    800034c4:	01013403          	ld	s0,16(sp)
    800034c8:	00813483          	ld	s1,8(sp)
    800034cc:	00013903          	ld	s2,0(sp)
    800034d0:	02010113          	addi	sp,sp,32
    800034d4:	00008067          	ret

00000000800034d8 <_ZL8producerPv>:

static void producer(void *arg) {
    800034d8:	fe010113          	addi	sp,sp,-32
    800034dc:	00113c23          	sd	ra,24(sp)
    800034e0:	00813823          	sd	s0,16(sp)
    800034e4:	00913423          	sd	s1,8(sp)
    800034e8:	01213023          	sd	s2,0(sp)
    800034ec:	02010413          	addi	s0,sp,32
    800034f0:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800034f4:	00000913          	li	s2,0
    800034f8:	00c0006f          	j	80003504 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800034fc:	ffffe097          	auipc	ra,0xffffe
    80003500:	ed0080e7          	jalr	-304(ra) # 800013cc <_Z15thread_dispatchv>
    while (!threadEnd) {
    80003504:	00008797          	auipc	a5,0x8
    80003508:	6cc7a783          	lw	a5,1740(a5) # 8000bbd0 <_ZL9threadEnd>
    8000350c:	02079e63          	bnez	a5,80003548 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80003510:	0004a583          	lw	a1,0(s1)
    80003514:	0305859b          	addiw	a1,a1,48
    80003518:	0084b503          	ld	a0,8(s1)
    8000351c:	00001097          	auipc	ra,0x1
    80003520:	5bc080e7          	jalr	1468(ra) # 80004ad8 <_ZN6Buffer3putEi>
        i++;
    80003524:	0019071b          	addiw	a4,s2,1
    80003528:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000352c:	0004a683          	lw	a3,0(s1)
    80003530:	0026979b          	slliw	a5,a3,0x2
    80003534:	00d787bb          	addw	a5,a5,a3
    80003538:	0017979b          	slliw	a5,a5,0x1
    8000353c:	02f767bb          	remw	a5,a4,a5
    80003540:	fc0792e3          	bnez	a5,80003504 <_ZL8producerPv+0x2c>
    80003544:	fb9ff06f          	j	800034fc <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80003548:	0104b503          	ld	a0,16(s1)
    8000354c:	ffffe097          	auipc	ra,0xffffe
    80003550:	fa4080e7          	jalr	-92(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    80003554:	01813083          	ld	ra,24(sp)
    80003558:	01013403          	ld	s0,16(sp)
    8000355c:	00813483          	ld	s1,8(sp)
    80003560:	00013903          	ld	s2,0(sp)
    80003564:	02010113          	addi	sp,sp,32
    80003568:	00008067          	ret

000000008000356c <_ZL8consumerPv>:

static void consumer(void *arg) {
    8000356c:	fd010113          	addi	sp,sp,-48
    80003570:	02113423          	sd	ra,40(sp)
    80003574:	02813023          	sd	s0,32(sp)
    80003578:	00913c23          	sd	s1,24(sp)
    8000357c:	01213823          	sd	s2,16(sp)
    80003580:	01313423          	sd	s3,8(sp)
    80003584:	03010413          	addi	s0,sp,48
    80003588:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000358c:	00000993          	li	s3,0
    80003590:	01c0006f          	j	800035ac <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80003594:	ffffe097          	auipc	ra,0xffffe
    80003598:	e38080e7          	jalr	-456(ra) # 800013cc <_Z15thread_dispatchv>
    8000359c:	0500006f          	j	800035ec <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    800035a0:	00a00513          	li	a0,10
    800035a4:	ffffe097          	auipc	ra,0xffffe
    800035a8:	0c8080e7          	jalr	200(ra) # 8000166c <_Z4putcc>
    while (!threadEnd) {
    800035ac:	00008797          	auipc	a5,0x8
    800035b0:	6247a783          	lw	a5,1572(a5) # 8000bbd0 <_ZL9threadEnd>
    800035b4:	06079063          	bnez	a5,80003614 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    800035b8:	00893503          	ld	a0,8(s2)
    800035bc:	00001097          	auipc	ra,0x1
    800035c0:	5ac080e7          	jalr	1452(ra) # 80004b68 <_ZN6Buffer3getEv>
        i++;
    800035c4:	0019849b          	addiw	s1,s3,1
    800035c8:	0004899b          	sext.w	s3,s1
        putc(key);
    800035cc:	0ff57513          	andi	a0,a0,255
    800035d0:	ffffe097          	auipc	ra,0xffffe
    800035d4:	09c080e7          	jalr	156(ra) # 8000166c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800035d8:	00092703          	lw	a4,0(s2)
    800035dc:	0027179b          	slliw	a5,a4,0x2
    800035e0:	00e787bb          	addw	a5,a5,a4
    800035e4:	02f4e7bb          	remw	a5,s1,a5
    800035e8:	fa0786e3          	beqz	a5,80003594 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    800035ec:	05000793          	li	a5,80
    800035f0:	02f4e4bb          	remw	s1,s1,a5
    800035f4:	fa049ce3          	bnez	s1,800035ac <_ZL8consumerPv+0x40>
    800035f8:	fa9ff06f          	j	800035a0 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    800035fc:	00893503          	ld	a0,8(s2)
    80003600:	00001097          	auipc	ra,0x1
    80003604:	568080e7          	jalr	1384(ra) # 80004b68 <_ZN6Buffer3getEv>
        putc(key);
    80003608:	0ff57513          	andi	a0,a0,255
    8000360c:	ffffe097          	auipc	ra,0xffffe
    80003610:	060080e7          	jalr	96(ra) # 8000166c <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80003614:	00893503          	ld	a0,8(s2)
    80003618:	00001097          	auipc	ra,0x1
    8000361c:	5dc080e7          	jalr	1500(ra) # 80004bf4 <_ZN6Buffer6getCntEv>
    80003620:	fca04ee3          	bgtz	a0,800035fc <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80003624:	01093503          	ld	a0,16(s2)
    80003628:	ffffe097          	auipc	ra,0xffffe
    8000362c:	ec8080e7          	jalr	-312(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    80003630:	02813083          	ld	ra,40(sp)
    80003634:	02013403          	ld	s0,32(sp)
    80003638:	01813483          	ld	s1,24(sp)
    8000363c:	01013903          	ld	s2,16(sp)
    80003640:	00813983          	ld	s3,8(sp)
    80003644:	03010113          	addi	sp,sp,48
    80003648:	00008067          	ret

000000008000364c <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    8000364c:	f9010113          	addi	sp,sp,-112
    80003650:	06113423          	sd	ra,104(sp)
    80003654:	06813023          	sd	s0,96(sp)
    80003658:	04913c23          	sd	s1,88(sp)
    8000365c:	05213823          	sd	s2,80(sp)
    80003660:	05313423          	sd	s3,72(sp)
    80003664:	05413023          	sd	s4,64(sp)
    80003668:	03513c23          	sd	s5,56(sp)
    8000366c:	03613823          	sd	s6,48(sp)
    80003670:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80003674:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003678:	00006517          	auipc	a0,0x6
    8000367c:	ab850513          	addi	a0,a0,-1352 # 80009130 <CONSOLE_STATUS+0x120>
    80003680:	00002097          	auipc	ra,0x2
    80003684:	540080e7          	jalr	1344(ra) # 80005bc0 <_Z11printStringPKc>
    getString(input, 30);
    80003688:	01e00593          	li	a1,30
    8000368c:	fa040493          	addi	s1,s0,-96
    80003690:	00048513          	mv	a0,s1
    80003694:	00002097          	auipc	ra,0x2
    80003698:	5b4080e7          	jalr	1460(ra) # 80005c48 <_Z9getStringPci>
    threadNum = stringToInt(input);
    8000369c:	00048513          	mv	a0,s1
    800036a0:	00002097          	auipc	ra,0x2
    800036a4:	680080e7          	jalr	1664(ra) # 80005d20 <_Z11stringToIntPKc>
    800036a8:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800036ac:	00006517          	auipc	a0,0x6
    800036b0:	aa450513          	addi	a0,a0,-1372 # 80009150 <CONSOLE_STATUS+0x140>
    800036b4:	00002097          	auipc	ra,0x2
    800036b8:	50c080e7          	jalr	1292(ra) # 80005bc0 <_Z11printStringPKc>
    getString(input, 30);
    800036bc:	01e00593          	li	a1,30
    800036c0:	00048513          	mv	a0,s1
    800036c4:	00002097          	auipc	ra,0x2
    800036c8:	584080e7          	jalr	1412(ra) # 80005c48 <_Z9getStringPci>
    n = stringToInt(input);
    800036cc:	00048513          	mv	a0,s1
    800036d0:	00002097          	auipc	ra,0x2
    800036d4:	650080e7          	jalr	1616(ra) # 80005d20 <_Z11stringToIntPKc>
    800036d8:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800036dc:	00006517          	auipc	a0,0x6
    800036e0:	a9450513          	addi	a0,a0,-1388 # 80009170 <CONSOLE_STATUS+0x160>
    800036e4:	00002097          	auipc	ra,0x2
    800036e8:	4dc080e7          	jalr	1244(ra) # 80005bc0 <_Z11printStringPKc>
    800036ec:	00000613          	li	a2,0
    800036f0:	00a00593          	li	a1,10
    800036f4:	00090513          	mv	a0,s2
    800036f8:	00002097          	auipc	ra,0x2
    800036fc:	678080e7          	jalr	1656(ra) # 80005d70 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003700:	00006517          	auipc	a0,0x6
    80003704:	a8850513          	addi	a0,a0,-1400 # 80009188 <CONSOLE_STATUS+0x178>
    80003708:	00002097          	auipc	ra,0x2
    8000370c:	4b8080e7          	jalr	1208(ra) # 80005bc0 <_Z11printStringPKc>
    80003710:	00000613          	li	a2,0
    80003714:	00a00593          	li	a1,10
    80003718:	00048513          	mv	a0,s1
    8000371c:	00002097          	auipc	ra,0x2
    80003720:	654080e7          	jalr	1620(ra) # 80005d70 <_Z8printIntiii>
    printString(".\n");
    80003724:	00006517          	auipc	a0,0x6
    80003728:	a7c50513          	addi	a0,a0,-1412 # 800091a0 <CONSOLE_STATUS+0x190>
    8000372c:	00002097          	auipc	ra,0x2
    80003730:	494080e7          	jalr	1172(ra) # 80005bc0 <_Z11printStringPKc>
    if(threadNum > n) {
    80003734:	0324c463          	blt	s1,s2,8000375c <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003738:	03205c63          	blez	s2,80003770 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    8000373c:	03800513          	li	a0,56
    80003740:	ffffe097          	auipc	ra,0xffffe
    80003744:	728080e7          	jalr	1832(ra) # 80001e68 <_Znwm>
    80003748:	00050a13          	mv	s4,a0
    8000374c:	00048593          	mv	a1,s1
    80003750:	00001097          	auipc	ra,0x1
    80003754:	2ec080e7          	jalr	748(ra) # 80004a3c <_ZN6BufferC1Ei>
    80003758:	0300006f          	j	80003788 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    8000375c:	00006517          	auipc	a0,0x6
    80003760:	a4c50513          	addi	a0,a0,-1460 # 800091a8 <CONSOLE_STATUS+0x198>
    80003764:	00002097          	auipc	ra,0x2
    80003768:	45c080e7          	jalr	1116(ra) # 80005bc0 <_Z11printStringPKc>
        return;
    8000376c:	0140006f          	j	80003780 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003770:	00006517          	auipc	a0,0x6
    80003774:	a7850513          	addi	a0,a0,-1416 # 800091e8 <CONSOLE_STATUS+0x1d8>
    80003778:	00002097          	auipc	ra,0x2
    8000377c:	448080e7          	jalr	1096(ra) # 80005bc0 <_Z11printStringPKc>
        return;
    80003780:	000b0113          	mv	sp,s6
    80003784:	1500006f          	j	800038d4 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003788:	00000593          	li	a1,0
    8000378c:	00008517          	auipc	a0,0x8
    80003790:	44c50513          	addi	a0,a0,1100 # 8000bbd8 <_ZL10waitForAll>
    80003794:	ffffe097          	auipc	ra,0xffffe
    80003798:	c74080e7          	jalr	-908(ra) # 80001408 <_Z8sem_openPP3Semj>
    thread_t threads[threadNum];
    8000379c:	00391793          	slli	a5,s2,0x3
    800037a0:	00f78793          	addi	a5,a5,15
    800037a4:	ff07f793          	andi	a5,a5,-16
    800037a8:	40f10133          	sub	sp,sp,a5
    800037ac:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    800037b0:	0019071b          	addiw	a4,s2,1
    800037b4:	00171793          	slli	a5,a4,0x1
    800037b8:	00e787b3          	add	a5,a5,a4
    800037bc:	00379793          	slli	a5,a5,0x3
    800037c0:	00f78793          	addi	a5,a5,15
    800037c4:	ff07f793          	andi	a5,a5,-16
    800037c8:	40f10133          	sub	sp,sp,a5
    800037cc:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    800037d0:	00191613          	slli	a2,s2,0x1
    800037d4:	012607b3          	add	a5,a2,s2
    800037d8:	00379793          	slli	a5,a5,0x3
    800037dc:	00f987b3          	add	a5,s3,a5
    800037e0:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800037e4:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    800037e8:	00008717          	auipc	a4,0x8
    800037ec:	3f073703          	ld	a4,1008(a4) # 8000bbd8 <_ZL10waitForAll>
    800037f0:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    800037f4:	00078613          	mv	a2,a5
    800037f8:	00000597          	auipc	a1,0x0
    800037fc:	d7458593          	addi	a1,a1,-652 # 8000356c <_ZL8consumerPv>
    80003800:	f9840513          	addi	a0,s0,-104
    80003804:	ffffe097          	auipc	ra,0xffffe
    80003808:	af4080e7          	jalr	-1292(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    8000380c:	00000493          	li	s1,0
    80003810:	0280006f          	j	80003838 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003814:	00000597          	auipc	a1,0x0
    80003818:	c1458593          	addi	a1,a1,-1004 # 80003428 <_ZL16producerKeyboardPv>
                      data + i);
    8000381c:	00179613          	slli	a2,a5,0x1
    80003820:	00f60633          	add	a2,a2,a5
    80003824:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003828:	00c98633          	add	a2,s3,a2
    8000382c:	ffffe097          	auipc	ra,0xffffe
    80003830:	acc080e7          	jalr	-1332(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003834:	0014849b          	addiw	s1,s1,1
    80003838:	0524d263          	bge	s1,s2,8000387c <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    8000383c:	00149793          	slli	a5,s1,0x1
    80003840:	009787b3          	add	a5,a5,s1
    80003844:	00379793          	slli	a5,a5,0x3
    80003848:	00f987b3          	add	a5,s3,a5
    8000384c:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003850:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80003854:	00008717          	auipc	a4,0x8
    80003858:	38473703          	ld	a4,900(a4) # 8000bbd8 <_ZL10waitForAll>
    8000385c:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003860:	00048793          	mv	a5,s1
    80003864:	00349513          	slli	a0,s1,0x3
    80003868:	00aa8533          	add	a0,s5,a0
    8000386c:	fa9054e3          	blez	s1,80003814 <_Z22producerConsumer_C_APIv+0x1c8>
    80003870:	00000597          	auipc	a1,0x0
    80003874:	c6858593          	addi	a1,a1,-920 # 800034d8 <_ZL8producerPv>
    80003878:	fa5ff06f          	j	8000381c <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    8000387c:	ffffe097          	auipc	ra,0xffffe
    80003880:	b50080e7          	jalr	-1200(ra) # 800013cc <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003884:	00000493          	li	s1,0
    80003888:	00994e63          	blt	s2,s1,800038a4 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    8000388c:	00008517          	auipc	a0,0x8
    80003890:	34c53503          	ld	a0,844(a0) # 8000bbd8 <_ZL10waitForAll>
    80003894:	ffffe097          	auipc	ra,0xffffe
    80003898:	c10080e7          	jalr	-1008(ra) # 800014a4 <_Z8sem_waitP3Sem>
    for (int i = 0; i <= threadNum; i++) {
    8000389c:	0014849b          	addiw	s1,s1,1
    800038a0:	fe9ff06f          	j	80003888 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    800038a4:	00008517          	auipc	a0,0x8
    800038a8:	33453503          	ld	a0,820(a0) # 8000bbd8 <_ZL10waitForAll>
    800038ac:	ffffe097          	auipc	ra,0xffffe
    800038b0:	bac080e7          	jalr	-1108(ra) # 80001458 <_Z9sem_closeP3Sem>
    delete buffer;
    800038b4:	000a0e63          	beqz	s4,800038d0 <_Z22producerConsumer_C_APIv+0x284>
    800038b8:	000a0513          	mv	a0,s4
    800038bc:	00001097          	auipc	ra,0x1
    800038c0:	3c0080e7          	jalr	960(ra) # 80004c7c <_ZN6BufferD1Ev>
    800038c4:	000a0513          	mv	a0,s4
    800038c8:	ffffe097          	auipc	ra,0xffffe
    800038cc:	5c8080e7          	jalr	1480(ra) # 80001e90 <_ZdlPv>
    800038d0:	000b0113          	mv	sp,s6

}
    800038d4:	f9040113          	addi	sp,s0,-112
    800038d8:	06813083          	ld	ra,104(sp)
    800038dc:	06013403          	ld	s0,96(sp)
    800038e0:	05813483          	ld	s1,88(sp)
    800038e4:	05013903          	ld	s2,80(sp)
    800038e8:	04813983          	ld	s3,72(sp)
    800038ec:	04013a03          	ld	s4,64(sp)
    800038f0:	03813a83          	ld	s5,56(sp)
    800038f4:	03013b03          	ld	s6,48(sp)
    800038f8:	07010113          	addi	sp,sp,112
    800038fc:	00008067          	ret
    80003900:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003904:	000a0513          	mv	a0,s4
    80003908:	ffffe097          	auipc	ra,0xffffe
    8000390c:	588080e7          	jalr	1416(ra) # 80001e90 <_ZdlPv>
    80003910:	00048513          	mv	a0,s1
    80003914:	00009097          	auipc	ra,0x9
    80003918:	3d4080e7          	jalr	980(ra) # 8000cce8 <_Unwind_Resume>

000000008000391c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    8000391c:	fe010113          	addi	sp,sp,-32
    80003920:	00113c23          	sd	ra,24(sp)
    80003924:	00813823          	sd	s0,16(sp)
    80003928:	00913423          	sd	s1,8(sp)
    8000392c:	01213023          	sd	s2,0(sp)
    80003930:	02010413          	addi	s0,sp,32
    80003934:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003938:	00100793          	li	a5,1
    8000393c:	02a7f863          	bgeu	a5,a0,8000396c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003940:	00a00793          	li	a5,10
    80003944:	02f577b3          	remu	a5,a0,a5
    80003948:	02078e63          	beqz	a5,80003984 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    8000394c:	fff48513          	addi	a0,s1,-1
    80003950:	00000097          	auipc	ra,0x0
    80003954:	fcc080e7          	jalr	-52(ra) # 8000391c <_ZL9fibonaccim>
    80003958:	00050913          	mv	s2,a0
    8000395c:	ffe48513          	addi	a0,s1,-2
    80003960:	00000097          	auipc	ra,0x0
    80003964:	fbc080e7          	jalr	-68(ra) # 8000391c <_ZL9fibonaccim>
    80003968:	00a90533          	add	a0,s2,a0
}
    8000396c:	01813083          	ld	ra,24(sp)
    80003970:	01013403          	ld	s0,16(sp)
    80003974:	00813483          	ld	s1,8(sp)
    80003978:	00013903          	ld	s2,0(sp)
    8000397c:	02010113          	addi	sp,sp,32
    80003980:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003984:	ffffe097          	auipc	ra,0xffffe
    80003988:	a48080e7          	jalr	-1464(ra) # 800013cc <_Z15thread_dispatchv>
    8000398c:	fc1ff06f          	j	8000394c <_ZL9fibonaccim+0x30>

0000000080003990 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003990:	fe010113          	addi	sp,sp,-32
    80003994:	00113c23          	sd	ra,24(sp)
    80003998:	00813823          	sd	s0,16(sp)
    8000399c:	00913423          	sd	s1,8(sp)
    800039a0:	01213023          	sd	s2,0(sp)
    800039a4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800039a8:	00000913          	li	s2,0
    800039ac:	0380006f          	j	800039e4 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800039b0:	ffffe097          	auipc	ra,0xffffe
    800039b4:	a1c080e7          	jalr	-1508(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800039b8:	00148493          	addi	s1,s1,1
    800039bc:	000027b7          	lui	a5,0x2
    800039c0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800039c4:	0097ee63          	bltu	a5,s1,800039e0 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800039c8:	00000713          	li	a4,0
    800039cc:	000077b7          	lui	a5,0x7
    800039d0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800039d4:	fce7eee3          	bltu	a5,a4,800039b0 <_ZN7WorkerA11workerBodyAEPv+0x20>
    800039d8:	00170713          	addi	a4,a4,1
    800039dc:	ff1ff06f          	j	800039cc <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800039e0:	00190913          	addi	s2,s2,1
    800039e4:	00900793          	li	a5,9
    800039e8:	0527e063          	bltu	a5,s2,80003a28 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800039ec:	00006517          	auipc	a0,0x6
    800039f0:	82c50513          	addi	a0,a0,-2004 # 80009218 <CONSOLE_STATUS+0x208>
    800039f4:	00002097          	auipc	ra,0x2
    800039f8:	1cc080e7          	jalr	460(ra) # 80005bc0 <_Z11printStringPKc>
    800039fc:	00000613          	li	a2,0
    80003a00:	00a00593          	li	a1,10
    80003a04:	0009051b          	sext.w	a0,s2
    80003a08:	00002097          	auipc	ra,0x2
    80003a0c:	368080e7          	jalr	872(ra) # 80005d70 <_Z8printIntiii>
    80003a10:	00005517          	auipc	a0,0x5
    80003a14:	75850513          	addi	a0,a0,1880 # 80009168 <CONSOLE_STATUS+0x158>
    80003a18:	00002097          	auipc	ra,0x2
    80003a1c:	1a8080e7          	jalr	424(ra) # 80005bc0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003a20:	00000493          	li	s1,0
    80003a24:	f99ff06f          	j	800039bc <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003a28:	00005517          	auipc	a0,0x5
    80003a2c:	7f850513          	addi	a0,a0,2040 # 80009220 <CONSOLE_STATUS+0x210>
    80003a30:	00002097          	auipc	ra,0x2
    80003a34:	190080e7          	jalr	400(ra) # 80005bc0 <_Z11printStringPKc>
    finishedA = true;
    80003a38:	00100793          	li	a5,1
    80003a3c:	00008717          	auipc	a4,0x8
    80003a40:	1af70223          	sb	a5,420(a4) # 8000bbe0 <_ZL9finishedA>
}
    80003a44:	01813083          	ld	ra,24(sp)
    80003a48:	01013403          	ld	s0,16(sp)
    80003a4c:	00813483          	ld	s1,8(sp)
    80003a50:	00013903          	ld	s2,0(sp)
    80003a54:	02010113          	addi	sp,sp,32
    80003a58:	00008067          	ret

0000000080003a5c <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003a5c:	fe010113          	addi	sp,sp,-32
    80003a60:	00113c23          	sd	ra,24(sp)
    80003a64:	00813823          	sd	s0,16(sp)
    80003a68:	00913423          	sd	s1,8(sp)
    80003a6c:	01213023          	sd	s2,0(sp)
    80003a70:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003a74:	00000913          	li	s2,0
    80003a78:	0380006f          	j	80003ab0 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003a7c:	ffffe097          	auipc	ra,0xffffe
    80003a80:	950080e7          	jalr	-1712(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003a84:	00148493          	addi	s1,s1,1
    80003a88:	000027b7          	lui	a5,0x2
    80003a8c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003a90:	0097ee63          	bltu	a5,s1,80003aac <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003a94:	00000713          	li	a4,0
    80003a98:	000077b7          	lui	a5,0x7
    80003a9c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003aa0:	fce7eee3          	bltu	a5,a4,80003a7c <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003aa4:	00170713          	addi	a4,a4,1
    80003aa8:	ff1ff06f          	j	80003a98 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003aac:	00190913          	addi	s2,s2,1
    80003ab0:	00f00793          	li	a5,15
    80003ab4:	0527e063          	bltu	a5,s2,80003af4 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003ab8:	00005517          	auipc	a0,0x5
    80003abc:	77850513          	addi	a0,a0,1912 # 80009230 <CONSOLE_STATUS+0x220>
    80003ac0:	00002097          	auipc	ra,0x2
    80003ac4:	100080e7          	jalr	256(ra) # 80005bc0 <_Z11printStringPKc>
    80003ac8:	00000613          	li	a2,0
    80003acc:	00a00593          	li	a1,10
    80003ad0:	0009051b          	sext.w	a0,s2
    80003ad4:	00002097          	auipc	ra,0x2
    80003ad8:	29c080e7          	jalr	668(ra) # 80005d70 <_Z8printIntiii>
    80003adc:	00005517          	auipc	a0,0x5
    80003ae0:	68c50513          	addi	a0,a0,1676 # 80009168 <CONSOLE_STATUS+0x158>
    80003ae4:	00002097          	auipc	ra,0x2
    80003ae8:	0dc080e7          	jalr	220(ra) # 80005bc0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003aec:	00000493          	li	s1,0
    80003af0:	f99ff06f          	j	80003a88 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003af4:	00005517          	auipc	a0,0x5
    80003af8:	74450513          	addi	a0,a0,1860 # 80009238 <CONSOLE_STATUS+0x228>
    80003afc:	00002097          	auipc	ra,0x2
    80003b00:	0c4080e7          	jalr	196(ra) # 80005bc0 <_Z11printStringPKc>
    finishedB = true;
    80003b04:	00100793          	li	a5,1
    80003b08:	00008717          	auipc	a4,0x8
    80003b0c:	0cf70ca3          	sb	a5,217(a4) # 8000bbe1 <_ZL9finishedB>
    thread_dispatch();
    80003b10:	ffffe097          	auipc	ra,0xffffe
    80003b14:	8bc080e7          	jalr	-1860(ra) # 800013cc <_Z15thread_dispatchv>
}
    80003b18:	01813083          	ld	ra,24(sp)
    80003b1c:	01013403          	ld	s0,16(sp)
    80003b20:	00813483          	ld	s1,8(sp)
    80003b24:	00013903          	ld	s2,0(sp)
    80003b28:	02010113          	addi	sp,sp,32
    80003b2c:	00008067          	ret

0000000080003b30 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003b30:	fe010113          	addi	sp,sp,-32
    80003b34:	00113c23          	sd	ra,24(sp)
    80003b38:	00813823          	sd	s0,16(sp)
    80003b3c:	00913423          	sd	s1,8(sp)
    80003b40:	01213023          	sd	s2,0(sp)
    80003b44:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003b48:	00000493          	li	s1,0
    80003b4c:	0400006f          	j	80003b8c <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003b50:	00005517          	auipc	a0,0x5
    80003b54:	6f850513          	addi	a0,a0,1784 # 80009248 <CONSOLE_STATUS+0x238>
    80003b58:	00002097          	auipc	ra,0x2
    80003b5c:	068080e7          	jalr	104(ra) # 80005bc0 <_Z11printStringPKc>
    80003b60:	00000613          	li	a2,0
    80003b64:	00a00593          	li	a1,10
    80003b68:	00048513          	mv	a0,s1
    80003b6c:	00002097          	auipc	ra,0x2
    80003b70:	204080e7          	jalr	516(ra) # 80005d70 <_Z8printIntiii>
    80003b74:	00005517          	auipc	a0,0x5
    80003b78:	5f450513          	addi	a0,a0,1524 # 80009168 <CONSOLE_STATUS+0x158>
    80003b7c:	00002097          	auipc	ra,0x2
    80003b80:	044080e7          	jalr	68(ra) # 80005bc0 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003b84:	0014849b          	addiw	s1,s1,1
    80003b88:	0ff4f493          	andi	s1,s1,255
    80003b8c:	00200793          	li	a5,2
    80003b90:	fc97f0e3          	bgeu	a5,s1,80003b50 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003b94:	00005517          	auipc	a0,0x5
    80003b98:	6bc50513          	addi	a0,a0,1724 # 80009250 <CONSOLE_STATUS+0x240>
    80003b9c:	00002097          	auipc	ra,0x2
    80003ba0:	024080e7          	jalr	36(ra) # 80005bc0 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003ba4:	00700313          	li	t1,7
    thread_dispatch();
    80003ba8:	ffffe097          	auipc	ra,0xffffe
    80003bac:	824080e7          	jalr	-2012(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003bb0:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003bb4:	00005517          	auipc	a0,0x5
    80003bb8:	6ac50513          	addi	a0,a0,1708 # 80009260 <CONSOLE_STATUS+0x250>
    80003bbc:	00002097          	auipc	ra,0x2
    80003bc0:	004080e7          	jalr	4(ra) # 80005bc0 <_Z11printStringPKc>
    80003bc4:	00000613          	li	a2,0
    80003bc8:	00a00593          	li	a1,10
    80003bcc:	0009051b          	sext.w	a0,s2
    80003bd0:	00002097          	auipc	ra,0x2
    80003bd4:	1a0080e7          	jalr	416(ra) # 80005d70 <_Z8printIntiii>
    80003bd8:	00005517          	auipc	a0,0x5
    80003bdc:	59050513          	addi	a0,a0,1424 # 80009168 <CONSOLE_STATUS+0x158>
    80003be0:	00002097          	auipc	ra,0x2
    80003be4:	fe0080e7          	jalr	-32(ra) # 80005bc0 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003be8:	00c00513          	li	a0,12
    80003bec:	00000097          	auipc	ra,0x0
    80003bf0:	d30080e7          	jalr	-720(ra) # 8000391c <_ZL9fibonaccim>
    80003bf4:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003bf8:	00005517          	auipc	a0,0x5
    80003bfc:	67050513          	addi	a0,a0,1648 # 80009268 <CONSOLE_STATUS+0x258>
    80003c00:	00002097          	auipc	ra,0x2
    80003c04:	fc0080e7          	jalr	-64(ra) # 80005bc0 <_Z11printStringPKc>
    80003c08:	00000613          	li	a2,0
    80003c0c:	00a00593          	li	a1,10
    80003c10:	0009051b          	sext.w	a0,s2
    80003c14:	00002097          	auipc	ra,0x2
    80003c18:	15c080e7          	jalr	348(ra) # 80005d70 <_Z8printIntiii>
    80003c1c:	00005517          	auipc	a0,0x5
    80003c20:	54c50513          	addi	a0,a0,1356 # 80009168 <CONSOLE_STATUS+0x158>
    80003c24:	00002097          	auipc	ra,0x2
    80003c28:	f9c080e7          	jalr	-100(ra) # 80005bc0 <_Z11printStringPKc>
    80003c2c:	0400006f          	j	80003c6c <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003c30:	00005517          	auipc	a0,0x5
    80003c34:	61850513          	addi	a0,a0,1560 # 80009248 <CONSOLE_STATUS+0x238>
    80003c38:	00002097          	auipc	ra,0x2
    80003c3c:	f88080e7          	jalr	-120(ra) # 80005bc0 <_Z11printStringPKc>
    80003c40:	00000613          	li	a2,0
    80003c44:	00a00593          	li	a1,10
    80003c48:	00048513          	mv	a0,s1
    80003c4c:	00002097          	auipc	ra,0x2
    80003c50:	124080e7          	jalr	292(ra) # 80005d70 <_Z8printIntiii>
    80003c54:	00005517          	auipc	a0,0x5
    80003c58:	51450513          	addi	a0,a0,1300 # 80009168 <CONSOLE_STATUS+0x158>
    80003c5c:	00002097          	auipc	ra,0x2
    80003c60:	f64080e7          	jalr	-156(ra) # 80005bc0 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003c64:	0014849b          	addiw	s1,s1,1
    80003c68:	0ff4f493          	andi	s1,s1,255
    80003c6c:	00500793          	li	a5,5
    80003c70:	fc97f0e3          	bgeu	a5,s1,80003c30 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80003c74:	00005517          	auipc	a0,0x5
    80003c78:	5ac50513          	addi	a0,a0,1452 # 80009220 <CONSOLE_STATUS+0x210>
    80003c7c:	00002097          	auipc	ra,0x2
    80003c80:	f44080e7          	jalr	-188(ra) # 80005bc0 <_Z11printStringPKc>
    finishedC = true;
    80003c84:	00100793          	li	a5,1
    80003c88:	00008717          	auipc	a4,0x8
    80003c8c:	f4f70d23          	sb	a5,-166(a4) # 8000bbe2 <_ZL9finishedC>
    thread_dispatch();
    80003c90:	ffffd097          	auipc	ra,0xffffd
    80003c94:	73c080e7          	jalr	1852(ra) # 800013cc <_Z15thread_dispatchv>
}
    80003c98:	01813083          	ld	ra,24(sp)
    80003c9c:	01013403          	ld	s0,16(sp)
    80003ca0:	00813483          	ld	s1,8(sp)
    80003ca4:	00013903          	ld	s2,0(sp)
    80003ca8:	02010113          	addi	sp,sp,32
    80003cac:	00008067          	ret

0000000080003cb0 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003cb0:	fe010113          	addi	sp,sp,-32
    80003cb4:	00113c23          	sd	ra,24(sp)
    80003cb8:	00813823          	sd	s0,16(sp)
    80003cbc:	00913423          	sd	s1,8(sp)
    80003cc0:	01213023          	sd	s2,0(sp)
    80003cc4:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003cc8:	00a00493          	li	s1,10
    80003ccc:	0400006f          	j	80003d0c <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003cd0:	00005517          	auipc	a0,0x5
    80003cd4:	5a850513          	addi	a0,a0,1448 # 80009278 <CONSOLE_STATUS+0x268>
    80003cd8:	00002097          	auipc	ra,0x2
    80003cdc:	ee8080e7          	jalr	-280(ra) # 80005bc0 <_Z11printStringPKc>
    80003ce0:	00000613          	li	a2,0
    80003ce4:	00a00593          	li	a1,10
    80003ce8:	00048513          	mv	a0,s1
    80003cec:	00002097          	auipc	ra,0x2
    80003cf0:	084080e7          	jalr	132(ra) # 80005d70 <_Z8printIntiii>
    80003cf4:	00005517          	auipc	a0,0x5
    80003cf8:	47450513          	addi	a0,a0,1140 # 80009168 <CONSOLE_STATUS+0x158>
    80003cfc:	00002097          	auipc	ra,0x2
    80003d00:	ec4080e7          	jalr	-316(ra) # 80005bc0 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003d04:	0014849b          	addiw	s1,s1,1
    80003d08:	0ff4f493          	andi	s1,s1,255
    80003d0c:	00c00793          	li	a5,12
    80003d10:	fc97f0e3          	bgeu	a5,s1,80003cd0 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003d14:	00005517          	auipc	a0,0x5
    80003d18:	56c50513          	addi	a0,a0,1388 # 80009280 <CONSOLE_STATUS+0x270>
    80003d1c:	00002097          	auipc	ra,0x2
    80003d20:	ea4080e7          	jalr	-348(ra) # 80005bc0 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003d24:	00500313          	li	t1,5
    thread_dispatch();
    80003d28:	ffffd097          	auipc	ra,0xffffd
    80003d2c:	6a4080e7          	jalr	1700(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003d30:	01000513          	li	a0,16
    80003d34:	00000097          	auipc	ra,0x0
    80003d38:	be8080e7          	jalr	-1048(ra) # 8000391c <_ZL9fibonaccim>
    80003d3c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003d40:	00005517          	auipc	a0,0x5
    80003d44:	55050513          	addi	a0,a0,1360 # 80009290 <CONSOLE_STATUS+0x280>
    80003d48:	00002097          	auipc	ra,0x2
    80003d4c:	e78080e7          	jalr	-392(ra) # 80005bc0 <_Z11printStringPKc>
    80003d50:	00000613          	li	a2,0
    80003d54:	00a00593          	li	a1,10
    80003d58:	0009051b          	sext.w	a0,s2
    80003d5c:	00002097          	auipc	ra,0x2
    80003d60:	014080e7          	jalr	20(ra) # 80005d70 <_Z8printIntiii>
    80003d64:	00005517          	auipc	a0,0x5
    80003d68:	40450513          	addi	a0,a0,1028 # 80009168 <CONSOLE_STATUS+0x158>
    80003d6c:	00002097          	auipc	ra,0x2
    80003d70:	e54080e7          	jalr	-428(ra) # 80005bc0 <_Z11printStringPKc>
    80003d74:	0400006f          	j	80003db4 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003d78:	00005517          	auipc	a0,0x5
    80003d7c:	50050513          	addi	a0,a0,1280 # 80009278 <CONSOLE_STATUS+0x268>
    80003d80:	00002097          	auipc	ra,0x2
    80003d84:	e40080e7          	jalr	-448(ra) # 80005bc0 <_Z11printStringPKc>
    80003d88:	00000613          	li	a2,0
    80003d8c:	00a00593          	li	a1,10
    80003d90:	00048513          	mv	a0,s1
    80003d94:	00002097          	auipc	ra,0x2
    80003d98:	fdc080e7          	jalr	-36(ra) # 80005d70 <_Z8printIntiii>
    80003d9c:	00005517          	auipc	a0,0x5
    80003da0:	3cc50513          	addi	a0,a0,972 # 80009168 <CONSOLE_STATUS+0x158>
    80003da4:	00002097          	auipc	ra,0x2
    80003da8:	e1c080e7          	jalr	-484(ra) # 80005bc0 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003dac:	0014849b          	addiw	s1,s1,1
    80003db0:	0ff4f493          	andi	s1,s1,255
    80003db4:	00f00793          	li	a5,15
    80003db8:	fc97f0e3          	bgeu	a5,s1,80003d78 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003dbc:	00005517          	auipc	a0,0x5
    80003dc0:	4e450513          	addi	a0,a0,1252 # 800092a0 <CONSOLE_STATUS+0x290>
    80003dc4:	00002097          	auipc	ra,0x2
    80003dc8:	dfc080e7          	jalr	-516(ra) # 80005bc0 <_Z11printStringPKc>
    finishedD = true;
    80003dcc:	00100793          	li	a5,1
    80003dd0:	00008717          	auipc	a4,0x8
    80003dd4:	e0f709a3          	sb	a5,-493(a4) # 8000bbe3 <_ZL9finishedD>
    thread_dispatch();
    80003dd8:	ffffd097          	auipc	ra,0xffffd
    80003ddc:	5f4080e7          	jalr	1524(ra) # 800013cc <_Z15thread_dispatchv>
}
    80003de0:	01813083          	ld	ra,24(sp)
    80003de4:	01013403          	ld	s0,16(sp)
    80003de8:	00813483          	ld	s1,8(sp)
    80003dec:	00013903          	ld	s2,0(sp)
    80003df0:	02010113          	addi	sp,sp,32
    80003df4:	00008067          	ret

0000000080003df8 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003df8:	fc010113          	addi	sp,sp,-64
    80003dfc:	02113c23          	sd	ra,56(sp)
    80003e00:	02813823          	sd	s0,48(sp)
    80003e04:	02913423          	sd	s1,40(sp)
    80003e08:	03213023          	sd	s2,32(sp)
    80003e0c:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003e10:	02000513          	li	a0,32
    80003e14:	ffffe097          	auipc	ra,0xffffe
    80003e18:	054080e7          	jalr	84(ra) # 80001e68 <_Znwm>
    80003e1c:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003e20:	ffffe097          	auipc	ra,0xffffe
    80003e24:	1d8080e7          	jalr	472(ra) # 80001ff8 <_ZN6ThreadC1Ev>
    80003e28:	00008797          	auipc	a5,0x8
    80003e2c:	b0878793          	addi	a5,a5,-1272 # 8000b930 <_ZTV7WorkerA+0x10>
    80003e30:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003e34:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003e38:	00005517          	auipc	a0,0x5
    80003e3c:	47850513          	addi	a0,a0,1144 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80003e40:	00002097          	auipc	ra,0x2
    80003e44:	d80080e7          	jalr	-640(ra) # 80005bc0 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003e48:	02000513          	li	a0,32
    80003e4c:	ffffe097          	auipc	ra,0xffffe
    80003e50:	01c080e7          	jalr	28(ra) # 80001e68 <_Znwm>
    80003e54:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003e58:	ffffe097          	auipc	ra,0xffffe
    80003e5c:	1a0080e7          	jalr	416(ra) # 80001ff8 <_ZN6ThreadC1Ev>
    80003e60:	00008797          	auipc	a5,0x8
    80003e64:	af878793          	addi	a5,a5,-1288 # 8000b958 <_ZTV7WorkerB+0x10>
    80003e68:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003e6c:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003e70:	00005517          	auipc	a0,0x5
    80003e74:	45850513          	addi	a0,a0,1112 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80003e78:	00002097          	auipc	ra,0x2
    80003e7c:	d48080e7          	jalr	-696(ra) # 80005bc0 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003e80:	02000513          	li	a0,32
    80003e84:	ffffe097          	auipc	ra,0xffffe
    80003e88:	fe4080e7          	jalr	-28(ra) # 80001e68 <_Znwm>
    80003e8c:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003e90:	ffffe097          	auipc	ra,0xffffe
    80003e94:	168080e7          	jalr	360(ra) # 80001ff8 <_ZN6ThreadC1Ev>
    80003e98:	00008797          	auipc	a5,0x8
    80003e9c:	ae878793          	addi	a5,a5,-1304 # 8000b980 <_ZTV7WorkerC+0x10>
    80003ea0:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003ea4:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003ea8:	00005517          	auipc	a0,0x5
    80003eac:	43850513          	addi	a0,a0,1080 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80003eb0:	00002097          	auipc	ra,0x2
    80003eb4:	d10080e7          	jalr	-752(ra) # 80005bc0 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003eb8:	02000513          	li	a0,32
    80003ebc:	ffffe097          	auipc	ra,0xffffe
    80003ec0:	fac080e7          	jalr	-84(ra) # 80001e68 <_Znwm>
    80003ec4:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003ec8:	ffffe097          	auipc	ra,0xffffe
    80003ecc:	130080e7          	jalr	304(ra) # 80001ff8 <_ZN6ThreadC1Ev>
    80003ed0:	00008797          	auipc	a5,0x8
    80003ed4:	ad878793          	addi	a5,a5,-1320 # 8000b9a8 <_ZTV7WorkerD+0x10>
    80003ed8:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003edc:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003ee0:	00005517          	auipc	a0,0x5
    80003ee4:	41850513          	addi	a0,a0,1048 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80003ee8:	00002097          	auipc	ra,0x2
    80003eec:	cd8080e7          	jalr	-808(ra) # 80005bc0 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003ef0:	00000493          	li	s1,0
    80003ef4:	00300793          	li	a5,3
    80003ef8:	0297c663          	blt	a5,s1,80003f24 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003efc:	00349793          	slli	a5,s1,0x3
    80003f00:	fe040713          	addi	a4,s0,-32
    80003f04:	00f707b3          	add	a5,a4,a5
    80003f08:	fe07b503          	ld	a0,-32(a5)
    80003f0c:	ffffe097          	auipc	ra,0xffffe
    80003f10:	068080e7          	jalr	104(ra) # 80001f74 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003f14:	0014849b          	addiw	s1,s1,1
    80003f18:	fddff06f          	j	80003ef4 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003f1c:	ffffe097          	auipc	ra,0xffffe
    80003f20:	088080e7          	jalr	136(ra) # 80001fa4 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003f24:	00008797          	auipc	a5,0x8
    80003f28:	cbc7c783          	lbu	a5,-836(a5) # 8000bbe0 <_ZL9finishedA>
    80003f2c:	fe0788e3          	beqz	a5,80003f1c <_Z20Threads_CPP_API_testv+0x124>
    80003f30:	00008797          	auipc	a5,0x8
    80003f34:	cb17c783          	lbu	a5,-847(a5) # 8000bbe1 <_ZL9finishedB>
    80003f38:	fe0782e3          	beqz	a5,80003f1c <_Z20Threads_CPP_API_testv+0x124>
    80003f3c:	00008797          	auipc	a5,0x8
    80003f40:	ca67c783          	lbu	a5,-858(a5) # 8000bbe2 <_ZL9finishedC>
    80003f44:	fc078ce3          	beqz	a5,80003f1c <_Z20Threads_CPP_API_testv+0x124>
    80003f48:	00008797          	auipc	a5,0x8
    80003f4c:	c9b7c783          	lbu	a5,-869(a5) # 8000bbe3 <_ZL9finishedD>
    80003f50:	fc0786e3          	beqz	a5,80003f1c <_Z20Threads_CPP_API_testv+0x124>
    80003f54:	fc040493          	addi	s1,s0,-64
    80003f58:	0080006f          	j	80003f60 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80003f5c:	00848493          	addi	s1,s1,8
    80003f60:	fe040793          	addi	a5,s0,-32
    80003f64:	08f48663          	beq	s1,a5,80003ff0 <_Z20Threads_CPP_API_testv+0x1f8>
    80003f68:	0004b503          	ld	a0,0(s1)
    80003f6c:	fe0508e3          	beqz	a0,80003f5c <_Z20Threads_CPP_API_testv+0x164>
    80003f70:	00053783          	ld	a5,0(a0)
    80003f74:	0087b783          	ld	a5,8(a5)
    80003f78:	000780e7          	jalr	a5
    80003f7c:	fe1ff06f          	j	80003f5c <_Z20Threads_CPP_API_testv+0x164>
    80003f80:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80003f84:	00048513          	mv	a0,s1
    80003f88:	ffffe097          	auipc	ra,0xffffe
    80003f8c:	f08080e7          	jalr	-248(ra) # 80001e90 <_ZdlPv>
    80003f90:	00090513          	mv	a0,s2
    80003f94:	00009097          	auipc	ra,0x9
    80003f98:	d54080e7          	jalr	-684(ra) # 8000cce8 <_Unwind_Resume>
    80003f9c:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003fa0:	00048513          	mv	a0,s1
    80003fa4:	ffffe097          	auipc	ra,0xffffe
    80003fa8:	eec080e7          	jalr	-276(ra) # 80001e90 <_ZdlPv>
    80003fac:	00090513          	mv	a0,s2
    80003fb0:	00009097          	auipc	ra,0x9
    80003fb4:	d38080e7          	jalr	-712(ra) # 8000cce8 <_Unwind_Resume>
    80003fb8:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80003fbc:	00048513          	mv	a0,s1
    80003fc0:	ffffe097          	auipc	ra,0xffffe
    80003fc4:	ed0080e7          	jalr	-304(ra) # 80001e90 <_ZdlPv>
    80003fc8:	00090513          	mv	a0,s2
    80003fcc:	00009097          	auipc	ra,0x9
    80003fd0:	d1c080e7          	jalr	-740(ra) # 8000cce8 <_Unwind_Resume>
    80003fd4:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003fd8:	00048513          	mv	a0,s1
    80003fdc:	ffffe097          	auipc	ra,0xffffe
    80003fe0:	eb4080e7          	jalr	-332(ra) # 80001e90 <_ZdlPv>
    80003fe4:	00090513          	mv	a0,s2
    80003fe8:	00009097          	auipc	ra,0x9
    80003fec:	d00080e7          	jalr	-768(ra) # 8000cce8 <_Unwind_Resume>
}
    80003ff0:	03813083          	ld	ra,56(sp)
    80003ff4:	03013403          	ld	s0,48(sp)
    80003ff8:	02813483          	ld	s1,40(sp)
    80003ffc:	02013903          	ld	s2,32(sp)
    80004000:	04010113          	addi	sp,sp,64
    80004004:	00008067          	ret

0000000080004008 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80004008:	ff010113          	addi	sp,sp,-16
    8000400c:	00113423          	sd	ra,8(sp)
    80004010:	00813023          	sd	s0,0(sp)
    80004014:	01010413          	addi	s0,sp,16
    80004018:	00008797          	auipc	a5,0x8
    8000401c:	91878793          	addi	a5,a5,-1768 # 8000b930 <_ZTV7WorkerA+0x10>
    80004020:	00f53023          	sd	a5,0(a0)
    80004024:	ffffe097          	auipc	ra,0xffffe
    80004028:	dac080e7          	jalr	-596(ra) # 80001dd0 <_ZN6ThreadD1Ev>
    8000402c:	00813083          	ld	ra,8(sp)
    80004030:	00013403          	ld	s0,0(sp)
    80004034:	01010113          	addi	sp,sp,16
    80004038:	00008067          	ret

000000008000403c <_ZN7WorkerAD0Ev>:
    8000403c:	fe010113          	addi	sp,sp,-32
    80004040:	00113c23          	sd	ra,24(sp)
    80004044:	00813823          	sd	s0,16(sp)
    80004048:	00913423          	sd	s1,8(sp)
    8000404c:	02010413          	addi	s0,sp,32
    80004050:	00050493          	mv	s1,a0
    80004054:	00008797          	auipc	a5,0x8
    80004058:	8dc78793          	addi	a5,a5,-1828 # 8000b930 <_ZTV7WorkerA+0x10>
    8000405c:	00f53023          	sd	a5,0(a0)
    80004060:	ffffe097          	auipc	ra,0xffffe
    80004064:	d70080e7          	jalr	-656(ra) # 80001dd0 <_ZN6ThreadD1Ev>
    80004068:	00048513          	mv	a0,s1
    8000406c:	ffffe097          	auipc	ra,0xffffe
    80004070:	e24080e7          	jalr	-476(ra) # 80001e90 <_ZdlPv>
    80004074:	01813083          	ld	ra,24(sp)
    80004078:	01013403          	ld	s0,16(sp)
    8000407c:	00813483          	ld	s1,8(sp)
    80004080:	02010113          	addi	sp,sp,32
    80004084:	00008067          	ret

0000000080004088 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80004088:	ff010113          	addi	sp,sp,-16
    8000408c:	00113423          	sd	ra,8(sp)
    80004090:	00813023          	sd	s0,0(sp)
    80004094:	01010413          	addi	s0,sp,16
    80004098:	00008797          	auipc	a5,0x8
    8000409c:	8c078793          	addi	a5,a5,-1856 # 8000b958 <_ZTV7WorkerB+0x10>
    800040a0:	00f53023          	sd	a5,0(a0)
    800040a4:	ffffe097          	auipc	ra,0xffffe
    800040a8:	d2c080e7          	jalr	-724(ra) # 80001dd0 <_ZN6ThreadD1Ev>
    800040ac:	00813083          	ld	ra,8(sp)
    800040b0:	00013403          	ld	s0,0(sp)
    800040b4:	01010113          	addi	sp,sp,16
    800040b8:	00008067          	ret

00000000800040bc <_ZN7WorkerBD0Ev>:
    800040bc:	fe010113          	addi	sp,sp,-32
    800040c0:	00113c23          	sd	ra,24(sp)
    800040c4:	00813823          	sd	s0,16(sp)
    800040c8:	00913423          	sd	s1,8(sp)
    800040cc:	02010413          	addi	s0,sp,32
    800040d0:	00050493          	mv	s1,a0
    800040d4:	00008797          	auipc	a5,0x8
    800040d8:	88478793          	addi	a5,a5,-1916 # 8000b958 <_ZTV7WorkerB+0x10>
    800040dc:	00f53023          	sd	a5,0(a0)
    800040e0:	ffffe097          	auipc	ra,0xffffe
    800040e4:	cf0080e7          	jalr	-784(ra) # 80001dd0 <_ZN6ThreadD1Ev>
    800040e8:	00048513          	mv	a0,s1
    800040ec:	ffffe097          	auipc	ra,0xffffe
    800040f0:	da4080e7          	jalr	-604(ra) # 80001e90 <_ZdlPv>
    800040f4:	01813083          	ld	ra,24(sp)
    800040f8:	01013403          	ld	s0,16(sp)
    800040fc:	00813483          	ld	s1,8(sp)
    80004100:	02010113          	addi	sp,sp,32
    80004104:	00008067          	ret

0000000080004108 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80004108:	ff010113          	addi	sp,sp,-16
    8000410c:	00113423          	sd	ra,8(sp)
    80004110:	00813023          	sd	s0,0(sp)
    80004114:	01010413          	addi	s0,sp,16
    80004118:	00008797          	auipc	a5,0x8
    8000411c:	86878793          	addi	a5,a5,-1944 # 8000b980 <_ZTV7WorkerC+0x10>
    80004120:	00f53023          	sd	a5,0(a0)
    80004124:	ffffe097          	auipc	ra,0xffffe
    80004128:	cac080e7          	jalr	-852(ra) # 80001dd0 <_ZN6ThreadD1Ev>
    8000412c:	00813083          	ld	ra,8(sp)
    80004130:	00013403          	ld	s0,0(sp)
    80004134:	01010113          	addi	sp,sp,16
    80004138:	00008067          	ret

000000008000413c <_ZN7WorkerCD0Ev>:
    8000413c:	fe010113          	addi	sp,sp,-32
    80004140:	00113c23          	sd	ra,24(sp)
    80004144:	00813823          	sd	s0,16(sp)
    80004148:	00913423          	sd	s1,8(sp)
    8000414c:	02010413          	addi	s0,sp,32
    80004150:	00050493          	mv	s1,a0
    80004154:	00008797          	auipc	a5,0x8
    80004158:	82c78793          	addi	a5,a5,-2004 # 8000b980 <_ZTV7WorkerC+0x10>
    8000415c:	00f53023          	sd	a5,0(a0)
    80004160:	ffffe097          	auipc	ra,0xffffe
    80004164:	c70080e7          	jalr	-912(ra) # 80001dd0 <_ZN6ThreadD1Ev>
    80004168:	00048513          	mv	a0,s1
    8000416c:	ffffe097          	auipc	ra,0xffffe
    80004170:	d24080e7          	jalr	-732(ra) # 80001e90 <_ZdlPv>
    80004174:	01813083          	ld	ra,24(sp)
    80004178:	01013403          	ld	s0,16(sp)
    8000417c:	00813483          	ld	s1,8(sp)
    80004180:	02010113          	addi	sp,sp,32
    80004184:	00008067          	ret

0000000080004188 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80004188:	ff010113          	addi	sp,sp,-16
    8000418c:	00113423          	sd	ra,8(sp)
    80004190:	00813023          	sd	s0,0(sp)
    80004194:	01010413          	addi	s0,sp,16
    80004198:	00008797          	auipc	a5,0x8
    8000419c:	81078793          	addi	a5,a5,-2032 # 8000b9a8 <_ZTV7WorkerD+0x10>
    800041a0:	00f53023          	sd	a5,0(a0)
    800041a4:	ffffe097          	auipc	ra,0xffffe
    800041a8:	c2c080e7          	jalr	-980(ra) # 80001dd0 <_ZN6ThreadD1Ev>
    800041ac:	00813083          	ld	ra,8(sp)
    800041b0:	00013403          	ld	s0,0(sp)
    800041b4:	01010113          	addi	sp,sp,16
    800041b8:	00008067          	ret

00000000800041bc <_ZN7WorkerDD0Ev>:
    800041bc:	fe010113          	addi	sp,sp,-32
    800041c0:	00113c23          	sd	ra,24(sp)
    800041c4:	00813823          	sd	s0,16(sp)
    800041c8:	00913423          	sd	s1,8(sp)
    800041cc:	02010413          	addi	s0,sp,32
    800041d0:	00050493          	mv	s1,a0
    800041d4:	00007797          	auipc	a5,0x7
    800041d8:	7d478793          	addi	a5,a5,2004 # 8000b9a8 <_ZTV7WorkerD+0x10>
    800041dc:	00f53023          	sd	a5,0(a0)
    800041e0:	ffffe097          	auipc	ra,0xffffe
    800041e4:	bf0080e7          	jalr	-1040(ra) # 80001dd0 <_ZN6ThreadD1Ev>
    800041e8:	00048513          	mv	a0,s1
    800041ec:	ffffe097          	auipc	ra,0xffffe
    800041f0:	ca4080e7          	jalr	-860(ra) # 80001e90 <_ZdlPv>
    800041f4:	01813083          	ld	ra,24(sp)
    800041f8:	01013403          	ld	s0,16(sp)
    800041fc:	00813483          	ld	s1,8(sp)
    80004200:	02010113          	addi	sp,sp,32
    80004204:	00008067          	ret

0000000080004208 <_ZN7WorkerA3runEv>:
    void run() override {
    80004208:	ff010113          	addi	sp,sp,-16
    8000420c:	00113423          	sd	ra,8(sp)
    80004210:	00813023          	sd	s0,0(sp)
    80004214:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80004218:	00000593          	li	a1,0
    8000421c:	fffff097          	auipc	ra,0xfffff
    80004220:	774080e7          	jalr	1908(ra) # 80003990 <_ZN7WorkerA11workerBodyAEPv>
    }
    80004224:	00813083          	ld	ra,8(sp)
    80004228:	00013403          	ld	s0,0(sp)
    8000422c:	01010113          	addi	sp,sp,16
    80004230:	00008067          	ret

0000000080004234 <_ZN7WorkerB3runEv>:
    void run() override {
    80004234:	ff010113          	addi	sp,sp,-16
    80004238:	00113423          	sd	ra,8(sp)
    8000423c:	00813023          	sd	s0,0(sp)
    80004240:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80004244:	00000593          	li	a1,0
    80004248:	00000097          	auipc	ra,0x0
    8000424c:	814080e7          	jalr	-2028(ra) # 80003a5c <_ZN7WorkerB11workerBodyBEPv>
    }
    80004250:	00813083          	ld	ra,8(sp)
    80004254:	00013403          	ld	s0,0(sp)
    80004258:	01010113          	addi	sp,sp,16
    8000425c:	00008067          	ret

0000000080004260 <_ZN7WorkerC3runEv>:
    void run() override {
    80004260:	ff010113          	addi	sp,sp,-16
    80004264:	00113423          	sd	ra,8(sp)
    80004268:	00813023          	sd	s0,0(sp)
    8000426c:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80004270:	00000593          	li	a1,0
    80004274:	00000097          	auipc	ra,0x0
    80004278:	8bc080e7          	jalr	-1860(ra) # 80003b30 <_ZN7WorkerC11workerBodyCEPv>
    }
    8000427c:	00813083          	ld	ra,8(sp)
    80004280:	00013403          	ld	s0,0(sp)
    80004284:	01010113          	addi	sp,sp,16
    80004288:	00008067          	ret

000000008000428c <_ZN7WorkerD3runEv>:
    void run() override {
    8000428c:	ff010113          	addi	sp,sp,-16
    80004290:	00113423          	sd	ra,8(sp)
    80004294:	00813023          	sd	s0,0(sp)
    80004298:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    8000429c:	00000593          	li	a1,0
    800042a0:	00000097          	auipc	ra,0x0
    800042a4:	a10080e7          	jalr	-1520(ra) # 80003cb0 <_ZN7WorkerD11workerBodyDEPv>
    }
    800042a8:	00813083          	ld	ra,8(sp)
    800042ac:	00013403          	ld	s0,0(sp)
    800042b0:	01010113          	addi	sp,sp,16
    800042b4:	00008067          	ret

00000000800042b8 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    800042b8:	f8010113          	addi	sp,sp,-128
    800042bc:	06113c23          	sd	ra,120(sp)
    800042c0:	06813823          	sd	s0,112(sp)
    800042c4:	06913423          	sd	s1,104(sp)
    800042c8:	07213023          	sd	s2,96(sp)
    800042cc:	05313c23          	sd	s3,88(sp)
    800042d0:	05413823          	sd	s4,80(sp)
    800042d4:	05513423          	sd	s5,72(sp)
    800042d8:	05613023          	sd	s6,64(sp)
    800042dc:	03713c23          	sd	s7,56(sp)
    800042e0:	03813823          	sd	s8,48(sp)
    800042e4:	03913423          	sd	s9,40(sp)
    800042e8:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    800042ec:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    800042f0:	00005517          	auipc	a0,0x5
    800042f4:	e4050513          	addi	a0,a0,-448 # 80009130 <CONSOLE_STATUS+0x120>
    800042f8:	00002097          	auipc	ra,0x2
    800042fc:	8c8080e7          	jalr	-1848(ra) # 80005bc0 <_Z11printStringPKc>
    getString(input, 30);
    80004300:	01e00593          	li	a1,30
    80004304:	f8040493          	addi	s1,s0,-128
    80004308:	00048513          	mv	a0,s1
    8000430c:	00002097          	auipc	ra,0x2
    80004310:	93c080e7          	jalr	-1732(ra) # 80005c48 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004314:	00048513          	mv	a0,s1
    80004318:	00002097          	auipc	ra,0x2
    8000431c:	a08080e7          	jalr	-1528(ra) # 80005d20 <_Z11stringToIntPKc>
    80004320:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80004324:	00005517          	auipc	a0,0x5
    80004328:	e2c50513          	addi	a0,a0,-468 # 80009150 <CONSOLE_STATUS+0x140>
    8000432c:	00002097          	auipc	ra,0x2
    80004330:	894080e7          	jalr	-1900(ra) # 80005bc0 <_Z11printStringPKc>
    getString(input, 30);
    80004334:	01e00593          	li	a1,30
    80004338:	00048513          	mv	a0,s1
    8000433c:	00002097          	auipc	ra,0x2
    80004340:	90c080e7          	jalr	-1780(ra) # 80005c48 <_Z9getStringPci>
    n = stringToInt(input);
    80004344:	00048513          	mv	a0,s1
    80004348:	00002097          	auipc	ra,0x2
    8000434c:	9d8080e7          	jalr	-1576(ra) # 80005d20 <_Z11stringToIntPKc>
    80004350:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80004354:	00005517          	auipc	a0,0x5
    80004358:	e1c50513          	addi	a0,a0,-484 # 80009170 <CONSOLE_STATUS+0x160>
    8000435c:	00002097          	auipc	ra,0x2
    80004360:	864080e7          	jalr	-1948(ra) # 80005bc0 <_Z11printStringPKc>
    printInt(threadNum);
    80004364:	00000613          	li	a2,0
    80004368:	00a00593          	li	a1,10
    8000436c:	00098513          	mv	a0,s3
    80004370:	00002097          	auipc	ra,0x2
    80004374:	a00080e7          	jalr	-1536(ra) # 80005d70 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80004378:	00005517          	auipc	a0,0x5
    8000437c:	e1050513          	addi	a0,a0,-496 # 80009188 <CONSOLE_STATUS+0x178>
    80004380:	00002097          	auipc	ra,0x2
    80004384:	840080e7          	jalr	-1984(ra) # 80005bc0 <_Z11printStringPKc>
    printInt(n);
    80004388:	00000613          	li	a2,0
    8000438c:	00a00593          	li	a1,10
    80004390:	00048513          	mv	a0,s1
    80004394:	00002097          	auipc	ra,0x2
    80004398:	9dc080e7          	jalr	-1572(ra) # 80005d70 <_Z8printIntiii>
    printString(".\n");
    8000439c:	00005517          	auipc	a0,0x5
    800043a0:	e0450513          	addi	a0,a0,-508 # 800091a0 <CONSOLE_STATUS+0x190>
    800043a4:	00002097          	auipc	ra,0x2
    800043a8:	81c080e7          	jalr	-2020(ra) # 80005bc0 <_Z11printStringPKc>
    if (threadNum > n) {
    800043ac:	0334c463          	blt	s1,s3,800043d4 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    800043b0:	03305c63          	blez	s3,800043e8 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    800043b4:	03800513          	li	a0,56
    800043b8:	ffffe097          	auipc	ra,0xffffe
    800043bc:	ab0080e7          	jalr	-1360(ra) # 80001e68 <_Znwm>
    800043c0:	00050a93          	mv	s5,a0
    800043c4:	00048593          	mv	a1,s1
    800043c8:	00002097          	auipc	ra,0x2
    800043cc:	ac8080e7          	jalr	-1336(ra) # 80005e90 <_ZN9BufferCPPC1Ei>
    800043d0:	0300006f          	j	80004400 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800043d4:	00005517          	auipc	a0,0x5
    800043d8:	dd450513          	addi	a0,a0,-556 # 800091a8 <CONSOLE_STATUS+0x198>
    800043dc:	00001097          	auipc	ra,0x1
    800043e0:	7e4080e7          	jalr	2020(ra) # 80005bc0 <_Z11printStringPKc>
        return;
    800043e4:	0140006f          	j	800043f8 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800043e8:	00005517          	auipc	a0,0x5
    800043ec:	e0050513          	addi	a0,a0,-512 # 800091e8 <CONSOLE_STATUS+0x1d8>
    800043f0:	00001097          	auipc	ra,0x1
    800043f4:	7d0080e7          	jalr	2000(ra) # 80005bc0 <_Z11printStringPKc>
        return;
    800043f8:	000c0113          	mv	sp,s8
    800043fc:	2140006f          	j	80004610 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80004400:	01000513          	li	a0,16
    80004404:	ffffe097          	auipc	ra,0xffffe
    80004408:	a64080e7          	jalr	-1436(ra) # 80001e68 <_Znwm>
    8000440c:	00050913          	mv	s2,a0
    80004410:	00000593          	li	a1,0
    80004414:	ffffe097          	auipc	ra,0xffffe
    80004418:	c0c080e7          	jalr	-1012(ra) # 80002020 <_ZN9SemaphoreC1Ej>
    8000441c:	00007797          	auipc	a5,0x7
    80004420:	7d27ba23          	sd	s2,2004(a5) # 8000bbf0 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80004424:	00399793          	slli	a5,s3,0x3
    80004428:	00f78793          	addi	a5,a5,15
    8000442c:	ff07f793          	andi	a5,a5,-16
    80004430:	40f10133          	sub	sp,sp,a5
    80004434:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80004438:	0019871b          	addiw	a4,s3,1
    8000443c:	00171793          	slli	a5,a4,0x1
    80004440:	00e787b3          	add	a5,a5,a4
    80004444:	00379793          	slli	a5,a5,0x3
    80004448:	00f78793          	addi	a5,a5,15
    8000444c:	ff07f793          	andi	a5,a5,-16
    80004450:	40f10133          	sub	sp,sp,a5
    80004454:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80004458:	00199493          	slli	s1,s3,0x1
    8000445c:	013484b3          	add	s1,s1,s3
    80004460:	00349493          	slli	s1,s1,0x3
    80004464:	009b04b3          	add	s1,s6,s1
    80004468:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    8000446c:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80004470:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004474:	02800513          	li	a0,40
    80004478:	ffffe097          	auipc	ra,0xffffe
    8000447c:	9f0080e7          	jalr	-1552(ra) # 80001e68 <_Znwm>
    80004480:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80004484:	ffffe097          	auipc	ra,0xffffe
    80004488:	b74080e7          	jalr	-1164(ra) # 80001ff8 <_ZN6ThreadC1Ev>
    8000448c:	00007797          	auipc	a5,0x7
    80004490:	59478793          	addi	a5,a5,1428 # 8000ba20 <_ZTV8Consumer+0x10>
    80004494:	00fbb023          	sd	a5,0(s7)
    80004498:	029bb023          	sd	s1,32(s7)
    consumer->start();
    8000449c:	000b8513          	mv	a0,s7
    800044a0:	ffffe097          	auipc	ra,0xffffe
    800044a4:	ad4080e7          	jalr	-1324(ra) # 80001f74 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    800044a8:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    800044ac:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    800044b0:	00007797          	auipc	a5,0x7
    800044b4:	7407b783          	ld	a5,1856(a5) # 8000bbf0 <_ZL10waitForAll>
    800044b8:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800044bc:	02800513          	li	a0,40
    800044c0:	ffffe097          	auipc	ra,0xffffe
    800044c4:	9a8080e7          	jalr	-1624(ra) # 80001e68 <_Znwm>
    800044c8:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    800044cc:	ffffe097          	auipc	ra,0xffffe
    800044d0:	b2c080e7          	jalr	-1236(ra) # 80001ff8 <_ZN6ThreadC1Ev>
    800044d4:	00007797          	auipc	a5,0x7
    800044d8:	4fc78793          	addi	a5,a5,1276 # 8000b9d0 <_ZTV16ProducerKeyborad+0x10>
    800044dc:	00f4b023          	sd	a5,0(s1)
    800044e0:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800044e4:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    800044e8:	00048513          	mv	a0,s1
    800044ec:	ffffe097          	auipc	ra,0xffffe
    800044f0:	a88080e7          	jalr	-1400(ra) # 80001f74 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800044f4:	00100913          	li	s2,1
    800044f8:	0300006f          	j	80004528 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800044fc:	00007797          	auipc	a5,0x7
    80004500:	4fc78793          	addi	a5,a5,1276 # 8000b9f8 <_ZTV8Producer+0x10>
    80004504:	00fcb023          	sd	a5,0(s9)
    80004508:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    8000450c:	00391793          	slli	a5,s2,0x3
    80004510:	00fa07b3          	add	a5,s4,a5
    80004514:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80004518:	000c8513          	mv	a0,s9
    8000451c:	ffffe097          	auipc	ra,0xffffe
    80004520:	a58080e7          	jalr	-1448(ra) # 80001f74 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004524:	0019091b          	addiw	s2,s2,1
    80004528:	05395263          	bge	s2,s3,8000456c <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    8000452c:	00191493          	slli	s1,s2,0x1
    80004530:	012484b3          	add	s1,s1,s2
    80004534:	00349493          	slli	s1,s1,0x3
    80004538:	009b04b3          	add	s1,s6,s1
    8000453c:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80004540:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80004544:	00007797          	auipc	a5,0x7
    80004548:	6ac7b783          	ld	a5,1708(a5) # 8000bbf0 <_ZL10waitForAll>
    8000454c:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80004550:	02800513          	li	a0,40
    80004554:	ffffe097          	auipc	ra,0xffffe
    80004558:	914080e7          	jalr	-1772(ra) # 80001e68 <_Znwm>
    8000455c:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004560:	ffffe097          	auipc	ra,0xffffe
    80004564:	a98080e7          	jalr	-1384(ra) # 80001ff8 <_ZN6ThreadC1Ev>
    80004568:	f95ff06f          	j	800044fc <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    8000456c:	ffffe097          	auipc	ra,0xffffe
    80004570:	a38080e7          	jalr	-1480(ra) # 80001fa4 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004574:	00000493          	li	s1,0
    80004578:	0099ce63          	blt	s3,s1,80004594 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    8000457c:	00007517          	auipc	a0,0x7
    80004580:	67453503          	ld	a0,1652(a0) # 8000bbf0 <_ZL10waitForAll>
    80004584:	ffffe097          	auipc	ra,0xffffe
    80004588:	ad8080e7          	jalr	-1320(ra) # 8000205c <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    8000458c:	0014849b          	addiw	s1,s1,1
    80004590:	fe9ff06f          	j	80004578 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80004594:	00007517          	auipc	a0,0x7
    80004598:	65c53503          	ld	a0,1628(a0) # 8000bbf0 <_ZL10waitForAll>
    8000459c:	00050863          	beqz	a0,800045ac <_Z20testConsumerProducerv+0x2f4>
    800045a0:	00053783          	ld	a5,0(a0)
    800045a4:	0087b783          	ld	a5,8(a5)
    800045a8:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    800045ac:	00000493          	li	s1,0
    800045b0:	0080006f          	j	800045b8 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    800045b4:	0014849b          	addiw	s1,s1,1
    800045b8:	0334d263          	bge	s1,s3,800045dc <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    800045bc:	00349793          	slli	a5,s1,0x3
    800045c0:	00fa07b3          	add	a5,s4,a5
    800045c4:	0007b503          	ld	a0,0(a5)
    800045c8:	fe0506e3          	beqz	a0,800045b4 <_Z20testConsumerProducerv+0x2fc>
    800045cc:	00053783          	ld	a5,0(a0)
    800045d0:	0087b783          	ld	a5,8(a5)
    800045d4:	000780e7          	jalr	a5
    800045d8:	fddff06f          	j	800045b4 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    800045dc:	000b8a63          	beqz	s7,800045f0 <_Z20testConsumerProducerv+0x338>
    800045e0:	000bb783          	ld	a5,0(s7)
    800045e4:	0087b783          	ld	a5,8(a5)
    800045e8:	000b8513          	mv	a0,s7
    800045ec:	000780e7          	jalr	a5
    delete buffer;
    800045f0:	000a8e63          	beqz	s5,8000460c <_Z20testConsumerProducerv+0x354>
    800045f4:	000a8513          	mv	a0,s5
    800045f8:	00002097          	auipc	ra,0x2
    800045fc:	b90080e7          	jalr	-1136(ra) # 80006188 <_ZN9BufferCPPD1Ev>
    80004600:	000a8513          	mv	a0,s5
    80004604:	ffffe097          	auipc	ra,0xffffe
    80004608:	88c080e7          	jalr	-1908(ra) # 80001e90 <_ZdlPv>
    8000460c:	000c0113          	mv	sp,s8
}
    80004610:	f8040113          	addi	sp,s0,-128
    80004614:	07813083          	ld	ra,120(sp)
    80004618:	07013403          	ld	s0,112(sp)
    8000461c:	06813483          	ld	s1,104(sp)
    80004620:	06013903          	ld	s2,96(sp)
    80004624:	05813983          	ld	s3,88(sp)
    80004628:	05013a03          	ld	s4,80(sp)
    8000462c:	04813a83          	ld	s5,72(sp)
    80004630:	04013b03          	ld	s6,64(sp)
    80004634:	03813b83          	ld	s7,56(sp)
    80004638:	03013c03          	ld	s8,48(sp)
    8000463c:	02813c83          	ld	s9,40(sp)
    80004640:	08010113          	addi	sp,sp,128
    80004644:	00008067          	ret
    80004648:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    8000464c:	000a8513          	mv	a0,s5
    80004650:	ffffe097          	auipc	ra,0xffffe
    80004654:	840080e7          	jalr	-1984(ra) # 80001e90 <_ZdlPv>
    80004658:	00048513          	mv	a0,s1
    8000465c:	00008097          	auipc	ra,0x8
    80004660:	68c080e7          	jalr	1676(ra) # 8000cce8 <_Unwind_Resume>
    80004664:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80004668:	00090513          	mv	a0,s2
    8000466c:	ffffe097          	auipc	ra,0xffffe
    80004670:	824080e7          	jalr	-2012(ra) # 80001e90 <_ZdlPv>
    80004674:	00048513          	mv	a0,s1
    80004678:	00008097          	auipc	ra,0x8
    8000467c:	670080e7          	jalr	1648(ra) # 8000cce8 <_Unwind_Resume>
    80004680:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004684:	000b8513          	mv	a0,s7
    80004688:	ffffe097          	auipc	ra,0xffffe
    8000468c:	808080e7          	jalr	-2040(ra) # 80001e90 <_ZdlPv>
    80004690:	00048513          	mv	a0,s1
    80004694:	00008097          	auipc	ra,0x8
    80004698:	654080e7          	jalr	1620(ra) # 8000cce8 <_Unwind_Resume>
    8000469c:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800046a0:	00048513          	mv	a0,s1
    800046a4:	ffffd097          	auipc	ra,0xffffd
    800046a8:	7ec080e7          	jalr	2028(ra) # 80001e90 <_ZdlPv>
    800046ac:	00090513          	mv	a0,s2
    800046b0:	00008097          	auipc	ra,0x8
    800046b4:	638080e7          	jalr	1592(ra) # 8000cce8 <_Unwind_Resume>
    800046b8:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    800046bc:	000c8513          	mv	a0,s9
    800046c0:	ffffd097          	auipc	ra,0xffffd
    800046c4:	7d0080e7          	jalr	2000(ra) # 80001e90 <_ZdlPv>
    800046c8:	00048513          	mv	a0,s1
    800046cc:	00008097          	auipc	ra,0x8
    800046d0:	61c080e7          	jalr	1564(ra) # 8000cce8 <_Unwind_Resume>

00000000800046d4 <_ZN8Consumer3runEv>:
    void run() override {
    800046d4:	fd010113          	addi	sp,sp,-48
    800046d8:	02113423          	sd	ra,40(sp)
    800046dc:	02813023          	sd	s0,32(sp)
    800046e0:	00913c23          	sd	s1,24(sp)
    800046e4:	01213823          	sd	s2,16(sp)
    800046e8:	01313423          	sd	s3,8(sp)
    800046ec:	03010413          	addi	s0,sp,48
    800046f0:	00050913          	mv	s2,a0
        int i = 0;
    800046f4:	00000993          	li	s3,0
    800046f8:	0100006f          	j	80004708 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    800046fc:	00a00513          	li	a0,10
    80004700:	ffffe097          	auipc	ra,0xffffe
    80004704:	a84080e7          	jalr	-1404(ra) # 80002184 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80004708:	00007797          	auipc	a5,0x7
    8000470c:	4e07a783          	lw	a5,1248(a5) # 8000bbe8 <_ZL9threadEnd>
    80004710:	04079a63          	bnez	a5,80004764 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80004714:	02093783          	ld	a5,32(s2)
    80004718:	0087b503          	ld	a0,8(a5)
    8000471c:	00002097          	auipc	ra,0x2
    80004720:	958080e7          	jalr	-1704(ra) # 80006074 <_ZN9BufferCPP3getEv>
            i++;
    80004724:	0019849b          	addiw	s1,s3,1
    80004728:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    8000472c:	0ff57513          	andi	a0,a0,255
    80004730:	ffffe097          	auipc	ra,0xffffe
    80004734:	a54080e7          	jalr	-1452(ra) # 80002184 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80004738:	05000793          	li	a5,80
    8000473c:	02f4e4bb          	remw	s1,s1,a5
    80004740:	fc0494e3          	bnez	s1,80004708 <_ZN8Consumer3runEv+0x34>
    80004744:	fb9ff06f          	j	800046fc <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80004748:	02093783          	ld	a5,32(s2)
    8000474c:	0087b503          	ld	a0,8(a5)
    80004750:	00002097          	auipc	ra,0x2
    80004754:	924080e7          	jalr	-1756(ra) # 80006074 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80004758:	0ff57513          	andi	a0,a0,255
    8000475c:	ffffe097          	auipc	ra,0xffffe
    80004760:	a28080e7          	jalr	-1496(ra) # 80002184 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80004764:	02093783          	ld	a5,32(s2)
    80004768:	0087b503          	ld	a0,8(a5)
    8000476c:	00002097          	auipc	ra,0x2
    80004770:	994080e7          	jalr	-1644(ra) # 80006100 <_ZN9BufferCPP6getCntEv>
    80004774:	fca04ae3          	bgtz	a0,80004748 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004778:	02093783          	ld	a5,32(s2)
    8000477c:	0107b503          	ld	a0,16(a5)
    80004780:	ffffe097          	auipc	ra,0xffffe
    80004784:	914080e7          	jalr	-1772(ra) # 80002094 <_ZN9Semaphore6signalEv>
    }
    80004788:	02813083          	ld	ra,40(sp)
    8000478c:	02013403          	ld	s0,32(sp)
    80004790:	01813483          	ld	s1,24(sp)
    80004794:	01013903          	ld	s2,16(sp)
    80004798:	00813983          	ld	s3,8(sp)
    8000479c:	03010113          	addi	sp,sp,48
    800047a0:	00008067          	ret

00000000800047a4 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    800047a4:	ff010113          	addi	sp,sp,-16
    800047a8:	00113423          	sd	ra,8(sp)
    800047ac:	00813023          	sd	s0,0(sp)
    800047b0:	01010413          	addi	s0,sp,16
    800047b4:	00007797          	auipc	a5,0x7
    800047b8:	26c78793          	addi	a5,a5,620 # 8000ba20 <_ZTV8Consumer+0x10>
    800047bc:	00f53023          	sd	a5,0(a0)
    800047c0:	ffffd097          	auipc	ra,0xffffd
    800047c4:	610080e7          	jalr	1552(ra) # 80001dd0 <_ZN6ThreadD1Ev>
    800047c8:	00813083          	ld	ra,8(sp)
    800047cc:	00013403          	ld	s0,0(sp)
    800047d0:	01010113          	addi	sp,sp,16
    800047d4:	00008067          	ret

00000000800047d8 <_ZN8ConsumerD0Ev>:
    800047d8:	fe010113          	addi	sp,sp,-32
    800047dc:	00113c23          	sd	ra,24(sp)
    800047e0:	00813823          	sd	s0,16(sp)
    800047e4:	00913423          	sd	s1,8(sp)
    800047e8:	02010413          	addi	s0,sp,32
    800047ec:	00050493          	mv	s1,a0
    800047f0:	00007797          	auipc	a5,0x7
    800047f4:	23078793          	addi	a5,a5,560 # 8000ba20 <_ZTV8Consumer+0x10>
    800047f8:	00f53023          	sd	a5,0(a0)
    800047fc:	ffffd097          	auipc	ra,0xffffd
    80004800:	5d4080e7          	jalr	1492(ra) # 80001dd0 <_ZN6ThreadD1Ev>
    80004804:	00048513          	mv	a0,s1
    80004808:	ffffd097          	auipc	ra,0xffffd
    8000480c:	688080e7          	jalr	1672(ra) # 80001e90 <_ZdlPv>
    80004810:	01813083          	ld	ra,24(sp)
    80004814:	01013403          	ld	s0,16(sp)
    80004818:	00813483          	ld	s1,8(sp)
    8000481c:	02010113          	addi	sp,sp,32
    80004820:	00008067          	ret

0000000080004824 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004824:	ff010113          	addi	sp,sp,-16
    80004828:	00113423          	sd	ra,8(sp)
    8000482c:	00813023          	sd	s0,0(sp)
    80004830:	01010413          	addi	s0,sp,16
    80004834:	00007797          	auipc	a5,0x7
    80004838:	19c78793          	addi	a5,a5,412 # 8000b9d0 <_ZTV16ProducerKeyborad+0x10>
    8000483c:	00f53023          	sd	a5,0(a0)
    80004840:	ffffd097          	auipc	ra,0xffffd
    80004844:	590080e7          	jalr	1424(ra) # 80001dd0 <_ZN6ThreadD1Ev>
    80004848:	00813083          	ld	ra,8(sp)
    8000484c:	00013403          	ld	s0,0(sp)
    80004850:	01010113          	addi	sp,sp,16
    80004854:	00008067          	ret

0000000080004858 <_ZN16ProducerKeyboradD0Ev>:
    80004858:	fe010113          	addi	sp,sp,-32
    8000485c:	00113c23          	sd	ra,24(sp)
    80004860:	00813823          	sd	s0,16(sp)
    80004864:	00913423          	sd	s1,8(sp)
    80004868:	02010413          	addi	s0,sp,32
    8000486c:	00050493          	mv	s1,a0
    80004870:	00007797          	auipc	a5,0x7
    80004874:	16078793          	addi	a5,a5,352 # 8000b9d0 <_ZTV16ProducerKeyborad+0x10>
    80004878:	00f53023          	sd	a5,0(a0)
    8000487c:	ffffd097          	auipc	ra,0xffffd
    80004880:	554080e7          	jalr	1364(ra) # 80001dd0 <_ZN6ThreadD1Ev>
    80004884:	00048513          	mv	a0,s1
    80004888:	ffffd097          	auipc	ra,0xffffd
    8000488c:	608080e7          	jalr	1544(ra) # 80001e90 <_ZdlPv>
    80004890:	01813083          	ld	ra,24(sp)
    80004894:	01013403          	ld	s0,16(sp)
    80004898:	00813483          	ld	s1,8(sp)
    8000489c:	02010113          	addi	sp,sp,32
    800048a0:	00008067          	ret

00000000800048a4 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    800048a4:	ff010113          	addi	sp,sp,-16
    800048a8:	00113423          	sd	ra,8(sp)
    800048ac:	00813023          	sd	s0,0(sp)
    800048b0:	01010413          	addi	s0,sp,16
    800048b4:	00007797          	auipc	a5,0x7
    800048b8:	14478793          	addi	a5,a5,324 # 8000b9f8 <_ZTV8Producer+0x10>
    800048bc:	00f53023          	sd	a5,0(a0)
    800048c0:	ffffd097          	auipc	ra,0xffffd
    800048c4:	510080e7          	jalr	1296(ra) # 80001dd0 <_ZN6ThreadD1Ev>
    800048c8:	00813083          	ld	ra,8(sp)
    800048cc:	00013403          	ld	s0,0(sp)
    800048d0:	01010113          	addi	sp,sp,16
    800048d4:	00008067          	ret

00000000800048d8 <_ZN8ProducerD0Ev>:
    800048d8:	fe010113          	addi	sp,sp,-32
    800048dc:	00113c23          	sd	ra,24(sp)
    800048e0:	00813823          	sd	s0,16(sp)
    800048e4:	00913423          	sd	s1,8(sp)
    800048e8:	02010413          	addi	s0,sp,32
    800048ec:	00050493          	mv	s1,a0
    800048f0:	00007797          	auipc	a5,0x7
    800048f4:	10878793          	addi	a5,a5,264 # 8000b9f8 <_ZTV8Producer+0x10>
    800048f8:	00f53023          	sd	a5,0(a0)
    800048fc:	ffffd097          	auipc	ra,0xffffd
    80004900:	4d4080e7          	jalr	1236(ra) # 80001dd0 <_ZN6ThreadD1Ev>
    80004904:	00048513          	mv	a0,s1
    80004908:	ffffd097          	auipc	ra,0xffffd
    8000490c:	588080e7          	jalr	1416(ra) # 80001e90 <_ZdlPv>
    80004910:	01813083          	ld	ra,24(sp)
    80004914:	01013403          	ld	s0,16(sp)
    80004918:	00813483          	ld	s1,8(sp)
    8000491c:	02010113          	addi	sp,sp,32
    80004920:	00008067          	ret

0000000080004924 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004924:	fe010113          	addi	sp,sp,-32
    80004928:	00113c23          	sd	ra,24(sp)
    8000492c:	00813823          	sd	s0,16(sp)
    80004930:	00913423          	sd	s1,8(sp)
    80004934:	02010413          	addi	s0,sp,32
    80004938:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    8000493c:	ffffd097          	auipc	ra,0xffffd
    80004940:	ce4080e7          	jalr	-796(ra) # 80001620 <_Z4getcv>
    80004944:	0005059b          	sext.w	a1,a0
    80004948:	01b00793          	li	a5,27
    8000494c:	00f58c63          	beq	a1,a5,80004964 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80004950:	0204b783          	ld	a5,32(s1)
    80004954:	0087b503          	ld	a0,8(a5)
    80004958:	00001097          	auipc	ra,0x1
    8000495c:	68c080e7          	jalr	1676(ra) # 80005fe4 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80004960:	fddff06f          	j	8000493c <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004964:	00100793          	li	a5,1
    80004968:	00007717          	auipc	a4,0x7
    8000496c:	28f72023          	sw	a5,640(a4) # 8000bbe8 <_ZL9threadEnd>
        td->buffer->put('!');
    80004970:	0204b783          	ld	a5,32(s1)
    80004974:	02100593          	li	a1,33
    80004978:	0087b503          	ld	a0,8(a5)
    8000497c:	00001097          	auipc	ra,0x1
    80004980:	668080e7          	jalr	1640(ra) # 80005fe4 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004984:	0204b783          	ld	a5,32(s1)
    80004988:	0107b503          	ld	a0,16(a5)
    8000498c:	ffffd097          	auipc	ra,0xffffd
    80004990:	708080e7          	jalr	1800(ra) # 80002094 <_ZN9Semaphore6signalEv>
    }
    80004994:	01813083          	ld	ra,24(sp)
    80004998:	01013403          	ld	s0,16(sp)
    8000499c:	00813483          	ld	s1,8(sp)
    800049a0:	02010113          	addi	sp,sp,32
    800049a4:	00008067          	ret

00000000800049a8 <_ZN8Producer3runEv>:
    void run() override {
    800049a8:	fe010113          	addi	sp,sp,-32
    800049ac:	00113c23          	sd	ra,24(sp)
    800049b0:	00813823          	sd	s0,16(sp)
    800049b4:	00913423          	sd	s1,8(sp)
    800049b8:	01213023          	sd	s2,0(sp)
    800049bc:	02010413          	addi	s0,sp,32
    800049c0:	00050493          	mv	s1,a0
        int i = 0;
    800049c4:	00000913          	li	s2,0
        while (!threadEnd) {
    800049c8:	00007797          	auipc	a5,0x7
    800049cc:	2207a783          	lw	a5,544(a5) # 8000bbe8 <_ZL9threadEnd>
    800049d0:	04079263          	bnez	a5,80004a14 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    800049d4:	0204b783          	ld	a5,32(s1)
    800049d8:	0007a583          	lw	a1,0(a5)
    800049dc:	0305859b          	addiw	a1,a1,48
    800049e0:	0087b503          	ld	a0,8(a5)
    800049e4:	00001097          	auipc	ra,0x1
    800049e8:	600080e7          	jalr	1536(ra) # 80005fe4 <_ZN9BufferCPP3putEi>
            i++;
    800049ec:	0019071b          	addiw	a4,s2,1
    800049f0:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    800049f4:	0204b783          	ld	a5,32(s1)
    800049f8:	0007a783          	lw	a5,0(a5)
    800049fc:	00e787bb          	addw	a5,a5,a4
    80004a00:	00500513          	li	a0,5
    80004a04:	02a7e53b          	remw	a0,a5,a0
    80004a08:	ffffd097          	auipc	ra,0xffffd
    80004a0c:	5c4080e7          	jalr	1476(ra) # 80001fcc <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004a10:	fb9ff06f          	j	800049c8 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004a14:	0204b783          	ld	a5,32(s1)
    80004a18:	0107b503          	ld	a0,16(a5)
    80004a1c:	ffffd097          	auipc	ra,0xffffd
    80004a20:	678080e7          	jalr	1656(ra) # 80002094 <_ZN9Semaphore6signalEv>
    }
    80004a24:	01813083          	ld	ra,24(sp)
    80004a28:	01013403          	ld	s0,16(sp)
    80004a2c:	00813483          	ld	s1,8(sp)
    80004a30:	00013903          	ld	s2,0(sp)
    80004a34:	02010113          	addi	sp,sp,32
    80004a38:	00008067          	ret

0000000080004a3c <_ZN6BufferC1Ei>:
#include "bounded_buffer.hpp"


Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004a3c:	fe010113          	addi	sp,sp,-32
    80004a40:	00113c23          	sd	ra,24(sp)
    80004a44:	00813823          	sd	s0,16(sp)
    80004a48:	00913423          	sd	s1,8(sp)
    80004a4c:	01213023          	sd	s2,0(sp)
    80004a50:	02010413          	addi	s0,sp,32
    80004a54:	00050493          	mv	s1,a0
    80004a58:	00058913          	mv	s2,a1
    80004a5c:	0015879b          	addiw	a5,a1,1
    80004a60:	0007851b          	sext.w	a0,a5
    80004a64:	00f4a023          	sw	a5,0(s1)
    80004a68:	0004a823          	sw	zero,16(s1)
    80004a6c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004a70:	00251513          	slli	a0,a0,0x2
    80004a74:	ffffc097          	auipc	ra,0xffffc
    80004a78:	7e4080e7          	jalr	2020(ra) # 80001258 <_Z9mem_allocm>
    80004a7c:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80004a80:	00000593          	li	a1,0
    80004a84:	02048513          	addi	a0,s1,32
    80004a88:	ffffd097          	auipc	ra,0xffffd
    80004a8c:	980080e7          	jalr	-1664(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&spaceAvailable, _cap);
    80004a90:	00090593          	mv	a1,s2
    80004a94:	01848513          	addi	a0,s1,24
    80004a98:	ffffd097          	auipc	ra,0xffffd
    80004a9c:	970080e7          	jalr	-1680(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&mutexHead, 1);
    80004aa0:	00100593          	li	a1,1
    80004aa4:	02848513          	addi	a0,s1,40
    80004aa8:	ffffd097          	auipc	ra,0xffffd
    80004aac:	960080e7          	jalr	-1696(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&mutexTail, 1);
    80004ab0:	00100593          	li	a1,1
    80004ab4:	03048513          	addi	a0,s1,48
    80004ab8:	ffffd097          	auipc	ra,0xffffd
    80004abc:	950080e7          	jalr	-1712(ra) # 80001408 <_Z8sem_openPP3Semj>
}
    80004ac0:	01813083          	ld	ra,24(sp)
    80004ac4:	01013403          	ld	s0,16(sp)
    80004ac8:	00813483          	ld	s1,8(sp)
    80004acc:	00013903          	ld	s2,0(sp)
    80004ad0:	02010113          	addi	sp,sp,32
    80004ad4:	00008067          	ret

0000000080004ad8 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80004ad8:	fe010113          	addi	sp,sp,-32
    80004adc:	00113c23          	sd	ra,24(sp)
    80004ae0:	00813823          	sd	s0,16(sp)
    80004ae4:	00913423          	sd	s1,8(sp)
    80004ae8:	01213023          	sd	s2,0(sp)
    80004aec:	02010413          	addi	s0,sp,32
    80004af0:	00050493          	mv	s1,a0
    80004af4:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80004af8:	01853503          	ld	a0,24(a0)
    80004afc:	ffffd097          	auipc	ra,0xffffd
    80004b00:	9a8080e7          	jalr	-1624(ra) # 800014a4 <_Z8sem_waitP3Sem>

    sem_wait(mutexTail);
    80004b04:	0304b503          	ld	a0,48(s1)
    80004b08:	ffffd097          	auipc	ra,0xffffd
    80004b0c:	99c080e7          	jalr	-1636(ra) # 800014a4 <_Z8sem_waitP3Sem>
    buffer[tail] = val;
    80004b10:	0084b783          	ld	a5,8(s1)
    80004b14:	0144a703          	lw	a4,20(s1)
    80004b18:	00271713          	slli	a4,a4,0x2
    80004b1c:	00e787b3          	add	a5,a5,a4
    80004b20:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80004b24:	0144a783          	lw	a5,20(s1)
    80004b28:	0017879b          	addiw	a5,a5,1
    80004b2c:	0004a703          	lw	a4,0(s1)
    80004b30:	02e7e7bb          	remw	a5,a5,a4
    80004b34:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80004b38:	0304b503          	ld	a0,48(s1)
    80004b3c:	ffffd097          	auipc	ra,0xffffd
    80004b40:	9b4080e7          	jalr	-1612(ra) # 800014f0 <_Z10sem_signalP3Sem>

    sem_signal(itemAvailable);
    80004b44:	0204b503          	ld	a0,32(s1)
    80004b48:	ffffd097          	auipc	ra,0xffffd
    80004b4c:	9a8080e7          	jalr	-1624(ra) # 800014f0 <_Z10sem_signalP3Sem>

}
    80004b50:	01813083          	ld	ra,24(sp)
    80004b54:	01013403          	ld	s0,16(sp)
    80004b58:	00813483          	ld	s1,8(sp)
    80004b5c:	00013903          	ld	s2,0(sp)
    80004b60:	02010113          	addi	sp,sp,32
    80004b64:	00008067          	ret

0000000080004b68 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80004b68:	fe010113          	addi	sp,sp,-32
    80004b6c:	00113c23          	sd	ra,24(sp)
    80004b70:	00813823          	sd	s0,16(sp)
    80004b74:	00913423          	sd	s1,8(sp)
    80004b78:	01213023          	sd	s2,0(sp)
    80004b7c:	02010413          	addi	s0,sp,32
    80004b80:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80004b84:	02053503          	ld	a0,32(a0)
    80004b88:	ffffd097          	auipc	ra,0xffffd
    80004b8c:	91c080e7          	jalr	-1764(ra) # 800014a4 <_Z8sem_waitP3Sem>

    sem_wait(mutexHead);
    80004b90:	0284b503          	ld	a0,40(s1)
    80004b94:	ffffd097          	auipc	ra,0xffffd
    80004b98:	910080e7          	jalr	-1776(ra) # 800014a4 <_Z8sem_waitP3Sem>

    int ret = buffer[head];
    80004b9c:	0084b703          	ld	a4,8(s1)
    80004ba0:	0104a783          	lw	a5,16(s1)
    80004ba4:	00279693          	slli	a3,a5,0x2
    80004ba8:	00d70733          	add	a4,a4,a3
    80004bac:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80004bb0:	0017879b          	addiw	a5,a5,1
    80004bb4:	0004a703          	lw	a4,0(s1)
    80004bb8:	02e7e7bb          	remw	a5,a5,a4
    80004bbc:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80004bc0:	0284b503          	ld	a0,40(s1)
    80004bc4:	ffffd097          	auipc	ra,0xffffd
    80004bc8:	92c080e7          	jalr	-1748(ra) # 800014f0 <_Z10sem_signalP3Sem>

    sem_signal(spaceAvailable);
    80004bcc:	0184b503          	ld	a0,24(s1)
    80004bd0:	ffffd097          	auipc	ra,0xffffd
    80004bd4:	920080e7          	jalr	-1760(ra) # 800014f0 <_Z10sem_signalP3Sem>

    return ret;
}
    80004bd8:	00090513          	mv	a0,s2
    80004bdc:	01813083          	ld	ra,24(sp)
    80004be0:	01013403          	ld	s0,16(sp)
    80004be4:	00813483          	ld	s1,8(sp)
    80004be8:	00013903          	ld	s2,0(sp)
    80004bec:	02010113          	addi	sp,sp,32
    80004bf0:	00008067          	ret

0000000080004bf4 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80004bf4:	fe010113          	addi	sp,sp,-32
    80004bf8:	00113c23          	sd	ra,24(sp)
    80004bfc:	00813823          	sd	s0,16(sp)
    80004c00:	00913423          	sd	s1,8(sp)
    80004c04:	01213023          	sd	s2,0(sp)
    80004c08:	02010413          	addi	s0,sp,32
    80004c0c:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80004c10:	02853503          	ld	a0,40(a0)
    80004c14:	ffffd097          	auipc	ra,0xffffd
    80004c18:	890080e7          	jalr	-1904(ra) # 800014a4 <_Z8sem_waitP3Sem>
    sem_wait(mutexTail);
    80004c1c:	0304b503          	ld	a0,48(s1)
    80004c20:	ffffd097          	auipc	ra,0xffffd
    80004c24:	884080e7          	jalr	-1916(ra) # 800014a4 <_Z8sem_waitP3Sem>

    if (tail >= head) {
    80004c28:	0144a783          	lw	a5,20(s1)
    80004c2c:	0104a903          	lw	s2,16(s1)
    80004c30:	0327ce63          	blt	a5,s2,80004c6c <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80004c34:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80004c38:	0304b503          	ld	a0,48(s1)
    80004c3c:	ffffd097          	auipc	ra,0xffffd
    80004c40:	8b4080e7          	jalr	-1868(ra) # 800014f0 <_Z10sem_signalP3Sem>
    sem_signal(mutexHead);
    80004c44:	0284b503          	ld	a0,40(s1)
    80004c48:	ffffd097          	auipc	ra,0xffffd
    80004c4c:	8a8080e7          	jalr	-1880(ra) # 800014f0 <_Z10sem_signalP3Sem>

    return ret;
}
    80004c50:	00090513          	mv	a0,s2
    80004c54:	01813083          	ld	ra,24(sp)
    80004c58:	01013403          	ld	s0,16(sp)
    80004c5c:	00813483          	ld	s1,8(sp)
    80004c60:	00013903          	ld	s2,0(sp)
    80004c64:	02010113          	addi	sp,sp,32
    80004c68:	00008067          	ret
        ret = cap - head + tail;
    80004c6c:	0004a703          	lw	a4,0(s1)
    80004c70:	4127093b          	subw	s2,a4,s2
    80004c74:	00f9093b          	addw	s2,s2,a5
    80004c78:	fc1ff06f          	j	80004c38 <_ZN6Buffer6getCntEv+0x44>

0000000080004c7c <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80004c7c:	fe010113          	addi	sp,sp,-32
    80004c80:	00113c23          	sd	ra,24(sp)
    80004c84:	00813823          	sd	s0,16(sp)
    80004c88:	00913423          	sd	s1,8(sp)
    80004c8c:	02010413          	addi	s0,sp,32
    80004c90:	00050493          	mv	s1,a0
    putc('\n');
    80004c94:	00a00513          	li	a0,10
    80004c98:	ffffd097          	auipc	ra,0xffffd
    80004c9c:	9d4080e7          	jalr	-1580(ra) # 8000166c <_Z4putcc>
    printString("Buffer deleted!\n");
    80004ca0:	00004517          	auipc	a0,0x4
    80004ca4:	67050513          	addi	a0,a0,1648 # 80009310 <CONSOLE_STATUS+0x300>
    80004ca8:	00001097          	auipc	ra,0x1
    80004cac:	f18080e7          	jalr	-232(ra) # 80005bc0 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80004cb0:	00048513          	mv	a0,s1
    80004cb4:	00000097          	auipc	ra,0x0
    80004cb8:	f40080e7          	jalr	-192(ra) # 80004bf4 <_ZN6Buffer6getCntEv>
    80004cbc:	02a05c63          	blez	a0,80004cf4 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80004cc0:	0084b783          	ld	a5,8(s1)
    80004cc4:	0104a703          	lw	a4,16(s1)
    80004cc8:	00271713          	slli	a4,a4,0x2
    80004ccc:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80004cd0:	0007c503          	lbu	a0,0(a5)
    80004cd4:	ffffd097          	auipc	ra,0xffffd
    80004cd8:	998080e7          	jalr	-1640(ra) # 8000166c <_Z4putcc>
        head = (head + 1) % cap;
    80004cdc:	0104a783          	lw	a5,16(s1)
    80004ce0:	0017879b          	addiw	a5,a5,1
    80004ce4:	0004a703          	lw	a4,0(s1)
    80004ce8:	02e7e7bb          	remw	a5,a5,a4
    80004cec:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80004cf0:	fc1ff06f          	j	80004cb0 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80004cf4:	02100513          	li	a0,33
    80004cf8:	ffffd097          	auipc	ra,0xffffd
    80004cfc:	974080e7          	jalr	-1676(ra) # 8000166c <_Z4putcc>
    putc('\n');
    80004d00:	00a00513          	li	a0,10
    80004d04:	ffffd097          	auipc	ra,0xffffd
    80004d08:	968080e7          	jalr	-1688(ra) # 8000166c <_Z4putcc>
    mem_free(buffer);
    80004d0c:	0084b503          	ld	a0,8(s1)
    80004d10:	ffffc097          	auipc	ra,0xffffc
    80004d14:	59c080e7          	jalr	1436(ra) # 800012ac <_Z8mem_freePv>
    sem_close(itemAvailable);
    80004d18:	0204b503          	ld	a0,32(s1)
    80004d1c:	ffffc097          	auipc	ra,0xffffc
    80004d20:	73c080e7          	jalr	1852(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(spaceAvailable);
    80004d24:	0184b503          	ld	a0,24(s1)
    80004d28:	ffffc097          	auipc	ra,0xffffc
    80004d2c:	730080e7          	jalr	1840(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(mutexTail);
    80004d30:	0304b503          	ld	a0,48(s1)
    80004d34:	ffffc097          	auipc	ra,0xffffc
    80004d38:	724080e7          	jalr	1828(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(mutexHead);
    80004d3c:	0284b503          	ld	a0,40(s1)
    80004d40:	ffffc097          	auipc	ra,0xffffc
    80004d44:	718080e7          	jalr	1816(ra) # 80001458 <_Z9sem_closeP3Sem>
}
    80004d48:	01813083          	ld	ra,24(sp)
    80004d4c:	01013403          	ld	s0,16(sp)
    80004d50:	00813483          	ld	s1,8(sp)
    80004d54:	02010113          	addi	sp,sp,32
    80004d58:	00008067          	ret

0000000080004d5c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004d5c:	fe010113          	addi	sp,sp,-32
    80004d60:	00113c23          	sd	ra,24(sp)
    80004d64:	00813823          	sd	s0,16(sp)
    80004d68:	00913423          	sd	s1,8(sp)
    80004d6c:	01213023          	sd	s2,0(sp)
    80004d70:	02010413          	addi	s0,sp,32
    80004d74:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004d78:	00100793          	li	a5,1
    80004d7c:	02a7f863          	bgeu	a5,a0,80004dac <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004d80:	00a00793          	li	a5,10
    80004d84:	02f577b3          	remu	a5,a0,a5
    80004d88:	02078e63          	beqz	a5,80004dc4 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004d8c:	fff48513          	addi	a0,s1,-1
    80004d90:	00000097          	auipc	ra,0x0
    80004d94:	fcc080e7          	jalr	-52(ra) # 80004d5c <_ZL9fibonaccim>
    80004d98:	00050913          	mv	s2,a0
    80004d9c:	ffe48513          	addi	a0,s1,-2
    80004da0:	00000097          	auipc	ra,0x0
    80004da4:	fbc080e7          	jalr	-68(ra) # 80004d5c <_ZL9fibonaccim>
    80004da8:	00a90533          	add	a0,s2,a0
}
    80004dac:	01813083          	ld	ra,24(sp)
    80004db0:	01013403          	ld	s0,16(sp)
    80004db4:	00813483          	ld	s1,8(sp)
    80004db8:	00013903          	ld	s2,0(sp)
    80004dbc:	02010113          	addi	sp,sp,32
    80004dc0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004dc4:	ffffc097          	auipc	ra,0xffffc
    80004dc8:	608080e7          	jalr	1544(ra) # 800013cc <_Z15thread_dispatchv>
    80004dcc:	fc1ff06f          	j	80004d8c <_ZL9fibonaccim+0x30>

0000000080004dd0 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004dd0:	fe010113          	addi	sp,sp,-32
    80004dd4:	00113c23          	sd	ra,24(sp)
    80004dd8:	00813823          	sd	s0,16(sp)
    80004ddc:	00913423          	sd	s1,8(sp)
    80004de0:	01213023          	sd	s2,0(sp)
    80004de4:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004de8:	00a00493          	li	s1,10
    80004dec:	0400006f          	j	80004e2c <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004df0:	00004517          	auipc	a0,0x4
    80004df4:	48850513          	addi	a0,a0,1160 # 80009278 <CONSOLE_STATUS+0x268>
    80004df8:	00001097          	auipc	ra,0x1
    80004dfc:	dc8080e7          	jalr	-568(ra) # 80005bc0 <_Z11printStringPKc>
    80004e00:	00000613          	li	a2,0
    80004e04:	00a00593          	li	a1,10
    80004e08:	00048513          	mv	a0,s1
    80004e0c:	00001097          	auipc	ra,0x1
    80004e10:	f64080e7          	jalr	-156(ra) # 80005d70 <_Z8printIntiii>
    80004e14:	00004517          	auipc	a0,0x4
    80004e18:	35450513          	addi	a0,a0,852 # 80009168 <CONSOLE_STATUS+0x158>
    80004e1c:	00001097          	auipc	ra,0x1
    80004e20:	da4080e7          	jalr	-604(ra) # 80005bc0 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004e24:	0014849b          	addiw	s1,s1,1
    80004e28:	0ff4f493          	andi	s1,s1,255
    80004e2c:	00c00793          	li	a5,12
    80004e30:	fc97f0e3          	bgeu	a5,s1,80004df0 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004e34:	00004517          	auipc	a0,0x4
    80004e38:	44c50513          	addi	a0,a0,1100 # 80009280 <CONSOLE_STATUS+0x270>
    80004e3c:	00001097          	auipc	ra,0x1
    80004e40:	d84080e7          	jalr	-636(ra) # 80005bc0 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004e44:	00500313          	li	t1,5
    thread_dispatch();
    80004e48:	ffffc097          	auipc	ra,0xffffc
    80004e4c:	584080e7          	jalr	1412(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004e50:	01000513          	li	a0,16
    80004e54:	00000097          	auipc	ra,0x0
    80004e58:	f08080e7          	jalr	-248(ra) # 80004d5c <_ZL9fibonaccim>
    80004e5c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004e60:	00004517          	auipc	a0,0x4
    80004e64:	43050513          	addi	a0,a0,1072 # 80009290 <CONSOLE_STATUS+0x280>
    80004e68:	00001097          	auipc	ra,0x1
    80004e6c:	d58080e7          	jalr	-680(ra) # 80005bc0 <_Z11printStringPKc>
    80004e70:	00000613          	li	a2,0
    80004e74:	00a00593          	li	a1,10
    80004e78:	0009051b          	sext.w	a0,s2
    80004e7c:	00001097          	auipc	ra,0x1
    80004e80:	ef4080e7          	jalr	-268(ra) # 80005d70 <_Z8printIntiii>
    80004e84:	00004517          	auipc	a0,0x4
    80004e88:	2e450513          	addi	a0,a0,740 # 80009168 <CONSOLE_STATUS+0x158>
    80004e8c:	00001097          	auipc	ra,0x1
    80004e90:	d34080e7          	jalr	-716(ra) # 80005bc0 <_Z11printStringPKc>
    80004e94:	0400006f          	j	80004ed4 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004e98:	00004517          	auipc	a0,0x4
    80004e9c:	3e050513          	addi	a0,a0,992 # 80009278 <CONSOLE_STATUS+0x268>
    80004ea0:	00001097          	auipc	ra,0x1
    80004ea4:	d20080e7          	jalr	-736(ra) # 80005bc0 <_Z11printStringPKc>
    80004ea8:	00000613          	li	a2,0
    80004eac:	00a00593          	li	a1,10
    80004eb0:	00048513          	mv	a0,s1
    80004eb4:	00001097          	auipc	ra,0x1
    80004eb8:	ebc080e7          	jalr	-324(ra) # 80005d70 <_Z8printIntiii>
    80004ebc:	00004517          	auipc	a0,0x4
    80004ec0:	2ac50513          	addi	a0,a0,684 # 80009168 <CONSOLE_STATUS+0x158>
    80004ec4:	00001097          	auipc	ra,0x1
    80004ec8:	cfc080e7          	jalr	-772(ra) # 80005bc0 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004ecc:	0014849b          	addiw	s1,s1,1
    80004ed0:	0ff4f493          	andi	s1,s1,255
    80004ed4:	00f00793          	li	a5,15
    80004ed8:	fc97f0e3          	bgeu	a5,s1,80004e98 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004edc:	00004517          	auipc	a0,0x4
    80004ee0:	3c450513          	addi	a0,a0,964 # 800092a0 <CONSOLE_STATUS+0x290>
    80004ee4:	00001097          	auipc	ra,0x1
    80004ee8:	cdc080e7          	jalr	-804(ra) # 80005bc0 <_Z11printStringPKc>
    finishedD = true;
    80004eec:	00100793          	li	a5,1
    80004ef0:	00007717          	auipc	a4,0x7
    80004ef4:	d0f70423          	sb	a5,-760(a4) # 8000bbf8 <_ZL9finishedD>
    thread_dispatch();
    80004ef8:	ffffc097          	auipc	ra,0xffffc
    80004efc:	4d4080e7          	jalr	1236(ra) # 800013cc <_Z15thread_dispatchv>
}
    80004f00:	01813083          	ld	ra,24(sp)
    80004f04:	01013403          	ld	s0,16(sp)
    80004f08:	00813483          	ld	s1,8(sp)
    80004f0c:	00013903          	ld	s2,0(sp)
    80004f10:	02010113          	addi	sp,sp,32
    80004f14:	00008067          	ret

0000000080004f18 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004f18:	fe010113          	addi	sp,sp,-32
    80004f1c:	00113c23          	sd	ra,24(sp)
    80004f20:	00813823          	sd	s0,16(sp)
    80004f24:	00913423          	sd	s1,8(sp)
    80004f28:	01213023          	sd	s2,0(sp)
    80004f2c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004f30:	00000493          	li	s1,0
    80004f34:	0400006f          	j	80004f74 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004f38:	00004517          	auipc	a0,0x4
    80004f3c:	31050513          	addi	a0,a0,784 # 80009248 <CONSOLE_STATUS+0x238>
    80004f40:	00001097          	auipc	ra,0x1
    80004f44:	c80080e7          	jalr	-896(ra) # 80005bc0 <_Z11printStringPKc>
    80004f48:	00000613          	li	a2,0
    80004f4c:	00a00593          	li	a1,10
    80004f50:	00048513          	mv	a0,s1
    80004f54:	00001097          	auipc	ra,0x1
    80004f58:	e1c080e7          	jalr	-484(ra) # 80005d70 <_Z8printIntiii>
    80004f5c:	00004517          	auipc	a0,0x4
    80004f60:	20c50513          	addi	a0,a0,524 # 80009168 <CONSOLE_STATUS+0x158>
    80004f64:	00001097          	auipc	ra,0x1
    80004f68:	c5c080e7          	jalr	-932(ra) # 80005bc0 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004f6c:	0014849b          	addiw	s1,s1,1
    80004f70:	0ff4f493          	andi	s1,s1,255
    80004f74:	00200793          	li	a5,2
    80004f78:	fc97f0e3          	bgeu	a5,s1,80004f38 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004f7c:	00004517          	auipc	a0,0x4
    80004f80:	2d450513          	addi	a0,a0,724 # 80009250 <CONSOLE_STATUS+0x240>
    80004f84:	00001097          	auipc	ra,0x1
    80004f88:	c3c080e7          	jalr	-964(ra) # 80005bc0 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004f8c:	00700313          	li	t1,7
    thread_dispatch();
    80004f90:	ffffc097          	auipc	ra,0xffffc
    80004f94:	43c080e7          	jalr	1084(ra) # 800013cc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004f98:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004f9c:	00004517          	auipc	a0,0x4
    80004fa0:	2c450513          	addi	a0,a0,708 # 80009260 <CONSOLE_STATUS+0x250>
    80004fa4:	00001097          	auipc	ra,0x1
    80004fa8:	c1c080e7          	jalr	-996(ra) # 80005bc0 <_Z11printStringPKc>
    80004fac:	00000613          	li	a2,0
    80004fb0:	00a00593          	li	a1,10
    80004fb4:	0009051b          	sext.w	a0,s2
    80004fb8:	00001097          	auipc	ra,0x1
    80004fbc:	db8080e7          	jalr	-584(ra) # 80005d70 <_Z8printIntiii>
    80004fc0:	00004517          	auipc	a0,0x4
    80004fc4:	1a850513          	addi	a0,a0,424 # 80009168 <CONSOLE_STATUS+0x158>
    80004fc8:	00001097          	auipc	ra,0x1
    80004fcc:	bf8080e7          	jalr	-1032(ra) # 80005bc0 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004fd0:	00c00513          	li	a0,12
    80004fd4:	00000097          	auipc	ra,0x0
    80004fd8:	d88080e7          	jalr	-632(ra) # 80004d5c <_ZL9fibonaccim>
    80004fdc:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004fe0:	00004517          	auipc	a0,0x4
    80004fe4:	28850513          	addi	a0,a0,648 # 80009268 <CONSOLE_STATUS+0x258>
    80004fe8:	00001097          	auipc	ra,0x1
    80004fec:	bd8080e7          	jalr	-1064(ra) # 80005bc0 <_Z11printStringPKc>
    80004ff0:	00000613          	li	a2,0
    80004ff4:	00a00593          	li	a1,10
    80004ff8:	0009051b          	sext.w	a0,s2
    80004ffc:	00001097          	auipc	ra,0x1
    80005000:	d74080e7          	jalr	-652(ra) # 80005d70 <_Z8printIntiii>
    80005004:	00004517          	auipc	a0,0x4
    80005008:	16450513          	addi	a0,a0,356 # 80009168 <CONSOLE_STATUS+0x158>
    8000500c:	00001097          	auipc	ra,0x1
    80005010:	bb4080e7          	jalr	-1100(ra) # 80005bc0 <_Z11printStringPKc>
    80005014:	0400006f          	j	80005054 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005018:	00004517          	auipc	a0,0x4
    8000501c:	23050513          	addi	a0,a0,560 # 80009248 <CONSOLE_STATUS+0x238>
    80005020:	00001097          	auipc	ra,0x1
    80005024:	ba0080e7          	jalr	-1120(ra) # 80005bc0 <_Z11printStringPKc>
    80005028:	00000613          	li	a2,0
    8000502c:	00a00593          	li	a1,10
    80005030:	00048513          	mv	a0,s1
    80005034:	00001097          	auipc	ra,0x1
    80005038:	d3c080e7          	jalr	-708(ra) # 80005d70 <_Z8printIntiii>
    8000503c:	00004517          	auipc	a0,0x4
    80005040:	12c50513          	addi	a0,a0,300 # 80009168 <CONSOLE_STATUS+0x158>
    80005044:	00001097          	auipc	ra,0x1
    80005048:	b7c080e7          	jalr	-1156(ra) # 80005bc0 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000504c:	0014849b          	addiw	s1,s1,1
    80005050:	0ff4f493          	andi	s1,s1,255
    80005054:	00500793          	li	a5,5
    80005058:	fc97f0e3          	bgeu	a5,s1,80005018 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    8000505c:	00004517          	auipc	a0,0x4
    80005060:	1c450513          	addi	a0,a0,452 # 80009220 <CONSOLE_STATUS+0x210>
    80005064:	00001097          	auipc	ra,0x1
    80005068:	b5c080e7          	jalr	-1188(ra) # 80005bc0 <_Z11printStringPKc>
    finishedC = true;
    8000506c:	00100793          	li	a5,1
    80005070:	00007717          	auipc	a4,0x7
    80005074:	b8f704a3          	sb	a5,-1143(a4) # 8000bbf9 <_ZL9finishedC>
    thread_dispatch();
    80005078:	ffffc097          	auipc	ra,0xffffc
    8000507c:	354080e7          	jalr	852(ra) # 800013cc <_Z15thread_dispatchv>
}
    80005080:	01813083          	ld	ra,24(sp)
    80005084:	01013403          	ld	s0,16(sp)
    80005088:	00813483          	ld	s1,8(sp)
    8000508c:	00013903          	ld	s2,0(sp)
    80005090:	02010113          	addi	sp,sp,32
    80005094:	00008067          	ret

0000000080005098 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005098:	fe010113          	addi	sp,sp,-32
    8000509c:	00113c23          	sd	ra,24(sp)
    800050a0:	00813823          	sd	s0,16(sp)
    800050a4:	00913423          	sd	s1,8(sp)
    800050a8:	01213023          	sd	s2,0(sp)
    800050ac:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800050b0:	00000913          	li	s2,0
    800050b4:	0380006f          	j	800050ec <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    800050b8:	ffffc097          	auipc	ra,0xffffc
    800050bc:	314080e7          	jalr	788(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800050c0:	00148493          	addi	s1,s1,1
    800050c4:	000027b7          	lui	a5,0x2
    800050c8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800050cc:	0097ee63          	bltu	a5,s1,800050e8 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800050d0:	00000713          	li	a4,0
    800050d4:	000077b7          	lui	a5,0x7
    800050d8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800050dc:	fce7eee3          	bltu	a5,a4,800050b8 <_ZL11workerBodyBPv+0x20>
    800050e0:	00170713          	addi	a4,a4,1
    800050e4:	ff1ff06f          	j	800050d4 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800050e8:	00190913          	addi	s2,s2,1
    800050ec:	00f00793          	li	a5,15
    800050f0:	0527e063          	bltu	a5,s2,80005130 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800050f4:	00004517          	auipc	a0,0x4
    800050f8:	13c50513          	addi	a0,a0,316 # 80009230 <CONSOLE_STATUS+0x220>
    800050fc:	00001097          	auipc	ra,0x1
    80005100:	ac4080e7          	jalr	-1340(ra) # 80005bc0 <_Z11printStringPKc>
    80005104:	00000613          	li	a2,0
    80005108:	00a00593          	li	a1,10
    8000510c:	0009051b          	sext.w	a0,s2
    80005110:	00001097          	auipc	ra,0x1
    80005114:	c60080e7          	jalr	-928(ra) # 80005d70 <_Z8printIntiii>
    80005118:	00004517          	auipc	a0,0x4
    8000511c:	05050513          	addi	a0,a0,80 # 80009168 <CONSOLE_STATUS+0x158>
    80005120:	00001097          	auipc	ra,0x1
    80005124:	aa0080e7          	jalr	-1376(ra) # 80005bc0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005128:	00000493          	li	s1,0
    8000512c:	f99ff06f          	j	800050c4 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80005130:	00004517          	auipc	a0,0x4
    80005134:	10850513          	addi	a0,a0,264 # 80009238 <CONSOLE_STATUS+0x228>
    80005138:	00001097          	auipc	ra,0x1
    8000513c:	a88080e7          	jalr	-1400(ra) # 80005bc0 <_Z11printStringPKc>
    finishedB = true;
    80005140:	00100793          	li	a5,1
    80005144:	00007717          	auipc	a4,0x7
    80005148:	aaf70b23          	sb	a5,-1354(a4) # 8000bbfa <_ZL9finishedB>
    thread_dispatch();
    8000514c:	ffffc097          	auipc	ra,0xffffc
    80005150:	280080e7          	jalr	640(ra) # 800013cc <_Z15thread_dispatchv>
}
    80005154:	01813083          	ld	ra,24(sp)
    80005158:	01013403          	ld	s0,16(sp)
    8000515c:	00813483          	ld	s1,8(sp)
    80005160:	00013903          	ld	s2,0(sp)
    80005164:	02010113          	addi	sp,sp,32
    80005168:	00008067          	ret

000000008000516c <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    8000516c:	fe010113          	addi	sp,sp,-32
    80005170:	00113c23          	sd	ra,24(sp)
    80005174:	00813823          	sd	s0,16(sp)
    80005178:	00913423          	sd	s1,8(sp)
    8000517c:	01213023          	sd	s2,0(sp)
    80005180:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005184:	00000913          	li	s2,0
    80005188:	0380006f          	j	800051c0 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    8000518c:	ffffc097          	auipc	ra,0xffffc
    80005190:	240080e7          	jalr	576(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005194:	00148493          	addi	s1,s1,1
    80005198:	000027b7          	lui	a5,0x2
    8000519c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800051a0:	0097ee63          	bltu	a5,s1,800051bc <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800051a4:	00000713          	li	a4,0
    800051a8:	000077b7          	lui	a5,0x7
    800051ac:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800051b0:	fce7eee3          	bltu	a5,a4,8000518c <_ZL11workerBodyAPv+0x20>
    800051b4:	00170713          	addi	a4,a4,1
    800051b8:	ff1ff06f          	j	800051a8 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800051bc:	00190913          	addi	s2,s2,1
    800051c0:	00900793          	li	a5,9
    800051c4:	0527e063          	bltu	a5,s2,80005204 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800051c8:	00004517          	auipc	a0,0x4
    800051cc:	05050513          	addi	a0,a0,80 # 80009218 <CONSOLE_STATUS+0x208>
    800051d0:	00001097          	auipc	ra,0x1
    800051d4:	9f0080e7          	jalr	-1552(ra) # 80005bc0 <_Z11printStringPKc>
    800051d8:	00000613          	li	a2,0
    800051dc:	00a00593          	li	a1,10
    800051e0:	0009051b          	sext.w	a0,s2
    800051e4:	00001097          	auipc	ra,0x1
    800051e8:	b8c080e7          	jalr	-1140(ra) # 80005d70 <_Z8printIntiii>
    800051ec:	00004517          	auipc	a0,0x4
    800051f0:	f7c50513          	addi	a0,a0,-132 # 80009168 <CONSOLE_STATUS+0x158>
    800051f4:	00001097          	auipc	ra,0x1
    800051f8:	9cc080e7          	jalr	-1588(ra) # 80005bc0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800051fc:	00000493          	li	s1,0
    80005200:	f99ff06f          	j	80005198 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80005204:	00004517          	auipc	a0,0x4
    80005208:	01c50513          	addi	a0,a0,28 # 80009220 <CONSOLE_STATUS+0x210>
    8000520c:	00001097          	auipc	ra,0x1
    80005210:	9b4080e7          	jalr	-1612(ra) # 80005bc0 <_Z11printStringPKc>
    finishedA = true;
    80005214:	00100793          	li	a5,1
    80005218:	00007717          	auipc	a4,0x7
    8000521c:	9ef701a3          	sb	a5,-1565(a4) # 8000bbfb <_ZL9finishedA>
}
    80005220:	01813083          	ld	ra,24(sp)
    80005224:	01013403          	ld	s0,16(sp)
    80005228:	00813483          	ld	s1,8(sp)
    8000522c:	00013903          	ld	s2,0(sp)
    80005230:	02010113          	addi	sp,sp,32
    80005234:	00008067          	ret

0000000080005238 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80005238:	fd010113          	addi	sp,sp,-48
    8000523c:	02113423          	sd	ra,40(sp)
    80005240:	02813023          	sd	s0,32(sp)
    80005244:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005248:	00000613          	li	a2,0
    8000524c:	00000597          	auipc	a1,0x0
    80005250:	f2058593          	addi	a1,a1,-224 # 8000516c <_ZL11workerBodyAPv>
    80005254:	fd040513          	addi	a0,s0,-48
    80005258:	ffffc097          	auipc	ra,0xffffc
    8000525c:	0a0080e7          	jalr	160(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80005260:	00004517          	auipc	a0,0x4
    80005264:	05050513          	addi	a0,a0,80 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80005268:	00001097          	auipc	ra,0x1
    8000526c:	958080e7          	jalr	-1704(ra) # 80005bc0 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005270:	00000613          	li	a2,0
    80005274:	00000597          	auipc	a1,0x0
    80005278:	e2458593          	addi	a1,a1,-476 # 80005098 <_ZL11workerBodyBPv>
    8000527c:	fd840513          	addi	a0,s0,-40
    80005280:	ffffc097          	auipc	ra,0xffffc
    80005284:	078080e7          	jalr	120(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80005288:	00004517          	auipc	a0,0x4
    8000528c:	04050513          	addi	a0,a0,64 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80005290:	00001097          	auipc	ra,0x1
    80005294:	930080e7          	jalr	-1744(ra) # 80005bc0 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005298:	00000613          	li	a2,0
    8000529c:	00000597          	auipc	a1,0x0
    800052a0:	c7c58593          	addi	a1,a1,-900 # 80004f18 <_ZL11workerBodyCPv>
    800052a4:	fe040513          	addi	a0,s0,-32
    800052a8:	ffffc097          	auipc	ra,0xffffc
    800052ac:	050080e7          	jalr	80(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    800052b0:	00004517          	auipc	a0,0x4
    800052b4:	03050513          	addi	a0,a0,48 # 800092e0 <CONSOLE_STATUS+0x2d0>
    800052b8:	00001097          	auipc	ra,0x1
    800052bc:	908080e7          	jalr	-1784(ra) # 80005bc0 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800052c0:	00000613          	li	a2,0
    800052c4:	00000597          	auipc	a1,0x0
    800052c8:	b0c58593          	addi	a1,a1,-1268 # 80004dd0 <_ZL11workerBodyDPv>
    800052cc:	fe840513          	addi	a0,s0,-24
    800052d0:	ffffc097          	auipc	ra,0xffffc
    800052d4:	028080e7          	jalr	40(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    800052d8:	00004517          	auipc	a0,0x4
    800052dc:	02050513          	addi	a0,a0,32 # 800092f8 <CONSOLE_STATUS+0x2e8>
    800052e0:	00001097          	auipc	ra,0x1
    800052e4:	8e0080e7          	jalr	-1824(ra) # 80005bc0 <_Z11printStringPKc>
    800052e8:	00c0006f          	j	800052f4 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800052ec:	ffffc097          	auipc	ra,0xffffc
    800052f0:	0e0080e7          	jalr	224(ra) # 800013cc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800052f4:	00007797          	auipc	a5,0x7
    800052f8:	9077c783          	lbu	a5,-1785(a5) # 8000bbfb <_ZL9finishedA>
    800052fc:	fe0788e3          	beqz	a5,800052ec <_Z18Threads_C_API_testv+0xb4>
    80005300:	00007797          	auipc	a5,0x7
    80005304:	8fa7c783          	lbu	a5,-1798(a5) # 8000bbfa <_ZL9finishedB>
    80005308:	fe0782e3          	beqz	a5,800052ec <_Z18Threads_C_API_testv+0xb4>
    8000530c:	00007797          	auipc	a5,0x7
    80005310:	8ed7c783          	lbu	a5,-1811(a5) # 8000bbf9 <_ZL9finishedC>
    80005314:	fc078ce3          	beqz	a5,800052ec <_Z18Threads_C_API_testv+0xb4>
    80005318:	00007797          	auipc	a5,0x7
    8000531c:	8e07c783          	lbu	a5,-1824(a5) # 8000bbf8 <_ZL9finishedD>
    80005320:	fc0786e3          	beqz	a5,800052ec <_Z18Threads_C_API_testv+0xb4>
    }

}
    80005324:	02813083          	ld	ra,40(sp)
    80005328:	02013403          	ld	s0,32(sp)
    8000532c:	03010113          	addi	sp,sp,48
    80005330:	00008067          	ret

0000000080005334 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80005334:	fd010113          	addi	sp,sp,-48
    80005338:	02113423          	sd	ra,40(sp)
    8000533c:	02813023          	sd	s0,32(sp)
    80005340:	00913c23          	sd	s1,24(sp)
    80005344:	01213823          	sd	s2,16(sp)
    80005348:	01313423          	sd	s3,8(sp)
    8000534c:	03010413          	addi	s0,sp,48
    80005350:	00050993          	mv	s3,a0
    80005354:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80005358:	00000913          	li	s2,0
    8000535c:	00c0006f          	j	80005368 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005360:	ffffd097          	auipc	ra,0xffffd
    80005364:	c44080e7          	jalr	-956(ra) # 80001fa4 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80005368:	ffffc097          	auipc	ra,0xffffc
    8000536c:	2b8080e7          	jalr	696(ra) # 80001620 <_Z4getcv>
    80005370:	0005059b          	sext.w	a1,a0
    80005374:	01b00793          	li	a5,27
    80005378:	02f58a63          	beq	a1,a5,800053ac <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    8000537c:	0084b503          	ld	a0,8(s1)
    80005380:	00001097          	auipc	ra,0x1
    80005384:	c64080e7          	jalr	-924(ra) # 80005fe4 <_ZN9BufferCPP3putEi>
        i++;
    80005388:	0019071b          	addiw	a4,s2,1
    8000538c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005390:	0004a683          	lw	a3,0(s1)
    80005394:	0026979b          	slliw	a5,a3,0x2
    80005398:	00d787bb          	addw	a5,a5,a3
    8000539c:	0017979b          	slliw	a5,a5,0x1
    800053a0:	02f767bb          	remw	a5,a4,a5
    800053a4:	fc0792e3          	bnez	a5,80005368 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    800053a8:	fb9ff06f          	j	80005360 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    800053ac:	00100793          	li	a5,1
    800053b0:	00007717          	auipc	a4,0x7
    800053b4:	84f72823          	sw	a5,-1968(a4) # 8000bc00 <_ZL9threadEnd>
    td->buffer->put('!');
    800053b8:	0209b783          	ld	a5,32(s3)
    800053bc:	02100593          	li	a1,33
    800053c0:	0087b503          	ld	a0,8(a5)
    800053c4:	00001097          	auipc	ra,0x1
    800053c8:	c20080e7          	jalr	-992(ra) # 80005fe4 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    800053cc:	0104b503          	ld	a0,16(s1)
    800053d0:	ffffd097          	auipc	ra,0xffffd
    800053d4:	cc4080e7          	jalr	-828(ra) # 80002094 <_ZN9Semaphore6signalEv>
}
    800053d8:	02813083          	ld	ra,40(sp)
    800053dc:	02013403          	ld	s0,32(sp)
    800053e0:	01813483          	ld	s1,24(sp)
    800053e4:	01013903          	ld	s2,16(sp)
    800053e8:	00813983          	ld	s3,8(sp)
    800053ec:	03010113          	addi	sp,sp,48
    800053f0:	00008067          	ret

00000000800053f4 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    800053f4:	fe010113          	addi	sp,sp,-32
    800053f8:	00113c23          	sd	ra,24(sp)
    800053fc:	00813823          	sd	s0,16(sp)
    80005400:	00913423          	sd	s1,8(sp)
    80005404:	01213023          	sd	s2,0(sp)
    80005408:	02010413          	addi	s0,sp,32
    8000540c:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005410:	00000913          	li	s2,0
    80005414:	00c0006f          	j	80005420 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005418:	ffffd097          	auipc	ra,0xffffd
    8000541c:	b8c080e7          	jalr	-1140(ra) # 80001fa4 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80005420:	00006797          	auipc	a5,0x6
    80005424:	7e07a783          	lw	a5,2016(a5) # 8000bc00 <_ZL9threadEnd>
    80005428:	02079e63          	bnez	a5,80005464 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    8000542c:	0004a583          	lw	a1,0(s1)
    80005430:	0305859b          	addiw	a1,a1,48
    80005434:	0084b503          	ld	a0,8(s1)
    80005438:	00001097          	auipc	ra,0x1
    8000543c:	bac080e7          	jalr	-1108(ra) # 80005fe4 <_ZN9BufferCPP3putEi>
        i++;
    80005440:	0019071b          	addiw	a4,s2,1
    80005444:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005448:	0004a683          	lw	a3,0(s1)
    8000544c:	0026979b          	slliw	a5,a3,0x2
    80005450:	00d787bb          	addw	a5,a5,a3
    80005454:	0017979b          	slliw	a5,a5,0x1
    80005458:	02f767bb          	remw	a5,a4,a5
    8000545c:	fc0792e3          	bnez	a5,80005420 <_ZN12ProducerSync8producerEPv+0x2c>
    80005460:	fb9ff06f          	j	80005418 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80005464:	0104b503          	ld	a0,16(s1)
    80005468:	ffffd097          	auipc	ra,0xffffd
    8000546c:	c2c080e7          	jalr	-980(ra) # 80002094 <_ZN9Semaphore6signalEv>
}
    80005470:	01813083          	ld	ra,24(sp)
    80005474:	01013403          	ld	s0,16(sp)
    80005478:	00813483          	ld	s1,8(sp)
    8000547c:	00013903          	ld	s2,0(sp)
    80005480:	02010113          	addi	sp,sp,32
    80005484:	00008067          	ret

0000000080005488 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80005488:	fd010113          	addi	sp,sp,-48
    8000548c:	02113423          	sd	ra,40(sp)
    80005490:	02813023          	sd	s0,32(sp)
    80005494:	00913c23          	sd	s1,24(sp)
    80005498:	01213823          	sd	s2,16(sp)
    8000549c:	01313423          	sd	s3,8(sp)
    800054a0:	01413023          	sd	s4,0(sp)
    800054a4:	03010413          	addi	s0,sp,48
    800054a8:	00050993          	mv	s3,a0
    800054ac:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800054b0:	00000a13          	li	s4,0
    800054b4:	01c0006f          	j	800054d0 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    800054b8:	ffffd097          	auipc	ra,0xffffd
    800054bc:	aec080e7          	jalr	-1300(ra) # 80001fa4 <_ZN6Thread8dispatchEv>
    800054c0:	0500006f          	j	80005510 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    800054c4:	00a00513          	li	a0,10
    800054c8:	ffffc097          	auipc	ra,0xffffc
    800054cc:	1a4080e7          	jalr	420(ra) # 8000166c <_Z4putcc>
    while (!threadEnd) {
    800054d0:	00006797          	auipc	a5,0x6
    800054d4:	7307a783          	lw	a5,1840(a5) # 8000bc00 <_ZL9threadEnd>
    800054d8:	06079263          	bnez	a5,8000553c <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    800054dc:	00893503          	ld	a0,8(s2)
    800054e0:	00001097          	auipc	ra,0x1
    800054e4:	b94080e7          	jalr	-1132(ra) # 80006074 <_ZN9BufferCPP3getEv>
        i++;
    800054e8:	001a049b          	addiw	s1,s4,1
    800054ec:	00048a1b          	sext.w	s4,s1
        putc(key);
    800054f0:	0ff57513          	andi	a0,a0,255
    800054f4:	ffffc097          	auipc	ra,0xffffc
    800054f8:	178080e7          	jalr	376(ra) # 8000166c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800054fc:	00092703          	lw	a4,0(s2)
    80005500:	0027179b          	slliw	a5,a4,0x2
    80005504:	00e787bb          	addw	a5,a5,a4
    80005508:	02f4e7bb          	remw	a5,s1,a5
    8000550c:	fa0786e3          	beqz	a5,800054b8 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80005510:	05000793          	li	a5,80
    80005514:	02f4e4bb          	remw	s1,s1,a5
    80005518:	fa049ce3          	bnez	s1,800054d0 <_ZN12ConsumerSync8consumerEPv+0x48>
    8000551c:	fa9ff06f          	j	800054c4 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80005520:	0209b783          	ld	a5,32(s3)
    80005524:	0087b503          	ld	a0,8(a5)
    80005528:	00001097          	auipc	ra,0x1
    8000552c:	b4c080e7          	jalr	-1204(ra) # 80006074 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80005530:	0ff57513          	andi	a0,a0,255
    80005534:	ffffd097          	auipc	ra,0xffffd
    80005538:	c50080e7          	jalr	-944(ra) # 80002184 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    8000553c:	0209b783          	ld	a5,32(s3)
    80005540:	0087b503          	ld	a0,8(a5)
    80005544:	00001097          	auipc	ra,0x1
    80005548:	bbc080e7          	jalr	-1092(ra) # 80006100 <_ZN9BufferCPP6getCntEv>
    8000554c:	fca04ae3          	bgtz	a0,80005520 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80005550:	01093503          	ld	a0,16(s2)
    80005554:	ffffd097          	auipc	ra,0xffffd
    80005558:	b40080e7          	jalr	-1216(ra) # 80002094 <_ZN9Semaphore6signalEv>
}
    8000555c:	02813083          	ld	ra,40(sp)
    80005560:	02013403          	ld	s0,32(sp)
    80005564:	01813483          	ld	s1,24(sp)
    80005568:	01013903          	ld	s2,16(sp)
    8000556c:	00813983          	ld	s3,8(sp)
    80005570:	00013a03          	ld	s4,0(sp)
    80005574:	03010113          	addi	sp,sp,48
    80005578:	00008067          	ret

000000008000557c <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    8000557c:	f8010113          	addi	sp,sp,-128
    80005580:	06113c23          	sd	ra,120(sp)
    80005584:	06813823          	sd	s0,112(sp)
    80005588:	06913423          	sd	s1,104(sp)
    8000558c:	07213023          	sd	s2,96(sp)
    80005590:	05313c23          	sd	s3,88(sp)
    80005594:	05413823          	sd	s4,80(sp)
    80005598:	05513423          	sd	s5,72(sp)
    8000559c:	05613023          	sd	s6,64(sp)
    800055a0:	03713c23          	sd	s7,56(sp)
    800055a4:	03813823          	sd	s8,48(sp)
    800055a8:	03913423          	sd	s9,40(sp)
    800055ac:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    800055b0:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    800055b4:	00004517          	auipc	a0,0x4
    800055b8:	b7c50513          	addi	a0,a0,-1156 # 80009130 <CONSOLE_STATUS+0x120>
    800055bc:	00000097          	auipc	ra,0x0
    800055c0:	604080e7          	jalr	1540(ra) # 80005bc0 <_Z11printStringPKc>
    getString(input, 30);
    800055c4:	01e00593          	li	a1,30
    800055c8:	f8040493          	addi	s1,s0,-128
    800055cc:	00048513          	mv	a0,s1
    800055d0:	00000097          	auipc	ra,0x0
    800055d4:	678080e7          	jalr	1656(ra) # 80005c48 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800055d8:	00048513          	mv	a0,s1
    800055dc:	00000097          	auipc	ra,0x0
    800055e0:	744080e7          	jalr	1860(ra) # 80005d20 <_Z11stringToIntPKc>
    800055e4:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800055e8:	00004517          	auipc	a0,0x4
    800055ec:	b6850513          	addi	a0,a0,-1176 # 80009150 <CONSOLE_STATUS+0x140>
    800055f0:	00000097          	auipc	ra,0x0
    800055f4:	5d0080e7          	jalr	1488(ra) # 80005bc0 <_Z11printStringPKc>
    getString(input, 30);
    800055f8:	01e00593          	li	a1,30
    800055fc:	00048513          	mv	a0,s1
    80005600:	00000097          	auipc	ra,0x0
    80005604:	648080e7          	jalr	1608(ra) # 80005c48 <_Z9getStringPci>
    n = stringToInt(input);
    80005608:	00048513          	mv	a0,s1
    8000560c:	00000097          	auipc	ra,0x0
    80005610:	714080e7          	jalr	1812(ra) # 80005d20 <_Z11stringToIntPKc>
    80005614:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80005618:	00004517          	auipc	a0,0x4
    8000561c:	b5850513          	addi	a0,a0,-1192 # 80009170 <CONSOLE_STATUS+0x160>
    80005620:	00000097          	auipc	ra,0x0
    80005624:	5a0080e7          	jalr	1440(ra) # 80005bc0 <_Z11printStringPKc>
    80005628:	00000613          	li	a2,0
    8000562c:	00a00593          	li	a1,10
    80005630:	00090513          	mv	a0,s2
    80005634:	00000097          	auipc	ra,0x0
    80005638:	73c080e7          	jalr	1852(ra) # 80005d70 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    8000563c:	00004517          	auipc	a0,0x4
    80005640:	b4c50513          	addi	a0,a0,-1204 # 80009188 <CONSOLE_STATUS+0x178>
    80005644:	00000097          	auipc	ra,0x0
    80005648:	57c080e7          	jalr	1404(ra) # 80005bc0 <_Z11printStringPKc>
    8000564c:	00000613          	li	a2,0
    80005650:	00a00593          	li	a1,10
    80005654:	00048513          	mv	a0,s1
    80005658:	00000097          	auipc	ra,0x0
    8000565c:	718080e7          	jalr	1816(ra) # 80005d70 <_Z8printIntiii>
    printString(".\n");
    80005660:	00004517          	auipc	a0,0x4
    80005664:	b4050513          	addi	a0,a0,-1216 # 800091a0 <CONSOLE_STATUS+0x190>
    80005668:	00000097          	auipc	ra,0x0
    8000566c:	558080e7          	jalr	1368(ra) # 80005bc0 <_Z11printStringPKc>
    if(threadNum > n) {
    80005670:	0324c463          	blt	s1,s2,80005698 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80005674:	03205c63          	blez	s2,800056ac <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80005678:	03800513          	li	a0,56
    8000567c:	ffffc097          	auipc	ra,0xffffc
    80005680:	7ec080e7          	jalr	2028(ra) # 80001e68 <_Znwm>
    80005684:	00050a93          	mv	s5,a0
    80005688:	00048593          	mv	a1,s1
    8000568c:	00001097          	auipc	ra,0x1
    80005690:	804080e7          	jalr	-2044(ra) # 80005e90 <_ZN9BufferCPPC1Ei>
    80005694:	0300006f          	j	800056c4 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005698:	00004517          	auipc	a0,0x4
    8000569c:	b1050513          	addi	a0,a0,-1264 # 800091a8 <CONSOLE_STATUS+0x198>
    800056a0:	00000097          	auipc	ra,0x0
    800056a4:	520080e7          	jalr	1312(ra) # 80005bc0 <_Z11printStringPKc>
        return;
    800056a8:	0140006f          	j	800056bc <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800056ac:	00004517          	auipc	a0,0x4
    800056b0:	b3c50513          	addi	a0,a0,-1220 # 800091e8 <CONSOLE_STATUS+0x1d8>
    800056b4:	00000097          	auipc	ra,0x0
    800056b8:	50c080e7          	jalr	1292(ra) # 80005bc0 <_Z11printStringPKc>
        return;
    800056bc:	000b8113          	mv	sp,s7
    800056c0:	2380006f          	j	800058f8 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    800056c4:	01000513          	li	a0,16
    800056c8:	ffffc097          	auipc	ra,0xffffc
    800056cc:	7a0080e7          	jalr	1952(ra) # 80001e68 <_Znwm>
    800056d0:	00050493          	mv	s1,a0
    800056d4:	00000593          	li	a1,0
    800056d8:	ffffd097          	auipc	ra,0xffffd
    800056dc:	948080e7          	jalr	-1720(ra) # 80002020 <_ZN9SemaphoreC1Ej>
    800056e0:	00006797          	auipc	a5,0x6
    800056e4:	5297b423          	sd	s1,1320(a5) # 8000bc08 <_ZL10waitForAll>
    Thread* threads[threadNum];
    800056e8:	00391793          	slli	a5,s2,0x3
    800056ec:	00f78793          	addi	a5,a5,15
    800056f0:	ff07f793          	andi	a5,a5,-16
    800056f4:	40f10133          	sub	sp,sp,a5
    800056f8:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    800056fc:	0019071b          	addiw	a4,s2,1
    80005700:	00171793          	slli	a5,a4,0x1
    80005704:	00e787b3          	add	a5,a5,a4
    80005708:	00379793          	slli	a5,a5,0x3
    8000570c:	00f78793          	addi	a5,a5,15
    80005710:	ff07f793          	andi	a5,a5,-16
    80005714:	40f10133          	sub	sp,sp,a5
    80005718:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    8000571c:	00191c13          	slli	s8,s2,0x1
    80005720:	012c07b3          	add	a5,s8,s2
    80005724:	00379793          	slli	a5,a5,0x3
    80005728:	00fa07b3          	add	a5,s4,a5
    8000572c:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80005730:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80005734:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80005738:	02800513          	li	a0,40
    8000573c:	ffffc097          	auipc	ra,0xffffc
    80005740:	72c080e7          	jalr	1836(ra) # 80001e68 <_Znwm>
    80005744:	00050b13          	mv	s6,a0
    80005748:	012c0c33          	add	s8,s8,s2
    8000574c:	003c1c13          	slli	s8,s8,0x3
    80005750:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80005754:	ffffd097          	auipc	ra,0xffffd
    80005758:	8a4080e7          	jalr	-1884(ra) # 80001ff8 <_ZN6ThreadC1Ev>
    8000575c:	00006797          	auipc	a5,0x6
    80005760:	33c78793          	addi	a5,a5,828 # 8000ba98 <_ZTV12ConsumerSync+0x10>
    80005764:	00fb3023          	sd	a5,0(s6)
    80005768:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    8000576c:	000b0513          	mv	a0,s6
    80005770:	ffffd097          	auipc	ra,0xffffd
    80005774:	804080e7          	jalr	-2044(ra) # 80001f74 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005778:	00000493          	li	s1,0
    8000577c:	0380006f          	j	800057b4 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005780:	00006797          	auipc	a5,0x6
    80005784:	2f078793          	addi	a5,a5,752 # 8000ba70 <_ZTV12ProducerSync+0x10>
    80005788:	00fcb023          	sd	a5,0(s9)
    8000578c:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80005790:	00349793          	slli	a5,s1,0x3
    80005794:	00f987b3          	add	a5,s3,a5
    80005798:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    8000579c:	00349793          	slli	a5,s1,0x3
    800057a0:	00f987b3          	add	a5,s3,a5
    800057a4:	0007b503          	ld	a0,0(a5)
    800057a8:	ffffc097          	auipc	ra,0xffffc
    800057ac:	7cc080e7          	jalr	1996(ra) # 80001f74 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800057b0:	0014849b          	addiw	s1,s1,1
    800057b4:	0b24d063          	bge	s1,s2,80005854 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    800057b8:	00149793          	slli	a5,s1,0x1
    800057bc:	009787b3          	add	a5,a5,s1
    800057c0:	00379793          	slli	a5,a5,0x3
    800057c4:	00fa07b3          	add	a5,s4,a5
    800057c8:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800057cc:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    800057d0:	00006717          	auipc	a4,0x6
    800057d4:	43873703          	ld	a4,1080(a4) # 8000bc08 <_ZL10waitForAll>
    800057d8:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    800057dc:	02905863          	blez	s1,8000580c <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    800057e0:	02800513          	li	a0,40
    800057e4:	ffffc097          	auipc	ra,0xffffc
    800057e8:	684080e7          	jalr	1668(ra) # 80001e68 <_Znwm>
    800057ec:	00050c93          	mv	s9,a0
    800057f0:	00149c13          	slli	s8,s1,0x1
    800057f4:	009c0c33          	add	s8,s8,s1
    800057f8:	003c1c13          	slli	s8,s8,0x3
    800057fc:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005800:	ffffc097          	auipc	ra,0xffffc
    80005804:	7f8080e7          	jalr	2040(ra) # 80001ff8 <_ZN6ThreadC1Ev>
    80005808:	f79ff06f          	j	80005780 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    8000580c:	02800513          	li	a0,40
    80005810:	ffffc097          	auipc	ra,0xffffc
    80005814:	658080e7          	jalr	1624(ra) # 80001e68 <_Znwm>
    80005818:	00050c93          	mv	s9,a0
    8000581c:	00149c13          	slli	s8,s1,0x1
    80005820:	009c0c33          	add	s8,s8,s1
    80005824:	003c1c13          	slli	s8,s8,0x3
    80005828:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    8000582c:	ffffc097          	auipc	ra,0xffffc
    80005830:	7cc080e7          	jalr	1996(ra) # 80001ff8 <_ZN6ThreadC1Ev>
    80005834:	00006797          	auipc	a5,0x6
    80005838:	21478793          	addi	a5,a5,532 # 8000ba48 <_ZTV16ProducerKeyboard+0x10>
    8000583c:	00fcb023          	sd	a5,0(s9)
    80005840:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80005844:	00349793          	slli	a5,s1,0x3
    80005848:	00f987b3          	add	a5,s3,a5
    8000584c:	0197b023          	sd	s9,0(a5)
    80005850:	f4dff06f          	j	8000579c <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80005854:	ffffc097          	auipc	ra,0xffffc
    80005858:	750080e7          	jalr	1872(ra) # 80001fa4 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    8000585c:	00000493          	li	s1,0
    80005860:	00994e63          	blt	s2,s1,8000587c <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80005864:	00006517          	auipc	a0,0x6
    80005868:	3a453503          	ld	a0,932(a0) # 8000bc08 <_ZL10waitForAll>
    8000586c:	ffffc097          	auipc	ra,0xffffc
    80005870:	7f0080e7          	jalr	2032(ra) # 8000205c <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80005874:	0014849b          	addiw	s1,s1,1
    80005878:	fe9ff06f          	j	80005860 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    8000587c:	00000493          	li	s1,0
    80005880:	0080006f          	j	80005888 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80005884:	0014849b          	addiw	s1,s1,1
    80005888:	0324d263          	bge	s1,s2,800058ac <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    8000588c:	00349793          	slli	a5,s1,0x3
    80005890:	00f987b3          	add	a5,s3,a5
    80005894:	0007b503          	ld	a0,0(a5)
    80005898:	fe0506e3          	beqz	a0,80005884 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    8000589c:	00053783          	ld	a5,0(a0)
    800058a0:	0087b783          	ld	a5,8(a5)
    800058a4:	000780e7          	jalr	a5
    800058a8:	fddff06f          	j	80005884 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    800058ac:	000b0a63          	beqz	s6,800058c0 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    800058b0:	000b3783          	ld	a5,0(s6)
    800058b4:	0087b783          	ld	a5,8(a5)
    800058b8:	000b0513          	mv	a0,s6
    800058bc:	000780e7          	jalr	a5
    delete waitForAll;
    800058c0:	00006517          	auipc	a0,0x6
    800058c4:	34853503          	ld	a0,840(a0) # 8000bc08 <_ZL10waitForAll>
    800058c8:	00050863          	beqz	a0,800058d8 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    800058cc:	00053783          	ld	a5,0(a0)
    800058d0:	0087b783          	ld	a5,8(a5)
    800058d4:	000780e7          	jalr	a5
    delete buffer;
    800058d8:	000a8e63          	beqz	s5,800058f4 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    800058dc:	000a8513          	mv	a0,s5
    800058e0:	00001097          	auipc	ra,0x1
    800058e4:	8a8080e7          	jalr	-1880(ra) # 80006188 <_ZN9BufferCPPD1Ev>
    800058e8:	000a8513          	mv	a0,s5
    800058ec:	ffffc097          	auipc	ra,0xffffc
    800058f0:	5a4080e7          	jalr	1444(ra) # 80001e90 <_ZdlPv>
    800058f4:	000b8113          	mv	sp,s7

}
    800058f8:	f8040113          	addi	sp,s0,-128
    800058fc:	07813083          	ld	ra,120(sp)
    80005900:	07013403          	ld	s0,112(sp)
    80005904:	06813483          	ld	s1,104(sp)
    80005908:	06013903          	ld	s2,96(sp)
    8000590c:	05813983          	ld	s3,88(sp)
    80005910:	05013a03          	ld	s4,80(sp)
    80005914:	04813a83          	ld	s5,72(sp)
    80005918:	04013b03          	ld	s6,64(sp)
    8000591c:	03813b83          	ld	s7,56(sp)
    80005920:	03013c03          	ld	s8,48(sp)
    80005924:	02813c83          	ld	s9,40(sp)
    80005928:	08010113          	addi	sp,sp,128
    8000592c:	00008067          	ret
    80005930:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80005934:	000a8513          	mv	a0,s5
    80005938:	ffffc097          	auipc	ra,0xffffc
    8000593c:	558080e7          	jalr	1368(ra) # 80001e90 <_ZdlPv>
    80005940:	00048513          	mv	a0,s1
    80005944:	00007097          	auipc	ra,0x7
    80005948:	3a4080e7          	jalr	932(ra) # 8000cce8 <_Unwind_Resume>
    8000594c:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80005950:	00048513          	mv	a0,s1
    80005954:	ffffc097          	auipc	ra,0xffffc
    80005958:	53c080e7          	jalr	1340(ra) # 80001e90 <_ZdlPv>
    8000595c:	00090513          	mv	a0,s2
    80005960:	00007097          	auipc	ra,0x7
    80005964:	388080e7          	jalr	904(ra) # 8000cce8 <_Unwind_Resume>
    80005968:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    8000596c:	000b0513          	mv	a0,s6
    80005970:	ffffc097          	auipc	ra,0xffffc
    80005974:	520080e7          	jalr	1312(ra) # 80001e90 <_ZdlPv>
    80005978:	00048513          	mv	a0,s1
    8000597c:	00007097          	auipc	ra,0x7
    80005980:	36c080e7          	jalr	876(ra) # 8000cce8 <_Unwind_Resume>
    80005984:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005988:	000c8513          	mv	a0,s9
    8000598c:	ffffc097          	auipc	ra,0xffffc
    80005990:	504080e7          	jalr	1284(ra) # 80001e90 <_ZdlPv>
    80005994:	00048513          	mv	a0,s1
    80005998:	00007097          	auipc	ra,0x7
    8000599c:	350080e7          	jalr	848(ra) # 8000cce8 <_Unwind_Resume>
    800059a0:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    800059a4:	000c8513          	mv	a0,s9
    800059a8:	ffffc097          	auipc	ra,0xffffc
    800059ac:	4e8080e7          	jalr	1256(ra) # 80001e90 <_ZdlPv>
    800059b0:	00048513          	mv	a0,s1
    800059b4:	00007097          	auipc	ra,0x7
    800059b8:	334080e7          	jalr	820(ra) # 8000cce8 <_Unwind_Resume>

00000000800059bc <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    800059bc:	ff010113          	addi	sp,sp,-16
    800059c0:	00113423          	sd	ra,8(sp)
    800059c4:	00813023          	sd	s0,0(sp)
    800059c8:	01010413          	addi	s0,sp,16
    800059cc:	00006797          	auipc	a5,0x6
    800059d0:	0cc78793          	addi	a5,a5,204 # 8000ba98 <_ZTV12ConsumerSync+0x10>
    800059d4:	00f53023          	sd	a5,0(a0)
    800059d8:	ffffc097          	auipc	ra,0xffffc
    800059dc:	3f8080e7          	jalr	1016(ra) # 80001dd0 <_ZN6ThreadD1Ev>
    800059e0:	00813083          	ld	ra,8(sp)
    800059e4:	00013403          	ld	s0,0(sp)
    800059e8:	01010113          	addi	sp,sp,16
    800059ec:	00008067          	ret

00000000800059f0 <_ZN12ConsumerSyncD0Ev>:
    800059f0:	fe010113          	addi	sp,sp,-32
    800059f4:	00113c23          	sd	ra,24(sp)
    800059f8:	00813823          	sd	s0,16(sp)
    800059fc:	00913423          	sd	s1,8(sp)
    80005a00:	02010413          	addi	s0,sp,32
    80005a04:	00050493          	mv	s1,a0
    80005a08:	00006797          	auipc	a5,0x6
    80005a0c:	09078793          	addi	a5,a5,144 # 8000ba98 <_ZTV12ConsumerSync+0x10>
    80005a10:	00f53023          	sd	a5,0(a0)
    80005a14:	ffffc097          	auipc	ra,0xffffc
    80005a18:	3bc080e7          	jalr	956(ra) # 80001dd0 <_ZN6ThreadD1Ev>
    80005a1c:	00048513          	mv	a0,s1
    80005a20:	ffffc097          	auipc	ra,0xffffc
    80005a24:	470080e7          	jalr	1136(ra) # 80001e90 <_ZdlPv>
    80005a28:	01813083          	ld	ra,24(sp)
    80005a2c:	01013403          	ld	s0,16(sp)
    80005a30:	00813483          	ld	s1,8(sp)
    80005a34:	02010113          	addi	sp,sp,32
    80005a38:	00008067          	ret

0000000080005a3c <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80005a3c:	ff010113          	addi	sp,sp,-16
    80005a40:	00113423          	sd	ra,8(sp)
    80005a44:	00813023          	sd	s0,0(sp)
    80005a48:	01010413          	addi	s0,sp,16
    80005a4c:	00006797          	auipc	a5,0x6
    80005a50:	02478793          	addi	a5,a5,36 # 8000ba70 <_ZTV12ProducerSync+0x10>
    80005a54:	00f53023          	sd	a5,0(a0)
    80005a58:	ffffc097          	auipc	ra,0xffffc
    80005a5c:	378080e7          	jalr	888(ra) # 80001dd0 <_ZN6ThreadD1Ev>
    80005a60:	00813083          	ld	ra,8(sp)
    80005a64:	00013403          	ld	s0,0(sp)
    80005a68:	01010113          	addi	sp,sp,16
    80005a6c:	00008067          	ret

0000000080005a70 <_ZN12ProducerSyncD0Ev>:
    80005a70:	fe010113          	addi	sp,sp,-32
    80005a74:	00113c23          	sd	ra,24(sp)
    80005a78:	00813823          	sd	s0,16(sp)
    80005a7c:	00913423          	sd	s1,8(sp)
    80005a80:	02010413          	addi	s0,sp,32
    80005a84:	00050493          	mv	s1,a0
    80005a88:	00006797          	auipc	a5,0x6
    80005a8c:	fe878793          	addi	a5,a5,-24 # 8000ba70 <_ZTV12ProducerSync+0x10>
    80005a90:	00f53023          	sd	a5,0(a0)
    80005a94:	ffffc097          	auipc	ra,0xffffc
    80005a98:	33c080e7          	jalr	828(ra) # 80001dd0 <_ZN6ThreadD1Ev>
    80005a9c:	00048513          	mv	a0,s1
    80005aa0:	ffffc097          	auipc	ra,0xffffc
    80005aa4:	3f0080e7          	jalr	1008(ra) # 80001e90 <_ZdlPv>
    80005aa8:	01813083          	ld	ra,24(sp)
    80005aac:	01013403          	ld	s0,16(sp)
    80005ab0:	00813483          	ld	s1,8(sp)
    80005ab4:	02010113          	addi	sp,sp,32
    80005ab8:	00008067          	ret

0000000080005abc <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005abc:	ff010113          	addi	sp,sp,-16
    80005ac0:	00113423          	sd	ra,8(sp)
    80005ac4:	00813023          	sd	s0,0(sp)
    80005ac8:	01010413          	addi	s0,sp,16
    80005acc:	00006797          	auipc	a5,0x6
    80005ad0:	f7c78793          	addi	a5,a5,-132 # 8000ba48 <_ZTV16ProducerKeyboard+0x10>
    80005ad4:	00f53023          	sd	a5,0(a0)
    80005ad8:	ffffc097          	auipc	ra,0xffffc
    80005adc:	2f8080e7          	jalr	760(ra) # 80001dd0 <_ZN6ThreadD1Ev>
    80005ae0:	00813083          	ld	ra,8(sp)
    80005ae4:	00013403          	ld	s0,0(sp)
    80005ae8:	01010113          	addi	sp,sp,16
    80005aec:	00008067          	ret

0000000080005af0 <_ZN16ProducerKeyboardD0Ev>:
    80005af0:	fe010113          	addi	sp,sp,-32
    80005af4:	00113c23          	sd	ra,24(sp)
    80005af8:	00813823          	sd	s0,16(sp)
    80005afc:	00913423          	sd	s1,8(sp)
    80005b00:	02010413          	addi	s0,sp,32
    80005b04:	00050493          	mv	s1,a0
    80005b08:	00006797          	auipc	a5,0x6
    80005b0c:	f4078793          	addi	a5,a5,-192 # 8000ba48 <_ZTV16ProducerKeyboard+0x10>
    80005b10:	00f53023          	sd	a5,0(a0)
    80005b14:	ffffc097          	auipc	ra,0xffffc
    80005b18:	2bc080e7          	jalr	700(ra) # 80001dd0 <_ZN6ThreadD1Ev>
    80005b1c:	00048513          	mv	a0,s1
    80005b20:	ffffc097          	auipc	ra,0xffffc
    80005b24:	370080e7          	jalr	880(ra) # 80001e90 <_ZdlPv>
    80005b28:	01813083          	ld	ra,24(sp)
    80005b2c:	01013403          	ld	s0,16(sp)
    80005b30:	00813483          	ld	s1,8(sp)
    80005b34:	02010113          	addi	sp,sp,32
    80005b38:	00008067          	ret

0000000080005b3c <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80005b3c:	ff010113          	addi	sp,sp,-16
    80005b40:	00113423          	sd	ra,8(sp)
    80005b44:	00813023          	sd	s0,0(sp)
    80005b48:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80005b4c:	02053583          	ld	a1,32(a0)
    80005b50:	fffff097          	auipc	ra,0xfffff
    80005b54:	7e4080e7          	jalr	2020(ra) # 80005334 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005b58:	00813083          	ld	ra,8(sp)
    80005b5c:	00013403          	ld	s0,0(sp)
    80005b60:	01010113          	addi	sp,sp,16
    80005b64:	00008067          	ret

0000000080005b68 <_ZN12ProducerSync3runEv>:
    void run() override {
    80005b68:	ff010113          	addi	sp,sp,-16
    80005b6c:	00113423          	sd	ra,8(sp)
    80005b70:	00813023          	sd	s0,0(sp)
    80005b74:	01010413          	addi	s0,sp,16
        producer(td);
    80005b78:	02053583          	ld	a1,32(a0)
    80005b7c:	00000097          	auipc	ra,0x0
    80005b80:	878080e7          	jalr	-1928(ra) # 800053f4 <_ZN12ProducerSync8producerEPv>
    }
    80005b84:	00813083          	ld	ra,8(sp)
    80005b88:	00013403          	ld	s0,0(sp)
    80005b8c:	01010113          	addi	sp,sp,16
    80005b90:	00008067          	ret

0000000080005b94 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005b94:	ff010113          	addi	sp,sp,-16
    80005b98:	00113423          	sd	ra,8(sp)
    80005b9c:	00813023          	sd	s0,0(sp)
    80005ba0:	01010413          	addi	s0,sp,16
        consumer(td);
    80005ba4:	02053583          	ld	a1,32(a0)
    80005ba8:	00000097          	auipc	ra,0x0
    80005bac:	8e0080e7          	jalr	-1824(ra) # 80005488 <_ZN12ConsumerSync8consumerEPv>
    }
    80005bb0:	00813083          	ld	ra,8(sp)
    80005bb4:	00013403          	ld	s0,0(sp)
    80005bb8:	01010113          	addi	sp,sp,16
    80005bbc:	00008067          	ret

0000000080005bc0 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005bc0:	fe010113          	addi	sp,sp,-32
    80005bc4:	00113c23          	sd	ra,24(sp)
    80005bc8:	00813823          	sd	s0,16(sp)
    80005bcc:	00913423          	sd	s1,8(sp)
    80005bd0:	02010413          	addi	s0,sp,32
    80005bd4:	00050493          	mv	s1,a0
    LOCK();
    80005bd8:	00100613          	li	a2,1
    80005bdc:	00000593          	li	a1,0
    80005be0:	00006517          	auipc	a0,0x6
    80005be4:	03050513          	addi	a0,a0,48 # 8000bc10 <lockPrint>
    80005be8:	ffffb097          	auipc	ra,0xffffb
    80005bec:	634080e7          	jalr	1588(ra) # 8000121c <copy_and_swap>
    80005bf0:	00050863          	beqz	a0,80005c00 <_Z11printStringPKc+0x40>
    80005bf4:	ffffb097          	auipc	ra,0xffffb
    80005bf8:	7d8080e7          	jalr	2008(ra) # 800013cc <_Z15thread_dispatchv>
    80005bfc:	fddff06f          	j	80005bd8 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005c00:	0004c503          	lbu	a0,0(s1)
    80005c04:	00050a63          	beqz	a0,80005c18 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005c08:	ffffc097          	auipc	ra,0xffffc
    80005c0c:	a64080e7          	jalr	-1436(ra) # 8000166c <_Z4putcc>
        string++;
    80005c10:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005c14:	fedff06f          	j	80005c00 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005c18:	00000613          	li	a2,0
    80005c1c:	00100593          	li	a1,1
    80005c20:	00006517          	auipc	a0,0x6
    80005c24:	ff050513          	addi	a0,a0,-16 # 8000bc10 <lockPrint>
    80005c28:	ffffb097          	auipc	ra,0xffffb
    80005c2c:	5f4080e7          	jalr	1524(ra) # 8000121c <copy_and_swap>
    80005c30:	fe0514e3          	bnez	a0,80005c18 <_Z11printStringPKc+0x58>
}
    80005c34:	01813083          	ld	ra,24(sp)
    80005c38:	01013403          	ld	s0,16(sp)
    80005c3c:	00813483          	ld	s1,8(sp)
    80005c40:	02010113          	addi	sp,sp,32
    80005c44:	00008067          	ret

0000000080005c48 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005c48:	fd010113          	addi	sp,sp,-48
    80005c4c:	02113423          	sd	ra,40(sp)
    80005c50:	02813023          	sd	s0,32(sp)
    80005c54:	00913c23          	sd	s1,24(sp)
    80005c58:	01213823          	sd	s2,16(sp)
    80005c5c:	01313423          	sd	s3,8(sp)
    80005c60:	01413023          	sd	s4,0(sp)
    80005c64:	03010413          	addi	s0,sp,48
    80005c68:	00050993          	mv	s3,a0
    80005c6c:	00058a13          	mv	s4,a1
    LOCK();
    80005c70:	00100613          	li	a2,1
    80005c74:	00000593          	li	a1,0
    80005c78:	00006517          	auipc	a0,0x6
    80005c7c:	f9850513          	addi	a0,a0,-104 # 8000bc10 <lockPrint>
    80005c80:	ffffb097          	auipc	ra,0xffffb
    80005c84:	59c080e7          	jalr	1436(ra) # 8000121c <copy_and_swap>
    80005c88:	00050863          	beqz	a0,80005c98 <_Z9getStringPci+0x50>
    80005c8c:	ffffb097          	auipc	ra,0xffffb
    80005c90:	740080e7          	jalr	1856(ra) # 800013cc <_Z15thread_dispatchv>
    80005c94:	fddff06f          	j	80005c70 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005c98:	00000913          	li	s2,0
    80005c9c:	00090493          	mv	s1,s2
    80005ca0:	0019091b          	addiw	s2,s2,1
    80005ca4:	03495a63          	bge	s2,s4,80005cd8 <_Z9getStringPci+0x90>
        cc = getc();
    80005ca8:	ffffc097          	auipc	ra,0xffffc
    80005cac:	978080e7          	jalr	-1672(ra) # 80001620 <_Z4getcv>
        if(cc < 1)
    80005cb0:	02050463          	beqz	a0,80005cd8 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005cb4:	009984b3          	add	s1,s3,s1
    80005cb8:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005cbc:	00a00793          	li	a5,10
    80005cc0:	00f50a63          	beq	a0,a5,80005cd4 <_Z9getStringPci+0x8c>
    80005cc4:	00d00793          	li	a5,13
    80005cc8:	fcf51ae3          	bne	a0,a5,80005c9c <_Z9getStringPci+0x54>
        buf[i++] = c;
    80005ccc:	00090493          	mv	s1,s2
    80005cd0:	0080006f          	j	80005cd8 <_Z9getStringPci+0x90>
    80005cd4:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005cd8:	009984b3          	add	s1,s3,s1
    80005cdc:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005ce0:	00000613          	li	a2,0
    80005ce4:	00100593          	li	a1,1
    80005ce8:	00006517          	auipc	a0,0x6
    80005cec:	f2850513          	addi	a0,a0,-216 # 8000bc10 <lockPrint>
    80005cf0:	ffffb097          	auipc	ra,0xffffb
    80005cf4:	52c080e7          	jalr	1324(ra) # 8000121c <copy_and_swap>
    80005cf8:	fe0514e3          	bnez	a0,80005ce0 <_Z9getStringPci+0x98>
    return buf;
}
    80005cfc:	00098513          	mv	a0,s3
    80005d00:	02813083          	ld	ra,40(sp)
    80005d04:	02013403          	ld	s0,32(sp)
    80005d08:	01813483          	ld	s1,24(sp)
    80005d0c:	01013903          	ld	s2,16(sp)
    80005d10:	00813983          	ld	s3,8(sp)
    80005d14:	00013a03          	ld	s4,0(sp)
    80005d18:	03010113          	addi	sp,sp,48
    80005d1c:	00008067          	ret

0000000080005d20 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005d20:	ff010113          	addi	sp,sp,-16
    80005d24:	00813423          	sd	s0,8(sp)
    80005d28:	01010413          	addi	s0,sp,16
    80005d2c:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005d30:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005d34:	0006c603          	lbu	a2,0(a3)
    80005d38:	fd06071b          	addiw	a4,a2,-48
    80005d3c:	0ff77713          	andi	a4,a4,255
    80005d40:	00900793          	li	a5,9
    80005d44:	02e7e063          	bltu	a5,a4,80005d64 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005d48:	0025179b          	slliw	a5,a0,0x2
    80005d4c:	00a787bb          	addw	a5,a5,a0
    80005d50:	0017979b          	slliw	a5,a5,0x1
    80005d54:	00168693          	addi	a3,a3,1
    80005d58:	00c787bb          	addw	a5,a5,a2
    80005d5c:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005d60:	fd5ff06f          	j	80005d34 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005d64:	00813403          	ld	s0,8(sp)
    80005d68:	01010113          	addi	sp,sp,16
    80005d6c:	00008067          	ret

0000000080005d70 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005d70:	fc010113          	addi	sp,sp,-64
    80005d74:	02113c23          	sd	ra,56(sp)
    80005d78:	02813823          	sd	s0,48(sp)
    80005d7c:	02913423          	sd	s1,40(sp)
    80005d80:	03213023          	sd	s2,32(sp)
    80005d84:	01313c23          	sd	s3,24(sp)
    80005d88:	04010413          	addi	s0,sp,64
    80005d8c:	00050493          	mv	s1,a0
    80005d90:	00058913          	mv	s2,a1
    80005d94:	00060993          	mv	s3,a2
    LOCK();
    80005d98:	00100613          	li	a2,1
    80005d9c:	00000593          	li	a1,0
    80005da0:	00006517          	auipc	a0,0x6
    80005da4:	e7050513          	addi	a0,a0,-400 # 8000bc10 <lockPrint>
    80005da8:	ffffb097          	auipc	ra,0xffffb
    80005dac:	474080e7          	jalr	1140(ra) # 8000121c <copy_and_swap>
    80005db0:	00050863          	beqz	a0,80005dc0 <_Z8printIntiii+0x50>
    80005db4:	ffffb097          	auipc	ra,0xffffb
    80005db8:	618080e7          	jalr	1560(ra) # 800013cc <_Z15thread_dispatchv>
    80005dbc:	fddff06f          	j	80005d98 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005dc0:	00098463          	beqz	s3,80005dc8 <_Z8printIntiii+0x58>
    80005dc4:	0804c463          	bltz	s1,80005e4c <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005dc8:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005dcc:	00000593          	li	a1,0
    }

    i = 0;
    80005dd0:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005dd4:	0009079b          	sext.w	a5,s2
    80005dd8:	0325773b          	remuw	a4,a0,s2
    80005ddc:	00048613          	mv	a2,s1
    80005de0:	0014849b          	addiw	s1,s1,1
    80005de4:	02071693          	slli	a3,a4,0x20
    80005de8:	0206d693          	srli	a3,a3,0x20
    80005dec:	00006717          	auipc	a4,0x6
    80005df0:	cc470713          	addi	a4,a4,-828 # 8000bab0 <digits>
    80005df4:	00d70733          	add	a4,a4,a3
    80005df8:	00074683          	lbu	a3,0(a4)
    80005dfc:	fd040713          	addi	a4,s0,-48
    80005e00:	00c70733          	add	a4,a4,a2
    80005e04:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005e08:	0005071b          	sext.w	a4,a0
    80005e0c:	0325553b          	divuw	a0,a0,s2
    80005e10:	fcf772e3          	bgeu	a4,a5,80005dd4 <_Z8printIntiii+0x64>
    if(neg)
    80005e14:	00058c63          	beqz	a1,80005e2c <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005e18:	fd040793          	addi	a5,s0,-48
    80005e1c:	009784b3          	add	s1,a5,s1
    80005e20:	02d00793          	li	a5,45
    80005e24:	fef48823          	sb	a5,-16(s1)
    80005e28:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005e2c:	fff4849b          	addiw	s1,s1,-1
    80005e30:	0204c463          	bltz	s1,80005e58 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80005e34:	fd040793          	addi	a5,s0,-48
    80005e38:	009787b3          	add	a5,a5,s1
    80005e3c:	ff07c503          	lbu	a0,-16(a5)
    80005e40:	ffffc097          	auipc	ra,0xffffc
    80005e44:	82c080e7          	jalr	-2004(ra) # 8000166c <_Z4putcc>
    80005e48:	fe5ff06f          	j	80005e2c <_Z8printIntiii+0xbc>
        x = -xx;
    80005e4c:	4090053b          	negw	a0,s1
        neg = 1;
    80005e50:	00100593          	li	a1,1
        x = -xx;
    80005e54:	f7dff06f          	j	80005dd0 <_Z8printIntiii+0x60>

    UNLOCK();
    80005e58:	00000613          	li	a2,0
    80005e5c:	00100593          	li	a1,1
    80005e60:	00006517          	auipc	a0,0x6
    80005e64:	db050513          	addi	a0,a0,-592 # 8000bc10 <lockPrint>
    80005e68:	ffffb097          	auipc	ra,0xffffb
    80005e6c:	3b4080e7          	jalr	948(ra) # 8000121c <copy_and_swap>
    80005e70:	fe0514e3          	bnez	a0,80005e58 <_Z8printIntiii+0xe8>
    80005e74:	03813083          	ld	ra,56(sp)
    80005e78:	03013403          	ld	s0,48(sp)
    80005e7c:	02813483          	ld	s1,40(sp)
    80005e80:	02013903          	ld	s2,32(sp)
    80005e84:	01813983          	ld	s3,24(sp)
    80005e88:	04010113          	addi	sp,sp,64
    80005e8c:	00008067          	ret

0000000080005e90 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005e90:	fd010113          	addi	sp,sp,-48
    80005e94:	02113423          	sd	ra,40(sp)
    80005e98:	02813023          	sd	s0,32(sp)
    80005e9c:	00913c23          	sd	s1,24(sp)
    80005ea0:	01213823          	sd	s2,16(sp)
    80005ea4:	01313423          	sd	s3,8(sp)
    80005ea8:	03010413          	addi	s0,sp,48
    80005eac:	00050493          	mv	s1,a0
    80005eb0:	00058913          	mv	s2,a1
    80005eb4:	0015879b          	addiw	a5,a1,1
    80005eb8:	0007851b          	sext.w	a0,a5
    80005ebc:	00f4a023          	sw	a5,0(s1)
    80005ec0:	0004a823          	sw	zero,16(s1)
    80005ec4:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005ec8:	00251513          	slli	a0,a0,0x2
    80005ecc:	ffffb097          	auipc	ra,0xffffb
    80005ed0:	38c080e7          	jalr	908(ra) # 80001258 <_Z9mem_allocm>
    80005ed4:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005ed8:	01000513          	li	a0,16
    80005edc:	ffffc097          	auipc	ra,0xffffc
    80005ee0:	f8c080e7          	jalr	-116(ra) # 80001e68 <_Znwm>
    80005ee4:	00050993          	mv	s3,a0
    80005ee8:	00000593          	li	a1,0
    80005eec:	ffffc097          	auipc	ra,0xffffc
    80005ef0:	134080e7          	jalr	308(ra) # 80002020 <_ZN9SemaphoreC1Ej>
    80005ef4:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005ef8:	01000513          	li	a0,16
    80005efc:	ffffc097          	auipc	ra,0xffffc
    80005f00:	f6c080e7          	jalr	-148(ra) # 80001e68 <_Znwm>
    80005f04:	00050993          	mv	s3,a0
    80005f08:	00090593          	mv	a1,s2
    80005f0c:	ffffc097          	auipc	ra,0xffffc
    80005f10:	114080e7          	jalr	276(ra) # 80002020 <_ZN9SemaphoreC1Ej>
    80005f14:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005f18:	01000513          	li	a0,16
    80005f1c:	ffffc097          	auipc	ra,0xffffc
    80005f20:	f4c080e7          	jalr	-180(ra) # 80001e68 <_Znwm>
    80005f24:	00050913          	mv	s2,a0
    80005f28:	00100593          	li	a1,1
    80005f2c:	ffffc097          	auipc	ra,0xffffc
    80005f30:	0f4080e7          	jalr	244(ra) # 80002020 <_ZN9SemaphoreC1Ej>
    80005f34:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005f38:	01000513          	li	a0,16
    80005f3c:	ffffc097          	auipc	ra,0xffffc
    80005f40:	f2c080e7          	jalr	-212(ra) # 80001e68 <_Znwm>
    80005f44:	00050913          	mv	s2,a0
    80005f48:	00100593          	li	a1,1
    80005f4c:	ffffc097          	auipc	ra,0xffffc
    80005f50:	0d4080e7          	jalr	212(ra) # 80002020 <_ZN9SemaphoreC1Ej>
    80005f54:	0324b823          	sd	s2,48(s1)
}
    80005f58:	02813083          	ld	ra,40(sp)
    80005f5c:	02013403          	ld	s0,32(sp)
    80005f60:	01813483          	ld	s1,24(sp)
    80005f64:	01013903          	ld	s2,16(sp)
    80005f68:	00813983          	ld	s3,8(sp)
    80005f6c:	03010113          	addi	sp,sp,48
    80005f70:	00008067          	ret
    80005f74:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005f78:	00098513          	mv	a0,s3
    80005f7c:	ffffc097          	auipc	ra,0xffffc
    80005f80:	f14080e7          	jalr	-236(ra) # 80001e90 <_ZdlPv>
    80005f84:	00048513          	mv	a0,s1
    80005f88:	00007097          	auipc	ra,0x7
    80005f8c:	d60080e7          	jalr	-672(ra) # 8000cce8 <_Unwind_Resume>
    80005f90:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005f94:	00098513          	mv	a0,s3
    80005f98:	ffffc097          	auipc	ra,0xffffc
    80005f9c:	ef8080e7          	jalr	-264(ra) # 80001e90 <_ZdlPv>
    80005fa0:	00048513          	mv	a0,s1
    80005fa4:	00007097          	auipc	ra,0x7
    80005fa8:	d44080e7          	jalr	-700(ra) # 8000cce8 <_Unwind_Resume>
    80005fac:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005fb0:	00090513          	mv	a0,s2
    80005fb4:	ffffc097          	auipc	ra,0xffffc
    80005fb8:	edc080e7          	jalr	-292(ra) # 80001e90 <_ZdlPv>
    80005fbc:	00048513          	mv	a0,s1
    80005fc0:	00007097          	auipc	ra,0x7
    80005fc4:	d28080e7          	jalr	-728(ra) # 8000cce8 <_Unwind_Resume>
    80005fc8:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005fcc:	00090513          	mv	a0,s2
    80005fd0:	ffffc097          	auipc	ra,0xffffc
    80005fd4:	ec0080e7          	jalr	-320(ra) # 80001e90 <_ZdlPv>
    80005fd8:	00048513          	mv	a0,s1
    80005fdc:	00007097          	auipc	ra,0x7
    80005fe0:	d0c080e7          	jalr	-756(ra) # 8000cce8 <_Unwind_Resume>

0000000080005fe4 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005fe4:	fe010113          	addi	sp,sp,-32
    80005fe8:	00113c23          	sd	ra,24(sp)
    80005fec:	00813823          	sd	s0,16(sp)
    80005ff0:	00913423          	sd	s1,8(sp)
    80005ff4:	01213023          	sd	s2,0(sp)
    80005ff8:	02010413          	addi	s0,sp,32
    80005ffc:	00050493          	mv	s1,a0
    80006000:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80006004:	01853503          	ld	a0,24(a0)
    80006008:	ffffc097          	auipc	ra,0xffffc
    8000600c:	054080e7          	jalr	84(ra) # 8000205c <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80006010:	0304b503          	ld	a0,48(s1)
    80006014:	ffffc097          	auipc	ra,0xffffc
    80006018:	048080e7          	jalr	72(ra) # 8000205c <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    8000601c:	0084b783          	ld	a5,8(s1)
    80006020:	0144a703          	lw	a4,20(s1)
    80006024:	00271713          	slli	a4,a4,0x2
    80006028:	00e787b3          	add	a5,a5,a4
    8000602c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006030:	0144a783          	lw	a5,20(s1)
    80006034:	0017879b          	addiw	a5,a5,1
    80006038:	0004a703          	lw	a4,0(s1)
    8000603c:	02e7e7bb          	remw	a5,a5,a4
    80006040:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80006044:	0304b503          	ld	a0,48(s1)
    80006048:	ffffc097          	auipc	ra,0xffffc
    8000604c:	04c080e7          	jalr	76(ra) # 80002094 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80006050:	0204b503          	ld	a0,32(s1)
    80006054:	ffffc097          	auipc	ra,0xffffc
    80006058:	040080e7          	jalr	64(ra) # 80002094 <_ZN9Semaphore6signalEv>

}
    8000605c:	01813083          	ld	ra,24(sp)
    80006060:	01013403          	ld	s0,16(sp)
    80006064:	00813483          	ld	s1,8(sp)
    80006068:	00013903          	ld	s2,0(sp)
    8000606c:	02010113          	addi	sp,sp,32
    80006070:	00008067          	ret

0000000080006074 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80006074:	fe010113          	addi	sp,sp,-32
    80006078:	00113c23          	sd	ra,24(sp)
    8000607c:	00813823          	sd	s0,16(sp)
    80006080:	00913423          	sd	s1,8(sp)
    80006084:	01213023          	sd	s2,0(sp)
    80006088:	02010413          	addi	s0,sp,32
    8000608c:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80006090:	02053503          	ld	a0,32(a0)
    80006094:	ffffc097          	auipc	ra,0xffffc
    80006098:	fc8080e7          	jalr	-56(ra) # 8000205c <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    8000609c:	0284b503          	ld	a0,40(s1)
    800060a0:	ffffc097          	auipc	ra,0xffffc
    800060a4:	fbc080e7          	jalr	-68(ra) # 8000205c <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    800060a8:	0084b703          	ld	a4,8(s1)
    800060ac:	0104a783          	lw	a5,16(s1)
    800060b0:	00279693          	slli	a3,a5,0x2
    800060b4:	00d70733          	add	a4,a4,a3
    800060b8:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800060bc:	0017879b          	addiw	a5,a5,1
    800060c0:	0004a703          	lw	a4,0(s1)
    800060c4:	02e7e7bb          	remw	a5,a5,a4
    800060c8:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800060cc:	0284b503          	ld	a0,40(s1)
    800060d0:	ffffc097          	auipc	ra,0xffffc
    800060d4:	fc4080e7          	jalr	-60(ra) # 80002094 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800060d8:	0184b503          	ld	a0,24(s1)
    800060dc:	ffffc097          	auipc	ra,0xffffc
    800060e0:	fb8080e7          	jalr	-72(ra) # 80002094 <_ZN9Semaphore6signalEv>

    return ret;
}
    800060e4:	00090513          	mv	a0,s2
    800060e8:	01813083          	ld	ra,24(sp)
    800060ec:	01013403          	ld	s0,16(sp)
    800060f0:	00813483          	ld	s1,8(sp)
    800060f4:	00013903          	ld	s2,0(sp)
    800060f8:	02010113          	addi	sp,sp,32
    800060fc:	00008067          	ret

0000000080006100 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80006100:	fe010113          	addi	sp,sp,-32
    80006104:	00113c23          	sd	ra,24(sp)
    80006108:	00813823          	sd	s0,16(sp)
    8000610c:	00913423          	sd	s1,8(sp)
    80006110:	01213023          	sd	s2,0(sp)
    80006114:	02010413          	addi	s0,sp,32
    80006118:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    8000611c:	02853503          	ld	a0,40(a0)
    80006120:	ffffc097          	auipc	ra,0xffffc
    80006124:	f3c080e7          	jalr	-196(ra) # 8000205c <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80006128:	0304b503          	ld	a0,48(s1)
    8000612c:	ffffc097          	auipc	ra,0xffffc
    80006130:	f30080e7          	jalr	-208(ra) # 8000205c <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80006134:	0144a783          	lw	a5,20(s1)
    80006138:	0104a903          	lw	s2,16(s1)
    8000613c:	0327ce63          	blt	a5,s2,80006178 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80006140:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80006144:	0304b503          	ld	a0,48(s1)
    80006148:	ffffc097          	auipc	ra,0xffffc
    8000614c:	f4c080e7          	jalr	-180(ra) # 80002094 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80006150:	0284b503          	ld	a0,40(s1)
    80006154:	ffffc097          	auipc	ra,0xffffc
    80006158:	f40080e7          	jalr	-192(ra) # 80002094 <_ZN9Semaphore6signalEv>

    return ret;
}
    8000615c:	00090513          	mv	a0,s2
    80006160:	01813083          	ld	ra,24(sp)
    80006164:	01013403          	ld	s0,16(sp)
    80006168:	00813483          	ld	s1,8(sp)
    8000616c:	00013903          	ld	s2,0(sp)
    80006170:	02010113          	addi	sp,sp,32
    80006174:	00008067          	ret
        ret = cap - head + tail;
    80006178:	0004a703          	lw	a4,0(s1)
    8000617c:	4127093b          	subw	s2,a4,s2
    80006180:	00f9093b          	addw	s2,s2,a5
    80006184:	fc1ff06f          	j	80006144 <_ZN9BufferCPP6getCntEv+0x44>

0000000080006188 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80006188:	fe010113          	addi	sp,sp,-32
    8000618c:	00113c23          	sd	ra,24(sp)
    80006190:	00813823          	sd	s0,16(sp)
    80006194:	00913423          	sd	s1,8(sp)
    80006198:	02010413          	addi	s0,sp,32
    8000619c:	00050493          	mv	s1,a0
    Console::putc('\n');
    800061a0:	00a00513          	li	a0,10
    800061a4:	ffffc097          	auipc	ra,0xffffc
    800061a8:	fe0080e7          	jalr	-32(ra) # 80002184 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    800061ac:	00003517          	auipc	a0,0x3
    800061b0:	16450513          	addi	a0,a0,356 # 80009310 <CONSOLE_STATUS+0x300>
    800061b4:	00000097          	auipc	ra,0x0
    800061b8:	a0c080e7          	jalr	-1524(ra) # 80005bc0 <_Z11printStringPKc>
    while (getCnt()) {
    800061bc:	00048513          	mv	a0,s1
    800061c0:	00000097          	auipc	ra,0x0
    800061c4:	f40080e7          	jalr	-192(ra) # 80006100 <_ZN9BufferCPP6getCntEv>
    800061c8:	02050c63          	beqz	a0,80006200 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    800061cc:	0084b783          	ld	a5,8(s1)
    800061d0:	0104a703          	lw	a4,16(s1)
    800061d4:	00271713          	slli	a4,a4,0x2
    800061d8:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    800061dc:	0007c503          	lbu	a0,0(a5)
    800061e0:	ffffc097          	auipc	ra,0xffffc
    800061e4:	fa4080e7          	jalr	-92(ra) # 80002184 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    800061e8:	0104a783          	lw	a5,16(s1)
    800061ec:	0017879b          	addiw	a5,a5,1
    800061f0:	0004a703          	lw	a4,0(s1)
    800061f4:	02e7e7bb          	remw	a5,a5,a4
    800061f8:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800061fc:	fc1ff06f          	j	800061bc <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80006200:	02100513          	li	a0,33
    80006204:	ffffc097          	auipc	ra,0xffffc
    80006208:	f80080e7          	jalr	-128(ra) # 80002184 <_ZN7Console4putcEc>
    Console::putc('\n');
    8000620c:	00a00513          	li	a0,10
    80006210:	ffffc097          	auipc	ra,0xffffc
    80006214:	f74080e7          	jalr	-140(ra) # 80002184 <_ZN7Console4putcEc>
    mem_free(buffer);
    80006218:	0084b503          	ld	a0,8(s1)
    8000621c:	ffffb097          	auipc	ra,0xffffb
    80006220:	090080e7          	jalr	144(ra) # 800012ac <_Z8mem_freePv>
    delete itemAvailable;
    80006224:	0204b503          	ld	a0,32(s1)
    80006228:	00050863          	beqz	a0,80006238 <_ZN9BufferCPPD1Ev+0xb0>
    8000622c:	00053783          	ld	a5,0(a0)
    80006230:	0087b783          	ld	a5,8(a5)
    80006234:	000780e7          	jalr	a5
    delete spaceAvailable;
    80006238:	0184b503          	ld	a0,24(s1)
    8000623c:	00050863          	beqz	a0,8000624c <_ZN9BufferCPPD1Ev+0xc4>
    80006240:	00053783          	ld	a5,0(a0)
    80006244:	0087b783          	ld	a5,8(a5)
    80006248:	000780e7          	jalr	a5
    delete mutexTail;
    8000624c:	0304b503          	ld	a0,48(s1)
    80006250:	00050863          	beqz	a0,80006260 <_ZN9BufferCPPD1Ev+0xd8>
    80006254:	00053783          	ld	a5,0(a0)
    80006258:	0087b783          	ld	a5,8(a5)
    8000625c:	000780e7          	jalr	a5
    delete mutexHead;
    80006260:	0284b503          	ld	a0,40(s1)
    80006264:	00050863          	beqz	a0,80006274 <_ZN9BufferCPPD1Ev+0xec>
    80006268:	00053783          	ld	a5,0(a0)
    8000626c:	0087b783          	ld	a5,8(a5)
    80006270:	000780e7          	jalr	a5
}
    80006274:	01813083          	ld	ra,24(sp)
    80006278:	01013403          	ld	s0,16(sp)
    8000627c:	00813483          	ld	s1,8(sp)
    80006280:	02010113          	addi	sp,sp,32
    80006284:	00008067          	ret

0000000080006288 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80006288:	fe010113          	addi	sp,sp,-32
    8000628c:	00113c23          	sd	ra,24(sp)
    80006290:	00813823          	sd	s0,16(sp)
    80006294:	00913423          	sd	s1,8(sp)
    80006298:	01213023          	sd	s2,0(sp)
    8000629c:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    800062a0:	00003517          	auipc	a0,0x3
    800062a4:	08850513          	addi	a0,a0,136 # 80009328 <CONSOLE_STATUS+0x318>
    800062a8:	00000097          	auipc	ra,0x0
    800062ac:	918080e7          	jalr	-1768(ra) # 80005bc0 <_Z11printStringPKc>
    int test = getc() - '0';
    800062b0:	ffffb097          	auipc	ra,0xffffb
    800062b4:	370080e7          	jalr	880(ra) # 80001620 <_Z4getcv>
    800062b8:	0005091b          	sext.w	s2,a0
    800062bc:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    800062c0:	ffffb097          	auipc	ra,0xffffb
    800062c4:	360080e7          	jalr	864(ra) # 80001620 <_Z4getcv>


    if ((test >= 1 && test <= 2) || test == 7) {
    800062c8:	fcf9071b          	addiw	a4,s2,-49
    800062cc:	00100793          	li	a5,1
    800062d0:	04e7f063          	bgeu	a5,a4,80006310 <_Z8userMainv+0x88>
    800062d4:	00700793          	li	a5,7
    800062d8:	02f48c63          	beq	s1,a5,80006310 <_Z8userMainv+0x88>
            printString("Nije navedeno da je zadatak 2 implementiran\n");
            return;
        }
    }

    if (test >= 3 && test <= 4) {
    800062dc:	fcd9079b          	addiw	a5,s2,-51
    800062e0:	00100693          	li	a3,1
    800062e4:	04f6fa63          	bgeu	a3,a5,80006338 <_Z8userMainv+0xb0>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    800062e8:	fcb9091b          	addiw	s2,s2,-53
    800062ec:	00100793          	li	a5,1
    800062f0:	0527fe63          	bgeu	a5,s2,8000634c <_Z8userMainv+0xc4>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    800062f4:	00600793          	li	a5,6
    800062f8:	02e7f463          	bgeu	a5,a4,80006320 <_Z8userMainv+0x98>
            printString("Test se nije uspesno zavrsio\n");
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    800062fc:	00003517          	auipc	a0,0x3
    80006300:	0dc50513          	addi	a0,a0,220 # 800093d8 <CONSOLE_STATUS+0x3c8>
    80006304:	00000097          	auipc	ra,0x0
    80006308:	8bc080e7          	jalr	-1860(ra) # 80005bc0 <_Z11printStringPKc>
    8000630c:	0140006f          	j	80006320 <_Z8userMainv+0x98>
            printString("Nije navedeno da je zadatak 2 implementiran\n");
    80006310:	00003517          	auipc	a0,0x3
    80006314:	03850513          	addi	a0,a0,56 # 80009348 <CONSOLE_STATUS+0x338>
    80006318:	00000097          	auipc	ra,0x0
    8000631c:	8a8080e7          	jalr	-1880(ra) # 80005bc0 <_Z11printStringPKc>
    }
    80006320:	01813083          	ld	ra,24(sp)
    80006324:	01013403          	ld	s0,16(sp)
    80006328:	00813483          	ld	s1,8(sp)
    8000632c:	00013903          	ld	s2,0(sp)
    80006330:	02010113          	addi	sp,sp,32
    80006334:	00008067          	ret
            printString("Nije navedeno da je zadatak 3 implementiran\n");
    80006338:	00003517          	auipc	a0,0x3
    8000633c:	04050513          	addi	a0,a0,64 # 80009378 <CONSOLE_STATUS+0x368>
    80006340:	00000097          	auipc	ra,0x0
    80006344:	880080e7          	jalr	-1920(ra) # 80005bc0 <_Z11printStringPKc>
            return;
    80006348:	fd9ff06f          	j	80006320 <_Z8userMainv+0x98>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    8000634c:	00003517          	auipc	a0,0x3
    80006350:	05c50513          	addi	a0,a0,92 # 800093a8 <CONSOLE_STATUS+0x398>
    80006354:	00000097          	auipc	ra,0x0
    80006358:	86c080e7          	jalr	-1940(ra) # 80005bc0 <_Z11printStringPKc>
            return;
    8000635c:	fc5ff06f          	j	80006320 <_Z8userMainv+0x98>

0000000080006360 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80006360:	fe010113          	addi	sp,sp,-32
    80006364:	00113c23          	sd	ra,24(sp)
    80006368:	00813823          	sd	s0,16(sp)
    8000636c:	00913423          	sd	s1,8(sp)
    80006370:	01213023          	sd	s2,0(sp)
    80006374:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80006378:	00053903          	ld	s2,0(a0)
    int i = 6;
    8000637c:	00600493          	li	s1,6
    while (--i > 0) {
    80006380:	fff4849b          	addiw	s1,s1,-1
    80006384:	04905463          	blez	s1,800063cc <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80006388:	00003517          	auipc	a0,0x3
    8000638c:	07850513          	addi	a0,a0,120 # 80009400 <CONSOLE_STATUS+0x3f0>
    80006390:	00000097          	auipc	ra,0x0
    80006394:	830080e7          	jalr	-2000(ra) # 80005bc0 <_Z11printStringPKc>
        printInt(sleep_time);
    80006398:	00000613          	li	a2,0
    8000639c:	00a00593          	li	a1,10
    800063a0:	0009051b          	sext.w	a0,s2
    800063a4:	00000097          	auipc	ra,0x0
    800063a8:	9cc080e7          	jalr	-1588(ra) # 80005d70 <_Z8printIntiii>
        printString(" !\n");
    800063ac:	00003517          	auipc	a0,0x3
    800063b0:	05c50513          	addi	a0,a0,92 # 80009408 <CONSOLE_STATUS+0x3f8>
    800063b4:	00000097          	auipc	ra,0x0
    800063b8:	80c080e7          	jalr	-2036(ra) # 80005bc0 <_Z11printStringPKc>
        time_sleep(sleep_time);
    800063bc:	00090513          	mv	a0,s2
    800063c0:	ffffb097          	auipc	ra,0xffffb
    800063c4:	214080e7          	jalr	532(ra) # 800015d4 <_Z10time_sleepm>
    while (--i > 0) {
    800063c8:	fb9ff06f          	j	80006380 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    800063cc:	00a00793          	li	a5,10
    800063d0:	02f95933          	divu	s2,s2,a5
    800063d4:	fff90913          	addi	s2,s2,-1
    800063d8:	00006797          	auipc	a5,0x6
    800063dc:	84078793          	addi	a5,a5,-1984 # 8000bc18 <_ZL8finished>
    800063e0:	01278933          	add	s2,a5,s2
    800063e4:	00100793          	li	a5,1
    800063e8:	00f90023          	sb	a5,0(s2)
}
    800063ec:	01813083          	ld	ra,24(sp)
    800063f0:	01013403          	ld	s0,16(sp)
    800063f4:	00813483          	ld	s1,8(sp)
    800063f8:	00013903          	ld	s2,0(sp)
    800063fc:	02010113          	addi	sp,sp,32
    80006400:	00008067          	ret

0000000080006404 <_Z12testSleepingv>:

void testSleeping() {
    80006404:	fc010113          	addi	sp,sp,-64
    80006408:	02113c23          	sd	ra,56(sp)
    8000640c:	02813823          	sd	s0,48(sp)
    80006410:	02913423          	sd	s1,40(sp)
    80006414:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80006418:	00a00793          	li	a5,10
    8000641c:	fcf43823          	sd	a5,-48(s0)
    80006420:	01400793          	li	a5,20
    80006424:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80006428:	00000493          	li	s1,0
    8000642c:	02c0006f          	j	80006458 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80006430:	00349793          	slli	a5,s1,0x3
    80006434:	fd040613          	addi	a2,s0,-48
    80006438:	00f60633          	add	a2,a2,a5
    8000643c:	00000597          	auipc	a1,0x0
    80006440:	f2458593          	addi	a1,a1,-220 # 80006360 <_ZL9sleepyRunPv>
    80006444:	fc040513          	addi	a0,s0,-64
    80006448:	00f50533          	add	a0,a0,a5
    8000644c:	ffffb097          	auipc	ra,0xffffb
    80006450:	eac080e7          	jalr	-340(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80006454:	0014849b          	addiw	s1,s1,1
    80006458:	00100793          	li	a5,1
    8000645c:	fc97dae3          	bge	a5,s1,80006430 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80006460:	00005797          	auipc	a5,0x5
    80006464:	7b87c783          	lbu	a5,1976(a5) # 8000bc18 <_ZL8finished>
    80006468:	fe078ce3          	beqz	a5,80006460 <_Z12testSleepingv+0x5c>
    8000646c:	00005797          	auipc	a5,0x5
    80006470:	7ad7c783          	lbu	a5,1965(a5) # 8000bc19 <_ZL8finished+0x1>
    80006474:	fe0786e3          	beqz	a5,80006460 <_Z12testSleepingv+0x5c>
}
    80006478:	03813083          	ld	ra,56(sp)
    8000647c:	03013403          	ld	s0,48(sp)
    80006480:	02813483          	ld	s1,40(sp)
    80006484:	04010113          	addi	sp,sp,64
    80006488:	00008067          	ret

000000008000648c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    8000648c:	fe010113          	addi	sp,sp,-32
    80006490:	00113c23          	sd	ra,24(sp)
    80006494:	00813823          	sd	s0,16(sp)
    80006498:	00913423          	sd	s1,8(sp)
    8000649c:	01213023          	sd	s2,0(sp)
    800064a0:	02010413          	addi	s0,sp,32
    800064a4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800064a8:	00100793          	li	a5,1
    800064ac:	02a7f863          	bgeu	a5,a0,800064dc <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800064b0:	00a00793          	li	a5,10
    800064b4:	02f577b3          	remu	a5,a0,a5
    800064b8:	02078e63          	beqz	a5,800064f4 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800064bc:	fff48513          	addi	a0,s1,-1
    800064c0:	00000097          	auipc	ra,0x0
    800064c4:	fcc080e7          	jalr	-52(ra) # 8000648c <_ZL9fibonaccim>
    800064c8:	00050913          	mv	s2,a0
    800064cc:	ffe48513          	addi	a0,s1,-2
    800064d0:	00000097          	auipc	ra,0x0
    800064d4:	fbc080e7          	jalr	-68(ra) # 8000648c <_ZL9fibonaccim>
    800064d8:	00a90533          	add	a0,s2,a0
}
    800064dc:	01813083          	ld	ra,24(sp)
    800064e0:	01013403          	ld	s0,16(sp)
    800064e4:	00813483          	ld	s1,8(sp)
    800064e8:	00013903          	ld	s2,0(sp)
    800064ec:	02010113          	addi	sp,sp,32
    800064f0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800064f4:	ffffb097          	auipc	ra,0xffffb
    800064f8:	ed8080e7          	jalr	-296(ra) # 800013cc <_Z15thread_dispatchv>
    800064fc:	fc1ff06f          	j	800064bc <_ZL9fibonaccim+0x30>

0000000080006500 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80006500:	fe010113          	addi	sp,sp,-32
    80006504:	00113c23          	sd	ra,24(sp)
    80006508:	00813823          	sd	s0,16(sp)
    8000650c:	00913423          	sd	s1,8(sp)
    80006510:	01213023          	sd	s2,0(sp)
    80006514:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80006518:	00a00493          	li	s1,10
    8000651c:	0400006f          	j	8000655c <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006520:	00003517          	auipc	a0,0x3
    80006524:	d5850513          	addi	a0,a0,-680 # 80009278 <CONSOLE_STATUS+0x268>
    80006528:	fffff097          	auipc	ra,0xfffff
    8000652c:	698080e7          	jalr	1688(ra) # 80005bc0 <_Z11printStringPKc>
    80006530:	00000613          	li	a2,0
    80006534:	00a00593          	li	a1,10
    80006538:	00048513          	mv	a0,s1
    8000653c:	00000097          	auipc	ra,0x0
    80006540:	834080e7          	jalr	-1996(ra) # 80005d70 <_Z8printIntiii>
    80006544:	00003517          	auipc	a0,0x3
    80006548:	c2450513          	addi	a0,a0,-988 # 80009168 <CONSOLE_STATUS+0x158>
    8000654c:	fffff097          	auipc	ra,0xfffff
    80006550:	674080e7          	jalr	1652(ra) # 80005bc0 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80006554:	0014849b          	addiw	s1,s1,1
    80006558:	0ff4f493          	andi	s1,s1,255
    8000655c:	00c00793          	li	a5,12
    80006560:	fc97f0e3          	bgeu	a5,s1,80006520 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80006564:	00003517          	auipc	a0,0x3
    80006568:	d1c50513          	addi	a0,a0,-740 # 80009280 <CONSOLE_STATUS+0x270>
    8000656c:	fffff097          	auipc	ra,0xfffff
    80006570:	654080e7          	jalr	1620(ra) # 80005bc0 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80006574:	00500313          	li	t1,5
    thread_dispatch();
    80006578:	ffffb097          	auipc	ra,0xffffb
    8000657c:	e54080e7          	jalr	-428(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80006580:	01000513          	li	a0,16
    80006584:	00000097          	auipc	ra,0x0
    80006588:	f08080e7          	jalr	-248(ra) # 8000648c <_ZL9fibonaccim>
    8000658c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80006590:	00003517          	auipc	a0,0x3
    80006594:	d0050513          	addi	a0,a0,-768 # 80009290 <CONSOLE_STATUS+0x280>
    80006598:	fffff097          	auipc	ra,0xfffff
    8000659c:	628080e7          	jalr	1576(ra) # 80005bc0 <_Z11printStringPKc>
    800065a0:	00000613          	li	a2,0
    800065a4:	00a00593          	li	a1,10
    800065a8:	0009051b          	sext.w	a0,s2
    800065ac:	fffff097          	auipc	ra,0xfffff
    800065b0:	7c4080e7          	jalr	1988(ra) # 80005d70 <_Z8printIntiii>
    800065b4:	00003517          	auipc	a0,0x3
    800065b8:	bb450513          	addi	a0,a0,-1100 # 80009168 <CONSOLE_STATUS+0x158>
    800065bc:	fffff097          	auipc	ra,0xfffff
    800065c0:	604080e7          	jalr	1540(ra) # 80005bc0 <_Z11printStringPKc>
    800065c4:	0400006f          	j	80006604 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800065c8:	00003517          	auipc	a0,0x3
    800065cc:	cb050513          	addi	a0,a0,-848 # 80009278 <CONSOLE_STATUS+0x268>
    800065d0:	fffff097          	auipc	ra,0xfffff
    800065d4:	5f0080e7          	jalr	1520(ra) # 80005bc0 <_Z11printStringPKc>
    800065d8:	00000613          	li	a2,0
    800065dc:	00a00593          	li	a1,10
    800065e0:	00048513          	mv	a0,s1
    800065e4:	fffff097          	auipc	ra,0xfffff
    800065e8:	78c080e7          	jalr	1932(ra) # 80005d70 <_Z8printIntiii>
    800065ec:	00003517          	auipc	a0,0x3
    800065f0:	b7c50513          	addi	a0,a0,-1156 # 80009168 <CONSOLE_STATUS+0x158>
    800065f4:	fffff097          	auipc	ra,0xfffff
    800065f8:	5cc080e7          	jalr	1484(ra) # 80005bc0 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800065fc:	0014849b          	addiw	s1,s1,1
    80006600:	0ff4f493          	andi	s1,s1,255
    80006604:	00f00793          	li	a5,15
    80006608:	fc97f0e3          	bgeu	a5,s1,800065c8 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    8000660c:	00003517          	auipc	a0,0x3
    80006610:	c9450513          	addi	a0,a0,-876 # 800092a0 <CONSOLE_STATUS+0x290>
    80006614:	fffff097          	auipc	ra,0xfffff
    80006618:	5ac080e7          	jalr	1452(ra) # 80005bc0 <_Z11printStringPKc>
    finishedD = true;
    8000661c:	00100793          	li	a5,1
    80006620:	00005717          	auipc	a4,0x5
    80006624:	5ef70d23          	sb	a5,1530(a4) # 8000bc1a <_ZL9finishedD>
    thread_dispatch();
    80006628:	ffffb097          	auipc	ra,0xffffb
    8000662c:	da4080e7          	jalr	-604(ra) # 800013cc <_Z15thread_dispatchv>
}
    80006630:	01813083          	ld	ra,24(sp)
    80006634:	01013403          	ld	s0,16(sp)
    80006638:	00813483          	ld	s1,8(sp)
    8000663c:	00013903          	ld	s2,0(sp)
    80006640:	02010113          	addi	sp,sp,32
    80006644:	00008067          	ret

0000000080006648 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80006648:	fe010113          	addi	sp,sp,-32
    8000664c:	00113c23          	sd	ra,24(sp)
    80006650:	00813823          	sd	s0,16(sp)
    80006654:	00913423          	sd	s1,8(sp)
    80006658:	01213023          	sd	s2,0(sp)
    8000665c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80006660:	00000493          	li	s1,0
    80006664:	0400006f          	j	800066a4 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80006668:	00003517          	auipc	a0,0x3
    8000666c:	be050513          	addi	a0,a0,-1056 # 80009248 <CONSOLE_STATUS+0x238>
    80006670:	fffff097          	auipc	ra,0xfffff
    80006674:	550080e7          	jalr	1360(ra) # 80005bc0 <_Z11printStringPKc>
    80006678:	00000613          	li	a2,0
    8000667c:	00a00593          	li	a1,10
    80006680:	00048513          	mv	a0,s1
    80006684:	fffff097          	auipc	ra,0xfffff
    80006688:	6ec080e7          	jalr	1772(ra) # 80005d70 <_Z8printIntiii>
    8000668c:	00003517          	auipc	a0,0x3
    80006690:	adc50513          	addi	a0,a0,-1316 # 80009168 <CONSOLE_STATUS+0x158>
    80006694:	fffff097          	auipc	ra,0xfffff
    80006698:	52c080e7          	jalr	1324(ra) # 80005bc0 <_Z11printStringPKc>
    for (; i < 3; i++) {
    8000669c:	0014849b          	addiw	s1,s1,1
    800066a0:	0ff4f493          	andi	s1,s1,255
    800066a4:	00200793          	li	a5,2
    800066a8:	fc97f0e3          	bgeu	a5,s1,80006668 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800066ac:	00003517          	auipc	a0,0x3
    800066b0:	ba450513          	addi	a0,a0,-1116 # 80009250 <CONSOLE_STATUS+0x240>
    800066b4:	fffff097          	auipc	ra,0xfffff
    800066b8:	50c080e7          	jalr	1292(ra) # 80005bc0 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800066bc:	00700313          	li	t1,7
    thread_dispatch();
    800066c0:	ffffb097          	auipc	ra,0xffffb
    800066c4:	d0c080e7          	jalr	-756(ra) # 800013cc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800066c8:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800066cc:	00003517          	auipc	a0,0x3
    800066d0:	b9450513          	addi	a0,a0,-1132 # 80009260 <CONSOLE_STATUS+0x250>
    800066d4:	fffff097          	auipc	ra,0xfffff
    800066d8:	4ec080e7          	jalr	1260(ra) # 80005bc0 <_Z11printStringPKc>
    800066dc:	00000613          	li	a2,0
    800066e0:	00a00593          	li	a1,10
    800066e4:	0009051b          	sext.w	a0,s2
    800066e8:	fffff097          	auipc	ra,0xfffff
    800066ec:	688080e7          	jalr	1672(ra) # 80005d70 <_Z8printIntiii>
    800066f0:	00003517          	auipc	a0,0x3
    800066f4:	a7850513          	addi	a0,a0,-1416 # 80009168 <CONSOLE_STATUS+0x158>
    800066f8:	fffff097          	auipc	ra,0xfffff
    800066fc:	4c8080e7          	jalr	1224(ra) # 80005bc0 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80006700:	00c00513          	li	a0,12
    80006704:	00000097          	auipc	ra,0x0
    80006708:	d88080e7          	jalr	-632(ra) # 8000648c <_ZL9fibonaccim>
    8000670c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80006710:	00003517          	auipc	a0,0x3
    80006714:	b5850513          	addi	a0,a0,-1192 # 80009268 <CONSOLE_STATUS+0x258>
    80006718:	fffff097          	auipc	ra,0xfffff
    8000671c:	4a8080e7          	jalr	1192(ra) # 80005bc0 <_Z11printStringPKc>
    80006720:	00000613          	li	a2,0
    80006724:	00a00593          	li	a1,10
    80006728:	0009051b          	sext.w	a0,s2
    8000672c:	fffff097          	auipc	ra,0xfffff
    80006730:	644080e7          	jalr	1604(ra) # 80005d70 <_Z8printIntiii>
    80006734:	00003517          	auipc	a0,0x3
    80006738:	a3450513          	addi	a0,a0,-1484 # 80009168 <CONSOLE_STATUS+0x158>
    8000673c:	fffff097          	auipc	ra,0xfffff
    80006740:	484080e7          	jalr	1156(ra) # 80005bc0 <_Z11printStringPKc>
    80006744:	0400006f          	j	80006784 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80006748:	00003517          	auipc	a0,0x3
    8000674c:	b0050513          	addi	a0,a0,-1280 # 80009248 <CONSOLE_STATUS+0x238>
    80006750:	fffff097          	auipc	ra,0xfffff
    80006754:	470080e7          	jalr	1136(ra) # 80005bc0 <_Z11printStringPKc>
    80006758:	00000613          	li	a2,0
    8000675c:	00a00593          	li	a1,10
    80006760:	00048513          	mv	a0,s1
    80006764:	fffff097          	auipc	ra,0xfffff
    80006768:	60c080e7          	jalr	1548(ra) # 80005d70 <_Z8printIntiii>
    8000676c:	00003517          	auipc	a0,0x3
    80006770:	9fc50513          	addi	a0,a0,-1540 # 80009168 <CONSOLE_STATUS+0x158>
    80006774:	fffff097          	auipc	ra,0xfffff
    80006778:	44c080e7          	jalr	1100(ra) # 80005bc0 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000677c:	0014849b          	addiw	s1,s1,1
    80006780:	0ff4f493          	andi	s1,s1,255
    80006784:	00500793          	li	a5,5
    80006788:	fc97f0e3          	bgeu	a5,s1,80006748 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    8000678c:	00003517          	auipc	a0,0x3
    80006790:	a9450513          	addi	a0,a0,-1388 # 80009220 <CONSOLE_STATUS+0x210>
    80006794:	fffff097          	auipc	ra,0xfffff
    80006798:	42c080e7          	jalr	1068(ra) # 80005bc0 <_Z11printStringPKc>
    finishedC = true;
    8000679c:	00100793          	li	a5,1
    800067a0:	00005717          	auipc	a4,0x5
    800067a4:	46f70da3          	sb	a5,1147(a4) # 8000bc1b <_ZL9finishedC>
    thread_dispatch();
    800067a8:	ffffb097          	auipc	ra,0xffffb
    800067ac:	c24080e7          	jalr	-988(ra) # 800013cc <_Z15thread_dispatchv>
}
    800067b0:	01813083          	ld	ra,24(sp)
    800067b4:	01013403          	ld	s0,16(sp)
    800067b8:	00813483          	ld	s1,8(sp)
    800067bc:	00013903          	ld	s2,0(sp)
    800067c0:	02010113          	addi	sp,sp,32
    800067c4:	00008067          	ret

00000000800067c8 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800067c8:	fe010113          	addi	sp,sp,-32
    800067cc:	00113c23          	sd	ra,24(sp)
    800067d0:	00813823          	sd	s0,16(sp)
    800067d4:	00913423          	sd	s1,8(sp)
    800067d8:	01213023          	sd	s2,0(sp)
    800067dc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800067e0:	00000913          	li	s2,0
    800067e4:	0400006f          	j	80006824 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    800067e8:	ffffb097          	auipc	ra,0xffffb
    800067ec:	be4080e7          	jalr	-1052(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800067f0:	00148493          	addi	s1,s1,1
    800067f4:	000027b7          	lui	a5,0x2
    800067f8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800067fc:	0097ee63          	bltu	a5,s1,80006818 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006800:	00000713          	li	a4,0
    80006804:	000077b7          	lui	a5,0x7
    80006808:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000680c:	fce7eee3          	bltu	a5,a4,800067e8 <_ZL11workerBodyBPv+0x20>
    80006810:	00170713          	addi	a4,a4,1
    80006814:	ff1ff06f          	j	80006804 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80006818:	00a00793          	li	a5,10
    8000681c:	04f90663          	beq	s2,a5,80006868 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80006820:	00190913          	addi	s2,s2,1
    80006824:	00f00793          	li	a5,15
    80006828:	0527e463          	bltu	a5,s2,80006870 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    8000682c:	00003517          	auipc	a0,0x3
    80006830:	a0450513          	addi	a0,a0,-1532 # 80009230 <CONSOLE_STATUS+0x220>
    80006834:	fffff097          	auipc	ra,0xfffff
    80006838:	38c080e7          	jalr	908(ra) # 80005bc0 <_Z11printStringPKc>
    8000683c:	00000613          	li	a2,0
    80006840:	00a00593          	li	a1,10
    80006844:	0009051b          	sext.w	a0,s2
    80006848:	fffff097          	auipc	ra,0xfffff
    8000684c:	528080e7          	jalr	1320(ra) # 80005d70 <_Z8printIntiii>
    80006850:	00003517          	auipc	a0,0x3
    80006854:	91850513          	addi	a0,a0,-1768 # 80009168 <CONSOLE_STATUS+0x158>
    80006858:	fffff097          	auipc	ra,0xfffff
    8000685c:	368080e7          	jalr	872(ra) # 80005bc0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006860:	00000493          	li	s1,0
    80006864:	f91ff06f          	j	800067f4 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80006868:	14102ff3          	csrr	t6,sepc
    8000686c:	fb5ff06f          	j	80006820 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80006870:	00003517          	auipc	a0,0x3
    80006874:	9c850513          	addi	a0,a0,-1592 # 80009238 <CONSOLE_STATUS+0x228>
    80006878:	fffff097          	auipc	ra,0xfffff
    8000687c:	348080e7          	jalr	840(ra) # 80005bc0 <_Z11printStringPKc>
    finishedB = true;
    80006880:	00100793          	li	a5,1
    80006884:	00005717          	auipc	a4,0x5
    80006888:	38f70c23          	sb	a5,920(a4) # 8000bc1c <_ZL9finishedB>
    thread_dispatch();
    8000688c:	ffffb097          	auipc	ra,0xffffb
    80006890:	b40080e7          	jalr	-1216(ra) # 800013cc <_Z15thread_dispatchv>
}
    80006894:	01813083          	ld	ra,24(sp)
    80006898:	01013403          	ld	s0,16(sp)
    8000689c:	00813483          	ld	s1,8(sp)
    800068a0:	00013903          	ld	s2,0(sp)
    800068a4:	02010113          	addi	sp,sp,32
    800068a8:	00008067          	ret

00000000800068ac <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800068ac:	fe010113          	addi	sp,sp,-32
    800068b0:	00113c23          	sd	ra,24(sp)
    800068b4:	00813823          	sd	s0,16(sp)
    800068b8:	00913423          	sd	s1,8(sp)
    800068bc:	01213023          	sd	s2,0(sp)
    800068c0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800068c4:	00000913          	li	s2,0
    800068c8:	0380006f          	j	80006900 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800068cc:	ffffb097          	auipc	ra,0xffffb
    800068d0:	b00080e7          	jalr	-1280(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800068d4:	00148493          	addi	s1,s1,1
    800068d8:	000027b7          	lui	a5,0x2
    800068dc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800068e0:	0097ee63          	bltu	a5,s1,800068fc <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800068e4:	00000713          	li	a4,0
    800068e8:	000077b7          	lui	a5,0x7
    800068ec:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800068f0:	fce7eee3          	bltu	a5,a4,800068cc <_ZL11workerBodyAPv+0x20>
    800068f4:	00170713          	addi	a4,a4,1
    800068f8:	ff1ff06f          	j	800068e8 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800068fc:	00190913          	addi	s2,s2,1
    80006900:	00900793          	li	a5,9
    80006904:	0527e063          	bltu	a5,s2,80006944 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80006908:	00003517          	auipc	a0,0x3
    8000690c:	91050513          	addi	a0,a0,-1776 # 80009218 <CONSOLE_STATUS+0x208>
    80006910:	fffff097          	auipc	ra,0xfffff
    80006914:	2b0080e7          	jalr	688(ra) # 80005bc0 <_Z11printStringPKc>
    80006918:	00000613          	li	a2,0
    8000691c:	00a00593          	li	a1,10
    80006920:	0009051b          	sext.w	a0,s2
    80006924:	fffff097          	auipc	ra,0xfffff
    80006928:	44c080e7          	jalr	1100(ra) # 80005d70 <_Z8printIntiii>
    8000692c:	00003517          	auipc	a0,0x3
    80006930:	83c50513          	addi	a0,a0,-1988 # 80009168 <CONSOLE_STATUS+0x158>
    80006934:	fffff097          	auipc	ra,0xfffff
    80006938:	28c080e7          	jalr	652(ra) # 80005bc0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000693c:	00000493          	li	s1,0
    80006940:	f99ff06f          	j	800068d8 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006944:	00003517          	auipc	a0,0x3
    80006948:	8dc50513          	addi	a0,a0,-1828 # 80009220 <CONSOLE_STATUS+0x210>
    8000694c:	fffff097          	auipc	ra,0xfffff
    80006950:	274080e7          	jalr	628(ra) # 80005bc0 <_Z11printStringPKc>
    finishedA = true;
    80006954:	00100793          	li	a5,1
    80006958:	00005717          	auipc	a4,0x5
    8000695c:	2cf702a3          	sb	a5,709(a4) # 8000bc1d <_ZL9finishedA>
}
    80006960:	01813083          	ld	ra,24(sp)
    80006964:	01013403          	ld	s0,16(sp)
    80006968:	00813483          	ld	s1,8(sp)
    8000696c:	00013903          	ld	s2,0(sp)
    80006970:	02010113          	addi	sp,sp,32
    80006974:	00008067          	ret

0000000080006978 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006978:	fd010113          	addi	sp,sp,-48
    8000697c:	02113423          	sd	ra,40(sp)
    80006980:	02813023          	sd	s0,32(sp)
    80006984:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006988:	00000613          	li	a2,0
    8000698c:	00000597          	auipc	a1,0x0
    80006990:	f2058593          	addi	a1,a1,-224 # 800068ac <_ZL11workerBodyAPv>
    80006994:	fd040513          	addi	a0,s0,-48
    80006998:	ffffb097          	auipc	ra,0xffffb
    8000699c:	960080e7          	jalr	-1696(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    800069a0:	00003517          	auipc	a0,0x3
    800069a4:	91050513          	addi	a0,a0,-1776 # 800092b0 <CONSOLE_STATUS+0x2a0>
    800069a8:	fffff097          	auipc	ra,0xfffff
    800069ac:	218080e7          	jalr	536(ra) # 80005bc0 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800069b0:	00000613          	li	a2,0
    800069b4:	00000597          	auipc	a1,0x0
    800069b8:	e1458593          	addi	a1,a1,-492 # 800067c8 <_ZL11workerBodyBPv>
    800069bc:	fd840513          	addi	a0,s0,-40
    800069c0:	ffffb097          	auipc	ra,0xffffb
    800069c4:	938080e7          	jalr	-1736(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    800069c8:	00003517          	auipc	a0,0x3
    800069cc:	90050513          	addi	a0,a0,-1792 # 800092c8 <CONSOLE_STATUS+0x2b8>
    800069d0:	fffff097          	auipc	ra,0xfffff
    800069d4:	1f0080e7          	jalr	496(ra) # 80005bc0 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800069d8:	00000613          	li	a2,0
    800069dc:	00000597          	auipc	a1,0x0
    800069e0:	c6c58593          	addi	a1,a1,-916 # 80006648 <_ZL11workerBodyCPv>
    800069e4:	fe040513          	addi	a0,s0,-32
    800069e8:	ffffb097          	auipc	ra,0xffffb
    800069ec:	910080e7          	jalr	-1776(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    800069f0:	00003517          	auipc	a0,0x3
    800069f4:	8f050513          	addi	a0,a0,-1808 # 800092e0 <CONSOLE_STATUS+0x2d0>
    800069f8:	fffff097          	auipc	ra,0xfffff
    800069fc:	1c8080e7          	jalr	456(ra) # 80005bc0 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80006a00:	00000613          	li	a2,0
    80006a04:	00000597          	auipc	a1,0x0
    80006a08:	afc58593          	addi	a1,a1,-1284 # 80006500 <_ZL11workerBodyDPv>
    80006a0c:	fe840513          	addi	a0,s0,-24
    80006a10:	ffffb097          	auipc	ra,0xffffb
    80006a14:	8e8080e7          	jalr	-1816(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80006a18:	00003517          	auipc	a0,0x3
    80006a1c:	8e050513          	addi	a0,a0,-1824 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80006a20:	fffff097          	auipc	ra,0xfffff
    80006a24:	1a0080e7          	jalr	416(ra) # 80005bc0 <_Z11printStringPKc>
    80006a28:	00c0006f          	j	80006a34 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006a2c:	ffffb097          	auipc	ra,0xffffb
    80006a30:	9a0080e7          	jalr	-1632(ra) # 800013cc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006a34:	00005797          	auipc	a5,0x5
    80006a38:	1e97c783          	lbu	a5,489(a5) # 8000bc1d <_ZL9finishedA>
    80006a3c:	fe0788e3          	beqz	a5,80006a2c <_Z16System_Mode_testv+0xb4>
    80006a40:	00005797          	auipc	a5,0x5
    80006a44:	1dc7c783          	lbu	a5,476(a5) # 8000bc1c <_ZL9finishedB>
    80006a48:	fe0782e3          	beqz	a5,80006a2c <_Z16System_Mode_testv+0xb4>
    80006a4c:	00005797          	auipc	a5,0x5
    80006a50:	1cf7c783          	lbu	a5,463(a5) # 8000bc1b <_ZL9finishedC>
    80006a54:	fc078ce3          	beqz	a5,80006a2c <_Z16System_Mode_testv+0xb4>
    80006a58:	00005797          	auipc	a5,0x5
    80006a5c:	1c27c783          	lbu	a5,450(a5) # 8000bc1a <_ZL9finishedD>
    80006a60:	fc0786e3          	beqz	a5,80006a2c <_Z16System_Mode_testv+0xb4>
    }

}
    80006a64:	02813083          	ld	ra,40(sp)
    80006a68:	02013403          	ld	s0,32(sp)
    80006a6c:	03010113          	addi	sp,sp,48
    80006a70:	00008067          	ret

0000000080006a74 <start>:
    80006a74:	ff010113          	addi	sp,sp,-16
    80006a78:	00813423          	sd	s0,8(sp)
    80006a7c:	01010413          	addi	s0,sp,16
    80006a80:	300027f3          	csrr	a5,mstatus
    80006a84:	ffffe737          	lui	a4,0xffffe
    80006a88:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff197f>
    80006a8c:	00e7f7b3          	and	a5,a5,a4
    80006a90:	00001737          	lui	a4,0x1
    80006a94:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006a98:	00e7e7b3          	or	a5,a5,a4
    80006a9c:	30079073          	csrw	mstatus,a5
    80006aa0:	00000797          	auipc	a5,0x0
    80006aa4:	16078793          	addi	a5,a5,352 # 80006c00 <system_main>
    80006aa8:	34179073          	csrw	mepc,a5
    80006aac:	00000793          	li	a5,0
    80006ab0:	18079073          	csrw	satp,a5
    80006ab4:	000107b7          	lui	a5,0x10
    80006ab8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006abc:	30279073          	csrw	medeleg,a5
    80006ac0:	30379073          	csrw	mideleg,a5
    80006ac4:	104027f3          	csrr	a5,sie
    80006ac8:	2227e793          	ori	a5,a5,546
    80006acc:	10479073          	csrw	sie,a5
    80006ad0:	fff00793          	li	a5,-1
    80006ad4:	00a7d793          	srli	a5,a5,0xa
    80006ad8:	3b079073          	csrw	pmpaddr0,a5
    80006adc:	00f00793          	li	a5,15
    80006ae0:	3a079073          	csrw	pmpcfg0,a5
    80006ae4:	f14027f3          	csrr	a5,mhartid
    80006ae8:	0200c737          	lui	a4,0x200c
    80006aec:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006af0:	0007869b          	sext.w	a3,a5
    80006af4:	00269713          	slli	a4,a3,0x2
    80006af8:	000f4637          	lui	a2,0xf4
    80006afc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006b00:	00d70733          	add	a4,a4,a3
    80006b04:	0037979b          	slliw	a5,a5,0x3
    80006b08:	020046b7          	lui	a3,0x2004
    80006b0c:	00d787b3          	add	a5,a5,a3
    80006b10:	00c585b3          	add	a1,a1,a2
    80006b14:	00371693          	slli	a3,a4,0x3
    80006b18:	00005717          	auipc	a4,0x5
    80006b1c:	10870713          	addi	a4,a4,264 # 8000bc20 <timer_scratch>
    80006b20:	00b7b023          	sd	a1,0(a5)
    80006b24:	00d70733          	add	a4,a4,a3
    80006b28:	00f73c23          	sd	a5,24(a4)
    80006b2c:	02c73023          	sd	a2,32(a4)
    80006b30:	34071073          	csrw	mscratch,a4
    80006b34:	00000797          	auipc	a5,0x0
    80006b38:	6ec78793          	addi	a5,a5,1772 # 80007220 <timervec>
    80006b3c:	30579073          	csrw	mtvec,a5
    80006b40:	300027f3          	csrr	a5,mstatus
    80006b44:	0087e793          	ori	a5,a5,8
    80006b48:	30079073          	csrw	mstatus,a5
    80006b4c:	304027f3          	csrr	a5,mie
    80006b50:	0807e793          	ori	a5,a5,128
    80006b54:	30479073          	csrw	mie,a5
    80006b58:	f14027f3          	csrr	a5,mhartid
    80006b5c:	0007879b          	sext.w	a5,a5
    80006b60:	00078213          	mv	tp,a5
    80006b64:	30200073          	mret
    80006b68:	00813403          	ld	s0,8(sp)
    80006b6c:	01010113          	addi	sp,sp,16
    80006b70:	00008067          	ret

0000000080006b74 <timerinit>:
    80006b74:	ff010113          	addi	sp,sp,-16
    80006b78:	00813423          	sd	s0,8(sp)
    80006b7c:	01010413          	addi	s0,sp,16
    80006b80:	f14027f3          	csrr	a5,mhartid
    80006b84:	0200c737          	lui	a4,0x200c
    80006b88:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006b8c:	0007869b          	sext.w	a3,a5
    80006b90:	00269713          	slli	a4,a3,0x2
    80006b94:	000f4637          	lui	a2,0xf4
    80006b98:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006b9c:	00d70733          	add	a4,a4,a3
    80006ba0:	0037979b          	slliw	a5,a5,0x3
    80006ba4:	020046b7          	lui	a3,0x2004
    80006ba8:	00d787b3          	add	a5,a5,a3
    80006bac:	00c585b3          	add	a1,a1,a2
    80006bb0:	00371693          	slli	a3,a4,0x3
    80006bb4:	00005717          	auipc	a4,0x5
    80006bb8:	06c70713          	addi	a4,a4,108 # 8000bc20 <timer_scratch>
    80006bbc:	00b7b023          	sd	a1,0(a5)
    80006bc0:	00d70733          	add	a4,a4,a3
    80006bc4:	00f73c23          	sd	a5,24(a4)
    80006bc8:	02c73023          	sd	a2,32(a4)
    80006bcc:	34071073          	csrw	mscratch,a4
    80006bd0:	00000797          	auipc	a5,0x0
    80006bd4:	65078793          	addi	a5,a5,1616 # 80007220 <timervec>
    80006bd8:	30579073          	csrw	mtvec,a5
    80006bdc:	300027f3          	csrr	a5,mstatus
    80006be0:	0087e793          	ori	a5,a5,8
    80006be4:	30079073          	csrw	mstatus,a5
    80006be8:	304027f3          	csrr	a5,mie
    80006bec:	0807e793          	ori	a5,a5,128
    80006bf0:	30479073          	csrw	mie,a5
    80006bf4:	00813403          	ld	s0,8(sp)
    80006bf8:	01010113          	addi	sp,sp,16
    80006bfc:	00008067          	ret

0000000080006c00 <system_main>:
    80006c00:	fe010113          	addi	sp,sp,-32
    80006c04:	00813823          	sd	s0,16(sp)
    80006c08:	00913423          	sd	s1,8(sp)
    80006c0c:	00113c23          	sd	ra,24(sp)
    80006c10:	02010413          	addi	s0,sp,32
    80006c14:	00000097          	auipc	ra,0x0
    80006c18:	0c4080e7          	jalr	196(ra) # 80006cd8 <cpuid>
    80006c1c:	00005497          	auipc	s1,0x5
    80006c20:	f2448493          	addi	s1,s1,-220 # 8000bb40 <started>
    80006c24:	02050263          	beqz	a0,80006c48 <system_main+0x48>
    80006c28:	0004a783          	lw	a5,0(s1)
    80006c2c:	0007879b          	sext.w	a5,a5
    80006c30:	fe078ce3          	beqz	a5,80006c28 <system_main+0x28>
    80006c34:	0ff0000f          	fence
    80006c38:	00003517          	auipc	a0,0x3
    80006c3c:	80850513          	addi	a0,a0,-2040 # 80009440 <CONSOLE_STATUS+0x430>
    80006c40:	00001097          	auipc	ra,0x1
    80006c44:	a7c080e7          	jalr	-1412(ra) # 800076bc <panic>
    80006c48:	00001097          	auipc	ra,0x1
    80006c4c:	9d0080e7          	jalr	-1584(ra) # 80007618 <consoleinit>
    80006c50:	00001097          	auipc	ra,0x1
    80006c54:	15c080e7          	jalr	348(ra) # 80007dac <printfinit>
    80006c58:	00002517          	auipc	a0,0x2
    80006c5c:	51050513          	addi	a0,a0,1296 # 80009168 <CONSOLE_STATUS+0x158>
    80006c60:	00001097          	auipc	ra,0x1
    80006c64:	ab8080e7          	jalr	-1352(ra) # 80007718 <__printf>
    80006c68:	00002517          	auipc	a0,0x2
    80006c6c:	7a850513          	addi	a0,a0,1960 # 80009410 <CONSOLE_STATUS+0x400>
    80006c70:	00001097          	auipc	ra,0x1
    80006c74:	aa8080e7          	jalr	-1368(ra) # 80007718 <__printf>
    80006c78:	00002517          	auipc	a0,0x2
    80006c7c:	4f050513          	addi	a0,a0,1264 # 80009168 <CONSOLE_STATUS+0x158>
    80006c80:	00001097          	auipc	ra,0x1
    80006c84:	a98080e7          	jalr	-1384(ra) # 80007718 <__printf>
    80006c88:	00001097          	auipc	ra,0x1
    80006c8c:	4b0080e7          	jalr	1200(ra) # 80008138 <kinit>
    80006c90:	00000097          	auipc	ra,0x0
    80006c94:	148080e7          	jalr	328(ra) # 80006dd8 <trapinit>
    80006c98:	00000097          	auipc	ra,0x0
    80006c9c:	16c080e7          	jalr	364(ra) # 80006e04 <trapinithart>
    80006ca0:	00000097          	auipc	ra,0x0
    80006ca4:	5c0080e7          	jalr	1472(ra) # 80007260 <plicinit>
    80006ca8:	00000097          	auipc	ra,0x0
    80006cac:	5e0080e7          	jalr	1504(ra) # 80007288 <plicinithart>
    80006cb0:	00000097          	auipc	ra,0x0
    80006cb4:	078080e7          	jalr	120(ra) # 80006d28 <userinit>
    80006cb8:	0ff0000f          	fence
    80006cbc:	00100793          	li	a5,1
    80006cc0:	00002517          	auipc	a0,0x2
    80006cc4:	76850513          	addi	a0,a0,1896 # 80009428 <CONSOLE_STATUS+0x418>
    80006cc8:	00f4a023          	sw	a5,0(s1)
    80006ccc:	00001097          	auipc	ra,0x1
    80006cd0:	a4c080e7          	jalr	-1460(ra) # 80007718 <__printf>
    80006cd4:	0000006f          	j	80006cd4 <system_main+0xd4>

0000000080006cd8 <cpuid>:
    80006cd8:	ff010113          	addi	sp,sp,-16
    80006cdc:	00813423          	sd	s0,8(sp)
    80006ce0:	01010413          	addi	s0,sp,16
    80006ce4:	00020513          	mv	a0,tp
    80006ce8:	00813403          	ld	s0,8(sp)
    80006cec:	0005051b          	sext.w	a0,a0
    80006cf0:	01010113          	addi	sp,sp,16
    80006cf4:	00008067          	ret

0000000080006cf8 <mycpu>:
    80006cf8:	ff010113          	addi	sp,sp,-16
    80006cfc:	00813423          	sd	s0,8(sp)
    80006d00:	01010413          	addi	s0,sp,16
    80006d04:	00020793          	mv	a5,tp
    80006d08:	00813403          	ld	s0,8(sp)
    80006d0c:	0007879b          	sext.w	a5,a5
    80006d10:	00779793          	slli	a5,a5,0x7
    80006d14:	00006517          	auipc	a0,0x6
    80006d18:	f3c50513          	addi	a0,a0,-196 # 8000cc50 <cpus>
    80006d1c:	00f50533          	add	a0,a0,a5
    80006d20:	01010113          	addi	sp,sp,16
    80006d24:	00008067          	ret

0000000080006d28 <userinit>:
    80006d28:	ff010113          	addi	sp,sp,-16
    80006d2c:	00813423          	sd	s0,8(sp)
    80006d30:	01010413          	addi	s0,sp,16
    80006d34:	00813403          	ld	s0,8(sp)
    80006d38:	01010113          	addi	sp,sp,16
    80006d3c:	ffffb317          	auipc	t1,0xffffb
    80006d40:	e2c30067          	jr	-468(t1) # 80001b68 <main>

0000000080006d44 <either_copyout>:
    80006d44:	ff010113          	addi	sp,sp,-16
    80006d48:	00813023          	sd	s0,0(sp)
    80006d4c:	00113423          	sd	ra,8(sp)
    80006d50:	01010413          	addi	s0,sp,16
    80006d54:	02051663          	bnez	a0,80006d80 <either_copyout+0x3c>
    80006d58:	00058513          	mv	a0,a1
    80006d5c:	00060593          	mv	a1,a2
    80006d60:	0006861b          	sext.w	a2,a3
    80006d64:	00002097          	auipc	ra,0x2
    80006d68:	c60080e7          	jalr	-928(ra) # 800089c4 <__memmove>
    80006d6c:	00813083          	ld	ra,8(sp)
    80006d70:	00013403          	ld	s0,0(sp)
    80006d74:	00000513          	li	a0,0
    80006d78:	01010113          	addi	sp,sp,16
    80006d7c:	00008067          	ret
    80006d80:	00002517          	auipc	a0,0x2
    80006d84:	6e850513          	addi	a0,a0,1768 # 80009468 <CONSOLE_STATUS+0x458>
    80006d88:	00001097          	auipc	ra,0x1
    80006d8c:	934080e7          	jalr	-1740(ra) # 800076bc <panic>

0000000080006d90 <either_copyin>:
    80006d90:	ff010113          	addi	sp,sp,-16
    80006d94:	00813023          	sd	s0,0(sp)
    80006d98:	00113423          	sd	ra,8(sp)
    80006d9c:	01010413          	addi	s0,sp,16
    80006da0:	02059463          	bnez	a1,80006dc8 <either_copyin+0x38>
    80006da4:	00060593          	mv	a1,a2
    80006da8:	0006861b          	sext.w	a2,a3
    80006dac:	00002097          	auipc	ra,0x2
    80006db0:	c18080e7          	jalr	-1000(ra) # 800089c4 <__memmove>
    80006db4:	00813083          	ld	ra,8(sp)
    80006db8:	00013403          	ld	s0,0(sp)
    80006dbc:	00000513          	li	a0,0
    80006dc0:	01010113          	addi	sp,sp,16
    80006dc4:	00008067          	ret
    80006dc8:	00002517          	auipc	a0,0x2
    80006dcc:	6c850513          	addi	a0,a0,1736 # 80009490 <CONSOLE_STATUS+0x480>
    80006dd0:	00001097          	auipc	ra,0x1
    80006dd4:	8ec080e7          	jalr	-1812(ra) # 800076bc <panic>

0000000080006dd8 <trapinit>:
    80006dd8:	ff010113          	addi	sp,sp,-16
    80006ddc:	00813423          	sd	s0,8(sp)
    80006de0:	01010413          	addi	s0,sp,16
    80006de4:	00813403          	ld	s0,8(sp)
    80006de8:	00002597          	auipc	a1,0x2
    80006dec:	6d058593          	addi	a1,a1,1744 # 800094b8 <CONSOLE_STATUS+0x4a8>
    80006df0:	00006517          	auipc	a0,0x6
    80006df4:	ee050513          	addi	a0,a0,-288 # 8000ccd0 <tickslock>
    80006df8:	01010113          	addi	sp,sp,16
    80006dfc:	00001317          	auipc	t1,0x1
    80006e00:	5cc30067          	jr	1484(t1) # 800083c8 <initlock>

0000000080006e04 <trapinithart>:
    80006e04:	ff010113          	addi	sp,sp,-16
    80006e08:	00813423          	sd	s0,8(sp)
    80006e0c:	01010413          	addi	s0,sp,16
    80006e10:	00000797          	auipc	a5,0x0
    80006e14:	30078793          	addi	a5,a5,768 # 80007110 <kernelvec>
    80006e18:	10579073          	csrw	stvec,a5
    80006e1c:	00813403          	ld	s0,8(sp)
    80006e20:	01010113          	addi	sp,sp,16
    80006e24:	00008067          	ret

0000000080006e28 <usertrap>:
    80006e28:	ff010113          	addi	sp,sp,-16
    80006e2c:	00813423          	sd	s0,8(sp)
    80006e30:	01010413          	addi	s0,sp,16
    80006e34:	00813403          	ld	s0,8(sp)
    80006e38:	01010113          	addi	sp,sp,16
    80006e3c:	00008067          	ret

0000000080006e40 <usertrapret>:
    80006e40:	ff010113          	addi	sp,sp,-16
    80006e44:	00813423          	sd	s0,8(sp)
    80006e48:	01010413          	addi	s0,sp,16
    80006e4c:	00813403          	ld	s0,8(sp)
    80006e50:	01010113          	addi	sp,sp,16
    80006e54:	00008067          	ret

0000000080006e58 <kerneltrap>:
    80006e58:	fe010113          	addi	sp,sp,-32
    80006e5c:	00813823          	sd	s0,16(sp)
    80006e60:	00113c23          	sd	ra,24(sp)
    80006e64:	00913423          	sd	s1,8(sp)
    80006e68:	02010413          	addi	s0,sp,32
    80006e6c:	142025f3          	csrr	a1,scause
    80006e70:	100027f3          	csrr	a5,sstatus
    80006e74:	0027f793          	andi	a5,a5,2
    80006e78:	10079c63          	bnez	a5,80006f90 <kerneltrap+0x138>
    80006e7c:	142027f3          	csrr	a5,scause
    80006e80:	0207ce63          	bltz	a5,80006ebc <kerneltrap+0x64>
    80006e84:	00002517          	auipc	a0,0x2
    80006e88:	67c50513          	addi	a0,a0,1660 # 80009500 <CONSOLE_STATUS+0x4f0>
    80006e8c:	00001097          	auipc	ra,0x1
    80006e90:	88c080e7          	jalr	-1908(ra) # 80007718 <__printf>
    80006e94:	141025f3          	csrr	a1,sepc
    80006e98:	14302673          	csrr	a2,stval
    80006e9c:	00002517          	auipc	a0,0x2
    80006ea0:	67450513          	addi	a0,a0,1652 # 80009510 <CONSOLE_STATUS+0x500>
    80006ea4:	00001097          	auipc	ra,0x1
    80006ea8:	874080e7          	jalr	-1932(ra) # 80007718 <__printf>
    80006eac:	00002517          	auipc	a0,0x2
    80006eb0:	67c50513          	addi	a0,a0,1660 # 80009528 <CONSOLE_STATUS+0x518>
    80006eb4:	00001097          	auipc	ra,0x1
    80006eb8:	808080e7          	jalr	-2040(ra) # 800076bc <panic>
    80006ebc:	0ff7f713          	andi	a4,a5,255
    80006ec0:	00900693          	li	a3,9
    80006ec4:	04d70063          	beq	a4,a3,80006f04 <kerneltrap+0xac>
    80006ec8:	fff00713          	li	a4,-1
    80006ecc:	03f71713          	slli	a4,a4,0x3f
    80006ed0:	00170713          	addi	a4,a4,1
    80006ed4:	fae798e3          	bne	a5,a4,80006e84 <kerneltrap+0x2c>
    80006ed8:	00000097          	auipc	ra,0x0
    80006edc:	e00080e7          	jalr	-512(ra) # 80006cd8 <cpuid>
    80006ee0:	06050663          	beqz	a0,80006f4c <kerneltrap+0xf4>
    80006ee4:	144027f3          	csrr	a5,sip
    80006ee8:	ffd7f793          	andi	a5,a5,-3
    80006eec:	14479073          	csrw	sip,a5
    80006ef0:	01813083          	ld	ra,24(sp)
    80006ef4:	01013403          	ld	s0,16(sp)
    80006ef8:	00813483          	ld	s1,8(sp)
    80006efc:	02010113          	addi	sp,sp,32
    80006f00:	00008067          	ret
    80006f04:	00000097          	auipc	ra,0x0
    80006f08:	3d0080e7          	jalr	976(ra) # 800072d4 <plic_claim>
    80006f0c:	00a00793          	li	a5,10
    80006f10:	00050493          	mv	s1,a0
    80006f14:	06f50863          	beq	a0,a5,80006f84 <kerneltrap+0x12c>
    80006f18:	fc050ce3          	beqz	a0,80006ef0 <kerneltrap+0x98>
    80006f1c:	00050593          	mv	a1,a0
    80006f20:	00002517          	auipc	a0,0x2
    80006f24:	5c050513          	addi	a0,a0,1472 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80006f28:	00000097          	auipc	ra,0x0
    80006f2c:	7f0080e7          	jalr	2032(ra) # 80007718 <__printf>
    80006f30:	01013403          	ld	s0,16(sp)
    80006f34:	01813083          	ld	ra,24(sp)
    80006f38:	00048513          	mv	a0,s1
    80006f3c:	00813483          	ld	s1,8(sp)
    80006f40:	02010113          	addi	sp,sp,32
    80006f44:	00000317          	auipc	t1,0x0
    80006f48:	3c830067          	jr	968(t1) # 8000730c <plic_complete>
    80006f4c:	00006517          	auipc	a0,0x6
    80006f50:	d8450513          	addi	a0,a0,-636 # 8000ccd0 <tickslock>
    80006f54:	00001097          	auipc	ra,0x1
    80006f58:	498080e7          	jalr	1176(ra) # 800083ec <acquire>
    80006f5c:	00005717          	auipc	a4,0x5
    80006f60:	be870713          	addi	a4,a4,-1048 # 8000bb44 <ticks>
    80006f64:	00072783          	lw	a5,0(a4)
    80006f68:	00006517          	auipc	a0,0x6
    80006f6c:	d6850513          	addi	a0,a0,-664 # 8000ccd0 <tickslock>
    80006f70:	0017879b          	addiw	a5,a5,1
    80006f74:	00f72023          	sw	a5,0(a4)
    80006f78:	00001097          	auipc	ra,0x1
    80006f7c:	540080e7          	jalr	1344(ra) # 800084b8 <release>
    80006f80:	f65ff06f          	j	80006ee4 <kerneltrap+0x8c>
    80006f84:	00001097          	auipc	ra,0x1
    80006f88:	09c080e7          	jalr	156(ra) # 80008020 <uartintr>
    80006f8c:	fa5ff06f          	j	80006f30 <kerneltrap+0xd8>
    80006f90:	00002517          	auipc	a0,0x2
    80006f94:	53050513          	addi	a0,a0,1328 # 800094c0 <CONSOLE_STATUS+0x4b0>
    80006f98:	00000097          	auipc	ra,0x0
    80006f9c:	724080e7          	jalr	1828(ra) # 800076bc <panic>

0000000080006fa0 <clockintr>:
    80006fa0:	fe010113          	addi	sp,sp,-32
    80006fa4:	00813823          	sd	s0,16(sp)
    80006fa8:	00913423          	sd	s1,8(sp)
    80006fac:	00113c23          	sd	ra,24(sp)
    80006fb0:	02010413          	addi	s0,sp,32
    80006fb4:	00006497          	auipc	s1,0x6
    80006fb8:	d1c48493          	addi	s1,s1,-740 # 8000ccd0 <tickslock>
    80006fbc:	00048513          	mv	a0,s1
    80006fc0:	00001097          	auipc	ra,0x1
    80006fc4:	42c080e7          	jalr	1068(ra) # 800083ec <acquire>
    80006fc8:	00005717          	auipc	a4,0x5
    80006fcc:	b7c70713          	addi	a4,a4,-1156 # 8000bb44 <ticks>
    80006fd0:	00072783          	lw	a5,0(a4)
    80006fd4:	01013403          	ld	s0,16(sp)
    80006fd8:	01813083          	ld	ra,24(sp)
    80006fdc:	00048513          	mv	a0,s1
    80006fe0:	0017879b          	addiw	a5,a5,1
    80006fe4:	00813483          	ld	s1,8(sp)
    80006fe8:	00f72023          	sw	a5,0(a4)
    80006fec:	02010113          	addi	sp,sp,32
    80006ff0:	00001317          	auipc	t1,0x1
    80006ff4:	4c830067          	jr	1224(t1) # 800084b8 <release>

0000000080006ff8 <devintr>:
    80006ff8:	142027f3          	csrr	a5,scause
    80006ffc:	00000513          	li	a0,0
    80007000:	0007c463          	bltz	a5,80007008 <devintr+0x10>
    80007004:	00008067          	ret
    80007008:	fe010113          	addi	sp,sp,-32
    8000700c:	00813823          	sd	s0,16(sp)
    80007010:	00113c23          	sd	ra,24(sp)
    80007014:	00913423          	sd	s1,8(sp)
    80007018:	02010413          	addi	s0,sp,32
    8000701c:	0ff7f713          	andi	a4,a5,255
    80007020:	00900693          	li	a3,9
    80007024:	04d70c63          	beq	a4,a3,8000707c <devintr+0x84>
    80007028:	fff00713          	li	a4,-1
    8000702c:	03f71713          	slli	a4,a4,0x3f
    80007030:	00170713          	addi	a4,a4,1
    80007034:	00e78c63          	beq	a5,a4,8000704c <devintr+0x54>
    80007038:	01813083          	ld	ra,24(sp)
    8000703c:	01013403          	ld	s0,16(sp)
    80007040:	00813483          	ld	s1,8(sp)
    80007044:	02010113          	addi	sp,sp,32
    80007048:	00008067          	ret
    8000704c:	00000097          	auipc	ra,0x0
    80007050:	c8c080e7          	jalr	-884(ra) # 80006cd8 <cpuid>
    80007054:	06050663          	beqz	a0,800070c0 <devintr+0xc8>
    80007058:	144027f3          	csrr	a5,sip
    8000705c:	ffd7f793          	andi	a5,a5,-3
    80007060:	14479073          	csrw	sip,a5
    80007064:	01813083          	ld	ra,24(sp)
    80007068:	01013403          	ld	s0,16(sp)
    8000706c:	00813483          	ld	s1,8(sp)
    80007070:	00200513          	li	a0,2
    80007074:	02010113          	addi	sp,sp,32
    80007078:	00008067          	ret
    8000707c:	00000097          	auipc	ra,0x0
    80007080:	258080e7          	jalr	600(ra) # 800072d4 <plic_claim>
    80007084:	00a00793          	li	a5,10
    80007088:	00050493          	mv	s1,a0
    8000708c:	06f50663          	beq	a0,a5,800070f8 <devintr+0x100>
    80007090:	00100513          	li	a0,1
    80007094:	fa0482e3          	beqz	s1,80007038 <devintr+0x40>
    80007098:	00048593          	mv	a1,s1
    8000709c:	00002517          	auipc	a0,0x2
    800070a0:	44450513          	addi	a0,a0,1092 # 800094e0 <CONSOLE_STATUS+0x4d0>
    800070a4:	00000097          	auipc	ra,0x0
    800070a8:	674080e7          	jalr	1652(ra) # 80007718 <__printf>
    800070ac:	00048513          	mv	a0,s1
    800070b0:	00000097          	auipc	ra,0x0
    800070b4:	25c080e7          	jalr	604(ra) # 8000730c <plic_complete>
    800070b8:	00100513          	li	a0,1
    800070bc:	f7dff06f          	j	80007038 <devintr+0x40>
    800070c0:	00006517          	auipc	a0,0x6
    800070c4:	c1050513          	addi	a0,a0,-1008 # 8000ccd0 <tickslock>
    800070c8:	00001097          	auipc	ra,0x1
    800070cc:	324080e7          	jalr	804(ra) # 800083ec <acquire>
    800070d0:	00005717          	auipc	a4,0x5
    800070d4:	a7470713          	addi	a4,a4,-1420 # 8000bb44 <ticks>
    800070d8:	00072783          	lw	a5,0(a4)
    800070dc:	00006517          	auipc	a0,0x6
    800070e0:	bf450513          	addi	a0,a0,-1036 # 8000ccd0 <tickslock>
    800070e4:	0017879b          	addiw	a5,a5,1
    800070e8:	00f72023          	sw	a5,0(a4)
    800070ec:	00001097          	auipc	ra,0x1
    800070f0:	3cc080e7          	jalr	972(ra) # 800084b8 <release>
    800070f4:	f65ff06f          	j	80007058 <devintr+0x60>
    800070f8:	00001097          	auipc	ra,0x1
    800070fc:	f28080e7          	jalr	-216(ra) # 80008020 <uartintr>
    80007100:	fadff06f          	j	800070ac <devintr+0xb4>
	...

0000000080007110 <kernelvec>:
    80007110:	f0010113          	addi	sp,sp,-256
    80007114:	00113023          	sd	ra,0(sp)
    80007118:	00213423          	sd	sp,8(sp)
    8000711c:	00313823          	sd	gp,16(sp)
    80007120:	00413c23          	sd	tp,24(sp)
    80007124:	02513023          	sd	t0,32(sp)
    80007128:	02613423          	sd	t1,40(sp)
    8000712c:	02713823          	sd	t2,48(sp)
    80007130:	02813c23          	sd	s0,56(sp)
    80007134:	04913023          	sd	s1,64(sp)
    80007138:	04a13423          	sd	a0,72(sp)
    8000713c:	04b13823          	sd	a1,80(sp)
    80007140:	04c13c23          	sd	a2,88(sp)
    80007144:	06d13023          	sd	a3,96(sp)
    80007148:	06e13423          	sd	a4,104(sp)
    8000714c:	06f13823          	sd	a5,112(sp)
    80007150:	07013c23          	sd	a6,120(sp)
    80007154:	09113023          	sd	a7,128(sp)
    80007158:	09213423          	sd	s2,136(sp)
    8000715c:	09313823          	sd	s3,144(sp)
    80007160:	09413c23          	sd	s4,152(sp)
    80007164:	0b513023          	sd	s5,160(sp)
    80007168:	0b613423          	sd	s6,168(sp)
    8000716c:	0b713823          	sd	s7,176(sp)
    80007170:	0b813c23          	sd	s8,184(sp)
    80007174:	0d913023          	sd	s9,192(sp)
    80007178:	0da13423          	sd	s10,200(sp)
    8000717c:	0db13823          	sd	s11,208(sp)
    80007180:	0dc13c23          	sd	t3,216(sp)
    80007184:	0fd13023          	sd	t4,224(sp)
    80007188:	0fe13423          	sd	t5,232(sp)
    8000718c:	0ff13823          	sd	t6,240(sp)
    80007190:	cc9ff0ef          	jal	ra,80006e58 <kerneltrap>
    80007194:	00013083          	ld	ra,0(sp)
    80007198:	00813103          	ld	sp,8(sp)
    8000719c:	01013183          	ld	gp,16(sp)
    800071a0:	02013283          	ld	t0,32(sp)
    800071a4:	02813303          	ld	t1,40(sp)
    800071a8:	03013383          	ld	t2,48(sp)
    800071ac:	03813403          	ld	s0,56(sp)
    800071b0:	04013483          	ld	s1,64(sp)
    800071b4:	04813503          	ld	a0,72(sp)
    800071b8:	05013583          	ld	a1,80(sp)
    800071bc:	05813603          	ld	a2,88(sp)
    800071c0:	06013683          	ld	a3,96(sp)
    800071c4:	06813703          	ld	a4,104(sp)
    800071c8:	07013783          	ld	a5,112(sp)
    800071cc:	07813803          	ld	a6,120(sp)
    800071d0:	08013883          	ld	a7,128(sp)
    800071d4:	08813903          	ld	s2,136(sp)
    800071d8:	09013983          	ld	s3,144(sp)
    800071dc:	09813a03          	ld	s4,152(sp)
    800071e0:	0a013a83          	ld	s5,160(sp)
    800071e4:	0a813b03          	ld	s6,168(sp)
    800071e8:	0b013b83          	ld	s7,176(sp)
    800071ec:	0b813c03          	ld	s8,184(sp)
    800071f0:	0c013c83          	ld	s9,192(sp)
    800071f4:	0c813d03          	ld	s10,200(sp)
    800071f8:	0d013d83          	ld	s11,208(sp)
    800071fc:	0d813e03          	ld	t3,216(sp)
    80007200:	0e013e83          	ld	t4,224(sp)
    80007204:	0e813f03          	ld	t5,232(sp)
    80007208:	0f013f83          	ld	t6,240(sp)
    8000720c:	10010113          	addi	sp,sp,256
    80007210:	10200073          	sret
    80007214:	00000013          	nop
    80007218:	00000013          	nop
    8000721c:	00000013          	nop

0000000080007220 <timervec>:
    80007220:	34051573          	csrrw	a0,mscratch,a0
    80007224:	00b53023          	sd	a1,0(a0)
    80007228:	00c53423          	sd	a2,8(a0)
    8000722c:	00d53823          	sd	a3,16(a0)
    80007230:	01853583          	ld	a1,24(a0)
    80007234:	02053603          	ld	a2,32(a0)
    80007238:	0005b683          	ld	a3,0(a1)
    8000723c:	00c686b3          	add	a3,a3,a2
    80007240:	00d5b023          	sd	a3,0(a1)
    80007244:	00200593          	li	a1,2
    80007248:	14459073          	csrw	sip,a1
    8000724c:	01053683          	ld	a3,16(a0)
    80007250:	00853603          	ld	a2,8(a0)
    80007254:	00053583          	ld	a1,0(a0)
    80007258:	34051573          	csrrw	a0,mscratch,a0
    8000725c:	30200073          	mret

0000000080007260 <plicinit>:
    80007260:	ff010113          	addi	sp,sp,-16
    80007264:	00813423          	sd	s0,8(sp)
    80007268:	01010413          	addi	s0,sp,16
    8000726c:	00813403          	ld	s0,8(sp)
    80007270:	0c0007b7          	lui	a5,0xc000
    80007274:	00100713          	li	a4,1
    80007278:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000727c:	00e7a223          	sw	a4,4(a5)
    80007280:	01010113          	addi	sp,sp,16
    80007284:	00008067          	ret

0000000080007288 <plicinithart>:
    80007288:	ff010113          	addi	sp,sp,-16
    8000728c:	00813023          	sd	s0,0(sp)
    80007290:	00113423          	sd	ra,8(sp)
    80007294:	01010413          	addi	s0,sp,16
    80007298:	00000097          	auipc	ra,0x0
    8000729c:	a40080e7          	jalr	-1472(ra) # 80006cd8 <cpuid>
    800072a0:	0085171b          	slliw	a4,a0,0x8
    800072a4:	0c0027b7          	lui	a5,0xc002
    800072a8:	00e787b3          	add	a5,a5,a4
    800072ac:	40200713          	li	a4,1026
    800072b0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800072b4:	00813083          	ld	ra,8(sp)
    800072b8:	00013403          	ld	s0,0(sp)
    800072bc:	00d5151b          	slliw	a0,a0,0xd
    800072c0:	0c2017b7          	lui	a5,0xc201
    800072c4:	00a78533          	add	a0,a5,a0
    800072c8:	00052023          	sw	zero,0(a0)
    800072cc:	01010113          	addi	sp,sp,16
    800072d0:	00008067          	ret

00000000800072d4 <plic_claim>:
    800072d4:	ff010113          	addi	sp,sp,-16
    800072d8:	00813023          	sd	s0,0(sp)
    800072dc:	00113423          	sd	ra,8(sp)
    800072e0:	01010413          	addi	s0,sp,16
    800072e4:	00000097          	auipc	ra,0x0
    800072e8:	9f4080e7          	jalr	-1548(ra) # 80006cd8 <cpuid>
    800072ec:	00813083          	ld	ra,8(sp)
    800072f0:	00013403          	ld	s0,0(sp)
    800072f4:	00d5151b          	slliw	a0,a0,0xd
    800072f8:	0c2017b7          	lui	a5,0xc201
    800072fc:	00a78533          	add	a0,a5,a0
    80007300:	00452503          	lw	a0,4(a0)
    80007304:	01010113          	addi	sp,sp,16
    80007308:	00008067          	ret

000000008000730c <plic_complete>:
    8000730c:	fe010113          	addi	sp,sp,-32
    80007310:	00813823          	sd	s0,16(sp)
    80007314:	00913423          	sd	s1,8(sp)
    80007318:	00113c23          	sd	ra,24(sp)
    8000731c:	02010413          	addi	s0,sp,32
    80007320:	00050493          	mv	s1,a0
    80007324:	00000097          	auipc	ra,0x0
    80007328:	9b4080e7          	jalr	-1612(ra) # 80006cd8 <cpuid>
    8000732c:	01813083          	ld	ra,24(sp)
    80007330:	01013403          	ld	s0,16(sp)
    80007334:	00d5179b          	slliw	a5,a0,0xd
    80007338:	0c201737          	lui	a4,0xc201
    8000733c:	00f707b3          	add	a5,a4,a5
    80007340:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007344:	00813483          	ld	s1,8(sp)
    80007348:	02010113          	addi	sp,sp,32
    8000734c:	00008067          	ret

0000000080007350 <consolewrite>:
    80007350:	fb010113          	addi	sp,sp,-80
    80007354:	04813023          	sd	s0,64(sp)
    80007358:	04113423          	sd	ra,72(sp)
    8000735c:	02913c23          	sd	s1,56(sp)
    80007360:	03213823          	sd	s2,48(sp)
    80007364:	03313423          	sd	s3,40(sp)
    80007368:	03413023          	sd	s4,32(sp)
    8000736c:	01513c23          	sd	s5,24(sp)
    80007370:	05010413          	addi	s0,sp,80
    80007374:	06c05c63          	blez	a2,800073ec <consolewrite+0x9c>
    80007378:	00060993          	mv	s3,a2
    8000737c:	00050a13          	mv	s4,a0
    80007380:	00058493          	mv	s1,a1
    80007384:	00000913          	li	s2,0
    80007388:	fff00a93          	li	s5,-1
    8000738c:	01c0006f          	j	800073a8 <consolewrite+0x58>
    80007390:	fbf44503          	lbu	a0,-65(s0)
    80007394:	0019091b          	addiw	s2,s2,1
    80007398:	00148493          	addi	s1,s1,1
    8000739c:	00001097          	auipc	ra,0x1
    800073a0:	a9c080e7          	jalr	-1380(ra) # 80007e38 <uartputc>
    800073a4:	03298063          	beq	s3,s2,800073c4 <consolewrite+0x74>
    800073a8:	00048613          	mv	a2,s1
    800073ac:	00100693          	li	a3,1
    800073b0:	000a0593          	mv	a1,s4
    800073b4:	fbf40513          	addi	a0,s0,-65
    800073b8:	00000097          	auipc	ra,0x0
    800073bc:	9d8080e7          	jalr	-1576(ra) # 80006d90 <either_copyin>
    800073c0:	fd5518e3          	bne	a0,s5,80007390 <consolewrite+0x40>
    800073c4:	04813083          	ld	ra,72(sp)
    800073c8:	04013403          	ld	s0,64(sp)
    800073cc:	03813483          	ld	s1,56(sp)
    800073d0:	02813983          	ld	s3,40(sp)
    800073d4:	02013a03          	ld	s4,32(sp)
    800073d8:	01813a83          	ld	s5,24(sp)
    800073dc:	00090513          	mv	a0,s2
    800073e0:	03013903          	ld	s2,48(sp)
    800073e4:	05010113          	addi	sp,sp,80
    800073e8:	00008067          	ret
    800073ec:	00000913          	li	s2,0
    800073f0:	fd5ff06f          	j	800073c4 <consolewrite+0x74>

00000000800073f4 <consoleread>:
    800073f4:	f9010113          	addi	sp,sp,-112
    800073f8:	06813023          	sd	s0,96(sp)
    800073fc:	04913c23          	sd	s1,88(sp)
    80007400:	05213823          	sd	s2,80(sp)
    80007404:	05313423          	sd	s3,72(sp)
    80007408:	05413023          	sd	s4,64(sp)
    8000740c:	03513c23          	sd	s5,56(sp)
    80007410:	03613823          	sd	s6,48(sp)
    80007414:	03713423          	sd	s7,40(sp)
    80007418:	03813023          	sd	s8,32(sp)
    8000741c:	06113423          	sd	ra,104(sp)
    80007420:	01913c23          	sd	s9,24(sp)
    80007424:	07010413          	addi	s0,sp,112
    80007428:	00060b93          	mv	s7,a2
    8000742c:	00050913          	mv	s2,a0
    80007430:	00058c13          	mv	s8,a1
    80007434:	00060b1b          	sext.w	s6,a2
    80007438:	00006497          	auipc	s1,0x6
    8000743c:	8c048493          	addi	s1,s1,-1856 # 8000ccf8 <cons>
    80007440:	00400993          	li	s3,4
    80007444:	fff00a13          	li	s4,-1
    80007448:	00a00a93          	li	s5,10
    8000744c:	05705e63          	blez	s7,800074a8 <consoleread+0xb4>
    80007450:	09c4a703          	lw	a4,156(s1)
    80007454:	0984a783          	lw	a5,152(s1)
    80007458:	0007071b          	sext.w	a4,a4
    8000745c:	08e78463          	beq	a5,a4,800074e4 <consoleread+0xf0>
    80007460:	07f7f713          	andi	a4,a5,127
    80007464:	00e48733          	add	a4,s1,a4
    80007468:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000746c:	0017869b          	addiw	a3,a5,1
    80007470:	08d4ac23          	sw	a3,152(s1)
    80007474:	00070c9b          	sext.w	s9,a4
    80007478:	0b370663          	beq	a4,s3,80007524 <consoleread+0x130>
    8000747c:	00100693          	li	a3,1
    80007480:	f9f40613          	addi	a2,s0,-97
    80007484:	000c0593          	mv	a1,s8
    80007488:	00090513          	mv	a0,s2
    8000748c:	f8e40fa3          	sb	a4,-97(s0)
    80007490:	00000097          	auipc	ra,0x0
    80007494:	8b4080e7          	jalr	-1868(ra) # 80006d44 <either_copyout>
    80007498:	01450863          	beq	a0,s4,800074a8 <consoleread+0xb4>
    8000749c:	001c0c13          	addi	s8,s8,1
    800074a0:	fffb8b9b          	addiw	s7,s7,-1
    800074a4:	fb5c94e3          	bne	s9,s5,8000744c <consoleread+0x58>
    800074a8:	000b851b          	sext.w	a0,s7
    800074ac:	06813083          	ld	ra,104(sp)
    800074b0:	06013403          	ld	s0,96(sp)
    800074b4:	05813483          	ld	s1,88(sp)
    800074b8:	05013903          	ld	s2,80(sp)
    800074bc:	04813983          	ld	s3,72(sp)
    800074c0:	04013a03          	ld	s4,64(sp)
    800074c4:	03813a83          	ld	s5,56(sp)
    800074c8:	02813b83          	ld	s7,40(sp)
    800074cc:	02013c03          	ld	s8,32(sp)
    800074d0:	01813c83          	ld	s9,24(sp)
    800074d4:	40ab053b          	subw	a0,s6,a0
    800074d8:	03013b03          	ld	s6,48(sp)
    800074dc:	07010113          	addi	sp,sp,112
    800074e0:	00008067          	ret
    800074e4:	00001097          	auipc	ra,0x1
    800074e8:	1d8080e7          	jalr	472(ra) # 800086bc <push_on>
    800074ec:	0984a703          	lw	a4,152(s1)
    800074f0:	09c4a783          	lw	a5,156(s1)
    800074f4:	0007879b          	sext.w	a5,a5
    800074f8:	fef70ce3          	beq	a4,a5,800074f0 <consoleread+0xfc>
    800074fc:	00001097          	auipc	ra,0x1
    80007500:	234080e7          	jalr	564(ra) # 80008730 <pop_on>
    80007504:	0984a783          	lw	a5,152(s1)
    80007508:	07f7f713          	andi	a4,a5,127
    8000750c:	00e48733          	add	a4,s1,a4
    80007510:	01874703          	lbu	a4,24(a4)
    80007514:	0017869b          	addiw	a3,a5,1
    80007518:	08d4ac23          	sw	a3,152(s1)
    8000751c:	00070c9b          	sext.w	s9,a4
    80007520:	f5371ee3          	bne	a4,s3,8000747c <consoleread+0x88>
    80007524:	000b851b          	sext.w	a0,s7
    80007528:	f96bf2e3          	bgeu	s7,s6,800074ac <consoleread+0xb8>
    8000752c:	08f4ac23          	sw	a5,152(s1)
    80007530:	f7dff06f          	j	800074ac <consoleread+0xb8>

0000000080007534 <consputc>:
    80007534:	10000793          	li	a5,256
    80007538:	00f50663          	beq	a0,a5,80007544 <consputc+0x10>
    8000753c:	00001317          	auipc	t1,0x1
    80007540:	9f430067          	jr	-1548(t1) # 80007f30 <uartputc_sync>
    80007544:	ff010113          	addi	sp,sp,-16
    80007548:	00113423          	sd	ra,8(sp)
    8000754c:	00813023          	sd	s0,0(sp)
    80007550:	01010413          	addi	s0,sp,16
    80007554:	00800513          	li	a0,8
    80007558:	00001097          	auipc	ra,0x1
    8000755c:	9d8080e7          	jalr	-1576(ra) # 80007f30 <uartputc_sync>
    80007560:	02000513          	li	a0,32
    80007564:	00001097          	auipc	ra,0x1
    80007568:	9cc080e7          	jalr	-1588(ra) # 80007f30 <uartputc_sync>
    8000756c:	00013403          	ld	s0,0(sp)
    80007570:	00813083          	ld	ra,8(sp)
    80007574:	00800513          	li	a0,8
    80007578:	01010113          	addi	sp,sp,16
    8000757c:	00001317          	auipc	t1,0x1
    80007580:	9b430067          	jr	-1612(t1) # 80007f30 <uartputc_sync>

0000000080007584 <consoleintr>:
    80007584:	fe010113          	addi	sp,sp,-32
    80007588:	00813823          	sd	s0,16(sp)
    8000758c:	00913423          	sd	s1,8(sp)
    80007590:	01213023          	sd	s2,0(sp)
    80007594:	00113c23          	sd	ra,24(sp)
    80007598:	02010413          	addi	s0,sp,32
    8000759c:	00005917          	auipc	s2,0x5
    800075a0:	75c90913          	addi	s2,s2,1884 # 8000ccf8 <cons>
    800075a4:	00050493          	mv	s1,a0
    800075a8:	00090513          	mv	a0,s2
    800075ac:	00001097          	auipc	ra,0x1
    800075b0:	e40080e7          	jalr	-448(ra) # 800083ec <acquire>
    800075b4:	02048c63          	beqz	s1,800075ec <consoleintr+0x68>
    800075b8:	0a092783          	lw	a5,160(s2)
    800075bc:	09892703          	lw	a4,152(s2)
    800075c0:	07f00693          	li	a3,127
    800075c4:	40e7873b          	subw	a4,a5,a4
    800075c8:	02e6e263          	bltu	a3,a4,800075ec <consoleintr+0x68>
    800075cc:	00d00713          	li	a4,13
    800075d0:	04e48063          	beq	s1,a4,80007610 <consoleintr+0x8c>
    800075d4:	07f7f713          	andi	a4,a5,127
    800075d8:	00e90733          	add	a4,s2,a4
    800075dc:	0017879b          	addiw	a5,a5,1
    800075e0:	0af92023          	sw	a5,160(s2)
    800075e4:	00970c23          	sb	s1,24(a4)
    800075e8:	08f92e23          	sw	a5,156(s2)
    800075ec:	01013403          	ld	s0,16(sp)
    800075f0:	01813083          	ld	ra,24(sp)
    800075f4:	00813483          	ld	s1,8(sp)
    800075f8:	00013903          	ld	s2,0(sp)
    800075fc:	00005517          	auipc	a0,0x5
    80007600:	6fc50513          	addi	a0,a0,1788 # 8000ccf8 <cons>
    80007604:	02010113          	addi	sp,sp,32
    80007608:	00001317          	auipc	t1,0x1
    8000760c:	eb030067          	jr	-336(t1) # 800084b8 <release>
    80007610:	00a00493          	li	s1,10
    80007614:	fc1ff06f          	j	800075d4 <consoleintr+0x50>

0000000080007618 <consoleinit>:
    80007618:	fe010113          	addi	sp,sp,-32
    8000761c:	00113c23          	sd	ra,24(sp)
    80007620:	00813823          	sd	s0,16(sp)
    80007624:	00913423          	sd	s1,8(sp)
    80007628:	02010413          	addi	s0,sp,32
    8000762c:	00005497          	auipc	s1,0x5
    80007630:	6cc48493          	addi	s1,s1,1740 # 8000ccf8 <cons>
    80007634:	00048513          	mv	a0,s1
    80007638:	00002597          	auipc	a1,0x2
    8000763c:	f0058593          	addi	a1,a1,-256 # 80009538 <CONSOLE_STATUS+0x528>
    80007640:	00001097          	auipc	ra,0x1
    80007644:	d88080e7          	jalr	-632(ra) # 800083c8 <initlock>
    80007648:	00000097          	auipc	ra,0x0
    8000764c:	7ac080e7          	jalr	1964(ra) # 80007df4 <uartinit>
    80007650:	01813083          	ld	ra,24(sp)
    80007654:	01013403          	ld	s0,16(sp)
    80007658:	00000797          	auipc	a5,0x0
    8000765c:	d9c78793          	addi	a5,a5,-612 # 800073f4 <consoleread>
    80007660:	0af4bc23          	sd	a5,184(s1)
    80007664:	00000797          	auipc	a5,0x0
    80007668:	cec78793          	addi	a5,a5,-788 # 80007350 <consolewrite>
    8000766c:	0cf4b023          	sd	a5,192(s1)
    80007670:	00813483          	ld	s1,8(sp)
    80007674:	02010113          	addi	sp,sp,32
    80007678:	00008067          	ret

000000008000767c <console_read>:
    8000767c:	ff010113          	addi	sp,sp,-16
    80007680:	00813423          	sd	s0,8(sp)
    80007684:	01010413          	addi	s0,sp,16
    80007688:	00813403          	ld	s0,8(sp)
    8000768c:	00005317          	auipc	t1,0x5
    80007690:	72433303          	ld	t1,1828(t1) # 8000cdb0 <devsw+0x10>
    80007694:	01010113          	addi	sp,sp,16
    80007698:	00030067          	jr	t1

000000008000769c <console_write>:
    8000769c:	ff010113          	addi	sp,sp,-16
    800076a0:	00813423          	sd	s0,8(sp)
    800076a4:	01010413          	addi	s0,sp,16
    800076a8:	00813403          	ld	s0,8(sp)
    800076ac:	00005317          	auipc	t1,0x5
    800076b0:	70c33303          	ld	t1,1804(t1) # 8000cdb8 <devsw+0x18>
    800076b4:	01010113          	addi	sp,sp,16
    800076b8:	00030067          	jr	t1

00000000800076bc <panic>:
    800076bc:	fe010113          	addi	sp,sp,-32
    800076c0:	00113c23          	sd	ra,24(sp)
    800076c4:	00813823          	sd	s0,16(sp)
    800076c8:	00913423          	sd	s1,8(sp)
    800076cc:	02010413          	addi	s0,sp,32
    800076d0:	00050493          	mv	s1,a0
    800076d4:	00002517          	auipc	a0,0x2
    800076d8:	e6c50513          	addi	a0,a0,-404 # 80009540 <CONSOLE_STATUS+0x530>
    800076dc:	00005797          	auipc	a5,0x5
    800076e0:	7607ae23          	sw	zero,1916(a5) # 8000ce58 <pr+0x18>
    800076e4:	00000097          	auipc	ra,0x0
    800076e8:	034080e7          	jalr	52(ra) # 80007718 <__printf>
    800076ec:	00048513          	mv	a0,s1
    800076f0:	00000097          	auipc	ra,0x0
    800076f4:	028080e7          	jalr	40(ra) # 80007718 <__printf>
    800076f8:	00002517          	auipc	a0,0x2
    800076fc:	a7050513          	addi	a0,a0,-1424 # 80009168 <CONSOLE_STATUS+0x158>
    80007700:	00000097          	auipc	ra,0x0
    80007704:	018080e7          	jalr	24(ra) # 80007718 <__printf>
    80007708:	00100793          	li	a5,1
    8000770c:	00004717          	auipc	a4,0x4
    80007710:	42f72e23          	sw	a5,1084(a4) # 8000bb48 <panicked>
    80007714:	0000006f          	j	80007714 <panic+0x58>

0000000080007718 <__printf>:
    80007718:	f3010113          	addi	sp,sp,-208
    8000771c:	08813023          	sd	s0,128(sp)
    80007720:	07313423          	sd	s3,104(sp)
    80007724:	09010413          	addi	s0,sp,144
    80007728:	05813023          	sd	s8,64(sp)
    8000772c:	08113423          	sd	ra,136(sp)
    80007730:	06913c23          	sd	s1,120(sp)
    80007734:	07213823          	sd	s2,112(sp)
    80007738:	07413023          	sd	s4,96(sp)
    8000773c:	05513c23          	sd	s5,88(sp)
    80007740:	05613823          	sd	s6,80(sp)
    80007744:	05713423          	sd	s7,72(sp)
    80007748:	03913c23          	sd	s9,56(sp)
    8000774c:	03a13823          	sd	s10,48(sp)
    80007750:	03b13423          	sd	s11,40(sp)
    80007754:	00005317          	auipc	t1,0x5
    80007758:	6ec30313          	addi	t1,t1,1772 # 8000ce40 <pr>
    8000775c:	01832c03          	lw	s8,24(t1)
    80007760:	00b43423          	sd	a1,8(s0)
    80007764:	00c43823          	sd	a2,16(s0)
    80007768:	00d43c23          	sd	a3,24(s0)
    8000776c:	02e43023          	sd	a4,32(s0)
    80007770:	02f43423          	sd	a5,40(s0)
    80007774:	03043823          	sd	a6,48(s0)
    80007778:	03143c23          	sd	a7,56(s0)
    8000777c:	00050993          	mv	s3,a0
    80007780:	4a0c1663          	bnez	s8,80007c2c <__printf+0x514>
    80007784:	60098c63          	beqz	s3,80007d9c <__printf+0x684>
    80007788:	0009c503          	lbu	a0,0(s3)
    8000778c:	00840793          	addi	a5,s0,8
    80007790:	f6f43c23          	sd	a5,-136(s0)
    80007794:	00000493          	li	s1,0
    80007798:	22050063          	beqz	a0,800079b8 <__printf+0x2a0>
    8000779c:	00002a37          	lui	s4,0x2
    800077a0:	00018ab7          	lui	s5,0x18
    800077a4:	000f4b37          	lui	s6,0xf4
    800077a8:	00989bb7          	lui	s7,0x989
    800077ac:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800077b0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800077b4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800077b8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800077bc:	00148c9b          	addiw	s9,s1,1
    800077c0:	02500793          	li	a5,37
    800077c4:	01998933          	add	s2,s3,s9
    800077c8:	38f51263          	bne	a0,a5,80007b4c <__printf+0x434>
    800077cc:	00094783          	lbu	a5,0(s2)
    800077d0:	00078c9b          	sext.w	s9,a5
    800077d4:	1e078263          	beqz	a5,800079b8 <__printf+0x2a0>
    800077d8:	0024849b          	addiw	s1,s1,2
    800077dc:	07000713          	li	a4,112
    800077e0:	00998933          	add	s2,s3,s1
    800077e4:	38e78a63          	beq	a5,a4,80007b78 <__printf+0x460>
    800077e8:	20f76863          	bltu	a4,a5,800079f8 <__printf+0x2e0>
    800077ec:	42a78863          	beq	a5,a0,80007c1c <__printf+0x504>
    800077f0:	06400713          	li	a4,100
    800077f4:	40e79663          	bne	a5,a4,80007c00 <__printf+0x4e8>
    800077f8:	f7843783          	ld	a5,-136(s0)
    800077fc:	0007a603          	lw	a2,0(a5)
    80007800:	00878793          	addi	a5,a5,8
    80007804:	f6f43c23          	sd	a5,-136(s0)
    80007808:	42064a63          	bltz	a2,80007c3c <__printf+0x524>
    8000780c:	00a00713          	li	a4,10
    80007810:	02e677bb          	remuw	a5,a2,a4
    80007814:	00002d97          	auipc	s11,0x2
    80007818:	d54d8d93          	addi	s11,s11,-684 # 80009568 <digits>
    8000781c:	00900593          	li	a1,9
    80007820:	0006051b          	sext.w	a0,a2
    80007824:	00000c93          	li	s9,0
    80007828:	02079793          	slli	a5,a5,0x20
    8000782c:	0207d793          	srli	a5,a5,0x20
    80007830:	00fd87b3          	add	a5,s11,a5
    80007834:	0007c783          	lbu	a5,0(a5)
    80007838:	02e656bb          	divuw	a3,a2,a4
    8000783c:	f8f40023          	sb	a5,-128(s0)
    80007840:	14c5d863          	bge	a1,a2,80007990 <__printf+0x278>
    80007844:	06300593          	li	a1,99
    80007848:	00100c93          	li	s9,1
    8000784c:	02e6f7bb          	remuw	a5,a3,a4
    80007850:	02079793          	slli	a5,a5,0x20
    80007854:	0207d793          	srli	a5,a5,0x20
    80007858:	00fd87b3          	add	a5,s11,a5
    8000785c:	0007c783          	lbu	a5,0(a5)
    80007860:	02e6d73b          	divuw	a4,a3,a4
    80007864:	f8f400a3          	sb	a5,-127(s0)
    80007868:	12a5f463          	bgeu	a1,a0,80007990 <__printf+0x278>
    8000786c:	00a00693          	li	a3,10
    80007870:	00900593          	li	a1,9
    80007874:	02d777bb          	remuw	a5,a4,a3
    80007878:	02079793          	slli	a5,a5,0x20
    8000787c:	0207d793          	srli	a5,a5,0x20
    80007880:	00fd87b3          	add	a5,s11,a5
    80007884:	0007c503          	lbu	a0,0(a5)
    80007888:	02d757bb          	divuw	a5,a4,a3
    8000788c:	f8a40123          	sb	a0,-126(s0)
    80007890:	48e5f263          	bgeu	a1,a4,80007d14 <__printf+0x5fc>
    80007894:	06300513          	li	a0,99
    80007898:	02d7f5bb          	remuw	a1,a5,a3
    8000789c:	02059593          	slli	a1,a1,0x20
    800078a0:	0205d593          	srli	a1,a1,0x20
    800078a4:	00bd85b3          	add	a1,s11,a1
    800078a8:	0005c583          	lbu	a1,0(a1)
    800078ac:	02d7d7bb          	divuw	a5,a5,a3
    800078b0:	f8b401a3          	sb	a1,-125(s0)
    800078b4:	48e57263          	bgeu	a0,a4,80007d38 <__printf+0x620>
    800078b8:	3e700513          	li	a0,999
    800078bc:	02d7f5bb          	remuw	a1,a5,a3
    800078c0:	02059593          	slli	a1,a1,0x20
    800078c4:	0205d593          	srli	a1,a1,0x20
    800078c8:	00bd85b3          	add	a1,s11,a1
    800078cc:	0005c583          	lbu	a1,0(a1)
    800078d0:	02d7d7bb          	divuw	a5,a5,a3
    800078d4:	f8b40223          	sb	a1,-124(s0)
    800078d8:	46e57663          	bgeu	a0,a4,80007d44 <__printf+0x62c>
    800078dc:	02d7f5bb          	remuw	a1,a5,a3
    800078e0:	02059593          	slli	a1,a1,0x20
    800078e4:	0205d593          	srli	a1,a1,0x20
    800078e8:	00bd85b3          	add	a1,s11,a1
    800078ec:	0005c583          	lbu	a1,0(a1)
    800078f0:	02d7d7bb          	divuw	a5,a5,a3
    800078f4:	f8b402a3          	sb	a1,-123(s0)
    800078f8:	46ea7863          	bgeu	s4,a4,80007d68 <__printf+0x650>
    800078fc:	02d7f5bb          	remuw	a1,a5,a3
    80007900:	02059593          	slli	a1,a1,0x20
    80007904:	0205d593          	srli	a1,a1,0x20
    80007908:	00bd85b3          	add	a1,s11,a1
    8000790c:	0005c583          	lbu	a1,0(a1)
    80007910:	02d7d7bb          	divuw	a5,a5,a3
    80007914:	f8b40323          	sb	a1,-122(s0)
    80007918:	3eeaf863          	bgeu	s5,a4,80007d08 <__printf+0x5f0>
    8000791c:	02d7f5bb          	remuw	a1,a5,a3
    80007920:	02059593          	slli	a1,a1,0x20
    80007924:	0205d593          	srli	a1,a1,0x20
    80007928:	00bd85b3          	add	a1,s11,a1
    8000792c:	0005c583          	lbu	a1,0(a1)
    80007930:	02d7d7bb          	divuw	a5,a5,a3
    80007934:	f8b403a3          	sb	a1,-121(s0)
    80007938:	42eb7e63          	bgeu	s6,a4,80007d74 <__printf+0x65c>
    8000793c:	02d7f5bb          	remuw	a1,a5,a3
    80007940:	02059593          	slli	a1,a1,0x20
    80007944:	0205d593          	srli	a1,a1,0x20
    80007948:	00bd85b3          	add	a1,s11,a1
    8000794c:	0005c583          	lbu	a1,0(a1)
    80007950:	02d7d7bb          	divuw	a5,a5,a3
    80007954:	f8b40423          	sb	a1,-120(s0)
    80007958:	42ebfc63          	bgeu	s7,a4,80007d90 <__printf+0x678>
    8000795c:	02079793          	slli	a5,a5,0x20
    80007960:	0207d793          	srli	a5,a5,0x20
    80007964:	00fd8db3          	add	s11,s11,a5
    80007968:	000dc703          	lbu	a4,0(s11)
    8000796c:	00a00793          	li	a5,10
    80007970:	00900c93          	li	s9,9
    80007974:	f8e404a3          	sb	a4,-119(s0)
    80007978:	00065c63          	bgez	a2,80007990 <__printf+0x278>
    8000797c:	f9040713          	addi	a4,s0,-112
    80007980:	00f70733          	add	a4,a4,a5
    80007984:	02d00693          	li	a3,45
    80007988:	fed70823          	sb	a3,-16(a4)
    8000798c:	00078c93          	mv	s9,a5
    80007990:	f8040793          	addi	a5,s0,-128
    80007994:	01978cb3          	add	s9,a5,s9
    80007998:	f7f40d13          	addi	s10,s0,-129
    8000799c:	000cc503          	lbu	a0,0(s9)
    800079a0:	fffc8c93          	addi	s9,s9,-1
    800079a4:	00000097          	auipc	ra,0x0
    800079a8:	b90080e7          	jalr	-1136(ra) # 80007534 <consputc>
    800079ac:	ffac98e3          	bne	s9,s10,8000799c <__printf+0x284>
    800079b0:	00094503          	lbu	a0,0(s2)
    800079b4:	e00514e3          	bnez	a0,800077bc <__printf+0xa4>
    800079b8:	1a0c1663          	bnez	s8,80007b64 <__printf+0x44c>
    800079bc:	08813083          	ld	ra,136(sp)
    800079c0:	08013403          	ld	s0,128(sp)
    800079c4:	07813483          	ld	s1,120(sp)
    800079c8:	07013903          	ld	s2,112(sp)
    800079cc:	06813983          	ld	s3,104(sp)
    800079d0:	06013a03          	ld	s4,96(sp)
    800079d4:	05813a83          	ld	s5,88(sp)
    800079d8:	05013b03          	ld	s6,80(sp)
    800079dc:	04813b83          	ld	s7,72(sp)
    800079e0:	04013c03          	ld	s8,64(sp)
    800079e4:	03813c83          	ld	s9,56(sp)
    800079e8:	03013d03          	ld	s10,48(sp)
    800079ec:	02813d83          	ld	s11,40(sp)
    800079f0:	0d010113          	addi	sp,sp,208
    800079f4:	00008067          	ret
    800079f8:	07300713          	li	a4,115
    800079fc:	1ce78a63          	beq	a5,a4,80007bd0 <__printf+0x4b8>
    80007a00:	07800713          	li	a4,120
    80007a04:	1ee79e63          	bne	a5,a4,80007c00 <__printf+0x4e8>
    80007a08:	f7843783          	ld	a5,-136(s0)
    80007a0c:	0007a703          	lw	a4,0(a5)
    80007a10:	00878793          	addi	a5,a5,8
    80007a14:	f6f43c23          	sd	a5,-136(s0)
    80007a18:	28074263          	bltz	a4,80007c9c <__printf+0x584>
    80007a1c:	00002d97          	auipc	s11,0x2
    80007a20:	b4cd8d93          	addi	s11,s11,-1204 # 80009568 <digits>
    80007a24:	00f77793          	andi	a5,a4,15
    80007a28:	00fd87b3          	add	a5,s11,a5
    80007a2c:	0007c683          	lbu	a3,0(a5)
    80007a30:	00f00613          	li	a2,15
    80007a34:	0007079b          	sext.w	a5,a4
    80007a38:	f8d40023          	sb	a3,-128(s0)
    80007a3c:	0047559b          	srliw	a1,a4,0x4
    80007a40:	0047569b          	srliw	a3,a4,0x4
    80007a44:	00000c93          	li	s9,0
    80007a48:	0ee65063          	bge	a2,a4,80007b28 <__printf+0x410>
    80007a4c:	00f6f693          	andi	a3,a3,15
    80007a50:	00dd86b3          	add	a3,s11,a3
    80007a54:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007a58:	0087d79b          	srliw	a5,a5,0x8
    80007a5c:	00100c93          	li	s9,1
    80007a60:	f8d400a3          	sb	a3,-127(s0)
    80007a64:	0cb67263          	bgeu	a2,a1,80007b28 <__printf+0x410>
    80007a68:	00f7f693          	andi	a3,a5,15
    80007a6c:	00dd86b3          	add	a3,s11,a3
    80007a70:	0006c583          	lbu	a1,0(a3)
    80007a74:	00f00613          	li	a2,15
    80007a78:	0047d69b          	srliw	a3,a5,0x4
    80007a7c:	f8b40123          	sb	a1,-126(s0)
    80007a80:	0047d593          	srli	a1,a5,0x4
    80007a84:	28f67e63          	bgeu	a2,a5,80007d20 <__printf+0x608>
    80007a88:	00f6f693          	andi	a3,a3,15
    80007a8c:	00dd86b3          	add	a3,s11,a3
    80007a90:	0006c503          	lbu	a0,0(a3)
    80007a94:	0087d813          	srli	a6,a5,0x8
    80007a98:	0087d69b          	srliw	a3,a5,0x8
    80007a9c:	f8a401a3          	sb	a0,-125(s0)
    80007aa0:	28b67663          	bgeu	a2,a1,80007d2c <__printf+0x614>
    80007aa4:	00f6f693          	andi	a3,a3,15
    80007aa8:	00dd86b3          	add	a3,s11,a3
    80007aac:	0006c583          	lbu	a1,0(a3)
    80007ab0:	00c7d513          	srli	a0,a5,0xc
    80007ab4:	00c7d69b          	srliw	a3,a5,0xc
    80007ab8:	f8b40223          	sb	a1,-124(s0)
    80007abc:	29067a63          	bgeu	a2,a6,80007d50 <__printf+0x638>
    80007ac0:	00f6f693          	andi	a3,a3,15
    80007ac4:	00dd86b3          	add	a3,s11,a3
    80007ac8:	0006c583          	lbu	a1,0(a3)
    80007acc:	0107d813          	srli	a6,a5,0x10
    80007ad0:	0107d69b          	srliw	a3,a5,0x10
    80007ad4:	f8b402a3          	sb	a1,-123(s0)
    80007ad8:	28a67263          	bgeu	a2,a0,80007d5c <__printf+0x644>
    80007adc:	00f6f693          	andi	a3,a3,15
    80007ae0:	00dd86b3          	add	a3,s11,a3
    80007ae4:	0006c683          	lbu	a3,0(a3)
    80007ae8:	0147d79b          	srliw	a5,a5,0x14
    80007aec:	f8d40323          	sb	a3,-122(s0)
    80007af0:	21067663          	bgeu	a2,a6,80007cfc <__printf+0x5e4>
    80007af4:	02079793          	slli	a5,a5,0x20
    80007af8:	0207d793          	srli	a5,a5,0x20
    80007afc:	00fd8db3          	add	s11,s11,a5
    80007b00:	000dc683          	lbu	a3,0(s11)
    80007b04:	00800793          	li	a5,8
    80007b08:	00700c93          	li	s9,7
    80007b0c:	f8d403a3          	sb	a3,-121(s0)
    80007b10:	00075c63          	bgez	a4,80007b28 <__printf+0x410>
    80007b14:	f9040713          	addi	a4,s0,-112
    80007b18:	00f70733          	add	a4,a4,a5
    80007b1c:	02d00693          	li	a3,45
    80007b20:	fed70823          	sb	a3,-16(a4)
    80007b24:	00078c93          	mv	s9,a5
    80007b28:	f8040793          	addi	a5,s0,-128
    80007b2c:	01978cb3          	add	s9,a5,s9
    80007b30:	f7f40d13          	addi	s10,s0,-129
    80007b34:	000cc503          	lbu	a0,0(s9)
    80007b38:	fffc8c93          	addi	s9,s9,-1
    80007b3c:	00000097          	auipc	ra,0x0
    80007b40:	9f8080e7          	jalr	-1544(ra) # 80007534 <consputc>
    80007b44:	ff9d18e3          	bne	s10,s9,80007b34 <__printf+0x41c>
    80007b48:	0100006f          	j	80007b58 <__printf+0x440>
    80007b4c:	00000097          	auipc	ra,0x0
    80007b50:	9e8080e7          	jalr	-1560(ra) # 80007534 <consputc>
    80007b54:	000c8493          	mv	s1,s9
    80007b58:	00094503          	lbu	a0,0(s2)
    80007b5c:	c60510e3          	bnez	a0,800077bc <__printf+0xa4>
    80007b60:	e40c0ee3          	beqz	s8,800079bc <__printf+0x2a4>
    80007b64:	00005517          	auipc	a0,0x5
    80007b68:	2dc50513          	addi	a0,a0,732 # 8000ce40 <pr>
    80007b6c:	00001097          	auipc	ra,0x1
    80007b70:	94c080e7          	jalr	-1716(ra) # 800084b8 <release>
    80007b74:	e49ff06f          	j	800079bc <__printf+0x2a4>
    80007b78:	f7843783          	ld	a5,-136(s0)
    80007b7c:	03000513          	li	a0,48
    80007b80:	01000d13          	li	s10,16
    80007b84:	00878713          	addi	a4,a5,8
    80007b88:	0007bc83          	ld	s9,0(a5)
    80007b8c:	f6e43c23          	sd	a4,-136(s0)
    80007b90:	00000097          	auipc	ra,0x0
    80007b94:	9a4080e7          	jalr	-1628(ra) # 80007534 <consputc>
    80007b98:	07800513          	li	a0,120
    80007b9c:	00000097          	auipc	ra,0x0
    80007ba0:	998080e7          	jalr	-1640(ra) # 80007534 <consputc>
    80007ba4:	00002d97          	auipc	s11,0x2
    80007ba8:	9c4d8d93          	addi	s11,s11,-1596 # 80009568 <digits>
    80007bac:	03ccd793          	srli	a5,s9,0x3c
    80007bb0:	00fd87b3          	add	a5,s11,a5
    80007bb4:	0007c503          	lbu	a0,0(a5)
    80007bb8:	fffd0d1b          	addiw	s10,s10,-1
    80007bbc:	004c9c93          	slli	s9,s9,0x4
    80007bc0:	00000097          	auipc	ra,0x0
    80007bc4:	974080e7          	jalr	-1676(ra) # 80007534 <consputc>
    80007bc8:	fe0d12e3          	bnez	s10,80007bac <__printf+0x494>
    80007bcc:	f8dff06f          	j	80007b58 <__printf+0x440>
    80007bd0:	f7843783          	ld	a5,-136(s0)
    80007bd4:	0007bc83          	ld	s9,0(a5)
    80007bd8:	00878793          	addi	a5,a5,8
    80007bdc:	f6f43c23          	sd	a5,-136(s0)
    80007be0:	000c9a63          	bnez	s9,80007bf4 <__printf+0x4dc>
    80007be4:	1080006f          	j	80007cec <__printf+0x5d4>
    80007be8:	001c8c93          	addi	s9,s9,1
    80007bec:	00000097          	auipc	ra,0x0
    80007bf0:	948080e7          	jalr	-1720(ra) # 80007534 <consputc>
    80007bf4:	000cc503          	lbu	a0,0(s9)
    80007bf8:	fe0518e3          	bnez	a0,80007be8 <__printf+0x4d0>
    80007bfc:	f5dff06f          	j	80007b58 <__printf+0x440>
    80007c00:	02500513          	li	a0,37
    80007c04:	00000097          	auipc	ra,0x0
    80007c08:	930080e7          	jalr	-1744(ra) # 80007534 <consputc>
    80007c0c:	000c8513          	mv	a0,s9
    80007c10:	00000097          	auipc	ra,0x0
    80007c14:	924080e7          	jalr	-1756(ra) # 80007534 <consputc>
    80007c18:	f41ff06f          	j	80007b58 <__printf+0x440>
    80007c1c:	02500513          	li	a0,37
    80007c20:	00000097          	auipc	ra,0x0
    80007c24:	914080e7          	jalr	-1772(ra) # 80007534 <consputc>
    80007c28:	f31ff06f          	j	80007b58 <__printf+0x440>
    80007c2c:	00030513          	mv	a0,t1
    80007c30:	00000097          	auipc	ra,0x0
    80007c34:	7bc080e7          	jalr	1980(ra) # 800083ec <acquire>
    80007c38:	b4dff06f          	j	80007784 <__printf+0x6c>
    80007c3c:	40c0053b          	negw	a0,a2
    80007c40:	00a00713          	li	a4,10
    80007c44:	02e576bb          	remuw	a3,a0,a4
    80007c48:	00002d97          	auipc	s11,0x2
    80007c4c:	920d8d93          	addi	s11,s11,-1760 # 80009568 <digits>
    80007c50:	ff700593          	li	a1,-9
    80007c54:	02069693          	slli	a3,a3,0x20
    80007c58:	0206d693          	srli	a3,a3,0x20
    80007c5c:	00dd86b3          	add	a3,s11,a3
    80007c60:	0006c683          	lbu	a3,0(a3)
    80007c64:	02e557bb          	divuw	a5,a0,a4
    80007c68:	f8d40023          	sb	a3,-128(s0)
    80007c6c:	10b65e63          	bge	a2,a1,80007d88 <__printf+0x670>
    80007c70:	06300593          	li	a1,99
    80007c74:	02e7f6bb          	remuw	a3,a5,a4
    80007c78:	02069693          	slli	a3,a3,0x20
    80007c7c:	0206d693          	srli	a3,a3,0x20
    80007c80:	00dd86b3          	add	a3,s11,a3
    80007c84:	0006c683          	lbu	a3,0(a3)
    80007c88:	02e7d73b          	divuw	a4,a5,a4
    80007c8c:	00200793          	li	a5,2
    80007c90:	f8d400a3          	sb	a3,-127(s0)
    80007c94:	bca5ece3          	bltu	a1,a0,8000786c <__printf+0x154>
    80007c98:	ce5ff06f          	j	8000797c <__printf+0x264>
    80007c9c:	40e007bb          	negw	a5,a4
    80007ca0:	00002d97          	auipc	s11,0x2
    80007ca4:	8c8d8d93          	addi	s11,s11,-1848 # 80009568 <digits>
    80007ca8:	00f7f693          	andi	a3,a5,15
    80007cac:	00dd86b3          	add	a3,s11,a3
    80007cb0:	0006c583          	lbu	a1,0(a3)
    80007cb4:	ff100613          	li	a2,-15
    80007cb8:	0047d69b          	srliw	a3,a5,0x4
    80007cbc:	f8b40023          	sb	a1,-128(s0)
    80007cc0:	0047d59b          	srliw	a1,a5,0x4
    80007cc4:	0ac75e63          	bge	a4,a2,80007d80 <__printf+0x668>
    80007cc8:	00f6f693          	andi	a3,a3,15
    80007ccc:	00dd86b3          	add	a3,s11,a3
    80007cd0:	0006c603          	lbu	a2,0(a3)
    80007cd4:	00f00693          	li	a3,15
    80007cd8:	0087d79b          	srliw	a5,a5,0x8
    80007cdc:	f8c400a3          	sb	a2,-127(s0)
    80007ce0:	d8b6e4e3          	bltu	a3,a1,80007a68 <__printf+0x350>
    80007ce4:	00200793          	li	a5,2
    80007ce8:	e2dff06f          	j	80007b14 <__printf+0x3fc>
    80007cec:	00002c97          	auipc	s9,0x2
    80007cf0:	85cc8c93          	addi	s9,s9,-1956 # 80009548 <CONSOLE_STATUS+0x538>
    80007cf4:	02800513          	li	a0,40
    80007cf8:	ef1ff06f          	j	80007be8 <__printf+0x4d0>
    80007cfc:	00700793          	li	a5,7
    80007d00:	00600c93          	li	s9,6
    80007d04:	e0dff06f          	j	80007b10 <__printf+0x3f8>
    80007d08:	00700793          	li	a5,7
    80007d0c:	00600c93          	li	s9,6
    80007d10:	c69ff06f          	j	80007978 <__printf+0x260>
    80007d14:	00300793          	li	a5,3
    80007d18:	00200c93          	li	s9,2
    80007d1c:	c5dff06f          	j	80007978 <__printf+0x260>
    80007d20:	00300793          	li	a5,3
    80007d24:	00200c93          	li	s9,2
    80007d28:	de9ff06f          	j	80007b10 <__printf+0x3f8>
    80007d2c:	00400793          	li	a5,4
    80007d30:	00300c93          	li	s9,3
    80007d34:	dddff06f          	j	80007b10 <__printf+0x3f8>
    80007d38:	00400793          	li	a5,4
    80007d3c:	00300c93          	li	s9,3
    80007d40:	c39ff06f          	j	80007978 <__printf+0x260>
    80007d44:	00500793          	li	a5,5
    80007d48:	00400c93          	li	s9,4
    80007d4c:	c2dff06f          	j	80007978 <__printf+0x260>
    80007d50:	00500793          	li	a5,5
    80007d54:	00400c93          	li	s9,4
    80007d58:	db9ff06f          	j	80007b10 <__printf+0x3f8>
    80007d5c:	00600793          	li	a5,6
    80007d60:	00500c93          	li	s9,5
    80007d64:	dadff06f          	j	80007b10 <__printf+0x3f8>
    80007d68:	00600793          	li	a5,6
    80007d6c:	00500c93          	li	s9,5
    80007d70:	c09ff06f          	j	80007978 <__printf+0x260>
    80007d74:	00800793          	li	a5,8
    80007d78:	00700c93          	li	s9,7
    80007d7c:	bfdff06f          	j	80007978 <__printf+0x260>
    80007d80:	00100793          	li	a5,1
    80007d84:	d91ff06f          	j	80007b14 <__printf+0x3fc>
    80007d88:	00100793          	li	a5,1
    80007d8c:	bf1ff06f          	j	8000797c <__printf+0x264>
    80007d90:	00900793          	li	a5,9
    80007d94:	00800c93          	li	s9,8
    80007d98:	be1ff06f          	j	80007978 <__printf+0x260>
    80007d9c:	00001517          	auipc	a0,0x1
    80007da0:	7b450513          	addi	a0,a0,1972 # 80009550 <CONSOLE_STATUS+0x540>
    80007da4:	00000097          	auipc	ra,0x0
    80007da8:	918080e7          	jalr	-1768(ra) # 800076bc <panic>

0000000080007dac <printfinit>:
    80007dac:	fe010113          	addi	sp,sp,-32
    80007db0:	00813823          	sd	s0,16(sp)
    80007db4:	00913423          	sd	s1,8(sp)
    80007db8:	00113c23          	sd	ra,24(sp)
    80007dbc:	02010413          	addi	s0,sp,32
    80007dc0:	00005497          	auipc	s1,0x5
    80007dc4:	08048493          	addi	s1,s1,128 # 8000ce40 <pr>
    80007dc8:	00048513          	mv	a0,s1
    80007dcc:	00001597          	auipc	a1,0x1
    80007dd0:	79458593          	addi	a1,a1,1940 # 80009560 <CONSOLE_STATUS+0x550>
    80007dd4:	00000097          	auipc	ra,0x0
    80007dd8:	5f4080e7          	jalr	1524(ra) # 800083c8 <initlock>
    80007ddc:	01813083          	ld	ra,24(sp)
    80007de0:	01013403          	ld	s0,16(sp)
    80007de4:	0004ac23          	sw	zero,24(s1)
    80007de8:	00813483          	ld	s1,8(sp)
    80007dec:	02010113          	addi	sp,sp,32
    80007df0:	00008067          	ret

0000000080007df4 <uartinit>:
    80007df4:	ff010113          	addi	sp,sp,-16
    80007df8:	00813423          	sd	s0,8(sp)
    80007dfc:	01010413          	addi	s0,sp,16
    80007e00:	100007b7          	lui	a5,0x10000
    80007e04:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007e08:	f8000713          	li	a4,-128
    80007e0c:	00e781a3          	sb	a4,3(a5)
    80007e10:	00300713          	li	a4,3
    80007e14:	00e78023          	sb	a4,0(a5)
    80007e18:	000780a3          	sb	zero,1(a5)
    80007e1c:	00e781a3          	sb	a4,3(a5)
    80007e20:	00700693          	li	a3,7
    80007e24:	00d78123          	sb	a3,2(a5)
    80007e28:	00e780a3          	sb	a4,1(a5)
    80007e2c:	00813403          	ld	s0,8(sp)
    80007e30:	01010113          	addi	sp,sp,16
    80007e34:	00008067          	ret

0000000080007e38 <uartputc>:
    80007e38:	00004797          	auipc	a5,0x4
    80007e3c:	d107a783          	lw	a5,-752(a5) # 8000bb48 <panicked>
    80007e40:	00078463          	beqz	a5,80007e48 <uartputc+0x10>
    80007e44:	0000006f          	j	80007e44 <uartputc+0xc>
    80007e48:	fd010113          	addi	sp,sp,-48
    80007e4c:	02813023          	sd	s0,32(sp)
    80007e50:	00913c23          	sd	s1,24(sp)
    80007e54:	01213823          	sd	s2,16(sp)
    80007e58:	01313423          	sd	s3,8(sp)
    80007e5c:	02113423          	sd	ra,40(sp)
    80007e60:	03010413          	addi	s0,sp,48
    80007e64:	00004917          	auipc	s2,0x4
    80007e68:	cec90913          	addi	s2,s2,-788 # 8000bb50 <uart_tx_r>
    80007e6c:	00093783          	ld	a5,0(s2)
    80007e70:	00004497          	auipc	s1,0x4
    80007e74:	ce848493          	addi	s1,s1,-792 # 8000bb58 <uart_tx_w>
    80007e78:	0004b703          	ld	a4,0(s1)
    80007e7c:	02078693          	addi	a3,a5,32
    80007e80:	00050993          	mv	s3,a0
    80007e84:	02e69c63          	bne	a3,a4,80007ebc <uartputc+0x84>
    80007e88:	00001097          	auipc	ra,0x1
    80007e8c:	834080e7          	jalr	-1996(ra) # 800086bc <push_on>
    80007e90:	00093783          	ld	a5,0(s2)
    80007e94:	0004b703          	ld	a4,0(s1)
    80007e98:	02078793          	addi	a5,a5,32
    80007e9c:	00e79463          	bne	a5,a4,80007ea4 <uartputc+0x6c>
    80007ea0:	0000006f          	j	80007ea0 <uartputc+0x68>
    80007ea4:	00001097          	auipc	ra,0x1
    80007ea8:	88c080e7          	jalr	-1908(ra) # 80008730 <pop_on>
    80007eac:	00093783          	ld	a5,0(s2)
    80007eb0:	0004b703          	ld	a4,0(s1)
    80007eb4:	02078693          	addi	a3,a5,32
    80007eb8:	fce688e3          	beq	a3,a4,80007e88 <uartputc+0x50>
    80007ebc:	01f77693          	andi	a3,a4,31
    80007ec0:	00005597          	auipc	a1,0x5
    80007ec4:	fa058593          	addi	a1,a1,-96 # 8000ce60 <uart_tx_buf>
    80007ec8:	00d586b3          	add	a3,a1,a3
    80007ecc:	00170713          	addi	a4,a4,1
    80007ed0:	01368023          	sb	s3,0(a3)
    80007ed4:	00e4b023          	sd	a4,0(s1)
    80007ed8:	10000637          	lui	a2,0x10000
    80007edc:	02f71063          	bne	a4,a5,80007efc <uartputc+0xc4>
    80007ee0:	0340006f          	j	80007f14 <uartputc+0xdc>
    80007ee4:	00074703          	lbu	a4,0(a4)
    80007ee8:	00f93023          	sd	a5,0(s2)
    80007eec:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007ef0:	00093783          	ld	a5,0(s2)
    80007ef4:	0004b703          	ld	a4,0(s1)
    80007ef8:	00f70e63          	beq	a4,a5,80007f14 <uartputc+0xdc>
    80007efc:	00564683          	lbu	a3,5(a2)
    80007f00:	01f7f713          	andi	a4,a5,31
    80007f04:	00e58733          	add	a4,a1,a4
    80007f08:	0206f693          	andi	a3,a3,32
    80007f0c:	00178793          	addi	a5,a5,1
    80007f10:	fc069ae3          	bnez	a3,80007ee4 <uartputc+0xac>
    80007f14:	02813083          	ld	ra,40(sp)
    80007f18:	02013403          	ld	s0,32(sp)
    80007f1c:	01813483          	ld	s1,24(sp)
    80007f20:	01013903          	ld	s2,16(sp)
    80007f24:	00813983          	ld	s3,8(sp)
    80007f28:	03010113          	addi	sp,sp,48
    80007f2c:	00008067          	ret

0000000080007f30 <uartputc_sync>:
    80007f30:	ff010113          	addi	sp,sp,-16
    80007f34:	00813423          	sd	s0,8(sp)
    80007f38:	01010413          	addi	s0,sp,16
    80007f3c:	00004717          	auipc	a4,0x4
    80007f40:	c0c72703          	lw	a4,-1012(a4) # 8000bb48 <panicked>
    80007f44:	02071663          	bnez	a4,80007f70 <uartputc_sync+0x40>
    80007f48:	00050793          	mv	a5,a0
    80007f4c:	100006b7          	lui	a3,0x10000
    80007f50:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007f54:	02077713          	andi	a4,a4,32
    80007f58:	fe070ce3          	beqz	a4,80007f50 <uartputc_sync+0x20>
    80007f5c:	0ff7f793          	andi	a5,a5,255
    80007f60:	00f68023          	sb	a5,0(a3)
    80007f64:	00813403          	ld	s0,8(sp)
    80007f68:	01010113          	addi	sp,sp,16
    80007f6c:	00008067          	ret
    80007f70:	0000006f          	j	80007f70 <uartputc_sync+0x40>

0000000080007f74 <uartstart>:
    80007f74:	ff010113          	addi	sp,sp,-16
    80007f78:	00813423          	sd	s0,8(sp)
    80007f7c:	01010413          	addi	s0,sp,16
    80007f80:	00004617          	auipc	a2,0x4
    80007f84:	bd060613          	addi	a2,a2,-1072 # 8000bb50 <uart_tx_r>
    80007f88:	00004517          	auipc	a0,0x4
    80007f8c:	bd050513          	addi	a0,a0,-1072 # 8000bb58 <uart_tx_w>
    80007f90:	00063783          	ld	a5,0(a2)
    80007f94:	00053703          	ld	a4,0(a0)
    80007f98:	04f70263          	beq	a4,a5,80007fdc <uartstart+0x68>
    80007f9c:	100005b7          	lui	a1,0x10000
    80007fa0:	00005817          	auipc	a6,0x5
    80007fa4:	ec080813          	addi	a6,a6,-320 # 8000ce60 <uart_tx_buf>
    80007fa8:	01c0006f          	j	80007fc4 <uartstart+0x50>
    80007fac:	0006c703          	lbu	a4,0(a3)
    80007fb0:	00f63023          	sd	a5,0(a2)
    80007fb4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007fb8:	00063783          	ld	a5,0(a2)
    80007fbc:	00053703          	ld	a4,0(a0)
    80007fc0:	00f70e63          	beq	a4,a5,80007fdc <uartstart+0x68>
    80007fc4:	01f7f713          	andi	a4,a5,31
    80007fc8:	00e806b3          	add	a3,a6,a4
    80007fcc:	0055c703          	lbu	a4,5(a1)
    80007fd0:	00178793          	addi	a5,a5,1
    80007fd4:	02077713          	andi	a4,a4,32
    80007fd8:	fc071ae3          	bnez	a4,80007fac <uartstart+0x38>
    80007fdc:	00813403          	ld	s0,8(sp)
    80007fe0:	01010113          	addi	sp,sp,16
    80007fe4:	00008067          	ret

0000000080007fe8 <uartgetc>:
    80007fe8:	ff010113          	addi	sp,sp,-16
    80007fec:	00813423          	sd	s0,8(sp)
    80007ff0:	01010413          	addi	s0,sp,16
    80007ff4:	10000737          	lui	a4,0x10000
    80007ff8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80007ffc:	0017f793          	andi	a5,a5,1
    80008000:	00078c63          	beqz	a5,80008018 <uartgetc+0x30>
    80008004:	00074503          	lbu	a0,0(a4)
    80008008:	0ff57513          	andi	a0,a0,255
    8000800c:	00813403          	ld	s0,8(sp)
    80008010:	01010113          	addi	sp,sp,16
    80008014:	00008067          	ret
    80008018:	fff00513          	li	a0,-1
    8000801c:	ff1ff06f          	j	8000800c <uartgetc+0x24>

0000000080008020 <uartintr>:
    80008020:	100007b7          	lui	a5,0x10000
    80008024:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80008028:	0017f793          	andi	a5,a5,1
    8000802c:	0a078463          	beqz	a5,800080d4 <uartintr+0xb4>
    80008030:	fe010113          	addi	sp,sp,-32
    80008034:	00813823          	sd	s0,16(sp)
    80008038:	00913423          	sd	s1,8(sp)
    8000803c:	00113c23          	sd	ra,24(sp)
    80008040:	02010413          	addi	s0,sp,32
    80008044:	100004b7          	lui	s1,0x10000
    80008048:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000804c:	0ff57513          	andi	a0,a0,255
    80008050:	fffff097          	auipc	ra,0xfffff
    80008054:	534080e7          	jalr	1332(ra) # 80007584 <consoleintr>
    80008058:	0054c783          	lbu	a5,5(s1)
    8000805c:	0017f793          	andi	a5,a5,1
    80008060:	fe0794e3          	bnez	a5,80008048 <uartintr+0x28>
    80008064:	00004617          	auipc	a2,0x4
    80008068:	aec60613          	addi	a2,a2,-1300 # 8000bb50 <uart_tx_r>
    8000806c:	00004517          	auipc	a0,0x4
    80008070:	aec50513          	addi	a0,a0,-1300 # 8000bb58 <uart_tx_w>
    80008074:	00063783          	ld	a5,0(a2)
    80008078:	00053703          	ld	a4,0(a0)
    8000807c:	04f70263          	beq	a4,a5,800080c0 <uartintr+0xa0>
    80008080:	100005b7          	lui	a1,0x10000
    80008084:	00005817          	auipc	a6,0x5
    80008088:	ddc80813          	addi	a6,a6,-548 # 8000ce60 <uart_tx_buf>
    8000808c:	01c0006f          	j	800080a8 <uartintr+0x88>
    80008090:	0006c703          	lbu	a4,0(a3)
    80008094:	00f63023          	sd	a5,0(a2)
    80008098:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000809c:	00063783          	ld	a5,0(a2)
    800080a0:	00053703          	ld	a4,0(a0)
    800080a4:	00f70e63          	beq	a4,a5,800080c0 <uartintr+0xa0>
    800080a8:	01f7f713          	andi	a4,a5,31
    800080ac:	00e806b3          	add	a3,a6,a4
    800080b0:	0055c703          	lbu	a4,5(a1)
    800080b4:	00178793          	addi	a5,a5,1
    800080b8:	02077713          	andi	a4,a4,32
    800080bc:	fc071ae3          	bnez	a4,80008090 <uartintr+0x70>
    800080c0:	01813083          	ld	ra,24(sp)
    800080c4:	01013403          	ld	s0,16(sp)
    800080c8:	00813483          	ld	s1,8(sp)
    800080cc:	02010113          	addi	sp,sp,32
    800080d0:	00008067          	ret
    800080d4:	00004617          	auipc	a2,0x4
    800080d8:	a7c60613          	addi	a2,a2,-1412 # 8000bb50 <uart_tx_r>
    800080dc:	00004517          	auipc	a0,0x4
    800080e0:	a7c50513          	addi	a0,a0,-1412 # 8000bb58 <uart_tx_w>
    800080e4:	00063783          	ld	a5,0(a2)
    800080e8:	00053703          	ld	a4,0(a0)
    800080ec:	04f70263          	beq	a4,a5,80008130 <uartintr+0x110>
    800080f0:	100005b7          	lui	a1,0x10000
    800080f4:	00005817          	auipc	a6,0x5
    800080f8:	d6c80813          	addi	a6,a6,-660 # 8000ce60 <uart_tx_buf>
    800080fc:	01c0006f          	j	80008118 <uartintr+0xf8>
    80008100:	0006c703          	lbu	a4,0(a3)
    80008104:	00f63023          	sd	a5,0(a2)
    80008108:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000810c:	00063783          	ld	a5,0(a2)
    80008110:	00053703          	ld	a4,0(a0)
    80008114:	02f70063          	beq	a4,a5,80008134 <uartintr+0x114>
    80008118:	01f7f713          	andi	a4,a5,31
    8000811c:	00e806b3          	add	a3,a6,a4
    80008120:	0055c703          	lbu	a4,5(a1)
    80008124:	00178793          	addi	a5,a5,1
    80008128:	02077713          	andi	a4,a4,32
    8000812c:	fc071ae3          	bnez	a4,80008100 <uartintr+0xe0>
    80008130:	00008067          	ret
    80008134:	00008067          	ret

0000000080008138 <kinit>:
    80008138:	fc010113          	addi	sp,sp,-64
    8000813c:	02913423          	sd	s1,40(sp)
    80008140:	fffff7b7          	lui	a5,0xfffff
    80008144:	00006497          	auipc	s1,0x6
    80008148:	d3b48493          	addi	s1,s1,-709 # 8000de7f <end+0xfff>
    8000814c:	02813823          	sd	s0,48(sp)
    80008150:	01313c23          	sd	s3,24(sp)
    80008154:	00f4f4b3          	and	s1,s1,a5
    80008158:	02113c23          	sd	ra,56(sp)
    8000815c:	03213023          	sd	s2,32(sp)
    80008160:	01413823          	sd	s4,16(sp)
    80008164:	01513423          	sd	s5,8(sp)
    80008168:	04010413          	addi	s0,sp,64
    8000816c:	000017b7          	lui	a5,0x1
    80008170:	01100993          	li	s3,17
    80008174:	00f487b3          	add	a5,s1,a5
    80008178:	01b99993          	slli	s3,s3,0x1b
    8000817c:	06f9e063          	bltu	s3,a5,800081dc <kinit+0xa4>
    80008180:	00005a97          	auipc	s5,0x5
    80008184:	d00a8a93          	addi	s5,s5,-768 # 8000ce80 <end>
    80008188:	0754ec63          	bltu	s1,s5,80008200 <kinit+0xc8>
    8000818c:	0734fa63          	bgeu	s1,s3,80008200 <kinit+0xc8>
    80008190:	00088a37          	lui	s4,0x88
    80008194:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80008198:	00004917          	auipc	s2,0x4
    8000819c:	9c890913          	addi	s2,s2,-1592 # 8000bb60 <kmem>
    800081a0:	00ca1a13          	slli	s4,s4,0xc
    800081a4:	0140006f          	j	800081b8 <kinit+0x80>
    800081a8:	000017b7          	lui	a5,0x1
    800081ac:	00f484b3          	add	s1,s1,a5
    800081b0:	0554e863          	bltu	s1,s5,80008200 <kinit+0xc8>
    800081b4:	0534f663          	bgeu	s1,s3,80008200 <kinit+0xc8>
    800081b8:	00001637          	lui	a2,0x1
    800081bc:	00100593          	li	a1,1
    800081c0:	00048513          	mv	a0,s1
    800081c4:	00000097          	auipc	ra,0x0
    800081c8:	5e4080e7          	jalr	1508(ra) # 800087a8 <__memset>
    800081cc:	00093783          	ld	a5,0(s2)
    800081d0:	00f4b023          	sd	a5,0(s1)
    800081d4:	00993023          	sd	s1,0(s2)
    800081d8:	fd4498e3          	bne	s1,s4,800081a8 <kinit+0x70>
    800081dc:	03813083          	ld	ra,56(sp)
    800081e0:	03013403          	ld	s0,48(sp)
    800081e4:	02813483          	ld	s1,40(sp)
    800081e8:	02013903          	ld	s2,32(sp)
    800081ec:	01813983          	ld	s3,24(sp)
    800081f0:	01013a03          	ld	s4,16(sp)
    800081f4:	00813a83          	ld	s5,8(sp)
    800081f8:	04010113          	addi	sp,sp,64
    800081fc:	00008067          	ret
    80008200:	00001517          	auipc	a0,0x1
    80008204:	38050513          	addi	a0,a0,896 # 80009580 <digits+0x18>
    80008208:	fffff097          	auipc	ra,0xfffff
    8000820c:	4b4080e7          	jalr	1204(ra) # 800076bc <panic>

0000000080008210 <freerange>:
    80008210:	fc010113          	addi	sp,sp,-64
    80008214:	000017b7          	lui	a5,0x1
    80008218:	02913423          	sd	s1,40(sp)
    8000821c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80008220:	009504b3          	add	s1,a0,s1
    80008224:	fffff537          	lui	a0,0xfffff
    80008228:	02813823          	sd	s0,48(sp)
    8000822c:	02113c23          	sd	ra,56(sp)
    80008230:	03213023          	sd	s2,32(sp)
    80008234:	01313c23          	sd	s3,24(sp)
    80008238:	01413823          	sd	s4,16(sp)
    8000823c:	01513423          	sd	s5,8(sp)
    80008240:	01613023          	sd	s6,0(sp)
    80008244:	04010413          	addi	s0,sp,64
    80008248:	00a4f4b3          	and	s1,s1,a0
    8000824c:	00f487b3          	add	a5,s1,a5
    80008250:	06f5e463          	bltu	a1,a5,800082b8 <freerange+0xa8>
    80008254:	00005a97          	auipc	s5,0x5
    80008258:	c2ca8a93          	addi	s5,s5,-980 # 8000ce80 <end>
    8000825c:	0954e263          	bltu	s1,s5,800082e0 <freerange+0xd0>
    80008260:	01100993          	li	s3,17
    80008264:	01b99993          	slli	s3,s3,0x1b
    80008268:	0734fc63          	bgeu	s1,s3,800082e0 <freerange+0xd0>
    8000826c:	00058a13          	mv	s4,a1
    80008270:	00004917          	auipc	s2,0x4
    80008274:	8f090913          	addi	s2,s2,-1808 # 8000bb60 <kmem>
    80008278:	00002b37          	lui	s6,0x2
    8000827c:	0140006f          	j	80008290 <freerange+0x80>
    80008280:	000017b7          	lui	a5,0x1
    80008284:	00f484b3          	add	s1,s1,a5
    80008288:	0554ec63          	bltu	s1,s5,800082e0 <freerange+0xd0>
    8000828c:	0534fa63          	bgeu	s1,s3,800082e0 <freerange+0xd0>
    80008290:	00001637          	lui	a2,0x1
    80008294:	00100593          	li	a1,1
    80008298:	00048513          	mv	a0,s1
    8000829c:	00000097          	auipc	ra,0x0
    800082a0:	50c080e7          	jalr	1292(ra) # 800087a8 <__memset>
    800082a4:	00093703          	ld	a4,0(s2)
    800082a8:	016487b3          	add	a5,s1,s6
    800082ac:	00e4b023          	sd	a4,0(s1)
    800082b0:	00993023          	sd	s1,0(s2)
    800082b4:	fcfa76e3          	bgeu	s4,a5,80008280 <freerange+0x70>
    800082b8:	03813083          	ld	ra,56(sp)
    800082bc:	03013403          	ld	s0,48(sp)
    800082c0:	02813483          	ld	s1,40(sp)
    800082c4:	02013903          	ld	s2,32(sp)
    800082c8:	01813983          	ld	s3,24(sp)
    800082cc:	01013a03          	ld	s4,16(sp)
    800082d0:	00813a83          	ld	s5,8(sp)
    800082d4:	00013b03          	ld	s6,0(sp)
    800082d8:	04010113          	addi	sp,sp,64
    800082dc:	00008067          	ret
    800082e0:	00001517          	auipc	a0,0x1
    800082e4:	2a050513          	addi	a0,a0,672 # 80009580 <digits+0x18>
    800082e8:	fffff097          	auipc	ra,0xfffff
    800082ec:	3d4080e7          	jalr	980(ra) # 800076bc <panic>

00000000800082f0 <kfree>:
    800082f0:	fe010113          	addi	sp,sp,-32
    800082f4:	00813823          	sd	s0,16(sp)
    800082f8:	00113c23          	sd	ra,24(sp)
    800082fc:	00913423          	sd	s1,8(sp)
    80008300:	02010413          	addi	s0,sp,32
    80008304:	03451793          	slli	a5,a0,0x34
    80008308:	04079c63          	bnez	a5,80008360 <kfree+0x70>
    8000830c:	00005797          	auipc	a5,0x5
    80008310:	b7478793          	addi	a5,a5,-1164 # 8000ce80 <end>
    80008314:	00050493          	mv	s1,a0
    80008318:	04f56463          	bltu	a0,a5,80008360 <kfree+0x70>
    8000831c:	01100793          	li	a5,17
    80008320:	01b79793          	slli	a5,a5,0x1b
    80008324:	02f57e63          	bgeu	a0,a5,80008360 <kfree+0x70>
    80008328:	00001637          	lui	a2,0x1
    8000832c:	00100593          	li	a1,1
    80008330:	00000097          	auipc	ra,0x0
    80008334:	478080e7          	jalr	1144(ra) # 800087a8 <__memset>
    80008338:	00004797          	auipc	a5,0x4
    8000833c:	82878793          	addi	a5,a5,-2008 # 8000bb60 <kmem>
    80008340:	0007b703          	ld	a4,0(a5)
    80008344:	01813083          	ld	ra,24(sp)
    80008348:	01013403          	ld	s0,16(sp)
    8000834c:	00e4b023          	sd	a4,0(s1)
    80008350:	0097b023          	sd	s1,0(a5)
    80008354:	00813483          	ld	s1,8(sp)
    80008358:	02010113          	addi	sp,sp,32
    8000835c:	00008067          	ret
    80008360:	00001517          	auipc	a0,0x1
    80008364:	22050513          	addi	a0,a0,544 # 80009580 <digits+0x18>
    80008368:	fffff097          	auipc	ra,0xfffff
    8000836c:	354080e7          	jalr	852(ra) # 800076bc <panic>

0000000080008370 <kalloc>:
    80008370:	fe010113          	addi	sp,sp,-32
    80008374:	00813823          	sd	s0,16(sp)
    80008378:	00913423          	sd	s1,8(sp)
    8000837c:	00113c23          	sd	ra,24(sp)
    80008380:	02010413          	addi	s0,sp,32
    80008384:	00003797          	auipc	a5,0x3
    80008388:	7dc78793          	addi	a5,a5,2012 # 8000bb60 <kmem>
    8000838c:	0007b483          	ld	s1,0(a5)
    80008390:	02048063          	beqz	s1,800083b0 <kalloc+0x40>
    80008394:	0004b703          	ld	a4,0(s1)
    80008398:	00001637          	lui	a2,0x1
    8000839c:	00500593          	li	a1,5
    800083a0:	00048513          	mv	a0,s1
    800083a4:	00e7b023          	sd	a4,0(a5)
    800083a8:	00000097          	auipc	ra,0x0
    800083ac:	400080e7          	jalr	1024(ra) # 800087a8 <__memset>
    800083b0:	01813083          	ld	ra,24(sp)
    800083b4:	01013403          	ld	s0,16(sp)
    800083b8:	00048513          	mv	a0,s1
    800083bc:	00813483          	ld	s1,8(sp)
    800083c0:	02010113          	addi	sp,sp,32
    800083c4:	00008067          	ret

00000000800083c8 <initlock>:
    800083c8:	ff010113          	addi	sp,sp,-16
    800083cc:	00813423          	sd	s0,8(sp)
    800083d0:	01010413          	addi	s0,sp,16
    800083d4:	00813403          	ld	s0,8(sp)
    800083d8:	00b53423          	sd	a1,8(a0)
    800083dc:	00052023          	sw	zero,0(a0)
    800083e0:	00053823          	sd	zero,16(a0)
    800083e4:	01010113          	addi	sp,sp,16
    800083e8:	00008067          	ret

00000000800083ec <acquire>:
    800083ec:	fe010113          	addi	sp,sp,-32
    800083f0:	00813823          	sd	s0,16(sp)
    800083f4:	00913423          	sd	s1,8(sp)
    800083f8:	00113c23          	sd	ra,24(sp)
    800083fc:	01213023          	sd	s2,0(sp)
    80008400:	02010413          	addi	s0,sp,32
    80008404:	00050493          	mv	s1,a0
    80008408:	10002973          	csrr	s2,sstatus
    8000840c:	100027f3          	csrr	a5,sstatus
    80008410:	ffd7f793          	andi	a5,a5,-3
    80008414:	10079073          	csrw	sstatus,a5
    80008418:	fffff097          	auipc	ra,0xfffff
    8000841c:	8e0080e7          	jalr	-1824(ra) # 80006cf8 <mycpu>
    80008420:	07852783          	lw	a5,120(a0)
    80008424:	06078e63          	beqz	a5,800084a0 <acquire+0xb4>
    80008428:	fffff097          	auipc	ra,0xfffff
    8000842c:	8d0080e7          	jalr	-1840(ra) # 80006cf8 <mycpu>
    80008430:	07852783          	lw	a5,120(a0)
    80008434:	0004a703          	lw	a4,0(s1)
    80008438:	0017879b          	addiw	a5,a5,1
    8000843c:	06f52c23          	sw	a5,120(a0)
    80008440:	04071063          	bnez	a4,80008480 <acquire+0x94>
    80008444:	00100713          	li	a4,1
    80008448:	00070793          	mv	a5,a4
    8000844c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008450:	0007879b          	sext.w	a5,a5
    80008454:	fe079ae3          	bnez	a5,80008448 <acquire+0x5c>
    80008458:	0ff0000f          	fence
    8000845c:	fffff097          	auipc	ra,0xfffff
    80008460:	89c080e7          	jalr	-1892(ra) # 80006cf8 <mycpu>
    80008464:	01813083          	ld	ra,24(sp)
    80008468:	01013403          	ld	s0,16(sp)
    8000846c:	00a4b823          	sd	a0,16(s1)
    80008470:	00013903          	ld	s2,0(sp)
    80008474:	00813483          	ld	s1,8(sp)
    80008478:	02010113          	addi	sp,sp,32
    8000847c:	00008067          	ret
    80008480:	0104b903          	ld	s2,16(s1)
    80008484:	fffff097          	auipc	ra,0xfffff
    80008488:	874080e7          	jalr	-1932(ra) # 80006cf8 <mycpu>
    8000848c:	faa91ce3          	bne	s2,a0,80008444 <acquire+0x58>
    80008490:	00001517          	auipc	a0,0x1
    80008494:	0f850513          	addi	a0,a0,248 # 80009588 <digits+0x20>
    80008498:	fffff097          	auipc	ra,0xfffff
    8000849c:	224080e7          	jalr	548(ra) # 800076bc <panic>
    800084a0:	00195913          	srli	s2,s2,0x1
    800084a4:	fffff097          	auipc	ra,0xfffff
    800084a8:	854080e7          	jalr	-1964(ra) # 80006cf8 <mycpu>
    800084ac:	00197913          	andi	s2,s2,1
    800084b0:	07252e23          	sw	s2,124(a0)
    800084b4:	f75ff06f          	j	80008428 <acquire+0x3c>

00000000800084b8 <release>:
    800084b8:	fe010113          	addi	sp,sp,-32
    800084bc:	00813823          	sd	s0,16(sp)
    800084c0:	00113c23          	sd	ra,24(sp)
    800084c4:	00913423          	sd	s1,8(sp)
    800084c8:	01213023          	sd	s2,0(sp)
    800084cc:	02010413          	addi	s0,sp,32
    800084d0:	00052783          	lw	a5,0(a0)
    800084d4:	00079a63          	bnez	a5,800084e8 <release+0x30>
    800084d8:	00001517          	auipc	a0,0x1
    800084dc:	0b850513          	addi	a0,a0,184 # 80009590 <digits+0x28>
    800084e0:	fffff097          	auipc	ra,0xfffff
    800084e4:	1dc080e7          	jalr	476(ra) # 800076bc <panic>
    800084e8:	01053903          	ld	s2,16(a0)
    800084ec:	00050493          	mv	s1,a0
    800084f0:	fffff097          	auipc	ra,0xfffff
    800084f4:	808080e7          	jalr	-2040(ra) # 80006cf8 <mycpu>
    800084f8:	fea910e3          	bne	s2,a0,800084d8 <release+0x20>
    800084fc:	0004b823          	sd	zero,16(s1)
    80008500:	0ff0000f          	fence
    80008504:	0f50000f          	fence	iorw,ow
    80008508:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000850c:	ffffe097          	auipc	ra,0xffffe
    80008510:	7ec080e7          	jalr	2028(ra) # 80006cf8 <mycpu>
    80008514:	100027f3          	csrr	a5,sstatus
    80008518:	0027f793          	andi	a5,a5,2
    8000851c:	04079a63          	bnez	a5,80008570 <release+0xb8>
    80008520:	07852783          	lw	a5,120(a0)
    80008524:	02f05e63          	blez	a5,80008560 <release+0xa8>
    80008528:	fff7871b          	addiw	a4,a5,-1
    8000852c:	06e52c23          	sw	a4,120(a0)
    80008530:	00071c63          	bnez	a4,80008548 <release+0x90>
    80008534:	07c52783          	lw	a5,124(a0)
    80008538:	00078863          	beqz	a5,80008548 <release+0x90>
    8000853c:	100027f3          	csrr	a5,sstatus
    80008540:	0027e793          	ori	a5,a5,2
    80008544:	10079073          	csrw	sstatus,a5
    80008548:	01813083          	ld	ra,24(sp)
    8000854c:	01013403          	ld	s0,16(sp)
    80008550:	00813483          	ld	s1,8(sp)
    80008554:	00013903          	ld	s2,0(sp)
    80008558:	02010113          	addi	sp,sp,32
    8000855c:	00008067          	ret
    80008560:	00001517          	auipc	a0,0x1
    80008564:	05050513          	addi	a0,a0,80 # 800095b0 <digits+0x48>
    80008568:	fffff097          	auipc	ra,0xfffff
    8000856c:	154080e7          	jalr	340(ra) # 800076bc <panic>
    80008570:	00001517          	auipc	a0,0x1
    80008574:	02850513          	addi	a0,a0,40 # 80009598 <digits+0x30>
    80008578:	fffff097          	auipc	ra,0xfffff
    8000857c:	144080e7          	jalr	324(ra) # 800076bc <panic>

0000000080008580 <holding>:
    80008580:	00052783          	lw	a5,0(a0)
    80008584:	00079663          	bnez	a5,80008590 <holding+0x10>
    80008588:	00000513          	li	a0,0
    8000858c:	00008067          	ret
    80008590:	fe010113          	addi	sp,sp,-32
    80008594:	00813823          	sd	s0,16(sp)
    80008598:	00913423          	sd	s1,8(sp)
    8000859c:	00113c23          	sd	ra,24(sp)
    800085a0:	02010413          	addi	s0,sp,32
    800085a4:	01053483          	ld	s1,16(a0)
    800085a8:	ffffe097          	auipc	ra,0xffffe
    800085ac:	750080e7          	jalr	1872(ra) # 80006cf8 <mycpu>
    800085b0:	01813083          	ld	ra,24(sp)
    800085b4:	01013403          	ld	s0,16(sp)
    800085b8:	40a48533          	sub	a0,s1,a0
    800085bc:	00153513          	seqz	a0,a0
    800085c0:	00813483          	ld	s1,8(sp)
    800085c4:	02010113          	addi	sp,sp,32
    800085c8:	00008067          	ret

00000000800085cc <push_off>:
    800085cc:	fe010113          	addi	sp,sp,-32
    800085d0:	00813823          	sd	s0,16(sp)
    800085d4:	00113c23          	sd	ra,24(sp)
    800085d8:	00913423          	sd	s1,8(sp)
    800085dc:	02010413          	addi	s0,sp,32
    800085e0:	100024f3          	csrr	s1,sstatus
    800085e4:	100027f3          	csrr	a5,sstatus
    800085e8:	ffd7f793          	andi	a5,a5,-3
    800085ec:	10079073          	csrw	sstatus,a5
    800085f0:	ffffe097          	auipc	ra,0xffffe
    800085f4:	708080e7          	jalr	1800(ra) # 80006cf8 <mycpu>
    800085f8:	07852783          	lw	a5,120(a0)
    800085fc:	02078663          	beqz	a5,80008628 <push_off+0x5c>
    80008600:	ffffe097          	auipc	ra,0xffffe
    80008604:	6f8080e7          	jalr	1784(ra) # 80006cf8 <mycpu>
    80008608:	07852783          	lw	a5,120(a0)
    8000860c:	01813083          	ld	ra,24(sp)
    80008610:	01013403          	ld	s0,16(sp)
    80008614:	0017879b          	addiw	a5,a5,1
    80008618:	06f52c23          	sw	a5,120(a0)
    8000861c:	00813483          	ld	s1,8(sp)
    80008620:	02010113          	addi	sp,sp,32
    80008624:	00008067          	ret
    80008628:	0014d493          	srli	s1,s1,0x1
    8000862c:	ffffe097          	auipc	ra,0xffffe
    80008630:	6cc080e7          	jalr	1740(ra) # 80006cf8 <mycpu>
    80008634:	0014f493          	andi	s1,s1,1
    80008638:	06952e23          	sw	s1,124(a0)
    8000863c:	fc5ff06f          	j	80008600 <push_off+0x34>

0000000080008640 <pop_off>:
    80008640:	ff010113          	addi	sp,sp,-16
    80008644:	00813023          	sd	s0,0(sp)
    80008648:	00113423          	sd	ra,8(sp)
    8000864c:	01010413          	addi	s0,sp,16
    80008650:	ffffe097          	auipc	ra,0xffffe
    80008654:	6a8080e7          	jalr	1704(ra) # 80006cf8 <mycpu>
    80008658:	100027f3          	csrr	a5,sstatus
    8000865c:	0027f793          	andi	a5,a5,2
    80008660:	04079663          	bnez	a5,800086ac <pop_off+0x6c>
    80008664:	07852783          	lw	a5,120(a0)
    80008668:	02f05a63          	blez	a5,8000869c <pop_off+0x5c>
    8000866c:	fff7871b          	addiw	a4,a5,-1
    80008670:	06e52c23          	sw	a4,120(a0)
    80008674:	00071c63          	bnez	a4,8000868c <pop_off+0x4c>
    80008678:	07c52783          	lw	a5,124(a0)
    8000867c:	00078863          	beqz	a5,8000868c <pop_off+0x4c>
    80008680:	100027f3          	csrr	a5,sstatus
    80008684:	0027e793          	ori	a5,a5,2
    80008688:	10079073          	csrw	sstatus,a5
    8000868c:	00813083          	ld	ra,8(sp)
    80008690:	00013403          	ld	s0,0(sp)
    80008694:	01010113          	addi	sp,sp,16
    80008698:	00008067          	ret
    8000869c:	00001517          	auipc	a0,0x1
    800086a0:	f1450513          	addi	a0,a0,-236 # 800095b0 <digits+0x48>
    800086a4:	fffff097          	auipc	ra,0xfffff
    800086a8:	018080e7          	jalr	24(ra) # 800076bc <panic>
    800086ac:	00001517          	auipc	a0,0x1
    800086b0:	eec50513          	addi	a0,a0,-276 # 80009598 <digits+0x30>
    800086b4:	fffff097          	auipc	ra,0xfffff
    800086b8:	008080e7          	jalr	8(ra) # 800076bc <panic>

00000000800086bc <push_on>:
    800086bc:	fe010113          	addi	sp,sp,-32
    800086c0:	00813823          	sd	s0,16(sp)
    800086c4:	00113c23          	sd	ra,24(sp)
    800086c8:	00913423          	sd	s1,8(sp)
    800086cc:	02010413          	addi	s0,sp,32
    800086d0:	100024f3          	csrr	s1,sstatus
    800086d4:	100027f3          	csrr	a5,sstatus
    800086d8:	0027e793          	ori	a5,a5,2
    800086dc:	10079073          	csrw	sstatus,a5
    800086e0:	ffffe097          	auipc	ra,0xffffe
    800086e4:	618080e7          	jalr	1560(ra) # 80006cf8 <mycpu>
    800086e8:	07852783          	lw	a5,120(a0)
    800086ec:	02078663          	beqz	a5,80008718 <push_on+0x5c>
    800086f0:	ffffe097          	auipc	ra,0xffffe
    800086f4:	608080e7          	jalr	1544(ra) # 80006cf8 <mycpu>
    800086f8:	07852783          	lw	a5,120(a0)
    800086fc:	01813083          	ld	ra,24(sp)
    80008700:	01013403          	ld	s0,16(sp)
    80008704:	0017879b          	addiw	a5,a5,1
    80008708:	06f52c23          	sw	a5,120(a0)
    8000870c:	00813483          	ld	s1,8(sp)
    80008710:	02010113          	addi	sp,sp,32
    80008714:	00008067          	ret
    80008718:	0014d493          	srli	s1,s1,0x1
    8000871c:	ffffe097          	auipc	ra,0xffffe
    80008720:	5dc080e7          	jalr	1500(ra) # 80006cf8 <mycpu>
    80008724:	0014f493          	andi	s1,s1,1
    80008728:	06952e23          	sw	s1,124(a0)
    8000872c:	fc5ff06f          	j	800086f0 <push_on+0x34>

0000000080008730 <pop_on>:
    80008730:	ff010113          	addi	sp,sp,-16
    80008734:	00813023          	sd	s0,0(sp)
    80008738:	00113423          	sd	ra,8(sp)
    8000873c:	01010413          	addi	s0,sp,16
    80008740:	ffffe097          	auipc	ra,0xffffe
    80008744:	5b8080e7          	jalr	1464(ra) # 80006cf8 <mycpu>
    80008748:	100027f3          	csrr	a5,sstatus
    8000874c:	0027f793          	andi	a5,a5,2
    80008750:	04078463          	beqz	a5,80008798 <pop_on+0x68>
    80008754:	07852783          	lw	a5,120(a0)
    80008758:	02f05863          	blez	a5,80008788 <pop_on+0x58>
    8000875c:	fff7879b          	addiw	a5,a5,-1
    80008760:	06f52c23          	sw	a5,120(a0)
    80008764:	07853783          	ld	a5,120(a0)
    80008768:	00079863          	bnez	a5,80008778 <pop_on+0x48>
    8000876c:	100027f3          	csrr	a5,sstatus
    80008770:	ffd7f793          	andi	a5,a5,-3
    80008774:	10079073          	csrw	sstatus,a5
    80008778:	00813083          	ld	ra,8(sp)
    8000877c:	00013403          	ld	s0,0(sp)
    80008780:	01010113          	addi	sp,sp,16
    80008784:	00008067          	ret
    80008788:	00001517          	auipc	a0,0x1
    8000878c:	e5050513          	addi	a0,a0,-432 # 800095d8 <digits+0x70>
    80008790:	fffff097          	auipc	ra,0xfffff
    80008794:	f2c080e7          	jalr	-212(ra) # 800076bc <panic>
    80008798:	00001517          	auipc	a0,0x1
    8000879c:	e2050513          	addi	a0,a0,-480 # 800095b8 <digits+0x50>
    800087a0:	fffff097          	auipc	ra,0xfffff
    800087a4:	f1c080e7          	jalr	-228(ra) # 800076bc <panic>

00000000800087a8 <__memset>:
    800087a8:	ff010113          	addi	sp,sp,-16
    800087ac:	00813423          	sd	s0,8(sp)
    800087b0:	01010413          	addi	s0,sp,16
    800087b4:	1a060e63          	beqz	a2,80008970 <__memset+0x1c8>
    800087b8:	40a007b3          	neg	a5,a0
    800087bc:	0077f793          	andi	a5,a5,7
    800087c0:	00778693          	addi	a3,a5,7
    800087c4:	00b00813          	li	a6,11
    800087c8:	0ff5f593          	andi	a1,a1,255
    800087cc:	fff6071b          	addiw	a4,a2,-1
    800087d0:	1b06e663          	bltu	a3,a6,8000897c <__memset+0x1d4>
    800087d4:	1cd76463          	bltu	a4,a3,8000899c <__memset+0x1f4>
    800087d8:	1a078e63          	beqz	a5,80008994 <__memset+0x1ec>
    800087dc:	00b50023          	sb	a1,0(a0)
    800087e0:	00100713          	li	a4,1
    800087e4:	1ae78463          	beq	a5,a4,8000898c <__memset+0x1e4>
    800087e8:	00b500a3          	sb	a1,1(a0)
    800087ec:	00200713          	li	a4,2
    800087f0:	1ae78a63          	beq	a5,a4,800089a4 <__memset+0x1fc>
    800087f4:	00b50123          	sb	a1,2(a0)
    800087f8:	00300713          	li	a4,3
    800087fc:	18e78463          	beq	a5,a4,80008984 <__memset+0x1dc>
    80008800:	00b501a3          	sb	a1,3(a0)
    80008804:	00400713          	li	a4,4
    80008808:	1ae78263          	beq	a5,a4,800089ac <__memset+0x204>
    8000880c:	00b50223          	sb	a1,4(a0)
    80008810:	00500713          	li	a4,5
    80008814:	1ae78063          	beq	a5,a4,800089b4 <__memset+0x20c>
    80008818:	00b502a3          	sb	a1,5(a0)
    8000881c:	00700713          	li	a4,7
    80008820:	18e79e63          	bne	a5,a4,800089bc <__memset+0x214>
    80008824:	00b50323          	sb	a1,6(a0)
    80008828:	00700e93          	li	t4,7
    8000882c:	00859713          	slli	a4,a1,0x8
    80008830:	00e5e733          	or	a4,a1,a4
    80008834:	01059e13          	slli	t3,a1,0x10
    80008838:	01c76e33          	or	t3,a4,t3
    8000883c:	01859313          	slli	t1,a1,0x18
    80008840:	006e6333          	or	t1,t3,t1
    80008844:	02059893          	slli	a7,a1,0x20
    80008848:	40f60e3b          	subw	t3,a2,a5
    8000884c:	011368b3          	or	a7,t1,a7
    80008850:	02859813          	slli	a6,a1,0x28
    80008854:	0108e833          	or	a6,a7,a6
    80008858:	03059693          	slli	a3,a1,0x30
    8000885c:	003e589b          	srliw	a7,t3,0x3
    80008860:	00d866b3          	or	a3,a6,a3
    80008864:	03859713          	slli	a4,a1,0x38
    80008868:	00389813          	slli	a6,a7,0x3
    8000886c:	00f507b3          	add	a5,a0,a5
    80008870:	00e6e733          	or	a4,a3,a4
    80008874:	000e089b          	sext.w	a7,t3
    80008878:	00f806b3          	add	a3,a6,a5
    8000887c:	00e7b023          	sd	a4,0(a5)
    80008880:	00878793          	addi	a5,a5,8
    80008884:	fed79ce3          	bne	a5,a3,8000887c <__memset+0xd4>
    80008888:	ff8e7793          	andi	a5,t3,-8
    8000888c:	0007871b          	sext.w	a4,a5
    80008890:	01d787bb          	addw	a5,a5,t4
    80008894:	0ce88e63          	beq	a7,a4,80008970 <__memset+0x1c8>
    80008898:	00f50733          	add	a4,a0,a5
    8000889c:	00b70023          	sb	a1,0(a4)
    800088a0:	0017871b          	addiw	a4,a5,1
    800088a4:	0cc77663          	bgeu	a4,a2,80008970 <__memset+0x1c8>
    800088a8:	00e50733          	add	a4,a0,a4
    800088ac:	00b70023          	sb	a1,0(a4)
    800088b0:	0027871b          	addiw	a4,a5,2
    800088b4:	0ac77e63          	bgeu	a4,a2,80008970 <__memset+0x1c8>
    800088b8:	00e50733          	add	a4,a0,a4
    800088bc:	00b70023          	sb	a1,0(a4)
    800088c0:	0037871b          	addiw	a4,a5,3
    800088c4:	0ac77663          	bgeu	a4,a2,80008970 <__memset+0x1c8>
    800088c8:	00e50733          	add	a4,a0,a4
    800088cc:	00b70023          	sb	a1,0(a4)
    800088d0:	0047871b          	addiw	a4,a5,4
    800088d4:	08c77e63          	bgeu	a4,a2,80008970 <__memset+0x1c8>
    800088d8:	00e50733          	add	a4,a0,a4
    800088dc:	00b70023          	sb	a1,0(a4)
    800088e0:	0057871b          	addiw	a4,a5,5
    800088e4:	08c77663          	bgeu	a4,a2,80008970 <__memset+0x1c8>
    800088e8:	00e50733          	add	a4,a0,a4
    800088ec:	00b70023          	sb	a1,0(a4)
    800088f0:	0067871b          	addiw	a4,a5,6
    800088f4:	06c77e63          	bgeu	a4,a2,80008970 <__memset+0x1c8>
    800088f8:	00e50733          	add	a4,a0,a4
    800088fc:	00b70023          	sb	a1,0(a4)
    80008900:	0077871b          	addiw	a4,a5,7
    80008904:	06c77663          	bgeu	a4,a2,80008970 <__memset+0x1c8>
    80008908:	00e50733          	add	a4,a0,a4
    8000890c:	00b70023          	sb	a1,0(a4)
    80008910:	0087871b          	addiw	a4,a5,8
    80008914:	04c77e63          	bgeu	a4,a2,80008970 <__memset+0x1c8>
    80008918:	00e50733          	add	a4,a0,a4
    8000891c:	00b70023          	sb	a1,0(a4)
    80008920:	0097871b          	addiw	a4,a5,9
    80008924:	04c77663          	bgeu	a4,a2,80008970 <__memset+0x1c8>
    80008928:	00e50733          	add	a4,a0,a4
    8000892c:	00b70023          	sb	a1,0(a4)
    80008930:	00a7871b          	addiw	a4,a5,10
    80008934:	02c77e63          	bgeu	a4,a2,80008970 <__memset+0x1c8>
    80008938:	00e50733          	add	a4,a0,a4
    8000893c:	00b70023          	sb	a1,0(a4)
    80008940:	00b7871b          	addiw	a4,a5,11
    80008944:	02c77663          	bgeu	a4,a2,80008970 <__memset+0x1c8>
    80008948:	00e50733          	add	a4,a0,a4
    8000894c:	00b70023          	sb	a1,0(a4)
    80008950:	00c7871b          	addiw	a4,a5,12
    80008954:	00c77e63          	bgeu	a4,a2,80008970 <__memset+0x1c8>
    80008958:	00e50733          	add	a4,a0,a4
    8000895c:	00b70023          	sb	a1,0(a4)
    80008960:	00d7879b          	addiw	a5,a5,13
    80008964:	00c7f663          	bgeu	a5,a2,80008970 <__memset+0x1c8>
    80008968:	00f507b3          	add	a5,a0,a5
    8000896c:	00b78023          	sb	a1,0(a5)
    80008970:	00813403          	ld	s0,8(sp)
    80008974:	01010113          	addi	sp,sp,16
    80008978:	00008067          	ret
    8000897c:	00b00693          	li	a3,11
    80008980:	e55ff06f          	j	800087d4 <__memset+0x2c>
    80008984:	00300e93          	li	t4,3
    80008988:	ea5ff06f          	j	8000882c <__memset+0x84>
    8000898c:	00100e93          	li	t4,1
    80008990:	e9dff06f          	j	8000882c <__memset+0x84>
    80008994:	00000e93          	li	t4,0
    80008998:	e95ff06f          	j	8000882c <__memset+0x84>
    8000899c:	00000793          	li	a5,0
    800089a0:	ef9ff06f          	j	80008898 <__memset+0xf0>
    800089a4:	00200e93          	li	t4,2
    800089a8:	e85ff06f          	j	8000882c <__memset+0x84>
    800089ac:	00400e93          	li	t4,4
    800089b0:	e7dff06f          	j	8000882c <__memset+0x84>
    800089b4:	00500e93          	li	t4,5
    800089b8:	e75ff06f          	j	8000882c <__memset+0x84>
    800089bc:	00600e93          	li	t4,6
    800089c0:	e6dff06f          	j	8000882c <__memset+0x84>

00000000800089c4 <__memmove>:
    800089c4:	ff010113          	addi	sp,sp,-16
    800089c8:	00813423          	sd	s0,8(sp)
    800089cc:	01010413          	addi	s0,sp,16
    800089d0:	0e060863          	beqz	a2,80008ac0 <__memmove+0xfc>
    800089d4:	fff6069b          	addiw	a3,a2,-1
    800089d8:	0006881b          	sext.w	a6,a3
    800089dc:	0ea5e863          	bltu	a1,a0,80008acc <__memmove+0x108>
    800089e0:	00758713          	addi	a4,a1,7
    800089e4:	00a5e7b3          	or	a5,a1,a0
    800089e8:	40a70733          	sub	a4,a4,a0
    800089ec:	0077f793          	andi	a5,a5,7
    800089f0:	00f73713          	sltiu	a4,a4,15
    800089f4:	00174713          	xori	a4,a4,1
    800089f8:	0017b793          	seqz	a5,a5
    800089fc:	00e7f7b3          	and	a5,a5,a4
    80008a00:	10078863          	beqz	a5,80008b10 <__memmove+0x14c>
    80008a04:	00900793          	li	a5,9
    80008a08:	1107f463          	bgeu	a5,a6,80008b10 <__memmove+0x14c>
    80008a0c:	0036581b          	srliw	a6,a2,0x3
    80008a10:	fff8081b          	addiw	a6,a6,-1
    80008a14:	02081813          	slli	a6,a6,0x20
    80008a18:	01d85893          	srli	a7,a6,0x1d
    80008a1c:	00858813          	addi	a6,a1,8
    80008a20:	00058793          	mv	a5,a1
    80008a24:	00050713          	mv	a4,a0
    80008a28:	01088833          	add	a6,a7,a6
    80008a2c:	0007b883          	ld	a7,0(a5)
    80008a30:	00878793          	addi	a5,a5,8
    80008a34:	00870713          	addi	a4,a4,8
    80008a38:	ff173c23          	sd	a7,-8(a4)
    80008a3c:	ff0798e3          	bne	a5,a6,80008a2c <__memmove+0x68>
    80008a40:	ff867713          	andi	a4,a2,-8
    80008a44:	02071793          	slli	a5,a4,0x20
    80008a48:	0207d793          	srli	a5,a5,0x20
    80008a4c:	00f585b3          	add	a1,a1,a5
    80008a50:	40e686bb          	subw	a3,a3,a4
    80008a54:	00f507b3          	add	a5,a0,a5
    80008a58:	06e60463          	beq	a2,a4,80008ac0 <__memmove+0xfc>
    80008a5c:	0005c703          	lbu	a4,0(a1)
    80008a60:	00e78023          	sb	a4,0(a5)
    80008a64:	04068e63          	beqz	a3,80008ac0 <__memmove+0xfc>
    80008a68:	0015c603          	lbu	a2,1(a1)
    80008a6c:	00100713          	li	a4,1
    80008a70:	00c780a3          	sb	a2,1(a5)
    80008a74:	04e68663          	beq	a3,a4,80008ac0 <__memmove+0xfc>
    80008a78:	0025c603          	lbu	a2,2(a1)
    80008a7c:	00200713          	li	a4,2
    80008a80:	00c78123          	sb	a2,2(a5)
    80008a84:	02e68e63          	beq	a3,a4,80008ac0 <__memmove+0xfc>
    80008a88:	0035c603          	lbu	a2,3(a1)
    80008a8c:	00300713          	li	a4,3
    80008a90:	00c781a3          	sb	a2,3(a5)
    80008a94:	02e68663          	beq	a3,a4,80008ac0 <__memmove+0xfc>
    80008a98:	0045c603          	lbu	a2,4(a1)
    80008a9c:	00400713          	li	a4,4
    80008aa0:	00c78223          	sb	a2,4(a5)
    80008aa4:	00e68e63          	beq	a3,a4,80008ac0 <__memmove+0xfc>
    80008aa8:	0055c603          	lbu	a2,5(a1)
    80008aac:	00500713          	li	a4,5
    80008ab0:	00c782a3          	sb	a2,5(a5)
    80008ab4:	00e68663          	beq	a3,a4,80008ac0 <__memmove+0xfc>
    80008ab8:	0065c703          	lbu	a4,6(a1)
    80008abc:	00e78323          	sb	a4,6(a5)
    80008ac0:	00813403          	ld	s0,8(sp)
    80008ac4:	01010113          	addi	sp,sp,16
    80008ac8:	00008067          	ret
    80008acc:	02061713          	slli	a4,a2,0x20
    80008ad0:	02075713          	srli	a4,a4,0x20
    80008ad4:	00e587b3          	add	a5,a1,a4
    80008ad8:	f0f574e3          	bgeu	a0,a5,800089e0 <__memmove+0x1c>
    80008adc:	02069613          	slli	a2,a3,0x20
    80008ae0:	02065613          	srli	a2,a2,0x20
    80008ae4:	fff64613          	not	a2,a2
    80008ae8:	00e50733          	add	a4,a0,a4
    80008aec:	00c78633          	add	a2,a5,a2
    80008af0:	fff7c683          	lbu	a3,-1(a5)
    80008af4:	fff78793          	addi	a5,a5,-1
    80008af8:	fff70713          	addi	a4,a4,-1
    80008afc:	00d70023          	sb	a3,0(a4)
    80008b00:	fec798e3          	bne	a5,a2,80008af0 <__memmove+0x12c>
    80008b04:	00813403          	ld	s0,8(sp)
    80008b08:	01010113          	addi	sp,sp,16
    80008b0c:	00008067          	ret
    80008b10:	02069713          	slli	a4,a3,0x20
    80008b14:	02075713          	srli	a4,a4,0x20
    80008b18:	00170713          	addi	a4,a4,1
    80008b1c:	00e50733          	add	a4,a0,a4
    80008b20:	00050793          	mv	a5,a0
    80008b24:	0005c683          	lbu	a3,0(a1)
    80008b28:	00178793          	addi	a5,a5,1
    80008b2c:	00158593          	addi	a1,a1,1
    80008b30:	fed78fa3          	sb	a3,-1(a5)
    80008b34:	fee798e3          	bne	a5,a4,80008b24 <__memmove+0x160>
    80008b38:	f89ff06f          	j	80008ac0 <__memmove+0xfc>

0000000080008b3c <__putc>:
    80008b3c:	fe010113          	addi	sp,sp,-32
    80008b40:	00813823          	sd	s0,16(sp)
    80008b44:	00113c23          	sd	ra,24(sp)
    80008b48:	02010413          	addi	s0,sp,32
    80008b4c:	00050793          	mv	a5,a0
    80008b50:	fef40593          	addi	a1,s0,-17
    80008b54:	00100613          	li	a2,1
    80008b58:	00000513          	li	a0,0
    80008b5c:	fef407a3          	sb	a5,-17(s0)
    80008b60:	fffff097          	auipc	ra,0xfffff
    80008b64:	b3c080e7          	jalr	-1220(ra) # 8000769c <console_write>
    80008b68:	01813083          	ld	ra,24(sp)
    80008b6c:	01013403          	ld	s0,16(sp)
    80008b70:	02010113          	addi	sp,sp,32
    80008b74:	00008067          	ret

0000000080008b78 <__getc>:
    80008b78:	fe010113          	addi	sp,sp,-32
    80008b7c:	00813823          	sd	s0,16(sp)
    80008b80:	00113c23          	sd	ra,24(sp)
    80008b84:	02010413          	addi	s0,sp,32
    80008b88:	fe840593          	addi	a1,s0,-24
    80008b8c:	00100613          	li	a2,1
    80008b90:	00000513          	li	a0,0
    80008b94:	fffff097          	auipc	ra,0xfffff
    80008b98:	ae8080e7          	jalr	-1304(ra) # 8000767c <console_read>
    80008b9c:	fe844503          	lbu	a0,-24(s0)
    80008ba0:	01813083          	ld	ra,24(sp)
    80008ba4:	01013403          	ld	s0,16(sp)
    80008ba8:	02010113          	addi	sp,sp,32
    80008bac:	00008067          	ret

0000000080008bb0 <console_handler>:
    80008bb0:	fe010113          	addi	sp,sp,-32
    80008bb4:	00813823          	sd	s0,16(sp)
    80008bb8:	00113c23          	sd	ra,24(sp)
    80008bbc:	00913423          	sd	s1,8(sp)
    80008bc0:	02010413          	addi	s0,sp,32
    80008bc4:	14202773          	csrr	a4,scause
    80008bc8:	100027f3          	csrr	a5,sstatus
    80008bcc:	0027f793          	andi	a5,a5,2
    80008bd0:	06079e63          	bnez	a5,80008c4c <console_handler+0x9c>
    80008bd4:	00074c63          	bltz	a4,80008bec <console_handler+0x3c>
    80008bd8:	01813083          	ld	ra,24(sp)
    80008bdc:	01013403          	ld	s0,16(sp)
    80008be0:	00813483          	ld	s1,8(sp)
    80008be4:	02010113          	addi	sp,sp,32
    80008be8:	00008067          	ret
    80008bec:	0ff77713          	andi	a4,a4,255
    80008bf0:	00900793          	li	a5,9
    80008bf4:	fef712e3          	bne	a4,a5,80008bd8 <console_handler+0x28>
    80008bf8:	ffffe097          	auipc	ra,0xffffe
    80008bfc:	6dc080e7          	jalr	1756(ra) # 800072d4 <plic_claim>
    80008c00:	00a00793          	li	a5,10
    80008c04:	00050493          	mv	s1,a0
    80008c08:	02f50c63          	beq	a0,a5,80008c40 <console_handler+0x90>
    80008c0c:	fc0506e3          	beqz	a0,80008bd8 <console_handler+0x28>
    80008c10:	00050593          	mv	a1,a0
    80008c14:	00001517          	auipc	a0,0x1
    80008c18:	8cc50513          	addi	a0,a0,-1844 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80008c1c:	fffff097          	auipc	ra,0xfffff
    80008c20:	afc080e7          	jalr	-1284(ra) # 80007718 <__printf>
    80008c24:	01013403          	ld	s0,16(sp)
    80008c28:	01813083          	ld	ra,24(sp)
    80008c2c:	00048513          	mv	a0,s1
    80008c30:	00813483          	ld	s1,8(sp)
    80008c34:	02010113          	addi	sp,sp,32
    80008c38:	ffffe317          	auipc	t1,0xffffe
    80008c3c:	6d430067          	jr	1748(t1) # 8000730c <plic_complete>
    80008c40:	fffff097          	auipc	ra,0xfffff
    80008c44:	3e0080e7          	jalr	992(ra) # 80008020 <uartintr>
    80008c48:	fddff06f          	j	80008c24 <console_handler+0x74>
    80008c4c:	00001517          	auipc	a0,0x1
    80008c50:	99450513          	addi	a0,a0,-1644 # 800095e0 <digits+0x78>
    80008c54:	fffff097          	auipc	ra,0xfffff
    80008c58:	a68080e7          	jalr	-1432(ra) # 800076bc <panic>
	...
