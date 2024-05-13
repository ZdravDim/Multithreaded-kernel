
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	cd013103          	ld	sp,-816(sp) # 8000bcd0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	38d060ef          	jal	ra,80006ba8 <start>

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
    80001080:	401010ef          	jal	ra,80002c80 <_ZN5RiscV22handle_supervisor_trapEv>

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
    80001270:	520080e7          	jalr	1312(ra) # 8000278c <_ZN15MemoryAllocator20get_number_of_blocksEm>
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
    800016bc:	3a878793          	addi	a5,a5,936 # 8000ba60 <_ZTV3Sem+0x10>
    800016c0:	00f53023          	sd	a5,0(a0) # 1000 <_entry-0x7ffff000>
    blocked_threads.free();
    800016c4:	00850513          	addi	a0,a0,8
    800016c8:	00002097          	auipc	ra,0x2
    800016cc:	9bc080e7          	jalr	-1604(ra) # 80003084 <_ZN10ThreadList4freeEv>
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
    80001704:	5e89b983          	ld	s3,1512(s3) # 8000bce8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001708:	0009b483          	ld	s1,0(s3)
    old -> set_status(TCB::BLOCKED);
    8000170c:	00200593          	li	a1,2
    80001710:	00048513          	mv	a0,s1
    80001714:	00002097          	auipc	ra,0x2
    80001718:	bc0080e7          	jalr	-1088(ra) # 800032d4 <_ZN3TCB10set_statusENS_6StatusE>
    blocked_threads.push_back(old);
    8000171c:	00048593          	mv	a1,s1
    80001720:	00890513          	addi	a0,s2,8
    80001724:	00002097          	auipc	ra,0x2
    80001728:	87c080e7          	jalr	-1924(ra) # 80002fa0 <_ZN10ThreadList9push_backEP3TCB>
    TCB::running = Scheduler::get();
    8000172c:	00001097          	auipc	ra,0x1
    80001730:	2b0080e7          	jalr	688(ra) # 800029dc <_ZN9Scheduler3getEv>
    80001734:	00050593          	mv	a1,a0
    80001738:	00a9b023          	sd	a0,0(s3)
    TCB::yield(old, TCB::running);
    8000173c:	00048513          	mv	a0,s1
    80001740:	00002097          	auipc	ra,0x2
    80001744:	a24080e7          	jalr	-1500(ra) # 80003164 <_ZN3TCB5yieldEPS_S0_>
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
    80001780:	8b4080e7          	jalr	-1868(ra) # 80003030 <_ZN10ThreadList12remove_firstEv>
    80001784:	00050493          	mv	s1,a0
    thread -> set_status(TCB::RUNNABLE);
    80001788:	00000593          	li	a1,0
    8000178c:	00002097          	auipc	ra,0x2
    80001790:	b48080e7          	jalr	-1208(ra) # 800032d4 <_ZN3TCB10set_statusENS_6StatusE>
    Scheduler::put(thread);
    80001794:	00048513          	mv	a0,s1
    80001798:	00001097          	auipc	ra,0x1
    8000179c:	1e4080e7          	jalr	484(ra) # 8000297c <_ZN9Scheduler3putEP3TCB>
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
    800017d8:	778080e7          	jalr	1912(ra) # 80002f4c <_ZN10ThreadList9get_firstEv>
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
    80001930:	e60080e7          	jalr	-416(ra) # 8000278c <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80001934:	00001097          	auipc	ra,0x1
    80001938:	a5c080e7          	jalr	-1444(ra) # 80002390 <_ZN15MemoryAllocator9mem_allocEm>
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
    explicit Sem(unsigned init = 1) : value((int) init), closed(false) {}
    80001978:	0000a797          	auipc	a5,0xa
    8000197c:	0e878793          	addi	a5,a5,232 # 8000ba60 <_ZTV3Sem+0x10>
    80001980:	00f53023          	sd	a5,0(a0)
#ifndef thread_list
#define thread_list

#include "thread.hpp"

class ThreadList {
    80001984:	00053423          	sd	zero,8(a0)
    80001988:	00053823          	sd	zero,16(a0)
    8000198c:	01252c23          	sw	s2,24(a0)
    80001990:	00050e23          	sb	zero,28(a0)
    80001994:	00a4b023          	sd	a0,0(s1)
    if (!(*handle)) return -1;
    80001998:	02050063          	beqz	a0,800019b8 <_ZN3Sem4openEPPS_j+0x6c>
    return 0;
    8000199c:	00000513          	li	a0,0
}
    800019a0:	01813083          	ld	ra,24(sp)
    800019a4:	01013403          	ld	s0,16(sp)
    800019a8:	00813483          	ld	s1,8(sp)
    800019ac:	00013903          	ld	s2,0(sp)
    800019b0:	02010113          	addi	sp,sp,32
    800019b4:	00008067          	ret
    if (!(*handle)) return -1;
    800019b8:	fff00513          	li	a0,-1
    800019bc:	fe5ff06f          	j	800019a0 <_ZN3Sem4openEPPS_j+0x54>

00000000800019c0 <_ZN3SemdlEPv>:

void Sem::operator delete(void *addr) {
    800019c0:	ff010113          	addi	sp,sp,-16
    800019c4:	00113423          	sd	ra,8(sp)
    800019c8:	00813023          	sd	s0,0(sp)
    800019cc:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    800019d0:	00001097          	auipc	ra,0x1
    800019d4:	bac080e7          	jalr	-1108(ra) # 8000257c <_ZN15MemoryAllocator8mem_freeEPv>
}
    800019d8:	00813083          	ld	ra,8(sp)
    800019dc:	00013403          	ld	s0,0(sp)
    800019e0:	01010113          	addi	sp,sp,16
    800019e4:	00008067          	ret

00000000800019e8 <_ZN3SemD0Ev>:
Sem::~Sem() {
    800019e8:	fe010113          	addi	sp,sp,-32
    800019ec:	00113c23          	sd	ra,24(sp)
    800019f0:	00813823          	sd	s0,16(sp)
    800019f4:	00913423          	sd	s1,8(sp)
    800019f8:	02010413          	addi	s0,sp,32
    800019fc:	00050493          	mv	s1,a0
}
    80001a00:	00000097          	auipc	ra,0x0
    80001a04:	ca8080e7          	jalr	-856(ra) # 800016a8 <_ZN3SemD1Ev>
    80001a08:	00048513          	mv	a0,s1
    80001a0c:	00000097          	auipc	ra,0x0
    80001a10:	fb4080e7          	jalr	-76(ra) # 800019c0 <_ZN3SemdlEPv>
    80001a14:	01813083          	ld	ra,24(sp)
    80001a18:	01013403          	ld	s0,16(sp)
    80001a1c:	00813483          	ld	s1,8(sp)
    80001a20:	02010113          	addi	sp,sp,32
    80001a24:	00008067          	ret

0000000080001a28 <_Z13workerForeverPv>:
            *(char *) CONSOLE_TX_DATA = c;
        }
    }
}

void workerForever(void *args) {
    80001a28:	ff010113          	addi	sp,sp,-16
    80001a2c:	00813423          	sd	s0,8(sp)
    80001a30:	01010413          	addi	s0,sp,16
    while (1);
    80001a34:	0000006f          	j	80001a34 <_Z13workerForeverPv+0xc>

0000000080001a38 <_Z19kernelConsoleOutputPv>:
        while (*(char *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT) {
    80001a38:	0000a797          	auipc	a5,0xa
    80001a3c:	2707b783          	ld	a5,624(a5) # 8000bca8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001a40:	0007b783          	ld	a5,0(a5)
    80001a44:	0007c783          	lbu	a5,0(a5)
    80001a48:	0207f793          	andi	a5,a5,32
    80001a4c:	fe0786e3          	beqz	a5,80001a38 <_Z19kernelConsoleOutputPv>
void kernelConsoleOutput(void *args) {
    80001a50:	ff010113          	addi	sp,sp,-16
    80001a54:	00113423          	sd	ra,8(sp)
    80001a58:	00813023          	sd	s0,0(sp)
    80001a5c:	01010413          	addi	s0,sp,16
            char c = Con::getc_output();
    80001a60:	00000097          	auipc	ra,0x0
    80001a64:	3a0080e7          	jalr	928(ra) # 80001e00 <_ZN3Con11getc_outputEv>
            *(char *) CONSOLE_TX_DATA = c;
    80001a68:	0000a797          	auipc	a5,0xa
    80001a6c:	2587b783          	ld	a5,600(a5) # 8000bcc0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001a70:	0007b783          	ld	a5,0(a5)
    80001a74:	00a78023          	sb	a0,0(a5)
        while (*(char *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT) {
    80001a78:	0000a797          	auipc	a5,0xa
    80001a7c:	2307b783          	ld	a5,560(a5) # 8000bca8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001a80:	0007b783          	ld	a5,0(a5)
    80001a84:	0007c783          	lbu	a5,0(a5)
    80001a88:	0207f793          	andi	a5,a5,32
    80001a8c:	fe0786e3          	beqz	a5,80001a78 <_Z19kernelConsoleOutputPv+0x40>
    80001a90:	fd1ff06f          	j	80001a60 <_Z19kernelConsoleOutputPv+0x28>

0000000080001a94 <_Z15userMainWrapperPv>:
    char *p = s;
    while (*p != '\0') putc(*p++);
}

void userMain();
void userMainWrapper(void *args) {
    80001a94:	ff010113          	addi	sp,sp,-16
    80001a98:	00113423          	sd	ra,8(sp)
    80001a9c:	00813023          	sd	s0,0(sp)
    80001aa0:	01010413          	addi	s0,sp,16
    userMain();
    80001aa4:	00005097          	auipc	ra,0x5
    80001aa8:	89c080e7          	jalr	-1892(ra) # 80006340 <_Z8userMainv>
}
    80001aac:	00813083          	ld	ra,8(sp)
    80001ab0:	00013403          	ld	s0,0(sp)
    80001ab4:	01010113          	addi	sp,sp,16
    80001ab8:	00008067          	ret

0000000080001abc <_Z11printNumberm>:
void printNumber(uint64 num) {
    80001abc:	fd010113          	addi	sp,sp,-48
    80001ac0:	02113423          	sd	ra,40(sp)
    80001ac4:	02813023          	sd	s0,32(sp)
    80001ac8:	00913c23          	sd	s1,24(sp)
    80001acc:	01213823          	sd	s2,16(sp)
    80001ad0:	01313423          	sd	s3,8(sp)
    80001ad4:	03010413          	addi	s0,sp,48
    80001ad8:	00050913          	mv	s2,a0
    __putc('\n');
    80001adc:	00a00513          	li	a0,10
    80001ae0:	00007097          	auipc	ra,0x7
    80001ae4:	18c080e7          	jalr	396(ra) # 80008c6c <__putc>
    __putc('N');
    80001ae8:	04e00513          	li	a0,78
    80001aec:	00007097          	auipc	ra,0x7
    80001af0:	180080e7          	jalr	384(ra) # 80008c6c <__putc>
    __putc(':');
    80001af4:	03a00513          	li	a0,58
    80001af8:	00007097          	auipc	ra,0x7
    80001afc:	174080e7          	jalr	372(ra) # 80008c6c <__putc>
    __putc(' ');
    80001b00:	02000513          	li	a0,32
    80001b04:	00007097          	auipc	ra,0x7
    80001b08:	168080e7          	jalr	360(ra) # 80008c6c <__putc>
    if (!num) __putc('0');
    80001b0c:	00090863          	beqz	s2,80001b1c <_Z11printNumberm+0x60>
    uint64 num2 = 0, zero_count = 0;
    80001b10:	00000993          	li	s3,0
    80001b14:	00000493          	li	s1,0
    80001b18:	01c0006f          	j	80001b34 <_Z11printNumberm+0x78>
    if (!num) __putc('0');
    80001b1c:	03000513          	li	a0,48
    80001b20:	00007097          	auipc	ra,0x7
    80001b24:	14c080e7          	jalr	332(ra) # 80008c6c <__putc>
    80001b28:	fe9ff06f          	j	80001b10 <_Z11printNumberm+0x54>
        num /= 10;
    80001b2c:	00a00793          	li	a5,10
    80001b30:	02f95933          	divu	s2,s2,a5
    while (num) {
    80001b34:	02090463          	beqz	s2,80001b5c <_Z11printNumberm+0xa0>
        num2 *= 10;
    80001b38:	00249793          	slli	a5,s1,0x2
    80001b3c:	009784b3          	add	s1,a5,s1
    80001b40:	00149793          	slli	a5,s1,0x1
        num2 += num % 10;
    80001b44:	00a00493          	li	s1,10
    80001b48:	029974b3          	remu	s1,s2,s1
    80001b4c:	00f484b3          	add	s1,s1,a5
        if (!num2) ++zero_count;
    80001b50:	fc049ee3          	bnez	s1,80001b2c <_Z11printNumberm+0x70>
    80001b54:	00198993          	addi	s3,s3,1
    80001b58:	fd5ff06f          	j	80001b2c <_Z11printNumberm+0x70>
    while (num2) {
    80001b5c:	02048063          	beqz	s1,80001b7c <_Z11printNumberm+0xc0>
        __putc(num2 % 10 + '0');
    80001b60:	00a00913          	li	s2,10
    80001b64:	0324f533          	remu	a0,s1,s2
    80001b68:	03050513          	addi	a0,a0,48
    80001b6c:	00007097          	auipc	ra,0x7
    80001b70:	100080e7          	jalr	256(ra) # 80008c6c <__putc>
        num2 /= 10;
    80001b74:	0324d4b3          	divu	s1,s1,s2
    while (num2) {
    80001b78:	fe5ff06f          	j	80001b5c <_Z11printNumberm+0xa0>
    while (zero_count--) __putc('0');
    80001b7c:	fff98493          	addi	s1,s3,-1
    80001b80:	00098c63          	beqz	s3,80001b98 <_Z11printNumberm+0xdc>
    80001b84:	03000513          	li	a0,48
    80001b88:	00007097          	auipc	ra,0x7
    80001b8c:	0e4080e7          	jalr	228(ra) # 80008c6c <__putc>
    80001b90:	00048993          	mv	s3,s1
    80001b94:	fe9ff06f          	j	80001b7c <_Z11printNumberm+0xc0>
}
    80001b98:	02813083          	ld	ra,40(sp)
    80001b9c:	02013403          	ld	s0,32(sp)
    80001ba0:	01813483          	ld	s1,24(sp)
    80001ba4:	01013903          	ld	s2,16(sp)
    80001ba8:	00813983          	ld	s3,8(sp)
    80001bac:	03010113          	addi	sp,sp,48
    80001bb0:	00008067          	ret

0000000080001bb4 <_Z7workerAPv>:
void workerA(void *args) {
    80001bb4:	ff010113          	addi	sp,sp,-16
    80001bb8:	00813423          	sd	s0,8(sp)
    80001bbc:	01010413          	addi	s0,sp,16
    while (1) {
    80001bc0:	0000006f          	j	80001bc0 <_Z7workerAPv+0xc>

0000000080001bc4 <_Z7workerBPv>:
void workerB(void *args) {
    80001bc4:	ff010113          	addi	sp,sp,-16
    80001bc8:	00813423          	sd	s0,8(sp)
    80001bcc:	01010413          	addi	s0,sp,16
    while (1) {
    80001bd0:	0000006f          	j	80001bd0 <_Z7workerBPv+0xc>

0000000080001bd4 <_Z13workerConsolePv>:
void workerConsole(void *args) {
    80001bd4:	fd010113          	addi	sp,sp,-48
    80001bd8:	02113423          	sd	ra,40(sp)
    80001bdc:	02813023          	sd	s0,32(sp)
    80001be0:	00913c23          	sd	s1,24(sp)
    80001be4:	03010413          	addi	s0,sp,48
    char s[] = "Hello world!";
    80001be8:	00007797          	auipc	a5,0x7
    80001bec:	43878793          	addi	a5,a5,1080 # 80009020 <CONSOLE_STATUS+0x10>
    80001bf0:	0007b703          	ld	a4,0(a5)
    80001bf4:	fce43823          	sd	a4,-48(s0)
    80001bf8:	0087a703          	lw	a4,8(a5)
    80001bfc:	fce42c23          	sw	a4,-40(s0)
    80001c00:	00c7c783          	lbu	a5,12(a5)
    80001c04:	fcf40e23          	sb	a5,-36(s0)
    char *p = s;
    80001c08:	fd040493          	addi	s1,s0,-48
    while (*p != '\0') putc(*p++);
    80001c0c:	0004c503          	lbu	a0,0(s1)
    80001c10:	00050a63          	beqz	a0,80001c24 <_Z13workerConsolePv+0x50>
    80001c14:	00148493          	addi	s1,s1,1
    80001c18:	00000097          	auipc	ra,0x0
    80001c1c:	a54080e7          	jalr	-1452(ra) # 8000166c <_Z4putcc>
    80001c20:	fedff06f          	j	80001c0c <_Z13workerConsolePv+0x38>
}
    80001c24:	02813083          	ld	ra,40(sp)
    80001c28:	02013403          	ld	s0,32(sp)
    80001c2c:	01813483          	ld	s1,24(sp)
    80001c30:	03010113          	addi	sp,sp,48
    80001c34:	00008067          	ret

0000000080001c38 <main>:

int main() {
    80001c38:	fb010113          	addi	sp,sp,-80
    80001c3c:	04113423          	sd	ra,72(sp)
    80001c40:	04813023          	sd	s0,64(sp)
    80001c44:	05010413          	addi	s0,sp,80
    /// Set interrupt routine handler
    RiscV::write_stvec((uint64) &RiscV::handle_interrupt);
    80001c48:	0000a797          	auipc	a5,0xa
    80001c4c:	0807b783          	ld	a5,128(a5) # 8000bcc8 <_GLOBAL_OFFSET_TABLE_+0x30>
    __asm__ volatile ("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void RiscV::write_stvec(uint64 val) {
    __asm__ volatile ("csrw stvec, %0" : : "r"(val));
    80001c50:	10579073          	csrw	stvec,a5
    /// Initialization
    MemoryAllocator::initialize();
    80001c54:	00001097          	auipc	ra,0x1
    80001c58:	858080e7          	jalr	-1960(ra) # 800024ac <_ZN15MemoryAllocator10initializeEv>
    Con::initialize();
    80001c5c:	00000097          	auipc	ra,0x0
    80001c60:	0ac080e7          	jalr	172(ra) # 80001d08 <_ZN3Con10initializeEv>

    thread_t threads[6];

    thread_create(&threads[0], nullptr, nullptr);
    80001c64:	00000613          	li	a2,0
    80001c68:	00000593          	li	a1,0
    80001c6c:	fc040513          	addi	a0,s0,-64
    80001c70:	fffff097          	auipc	ra,0xfffff
    80001c74:	688080e7          	jalr	1672(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running = threads[0];
    80001c78:	fc043703          	ld	a4,-64(s0)
    80001c7c:	0000a797          	auipc	a5,0xa
    80001c80:	06c7b783          	ld	a5,108(a5) # 8000bce8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001c84:	00e7b023          	sd	a4,0(a5)
inline void RiscV::write_sip(uint64 val) {
    __asm__ volatile ("csrw sip, %0" : : "r"(val));
}

inline void RiscV::ms_sstatus(uint64 mask) {
    __asm__ volatile ("csrs sstatus, %0" : : "r"(mask));
    80001c88:	00200793          	li	a5,2
    80001c8c:	1007a073          	csrs	sstatus,a5

    /// Enable software interrupts
    RiscV::ms_sstatus(RiscV::SSTATUS_SIE);

    thread_create(&threads[1], kernelConsoleOutput, nullptr); /// this gets blocked immediately
    80001c90:	00000613          	li	a2,0
    80001c94:	00000597          	auipc	a1,0x0
    80001c98:	da458593          	addi	a1,a1,-604 # 80001a38 <_Z19kernelConsoleOutputPv>
    80001c9c:	fc840513          	addi	a0,s0,-56
    80001ca0:	fffff097          	auipc	ra,0xfffff
    80001ca4:	658080e7          	jalr	1624(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&threads[2], workerForever, nullptr);
    80001ca8:	00000613          	li	a2,0
    80001cac:	00000597          	auipc	a1,0x0
    80001cb0:	d7c58593          	addi	a1,a1,-644 # 80001a28 <_Z13workerForeverPv>
    80001cb4:	fd040513          	addi	a0,s0,-48
    80001cb8:	fffff097          	auipc	ra,0xfffff
    80001cbc:	640080e7          	jalr	1600(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
//
//    while (true) thread_dispatch();

    /// Test Everything
    thread_t umain;
    thread_create(&umain, userMainWrapper, nullptr);
    80001cc0:	00000613          	li	a2,0
    80001cc4:	00000597          	auipc	a1,0x0
    80001cc8:	dd058593          	addi	a1,a1,-560 # 80001a94 <_Z15userMainWrapperPv>
    80001ccc:	fb840513          	addi	a0,s0,-72
    80001cd0:	fffff097          	auipc	ra,0xfffff
    80001cd4:	628080e7          	jalr	1576(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    while (!umain -> is_finished()) thread_dispatch();
    80001cd8:	fb843503          	ld	a0,-72(s0)
    80001cdc:	00001097          	auipc	ra,0x1
    80001ce0:	7e0080e7          	jalr	2016(ra) # 800034bc <_ZNK3TCB11is_finishedEv>
    80001ce4:	00051863          	bnez	a0,80001cf4 <main+0xbc>
    80001ce8:	fffff097          	auipc	ra,0xfffff
    80001cec:	6e4080e7          	jalr	1764(ra) # 800013cc <_Z15thread_dispatchv>
    80001cf0:	fe9ff06f          	j	80001cd8 <main+0xa0>

    return 0;
    80001cf4:	00000513          	li	a0,0
    80001cf8:	04813083          	ld	ra,72(sp)
    80001cfc:	04013403          	ld	s0,64(sp)
    80001d00:	05010113          	addi	sp,sp,80
    80001d04:	00008067          	ret

0000000080001d08 <_ZN3Con10initializeEv>:
bool Con::initialized = false;
BoundedBuffer* Con::input_buffer = nullptr;
BoundedBuffer* Con::output_buffer = nullptr;

void Con::initialize() {
    if (!initialized) {
    80001d08:	0000a797          	auipc	a5,0xa
    80001d0c:	0387c783          	lbu	a5,56(a5) # 8000bd40 <_ZN3Con11initializedE>
    80001d10:	00078463          	beqz	a5,80001d18 <_ZN3Con10initializeEv+0x10>
    80001d14:	00008067          	ret
void Con::initialize() {
    80001d18:	fe010113          	addi	sp,sp,-32
    80001d1c:	00113c23          	sd	ra,24(sp)
    80001d20:	00813823          	sd	s0,16(sp)
    80001d24:	00913423          	sd	s1,8(sp)
    80001d28:	01213023          	sd	s2,0(sp)
    80001d2c:	02010413          	addi	s0,sp,32
        initialized = true;
    80001d30:	00100793          	li	a5,1
    80001d34:	0000a717          	auipc	a4,0xa
    80001d38:	00f70623          	sb	a5,12(a4) # 8000bd40 <_ZN3Con11initializedE>
        input_buffer = new BoundedBuffer();
    80001d3c:	40800513          	li	a0,1032
    80001d40:	00001097          	auipc	ra,0x1
    80001d44:	b0c080e7          	jalr	-1268(ra) # 8000284c <_ZN13BoundedBuffernwEm>
    80001d48:	00050493          	mv	s1,a0
    80001d4c:	00001097          	auipc	ra,0x1
    80001d50:	a60080e7          	jalr	-1440(ra) # 800027ac <_ZN13BoundedBufferC1Ev>
    80001d54:	0000a797          	auipc	a5,0xa
    80001d58:	fe97ba23          	sd	s1,-12(a5) # 8000bd48 <_ZN3Con12input_bufferE>
        output_buffer = new BoundedBuffer();
    80001d5c:	40800513          	li	a0,1032
    80001d60:	00001097          	auipc	ra,0x1
    80001d64:	aec080e7          	jalr	-1300(ra) # 8000284c <_ZN13BoundedBuffernwEm>
    80001d68:	00050493          	mv	s1,a0
    80001d6c:	00001097          	auipc	ra,0x1
    80001d70:	a40080e7          	jalr	-1472(ra) # 800027ac <_ZN13BoundedBufferC1Ev>
    80001d74:	0000a797          	auipc	a5,0xa
    80001d78:	fc97be23          	sd	s1,-36(a5) # 8000bd50 <_ZN3Con13output_bufferE>
    }
}
    80001d7c:	01813083          	ld	ra,24(sp)
    80001d80:	01013403          	ld	s0,16(sp)
    80001d84:	00813483          	ld	s1,8(sp)
    80001d88:	00013903          	ld	s2,0(sp)
    80001d8c:	02010113          	addi	sp,sp,32
    80001d90:	00008067          	ret
    80001d94:	00050913          	mv	s2,a0
        input_buffer = new BoundedBuffer();
    80001d98:	00048513          	mv	a0,s1
    80001d9c:	00001097          	auipc	ra,0x1
    80001da0:	ae0080e7          	jalr	-1312(ra) # 8000287c <_ZN13BoundedBufferdlEPv>
    80001da4:	00090513          	mv	a0,s2
    80001da8:	0000b097          	auipc	ra,0xb
    80001dac:	110080e7          	jalr	272(ra) # 8000ceb8 <_Unwind_Resume>
    80001db0:	00050913          	mv	s2,a0
        output_buffer = new BoundedBuffer();
    80001db4:	00048513          	mv	a0,s1
    80001db8:	00001097          	auipc	ra,0x1
    80001dbc:	ac4080e7          	jalr	-1340(ra) # 8000287c <_ZN13BoundedBufferdlEPv>
    80001dc0:	00090513          	mv	a0,s2
    80001dc4:	0000b097          	auipc	ra,0xb
    80001dc8:	0f4080e7          	jalr	244(ra) # 8000ceb8 <_Unwind_Resume>

0000000080001dcc <_ZN3Con11putc_outputEc>:

void Con::putc_output(char c) {
    80001dcc:	ff010113          	addi	sp,sp,-16
    80001dd0:	00113423          	sd	ra,8(sp)
    80001dd4:	00813023          	sd	s0,0(sp)
    80001dd8:	01010413          	addi	s0,sp,16
    80001ddc:	00050593          	mv	a1,a0
    output_buffer -> putc(c);
    80001de0:	0000a517          	auipc	a0,0xa
    80001de4:	f7053503          	ld	a0,-144(a0) # 8000bd50 <_ZN3Con13output_bufferE>
    80001de8:	00001097          	auipc	ra,0x1
    80001dec:	abc080e7          	jalr	-1348(ra) # 800028a4 <_ZN13BoundedBuffer4putcEc>
}
    80001df0:	00813083          	ld	ra,8(sp)
    80001df4:	00013403          	ld	s0,0(sp)
    80001df8:	01010113          	addi	sp,sp,16
    80001dfc:	00008067          	ret

0000000080001e00 <_ZN3Con11getc_outputEv>:

char Con::getc_output() {
    80001e00:	ff010113          	addi	sp,sp,-16
    80001e04:	00113423          	sd	ra,8(sp)
    80001e08:	00813023          	sd	s0,0(sp)
    80001e0c:	01010413          	addi	s0,sp,16
    return output_buffer -> getc();
    80001e10:	0000a517          	auipc	a0,0xa
    80001e14:	f4053503          	ld	a0,-192(a0) # 8000bd50 <_ZN3Con13output_bufferE>
    80001e18:	00001097          	auipc	ra,0x1
    80001e1c:	af8080e7          	jalr	-1288(ra) # 80002910 <_ZN13BoundedBuffer4getcEv>
}
    80001e20:	00813083          	ld	ra,8(sp)
    80001e24:	00013403          	ld	s0,0(sp)
    80001e28:	01010113          	addi	sp,sp,16
    80001e2c:	00008067          	ret

0000000080001e30 <_ZN3Con10putc_inputEc>:

void Con::putc_input(char c) {
    80001e30:	ff010113          	addi	sp,sp,-16
    80001e34:	00113423          	sd	ra,8(sp)
    80001e38:	00813023          	sd	s0,0(sp)
    80001e3c:	01010413          	addi	s0,sp,16
    80001e40:	00050593          	mv	a1,a0
    input_buffer -> putc(c);
    80001e44:	0000a517          	auipc	a0,0xa
    80001e48:	f0453503          	ld	a0,-252(a0) # 8000bd48 <_ZN3Con12input_bufferE>
    80001e4c:	00001097          	auipc	ra,0x1
    80001e50:	a58080e7          	jalr	-1448(ra) # 800028a4 <_ZN13BoundedBuffer4putcEc>
}
    80001e54:	00813083          	ld	ra,8(sp)
    80001e58:	00013403          	ld	s0,0(sp)
    80001e5c:	01010113          	addi	sp,sp,16
    80001e60:	00008067          	ret

0000000080001e64 <_ZN3Con10getc_inputEv>:

char Con::getc_input() {
    80001e64:	ff010113          	addi	sp,sp,-16
    80001e68:	00113423          	sd	ra,8(sp)
    80001e6c:	00813023          	sd	s0,0(sp)
    80001e70:	01010413          	addi	s0,sp,16
    return input_buffer -> getc();
    80001e74:	0000a517          	auipc	a0,0xa
    80001e78:	ed453503          	ld	a0,-300(a0) # 8000bd48 <_ZN3Con12input_bufferE>
    80001e7c:	00001097          	auipc	ra,0x1
    80001e80:	a94080e7          	jalr	-1388(ra) # 80002910 <_ZN13BoundedBuffer4getcEv>
    80001e84:	00813083          	ld	ra,8(sp)
    80001e88:	00013403          	ld	s0,0(sp)
    80001e8c:	01010113          	addi	sp,sp,16
    80001e90:	00008067          	ret

0000000080001e94 <_ZN6ThreadD1Ev>:
    myHandle = nullptr;
    this -> body = body;
    this -> arg = arg;
}

Thread::~Thread() {
    80001e94:	fe010113          	addi	sp,sp,-32
    80001e98:	00113c23          	sd	ra,24(sp)
    80001e9c:	00813823          	sd	s0,16(sp)
    80001ea0:	00913423          	sd	s1,8(sp)
    80001ea4:	02010413          	addi	s0,sp,32
    80001ea8:	00050493          	mv	s1,a0
    80001eac:	0000a797          	auipc	a5,0xa
    80001eb0:	c0c78793          	addi	a5,a5,-1012 # 8000bab8 <_ZTV6Thread+0x10>
    80001eb4:	00f53023          	sd	a5,0(a0)
    if (myHandle -> is_finished()) delete myHandle;
    80001eb8:	00853503          	ld	a0,8(a0)
    80001ebc:	00001097          	auipc	ra,0x1
    80001ec0:	600080e7          	jalr	1536(ra) # 800034bc <_ZNK3TCB11is_finishedEv>
    80001ec4:	00050a63          	beqz	a0,80001ed8 <_ZN6ThreadD1Ev+0x44>
    80001ec8:	0084b503          	ld	a0,8(s1)
    80001ecc:	00050663          	beqz	a0,80001ed8 <_ZN6ThreadD1Ev+0x44>
    80001ed0:	00001097          	auipc	ra,0x1
    80001ed4:	504080e7          	jalr	1284(ra) # 800033d4 <_ZN3TCBdlEPv>
}
    80001ed8:	01813083          	ld	ra,24(sp)
    80001edc:	01013403          	ld	s0,16(sp)
    80001ee0:	00813483          	ld	s1,8(sp)
    80001ee4:	02010113          	addi	sp,sp,32
    80001ee8:	00008067          	ret

0000000080001eec <_ZN9SemaphoreD1Ev>:
Semaphore::Semaphore(unsigned int init) {
    myHandle = nullptr;
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    80001eec:	0000a797          	auipc	a5,0xa
    80001ef0:	bf478793          	addi	a5,a5,-1036 # 8000bae0 <_ZTV9Semaphore+0x10>
    80001ef4:	00f53023          	sd	a5,0(a0)
    if (myHandle) sem_close(myHandle);
    80001ef8:	00853503          	ld	a0,8(a0)
    80001efc:	02050663          	beqz	a0,80001f28 <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    80001f00:	ff010113          	addi	sp,sp,-16
    80001f04:	00113423          	sd	ra,8(sp)
    80001f08:	00813023          	sd	s0,0(sp)
    80001f0c:	01010413          	addi	s0,sp,16
    if (myHandle) sem_close(myHandle);
    80001f10:	fffff097          	auipc	ra,0xfffff
    80001f14:	548080e7          	jalr	1352(ra) # 80001458 <_Z9sem_closeP3Sem>
}
    80001f18:	00813083          	ld	ra,8(sp)
    80001f1c:	00013403          	ld	s0,0(sp)
    80001f20:	01010113          	addi	sp,sp,16
    80001f24:	00008067          	ret
    80001f28:	00008067          	ret

0000000080001f2c <_Znwm>:
void* operator new(size_t size){
    80001f2c:	ff010113          	addi	sp,sp,-16
    80001f30:	00113423          	sd	ra,8(sp)
    80001f34:	00813023          	sd	s0,0(sp)
    80001f38:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001f3c:	fffff097          	auipc	ra,0xfffff
    80001f40:	31c080e7          	jalr	796(ra) # 80001258 <_Z9mem_allocm>
}
    80001f44:	00813083          	ld	ra,8(sp)
    80001f48:	00013403          	ld	s0,0(sp)
    80001f4c:	01010113          	addi	sp,sp,16
    80001f50:	00008067          	ret

0000000080001f54 <_ZdlPv>:
void operator delete(void* p) noexcept {
    80001f54:	ff010113          	addi	sp,sp,-16
    80001f58:	00113423          	sd	ra,8(sp)
    80001f5c:	00813023          	sd	s0,0(sp)
    80001f60:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001f64:	fffff097          	auipc	ra,0xfffff
    80001f68:	348080e7          	jalr	840(ra) # 800012ac <_Z8mem_freePv>
}
    80001f6c:	00813083          	ld	ra,8(sp)
    80001f70:	00013403          	ld	s0,0(sp)
    80001f74:	01010113          	addi	sp,sp,16
    80001f78:	00008067          	ret

0000000080001f7c <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80001f7c:	fe010113          	addi	sp,sp,-32
    80001f80:	00113c23          	sd	ra,24(sp)
    80001f84:	00813823          	sd	s0,16(sp)
    80001f88:	00913423          	sd	s1,8(sp)
    80001f8c:	02010413          	addi	s0,sp,32
    80001f90:	00050493          	mv	s1,a0
}
    80001f94:	00000097          	auipc	ra,0x0
    80001f98:	f00080e7          	jalr	-256(ra) # 80001e94 <_ZN6ThreadD1Ev>
    80001f9c:	00048513          	mv	a0,s1
    80001fa0:	00000097          	auipc	ra,0x0
    80001fa4:	fb4080e7          	jalr	-76(ra) # 80001f54 <_ZdlPv>
    80001fa8:	01813083          	ld	ra,24(sp)
    80001fac:	01013403          	ld	s0,16(sp)
    80001fb0:	00813483          	ld	s1,8(sp)
    80001fb4:	02010113          	addi	sp,sp,32
    80001fb8:	00008067          	ret

0000000080001fbc <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001fbc:	fe010113          	addi	sp,sp,-32
    80001fc0:	00113c23          	sd	ra,24(sp)
    80001fc4:	00813823          	sd	s0,16(sp)
    80001fc8:	00913423          	sd	s1,8(sp)
    80001fcc:	02010413          	addi	s0,sp,32
    80001fd0:	00050493          	mv	s1,a0
}
    80001fd4:	00000097          	auipc	ra,0x0
    80001fd8:	f18080e7          	jalr	-232(ra) # 80001eec <_ZN9SemaphoreD1Ev>
    80001fdc:	00048513          	mv	a0,s1
    80001fe0:	00000097          	auipc	ra,0x0
    80001fe4:	f74080e7          	jalr	-140(ra) # 80001f54 <_ZdlPv>
    80001fe8:	01813083          	ld	ra,24(sp)
    80001fec:	01013403          	ld	s0,16(sp)
    80001ff0:	00813483          	ld	s1,8(sp)
    80001ff4:	02010113          	addi	sp,sp,32
    80001ff8:	00008067          	ret

0000000080001ffc <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    80001ffc:	ff010113          	addi	sp,sp,-16
    80002000:	00813423          	sd	s0,8(sp)
    80002004:	01010413          	addi	s0,sp,16
    80002008:	0000a797          	auipc	a5,0xa
    8000200c:	ab078793          	addi	a5,a5,-1360 # 8000bab8 <_ZTV6Thread+0x10>
    80002010:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    80002014:	00053423          	sd	zero,8(a0)
    this -> body = body;
    80002018:	00b53823          	sd	a1,16(a0)
    this -> arg = arg;
    8000201c:	00c53c23          	sd	a2,24(a0)
}
    80002020:	00813403          	ld	s0,8(sp)
    80002024:	01010113          	addi	sp,sp,16
    80002028:	00008067          	ret

000000008000202c <_ZN6Thread5startEv>:
int Thread::start() {
    8000202c:	ff010113          	addi	sp,sp,-16
    80002030:	00113423          	sd	ra,8(sp)
    80002034:	00813023          	sd	s0,0(sp)
    80002038:	01010413          	addi	s0,sp,16
    return thread_create(&myHandle, body, arg);
    8000203c:	01853603          	ld	a2,24(a0)
    80002040:	01053583          	ld	a1,16(a0)
    80002044:	00850513          	addi	a0,a0,8
    80002048:	fffff097          	auipc	ra,0xfffff
    8000204c:	2b0080e7          	jalr	688(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
}
    80002050:	00813083          	ld	ra,8(sp)
    80002054:	00013403          	ld	s0,0(sp)
    80002058:	01010113          	addi	sp,sp,16
    8000205c:	00008067          	ret

0000000080002060 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80002060:	ff010113          	addi	sp,sp,-16
    80002064:	00113423          	sd	ra,8(sp)
    80002068:	00813023          	sd	s0,0(sp)
    8000206c:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002070:	fffff097          	auipc	ra,0xfffff
    80002074:	35c080e7          	jalr	860(ra) # 800013cc <_Z15thread_dispatchv>
}
    80002078:	00813083          	ld	ra,8(sp)
    8000207c:	00013403          	ld	s0,0(sp)
    80002080:	01010113          	addi	sp,sp,16
    80002084:	00008067          	ret

0000000080002088 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    80002088:	ff010113          	addi	sp,sp,-16
    8000208c:	00113423          	sd	ra,8(sp)
    80002090:	00813023          	sd	s0,0(sp)
    80002094:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    80002098:	fffff097          	auipc	ra,0xfffff
    8000209c:	53c080e7          	jalr	1340(ra) # 800015d4 <_Z10time_sleepm>
}
    800020a0:	00813083          	ld	ra,8(sp)
    800020a4:	00013403          	ld	s0,0(sp)
    800020a8:	01010113          	addi	sp,sp,16
    800020ac:	00008067          	ret

00000000800020b0 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    800020b0:	ff010113          	addi	sp,sp,-16
    800020b4:	00813423          	sd	s0,8(sp)
    800020b8:	01010413          	addi	s0,sp,16
    800020bc:	0000a797          	auipc	a5,0xa
    800020c0:	9fc78793          	addi	a5,a5,-1540 # 8000bab8 <_ZTV6Thread+0x10>
    800020c4:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    800020c8:	00053423          	sd	zero,8(a0)
    body = nullptr;
    800020cc:	00053823          	sd	zero,16(a0)
    arg = nullptr;
    800020d0:	00053c23          	sd	zero,24(a0)
}
    800020d4:	00813403          	ld	s0,8(sp)
    800020d8:	01010113          	addi	sp,sp,16
    800020dc:	00008067          	ret

00000000800020e0 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    800020e0:	ff010113          	addi	sp,sp,-16
    800020e4:	00113423          	sd	ra,8(sp)
    800020e8:	00813023          	sd	s0,0(sp)
    800020ec:	01010413          	addi	s0,sp,16
    800020f0:	0000a797          	auipc	a5,0xa
    800020f4:	9f078793          	addi	a5,a5,-1552 # 8000bae0 <_ZTV9Semaphore+0x10>
    800020f8:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    800020fc:	00053423          	sd	zero,8(a0)
    sem_open(&myHandle, init);
    80002100:	00850513          	addi	a0,a0,8
    80002104:	fffff097          	auipc	ra,0xfffff
    80002108:	304080e7          	jalr	772(ra) # 80001408 <_Z8sem_openPP3Semj>
}
    8000210c:	00813083          	ld	ra,8(sp)
    80002110:	00013403          	ld	s0,0(sp)
    80002114:	01010113          	addi	sp,sp,16
    80002118:	00008067          	ret

000000008000211c <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    if (myHandle) return sem_wait(myHandle);
    8000211c:	00853503          	ld	a0,8(a0)
    80002120:	02050663          	beqz	a0,8000214c <_ZN9Semaphore4waitEv+0x30>
int Semaphore::wait() {
    80002124:	ff010113          	addi	sp,sp,-16
    80002128:	00113423          	sd	ra,8(sp)
    8000212c:	00813023          	sd	s0,0(sp)
    80002130:	01010413          	addi	s0,sp,16
    if (myHandle) return sem_wait(myHandle);
    80002134:	fffff097          	auipc	ra,0xfffff
    80002138:	370080e7          	jalr	880(ra) # 800014a4 <_Z8sem_waitP3Sem>
    return -1;
}
    8000213c:	00813083          	ld	ra,8(sp)
    80002140:	00013403          	ld	s0,0(sp)
    80002144:	01010113          	addi	sp,sp,16
    80002148:	00008067          	ret
    return -1;
    8000214c:	fff00513          	li	a0,-1
}
    80002150:	00008067          	ret

0000000080002154 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    if (myHandle) return sem_signal(myHandle);
    80002154:	00853503          	ld	a0,8(a0)
    80002158:	02050663          	beqz	a0,80002184 <_ZN9Semaphore6signalEv+0x30>
int Semaphore::signal() {
    8000215c:	ff010113          	addi	sp,sp,-16
    80002160:	00113423          	sd	ra,8(sp)
    80002164:	00813023          	sd	s0,0(sp)
    80002168:	01010413          	addi	s0,sp,16
    if (myHandle) return sem_signal(myHandle);
    8000216c:	fffff097          	auipc	ra,0xfffff
    80002170:	384080e7          	jalr	900(ra) # 800014f0 <_Z10sem_signalP3Sem>
    return -1;
}
    80002174:	00813083          	ld	ra,8(sp)
    80002178:	00013403          	ld	s0,0(sp)
    8000217c:	01010113          	addi	sp,sp,16
    80002180:	00008067          	ret
    return -1;
    80002184:	fff00513          	li	a0,-1
}
    80002188:	00008067          	ret

000000008000218c <_ZN9Semaphore9timedWaitEm>:

int Semaphore::timedWait(time_t time) {
    8000218c:	ff010113          	addi	sp,sp,-16
    80002190:	00113423          	sd	ra,8(sp)
    80002194:	00813023          	sd	s0,0(sp)
    80002198:	01010413          	addi	s0,sp,16
    return sem_timedwait(myHandle, time);
    8000219c:	00853503          	ld	a0,8(a0)
    800021a0:	fffff097          	auipc	ra,0xfffff
    800021a4:	39c080e7          	jalr	924(ra) # 8000153c <_Z13sem_timedwaitP3Semm>
}
    800021a8:	00813083          	ld	ra,8(sp)
    800021ac:	00013403          	ld	s0,0(sp)
    800021b0:	01010113          	addi	sp,sp,16
    800021b4:	00008067          	ret

00000000800021b8 <_ZN9Semaphore7tryWaitEv>:

int Semaphore::tryWait() {
    800021b8:	ff010113          	addi	sp,sp,-16
    800021bc:	00113423          	sd	ra,8(sp)
    800021c0:	00813023          	sd	s0,0(sp)
    800021c4:	01010413          	addi	s0,sp,16
    return sem_trywait(myHandle);
    800021c8:	00853503          	ld	a0,8(a0)
    800021cc:	fffff097          	auipc	ra,0xfffff
    800021d0:	3bc080e7          	jalr	956(ra) # 80001588 <_Z11sem_trywaitP3Sem>
}
    800021d4:	00813083          	ld	ra,8(sp)
    800021d8:	00013403          	ld	s0,0(sp)
    800021dc:	01010113          	addi	sp,sp,16
    800021e0:	00008067          	ret

00000000800021e4 <_ZN14PeriodicThread9terminateEv>:

void PeriodicThread::terminate() {
    800021e4:	ff010113          	addi	sp,sp,-16
    800021e8:	00813423          	sd	s0,8(sp)
    800021ec:	01010413          	addi	s0,sp,16
    /// TODO terminate
}
    800021f0:	00813403          	ld	s0,8(sp)
    800021f4:	01010113          	addi	sp,sp,16
    800021f8:	00008067          	ret

00000000800021fc <_ZN14PeriodicThreadC1Em>:

PeriodicThread::PeriodicThread(time_t period) {
    800021fc:	fe010113          	addi	sp,sp,-32
    80002200:	00113c23          	sd	ra,24(sp)
    80002204:	00813823          	sd	s0,16(sp)
    80002208:	00913423          	sd	s1,8(sp)
    8000220c:	01213023          	sd	s2,0(sp)
    80002210:	02010413          	addi	s0,sp,32
    80002214:	00050493          	mv	s1,a0
    80002218:	00058913          	mv	s2,a1
    8000221c:	00000097          	auipc	ra,0x0
    80002220:	e94080e7          	jalr	-364(ra) # 800020b0 <_ZN6ThreadC1Ev>
    80002224:	0000a797          	auipc	a5,0xa
    80002228:	86478793          	addi	a5,a5,-1948 # 8000ba88 <_ZTV14PeriodicThread+0x10>
    8000222c:	00f4b023          	sd	a5,0(s1)
    this -> period = period;
    80002230:	0324b023          	sd	s2,32(s1)
}
    80002234:	01813083          	ld	ra,24(sp)
    80002238:	01013403          	ld	s0,16(sp)
    8000223c:	00813483          	ld	s1,8(sp)
    80002240:	00013903          	ld	s2,0(sp)
    80002244:	02010113          	addi	sp,sp,32
    80002248:	00008067          	ret

000000008000224c <_ZN7Console4getcEv>:

char Console::getc() {
    8000224c:	ff010113          	addi	sp,sp,-16
    80002250:	00113423          	sd	ra,8(sp)
    80002254:	00813023          	sd	s0,0(sp)
    80002258:	01010413          	addi	s0,sp,16
    return ::getc();
    8000225c:	fffff097          	auipc	ra,0xfffff
    80002260:	3c4080e7          	jalr	964(ra) # 80001620 <_Z4getcv>
}
    80002264:	00813083          	ld	ra,8(sp)
    80002268:	00013403          	ld	s0,0(sp)
    8000226c:	01010113          	addi	sp,sp,16
    80002270:	00008067          	ret

0000000080002274 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80002274:	ff010113          	addi	sp,sp,-16
    80002278:	00113423          	sd	ra,8(sp)
    8000227c:	00813023          	sd	s0,0(sp)
    80002280:	01010413          	addi	s0,sp,16
    ::putc(c);
    80002284:	fffff097          	auipc	ra,0xfffff
    80002288:	3e8080e7          	jalr	1000(ra) # 8000166c <_Z4putcc>
}
    8000228c:	00813083          	ld	ra,8(sp)
    80002290:	00013403          	ld	s0,0(sp)
    80002294:	01010113          	addi	sp,sp,16
    80002298:	00008067          	ret

000000008000229c <_ZN6Thread3runEv>:
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    8000229c:	ff010113          	addi	sp,sp,-16
    800022a0:	00813423          	sd	s0,8(sp)
    800022a4:	01010413          	addi	s0,sp,16
    800022a8:	00813403          	ld	s0,8(sp)
    800022ac:	01010113          	addi	sp,sp,16
    800022b0:	00008067          	ret

00000000800022b4 <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    800022b4:	ff010113          	addi	sp,sp,-16
    800022b8:	00813423          	sd	s0,8(sp)
    800022bc:	01010413          	addi	s0,sp,16
    800022c0:	00813403          	ld	s0,8(sp)
    800022c4:	01010113          	addi	sp,sp,16
    800022c8:	00008067          	ret

00000000800022cc <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    800022cc:	ff010113          	addi	sp,sp,-16
    800022d0:	00113423          	sd	ra,8(sp)
    800022d4:	00813023          	sd	s0,0(sp)
    800022d8:	01010413          	addi	s0,sp,16
    800022dc:	00009797          	auipc	a5,0x9
    800022e0:	7ac78793          	addi	a5,a5,1964 # 8000ba88 <_ZTV14PeriodicThread+0x10>
    800022e4:	00f53023          	sd	a5,0(a0)
    800022e8:	00000097          	auipc	ra,0x0
    800022ec:	bac080e7          	jalr	-1108(ra) # 80001e94 <_ZN6ThreadD1Ev>
    800022f0:	00813083          	ld	ra,8(sp)
    800022f4:	00013403          	ld	s0,0(sp)
    800022f8:	01010113          	addi	sp,sp,16
    800022fc:	00008067          	ret

0000000080002300 <_ZN14PeriodicThreadD0Ev>:
    80002300:	fe010113          	addi	sp,sp,-32
    80002304:	00113c23          	sd	ra,24(sp)
    80002308:	00813823          	sd	s0,16(sp)
    8000230c:	00913423          	sd	s1,8(sp)
    80002310:	02010413          	addi	s0,sp,32
    80002314:	00050493          	mv	s1,a0
    80002318:	00009797          	auipc	a5,0x9
    8000231c:	77078793          	addi	a5,a5,1904 # 8000ba88 <_ZTV14PeriodicThread+0x10>
    80002320:	00f53023          	sd	a5,0(a0)
    80002324:	00000097          	auipc	ra,0x0
    80002328:	b70080e7          	jalr	-1168(ra) # 80001e94 <_ZN6ThreadD1Ev>
    8000232c:	00048513          	mv	a0,s1
    80002330:	00000097          	auipc	ra,0x0
    80002334:	c24080e7          	jalr	-988(ra) # 80001f54 <_ZdlPv>
    80002338:	01813083          	ld	ra,24(sp)
    8000233c:	01013403          	ld	s0,16(sp)
    80002340:	00813483          	ld	s1,8(sp)
    80002344:	02010113          	addi	sp,sp,32
    80002348:	00008067          	ret

000000008000234c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>:
        instance = (MemoryAllocator*) MemoryAllocator::mem_alloc(sizeof(MemoryAllocator));
    }
}

/// helper function for removing element from linked list
void MemoryAllocator::removeNode(MemSeg *toRemove, MemSeg *nextSeg, bool newIsCreated) {
    8000234c:	ff010113          	addi	sp,sp,-16
    80002350:	00813423          	sd	s0,8(sp)
    80002354:	01010413          	addi	s0,sp,16
    if (toRemove -> prev) toRemove -> prev -> next = nextSeg;
    80002358:	00853783          	ld	a5,8(a0)
    8000235c:	02078463          	beqz	a5,80002384 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x38>
    80002360:	00b7b823          	sd	a1,16(a5)
    else freeSegHead = nextSeg;
    if (toRemove -> next) toRemove -> next -> prev = (newIsCreated) ? toRemove -> prev : nextSeg;
    80002364:	01053783          	ld	a5,16(a0)
    80002368:	00078863          	beqz	a5,80002378 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x2c>
    8000236c:	00060463          	beqz	a2,80002374 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x28>
    80002370:	00853583          	ld	a1,8(a0)
    80002374:	00b7b423          	sd	a1,8(a5)
}
    80002378:	00813403          	ld	s0,8(sp)
    8000237c:	01010113          	addi	sp,sp,16
    80002380:	00008067          	ret
    else freeSegHead = nextSeg;
    80002384:	0000a797          	auipc	a5,0xa
    80002388:	9cb7ba23          	sd	a1,-1580(a5) # 8000bd58 <_ZN15MemoryAllocator11freeSegHeadE>
    8000238c:	fd9ff06f          	j	80002364 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x18>

0000000080002390 <_ZN15MemoryAllocator9mem_allocEm>:

/// allocate `size` blocks
void *MemoryAllocator::mem_alloc(size_t size) {
    80002390:	fe010113          	addi	sp,sp,-32
    80002394:	00113c23          	sd	ra,24(sp)
    80002398:	00813823          	sd	s0,16(sp)
    8000239c:	00913423          	sd	s1,8(sp)
    800023a0:	01213023          	sd	s2,0(sp)
    800023a4:	02010413          	addi	s0,sp,32
    if (size <= 0) return nullptr;
    800023a8:	0e050e63          	beqz	a0,800024a4 <_ZN15MemoryAllocator9mem_allocEm+0x114>
    size_t bytesToAllocate = size * MEM_BLOCK_SIZE;
    800023ac:	00651913          	slli	s2,a0,0x6
    MemSeg *tmp = freeSegHead;
    800023b0:	0000a497          	auipc	s1,0xa
    800023b4:	9a84b483          	ld	s1,-1624(s1) # 8000bd58 <_ZN15MemoryAllocator11freeSegHeadE>
    while (tmp) {
    800023b8:	0a048e63          	beqz	s1,80002474 <_ZN15MemoryAllocator9mem_allocEm+0xe4>
        if (tmp -> size < bytesToAllocate) {
    800023bc:	0004b783          	ld	a5,0(s1)
    800023c0:	0527e463          	bltu	a5,s2,80002408 <_ZN15MemoryAllocator9mem_allocEm+0x78>
            tmp = tmp -> next;
            continue;
        }
        /// update free memory list
        size_t remaining = tmp -> size - bytesToAllocate;
    800023c4:	412787b3          	sub	a5,a5,s2
        if (remaining < sizeof(MemSeg)) removeNode(tmp, tmp->next, false);
    800023c8:	01700713          	li	a4,23
    800023cc:	04f76263          	bltu	a4,a5,80002410 <_ZN15MemoryAllocator9mem_allocEm+0x80>
    800023d0:	00000613          	li	a2,0
    800023d4:	0104b583          	ld	a1,16(s1)
    800023d8:	00048513          	mv	a0,s1
    800023dc:	00000097          	auipc	ra,0x0
    800023e0:	f70080e7          	jalr	-144(ra) # 8000234c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
        }

        /// update used memory list
        /// insert segment after tmp2
        MemSeg* tmp2 = nullptr;
        if (usedSegHead && (char*) tmp > (char*) usedSegHead)
    800023e4:	0000a797          	auipc	a5,0xa
    800023e8:	97c7b783          	ld	a5,-1668(a5) # 8000bd60 <_ZN15MemoryAllocator11usedSegHeadE>
    800023ec:	04078863          	beqz	a5,8000243c <_ZN15MemoryAllocator9mem_allocEm+0xac>
    800023f0:	0497fa63          	bgeu	a5,s1,80002444 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
            for (tmp2 = usedSegHead; tmp2 -> next && (char*) tmp > (char*) (tmp2 -> next); tmp2 = tmp2 -> next);
    800023f4:	00078713          	mv	a4,a5
    800023f8:	0107b783          	ld	a5,16(a5)
    800023fc:	04078663          	beqz	a5,80002448 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
    80002400:	fe97eae3          	bltu	a5,s1,800023f4 <_ZN15MemoryAllocator9mem_allocEm+0x64>
    80002404:	0440006f          	j	80002448 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
            tmp = tmp -> next;
    80002408:	0104b483          	ld	s1,16(s1)
    while (tmp) {
    8000240c:	fadff06f          	j	800023b8 <_ZN15MemoryAllocator9mem_allocEm+0x28>
            MemSeg* newFree = (MemSeg*) ((char*) tmp + bytesToAllocate);
    80002410:	012485b3          	add	a1,s1,s2
            newFree -> prev = tmp -> prev;
    80002414:	0084b703          	ld	a4,8(s1)
    80002418:	00e5b423          	sd	a4,8(a1)
            newFree -> next = tmp -> next;
    8000241c:	0104b703          	ld	a4,16(s1)
    80002420:	00e5b823          	sd	a4,16(a1)
            newFree -> size = remaining;
    80002424:	00f5b023          	sd	a5,0(a1)
            removeNode(tmp, newFree, true);
    80002428:	00100613          	li	a2,1
    8000242c:	00048513          	mv	a0,s1
    80002430:	00000097          	auipc	ra,0x0
    80002434:	f1c080e7          	jalr	-228(ra) # 8000234c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
    80002438:	fadff06f          	j	800023e4 <_ZN15MemoryAllocator9mem_allocEm+0x54>
        MemSeg* tmp2 = nullptr;
    8000243c:	00078713          	mv	a4,a5
    80002440:	0080006f          	j	80002448 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
    80002444:	00000713          	li	a4,0
        MemSeg* newUsed = (MemSeg*) tmp;
        newUsed -> size = bytesToAllocate;
    80002448:	0124b023          	sd	s2,0(s1)
        newUsed -> prev = tmp2;
    8000244c:	00e4b423          	sd	a4,8(s1)
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    80002450:	04070063          	beqz	a4,80002490 <_ZN15MemoryAllocator9mem_allocEm+0x100>
    80002454:	01073783          	ld	a5,16(a4)
    80002458:	00f4b823          	sd	a5,16(s1)
        if (tmp2) tmp2 -> next = newUsed;
    8000245c:	02070e63          	beqz	a4,80002498 <_ZN15MemoryAllocator9mem_allocEm+0x108>
    80002460:	00973823          	sd	s1,16(a4)
        else usedSegHead = newUsed;
        if (newUsed -> next) newUsed -> next -> prev = newUsed;
    80002464:	0104b783          	ld	a5,16(s1)
    80002468:	00078463          	beqz	a5,80002470 <_ZN15MemoryAllocator9mem_allocEm+0xe0>
    8000246c:	0097b423          	sd	s1,8(a5)
        return (void*) ((char*)tmp + sizeof(MemSeg));
    80002470:	01848493          	addi	s1,s1,24
    }
    return nullptr;
}
    80002474:	00048513          	mv	a0,s1
    80002478:	01813083          	ld	ra,24(sp)
    8000247c:	01013403          	ld	s0,16(sp)
    80002480:	00813483          	ld	s1,8(sp)
    80002484:	00013903          	ld	s2,0(sp)
    80002488:	02010113          	addi	sp,sp,32
    8000248c:	00008067          	ret
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    80002490:	00070793          	mv	a5,a4
    80002494:	fc5ff06f          	j	80002458 <_ZN15MemoryAllocator9mem_allocEm+0xc8>
        else usedSegHead = newUsed;
    80002498:	0000a797          	auipc	a5,0xa
    8000249c:	8c97b423          	sd	s1,-1848(a5) # 8000bd60 <_ZN15MemoryAllocator11usedSegHeadE>
    800024a0:	fc5ff06f          	j	80002464 <_ZN15MemoryAllocator9mem_allocEm+0xd4>
    if (size <= 0) return nullptr;
    800024a4:	00000493          	li	s1,0
    800024a8:	fcdff06f          	j	80002474 <_ZN15MemoryAllocator9mem_allocEm+0xe4>

00000000800024ac <_ZN15MemoryAllocator10initializeEv>:
    if (!instance) {
    800024ac:	0000a797          	auipc	a5,0xa
    800024b0:	8bc7b783          	ld	a5,-1860(a5) # 8000bd68 <_ZN15MemoryAllocator8instanceE>
    800024b4:	00078463          	beqz	a5,800024bc <_ZN15MemoryAllocator10initializeEv+0x10>
    800024b8:	00008067          	ret
void MemoryAllocator::initialize() {
    800024bc:	fe010113          	addi	sp,sp,-32
    800024c0:	00113c23          	sd	ra,24(sp)
    800024c4:	00813823          	sd	s0,16(sp)
    800024c8:	00913423          	sd	s1,8(sp)
    800024cc:	02010413          	addi	s0,sp,32
        freeSegHead = (MemSeg*) HEAP_START_ADDR;
    800024d0:	00009797          	auipc	a5,0x9
    800024d4:	7e07b783          	ld	a5,2016(a5) # 8000bcb0 <_GLOBAL_OFFSET_TABLE_+0x18>
    800024d8:	0007b783          	ld	a5,0(a5)
    800024dc:	0000a497          	auipc	s1,0xa
    800024e0:	87c48493          	addi	s1,s1,-1924 # 8000bd58 <_ZN15MemoryAllocator11freeSegHeadE>
    800024e4:	00f4b023          	sd	a5,0(s1)
        freeSegHead -> size = (size_t) HEAP_END_ADDR - (size_t) HEAP_START_ADDR;
    800024e8:	0000a717          	auipc	a4,0xa
    800024ec:	80873703          	ld	a4,-2040(a4) # 8000bcf0 <_GLOBAL_OFFSET_TABLE_+0x58>
    800024f0:	00073703          	ld	a4,0(a4)
    800024f4:	40f70733          	sub	a4,a4,a5
    800024f8:	00e7b023          	sd	a4,0(a5)
        freeSegHead -> prev = nullptr;
    800024fc:	0004b783          	ld	a5,0(s1)
    80002500:	0007b423          	sd	zero,8(a5)
        freeSegHead -> next = nullptr;
    80002504:	0007b823          	sd	zero,16(a5)
        instance = (MemoryAllocator*) MemoryAllocator::mem_alloc(sizeof(MemoryAllocator));
    80002508:	00100513          	li	a0,1
    8000250c:	00000097          	auipc	ra,0x0
    80002510:	e84080e7          	jalr	-380(ra) # 80002390 <_ZN15MemoryAllocator9mem_allocEm>
    80002514:	00a4b823          	sd	a0,16(s1)
}
    80002518:	01813083          	ld	ra,24(sp)
    8000251c:	01013403          	ld	s0,16(sp)
    80002520:	00813483          	ld	s1,8(sp)
    80002524:	02010113          	addi	sp,sp,32
    80002528:	00008067          	ret

000000008000252c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>:
    }
    return 0;
}

/// join free segment with next if possible
void MemoryAllocator::tryToJoin(MemSeg *seg) {
    8000252c:	ff010113          	addi	sp,sp,-16
    80002530:	00813423          	sd	s0,8(sp)
    80002534:	01010413          	addi	s0,sp,16
    if (seg -> next && (char*) seg + seg -> size == (char*) seg -> next) {
    80002538:	01053783          	ld	a5,16(a0)
    8000253c:	00078863          	beqz	a5,8000254c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    80002540:	00053703          	ld	a4,0(a0)
    80002544:	00e506b3          	add	a3,a0,a4
    80002548:	00d78863          	beq	a5,a3,80002558 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x2c>
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
        seg -> next = seg -> next -> next;
        if (seg -> next) seg -> next -> prev = seg;
    }
}
    8000254c:	00813403          	ld	s0,8(sp)
    80002550:	01010113          	addi	sp,sp,16
    80002554:	00008067          	ret
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
    80002558:	0007b683          	ld	a3,0(a5)
    8000255c:	00d70733          	add	a4,a4,a3
    80002560:	01870713          	addi	a4,a4,24
    80002564:	00e53023          	sd	a4,0(a0)
        seg -> next = seg -> next -> next;
    80002568:	0107b783          	ld	a5,16(a5)
    8000256c:	00f53823          	sd	a5,16(a0)
        if (seg -> next) seg -> next -> prev = seg;
    80002570:	fc078ee3          	beqz	a5,8000254c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    80002574:	00a7b423          	sd	a0,8(a5)
}
    80002578:	fd5ff06f          	j	8000254c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>

000000008000257c <_ZN15MemoryAllocator8mem_freeEPv>:
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    8000257c:	14050263          	beqz	a0,800026c0 <_ZN15MemoryAllocator8mem_freeEPv+0x144>
int MemoryAllocator::mem_free(void *addr) {
    80002580:	fd010113          	addi	sp,sp,-48
    80002584:	02113423          	sd	ra,40(sp)
    80002588:	02813023          	sd	s0,32(sp)
    8000258c:	00913c23          	sd	s1,24(sp)
    80002590:	01213823          	sd	s2,16(sp)
    80002594:	01313423          	sd	s3,8(sp)
    80002598:	03010413          	addi	s0,sp,48
    8000259c:	00050913          	mv	s2,a0
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    800025a0:	00009797          	auipc	a5,0x9
    800025a4:	7107b783          	ld	a5,1808(a5) # 8000bcb0 <_GLOBAL_OFFSET_TABLE_+0x18>
    800025a8:	0007b783          	ld	a5,0(a5)
    800025ac:	10f56e63          	bltu	a0,a5,800026c8 <_ZN15MemoryAllocator8mem_freeEPv+0x14c>
    800025b0:	00009797          	auipc	a5,0x9
    800025b4:	7407b783          	ld	a5,1856(a5) # 8000bcf0 <_GLOBAL_OFFSET_TABLE_+0x58>
    800025b8:	0007b783          	ld	a5,0(a5)
    800025bc:	10a7ea63          	bltu	a5,a0,800026d0 <_ZN15MemoryAllocator8mem_freeEPv+0x154>
    if (!usedSegHead) return -2;
    800025c0:	00009797          	auipc	a5,0x9
    800025c4:	7a07b783          	ld	a5,1952(a5) # 8000bd60 <_ZN15MemoryAllocator11usedSegHeadE>
    800025c8:	10078863          	beqz	a5,800026d8 <_ZN15MemoryAllocator8mem_freeEPv+0x15c>
    addr = (void*) ((char*) addr - sizeof(MemSeg));
    800025cc:	fe850493          	addi	s1,a0,-24
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    800025d0:	00078863          	beqz	a5,800025e0 <_ZN15MemoryAllocator8mem_freeEPv+0x64>
        if (tmp == segToFree) {
    800025d4:	08978e63          	beq	a5,s1,80002670 <_ZN15MemoryAllocator8mem_freeEPv+0xf4>
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    800025d8:	0107b783          	ld	a5,16(a5)
    800025dc:	ff5ff06f          	j	800025d0 <_ZN15MemoryAllocator8mem_freeEPv+0x54>
    bool found = false;
    800025e0:	00000793          	li	a5,0
    if (!found) return -3;
    800025e4:	0e078e63          	beqz	a5,800026e0 <_ZN15MemoryAllocator8mem_freeEPv+0x164>
    removeNode(segToFree, segToFree -> next, false);
    800025e8:	00000613          	li	a2,0
    800025ec:	ff893583          	ld	a1,-8(s2)
    800025f0:	00048513          	mv	a0,s1
    800025f4:	00000097          	auipc	ra,0x0
    800025f8:	d58080e7          	jalr	-680(ra) # 8000234c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
    if (!freeSegHead) {
    800025fc:	00009797          	auipc	a5,0x9
    80002600:	75c7b783          	ld	a5,1884(a5) # 8000bd58 <_ZN15MemoryAllocator11freeSegHeadE>
    80002604:	06078a63          	beqz	a5,80002678 <_ZN15MemoryAllocator8mem_freeEPv+0xfc>
    else if ((char*) addr < (char*) freeSegHead) {
    80002608:	08f4e463          	bltu	s1,a5,80002690 <_ZN15MemoryAllocator8mem_freeEPv+0x114>
        for (tmp = freeSegHead; tmp -> next && (char*) (tmp -> next) < (char*) segToFree; tmp = tmp -> next);
    8000260c:	00078993          	mv	s3,a5
    80002610:	0107b783          	ld	a5,16(a5)
    80002614:	00078463          	beqz	a5,8000261c <_ZN15MemoryAllocator8mem_freeEPv+0xa0>
    80002618:	fe97eae3          	bltu	a5,s1,8000260c <_ZN15MemoryAllocator8mem_freeEPv+0x90>
        segToFree -> prev = tmp;
    8000261c:	ff393823          	sd	s3,-16(s2)
        segToFree -> next = tmp -> next;
    80002620:	0109b783          	ld	a5,16(s3)
    80002624:	fef93c23          	sd	a5,-8(s2)
        tmp -> next = segToFree;
    80002628:	0099b823          	sd	s1,16(s3)
        if (segToFree -> next) segToFree -> next -> prev = segToFree;
    8000262c:	ff893783          	ld	a5,-8(s2)
    80002630:	00078463          	beqz	a5,80002638 <_ZN15MemoryAllocator8mem_freeEPv+0xbc>
    80002634:	0097b423          	sd	s1,8(a5)
        tryToJoin(segToFree);
    80002638:	00048513          	mv	a0,s1
    8000263c:	00000097          	auipc	ra,0x0
    80002640:	ef0080e7          	jalr	-272(ra) # 8000252c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
        tryToJoin(tmp);
    80002644:	00098513          	mv	a0,s3
    80002648:	00000097          	auipc	ra,0x0
    8000264c:	ee4080e7          	jalr	-284(ra) # 8000252c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    80002650:	00000513          	li	a0,0
}
    80002654:	02813083          	ld	ra,40(sp)
    80002658:	02013403          	ld	s0,32(sp)
    8000265c:	01813483          	ld	s1,24(sp)
    80002660:	01013903          	ld	s2,16(sp)
    80002664:	00813983          	ld	s3,8(sp)
    80002668:	03010113          	addi	sp,sp,48
    8000266c:	00008067          	ret
            found = true;
    80002670:	00100793          	li	a5,1
    80002674:	f71ff06f          	j	800025e4 <_ZN15MemoryAllocator8mem_freeEPv+0x68>
        freeSegHead = segToFree;
    80002678:	00009797          	auipc	a5,0x9
    8000267c:	6e97b023          	sd	s1,1760(a5) # 8000bd58 <_ZN15MemoryAllocator11freeSegHeadE>
        segToFree -> prev = segToFree -> next = nullptr;
    80002680:	fe093c23          	sd	zero,-8(s2)
    80002684:	fe093823          	sd	zero,-16(s2)
    return 0;
    80002688:	00000513          	li	a0,0
    8000268c:	fc9ff06f          	j	80002654 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
        segToFree -> prev = nullptr;
    80002690:	fe093823          	sd	zero,-16(s2)
        segToFree -> next = freeSegHead;
    80002694:	00009797          	auipc	a5,0x9
    80002698:	6c478793          	addi	a5,a5,1732 # 8000bd58 <_ZN15MemoryAllocator11freeSegHeadE>
    8000269c:	0007b703          	ld	a4,0(a5)
    800026a0:	fee93c23          	sd	a4,-8(s2)
        freeSegHead -> prev = segToFree;
    800026a4:	00973423          	sd	s1,8(a4)
        freeSegHead = segToFree;
    800026a8:	0097b023          	sd	s1,0(a5)
        tryToJoin(segToFree);
    800026ac:	00048513          	mv	a0,s1
    800026b0:	00000097          	auipc	ra,0x0
    800026b4:	e7c080e7          	jalr	-388(ra) # 8000252c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    800026b8:	00000513          	li	a0,0
    800026bc:	f99ff06f          	j	80002654 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    800026c0:	fff00513          	li	a0,-1
}
    800026c4:	00008067          	ret
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    800026c8:	fff00513          	li	a0,-1
    800026cc:	f89ff06f          	j	80002654 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    800026d0:	fff00513          	li	a0,-1
    800026d4:	f81ff06f          	j	80002654 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!usedSegHead) return -2;
    800026d8:	ffe00513          	li	a0,-2
    800026dc:	f79ff06f          	j	80002654 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!found) return -3;
    800026e0:	ffd00513          	li	a0,-3
    800026e4:	f71ff06f          	j	80002654 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>

00000000800026e8 <_ZN15MemoryAllocator5printEv>:

void MemoryAllocator::print() {
    800026e8:	fe010113          	addi	sp,sp,-32
    800026ec:	00113c23          	sd	ra,24(sp)
    800026f0:	00813823          	sd	s0,16(sp)
    800026f4:	00913423          	sd	s1,8(sp)
    800026f8:	02010413          	addi	s0,sp,32
    __putc('\n');
    800026fc:	00a00513          	li	a0,10
    80002700:	00006097          	auipc	ra,0x6
    80002704:	56c080e7          	jalr	1388(ra) # 80008c6c <__putc>
    __putc('M');
    80002708:	04d00513          	li	a0,77
    8000270c:	00006097          	auipc	ra,0x6
    80002710:	560080e7          	jalr	1376(ra) # 80008c6c <__putc>
    __putc(':');
    80002714:	03a00513          	li	a0,58
    80002718:	00006097          	auipc	ra,0x6
    8000271c:	554080e7          	jalr	1364(ra) # 80008c6c <__putc>
    __putc(' ');
    80002720:	02000513          	li	a0,32
    80002724:	00006097          	auipc	ra,0x6
    80002728:	548080e7          	jalr	1352(ra) # 80008c6c <__putc>
    for (MemSeg* tmp = freeSegHead; tmp; tmp = tmp -> next) __putc('f');
    8000272c:	00009497          	auipc	s1,0x9
    80002730:	62c4b483          	ld	s1,1580(s1) # 8000bd58 <_ZN15MemoryAllocator11freeSegHeadE>
    80002734:	00048c63          	beqz	s1,8000274c <_ZN15MemoryAllocator5printEv+0x64>
    80002738:	06600513          	li	a0,102
    8000273c:	00006097          	auipc	ra,0x6
    80002740:	530080e7          	jalr	1328(ra) # 80008c6c <__putc>
    80002744:	0104b483          	ld	s1,16(s1)
    80002748:	fedff06f          	j	80002734 <_ZN15MemoryAllocator5printEv+0x4c>
    __putc('\t');
    8000274c:	00900513          	li	a0,9
    80002750:	00006097          	auipc	ra,0x6
    80002754:	51c080e7          	jalr	1308(ra) # 80008c6c <__putc>
    for (MemSeg* tmp = usedSegHead; tmp; tmp = tmp -> next) __putc('u');
    80002758:	00009497          	auipc	s1,0x9
    8000275c:	6084b483          	ld	s1,1544(s1) # 8000bd60 <_ZN15MemoryAllocator11usedSegHeadE>
    80002760:	00048c63          	beqz	s1,80002778 <_ZN15MemoryAllocator5printEv+0x90>
    80002764:	07500513          	li	a0,117
    80002768:	00006097          	auipc	ra,0x6
    8000276c:	504080e7          	jalr	1284(ra) # 80008c6c <__putc>
    80002770:	0104b483          	ld	s1,16(s1)
    80002774:	fedff06f          	j	80002760 <_ZN15MemoryAllocator5printEv+0x78>
}
    80002778:	01813083          	ld	ra,24(sp)
    8000277c:	01013403          	ld	s0,16(sp)
    80002780:	00813483          	ld	s1,8(sp)
    80002784:	02010113          	addi	sp,sp,32
    80002788:	00008067          	ret

000000008000278c <_ZN15MemoryAllocator20get_number_of_blocksEm>:

size_t MemoryAllocator::get_number_of_blocks(size_t size) {
    8000278c:	ff010113          	addi	sp,sp,-16
    80002790:	00813423          	sd	s0,8(sp)
    80002794:	01010413          	addi	s0,sp,16
    return (size + sizeof(MemoryAllocator::MemSeg) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80002798:	05750513          	addi	a0,a0,87
}
    8000279c:	00655513          	srli	a0,a0,0x6
    800027a0:	00813403          	ld	s0,8(sp)
    800027a4:	01010113          	addi	sp,sp,16
    800027a8:	00008067          	ret

00000000800027ac <_ZN13BoundedBufferC1Ev>:
#include "../h/bounded_bufffer.hpp"

BoundedBuffer::BoundedBuffer() {
    800027ac:	fe010113          	addi	sp,sp,-32
    800027b0:	00113c23          	sd	ra,24(sp)
    800027b4:	00813823          	sd	s0,16(sp)
    800027b8:	00913423          	sd	s1,8(sp)
    800027bc:	02010413          	addi	s0,sp,32
    800027c0:	00050493          	mv	s1,a0
    800027c4:	3e800793          	li	a5,1000
    800027c8:	00f52023          	sw	a5,0(a0)
    800027cc:	00052223          	sw	zero,4(a0)
    800027d0:	00052423          	sw	zero,8(a0)
    Sem::open(&item_available, 0);
    800027d4:	00000593          	li	a1,0
    800027d8:	01850513          	addi	a0,a0,24
    800027dc:	fffff097          	auipc	ra,0xfffff
    800027e0:	170080e7          	jalr	368(ra) # 8000194c <_ZN3Sem4openEPPS_j>
    Sem::open(&space_available, CAPACITY);
    800027e4:	3e800593          	li	a1,1000
    800027e8:	01048513          	addi	a0,s1,16
    800027ec:	fffff097          	auipc	ra,0xfffff
    800027f0:	160080e7          	jalr	352(ra) # 8000194c <_ZN3Sem4openEPPS_j>
}
    800027f4:	01813083          	ld	ra,24(sp)
    800027f8:	01013403          	ld	s0,16(sp)
    800027fc:	00813483          	ld	s1,8(sp)
    80002800:	02010113          	addi	sp,sp,32
    80002804:	00008067          	ret

0000000080002808 <_ZN13BoundedBufferD1Ev>:

BoundedBuffer::~BoundedBuffer() {
    80002808:	fe010113          	addi	sp,sp,-32
    8000280c:	00113c23          	sd	ra,24(sp)
    80002810:	00813823          	sd	s0,16(sp)
    80002814:	00913423          	sd	s1,8(sp)
    80002818:	02010413          	addi	s0,sp,32
    8000281c:	00050493          	mv	s1,a0
    Sem::close(item_available);
    80002820:	01853503          	ld	a0,24(a0)
    80002824:	fffff097          	auipc	ra,0xfffff
    80002828:	f90080e7          	jalr	-112(ra) # 800017b4 <_ZN3Sem5closeEPS_>
    Sem::close(space_available);
    8000282c:	0104b503          	ld	a0,16(s1)
    80002830:	fffff097          	auipc	ra,0xfffff
    80002834:	f84080e7          	jalr	-124(ra) # 800017b4 <_ZN3Sem5closeEPS_>
}
    80002838:	01813083          	ld	ra,24(sp)
    8000283c:	01013403          	ld	s0,16(sp)
    80002840:	00813483          	ld	s1,8(sp)
    80002844:	02010113          	addi	sp,sp,32
    80002848:	00008067          	ret

000000008000284c <_ZN13BoundedBuffernwEm>:

void *BoundedBuffer::operator new(size_t size) {
    8000284c:	ff010113          	addi	sp,sp,-16
    80002850:	00113423          	sd	ra,8(sp)
    80002854:	00813023          	sd	s0,0(sp)
    80002858:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    8000285c:	00000097          	auipc	ra,0x0
    80002860:	f30080e7          	jalr	-208(ra) # 8000278c <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80002864:	00000097          	auipc	ra,0x0
    80002868:	b2c080e7          	jalr	-1236(ra) # 80002390 <_ZN15MemoryAllocator9mem_allocEm>
}
    8000286c:	00813083          	ld	ra,8(sp)
    80002870:	00013403          	ld	s0,0(sp)
    80002874:	01010113          	addi	sp,sp,16
    80002878:	00008067          	ret

000000008000287c <_ZN13BoundedBufferdlEPv>:

void BoundedBuffer::operator delete(void *addr) {
    8000287c:	ff010113          	addi	sp,sp,-16
    80002880:	00113423          	sd	ra,8(sp)
    80002884:	00813023          	sd	s0,0(sp)
    80002888:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    8000288c:	00000097          	auipc	ra,0x0
    80002890:	cf0080e7          	jalr	-784(ra) # 8000257c <_ZN15MemoryAllocator8mem_freeEPv>
}
    80002894:	00813083          	ld	ra,8(sp)
    80002898:	00013403          	ld	s0,0(sp)
    8000289c:	01010113          	addi	sp,sp,16
    800028a0:	00008067          	ret

00000000800028a4 <_ZN13BoundedBuffer4putcEc>:

void BoundedBuffer::putc(char c) {
    800028a4:	fe010113          	addi	sp,sp,-32
    800028a8:	00113c23          	sd	ra,24(sp)
    800028ac:	00813823          	sd	s0,16(sp)
    800028b0:	00913423          	sd	s1,8(sp)
    800028b4:	01213023          	sd	s2,0(sp)
    800028b8:	02010413          	addi	s0,sp,32
    800028bc:	00050493          	mv	s1,a0
    800028c0:	00058913          	mv	s2,a1
    Sem::wait(space_available);
    800028c4:	01053503          	ld	a0,16(a0)
    800028c8:	fffff097          	auipc	ra,0xfffff
    800028cc:	f58080e7          	jalr	-168(ra) # 80001820 <_ZN3Sem4waitEPS_>
    array[tail] = c;
    800028d0:	0084a783          	lw	a5,8(s1)
    800028d4:	00f48733          	add	a4,s1,a5
    800028d8:	03270023          	sb	s2,32(a4)
    tail = (tail + 1) % capacity;
    800028dc:	0017879b          	addiw	a5,a5,1
    800028e0:	0004a703          	lw	a4,0(s1)
    800028e4:	02e7e7bb          	remw	a5,a5,a4
    800028e8:	00f4a423          	sw	a5,8(s1)
    Sem::signal(item_available);
    800028ec:	0184b503          	ld	a0,24(s1)
    800028f0:	fffff097          	auipc	ra,0xfffff
    800028f4:	f84080e7          	jalr	-124(ra) # 80001874 <_ZN3Sem6signalEPS_>
}
    800028f8:	01813083          	ld	ra,24(sp)
    800028fc:	01013403          	ld	s0,16(sp)
    80002900:	00813483          	ld	s1,8(sp)
    80002904:	00013903          	ld	s2,0(sp)
    80002908:	02010113          	addi	sp,sp,32
    8000290c:	00008067          	ret

0000000080002910 <_ZN13BoundedBuffer4getcEv>:

char BoundedBuffer::getc() {
    80002910:	fe010113          	addi	sp,sp,-32
    80002914:	00113c23          	sd	ra,24(sp)
    80002918:	00813823          	sd	s0,16(sp)
    8000291c:	00913423          	sd	s1,8(sp)
    80002920:	01213023          	sd	s2,0(sp)
    80002924:	02010413          	addi	s0,sp,32
    80002928:	00050493          	mv	s1,a0
    Sem::wait(item_available);
    8000292c:	01853503          	ld	a0,24(a0)
    80002930:	fffff097          	auipc	ra,0xfffff
    80002934:	ef0080e7          	jalr	-272(ra) # 80001820 <_ZN3Sem4waitEPS_>
    char c = array[head];
    80002938:	0044a783          	lw	a5,4(s1)
    8000293c:	00f48733          	add	a4,s1,a5
    80002940:	02074903          	lbu	s2,32(a4)
    head = (head + 1) % capacity;
    80002944:	0017879b          	addiw	a5,a5,1
    80002948:	0004a703          	lw	a4,0(s1)
    8000294c:	02e7e7bb          	remw	a5,a5,a4
    80002950:	00f4a223          	sw	a5,4(s1)
    Sem::signal(space_available);
    80002954:	0104b503          	ld	a0,16(s1)
    80002958:	fffff097          	auipc	ra,0xfffff
    8000295c:	f1c080e7          	jalr	-228(ra) # 80001874 <_ZN3Sem6signalEPS_>
    return c;
}
    80002960:	00090513          	mv	a0,s2
    80002964:	01813083          	ld	ra,24(sp)
    80002968:	01013403          	ld	s0,16(sp)
    8000296c:	00813483          	ld	s1,8(sp)
    80002970:	00013903          	ld	s2,0(sp)
    80002974:	02010113          	addi	sp,sp,32
    80002978:	00008067          	ret

000000008000297c <_ZN9Scheduler3putEP3TCB>:

TCB* Scheduler::head_ready = nullptr;
TCB* Scheduler::tail_ready = nullptr;
TCB* Scheduler::head_sleeping = nullptr;

void Scheduler::put(TCB *thread) {
    8000297c:	fe010113          	addi	sp,sp,-32
    80002980:	00113c23          	sd	ra,24(sp)
    80002984:	00813823          	sd	s0,16(sp)
    80002988:	00913423          	sd	s1,8(sp)
    8000298c:	02010413          	addi	s0,sp,32
    80002990:	00050493          	mv	s1,a0
    if (tail_ready) {
    80002994:	00009517          	auipc	a0,0x9
    80002998:	3dc53503          	ld	a0,988(a0) # 8000bd70 <_ZN9Scheduler10tail_readyE>
    8000299c:	02051463          	bnez	a0,800029c4 <_ZN9Scheduler3putEP3TCB+0x48>
        tail_ready -> set_next_ready(thread);
        tail_ready = thread;
        return;
    }
    head_ready = tail_ready = thread;
    800029a0:	00009797          	auipc	a5,0x9
    800029a4:	3d078793          	addi	a5,a5,976 # 8000bd70 <_ZN9Scheduler10tail_readyE>
    800029a8:	0097b023          	sd	s1,0(a5)
    800029ac:	0097b423          	sd	s1,8(a5)
}
    800029b0:	01813083          	ld	ra,24(sp)
    800029b4:	01013403          	ld	s0,16(sp)
    800029b8:	00813483          	ld	s1,8(sp)
    800029bc:	02010113          	addi	sp,sp,32
    800029c0:	00008067          	ret
        tail_ready -> set_next_ready(thread);
    800029c4:	00048593          	mv	a1,s1
    800029c8:	00001097          	auipc	ra,0x1
    800029cc:	880080e7          	jalr	-1920(ra) # 80003248 <_ZN3TCB14set_next_readyEPS_>
        tail_ready = thread;
    800029d0:	00009797          	auipc	a5,0x9
    800029d4:	3a97b023          	sd	s1,928(a5) # 8000bd70 <_ZN9Scheduler10tail_readyE>
        return;
    800029d8:	fd9ff06f          	j	800029b0 <_ZN9Scheduler3putEP3TCB+0x34>

00000000800029dc <_ZN9Scheduler3getEv>:

TCB* Scheduler::get() {
    800029dc:	fe010113          	addi	sp,sp,-32
    800029e0:	00113c23          	sd	ra,24(sp)
    800029e4:	00813823          	sd	s0,16(sp)
    800029e8:	00913423          	sd	s1,8(sp)
    800029ec:	02010413          	addi	s0,sp,32
    if (!head_ready) return nullptr;
    800029f0:	00009497          	auipc	s1,0x9
    800029f4:	3884b483          	ld	s1,904(s1) # 8000bd78 <_ZN9Scheduler10head_readyE>
    800029f8:	02048663          	beqz	s1,80002a24 <_ZN9Scheduler3getEv+0x48>
    TCB *tmp = head_ready;
    head_ready = head_ready -> get_next_ready();
    800029fc:	00048513          	mv	a0,s1
    80002a00:	00001097          	auipc	ra,0x1
    80002a04:	82c080e7          	jalr	-2004(ra) # 8000322c <_ZNK3TCB14get_next_readyEv>
    80002a08:	00009797          	auipc	a5,0x9
    80002a0c:	36a7b823          	sd	a0,880(a5) # 8000bd78 <_ZN9Scheduler10head_readyE>
    if (!head_ready) tail_ready = nullptr;
    80002a10:	02050663          	beqz	a0,80002a3c <_ZN9Scheduler3getEv+0x60>
    tmp -> set_next_ready(nullptr);
    80002a14:	00000593          	li	a1,0
    80002a18:	00048513          	mv	a0,s1
    80002a1c:	00001097          	auipc	ra,0x1
    80002a20:	82c080e7          	jalr	-2004(ra) # 80003248 <_ZN3TCB14set_next_readyEPS_>
    return tmp;
}
    80002a24:	00048513          	mv	a0,s1
    80002a28:	01813083          	ld	ra,24(sp)
    80002a2c:	01013403          	ld	s0,16(sp)
    80002a30:	00813483          	ld	s1,8(sp)
    80002a34:	02010113          	addi	sp,sp,32
    80002a38:	00008067          	ret
    if (!head_ready) tail_ready = nullptr;
    80002a3c:	00009797          	auipc	a5,0x9
    80002a40:	3207ba23          	sd	zero,820(a5) # 8000bd70 <_ZN9Scheduler10tail_readyE>
    80002a44:	fd1ff06f          	j	80002a14 <_ZN9Scheduler3getEv+0x38>

0000000080002a48 <_ZN9Scheduler13change_threadEv>:
    thread -> set_next_sleeping(nullptr);
    change_thread();
    return 0;
}

void Scheduler::change_thread() {
    80002a48:	fe010113          	addi	sp,sp,-32
    80002a4c:	00113c23          	sd	ra,24(sp)
    80002a50:	00813823          	sd	s0,16(sp)
    80002a54:	00913423          	sd	s1,8(sp)
    80002a58:	01213023          	sd	s2,0(sp)
    80002a5c:	02010413          	addi	s0,sp,32
    TCB* old = TCB::running;
    80002a60:	00009497          	auipc	s1,0x9
    80002a64:	2884b483          	ld	s1,648(s1) # 8000bce8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002a68:	0004b903          	ld	s2,0(s1)
    TCB::running = Scheduler::get();
    80002a6c:	00000097          	auipc	ra,0x0
    80002a70:	f70080e7          	jalr	-144(ra) # 800029dc <_ZN9Scheduler3getEv>
    80002a74:	00a4b023          	sd	a0,0(s1)
    if (old != TCB::running) TCB::yield(old, TCB::running);
    80002a78:	00a90a63          	beq	s2,a0,80002a8c <_ZN9Scheduler13change_threadEv+0x44>
    80002a7c:	00050593          	mv	a1,a0
    80002a80:	00090513          	mv	a0,s2
    80002a84:	00000097          	auipc	ra,0x0
    80002a88:	6e0080e7          	jalr	1760(ra) # 80003164 <_ZN3TCB5yieldEPS_S0_>
}
    80002a8c:	01813083          	ld	ra,24(sp)
    80002a90:	01013403          	ld	s0,16(sp)
    80002a94:	00813483          	ld	s1,8(sp)
    80002a98:	00013903          	ld	s2,0(sp)
    80002a9c:	02010113          	addi	sp,sp,32
    80002aa0:	00008067          	ret

0000000080002aa4 <_ZN9Scheduler12put_to_sleepEm>:
int Scheduler::put_to_sleep(time_t time) {
    80002aa4:	fc010113          	addi	sp,sp,-64
    80002aa8:	02113c23          	sd	ra,56(sp)
    80002aac:	02813823          	sd	s0,48(sp)
    80002ab0:	02913423          	sd	s1,40(sp)
    80002ab4:	03213023          	sd	s2,32(sp)
    80002ab8:	01313c23          	sd	s3,24(sp)
    80002abc:	01413823          	sd	s4,16(sp)
    80002ac0:	01513423          	sd	s5,8(sp)
    80002ac4:	04010413          	addi	s0,sp,64
    80002ac8:	00050993          	mv	s3,a0
    TCB* thread = TCB::running;
    80002acc:	00009797          	auipc	a5,0x9
    80002ad0:	21c7b783          	ld	a5,540(a5) # 8000bce8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002ad4:	0007ba83          	ld	s5,0(a5)
    thread -> set_status(TCB::Status::SLEEPING);
    80002ad8:	00100593          	li	a1,1
    80002adc:	000a8513          	mv	a0,s5
    80002ae0:	00000097          	auipc	ra,0x0
    80002ae4:	7f4080e7          	jalr	2036(ra) # 800032d4 <_ZN3TCB10set_statusENS_6StatusE>
    if (!head_sleeping) {
    80002ae8:	00009497          	auipc	s1,0x9
    80002aec:	2984b483          	ld	s1,664(s1) # 8000bd80 <_ZN9Scheduler13head_sleepingE>
    80002af0:	02048e63          	beqz	s1,80002b2c <_ZN9Scheduler12put_to_sleepEm+0x88>
    time_t current_time = 0;
    80002af4:	00000913          	li	s2,0
    TCB* tmp = head_sleeping, *prev = nullptr;
    80002af8:	00000a13          	li	s4,0
    while (tmp) {
    80002afc:	0e048c63          	beqz	s1,80002bf4 <_ZN9Scheduler12put_to_sleepEm+0x150>
        current_time += tmp -> get_time_to_sleep();
    80002b00:	00048513          	mv	a0,s1
    80002b04:	00000097          	auipc	ra,0x0
    80002b08:	7b4080e7          	jalr	1972(ra) # 800032b8 <_ZNK3TCB17get_time_to_sleepEv>
    80002b0c:	00a90933          	add	s2,s2,a0
        if (current_time > time) {
    80002b10:	0529e863          	bltu	s3,s2,80002b60 <_ZN9Scheduler12put_to_sleepEm+0xbc>
        tmp = tmp -> get_next_sleeping();
    80002b14:	00048513          	mv	a0,s1
    80002b18:	00000097          	auipc	ra,0x0
    80002b1c:	768080e7          	jalr	1896(ra) # 80003280 <_ZNK3TCB17get_next_sleepingEv>
        prev = tmp;
    80002b20:	00048a13          	mv	s4,s1
        tmp = tmp -> get_next_sleeping();
    80002b24:	00050493          	mv	s1,a0
    while (tmp) {
    80002b28:	fd5ff06f          	j	80002afc <_ZN9Scheduler12put_to_sleepEm+0x58>
        head_sleeping = thread;
    80002b2c:	00009797          	auipc	a5,0x9
    80002b30:	2557ba23          	sd	s5,596(a5) # 8000bd80 <_ZN9Scheduler13head_sleepingE>
        thread -> set_next_sleeping(nullptr);
    80002b34:	00000593          	li	a1,0
    80002b38:	000a8513          	mv	a0,s5
    80002b3c:	00000097          	auipc	ra,0x0
    80002b40:	728080e7          	jalr	1832(ra) # 80003264 <_ZN3TCB17set_next_sleepingEPS_>
        thread -> set_time_to_sleep(time);
    80002b44:	00098593          	mv	a1,s3
    80002b48:	000a8513          	mv	a0,s5
    80002b4c:	00000097          	auipc	ra,0x0
    80002b50:	750080e7          	jalr	1872(ra) # 8000329c <_ZN3TCB17set_time_to_sleepEm>
        change_thread();
    80002b54:	00000097          	auipc	ra,0x0
    80002b58:	ef4080e7          	jalr	-268(ra) # 80002a48 <_ZN9Scheduler13change_threadEv>
        return 0;
    80002b5c:	0d00006f          	j	80002c2c <_ZN9Scheduler12put_to_sleepEm+0x188>
            time_t new_time = time - (current_time - tmp -> get_time_to_sleep());
    80002b60:	00048513          	mv	a0,s1
    80002b64:	00000097          	auipc	ra,0x0
    80002b68:	754080e7          	jalr	1876(ra) # 800032b8 <_ZNK3TCB17get_time_to_sleepEv>
    80002b6c:	41250933          	sub	s2,a0,s2
    80002b70:	013909b3          	add	s3,s2,s3
            thread -> set_time_to_sleep(new_time);
    80002b74:	00098593          	mv	a1,s3
    80002b78:	000a8513          	mv	a0,s5
    80002b7c:	00000097          	auipc	ra,0x0
    80002b80:	720080e7          	jalr	1824(ra) # 8000329c <_ZN3TCB17set_time_to_sleepEm>
            thread -> set_next_sleeping(tmp);
    80002b84:	00048593          	mv	a1,s1
    80002b88:	000a8513          	mv	a0,s5
    80002b8c:	00000097          	auipc	ra,0x0
    80002b90:	6d8080e7          	jalr	1752(ra) # 80003264 <_ZN3TCB17set_next_sleepingEPS_>
            if (prev) prev -> set_next_sleeping(thread);
    80002b94:	040a0463          	beqz	s4,80002bdc <_ZN9Scheduler12put_to_sleepEm+0x138>
    80002b98:	000a8593          	mv	a1,s5
    80002b9c:	000a0513          	mv	a0,s4
    80002ba0:	00000097          	auipc	ra,0x0
    80002ba4:	6c4080e7          	jalr	1732(ra) # 80003264 <_ZN3TCB17set_next_sleepingEPS_>
            for (TCB* curr = tmp; curr; curr = curr -> get_next_sleeping())
    80002ba8:	04048063          	beqz	s1,80002be8 <_ZN9Scheduler12put_to_sleepEm+0x144>
                curr -> set_time_to_sleep(curr -> get_time_to_sleep() - new_time);
    80002bac:	00048513          	mv	a0,s1
    80002bb0:	00000097          	auipc	ra,0x0
    80002bb4:	708080e7          	jalr	1800(ra) # 800032b8 <_ZNK3TCB17get_time_to_sleepEv>
    80002bb8:	413505b3          	sub	a1,a0,s3
    80002bbc:	00048513          	mv	a0,s1
    80002bc0:	00000097          	auipc	ra,0x0
    80002bc4:	6dc080e7          	jalr	1756(ra) # 8000329c <_ZN3TCB17set_time_to_sleepEm>
            for (TCB* curr = tmp; curr; curr = curr -> get_next_sleeping())
    80002bc8:	00048513          	mv	a0,s1
    80002bcc:	00000097          	auipc	ra,0x0
    80002bd0:	6b4080e7          	jalr	1716(ra) # 80003280 <_ZNK3TCB17get_next_sleepingEv>
    80002bd4:	00050493          	mv	s1,a0
    80002bd8:	fd1ff06f          	j	80002ba8 <_ZN9Scheduler12put_to_sleepEm+0x104>
            else head_sleeping = thread;
    80002bdc:	00009797          	auipc	a5,0x9
    80002be0:	1b57b223          	sd	s5,420(a5) # 8000bd80 <_ZN9Scheduler13head_sleepingE>
    80002be4:	fc5ff06f          	j	80002ba8 <_ZN9Scheduler12put_to_sleepEm+0x104>
            change_thread();
    80002be8:	00000097          	auipc	ra,0x0
    80002bec:	e60080e7          	jalr	-416(ra) # 80002a48 <_ZN9Scheduler13change_threadEv>
            return 0;
    80002bf0:	03c0006f          	j	80002c2c <_ZN9Scheduler12put_to_sleepEm+0x188>
    thread -> set_time_to_sleep(time - current_time);
    80002bf4:	412985b3          	sub	a1,s3,s2
    80002bf8:	000a8513          	mv	a0,s5
    80002bfc:	00000097          	auipc	ra,0x0
    80002c00:	6a0080e7          	jalr	1696(ra) # 8000329c <_ZN3TCB17set_time_to_sleepEm>
    prev -> set_next_sleeping(thread);
    80002c04:	000a8593          	mv	a1,s5
    80002c08:	000a0513          	mv	a0,s4
    80002c0c:	00000097          	auipc	ra,0x0
    80002c10:	658080e7          	jalr	1624(ra) # 80003264 <_ZN3TCB17set_next_sleepingEPS_>
    thread -> set_next_sleeping(nullptr);
    80002c14:	00000593          	li	a1,0
    80002c18:	000a8513          	mv	a0,s5
    80002c1c:	00000097          	auipc	ra,0x0
    80002c20:	648080e7          	jalr	1608(ra) # 80003264 <_ZN3TCB17set_next_sleepingEPS_>
    change_thread();
    80002c24:	00000097          	auipc	ra,0x0
    80002c28:	e24080e7          	jalr	-476(ra) # 80002a48 <_ZN9Scheduler13change_threadEv>
}
    80002c2c:	00000513          	li	a0,0
    80002c30:	03813083          	ld	ra,56(sp)
    80002c34:	03013403          	ld	s0,48(sp)
    80002c38:	02813483          	ld	s1,40(sp)
    80002c3c:	02013903          	ld	s2,32(sp)
    80002c40:	01813983          	ld	s3,24(sp)
    80002c44:	01013a03          	ld	s4,16(sp)
    80002c48:	00813a83          	ld	s5,8(sp)
    80002c4c:	04010113          	addi	sp,sp,64
    80002c50:	00008067          	ret

0000000080002c54 <_ZN5RiscV10popSppSpieEb>:
    SUPERVISOR_INTERRUPT = 0x0000000000000009UL,
};

/// used in thread wrapper function when initializing thread because thread stack is empty
/// pc = (sepc = ra)
void RiscV::popSppSpie(bool return_to_user_mode) {
    80002c54:	ff010113          	addi	sp,sp,-16
    80002c58:	00813423          	sd	s0,8(sp)
    80002c5c:	01010413          	addi	s0,sp,16
    if (return_to_user_mode) mc_sstatus(SSTATUS_SPP);
    80002c60:	00050663          	beqz	a0,80002c6c <_ZN5RiscV10popSppSpieEb+0x18>
}

inline void RiscV::mc_sstatus(uint64 mask) {
    __asm__ volatile ("csrc sstatus, %0" : : "r"(mask));
    80002c64:	10000793          	li	a5,256
    80002c68:	1007b073          	csrc	sstatus,a5
    __asm__ volatile("csrw sepc, ra");
    80002c6c:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80002c70:	10200073          	sret
}
    80002c74:	00813403          	ld	s0,8(sp)
    80002c78:	01010113          	addi	sp,sp,16
    80002c7c:	00008067          	ret

0000000080002c80 <_ZN5RiscV22handle_supervisor_trapEv>:

/// interrupt handler
void RiscV::handle_supervisor_trap() {
    80002c80:	f9010113          	addi	sp,sp,-112
    80002c84:	06113423          	sd	ra,104(sp)
    80002c88:	06813023          	sd	s0,96(sp)
    80002c8c:	04913c23          	sd	s1,88(sp)
    80002c90:	05213823          	sd	s2,80(sp)
    80002c94:	05313423          	sd	s3,72(sp)
    80002c98:	07010413          	addi	s0,sp,112
    /// read values from registers
    uint64 syscall_code, a1, a2, a3, a4;
    __asm__ volatile("mv %0, a0" : "=r"(syscall_code));
    80002c9c:	00050813          	mv	a6,a0
    __asm__ volatile("mv %0, a1" : "=r"(a1));
    80002ca0:	00058513          	mv	a0,a1
    __asm__ volatile("mv %0, a2" : "=r"(a2));
    80002ca4:	00060593          	mv	a1,a2
    __asm__ volatile("mv %0, a3" : "=r"(a3));
    80002ca8:	00068613          	mv	a2,a3
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    80002cac:	00070693          	mv	a3,a4
    __asm__ volatile ("csrr %0, scause" : "=r"(scause));
    80002cb0:	142027f3          	csrr	a5,scause
    80002cb4:	f8f43c23          	sd	a5,-104(s0)
    return scause;
    80002cb8:	f9843703          	ld	a4,-104(s0)

    uint64 scause = read_scause();

    /// interrupt caused by Timer
    if (scause == SOFTWARE_INTERRUPT) {
    80002cbc:	fff00793          	li	a5,-1
    80002cc0:	03f79793          	slli	a5,a5,0x3f
    80002cc4:	00178793          	addi	a5,a5,1
    80002cc8:	04f70263          	beq	a4,a5,80002d0c <_ZN5RiscV22handle_supervisor_trapEv+0x8c>
            write_sepc(sepc);
        }
    }

    /// External interrupt (Console)
    else if (scause == HARDWARE_INTERRUPT) {
    80002ccc:	fff00793          	li	a5,-1
    80002cd0:	03f79793          	slli	a5,a5,0x3f
    80002cd4:	00978793          	addi	a5,a5,9
    80002cd8:	0ef70863          	beq	a4,a5,80002dc8 <_ZN5RiscV22handle_supervisor_trapEv+0x148>
        write_sstatus(sstatus);
        mc_sip(SIP_SEIP);
    }

    /// illegal instruction
    else if (scause == INVALID_INTERRUPT) {
    80002cdc:	00200793          	li	a5,2
    80002ce0:	16f70463          	beq	a4,a5,80002e48 <_ZN5RiscV22handle_supervisor_trapEv+0x1c8>
        __asm__ volatile("mv a0, %0" : : "r"(val));
        return;
    }

    /// interrupt from supervisor / user mode
    else if (scause == USER_INTERRUPT || scause == SUPERVISOR_INTERRUPT) {
    80002ce4:	ff870713          	addi	a4,a4,-8
    80002ce8:	00100793          	li	a5,1
    80002cec:	16e7f463          	bgeu	a5,a4,80002e54 <_ZN5RiscV22handle_supervisor_trapEv+0x1d4>
        }

        write_sepc(sepc);
        write_sstatus(sstatus);
    }
    80002cf0:	06813083          	ld	ra,104(sp)
    80002cf4:	06013403          	ld	s0,96(sp)
    80002cf8:	05813483          	ld	s1,88(sp)
    80002cfc:	05013903          	ld	s2,80(sp)
    80002d00:	04813983          	ld	s3,72(sp)
    80002d04:	07010113          	addi	sp,sp,112
    80002d08:	00008067          	ret
    __asm__ volatile ("csrc sip, %0" : : "r"(mask));
    80002d0c:	00200793          	li	a5,2
    80002d10:	1447b073          	csrc	sip,a5
        TCB* first_waiting = Scheduler::head_sleeping;
    80002d14:	00009797          	auipc	a5,0x9
    80002d18:	fa47b783          	ld	a5,-92(a5) # 8000bcb8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002d1c:	0007b483          	ld	s1,0(a5)
        if (first_waiting) {
    80002d20:	04048463          	beqz	s1,80002d68 <_ZN5RiscV22handle_supervisor_trapEv+0xe8>
            --first_waiting -> time_to_sleep;
    80002d24:	0484b783          	ld	a5,72(s1)
    80002d28:	fff78793          	addi	a5,a5,-1
    80002d2c:	04f4b423          	sd	a5,72(s1)
            while (first_waiting && first_waiting -> time_to_sleep <= 0) {
    80002d30:	02048c63          	beqz	s1,80002d68 <_ZN5RiscV22handle_supervisor_trapEv+0xe8>
    80002d34:	0484b783          	ld	a5,72(s1)
    80002d38:	02079863          	bnez	a5,80002d68 <_ZN5RiscV22handle_supervisor_trapEv+0xe8>
                Scheduler::put(first_waiting);
    80002d3c:	00048513          	mv	a0,s1
    80002d40:	00000097          	auipc	ra,0x0
    80002d44:	c3c080e7          	jalr	-964(ra) # 8000297c <_ZN9Scheduler3putEP3TCB>
                first_waiting -> status = TCB::RUNNABLE;
    80002d48:	0004ac23          	sw	zero,24(s1)
                first_waiting = first_waiting -> next_sleeping;
    80002d4c:	0504b783          	ld	a5,80(s1)
                tmp -> next_sleeping = nullptr;
    80002d50:	0404b823          	sd	zero,80(s1)
                Scheduler::head_sleeping = first_waiting;
    80002d54:	00009717          	auipc	a4,0x9
    80002d58:	f6473703          	ld	a4,-156(a4) # 8000bcb8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002d5c:	00f73023          	sd	a5,0(a4)
                first_waiting = first_waiting -> next_sleeping;
    80002d60:	00078493          	mv	s1,a5
            while (first_waiting && first_waiting -> time_to_sleep <= 0) {
    80002d64:	fcdff06f          	j	80002d30 <_ZN5RiscV22handle_supervisor_trapEv+0xb0>
        ++TCB::time_slice_counter;
    80002d68:	00009717          	auipc	a4,0x9
    80002d6c:	f7073703          	ld	a4,-144(a4) # 8000bcd8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002d70:	00073783          	ld	a5,0(a4)
    80002d74:	00178793          	addi	a5,a5,1
    80002d78:	00f73023          	sd	a5,0(a4)
        if (TCB::time_slice_counter >= TCB::running -> time_slice) {
    80002d7c:	00009717          	auipc	a4,0x9
    80002d80:	f6c73703          	ld	a4,-148(a4) # 8000bce8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002d84:	00073703          	ld	a4,0(a4)
    80002d88:	03873703          	ld	a4,56(a4)
    80002d8c:	f6e7e2e3          	bltu	a5,a4,80002cf0 <_ZN5RiscV22handle_supervisor_trapEv+0x70>
    __asm__ volatile ("csrr %0, sepc" : "=r"(sepc));
    80002d90:	141027f3          	csrr	a5,sepc
    80002d94:	faf43423          	sd	a5,-88(s0)
    return sepc;
    80002d98:	fa843483          	ld	s1,-88(s0)
}

inline uint64 RiscV::read_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    80002d9c:	100027f3          	csrr	a5,sstatus
    80002da0:	faf43023          	sd	a5,-96(s0)
    return sstatus;
    80002da4:	fa043903          	ld	s2,-96(s0)
            TCB::time_slice_counter = 0;
    80002da8:	00009797          	auipc	a5,0x9
    80002dac:	f307b783          	ld	a5,-208(a5) # 8000bcd8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002db0:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80002db4:	00000097          	auipc	ra,0x0
    80002db8:	40c080e7          	jalr	1036(ra) # 800031c0 <_ZN3TCB8dispatchEv>
}

inline void RiscV::write_sstatus(uint64 val) {
    __asm__ volatile ("csrw sstatus, %0" : : "r"(val));
    80002dbc:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %0" : : "r"(val));
    80002dc0:	14149073          	csrw	sepc,s1
}
    80002dc4:	f2dff06f          	j	80002cf0 <_ZN5RiscV22handle_supervisor_trapEv+0x70>
    __asm__ volatile ("csrr %0, sepc" : "=r"(sepc));
    80002dc8:	141027f3          	csrr	a5,sepc
    80002dcc:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    80002dd0:	fb843983          	ld	s3,-72(s0)
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    80002dd4:	100027f3          	csrr	a5,sstatus
    80002dd8:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    80002ddc:	fb043903          	ld	s2,-80(s0)
        int irq = plic_claim();
    80002de0:	00004097          	auipc	ra,0x4
    80002de4:	624080e7          	jalr	1572(ra) # 80007404 <plic_claim>
    80002de8:	00050493          	mv	s1,a0
        if (irq == CONSOLE_IRQ) {
    80002dec:	00a00793          	li	a5,10
    80002df0:	02f50263          	beq	a0,a5,80002e14 <_ZN5RiscV22handle_supervisor_trapEv+0x194>
        plic_complete(irq);
    80002df4:	00048513          	mv	a0,s1
    80002df8:	00004097          	auipc	ra,0x4
    80002dfc:	644080e7          	jalr	1604(ra) # 8000743c <plic_complete>
    __asm__ volatile ("csrw sepc, %0" : : "r"(val));
    80002e00:	14199073          	csrw	sepc,s3
    __asm__ volatile ("csrw sstatus, %0" : : "r"(val));
    80002e04:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrc sip, %0" : : "r"(mask));
    80002e08:	20000793          	li	a5,512
    80002e0c:	1447b073          	csrc	sip,a5
}
    80002e10:	ee1ff06f          	j	80002cf0 <_ZN5RiscV22handle_supervisor_trapEv+0x70>
            while (*(char *) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT) {
    80002e14:	00009797          	auipc	a5,0x9
    80002e18:	e947b783          	ld	a5,-364(a5) # 8000bca8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002e1c:	0007b783          	ld	a5,0(a5)
    80002e20:	0007c783          	lbu	a5,0(a5)
    80002e24:	0017f793          	andi	a5,a5,1
    80002e28:	fc0786e3          	beqz	a5,80002df4 <_ZN5RiscV22handle_supervisor_trapEv+0x174>
                char c = *(char *) CONSOLE_RX_DATA;
    80002e2c:	00009797          	auipc	a5,0x9
    80002e30:	e747b783          	ld	a5,-396(a5) # 8000bca0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002e34:	0007b783          	ld	a5,0(a5)
                Con::putc_input(c);
    80002e38:	0007c503          	lbu	a0,0(a5)
    80002e3c:	fffff097          	auipc	ra,0xfffff
    80002e40:	ff4080e7          	jalr	-12(ra) # 80001e30 <_ZN3Con10putc_inputEc>
            while (*(char *) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT) {
    80002e44:	fd1ff06f          	j	80002e14 <_ZN5RiscV22handle_supervisor_trapEv+0x194>
        __asm__ volatile("mv a0, %0" : : "r"(val));
    80002e48:	00100793          	li	a5,1
    80002e4c:	00078513          	mv	a0,a5
        return;
    80002e50:	ea1ff06f          	j	80002cf0 <_ZN5RiscV22handle_supervisor_trapEv+0x70>
    __asm__ volatile ("csrr %0, sepc" : "=r"(sepc));
    80002e54:	141027f3          	csrr	a5,sepc
    80002e58:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80002e5c:	fc843483          	ld	s1,-56(s0)
        uint64 sepc = read_sepc() + 4;
    80002e60:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    80002e64:	100027f3          	csrr	a5,sstatus
    80002e68:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80002e6c:	fc043903          	ld	s2,-64(s0)
        switch(syscall_code) {
    80002e70:	04200793          	li	a5,66
    80002e74:	0307e463          	bltu	a5,a6,80002e9c <_ZN5RiscV22handle_supervisor_trapEv+0x21c>
    80002e78:	00281813          	slli	a6,a6,0x2
    80002e7c:	00006717          	auipc	a4,0x6
    80002e80:	1b470713          	addi	a4,a4,436 # 80009030 <CONSOLE_STATUS+0x20>
    80002e84:	00e80833          	add	a6,a6,a4
    80002e88:	00082783          	lw	a5,0(a6)
    80002e8c:	00e787b3          	add	a5,a5,a4
    80002e90:	00078067          	jr	a5
                MemoryAllocator::mem_alloc((size_t) a1);
    80002e94:	fffff097          	auipc	ra,0xfffff
    80002e98:	4fc080e7          	jalr	1276(ra) # 80002390 <_ZN15MemoryAllocator9mem_allocEm>
    __asm__ volatile ("csrw sepc, %0" : : "r"(val));
    80002e9c:	14149073          	csrw	sepc,s1
    __asm__ volatile ("csrw sstatus, %0" : : "r"(val));
    80002ea0:	10091073          	csrw	sstatus,s2
}
    80002ea4:	e4dff06f          	j	80002cf0 <_ZN5RiscV22handle_supervisor_trapEv+0x70>
                MemoryAllocator::mem_free((void *) a1);
    80002ea8:	fffff097          	auipc	ra,0xfffff
    80002eac:	6d4080e7          	jalr	1748(ra) # 8000257c <_ZN15MemoryAllocator8mem_freeEPv>
                break;
    80002eb0:	fedff06f          	j	80002e9c <_ZN5RiscV22handle_supervisor_trapEv+0x21c>
                TCB::thread_create((thread_t *) a1, (void (*)(void *)) a2, (void *) a3, (void *) a4);
    80002eb4:	00000097          	auipc	ra,0x0
    80002eb8:	548080e7          	jalr	1352(ra) # 800033fc <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>
                break;
    80002ebc:	fe1ff06f          	j	80002e9c <_ZN5RiscV22handle_supervisor_trapEv+0x21c>
                TCB::thread_exit();
    80002ec0:	00000097          	auipc	ra,0x0
    80002ec4:	430080e7          	jalr	1072(ra) # 800032f0 <_ZN3TCB11thread_exitEv>
                break;
    80002ec8:	fd5ff06f          	j	80002e9c <_ZN5RiscV22handle_supervisor_trapEv+0x21c>
                TCB::dispatch();
    80002ecc:	00000097          	auipc	ra,0x0
    80002ed0:	2f4080e7          	jalr	756(ra) # 800031c0 <_ZN3TCB8dispatchEv>
                break;
    80002ed4:	fc9ff06f          	j	80002e9c <_ZN5RiscV22handle_supervisor_trapEv+0x21c>
                Sem::open((sem_t *) a1, a2);
    80002ed8:	0005859b          	sext.w	a1,a1
    80002edc:	fffff097          	auipc	ra,0xfffff
    80002ee0:	a70080e7          	jalr	-1424(ra) # 8000194c <_ZN3Sem4openEPPS_j>
                break;
    80002ee4:	fb9ff06f          	j	80002e9c <_ZN5RiscV22handle_supervisor_trapEv+0x21c>
                Sem::close((sem_t) a1);
    80002ee8:	fffff097          	auipc	ra,0xfffff
    80002eec:	8cc080e7          	jalr	-1844(ra) # 800017b4 <_ZN3Sem5closeEPS_>
                break;
    80002ef0:	fadff06f          	j	80002e9c <_ZN5RiscV22handle_supervisor_trapEv+0x21c>
                Sem::wait((sem_t) a1);
    80002ef4:	fffff097          	auipc	ra,0xfffff
    80002ef8:	92c080e7          	jalr	-1748(ra) # 80001820 <_ZN3Sem4waitEPS_>
                break;
    80002efc:	fa1ff06f          	j	80002e9c <_ZN5RiscV22handle_supervisor_trapEv+0x21c>
                Sem::signal((sem_t) a1);
    80002f00:	fffff097          	auipc	ra,0xfffff
    80002f04:	974080e7          	jalr	-1676(ra) # 80001874 <_ZN3Sem6signalEPS_>
                break;
    80002f08:	f95ff06f          	j	80002e9c <_ZN5RiscV22handle_supervisor_trapEv+0x21c>
                Sem::timedWait((sem_t) a1, (time_t) a2);
    80002f0c:	fffff097          	auipc	ra,0xfffff
    80002f10:	9bc080e7          	jalr	-1604(ra) # 800018c8 <_ZN3Sem9timedWaitEPS_m>
                break;
    80002f14:	f89ff06f          	j	80002e9c <_ZN5RiscV22handle_supervisor_trapEv+0x21c>
                Sem::tryWait((sem_t) a1);
    80002f18:	fffff097          	auipc	ra,0xfffff
    80002f1c:	9cc080e7          	jalr	-1588(ra) # 800018e4 <_ZN3Sem7tryWaitEPS_>
                break;
    80002f20:	f7dff06f          	j	80002e9c <_ZN5RiscV22handle_supervisor_trapEv+0x21c>
                Scheduler::put_to_sleep((time_t) a1);
    80002f24:	00000097          	auipc	ra,0x0
    80002f28:	b80080e7          	jalr	-1152(ra) # 80002aa4 <_ZN9Scheduler12put_to_sleepEm>
                break;
    80002f2c:	f71ff06f          	j	80002e9c <_ZN5RiscV22handle_supervisor_trapEv+0x21c>
                Con::getc_input();
    80002f30:	fffff097          	auipc	ra,0xfffff
    80002f34:	f34080e7          	jalr	-204(ra) # 80001e64 <_ZN3Con10getc_inputEv>
                break;
    80002f38:	f65ff06f          	j	80002e9c <_ZN5RiscV22handle_supervisor_trapEv+0x21c>
                Con::putc_output((char) a1);
    80002f3c:	0ff57513          	andi	a0,a0,255
    80002f40:	fffff097          	auipc	ra,0xfffff
    80002f44:	e8c080e7          	jalr	-372(ra) # 80001dcc <_ZN3Con11putc_outputEc>
                break;
    80002f48:	f55ff06f          	j	80002e9c <_ZN5RiscV22handle_supervisor_trapEv+0x21c>

0000000080002f4c <_ZN10ThreadList9get_firstEv>:

void ThreadList::push_back(TCB *thread) {
    tail = (head ? tail -> next : head) = new Node(thread);
}

TCB *ThreadList::get_first() {
    80002f4c:	ff010113          	addi	sp,sp,-16
    80002f50:	00813423          	sd	s0,8(sp)
    80002f54:	01010413          	addi	s0,sp,16
    return (head ? head -> data : nullptr);
    80002f58:	00053503          	ld	a0,0(a0)
    80002f5c:	00050463          	beqz	a0,80002f64 <_ZN10ThreadList9get_firstEv+0x18>
    80002f60:	00053503          	ld	a0,0(a0)
}
    80002f64:	00813403          	ld	s0,8(sp)
    80002f68:	01010113          	addi	sp,sp,16
    80002f6c:	00008067          	ret

0000000080002f70 <_ZN10ThreadList4NodenwEm>:

void ThreadList::free() {
    while (get_first()) remove_first();
}

void *ThreadList::Node::operator new(size_t size) {
    80002f70:	ff010113          	addi	sp,sp,-16
    80002f74:	00113423          	sd	ra,8(sp)
    80002f78:	00813023          	sd	s0,0(sp)
    80002f7c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    80002f80:	00000097          	auipc	ra,0x0
    80002f84:	80c080e7          	jalr	-2036(ra) # 8000278c <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80002f88:	fffff097          	auipc	ra,0xfffff
    80002f8c:	408080e7          	jalr	1032(ra) # 80002390 <_ZN15MemoryAllocator9mem_allocEm>
}
    80002f90:	00813083          	ld	ra,8(sp)
    80002f94:	00013403          	ld	s0,0(sp)
    80002f98:	01010113          	addi	sp,sp,16
    80002f9c:	00008067          	ret

0000000080002fa0 <_ZN10ThreadList9push_backEP3TCB>:
void ThreadList::push_back(TCB *thread) {
    80002fa0:	fe010113          	addi	sp,sp,-32
    80002fa4:	00113c23          	sd	ra,24(sp)
    80002fa8:	00813823          	sd	s0,16(sp)
    80002fac:	00913423          	sd	s1,8(sp)
    80002fb0:	01213023          	sd	s2,0(sp)
    80002fb4:	02010413          	addi	s0,sp,32
    80002fb8:	00050493          	mv	s1,a0
    80002fbc:	00058913          	mv	s2,a1
    tail = (head ? tail -> next : head) = new Node(thread);
    80002fc0:	01000513          	li	a0,16
    80002fc4:	00000097          	auipc	ra,0x0
    80002fc8:	fac080e7          	jalr	-84(ra) # 80002f70 <_ZN10ThreadList4NodenwEm>
        struct Node *next;

        void* operator new(size_t size);
        void operator delete(void* addr);

        explicit Node(TCB* data) : data(data), next(nullptr) {}
    80002fcc:	01253023          	sd	s2,0(a0)
    80002fd0:	00053423          	sd	zero,8(a0)
    80002fd4:	0004b783          	ld	a5,0(s1)
    80002fd8:	02078463          	beqz	a5,80003000 <_ZN10ThreadList9push_backEP3TCB+0x60>
    80002fdc:	0084b783          	ld	a5,8(s1)
    80002fe0:	00a7b423          	sd	a0,8(a5)
    80002fe4:	00a4b423          	sd	a0,8(s1)
}
    80002fe8:	01813083          	ld	ra,24(sp)
    80002fec:	01013403          	ld	s0,16(sp)
    80002ff0:	00813483          	ld	s1,8(sp)
    80002ff4:	00013903          	ld	s2,0(sp)
    80002ff8:	02010113          	addi	sp,sp,32
    80002ffc:	00008067          	ret
    tail = (head ? tail -> next : head) = new Node(thread);
    80003000:	00a4b023          	sd	a0,0(s1)
    80003004:	fe1ff06f          	j	80002fe4 <_ZN10ThreadList9push_backEP3TCB+0x44>

0000000080003008 <_ZN10ThreadList4NodedlEPv>:

void ThreadList::Node::operator delete(void *addr) {
    80003008:	ff010113          	addi	sp,sp,-16
    8000300c:	00113423          	sd	ra,8(sp)
    80003010:	00813023          	sd	s0,0(sp)
    80003014:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    80003018:	fffff097          	auipc	ra,0xfffff
    8000301c:	564080e7          	jalr	1380(ra) # 8000257c <_ZN15MemoryAllocator8mem_freeEPv>
}
    80003020:	00813083          	ld	ra,8(sp)
    80003024:	00013403          	ld	s0,0(sp)
    80003028:	01010113          	addi	sp,sp,16
    8000302c:	00008067          	ret

0000000080003030 <_ZN10ThreadList12remove_firstEv>:
TCB *ThreadList::remove_first() {
    80003030:	fe010113          	addi	sp,sp,-32
    80003034:	00113c23          	sd	ra,24(sp)
    80003038:	00813823          	sd	s0,16(sp)
    8000303c:	00913423          	sd	s1,8(sp)
    80003040:	02010413          	addi	s0,sp,32
    80003044:	00050793          	mv	a5,a0
    if (!head) return nullptr;
    80003048:	00053503          	ld	a0,0(a0)
    8000304c:	02050863          	beqz	a0,8000307c <_ZN10ThreadList12remove_firstEv+0x4c>
    TCB* thread = tmp -> data;
    80003050:	00053483          	ld	s1,0(a0)
    head = head -> next;
    80003054:	00853703          	ld	a4,8(a0)
    80003058:	00e7b023          	sd	a4,0(a5)
    delete tmp;
    8000305c:	00000097          	auipc	ra,0x0
    80003060:	fac080e7          	jalr	-84(ra) # 80003008 <_ZN10ThreadList4NodedlEPv>
}
    80003064:	00048513          	mv	a0,s1
    80003068:	01813083          	ld	ra,24(sp)
    8000306c:	01013403          	ld	s0,16(sp)
    80003070:	00813483          	ld	s1,8(sp)
    80003074:	02010113          	addi	sp,sp,32
    80003078:	00008067          	ret
    if (!head) return nullptr;
    8000307c:	00050493          	mv	s1,a0
    80003080:	fe5ff06f          	j	80003064 <_ZN10ThreadList12remove_firstEv+0x34>

0000000080003084 <_ZN10ThreadList4freeEv>:
void ThreadList::free() {
    80003084:	fe010113          	addi	sp,sp,-32
    80003088:	00113c23          	sd	ra,24(sp)
    8000308c:	00813823          	sd	s0,16(sp)
    80003090:	00913423          	sd	s1,8(sp)
    80003094:	02010413          	addi	s0,sp,32
    80003098:	00050493          	mv	s1,a0
    while (get_first()) remove_first();
    8000309c:	00048513          	mv	a0,s1
    800030a0:	00000097          	auipc	ra,0x0
    800030a4:	eac080e7          	jalr	-340(ra) # 80002f4c <_ZN10ThreadList9get_firstEv>
    800030a8:	00050a63          	beqz	a0,800030bc <_ZN10ThreadList4freeEv+0x38>
    800030ac:	00048513          	mv	a0,s1
    800030b0:	00000097          	auipc	ra,0x0
    800030b4:	f80080e7          	jalr	-128(ra) # 80003030 <_ZN10ThreadList12remove_firstEv>
    800030b8:	fe5ff06f          	j	8000309c <_ZN10ThreadList4freeEv+0x18>
}
    800030bc:	01813083          	ld	ra,24(sp)
    800030c0:	01013403          	ld	s0,16(sp)
    800030c4:	00813483          	ld	s1,8(sp)
    800030c8:	02010113          	addi	sp,sp,32
    800030cc:	00008067          	ret

00000000800030d0 <_ZN3TCBC1EPFvPvES0_S0_>:

TCB::TCB(void (*function_body)(void *), void *arg, void *stack) {
    context = {
            (uint64) wrapper_function,
            /// stack starts from max address, rises to lower locations
            (uint64) (stack ? (uint64) stack + DEFAULT_STACK_SIZE - 1 : 0)
    800030d0:	08068463          	beqz	a3,80003158 <_ZN3TCBC1EPFvPvES0_S0_+0x88>
    800030d4:	000017b7          	lui	a5,0x1
    800030d8:	fff78793          	addi	a5,a5,-1 # fff <_entry-0x7ffff001>
    800030dc:	00f687b3          	add	a5,a3,a5
    context = {
    800030e0:	00000717          	auipc	a4,0x0
    800030e4:	24c70713          	addi	a4,a4,588 # 8000332c <_ZN3TCB16wrapper_functionEv>
    800030e8:	00e53423          	sd	a4,8(a0)
    800030ec:	00f53823          	sd	a5,16(a0)
    };
    id = cnt++;
    800030f0:	00009717          	auipc	a4,0x9
    800030f4:	c9870713          	addi	a4,a4,-872 # 8000bd88 <_ZN3TCB3cntE>
    800030f8:	00072783          	lw	a5,0(a4)
    800030fc:	0017881b          	addiw	a6,a5,1
    80003100:	01072023          	sw	a6,0(a4)
    80003104:	00f52023          	sw	a5,0(a0)
    status = RUNNABLE;
    80003108:	00052c23          	sw	zero,24(a0)
    this -> function_body = function_body;
    8000310c:	02b53023          	sd	a1,32(a0)
    this -> arg = arg;
    80003110:	02c53423          	sd	a2,40(a0)
    this -> stack = stack;
    80003114:	02d53823          	sd	a3,48(a0)
    time_slice = DEFAULT_TIME_SLICE;
    80003118:	00200793          	li	a5,2
    8000311c:	02f53c23          	sd	a5,56(a0)
    time_to_sleep = 0;
    80003120:	04053423          	sd	zero,72(a0)
    next_ready = nullptr;
    80003124:	04053023          	sd	zero,64(a0)
    next_sleeping = nullptr;
    80003128:	04053823          	sd	zero,80(a0)
    if (function_body) Scheduler::put(this);
    8000312c:	02058a63          	beqz	a1,80003160 <_ZN3TCBC1EPFvPvES0_S0_+0x90>
TCB::TCB(void (*function_body)(void *), void *arg, void *stack) {
    80003130:	ff010113          	addi	sp,sp,-16
    80003134:	00113423          	sd	ra,8(sp)
    80003138:	00813023          	sd	s0,0(sp)
    8000313c:	01010413          	addi	s0,sp,16
    if (function_body) Scheduler::put(this);
    80003140:	00000097          	auipc	ra,0x0
    80003144:	83c080e7          	jalr	-1988(ra) # 8000297c <_ZN9Scheduler3putEP3TCB>
}
    80003148:	00813083          	ld	ra,8(sp)
    8000314c:	00013403          	ld	s0,0(sp)
    80003150:	01010113          	addi	sp,sp,16
    80003154:	00008067          	ret
            (uint64) (stack ? (uint64) stack + DEFAULT_STACK_SIZE - 1 : 0)
    80003158:	00000793          	li	a5,0
    8000315c:	f85ff06f          	j	800030e0 <_ZN3TCBC1EPFvPvES0_S0_+0x10>
    80003160:	00008067          	ret

0000000080003164 <_ZN3TCB5yieldEPS_S0_>:
    else RiscV::popSppSpie(true);
    if (running -> function_body) running -> function_body(running -> arg);
    thread_exit();
}

void TCB::yield(TCB *old_running, TCB *new_running) {
    80003164:	fe010113          	addi	sp,sp,-32
    80003168:	00113c23          	sd	ra,24(sp)
    8000316c:	00813823          	sd	s0,16(sp)
    80003170:	00913423          	sd	s1,8(sp)
    80003174:	01213023          	sd	s2,0(sp)
    80003178:	02010413          	addi	s0,sp,32
    8000317c:	00050493          	mv	s1,a0
    80003180:	00058913          	mv	s2,a1
    RiscV::push_registers();
    80003184:	ffffe097          	auipc	ra,0xffffe
    80003188:	f84080e7          	jalr	-124(ra) # 80001108 <_ZN5RiscV14push_registersEv>
    if (old_running != new_running) context_switch(&old_running -> context, &new_running -> context);
    8000318c:	01248a63          	beq	s1,s2,800031a0 <_ZN3TCB5yieldEPS_S0_+0x3c>
    80003190:	00890593          	addi	a1,s2,8
    80003194:	00848513          	addi	a0,s1,8
    80003198:	ffffe097          	auipc	ra,0xffffe
    8000319c:	070080e7          	jalr	112(ra) # 80001208 <_ZN3TCB14context_switchEPNS_7ContextES1_>
    RiscV::pop_registers();
    800031a0:	ffffe097          	auipc	ra,0xffffe
    800031a4:	fe8080e7          	jalr	-24(ra) # 80001188 <_ZN5RiscV13pop_registersEv>
}
    800031a8:	01813083          	ld	ra,24(sp)
    800031ac:	01013403          	ld	s0,16(sp)
    800031b0:	00813483          	ld	s1,8(sp)
    800031b4:	00013903          	ld	s2,0(sp)
    800031b8:	02010113          	addi	sp,sp,32
    800031bc:	00008067          	ret

00000000800031c0 <_ZN3TCB8dispatchEv>:

void TCB::dispatch() {
    800031c0:	fe010113          	addi	sp,sp,-32
    800031c4:	00113c23          	sd	ra,24(sp)
    800031c8:	00813823          	sd	s0,16(sp)
    800031cc:	00913423          	sd	s1,8(sp)
    800031d0:	02010413          	addi	s0,sp,32
    TCB* old = running;
    800031d4:	00009497          	auipc	s1,0x9
    800031d8:	bbc4b483          	ld	s1,-1092(s1) # 8000bd90 <_ZN3TCB7runningE>
    if (old -> status == RUNNABLE) Scheduler::put(old);
    800031dc:	0184a783          	lw	a5,24(s1)
    800031e0:	02078e63          	beqz	a5,8000321c <_ZN3TCB8dispatchEv+0x5c>
    running = Scheduler::get();
    800031e4:	fffff097          	auipc	ra,0xfffff
    800031e8:	7f8080e7          	jalr	2040(ra) # 800029dc <_ZN9Scheduler3getEv>
    800031ec:	00050593          	mv	a1,a0
    800031f0:	00009797          	auipc	a5,0x9
    800031f4:	baa7b023          	sd	a0,-1120(a5) # 8000bd90 <_ZN3TCB7runningE>
    if (old != running) yield(old, running);
    800031f8:	00a48863          	beq	s1,a0,80003208 <_ZN3TCB8dispatchEv+0x48>
    800031fc:	00048513          	mv	a0,s1
    80003200:	00000097          	auipc	ra,0x0
    80003204:	f64080e7          	jalr	-156(ra) # 80003164 <_ZN3TCB5yieldEPS_S0_>
}
    80003208:	01813083          	ld	ra,24(sp)
    8000320c:	01013403          	ld	s0,16(sp)
    80003210:	00813483          	ld	s1,8(sp)
    80003214:	02010113          	addi	sp,sp,32
    80003218:	00008067          	ret
    if (old -> status == RUNNABLE) Scheduler::put(old);
    8000321c:	00048513          	mv	a0,s1
    80003220:	fffff097          	auipc	ra,0xfffff
    80003224:	75c080e7          	jalr	1884(ra) # 8000297c <_ZN9Scheduler3putEP3TCB>
    80003228:	fbdff06f          	j	800031e4 <_ZN3TCB8dispatchEv+0x24>

000000008000322c <_ZNK3TCB14get_next_readyEv>:

TCB *TCB::get_next_ready() const {
    8000322c:	ff010113          	addi	sp,sp,-16
    80003230:	00813423          	sd	s0,8(sp)
    80003234:	01010413          	addi	s0,sp,16
    return next_ready;
}
    80003238:	04053503          	ld	a0,64(a0)
    8000323c:	00813403          	ld	s0,8(sp)
    80003240:	01010113          	addi	sp,sp,16
    80003244:	00008067          	ret

0000000080003248 <_ZN3TCB14set_next_readyEPS_>:

void TCB::set_next_ready(TCB *next) {
    80003248:	ff010113          	addi	sp,sp,-16
    8000324c:	00813423          	sd	s0,8(sp)
    80003250:	01010413          	addi	s0,sp,16
    next_ready = next;
    80003254:	04b53023          	sd	a1,64(a0)
}
    80003258:	00813403          	ld	s0,8(sp)
    8000325c:	01010113          	addi	sp,sp,16
    80003260:	00008067          	ret

0000000080003264 <_ZN3TCB17set_next_sleepingEPS_>:

void TCB::set_next_sleeping(TCB *next) {
    80003264:	ff010113          	addi	sp,sp,-16
    80003268:	00813423          	sd	s0,8(sp)
    8000326c:	01010413          	addi	s0,sp,16
    next_sleeping = next;
    80003270:	04b53823          	sd	a1,80(a0)
}
    80003274:	00813403          	ld	s0,8(sp)
    80003278:	01010113          	addi	sp,sp,16
    8000327c:	00008067          	ret

0000000080003280 <_ZNK3TCB17get_next_sleepingEv>:

TCB* TCB::get_next_sleeping() const {
    80003280:	ff010113          	addi	sp,sp,-16
    80003284:	00813423          	sd	s0,8(sp)
    80003288:	01010413          	addi	s0,sp,16
    return next_sleeping;
}
    8000328c:	05053503          	ld	a0,80(a0)
    80003290:	00813403          	ld	s0,8(sp)
    80003294:	01010113          	addi	sp,sp,16
    80003298:	00008067          	ret

000000008000329c <_ZN3TCB17set_time_to_sleepEm>:

void TCB::set_time_to_sleep(time_t time) {
    8000329c:	ff010113          	addi	sp,sp,-16
    800032a0:	00813423          	sd	s0,8(sp)
    800032a4:	01010413          	addi	s0,sp,16
    time_to_sleep = time;
    800032a8:	04b53423          	sd	a1,72(a0)
}
    800032ac:	00813403          	ld	s0,8(sp)
    800032b0:	01010113          	addi	sp,sp,16
    800032b4:	00008067          	ret

00000000800032b8 <_ZNK3TCB17get_time_to_sleepEv>:

time_t TCB::get_time_to_sleep() const {
    800032b8:	ff010113          	addi	sp,sp,-16
    800032bc:	00813423          	sd	s0,8(sp)
    800032c0:	01010413          	addi	s0,sp,16
    return time_to_sleep;
}
    800032c4:	04853503          	ld	a0,72(a0)
    800032c8:	00813403          	ld	s0,8(sp)
    800032cc:	01010113          	addi	sp,sp,16
    800032d0:	00008067          	ret

00000000800032d4 <_ZN3TCB10set_statusENS_6StatusE>:

void TCB::set_status(TCB::Status stat) {
    800032d4:	ff010113          	addi	sp,sp,-16
    800032d8:	00813423          	sd	s0,8(sp)
    800032dc:	01010413          	addi	s0,sp,16
    this -> status = stat;
    800032e0:	00b52c23          	sw	a1,24(a0)
}
    800032e4:	00813403          	ld	s0,8(sp)
    800032e8:	01010113          	addi	sp,sp,16
    800032ec:	00008067          	ret

00000000800032f0 <_ZN3TCB11thread_exitEv>:
void TCB::thread_exit() {
    800032f0:	ff010113          	addi	sp,sp,-16
    800032f4:	00113423          	sd	ra,8(sp)
    800032f8:	00813023          	sd	s0,0(sp)
    800032fc:	01010413          	addi	s0,sp,16
    running -> set_status(Status::FINISHED);
    80003300:	00300593          	li	a1,3
    80003304:	00009517          	auipc	a0,0x9
    80003308:	a8c53503          	ld	a0,-1396(a0) # 8000bd90 <_ZN3TCB7runningE>
    8000330c:	00000097          	auipc	ra,0x0
    80003310:	fc8080e7          	jalr	-56(ra) # 800032d4 <_ZN3TCB10set_statusENS_6StatusE>
    dispatch();
    80003314:	00000097          	auipc	ra,0x0
    80003318:	eac080e7          	jalr	-340(ra) # 800031c0 <_ZN3TCB8dispatchEv>
}
    8000331c:	00813083          	ld	ra,8(sp)
    80003320:	00013403          	ld	s0,0(sp)
    80003324:	01010113          	addi	sp,sp,16
    80003328:	00008067          	ret

000000008000332c <_ZN3TCB16wrapper_functionEv>:
void TCB::wrapper_function() {
    8000332c:	ff010113          	addi	sp,sp,-16
    80003330:	00113423          	sd	ra,8(sp)
    80003334:	00813023          	sd	s0,0(sp)
    80003338:	01010413          	addi	s0,sp,16
    if (!running -> function_body || (running -> function_body && running->function_body == kernelConsoleOutput))
    8000333c:	00009797          	auipc	a5,0x9
    80003340:	a547b783          	ld	a5,-1452(a5) # 8000bd90 <_ZN3TCB7runningE>
    80003344:	0207b783          	ld	a5,32(a5)
    80003348:	02078063          	beqz	a5,80003368 <_ZN3TCB16wrapper_functionEv+0x3c>
    8000334c:	00009717          	auipc	a4,0x9
    80003350:	99473703          	ld	a4,-1644(a4) # 8000bce0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80003354:	00e78a63          	beq	a5,a4,80003368 <_ZN3TCB16wrapper_functionEv+0x3c>
    else RiscV::popSppSpie(true);
    80003358:	00100513          	li	a0,1
    8000335c:	00000097          	auipc	ra,0x0
    80003360:	8f8080e7          	jalr	-1800(ra) # 80002c54 <_ZN5RiscV10popSppSpieEb>
    80003364:	0100006f          	j	80003374 <_ZN3TCB16wrapper_functionEv+0x48>
        RiscV::popSppSpie(false);
    80003368:	00000513          	li	a0,0
    8000336c:	00000097          	auipc	ra,0x0
    80003370:	8e8080e7          	jalr	-1816(ra) # 80002c54 <_ZN5RiscV10popSppSpieEb>
    if (running -> function_body) running -> function_body(running -> arg);
    80003374:	00009717          	auipc	a4,0x9
    80003378:	a1c73703          	ld	a4,-1508(a4) # 8000bd90 <_ZN3TCB7runningE>
    8000337c:	02073783          	ld	a5,32(a4)
    80003380:	00078663          	beqz	a5,8000338c <_ZN3TCB16wrapper_functionEv+0x60>
    80003384:	02873503          	ld	a0,40(a4)
    80003388:	000780e7          	jalr	a5
    thread_exit();
    8000338c:	00000097          	auipc	ra,0x0
    80003390:	f64080e7          	jalr	-156(ra) # 800032f0 <_ZN3TCB11thread_exitEv>
}
    80003394:	00813083          	ld	ra,8(sp)
    80003398:	00013403          	ld	s0,0(sp)
    8000339c:	01010113          	addi	sp,sp,16
    800033a0:	00008067          	ret

00000000800033a4 <_ZN3TCBnwEm>:

void *TCB::operator new(size_t size) {
    800033a4:	ff010113          	addi	sp,sp,-16
    800033a8:	00113423          	sd	ra,8(sp)
    800033ac:	00813023          	sd	s0,0(sp)
    800033b0:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    800033b4:	fffff097          	auipc	ra,0xfffff
    800033b8:	3d8080e7          	jalr	984(ra) # 8000278c <_ZN15MemoryAllocator20get_number_of_blocksEm>
    800033bc:	fffff097          	auipc	ra,0xfffff
    800033c0:	fd4080e7          	jalr	-44(ra) # 80002390 <_ZN15MemoryAllocator9mem_allocEm>
}
    800033c4:	00813083          	ld	ra,8(sp)
    800033c8:	00013403          	ld	s0,0(sp)
    800033cc:	01010113          	addi	sp,sp,16
    800033d0:	00008067          	ret

00000000800033d4 <_ZN3TCBdlEPv>:

void TCB::operator delete(void *addr) {
    800033d4:	ff010113          	addi	sp,sp,-16
    800033d8:	00113423          	sd	ra,8(sp)
    800033dc:	00813023          	sd	s0,0(sp)
    800033e0:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    800033e4:	fffff097          	auipc	ra,0xfffff
    800033e8:	198080e7          	jalr	408(ra) # 8000257c <_ZN15MemoryAllocator8mem_freeEPv>
}
    800033ec:	00813083          	ld	ra,8(sp)
    800033f0:	00013403          	ld	s0,0(sp)
    800033f4:	01010113          	addi	sp,sp,16
    800033f8:	00008067          	ret

00000000800033fc <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>:
int TCB::thread_create(thread_t *handle, void(*start_routine)(void *), void *arg, void *stack_begin_address) {
    800033fc:	fc010113          	addi	sp,sp,-64
    80003400:	02113c23          	sd	ra,56(sp)
    80003404:	02813823          	sd	s0,48(sp)
    80003408:	02913423          	sd	s1,40(sp)
    8000340c:	03213023          	sd	s2,32(sp)
    80003410:	01313c23          	sd	s3,24(sp)
    80003414:	01413823          	sd	s4,16(sp)
    80003418:	01513423          	sd	s5,8(sp)
    8000341c:	04010413          	addi	s0,sp,64
    80003420:	00050913          	mv	s2,a0
    80003424:	00058993          	mv	s3,a1
    80003428:	00060a13          	mv	s4,a2
    8000342c:	00068a93          	mv	s5,a3
    *handle = new TCB(start_routine, arg, stack_begin_address);
    80003430:	05800513          	li	a0,88
    80003434:	00000097          	auipc	ra,0x0
    80003438:	f70080e7          	jalr	-144(ra) # 800033a4 <_ZN3TCBnwEm>
    8000343c:	00050493          	mv	s1,a0
    80003440:	000a8693          	mv	a3,s5
    80003444:	000a0613          	mv	a2,s4
    80003448:	00098593          	mv	a1,s3
    8000344c:	00000097          	auipc	ra,0x0
    80003450:	c84080e7          	jalr	-892(ra) # 800030d0 <_ZN3TCBC1EPFvPvES0_S0_>
    80003454:	0200006f          	j	80003474 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_+0x78>
    80003458:	00050913          	mv	s2,a0
    8000345c:	00048513          	mv	a0,s1
    80003460:	00000097          	auipc	ra,0x0
    80003464:	f74080e7          	jalr	-140(ra) # 800033d4 <_ZN3TCBdlEPv>
    80003468:	00090513          	mv	a0,s2
    8000346c:	0000a097          	auipc	ra,0xa
    80003470:	a4c080e7          	jalr	-1460(ra) # 8000ceb8 <_Unwind_Resume>
    80003474:	00993023          	sd	s1,0(s2)
}
    80003478:	00000513          	li	a0,0
    8000347c:	03813083          	ld	ra,56(sp)
    80003480:	03013403          	ld	s0,48(sp)
    80003484:	02813483          	ld	s1,40(sp)
    80003488:	02013903          	ld	s2,32(sp)
    8000348c:	01813983          	ld	s3,24(sp)
    80003490:	01013a03          	ld	s4,16(sp)
    80003494:	00813a83          	ld	s5,8(sp)
    80003498:	04010113          	addi	sp,sp,64
    8000349c:	00008067          	ret

00000000800034a0 <_ZNK3TCB14get_time_sliceEv>:

time_t TCB::get_time_slice() const {
    800034a0:	ff010113          	addi	sp,sp,-16
    800034a4:	00813423          	sd	s0,8(sp)
    800034a8:	01010413          	addi	s0,sp,16
    return time_slice;
}
    800034ac:	03853503          	ld	a0,56(a0)
    800034b0:	00813403          	ld	s0,8(sp)
    800034b4:	01010113          	addi	sp,sp,16
    800034b8:	00008067          	ret

00000000800034bc <_ZNK3TCB11is_finishedEv>:

bool TCB::is_finished() const {
    800034bc:	ff010113          	addi	sp,sp,-16
    800034c0:	00813423          	sd	s0,8(sp)
    800034c4:	01010413          	addi	s0,sp,16
    return status == FINISHED;
    800034c8:	01852503          	lw	a0,24(a0)
    800034cc:	ffd50513          	addi	a0,a0,-3
}
    800034d0:	00153513          	seqz	a0,a0
    800034d4:	00813403          	ld	s0,8(sp)
    800034d8:	01010113          	addi	sp,sp,16
    800034dc:	00008067          	ret

00000000800034e0 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    800034e0:	fe010113          	addi	sp,sp,-32
    800034e4:	00113c23          	sd	ra,24(sp)
    800034e8:	00813823          	sd	s0,16(sp)
    800034ec:	00913423          	sd	s1,8(sp)
    800034f0:	01213023          	sd	s2,0(sp)
    800034f4:	02010413          	addi	s0,sp,32
    800034f8:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800034fc:	00000913          	li	s2,0
    80003500:	00c0006f          	j	8000350c <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003504:	ffffe097          	auipc	ra,0xffffe
    80003508:	ec8080e7          	jalr	-312(ra) # 800013cc <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    8000350c:	ffffe097          	auipc	ra,0xffffe
    80003510:	114080e7          	jalr	276(ra) # 80001620 <_Z4getcv>
    80003514:	0005059b          	sext.w	a1,a0
    80003518:	01b00793          	li	a5,27
    8000351c:	02f58a63          	beq	a1,a5,80003550 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80003520:	0084b503          	ld	a0,8(s1)
    80003524:	00001097          	auipc	ra,0x1
    80003528:	66c080e7          	jalr	1644(ra) # 80004b90 <_ZN6Buffer3putEi>
        i++;
    8000352c:	0019071b          	addiw	a4,s2,1
    80003530:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003534:	0004a683          	lw	a3,0(s1)
    80003538:	0026979b          	slliw	a5,a3,0x2
    8000353c:	00d787bb          	addw	a5,a5,a3
    80003540:	0017979b          	slliw	a5,a5,0x1
    80003544:	02f767bb          	remw	a5,a4,a5
    80003548:	fc0792e3          	bnez	a5,8000350c <_ZL16producerKeyboardPv+0x2c>
    8000354c:	fb9ff06f          	j	80003504 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80003550:	00100793          	li	a5,1
    80003554:	00009717          	auipc	a4,0x9
    80003558:	84f72623          	sw	a5,-1972(a4) # 8000bda0 <_ZL9threadEnd>
    data->buffer->put('!');
    8000355c:	02100593          	li	a1,33
    80003560:	0084b503          	ld	a0,8(s1)
    80003564:	00001097          	auipc	ra,0x1
    80003568:	62c080e7          	jalr	1580(ra) # 80004b90 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    8000356c:	0104b503          	ld	a0,16(s1)
    80003570:	ffffe097          	auipc	ra,0xffffe
    80003574:	f80080e7          	jalr	-128(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    80003578:	01813083          	ld	ra,24(sp)
    8000357c:	01013403          	ld	s0,16(sp)
    80003580:	00813483          	ld	s1,8(sp)
    80003584:	00013903          	ld	s2,0(sp)
    80003588:	02010113          	addi	sp,sp,32
    8000358c:	00008067          	ret

0000000080003590 <_ZL8producerPv>:

static void producer(void *arg) {
    80003590:	fe010113          	addi	sp,sp,-32
    80003594:	00113c23          	sd	ra,24(sp)
    80003598:	00813823          	sd	s0,16(sp)
    8000359c:	00913423          	sd	s1,8(sp)
    800035a0:	01213023          	sd	s2,0(sp)
    800035a4:	02010413          	addi	s0,sp,32
    800035a8:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800035ac:	00000913          	li	s2,0
    800035b0:	00c0006f          	j	800035bc <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800035b4:	ffffe097          	auipc	ra,0xffffe
    800035b8:	e18080e7          	jalr	-488(ra) # 800013cc <_Z15thread_dispatchv>
    while (!threadEnd) {
    800035bc:	00008797          	auipc	a5,0x8
    800035c0:	7e47a783          	lw	a5,2020(a5) # 8000bda0 <_ZL9threadEnd>
    800035c4:	02079e63          	bnez	a5,80003600 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    800035c8:	0004a583          	lw	a1,0(s1)
    800035cc:	0305859b          	addiw	a1,a1,48
    800035d0:	0084b503          	ld	a0,8(s1)
    800035d4:	00001097          	auipc	ra,0x1
    800035d8:	5bc080e7          	jalr	1468(ra) # 80004b90 <_ZN6Buffer3putEi>
        i++;
    800035dc:	0019071b          	addiw	a4,s2,1
    800035e0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800035e4:	0004a683          	lw	a3,0(s1)
    800035e8:	0026979b          	slliw	a5,a3,0x2
    800035ec:	00d787bb          	addw	a5,a5,a3
    800035f0:	0017979b          	slliw	a5,a5,0x1
    800035f4:	02f767bb          	remw	a5,a4,a5
    800035f8:	fc0792e3          	bnez	a5,800035bc <_ZL8producerPv+0x2c>
    800035fc:	fb9ff06f          	j	800035b4 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80003600:	0104b503          	ld	a0,16(s1)
    80003604:	ffffe097          	auipc	ra,0xffffe
    80003608:	eec080e7          	jalr	-276(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    8000360c:	01813083          	ld	ra,24(sp)
    80003610:	01013403          	ld	s0,16(sp)
    80003614:	00813483          	ld	s1,8(sp)
    80003618:	00013903          	ld	s2,0(sp)
    8000361c:	02010113          	addi	sp,sp,32
    80003620:	00008067          	ret

0000000080003624 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80003624:	fd010113          	addi	sp,sp,-48
    80003628:	02113423          	sd	ra,40(sp)
    8000362c:	02813023          	sd	s0,32(sp)
    80003630:	00913c23          	sd	s1,24(sp)
    80003634:	01213823          	sd	s2,16(sp)
    80003638:	01313423          	sd	s3,8(sp)
    8000363c:	03010413          	addi	s0,sp,48
    80003640:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003644:	00000993          	li	s3,0
    80003648:	01c0006f          	j	80003664 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    8000364c:	ffffe097          	auipc	ra,0xffffe
    80003650:	d80080e7          	jalr	-640(ra) # 800013cc <_Z15thread_dispatchv>
    80003654:	0500006f          	j	800036a4 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80003658:	00a00513          	li	a0,10
    8000365c:	ffffe097          	auipc	ra,0xffffe
    80003660:	010080e7          	jalr	16(ra) # 8000166c <_Z4putcc>
    while (!threadEnd) {
    80003664:	00008797          	auipc	a5,0x8
    80003668:	73c7a783          	lw	a5,1852(a5) # 8000bda0 <_ZL9threadEnd>
    8000366c:	06079063          	bnez	a5,800036cc <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80003670:	00893503          	ld	a0,8(s2)
    80003674:	00001097          	auipc	ra,0x1
    80003678:	5ac080e7          	jalr	1452(ra) # 80004c20 <_ZN6Buffer3getEv>
        i++;
    8000367c:	0019849b          	addiw	s1,s3,1
    80003680:	0004899b          	sext.w	s3,s1
        putc(key);
    80003684:	0ff57513          	andi	a0,a0,255
    80003688:	ffffe097          	auipc	ra,0xffffe
    8000368c:	fe4080e7          	jalr	-28(ra) # 8000166c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80003690:	00092703          	lw	a4,0(s2)
    80003694:	0027179b          	slliw	a5,a4,0x2
    80003698:	00e787bb          	addw	a5,a5,a4
    8000369c:	02f4e7bb          	remw	a5,s1,a5
    800036a0:	fa0786e3          	beqz	a5,8000364c <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    800036a4:	05000793          	li	a5,80
    800036a8:	02f4e4bb          	remw	s1,s1,a5
    800036ac:	fa049ce3          	bnez	s1,80003664 <_ZL8consumerPv+0x40>
    800036b0:	fa9ff06f          	j	80003658 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    800036b4:	00893503          	ld	a0,8(s2)
    800036b8:	00001097          	auipc	ra,0x1
    800036bc:	568080e7          	jalr	1384(ra) # 80004c20 <_ZN6Buffer3getEv>
        putc(key);
    800036c0:	0ff57513          	andi	a0,a0,255
    800036c4:	ffffe097          	auipc	ra,0xffffe
    800036c8:	fa8080e7          	jalr	-88(ra) # 8000166c <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    800036cc:	00893503          	ld	a0,8(s2)
    800036d0:	00001097          	auipc	ra,0x1
    800036d4:	5dc080e7          	jalr	1500(ra) # 80004cac <_ZN6Buffer6getCntEv>
    800036d8:	fca04ee3          	bgtz	a0,800036b4 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    800036dc:	01093503          	ld	a0,16(s2)
    800036e0:	ffffe097          	auipc	ra,0xffffe
    800036e4:	e10080e7          	jalr	-496(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    800036e8:	02813083          	ld	ra,40(sp)
    800036ec:	02013403          	ld	s0,32(sp)
    800036f0:	01813483          	ld	s1,24(sp)
    800036f4:	01013903          	ld	s2,16(sp)
    800036f8:	00813983          	ld	s3,8(sp)
    800036fc:	03010113          	addi	sp,sp,48
    80003700:	00008067          	ret

0000000080003704 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80003704:	f9010113          	addi	sp,sp,-112
    80003708:	06113423          	sd	ra,104(sp)
    8000370c:	06813023          	sd	s0,96(sp)
    80003710:	04913c23          	sd	s1,88(sp)
    80003714:	05213823          	sd	s2,80(sp)
    80003718:	05313423          	sd	s3,72(sp)
    8000371c:	05413023          	sd	s4,64(sp)
    80003720:	03513c23          	sd	s5,56(sp)
    80003724:	03613823          	sd	s6,48(sp)
    80003728:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    8000372c:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003730:	00006517          	auipc	a0,0x6
    80003734:	a1050513          	addi	a0,a0,-1520 # 80009140 <CONSOLE_STATUS+0x130>
    80003738:	00002097          	auipc	ra,0x2
    8000373c:	540080e7          	jalr	1344(ra) # 80005c78 <_Z11printStringPKc>
    getString(input, 30);
    80003740:	01e00593          	li	a1,30
    80003744:	fa040493          	addi	s1,s0,-96
    80003748:	00048513          	mv	a0,s1
    8000374c:	00002097          	auipc	ra,0x2
    80003750:	5b4080e7          	jalr	1460(ra) # 80005d00 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003754:	00048513          	mv	a0,s1
    80003758:	00002097          	auipc	ra,0x2
    8000375c:	680080e7          	jalr	1664(ra) # 80005dd8 <_Z11stringToIntPKc>
    80003760:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003764:	00006517          	auipc	a0,0x6
    80003768:	9fc50513          	addi	a0,a0,-1540 # 80009160 <CONSOLE_STATUS+0x150>
    8000376c:	00002097          	auipc	ra,0x2
    80003770:	50c080e7          	jalr	1292(ra) # 80005c78 <_Z11printStringPKc>
    getString(input, 30);
    80003774:	01e00593          	li	a1,30
    80003778:	00048513          	mv	a0,s1
    8000377c:	00002097          	auipc	ra,0x2
    80003780:	584080e7          	jalr	1412(ra) # 80005d00 <_Z9getStringPci>
    n = stringToInt(input);
    80003784:	00048513          	mv	a0,s1
    80003788:	00002097          	auipc	ra,0x2
    8000378c:	650080e7          	jalr	1616(ra) # 80005dd8 <_Z11stringToIntPKc>
    80003790:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003794:	00006517          	auipc	a0,0x6
    80003798:	9ec50513          	addi	a0,a0,-1556 # 80009180 <CONSOLE_STATUS+0x170>
    8000379c:	00002097          	auipc	ra,0x2
    800037a0:	4dc080e7          	jalr	1244(ra) # 80005c78 <_Z11printStringPKc>
    800037a4:	00000613          	li	a2,0
    800037a8:	00a00593          	li	a1,10
    800037ac:	00090513          	mv	a0,s2
    800037b0:	00002097          	auipc	ra,0x2
    800037b4:	678080e7          	jalr	1656(ra) # 80005e28 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800037b8:	00006517          	auipc	a0,0x6
    800037bc:	9e050513          	addi	a0,a0,-1568 # 80009198 <CONSOLE_STATUS+0x188>
    800037c0:	00002097          	auipc	ra,0x2
    800037c4:	4b8080e7          	jalr	1208(ra) # 80005c78 <_Z11printStringPKc>
    800037c8:	00000613          	li	a2,0
    800037cc:	00a00593          	li	a1,10
    800037d0:	00048513          	mv	a0,s1
    800037d4:	00002097          	auipc	ra,0x2
    800037d8:	654080e7          	jalr	1620(ra) # 80005e28 <_Z8printIntiii>
    printString(".\n");
    800037dc:	00006517          	auipc	a0,0x6
    800037e0:	9d450513          	addi	a0,a0,-1580 # 800091b0 <CONSOLE_STATUS+0x1a0>
    800037e4:	00002097          	auipc	ra,0x2
    800037e8:	494080e7          	jalr	1172(ra) # 80005c78 <_Z11printStringPKc>
    if(threadNum > n) {
    800037ec:	0324c463          	blt	s1,s2,80003814 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    800037f0:	03205c63          	blez	s2,80003828 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    800037f4:	03800513          	li	a0,56
    800037f8:	ffffe097          	auipc	ra,0xffffe
    800037fc:	734080e7          	jalr	1844(ra) # 80001f2c <_Znwm>
    80003800:	00050a13          	mv	s4,a0
    80003804:	00048593          	mv	a1,s1
    80003808:	00001097          	auipc	ra,0x1
    8000380c:	2ec080e7          	jalr	748(ra) # 80004af4 <_ZN6BufferC1Ei>
    80003810:	0300006f          	j	80003840 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003814:	00006517          	auipc	a0,0x6
    80003818:	9a450513          	addi	a0,a0,-1628 # 800091b8 <CONSOLE_STATUS+0x1a8>
    8000381c:	00002097          	auipc	ra,0x2
    80003820:	45c080e7          	jalr	1116(ra) # 80005c78 <_Z11printStringPKc>
        return;
    80003824:	0140006f          	j	80003838 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003828:	00006517          	auipc	a0,0x6
    8000382c:	9d050513          	addi	a0,a0,-1584 # 800091f8 <CONSOLE_STATUS+0x1e8>
    80003830:	00002097          	auipc	ra,0x2
    80003834:	448080e7          	jalr	1096(ra) # 80005c78 <_Z11printStringPKc>
        return;
    80003838:	000b0113          	mv	sp,s6
    8000383c:	1500006f          	j	8000398c <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003840:	00000593          	li	a1,0
    80003844:	00008517          	auipc	a0,0x8
    80003848:	56450513          	addi	a0,a0,1380 # 8000bda8 <_ZL10waitForAll>
    8000384c:	ffffe097          	auipc	ra,0xffffe
    80003850:	bbc080e7          	jalr	-1092(ra) # 80001408 <_Z8sem_openPP3Semj>
    thread_t threads[threadNum];
    80003854:	00391793          	slli	a5,s2,0x3
    80003858:	00f78793          	addi	a5,a5,15
    8000385c:	ff07f793          	andi	a5,a5,-16
    80003860:	40f10133          	sub	sp,sp,a5
    80003864:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003868:	0019071b          	addiw	a4,s2,1
    8000386c:	00171793          	slli	a5,a4,0x1
    80003870:	00e787b3          	add	a5,a5,a4
    80003874:	00379793          	slli	a5,a5,0x3
    80003878:	00f78793          	addi	a5,a5,15
    8000387c:	ff07f793          	andi	a5,a5,-16
    80003880:	40f10133          	sub	sp,sp,a5
    80003884:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003888:	00191613          	slli	a2,s2,0x1
    8000388c:	012607b3          	add	a5,a2,s2
    80003890:	00379793          	slli	a5,a5,0x3
    80003894:	00f987b3          	add	a5,s3,a5
    80003898:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    8000389c:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    800038a0:	00008717          	auipc	a4,0x8
    800038a4:	50873703          	ld	a4,1288(a4) # 8000bda8 <_ZL10waitForAll>
    800038a8:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    800038ac:	00078613          	mv	a2,a5
    800038b0:	00000597          	auipc	a1,0x0
    800038b4:	d7458593          	addi	a1,a1,-652 # 80003624 <_ZL8consumerPv>
    800038b8:	f9840513          	addi	a0,s0,-104
    800038bc:	ffffe097          	auipc	ra,0xffffe
    800038c0:	a3c080e7          	jalr	-1476(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800038c4:	00000493          	li	s1,0
    800038c8:	0280006f          	j	800038f0 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    800038cc:	00000597          	auipc	a1,0x0
    800038d0:	c1458593          	addi	a1,a1,-1004 # 800034e0 <_ZL16producerKeyboardPv>
                      data + i);
    800038d4:	00179613          	slli	a2,a5,0x1
    800038d8:	00f60633          	add	a2,a2,a5
    800038dc:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    800038e0:	00c98633          	add	a2,s3,a2
    800038e4:	ffffe097          	auipc	ra,0xffffe
    800038e8:	a14080e7          	jalr	-1516(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800038ec:	0014849b          	addiw	s1,s1,1
    800038f0:	0524d263          	bge	s1,s2,80003934 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    800038f4:	00149793          	slli	a5,s1,0x1
    800038f8:	009787b3          	add	a5,a5,s1
    800038fc:	00379793          	slli	a5,a5,0x3
    80003900:	00f987b3          	add	a5,s3,a5
    80003904:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003908:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    8000390c:	00008717          	auipc	a4,0x8
    80003910:	49c73703          	ld	a4,1180(a4) # 8000bda8 <_ZL10waitForAll>
    80003914:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003918:	00048793          	mv	a5,s1
    8000391c:	00349513          	slli	a0,s1,0x3
    80003920:	00aa8533          	add	a0,s5,a0
    80003924:	fa9054e3          	blez	s1,800038cc <_Z22producerConsumer_C_APIv+0x1c8>
    80003928:	00000597          	auipc	a1,0x0
    8000392c:	c6858593          	addi	a1,a1,-920 # 80003590 <_ZL8producerPv>
    80003930:	fa5ff06f          	j	800038d4 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003934:	ffffe097          	auipc	ra,0xffffe
    80003938:	a98080e7          	jalr	-1384(ra) # 800013cc <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    8000393c:	00000493          	li	s1,0
    80003940:	00994e63          	blt	s2,s1,8000395c <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003944:	00008517          	auipc	a0,0x8
    80003948:	46453503          	ld	a0,1124(a0) # 8000bda8 <_ZL10waitForAll>
    8000394c:	ffffe097          	auipc	ra,0xffffe
    80003950:	b58080e7          	jalr	-1192(ra) # 800014a4 <_Z8sem_waitP3Sem>
    for (int i = 0; i <= threadNum; i++) {
    80003954:	0014849b          	addiw	s1,s1,1
    80003958:	fe9ff06f          	j	80003940 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    8000395c:	00008517          	auipc	a0,0x8
    80003960:	44c53503          	ld	a0,1100(a0) # 8000bda8 <_ZL10waitForAll>
    80003964:	ffffe097          	auipc	ra,0xffffe
    80003968:	af4080e7          	jalr	-1292(ra) # 80001458 <_Z9sem_closeP3Sem>
    delete buffer;
    8000396c:	000a0e63          	beqz	s4,80003988 <_Z22producerConsumer_C_APIv+0x284>
    80003970:	000a0513          	mv	a0,s4
    80003974:	00001097          	auipc	ra,0x1
    80003978:	3c0080e7          	jalr	960(ra) # 80004d34 <_ZN6BufferD1Ev>
    8000397c:	000a0513          	mv	a0,s4
    80003980:	ffffe097          	auipc	ra,0xffffe
    80003984:	5d4080e7          	jalr	1492(ra) # 80001f54 <_ZdlPv>
    80003988:	000b0113          	mv	sp,s6

}
    8000398c:	f9040113          	addi	sp,s0,-112
    80003990:	06813083          	ld	ra,104(sp)
    80003994:	06013403          	ld	s0,96(sp)
    80003998:	05813483          	ld	s1,88(sp)
    8000399c:	05013903          	ld	s2,80(sp)
    800039a0:	04813983          	ld	s3,72(sp)
    800039a4:	04013a03          	ld	s4,64(sp)
    800039a8:	03813a83          	ld	s5,56(sp)
    800039ac:	03013b03          	ld	s6,48(sp)
    800039b0:	07010113          	addi	sp,sp,112
    800039b4:	00008067          	ret
    800039b8:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    800039bc:	000a0513          	mv	a0,s4
    800039c0:	ffffe097          	auipc	ra,0xffffe
    800039c4:	594080e7          	jalr	1428(ra) # 80001f54 <_ZdlPv>
    800039c8:	00048513          	mv	a0,s1
    800039cc:	00009097          	auipc	ra,0x9
    800039d0:	4ec080e7          	jalr	1260(ra) # 8000ceb8 <_Unwind_Resume>

00000000800039d4 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800039d4:	fe010113          	addi	sp,sp,-32
    800039d8:	00113c23          	sd	ra,24(sp)
    800039dc:	00813823          	sd	s0,16(sp)
    800039e0:	00913423          	sd	s1,8(sp)
    800039e4:	01213023          	sd	s2,0(sp)
    800039e8:	02010413          	addi	s0,sp,32
    800039ec:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800039f0:	00100793          	li	a5,1
    800039f4:	02a7f863          	bgeu	a5,a0,80003a24 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800039f8:	00a00793          	li	a5,10
    800039fc:	02f577b3          	remu	a5,a0,a5
    80003a00:	02078e63          	beqz	a5,80003a3c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003a04:	fff48513          	addi	a0,s1,-1
    80003a08:	00000097          	auipc	ra,0x0
    80003a0c:	fcc080e7          	jalr	-52(ra) # 800039d4 <_ZL9fibonaccim>
    80003a10:	00050913          	mv	s2,a0
    80003a14:	ffe48513          	addi	a0,s1,-2
    80003a18:	00000097          	auipc	ra,0x0
    80003a1c:	fbc080e7          	jalr	-68(ra) # 800039d4 <_ZL9fibonaccim>
    80003a20:	00a90533          	add	a0,s2,a0
}
    80003a24:	01813083          	ld	ra,24(sp)
    80003a28:	01013403          	ld	s0,16(sp)
    80003a2c:	00813483          	ld	s1,8(sp)
    80003a30:	00013903          	ld	s2,0(sp)
    80003a34:	02010113          	addi	sp,sp,32
    80003a38:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003a3c:	ffffe097          	auipc	ra,0xffffe
    80003a40:	990080e7          	jalr	-1648(ra) # 800013cc <_Z15thread_dispatchv>
    80003a44:	fc1ff06f          	j	80003a04 <_ZL9fibonaccim+0x30>

0000000080003a48 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003a48:	fe010113          	addi	sp,sp,-32
    80003a4c:	00113c23          	sd	ra,24(sp)
    80003a50:	00813823          	sd	s0,16(sp)
    80003a54:	00913423          	sd	s1,8(sp)
    80003a58:	01213023          	sd	s2,0(sp)
    80003a5c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003a60:	00000913          	li	s2,0
    80003a64:	0380006f          	j	80003a9c <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003a68:	ffffe097          	auipc	ra,0xffffe
    80003a6c:	964080e7          	jalr	-1692(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003a70:	00148493          	addi	s1,s1,1
    80003a74:	000027b7          	lui	a5,0x2
    80003a78:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003a7c:	0097ee63          	bltu	a5,s1,80003a98 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003a80:	00000713          	li	a4,0
    80003a84:	000077b7          	lui	a5,0x7
    80003a88:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003a8c:	fce7eee3          	bltu	a5,a4,80003a68 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003a90:	00170713          	addi	a4,a4,1
    80003a94:	ff1ff06f          	j	80003a84 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003a98:	00190913          	addi	s2,s2,1
    80003a9c:	00900793          	li	a5,9
    80003aa0:	0527e063          	bltu	a5,s2,80003ae0 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003aa4:	00005517          	auipc	a0,0x5
    80003aa8:	78450513          	addi	a0,a0,1924 # 80009228 <CONSOLE_STATUS+0x218>
    80003aac:	00002097          	auipc	ra,0x2
    80003ab0:	1cc080e7          	jalr	460(ra) # 80005c78 <_Z11printStringPKc>
    80003ab4:	00000613          	li	a2,0
    80003ab8:	00a00593          	li	a1,10
    80003abc:	0009051b          	sext.w	a0,s2
    80003ac0:	00002097          	auipc	ra,0x2
    80003ac4:	368080e7          	jalr	872(ra) # 80005e28 <_Z8printIntiii>
    80003ac8:	00006517          	auipc	a0,0x6
    80003acc:	9b050513          	addi	a0,a0,-1616 # 80009478 <CONSOLE_STATUS+0x468>
    80003ad0:	00002097          	auipc	ra,0x2
    80003ad4:	1a8080e7          	jalr	424(ra) # 80005c78 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003ad8:	00000493          	li	s1,0
    80003adc:	f99ff06f          	j	80003a74 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003ae0:	00005517          	auipc	a0,0x5
    80003ae4:	75050513          	addi	a0,a0,1872 # 80009230 <CONSOLE_STATUS+0x220>
    80003ae8:	00002097          	auipc	ra,0x2
    80003aec:	190080e7          	jalr	400(ra) # 80005c78 <_Z11printStringPKc>
    finishedA = true;
    80003af0:	00100793          	li	a5,1
    80003af4:	00008717          	auipc	a4,0x8
    80003af8:	2af70e23          	sb	a5,700(a4) # 8000bdb0 <_ZL9finishedA>
}
    80003afc:	01813083          	ld	ra,24(sp)
    80003b00:	01013403          	ld	s0,16(sp)
    80003b04:	00813483          	ld	s1,8(sp)
    80003b08:	00013903          	ld	s2,0(sp)
    80003b0c:	02010113          	addi	sp,sp,32
    80003b10:	00008067          	ret

0000000080003b14 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003b14:	fe010113          	addi	sp,sp,-32
    80003b18:	00113c23          	sd	ra,24(sp)
    80003b1c:	00813823          	sd	s0,16(sp)
    80003b20:	00913423          	sd	s1,8(sp)
    80003b24:	01213023          	sd	s2,0(sp)
    80003b28:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003b2c:	00000913          	li	s2,0
    80003b30:	0380006f          	j	80003b68 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003b34:	ffffe097          	auipc	ra,0xffffe
    80003b38:	898080e7          	jalr	-1896(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003b3c:	00148493          	addi	s1,s1,1
    80003b40:	000027b7          	lui	a5,0x2
    80003b44:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003b48:	0097ee63          	bltu	a5,s1,80003b64 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003b4c:	00000713          	li	a4,0
    80003b50:	000077b7          	lui	a5,0x7
    80003b54:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003b58:	fce7eee3          	bltu	a5,a4,80003b34 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003b5c:	00170713          	addi	a4,a4,1
    80003b60:	ff1ff06f          	j	80003b50 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003b64:	00190913          	addi	s2,s2,1
    80003b68:	00f00793          	li	a5,15
    80003b6c:	0527e063          	bltu	a5,s2,80003bac <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003b70:	00005517          	auipc	a0,0x5
    80003b74:	6d050513          	addi	a0,a0,1744 # 80009240 <CONSOLE_STATUS+0x230>
    80003b78:	00002097          	auipc	ra,0x2
    80003b7c:	100080e7          	jalr	256(ra) # 80005c78 <_Z11printStringPKc>
    80003b80:	00000613          	li	a2,0
    80003b84:	00a00593          	li	a1,10
    80003b88:	0009051b          	sext.w	a0,s2
    80003b8c:	00002097          	auipc	ra,0x2
    80003b90:	29c080e7          	jalr	668(ra) # 80005e28 <_Z8printIntiii>
    80003b94:	00006517          	auipc	a0,0x6
    80003b98:	8e450513          	addi	a0,a0,-1820 # 80009478 <CONSOLE_STATUS+0x468>
    80003b9c:	00002097          	auipc	ra,0x2
    80003ba0:	0dc080e7          	jalr	220(ra) # 80005c78 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003ba4:	00000493          	li	s1,0
    80003ba8:	f99ff06f          	j	80003b40 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003bac:	00005517          	auipc	a0,0x5
    80003bb0:	69c50513          	addi	a0,a0,1692 # 80009248 <CONSOLE_STATUS+0x238>
    80003bb4:	00002097          	auipc	ra,0x2
    80003bb8:	0c4080e7          	jalr	196(ra) # 80005c78 <_Z11printStringPKc>
    finishedB = true;
    80003bbc:	00100793          	li	a5,1
    80003bc0:	00008717          	auipc	a4,0x8
    80003bc4:	1ef708a3          	sb	a5,497(a4) # 8000bdb1 <_ZL9finishedB>
    thread_dispatch();
    80003bc8:	ffffe097          	auipc	ra,0xffffe
    80003bcc:	804080e7          	jalr	-2044(ra) # 800013cc <_Z15thread_dispatchv>
}
    80003bd0:	01813083          	ld	ra,24(sp)
    80003bd4:	01013403          	ld	s0,16(sp)
    80003bd8:	00813483          	ld	s1,8(sp)
    80003bdc:	00013903          	ld	s2,0(sp)
    80003be0:	02010113          	addi	sp,sp,32
    80003be4:	00008067          	ret

0000000080003be8 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003be8:	fe010113          	addi	sp,sp,-32
    80003bec:	00113c23          	sd	ra,24(sp)
    80003bf0:	00813823          	sd	s0,16(sp)
    80003bf4:	00913423          	sd	s1,8(sp)
    80003bf8:	01213023          	sd	s2,0(sp)
    80003bfc:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003c00:	00000493          	li	s1,0
    80003c04:	0400006f          	j	80003c44 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003c08:	00005517          	auipc	a0,0x5
    80003c0c:	65050513          	addi	a0,a0,1616 # 80009258 <CONSOLE_STATUS+0x248>
    80003c10:	00002097          	auipc	ra,0x2
    80003c14:	068080e7          	jalr	104(ra) # 80005c78 <_Z11printStringPKc>
    80003c18:	00000613          	li	a2,0
    80003c1c:	00a00593          	li	a1,10
    80003c20:	00048513          	mv	a0,s1
    80003c24:	00002097          	auipc	ra,0x2
    80003c28:	204080e7          	jalr	516(ra) # 80005e28 <_Z8printIntiii>
    80003c2c:	00006517          	auipc	a0,0x6
    80003c30:	84c50513          	addi	a0,a0,-1972 # 80009478 <CONSOLE_STATUS+0x468>
    80003c34:	00002097          	auipc	ra,0x2
    80003c38:	044080e7          	jalr	68(ra) # 80005c78 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003c3c:	0014849b          	addiw	s1,s1,1
    80003c40:	0ff4f493          	andi	s1,s1,255
    80003c44:	00200793          	li	a5,2
    80003c48:	fc97f0e3          	bgeu	a5,s1,80003c08 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003c4c:	00005517          	auipc	a0,0x5
    80003c50:	61450513          	addi	a0,a0,1556 # 80009260 <CONSOLE_STATUS+0x250>
    80003c54:	00002097          	auipc	ra,0x2
    80003c58:	024080e7          	jalr	36(ra) # 80005c78 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003c5c:	00700313          	li	t1,7
    thread_dispatch();
    80003c60:	ffffd097          	auipc	ra,0xffffd
    80003c64:	76c080e7          	jalr	1900(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003c68:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003c6c:	00005517          	auipc	a0,0x5
    80003c70:	60450513          	addi	a0,a0,1540 # 80009270 <CONSOLE_STATUS+0x260>
    80003c74:	00002097          	auipc	ra,0x2
    80003c78:	004080e7          	jalr	4(ra) # 80005c78 <_Z11printStringPKc>
    80003c7c:	00000613          	li	a2,0
    80003c80:	00a00593          	li	a1,10
    80003c84:	0009051b          	sext.w	a0,s2
    80003c88:	00002097          	auipc	ra,0x2
    80003c8c:	1a0080e7          	jalr	416(ra) # 80005e28 <_Z8printIntiii>
    80003c90:	00005517          	auipc	a0,0x5
    80003c94:	7e850513          	addi	a0,a0,2024 # 80009478 <CONSOLE_STATUS+0x468>
    80003c98:	00002097          	auipc	ra,0x2
    80003c9c:	fe0080e7          	jalr	-32(ra) # 80005c78 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003ca0:	00c00513          	li	a0,12
    80003ca4:	00000097          	auipc	ra,0x0
    80003ca8:	d30080e7          	jalr	-720(ra) # 800039d4 <_ZL9fibonaccim>
    80003cac:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003cb0:	00005517          	auipc	a0,0x5
    80003cb4:	5c850513          	addi	a0,a0,1480 # 80009278 <CONSOLE_STATUS+0x268>
    80003cb8:	00002097          	auipc	ra,0x2
    80003cbc:	fc0080e7          	jalr	-64(ra) # 80005c78 <_Z11printStringPKc>
    80003cc0:	00000613          	li	a2,0
    80003cc4:	00a00593          	li	a1,10
    80003cc8:	0009051b          	sext.w	a0,s2
    80003ccc:	00002097          	auipc	ra,0x2
    80003cd0:	15c080e7          	jalr	348(ra) # 80005e28 <_Z8printIntiii>
    80003cd4:	00005517          	auipc	a0,0x5
    80003cd8:	7a450513          	addi	a0,a0,1956 # 80009478 <CONSOLE_STATUS+0x468>
    80003cdc:	00002097          	auipc	ra,0x2
    80003ce0:	f9c080e7          	jalr	-100(ra) # 80005c78 <_Z11printStringPKc>
    80003ce4:	0400006f          	j	80003d24 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003ce8:	00005517          	auipc	a0,0x5
    80003cec:	57050513          	addi	a0,a0,1392 # 80009258 <CONSOLE_STATUS+0x248>
    80003cf0:	00002097          	auipc	ra,0x2
    80003cf4:	f88080e7          	jalr	-120(ra) # 80005c78 <_Z11printStringPKc>
    80003cf8:	00000613          	li	a2,0
    80003cfc:	00a00593          	li	a1,10
    80003d00:	00048513          	mv	a0,s1
    80003d04:	00002097          	auipc	ra,0x2
    80003d08:	124080e7          	jalr	292(ra) # 80005e28 <_Z8printIntiii>
    80003d0c:	00005517          	auipc	a0,0x5
    80003d10:	76c50513          	addi	a0,a0,1900 # 80009478 <CONSOLE_STATUS+0x468>
    80003d14:	00002097          	auipc	ra,0x2
    80003d18:	f64080e7          	jalr	-156(ra) # 80005c78 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003d1c:	0014849b          	addiw	s1,s1,1
    80003d20:	0ff4f493          	andi	s1,s1,255
    80003d24:	00500793          	li	a5,5
    80003d28:	fc97f0e3          	bgeu	a5,s1,80003ce8 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80003d2c:	00005517          	auipc	a0,0x5
    80003d30:	50450513          	addi	a0,a0,1284 # 80009230 <CONSOLE_STATUS+0x220>
    80003d34:	00002097          	auipc	ra,0x2
    80003d38:	f44080e7          	jalr	-188(ra) # 80005c78 <_Z11printStringPKc>
    finishedC = true;
    80003d3c:	00100793          	li	a5,1
    80003d40:	00008717          	auipc	a4,0x8
    80003d44:	06f70923          	sb	a5,114(a4) # 8000bdb2 <_ZL9finishedC>
    thread_dispatch();
    80003d48:	ffffd097          	auipc	ra,0xffffd
    80003d4c:	684080e7          	jalr	1668(ra) # 800013cc <_Z15thread_dispatchv>
}
    80003d50:	01813083          	ld	ra,24(sp)
    80003d54:	01013403          	ld	s0,16(sp)
    80003d58:	00813483          	ld	s1,8(sp)
    80003d5c:	00013903          	ld	s2,0(sp)
    80003d60:	02010113          	addi	sp,sp,32
    80003d64:	00008067          	ret

0000000080003d68 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003d68:	fe010113          	addi	sp,sp,-32
    80003d6c:	00113c23          	sd	ra,24(sp)
    80003d70:	00813823          	sd	s0,16(sp)
    80003d74:	00913423          	sd	s1,8(sp)
    80003d78:	01213023          	sd	s2,0(sp)
    80003d7c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003d80:	00a00493          	li	s1,10
    80003d84:	0400006f          	j	80003dc4 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003d88:	00005517          	auipc	a0,0x5
    80003d8c:	50050513          	addi	a0,a0,1280 # 80009288 <CONSOLE_STATUS+0x278>
    80003d90:	00002097          	auipc	ra,0x2
    80003d94:	ee8080e7          	jalr	-280(ra) # 80005c78 <_Z11printStringPKc>
    80003d98:	00000613          	li	a2,0
    80003d9c:	00a00593          	li	a1,10
    80003da0:	00048513          	mv	a0,s1
    80003da4:	00002097          	auipc	ra,0x2
    80003da8:	084080e7          	jalr	132(ra) # 80005e28 <_Z8printIntiii>
    80003dac:	00005517          	auipc	a0,0x5
    80003db0:	6cc50513          	addi	a0,a0,1740 # 80009478 <CONSOLE_STATUS+0x468>
    80003db4:	00002097          	auipc	ra,0x2
    80003db8:	ec4080e7          	jalr	-316(ra) # 80005c78 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003dbc:	0014849b          	addiw	s1,s1,1
    80003dc0:	0ff4f493          	andi	s1,s1,255
    80003dc4:	00c00793          	li	a5,12
    80003dc8:	fc97f0e3          	bgeu	a5,s1,80003d88 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003dcc:	00005517          	auipc	a0,0x5
    80003dd0:	4c450513          	addi	a0,a0,1220 # 80009290 <CONSOLE_STATUS+0x280>
    80003dd4:	00002097          	auipc	ra,0x2
    80003dd8:	ea4080e7          	jalr	-348(ra) # 80005c78 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003ddc:	00500313          	li	t1,5
    thread_dispatch();
    80003de0:	ffffd097          	auipc	ra,0xffffd
    80003de4:	5ec080e7          	jalr	1516(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003de8:	01000513          	li	a0,16
    80003dec:	00000097          	auipc	ra,0x0
    80003df0:	be8080e7          	jalr	-1048(ra) # 800039d4 <_ZL9fibonaccim>
    80003df4:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003df8:	00005517          	auipc	a0,0x5
    80003dfc:	4a850513          	addi	a0,a0,1192 # 800092a0 <CONSOLE_STATUS+0x290>
    80003e00:	00002097          	auipc	ra,0x2
    80003e04:	e78080e7          	jalr	-392(ra) # 80005c78 <_Z11printStringPKc>
    80003e08:	00000613          	li	a2,0
    80003e0c:	00a00593          	li	a1,10
    80003e10:	0009051b          	sext.w	a0,s2
    80003e14:	00002097          	auipc	ra,0x2
    80003e18:	014080e7          	jalr	20(ra) # 80005e28 <_Z8printIntiii>
    80003e1c:	00005517          	auipc	a0,0x5
    80003e20:	65c50513          	addi	a0,a0,1628 # 80009478 <CONSOLE_STATUS+0x468>
    80003e24:	00002097          	auipc	ra,0x2
    80003e28:	e54080e7          	jalr	-428(ra) # 80005c78 <_Z11printStringPKc>
    80003e2c:	0400006f          	j	80003e6c <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003e30:	00005517          	auipc	a0,0x5
    80003e34:	45850513          	addi	a0,a0,1112 # 80009288 <CONSOLE_STATUS+0x278>
    80003e38:	00002097          	auipc	ra,0x2
    80003e3c:	e40080e7          	jalr	-448(ra) # 80005c78 <_Z11printStringPKc>
    80003e40:	00000613          	li	a2,0
    80003e44:	00a00593          	li	a1,10
    80003e48:	00048513          	mv	a0,s1
    80003e4c:	00002097          	auipc	ra,0x2
    80003e50:	fdc080e7          	jalr	-36(ra) # 80005e28 <_Z8printIntiii>
    80003e54:	00005517          	auipc	a0,0x5
    80003e58:	62450513          	addi	a0,a0,1572 # 80009478 <CONSOLE_STATUS+0x468>
    80003e5c:	00002097          	auipc	ra,0x2
    80003e60:	e1c080e7          	jalr	-484(ra) # 80005c78 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003e64:	0014849b          	addiw	s1,s1,1
    80003e68:	0ff4f493          	andi	s1,s1,255
    80003e6c:	00f00793          	li	a5,15
    80003e70:	fc97f0e3          	bgeu	a5,s1,80003e30 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003e74:	00005517          	auipc	a0,0x5
    80003e78:	43c50513          	addi	a0,a0,1084 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80003e7c:	00002097          	auipc	ra,0x2
    80003e80:	dfc080e7          	jalr	-516(ra) # 80005c78 <_Z11printStringPKc>
    finishedD = true;
    80003e84:	00100793          	li	a5,1
    80003e88:	00008717          	auipc	a4,0x8
    80003e8c:	f2f705a3          	sb	a5,-213(a4) # 8000bdb3 <_ZL9finishedD>
    thread_dispatch();
    80003e90:	ffffd097          	auipc	ra,0xffffd
    80003e94:	53c080e7          	jalr	1340(ra) # 800013cc <_Z15thread_dispatchv>
}
    80003e98:	01813083          	ld	ra,24(sp)
    80003e9c:	01013403          	ld	s0,16(sp)
    80003ea0:	00813483          	ld	s1,8(sp)
    80003ea4:	00013903          	ld	s2,0(sp)
    80003ea8:	02010113          	addi	sp,sp,32
    80003eac:	00008067          	ret

0000000080003eb0 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003eb0:	fc010113          	addi	sp,sp,-64
    80003eb4:	02113c23          	sd	ra,56(sp)
    80003eb8:	02813823          	sd	s0,48(sp)
    80003ebc:	02913423          	sd	s1,40(sp)
    80003ec0:	03213023          	sd	s2,32(sp)
    80003ec4:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003ec8:	02000513          	li	a0,32
    80003ecc:	ffffe097          	auipc	ra,0xffffe
    80003ed0:	060080e7          	jalr	96(ra) # 80001f2c <_Znwm>
    80003ed4:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003ed8:	ffffe097          	auipc	ra,0xffffe
    80003edc:	1d8080e7          	jalr	472(ra) # 800020b0 <_ZN6ThreadC1Ev>
    80003ee0:	00008797          	auipc	a5,0x8
    80003ee4:	c2078793          	addi	a5,a5,-992 # 8000bb00 <_ZTV7WorkerA+0x10>
    80003ee8:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003eec:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003ef0:	00005517          	auipc	a0,0x5
    80003ef4:	3d050513          	addi	a0,a0,976 # 800092c0 <CONSOLE_STATUS+0x2b0>
    80003ef8:	00002097          	auipc	ra,0x2
    80003efc:	d80080e7          	jalr	-640(ra) # 80005c78 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003f00:	02000513          	li	a0,32
    80003f04:	ffffe097          	auipc	ra,0xffffe
    80003f08:	028080e7          	jalr	40(ra) # 80001f2c <_Znwm>
    80003f0c:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003f10:	ffffe097          	auipc	ra,0xffffe
    80003f14:	1a0080e7          	jalr	416(ra) # 800020b0 <_ZN6ThreadC1Ev>
    80003f18:	00008797          	auipc	a5,0x8
    80003f1c:	c1078793          	addi	a5,a5,-1008 # 8000bb28 <_ZTV7WorkerB+0x10>
    80003f20:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003f24:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003f28:	00005517          	auipc	a0,0x5
    80003f2c:	3b050513          	addi	a0,a0,944 # 800092d8 <CONSOLE_STATUS+0x2c8>
    80003f30:	00002097          	auipc	ra,0x2
    80003f34:	d48080e7          	jalr	-696(ra) # 80005c78 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003f38:	02000513          	li	a0,32
    80003f3c:	ffffe097          	auipc	ra,0xffffe
    80003f40:	ff0080e7          	jalr	-16(ra) # 80001f2c <_Znwm>
    80003f44:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003f48:	ffffe097          	auipc	ra,0xffffe
    80003f4c:	168080e7          	jalr	360(ra) # 800020b0 <_ZN6ThreadC1Ev>
    80003f50:	00008797          	auipc	a5,0x8
    80003f54:	c0078793          	addi	a5,a5,-1024 # 8000bb50 <_ZTV7WorkerC+0x10>
    80003f58:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003f5c:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003f60:	00005517          	auipc	a0,0x5
    80003f64:	39050513          	addi	a0,a0,912 # 800092f0 <CONSOLE_STATUS+0x2e0>
    80003f68:	00002097          	auipc	ra,0x2
    80003f6c:	d10080e7          	jalr	-752(ra) # 80005c78 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003f70:	02000513          	li	a0,32
    80003f74:	ffffe097          	auipc	ra,0xffffe
    80003f78:	fb8080e7          	jalr	-72(ra) # 80001f2c <_Znwm>
    80003f7c:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003f80:	ffffe097          	auipc	ra,0xffffe
    80003f84:	130080e7          	jalr	304(ra) # 800020b0 <_ZN6ThreadC1Ev>
    80003f88:	00008797          	auipc	a5,0x8
    80003f8c:	bf078793          	addi	a5,a5,-1040 # 8000bb78 <_ZTV7WorkerD+0x10>
    80003f90:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003f94:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003f98:	00005517          	auipc	a0,0x5
    80003f9c:	37050513          	addi	a0,a0,880 # 80009308 <CONSOLE_STATUS+0x2f8>
    80003fa0:	00002097          	auipc	ra,0x2
    80003fa4:	cd8080e7          	jalr	-808(ra) # 80005c78 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003fa8:	00000493          	li	s1,0
    80003fac:	00300793          	li	a5,3
    80003fb0:	0297c663          	blt	a5,s1,80003fdc <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003fb4:	00349793          	slli	a5,s1,0x3
    80003fb8:	fe040713          	addi	a4,s0,-32
    80003fbc:	00f707b3          	add	a5,a4,a5
    80003fc0:	fe07b503          	ld	a0,-32(a5)
    80003fc4:	ffffe097          	auipc	ra,0xffffe
    80003fc8:	068080e7          	jalr	104(ra) # 8000202c <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003fcc:	0014849b          	addiw	s1,s1,1
    80003fd0:	fddff06f          	j	80003fac <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003fd4:	ffffe097          	auipc	ra,0xffffe
    80003fd8:	08c080e7          	jalr	140(ra) # 80002060 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003fdc:	00008797          	auipc	a5,0x8
    80003fe0:	dd47c783          	lbu	a5,-556(a5) # 8000bdb0 <_ZL9finishedA>
    80003fe4:	fe0788e3          	beqz	a5,80003fd4 <_Z20Threads_CPP_API_testv+0x124>
    80003fe8:	00008797          	auipc	a5,0x8
    80003fec:	dc97c783          	lbu	a5,-567(a5) # 8000bdb1 <_ZL9finishedB>
    80003ff0:	fe0782e3          	beqz	a5,80003fd4 <_Z20Threads_CPP_API_testv+0x124>
    80003ff4:	00008797          	auipc	a5,0x8
    80003ff8:	dbe7c783          	lbu	a5,-578(a5) # 8000bdb2 <_ZL9finishedC>
    80003ffc:	fc078ce3          	beqz	a5,80003fd4 <_Z20Threads_CPP_API_testv+0x124>
    80004000:	00008797          	auipc	a5,0x8
    80004004:	db37c783          	lbu	a5,-589(a5) # 8000bdb3 <_ZL9finishedD>
    80004008:	fc0786e3          	beqz	a5,80003fd4 <_Z20Threads_CPP_API_testv+0x124>
    8000400c:	fc040493          	addi	s1,s0,-64
    80004010:	0080006f          	j	80004018 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80004014:	00848493          	addi	s1,s1,8
    80004018:	fe040793          	addi	a5,s0,-32
    8000401c:	08f48663          	beq	s1,a5,800040a8 <_Z20Threads_CPP_API_testv+0x1f8>
    80004020:	0004b503          	ld	a0,0(s1)
    80004024:	fe0508e3          	beqz	a0,80004014 <_Z20Threads_CPP_API_testv+0x164>
    80004028:	00053783          	ld	a5,0(a0)
    8000402c:	0087b783          	ld	a5,8(a5)
    80004030:	000780e7          	jalr	a5
    80004034:	fe1ff06f          	j	80004014 <_Z20Threads_CPP_API_testv+0x164>
    80004038:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    8000403c:	00048513          	mv	a0,s1
    80004040:	ffffe097          	auipc	ra,0xffffe
    80004044:	f14080e7          	jalr	-236(ra) # 80001f54 <_ZdlPv>
    80004048:	00090513          	mv	a0,s2
    8000404c:	00009097          	auipc	ra,0x9
    80004050:	e6c080e7          	jalr	-404(ra) # 8000ceb8 <_Unwind_Resume>
    80004054:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80004058:	00048513          	mv	a0,s1
    8000405c:	ffffe097          	auipc	ra,0xffffe
    80004060:	ef8080e7          	jalr	-264(ra) # 80001f54 <_ZdlPv>
    80004064:	00090513          	mv	a0,s2
    80004068:	00009097          	auipc	ra,0x9
    8000406c:	e50080e7          	jalr	-432(ra) # 8000ceb8 <_Unwind_Resume>
    80004070:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80004074:	00048513          	mv	a0,s1
    80004078:	ffffe097          	auipc	ra,0xffffe
    8000407c:	edc080e7          	jalr	-292(ra) # 80001f54 <_ZdlPv>
    80004080:	00090513          	mv	a0,s2
    80004084:	00009097          	auipc	ra,0x9
    80004088:	e34080e7          	jalr	-460(ra) # 8000ceb8 <_Unwind_Resume>
    8000408c:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80004090:	00048513          	mv	a0,s1
    80004094:	ffffe097          	auipc	ra,0xffffe
    80004098:	ec0080e7          	jalr	-320(ra) # 80001f54 <_ZdlPv>
    8000409c:	00090513          	mv	a0,s2
    800040a0:	00009097          	auipc	ra,0x9
    800040a4:	e18080e7          	jalr	-488(ra) # 8000ceb8 <_Unwind_Resume>
}
    800040a8:	03813083          	ld	ra,56(sp)
    800040ac:	03013403          	ld	s0,48(sp)
    800040b0:	02813483          	ld	s1,40(sp)
    800040b4:	02013903          	ld	s2,32(sp)
    800040b8:	04010113          	addi	sp,sp,64
    800040bc:	00008067          	ret

00000000800040c0 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    800040c0:	ff010113          	addi	sp,sp,-16
    800040c4:	00113423          	sd	ra,8(sp)
    800040c8:	00813023          	sd	s0,0(sp)
    800040cc:	01010413          	addi	s0,sp,16
    800040d0:	00008797          	auipc	a5,0x8
    800040d4:	a3078793          	addi	a5,a5,-1488 # 8000bb00 <_ZTV7WorkerA+0x10>
    800040d8:	00f53023          	sd	a5,0(a0)
    800040dc:	ffffe097          	auipc	ra,0xffffe
    800040e0:	db8080e7          	jalr	-584(ra) # 80001e94 <_ZN6ThreadD1Ev>
    800040e4:	00813083          	ld	ra,8(sp)
    800040e8:	00013403          	ld	s0,0(sp)
    800040ec:	01010113          	addi	sp,sp,16
    800040f0:	00008067          	ret

00000000800040f4 <_ZN7WorkerAD0Ev>:
    800040f4:	fe010113          	addi	sp,sp,-32
    800040f8:	00113c23          	sd	ra,24(sp)
    800040fc:	00813823          	sd	s0,16(sp)
    80004100:	00913423          	sd	s1,8(sp)
    80004104:	02010413          	addi	s0,sp,32
    80004108:	00050493          	mv	s1,a0
    8000410c:	00008797          	auipc	a5,0x8
    80004110:	9f478793          	addi	a5,a5,-1548 # 8000bb00 <_ZTV7WorkerA+0x10>
    80004114:	00f53023          	sd	a5,0(a0)
    80004118:	ffffe097          	auipc	ra,0xffffe
    8000411c:	d7c080e7          	jalr	-644(ra) # 80001e94 <_ZN6ThreadD1Ev>
    80004120:	00048513          	mv	a0,s1
    80004124:	ffffe097          	auipc	ra,0xffffe
    80004128:	e30080e7          	jalr	-464(ra) # 80001f54 <_ZdlPv>
    8000412c:	01813083          	ld	ra,24(sp)
    80004130:	01013403          	ld	s0,16(sp)
    80004134:	00813483          	ld	s1,8(sp)
    80004138:	02010113          	addi	sp,sp,32
    8000413c:	00008067          	ret

0000000080004140 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80004140:	ff010113          	addi	sp,sp,-16
    80004144:	00113423          	sd	ra,8(sp)
    80004148:	00813023          	sd	s0,0(sp)
    8000414c:	01010413          	addi	s0,sp,16
    80004150:	00008797          	auipc	a5,0x8
    80004154:	9d878793          	addi	a5,a5,-1576 # 8000bb28 <_ZTV7WorkerB+0x10>
    80004158:	00f53023          	sd	a5,0(a0)
    8000415c:	ffffe097          	auipc	ra,0xffffe
    80004160:	d38080e7          	jalr	-712(ra) # 80001e94 <_ZN6ThreadD1Ev>
    80004164:	00813083          	ld	ra,8(sp)
    80004168:	00013403          	ld	s0,0(sp)
    8000416c:	01010113          	addi	sp,sp,16
    80004170:	00008067          	ret

0000000080004174 <_ZN7WorkerBD0Ev>:
    80004174:	fe010113          	addi	sp,sp,-32
    80004178:	00113c23          	sd	ra,24(sp)
    8000417c:	00813823          	sd	s0,16(sp)
    80004180:	00913423          	sd	s1,8(sp)
    80004184:	02010413          	addi	s0,sp,32
    80004188:	00050493          	mv	s1,a0
    8000418c:	00008797          	auipc	a5,0x8
    80004190:	99c78793          	addi	a5,a5,-1636 # 8000bb28 <_ZTV7WorkerB+0x10>
    80004194:	00f53023          	sd	a5,0(a0)
    80004198:	ffffe097          	auipc	ra,0xffffe
    8000419c:	cfc080e7          	jalr	-772(ra) # 80001e94 <_ZN6ThreadD1Ev>
    800041a0:	00048513          	mv	a0,s1
    800041a4:	ffffe097          	auipc	ra,0xffffe
    800041a8:	db0080e7          	jalr	-592(ra) # 80001f54 <_ZdlPv>
    800041ac:	01813083          	ld	ra,24(sp)
    800041b0:	01013403          	ld	s0,16(sp)
    800041b4:	00813483          	ld	s1,8(sp)
    800041b8:	02010113          	addi	sp,sp,32
    800041bc:	00008067          	ret

00000000800041c0 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    800041c0:	ff010113          	addi	sp,sp,-16
    800041c4:	00113423          	sd	ra,8(sp)
    800041c8:	00813023          	sd	s0,0(sp)
    800041cc:	01010413          	addi	s0,sp,16
    800041d0:	00008797          	auipc	a5,0x8
    800041d4:	98078793          	addi	a5,a5,-1664 # 8000bb50 <_ZTV7WorkerC+0x10>
    800041d8:	00f53023          	sd	a5,0(a0)
    800041dc:	ffffe097          	auipc	ra,0xffffe
    800041e0:	cb8080e7          	jalr	-840(ra) # 80001e94 <_ZN6ThreadD1Ev>
    800041e4:	00813083          	ld	ra,8(sp)
    800041e8:	00013403          	ld	s0,0(sp)
    800041ec:	01010113          	addi	sp,sp,16
    800041f0:	00008067          	ret

00000000800041f4 <_ZN7WorkerCD0Ev>:
    800041f4:	fe010113          	addi	sp,sp,-32
    800041f8:	00113c23          	sd	ra,24(sp)
    800041fc:	00813823          	sd	s0,16(sp)
    80004200:	00913423          	sd	s1,8(sp)
    80004204:	02010413          	addi	s0,sp,32
    80004208:	00050493          	mv	s1,a0
    8000420c:	00008797          	auipc	a5,0x8
    80004210:	94478793          	addi	a5,a5,-1724 # 8000bb50 <_ZTV7WorkerC+0x10>
    80004214:	00f53023          	sd	a5,0(a0)
    80004218:	ffffe097          	auipc	ra,0xffffe
    8000421c:	c7c080e7          	jalr	-900(ra) # 80001e94 <_ZN6ThreadD1Ev>
    80004220:	00048513          	mv	a0,s1
    80004224:	ffffe097          	auipc	ra,0xffffe
    80004228:	d30080e7          	jalr	-720(ra) # 80001f54 <_ZdlPv>
    8000422c:	01813083          	ld	ra,24(sp)
    80004230:	01013403          	ld	s0,16(sp)
    80004234:	00813483          	ld	s1,8(sp)
    80004238:	02010113          	addi	sp,sp,32
    8000423c:	00008067          	ret

0000000080004240 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80004240:	ff010113          	addi	sp,sp,-16
    80004244:	00113423          	sd	ra,8(sp)
    80004248:	00813023          	sd	s0,0(sp)
    8000424c:	01010413          	addi	s0,sp,16
    80004250:	00008797          	auipc	a5,0x8
    80004254:	92878793          	addi	a5,a5,-1752 # 8000bb78 <_ZTV7WorkerD+0x10>
    80004258:	00f53023          	sd	a5,0(a0)
    8000425c:	ffffe097          	auipc	ra,0xffffe
    80004260:	c38080e7          	jalr	-968(ra) # 80001e94 <_ZN6ThreadD1Ev>
    80004264:	00813083          	ld	ra,8(sp)
    80004268:	00013403          	ld	s0,0(sp)
    8000426c:	01010113          	addi	sp,sp,16
    80004270:	00008067          	ret

0000000080004274 <_ZN7WorkerDD0Ev>:
    80004274:	fe010113          	addi	sp,sp,-32
    80004278:	00113c23          	sd	ra,24(sp)
    8000427c:	00813823          	sd	s0,16(sp)
    80004280:	00913423          	sd	s1,8(sp)
    80004284:	02010413          	addi	s0,sp,32
    80004288:	00050493          	mv	s1,a0
    8000428c:	00008797          	auipc	a5,0x8
    80004290:	8ec78793          	addi	a5,a5,-1812 # 8000bb78 <_ZTV7WorkerD+0x10>
    80004294:	00f53023          	sd	a5,0(a0)
    80004298:	ffffe097          	auipc	ra,0xffffe
    8000429c:	bfc080e7          	jalr	-1028(ra) # 80001e94 <_ZN6ThreadD1Ev>
    800042a0:	00048513          	mv	a0,s1
    800042a4:	ffffe097          	auipc	ra,0xffffe
    800042a8:	cb0080e7          	jalr	-848(ra) # 80001f54 <_ZdlPv>
    800042ac:	01813083          	ld	ra,24(sp)
    800042b0:	01013403          	ld	s0,16(sp)
    800042b4:	00813483          	ld	s1,8(sp)
    800042b8:	02010113          	addi	sp,sp,32
    800042bc:	00008067          	ret

00000000800042c0 <_ZN7WorkerA3runEv>:
    void run() override {
    800042c0:	ff010113          	addi	sp,sp,-16
    800042c4:	00113423          	sd	ra,8(sp)
    800042c8:	00813023          	sd	s0,0(sp)
    800042cc:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    800042d0:	00000593          	li	a1,0
    800042d4:	fffff097          	auipc	ra,0xfffff
    800042d8:	774080e7          	jalr	1908(ra) # 80003a48 <_ZN7WorkerA11workerBodyAEPv>
    }
    800042dc:	00813083          	ld	ra,8(sp)
    800042e0:	00013403          	ld	s0,0(sp)
    800042e4:	01010113          	addi	sp,sp,16
    800042e8:	00008067          	ret

00000000800042ec <_ZN7WorkerB3runEv>:
    void run() override {
    800042ec:	ff010113          	addi	sp,sp,-16
    800042f0:	00113423          	sd	ra,8(sp)
    800042f4:	00813023          	sd	s0,0(sp)
    800042f8:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    800042fc:	00000593          	li	a1,0
    80004300:	00000097          	auipc	ra,0x0
    80004304:	814080e7          	jalr	-2028(ra) # 80003b14 <_ZN7WorkerB11workerBodyBEPv>
    }
    80004308:	00813083          	ld	ra,8(sp)
    8000430c:	00013403          	ld	s0,0(sp)
    80004310:	01010113          	addi	sp,sp,16
    80004314:	00008067          	ret

0000000080004318 <_ZN7WorkerC3runEv>:
    void run() override {
    80004318:	ff010113          	addi	sp,sp,-16
    8000431c:	00113423          	sd	ra,8(sp)
    80004320:	00813023          	sd	s0,0(sp)
    80004324:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80004328:	00000593          	li	a1,0
    8000432c:	00000097          	auipc	ra,0x0
    80004330:	8bc080e7          	jalr	-1860(ra) # 80003be8 <_ZN7WorkerC11workerBodyCEPv>
    }
    80004334:	00813083          	ld	ra,8(sp)
    80004338:	00013403          	ld	s0,0(sp)
    8000433c:	01010113          	addi	sp,sp,16
    80004340:	00008067          	ret

0000000080004344 <_ZN7WorkerD3runEv>:
    void run() override {
    80004344:	ff010113          	addi	sp,sp,-16
    80004348:	00113423          	sd	ra,8(sp)
    8000434c:	00813023          	sd	s0,0(sp)
    80004350:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80004354:	00000593          	li	a1,0
    80004358:	00000097          	auipc	ra,0x0
    8000435c:	a10080e7          	jalr	-1520(ra) # 80003d68 <_ZN7WorkerD11workerBodyDEPv>
    }
    80004360:	00813083          	ld	ra,8(sp)
    80004364:	00013403          	ld	s0,0(sp)
    80004368:	01010113          	addi	sp,sp,16
    8000436c:	00008067          	ret

0000000080004370 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80004370:	f8010113          	addi	sp,sp,-128
    80004374:	06113c23          	sd	ra,120(sp)
    80004378:	06813823          	sd	s0,112(sp)
    8000437c:	06913423          	sd	s1,104(sp)
    80004380:	07213023          	sd	s2,96(sp)
    80004384:	05313c23          	sd	s3,88(sp)
    80004388:	05413823          	sd	s4,80(sp)
    8000438c:	05513423          	sd	s5,72(sp)
    80004390:	05613023          	sd	s6,64(sp)
    80004394:	03713c23          	sd	s7,56(sp)
    80004398:	03813823          	sd	s8,48(sp)
    8000439c:	03913423          	sd	s9,40(sp)
    800043a0:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    800043a4:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    800043a8:	00005517          	auipc	a0,0x5
    800043ac:	d9850513          	addi	a0,a0,-616 # 80009140 <CONSOLE_STATUS+0x130>
    800043b0:	00002097          	auipc	ra,0x2
    800043b4:	8c8080e7          	jalr	-1848(ra) # 80005c78 <_Z11printStringPKc>
    getString(input, 30);
    800043b8:	01e00593          	li	a1,30
    800043bc:	f8040493          	addi	s1,s0,-128
    800043c0:	00048513          	mv	a0,s1
    800043c4:	00002097          	auipc	ra,0x2
    800043c8:	93c080e7          	jalr	-1732(ra) # 80005d00 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800043cc:	00048513          	mv	a0,s1
    800043d0:	00002097          	auipc	ra,0x2
    800043d4:	a08080e7          	jalr	-1528(ra) # 80005dd8 <_Z11stringToIntPKc>
    800043d8:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    800043dc:	00005517          	auipc	a0,0x5
    800043e0:	d8450513          	addi	a0,a0,-636 # 80009160 <CONSOLE_STATUS+0x150>
    800043e4:	00002097          	auipc	ra,0x2
    800043e8:	894080e7          	jalr	-1900(ra) # 80005c78 <_Z11printStringPKc>
    getString(input, 30);
    800043ec:	01e00593          	li	a1,30
    800043f0:	00048513          	mv	a0,s1
    800043f4:	00002097          	auipc	ra,0x2
    800043f8:	90c080e7          	jalr	-1780(ra) # 80005d00 <_Z9getStringPci>
    n = stringToInt(input);
    800043fc:	00048513          	mv	a0,s1
    80004400:	00002097          	auipc	ra,0x2
    80004404:	9d8080e7          	jalr	-1576(ra) # 80005dd8 <_Z11stringToIntPKc>
    80004408:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    8000440c:	00005517          	auipc	a0,0x5
    80004410:	d7450513          	addi	a0,a0,-652 # 80009180 <CONSOLE_STATUS+0x170>
    80004414:	00002097          	auipc	ra,0x2
    80004418:	864080e7          	jalr	-1948(ra) # 80005c78 <_Z11printStringPKc>
    printInt(threadNum);
    8000441c:	00000613          	li	a2,0
    80004420:	00a00593          	li	a1,10
    80004424:	00098513          	mv	a0,s3
    80004428:	00002097          	auipc	ra,0x2
    8000442c:	a00080e7          	jalr	-1536(ra) # 80005e28 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80004430:	00005517          	auipc	a0,0x5
    80004434:	d6850513          	addi	a0,a0,-664 # 80009198 <CONSOLE_STATUS+0x188>
    80004438:	00002097          	auipc	ra,0x2
    8000443c:	840080e7          	jalr	-1984(ra) # 80005c78 <_Z11printStringPKc>
    printInt(n);
    80004440:	00000613          	li	a2,0
    80004444:	00a00593          	li	a1,10
    80004448:	00048513          	mv	a0,s1
    8000444c:	00002097          	auipc	ra,0x2
    80004450:	9dc080e7          	jalr	-1572(ra) # 80005e28 <_Z8printIntiii>
    printString(".\n");
    80004454:	00005517          	auipc	a0,0x5
    80004458:	d5c50513          	addi	a0,a0,-676 # 800091b0 <CONSOLE_STATUS+0x1a0>
    8000445c:	00002097          	auipc	ra,0x2
    80004460:	81c080e7          	jalr	-2020(ra) # 80005c78 <_Z11printStringPKc>
    if (threadNum > n) {
    80004464:	0334c463          	blt	s1,s3,8000448c <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80004468:	03305c63          	blez	s3,800044a0 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    8000446c:	03800513          	li	a0,56
    80004470:	ffffe097          	auipc	ra,0xffffe
    80004474:	abc080e7          	jalr	-1348(ra) # 80001f2c <_Znwm>
    80004478:	00050a93          	mv	s5,a0
    8000447c:	00048593          	mv	a1,s1
    80004480:	00002097          	auipc	ra,0x2
    80004484:	ac8080e7          	jalr	-1336(ra) # 80005f48 <_ZN9BufferCPPC1Ei>
    80004488:	0300006f          	j	800044b8 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    8000448c:	00005517          	auipc	a0,0x5
    80004490:	d2c50513          	addi	a0,a0,-724 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80004494:	00001097          	auipc	ra,0x1
    80004498:	7e4080e7          	jalr	2020(ra) # 80005c78 <_Z11printStringPKc>
        return;
    8000449c:	0140006f          	j	800044b0 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800044a0:	00005517          	auipc	a0,0x5
    800044a4:	d5850513          	addi	a0,a0,-680 # 800091f8 <CONSOLE_STATUS+0x1e8>
    800044a8:	00001097          	auipc	ra,0x1
    800044ac:	7d0080e7          	jalr	2000(ra) # 80005c78 <_Z11printStringPKc>
        return;
    800044b0:	000c0113          	mv	sp,s8
    800044b4:	2140006f          	j	800046c8 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    800044b8:	01000513          	li	a0,16
    800044bc:	ffffe097          	auipc	ra,0xffffe
    800044c0:	a70080e7          	jalr	-1424(ra) # 80001f2c <_Znwm>
    800044c4:	00050913          	mv	s2,a0
    800044c8:	00000593          	li	a1,0
    800044cc:	ffffe097          	auipc	ra,0xffffe
    800044d0:	c14080e7          	jalr	-1004(ra) # 800020e0 <_ZN9SemaphoreC1Ej>
    800044d4:	00008797          	auipc	a5,0x8
    800044d8:	8f27b623          	sd	s2,-1812(a5) # 8000bdc0 <_ZL10waitForAll>
    Thread *producers[threadNum];
    800044dc:	00399793          	slli	a5,s3,0x3
    800044e0:	00f78793          	addi	a5,a5,15
    800044e4:	ff07f793          	andi	a5,a5,-16
    800044e8:	40f10133          	sub	sp,sp,a5
    800044ec:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    800044f0:	0019871b          	addiw	a4,s3,1
    800044f4:	00171793          	slli	a5,a4,0x1
    800044f8:	00e787b3          	add	a5,a5,a4
    800044fc:	00379793          	slli	a5,a5,0x3
    80004500:	00f78793          	addi	a5,a5,15
    80004504:	ff07f793          	andi	a5,a5,-16
    80004508:	40f10133          	sub	sp,sp,a5
    8000450c:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80004510:	00199493          	slli	s1,s3,0x1
    80004514:	013484b3          	add	s1,s1,s3
    80004518:	00349493          	slli	s1,s1,0x3
    8000451c:	009b04b3          	add	s1,s6,s1
    80004520:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80004524:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80004528:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    8000452c:	02800513          	li	a0,40
    80004530:	ffffe097          	auipc	ra,0xffffe
    80004534:	9fc080e7          	jalr	-1540(ra) # 80001f2c <_Znwm>
    80004538:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    8000453c:	ffffe097          	auipc	ra,0xffffe
    80004540:	b74080e7          	jalr	-1164(ra) # 800020b0 <_ZN6ThreadC1Ev>
    80004544:	00007797          	auipc	a5,0x7
    80004548:	6ac78793          	addi	a5,a5,1708 # 8000bbf0 <_ZTV8Consumer+0x10>
    8000454c:	00fbb023          	sd	a5,0(s7)
    80004550:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80004554:	000b8513          	mv	a0,s7
    80004558:	ffffe097          	auipc	ra,0xffffe
    8000455c:	ad4080e7          	jalr	-1324(ra) # 8000202c <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80004560:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80004564:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80004568:	00008797          	auipc	a5,0x8
    8000456c:	8587b783          	ld	a5,-1960(a5) # 8000bdc0 <_ZL10waitForAll>
    80004570:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004574:	02800513          	li	a0,40
    80004578:	ffffe097          	auipc	ra,0xffffe
    8000457c:	9b4080e7          	jalr	-1612(ra) # 80001f2c <_Znwm>
    80004580:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80004584:	ffffe097          	auipc	ra,0xffffe
    80004588:	b2c080e7          	jalr	-1236(ra) # 800020b0 <_ZN6ThreadC1Ev>
    8000458c:	00007797          	auipc	a5,0x7
    80004590:	61478793          	addi	a5,a5,1556 # 8000bba0 <_ZTV16ProducerKeyborad+0x10>
    80004594:	00f4b023          	sd	a5,0(s1)
    80004598:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    8000459c:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    800045a0:	00048513          	mv	a0,s1
    800045a4:	ffffe097          	auipc	ra,0xffffe
    800045a8:	a88080e7          	jalr	-1400(ra) # 8000202c <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800045ac:	00100913          	li	s2,1
    800045b0:	0300006f          	j	800045e0 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800045b4:	00007797          	auipc	a5,0x7
    800045b8:	61478793          	addi	a5,a5,1556 # 8000bbc8 <_ZTV8Producer+0x10>
    800045bc:	00fcb023          	sd	a5,0(s9)
    800045c0:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    800045c4:	00391793          	slli	a5,s2,0x3
    800045c8:	00fa07b3          	add	a5,s4,a5
    800045cc:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    800045d0:	000c8513          	mv	a0,s9
    800045d4:	ffffe097          	auipc	ra,0xffffe
    800045d8:	a58080e7          	jalr	-1448(ra) # 8000202c <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800045dc:	0019091b          	addiw	s2,s2,1
    800045e0:	05395263          	bge	s2,s3,80004624 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    800045e4:	00191493          	slli	s1,s2,0x1
    800045e8:	012484b3          	add	s1,s1,s2
    800045ec:	00349493          	slli	s1,s1,0x3
    800045f0:	009b04b3          	add	s1,s6,s1
    800045f4:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    800045f8:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    800045fc:	00007797          	auipc	a5,0x7
    80004600:	7c47b783          	ld	a5,1988(a5) # 8000bdc0 <_ZL10waitForAll>
    80004604:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80004608:	02800513          	li	a0,40
    8000460c:	ffffe097          	auipc	ra,0xffffe
    80004610:	920080e7          	jalr	-1760(ra) # 80001f2c <_Znwm>
    80004614:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004618:	ffffe097          	auipc	ra,0xffffe
    8000461c:	a98080e7          	jalr	-1384(ra) # 800020b0 <_ZN6ThreadC1Ev>
    80004620:	f95ff06f          	j	800045b4 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80004624:	ffffe097          	auipc	ra,0xffffe
    80004628:	a3c080e7          	jalr	-1476(ra) # 80002060 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    8000462c:	00000493          	li	s1,0
    80004630:	0099ce63          	blt	s3,s1,8000464c <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80004634:	00007517          	auipc	a0,0x7
    80004638:	78c53503          	ld	a0,1932(a0) # 8000bdc0 <_ZL10waitForAll>
    8000463c:	ffffe097          	auipc	ra,0xffffe
    80004640:	ae0080e7          	jalr	-1312(ra) # 8000211c <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004644:	0014849b          	addiw	s1,s1,1
    80004648:	fe9ff06f          	j	80004630 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    8000464c:	00007517          	auipc	a0,0x7
    80004650:	77453503          	ld	a0,1908(a0) # 8000bdc0 <_ZL10waitForAll>
    80004654:	00050863          	beqz	a0,80004664 <_Z20testConsumerProducerv+0x2f4>
    80004658:	00053783          	ld	a5,0(a0)
    8000465c:	0087b783          	ld	a5,8(a5)
    80004660:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80004664:	00000493          	li	s1,0
    80004668:	0080006f          	j	80004670 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    8000466c:	0014849b          	addiw	s1,s1,1
    80004670:	0334d263          	bge	s1,s3,80004694 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80004674:	00349793          	slli	a5,s1,0x3
    80004678:	00fa07b3          	add	a5,s4,a5
    8000467c:	0007b503          	ld	a0,0(a5)
    80004680:	fe0506e3          	beqz	a0,8000466c <_Z20testConsumerProducerv+0x2fc>
    80004684:	00053783          	ld	a5,0(a0)
    80004688:	0087b783          	ld	a5,8(a5)
    8000468c:	000780e7          	jalr	a5
    80004690:	fddff06f          	j	8000466c <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80004694:	000b8a63          	beqz	s7,800046a8 <_Z20testConsumerProducerv+0x338>
    80004698:	000bb783          	ld	a5,0(s7)
    8000469c:	0087b783          	ld	a5,8(a5)
    800046a0:	000b8513          	mv	a0,s7
    800046a4:	000780e7          	jalr	a5
    delete buffer;
    800046a8:	000a8e63          	beqz	s5,800046c4 <_Z20testConsumerProducerv+0x354>
    800046ac:	000a8513          	mv	a0,s5
    800046b0:	00002097          	auipc	ra,0x2
    800046b4:	b90080e7          	jalr	-1136(ra) # 80006240 <_ZN9BufferCPPD1Ev>
    800046b8:	000a8513          	mv	a0,s5
    800046bc:	ffffe097          	auipc	ra,0xffffe
    800046c0:	898080e7          	jalr	-1896(ra) # 80001f54 <_ZdlPv>
    800046c4:	000c0113          	mv	sp,s8
}
    800046c8:	f8040113          	addi	sp,s0,-128
    800046cc:	07813083          	ld	ra,120(sp)
    800046d0:	07013403          	ld	s0,112(sp)
    800046d4:	06813483          	ld	s1,104(sp)
    800046d8:	06013903          	ld	s2,96(sp)
    800046dc:	05813983          	ld	s3,88(sp)
    800046e0:	05013a03          	ld	s4,80(sp)
    800046e4:	04813a83          	ld	s5,72(sp)
    800046e8:	04013b03          	ld	s6,64(sp)
    800046ec:	03813b83          	ld	s7,56(sp)
    800046f0:	03013c03          	ld	s8,48(sp)
    800046f4:	02813c83          	ld	s9,40(sp)
    800046f8:	08010113          	addi	sp,sp,128
    800046fc:	00008067          	ret
    80004700:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004704:	000a8513          	mv	a0,s5
    80004708:	ffffe097          	auipc	ra,0xffffe
    8000470c:	84c080e7          	jalr	-1972(ra) # 80001f54 <_ZdlPv>
    80004710:	00048513          	mv	a0,s1
    80004714:	00008097          	auipc	ra,0x8
    80004718:	7a4080e7          	jalr	1956(ra) # 8000ceb8 <_Unwind_Resume>
    8000471c:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80004720:	00090513          	mv	a0,s2
    80004724:	ffffe097          	auipc	ra,0xffffe
    80004728:	830080e7          	jalr	-2000(ra) # 80001f54 <_ZdlPv>
    8000472c:	00048513          	mv	a0,s1
    80004730:	00008097          	auipc	ra,0x8
    80004734:	788080e7          	jalr	1928(ra) # 8000ceb8 <_Unwind_Resume>
    80004738:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    8000473c:	000b8513          	mv	a0,s7
    80004740:	ffffe097          	auipc	ra,0xffffe
    80004744:	814080e7          	jalr	-2028(ra) # 80001f54 <_ZdlPv>
    80004748:	00048513          	mv	a0,s1
    8000474c:	00008097          	auipc	ra,0x8
    80004750:	76c080e7          	jalr	1900(ra) # 8000ceb8 <_Unwind_Resume>
    80004754:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004758:	00048513          	mv	a0,s1
    8000475c:	ffffd097          	auipc	ra,0xffffd
    80004760:	7f8080e7          	jalr	2040(ra) # 80001f54 <_ZdlPv>
    80004764:	00090513          	mv	a0,s2
    80004768:	00008097          	auipc	ra,0x8
    8000476c:	750080e7          	jalr	1872(ra) # 8000ceb8 <_Unwind_Resume>
    80004770:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80004774:	000c8513          	mv	a0,s9
    80004778:	ffffd097          	auipc	ra,0xffffd
    8000477c:	7dc080e7          	jalr	2012(ra) # 80001f54 <_ZdlPv>
    80004780:	00048513          	mv	a0,s1
    80004784:	00008097          	auipc	ra,0x8
    80004788:	734080e7          	jalr	1844(ra) # 8000ceb8 <_Unwind_Resume>

000000008000478c <_ZN8Consumer3runEv>:
    void run() override {
    8000478c:	fd010113          	addi	sp,sp,-48
    80004790:	02113423          	sd	ra,40(sp)
    80004794:	02813023          	sd	s0,32(sp)
    80004798:	00913c23          	sd	s1,24(sp)
    8000479c:	01213823          	sd	s2,16(sp)
    800047a0:	01313423          	sd	s3,8(sp)
    800047a4:	03010413          	addi	s0,sp,48
    800047a8:	00050913          	mv	s2,a0
        int i = 0;
    800047ac:	00000993          	li	s3,0
    800047b0:	0100006f          	j	800047c0 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    800047b4:	00a00513          	li	a0,10
    800047b8:	ffffe097          	auipc	ra,0xffffe
    800047bc:	abc080e7          	jalr	-1348(ra) # 80002274 <_ZN7Console4putcEc>
        while (!threadEnd) {
    800047c0:	00007797          	auipc	a5,0x7
    800047c4:	5f87a783          	lw	a5,1528(a5) # 8000bdb8 <_ZL9threadEnd>
    800047c8:	04079a63          	bnez	a5,8000481c <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    800047cc:	02093783          	ld	a5,32(s2)
    800047d0:	0087b503          	ld	a0,8(a5)
    800047d4:	00002097          	auipc	ra,0x2
    800047d8:	958080e7          	jalr	-1704(ra) # 8000612c <_ZN9BufferCPP3getEv>
            i++;
    800047dc:	0019849b          	addiw	s1,s3,1
    800047e0:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    800047e4:	0ff57513          	andi	a0,a0,255
    800047e8:	ffffe097          	auipc	ra,0xffffe
    800047ec:	a8c080e7          	jalr	-1396(ra) # 80002274 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    800047f0:	05000793          	li	a5,80
    800047f4:	02f4e4bb          	remw	s1,s1,a5
    800047f8:	fc0494e3          	bnez	s1,800047c0 <_ZN8Consumer3runEv+0x34>
    800047fc:	fb9ff06f          	j	800047b4 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80004800:	02093783          	ld	a5,32(s2)
    80004804:	0087b503          	ld	a0,8(a5)
    80004808:	00002097          	auipc	ra,0x2
    8000480c:	924080e7          	jalr	-1756(ra) # 8000612c <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80004810:	0ff57513          	andi	a0,a0,255
    80004814:	ffffe097          	auipc	ra,0xffffe
    80004818:	a60080e7          	jalr	-1440(ra) # 80002274 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    8000481c:	02093783          	ld	a5,32(s2)
    80004820:	0087b503          	ld	a0,8(a5)
    80004824:	00002097          	auipc	ra,0x2
    80004828:	994080e7          	jalr	-1644(ra) # 800061b8 <_ZN9BufferCPP6getCntEv>
    8000482c:	fca04ae3          	bgtz	a0,80004800 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004830:	02093783          	ld	a5,32(s2)
    80004834:	0107b503          	ld	a0,16(a5)
    80004838:	ffffe097          	auipc	ra,0xffffe
    8000483c:	91c080e7          	jalr	-1764(ra) # 80002154 <_ZN9Semaphore6signalEv>
    }
    80004840:	02813083          	ld	ra,40(sp)
    80004844:	02013403          	ld	s0,32(sp)
    80004848:	01813483          	ld	s1,24(sp)
    8000484c:	01013903          	ld	s2,16(sp)
    80004850:	00813983          	ld	s3,8(sp)
    80004854:	03010113          	addi	sp,sp,48
    80004858:	00008067          	ret

000000008000485c <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    8000485c:	ff010113          	addi	sp,sp,-16
    80004860:	00113423          	sd	ra,8(sp)
    80004864:	00813023          	sd	s0,0(sp)
    80004868:	01010413          	addi	s0,sp,16
    8000486c:	00007797          	auipc	a5,0x7
    80004870:	38478793          	addi	a5,a5,900 # 8000bbf0 <_ZTV8Consumer+0x10>
    80004874:	00f53023          	sd	a5,0(a0)
    80004878:	ffffd097          	auipc	ra,0xffffd
    8000487c:	61c080e7          	jalr	1564(ra) # 80001e94 <_ZN6ThreadD1Ev>
    80004880:	00813083          	ld	ra,8(sp)
    80004884:	00013403          	ld	s0,0(sp)
    80004888:	01010113          	addi	sp,sp,16
    8000488c:	00008067          	ret

0000000080004890 <_ZN8ConsumerD0Ev>:
    80004890:	fe010113          	addi	sp,sp,-32
    80004894:	00113c23          	sd	ra,24(sp)
    80004898:	00813823          	sd	s0,16(sp)
    8000489c:	00913423          	sd	s1,8(sp)
    800048a0:	02010413          	addi	s0,sp,32
    800048a4:	00050493          	mv	s1,a0
    800048a8:	00007797          	auipc	a5,0x7
    800048ac:	34878793          	addi	a5,a5,840 # 8000bbf0 <_ZTV8Consumer+0x10>
    800048b0:	00f53023          	sd	a5,0(a0)
    800048b4:	ffffd097          	auipc	ra,0xffffd
    800048b8:	5e0080e7          	jalr	1504(ra) # 80001e94 <_ZN6ThreadD1Ev>
    800048bc:	00048513          	mv	a0,s1
    800048c0:	ffffd097          	auipc	ra,0xffffd
    800048c4:	694080e7          	jalr	1684(ra) # 80001f54 <_ZdlPv>
    800048c8:	01813083          	ld	ra,24(sp)
    800048cc:	01013403          	ld	s0,16(sp)
    800048d0:	00813483          	ld	s1,8(sp)
    800048d4:	02010113          	addi	sp,sp,32
    800048d8:	00008067          	ret

00000000800048dc <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    800048dc:	ff010113          	addi	sp,sp,-16
    800048e0:	00113423          	sd	ra,8(sp)
    800048e4:	00813023          	sd	s0,0(sp)
    800048e8:	01010413          	addi	s0,sp,16
    800048ec:	00007797          	auipc	a5,0x7
    800048f0:	2b478793          	addi	a5,a5,692 # 8000bba0 <_ZTV16ProducerKeyborad+0x10>
    800048f4:	00f53023          	sd	a5,0(a0)
    800048f8:	ffffd097          	auipc	ra,0xffffd
    800048fc:	59c080e7          	jalr	1436(ra) # 80001e94 <_ZN6ThreadD1Ev>
    80004900:	00813083          	ld	ra,8(sp)
    80004904:	00013403          	ld	s0,0(sp)
    80004908:	01010113          	addi	sp,sp,16
    8000490c:	00008067          	ret

0000000080004910 <_ZN16ProducerKeyboradD0Ev>:
    80004910:	fe010113          	addi	sp,sp,-32
    80004914:	00113c23          	sd	ra,24(sp)
    80004918:	00813823          	sd	s0,16(sp)
    8000491c:	00913423          	sd	s1,8(sp)
    80004920:	02010413          	addi	s0,sp,32
    80004924:	00050493          	mv	s1,a0
    80004928:	00007797          	auipc	a5,0x7
    8000492c:	27878793          	addi	a5,a5,632 # 8000bba0 <_ZTV16ProducerKeyborad+0x10>
    80004930:	00f53023          	sd	a5,0(a0)
    80004934:	ffffd097          	auipc	ra,0xffffd
    80004938:	560080e7          	jalr	1376(ra) # 80001e94 <_ZN6ThreadD1Ev>
    8000493c:	00048513          	mv	a0,s1
    80004940:	ffffd097          	auipc	ra,0xffffd
    80004944:	614080e7          	jalr	1556(ra) # 80001f54 <_ZdlPv>
    80004948:	01813083          	ld	ra,24(sp)
    8000494c:	01013403          	ld	s0,16(sp)
    80004950:	00813483          	ld	s1,8(sp)
    80004954:	02010113          	addi	sp,sp,32
    80004958:	00008067          	ret

000000008000495c <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    8000495c:	ff010113          	addi	sp,sp,-16
    80004960:	00113423          	sd	ra,8(sp)
    80004964:	00813023          	sd	s0,0(sp)
    80004968:	01010413          	addi	s0,sp,16
    8000496c:	00007797          	auipc	a5,0x7
    80004970:	25c78793          	addi	a5,a5,604 # 8000bbc8 <_ZTV8Producer+0x10>
    80004974:	00f53023          	sd	a5,0(a0)
    80004978:	ffffd097          	auipc	ra,0xffffd
    8000497c:	51c080e7          	jalr	1308(ra) # 80001e94 <_ZN6ThreadD1Ev>
    80004980:	00813083          	ld	ra,8(sp)
    80004984:	00013403          	ld	s0,0(sp)
    80004988:	01010113          	addi	sp,sp,16
    8000498c:	00008067          	ret

0000000080004990 <_ZN8ProducerD0Ev>:
    80004990:	fe010113          	addi	sp,sp,-32
    80004994:	00113c23          	sd	ra,24(sp)
    80004998:	00813823          	sd	s0,16(sp)
    8000499c:	00913423          	sd	s1,8(sp)
    800049a0:	02010413          	addi	s0,sp,32
    800049a4:	00050493          	mv	s1,a0
    800049a8:	00007797          	auipc	a5,0x7
    800049ac:	22078793          	addi	a5,a5,544 # 8000bbc8 <_ZTV8Producer+0x10>
    800049b0:	00f53023          	sd	a5,0(a0)
    800049b4:	ffffd097          	auipc	ra,0xffffd
    800049b8:	4e0080e7          	jalr	1248(ra) # 80001e94 <_ZN6ThreadD1Ev>
    800049bc:	00048513          	mv	a0,s1
    800049c0:	ffffd097          	auipc	ra,0xffffd
    800049c4:	594080e7          	jalr	1428(ra) # 80001f54 <_ZdlPv>
    800049c8:	01813083          	ld	ra,24(sp)
    800049cc:	01013403          	ld	s0,16(sp)
    800049d0:	00813483          	ld	s1,8(sp)
    800049d4:	02010113          	addi	sp,sp,32
    800049d8:	00008067          	ret

00000000800049dc <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    800049dc:	fe010113          	addi	sp,sp,-32
    800049e0:	00113c23          	sd	ra,24(sp)
    800049e4:	00813823          	sd	s0,16(sp)
    800049e8:	00913423          	sd	s1,8(sp)
    800049ec:	02010413          	addi	s0,sp,32
    800049f0:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    800049f4:	ffffd097          	auipc	ra,0xffffd
    800049f8:	c2c080e7          	jalr	-980(ra) # 80001620 <_Z4getcv>
    800049fc:	0005059b          	sext.w	a1,a0
    80004a00:	01b00793          	li	a5,27
    80004a04:	00f58c63          	beq	a1,a5,80004a1c <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80004a08:	0204b783          	ld	a5,32(s1)
    80004a0c:	0087b503          	ld	a0,8(a5)
    80004a10:	00001097          	auipc	ra,0x1
    80004a14:	68c080e7          	jalr	1676(ra) # 8000609c <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80004a18:	fddff06f          	j	800049f4 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004a1c:	00100793          	li	a5,1
    80004a20:	00007717          	auipc	a4,0x7
    80004a24:	38f72c23          	sw	a5,920(a4) # 8000bdb8 <_ZL9threadEnd>
        td->buffer->put('!');
    80004a28:	0204b783          	ld	a5,32(s1)
    80004a2c:	02100593          	li	a1,33
    80004a30:	0087b503          	ld	a0,8(a5)
    80004a34:	00001097          	auipc	ra,0x1
    80004a38:	668080e7          	jalr	1640(ra) # 8000609c <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004a3c:	0204b783          	ld	a5,32(s1)
    80004a40:	0107b503          	ld	a0,16(a5)
    80004a44:	ffffd097          	auipc	ra,0xffffd
    80004a48:	710080e7          	jalr	1808(ra) # 80002154 <_ZN9Semaphore6signalEv>
    }
    80004a4c:	01813083          	ld	ra,24(sp)
    80004a50:	01013403          	ld	s0,16(sp)
    80004a54:	00813483          	ld	s1,8(sp)
    80004a58:	02010113          	addi	sp,sp,32
    80004a5c:	00008067          	ret

0000000080004a60 <_ZN8Producer3runEv>:
    void run() override {
    80004a60:	fe010113          	addi	sp,sp,-32
    80004a64:	00113c23          	sd	ra,24(sp)
    80004a68:	00813823          	sd	s0,16(sp)
    80004a6c:	00913423          	sd	s1,8(sp)
    80004a70:	01213023          	sd	s2,0(sp)
    80004a74:	02010413          	addi	s0,sp,32
    80004a78:	00050493          	mv	s1,a0
        int i = 0;
    80004a7c:	00000913          	li	s2,0
        while (!threadEnd) {
    80004a80:	00007797          	auipc	a5,0x7
    80004a84:	3387a783          	lw	a5,824(a5) # 8000bdb8 <_ZL9threadEnd>
    80004a88:	04079263          	bnez	a5,80004acc <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004a8c:	0204b783          	ld	a5,32(s1)
    80004a90:	0007a583          	lw	a1,0(a5)
    80004a94:	0305859b          	addiw	a1,a1,48
    80004a98:	0087b503          	ld	a0,8(a5)
    80004a9c:	00001097          	auipc	ra,0x1
    80004aa0:	600080e7          	jalr	1536(ra) # 8000609c <_ZN9BufferCPP3putEi>
            i++;
    80004aa4:	0019071b          	addiw	a4,s2,1
    80004aa8:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004aac:	0204b783          	ld	a5,32(s1)
    80004ab0:	0007a783          	lw	a5,0(a5)
    80004ab4:	00e787bb          	addw	a5,a5,a4
    80004ab8:	00500513          	li	a0,5
    80004abc:	02a7e53b          	remw	a0,a5,a0
    80004ac0:	ffffd097          	auipc	ra,0xffffd
    80004ac4:	5c8080e7          	jalr	1480(ra) # 80002088 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004ac8:	fb9ff06f          	j	80004a80 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004acc:	0204b783          	ld	a5,32(s1)
    80004ad0:	0107b503          	ld	a0,16(a5)
    80004ad4:	ffffd097          	auipc	ra,0xffffd
    80004ad8:	680080e7          	jalr	1664(ra) # 80002154 <_ZN9Semaphore6signalEv>
    }
    80004adc:	01813083          	ld	ra,24(sp)
    80004ae0:	01013403          	ld	s0,16(sp)
    80004ae4:	00813483          	ld	s1,8(sp)
    80004ae8:	00013903          	ld	s2,0(sp)
    80004aec:	02010113          	addi	sp,sp,32
    80004af0:	00008067          	ret

0000000080004af4 <_ZN6BufferC1Ei>:
#include "bounded_buffer.hpp"


Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004af4:	fe010113          	addi	sp,sp,-32
    80004af8:	00113c23          	sd	ra,24(sp)
    80004afc:	00813823          	sd	s0,16(sp)
    80004b00:	00913423          	sd	s1,8(sp)
    80004b04:	01213023          	sd	s2,0(sp)
    80004b08:	02010413          	addi	s0,sp,32
    80004b0c:	00050493          	mv	s1,a0
    80004b10:	00058913          	mv	s2,a1
    80004b14:	0015879b          	addiw	a5,a1,1
    80004b18:	0007851b          	sext.w	a0,a5
    80004b1c:	00f4a023          	sw	a5,0(s1)
    80004b20:	0004a823          	sw	zero,16(s1)
    80004b24:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004b28:	00251513          	slli	a0,a0,0x2
    80004b2c:	ffffc097          	auipc	ra,0xffffc
    80004b30:	72c080e7          	jalr	1836(ra) # 80001258 <_Z9mem_allocm>
    80004b34:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80004b38:	00000593          	li	a1,0
    80004b3c:	02048513          	addi	a0,s1,32
    80004b40:	ffffd097          	auipc	ra,0xffffd
    80004b44:	8c8080e7          	jalr	-1848(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&spaceAvailable, _cap);
    80004b48:	00090593          	mv	a1,s2
    80004b4c:	01848513          	addi	a0,s1,24
    80004b50:	ffffd097          	auipc	ra,0xffffd
    80004b54:	8b8080e7          	jalr	-1864(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&mutexHead, 1);
    80004b58:	00100593          	li	a1,1
    80004b5c:	02848513          	addi	a0,s1,40
    80004b60:	ffffd097          	auipc	ra,0xffffd
    80004b64:	8a8080e7          	jalr	-1880(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&mutexTail, 1);
    80004b68:	00100593          	li	a1,1
    80004b6c:	03048513          	addi	a0,s1,48
    80004b70:	ffffd097          	auipc	ra,0xffffd
    80004b74:	898080e7          	jalr	-1896(ra) # 80001408 <_Z8sem_openPP3Semj>
}
    80004b78:	01813083          	ld	ra,24(sp)
    80004b7c:	01013403          	ld	s0,16(sp)
    80004b80:	00813483          	ld	s1,8(sp)
    80004b84:	00013903          	ld	s2,0(sp)
    80004b88:	02010113          	addi	sp,sp,32
    80004b8c:	00008067          	ret

0000000080004b90 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80004b90:	fe010113          	addi	sp,sp,-32
    80004b94:	00113c23          	sd	ra,24(sp)
    80004b98:	00813823          	sd	s0,16(sp)
    80004b9c:	00913423          	sd	s1,8(sp)
    80004ba0:	01213023          	sd	s2,0(sp)
    80004ba4:	02010413          	addi	s0,sp,32
    80004ba8:	00050493          	mv	s1,a0
    80004bac:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80004bb0:	01853503          	ld	a0,24(a0)
    80004bb4:	ffffd097          	auipc	ra,0xffffd
    80004bb8:	8f0080e7          	jalr	-1808(ra) # 800014a4 <_Z8sem_waitP3Sem>

    sem_wait(mutexTail);
    80004bbc:	0304b503          	ld	a0,48(s1)
    80004bc0:	ffffd097          	auipc	ra,0xffffd
    80004bc4:	8e4080e7          	jalr	-1820(ra) # 800014a4 <_Z8sem_waitP3Sem>
    buffer[tail] = val;
    80004bc8:	0084b783          	ld	a5,8(s1)
    80004bcc:	0144a703          	lw	a4,20(s1)
    80004bd0:	00271713          	slli	a4,a4,0x2
    80004bd4:	00e787b3          	add	a5,a5,a4
    80004bd8:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80004bdc:	0144a783          	lw	a5,20(s1)
    80004be0:	0017879b          	addiw	a5,a5,1
    80004be4:	0004a703          	lw	a4,0(s1)
    80004be8:	02e7e7bb          	remw	a5,a5,a4
    80004bec:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80004bf0:	0304b503          	ld	a0,48(s1)
    80004bf4:	ffffd097          	auipc	ra,0xffffd
    80004bf8:	8fc080e7          	jalr	-1796(ra) # 800014f0 <_Z10sem_signalP3Sem>

    sem_signal(itemAvailable);
    80004bfc:	0204b503          	ld	a0,32(s1)
    80004c00:	ffffd097          	auipc	ra,0xffffd
    80004c04:	8f0080e7          	jalr	-1808(ra) # 800014f0 <_Z10sem_signalP3Sem>

}
    80004c08:	01813083          	ld	ra,24(sp)
    80004c0c:	01013403          	ld	s0,16(sp)
    80004c10:	00813483          	ld	s1,8(sp)
    80004c14:	00013903          	ld	s2,0(sp)
    80004c18:	02010113          	addi	sp,sp,32
    80004c1c:	00008067          	ret

0000000080004c20 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80004c20:	fe010113          	addi	sp,sp,-32
    80004c24:	00113c23          	sd	ra,24(sp)
    80004c28:	00813823          	sd	s0,16(sp)
    80004c2c:	00913423          	sd	s1,8(sp)
    80004c30:	01213023          	sd	s2,0(sp)
    80004c34:	02010413          	addi	s0,sp,32
    80004c38:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80004c3c:	02053503          	ld	a0,32(a0)
    80004c40:	ffffd097          	auipc	ra,0xffffd
    80004c44:	864080e7          	jalr	-1948(ra) # 800014a4 <_Z8sem_waitP3Sem>

    sem_wait(mutexHead);
    80004c48:	0284b503          	ld	a0,40(s1)
    80004c4c:	ffffd097          	auipc	ra,0xffffd
    80004c50:	858080e7          	jalr	-1960(ra) # 800014a4 <_Z8sem_waitP3Sem>

    int ret = buffer[head];
    80004c54:	0084b703          	ld	a4,8(s1)
    80004c58:	0104a783          	lw	a5,16(s1)
    80004c5c:	00279693          	slli	a3,a5,0x2
    80004c60:	00d70733          	add	a4,a4,a3
    80004c64:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80004c68:	0017879b          	addiw	a5,a5,1
    80004c6c:	0004a703          	lw	a4,0(s1)
    80004c70:	02e7e7bb          	remw	a5,a5,a4
    80004c74:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80004c78:	0284b503          	ld	a0,40(s1)
    80004c7c:	ffffd097          	auipc	ra,0xffffd
    80004c80:	874080e7          	jalr	-1932(ra) # 800014f0 <_Z10sem_signalP3Sem>

    sem_signal(spaceAvailable);
    80004c84:	0184b503          	ld	a0,24(s1)
    80004c88:	ffffd097          	auipc	ra,0xffffd
    80004c8c:	868080e7          	jalr	-1944(ra) # 800014f0 <_Z10sem_signalP3Sem>

    return ret;
}
    80004c90:	00090513          	mv	a0,s2
    80004c94:	01813083          	ld	ra,24(sp)
    80004c98:	01013403          	ld	s0,16(sp)
    80004c9c:	00813483          	ld	s1,8(sp)
    80004ca0:	00013903          	ld	s2,0(sp)
    80004ca4:	02010113          	addi	sp,sp,32
    80004ca8:	00008067          	ret

0000000080004cac <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80004cac:	fe010113          	addi	sp,sp,-32
    80004cb0:	00113c23          	sd	ra,24(sp)
    80004cb4:	00813823          	sd	s0,16(sp)
    80004cb8:	00913423          	sd	s1,8(sp)
    80004cbc:	01213023          	sd	s2,0(sp)
    80004cc0:	02010413          	addi	s0,sp,32
    80004cc4:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80004cc8:	02853503          	ld	a0,40(a0)
    80004ccc:	ffffc097          	auipc	ra,0xffffc
    80004cd0:	7d8080e7          	jalr	2008(ra) # 800014a4 <_Z8sem_waitP3Sem>
    sem_wait(mutexTail);
    80004cd4:	0304b503          	ld	a0,48(s1)
    80004cd8:	ffffc097          	auipc	ra,0xffffc
    80004cdc:	7cc080e7          	jalr	1996(ra) # 800014a4 <_Z8sem_waitP3Sem>

    if (tail >= head) {
    80004ce0:	0144a783          	lw	a5,20(s1)
    80004ce4:	0104a903          	lw	s2,16(s1)
    80004ce8:	0327ce63          	blt	a5,s2,80004d24 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80004cec:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80004cf0:	0304b503          	ld	a0,48(s1)
    80004cf4:	ffffc097          	auipc	ra,0xffffc
    80004cf8:	7fc080e7          	jalr	2044(ra) # 800014f0 <_Z10sem_signalP3Sem>
    sem_signal(mutexHead);
    80004cfc:	0284b503          	ld	a0,40(s1)
    80004d00:	ffffc097          	auipc	ra,0xffffc
    80004d04:	7f0080e7          	jalr	2032(ra) # 800014f0 <_Z10sem_signalP3Sem>

    return ret;
}
    80004d08:	00090513          	mv	a0,s2
    80004d0c:	01813083          	ld	ra,24(sp)
    80004d10:	01013403          	ld	s0,16(sp)
    80004d14:	00813483          	ld	s1,8(sp)
    80004d18:	00013903          	ld	s2,0(sp)
    80004d1c:	02010113          	addi	sp,sp,32
    80004d20:	00008067          	ret
        ret = cap - head + tail;
    80004d24:	0004a703          	lw	a4,0(s1)
    80004d28:	4127093b          	subw	s2,a4,s2
    80004d2c:	00f9093b          	addw	s2,s2,a5
    80004d30:	fc1ff06f          	j	80004cf0 <_ZN6Buffer6getCntEv+0x44>

0000000080004d34 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80004d34:	fe010113          	addi	sp,sp,-32
    80004d38:	00113c23          	sd	ra,24(sp)
    80004d3c:	00813823          	sd	s0,16(sp)
    80004d40:	00913423          	sd	s1,8(sp)
    80004d44:	02010413          	addi	s0,sp,32
    80004d48:	00050493          	mv	s1,a0
    putc('\n');
    80004d4c:	00a00513          	li	a0,10
    80004d50:	ffffd097          	auipc	ra,0xffffd
    80004d54:	91c080e7          	jalr	-1764(ra) # 8000166c <_Z4putcc>
    printString("Buffer deleted!\n");
    80004d58:	00004517          	auipc	a0,0x4
    80004d5c:	5c850513          	addi	a0,a0,1480 # 80009320 <CONSOLE_STATUS+0x310>
    80004d60:	00001097          	auipc	ra,0x1
    80004d64:	f18080e7          	jalr	-232(ra) # 80005c78 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80004d68:	00048513          	mv	a0,s1
    80004d6c:	00000097          	auipc	ra,0x0
    80004d70:	f40080e7          	jalr	-192(ra) # 80004cac <_ZN6Buffer6getCntEv>
    80004d74:	02a05c63          	blez	a0,80004dac <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80004d78:	0084b783          	ld	a5,8(s1)
    80004d7c:	0104a703          	lw	a4,16(s1)
    80004d80:	00271713          	slli	a4,a4,0x2
    80004d84:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80004d88:	0007c503          	lbu	a0,0(a5)
    80004d8c:	ffffd097          	auipc	ra,0xffffd
    80004d90:	8e0080e7          	jalr	-1824(ra) # 8000166c <_Z4putcc>
        head = (head + 1) % cap;
    80004d94:	0104a783          	lw	a5,16(s1)
    80004d98:	0017879b          	addiw	a5,a5,1
    80004d9c:	0004a703          	lw	a4,0(s1)
    80004da0:	02e7e7bb          	remw	a5,a5,a4
    80004da4:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80004da8:	fc1ff06f          	j	80004d68 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80004dac:	02100513          	li	a0,33
    80004db0:	ffffd097          	auipc	ra,0xffffd
    80004db4:	8bc080e7          	jalr	-1860(ra) # 8000166c <_Z4putcc>
    putc('\n');
    80004db8:	00a00513          	li	a0,10
    80004dbc:	ffffd097          	auipc	ra,0xffffd
    80004dc0:	8b0080e7          	jalr	-1872(ra) # 8000166c <_Z4putcc>
    mem_free(buffer);
    80004dc4:	0084b503          	ld	a0,8(s1)
    80004dc8:	ffffc097          	auipc	ra,0xffffc
    80004dcc:	4e4080e7          	jalr	1252(ra) # 800012ac <_Z8mem_freePv>
    sem_close(itemAvailable);
    80004dd0:	0204b503          	ld	a0,32(s1)
    80004dd4:	ffffc097          	auipc	ra,0xffffc
    80004dd8:	684080e7          	jalr	1668(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(spaceAvailable);
    80004ddc:	0184b503          	ld	a0,24(s1)
    80004de0:	ffffc097          	auipc	ra,0xffffc
    80004de4:	678080e7          	jalr	1656(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(mutexTail);
    80004de8:	0304b503          	ld	a0,48(s1)
    80004dec:	ffffc097          	auipc	ra,0xffffc
    80004df0:	66c080e7          	jalr	1644(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(mutexHead);
    80004df4:	0284b503          	ld	a0,40(s1)
    80004df8:	ffffc097          	auipc	ra,0xffffc
    80004dfc:	660080e7          	jalr	1632(ra) # 80001458 <_Z9sem_closeP3Sem>
}
    80004e00:	01813083          	ld	ra,24(sp)
    80004e04:	01013403          	ld	s0,16(sp)
    80004e08:	00813483          	ld	s1,8(sp)
    80004e0c:	02010113          	addi	sp,sp,32
    80004e10:	00008067          	ret

0000000080004e14 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004e14:	fe010113          	addi	sp,sp,-32
    80004e18:	00113c23          	sd	ra,24(sp)
    80004e1c:	00813823          	sd	s0,16(sp)
    80004e20:	00913423          	sd	s1,8(sp)
    80004e24:	01213023          	sd	s2,0(sp)
    80004e28:	02010413          	addi	s0,sp,32
    80004e2c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004e30:	00100793          	li	a5,1
    80004e34:	02a7f863          	bgeu	a5,a0,80004e64 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004e38:	00a00793          	li	a5,10
    80004e3c:	02f577b3          	remu	a5,a0,a5
    80004e40:	02078e63          	beqz	a5,80004e7c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004e44:	fff48513          	addi	a0,s1,-1
    80004e48:	00000097          	auipc	ra,0x0
    80004e4c:	fcc080e7          	jalr	-52(ra) # 80004e14 <_ZL9fibonaccim>
    80004e50:	00050913          	mv	s2,a0
    80004e54:	ffe48513          	addi	a0,s1,-2
    80004e58:	00000097          	auipc	ra,0x0
    80004e5c:	fbc080e7          	jalr	-68(ra) # 80004e14 <_ZL9fibonaccim>
    80004e60:	00a90533          	add	a0,s2,a0
}
    80004e64:	01813083          	ld	ra,24(sp)
    80004e68:	01013403          	ld	s0,16(sp)
    80004e6c:	00813483          	ld	s1,8(sp)
    80004e70:	00013903          	ld	s2,0(sp)
    80004e74:	02010113          	addi	sp,sp,32
    80004e78:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004e7c:	ffffc097          	auipc	ra,0xffffc
    80004e80:	550080e7          	jalr	1360(ra) # 800013cc <_Z15thread_dispatchv>
    80004e84:	fc1ff06f          	j	80004e44 <_ZL9fibonaccim+0x30>

0000000080004e88 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004e88:	fe010113          	addi	sp,sp,-32
    80004e8c:	00113c23          	sd	ra,24(sp)
    80004e90:	00813823          	sd	s0,16(sp)
    80004e94:	00913423          	sd	s1,8(sp)
    80004e98:	01213023          	sd	s2,0(sp)
    80004e9c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004ea0:	00a00493          	li	s1,10
    80004ea4:	0400006f          	j	80004ee4 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004ea8:	00004517          	auipc	a0,0x4
    80004eac:	3e050513          	addi	a0,a0,992 # 80009288 <CONSOLE_STATUS+0x278>
    80004eb0:	00001097          	auipc	ra,0x1
    80004eb4:	dc8080e7          	jalr	-568(ra) # 80005c78 <_Z11printStringPKc>
    80004eb8:	00000613          	li	a2,0
    80004ebc:	00a00593          	li	a1,10
    80004ec0:	00048513          	mv	a0,s1
    80004ec4:	00001097          	auipc	ra,0x1
    80004ec8:	f64080e7          	jalr	-156(ra) # 80005e28 <_Z8printIntiii>
    80004ecc:	00004517          	auipc	a0,0x4
    80004ed0:	5ac50513          	addi	a0,a0,1452 # 80009478 <CONSOLE_STATUS+0x468>
    80004ed4:	00001097          	auipc	ra,0x1
    80004ed8:	da4080e7          	jalr	-604(ra) # 80005c78 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004edc:	0014849b          	addiw	s1,s1,1
    80004ee0:	0ff4f493          	andi	s1,s1,255
    80004ee4:	00c00793          	li	a5,12
    80004ee8:	fc97f0e3          	bgeu	a5,s1,80004ea8 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004eec:	00004517          	auipc	a0,0x4
    80004ef0:	3a450513          	addi	a0,a0,932 # 80009290 <CONSOLE_STATUS+0x280>
    80004ef4:	00001097          	auipc	ra,0x1
    80004ef8:	d84080e7          	jalr	-636(ra) # 80005c78 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004efc:	00500313          	li	t1,5
    thread_dispatch();
    80004f00:	ffffc097          	auipc	ra,0xffffc
    80004f04:	4cc080e7          	jalr	1228(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004f08:	01000513          	li	a0,16
    80004f0c:	00000097          	auipc	ra,0x0
    80004f10:	f08080e7          	jalr	-248(ra) # 80004e14 <_ZL9fibonaccim>
    80004f14:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004f18:	00004517          	auipc	a0,0x4
    80004f1c:	38850513          	addi	a0,a0,904 # 800092a0 <CONSOLE_STATUS+0x290>
    80004f20:	00001097          	auipc	ra,0x1
    80004f24:	d58080e7          	jalr	-680(ra) # 80005c78 <_Z11printStringPKc>
    80004f28:	00000613          	li	a2,0
    80004f2c:	00a00593          	li	a1,10
    80004f30:	0009051b          	sext.w	a0,s2
    80004f34:	00001097          	auipc	ra,0x1
    80004f38:	ef4080e7          	jalr	-268(ra) # 80005e28 <_Z8printIntiii>
    80004f3c:	00004517          	auipc	a0,0x4
    80004f40:	53c50513          	addi	a0,a0,1340 # 80009478 <CONSOLE_STATUS+0x468>
    80004f44:	00001097          	auipc	ra,0x1
    80004f48:	d34080e7          	jalr	-716(ra) # 80005c78 <_Z11printStringPKc>
    80004f4c:	0400006f          	j	80004f8c <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004f50:	00004517          	auipc	a0,0x4
    80004f54:	33850513          	addi	a0,a0,824 # 80009288 <CONSOLE_STATUS+0x278>
    80004f58:	00001097          	auipc	ra,0x1
    80004f5c:	d20080e7          	jalr	-736(ra) # 80005c78 <_Z11printStringPKc>
    80004f60:	00000613          	li	a2,0
    80004f64:	00a00593          	li	a1,10
    80004f68:	00048513          	mv	a0,s1
    80004f6c:	00001097          	auipc	ra,0x1
    80004f70:	ebc080e7          	jalr	-324(ra) # 80005e28 <_Z8printIntiii>
    80004f74:	00004517          	auipc	a0,0x4
    80004f78:	50450513          	addi	a0,a0,1284 # 80009478 <CONSOLE_STATUS+0x468>
    80004f7c:	00001097          	auipc	ra,0x1
    80004f80:	cfc080e7          	jalr	-772(ra) # 80005c78 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004f84:	0014849b          	addiw	s1,s1,1
    80004f88:	0ff4f493          	andi	s1,s1,255
    80004f8c:	00f00793          	li	a5,15
    80004f90:	fc97f0e3          	bgeu	a5,s1,80004f50 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004f94:	00004517          	auipc	a0,0x4
    80004f98:	31c50513          	addi	a0,a0,796 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80004f9c:	00001097          	auipc	ra,0x1
    80004fa0:	cdc080e7          	jalr	-804(ra) # 80005c78 <_Z11printStringPKc>
    finishedD = true;
    80004fa4:	00100793          	li	a5,1
    80004fa8:	00007717          	auipc	a4,0x7
    80004fac:	e2f70023          	sb	a5,-480(a4) # 8000bdc8 <_ZL9finishedD>
    thread_dispatch();
    80004fb0:	ffffc097          	auipc	ra,0xffffc
    80004fb4:	41c080e7          	jalr	1052(ra) # 800013cc <_Z15thread_dispatchv>
}
    80004fb8:	01813083          	ld	ra,24(sp)
    80004fbc:	01013403          	ld	s0,16(sp)
    80004fc0:	00813483          	ld	s1,8(sp)
    80004fc4:	00013903          	ld	s2,0(sp)
    80004fc8:	02010113          	addi	sp,sp,32
    80004fcc:	00008067          	ret

0000000080004fd0 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004fd0:	fe010113          	addi	sp,sp,-32
    80004fd4:	00113c23          	sd	ra,24(sp)
    80004fd8:	00813823          	sd	s0,16(sp)
    80004fdc:	00913423          	sd	s1,8(sp)
    80004fe0:	01213023          	sd	s2,0(sp)
    80004fe4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004fe8:	00000493          	li	s1,0
    80004fec:	0400006f          	j	8000502c <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004ff0:	00004517          	auipc	a0,0x4
    80004ff4:	26850513          	addi	a0,a0,616 # 80009258 <CONSOLE_STATUS+0x248>
    80004ff8:	00001097          	auipc	ra,0x1
    80004ffc:	c80080e7          	jalr	-896(ra) # 80005c78 <_Z11printStringPKc>
    80005000:	00000613          	li	a2,0
    80005004:	00a00593          	li	a1,10
    80005008:	00048513          	mv	a0,s1
    8000500c:	00001097          	auipc	ra,0x1
    80005010:	e1c080e7          	jalr	-484(ra) # 80005e28 <_Z8printIntiii>
    80005014:	00004517          	auipc	a0,0x4
    80005018:	46450513          	addi	a0,a0,1124 # 80009478 <CONSOLE_STATUS+0x468>
    8000501c:	00001097          	auipc	ra,0x1
    80005020:	c5c080e7          	jalr	-932(ra) # 80005c78 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005024:	0014849b          	addiw	s1,s1,1
    80005028:	0ff4f493          	andi	s1,s1,255
    8000502c:	00200793          	li	a5,2
    80005030:	fc97f0e3          	bgeu	a5,s1,80004ff0 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005034:	00004517          	auipc	a0,0x4
    80005038:	22c50513          	addi	a0,a0,556 # 80009260 <CONSOLE_STATUS+0x250>
    8000503c:	00001097          	auipc	ra,0x1
    80005040:	c3c080e7          	jalr	-964(ra) # 80005c78 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005044:	00700313          	li	t1,7
    thread_dispatch();
    80005048:	ffffc097          	auipc	ra,0xffffc
    8000504c:	384080e7          	jalr	900(ra) # 800013cc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005050:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005054:	00004517          	auipc	a0,0x4
    80005058:	21c50513          	addi	a0,a0,540 # 80009270 <CONSOLE_STATUS+0x260>
    8000505c:	00001097          	auipc	ra,0x1
    80005060:	c1c080e7          	jalr	-996(ra) # 80005c78 <_Z11printStringPKc>
    80005064:	00000613          	li	a2,0
    80005068:	00a00593          	li	a1,10
    8000506c:	0009051b          	sext.w	a0,s2
    80005070:	00001097          	auipc	ra,0x1
    80005074:	db8080e7          	jalr	-584(ra) # 80005e28 <_Z8printIntiii>
    80005078:	00004517          	auipc	a0,0x4
    8000507c:	40050513          	addi	a0,a0,1024 # 80009478 <CONSOLE_STATUS+0x468>
    80005080:	00001097          	auipc	ra,0x1
    80005084:	bf8080e7          	jalr	-1032(ra) # 80005c78 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005088:	00c00513          	li	a0,12
    8000508c:	00000097          	auipc	ra,0x0
    80005090:	d88080e7          	jalr	-632(ra) # 80004e14 <_ZL9fibonaccim>
    80005094:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005098:	00004517          	auipc	a0,0x4
    8000509c:	1e050513          	addi	a0,a0,480 # 80009278 <CONSOLE_STATUS+0x268>
    800050a0:	00001097          	auipc	ra,0x1
    800050a4:	bd8080e7          	jalr	-1064(ra) # 80005c78 <_Z11printStringPKc>
    800050a8:	00000613          	li	a2,0
    800050ac:	00a00593          	li	a1,10
    800050b0:	0009051b          	sext.w	a0,s2
    800050b4:	00001097          	auipc	ra,0x1
    800050b8:	d74080e7          	jalr	-652(ra) # 80005e28 <_Z8printIntiii>
    800050bc:	00004517          	auipc	a0,0x4
    800050c0:	3bc50513          	addi	a0,a0,956 # 80009478 <CONSOLE_STATUS+0x468>
    800050c4:	00001097          	auipc	ra,0x1
    800050c8:	bb4080e7          	jalr	-1100(ra) # 80005c78 <_Z11printStringPKc>
    800050cc:	0400006f          	j	8000510c <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800050d0:	00004517          	auipc	a0,0x4
    800050d4:	18850513          	addi	a0,a0,392 # 80009258 <CONSOLE_STATUS+0x248>
    800050d8:	00001097          	auipc	ra,0x1
    800050dc:	ba0080e7          	jalr	-1120(ra) # 80005c78 <_Z11printStringPKc>
    800050e0:	00000613          	li	a2,0
    800050e4:	00a00593          	li	a1,10
    800050e8:	00048513          	mv	a0,s1
    800050ec:	00001097          	auipc	ra,0x1
    800050f0:	d3c080e7          	jalr	-708(ra) # 80005e28 <_Z8printIntiii>
    800050f4:	00004517          	auipc	a0,0x4
    800050f8:	38450513          	addi	a0,a0,900 # 80009478 <CONSOLE_STATUS+0x468>
    800050fc:	00001097          	auipc	ra,0x1
    80005100:	b7c080e7          	jalr	-1156(ra) # 80005c78 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005104:	0014849b          	addiw	s1,s1,1
    80005108:	0ff4f493          	andi	s1,s1,255
    8000510c:	00500793          	li	a5,5
    80005110:	fc97f0e3          	bgeu	a5,s1,800050d0 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80005114:	00004517          	auipc	a0,0x4
    80005118:	11c50513          	addi	a0,a0,284 # 80009230 <CONSOLE_STATUS+0x220>
    8000511c:	00001097          	auipc	ra,0x1
    80005120:	b5c080e7          	jalr	-1188(ra) # 80005c78 <_Z11printStringPKc>
    finishedC = true;
    80005124:	00100793          	li	a5,1
    80005128:	00007717          	auipc	a4,0x7
    8000512c:	caf700a3          	sb	a5,-863(a4) # 8000bdc9 <_ZL9finishedC>
    thread_dispatch();
    80005130:	ffffc097          	auipc	ra,0xffffc
    80005134:	29c080e7          	jalr	668(ra) # 800013cc <_Z15thread_dispatchv>
}
    80005138:	01813083          	ld	ra,24(sp)
    8000513c:	01013403          	ld	s0,16(sp)
    80005140:	00813483          	ld	s1,8(sp)
    80005144:	00013903          	ld	s2,0(sp)
    80005148:	02010113          	addi	sp,sp,32
    8000514c:	00008067          	ret

0000000080005150 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005150:	fe010113          	addi	sp,sp,-32
    80005154:	00113c23          	sd	ra,24(sp)
    80005158:	00813823          	sd	s0,16(sp)
    8000515c:	00913423          	sd	s1,8(sp)
    80005160:	01213023          	sd	s2,0(sp)
    80005164:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005168:	00000913          	li	s2,0
    8000516c:	0380006f          	j	800051a4 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80005170:	ffffc097          	auipc	ra,0xffffc
    80005174:	25c080e7          	jalr	604(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005178:	00148493          	addi	s1,s1,1
    8000517c:	000027b7          	lui	a5,0x2
    80005180:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005184:	0097ee63          	bltu	a5,s1,800051a0 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005188:	00000713          	li	a4,0
    8000518c:	000077b7          	lui	a5,0x7
    80005190:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005194:	fce7eee3          	bltu	a5,a4,80005170 <_ZL11workerBodyBPv+0x20>
    80005198:	00170713          	addi	a4,a4,1
    8000519c:	ff1ff06f          	j	8000518c <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800051a0:	00190913          	addi	s2,s2,1
    800051a4:	00f00793          	li	a5,15
    800051a8:	0527e063          	bltu	a5,s2,800051e8 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800051ac:	00004517          	auipc	a0,0x4
    800051b0:	09450513          	addi	a0,a0,148 # 80009240 <CONSOLE_STATUS+0x230>
    800051b4:	00001097          	auipc	ra,0x1
    800051b8:	ac4080e7          	jalr	-1340(ra) # 80005c78 <_Z11printStringPKc>
    800051bc:	00000613          	li	a2,0
    800051c0:	00a00593          	li	a1,10
    800051c4:	0009051b          	sext.w	a0,s2
    800051c8:	00001097          	auipc	ra,0x1
    800051cc:	c60080e7          	jalr	-928(ra) # 80005e28 <_Z8printIntiii>
    800051d0:	00004517          	auipc	a0,0x4
    800051d4:	2a850513          	addi	a0,a0,680 # 80009478 <CONSOLE_STATUS+0x468>
    800051d8:	00001097          	auipc	ra,0x1
    800051dc:	aa0080e7          	jalr	-1376(ra) # 80005c78 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800051e0:	00000493          	li	s1,0
    800051e4:	f99ff06f          	j	8000517c <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    800051e8:	00004517          	auipc	a0,0x4
    800051ec:	06050513          	addi	a0,a0,96 # 80009248 <CONSOLE_STATUS+0x238>
    800051f0:	00001097          	auipc	ra,0x1
    800051f4:	a88080e7          	jalr	-1400(ra) # 80005c78 <_Z11printStringPKc>
    finishedB = true;
    800051f8:	00100793          	li	a5,1
    800051fc:	00007717          	auipc	a4,0x7
    80005200:	bcf70723          	sb	a5,-1074(a4) # 8000bdca <_ZL9finishedB>
    thread_dispatch();
    80005204:	ffffc097          	auipc	ra,0xffffc
    80005208:	1c8080e7          	jalr	456(ra) # 800013cc <_Z15thread_dispatchv>
}
    8000520c:	01813083          	ld	ra,24(sp)
    80005210:	01013403          	ld	s0,16(sp)
    80005214:	00813483          	ld	s1,8(sp)
    80005218:	00013903          	ld	s2,0(sp)
    8000521c:	02010113          	addi	sp,sp,32
    80005220:	00008067          	ret

0000000080005224 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005224:	fe010113          	addi	sp,sp,-32
    80005228:	00113c23          	sd	ra,24(sp)
    8000522c:	00813823          	sd	s0,16(sp)
    80005230:	00913423          	sd	s1,8(sp)
    80005234:	01213023          	sd	s2,0(sp)
    80005238:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    8000523c:	00000913          	li	s2,0
    80005240:	0380006f          	j	80005278 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005244:	ffffc097          	auipc	ra,0xffffc
    80005248:	188080e7          	jalr	392(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000524c:	00148493          	addi	s1,s1,1
    80005250:	000027b7          	lui	a5,0x2
    80005254:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005258:	0097ee63          	bltu	a5,s1,80005274 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000525c:	00000713          	li	a4,0
    80005260:	000077b7          	lui	a5,0x7
    80005264:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005268:	fce7eee3          	bltu	a5,a4,80005244 <_ZL11workerBodyAPv+0x20>
    8000526c:	00170713          	addi	a4,a4,1
    80005270:	ff1ff06f          	j	80005260 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005274:	00190913          	addi	s2,s2,1
    80005278:	00900793          	li	a5,9
    8000527c:	0527e063          	bltu	a5,s2,800052bc <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005280:	00004517          	auipc	a0,0x4
    80005284:	fa850513          	addi	a0,a0,-88 # 80009228 <CONSOLE_STATUS+0x218>
    80005288:	00001097          	auipc	ra,0x1
    8000528c:	9f0080e7          	jalr	-1552(ra) # 80005c78 <_Z11printStringPKc>
    80005290:	00000613          	li	a2,0
    80005294:	00a00593          	li	a1,10
    80005298:	0009051b          	sext.w	a0,s2
    8000529c:	00001097          	auipc	ra,0x1
    800052a0:	b8c080e7          	jalr	-1140(ra) # 80005e28 <_Z8printIntiii>
    800052a4:	00004517          	auipc	a0,0x4
    800052a8:	1d450513          	addi	a0,a0,468 # 80009478 <CONSOLE_STATUS+0x468>
    800052ac:	00001097          	auipc	ra,0x1
    800052b0:	9cc080e7          	jalr	-1588(ra) # 80005c78 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800052b4:	00000493          	li	s1,0
    800052b8:	f99ff06f          	j	80005250 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800052bc:	00004517          	auipc	a0,0x4
    800052c0:	f7450513          	addi	a0,a0,-140 # 80009230 <CONSOLE_STATUS+0x220>
    800052c4:	00001097          	auipc	ra,0x1
    800052c8:	9b4080e7          	jalr	-1612(ra) # 80005c78 <_Z11printStringPKc>
    finishedA = true;
    800052cc:	00100793          	li	a5,1
    800052d0:	00007717          	auipc	a4,0x7
    800052d4:	aef70da3          	sb	a5,-1285(a4) # 8000bdcb <_ZL9finishedA>
}
    800052d8:	01813083          	ld	ra,24(sp)
    800052dc:	01013403          	ld	s0,16(sp)
    800052e0:	00813483          	ld	s1,8(sp)
    800052e4:	00013903          	ld	s2,0(sp)
    800052e8:	02010113          	addi	sp,sp,32
    800052ec:	00008067          	ret

00000000800052f0 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    800052f0:	fd010113          	addi	sp,sp,-48
    800052f4:	02113423          	sd	ra,40(sp)
    800052f8:	02813023          	sd	s0,32(sp)
    800052fc:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005300:	00000613          	li	a2,0
    80005304:	00000597          	auipc	a1,0x0
    80005308:	f2058593          	addi	a1,a1,-224 # 80005224 <_ZL11workerBodyAPv>
    8000530c:	fd040513          	addi	a0,s0,-48
    80005310:	ffffc097          	auipc	ra,0xffffc
    80005314:	fe8080e7          	jalr	-24(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80005318:	00004517          	auipc	a0,0x4
    8000531c:	fa850513          	addi	a0,a0,-88 # 800092c0 <CONSOLE_STATUS+0x2b0>
    80005320:	00001097          	auipc	ra,0x1
    80005324:	958080e7          	jalr	-1704(ra) # 80005c78 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005328:	00000613          	li	a2,0
    8000532c:	00000597          	auipc	a1,0x0
    80005330:	e2458593          	addi	a1,a1,-476 # 80005150 <_ZL11workerBodyBPv>
    80005334:	fd840513          	addi	a0,s0,-40
    80005338:	ffffc097          	auipc	ra,0xffffc
    8000533c:	fc0080e7          	jalr	-64(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80005340:	00004517          	auipc	a0,0x4
    80005344:	f9850513          	addi	a0,a0,-104 # 800092d8 <CONSOLE_STATUS+0x2c8>
    80005348:	00001097          	auipc	ra,0x1
    8000534c:	930080e7          	jalr	-1744(ra) # 80005c78 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005350:	00000613          	li	a2,0
    80005354:	00000597          	auipc	a1,0x0
    80005358:	c7c58593          	addi	a1,a1,-900 # 80004fd0 <_ZL11workerBodyCPv>
    8000535c:	fe040513          	addi	a0,s0,-32
    80005360:	ffffc097          	auipc	ra,0xffffc
    80005364:	f98080e7          	jalr	-104(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80005368:	00004517          	auipc	a0,0x4
    8000536c:	f8850513          	addi	a0,a0,-120 # 800092f0 <CONSOLE_STATUS+0x2e0>
    80005370:	00001097          	auipc	ra,0x1
    80005374:	908080e7          	jalr	-1784(ra) # 80005c78 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005378:	00000613          	li	a2,0
    8000537c:	00000597          	auipc	a1,0x0
    80005380:	b0c58593          	addi	a1,a1,-1268 # 80004e88 <_ZL11workerBodyDPv>
    80005384:	fe840513          	addi	a0,s0,-24
    80005388:	ffffc097          	auipc	ra,0xffffc
    8000538c:	f70080e7          	jalr	-144(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80005390:	00004517          	auipc	a0,0x4
    80005394:	f7850513          	addi	a0,a0,-136 # 80009308 <CONSOLE_STATUS+0x2f8>
    80005398:	00001097          	auipc	ra,0x1
    8000539c:	8e0080e7          	jalr	-1824(ra) # 80005c78 <_Z11printStringPKc>
    800053a0:	00c0006f          	j	800053ac <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800053a4:	ffffc097          	auipc	ra,0xffffc
    800053a8:	028080e7          	jalr	40(ra) # 800013cc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800053ac:	00007797          	auipc	a5,0x7
    800053b0:	a1f7c783          	lbu	a5,-1505(a5) # 8000bdcb <_ZL9finishedA>
    800053b4:	fe0788e3          	beqz	a5,800053a4 <_Z18Threads_C_API_testv+0xb4>
    800053b8:	00007797          	auipc	a5,0x7
    800053bc:	a127c783          	lbu	a5,-1518(a5) # 8000bdca <_ZL9finishedB>
    800053c0:	fe0782e3          	beqz	a5,800053a4 <_Z18Threads_C_API_testv+0xb4>
    800053c4:	00007797          	auipc	a5,0x7
    800053c8:	a057c783          	lbu	a5,-1531(a5) # 8000bdc9 <_ZL9finishedC>
    800053cc:	fc078ce3          	beqz	a5,800053a4 <_Z18Threads_C_API_testv+0xb4>
    800053d0:	00007797          	auipc	a5,0x7
    800053d4:	9f87c783          	lbu	a5,-1544(a5) # 8000bdc8 <_ZL9finishedD>
    800053d8:	fc0786e3          	beqz	a5,800053a4 <_Z18Threads_C_API_testv+0xb4>
    }

}
    800053dc:	02813083          	ld	ra,40(sp)
    800053e0:	02013403          	ld	s0,32(sp)
    800053e4:	03010113          	addi	sp,sp,48
    800053e8:	00008067          	ret

00000000800053ec <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    800053ec:	fd010113          	addi	sp,sp,-48
    800053f0:	02113423          	sd	ra,40(sp)
    800053f4:	02813023          	sd	s0,32(sp)
    800053f8:	00913c23          	sd	s1,24(sp)
    800053fc:	01213823          	sd	s2,16(sp)
    80005400:	01313423          	sd	s3,8(sp)
    80005404:	03010413          	addi	s0,sp,48
    80005408:	00050993          	mv	s3,a0
    8000540c:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80005410:	00000913          	li	s2,0
    80005414:	00c0006f          	j	80005420 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005418:	ffffd097          	auipc	ra,0xffffd
    8000541c:	c48080e7          	jalr	-952(ra) # 80002060 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80005420:	ffffc097          	auipc	ra,0xffffc
    80005424:	200080e7          	jalr	512(ra) # 80001620 <_Z4getcv>
    80005428:	0005059b          	sext.w	a1,a0
    8000542c:	01b00793          	li	a5,27
    80005430:	02f58a63          	beq	a1,a5,80005464 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80005434:	0084b503          	ld	a0,8(s1)
    80005438:	00001097          	auipc	ra,0x1
    8000543c:	c64080e7          	jalr	-924(ra) # 8000609c <_ZN9BufferCPP3putEi>
        i++;
    80005440:	0019071b          	addiw	a4,s2,1
    80005444:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005448:	0004a683          	lw	a3,0(s1)
    8000544c:	0026979b          	slliw	a5,a3,0x2
    80005450:	00d787bb          	addw	a5,a5,a3
    80005454:	0017979b          	slliw	a5,a5,0x1
    80005458:	02f767bb          	remw	a5,a4,a5
    8000545c:	fc0792e3          	bnez	a5,80005420 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80005460:	fb9ff06f          	j	80005418 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80005464:	00100793          	li	a5,1
    80005468:	00007717          	auipc	a4,0x7
    8000546c:	96f72423          	sw	a5,-1688(a4) # 8000bdd0 <_ZL9threadEnd>
    td->buffer->put('!');
    80005470:	0209b783          	ld	a5,32(s3)
    80005474:	02100593          	li	a1,33
    80005478:	0087b503          	ld	a0,8(a5)
    8000547c:	00001097          	auipc	ra,0x1
    80005480:	c20080e7          	jalr	-992(ra) # 8000609c <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80005484:	0104b503          	ld	a0,16(s1)
    80005488:	ffffd097          	auipc	ra,0xffffd
    8000548c:	ccc080e7          	jalr	-820(ra) # 80002154 <_ZN9Semaphore6signalEv>
}
    80005490:	02813083          	ld	ra,40(sp)
    80005494:	02013403          	ld	s0,32(sp)
    80005498:	01813483          	ld	s1,24(sp)
    8000549c:	01013903          	ld	s2,16(sp)
    800054a0:	00813983          	ld	s3,8(sp)
    800054a4:	03010113          	addi	sp,sp,48
    800054a8:	00008067          	ret

00000000800054ac <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    800054ac:	fe010113          	addi	sp,sp,-32
    800054b0:	00113c23          	sd	ra,24(sp)
    800054b4:	00813823          	sd	s0,16(sp)
    800054b8:	00913423          	sd	s1,8(sp)
    800054bc:	01213023          	sd	s2,0(sp)
    800054c0:	02010413          	addi	s0,sp,32
    800054c4:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800054c8:	00000913          	li	s2,0
    800054cc:	00c0006f          	j	800054d8 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800054d0:	ffffd097          	auipc	ra,0xffffd
    800054d4:	b90080e7          	jalr	-1136(ra) # 80002060 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    800054d8:	00007797          	auipc	a5,0x7
    800054dc:	8f87a783          	lw	a5,-1800(a5) # 8000bdd0 <_ZL9threadEnd>
    800054e0:	02079e63          	bnez	a5,8000551c <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    800054e4:	0004a583          	lw	a1,0(s1)
    800054e8:	0305859b          	addiw	a1,a1,48
    800054ec:	0084b503          	ld	a0,8(s1)
    800054f0:	00001097          	auipc	ra,0x1
    800054f4:	bac080e7          	jalr	-1108(ra) # 8000609c <_ZN9BufferCPP3putEi>
        i++;
    800054f8:	0019071b          	addiw	a4,s2,1
    800054fc:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005500:	0004a683          	lw	a3,0(s1)
    80005504:	0026979b          	slliw	a5,a3,0x2
    80005508:	00d787bb          	addw	a5,a5,a3
    8000550c:	0017979b          	slliw	a5,a5,0x1
    80005510:	02f767bb          	remw	a5,a4,a5
    80005514:	fc0792e3          	bnez	a5,800054d8 <_ZN12ProducerSync8producerEPv+0x2c>
    80005518:	fb9ff06f          	j	800054d0 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    8000551c:	0104b503          	ld	a0,16(s1)
    80005520:	ffffd097          	auipc	ra,0xffffd
    80005524:	c34080e7          	jalr	-972(ra) # 80002154 <_ZN9Semaphore6signalEv>
}
    80005528:	01813083          	ld	ra,24(sp)
    8000552c:	01013403          	ld	s0,16(sp)
    80005530:	00813483          	ld	s1,8(sp)
    80005534:	00013903          	ld	s2,0(sp)
    80005538:	02010113          	addi	sp,sp,32
    8000553c:	00008067          	ret

0000000080005540 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80005540:	fd010113          	addi	sp,sp,-48
    80005544:	02113423          	sd	ra,40(sp)
    80005548:	02813023          	sd	s0,32(sp)
    8000554c:	00913c23          	sd	s1,24(sp)
    80005550:	01213823          	sd	s2,16(sp)
    80005554:	01313423          	sd	s3,8(sp)
    80005558:	01413023          	sd	s4,0(sp)
    8000555c:	03010413          	addi	s0,sp,48
    80005560:	00050993          	mv	s3,a0
    80005564:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005568:	00000a13          	li	s4,0
    8000556c:	01c0006f          	j	80005588 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80005570:	ffffd097          	auipc	ra,0xffffd
    80005574:	af0080e7          	jalr	-1296(ra) # 80002060 <_ZN6Thread8dispatchEv>
    80005578:	0500006f          	j	800055c8 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    8000557c:	00a00513          	li	a0,10
    80005580:	ffffc097          	auipc	ra,0xffffc
    80005584:	0ec080e7          	jalr	236(ra) # 8000166c <_Z4putcc>
    while (!threadEnd) {
    80005588:	00007797          	auipc	a5,0x7
    8000558c:	8487a783          	lw	a5,-1976(a5) # 8000bdd0 <_ZL9threadEnd>
    80005590:	06079263          	bnez	a5,800055f4 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80005594:	00893503          	ld	a0,8(s2)
    80005598:	00001097          	auipc	ra,0x1
    8000559c:	b94080e7          	jalr	-1132(ra) # 8000612c <_ZN9BufferCPP3getEv>
        i++;
    800055a0:	001a049b          	addiw	s1,s4,1
    800055a4:	00048a1b          	sext.w	s4,s1
        putc(key);
    800055a8:	0ff57513          	andi	a0,a0,255
    800055ac:	ffffc097          	auipc	ra,0xffffc
    800055b0:	0c0080e7          	jalr	192(ra) # 8000166c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800055b4:	00092703          	lw	a4,0(s2)
    800055b8:	0027179b          	slliw	a5,a4,0x2
    800055bc:	00e787bb          	addw	a5,a5,a4
    800055c0:	02f4e7bb          	remw	a5,s1,a5
    800055c4:	fa0786e3          	beqz	a5,80005570 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    800055c8:	05000793          	li	a5,80
    800055cc:	02f4e4bb          	remw	s1,s1,a5
    800055d0:	fa049ce3          	bnez	s1,80005588 <_ZN12ConsumerSync8consumerEPv+0x48>
    800055d4:	fa9ff06f          	j	8000557c <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    800055d8:	0209b783          	ld	a5,32(s3)
    800055dc:	0087b503          	ld	a0,8(a5)
    800055e0:	00001097          	auipc	ra,0x1
    800055e4:	b4c080e7          	jalr	-1204(ra) # 8000612c <_ZN9BufferCPP3getEv>
        Console::putc(key);
    800055e8:	0ff57513          	andi	a0,a0,255
    800055ec:	ffffd097          	auipc	ra,0xffffd
    800055f0:	c88080e7          	jalr	-888(ra) # 80002274 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    800055f4:	0209b783          	ld	a5,32(s3)
    800055f8:	0087b503          	ld	a0,8(a5)
    800055fc:	00001097          	auipc	ra,0x1
    80005600:	bbc080e7          	jalr	-1092(ra) # 800061b8 <_ZN9BufferCPP6getCntEv>
    80005604:	fca04ae3          	bgtz	a0,800055d8 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80005608:	01093503          	ld	a0,16(s2)
    8000560c:	ffffd097          	auipc	ra,0xffffd
    80005610:	b48080e7          	jalr	-1208(ra) # 80002154 <_ZN9Semaphore6signalEv>
}
    80005614:	02813083          	ld	ra,40(sp)
    80005618:	02013403          	ld	s0,32(sp)
    8000561c:	01813483          	ld	s1,24(sp)
    80005620:	01013903          	ld	s2,16(sp)
    80005624:	00813983          	ld	s3,8(sp)
    80005628:	00013a03          	ld	s4,0(sp)
    8000562c:	03010113          	addi	sp,sp,48
    80005630:	00008067          	ret

0000000080005634 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80005634:	f8010113          	addi	sp,sp,-128
    80005638:	06113c23          	sd	ra,120(sp)
    8000563c:	06813823          	sd	s0,112(sp)
    80005640:	06913423          	sd	s1,104(sp)
    80005644:	07213023          	sd	s2,96(sp)
    80005648:	05313c23          	sd	s3,88(sp)
    8000564c:	05413823          	sd	s4,80(sp)
    80005650:	05513423          	sd	s5,72(sp)
    80005654:	05613023          	sd	s6,64(sp)
    80005658:	03713c23          	sd	s7,56(sp)
    8000565c:	03813823          	sd	s8,48(sp)
    80005660:	03913423          	sd	s9,40(sp)
    80005664:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80005668:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    8000566c:	00004517          	auipc	a0,0x4
    80005670:	ad450513          	addi	a0,a0,-1324 # 80009140 <CONSOLE_STATUS+0x130>
    80005674:	00000097          	auipc	ra,0x0
    80005678:	604080e7          	jalr	1540(ra) # 80005c78 <_Z11printStringPKc>
    getString(input, 30);
    8000567c:	01e00593          	li	a1,30
    80005680:	f8040493          	addi	s1,s0,-128
    80005684:	00048513          	mv	a0,s1
    80005688:	00000097          	auipc	ra,0x0
    8000568c:	678080e7          	jalr	1656(ra) # 80005d00 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80005690:	00048513          	mv	a0,s1
    80005694:	00000097          	auipc	ra,0x0
    80005698:	744080e7          	jalr	1860(ra) # 80005dd8 <_Z11stringToIntPKc>
    8000569c:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800056a0:	00004517          	auipc	a0,0x4
    800056a4:	ac050513          	addi	a0,a0,-1344 # 80009160 <CONSOLE_STATUS+0x150>
    800056a8:	00000097          	auipc	ra,0x0
    800056ac:	5d0080e7          	jalr	1488(ra) # 80005c78 <_Z11printStringPKc>
    getString(input, 30);
    800056b0:	01e00593          	li	a1,30
    800056b4:	00048513          	mv	a0,s1
    800056b8:	00000097          	auipc	ra,0x0
    800056bc:	648080e7          	jalr	1608(ra) # 80005d00 <_Z9getStringPci>
    n = stringToInt(input);
    800056c0:	00048513          	mv	a0,s1
    800056c4:	00000097          	auipc	ra,0x0
    800056c8:	714080e7          	jalr	1812(ra) # 80005dd8 <_Z11stringToIntPKc>
    800056cc:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800056d0:	00004517          	auipc	a0,0x4
    800056d4:	ab050513          	addi	a0,a0,-1360 # 80009180 <CONSOLE_STATUS+0x170>
    800056d8:	00000097          	auipc	ra,0x0
    800056dc:	5a0080e7          	jalr	1440(ra) # 80005c78 <_Z11printStringPKc>
    800056e0:	00000613          	li	a2,0
    800056e4:	00a00593          	li	a1,10
    800056e8:	00090513          	mv	a0,s2
    800056ec:	00000097          	auipc	ra,0x0
    800056f0:	73c080e7          	jalr	1852(ra) # 80005e28 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800056f4:	00004517          	auipc	a0,0x4
    800056f8:	aa450513          	addi	a0,a0,-1372 # 80009198 <CONSOLE_STATUS+0x188>
    800056fc:	00000097          	auipc	ra,0x0
    80005700:	57c080e7          	jalr	1404(ra) # 80005c78 <_Z11printStringPKc>
    80005704:	00000613          	li	a2,0
    80005708:	00a00593          	li	a1,10
    8000570c:	00048513          	mv	a0,s1
    80005710:	00000097          	auipc	ra,0x0
    80005714:	718080e7          	jalr	1816(ra) # 80005e28 <_Z8printIntiii>
    printString(".\n");
    80005718:	00004517          	auipc	a0,0x4
    8000571c:	a9850513          	addi	a0,a0,-1384 # 800091b0 <CONSOLE_STATUS+0x1a0>
    80005720:	00000097          	auipc	ra,0x0
    80005724:	558080e7          	jalr	1368(ra) # 80005c78 <_Z11printStringPKc>
    if(threadNum > n) {
    80005728:	0324c463          	blt	s1,s2,80005750 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    8000572c:	03205c63          	blez	s2,80005764 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80005730:	03800513          	li	a0,56
    80005734:	ffffc097          	auipc	ra,0xffffc
    80005738:	7f8080e7          	jalr	2040(ra) # 80001f2c <_Znwm>
    8000573c:	00050a93          	mv	s5,a0
    80005740:	00048593          	mv	a1,s1
    80005744:	00001097          	auipc	ra,0x1
    80005748:	804080e7          	jalr	-2044(ra) # 80005f48 <_ZN9BufferCPPC1Ei>
    8000574c:	0300006f          	j	8000577c <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005750:	00004517          	auipc	a0,0x4
    80005754:	a6850513          	addi	a0,a0,-1432 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80005758:	00000097          	auipc	ra,0x0
    8000575c:	520080e7          	jalr	1312(ra) # 80005c78 <_Z11printStringPKc>
        return;
    80005760:	0140006f          	j	80005774 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80005764:	00004517          	auipc	a0,0x4
    80005768:	a9450513          	addi	a0,a0,-1388 # 800091f8 <CONSOLE_STATUS+0x1e8>
    8000576c:	00000097          	auipc	ra,0x0
    80005770:	50c080e7          	jalr	1292(ra) # 80005c78 <_Z11printStringPKc>
        return;
    80005774:	000b8113          	mv	sp,s7
    80005778:	2380006f          	j	800059b0 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    8000577c:	01000513          	li	a0,16
    80005780:	ffffc097          	auipc	ra,0xffffc
    80005784:	7ac080e7          	jalr	1964(ra) # 80001f2c <_Znwm>
    80005788:	00050493          	mv	s1,a0
    8000578c:	00000593          	li	a1,0
    80005790:	ffffd097          	auipc	ra,0xffffd
    80005794:	950080e7          	jalr	-1712(ra) # 800020e0 <_ZN9SemaphoreC1Ej>
    80005798:	00006797          	auipc	a5,0x6
    8000579c:	6497b023          	sd	s1,1600(a5) # 8000bdd8 <_ZL10waitForAll>
    Thread* threads[threadNum];
    800057a0:	00391793          	slli	a5,s2,0x3
    800057a4:	00f78793          	addi	a5,a5,15
    800057a8:	ff07f793          	andi	a5,a5,-16
    800057ac:	40f10133          	sub	sp,sp,a5
    800057b0:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    800057b4:	0019071b          	addiw	a4,s2,1
    800057b8:	00171793          	slli	a5,a4,0x1
    800057bc:	00e787b3          	add	a5,a5,a4
    800057c0:	00379793          	slli	a5,a5,0x3
    800057c4:	00f78793          	addi	a5,a5,15
    800057c8:	ff07f793          	andi	a5,a5,-16
    800057cc:	40f10133          	sub	sp,sp,a5
    800057d0:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    800057d4:	00191c13          	slli	s8,s2,0x1
    800057d8:	012c07b3          	add	a5,s8,s2
    800057dc:	00379793          	slli	a5,a5,0x3
    800057e0:	00fa07b3          	add	a5,s4,a5
    800057e4:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800057e8:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    800057ec:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    800057f0:	02800513          	li	a0,40
    800057f4:	ffffc097          	auipc	ra,0xffffc
    800057f8:	738080e7          	jalr	1848(ra) # 80001f2c <_Znwm>
    800057fc:	00050b13          	mv	s6,a0
    80005800:	012c0c33          	add	s8,s8,s2
    80005804:	003c1c13          	slli	s8,s8,0x3
    80005808:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    8000580c:	ffffd097          	auipc	ra,0xffffd
    80005810:	8a4080e7          	jalr	-1884(ra) # 800020b0 <_ZN6ThreadC1Ev>
    80005814:	00006797          	auipc	a5,0x6
    80005818:	45478793          	addi	a5,a5,1108 # 8000bc68 <_ZTV12ConsumerSync+0x10>
    8000581c:	00fb3023          	sd	a5,0(s6)
    80005820:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80005824:	000b0513          	mv	a0,s6
    80005828:	ffffd097          	auipc	ra,0xffffd
    8000582c:	804080e7          	jalr	-2044(ra) # 8000202c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005830:	00000493          	li	s1,0
    80005834:	0380006f          	j	8000586c <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005838:	00006797          	auipc	a5,0x6
    8000583c:	40878793          	addi	a5,a5,1032 # 8000bc40 <_ZTV12ProducerSync+0x10>
    80005840:	00fcb023          	sd	a5,0(s9)
    80005844:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80005848:	00349793          	slli	a5,s1,0x3
    8000584c:	00f987b3          	add	a5,s3,a5
    80005850:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80005854:	00349793          	slli	a5,s1,0x3
    80005858:	00f987b3          	add	a5,s3,a5
    8000585c:	0007b503          	ld	a0,0(a5)
    80005860:	ffffc097          	auipc	ra,0xffffc
    80005864:	7cc080e7          	jalr	1996(ra) # 8000202c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005868:	0014849b          	addiw	s1,s1,1
    8000586c:	0b24d063          	bge	s1,s2,8000590c <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80005870:	00149793          	slli	a5,s1,0x1
    80005874:	009787b3          	add	a5,a5,s1
    80005878:	00379793          	slli	a5,a5,0x3
    8000587c:	00fa07b3          	add	a5,s4,a5
    80005880:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005884:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80005888:	00006717          	auipc	a4,0x6
    8000588c:	55073703          	ld	a4,1360(a4) # 8000bdd8 <_ZL10waitForAll>
    80005890:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80005894:	02905863          	blez	s1,800058c4 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80005898:	02800513          	li	a0,40
    8000589c:	ffffc097          	auipc	ra,0xffffc
    800058a0:	690080e7          	jalr	1680(ra) # 80001f2c <_Znwm>
    800058a4:	00050c93          	mv	s9,a0
    800058a8:	00149c13          	slli	s8,s1,0x1
    800058ac:	009c0c33          	add	s8,s8,s1
    800058b0:	003c1c13          	slli	s8,s8,0x3
    800058b4:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800058b8:	ffffc097          	auipc	ra,0xffffc
    800058bc:	7f8080e7          	jalr	2040(ra) # 800020b0 <_ZN6ThreadC1Ev>
    800058c0:	f79ff06f          	j	80005838 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    800058c4:	02800513          	li	a0,40
    800058c8:	ffffc097          	auipc	ra,0xffffc
    800058cc:	664080e7          	jalr	1636(ra) # 80001f2c <_Znwm>
    800058d0:	00050c93          	mv	s9,a0
    800058d4:	00149c13          	slli	s8,s1,0x1
    800058d8:	009c0c33          	add	s8,s8,s1
    800058dc:	003c1c13          	slli	s8,s8,0x3
    800058e0:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    800058e4:	ffffc097          	auipc	ra,0xffffc
    800058e8:	7cc080e7          	jalr	1996(ra) # 800020b0 <_ZN6ThreadC1Ev>
    800058ec:	00006797          	auipc	a5,0x6
    800058f0:	32c78793          	addi	a5,a5,812 # 8000bc18 <_ZTV16ProducerKeyboard+0x10>
    800058f4:	00fcb023          	sd	a5,0(s9)
    800058f8:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    800058fc:	00349793          	slli	a5,s1,0x3
    80005900:	00f987b3          	add	a5,s3,a5
    80005904:	0197b023          	sd	s9,0(a5)
    80005908:	f4dff06f          	j	80005854 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    8000590c:	ffffc097          	auipc	ra,0xffffc
    80005910:	754080e7          	jalr	1876(ra) # 80002060 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80005914:	00000493          	li	s1,0
    80005918:	00994e63          	blt	s2,s1,80005934 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    8000591c:	00006517          	auipc	a0,0x6
    80005920:	4bc53503          	ld	a0,1212(a0) # 8000bdd8 <_ZL10waitForAll>
    80005924:	ffffc097          	auipc	ra,0xffffc
    80005928:	7f8080e7          	jalr	2040(ra) # 8000211c <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    8000592c:	0014849b          	addiw	s1,s1,1
    80005930:	fe9ff06f          	j	80005918 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80005934:	00000493          	li	s1,0
    80005938:	0080006f          	j	80005940 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    8000593c:	0014849b          	addiw	s1,s1,1
    80005940:	0324d263          	bge	s1,s2,80005964 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80005944:	00349793          	slli	a5,s1,0x3
    80005948:	00f987b3          	add	a5,s3,a5
    8000594c:	0007b503          	ld	a0,0(a5)
    80005950:	fe0506e3          	beqz	a0,8000593c <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80005954:	00053783          	ld	a5,0(a0)
    80005958:	0087b783          	ld	a5,8(a5)
    8000595c:	000780e7          	jalr	a5
    80005960:	fddff06f          	j	8000593c <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80005964:	000b0a63          	beqz	s6,80005978 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80005968:	000b3783          	ld	a5,0(s6)
    8000596c:	0087b783          	ld	a5,8(a5)
    80005970:	000b0513          	mv	a0,s6
    80005974:	000780e7          	jalr	a5
    delete waitForAll;
    80005978:	00006517          	auipc	a0,0x6
    8000597c:	46053503          	ld	a0,1120(a0) # 8000bdd8 <_ZL10waitForAll>
    80005980:	00050863          	beqz	a0,80005990 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80005984:	00053783          	ld	a5,0(a0)
    80005988:	0087b783          	ld	a5,8(a5)
    8000598c:	000780e7          	jalr	a5
    delete buffer;
    80005990:	000a8e63          	beqz	s5,800059ac <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80005994:	000a8513          	mv	a0,s5
    80005998:	00001097          	auipc	ra,0x1
    8000599c:	8a8080e7          	jalr	-1880(ra) # 80006240 <_ZN9BufferCPPD1Ev>
    800059a0:	000a8513          	mv	a0,s5
    800059a4:	ffffc097          	auipc	ra,0xffffc
    800059a8:	5b0080e7          	jalr	1456(ra) # 80001f54 <_ZdlPv>
    800059ac:	000b8113          	mv	sp,s7

}
    800059b0:	f8040113          	addi	sp,s0,-128
    800059b4:	07813083          	ld	ra,120(sp)
    800059b8:	07013403          	ld	s0,112(sp)
    800059bc:	06813483          	ld	s1,104(sp)
    800059c0:	06013903          	ld	s2,96(sp)
    800059c4:	05813983          	ld	s3,88(sp)
    800059c8:	05013a03          	ld	s4,80(sp)
    800059cc:	04813a83          	ld	s5,72(sp)
    800059d0:	04013b03          	ld	s6,64(sp)
    800059d4:	03813b83          	ld	s7,56(sp)
    800059d8:	03013c03          	ld	s8,48(sp)
    800059dc:	02813c83          	ld	s9,40(sp)
    800059e0:	08010113          	addi	sp,sp,128
    800059e4:	00008067          	ret
    800059e8:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800059ec:	000a8513          	mv	a0,s5
    800059f0:	ffffc097          	auipc	ra,0xffffc
    800059f4:	564080e7          	jalr	1380(ra) # 80001f54 <_ZdlPv>
    800059f8:	00048513          	mv	a0,s1
    800059fc:	00007097          	auipc	ra,0x7
    80005a00:	4bc080e7          	jalr	1212(ra) # 8000ceb8 <_Unwind_Resume>
    80005a04:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80005a08:	00048513          	mv	a0,s1
    80005a0c:	ffffc097          	auipc	ra,0xffffc
    80005a10:	548080e7          	jalr	1352(ra) # 80001f54 <_ZdlPv>
    80005a14:	00090513          	mv	a0,s2
    80005a18:	00007097          	auipc	ra,0x7
    80005a1c:	4a0080e7          	jalr	1184(ra) # 8000ceb8 <_Unwind_Resume>
    80005a20:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80005a24:	000b0513          	mv	a0,s6
    80005a28:	ffffc097          	auipc	ra,0xffffc
    80005a2c:	52c080e7          	jalr	1324(ra) # 80001f54 <_ZdlPv>
    80005a30:	00048513          	mv	a0,s1
    80005a34:	00007097          	auipc	ra,0x7
    80005a38:	484080e7          	jalr	1156(ra) # 8000ceb8 <_Unwind_Resume>
    80005a3c:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005a40:	000c8513          	mv	a0,s9
    80005a44:	ffffc097          	auipc	ra,0xffffc
    80005a48:	510080e7          	jalr	1296(ra) # 80001f54 <_ZdlPv>
    80005a4c:	00048513          	mv	a0,s1
    80005a50:	00007097          	auipc	ra,0x7
    80005a54:	468080e7          	jalr	1128(ra) # 8000ceb8 <_Unwind_Resume>
    80005a58:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005a5c:	000c8513          	mv	a0,s9
    80005a60:	ffffc097          	auipc	ra,0xffffc
    80005a64:	4f4080e7          	jalr	1268(ra) # 80001f54 <_ZdlPv>
    80005a68:	00048513          	mv	a0,s1
    80005a6c:	00007097          	auipc	ra,0x7
    80005a70:	44c080e7          	jalr	1100(ra) # 8000ceb8 <_Unwind_Resume>

0000000080005a74 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005a74:	ff010113          	addi	sp,sp,-16
    80005a78:	00113423          	sd	ra,8(sp)
    80005a7c:	00813023          	sd	s0,0(sp)
    80005a80:	01010413          	addi	s0,sp,16
    80005a84:	00006797          	auipc	a5,0x6
    80005a88:	1e478793          	addi	a5,a5,484 # 8000bc68 <_ZTV12ConsumerSync+0x10>
    80005a8c:	00f53023          	sd	a5,0(a0)
    80005a90:	ffffc097          	auipc	ra,0xffffc
    80005a94:	404080e7          	jalr	1028(ra) # 80001e94 <_ZN6ThreadD1Ev>
    80005a98:	00813083          	ld	ra,8(sp)
    80005a9c:	00013403          	ld	s0,0(sp)
    80005aa0:	01010113          	addi	sp,sp,16
    80005aa4:	00008067          	ret

0000000080005aa8 <_ZN12ConsumerSyncD0Ev>:
    80005aa8:	fe010113          	addi	sp,sp,-32
    80005aac:	00113c23          	sd	ra,24(sp)
    80005ab0:	00813823          	sd	s0,16(sp)
    80005ab4:	00913423          	sd	s1,8(sp)
    80005ab8:	02010413          	addi	s0,sp,32
    80005abc:	00050493          	mv	s1,a0
    80005ac0:	00006797          	auipc	a5,0x6
    80005ac4:	1a878793          	addi	a5,a5,424 # 8000bc68 <_ZTV12ConsumerSync+0x10>
    80005ac8:	00f53023          	sd	a5,0(a0)
    80005acc:	ffffc097          	auipc	ra,0xffffc
    80005ad0:	3c8080e7          	jalr	968(ra) # 80001e94 <_ZN6ThreadD1Ev>
    80005ad4:	00048513          	mv	a0,s1
    80005ad8:	ffffc097          	auipc	ra,0xffffc
    80005adc:	47c080e7          	jalr	1148(ra) # 80001f54 <_ZdlPv>
    80005ae0:	01813083          	ld	ra,24(sp)
    80005ae4:	01013403          	ld	s0,16(sp)
    80005ae8:	00813483          	ld	s1,8(sp)
    80005aec:	02010113          	addi	sp,sp,32
    80005af0:	00008067          	ret

0000000080005af4 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80005af4:	ff010113          	addi	sp,sp,-16
    80005af8:	00113423          	sd	ra,8(sp)
    80005afc:	00813023          	sd	s0,0(sp)
    80005b00:	01010413          	addi	s0,sp,16
    80005b04:	00006797          	auipc	a5,0x6
    80005b08:	13c78793          	addi	a5,a5,316 # 8000bc40 <_ZTV12ProducerSync+0x10>
    80005b0c:	00f53023          	sd	a5,0(a0)
    80005b10:	ffffc097          	auipc	ra,0xffffc
    80005b14:	384080e7          	jalr	900(ra) # 80001e94 <_ZN6ThreadD1Ev>
    80005b18:	00813083          	ld	ra,8(sp)
    80005b1c:	00013403          	ld	s0,0(sp)
    80005b20:	01010113          	addi	sp,sp,16
    80005b24:	00008067          	ret

0000000080005b28 <_ZN12ProducerSyncD0Ev>:
    80005b28:	fe010113          	addi	sp,sp,-32
    80005b2c:	00113c23          	sd	ra,24(sp)
    80005b30:	00813823          	sd	s0,16(sp)
    80005b34:	00913423          	sd	s1,8(sp)
    80005b38:	02010413          	addi	s0,sp,32
    80005b3c:	00050493          	mv	s1,a0
    80005b40:	00006797          	auipc	a5,0x6
    80005b44:	10078793          	addi	a5,a5,256 # 8000bc40 <_ZTV12ProducerSync+0x10>
    80005b48:	00f53023          	sd	a5,0(a0)
    80005b4c:	ffffc097          	auipc	ra,0xffffc
    80005b50:	348080e7          	jalr	840(ra) # 80001e94 <_ZN6ThreadD1Ev>
    80005b54:	00048513          	mv	a0,s1
    80005b58:	ffffc097          	auipc	ra,0xffffc
    80005b5c:	3fc080e7          	jalr	1020(ra) # 80001f54 <_ZdlPv>
    80005b60:	01813083          	ld	ra,24(sp)
    80005b64:	01013403          	ld	s0,16(sp)
    80005b68:	00813483          	ld	s1,8(sp)
    80005b6c:	02010113          	addi	sp,sp,32
    80005b70:	00008067          	ret

0000000080005b74 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005b74:	ff010113          	addi	sp,sp,-16
    80005b78:	00113423          	sd	ra,8(sp)
    80005b7c:	00813023          	sd	s0,0(sp)
    80005b80:	01010413          	addi	s0,sp,16
    80005b84:	00006797          	auipc	a5,0x6
    80005b88:	09478793          	addi	a5,a5,148 # 8000bc18 <_ZTV16ProducerKeyboard+0x10>
    80005b8c:	00f53023          	sd	a5,0(a0)
    80005b90:	ffffc097          	auipc	ra,0xffffc
    80005b94:	304080e7          	jalr	772(ra) # 80001e94 <_ZN6ThreadD1Ev>
    80005b98:	00813083          	ld	ra,8(sp)
    80005b9c:	00013403          	ld	s0,0(sp)
    80005ba0:	01010113          	addi	sp,sp,16
    80005ba4:	00008067          	ret

0000000080005ba8 <_ZN16ProducerKeyboardD0Ev>:
    80005ba8:	fe010113          	addi	sp,sp,-32
    80005bac:	00113c23          	sd	ra,24(sp)
    80005bb0:	00813823          	sd	s0,16(sp)
    80005bb4:	00913423          	sd	s1,8(sp)
    80005bb8:	02010413          	addi	s0,sp,32
    80005bbc:	00050493          	mv	s1,a0
    80005bc0:	00006797          	auipc	a5,0x6
    80005bc4:	05878793          	addi	a5,a5,88 # 8000bc18 <_ZTV16ProducerKeyboard+0x10>
    80005bc8:	00f53023          	sd	a5,0(a0)
    80005bcc:	ffffc097          	auipc	ra,0xffffc
    80005bd0:	2c8080e7          	jalr	712(ra) # 80001e94 <_ZN6ThreadD1Ev>
    80005bd4:	00048513          	mv	a0,s1
    80005bd8:	ffffc097          	auipc	ra,0xffffc
    80005bdc:	37c080e7          	jalr	892(ra) # 80001f54 <_ZdlPv>
    80005be0:	01813083          	ld	ra,24(sp)
    80005be4:	01013403          	ld	s0,16(sp)
    80005be8:	00813483          	ld	s1,8(sp)
    80005bec:	02010113          	addi	sp,sp,32
    80005bf0:	00008067          	ret

0000000080005bf4 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80005bf4:	ff010113          	addi	sp,sp,-16
    80005bf8:	00113423          	sd	ra,8(sp)
    80005bfc:	00813023          	sd	s0,0(sp)
    80005c00:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80005c04:	02053583          	ld	a1,32(a0)
    80005c08:	fffff097          	auipc	ra,0xfffff
    80005c0c:	7e4080e7          	jalr	2020(ra) # 800053ec <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005c10:	00813083          	ld	ra,8(sp)
    80005c14:	00013403          	ld	s0,0(sp)
    80005c18:	01010113          	addi	sp,sp,16
    80005c1c:	00008067          	ret

0000000080005c20 <_ZN12ProducerSync3runEv>:
    void run() override {
    80005c20:	ff010113          	addi	sp,sp,-16
    80005c24:	00113423          	sd	ra,8(sp)
    80005c28:	00813023          	sd	s0,0(sp)
    80005c2c:	01010413          	addi	s0,sp,16
        producer(td);
    80005c30:	02053583          	ld	a1,32(a0)
    80005c34:	00000097          	auipc	ra,0x0
    80005c38:	878080e7          	jalr	-1928(ra) # 800054ac <_ZN12ProducerSync8producerEPv>
    }
    80005c3c:	00813083          	ld	ra,8(sp)
    80005c40:	00013403          	ld	s0,0(sp)
    80005c44:	01010113          	addi	sp,sp,16
    80005c48:	00008067          	ret

0000000080005c4c <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005c4c:	ff010113          	addi	sp,sp,-16
    80005c50:	00113423          	sd	ra,8(sp)
    80005c54:	00813023          	sd	s0,0(sp)
    80005c58:	01010413          	addi	s0,sp,16
        consumer(td);
    80005c5c:	02053583          	ld	a1,32(a0)
    80005c60:	00000097          	auipc	ra,0x0
    80005c64:	8e0080e7          	jalr	-1824(ra) # 80005540 <_ZN12ConsumerSync8consumerEPv>
    }
    80005c68:	00813083          	ld	ra,8(sp)
    80005c6c:	00013403          	ld	s0,0(sp)
    80005c70:	01010113          	addi	sp,sp,16
    80005c74:	00008067          	ret

0000000080005c78 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005c78:	fe010113          	addi	sp,sp,-32
    80005c7c:	00113c23          	sd	ra,24(sp)
    80005c80:	00813823          	sd	s0,16(sp)
    80005c84:	00913423          	sd	s1,8(sp)
    80005c88:	02010413          	addi	s0,sp,32
    80005c8c:	00050493          	mv	s1,a0
    LOCK();
    80005c90:	00100613          	li	a2,1
    80005c94:	00000593          	li	a1,0
    80005c98:	00006517          	auipc	a0,0x6
    80005c9c:	14850513          	addi	a0,a0,328 # 8000bde0 <lockPrint>
    80005ca0:	ffffb097          	auipc	ra,0xffffb
    80005ca4:	57c080e7          	jalr	1404(ra) # 8000121c <copy_and_swap>
    80005ca8:	00050863          	beqz	a0,80005cb8 <_Z11printStringPKc+0x40>
    80005cac:	ffffb097          	auipc	ra,0xffffb
    80005cb0:	720080e7          	jalr	1824(ra) # 800013cc <_Z15thread_dispatchv>
    80005cb4:	fddff06f          	j	80005c90 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005cb8:	0004c503          	lbu	a0,0(s1)
    80005cbc:	00050a63          	beqz	a0,80005cd0 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005cc0:	ffffc097          	auipc	ra,0xffffc
    80005cc4:	9ac080e7          	jalr	-1620(ra) # 8000166c <_Z4putcc>
        string++;
    80005cc8:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005ccc:	fedff06f          	j	80005cb8 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005cd0:	00000613          	li	a2,0
    80005cd4:	00100593          	li	a1,1
    80005cd8:	00006517          	auipc	a0,0x6
    80005cdc:	10850513          	addi	a0,a0,264 # 8000bde0 <lockPrint>
    80005ce0:	ffffb097          	auipc	ra,0xffffb
    80005ce4:	53c080e7          	jalr	1340(ra) # 8000121c <copy_and_swap>
    80005ce8:	fe0514e3          	bnez	a0,80005cd0 <_Z11printStringPKc+0x58>
}
    80005cec:	01813083          	ld	ra,24(sp)
    80005cf0:	01013403          	ld	s0,16(sp)
    80005cf4:	00813483          	ld	s1,8(sp)
    80005cf8:	02010113          	addi	sp,sp,32
    80005cfc:	00008067          	ret

0000000080005d00 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005d00:	fd010113          	addi	sp,sp,-48
    80005d04:	02113423          	sd	ra,40(sp)
    80005d08:	02813023          	sd	s0,32(sp)
    80005d0c:	00913c23          	sd	s1,24(sp)
    80005d10:	01213823          	sd	s2,16(sp)
    80005d14:	01313423          	sd	s3,8(sp)
    80005d18:	01413023          	sd	s4,0(sp)
    80005d1c:	03010413          	addi	s0,sp,48
    80005d20:	00050993          	mv	s3,a0
    80005d24:	00058a13          	mv	s4,a1
    LOCK();
    80005d28:	00100613          	li	a2,1
    80005d2c:	00000593          	li	a1,0
    80005d30:	00006517          	auipc	a0,0x6
    80005d34:	0b050513          	addi	a0,a0,176 # 8000bde0 <lockPrint>
    80005d38:	ffffb097          	auipc	ra,0xffffb
    80005d3c:	4e4080e7          	jalr	1252(ra) # 8000121c <copy_and_swap>
    80005d40:	00050863          	beqz	a0,80005d50 <_Z9getStringPci+0x50>
    80005d44:	ffffb097          	auipc	ra,0xffffb
    80005d48:	688080e7          	jalr	1672(ra) # 800013cc <_Z15thread_dispatchv>
    80005d4c:	fddff06f          	j	80005d28 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005d50:	00000913          	li	s2,0
    80005d54:	00090493          	mv	s1,s2
    80005d58:	0019091b          	addiw	s2,s2,1
    80005d5c:	03495a63          	bge	s2,s4,80005d90 <_Z9getStringPci+0x90>
        cc = getc();
    80005d60:	ffffc097          	auipc	ra,0xffffc
    80005d64:	8c0080e7          	jalr	-1856(ra) # 80001620 <_Z4getcv>
        if(cc < 1)
    80005d68:	02050463          	beqz	a0,80005d90 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005d6c:	009984b3          	add	s1,s3,s1
    80005d70:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005d74:	00a00793          	li	a5,10
    80005d78:	00f50a63          	beq	a0,a5,80005d8c <_Z9getStringPci+0x8c>
    80005d7c:	00d00793          	li	a5,13
    80005d80:	fcf51ae3          	bne	a0,a5,80005d54 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80005d84:	00090493          	mv	s1,s2
    80005d88:	0080006f          	j	80005d90 <_Z9getStringPci+0x90>
    80005d8c:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005d90:	009984b3          	add	s1,s3,s1
    80005d94:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005d98:	00000613          	li	a2,0
    80005d9c:	00100593          	li	a1,1
    80005da0:	00006517          	auipc	a0,0x6
    80005da4:	04050513          	addi	a0,a0,64 # 8000bde0 <lockPrint>
    80005da8:	ffffb097          	auipc	ra,0xffffb
    80005dac:	474080e7          	jalr	1140(ra) # 8000121c <copy_and_swap>
    80005db0:	fe0514e3          	bnez	a0,80005d98 <_Z9getStringPci+0x98>
    return buf;
}
    80005db4:	00098513          	mv	a0,s3
    80005db8:	02813083          	ld	ra,40(sp)
    80005dbc:	02013403          	ld	s0,32(sp)
    80005dc0:	01813483          	ld	s1,24(sp)
    80005dc4:	01013903          	ld	s2,16(sp)
    80005dc8:	00813983          	ld	s3,8(sp)
    80005dcc:	00013a03          	ld	s4,0(sp)
    80005dd0:	03010113          	addi	sp,sp,48
    80005dd4:	00008067          	ret

0000000080005dd8 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005dd8:	ff010113          	addi	sp,sp,-16
    80005ddc:	00813423          	sd	s0,8(sp)
    80005de0:	01010413          	addi	s0,sp,16
    80005de4:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005de8:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005dec:	0006c603          	lbu	a2,0(a3)
    80005df0:	fd06071b          	addiw	a4,a2,-48
    80005df4:	0ff77713          	andi	a4,a4,255
    80005df8:	00900793          	li	a5,9
    80005dfc:	02e7e063          	bltu	a5,a4,80005e1c <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005e00:	0025179b          	slliw	a5,a0,0x2
    80005e04:	00a787bb          	addw	a5,a5,a0
    80005e08:	0017979b          	slliw	a5,a5,0x1
    80005e0c:	00168693          	addi	a3,a3,1
    80005e10:	00c787bb          	addw	a5,a5,a2
    80005e14:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005e18:	fd5ff06f          	j	80005dec <_Z11stringToIntPKc+0x14>
    return n;
}
    80005e1c:	00813403          	ld	s0,8(sp)
    80005e20:	01010113          	addi	sp,sp,16
    80005e24:	00008067          	ret

0000000080005e28 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005e28:	fc010113          	addi	sp,sp,-64
    80005e2c:	02113c23          	sd	ra,56(sp)
    80005e30:	02813823          	sd	s0,48(sp)
    80005e34:	02913423          	sd	s1,40(sp)
    80005e38:	03213023          	sd	s2,32(sp)
    80005e3c:	01313c23          	sd	s3,24(sp)
    80005e40:	04010413          	addi	s0,sp,64
    80005e44:	00050493          	mv	s1,a0
    80005e48:	00058913          	mv	s2,a1
    80005e4c:	00060993          	mv	s3,a2
    LOCK();
    80005e50:	00100613          	li	a2,1
    80005e54:	00000593          	li	a1,0
    80005e58:	00006517          	auipc	a0,0x6
    80005e5c:	f8850513          	addi	a0,a0,-120 # 8000bde0 <lockPrint>
    80005e60:	ffffb097          	auipc	ra,0xffffb
    80005e64:	3bc080e7          	jalr	956(ra) # 8000121c <copy_and_swap>
    80005e68:	00050863          	beqz	a0,80005e78 <_Z8printIntiii+0x50>
    80005e6c:	ffffb097          	auipc	ra,0xffffb
    80005e70:	560080e7          	jalr	1376(ra) # 800013cc <_Z15thread_dispatchv>
    80005e74:	fddff06f          	j	80005e50 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005e78:	00098463          	beqz	s3,80005e80 <_Z8printIntiii+0x58>
    80005e7c:	0804c463          	bltz	s1,80005f04 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005e80:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005e84:	00000593          	li	a1,0
    }

    i = 0;
    80005e88:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005e8c:	0009079b          	sext.w	a5,s2
    80005e90:	0325773b          	remuw	a4,a0,s2
    80005e94:	00048613          	mv	a2,s1
    80005e98:	0014849b          	addiw	s1,s1,1
    80005e9c:	02071693          	slli	a3,a4,0x20
    80005ea0:	0206d693          	srli	a3,a3,0x20
    80005ea4:	00006717          	auipc	a4,0x6
    80005ea8:	ddc70713          	addi	a4,a4,-548 # 8000bc80 <digits>
    80005eac:	00d70733          	add	a4,a4,a3
    80005eb0:	00074683          	lbu	a3,0(a4)
    80005eb4:	fd040713          	addi	a4,s0,-48
    80005eb8:	00c70733          	add	a4,a4,a2
    80005ebc:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005ec0:	0005071b          	sext.w	a4,a0
    80005ec4:	0325553b          	divuw	a0,a0,s2
    80005ec8:	fcf772e3          	bgeu	a4,a5,80005e8c <_Z8printIntiii+0x64>
    if(neg)
    80005ecc:	00058c63          	beqz	a1,80005ee4 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005ed0:	fd040793          	addi	a5,s0,-48
    80005ed4:	009784b3          	add	s1,a5,s1
    80005ed8:	02d00793          	li	a5,45
    80005edc:	fef48823          	sb	a5,-16(s1)
    80005ee0:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005ee4:	fff4849b          	addiw	s1,s1,-1
    80005ee8:	0204c463          	bltz	s1,80005f10 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80005eec:	fd040793          	addi	a5,s0,-48
    80005ef0:	009787b3          	add	a5,a5,s1
    80005ef4:	ff07c503          	lbu	a0,-16(a5)
    80005ef8:	ffffb097          	auipc	ra,0xffffb
    80005efc:	774080e7          	jalr	1908(ra) # 8000166c <_Z4putcc>
    80005f00:	fe5ff06f          	j	80005ee4 <_Z8printIntiii+0xbc>
        x = -xx;
    80005f04:	4090053b          	negw	a0,s1
        neg = 1;
    80005f08:	00100593          	li	a1,1
        x = -xx;
    80005f0c:	f7dff06f          	j	80005e88 <_Z8printIntiii+0x60>

    UNLOCK();
    80005f10:	00000613          	li	a2,0
    80005f14:	00100593          	li	a1,1
    80005f18:	00006517          	auipc	a0,0x6
    80005f1c:	ec850513          	addi	a0,a0,-312 # 8000bde0 <lockPrint>
    80005f20:	ffffb097          	auipc	ra,0xffffb
    80005f24:	2fc080e7          	jalr	764(ra) # 8000121c <copy_and_swap>
    80005f28:	fe0514e3          	bnez	a0,80005f10 <_Z8printIntiii+0xe8>
    80005f2c:	03813083          	ld	ra,56(sp)
    80005f30:	03013403          	ld	s0,48(sp)
    80005f34:	02813483          	ld	s1,40(sp)
    80005f38:	02013903          	ld	s2,32(sp)
    80005f3c:	01813983          	ld	s3,24(sp)
    80005f40:	04010113          	addi	sp,sp,64
    80005f44:	00008067          	ret

0000000080005f48 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005f48:	fd010113          	addi	sp,sp,-48
    80005f4c:	02113423          	sd	ra,40(sp)
    80005f50:	02813023          	sd	s0,32(sp)
    80005f54:	00913c23          	sd	s1,24(sp)
    80005f58:	01213823          	sd	s2,16(sp)
    80005f5c:	01313423          	sd	s3,8(sp)
    80005f60:	03010413          	addi	s0,sp,48
    80005f64:	00050493          	mv	s1,a0
    80005f68:	00058913          	mv	s2,a1
    80005f6c:	0015879b          	addiw	a5,a1,1
    80005f70:	0007851b          	sext.w	a0,a5
    80005f74:	00f4a023          	sw	a5,0(s1)
    80005f78:	0004a823          	sw	zero,16(s1)
    80005f7c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005f80:	00251513          	slli	a0,a0,0x2
    80005f84:	ffffb097          	auipc	ra,0xffffb
    80005f88:	2d4080e7          	jalr	724(ra) # 80001258 <_Z9mem_allocm>
    80005f8c:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005f90:	01000513          	li	a0,16
    80005f94:	ffffc097          	auipc	ra,0xffffc
    80005f98:	f98080e7          	jalr	-104(ra) # 80001f2c <_Znwm>
    80005f9c:	00050993          	mv	s3,a0
    80005fa0:	00000593          	li	a1,0
    80005fa4:	ffffc097          	auipc	ra,0xffffc
    80005fa8:	13c080e7          	jalr	316(ra) # 800020e0 <_ZN9SemaphoreC1Ej>
    80005fac:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005fb0:	01000513          	li	a0,16
    80005fb4:	ffffc097          	auipc	ra,0xffffc
    80005fb8:	f78080e7          	jalr	-136(ra) # 80001f2c <_Znwm>
    80005fbc:	00050993          	mv	s3,a0
    80005fc0:	00090593          	mv	a1,s2
    80005fc4:	ffffc097          	auipc	ra,0xffffc
    80005fc8:	11c080e7          	jalr	284(ra) # 800020e0 <_ZN9SemaphoreC1Ej>
    80005fcc:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005fd0:	01000513          	li	a0,16
    80005fd4:	ffffc097          	auipc	ra,0xffffc
    80005fd8:	f58080e7          	jalr	-168(ra) # 80001f2c <_Znwm>
    80005fdc:	00050913          	mv	s2,a0
    80005fe0:	00100593          	li	a1,1
    80005fe4:	ffffc097          	auipc	ra,0xffffc
    80005fe8:	0fc080e7          	jalr	252(ra) # 800020e0 <_ZN9SemaphoreC1Ej>
    80005fec:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005ff0:	01000513          	li	a0,16
    80005ff4:	ffffc097          	auipc	ra,0xffffc
    80005ff8:	f38080e7          	jalr	-200(ra) # 80001f2c <_Znwm>
    80005ffc:	00050913          	mv	s2,a0
    80006000:	00100593          	li	a1,1
    80006004:	ffffc097          	auipc	ra,0xffffc
    80006008:	0dc080e7          	jalr	220(ra) # 800020e0 <_ZN9SemaphoreC1Ej>
    8000600c:	0324b823          	sd	s2,48(s1)
}
    80006010:	02813083          	ld	ra,40(sp)
    80006014:	02013403          	ld	s0,32(sp)
    80006018:	01813483          	ld	s1,24(sp)
    8000601c:	01013903          	ld	s2,16(sp)
    80006020:	00813983          	ld	s3,8(sp)
    80006024:	03010113          	addi	sp,sp,48
    80006028:	00008067          	ret
    8000602c:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80006030:	00098513          	mv	a0,s3
    80006034:	ffffc097          	auipc	ra,0xffffc
    80006038:	f20080e7          	jalr	-224(ra) # 80001f54 <_ZdlPv>
    8000603c:	00048513          	mv	a0,s1
    80006040:	00007097          	auipc	ra,0x7
    80006044:	e78080e7          	jalr	-392(ra) # 8000ceb8 <_Unwind_Resume>
    80006048:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    8000604c:	00098513          	mv	a0,s3
    80006050:	ffffc097          	auipc	ra,0xffffc
    80006054:	f04080e7          	jalr	-252(ra) # 80001f54 <_ZdlPv>
    80006058:	00048513          	mv	a0,s1
    8000605c:	00007097          	auipc	ra,0x7
    80006060:	e5c080e7          	jalr	-420(ra) # 8000ceb8 <_Unwind_Resume>
    80006064:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80006068:	00090513          	mv	a0,s2
    8000606c:	ffffc097          	auipc	ra,0xffffc
    80006070:	ee8080e7          	jalr	-280(ra) # 80001f54 <_ZdlPv>
    80006074:	00048513          	mv	a0,s1
    80006078:	00007097          	auipc	ra,0x7
    8000607c:	e40080e7          	jalr	-448(ra) # 8000ceb8 <_Unwind_Resume>
    80006080:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80006084:	00090513          	mv	a0,s2
    80006088:	ffffc097          	auipc	ra,0xffffc
    8000608c:	ecc080e7          	jalr	-308(ra) # 80001f54 <_ZdlPv>
    80006090:	00048513          	mv	a0,s1
    80006094:	00007097          	auipc	ra,0x7
    80006098:	e24080e7          	jalr	-476(ra) # 8000ceb8 <_Unwind_Resume>

000000008000609c <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    8000609c:	fe010113          	addi	sp,sp,-32
    800060a0:	00113c23          	sd	ra,24(sp)
    800060a4:	00813823          	sd	s0,16(sp)
    800060a8:	00913423          	sd	s1,8(sp)
    800060ac:	01213023          	sd	s2,0(sp)
    800060b0:	02010413          	addi	s0,sp,32
    800060b4:	00050493          	mv	s1,a0
    800060b8:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800060bc:	01853503          	ld	a0,24(a0)
    800060c0:	ffffc097          	auipc	ra,0xffffc
    800060c4:	05c080e7          	jalr	92(ra) # 8000211c <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800060c8:	0304b503          	ld	a0,48(s1)
    800060cc:	ffffc097          	auipc	ra,0xffffc
    800060d0:	050080e7          	jalr	80(ra) # 8000211c <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800060d4:	0084b783          	ld	a5,8(s1)
    800060d8:	0144a703          	lw	a4,20(s1)
    800060dc:	00271713          	slli	a4,a4,0x2
    800060e0:	00e787b3          	add	a5,a5,a4
    800060e4:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800060e8:	0144a783          	lw	a5,20(s1)
    800060ec:	0017879b          	addiw	a5,a5,1
    800060f0:	0004a703          	lw	a4,0(s1)
    800060f4:	02e7e7bb          	remw	a5,a5,a4
    800060f8:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800060fc:	0304b503          	ld	a0,48(s1)
    80006100:	ffffc097          	auipc	ra,0xffffc
    80006104:	054080e7          	jalr	84(ra) # 80002154 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80006108:	0204b503          	ld	a0,32(s1)
    8000610c:	ffffc097          	auipc	ra,0xffffc
    80006110:	048080e7          	jalr	72(ra) # 80002154 <_ZN9Semaphore6signalEv>

}
    80006114:	01813083          	ld	ra,24(sp)
    80006118:	01013403          	ld	s0,16(sp)
    8000611c:	00813483          	ld	s1,8(sp)
    80006120:	00013903          	ld	s2,0(sp)
    80006124:	02010113          	addi	sp,sp,32
    80006128:	00008067          	ret

000000008000612c <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    8000612c:	fe010113          	addi	sp,sp,-32
    80006130:	00113c23          	sd	ra,24(sp)
    80006134:	00813823          	sd	s0,16(sp)
    80006138:	00913423          	sd	s1,8(sp)
    8000613c:	01213023          	sd	s2,0(sp)
    80006140:	02010413          	addi	s0,sp,32
    80006144:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80006148:	02053503          	ld	a0,32(a0)
    8000614c:	ffffc097          	auipc	ra,0xffffc
    80006150:	fd0080e7          	jalr	-48(ra) # 8000211c <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80006154:	0284b503          	ld	a0,40(s1)
    80006158:	ffffc097          	auipc	ra,0xffffc
    8000615c:	fc4080e7          	jalr	-60(ra) # 8000211c <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80006160:	0084b703          	ld	a4,8(s1)
    80006164:	0104a783          	lw	a5,16(s1)
    80006168:	00279693          	slli	a3,a5,0x2
    8000616c:	00d70733          	add	a4,a4,a3
    80006170:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006174:	0017879b          	addiw	a5,a5,1
    80006178:	0004a703          	lw	a4,0(s1)
    8000617c:	02e7e7bb          	remw	a5,a5,a4
    80006180:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80006184:	0284b503          	ld	a0,40(s1)
    80006188:	ffffc097          	auipc	ra,0xffffc
    8000618c:	fcc080e7          	jalr	-52(ra) # 80002154 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80006190:	0184b503          	ld	a0,24(s1)
    80006194:	ffffc097          	auipc	ra,0xffffc
    80006198:	fc0080e7          	jalr	-64(ra) # 80002154 <_ZN9Semaphore6signalEv>

    return ret;
}
    8000619c:	00090513          	mv	a0,s2
    800061a0:	01813083          	ld	ra,24(sp)
    800061a4:	01013403          	ld	s0,16(sp)
    800061a8:	00813483          	ld	s1,8(sp)
    800061ac:	00013903          	ld	s2,0(sp)
    800061b0:	02010113          	addi	sp,sp,32
    800061b4:	00008067          	ret

00000000800061b8 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800061b8:	fe010113          	addi	sp,sp,-32
    800061bc:	00113c23          	sd	ra,24(sp)
    800061c0:	00813823          	sd	s0,16(sp)
    800061c4:	00913423          	sd	s1,8(sp)
    800061c8:	01213023          	sd	s2,0(sp)
    800061cc:	02010413          	addi	s0,sp,32
    800061d0:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800061d4:	02853503          	ld	a0,40(a0)
    800061d8:	ffffc097          	auipc	ra,0xffffc
    800061dc:	f44080e7          	jalr	-188(ra) # 8000211c <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    800061e0:	0304b503          	ld	a0,48(s1)
    800061e4:	ffffc097          	auipc	ra,0xffffc
    800061e8:	f38080e7          	jalr	-200(ra) # 8000211c <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    800061ec:	0144a783          	lw	a5,20(s1)
    800061f0:	0104a903          	lw	s2,16(s1)
    800061f4:	0327ce63          	blt	a5,s2,80006230 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    800061f8:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800061fc:	0304b503          	ld	a0,48(s1)
    80006200:	ffffc097          	auipc	ra,0xffffc
    80006204:	f54080e7          	jalr	-172(ra) # 80002154 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80006208:	0284b503          	ld	a0,40(s1)
    8000620c:	ffffc097          	auipc	ra,0xffffc
    80006210:	f48080e7          	jalr	-184(ra) # 80002154 <_ZN9Semaphore6signalEv>

    return ret;
}
    80006214:	00090513          	mv	a0,s2
    80006218:	01813083          	ld	ra,24(sp)
    8000621c:	01013403          	ld	s0,16(sp)
    80006220:	00813483          	ld	s1,8(sp)
    80006224:	00013903          	ld	s2,0(sp)
    80006228:	02010113          	addi	sp,sp,32
    8000622c:	00008067          	ret
        ret = cap - head + tail;
    80006230:	0004a703          	lw	a4,0(s1)
    80006234:	4127093b          	subw	s2,a4,s2
    80006238:	00f9093b          	addw	s2,s2,a5
    8000623c:	fc1ff06f          	j	800061fc <_ZN9BufferCPP6getCntEv+0x44>

0000000080006240 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80006240:	fe010113          	addi	sp,sp,-32
    80006244:	00113c23          	sd	ra,24(sp)
    80006248:	00813823          	sd	s0,16(sp)
    8000624c:	00913423          	sd	s1,8(sp)
    80006250:	02010413          	addi	s0,sp,32
    80006254:	00050493          	mv	s1,a0
    Console::putc('\n');
    80006258:	00a00513          	li	a0,10
    8000625c:	ffffc097          	auipc	ra,0xffffc
    80006260:	018080e7          	jalr	24(ra) # 80002274 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80006264:	00003517          	auipc	a0,0x3
    80006268:	0bc50513          	addi	a0,a0,188 # 80009320 <CONSOLE_STATUS+0x310>
    8000626c:	00000097          	auipc	ra,0x0
    80006270:	a0c080e7          	jalr	-1524(ra) # 80005c78 <_Z11printStringPKc>
    while (getCnt()) {
    80006274:	00048513          	mv	a0,s1
    80006278:	00000097          	auipc	ra,0x0
    8000627c:	f40080e7          	jalr	-192(ra) # 800061b8 <_ZN9BufferCPP6getCntEv>
    80006280:	02050c63          	beqz	a0,800062b8 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80006284:	0084b783          	ld	a5,8(s1)
    80006288:	0104a703          	lw	a4,16(s1)
    8000628c:	00271713          	slli	a4,a4,0x2
    80006290:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80006294:	0007c503          	lbu	a0,0(a5)
    80006298:	ffffc097          	auipc	ra,0xffffc
    8000629c:	fdc080e7          	jalr	-36(ra) # 80002274 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    800062a0:	0104a783          	lw	a5,16(s1)
    800062a4:	0017879b          	addiw	a5,a5,1
    800062a8:	0004a703          	lw	a4,0(s1)
    800062ac:	02e7e7bb          	remw	a5,a5,a4
    800062b0:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800062b4:	fc1ff06f          	j	80006274 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800062b8:	02100513          	li	a0,33
    800062bc:	ffffc097          	auipc	ra,0xffffc
    800062c0:	fb8080e7          	jalr	-72(ra) # 80002274 <_ZN7Console4putcEc>
    Console::putc('\n');
    800062c4:	00a00513          	li	a0,10
    800062c8:	ffffc097          	auipc	ra,0xffffc
    800062cc:	fac080e7          	jalr	-84(ra) # 80002274 <_ZN7Console4putcEc>
    mem_free(buffer);
    800062d0:	0084b503          	ld	a0,8(s1)
    800062d4:	ffffb097          	auipc	ra,0xffffb
    800062d8:	fd8080e7          	jalr	-40(ra) # 800012ac <_Z8mem_freePv>
    delete itemAvailable;
    800062dc:	0204b503          	ld	a0,32(s1)
    800062e0:	00050863          	beqz	a0,800062f0 <_ZN9BufferCPPD1Ev+0xb0>
    800062e4:	00053783          	ld	a5,0(a0)
    800062e8:	0087b783          	ld	a5,8(a5)
    800062ec:	000780e7          	jalr	a5
    delete spaceAvailable;
    800062f0:	0184b503          	ld	a0,24(s1)
    800062f4:	00050863          	beqz	a0,80006304 <_ZN9BufferCPPD1Ev+0xc4>
    800062f8:	00053783          	ld	a5,0(a0)
    800062fc:	0087b783          	ld	a5,8(a5)
    80006300:	000780e7          	jalr	a5
    delete mutexTail;
    80006304:	0304b503          	ld	a0,48(s1)
    80006308:	00050863          	beqz	a0,80006318 <_ZN9BufferCPPD1Ev+0xd8>
    8000630c:	00053783          	ld	a5,0(a0)
    80006310:	0087b783          	ld	a5,8(a5)
    80006314:	000780e7          	jalr	a5
    delete mutexHead;
    80006318:	0284b503          	ld	a0,40(s1)
    8000631c:	00050863          	beqz	a0,8000632c <_ZN9BufferCPPD1Ev+0xec>
    80006320:	00053783          	ld	a5,0(a0)
    80006324:	0087b783          	ld	a5,8(a5)
    80006328:	000780e7          	jalr	a5
}
    8000632c:	01813083          	ld	ra,24(sp)
    80006330:	01013403          	ld	s0,16(sp)
    80006334:	00813483          	ld	s1,8(sp)
    80006338:	02010113          	addi	sp,sp,32
    8000633c:	00008067          	ret

0000000080006340 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80006340:	fe010113          	addi	sp,sp,-32
    80006344:	00113c23          	sd	ra,24(sp)
    80006348:	00813823          	sd	s0,16(sp)
    8000634c:	00913423          	sd	s1,8(sp)
    80006350:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80006354:	00003517          	auipc	a0,0x3
    80006358:	fe450513          	addi	a0,a0,-28 # 80009338 <CONSOLE_STATUS+0x328>
    8000635c:	00000097          	auipc	ra,0x0
    80006360:	91c080e7          	jalr	-1764(ra) # 80005c78 <_Z11printStringPKc>
    int test = getc() - '0';
    80006364:	ffffb097          	auipc	ra,0xffffb
    80006368:	2bc080e7          	jalr	700(ra) # 80001620 <_Z4getcv>
    8000636c:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80006370:	ffffb097          	auipc	ra,0xffffb
    80006374:	2b0080e7          	jalr	688(ra) # 80001620 <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80006378:	00700793          	li	a5,7
    8000637c:	1097e263          	bltu	a5,s1,80006480 <_Z8userMainv+0x140>
    80006380:	00249493          	slli	s1,s1,0x2
    80006384:	00003717          	auipc	a4,0x3
    80006388:	20c70713          	addi	a4,a4,524 # 80009590 <CONSOLE_STATUS+0x580>
    8000638c:	00e484b3          	add	s1,s1,a4
    80006390:	0004a783          	lw	a5,0(s1)
    80006394:	00e787b3          	add	a5,a5,a4
    80006398:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    8000639c:	fffff097          	auipc	ra,0xfffff
    800063a0:	f54080e7          	jalr	-172(ra) # 800052f0 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    800063a4:	00003517          	auipc	a0,0x3
    800063a8:	fb450513          	addi	a0,a0,-76 # 80009358 <CONSOLE_STATUS+0x348>
    800063ac:	00000097          	auipc	ra,0x0
    800063b0:	8cc080e7          	jalr	-1844(ra) # 80005c78 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    800063b4:	01813083          	ld	ra,24(sp)
    800063b8:	01013403          	ld	s0,16(sp)
    800063bc:	00813483          	ld	s1,8(sp)
    800063c0:	02010113          	addi	sp,sp,32
    800063c4:	00008067          	ret
            Threads_CPP_API_test();
    800063c8:	ffffe097          	auipc	ra,0xffffe
    800063cc:	ae8080e7          	jalr	-1304(ra) # 80003eb0 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    800063d0:	00003517          	auipc	a0,0x3
    800063d4:	fc850513          	addi	a0,a0,-56 # 80009398 <CONSOLE_STATUS+0x388>
    800063d8:	00000097          	auipc	ra,0x0
    800063dc:	8a0080e7          	jalr	-1888(ra) # 80005c78 <_Z11printStringPKc>
            break;
    800063e0:	fd5ff06f          	j	800063b4 <_Z8userMainv+0x74>
            producerConsumer_C_API();
    800063e4:	ffffd097          	auipc	ra,0xffffd
    800063e8:	320080e7          	jalr	800(ra) # 80003704 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    800063ec:	00003517          	auipc	a0,0x3
    800063f0:	fec50513          	addi	a0,a0,-20 # 800093d8 <CONSOLE_STATUS+0x3c8>
    800063f4:	00000097          	auipc	ra,0x0
    800063f8:	884080e7          	jalr	-1916(ra) # 80005c78 <_Z11printStringPKc>
            break;
    800063fc:	fb9ff06f          	j	800063b4 <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    80006400:	fffff097          	auipc	ra,0xfffff
    80006404:	234080e7          	jalr	564(ra) # 80005634 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80006408:	00003517          	auipc	a0,0x3
    8000640c:	02050513          	addi	a0,a0,32 # 80009428 <CONSOLE_STATUS+0x418>
    80006410:	00000097          	auipc	ra,0x0
    80006414:	868080e7          	jalr	-1944(ra) # 80005c78 <_Z11printStringPKc>
            break;
    80006418:	f9dff06f          	j	800063b4 <_Z8userMainv+0x74>
            testSleeping();
    8000641c:	00000097          	auipc	ra,0x0
    80006420:	11c080e7          	jalr	284(ra) # 80006538 <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    80006424:	00003517          	auipc	a0,0x3
    80006428:	05c50513          	addi	a0,a0,92 # 80009480 <CONSOLE_STATUS+0x470>
    8000642c:	00000097          	auipc	ra,0x0
    80006430:	84c080e7          	jalr	-1972(ra) # 80005c78 <_Z11printStringPKc>
            break;
    80006434:	f81ff06f          	j	800063b4 <_Z8userMainv+0x74>
            testConsumerProducer();
    80006438:	ffffe097          	auipc	ra,0xffffe
    8000643c:	f38080e7          	jalr	-200(ra) # 80004370 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    80006440:	00003517          	auipc	a0,0x3
    80006444:	07050513          	addi	a0,a0,112 # 800094b0 <CONSOLE_STATUS+0x4a0>
    80006448:	00000097          	auipc	ra,0x0
    8000644c:	830080e7          	jalr	-2000(ra) # 80005c78 <_Z11printStringPKc>
            break;
    80006450:	f65ff06f          	j	800063b4 <_Z8userMainv+0x74>
            System_Mode_test();
    80006454:	00000097          	auipc	ra,0x0
    80006458:	658080e7          	jalr	1624(ra) # 80006aac <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    8000645c:	00003517          	auipc	a0,0x3
    80006460:	09450513          	addi	a0,a0,148 # 800094f0 <CONSOLE_STATUS+0x4e0>
    80006464:	00000097          	auipc	ra,0x0
    80006468:	814080e7          	jalr	-2028(ra) # 80005c78 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    8000646c:	00003517          	auipc	a0,0x3
    80006470:	0a450513          	addi	a0,a0,164 # 80009510 <CONSOLE_STATUS+0x500>
    80006474:	00000097          	auipc	ra,0x0
    80006478:	804080e7          	jalr	-2044(ra) # 80005c78 <_Z11printStringPKc>
            break;
    8000647c:	f39ff06f          	j	800063b4 <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    80006480:	00003517          	auipc	a0,0x3
    80006484:	0e850513          	addi	a0,a0,232 # 80009568 <CONSOLE_STATUS+0x558>
    80006488:	fffff097          	auipc	ra,0xfffff
    8000648c:	7f0080e7          	jalr	2032(ra) # 80005c78 <_Z11printStringPKc>
    80006490:	f25ff06f          	j	800063b4 <_Z8userMainv+0x74>

0000000080006494 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80006494:	fe010113          	addi	sp,sp,-32
    80006498:	00113c23          	sd	ra,24(sp)
    8000649c:	00813823          	sd	s0,16(sp)
    800064a0:	00913423          	sd	s1,8(sp)
    800064a4:	01213023          	sd	s2,0(sp)
    800064a8:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    800064ac:	00053903          	ld	s2,0(a0)
    int i = 6;
    800064b0:	00600493          	li	s1,6
    while (--i > 0) {
    800064b4:	fff4849b          	addiw	s1,s1,-1
    800064b8:	04905463          	blez	s1,80006500 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    800064bc:	00003517          	auipc	a0,0x3
    800064c0:	0f450513          	addi	a0,a0,244 # 800095b0 <CONSOLE_STATUS+0x5a0>
    800064c4:	fffff097          	auipc	ra,0xfffff
    800064c8:	7b4080e7          	jalr	1972(ra) # 80005c78 <_Z11printStringPKc>
        printInt(sleep_time);
    800064cc:	00000613          	li	a2,0
    800064d0:	00a00593          	li	a1,10
    800064d4:	0009051b          	sext.w	a0,s2
    800064d8:	00000097          	auipc	ra,0x0
    800064dc:	950080e7          	jalr	-1712(ra) # 80005e28 <_Z8printIntiii>
        printString(" !\n");
    800064e0:	00003517          	auipc	a0,0x3
    800064e4:	0d850513          	addi	a0,a0,216 # 800095b8 <CONSOLE_STATUS+0x5a8>
    800064e8:	fffff097          	auipc	ra,0xfffff
    800064ec:	790080e7          	jalr	1936(ra) # 80005c78 <_Z11printStringPKc>
        time_sleep(sleep_time);
    800064f0:	00090513          	mv	a0,s2
    800064f4:	ffffb097          	auipc	ra,0xffffb
    800064f8:	0e0080e7          	jalr	224(ra) # 800015d4 <_Z10time_sleepm>
    while (--i > 0) {
    800064fc:	fb9ff06f          	j	800064b4 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80006500:	00a00793          	li	a5,10
    80006504:	02f95933          	divu	s2,s2,a5
    80006508:	fff90913          	addi	s2,s2,-1
    8000650c:	00006797          	auipc	a5,0x6
    80006510:	8dc78793          	addi	a5,a5,-1828 # 8000bde8 <_ZL8finished>
    80006514:	01278933          	add	s2,a5,s2
    80006518:	00100793          	li	a5,1
    8000651c:	00f90023          	sb	a5,0(s2)
}
    80006520:	01813083          	ld	ra,24(sp)
    80006524:	01013403          	ld	s0,16(sp)
    80006528:	00813483          	ld	s1,8(sp)
    8000652c:	00013903          	ld	s2,0(sp)
    80006530:	02010113          	addi	sp,sp,32
    80006534:	00008067          	ret

0000000080006538 <_Z12testSleepingv>:

void testSleeping() {
    80006538:	fc010113          	addi	sp,sp,-64
    8000653c:	02113c23          	sd	ra,56(sp)
    80006540:	02813823          	sd	s0,48(sp)
    80006544:	02913423          	sd	s1,40(sp)
    80006548:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    8000654c:	00a00793          	li	a5,10
    80006550:	fcf43823          	sd	a5,-48(s0)
    80006554:	01400793          	li	a5,20
    80006558:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    8000655c:	00000493          	li	s1,0
    80006560:	02c0006f          	j	8000658c <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80006564:	00349793          	slli	a5,s1,0x3
    80006568:	fd040613          	addi	a2,s0,-48
    8000656c:	00f60633          	add	a2,a2,a5
    80006570:	00000597          	auipc	a1,0x0
    80006574:	f2458593          	addi	a1,a1,-220 # 80006494 <_ZL9sleepyRunPv>
    80006578:	fc040513          	addi	a0,s0,-64
    8000657c:	00f50533          	add	a0,a0,a5
    80006580:	ffffb097          	auipc	ra,0xffffb
    80006584:	d78080e7          	jalr	-648(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80006588:	0014849b          	addiw	s1,s1,1
    8000658c:	00100793          	li	a5,1
    80006590:	fc97dae3          	bge	a5,s1,80006564 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80006594:	00006797          	auipc	a5,0x6
    80006598:	8547c783          	lbu	a5,-1964(a5) # 8000bde8 <_ZL8finished>
    8000659c:	fe078ce3          	beqz	a5,80006594 <_Z12testSleepingv+0x5c>
    800065a0:	00006797          	auipc	a5,0x6
    800065a4:	8497c783          	lbu	a5,-1975(a5) # 8000bde9 <_ZL8finished+0x1>
    800065a8:	fe0786e3          	beqz	a5,80006594 <_Z12testSleepingv+0x5c>
}
    800065ac:	03813083          	ld	ra,56(sp)
    800065b0:	03013403          	ld	s0,48(sp)
    800065b4:	02813483          	ld	s1,40(sp)
    800065b8:	04010113          	addi	sp,sp,64
    800065bc:	00008067          	ret

00000000800065c0 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800065c0:	fe010113          	addi	sp,sp,-32
    800065c4:	00113c23          	sd	ra,24(sp)
    800065c8:	00813823          	sd	s0,16(sp)
    800065cc:	00913423          	sd	s1,8(sp)
    800065d0:	01213023          	sd	s2,0(sp)
    800065d4:	02010413          	addi	s0,sp,32
    800065d8:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800065dc:	00100793          	li	a5,1
    800065e0:	02a7f863          	bgeu	a5,a0,80006610 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800065e4:	00a00793          	li	a5,10
    800065e8:	02f577b3          	remu	a5,a0,a5
    800065ec:	02078e63          	beqz	a5,80006628 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800065f0:	fff48513          	addi	a0,s1,-1
    800065f4:	00000097          	auipc	ra,0x0
    800065f8:	fcc080e7          	jalr	-52(ra) # 800065c0 <_ZL9fibonaccim>
    800065fc:	00050913          	mv	s2,a0
    80006600:	ffe48513          	addi	a0,s1,-2
    80006604:	00000097          	auipc	ra,0x0
    80006608:	fbc080e7          	jalr	-68(ra) # 800065c0 <_ZL9fibonaccim>
    8000660c:	00a90533          	add	a0,s2,a0
}
    80006610:	01813083          	ld	ra,24(sp)
    80006614:	01013403          	ld	s0,16(sp)
    80006618:	00813483          	ld	s1,8(sp)
    8000661c:	00013903          	ld	s2,0(sp)
    80006620:	02010113          	addi	sp,sp,32
    80006624:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80006628:	ffffb097          	auipc	ra,0xffffb
    8000662c:	da4080e7          	jalr	-604(ra) # 800013cc <_Z15thread_dispatchv>
    80006630:	fc1ff06f          	j	800065f0 <_ZL9fibonaccim+0x30>

0000000080006634 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80006634:	fe010113          	addi	sp,sp,-32
    80006638:	00113c23          	sd	ra,24(sp)
    8000663c:	00813823          	sd	s0,16(sp)
    80006640:	00913423          	sd	s1,8(sp)
    80006644:	01213023          	sd	s2,0(sp)
    80006648:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000664c:	00a00493          	li	s1,10
    80006650:	0400006f          	j	80006690 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006654:	00003517          	auipc	a0,0x3
    80006658:	c3450513          	addi	a0,a0,-972 # 80009288 <CONSOLE_STATUS+0x278>
    8000665c:	fffff097          	auipc	ra,0xfffff
    80006660:	61c080e7          	jalr	1564(ra) # 80005c78 <_Z11printStringPKc>
    80006664:	00000613          	li	a2,0
    80006668:	00a00593          	li	a1,10
    8000666c:	00048513          	mv	a0,s1
    80006670:	fffff097          	auipc	ra,0xfffff
    80006674:	7b8080e7          	jalr	1976(ra) # 80005e28 <_Z8printIntiii>
    80006678:	00003517          	auipc	a0,0x3
    8000667c:	e0050513          	addi	a0,a0,-512 # 80009478 <CONSOLE_STATUS+0x468>
    80006680:	fffff097          	auipc	ra,0xfffff
    80006684:	5f8080e7          	jalr	1528(ra) # 80005c78 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80006688:	0014849b          	addiw	s1,s1,1
    8000668c:	0ff4f493          	andi	s1,s1,255
    80006690:	00c00793          	li	a5,12
    80006694:	fc97f0e3          	bgeu	a5,s1,80006654 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80006698:	00003517          	auipc	a0,0x3
    8000669c:	bf850513          	addi	a0,a0,-1032 # 80009290 <CONSOLE_STATUS+0x280>
    800066a0:	fffff097          	auipc	ra,0xfffff
    800066a4:	5d8080e7          	jalr	1496(ra) # 80005c78 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800066a8:	00500313          	li	t1,5
    thread_dispatch();
    800066ac:	ffffb097          	auipc	ra,0xffffb
    800066b0:	d20080e7          	jalr	-736(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800066b4:	01000513          	li	a0,16
    800066b8:	00000097          	auipc	ra,0x0
    800066bc:	f08080e7          	jalr	-248(ra) # 800065c0 <_ZL9fibonaccim>
    800066c0:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800066c4:	00003517          	auipc	a0,0x3
    800066c8:	bdc50513          	addi	a0,a0,-1060 # 800092a0 <CONSOLE_STATUS+0x290>
    800066cc:	fffff097          	auipc	ra,0xfffff
    800066d0:	5ac080e7          	jalr	1452(ra) # 80005c78 <_Z11printStringPKc>
    800066d4:	00000613          	li	a2,0
    800066d8:	00a00593          	li	a1,10
    800066dc:	0009051b          	sext.w	a0,s2
    800066e0:	fffff097          	auipc	ra,0xfffff
    800066e4:	748080e7          	jalr	1864(ra) # 80005e28 <_Z8printIntiii>
    800066e8:	00003517          	auipc	a0,0x3
    800066ec:	d9050513          	addi	a0,a0,-624 # 80009478 <CONSOLE_STATUS+0x468>
    800066f0:	fffff097          	auipc	ra,0xfffff
    800066f4:	588080e7          	jalr	1416(ra) # 80005c78 <_Z11printStringPKc>
    800066f8:	0400006f          	j	80006738 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800066fc:	00003517          	auipc	a0,0x3
    80006700:	b8c50513          	addi	a0,a0,-1140 # 80009288 <CONSOLE_STATUS+0x278>
    80006704:	fffff097          	auipc	ra,0xfffff
    80006708:	574080e7          	jalr	1396(ra) # 80005c78 <_Z11printStringPKc>
    8000670c:	00000613          	li	a2,0
    80006710:	00a00593          	li	a1,10
    80006714:	00048513          	mv	a0,s1
    80006718:	fffff097          	auipc	ra,0xfffff
    8000671c:	710080e7          	jalr	1808(ra) # 80005e28 <_Z8printIntiii>
    80006720:	00003517          	auipc	a0,0x3
    80006724:	d5850513          	addi	a0,a0,-680 # 80009478 <CONSOLE_STATUS+0x468>
    80006728:	fffff097          	auipc	ra,0xfffff
    8000672c:	550080e7          	jalr	1360(ra) # 80005c78 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80006730:	0014849b          	addiw	s1,s1,1
    80006734:	0ff4f493          	andi	s1,s1,255
    80006738:	00f00793          	li	a5,15
    8000673c:	fc97f0e3          	bgeu	a5,s1,800066fc <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80006740:	00003517          	auipc	a0,0x3
    80006744:	b7050513          	addi	a0,a0,-1168 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80006748:	fffff097          	auipc	ra,0xfffff
    8000674c:	530080e7          	jalr	1328(ra) # 80005c78 <_Z11printStringPKc>
    finishedD = true;
    80006750:	00100793          	li	a5,1
    80006754:	00005717          	auipc	a4,0x5
    80006758:	68f70b23          	sb	a5,1686(a4) # 8000bdea <_ZL9finishedD>
    thread_dispatch();
    8000675c:	ffffb097          	auipc	ra,0xffffb
    80006760:	c70080e7          	jalr	-912(ra) # 800013cc <_Z15thread_dispatchv>
}
    80006764:	01813083          	ld	ra,24(sp)
    80006768:	01013403          	ld	s0,16(sp)
    8000676c:	00813483          	ld	s1,8(sp)
    80006770:	00013903          	ld	s2,0(sp)
    80006774:	02010113          	addi	sp,sp,32
    80006778:	00008067          	ret

000000008000677c <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    8000677c:	fe010113          	addi	sp,sp,-32
    80006780:	00113c23          	sd	ra,24(sp)
    80006784:	00813823          	sd	s0,16(sp)
    80006788:	00913423          	sd	s1,8(sp)
    8000678c:	01213023          	sd	s2,0(sp)
    80006790:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80006794:	00000493          	li	s1,0
    80006798:	0400006f          	j	800067d8 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    8000679c:	00003517          	auipc	a0,0x3
    800067a0:	abc50513          	addi	a0,a0,-1348 # 80009258 <CONSOLE_STATUS+0x248>
    800067a4:	fffff097          	auipc	ra,0xfffff
    800067a8:	4d4080e7          	jalr	1236(ra) # 80005c78 <_Z11printStringPKc>
    800067ac:	00000613          	li	a2,0
    800067b0:	00a00593          	li	a1,10
    800067b4:	00048513          	mv	a0,s1
    800067b8:	fffff097          	auipc	ra,0xfffff
    800067bc:	670080e7          	jalr	1648(ra) # 80005e28 <_Z8printIntiii>
    800067c0:	00003517          	auipc	a0,0x3
    800067c4:	cb850513          	addi	a0,a0,-840 # 80009478 <CONSOLE_STATUS+0x468>
    800067c8:	fffff097          	auipc	ra,0xfffff
    800067cc:	4b0080e7          	jalr	1200(ra) # 80005c78 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800067d0:	0014849b          	addiw	s1,s1,1
    800067d4:	0ff4f493          	andi	s1,s1,255
    800067d8:	00200793          	li	a5,2
    800067dc:	fc97f0e3          	bgeu	a5,s1,8000679c <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800067e0:	00003517          	auipc	a0,0x3
    800067e4:	a8050513          	addi	a0,a0,-1408 # 80009260 <CONSOLE_STATUS+0x250>
    800067e8:	fffff097          	auipc	ra,0xfffff
    800067ec:	490080e7          	jalr	1168(ra) # 80005c78 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800067f0:	00700313          	li	t1,7
    thread_dispatch();
    800067f4:	ffffb097          	auipc	ra,0xffffb
    800067f8:	bd8080e7          	jalr	-1064(ra) # 800013cc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800067fc:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80006800:	00003517          	auipc	a0,0x3
    80006804:	a7050513          	addi	a0,a0,-1424 # 80009270 <CONSOLE_STATUS+0x260>
    80006808:	fffff097          	auipc	ra,0xfffff
    8000680c:	470080e7          	jalr	1136(ra) # 80005c78 <_Z11printStringPKc>
    80006810:	00000613          	li	a2,0
    80006814:	00a00593          	li	a1,10
    80006818:	0009051b          	sext.w	a0,s2
    8000681c:	fffff097          	auipc	ra,0xfffff
    80006820:	60c080e7          	jalr	1548(ra) # 80005e28 <_Z8printIntiii>
    80006824:	00003517          	auipc	a0,0x3
    80006828:	c5450513          	addi	a0,a0,-940 # 80009478 <CONSOLE_STATUS+0x468>
    8000682c:	fffff097          	auipc	ra,0xfffff
    80006830:	44c080e7          	jalr	1100(ra) # 80005c78 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80006834:	00c00513          	li	a0,12
    80006838:	00000097          	auipc	ra,0x0
    8000683c:	d88080e7          	jalr	-632(ra) # 800065c0 <_ZL9fibonaccim>
    80006840:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80006844:	00003517          	auipc	a0,0x3
    80006848:	a3450513          	addi	a0,a0,-1484 # 80009278 <CONSOLE_STATUS+0x268>
    8000684c:	fffff097          	auipc	ra,0xfffff
    80006850:	42c080e7          	jalr	1068(ra) # 80005c78 <_Z11printStringPKc>
    80006854:	00000613          	li	a2,0
    80006858:	00a00593          	li	a1,10
    8000685c:	0009051b          	sext.w	a0,s2
    80006860:	fffff097          	auipc	ra,0xfffff
    80006864:	5c8080e7          	jalr	1480(ra) # 80005e28 <_Z8printIntiii>
    80006868:	00003517          	auipc	a0,0x3
    8000686c:	c1050513          	addi	a0,a0,-1008 # 80009478 <CONSOLE_STATUS+0x468>
    80006870:	fffff097          	auipc	ra,0xfffff
    80006874:	408080e7          	jalr	1032(ra) # 80005c78 <_Z11printStringPKc>
    80006878:	0400006f          	j	800068b8 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    8000687c:	00003517          	auipc	a0,0x3
    80006880:	9dc50513          	addi	a0,a0,-1572 # 80009258 <CONSOLE_STATUS+0x248>
    80006884:	fffff097          	auipc	ra,0xfffff
    80006888:	3f4080e7          	jalr	1012(ra) # 80005c78 <_Z11printStringPKc>
    8000688c:	00000613          	li	a2,0
    80006890:	00a00593          	li	a1,10
    80006894:	00048513          	mv	a0,s1
    80006898:	fffff097          	auipc	ra,0xfffff
    8000689c:	590080e7          	jalr	1424(ra) # 80005e28 <_Z8printIntiii>
    800068a0:	00003517          	auipc	a0,0x3
    800068a4:	bd850513          	addi	a0,a0,-1064 # 80009478 <CONSOLE_STATUS+0x468>
    800068a8:	fffff097          	auipc	ra,0xfffff
    800068ac:	3d0080e7          	jalr	976(ra) # 80005c78 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800068b0:	0014849b          	addiw	s1,s1,1
    800068b4:	0ff4f493          	andi	s1,s1,255
    800068b8:	00500793          	li	a5,5
    800068bc:	fc97f0e3          	bgeu	a5,s1,8000687c <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800068c0:	00003517          	auipc	a0,0x3
    800068c4:	97050513          	addi	a0,a0,-1680 # 80009230 <CONSOLE_STATUS+0x220>
    800068c8:	fffff097          	auipc	ra,0xfffff
    800068cc:	3b0080e7          	jalr	944(ra) # 80005c78 <_Z11printStringPKc>
    finishedC = true;
    800068d0:	00100793          	li	a5,1
    800068d4:	00005717          	auipc	a4,0x5
    800068d8:	50f70ba3          	sb	a5,1303(a4) # 8000bdeb <_ZL9finishedC>
    thread_dispatch();
    800068dc:	ffffb097          	auipc	ra,0xffffb
    800068e0:	af0080e7          	jalr	-1296(ra) # 800013cc <_Z15thread_dispatchv>
}
    800068e4:	01813083          	ld	ra,24(sp)
    800068e8:	01013403          	ld	s0,16(sp)
    800068ec:	00813483          	ld	s1,8(sp)
    800068f0:	00013903          	ld	s2,0(sp)
    800068f4:	02010113          	addi	sp,sp,32
    800068f8:	00008067          	ret

00000000800068fc <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800068fc:	fe010113          	addi	sp,sp,-32
    80006900:	00113c23          	sd	ra,24(sp)
    80006904:	00813823          	sd	s0,16(sp)
    80006908:	00913423          	sd	s1,8(sp)
    8000690c:	01213023          	sd	s2,0(sp)
    80006910:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80006914:	00000913          	li	s2,0
    80006918:	0400006f          	j	80006958 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    8000691c:	ffffb097          	auipc	ra,0xffffb
    80006920:	ab0080e7          	jalr	-1360(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006924:	00148493          	addi	s1,s1,1
    80006928:	000027b7          	lui	a5,0x2
    8000692c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006930:	0097ee63          	bltu	a5,s1,8000694c <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006934:	00000713          	li	a4,0
    80006938:	000077b7          	lui	a5,0x7
    8000693c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006940:	fce7eee3          	bltu	a5,a4,8000691c <_ZL11workerBodyBPv+0x20>
    80006944:	00170713          	addi	a4,a4,1
    80006948:	ff1ff06f          	j	80006938 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    8000694c:	00a00793          	li	a5,10
    80006950:	04f90663          	beq	s2,a5,8000699c <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80006954:	00190913          	addi	s2,s2,1
    80006958:	00f00793          	li	a5,15
    8000695c:	0527e463          	bltu	a5,s2,800069a4 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80006960:	00003517          	auipc	a0,0x3
    80006964:	8e050513          	addi	a0,a0,-1824 # 80009240 <CONSOLE_STATUS+0x230>
    80006968:	fffff097          	auipc	ra,0xfffff
    8000696c:	310080e7          	jalr	784(ra) # 80005c78 <_Z11printStringPKc>
    80006970:	00000613          	li	a2,0
    80006974:	00a00593          	li	a1,10
    80006978:	0009051b          	sext.w	a0,s2
    8000697c:	fffff097          	auipc	ra,0xfffff
    80006980:	4ac080e7          	jalr	1196(ra) # 80005e28 <_Z8printIntiii>
    80006984:	00003517          	auipc	a0,0x3
    80006988:	af450513          	addi	a0,a0,-1292 # 80009478 <CONSOLE_STATUS+0x468>
    8000698c:	fffff097          	auipc	ra,0xfffff
    80006990:	2ec080e7          	jalr	748(ra) # 80005c78 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006994:	00000493          	li	s1,0
    80006998:	f91ff06f          	j	80006928 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    8000699c:	14102ff3          	csrr	t6,sepc
    800069a0:	fb5ff06f          	j	80006954 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    800069a4:	00003517          	auipc	a0,0x3
    800069a8:	8a450513          	addi	a0,a0,-1884 # 80009248 <CONSOLE_STATUS+0x238>
    800069ac:	fffff097          	auipc	ra,0xfffff
    800069b0:	2cc080e7          	jalr	716(ra) # 80005c78 <_Z11printStringPKc>
    finishedB = true;
    800069b4:	00100793          	li	a5,1
    800069b8:	00005717          	auipc	a4,0x5
    800069bc:	42f70a23          	sb	a5,1076(a4) # 8000bdec <_ZL9finishedB>
    thread_dispatch();
    800069c0:	ffffb097          	auipc	ra,0xffffb
    800069c4:	a0c080e7          	jalr	-1524(ra) # 800013cc <_Z15thread_dispatchv>
}
    800069c8:	01813083          	ld	ra,24(sp)
    800069cc:	01013403          	ld	s0,16(sp)
    800069d0:	00813483          	ld	s1,8(sp)
    800069d4:	00013903          	ld	s2,0(sp)
    800069d8:	02010113          	addi	sp,sp,32
    800069dc:	00008067          	ret

00000000800069e0 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800069e0:	fe010113          	addi	sp,sp,-32
    800069e4:	00113c23          	sd	ra,24(sp)
    800069e8:	00813823          	sd	s0,16(sp)
    800069ec:	00913423          	sd	s1,8(sp)
    800069f0:	01213023          	sd	s2,0(sp)
    800069f4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800069f8:	00000913          	li	s2,0
    800069fc:	0380006f          	j	80006a34 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80006a00:	ffffb097          	auipc	ra,0xffffb
    80006a04:	9cc080e7          	jalr	-1588(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006a08:	00148493          	addi	s1,s1,1
    80006a0c:	000027b7          	lui	a5,0x2
    80006a10:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006a14:	0097ee63          	bltu	a5,s1,80006a30 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006a18:	00000713          	li	a4,0
    80006a1c:	000077b7          	lui	a5,0x7
    80006a20:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006a24:	fce7eee3          	bltu	a5,a4,80006a00 <_ZL11workerBodyAPv+0x20>
    80006a28:	00170713          	addi	a4,a4,1
    80006a2c:	ff1ff06f          	j	80006a1c <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80006a30:	00190913          	addi	s2,s2,1
    80006a34:	00900793          	li	a5,9
    80006a38:	0527e063          	bltu	a5,s2,80006a78 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80006a3c:	00002517          	auipc	a0,0x2
    80006a40:	7ec50513          	addi	a0,a0,2028 # 80009228 <CONSOLE_STATUS+0x218>
    80006a44:	fffff097          	auipc	ra,0xfffff
    80006a48:	234080e7          	jalr	564(ra) # 80005c78 <_Z11printStringPKc>
    80006a4c:	00000613          	li	a2,0
    80006a50:	00a00593          	li	a1,10
    80006a54:	0009051b          	sext.w	a0,s2
    80006a58:	fffff097          	auipc	ra,0xfffff
    80006a5c:	3d0080e7          	jalr	976(ra) # 80005e28 <_Z8printIntiii>
    80006a60:	00003517          	auipc	a0,0x3
    80006a64:	a1850513          	addi	a0,a0,-1512 # 80009478 <CONSOLE_STATUS+0x468>
    80006a68:	fffff097          	auipc	ra,0xfffff
    80006a6c:	210080e7          	jalr	528(ra) # 80005c78 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006a70:	00000493          	li	s1,0
    80006a74:	f99ff06f          	j	80006a0c <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006a78:	00002517          	auipc	a0,0x2
    80006a7c:	7b850513          	addi	a0,a0,1976 # 80009230 <CONSOLE_STATUS+0x220>
    80006a80:	fffff097          	auipc	ra,0xfffff
    80006a84:	1f8080e7          	jalr	504(ra) # 80005c78 <_Z11printStringPKc>
    finishedA = true;
    80006a88:	00100793          	li	a5,1
    80006a8c:	00005717          	auipc	a4,0x5
    80006a90:	36f700a3          	sb	a5,865(a4) # 8000bded <_ZL9finishedA>
}
    80006a94:	01813083          	ld	ra,24(sp)
    80006a98:	01013403          	ld	s0,16(sp)
    80006a9c:	00813483          	ld	s1,8(sp)
    80006aa0:	00013903          	ld	s2,0(sp)
    80006aa4:	02010113          	addi	sp,sp,32
    80006aa8:	00008067          	ret

0000000080006aac <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006aac:	fd010113          	addi	sp,sp,-48
    80006ab0:	02113423          	sd	ra,40(sp)
    80006ab4:	02813023          	sd	s0,32(sp)
    80006ab8:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006abc:	00000613          	li	a2,0
    80006ac0:	00000597          	auipc	a1,0x0
    80006ac4:	f2058593          	addi	a1,a1,-224 # 800069e0 <_ZL11workerBodyAPv>
    80006ac8:	fd040513          	addi	a0,s0,-48
    80006acc:	ffffb097          	auipc	ra,0xffffb
    80006ad0:	82c080e7          	jalr	-2004(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80006ad4:	00002517          	auipc	a0,0x2
    80006ad8:	7ec50513          	addi	a0,a0,2028 # 800092c0 <CONSOLE_STATUS+0x2b0>
    80006adc:	fffff097          	auipc	ra,0xfffff
    80006ae0:	19c080e7          	jalr	412(ra) # 80005c78 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80006ae4:	00000613          	li	a2,0
    80006ae8:	00000597          	auipc	a1,0x0
    80006aec:	e1458593          	addi	a1,a1,-492 # 800068fc <_ZL11workerBodyBPv>
    80006af0:	fd840513          	addi	a0,s0,-40
    80006af4:	ffffb097          	auipc	ra,0xffffb
    80006af8:	804080e7          	jalr	-2044(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80006afc:	00002517          	auipc	a0,0x2
    80006b00:	7dc50513          	addi	a0,a0,2012 # 800092d8 <CONSOLE_STATUS+0x2c8>
    80006b04:	fffff097          	auipc	ra,0xfffff
    80006b08:	174080e7          	jalr	372(ra) # 80005c78 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006b0c:	00000613          	li	a2,0
    80006b10:	00000597          	auipc	a1,0x0
    80006b14:	c6c58593          	addi	a1,a1,-916 # 8000677c <_ZL11workerBodyCPv>
    80006b18:	fe040513          	addi	a0,s0,-32
    80006b1c:	ffffa097          	auipc	ra,0xffffa
    80006b20:	7dc080e7          	jalr	2012(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80006b24:	00002517          	auipc	a0,0x2
    80006b28:	7cc50513          	addi	a0,a0,1996 # 800092f0 <CONSOLE_STATUS+0x2e0>
    80006b2c:	fffff097          	auipc	ra,0xfffff
    80006b30:	14c080e7          	jalr	332(ra) # 80005c78 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80006b34:	00000613          	li	a2,0
    80006b38:	00000597          	auipc	a1,0x0
    80006b3c:	afc58593          	addi	a1,a1,-1284 # 80006634 <_ZL11workerBodyDPv>
    80006b40:	fe840513          	addi	a0,s0,-24
    80006b44:	ffffa097          	auipc	ra,0xffffa
    80006b48:	7b4080e7          	jalr	1972(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80006b4c:	00002517          	auipc	a0,0x2
    80006b50:	7bc50513          	addi	a0,a0,1980 # 80009308 <CONSOLE_STATUS+0x2f8>
    80006b54:	fffff097          	auipc	ra,0xfffff
    80006b58:	124080e7          	jalr	292(ra) # 80005c78 <_Z11printStringPKc>
    80006b5c:	00c0006f          	j	80006b68 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006b60:	ffffb097          	auipc	ra,0xffffb
    80006b64:	86c080e7          	jalr	-1940(ra) # 800013cc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006b68:	00005797          	auipc	a5,0x5
    80006b6c:	2857c783          	lbu	a5,645(a5) # 8000bded <_ZL9finishedA>
    80006b70:	fe0788e3          	beqz	a5,80006b60 <_Z16System_Mode_testv+0xb4>
    80006b74:	00005797          	auipc	a5,0x5
    80006b78:	2787c783          	lbu	a5,632(a5) # 8000bdec <_ZL9finishedB>
    80006b7c:	fe0782e3          	beqz	a5,80006b60 <_Z16System_Mode_testv+0xb4>
    80006b80:	00005797          	auipc	a5,0x5
    80006b84:	26b7c783          	lbu	a5,619(a5) # 8000bdeb <_ZL9finishedC>
    80006b88:	fc078ce3          	beqz	a5,80006b60 <_Z16System_Mode_testv+0xb4>
    80006b8c:	00005797          	auipc	a5,0x5
    80006b90:	25e7c783          	lbu	a5,606(a5) # 8000bdea <_ZL9finishedD>
    80006b94:	fc0786e3          	beqz	a5,80006b60 <_Z16System_Mode_testv+0xb4>
    }

}
    80006b98:	02813083          	ld	ra,40(sp)
    80006b9c:	02013403          	ld	s0,32(sp)
    80006ba0:	03010113          	addi	sp,sp,48
    80006ba4:	00008067          	ret

0000000080006ba8 <start>:
    80006ba8:	ff010113          	addi	sp,sp,-16
    80006bac:	00813423          	sd	s0,8(sp)
    80006bb0:	01010413          	addi	s0,sp,16
    80006bb4:	300027f3          	csrr	a5,mstatus
    80006bb8:	ffffe737          	lui	a4,0xffffe
    80006bbc:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff17af>
    80006bc0:	00e7f7b3          	and	a5,a5,a4
    80006bc4:	00001737          	lui	a4,0x1
    80006bc8:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006bcc:	00e7e7b3          	or	a5,a5,a4
    80006bd0:	30079073          	csrw	mstatus,a5
    80006bd4:	00000797          	auipc	a5,0x0
    80006bd8:	16078793          	addi	a5,a5,352 # 80006d34 <system_main>
    80006bdc:	34179073          	csrw	mepc,a5
    80006be0:	00000793          	li	a5,0
    80006be4:	18079073          	csrw	satp,a5
    80006be8:	000107b7          	lui	a5,0x10
    80006bec:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006bf0:	30279073          	csrw	medeleg,a5
    80006bf4:	30379073          	csrw	mideleg,a5
    80006bf8:	104027f3          	csrr	a5,sie
    80006bfc:	2227e793          	ori	a5,a5,546
    80006c00:	10479073          	csrw	sie,a5
    80006c04:	fff00793          	li	a5,-1
    80006c08:	00a7d793          	srli	a5,a5,0xa
    80006c0c:	3b079073          	csrw	pmpaddr0,a5
    80006c10:	00f00793          	li	a5,15
    80006c14:	3a079073          	csrw	pmpcfg0,a5
    80006c18:	f14027f3          	csrr	a5,mhartid
    80006c1c:	0200c737          	lui	a4,0x200c
    80006c20:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006c24:	0007869b          	sext.w	a3,a5
    80006c28:	00269713          	slli	a4,a3,0x2
    80006c2c:	000f4637          	lui	a2,0xf4
    80006c30:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006c34:	00d70733          	add	a4,a4,a3
    80006c38:	0037979b          	slliw	a5,a5,0x3
    80006c3c:	020046b7          	lui	a3,0x2004
    80006c40:	00d787b3          	add	a5,a5,a3
    80006c44:	00c585b3          	add	a1,a1,a2
    80006c48:	00371693          	slli	a3,a4,0x3
    80006c4c:	00005717          	auipc	a4,0x5
    80006c50:	1a470713          	addi	a4,a4,420 # 8000bdf0 <timer_scratch>
    80006c54:	00b7b023          	sd	a1,0(a5)
    80006c58:	00d70733          	add	a4,a4,a3
    80006c5c:	00f73c23          	sd	a5,24(a4)
    80006c60:	02c73023          	sd	a2,32(a4)
    80006c64:	34071073          	csrw	mscratch,a4
    80006c68:	00000797          	auipc	a5,0x0
    80006c6c:	6e878793          	addi	a5,a5,1768 # 80007350 <timervec>
    80006c70:	30579073          	csrw	mtvec,a5
    80006c74:	300027f3          	csrr	a5,mstatus
    80006c78:	0087e793          	ori	a5,a5,8
    80006c7c:	30079073          	csrw	mstatus,a5
    80006c80:	304027f3          	csrr	a5,mie
    80006c84:	0807e793          	ori	a5,a5,128
    80006c88:	30479073          	csrw	mie,a5
    80006c8c:	f14027f3          	csrr	a5,mhartid
    80006c90:	0007879b          	sext.w	a5,a5
    80006c94:	00078213          	mv	tp,a5
    80006c98:	30200073          	mret
    80006c9c:	00813403          	ld	s0,8(sp)
    80006ca0:	01010113          	addi	sp,sp,16
    80006ca4:	00008067          	ret

0000000080006ca8 <timerinit>:
    80006ca8:	ff010113          	addi	sp,sp,-16
    80006cac:	00813423          	sd	s0,8(sp)
    80006cb0:	01010413          	addi	s0,sp,16
    80006cb4:	f14027f3          	csrr	a5,mhartid
    80006cb8:	0200c737          	lui	a4,0x200c
    80006cbc:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006cc0:	0007869b          	sext.w	a3,a5
    80006cc4:	00269713          	slli	a4,a3,0x2
    80006cc8:	000f4637          	lui	a2,0xf4
    80006ccc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006cd0:	00d70733          	add	a4,a4,a3
    80006cd4:	0037979b          	slliw	a5,a5,0x3
    80006cd8:	020046b7          	lui	a3,0x2004
    80006cdc:	00d787b3          	add	a5,a5,a3
    80006ce0:	00c585b3          	add	a1,a1,a2
    80006ce4:	00371693          	slli	a3,a4,0x3
    80006ce8:	00005717          	auipc	a4,0x5
    80006cec:	10870713          	addi	a4,a4,264 # 8000bdf0 <timer_scratch>
    80006cf0:	00b7b023          	sd	a1,0(a5)
    80006cf4:	00d70733          	add	a4,a4,a3
    80006cf8:	00f73c23          	sd	a5,24(a4)
    80006cfc:	02c73023          	sd	a2,32(a4)
    80006d00:	34071073          	csrw	mscratch,a4
    80006d04:	00000797          	auipc	a5,0x0
    80006d08:	64c78793          	addi	a5,a5,1612 # 80007350 <timervec>
    80006d0c:	30579073          	csrw	mtvec,a5
    80006d10:	300027f3          	csrr	a5,mstatus
    80006d14:	0087e793          	ori	a5,a5,8
    80006d18:	30079073          	csrw	mstatus,a5
    80006d1c:	304027f3          	csrr	a5,mie
    80006d20:	0807e793          	ori	a5,a5,128
    80006d24:	30479073          	csrw	mie,a5
    80006d28:	00813403          	ld	s0,8(sp)
    80006d2c:	01010113          	addi	sp,sp,16
    80006d30:	00008067          	ret

0000000080006d34 <system_main>:
    80006d34:	fe010113          	addi	sp,sp,-32
    80006d38:	00813823          	sd	s0,16(sp)
    80006d3c:	00913423          	sd	s1,8(sp)
    80006d40:	00113c23          	sd	ra,24(sp)
    80006d44:	02010413          	addi	s0,sp,32
    80006d48:	00000097          	auipc	ra,0x0
    80006d4c:	0c4080e7          	jalr	196(ra) # 80006e0c <cpuid>
    80006d50:	00005497          	auipc	s1,0x5
    80006d54:	fc048493          	addi	s1,s1,-64 # 8000bd10 <started>
    80006d58:	02050263          	beqz	a0,80006d7c <system_main+0x48>
    80006d5c:	0004a783          	lw	a5,0(s1)
    80006d60:	0007879b          	sext.w	a5,a5
    80006d64:	fe078ce3          	beqz	a5,80006d5c <system_main+0x28>
    80006d68:	0ff0000f          	fence
    80006d6c:	00003517          	auipc	a0,0x3
    80006d70:	88450513          	addi	a0,a0,-1916 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80006d74:	00001097          	auipc	ra,0x1
    80006d78:	a78080e7          	jalr	-1416(ra) # 800077ec <panic>
    80006d7c:	00001097          	auipc	ra,0x1
    80006d80:	9cc080e7          	jalr	-1588(ra) # 80007748 <consoleinit>
    80006d84:	00001097          	auipc	ra,0x1
    80006d88:	158080e7          	jalr	344(ra) # 80007edc <printfinit>
    80006d8c:	00002517          	auipc	a0,0x2
    80006d90:	6ec50513          	addi	a0,a0,1772 # 80009478 <CONSOLE_STATUS+0x468>
    80006d94:	00001097          	auipc	ra,0x1
    80006d98:	ab4080e7          	jalr	-1356(ra) # 80007848 <__printf>
    80006d9c:	00003517          	auipc	a0,0x3
    80006da0:	82450513          	addi	a0,a0,-2012 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80006da4:	00001097          	auipc	ra,0x1
    80006da8:	aa4080e7          	jalr	-1372(ra) # 80007848 <__printf>
    80006dac:	00002517          	auipc	a0,0x2
    80006db0:	6cc50513          	addi	a0,a0,1740 # 80009478 <CONSOLE_STATUS+0x468>
    80006db4:	00001097          	auipc	ra,0x1
    80006db8:	a94080e7          	jalr	-1388(ra) # 80007848 <__printf>
    80006dbc:	00001097          	auipc	ra,0x1
    80006dc0:	4ac080e7          	jalr	1196(ra) # 80008268 <kinit>
    80006dc4:	00000097          	auipc	ra,0x0
    80006dc8:	148080e7          	jalr	328(ra) # 80006f0c <trapinit>
    80006dcc:	00000097          	auipc	ra,0x0
    80006dd0:	16c080e7          	jalr	364(ra) # 80006f38 <trapinithart>
    80006dd4:	00000097          	auipc	ra,0x0
    80006dd8:	5bc080e7          	jalr	1468(ra) # 80007390 <plicinit>
    80006ddc:	00000097          	auipc	ra,0x0
    80006de0:	5dc080e7          	jalr	1500(ra) # 800073b8 <plicinithart>
    80006de4:	00000097          	auipc	ra,0x0
    80006de8:	078080e7          	jalr	120(ra) # 80006e5c <userinit>
    80006dec:	0ff0000f          	fence
    80006df0:	00100793          	li	a5,1
    80006df4:	00002517          	auipc	a0,0x2
    80006df8:	7e450513          	addi	a0,a0,2020 # 800095d8 <CONSOLE_STATUS+0x5c8>
    80006dfc:	00f4a023          	sw	a5,0(s1)
    80006e00:	00001097          	auipc	ra,0x1
    80006e04:	a48080e7          	jalr	-1464(ra) # 80007848 <__printf>
    80006e08:	0000006f          	j	80006e08 <system_main+0xd4>

0000000080006e0c <cpuid>:
    80006e0c:	ff010113          	addi	sp,sp,-16
    80006e10:	00813423          	sd	s0,8(sp)
    80006e14:	01010413          	addi	s0,sp,16
    80006e18:	00020513          	mv	a0,tp
    80006e1c:	00813403          	ld	s0,8(sp)
    80006e20:	0005051b          	sext.w	a0,a0
    80006e24:	01010113          	addi	sp,sp,16
    80006e28:	00008067          	ret

0000000080006e2c <mycpu>:
    80006e2c:	ff010113          	addi	sp,sp,-16
    80006e30:	00813423          	sd	s0,8(sp)
    80006e34:	01010413          	addi	s0,sp,16
    80006e38:	00020793          	mv	a5,tp
    80006e3c:	00813403          	ld	s0,8(sp)
    80006e40:	0007879b          	sext.w	a5,a5
    80006e44:	00779793          	slli	a5,a5,0x7
    80006e48:	00006517          	auipc	a0,0x6
    80006e4c:	fd850513          	addi	a0,a0,-40 # 8000ce20 <cpus>
    80006e50:	00f50533          	add	a0,a0,a5
    80006e54:	01010113          	addi	sp,sp,16
    80006e58:	00008067          	ret

0000000080006e5c <userinit>:
    80006e5c:	ff010113          	addi	sp,sp,-16
    80006e60:	00813423          	sd	s0,8(sp)
    80006e64:	01010413          	addi	s0,sp,16
    80006e68:	00813403          	ld	s0,8(sp)
    80006e6c:	01010113          	addi	sp,sp,16
    80006e70:	ffffb317          	auipc	t1,0xffffb
    80006e74:	dc830067          	jr	-568(t1) # 80001c38 <main>

0000000080006e78 <either_copyout>:
    80006e78:	ff010113          	addi	sp,sp,-16
    80006e7c:	00813023          	sd	s0,0(sp)
    80006e80:	00113423          	sd	ra,8(sp)
    80006e84:	01010413          	addi	s0,sp,16
    80006e88:	02051663          	bnez	a0,80006eb4 <either_copyout+0x3c>
    80006e8c:	00058513          	mv	a0,a1
    80006e90:	00060593          	mv	a1,a2
    80006e94:	0006861b          	sext.w	a2,a3
    80006e98:	00002097          	auipc	ra,0x2
    80006e9c:	c5c080e7          	jalr	-932(ra) # 80008af4 <__memmove>
    80006ea0:	00813083          	ld	ra,8(sp)
    80006ea4:	00013403          	ld	s0,0(sp)
    80006ea8:	00000513          	li	a0,0
    80006eac:	01010113          	addi	sp,sp,16
    80006eb0:	00008067          	ret
    80006eb4:	00002517          	auipc	a0,0x2
    80006eb8:	76450513          	addi	a0,a0,1892 # 80009618 <CONSOLE_STATUS+0x608>
    80006ebc:	00001097          	auipc	ra,0x1
    80006ec0:	930080e7          	jalr	-1744(ra) # 800077ec <panic>

0000000080006ec4 <either_copyin>:
    80006ec4:	ff010113          	addi	sp,sp,-16
    80006ec8:	00813023          	sd	s0,0(sp)
    80006ecc:	00113423          	sd	ra,8(sp)
    80006ed0:	01010413          	addi	s0,sp,16
    80006ed4:	02059463          	bnez	a1,80006efc <either_copyin+0x38>
    80006ed8:	00060593          	mv	a1,a2
    80006edc:	0006861b          	sext.w	a2,a3
    80006ee0:	00002097          	auipc	ra,0x2
    80006ee4:	c14080e7          	jalr	-1004(ra) # 80008af4 <__memmove>
    80006ee8:	00813083          	ld	ra,8(sp)
    80006eec:	00013403          	ld	s0,0(sp)
    80006ef0:	00000513          	li	a0,0
    80006ef4:	01010113          	addi	sp,sp,16
    80006ef8:	00008067          	ret
    80006efc:	00002517          	auipc	a0,0x2
    80006f00:	74450513          	addi	a0,a0,1860 # 80009640 <CONSOLE_STATUS+0x630>
    80006f04:	00001097          	auipc	ra,0x1
    80006f08:	8e8080e7          	jalr	-1816(ra) # 800077ec <panic>

0000000080006f0c <trapinit>:
    80006f0c:	ff010113          	addi	sp,sp,-16
    80006f10:	00813423          	sd	s0,8(sp)
    80006f14:	01010413          	addi	s0,sp,16
    80006f18:	00813403          	ld	s0,8(sp)
    80006f1c:	00002597          	auipc	a1,0x2
    80006f20:	74c58593          	addi	a1,a1,1868 # 80009668 <CONSOLE_STATUS+0x658>
    80006f24:	00006517          	auipc	a0,0x6
    80006f28:	f7c50513          	addi	a0,a0,-132 # 8000cea0 <tickslock>
    80006f2c:	01010113          	addi	sp,sp,16
    80006f30:	00001317          	auipc	t1,0x1
    80006f34:	5c830067          	jr	1480(t1) # 800084f8 <initlock>

0000000080006f38 <trapinithart>:
    80006f38:	ff010113          	addi	sp,sp,-16
    80006f3c:	00813423          	sd	s0,8(sp)
    80006f40:	01010413          	addi	s0,sp,16
    80006f44:	00000797          	auipc	a5,0x0
    80006f48:	2fc78793          	addi	a5,a5,764 # 80007240 <kernelvec>
    80006f4c:	10579073          	csrw	stvec,a5
    80006f50:	00813403          	ld	s0,8(sp)
    80006f54:	01010113          	addi	sp,sp,16
    80006f58:	00008067          	ret

0000000080006f5c <usertrap>:
    80006f5c:	ff010113          	addi	sp,sp,-16
    80006f60:	00813423          	sd	s0,8(sp)
    80006f64:	01010413          	addi	s0,sp,16
    80006f68:	00813403          	ld	s0,8(sp)
    80006f6c:	01010113          	addi	sp,sp,16
    80006f70:	00008067          	ret

0000000080006f74 <usertrapret>:
    80006f74:	ff010113          	addi	sp,sp,-16
    80006f78:	00813423          	sd	s0,8(sp)
    80006f7c:	01010413          	addi	s0,sp,16
    80006f80:	00813403          	ld	s0,8(sp)
    80006f84:	01010113          	addi	sp,sp,16
    80006f88:	00008067          	ret

0000000080006f8c <kerneltrap>:
    80006f8c:	fe010113          	addi	sp,sp,-32
    80006f90:	00813823          	sd	s0,16(sp)
    80006f94:	00113c23          	sd	ra,24(sp)
    80006f98:	00913423          	sd	s1,8(sp)
    80006f9c:	02010413          	addi	s0,sp,32
    80006fa0:	142025f3          	csrr	a1,scause
    80006fa4:	100027f3          	csrr	a5,sstatus
    80006fa8:	0027f793          	andi	a5,a5,2
    80006fac:	10079c63          	bnez	a5,800070c4 <kerneltrap+0x138>
    80006fb0:	142027f3          	csrr	a5,scause
    80006fb4:	0207ce63          	bltz	a5,80006ff0 <kerneltrap+0x64>
    80006fb8:	00002517          	auipc	a0,0x2
    80006fbc:	6f850513          	addi	a0,a0,1784 # 800096b0 <CONSOLE_STATUS+0x6a0>
    80006fc0:	00001097          	auipc	ra,0x1
    80006fc4:	888080e7          	jalr	-1912(ra) # 80007848 <__printf>
    80006fc8:	141025f3          	csrr	a1,sepc
    80006fcc:	14302673          	csrr	a2,stval
    80006fd0:	00002517          	auipc	a0,0x2
    80006fd4:	6f050513          	addi	a0,a0,1776 # 800096c0 <CONSOLE_STATUS+0x6b0>
    80006fd8:	00001097          	auipc	ra,0x1
    80006fdc:	870080e7          	jalr	-1936(ra) # 80007848 <__printf>
    80006fe0:	00002517          	auipc	a0,0x2
    80006fe4:	6f850513          	addi	a0,a0,1784 # 800096d8 <CONSOLE_STATUS+0x6c8>
    80006fe8:	00001097          	auipc	ra,0x1
    80006fec:	804080e7          	jalr	-2044(ra) # 800077ec <panic>
    80006ff0:	0ff7f713          	andi	a4,a5,255
    80006ff4:	00900693          	li	a3,9
    80006ff8:	04d70063          	beq	a4,a3,80007038 <kerneltrap+0xac>
    80006ffc:	fff00713          	li	a4,-1
    80007000:	03f71713          	slli	a4,a4,0x3f
    80007004:	00170713          	addi	a4,a4,1
    80007008:	fae798e3          	bne	a5,a4,80006fb8 <kerneltrap+0x2c>
    8000700c:	00000097          	auipc	ra,0x0
    80007010:	e00080e7          	jalr	-512(ra) # 80006e0c <cpuid>
    80007014:	06050663          	beqz	a0,80007080 <kerneltrap+0xf4>
    80007018:	144027f3          	csrr	a5,sip
    8000701c:	ffd7f793          	andi	a5,a5,-3
    80007020:	14479073          	csrw	sip,a5
    80007024:	01813083          	ld	ra,24(sp)
    80007028:	01013403          	ld	s0,16(sp)
    8000702c:	00813483          	ld	s1,8(sp)
    80007030:	02010113          	addi	sp,sp,32
    80007034:	00008067          	ret
    80007038:	00000097          	auipc	ra,0x0
    8000703c:	3cc080e7          	jalr	972(ra) # 80007404 <plic_claim>
    80007040:	00a00793          	li	a5,10
    80007044:	00050493          	mv	s1,a0
    80007048:	06f50863          	beq	a0,a5,800070b8 <kerneltrap+0x12c>
    8000704c:	fc050ce3          	beqz	a0,80007024 <kerneltrap+0x98>
    80007050:	00050593          	mv	a1,a0
    80007054:	00002517          	auipc	a0,0x2
    80007058:	63c50513          	addi	a0,a0,1596 # 80009690 <CONSOLE_STATUS+0x680>
    8000705c:	00000097          	auipc	ra,0x0
    80007060:	7ec080e7          	jalr	2028(ra) # 80007848 <__printf>
    80007064:	01013403          	ld	s0,16(sp)
    80007068:	01813083          	ld	ra,24(sp)
    8000706c:	00048513          	mv	a0,s1
    80007070:	00813483          	ld	s1,8(sp)
    80007074:	02010113          	addi	sp,sp,32
    80007078:	00000317          	auipc	t1,0x0
    8000707c:	3c430067          	jr	964(t1) # 8000743c <plic_complete>
    80007080:	00006517          	auipc	a0,0x6
    80007084:	e2050513          	addi	a0,a0,-480 # 8000cea0 <tickslock>
    80007088:	00001097          	auipc	ra,0x1
    8000708c:	494080e7          	jalr	1172(ra) # 8000851c <acquire>
    80007090:	00005717          	auipc	a4,0x5
    80007094:	c8470713          	addi	a4,a4,-892 # 8000bd14 <ticks>
    80007098:	00072783          	lw	a5,0(a4)
    8000709c:	00006517          	auipc	a0,0x6
    800070a0:	e0450513          	addi	a0,a0,-508 # 8000cea0 <tickslock>
    800070a4:	0017879b          	addiw	a5,a5,1
    800070a8:	00f72023          	sw	a5,0(a4)
    800070ac:	00001097          	auipc	ra,0x1
    800070b0:	53c080e7          	jalr	1340(ra) # 800085e8 <release>
    800070b4:	f65ff06f          	j	80007018 <kerneltrap+0x8c>
    800070b8:	00001097          	auipc	ra,0x1
    800070bc:	098080e7          	jalr	152(ra) # 80008150 <uartintr>
    800070c0:	fa5ff06f          	j	80007064 <kerneltrap+0xd8>
    800070c4:	00002517          	auipc	a0,0x2
    800070c8:	5ac50513          	addi	a0,a0,1452 # 80009670 <CONSOLE_STATUS+0x660>
    800070cc:	00000097          	auipc	ra,0x0
    800070d0:	720080e7          	jalr	1824(ra) # 800077ec <panic>

00000000800070d4 <clockintr>:
    800070d4:	fe010113          	addi	sp,sp,-32
    800070d8:	00813823          	sd	s0,16(sp)
    800070dc:	00913423          	sd	s1,8(sp)
    800070e0:	00113c23          	sd	ra,24(sp)
    800070e4:	02010413          	addi	s0,sp,32
    800070e8:	00006497          	auipc	s1,0x6
    800070ec:	db848493          	addi	s1,s1,-584 # 8000cea0 <tickslock>
    800070f0:	00048513          	mv	a0,s1
    800070f4:	00001097          	auipc	ra,0x1
    800070f8:	428080e7          	jalr	1064(ra) # 8000851c <acquire>
    800070fc:	00005717          	auipc	a4,0x5
    80007100:	c1870713          	addi	a4,a4,-1000 # 8000bd14 <ticks>
    80007104:	00072783          	lw	a5,0(a4)
    80007108:	01013403          	ld	s0,16(sp)
    8000710c:	01813083          	ld	ra,24(sp)
    80007110:	00048513          	mv	a0,s1
    80007114:	0017879b          	addiw	a5,a5,1
    80007118:	00813483          	ld	s1,8(sp)
    8000711c:	00f72023          	sw	a5,0(a4)
    80007120:	02010113          	addi	sp,sp,32
    80007124:	00001317          	auipc	t1,0x1
    80007128:	4c430067          	jr	1220(t1) # 800085e8 <release>

000000008000712c <devintr>:
    8000712c:	142027f3          	csrr	a5,scause
    80007130:	00000513          	li	a0,0
    80007134:	0007c463          	bltz	a5,8000713c <devintr+0x10>
    80007138:	00008067          	ret
    8000713c:	fe010113          	addi	sp,sp,-32
    80007140:	00813823          	sd	s0,16(sp)
    80007144:	00113c23          	sd	ra,24(sp)
    80007148:	00913423          	sd	s1,8(sp)
    8000714c:	02010413          	addi	s0,sp,32
    80007150:	0ff7f713          	andi	a4,a5,255
    80007154:	00900693          	li	a3,9
    80007158:	04d70c63          	beq	a4,a3,800071b0 <devintr+0x84>
    8000715c:	fff00713          	li	a4,-1
    80007160:	03f71713          	slli	a4,a4,0x3f
    80007164:	00170713          	addi	a4,a4,1
    80007168:	00e78c63          	beq	a5,a4,80007180 <devintr+0x54>
    8000716c:	01813083          	ld	ra,24(sp)
    80007170:	01013403          	ld	s0,16(sp)
    80007174:	00813483          	ld	s1,8(sp)
    80007178:	02010113          	addi	sp,sp,32
    8000717c:	00008067          	ret
    80007180:	00000097          	auipc	ra,0x0
    80007184:	c8c080e7          	jalr	-884(ra) # 80006e0c <cpuid>
    80007188:	06050663          	beqz	a0,800071f4 <devintr+0xc8>
    8000718c:	144027f3          	csrr	a5,sip
    80007190:	ffd7f793          	andi	a5,a5,-3
    80007194:	14479073          	csrw	sip,a5
    80007198:	01813083          	ld	ra,24(sp)
    8000719c:	01013403          	ld	s0,16(sp)
    800071a0:	00813483          	ld	s1,8(sp)
    800071a4:	00200513          	li	a0,2
    800071a8:	02010113          	addi	sp,sp,32
    800071ac:	00008067          	ret
    800071b0:	00000097          	auipc	ra,0x0
    800071b4:	254080e7          	jalr	596(ra) # 80007404 <plic_claim>
    800071b8:	00a00793          	li	a5,10
    800071bc:	00050493          	mv	s1,a0
    800071c0:	06f50663          	beq	a0,a5,8000722c <devintr+0x100>
    800071c4:	00100513          	li	a0,1
    800071c8:	fa0482e3          	beqz	s1,8000716c <devintr+0x40>
    800071cc:	00048593          	mv	a1,s1
    800071d0:	00002517          	auipc	a0,0x2
    800071d4:	4c050513          	addi	a0,a0,1216 # 80009690 <CONSOLE_STATUS+0x680>
    800071d8:	00000097          	auipc	ra,0x0
    800071dc:	670080e7          	jalr	1648(ra) # 80007848 <__printf>
    800071e0:	00048513          	mv	a0,s1
    800071e4:	00000097          	auipc	ra,0x0
    800071e8:	258080e7          	jalr	600(ra) # 8000743c <plic_complete>
    800071ec:	00100513          	li	a0,1
    800071f0:	f7dff06f          	j	8000716c <devintr+0x40>
    800071f4:	00006517          	auipc	a0,0x6
    800071f8:	cac50513          	addi	a0,a0,-852 # 8000cea0 <tickslock>
    800071fc:	00001097          	auipc	ra,0x1
    80007200:	320080e7          	jalr	800(ra) # 8000851c <acquire>
    80007204:	00005717          	auipc	a4,0x5
    80007208:	b1070713          	addi	a4,a4,-1264 # 8000bd14 <ticks>
    8000720c:	00072783          	lw	a5,0(a4)
    80007210:	00006517          	auipc	a0,0x6
    80007214:	c9050513          	addi	a0,a0,-880 # 8000cea0 <tickslock>
    80007218:	0017879b          	addiw	a5,a5,1
    8000721c:	00f72023          	sw	a5,0(a4)
    80007220:	00001097          	auipc	ra,0x1
    80007224:	3c8080e7          	jalr	968(ra) # 800085e8 <release>
    80007228:	f65ff06f          	j	8000718c <devintr+0x60>
    8000722c:	00001097          	auipc	ra,0x1
    80007230:	f24080e7          	jalr	-220(ra) # 80008150 <uartintr>
    80007234:	fadff06f          	j	800071e0 <devintr+0xb4>
	...

0000000080007240 <kernelvec>:
    80007240:	f0010113          	addi	sp,sp,-256
    80007244:	00113023          	sd	ra,0(sp)
    80007248:	00213423          	sd	sp,8(sp)
    8000724c:	00313823          	sd	gp,16(sp)
    80007250:	00413c23          	sd	tp,24(sp)
    80007254:	02513023          	sd	t0,32(sp)
    80007258:	02613423          	sd	t1,40(sp)
    8000725c:	02713823          	sd	t2,48(sp)
    80007260:	02813c23          	sd	s0,56(sp)
    80007264:	04913023          	sd	s1,64(sp)
    80007268:	04a13423          	sd	a0,72(sp)
    8000726c:	04b13823          	sd	a1,80(sp)
    80007270:	04c13c23          	sd	a2,88(sp)
    80007274:	06d13023          	sd	a3,96(sp)
    80007278:	06e13423          	sd	a4,104(sp)
    8000727c:	06f13823          	sd	a5,112(sp)
    80007280:	07013c23          	sd	a6,120(sp)
    80007284:	09113023          	sd	a7,128(sp)
    80007288:	09213423          	sd	s2,136(sp)
    8000728c:	09313823          	sd	s3,144(sp)
    80007290:	09413c23          	sd	s4,152(sp)
    80007294:	0b513023          	sd	s5,160(sp)
    80007298:	0b613423          	sd	s6,168(sp)
    8000729c:	0b713823          	sd	s7,176(sp)
    800072a0:	0b813c23          	sd	s8,184(sp)
    800072a4:	0d913023          	sd	s9,192(sp)
    800072a8:	0da13423          	sd	s10,200(sp)
    800072ac:	0db13823          	sd	s11,208(sp)
    800072b0:	0dc13c23          	sd	t3,216(sp)
    800072b4:	0fd13023          	sd	t4,224(sp)
    800072b8:	0fe13423          	sd	t5,232(sp)
    800072bc:	0ff13823          	sd	t6,240(sp)
    800072c0:	ccdff0ef          	jal	ra,80006f8c <kerneltrap>
    800072c4:	00013083          	ld	ra,0(sp)
    800072c8:	00813103          	ld	sp,8(sp)
    800072cc:	01013183          	ld	gp,16(sp)
    800072d0:	02013283          	ld	t0,32(sp)
    800072d4:	02813303          	ld	t1,40(sp)
    800072d8:	03013383          	ld	t2,48(sp)
    800072dc:	03813403          	ld	s0,56(sp)
    800072e0:	04013483          	ld	s1,64(sp)
    800072e4:	04813503          	ld	a0,72(sp)
    800072e8:	05013583          	ld	a1,80(sp)
    800072ec:	05813603          	ld	a2,88(sp)
    800072f0:	06013683          	ld	a3,96(sp)
    800072f4:	06813703          	ld	a4,104(sp)
    800072f8:	07013783          	ld	a5,112(sp)
    800072fc:	07813803          	ld	a6,120(sp)
    80007300:	08013883          	ld	a7,128(sp)
    80007304:	08813903          	ld	s2,136(sp)
    80007308:	09013983          	ld	s3,144(sp)
    8000730c:	09813a03          	ld	s4,152(sp)
    80007310:	0a013a83          	ld	s5,160(sp)
    80007314:	0a813b03          	ld	s6,168(sp)
    80007318:	0b013b83          	ld	s7,176(sp)
    8000731c:	0b813c03          	ld	s8,184(sp)
    80007320:	0c013c83          	ld	s9,192(sp)
    80007324:	0c813d03          	ld	s10,200(sp)
    80007328:	0d013d83          	ld	s11,208(sp)
    8000732c:	0d813e03          	ld	t3,216(sp)
    80007330:	0e013e83          	ld	t4,224(sp)
    80007334:	0e813f03          	ld	t5,232(sp)
    80007338:	0f013f83          	ld	t6,240(sp)
    8000733c:	10010113          	addi	sp,sp,256
    80007340:	10200073          	sret
    80007344:	00000013          	nop
    80007348:	00000013          	nop
    8000734c:	00000013          	nop

0000000080007350 <timervec>:
    80007350:	34051573          	csrrw	a0,mscratch,a0
    80007354:	00b53023          	sd	a1,0(a0)
    80007358:	00c53423          	sd	a2,8(a0)
    8000735c:	00d53823          	sd	a3,16(a0)
    80007360:	01853583          	ld	a1,24(a0)
    80007364:	02053603          	ld	a2,32(a0)
    80007368:	0005b683          	ld	a3,0(a1)
    8000736c:	00c686b3          	add	a3,a3,a2
    80007370:	00d5b023          	sd	a3,0(a1)
    80007374:	00200593          	li	a1,2
    80007378:	14459073          	csrw	sip,a1
    8000737c:	01053683          	ld	a3,16(a0)
    80007380:	00853603          	ld	a2,8(a0)
    80007384:	00053583          	ld	a1,0(a0)
    80007388:	34051573          	csrrw	a0,mscratch,a0
    8000738c:	30200073          	mret

0000000080007390 <plicinit>:
    80007390:	ff010113          	addi	sp,sp,-16
    80007394:	00813423          	sd	s0,8(sp)
    80007398:	01010413          	addi	s0,sp,16
    8000739c:	00813403          	ld	s0,8(sp)
    800073a0:	0c0007b7          	lui	a5,0xc000
    800073a4:	00100713          	li	a4,1
    800073a8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800073ac:	00e7a223          	sw	a4,4(a5)
    800073b0:	01010113          	addi	sp,sp,16
    800073b4:	00008067          	ret

00000000800073b8 <plicinithart>:
    800073b8:	ff010113          	addi	sp,sp,-16
    800073bc:	00813023          	sd	s0,0(sp)
    800073c0:	00113423          	sd	ra,8(sp)
    800073c4:	01010413          	addi	s0,sp,16
    800073c8:	00000097          	auipc	ra,0x0
    800073cc:	a44080e7          	jalr	-1468(ra) # 80006e0c <cpuid>
    800073d0:	0085171b          	slliw	a4,a0,0x8
    800073d4:	0c0027b7          	lui	a5,0xc002
    800073d8:	00e787b3          	add	a5,a5,a4
    800073dc:	40200713          	li	a4,1026
    800073e0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800073e4:	00813083          	ld	ra,8(sp)
    800073e8:	00013403          	ld	s0,0(sp)
    800073ec:	00d5151b          	slliw	a0,a0,0xd
    800073f0:	0c2017b7          	lui	a5,0xc201
    800073f4:	00a78533          	add	a0,a5,a0
    800073f8:	00052023          	sw	zero,0(a0)
    800073fc:	01010113          	addi	sp,sp,16
    80007400:	00008067          	ret

0000000080007404 <plic_claim>:
    80007404:	ff010113          	addi	sp,sp,-16
    80007408:	00813023          	sd	s0,0(sp)
    8000740c:	00113423          	sd	ra,8(sp)
    80007410:	01010413          	addi	s0,sp,16
    80007414:	00000097          	auipc	ra,0x0
    80007418:	9f8080e7          	jalr	-1544(ra) # 80006e0c <cpuid>
    8000741c:	00813083          	ld	ra,8(sp)
    80007420:	00013403          	ld	s0,0(sp)
    80007424:	00d5151b          	slliw	a0,a0,0xd
    80007428:	0c2017b7          	lui	a5,0xc201
    8000742c:	00a78533          	add	a0,a5,a0
    80007430:	00452503          	lw	a0,4(a0)
    80007434:	01010113          	addi	sp,sp,16
    80007438:	00008067          	ret

000000008000743c <plic_complete>:
    8000743c:	fe010113          	addi	sp,sp,-32
    80007440:	00813823          	sd	s0,16(sp)
    80007444:	00913423          	sd	s1,8(sp)
    80007448:	00113c23          	sd	ra,24(sp)
    8000744c:	02010413          	addi	s0,sp,32
    80007450:	00050493          	mv	s1,a0
    80007454:	00000097          	auipc	ra,0x0
    80007458:	9b8080e7          	jalr	-1608(ra) # 80006e0c <cpuid>
    8000745c:	01813083          	ld	ra,24(sp)
    80007460:	01013403          	ld	s0,16(sp)
    80007464:	00d5179b          	slliw	a5,a0,0xd
    80007468:	0c201737          	lui	a4,0xc201
    8000746c:	00f707b3          	add	a5,a4,a5
    80007470:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007474:	00813483          	ld	s1,8(sp)
    80007478:	02010113          	addi	sp,sp,32
    8000747c:	00008067          	ret

0000000080007480 <consolewrite>:
    80007480:	fb010113          	addi	sp,sp,-80
    80007484:	04813023          	sd	s0,64(sp)
    80007488:	04113423          	sd	ra,72(sp)
    8000748c:	02913c23          	sd	s1,56(sp)
    80007490:	03213823          	sd	s2,48(sp)
    80007494:	03313423          	sd	s3,40(sp)
    80007498:	03413023          	sd	s4,32(sp)
    8000749c:	01513c23          	sd	s5,24(sp)
    800074a0:	05010413          	addi	s0,sp,80
    800074a4:	06c05c63          	blez	a2,8000751c <consolewrite+0x9c>
    800074a8:	00060993          	mv	s3,a2
    800074ac:	00050a13          	mv	s4,a0
    800074b0:	00058493          	mv	s1,a1
    800074b4:	00000913          	li	s2,0
    800074b8:	fff00a93          	li	s5,-1
    800074bc:	01c0006f          	j	800074d8 <consolewrite+0x58>
    800074c0:	fbf44503          	lbu	a0,-65(s0)
    800074c4:	0019091b          	addiw	s2,s2,1
    800074c8:	00148493          	addi	s1,s1,1
    800074cc:	00001097          	auipc	ra,0x1
    800074d0:	a9c080e7          	jalr	-1380(ra) # 80007f68 <uartputc>
    800074d4:	03298063          	beq	s3,s2,800074f4 <consolewrite+0x74>
    800074d8:	00048613          	mv	a2,s1
    800074dc:	00100693          	li	a3,1
    800074e0:	000a0593          	mv	a1,s4
    800074e4:	fbf40513          	addi	a0,s0,-65
    800074e8:	00000097          	auipc	ra,0x0
    800074ec:	9dc080e7          	jalr	-1572(ra) # 80006ec4 <either_copyin>
    800074f0:	fd5518e3          	bne	a0,s5,800074c0 <consolewrite+0x40>
    800074f4:	04813083          	ld	ra,72(sp)
    800074f8:	04013403          	ld	s0,64(sp)
    800074fc:	03813483          	ld	s1,56(sp)
    80007500:	02813983          	ld	s3,40(sp)
    80007504:	02013a03          	ld	s4,32(sp)
    80007508:	01813a83          	ld	s5,24(sp)
    8000750c:	00090513          	mv	a0,s2
    80007510:	03013903          	ld	s2,48(sp)
    80007514:	05010113          	addi	sp,sp,80
    80007518:	00008067          	ret
    8000751c:	00000913          	li	s2,0
    80007520:	fd5ff06f          	j	800074f4 <consolewrite+0x74>

0000000080007524 <consoleread>:
    80007524:	f9010113          	addi	sp,sp,-112
    80007528:	06813023          	sd	s0,96(sp)
    8000752c:	04913c23          	sd	s1,88(sp)
    80007530:	05213823          	sd	s2,80(sp)
    80007534:	05313423          	sd	s3,72(sp)
    80007538:	05413023          	sd	s4,64(sp)
    8000753c:	03513c23          	sd	s5,56(sp)
    80007540:	03613823          	sd	s6,48(sp)
    80007544:	03713423          	sd	s7,40(sp)
    80007548:	03813023          	sd	s8,32(sp)
    8000754c:	06113423          	sd	ra,104(sp)
    80007550:	01913c23          	sd	s9,24(sp)
    80007554:	07010413          	addi	s0,sp,112
    80007558:	00060b93          	mv	s7,a2
    8000755c:	00050913          	mv	s2,a0
    80007560:	00058c13          	mv	s8,a1
    80007564:	00060b1b          	sext.w	s6,a2
    80007568:	00006497          	auipc	s1,0x6
    8000756c:	96048493          	addi	s1,s1,-1696 # 8000cec8 <cons>
    80007570:	00400993          	li	s3,4
    80007574:	fff00a13          	li	s4,-1
    80007578:	00a00a93          	li	s5,10
    8000757c:	05705e63          	blez	s7,800075d8 <consoleread+0xb4>
    80007580:	09c4a703          	lw	a4,156(s1)
    80007584:	0984a783          	lw	a5,152(s1)
    80007588:	0007071b          	sext.w	a4,a4
    8000758c:	08e78463          	beq	a5,a4,80007614 <consoleread+0xf0>
    80007590:	07f7f713          	andi	a4,a5,127
    80007594:	00e48733          	add	a4,s1,a4
    80007598:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000759c:	0017869b          	addiw	a3,a5,1
    800075a0:	08d4ac23          	sw	a3,152(s1)
    800075a4:	00070c9b          	sext.w	s9,a4
    800075a8:	0b370663          	beq	a4,s3,80007654 <consoleread+0x130>
    800075ac:	00100693          	li	a3,1
    800075b0:	f9f40613          	addi	a2,s0,-97
    800075b4:	000c0593          	mv	a1,s8
    800075b8:	00090513          	mv	a0,s2
    800075bc:	f8e40fa3          	sb	a4,-97(s0)
    800075c0:	00000097          	auipc	ra,0x0
    800075c4:	8b8080e7          	jalr	-1864(ra) # 80006e78 <either_copyout>
    800075c8:	01450863          	beq	a0,s4,800075d8 <consoleread+0xb4>
    800075cc:	001c0c13          	addi	s8,s8,1
    800075d0:	fffb8b9b          	addiw	s7,s7,-1
    800075d4:	fb5c94e3          	bne	s9,s5,8000757c <consoleread+0x58>
    800075d8:	000b851b          	sext.w	a0,s7
    800075dc:	06813083          	ld	ra,104(sp)
    800075e0:	06013403          	ld	s0,96(sp)
    800075e4:	05813483          	ld	s1,88(sp)
    800075e8:	05013903          	ld	s2,80(sp)
    800075ec:	04813983          	ld	s3,72(sp)
    800075f0:	04013a03          	ld	s4,64(sp)
    800075f4:	03813a83          	ld	s5,56(sp)
    800075f8:	02813b83          	ld	s7,40(sp)
    800075fc:	02013c03          	ld	s8,32(sp)
    80007600:	01813c83          	ld	s9,24(sp)
    80007604:	40ab053b          	subw	a0,s6,a0
    80007608:	03013b03          	ld	s6,48(sp)
    8000760c:	07010113          	addi	sp,sp,112
    80007610:	00008067          	ret
    80007614:	00001097          	auipc	ra,0x1
    80007618:	1d8080e7          	jalr	472(ra) # 800087ec <push_on>
    8000761c:	0984a703          	lw	a4,152(s1)
    80007620:	09c4a783          	lw	a5,156(s1)
    80007624:	0007879b          	sext.w	a5,a5
    80007628:	fef70ce3          	beq	a4,a5,80007620 <consoleread+0xfc>
    8000762c:	00001097          	auipc	ra,0x1
    80007630:	234080e7          	jalr	564(ra) # 80008860 <pop_on>
    80007634:	0984a783          	lw	a5,152(s1)
    80007638:	07f7f713          	andi	a4,a5,127
    8000763c:	00e48733          	add	a4,s1,a4
    80007640:	01874703          	lbu	a4,24(a4)
    80007644:	0017869b          	addiw	a3,a5,1
    80007648:	08d4ac23          	sw	a3,152(s1)
    8000764c:	00070c9b          	sext.w	s9,a4
    80007650:	f5371ee3          	bne	a4,s3,800075ac <consoleread+0x88>
    80007654:	000b851b          	sext.w	a0,s7
    80007658:	f96bf2e3          	bgeu	s7,s6,800075dc <consoleread+0xb8>
    8000765c:	08f4ac23          	sw	a5,152(s1)
    80007660:	f7dff06f          	j	800075dc <consoleread+0xb8>

0000000080007664 <consputc>:
    80007664:	10000793          	li	a5,256
    80007668:	00f50663          	beq	a0,a5,80007674 <consputc+0x10>
    8000766c:	00001317          	auipc	t1,0x1
    80007670:	9f430067          	jr	-1548(t1) # 80008060 <uartputc_sync>
    80007674:	ff010113          	addi	sp,sp,-16
    80007678:	00113423          	sd	ra,8(sp)
    8000767c:	00813023          	sd	s0,0(sp)
    80007680:	01010413          	addi	s0,sp,16
    80007684:	00800513          	li	a0,8
    80007688:	00001097          	auipc	ra,0x1
    8000768c:	9d8080e7          	jalr	-1576(ra) # 80008060 <uartputc_sync>
    80007690:	02000513          	li	a0,32
    80007694:	00001097          	auipc	ra,0x1
    80007698:	9cc080e7          	jalr	-1588(ra) # 80008060 <uartputc_sync>
    8000769c:	00013403          	ld	s0,0(sp)
    800076a0:	00813083          	ld	ra,8(sp)
    800076a4:	00800513          	li	a0,8
    800076a8:	01010113          	addi	sp,sp,16
    800076ac:	00001317          	auipc	t1,0x1
    800076b0:	9b430067          	jr	-1612(t1) # 80008060 <uartputc_sync>

00000000800076b4 <consoleintr>:
    800076b4:	fe010113          	addi	sp,sp,-32
    800076b8:	00813823          	sd	s0,16(sp)
    800076bc:	00913423          	sd	s1,8(sp)
    800076c0:	01213023          	sd	s2,0(sp)
    800076c4:	00113c23          	sd	ra,24(sp)
    800076c8:	02010413          	addi	s0,sp,32
    800076cc:	00005917          	auipc	s2,0x5
    800076d0:	7fc90913          	addi	s2,s2,2044 # 8000cec8 <cons>
    800076d4:	00050493          	mv	s1,a0
    800076d8:	00090513          	mv	a0,s2
    800076dc:	00001097          	auipc	ra,0x1
    800076e0:	e40080e7          	jalr	-448(ra) # 8000851c <acquire>
    800076e4:	02048c63          	beqz	s1,8000771c <consoleintr+0x68>
    800076e8:	0a092783          	lw	a5,160(s2)
    800076ec:	09892703          	lw	a4,152(s2)
    800076f0:	07f00693          	li	a3,127
    800076f4:	40e7873b          	subw	a4,a5,a4
    800076f8:	02e6e263          	bltu	a3,a4,8000771c <consoleintr+0x68>
    800076fc:	00d00713          	li	a4,13
    80007700:	04e48063          	beq	s1,a4,80007740 <consoleintr+0x8c>
    80007704:	07f7f713          	andi	a4,a5,127
    80007708:	00e90733          	add	a4,s2,a4
    8000770c:	0017879b          	addiw	a5,a5,1
    80007710:	0af92023          	sw	a5,160(s2)
    80007714:	00970c23          	sb	s1,24(a4)
    80007718:	08f92e23          	sw	a5,156(s2)
    8000771c:	01013403          	ld	s0,16(sp)
    80007720:	01813083          	ld	ra,24(sp)
    80007724:	00813483          	ld	s1,8(sp)
    80007728:	00013903          	ld	s2,0(sp)
    8000772c:	00005517          	auipc	a0,0x5
    80007730:	79c50513          	addi	a0,a0,1948 # 8000cec8 <cons>
    80007734:	02010113          	addi	sp,sp,32
    80007738:	00001317          	auipc	t1,0x1
    8000773c:	eb030067          	jr	-336(t1) # 800085e8 <release>
    80007740:	00a00493          	li	s1,10
    80007744:	fc1ff06f          	j	80007704 <consoleintr+0x50>

0000000080007748 <consoleinit>:
    80007748:	fe010113          	addi	sp,sp,-32
    8000774c:	00113c23          	sd	ra,24(sp)
    80007750:	00813823          	sd	s0,16(sp)
    80007754:	00913423          	sd	s1,8(sp)
    80007758:	02010413          	addi	s0,sp,32
    8000775c:	00005497          	auipc	s1,0x5
    80007760:	76c48493          	addi	s1,s1,1900 # 8000cec8 <cons>
    80007764:	00048513          	mv	a0,s1
    80007768:	00002597          	auipc	a1,0x2
    8000776c:	f8058593          	addi	a1,a1,-128 # 800096e8 <CONSOLE_STATUS+0x6d8>
    80007770:	00001097          	auipc	ra,0x1
    80007774:	d88080e7          	jalr	-632(ra) # 800084f8 <initlock>
    80007778:	00000097          	auipc	ra,0x0
    8000777c:	7ac080e7          	jalr	1964(ra) # 80007f24 <uartinit>
    80007780:	01813083          	ld	ra,24(sp)
    80007784:	01013403          	ld	s0,16(sp)
    80007788:	00000797          	auipc	a5,0x0
    8000778c:	d9c78793          	addi	a5,a5,-612 # 80007524 <consoleread>
    80007790:	0af4bc23          	sd	a5,184(s1)
    80007794:	00000797          	auipc	a5,0x0
    80007798:	cec78793          	addi	a5,a5,-788 # 80007480 <consolewrite>
    8000779c:	0cf4b023          	sd	a5,192(s1)
    800077a0:	00813483          	ld	s1,8(sp)
    800077a4:	02010113          	addi	sp,sp,32
    800077a8:	00008067          	ret

00000000800077ac <console_read>:
    800077ac:	ff010113          	addi	sp,sp,-16
    800077b0:	00813423          	sd	s0,8(sp)
    800077b4:	01010413          	addi	s0,sp,16
    800077b8:	00813403          	ld	s0,8(sp)
    800077bc:	00005317          	auipc	t1,0x5
    800077c0:	7c433303          	ld	t1,1988(t1) # 8000cf80 <devsw+0x10>
    800077c4:	01010113          	addi	sp,sp,16
    800077c8:	00030067          	jr	t1

00000000800077cc <console_write>:
    800077cc:	ff010113          	addi	sp,sp,-16
    800077d0:	00813423          	sd	s0,8(sp)
    800077d4:	01010413          	addi	s0,sp,16
    800077d8:	00813403          	ld	s0,8(sp)
    800077dc:	00005317          	auipc	t1,0x5
    800077e0:	7ac33303          	ld	t1,1964(t1) # 8000cf88 <devsw+0x18>
    800077e4:	01010113          	addi	sp,sp,16
    800077e8:	00030067          	jr	t1

00000000800077ec <panic>:
    800077ec:	fe010113          	addi	sp,sp,-32
    800077f0:	00113c23          	sd	ra,24(sp)
    800077f4:	00813823          	sd	s0,16(sp)
    800077f8:	00913423          	sd	s1,8(sp)
    800077fc:	02010413          	addi	s0,sp,32
    80007800:	00050493          	mv	s1,a0
    80007804:	00002517          	auipc	a0,0x2
    80007808:	eec50513          	addi	a0,a0,-276 # 800096f0 <CONSOLE_STATUS+0x6e0>
    8000780c:	00006797          	auipc	a5,0x6
    80007810:	8007ae23          	sw	zero,-2020(a5) # 8000d028 <pr+0x18>
    80007814:	00000097          	auipc	ra,0x0
    80007818:	034080e7          	jalr	52(ra) # 80007848 <__printf>
    8000781c:	00048513          	mv	a0,s1
    80007820:	00000097          	auipc	ra,0x0
    80007824:	028080e7          	jalr	40(ra) # 80007848 <__printf>
    80007828:	00002517          	auipc	a0,0x2
    8000782c:	c5050513          	addi	a0,a0,-944 # 80009478 <CONSOLE_STATUS+0x468>
    80007830:	00000097          	auipc	ra,0x0
    80007834:	018080e7          	jalr	24(ra) # 80007848 <__printf>
    80007838:	00100793          	li	a5,1
    8000783c:	00004717          	auipc	a4,0x4
    80007840:	4cf72e23          	sw	a5,1244(a4) # 8000bd18 <panicked>
    80007844:	0000006f          	j	80007844 <panic+0x58>

0000000080007848 <__printf>:
    80007848:	f3010113          	addi	sp,sp,-208
    8000784c:	08813023          	sd	s0,128(sp)
    80007850:	07313423          	sd	s3,104(sp)
    80007854:	09010413          	addi	s0,sp,144
    80007858:	05813023          	sd	s8,64(sp)
    8000785c:	08113423          	sd	ra,136(sp)
    80007860:	06913c23          	sd	s1,120(sp)
    80007864:	07213823          	sd	s2,112(sp)
    80007868:	07413023          	sd	s4,96(sp)
    8000786c:	05513c23          	sd	s5,88(sp)
    80007870:	05613823          	sd	s6,80(sp)
    80007874:	05713423          	sd	s7,72(sp)
    80007878:	03913c23          	sd	s9,56(sp)
    8000787c:	03a13823          	sd	s10,48(sp)
    80007880:	03b13423          	sd	s11,40(sp)
    80007884:	00005317          	auipc	t1,0x5
    80007888:	78c30313          	addi	t1,t1,1932 # 8000d010 <pr>
    8000788c:	01832c03          	lw	s8,24(t1)
    80007890:	00b43423          	sd	a1,8(s0)
    80007894:	00c43823          	sd	a2,16(s0)
    80007898:	00d43c23          	sd	a3,24(s0)
    8000789c:	02e43023          	sd	a4,32(s0)
    800078a0:	02f43423          	sd	a5,40(s0)
    800078a4:	03043823          	sd	a6,48(s0)
    800078a8:	03143c23          	sd	a7,56(s0)
    800078ac:	00050993          	mv	s3,a0
    800078b0:	4a0c1663          	bnez	s8,80007d5c <__printf+0x514>
    800078b4:	60098c63          	beqz	s3,80007ecc <__printf+0x684>
    800078b8:	0009c503          	lbu	a0,0(s3)
    800078bc:	00840793          	addi	a5,s0,8
    800078c0:	f6f43c23          	sd	a5,-136(s0)
    800078c4:	00000493          	li	s1,0
    800078c8:	22050063          	beqz	a0,80007ae8 <__printf+0x2a0>
    800078cc:	00002a37          	lui	s4,0x2
    800078d0:	00018ab7          	lui	s5,0x18
    800078d4:	000f4b37          	lui	s6,0xf4
    800078d8:	00989bb7          	lui	s7,0x989
    800078dc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800078e0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800078e4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800078e8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800078ec:	00148c9b          	addiw	s9,s1,1
    800078f0:	02500793          	li	a5,37
    800078f4:	01998933          	add	s2,s3,s9
    800078f8:	38f51263          	bne	a0,a5,80007c7c <__printf+0x434>
    800078fc:	00094783          	lbu	a5,0(s2)
    80007900:	00078c9b          	sext.w	s9,a5
    80007904:	1e078263          	beqz	a5,80007ae8 <__printf+0x2a0>
    80007908:	0024849b          	addiw	s1,s1,2
    8000790c:	07000713          	li	a4,112
    80007910:	00998933          	add	s2,s3,s1
    80007914:	38e78a63          	beq	a5,a4,80007ca8 <__printf+0x460>
    80007918:	20f76863          	bltu	a4,a5,80007b28 <__printf+0x2e0>
    8000791c:	42a78863          	beq	a5,a0,80007d4c <__printf+0x504>
    80007920:	06400713          	li	a4,100
    80007924:	40e79663          	bne	a5,a4,80007d30 <__printf+0x4e8>
    80007928:	f7843783          	ld	a5,-136(s0)
    8000792c:	0007a603          	lw	a2,0(a5)
    80007930:	00878793          	addi	a5,a5,8
    80007934:	f6f43c23          	sd	a5,-136(s0)
    80007938:	42064a63          	bltz	a2,80007d6c <__printf+0x524>
    8000793c:	00a00713          	li	a4,10
    80007940:	02e677bb          	remuw	a5,a2,a4
    80007944:	00002d97          	auipc	s11,0x2
    80007948:	dd4d8d93          	addi	s11,s11,-556 # 80009718 <digits>
    8000794c:	00900593          	li	a1,9
    80007950:	0006051b          	sext.w	a0,a2
    80007954:	00000c93          	li	s9,0
    80007958:	02079793          	slli	a5,a5,0x20
    8000795c:	0207d793          	srli	a5,a5,0x20
    80007960:	00fd87b3          	add	a5,s11,a5
    80007964:	0007c783          	lbu	a5,0(a5)
    80007968:	02e656bb          	divuw	a3,a2,a4
    8000796c:	f8f40023          	sb	a5,-128(s0)
    80007970:	14c5d863          	bge	a1,a2,80007ac0 <__printf+0x278>
    80007974:	06300593          	li	a1,99
    80007978:	00100c93          	li	s9,1
    8000797c:	02e6f7bb          	remuw	a5,a3,a4
    80007980:	02079793          	slli	a5,a5,0x20
    80007984:	0207d793          	srli	a5,a5,0x20
    80007988:	00fd87b3          	add	a5,s11,a5
    8000798c:	0007c783          	lbu	a5,0(a5)
    80007990:	02e6d73b          	divuw	a4,a3,a4
    80007994:	f8f400a3          	sb	a5,-127(s0)
    80007998:	12a5f463          	bgeu	a1,a0,80007ac0 <__printf+0x278>
    8000799c:	00a00693          	li	a3,10
    800079a0:	00900593          	li	a1,9
    800079a4:	02d777bb          	remuw	a5,a4,a3
    800079a8:	02079793          	slli	a5,a5,0x20
    800079ac:	0207d793          	srli	a5,a5,0x20
    800079b0:	00fd87b3          	add	a5,s11,a5
    800079b4:	0007c503          	lbu	a0,0(a5)
    800079b8:	02d757bb          	divuw	a5,a4,a3
    800079bc:	f8a40123          	sb	a0,-126(s0)
    800079c0:	48e5f263          	bgeu	a1,a4,80007e44 <__printf+0x5fc>
    800079c4:	06300513          	li	a0,99
    800079c8:	02d7f5bb          	remuw	a1,a5,a3
    800079cc:	02059593          	slli	a1,a1,0x20
    800079d0:	0205d593          	srli	a1,a1,0x20
    800079d4:	00bd85b3          	add	a1,s11,a1
    800079d8:	0005c583          	lbu	a1,0(a1)
    800079dc:	02d7d7bb          	divuw	a5,a5,a3
    800079e0:	f8b401a3          	sb	a1,-125(s0)
    800079e4:	48e57263          	bgeu	a0,a4,80007e68 <__printf+0x620>
    800079e8:	3e700513          	li	a0,999
    800079ec:	02d7f5bb          	remuw	a1,a5,a3
    800079f0:	02059593          	slli	a1,a1,0x20
    800079f4:	0205d593          	srli	a1,a1,0x20
    800079f8:	00bd85b3          	add	a1,s11,a1
    800079fc:	0005c583          	lbu	a1,0(a1)
    80007a00:	02d7d7bb          	divuw	a5,a5,a3
    80007a04:	f8b40223          	sb	a1,-124(s0)
    80007a08:	46e57663          	bgeu	a0,a4,80007e74 <__printf+0x62c>
    80007a0c:	02d7f5bb          	remuw	a1,a5,a3
    80007a10:	02059593          	slli	a1,a1,0x20
    80007a14:	0205d593          	srli	a1,a1,0x20
    80007a18:	00bd85b3          	add	a1,s11,a1
    80007a1c:	0005c583          	lbu	a1,0(a1)
    80007a20:	02d7d7bb          	divuw	a5,a5,a3
    80007a24:	f8b402a3          	sb	a1,-123(s0)
    80007a28:	46ea7863          	bgeu	s4,a4,80007e98 <__printf+0x650>
    80007a2c:	02d7f5bb          	remuw	a1,a5,a3
    80007a30:	02059593          	slli	a1,a1,0x20
    80007a34:	0205d593          	srli	a1,a1,0x20
    80007a38:	00bd85b3          	add	a1,s11,a1
    80007a3c:	0005c583          	lbu	a1,0(a1)
    80007a40:	02d7d7bb          	divuw	a5,a5,a3
    80007a44:	f8b40323          	sb	a1,-122(s0)
    80007a48:	3eeaf863          	bgeu	s5,a4,80007e38 <__printf+0x5f0>
    80007a4c:	02d7f5bb          	remuw	a1,a5,a3
    80007a50:	02059593          	slli	a1,a1,0x20
    80007a54:	0205d593          	srli	a1,a1,0x20
    80007a58:	00bd85b3          	add	a1,s11,a1
    80007a5c:	0005c583          	lbu	a1,0(a1)
    80007a60:	02d7d7bb          	divuw	a5,a5,a3
    80007a64:	f8b403a3          	sb	a1,-121(s0)
    80007a68:	42eb7e63          	bgeu	s6,a4,80007ea4 <__printf+0x65c>
    80007a6c:	02d7f5bb          	remuw	a1,a5,a3
    80007a70:	02059593          	slli	a1,a1,0x20
    80007a74:	0205d593          	srli	a1,a1,0x20
    80007a78:	00bd85b3          	add	a1,s11,a1
    80007a7c:	0005c583          	lbu	a1,0(a1)
    80007a80:	02d7d7bb          	divuw	a5,a5,a3
    80007a84:	f8b40423          	sb	a1,-120(s0)
    80007a88:	42ebfc63          	bgeu	s7,a4,80007ec0 <__printf+0x678>
    80007a8c:	02079793          	slli	a5,a5,0x20
    80007a90:	0207d793          	srli	a5,a5,0x20
    80007a94:	00fd8db3          	add	s11,s11,a5
    80007a98:	000dc703          	lbu	a4,0(s11)
    80007a9c:	00a00793          	li	a5,10
    80007aa0:	00900c93          	li	s9,9
    80007aa4:	f8e404a3          	sb	a4,-119(s0)
    80007aa8:	00065c63          	bgez	a2,80007ac0 <__printf+0x278>
    80007aac:	f9040713          	addi	a4,s0,-112
    80007ab0:	00f70733          	add	a4,a4,a5
    80007ab4:	02d00693          	li	a3,45
    80007ab8:	fed70823          	sb	a3,-16(a4)
    80007abc:	00078c93          	mv	s9,a5
    80007ac0:	f8040793          	addi	a5,s0,-128
    80007ac4:	01978cb3          	add	s9,a5,s9
    80007ac8:	f7f40d13          	addi	s10,s0,-129
    80007acc:	000cc503          	lbu	a0,0(s9)
    80007ad0:	fffc8c93          	addi	s9,s9,-1
    80007ad4:	00000097          	auipc	ra,0x0
    80007ad8:	b90080e7          	jalr	-1136(ra) # 80007664 <consputc>
    80007adc:	ffac98e3          	bne	s9,s10,80007acc <__printf+0x284>
    80007ae0:	00094503          	lbu	a0,0(s2)
    80007ae4:	e00514e3          	bnez	a0,800078ec <__printf+0xa4>
    80007ae8:	1a0c1663          	bnez	s8,80007c94 <__printf+0x44c>
    80007aec:	08813083          	ld	ra,136(sp)
    80007af0:	08013403          	ld	s0,128(sp)
    80007af4:	07813483          	ld	s1,120(sp)
    80007af8:	07013903          	ld	s2,112(sp)
    80007afc:	06813983          	ld	s3,104(sp)
    80007b00:	06013a03          	ld	s4,96(sp)
    80007b04:	05813a83          	ld	s5,88(sp)
    80007b08:	05013b03          	ld	s6,80(sp)
    80007b0c:	04813b83          	ld	s7,72(sp)
    80007b10:	04013c03          	ld	s8,64(sp)
    80007b14:	03813c83          	ld	s9,56(sp)
    80007b18:	03013d03          	ld	s10,48(sp)
    80007b1c:	02813d83          	ld	s11,40(sp)
    80007b20:	0d010113          	addi	sp,sp,208
    80007b24:	00008067          	ret
    80007b28:	07300713          	li	a4,115
    80007b2c:	1ce78a63          	beq	a5,a4,80007d00 <__printf+0x4b8>
    80007b30:	07800713          	li	a4,120
    80007b34:	1ee79e63          	bne	a5,a4,80007d30 <__printf+0x4e8>
    80007b38:	f7843783          	ld	a5,-136(s0)
    80007b3c:	0007a703          	lw	a4,0(a5)
    80007b40:	00878793          	addi	a5,a5,8
    80007b44:	f6f43c23          	sd	a5,-136(s0)
    80007b48:	28074263          	bltz	a4,80007dcc <__printf+0x584>
    80007b4c:	00002d97          	auipc	s11,0x2
    80007b50:	bccd8d93          	addi	s11,s11,-1076 # 80009718 <digits>
    80007b54:	00f77793          	andi	a5,a4,15
    80007b58:	00fd87b3          	add	a5,s11,a5
    80007b5c:	0007c683          	lbu	a3,0(a5)
    80007b60:	00f00613          	li	a2,15
    80007b64:	0007079b          	sext.w	a5,a4
    80007b68:	f8d40023          	sb	a3,-128(s0)
    80007b6c:	0047559b          	srliw	a1,a4,0x4
    80007b70:	0047569b          	srliw	a3,a4,0x4
    80007b74:	00000c93          	li	s9,0
    80007b78:	0ee65063          	bge	a2,a4,80007c58 <__printf+0x410>
    80007b7c:	00f6f693          	andi	a3,a3,15
    80007b80:	00dd86b3          	add	a3,s11,a3
    80007b84:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007b88:	0087d79b          	srliw	a5,a5,0x8
    80007b8c:	00100c93          	li	s9,1
    80007b90:	f8d400a3          	sb	a3,-127(s0)
    80007b94:	0cb67263          	bgeu	a2,a1,80007c58 <__printf+0x410>
    80007b98:	00f7f693          	andi	a3,a5,15
    80007b9c:	00dd86b3          	add	a3,s11,a3
    80007ba0:	0006c583          	lbu	a1,0(a3)
    80007ba4:	00f00613          	li	a2,15
    80007ba8:	0047d69b          	srliw	a3,a5,0x4
    80007bac:	f8b40123          	sb	a1,-126(s0)
    80007bb0:	0047d593          	srli	a1,a5,0x4
    80007bb4:	28f67e63          	bgeu	a2,a5,80007e50 <__printf+0x608>
    80007bb8:	00f6f693          	andi	a3,a3,15
    80007bbc:	00dd86b3          	add	a3,s11,a3
    80007bc0:	0006c503          	lbu	a0,0(a3)
    80007bc4:	0087d813          	srli	a6,a5,0x8
    80007bc8:	0087d69b          	srliw	a3,a5,0x8
    80007bcc:	f8a401a3          	sb	a0,-125(s0)
    80007bd0:	28b67663          	bgeu	a2,a1,80007e5c <__printf+0x614>
    80007bd4:	00f6f693          	andi	a3,a3,15
    80007bd8:	00dd86b3          	add	a3,s11,a3
    80007bdc:	0006c583          	lbu	a1,0(a3)
    80007be0:	00c7d513          	srli	a0,a5,0xc
    80007be4:	00c7d69b          	srliw	a3,a5,0xc
    80007be8:	f8b40223          	sb	a1,-124(s0)
    80007bec:	29067a63          	bgeu	a2,a6,80007e80 <__printf+0x638>
    80007bf0:	00f6f693          	andi	a3,a3,15
    80007bf4:	00dd86b3          	add	a3,s11,a3
    80007bf8:	0006c583          	lbu	a1,0(a3)
    80007bfc:	0107d813          	srli	a6,a5,0x10
    80007c00:	0107d69b          	srliw	a3,a5,0x10
    80007c04:	f8b402a3          	sb	a1,-123(s0)
    80007c08:	28a67263          	bgeu	a2,a0,80007e8c <__printf+0x644>
    80007c0c:	00f6f693          	andi	a3,a3,15
    80007c10:	00dd86b3          	add	a3,s11,a3
    80007c14:	0006c683          	lbu	a3,0(a3)
    80007c18:	0147d79b          	srliw	a5,a5,0x14
    80007c1c:	f8d40323          	sb	a3,-122(s0)
    80007c20:	21067663          	bgeu	a2,a6,80007e2c <__printf+0x5e4>
    80007c24:	02079793          	slli	a5,a5,0x20
    80007c28:	0207d793          	srli	a5,a5,0x20
    80007c2c:	00fd8db3          	add	s11,s11,a5
    80007c30:	000dc683          	lbu	a3,0(s11)
    80007c34:	00800793          	li	a5,8
    80007c38:	00700c93          	li	s9,7
    80007c3c:	f8d403a3          	sb	a3,-121(s0)
    80007c40:	00075c63          	bgez	a4,80007c58 <__printf+0x410>
    80007c44:	f9040713          	addi	a4,s0,-112
    80007c48:	00f70733          	add	a4,a4,a5
    80007c4c:	02d00693          	li	a3,45
    80007c50:	fed70823          	sb	a3,-16(a4)
    80007c54:	00078c93          	mv	s9,a5
    80007c58:	f8040793          	addi	a5,s0,-128
    80007c5c:	01978cb3          	add	s9,a5,s9
    80007c60:	f7f40d13          	addi	s10,s0,-129
    80007c64:	000cc503          	lbu	a0,0(s9)
    80007c68:	fffc8c93          	addi	s9,s9,-1
    80007c6c:	00000097          	auipc	ra,0x0
    80007c70:	9f8080e7          	jalr	-1544(ra) # 80007664 <consputc>
    80007c74:	ff9d18e3          	bne	s10,s9,80007c64 <__printf+0x41c>
    80007c78:	0100006f          	j	80007c88 <__printf+0x440>
    80007c7c:	00000097          	auipc	ra,0x0
    80007c80:	9e8080e7          	jalr	-1560(ra) # 80007664 <consputc>
    80007c84:	000c8493          	mv	s1,s9
    80007c88:	00094503          	lbu	a0,0(s2)
    80007c8c:	c60510e3          	bnez	a0,800078ec <__printf+0xa4>
    80007c90:	e40c0ee3          	beqz	s8,80007aec <__printf+0x2a4>
    80007c94:	00005517          	auipc	a0,0x5
    80007c98:	37c50513          	addi	a0,a0,892 # 8000d010 <pr>
    80007c9c:	00001097          	auipc	ra,0x1
    80007ca0:	94c080e7          	jalr	-1716(ra) # 800085e8 <release>
    80007ca4:	e49ff06f          	j	80007aec <__printf+0x2a4>
    80007ca8:	f7843783          	ld	a5,-136(s0)
    80007cac:	03000513          	li	a0,48
    80007cb0:	01000d13          	li	s10,16
    80007cb4:	00878713          	addi	a4,a5,8
    80007cb8:	0007bc83          	ld	s9,0(a5)
    80007cbc:	f6e43c23          	sd	a4,-136(s0)
    80007cc0:	00000097          	auipc	ra,0x0
    80007cc4:	9a4080e7          	jalr	-1628(ra) # 80007664 <consputc>
    80007cc8:	07800513          	li	a0,120
    80007ccc:	00000097          	auipc	ra,0x0
    80007cd0:	998080e7          	jalr	-1640(ra) # 80007664 <consputc>
    80007cd4:	00002d97          	auipc	s11,0x2
    80007cd8:	a44d8d93          	addi	s11,s11,-1468 # 80009718 <digits>
    80007cdc:	03ccd793          	srli	a5,s9,0x3c
    80007ce0:	00fd87b3          	add	a5,s11,a5
    80007ce4:	0007c503          	lbu	a0,0(a5)
    80007ce8:	fffd0d1b          	addiw	s10,s10,-1
    80007cec:	004c9c93          	slli	s9,s9,0x4
    80007cf0:	00000097          	auipc	ra,0x0
    80007cf4:	974080e7          	jalr	-1676(ra) # 80007664 <consputc>
    80007cf8:	fe0d12e3          	bnez	s10,80007cdc <__printf+0x494>
    80007cfc:	f8dff06f          	j	80007c88 <__printf+0x440>
    80007d00:	f7843783          	ld	a5,-136(s0)
    80007d04:	0007bc83          	ld	s9,0(a5)
    80007d08:	00878793          	addi	a5,a5,8
    80007d0c:	f6f43c23          	sd	a5,-136(s0)
    80007d10:	000c9a63          	bnez	s9,80007d24 <__printf+0x4dc>
    80007d14:	1080006f          	j	80007e1c <__printf+0x5d4>
    80007d18:	001c8c93          	addi	s9,s9,1
    80007d1c:	00000097          	auipc	ra,0x0
    80007d20:	948080e7          	jalr	-1720(ra) # 80007664 <consputc>
    80007d24:	000cc503          	lbu	a0,0(s9)
    80007d28:	fe0518e3          	bnez	a0,80007d18 <__printf+0x4d0>
    80007d2c:	f5dff06f          	j	80007c88 <__printf+0x440>
    80007d30:	02500513          	li	a0,37
    80007d34:	00000097          	auipc	ra,0x0
    80007d38:	930080e7          	jalr	-1744(ra) # 80007664 <consputc>
    80007d3c:	000c8513          	mv	a0,s9
    80007d40:	00000097          	auipc	ra,0x0
    80007d44:	924080e7          	jalr	-1756(ra) # 80007664 <consputc>
    80007d48:	f41ff06f          	j	80007c88 <__printf+0x440>
    80007d4c:	02500513          	li	a0,37
    80007d50:	00000097          	auipc	ra,0x0
    80007d54:	914080e7          	jalr	-1772(ra) # 80007664 <consputc>
    80007d58:	f31ff06f          	j	80007c88 <__printf+0x440>
    80007d5c:	00030513          	mv	a0,t1
    80007d60:	00000097          	auipc	ra,0x0
    80007d64:	7bc080e7          	jalr	1980(ra) # 8000851c <acquire>
    80007d68:	b4dff06f          	j	800078b4 <__printf+0x6c>
    80007d6c:	40c0053b          	negw	a0,a2
    80007d70:	00a00713          	li	a4,10
    80007d74:	02e576bb          	remuw	a3,a0,a4
    80007d78:	00002d97          	auipc	s11,0x2
    80007d7c:	9a0d8d93          	addi	s11,s11,-1632 # 80009718 <digits>
    80007d80:	ff700593          	li	a1,-9
    80007d84:	02069693          	slli	a3,a3,0x20
    80007d88:	0206d693          	srli	a3,a3,0x20
    80007d8c:	00dd86b3          	add	a3,s11,a3
    80007d90:	0006c683          	lbu	a3,0(a3)
    80007d94:	02e557bb          	divuw	a5,a0,a4
    80007d98:	f8d40023          	sb	a3,-128(s0)
    80007d9c:	10b65e63          	bge	a2,a1,80007eb8 <__printf+0x670>
    80007da0:	06300593          	li	a1,99
    80007da4:	02e7f6bb          	remuw	a3,a5,a4
    80007da8:	02069693          	slli	a3,a3,0x20
    80007dac:	0206d693          	srli	a3,a3,0x20
    80007db0:	00dd86b3          	add	a3,s11,a3
    80007db4:	0006c683          	lbu	a3,0(a3)
    80007db8:	02e7d73b          	divuw	a4,a5,a4
    80007dbc:	00200793          	li	a5,2
    80007dc0:	f8d400a3          	sb	a3,-127(s0)
    80007dc4:	bca5ece3          	bltu	a1,a0,8000799c <__printf+0x154>
    80007dc8:	ce5ff06f          	j	80007aac <__printf+0x264>
    80007dcc:	40e007bb          	negw	a5,a4
    80007dd0:	00002d97          	auipc	s11,0x2
    80007dd4:	948d8d93          	addi	s11,s11,-1720 # 80009718 <digits>
    80007dd8:	00f7f693          	andi	a3,a5,15
    80007ddc:	00dd86b3          	add	a3,s11,a3
    80007de0:	0006c583          	lbu	a1,0(a3)
    80007de4:	ff100613          	li	a2,-15
    80007de8:	0047d69b          	srliw	a3,a5,0x4
    80007dec:	f8b40023          	sb	a1,-128(s0)
    80007df0:	0047d59b          	srliw	a1,a5,0x4
    80007df4:	0ac75e63          	bge	a4,a2,80007eb0 <__printf+0x668>
    80007df8:	00f6f693          	andi	a3,a3,15
    80007dfc:	00dd86b3          	add	a3,s11,a3
    80007e00:	0006c603          	lbu	a2,0(a3)
    80007e04:	00f00693          	li	a3,15
    80007e08:	0087d79b          	srliw	a5,a5,0x8
    80007e0c:	f8c400a3          	sb	a2,-127(s0)
    80007e10:	d8b6e4e3          	bltu	a3,a1,80007b98 <__printf+0x350>
    80007e14:	00200793          	li	a5,2
    80007e18:	e2dff06f          	j	80007c44 <__printf+0x3fc>
    80007e1c:	00002c97          	auipc	s9,0x2
    80007e20:	8dcc8c93          	addi	s9,s9,-1828 # 800096f8 <CONSOLE_STATUS+0x6e8>
    80007e24:	02800513          	li	a0,40
    80007e28:	ef1ff06f          	j	80007d18 <__printf+0x4d0>
    80007e2c:	00700793          	li	a5,7
    80007e30:	00600c93          	li	s9,6
    80007e34:	e0dff06f          	j	80007c40 <__printf+0x3f8>
    80007e38:	00700793          	li	a5,7
    80007e3c:	00600c93          	li	s9,6
    80007e40:	c69ff06f          	j	80007aa8 <__printf+0x260>
    80007e44:	00300793          	li	a5,3
    80007e48:	00200c93          	li	s9,2
    80007e4c:	c5dff06f          	j	80007aa8 <__printf+0x260>
    80007e50:	00300793          	li	a5,3
    80007e54:	00200c93          	li	s9,2
    80007e58:	de9ff06f          	j	80007c40 <__printf+0x3f8>
    80007e5c:	00400793          	li	a5,4
    80007e60:	00300c93          	li	s9,3
    80007e64:	dddff06f          	j	80007c40 <__printf+0x3f8>
    80007e68:	00400793          	li	a5,4
    80007e6c:	00300c93          	li	s9,3
    80007e70:	c39ff06f          	j	80007aa8 <__printf+0x260>
    80007e74:	00500793          	li	a5,5
    80007e78:	00400c93          	li	s9,4
    80007e7c:	c2dff06f          	j	80007aa8 <__printf+0x260>
    80007e80:	00500793          	li	a5,5
    80007e84:	00400c93          	li	s9,4
    80007e88:	db9ff06f          	j	80007c40 <__printf+0x3f8>
    80007e8c:	00600793          	li	a5,6
    80007e90:	00500c93          	li	s9,5
    80007e94:	dadff06f          	j	80007c40 <__printf+0x3f8>
    80007e98:	00600793          	li	a5,6
    80007e9c:	00500c93          	li	s9,5
    80007ea0:	c09ff06f          	j	80007aa8 <__printf+0x260>
    80007ea4:	00800793          	li	a5,8
    80007ea8:	00700c93          	li	s9,7
    80007eac:	bfdff06f          	j	80007aa8 <__printf+0x260>
    80007eb0:	00100793          	li	a5,1
    80007eb4:	d91ff06f          	j	80007c44 <__printf+0x3fc>
    80007eb8:	00100793          	li	a5,1
    80007ebc:	bf1ff06f          	j	80007aac <__printf+0x264>
    80007ec0:	00900793          	li	a5,9
    80007ec4:	00800c93          	li	s9,8
    80007ec8:	be1ff06f          	j	80007aa8 <__printf+0x260>
    80007ecc:	00002517          	auipc	a0,0x2
    80007ed0:	83450513          	addi	a0,a0,-1996 # 80009700 <CONSOLE_STATUS+0x6f0>
    80007ed4:	00000097          	auipc	ra,0x0
    80007ed8:	918080e7          	jalr	-1768(ra) # 800077ec <panic>

0000000080007edc <printfinit>:
    80007edc:	fe010113          	addi	sp,sp,-32
    80007ee0:	00813823          	sd	s0,16(sp)
    80007ee4:	00913423          	sd	s1,8(sp)
    80007ee8:	00113c23          	sd	ra,24(sp)
    80007eec:	02010413          	addi	s0,sp,32
    80007ef0:	00005497          	auipc	s1,0x5
    80007ef4:	12048493          	addi	s1,s1,288 # 8000d010 <pr>
    80007ef8:	00048513          	mv	a0,s1
    80007efc:	00002597          	auipc	a1,0x2
    80007f00:	81458593          	addi	a1,a1,-2028 # 80009710 <CONSOLE_STATUS+0x700>
    80007f04:	00000097          	auipc	ra,0x0
    80007f08:	5f4080e7          	jalr	1524(ra) # 800084f8 <initlock>
    80007f0c:	01813083          	ld	ra,24(sp)
    80007f10:	01013403          	ld	s0,16(sp)
    80007f14:	0004ac23          	sw	zero,24(s1)
    80007f18:	00813483          	ld	s1,8(sp)
    80007f1c:	02010113          	addi	sp,sp,32
    80007f20:	00008067          	ret

0000000080007f24 <uartinit>:
    80007f24:	ff010113          	addi	sp,sp,-16
    80007f28:	00813423          	sd	s0,8(sp)
    80007f2c:	01010413          	addi	s0,sp,16
    80007f30:	100007b7          	lui	a5,0x10000
    80007f34:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007f38:	f8000713          	li	a4,-128
    80007f3c:	00e781a3          	sb	a4,3(a5)
    80007f40:	00300713          	li	a4,3
    80007f44:	00e78023          	sb	a4,0(a5)
    80007f48:	000780a3          	sb	zero,1(a5)
    80007f4c:	00e781a3          	sb	a4,3(a5)
    80007f50:	00700693          	li	a3,7
    80007f54:	00d78123          	sb	a3,2(a5)
    80007f58:	00e780a3          	sb	a4,1(a5)
    80007f5c:	00813403          	ld	s0,8(sp)
    80007f60:	01010113          	addi	sp,sp,16
    80007f64:	00008067          	ret

0000000080007f68 <uartputc>:
    80007f68:	00004797          	auipc	a5,0x4
    80007f6c:	db07a783          	lw	a5,-592(a5) # 8000bd18 <panicked>
    80007f70:	00078463          	beqz	a5,80007f78 <uartputc+0x10>
    80007f74:	0000006f          	j	80007f74 <uartputc+0xc>
    80007f78:	fd010113          	addi	sp,sp,-48
    80007f7c:	02813023          	sd	s0,32(sp)
    80007f80:	00913c23          	sd	s1,24(sp)
    80007f84:	01213823          	sd	s2,16(sp)
    80007f88:	01313423          	sd	s3,8(sp)
    80007f8c:	02113423          	sd	ra,40(sp)
    80007f90:	03010413          	addi	s0,sp,48
    80007f94:	00004917          	auipc	s2,0x4
    80007f98:	d8c90913          	addi	s2,s2,-628 # 8000bd20 <uart_tx_r>
    80007f9c:	00093783          	ld	a5,0(s2)
    80007fa0:	00004497          	auipc	s1,0x4
    80007fa4:	d8848493          	addi	s1,s1,-632 # 8000bd28 <uart_tx_w>
    80007fa8:	0004b703          	ld	a4,0(s1)
    80007fac:	02078693          	addi	a3,a5,32
    80007fb0:	00050993          	mv	s3,a0
    80007fb4:	02e69c63          	bne	a3,a4,80007fec <uartputc+0x84>
    80007fb8:	00001097          	auipc	ra,0x1
    80007fbc:	834080e7          	jalr	-1996(ra) # 800087ec <push_on>
    80007fc0:	00093783          	ld	a5,0(s2)
    80007fc4:	0004b703          	ld	a4,0(s1)
    80007fc8:	02078793          	addi	a5,a5,32
    80007fcc:	00e79463          	bne	a5,a4,80007fd4 <uartputc+0x6c>
    80007fd0:	0000006f          	j	80007fd0 <uartputc+0x68>
    80007fd4:	00001097          	auipc	ra,0x1
    80007fd8:	88c080e7          	jalr	-1908(ra) # 80008860 <pop_on>
    80007fdc:	00093783          	ld	a5,0(s2)
    80007fe0:	0004b703          	ld	a4,0(s1)
    80007fe4:	02078693          	addi	a3,a5,32
    80007fe8:	fce688e3          	beq	a3,a4,80007fb8 <uartputc+0x50>
    80007fec:	01f77693          	andi	a3,a4,31
    80007ff0:	00005597          	auipc	a1,0x5
    80007ff4:	04058593          	addi	a1,a1,64 # 8000d030 <uart_tx_buf>
    80007ff8:	00d586b3          	add	a3,a1,a3
    80007ffc:	00170713          	addi	a4,a4,1
    80008000:	01368023          	sb	s3,0(a3)
    80008004:	00e4b023          	sd	a4,0(s1)
    80008008:	10000637          	lui	a2,0x10000
    8000800c:	02f71063          	bne	a4,a5,8000802c <uartputc+0xc4>
    80008010:	0340006f          	j	80008044 <uartputc+0xdc>
    80008014:	00074703          	lbu	a4,0(a4)
    80008018:	00f93023          	sd	a5,0(s2)
    8000801c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80008020:	00093783          	ld	a5,0(s2)
    80008024:	0004b703          	ld	a4,0(s1)
    80008028:	00f70e63          	beq	a4,a5,80008044 <uartputc+0xdc>
    8000802c:	00564683          	lbu	a3,5(a2)
    80008030:	01f7f713          	andi	a4,a5,31
    80008034:	00e58733          	add	a4,a1,a4
    80008038:	0206f693          	andi	a3,a3,32
    8000803c:	00178793          	addi	a5,a5,1
    80008040:	fc069ae3          	bnez	a3,80008014 <uartputc+0xac>
    80008044:	02813083          	ld	ra,40(sp)
    80008048:	02013403          	ld	s0,32(sp)
    8000804c:	01813483          	ld	s1,24(sp)
    80008050:	01013903          	ld	s2,16(sp)
    80008054:	00813983          	ld	s3,8(sp)
    80008058:	03010113          	addi	sp,sp,48
    8000805c:	00008067          	ret

0000000080008060 <uartputc_sync>:
    80008060:	ff010113          	addi	sp,sp,-16
    80008064:	00813423          	sd	s0,8(sp)
    80008068:	01010413          	addi	s0,sp,16
    8000806c:	00004717          	auipc	a4,0x4
    80008070:	cac72703          	lw	a4,-852(a4) # 8000bd18 <panicked>
    80008074:	02071663          	bnez	a4,800080a0 <uartputc_sync+0x40>
    80008078:	00050793          	mv	a5,a0
    8000807c:	100006b7          	lui	a3,0x10000
    80008080:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80008084:	02077713          	andi	a4,a4,32
    80008088:	fe070ce3          	beqz	a4,80008080 <uartputc_sync+0x20>
    8000808c:	0ff7f793          	andi	a5,a5,255
    80008090:	00f68023          	sb	a5,0(a3)
    80008094:	00813403          	ld	s0,8(sp)
    80008098:	01010113          	addi	sp,sp,16
    8000809c:	00008067          	ret
    800080a0:	0000006f          	j	800080a0 <uartputc_sync+0x40>

00000000800080a4 <uartstart>:
    800080a4:	ff010113          	addi	sp,sp,-16
    800080a8:	00813423          	sd	s0,8(sp)
    800080ac:	01010413          	addi	s0,sp,16
    800080b0:	00004617          	auipc	a2,0x4
    800080b4:	c7060613          	addi	a2,a2,-912 # 8000bd20 <uart_tx_r>
    800080b8:	00004517          	auipc	a0,0x4
    800080bc:	c7050513          	addi	a0,a0,-912 # 8000bd28 <uart_tx_w>
    800080c0:	00063783          	ld	a5,0(a2)
    800080c4:	00053703          	ld	a4,0(a0)
    800080c8:	04f70263          	beq	a4,a5,8000810c <uartstart+0x68>
    800080cc:	100005b7          	lui	a1,0x10000
    800080d0:	00005817          	auipc	a6,0x5
    800080d4:	f6080813          	addi	a6,a6,-160 # 8000d030 <uart_tx_buf>
    800080d8:	01c0006f          	j	800080f4 <uartstart+0x50>
    800080dc:	0006c703          	lbu	a4,0(a3)
    800080e0:	00f63023          	sd	a5,0(a2)
    800080e4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800080e8:	00063783          	ld	a5,0(a2)
    800080ec:	00053703          	ld	a4,0(a0)
    800080f0:	00f70e63          	beq	a4,a5,8000810c <uartstart+0x68>
    800080f4:	01f7f713          	andi	a4,a5,31
    800080f8:	00e806b3          	add	a3,a6,a4
    800080fc:	0055c703          	lbu	a4,5(a1)
    80008100:	00178793          	addi	a5,a5,1
    80008104:	02077713          	andi	a4,a4,32
    80008108:	fc071ae3          	bnez	a4,800080dc <uartstart+0x38>
    8000810c:	00813403          	ld	s0,8(sp)
    80008110:	01010113          	addi	sp,sp,16
    80008114:	00008067          	ret

0000000080008118 <uartgetc>:
    80008118:	ff010113          	addi	sp,sp,-16
    8000811c:	00813423          	sd	s0,8(sp)
    80008120:	01010413          	addi	s0,sp,16
    80008124:	10000737          	lui	a4,0x10000
    80008128:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000812c:	0017f793          	andi	a5,a5,1
    80008130:	00078c63          	beqz	a5,80008148 <uartgetc+0x30>
    80008134:	00074503          	lbu	a0,0(a4)
    80008138:	0ff57513          	andi	a0,a0,255
    8000813c:	00813403          	ld	s0,8(sp)
    80008140:	01010113          	addi	sp,sp,16
    80008144:	00008067          	ret
    80008148:	fff00513          	li	a0,-1
    8000814c:	ff1ff06f          	j	8000813c <uartgetc+0x24>

0000000080008150 <uartintr>:
    80008150:	100007b7          	lui	a5,0x10000
    80008154:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80008158:	0017f793          	andi	a5,a5,1
    8000815c:	0a078463          	beqz	a5,80008204 <uartintr+0xb4>
    80008160:	fe010113          	addi	sp,sp,-32
    80008164:	00813823          	sd	s0,16(sp)
    80008168:	00913423          	sd	s1,8(sp)
    8000816c:	00113c23          	sd	ra,24(sp)
    80008170:	02010413          	addi	s0,sp,32
    80008174:	100004b7          	lui	s1,0x10000
    80008178:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000817c:	0ff57513          	andi	a0,a0,255
    80008180:	fffff097          	auipc	ra,0xfffff
    80008184:	534080e7          	jalr	1332(ra) # 800076b4 <consoleintr>
    80008188:	0054c783          	lbu	a5,5(s1)
    8000818c:	0017f793          	andi	a5,a5,1
    80008190:	fe0794e3          	bnez	a5,80008178 <uartintr+0x28>
    80008194:	00004617          	auipc	a2,0x4
    80008198:	b8c60613          	addi	a2,a2,-1140 # 8000bd20 <uart_tx_r>
    8000819c:	00004517          	auipc	a0,0x4
    800081a0:	b8c50513          	addi	a0,a0,-1140 # 8000bd28 <uart_tx_w>
    800081a4:	00063783          	ld	a5,0(a2)
    800081a8:	00053703          	ld	a4,0(a0)
    800081ac:	04f70263          	beq	a4,a5,800081f0 <uartintr+0xa0>
    800081b0:	100005b7          	lui	a1,0x10000
    800081b4:	00005817          	auipc	a6,0x5
    800081b8:	e7c80813          	addi	a6,a6,-388 # 8000d030 <uart_tx_buf>
    800081bc:	01c0006f          	j	800081d8 <uartintr+0x88>
    800081c0:	0006c703          	lbu	a4,0(a3)
    800081c4:	00f63023          	sd	a5,0(a2)
    800081c8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800081cc:	00063783          	ld	a5,0(a2)
    800081d0:	00053703          	ld	a4,0(a0)
    800081d4:	00f70e63          	beq	a4,a5,800081f0 <uartintr+0xa0>
    800081d8:	01f7f713          	andi	a4,a5,31
    800081dc:	00e806b3          	add	a3,a6,a4
    800081e0:	0055c703          	lbu	a4,5(a1)
    800081e4:	00178793          	addi	a5,a5,1
    800081e8:	02077713          	andi	a4,a4,32
    800081ec:	fc071ae3          	bnez	a4,800081c0 <uartintr+0x70>
    800081f0:	01813083          	ld	ra,24(sp)
    800081f4:	01013403          	ld	s0,16(sp)
    800081f8:	00813483          	ld	s1,8(sp)
    800081fc:	02010113          	addi	sp,sp,32
    80008200:	00008067          	ret
    80008204:	00004617          	auipc	a2,0x4
    80008208:	b1c60613          	addi	a2,a2,-1252 # 8000bd20 <uart_tx_r>
    8000820c:	00004517          	auipc	a0,0x4
    80008210:	b1c50513          	addi	a0,a0,-1252 # 8000bd28 <uart_tx_w>
    80008214:	00063783          	ld	a5,0(a2)
    80008218:	00053703          	ld	a4,0(a0)
    8000821c:	04f70263          	beq	a4,a5,80008260 <uartintr+0x110>
    80008220:	100005b7          	lui	a1,0x10000
    80008224:	00005817          	auipc	a6,0x5
    80008228:	e0c80813          	addi	a6,a6,-500 # 8000d030 <uart_tx_buf>
    8000822c:	01c0006f          	j	80008248 <uartintr+0xf8>
    80008230:	0006c703          	lbu	a4,0(a3)
    80008234:	00f63023          	sd	a5,0(a2)
    80008238:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000823c:	00063783          	ld	a5,0(a2)
    80008240:	00053703          	ld	a4,0(a0)
    80008244:	02f70063          	beq	a4,a5,80008264 <uartintr+0x114>
    80008248:	01f7f713          	andi	a4,a5,31
    8000824c:	00e806b3          	add	a3,a6,a4
    80008250:	0055c703          	lbu	a4,5(a1)
    80008254:	00178793          	addi	a5,a5,1
    80008258:	02077713          	andi	a4,a4,32
    8000825c:	fc071ae3          	bnez	a4,80008230 <uartintr+0xe0>
    80008260:	00008067          	ret
    80008264:	00008067          	ret

0000000080008268 <kinit>:
    80008268:	fc010113          	addi	sp,sp,-64
    8000826c:	02913423          	sd	s1,40(sp)
    80008270:	fffff7b7          	lui	a5,0xfffff
    80008274:	00006497          	auipc	s1,0x6
    80008278:	ddb48493          	addi	s1,s1,-549 # 8000e04f <end+0xfff>
    8000827c:	02813823          	sd	s0,48(sp)
    80008280:	01313c23          	sd	s3,24(sp)
    80008284:	00f4f4b3          	and	s1,s1,a5
    80008288:	02113c23          	sd	ra,56(sp)
    8000828c:	03213023          	sd	s2,32(sp)
    80008290:	01413823          	sd	s4,16(sp)
    80008294:	01513423          	sd	s5,8(sp)
    80008298:	04010413          	addi	s0,sp,64
    8000829c:	000017b7          	lui	a5,0x1
    800082a0:	01100993          	li	s3,17
    800082a4:	00f487b3          	add	a5,s1,a5
    800082a8:	01b99993          	slli	s3,s3,0x1b
    800082ac:	06f9e063          	bltu	s3,a5,8000830c <kinit+0xa4>
    800082b0:	00005a97          	auipc	s5,0x5
    800082b4:	da0a8a93          	addi	s5,s5,-608 # 8000d050 <end>
    800082b8:	0754ec63          	bltu	s1,s5,80008330 <kinit+0xc8>
    800082bc:	0734fa63          	bgeu	s1,s3,80008330 <kinit+0xc8>
    800082c0:	00088a37          	lui	s4,0x88
    800082c4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800082c8:	00004917          	auipc	s2,0x4
    800082cc:	a6890913          	addi	s2,s2,-1432 # 8000bd30 <kmem>
    800082d0:	00ca1a13          	slli	s4,s4,0xc
    800082d4:	0140006f          	j	800082e8 <kinit+0x80>
    800082d8:	000017b7          	lui	a5,0x1
    800082dc:	00f484b3          	add	s1,s1,a5
    800082e0:	0554e863          	bltu	s1,s5,80008330 <kinit+0xc8>
    800082e4:	0534f663          	bgeu	s1,s3,80008330 <kinit+0xc8>
    800082e8:	00001637          	lui	a2,0x1
    800082ec:	00100593          	li	a1,1
    800082f0:	00048513          	mv	a0,s1
    800082f4:	00000097          	auipc	ra,0x0
    800082f8:	5e4080e7          	jalr	1508(ra) # 800088d8 <__memset>
    800082fc:	00093783          	ld	a5,0(s2)
    80008300:	00f4b023          	sd	a5,0(s1)
    80008304:	00993023          	sd	s1,0(s2)
    80008308:	fd4498e3          	bne	s1,s4,800082d8 <kinit+0x70>
    8000830c:	03813083          	ld	ra,56(sp)
    80008310:	03013403          	ld	s0,48(sp)
    80008314:	02813483          	ld	s1,40(sp)
    80008318:	02013903          	ld	s2,32(sp)
    8000831c:	01813983          	ld	s3,24(sp)
    80008320:	01013a03          	ld	s4,16(sp)
    80008324:	00813a83          	ld	s5,8(sp)
    80008328:	04010113          	addi	sp,sp,64
    8000832c:	00008067          	ret
    80008330:	00001517          	auipc	a0,0x1
    80008334:	40050513          	addi	a0,a0,1024 # 80009730 <digits+0x18>
    80008338:	fffff097          	auipc	ra,0xfffff
    8000833c:	4b4080e7          	jalr	1204(ra) # 800077ec <panic>

0000000080008340 <freerange>:
    80008340:	fc010113          	addi	sp,sp,-64
    80008344:	000017b7          	lui	a5,0x1
    80008348:	02913423          	sd	s1,40(sp)
    8000834c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80008350:	009504b3          	add	s1,a0,s1
    80008354:	fffff537          	lui	a0,0xfffff
    80008358:	02813823          	sd	s0,48(sp)
    8000835c:	02113c23          	sd	ra,56(sp)
    80008360:	03213023          	sd	s2,32(sp)
    80008364:	01313c23          	sd	s3,24(sp)
    80008368:	01413823          	sd	s4,16(sp)
    8000836c:	01513423          	sd	s5,8(sp)
    80008370:	01613023          	sd	s6,0(sp)
    80008374:	04010413          	addi	s0,sp,64
    80008378:	00a4f4b3          	and	s1,s1,a0
    8000837c:	00f487b3          	add	a5,s1,a5
    80008380:	06f5e463          	bltu	a1,a5,800083e8 <freerange+0xa8>
    80008384:	00005a97          	auipc	s5,0x5
    80008388:	ccca8a93          	addi	s5,s5,-820 # 8000d050 <end>
    8000838c:	0954e263          	bltu	s1,s5,80008410 <freerange+0xd0>
    80008390:	01100993          	li	s3,17
    80008394:	01b99993          	slli	s3,s3,0x1b
    80008398:	0734fc63          	bgeu	s1,s3,80008410 <freerange+0xd0>
    8000839c:	00058a13          	mv	s4,a1
    800083a0:	00004917          	auipc	s2,0x4
    800083a4:	99090913          	addi	s2,s2,-1648 # 8000bd30 <kmem>
    800083a8:	00002b37          	lui	s6,0x2
    800083ac:	0140006f          	j	800083c0 <freerange+0x80>
    800083b0:	000017b7          	lui	a5,0x1
    800083b4:	00f484b3          	add	s1,s1,a5
    800083b8:	0554ec63          	bltu	s1,s5,80008410 <freerange+0xd0>
    800083bc:	0534fa63          	bgeu	s1,s3,80008410 <freerange+0xd0>
    800083c0:	00001637          	lui	a2,0x1
    800083c4:	00100593          	li	a1,1
    800083c8:	00048513          	mv	a0,s1
    800083cc:	00000097          	auipc	ra,0x0
    800083d0:	50c080e7          	jalr	1292(ra) # 800088d8 <__memset>
    800083d4:	00093703          	ld	a4,0(s2)
    800083d8:	016487b3          	add	a5,s1,s6
    800083dc:	00e4b023          	sd	a4,0(s1)
    800083e0:	00993023          	sd	s1,0(s2)
    800083e4:	fcfa76e3          	bgeu	s4,a5,800083b0 <freerange+0x70>
    800083e8:	03813083          	ld	ra,56(sp)
    800083ec:	03013403          	ld	s0,48(sp)
    800083f0:	02813483          	ld	s1,40(sp)
    800083f4:	02013903          	ld	s2,32(sp)
    800083f8:	01813983          	ld	s3,24(sp)
    800083fc:	01013a03          	ld	s4,16(sp)
    80008400:	00813a83          	ld	s5,8(sp)
    80008404:	00013b03          	ld	s6,0(sp)
    80008408:	04010113          	addi	sp,sp,64
    8000840c:	00008067          	ret
    80008410:	00001517          	auipc	a0,0x1
    80008414:	32050513          	addi	a0,a0,800 # 80009730 <digits+0x18>
    80008418:	fffff097          	auipc	ra,0xfffff
    8000841c:	3d4080e7          	jalr	980(ra) # 800077ec <panic>

0000000080008420 <kfree>:
    80008420:	fe010113          	addi	sp,sp,-32
    80008424:	00813823          	sd	s0,16(sp)
    80008428:	00113c23          	sd	ra,24(sp)
    8000842c:	00913423          	sd	s1,8(sp)
    80008430:	02010413          	addi	s0,sp,32
    80008434:	03451793          	slli	a5,a0,0x34
    80008438:	04079c63          	bnez	a5,80008490 <kfree+0x70>
    8000843c:	00005797          	auipc	a5,0x5
    80008440:	c1478793          	addi	a5,a5,-1004 # 8000d050 <end>
    80008444:	00050493          	mv	s1,a0
    80008448:	04f56463          	bltu	a0,a5,80008490 <kfree+0x70>
    8000844c:	01100793          	li	a5,17
    80008450:	01b79793          	slli	a5,a5,0x1b
    80008454:	02f57e63          	bgeu	a0,a5,80008490 <kfree+0x70>
    80008458:	00001637          	lui	a2,0x1
    8000845c:	00100593          	li	a1,1
    80008460:	00000097          	auipc	ra,0x0
    80008464:	478080e7          	jalr	1144(ra) # 800088d8 <__memset>
    80008468:	00004797          	auipc	a5,0x4
    8000846c:	8c878793          	addi	a5,a5,-1848 # 8000bd30 <kmem>
    80008470:	0007b703          	ld	a4,0(a5)
    80008474:	01813083          	ld	ra,24(sp)
    80008478:	01013403          	ld	s0,16(sp)
    8000847c:	00e4b023          	sd	a4,0(s1)
    80008480:	0097b023          	sd	s1,0(a5)
    80008484:	00813483          	ld	s1,8(sp)
    80008488:	02010113          	addi	sp,sp,32
    8000848c:	00008067          	ret
    80008490:	00001517          	auipc	a0,0x1
    80008494:	2a050513          	addi	a0,a0,672 # 80009730 <digits+0x18>
    80008498:	fffff097          	auipc	ra,0xfffff
    8000849c:	354080e7          	jalr	852(ra) # 800077ec <panic>

00000000800084a0 <kalloc>:
    800084a0:	fe010113          	addi	sp,sp,-32
    800084a4:	00813823          	sd	s0,16(sp)
    800084a8:	00913423          	sd	s1,8(sp)
    800084ac:	00113c23          	sd	ra,24(sp)
    800084b0:	02010413          	addi	s0,sp,32
    800084b4:	00004797          	auipc	a5,0x4
    800084b8:	87c78793          	addi	a5,a5,-1924 # 8000bd30 <kmem>
    800084bc:	0007b483          	ld	s1,0(a5)
    800084c0:	02048063          	beqz	s1,800084e0 <kalloc+0x40>
    800084c4:	0004b703          	ld	a4,0(s1)
    800084c8:	00001637          	lui	a2,0x1
    800084cc:	00500593          	li	a1,5
    800084d0:	00048513          	mv	a0,s1
    800084d4:	00e7b023          	sd	a4,0(a5)
    800084d8:	00000097          	auipc	ra,0x0
    800084dc:	400080e7          	jalr	1024(ra) # 800088d8 <__memset>
    800084e0:	01813083          	ld	ra,24(sp)
    800084e4:	01013403          	ld	s0,16(sp)
    800084e8:	00048513          	mv	a0,s1
    800084ec:	00813483          	ld	s1,8(sp)
    800084f0:	02010113          	addi	sp,sp,32
    800084f4:	00008067          	ret

00000000800084f8 <initlock>:
    800084f8:	ff010113          	addi	sp,sp,-16
    800084fc:	00813423          	sd	s0,8(sp)
    80008500:	01010413          	addi	s0,sp,16
    80008504:	00813403          	ld	s0,8(sp)
    80008508:	00b53423          	sd	a1,8(a0)
    8000850c:	00052023          	sw	zero,0(a0)
    80008510:	00053823          	sd	zero,16(a0)
    80008514:	01010113          	addi	sp,sp,16
    80008518:	00008067          	ret

000000008000851c <acquire>:
    8000851c:	fe010113          	addi	sp,sp,-32
    80008520:	00813823          	sd	s0,16(sp)
    80008524:	00913423          	sd	s1,8(sp)
    80008528:	00113c23          	sd	ra,24(sp)
    8000852c:	01213023          	sd	s2,0(sp)
    80008530:	02010413          	addi	s0,sp,32
    80008534:	00050493          	mv	s1,a0
    80008538:	10002973          	csrr	s2,sstatus
    8000853c:	100027f3          	csrr	a5,sstatus
    80008540:	ffd7f793          	andi	a5,a5,-3
    80008544:	10079073          	csrw	sstatus,a5
    80008548:	fffff097          	auipc	ra,0xfffff
    8000854c:	8e4080e7          	jalr	-1820(ra) # 80006e2c <mycpu>
    80008550:	07852783          	lw	a5,120(a0)
    80008554:	06078e63          	beqz	a5,800085d0 <acquire+0xb4>
    80008558:	fffff097          	auipc	ra,0xfffff
    8000855c:	8d4080e7          	jalr	-1836(ra) # 80006e2c <mycpu>
    80008560:	07852783          	lw	a5,120(a0)
    80008564:	0004a703          	lw	a4,0(s1)
    80008568:	0017879b          	addiw	a5,a5,1
    8000856c:	06f52c23          	sw	a5,120(a0)
    80008570:	04071063          	bnez	a4,800085b0 <acquire+0x94>
    80008574:	00100713          	li	a4,1
    80008578:	00070793          	mv	a5,a4
    8000857c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008580:	0007879b          	sext.w	a5,a5
    80008584:	fe079ae3          	bnez	a5,80008578 <acquire+0x5c>
    80008588:	0ff0000f          	fence
    8000858c:	fffff097          	auipc	ra,0xfffff
    80008590:	8a0080e7          	jalr	-1888(ra) # 80006e2c <mycpu>
    80008594:	01813083          	ld	ra,24(sp)
    80008598:	01013403          	ld	s0,16(sp)
    8000859c:	00a4b823          	sd	a0,16(s1)
    800085a0:	00013903          	ld	s2,0(sp)
    800085a4:	00813483          	ld	s1,8(sp)
    800085a8:	02010113          	addi	sp,sp,32
    800085ac:	00008067          	ret
    800085b0:	0104b903          	ld	s2,16(s1)
    800085b4:	fffff097          	auipc	ra,0xfffff
    800085b8:	878080e7          	jalr	-1928(ra) # 80006e2c <mycpu>
    800085bc:	faa91ce3          	bne	s2,a0,80008574 <acquire+0x58>
    800085c0:	00001517          	auipc	a0,0x1
    800085c4:	17850513          	addi	a0,a0,376 # 80009738 <digits+0x20>
    800085c8:	fffff097          	auipc	ra,0xfffff
    800085cc:	224080e7          	jalr	548(ra) # 800077ec <panic>
    800085d0:	00195913          	srli	s2,s2,0x1
    800085d4:	fffff097          	auipc	ra,0xfffff
    800085d8:	858080e7          	jalr	-1960(ra) # 80006e2c <mycpu>
    800085dc:	00197913          	andi	s2,s2,1
    800085e0:	07252e23          	sw	s2,124(a0)
    800085e4:	f75ff06f          	j	80008558 <acquire+0x3c>

00000000800085e8 <release>:
    800085e8:	fe010113          	addi	sp,sp,-32
    800085ec:	00813823          	sd	s0,16(sp)
    800085f0:	00113c23          	sd	ra,24(sp)
    800085f4:	00913423          	sd	s1,8(sp)
    800085f8:	01213023          	sd	s2,0(sp)
    800085fc:	02010413          	addi	s0,sp,32
    80008600:	00052783          	lw	a5,0(a0)
    80008604:	00079a63          	bnez	a5,80008618 <release+0x30>
    80008608:	00001517          	auipc	a0,0x1
    8000860c:	13850513          	addi	a0,a0,312 # 80009740 <digits+0x28>
    80008610:	fffff097          	auipc	ra,0xfffff
    80008614:	1dc080e7          	jalr	476(ra) # 800077ec <panic>
    80008618:	01053903          	ld	s2,16(a0)
    8000861c:	00050493          	mv	s1,a0
    80008620:	fffff097          	auipc	ra,0xfffff
    80008624:	80c080e7          	jalr	-2036(ra) # 80006e2c <mycpu>
    80008628:	fea910e3          	bne	s2,a0,80008608 <release+0x20>
    8000862c:	0004b823          	sd	zero,16(s1)
    80008630:	0ff0000f          	fence
    80008634:	0f50000f          	fence	iorw,ow
    80008638:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000863c:	ffffe097          	auipc	ra,0xffffe
    80008640:	7f0080e7          	jalr	2032(ra) # 80006e2c <mycpu>
    80008644:	100027f3          	csrr	a5,sstatus
    80008648:	0027f793          	andi	a5,a5,2
    8000864c:	04079a63          	bnez	a5,800086a0 <release+0xb8>
    80008650:	07852783          	lw	a5,120(a0)
    80008654:	02f05e63          	blez	a5,80008690 <release+0xa8>
    80008658:	fff7871b          	addiw	a4,a5,-1
    8000865c:	06e52c23          	sw	a4,120(a0)
    80008660:	00071c63          	bnez	a4,80008678 <release+0x90>
    80008664:	07c52783          	lw	a5,124(a0)
    80008668:	00078863          	beqz	a5,80008678 <release+0x90>
    8000866c:	100027f3          	csrr	a5,sstatus
    80008670:	0027e793          	ori	a5,a5,2
    80008674:	10079073          	csrw	sstatus,a5
    80008678:	01813083          	ld	ra,24(sp)
    8000867c:	01013403          	ld	s0,16(sp)
    80008680:	00813483          	ld	s1,8(sp)
    80008684:	00013903          	ld	s2,0(sp)
    80008688:	02010113          	addi	sp,sp,32
    8000868c:	00008067          	ret
    80008690:	00001517          	auipc	a0,0x1
    80008694:	0d050513          	addi	a0,a0,208 # 80009760 <digits+0x48>
    80008698:	fffff097          	auipc	ra,0xfffff
    8000869c:	154080e7          	jalr	340(ra) # 800077ec <panic>
    800086a0:	00001517          	auipc	a0,0x1
    800086a4:	0a850513          	addi	a0,a0,168 # 80009748 <digits+0x30>
    800086a8:	fffff097          	auipc	ra,0xfffff
    800086ac:	144080e7          	jalr	324(ra) # 800077ec <panic>

00000000800086b0 <holding>:
    800086b0:	00052783          	lw	a5,0(a0)
    800086b4:	00079663          	bnez	a5,800086c0 <holding+0x10>
    800086b8:	00000513          	li	a0,0
    800086bc:	00008067          	ret
    800086c0:	fe010113          	addi	sp,sp,-32
    800086c4:	00813823          	sd	s0,16(sp)
    800086c8:	00913423          	sd	s1,8(sp)
    800086cc:	00113c23          	sd	ra,24(sp)
    800086d0:	02010413          	addi	s0,sp,32
    800086d4:	01053483          	ld	s1,16(a0)
    800086d8:	ffffe097          	auipc	ra,0xffffe
    800086dc:	754080e7          	jalr	1876(ra) # 80006e2c <mycpu>
    800086e0:	01813083          	ld	ra,24(sp)
    800086e4:	01013403          	ld	s0,16(sp)
    800086e8:	40a48533          	sub	a0,s1,a0
    800086ec:	00153513          	seqz	a0,a0
    800086f0:	00813483          	ld	s1,8(sp)
    800086f4:	02010113          	addi	sp,sp,32
    800086f8:	00008067          	ret

00000000800086fc <push_off>:
    800086fc:	fe010113          	addi	sp,sp,-32
    80008700:	00813823          	sd	s0,16(sp)
    80008704:	00113c23          	sd	ra,24(sp)
    80008708:	00913423          	sd	s1,8(sp)
    8000870c:	02010413          	addi	s0,sp,32
    80008710:	100024f3          	csrr	s1,sstatus
    80008714:	100027f3          	csrr	a5,sstatus
    80008718:	ffd7f793          	andi	a5,a5,-3
    8000871c:	10079073          	csrw	sstatus,a5
    80008720:	ffffe097          	auipc	ra,0xffffe
    80008724:	70c080e7          	jalr	1804(ra) # 80006e2c <mycpu>
    80008728:	07852783          	lw	a5,120(a0)
    8000872c:	02078663          	beqz	a5,80008758 <push_off+0x5c>
    80008730:	ffffe097          	auipc	ra,0xffffe
    80008734:	6fc080e7          	jalr	1788(ra) # 80006e2c <mycpu>
    80008738:	07852783          	lw	a5,120(a0)
    8000873c:	01813083          	ld	ra,24(sp)
    80008740:	01013403          	ld	s0,16(sp)
    80008744:	0017879b          	addiw	a5,a5,1
    80008748:	06f52c23          	sw	a5,120(a0)
    8000874c:	00813483          	ld	s1,8(sp)
    80008750:	02010113          	addi	sp,sp,32
    80008754:	00008067          	ret
    80008758:	0014d493          	srli	s1,s1,0x1
    8000875c:	ffffe097          	auipc	ra,0xffffe
    80008760:	6d0080e7          	jalr	1744(ra) # 80006e2c <mycpu>
    80008764:	0014f493          	andi	s1,s1,1
    80008768:	06952e23          	sw	s1,124(a0)
    8000876c:	fc5ff06f          	j	80008730 <push_off+0x34>

0000000080008770 <pop_off>:
    80008770:	ff010113          	addi	sp,sp,-16
    80008774:	00813023          	sd	s0,0(sp)
    80008778:	00113423          	sd	ra,8(sp)
    8000877c:	01010413          	addi	s0,sp,16
    80008780:	ffffe097          	auipc	ra,0xffffe
    80008784:	6ac080e7          	jalr	1708(ra) # 80006e2c <mycpu>
    80008788:	100027f3          	csrr	a5,sstatus
    8000878c:	0027f793          	andi	a5,a5,2
    80008790:	04079663          	bnez	a5,800087dc <pop_off+0x6c>
    80008794:	07852783          	lw	a5,120(a0)
    80008798:	02f05a63          	blez	a5,800087cc <pop_off+0x5c>
    8000879c:	fff7871b          	addiw	a4,a5,-1
    800087a0:	06e52c23          	sw	a4,120(a0)
    800087a4:	00071c63          	bnez	a4,800087bc <pop_off+0x4c>
    800087a8:	07c52783          	lw	a5,124(a0)
    800087ac:	00078863          	beqz	a5,800087bc <pop_off+0x4c>
    800087b0:	100027f3          	csrr	a5,sstatus
    800087b4:	0027e793          	ori	a5,a5,2
    800087b8:	10079073          	csrw	sstatus,a5
    800087bc:	00813083          	ld	ra,8(sp)
    800087c0:	00013403          	ld	s0,0(sp)
    800087c4:	01010113          	addi	sp,sp,16
    800087c8:	00008067          	ret
    800087cc:	00001517          	auipc	a0,0x1
    800087d0:	f9450513          	addi	a0,a0,-108 # 80009760 <digits+0x48>
    800087d4:	fffff097          	auipc	ra,0xfffff
    800087d8:	018080e7          	jalr	24(ra) # 800077ec <panic>
    800087dc:	00001517          	auipc	a0,0x1
    800087e0:	f6c50513          	addi	a0,a0,-148 # 80009748 <digits+0x30>
    800087e4:	fffff097          	auipc	ra,0xfffff
    800087e8:	008080e7          	jalr	8(ra) # 800077ec <panic>

00000000800087ec <push_on>:
    800087ec:	fe010113          	addi	sp,sp,-32
    800087f0:	00813823          	sd	s0,16(sp)
    800087f4:	00113c23          	sd	ra,24(sp)
    800087f8:	00913423          	sd	s1,8(sp)
    800087fc:	02010413          	addi	s0,sp,32
    80008800:	100024f3          	csrr	s1,sstatus
    80008804:	100027f3          	csrr	a5,sstatus
    80008808:	0027e793          	ori	a5,a5,2
    8000880c:	10079073          	csrw	sstatus,a5
    80008810:	ffffe097          	auipc	ra,0xffffe
    80008814:	61c080e7          	jalr	1564(ra) # 80006e2c <mycpu>
    80008818:	07852783          	lw	a5,120(a0)
    8000881c:	02078663          	beqz	a5,80008848 <push_on+0x5c>
    80008820:	ffffe097          	auipc	ra,0xffffe
    80008824:	60c080e7          	jalr	1548(ra) # 80006e2c <mycpu>
    80008828:	07852783          	lw	a5,120(a0)
    8000882c:	01813083          	ld	ra,24(sp)
    80008830:	01013403          	ld	s0,16(sp)
    80008834:	0017879b          	addiw	a5,a5,1
    80008838:	06f52c23          	sw	a5,120(a0)
    8000883c:	00813483          	ld	s1,8(sp)
    80008840:	02010113          	addi	sp,sp,32
    80008844:	00008067          	ret
    80008848:	0014d493          	srli	s1,s1,0x1
    8000884c:	ffffe097          	auipc	ra,0xffffe
    80008850:	5e0080e7          	jalr	1504(ra) # 80006e2c <mycpu>
    80008854:	0014f493          	andi	s1,s1,1
    80008858:	06952e23          	sw	s1,124(a0)
    8000885c:	fc5ff06f          	j	80008820 <push_on+0x34>

0000000080008860 <pop_on>:
    80008860:	ff010113          	addi	sp,sp,-16
    80008864:	00813023          	sd	s0,0(sp)
    80008868:	00113423          	sd	ra,8(sp)
    8000886c:	01010413          	addi	s0,sp,16
    80008870:	ffffe097          	auipc	ra,0xffffe
    80008874:	5bc080e7          	jalr	1468(ra) # 80006e2c <mycpu>
    80008878:	100027f3          	csrr	a5,sstatus
    8000887c:	0027f793          	andi	a5,a5,2
    80008880:	04078463          	beqz	a5,800088c8 <pop_on+0x68>
    80008884:	07852783          	lw	a5,120(a0)
    80008888:	02f05863          	blez	a5,800088b8 <pop_on+0x58>
    8000888c:	fff7879b          	addiw	a5,a5,-1
    80008890:	06f52c23          	sw	a5,120(a0)
    80008894:	07853783          	ld	a5,120(a0)
    80008898:	00079863          	bnez	a5,800088a8 <pop_on+0x48>
    8000889c:	100027f3          	csrr	a5,sstatus
    800088a0:	ffd7f793          	andi	a5,a5,-3
    800088a4:	10079073          	csrw	sstatus,a5
    800088a8:	00813083          	ld	ra,8(sp)
    800088ac:	00013403          	ld	s0,0(sp)
    800088b0:	01010113          	addi	sp,sp,16
    800088b4:	00008067          	ret
    800088b8:	00001517          	auipc	a0,0x1
    800088bc:	ed050513          	addi	a0,a0,-304 # 80009788 <digits+0x70>
    800088c0:	fffff097          	auipc	ra,0xfffff
    800088c4:	f2c080e7          	jalr	-212(ra) # 800077ec <panic>
    800088c8:	00001517          	auipc	a0,0x1
    800088cc:	ea050513          	addi	a0,a0,-352 # 80009768 <digits+0x50>
    800088d0:	fffff097          	auipc	ra,0xfffff
    800088d4:	f1c080e7          	jalr	-228(ra) # 800077ec <panic>

00000000800088d8 <__memset>:
    800088d8:	ff010113          	addi	sp,sp,-16
    800088dc:	00813423          	sd	s0,8(sp)
    800088e0:	01010413          	addi	s0,sp,16
    800088e4:	1a060e63          	beqz	a2,80008aa0 <__memset+0x1c8>
    800088e8:	40a007b3          	neg	a5,a0
    800088ec:	0077f793          	andi	a5,a5,7
    800088f0:	00778693          	addi	a3,a5,7
    800088f4:	00b00813          	li	a6,11
    800088f8:	0ff5f593          	andi	a1,a1,255
    800088fc:	fff6071b          	addiw	a4,a2,-1
    80008900:	1b06e663          	bltu	a3,a6,80008aac <__memset+0x1d4>
    80008904:	1cd76463          	bltu	a4,a3,80008acc <__memset+0x1f4>
    80008908:	1a078e63          	beqz	a5,80008ac4 <__memset+0x1ec>
    8000890c:	00b50023          	sb	a1,0(a0)
    80008910:	00100713          	li	a4,1
    80008914:	1ae78463          	beq	a5,a4,80008abc <__memset+0x1e4>
    80008918:	00b500a3          	sb	a1,1(a0)
    8000891c:	00200713          	li	a4,2
    80008920:	1ae78a63          	beq	a5,a4,80008ad4 <__memset+0x1fc>
    80008924:	00b50123          	sb	a1,2(a0)
    80008928:	00300713          	li	a4,3
    8000892c:	18e78463          	beq	a5,a4,80008ab4 <__memset+0x1dc>
    80008930:	00b501a3          	sb	a1,3(a0)
    80008934:	00400713          	li	a4,4
    80008938:	1ae78263          	beq	a5,a4,80008adc <__memset+0x204>
    8000893c:	00b50223          	sb	a1,4(a0)
    80008940:	00500713          	li	a4,5
    80008944:	1ae78063          	beq	a5,a4,80008ae4 <__memset+0x20c>
    80008948:	00b502a3          	sb	a1,5(a0)
    8000894c:	00700713          	li	a4,7
    80008950:	18e79e63          	bne	a5,a4,80008aec <__memset+0x214>
    80008954:	00b50323          	sb	a1,6(a0)
    80008958:	00700e93          	li	t4,7
    8000895c:	00859713          	slli	a4,a1,0x8
    80008960:	00e5e733          	or	a4,a1,a4
    80008964:	01059e13          	slli	t3,a1,0x10
    80008968:	01c76e33          	or	t3,a4,t3
    8000896c:	01859313          	slli	t1,a1,0x18
    80008970:	006e6333          	or	t1,t3,t1
    80008974:	02059893          	slli	a7,a1,0x20
    80008978:	40f60e3b          	subw	t3,a2,a5
    8000897c:	011368b3          	or	a7,t1,a7
    80008980:	02859813          	slli	a6,a1,0x28
    80008984:	0108e833          	or	a6,a7,a6
    80008988:	03059693          	slli	a3,a1,0x30
    8000898c:	003e589b          	srliw	a7,t3,0x3
    80008990:	00d866b3          	or	a3,a6,a3
    80008994:	03859713          	slli	a4,a1,0x38
    80008998:	00389813          	slli	a6,a7,0x3
    8000899c:	00f507b3          	add	a5,a0,a5
    800089a0:	00e6e733          	or	a4,a3,a4
    800089a4:	000e089b          	sext.w	a7,t3
    800089a8:	00f806b3          	add	a3,a6,a5
    800089ac:	00e7b023          	sd	a4,0(a5)
    800089b0:	00878793          	addi	a5,a5,8
    800089b4:	fed79ce3          	bne	a5,a3,800089ac <__memset+0xd4>
    800089b8:	ff8e7793          	andi	a5,t3,-8
    800089bc:	0007871b          	sext.w	a4,a5
    800089c0:	01d787bb          	addw	a5,a5,t4
    800089c4:	0ce88e63          	beq	a7,a4,80008aa0 <__memset+0x1c8>
    800089c8:	00f50733          	add	a4,a0,a5
    800089cc:	00b70023          	sb	a1,0(a4)
    800089d0:	0017871b          	addiw	a4,a5,1
    800089d4:	0cc77663          	bgeu	a4,a2,80008aa0 <__memset+0x1c8>
    800089d8:	00e50733          	add	a4,a0,a4
    800089dc:	00b70023          	sb	a1,0(a4)
    800089e0:	0027871b          	addiw	a4,a5,2
    800089e4:	0ac77e63          	bgeu	a4,a2,80008aa0 <__memset+0x1c8>
    800089e8:	00e50733          	add	a4,a0,a4
    800089ec:	00b70023          	sb	a1,0(a4)
    800089f0:	0037871b          	addiw	a4,a5,3
    800089f4:	0ac77663          	bgeu	a4,a2,80008aa0 <__memset+0x1c8>
    800089f8:	00e50733          	add	a4,a0,a4
    800089fc:	00b70023          	sb	a1,0(a4)
    80008a00:	0047871b          	addiw	a4,a5,4
    80008a04:	08c77e63          	bgeu	a4,a2,80008aa0 <__memset+0x1c8>
    80008a08:	00e50733          	add	a4,a0,a4
    80008a0c:	00b70023          	sb	a1,0(a4)
    80008a10:	0057871b          	addiw	a4,a5,5
    80008a14:	08c77663          	bgeu	a4,a2,80008aa0 <__memset+0x1c8>
    80008a18:	00e50733          	add	a4,a0,a4
    80008a1c:	00b70023          	sb	a1,0(a4)
    80008a20:	0067871b          	addiw	a4,a5,6
    80008a24:	06c77e63          	bgeu	a4,a2,80008aa0 <__memset+0x1c8>
    80008a28:	00e50733          	add	a4,a0,a4
    80008a2c:	00b70023          	sb	a1,0(a4)
    80008a30:	0077871b          	addiw	a4,a5,7
    80008a34:	06c77663          	bgeu	a4,a2,80008aa0 <__memset+0x1c8>
    80008a38:	00e50733          	add	a4,a0,a4
    80008a3c:	00b70023          	sb	a1,0(a4)
    80008a40:	0087871b          	addiw	a4,a5,8
    80008a44:	04c77e63          	bgeu	a4,a2,80008aa0 <__memset+0x1c8>
    80008a48:	00e50733          	add	a4,a0,a4
    80008a4c:	00b70023          	sb	a1,0(a4)
    80008a50:	0097871b          	addiw	a4,a5,9
    80008a54:	04c77663          	bgeu	a4,a2,80008aa0 <__memset+0x1c8>
    80008a58:	00e50733          	add	a4,a0,a4
    80008a5c:	00b70023          	sb	a1,0(a4)
    80008a60:	00a7871b          	addiw	a4,a5,10
    80008a64:	02c77e63          	bgeu	a4,a2,80008aa0 <__memset+0x1c8>
    80008a68:	00e50733          	add	a4,a0,a4
    80008a6c:	00b70023          	sb	a1,0(a4)
    80008a70:	00b7871b          	addiw	a4,a5,11
    80008a74:	02c77663          	bgeu	a4,a2,80008aa0 <__memset+0x1c8>
    80008a78:	00e50733          	add	a4,a0,a4
    80008a7c:	00b70023          	sb	a1,0(a4)
    80008a80:	00c7871b          	addiw	a4,a5,12
    80008a84:	00c77e63          	bgeu	a4,a2,80008aa0 <__memset+0x1c8>
    80008a88:	00e50733          	add	a4,a0,a4
    80008a8c:	00b70023          	sb	a1,0(a4)
    80008a90:	00d7879b          	addiw	a5,a5,13
    80008a94:	00c7f663          	bgeu	a5,a2,80008aa0 <__memset+0x1c8>
    80008a98:	00f507b3          	add	a5,a0,a5
    80008a9c:	00b78023          	sb	a1,0(a5)
    80008aa0:	00813403          	ld	s0,8(sp)
    80008aa4:	01010113          	addi	sp,sp,16
    80008aa8:	00008067          	ret
    80008aac:	00b00693          	li	a3,11
    80008ab0:	e55ff06f          	j	80008904 <__memset+0x2c>
    80008ab4:	00300e93          	li	t4,3
    80008ab8:	ea5ff06f          	j	8000895c <__memset+0x84>
    80008abc:	00100e93          	li	t4,1
    80008ac0:	e9dff06f          	j	8000895c <__memset+0x84>
    80008ac4:	00000e93          	li	t4,0
    80008ac8:	e95ff06f          	j	8000895c <__memset+0x84>
    80008acc:	00000793          	li	a5,0
    80008ad0:	ef9ff06f          	j	800089c8 <__memset+0xf0>
    80008ad4:	00200e93          	li	t4,2
    80008ad8:	e85ff06f          	j	8000895c <__memset+0x84>
    80008adc:	00400e93          	li	t4,4
    80008ae0:	e7dff06f          	j	8000895c <__memset+0x84>
    80008ae4:	00500e93          	li	t4,5
    80008ae8:	e75ff06f          	j	8000895c <__memset+0x84>
    80008aec:	00600e93          	li	t4,6
    80008af0:	e6dff06f          	j	8000895c <__memset+0x84>

0000000080008af4 <__memmove>:
    80008af4:	ff010113          	addi	sp,sp,-16
    80008af8:	00813423          	sd	s0,8(sp)
    80008afc:	01010413          	addi	s0,sp,16
    80008b00:	0e060863          	beqz	a2,80008bf0 <__memmove+0xfc>
    80008b04:	fff6069b          	addiw	a3,a2,-1
    80008b08:	0006881b          	sext.w	a6,a3
    80008b0c:	0ea5e863          	bltu	a1,a0,80008bfc <__memmove+0x108>
    80008b10:	00758713          	addi	a4,a1,7
    80008b14:	00a5e7b3          	or	a5,a1,a0
    80008b18:	40a70733          	sub	a4,a4,a0
    80008b1c:	0077f793          	andi	a5,a5,7
    80008b20:	00f73713          	sltiu	a4,a4,15
    80008b24:	00174713          	xori	a4,a4,1
    80008b28:	0017b793          	seqz	a5,a5
    80008b2c:	00e7f7b3          	and	a5,a5,a4
    80008b30:	10078863          	beqz	a5,80008c40 <__memmove+0x14c>
    80008b34:	00900793          	li	a5,9
    80008b38:	1107f463          	bgeu	a5,a6,80008c40 <__memmove+0x14c>
    80008b3c:	0036581b          	srliw	a6,a2,0x3
    80008b40:	fff8081b          	addiw	a6,a6,-1
    80008b44:	02081813          	slli	a6,a6,0x20
    80008b48:	01d85893          	srli	a7,a6,0x1d
    80008b4c:	00858813          	addi	a6,a1,8
    80008b50:	00058793          	mv	a5,a1
    80008b54:	00050713          	mv	a4,a0
    80008b58:	01088833          	add	a6,a7,a6
    80008b5c:	0007b883          	ld	a7,0(a5)
    80008b60:	00878793          	addi	a5,a5,8
    80008b64:	00870713          	addi	a4,a4,8
    80008b68:	ff173c23          	sd	a7,-8(a4)
    80008b6c:	ff0798e3          	bne	a5,a6,80008b5c <__memmove+0x68>
    80008b70:	ff867713          	andi	a4,a2,-8
    80008b74:	02071793          	slli	a5,a4,0x20
    80008b78:	0207d793          	srli	a5,a5,0x20
    80008b7c:	00f585b3          	add	a1,a1,a5
    80008b80:	40e686bb          	subw	a3,a3,a4
    80008b84:	00f507b3          	add	a5,a0,a5
    80008b88:	06e60463          	beq	a2,a4,80008bf0 <__memmove+0xfc>
    80008b8c:	0005c703          	lbu	a4,0(a1)
    80008b90:	00e78023          	sb	a4,0(a5)
    80008b94:	04068e63          	beqz	a3,80008bf0 <__memmove+0xfc>
    80008b98:	0015c603          	lbu	a2,1(a1)
    80008b9c:	00100713          	li	a4,1
    80008ba0:	00c780a3          	sb	a2,1(a5)
    80008ba4:	04e68663          	beq	a3,a4,80008bf0 <__memmove+0xfc>
    80008ba8:	0025c603          	lbu	a2,2(a1)
    80008bac:	00200713          	li	a4,2
    80008bb0:	00c78123          	sb	a2,2(a5)
    80008bb4:	02e68e63          	beq	a3,a4,80008bf0 <__memmove+0xfc>
    80008bb8:	0035c603          	lbu	a2,3(a1)
    80008bbc:	00300713          	li	a4,3
    80008bc0:	00c781a3          	sb	a2,3(a5)
    80008bc4:	02e68663          	beq	a3,a4,80008bf0 <__memmove+0xfc>
    80008bc8:	0045c603          	lbu	a2,4(a1)
    80008bcc:	00400713          	li	a4,4
    80008bd0:	00c78223          	sb	a2,4(a5)
    80008bd4:	00e68e63          	beq	a3,a4,80008bf0 <__memmove+0xfc>
    80008bd8:	0055c603          	lbu	a2,5(a1)
    80008bdc:	00500713          	li	a4,5
    80008be0:	00c782a3          	sb	a2,5(a5)
    80008be4:	00e68663          	beq	a3,a4,80008bf0 <__memmove+0xfc>
    80008be8:	0065c703          	lbu	a4,6(a1)
    80008bec:	00e78323          	sb	a4,6(a5)
    80008bf0:	00813403          	ld	s0,8(sp)
    80008bf4:	01010113          	addi	sp,sp,16
    80008bf8:	00008067          	ret
    80008bfc:	02061713          	slli	a4,a2,0x20
    80008c00:	02075713          	srli	a4,a4,0x20
    80008c04:	00e587b3          	add	a5,a1,a4
    80008c08:	f0f574e3          	bgeu	a0,a5,80008b10 <__memmove+0x1c>
    80008c0c:	02069613          	slli	a2,a3,0x20
    80008c10:	02065613          	srli	a2,a2,0x20
    80008c14:	fff64613          	not	a2,a2
    80008c18:	00e50733          	add	a4,a0,a4
    80008c1c:	00c78633          	add	a2,a5,a2
    80008c20:	fff7c683          	lbu	a3,-1(a5)
    80008c24:	fff78793          	addi	a5,a5,-1
    80008c28:	fff70713          	addi	a4,a4,-1
    80008c2c:	00d70023          	sb	a3,0(a4)
    80008c30:	fec798e3          	bne	a5,a2,80008c20 <__memmove+0x12c>
    80008c34:	00813403          	ld	s0,8(sp)
    80008c38:	01010113          	addi	sp,sp,16
    80008c3c:	00008067          	ret
    80008c40:	02069713          	slli	a4,a3,0x20
    80008c44:	02075713          	srli	a4,a4,0x20
    80008c48:	00170713          	addi	a4,a4,1
    80008c4c:	00e50733          	add	a4,a0,a4
    80008c50:	00050793          	mv	a5,a0
    80008c54:	0005c683          	lbu	a3,0(a1)
    80008c58:	00178793          	addi	a5,a5,1
    80008c5c:	00158593          	addi	a1,a1,1
    80008c60:	fed78fa3          	sb	a3,-1(a5)
    80008c64:	fee798e3          	bne	a5,a4,80008c54 <__memmove+0x160>
    80008c68:	f89ff06f          	j	80008bf0 <__memmove+0xfc>

0000000080008c6c <__putc>:
    80008c6c:	fe010113          	addi	sp,sp,-32
    80008c70:	00813823          	sd	s0,16(sp)
    80008c74:	00113c23          	sd	ra,24(sp)
    80008c78:	02010413          	addi	s0,sp,32
    80008c7c:	00050793          	mv	a5,a0
    80008c80:	fef40593          	addi	a1,s0,-17
    80008c84:	00100613          	li	a2,1
    80008c88:	00000513          	li	a0,0
    80008c8c:	fef407a3          	sb	a5,-17(s0)
    80008c90:	fffff097          	auipc	ra,0xfffff
    80008c94:	b3c080e7          	jalr	-1220(ra) # 800077cc <console_write>
    80008c98:	01813083          	ld	ra,24(sp)
    80008c9c:	01013403          	ld	s0,16(sp)
    80008ca0:	02010113          	addi	sp,sp,32
    80008ca4:	00008067          	ret

0000000080008ca8 <__getc>:
    80008ca8:	fe010113          	addi	sp,sp,-32
    80008cac:	00813823          	sd	s0,16(sp)
    80008cb0:	00113c23          	sd	ra,24(sp)
    80008cb4:	02010413          	addi	s0,sp,32
    80008cb8:	fe840593          	addi	a1,s0,-24
    80008cbc:	00100613          	li	a2,1
    80008cc0:	00000513          	li	a0,0
    80008cc4:	fffff097          	auipc	ra,0xfffff
    80008cc8:	ae8080e7          	jalr	-1304(ra) # 800077ac <console_read>
    80008ccc:	fe844503          	lbu	a0,-24(s0)
    80008cd0:	01813083          	ld	ra,24(sp)
    80008cd4:	01013403          	ld	s0,16(sp)
    80008cd8:	02010113          	addi	sp,sp,32
    80008cdc:	00008067          	ret

0000000080008ce0 <console_handler>:
    80008ce0:	fe010113          	addi	sp,sp,-32
    80008ce4:	00813823          	sd	s0,16(sp)
    80008ce8:	00113c23          	sd	ra,24(sp)
    80008cec:	00913423          	sd	s1,8(sp)
    80008cf0:	02010413          	addi	s0,sp,32
    80008cf4:	14202773          	csrr	a4,scause
    80008cf8:	100027f3          	csrr	a5,sstatus
    80008cfc:	0027f793          	andi	a5,a5,2
    80008d00:	06079e63          	bnez	a5,80008d7c <console_handler+0x9c>
    80008d04:	00074c63          	bltz	a4,80008d1c <console_handler+0x3c>
    80008d08:	01813083          	ld	ra,24(sp)
    80008d0c:	01013403          	ld	s0,16(sp)
    80008d10:	00813483          	ld	s1,8(sp)
    80008d14:	02010113          	addi	sp,sp,32
    80008d18:	00008067          	ret
    80008d1c:	0ff77713          	andi	a4,a4,255
    80008d20:	00900793          	li	a5,9
    80008d24:	fef712e3          	bne	a4,a5,80008d08 <console_handler+0x28>
    80008d28:	ffffe097          	auipc	ra,0xffffe
    80008d2c:	6dc080e7          	jalr	1756(ra) # 80007404 <plic_claim>
    80008d30:	00a00793          	li	a5,10
    80008d34:	00050493          	mv	s1,a0
    80008d38:	02f50c63          	beq	a0,a5,80008d70 <console_handler+0x90>
    80008d3c:	fc0506e3          	beqz	a0,80008d08 <console_handler+0x28>
    80008d40:	00050593          	mv	a1,a0
    80008d44:	00001517          	auipc	a0,0x1
    80008d48:	94c50513          	addi	a0,a0,-1716 # 80009690 <CONSOLE_STATUS+0x680>
    80008d4c:	fffff097          	auipc	ra,0xfffff
    80008d50:	afc080e7          	jalr	-1284(ra) # 80007848 <__printf>
    80008d54:	01013403          	ld	s0,16(sp)
    80008d58:	01813083          	ld	ra,24(sp)
    80008d5c:	00048513          	mv	a0,s1
    80008d60:	00813483          	ld	s1,8(sp)
    80008d64:	02010113          	addi	sp,sp,32
    80008d68:	ffffe317          	auipc	t1,0xffffe
    80008d6c:	6d430067          	jr	1748(t1) # 8000743c <plic_complete>
    80008d70:	fffff097          	auipc	ra,0xfffff
    80008d74:	3e0080e7          	jalr	992(ra) # 80008150 <uartintr>
    80008d78:	fddff06f          	j	80008d54 <console_handler+0x74>
    80008d7c:	00001517          	auipc	a0,0x1
    80008d80:	a1450513          	addi	a0,a0,-1516 # 80009790 <digits+0x78>
    80008d84:	fffff097          	auipc	ra,0xfffff
    80008d88:	a68080e7          	jalr	-1432(ra) # 800077ec <panic>
	...
