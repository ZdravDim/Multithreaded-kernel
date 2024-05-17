
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	ca013103          	ld	sp,-864(sp) # 8000bca0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	3bd060ef          	jal	ra,80006bd8 <start>

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
    80001080:	3e1010ef          	jal	ra,80002c60 <_ZN5RiscV22handle_supervisor_trapEv>

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
    80001270:	458080e7          	jalr	1112(ra) # 800026c4 <_ZN15MemoryAllocator20get_number_of_blocksEm>
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
    800016bc:	37878793          	addi	a5,a5,888 # 8000ba30 <_ZTV3Sem+0x10>
    800016c0:	00f53023          	sd	a5,0(a0) # 1000 <_entry-0x7ffff000>
    blocked_threads.free();
    800016c4:	00850513          	addi	a0,a0,8
    800016c8:	00002097          	auipc	ra,0x2
    800016cc:	9c0080e7          	jalr	-1600(ra) # 80003088 <_ZN10ThreadList4freeEv>
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
    80001704:	5b89b983          	ld	s3,1464(s3) # 8000bcb8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001708:	0009b483          	ld	s1,0(s3)
    old -> set_status(TCB::BLOCKED);
    8000170c:	00200593          	li	a1,2
    80001710:	00048513          	mv	a0,s1
    80001714:	00002097          	auipc	ra,0x2
    80001718:	be4080e7          	jalr	-1052(ra) # 800032f8 <_ZN3TCB10set_statusENS_6StatusE>
    blocked_threads.push_back(old);
    8000171c:	00048593          	mv	a1,s1
    80001720:	00890513          	addi	a0,s2,8
    80001724:	00002097          	auipc	ra,0x2
    80001728:	880080e7          	jalr	-1920(ra) # 80002fa4 <_ZN10ThreadList9push_backEP3TCB>
    TCB::running = Scheduler::get();
    8000172c:	00001097          	auipc	ra,0x1
    80001730:	278080e7          	jalr	632(ra) # 800029a4 <_ZN9Scheduler3getEv>
    80001734:	00050593          	mv	a1,a0
    80001738:	00a9b023          	sd	a0,0(s3)
    TCB::yield(old, TCB::running);
    8000173c:	00048513          	mv	a0,s1
    80001740:	00002097          	auipc	ra,0x2
    80001744:	a28080e7          	jalr	-1496(ra) # 80003168 <_ZN3TCB5yieldEPS_S0_>
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
    80001780:	8b8080e7          	jalr	-1864(ra) # 80003034 <_ZN10ThreadList12remove_firstEv>
    80001784:	00050493          	mv	s1,a0
    thread -> set_status(TCB::RUNNABLE);
    80001788:	00000593          	li	a1,0
    8000178c:	00002097          	auipc	ra,0x2
    80001790:	b6c080e7          	jalr	-1172(ra) # 800032f8 <_ZN3TCB10set_statusENS_6StatusE>
    Scheduler::put(thread);
    80001794:	00048513          	mv	a0,s1
    80001798:	00001097          	auipc	ra,0x1
    8000179c:	19c080e7          	jalr	412(ra) # 80002934 <_ZN9Scheduler3putEP3TCB>
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
    800017d8:	77c080e7          	jalr	1916(ra) # 80002f50 <_ZN10ThreadList9get_firstEv>
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
    80001930:	d98080e7          	jalr	-616(ra) # 800026c4 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80001934:	00001097          	auipc	ra,0x1
    80001938:	9cc080e7          	jalr	-1588(ra) # 80002300 <_ZN15MemoryAllocator9mem_allocEm>
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
    8000197c:	0b878793          	addi	a5,a5,184 # 8000ba30 <_ZTV3Sem+0x10>
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
    800019d0:	aa8080e7          	jalr	-1368(ra) # 80002474 <_ZN15MemoryAllocator8mem_freeEPv>
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
        num2 /= 10;
    }
    while (zero_count--) __putc('0');
}
/// kernel thread used for sending chars to console controller
void kernelConsoleOutput(void *args) {
    80001a24:	ff010113          	addi	sp,sp,-16
    80001a28:	00113423          	sd	ra,8(sp)
    80001a2c:	00813023          	sd	s0,0(sp)
    80001a30:	01010413          	addi	s0,sp,16
    80001a34:	01c0006f          	j	80001a50 <_Z19kernelConsoleOutputPv+0x2c>
    while (true) {
        /// Send data to Console Controller if data is ready
        while (*(char *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT) {
            char c = Con::getc_output();
    80001a38:	00000097          	auipc	ra,0x0
    80001a3c:	2e8080e7          	jalr	744(ra) # 80001d20 <_ZN3Con11getc_outputEv>
            *(char *) CONSOLE_TX_DATA = c;
    80001a40:	0000a797          	auipc	a5,0xa
    80001a44:	2507b783          	ld	a5,592(a5) # 8000bc90 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001a48:	0007b783          	ld	a5,0(a5)
    80001a4c:	00a78023          	sb	a0,0(a5)
        while (*(char *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT) {
    80001a50:	0000a797          	auipc	a5,0xa
    80001a54:	2287b783          	ld	a5,552(a5) # 8000bc78 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001a58:	0007b783          	ld	a5,0(a5)
    80001a5c:	0007c783          	lbu	a5,0(a5)
    80001a60:	0207f793          	andi	a5,a5,32
    80001a64:	fc079ae3          	bnez	a5,80001a38 <_Z19kernelConsoleOutputPv+0x14>
        }
        /// if there isn't ready data, dispatch in order not to occupy CPU for the DEFAULT_TIME_SLICE
        thread_dispatch();
    80001a68:	00000097          	auipc	ra,0x0
    80001a6c:	964080e7          	jalr	-1692(ra) # 800013cc <_Z15thread_dispatchv>
    }
    80001a70:	fe1ff06f          	j	80001a50 <_Z19kernelConsoleOutputPv+0x2c>

0000000080001a74 <_Z15userMainWrapperPv>:
}

void userMain();
void userMainWrapper(void *args) {
    80001a74:	ff010113          	addi	sp,sp,-16
    80001a78:	00113423          	sd	ra,8(sp)
    80001a7c:	00813023          	sd	s0,0(sp)
    80001a80:	01010413          	addi	s0,sp,16
    userMain();
    80001a84:	00005097          	auipc	ra,0x5
    80001a88:	8ec080e7          	jalr	-1812(ra) # 80006370 <_Z8userMainv>
}
    80001a8c:	00813083          	ld	ra,8(sp)
    80001a90:	00013403          	ld	s0,0(sp)
    80001a94:	01010113          	addi	sp,sp,16
    80001a98:	00008067          	ret

0000000080001a9c <_Z11printNumberm>:
void printNumber(uint64 num) {
    80001a9c:	fd010113          	addi	sp,sp,-48
    80001aa0:	02113423          	sd	ra,40(sp)
    80001aa4:	02813023          	sd	s0,32(sp)
    80001aa8:	00913c23          	sd	s1,24(sp)
    80001aac:	01213823          	sd	s2,16(sp)
    80001ab0:	01313423          	sd	s3,8(sp)
    80001ab4:	03010413          	addi	s0,sp,48
    80001ab8:	00050913          	mv	s2,a0
    __putc('\n');
    80001abc:	00a00513          	li	a0,10
    80001ac0:	00007097          	auipc	ra,0x7
    80001ac4:	1dc080e7          	jalr	476(ra) # 80008c9c <__putc>
    __putc('N');
    80001ac8:	04e00513          	li	a0,78
    80001acc:	00007097          	auipc	ra,0x7
    80001ad0:	1d0080e7          	jalr	464(ra) # 80008c9c <__putc>
    __putc(':');
    80001ad4:	03a00513          	li	a0,58
    80001ad8:	00007097          	auipc	ra,0x7
    80001adc:	1c4080e7          	jalr	452(ra) # 80008c9c <__putc>
    __putc(' ');
    80001ae0:	02000513          	li	a0,32
    80001ae4:	00007097          	auipc	ra,0x7
    80001ae8:	1b8080e7          	jalr	440(ra) # 80008c9c <__putc>
    if (!num) __putc('0');
    80001aec:	00090863          	beqz	s2,80001afc <_Z11printNumberm+0x60>
    uint64 num2 = 0, zero_count = 0;
    80001af0:	00000993          	li	s3,0
    80001af4:	00000493          	li	s1,0
    80001af8:	01c0006f          	j	80001b14 <_Z11printNumberm+0x78>
    if (!num) __putc('0');
    80001afc:	03000513          	li	a0,48
    80001b00:	00007097          	auipc	ra,0x7
    80001b04:	19c080e7          	jalr	412(ra) # 80008c9c <__putc>
    80001b08:	fe9ff06f          	j	80001af0 <_Z11printNumberm+0x54>
        num /= 10;
    80001b0c:	00a00793          	li	a5,10
    80001b10:	02f95933          	divu	s2,s2,a5
    while (num) {
    80001b14:	02090463          	beqz	s2,80001b3c <_Z11printNumberm+0xa0>
        num2 *= 10;
    80001b18:	00249793          	slli	a5,s1,0x2
    80001b1c:	009784b3          	add	s1,a5,s1
    80001b20:	00149793          	slli	a5,s1,0x1
        num2 += num % 10;
    80001b24:	00a00493          	li	s1,10
    80001b28:	029974b3          	remu	s1,s2,s1
    80001b2c:	00f484b3          	add	s1,s1,a5
        if (!num2) ++zero_count;
    80001b30:	fc049ee3          	bnez	s1,80001b0c <_Z11printNumberm+0x70>
    80001b34:	00198993          	addi	s3,s3,1
    80001b38:	fd5ff06f          	j	80001b0c <_Z11printNumberm+0x70>
    while (num2) {
    80001b3c:	02048063          	beqz	s1,80001b5c <_Z11printNumberm+0xc0>
        __putc(num2 % 10 + '0');
    80001b40:	00a00913          	li	s2,10
    80001b44:	0324f533          	remu	a0,s1,s2
    80001b48:	03050513          	addi	a0,a0,48
    80001b4c:	00007097          	auipc	ra,0x7
    80001b50:	150080e7          	jalr	336(ra) # 80008c9c <__putc>
        num2 /= 10;
    80001b54:	0324d4b3          	divu	s1,s1,s2
    while (num2) {
    80001b58:	fe5ff06f          	j	80001b3c <_Z11printNumberm+0xa0>
    while (zero_count--) __putc('0');
    80001b5c:	fff98493          	addi	s1,s3,-1
    80001b60:	00098c63          	beqz	s3,80001b78 <_Z11printNumberm+0xdc>
    80001b64:	03000513          	li	a0,48
    80001b68:	00007097          	auipc	ra,0x7
    80001b6c:	134080e7          	jalr	308(ra) # 80008c9c <__putc>
    80001b70:	00048993          	mv	s3,s1
    80001b74:	fe9ff06f          	j	80001b5c <_Z11printNumberm+0xc0>
}
    80001b78:	02813083          	ld	ra,40(sp)
    80001b7c:	02013403          	ld	s0,32(sp)
    80001b80:	01813483          	ld	s1,24(sp)
    80001b84:	01013903          	ld	s2,16(sp)
    80001b88:	00813983          	ld	s3,8(sp)
    80001b8c:	03010113          	addi	sp,sp,48
    80001b90:	00008067          	ret

0000000080001b94 <main>:

int main() {
    80001b94:	fd010113          	addi	sp,sp,-48
    80001b98:	02113423          	sd	ra,40(sp)
    80001b9c:	02813023          	sd	s0,32(sp)
    80001ba0:	03010413          	addi	s0,sp,48
    /// Set interrupt routine handler
    RiscV::write_stvec((uint64) &RiscV::handle_interrupt);
    80001ba4:	0000a797          	auipc	a5,0xa
    80001ba8:	0f47b783          	ld	a5,244(a5) # 8000bc98 <_GLOBAL_OFFSET_TABLE_+0x30>
    __asm__ volatile ("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void RiscV::write_stvec(uint64 val) {
    __asm__ volatile ("csrw stvec, %0" : : "r"(val));
    80001bac:	10579073          	csrw	stvec,a5
    /// Initialization
    MemoryAllocator::initialize();
    80001bb0:	00001097          	auipc	ra,0x1
    80001bb4:	b34080e7          	jalr	-1228(ra) # 800026e4 <_ZN15MemoryAllocator10initializeEv>
    Con::initialize();
    80001bb8:	00000097          	auipc	ra,0x0
    80001bbc:	070080e7          	jalr	112(ra) # 80001c28 <_ZN3Con10initializeEv>

    thread_t threads[4];

    thread_create(&threads[0], nullptr, nullptr);
    80001bc0:	00000613          	li	a2,0
    80001bc4:	00000593          	li	a1,0
    80001bc8:	fd040513          	addi	a0,s0,-48
    80001bcc:	fffff097          	auipc	ra,0xfffff
    80001bd0:	72c080e7          	jalr	1836(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running = threads[0];
    80001bd4:	fd043703          	ld	a4,-48(s0)
    80001bd8:	0000a797          	auipc	a5,0xa
    80001bdc:	0e07b783          	ld	a5,224(a5) # 8000bcb8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001be0:	00e7b023          	sd	a4,0(a5)
inline void RiscV::write_sip(uint64 val) {
    __asm__ volatile ("csrw sip, %0" : : "r"(val));
}

inline void RiscV::ms_sstatus(uint64 mask) {
    __asm__ volatile ("csrs sstatus, %0" : : "r"(mask));
    80001be4:	00200793          	li	a5,2
    80001be8:	1007a073          	csrs	sstatus,a5

    /// Enable external interrupts
    RiscV::ms_sstatus(RiscV::SSTATUS_SIE);

    thread_create(&threads[1], kernelConsoleOutput, nullptr);
    80001bec:	00000613          	li	a2,0
    80001bf0:	00000597          	auipc	a1,0x0
    80001bf4:	e3458593          	addi	a1,a1,-460 # 80001a24 <_Z19kernelConsoleOutputPv>
    80001bf8:	fd840513          	addi	a0,s0,-40
    80001bfc:	fffff097          	auipc	ra,0xfffff
    80001c00:	6fc080e7          	jalr	1788(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>

    /// Test Everything
    thread_create(&threads[2], userMainWrapper, nullptr);
    80001c04:	00000613          	li	a2,0
    80001c08:	00000597          	auipc	a1,0x0
    80001c0c:	e6c58593          	addi	a1,a1,-404 # 80001a74 <_Z15userMainWrapperPv>
    80001c10:	fe040513          	addi	a0,s0,-32
    80001c14:	fffff097          	auipc	ra,0xfffff
    80001c18:	6e4080e7          	jalr	1764(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    while (true) thread_dispatch();
    80001c1c:	fffff097          	auipc	ra,0xfffff
    80001c20:	7b0080e7          	jalr	1968(ra) # 800013cc <_Z15thread_dispatchv>
    80001c24:	ff9ff06f          	j	80001c1c <main+0x88>

0000000080001c28 <_ZN3Con10initializeEv>:
bool Con::initialized = false;
BoundedBuffer* Con::input_buffer = nullptr;
BoundedBuffer* Con::output_buffer = nullptr;

void Con::initialize() {
    if (!initialized) {
    80001c28:	0000a797          	auipc	a5,0xa
    80001c2c:	0e87c783          	lbu	a5,232(a5) # 8000bd10 <_ZN3Con11initializedE>
    80001c30:	00078463          	beqz	a5,80001c38 <_ZN3Con10initializeEv+0x10>
    80001c34:	00008067          	ret
void Con::initialize() {
    80001c38:	fe010113          	addi	sp,sp,-32
    80001c3c:	00113c23          	sd	ra,24(sp)
    80001c40:	00813823          	sd	s0,16(sp)
    80001c44:	00913423          	sd	s1,8(sp)
    80001c48:	01213023          	sd	s2,0(sp)
    80001c4c:	02010413          	addi	s0,sp,32
        initialized = true;
    80001c50:	00100793          	li	a5,1
    80001c54:	0000a717          	auipc	a4,0xa
    80001c58:	0af70e23          	sb	a5,188(a4) # 8000bd10 <_ZN3Con11initializedE>
        input_buffer = new BoundedBuffer();
    80001c5c:	21000513          	li	a0,528
    80001c60:	00001097          	auipc	ra,0x1
    80001c64:	ba4080e7          	jalr	-1116(ra) # 80002804 <_ZN13BoundedBuffernwEm>
    80001c68:	00050493          	mv	s1,a0
    80001c6c:	00001097          	auipc	ra,0x1
    80001c70:	b00080e7          	jalr	-1280(ra) # 8000276c <_ZN13BoundedBufferC1Ev>
    80001c74:	0000a797          	auipc	a5,0xa
    80001c78:	0a97b223          	sd	s1,164(a5) # 8000bd18 <_ZN3Con12input_bufferE>
        output_buffer = new BoundedBuffer();
    80001c7c:	21000513          	li	a0,528
    80001c80:	00001097          	auipc	ra,0x1
    80001c84:	b84080e7          	jalr	-1148(ra) # 80002804 <_ZN13BoundedBuffernwEm>
    80001c88:	00050493          	mv	s1,a0
    80001c8c:	00001097          	auipc	ra,0x1
    80001c90:	ae0080e7          	jalr	-1312(ra) # 8000276c <_ZN13BoundedBufferC1Ev>
    80001c94:	0000a797          	auipc	a5,0xa
    80001c98:	0897b623          	sd	s1,140(a5) # 8000bd20 <_ZN3Con13output_bufferE>
    }
}
    80001c9c:	01813083          	ld	ra,24(sp)
    80001ca0:	01013403          	ld	s0,16(sp)
    80001ca4:	00813483          	ld	s1,8(sp)
    80001ca8:	00013903          	ld	s2,0(sp)
    80001cac:	02010113          	addi	sp,sp,32
    80001cb0:	00008067          	ret
    80001cb4:	00050913          	mv	s2,a0
        input_buffer = new BoundedBuffer();
    80001cb8:	00048513          	mv	a0,s1
    80001cbc:	00001097          	auipc	ra,0x1
    80001cc0:	b78080e7          	jalr	-1160(ra) # 80002834 <_ZN13BoundedBufferdlEPv>
    80001cc4:	00090513          	mv	a0,s2
    80001cc8:	0000b097          	auipc	ra,0xb
    80001ccc:	1c0080e7          	jalr	448(ra) # 8000ce88 <_Unwind_Resume>
    80001cd0:	00050913          	mv	s2,a0
        output_buffer = new BoundedBuffer();
    80001cd4:	00048513          	mv	a0,s1
    80001cd8:	00001097          	auipc	ra,0x1
    80001cdc:	b5c080e7          	jalr	-1188(ra) # 80002834 <_ZN13BoundedBufferdlEPv>
    80001ce0:	00090513          	mv	a0,s2
    80001ce4:	0000b097          	auipc	ra,0xb
    80001ce8:	1a4080e7          	jalr	420(ra) # 8000ce88 <_Unwind_Resume>

0000000080001cec <_ZN3Con11putc_outputEc>:

void Con::putc_output(char c) {
    80001cec:	ff010113          	addi	sp,sp,-16
    80001cf0:	00113423          	sd	ra,8(sp)
    80001cf4:	00813023          	sd	s0,0(sp)
    80001cf8:	01010413          	addi	s0,sp,16
    80001cfc:	00050593          	mv	a1,a0
    output_buffer -> putc(c);
    80001d00:	0000a517          	auipc	a0,0xa
    80001d04:	02053503          	ld	a0,32(a0) # 8000bd20 <_ZN3Con13output_bufferE>
    80001d08:	00001097          	auipc	ra,0x1
    80001d0c:	b54080e7          	jalr	-1196(ra) # 8000285c <_ZN13BoundedBuffer4putcEc>
}
    80001d10:	00813083          	ld	ra,8(sp)
    80001d14:	00013403          	ld	s0,0(sp)
    80001d18:	01010113          	addi	sp,sp,16
    80001d1c:	00008067          	ret

0000000080001d20 <_ZN3Con11getc_outputEv>:

char Con::getc_output() {
    80001d20:	ff010113          	addi	sp,sp,-16
    80001d24:	00113423          	sd	ra,8(sp)
    80001d28:	00813023          	sd	s0,0(sp)
    80001d2c:	01010413          	addi	s0,sp,16
    return output_buffer -> getc();
    80001d30:	0000a517          	auipc	a0,0xa
    80001d34:	ff053503          	ld	a0,-16(a0) # 8000bd20 <_ZN3Con13output_bufferE>
    80001d38:	00001097          	auipc	ra,0x1
    80001d3c:	b90080e7          	jalr	-1136(ra) # 800028c8 <_ZN13BoundedBuffer4getcEv>
}
    80001d40:	00813083          	ld	ra,8(sp)
    80001d44:	00013403          	ld	s0,0(sp)
    80001d48:	01010113          	addi	sp,sp,16
    80001d4c:	00008067          	ret

0000000080001d50 <_ZN3Con10putc_inputEc>:

void Con::putc_input(char c) {
    80001d50:	ff010113          	addi	sp,sp,-16
    80001d54:	00113423          	sd	ra,8(sp)
    80001d58:	00813023          	sd	s0,0(sp)
    80001d5c:	01010413          	addi	s0,sp,16
    80001d60:	00050593          	mv	a1,a0
    input_buffer -> putc(c);
    80001d64:	0000a517          	auipc	a0,0xa
    80001d68:	fb453503          	ld	a0,-76(a0) # 8000bd18 <_ZN3Con12input_bufferE>
    80001d6c:	00001097          	auipc	ra,0x1
    80001d70:	af0080e7          	jalr	-1296(ra) # 8000285c <_ZN13BoundedBuffer4putcEc>
}
    80001d74:	00813083          	ld	ra,8(sp)
    80001d78:	00013403          	ld	s0,0(sp)
    80001d7c:	01010113          	addi	sp,sp,16
    80001d80:	00008067          	ret

0000000080001d84 <_ZN3Con10getc_inputEv>:

char Con::getc_input() {
    80001d84:	ff010113          	addi	sp,sp,-16
    80001d88:	00113423          	sd	ra,8(sp)
    80001d8c:	00813023          	sd	s0,0(sp)
    80001d90:	01010413          	addi	s0,sp,16
    return input_buffer -> getc();
    80001d94:	0000a517          	auipc	a0,0xa
    80001d98:	f8453503          	ld	a0,-124(a0) # 8000bd18 <_ZN3Con12input_bufferE>
    80001d9c:	00001097          	auipc	ra,0x1
    80001da0:	b2c080e7          	jalr	-1236(ra) # 800028c8 <_ZN13BoundedBuffer4getcEv>
    80001da4:	00813083          	ld	ra,8(sp)
    80001da8:	00013403          	ld	s0,0(sp)
    80001dac:	01010113          	addi	sp,sp,16
    80001db0:	00008067          	ret

0000000080001db4 <_ZN6Thread12start_helperEPv>:

Thread::~Thread() {
    if (myHandle -> is_finished()) delete myHandle;
}

void Thread::start_helper(void *args) {
    80001db4:	ff010113          	addi	sp,sp,-16
    80001db8:	00113423          	sd	ra,8(sp)
    80001dbc:	00813023          	sd	s0,0(sp)
    80001dc0:	01010413          	addi	s0,sp,16
    auto* thread = (Thread*) args;
    if (!thread -> body) thread -> run();
    80001dc4:	01053783          	ld	a5,16(a0)
    80001dc8:	00078c63          	beqz	a5,80001de0 <_ZN6Thread12start_helperEPv+0x2c>
    else thread -> body(args);
    80001dcc:	000780e7          	jalr	a5
}
    80001dd0:	00813083          	ld	ra,8(sp)
    80001dd4:	00013403          	ld	s0,0(sp)
    80001dd8:	01010113          	addi	sp,sp,16
    80001ddc:	00008067          	ret
    if (!thread -> body) thread -> run();
    80001de0:	00053783          	ld	a5,0(a0)
    80001de4:	0107b783          	ld	a5,16(a5)
    80001de8:	000780e7          	jalr	a5
    80001dec:	fe5ff06f          	j	80001dd0 <_ZN6Thread12start_helperEPv+0x1c>

0000000080001df0 <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    80001df0:	fe010113          	addi	sp,sp,-32
    80001df4:	00113c23          	sd	ra,24(sp)
    80001df8:	00813823          	sd	s0,16(sp)
    80001dfc:	00913423          	sd	s1,8(sp)
    80001e00:	02010413          	addi	s0,sp,32
    80001e04:	00050493          	mv	s1,a0
    80001e08:	0000a797          	auipc	a5,0xa
    80001e0c:	c8078793          	addi	a5,a5,-896 # 8000ba88 <_ZTV6Thread+0x10>
    80001e10:	00f53023          	sd	a5,0(a0)
    if (myHandle -> is_finished()) delete myHandle;
    80001e14:	00853503          	ld	a0,8(a0)
    80001e18:	00001097          	auipc	ra,0x1
    80001e1c:	6d4080e7          	jalr	1748(ra) # 800034ec <_ZNK3TCB11is_finishedEv>
    80001e20:	00050a63          	beqz	a0,80001e34 <_ZN6ThreadD1Ev+0x44>
    80001e24:	0084b503          	ld	a0,8(s1)
    80001e28:	00050663          	beqz	a0,80001e34 <_ZN6ThreadD1Ev+0x44>
    80001e2c:	00001097          	auipc	ra,0x1
    80001e30:	59c080e7          	jalr	1436(ra) # 800033c8 <_ZN3TCBdlEPv>
}
    80001e34:	01813083          	ld	ra,24(sp)
    80001e38:	01013403          	ld	s0,16(sp)
    80001e3c:	00813483          	ld	s1,8(sp)
    80001e40:	02010113          	addi	sp,sp,32
    80001e44:	00008067          	ret

0000000080001e48 <_ZN9SemaphoreD1Ev>:
Semaphore::Semaphore(unsigned int init) {
    myHandle = nullptr;
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    80001e48:	0000a797          	auipc	a5,0xa
    80001e4c:	c6878793          	addi	a5,a5,-920 # 8000bab0 <_ZTV9Semaphore+0x10>
    80001e50:	00f53023          	sd	a5,0(a0)
    if (myHandle) sem_close(myHandle);
    80001e54:	00853503          	ld	a0,8(a0)
    80001e58:	02050663          	beqz	a0,80001e84 <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    80001e5c:	ff010113          	addi	sp,sp,-16
    80001e60:	00113423          	sd	ra,8(sp)
    80001e64:	00813023          	sd	s0,0(sp)
    80001e68:	01010413          	addi	s0,sp,16
    if (myHandle) sem_close(myHandle);
    80001e6c:	fffff097          	auipc	ra,0xfffff
    80001e70:	5ec080e7          	jalr	1516(ra) # 80001458 <_Z9sem_closeP3Sem>
}
    80001e74:	00813083          	ld	ra,8(sp)
    80001e78:	00013403          	ld	s0,0(sp)
    80001e7c:	01010113          	addi	sp,sp,16
    80001e80:	00008067          	ret
    80001e84:	00008067          	ret

0000000080001e88 <_Znwm>:
void* operator new(size_t size){
    80001e88:	ff010113          	addi	sp,sp,-16
    80001e8c:	00113423          	sd	ra,8(sp)
    80001e90:	00813023          	sd	s0,0(sp)
    80001e94:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001e98:	fffff097          	auipc	ra,0xfffff
    80001e9c:	3c0080e7          	jalr	960(ra) # 80001258 <_Z9mem_allocm>
}
    80001ea0:	00813083          	ld	ra,8(sp)
    80001ea4:	00013403          	ld	s0,0(sp)
    80001ea8:	01010113          	addi	sp,sp,16
    80001eac:	00008067          	ret

0000000080001eb0 <_ZdlPv>:
void operator delete(void* p) noexcept {
    80001eb0:	ff010113          	addi	sp,sp,-16
    80001eb4:	00113423          	sd	ra,8(sp)
    80001eb8:	00813023          	sd	s0,0(sp)
    80001ebc:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001ec0:	fffff097          	auipc	ra,0xfffff
    80001ec4:	3ec080e7          	jalr	1004(ra) # 800012ac <_Z8mem_freePv>
}
    80001ec8:	00813083          	ld	ra,8(sp)
    80001ecc:	00013403          	ld	s0,0(sp)
    80001ed0:	01010113          	addi	sp,sp,16
    80001ed4:	00008067          	ret

0000000080001ed8 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80001ed8:	fe010113          	addi	sp,sp,-32
    80001edc:	00113c23          	sd	ra,24(sp)
    80001ee0:	00813823          	sd	s0,16(sp)
    80001ee4:	00913423          	sd	s1,8(sp)
    80001ee8:	02010413          	addi	s0,sp,32
    80001eec:	00050493          	mv	s1,a0
}
    80001ef0:	00000097          	auipc	ra,0x0
    80001ef4:	f00080e7          	jalr	-256(ra) # 80001df0 <_ZN6ThreadD1Ev>
    80001ef8:	00048513          	mv	a0,s1
    80001efc:	00000097          	auipc	ra,0x0
    80001f00:	fb4080e7          	jalr	-76(ra) # 80001eb0 <_ZdlPv>
    80001f04:	01813083          	ld	ra,24(sp)
    80001f08:	01013403          	ld	s0,16(sp)
    80001f0c:	00813483          	ld	s1,8(sp)
    80001f10:	02010113          	addi	sp,sp,32
    80001f14:	00008067          	ret

0000000080001f18 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001f18:	fe010113          	addi	sp,sp,-32
    80001f1c:	00113c23          	sd	ra,24(sp)
    80001f20:	00813823          	sd	s0,16(sp)
    80001f24:	00913423          	sd	s1,8(sp)
    80001f28:	02010413          	addi	s0,sp,32
    80001f2c:	00050493          	mv	s1,a0
}
    80001f30:	00000097          	auipc	ra,0x0
    80001f34:	f18080e7          	jalr	-232(ra) # 80001e48 <_ZN9SemaphoreD1Ev>
    80001f38:	00048513          	mv	a0,s1
    80001f3c:	00000097          	auipc	ra,0x0
    80001f40:	f74080e7          	jalr	-140(ra) # 80001eb0 <_ZdlPv>
    80001f44:	01813083          	ld	ra,24(sp)
    80001f48:	01013403          	ld	s0,16(sp)
    80001f4c:	00813483          	ld	s1,8(sp)
    80001f50:	02010113          	addi	sp,sp,32
    80001f54:	00008067          	ret

0000000080001f58 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    80001f58:	ff010113          	addi	sp,sp,-16
    80001f5c:	00813423          	sd	s0,8(sp)
    80001f60:	01010413          	addi	s0,sp,16
    80001f64:	0000a797          	auipc	a5,0xa
    80001f68:	b2478793          	addi	a5,a5,-1244 # 8000ba88 <_ZTV6Thread+0x10>
    80001f6c:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    80001f70:	00053423          	sd	zero,8(a0)
    this -> body = body;
    80001f74:	00b53823          	sd	a1,16(a0)
    this -> arg = arg;
    80001f78:	00c53c23          	sd	a2,24(a0)
}
    80001f7c:	00813403          	ld	s0,8(sp)
    80001f80:	01010113          	addi	sp,sp,16
    80001f84:	00008067          	ret

0000000080001f88 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80001f88:	ff010113          	addi	sp,sp,-16
    80001f8c:	00813423          	sd	s0,8(sp)
    80001f90:	01010413          	addi	s0,sp,16
    80001f94:	0000a797          	auipc	a5,0xa
    80001f98:	af478793          	addi	a5,a5,-1292 # 8000ba88 <_ZTV6Thread+0x10>
    80001f9c:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    80001fa0:	00053423          	sd	zero,8(a0)
    body = nullptr;
    80001fa4:	00053823          	sd	zero,16(a0)
    arg = nullptr;
    80001fa8:	00053c23          	sd	zero,24(a0)
}
    80001fac:	00813403          	ld	s0,8(sp)
    80001fb0:	01010113          	addi	sp,sp,16
    80001fb4:	00008067          	ret

0000000080001fb8 <_ZN6Thread5startEv>:
int Thread::start() {
    80001fb8:	ff010113          	addi	sp,sp,-16
    80001fbc:	00113423          	sd	ra,8(sp)
    80001fc0:	00813023          	sd	s0,0(sp)
    80001fc4:	01010413          	addi	s0,sp,16
    return thread_create(&myHandle, start_helper, this);
    80001fc8:	00050613          	mv	a2,a0
    80001fcc:	00000597          	auipc	a1,0x0
    80001fd0:	de858593          	addi	a1,a1,-536 # 80001db4 <_ZN6Thread12start_helperEPv>
    80001fd4:	00850513          	addi	a0,a0,8
    80001fd8:	fffff097          	auipc	ra,0xfffff
    80001fdc:	320080e7          	jalr	800(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
}
    80001fe0:	00813083          	ld	ra,8(sp)
    80001fe4:	00013403          	ld	s0,0(sp)
    80001fe8:	01010113          	addi	sp,sp,16
    80001fec:	00008067          	ret

0000000080001ff0 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001ff0:	ff010113          	addi	sp,sp,-16
    80001ff4:	00113423          	sd	ra,8(sp)
    80001ff8:	00813023          	sd	s0,0(sp)
    80001ffc:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002000:	fffff097          	auipc	ra,0xfffff
    80002004:	3cc080e7          	jalr	972(ra) # 800013cc <_Z15thread_dispatchv>
}
    80002008:	00813083          	ld	ra,8(sp)
    8000200c:	00013403          	ld	s0,0(sp)
    80002010:	01010113          	addi	sp,sp,16
    80002014:	00008067          	ret

0000000080002018 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    80002018:	ff010113          	addi	sp,sp,-16
    8000201c:	00113423          	sd	ra,8(sp)
    80002020:	00813023          	sd	s0,0(sp)
    80002024:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    80002028:	fffff097          	auipc	ra,0xfffff
    8000202c:	5ac080e7          	jalr	1452(ra) # 800015d4 <_Z10time_sleepm>
}
    80002030:	00813083          	ld	ra,8(sp)
    80002034:	00013403          	ld	s0,0(sp)
    80002038:	01010113          	addi	sp,sp,16
    8000203c:	00008067          	ret

0000000080002040 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80002040:	ff010113          	addi	sp,sp,-16
    80002044:	00113423          	sd	ra,8(sp)
    80002048:	00813023          	sd	s0,0(sp)
    8000204c:	01010413          	addi	s0,sp,16
    80002050:	0000a797          	auipc	a5,0xa
    80002054:	a6078793          	addi	a5,a5,-1440 # 8000bab0 <_ZTV9Semaphore+0x10>
    80002058:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    8000205c:	00053423          	sd	zero,8(a0)
    sem_open(&myHandle, init);
    80002060:	00850513          	addi	a0,a0,8
    80002064:	fffff097          	auipc	ra,0xfffff
    80002068:	3a4080e7          	jalr	932(ra) # 80001408 <_Z8sem_openPP3Semj>
}
    8000206c:	00813083          	ld	ra,8(sp)
    80002070:	00013403          	ld	s0,0(sp)
    80002074:	01010113          	addi	sp,sp,16
    80002078:	00008067          	ret

000000008000207c <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    if (myHandle) return sem_wait(myHandle);
    8000207c:	00853503          	ld	a0,8(a0)
    80002080:	02050663          	beqz	a0,800020ac <_ZN9Semaphore4waitEv+0x30>
int Semaphore::wait() {
    80002084:	ff010113          	addi	sp,sp,-16
    80002088:	00113423          	sd	ra,8(sp)
    8000208c:	00813023          	sd	s0,0(sp)
    80002090:	01010413          	addi	s0,sp,16
    if (myHandle) return sem_wait(myHandle);
    80002094:	fffff097          	auipc	ra,0xfffff
    80002098:	410080e7          	jalr	1040(ra) # 800014a4 <_Z8sem_waitP3Sem>
    return -1;
}
    8000209c:	00813083          	ld	ra,8(sp)
    800020a0:	00013403          	ld	s0,0(sp)
    800020a4:	01010113          	addi	sp,sp,16
    800020a8:	00008067          	ret
    return -1;
    800020ac:	fff00513          	li	a0,-1
}
    800020b0:	00008067          	ret

00000000800020b4 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    if (myHandle) return sem_signal(myHandle);
    800020b4:	00853503          	ld	a0,8(a0)
    800020b8:	02050663          	beqz	a0,800020e4 <_ZN9Semaphore6signalEv+0x30>
int Semaphore::signal() {
    800020bc:	ff010113          	addi	sp,sp,-16
    800020c0:	00113423          	sd	ra,8(sp)
    800020c4:	00813023          	sd	s0,0(sp)
    800020c8:	01010413          	addi	s0,sp,16
    if (myHandle) return sem_signal(myHandle);
    800020cc:	fffff097          	auipc	ra,0xfffff
    800020d0:	424080e7          	jalr	1060(ra) # 800014f0 <_Z10sem_signalP3Sem>
    return -1;
}
    800020d4:	00813083          	ld	ra,8(sp)
    800020d8:	00013403          	ld	s0,0(sp)
    800020dc:	01010113          	addi	sp,sp,16
    800020e0:	00008067          	ret
    return -1;
    800020e4:	fff00513          	li	a0,-1
}
    800020e8:	00008067          	ret

00000000800020ec <_ZN9Semaphore9timedWaitEm>:

int Semaphore::timedWait(time_t time) {
    800020ec:	ff010113          	addi	sp,sp,-16
    800020f0:	00113423          	sd	ra,8(sp)
    800020f4:	00813023          	sd	s0,0(sp)
    800020f8:	01010413          	addi	s0,sp,16
    return sem_timedwait(myHandle, time);
    800020fc:	00853503          	ld	a0,8(a0)
    80002100:	fffff097          	auipc	ra,0xfffff
    80002104:	43c080e7          	jalr	1084(ra) # 8000153c <_Z13sem_timedwaitP3Semm>
}
    80002108:	00813083          	ld	ra,8(sp)
    8000210c:	00013403          	ld	s0,0(sp)
    80002110:	01010113          	addi	sp,sp,16
    80002114:	00008067          	ret

0000000080002118 <_ZN9Semaphore7tryWaitEv>:

int Semaphore::tryWait() {
    80002118:	ff010113          	addi	sp,sp,-16
    8000211c:	00113423          	sd	ra,8(sp)
    80002120:	00813023          	sd	s0,0(sp)
    80002124:	01010413          	addi	s0,sp,16
    return sem_trywait(myHandle);
    80002128:	00853503          	ld	a0,8(a0)
    8000212c:	fffff097          	auipc	ra,0xfffff
    80002130:	45c080e7          	jalr	1116(ra) # 80001588 <_Z11sem_trywaitP3Sem>
}
    80002134:	00813083          	ld	ra,8(sp)
    80002138:	00013403          	ld	s0,0(sp)
    8000213c:	01010113          	addi	sp,sp,16
    80002140:	00008067          	ret

0000000080002144 <_ZN14PeriodicThread9terminateEv>:

void PeriodicThread::terminate() {
    80002144:	ff010113          	addi	sp,sp,-16
    80002148:	00813423          	sd	s0,8(sp)
    8000214c:	01010413          	addi	s0,sp,16
    /// TODO terminate
}
    80002150:	00813403          	ld	s0,8(sp)
    80002154:	01010113          	addi	sp,sp,16
    80002158:	00008067          	ret

000000008000215c <_ZN14PeriodicThreadC1Em>:

PeriodicThread::PeriodicThread(time_t period) {
    8000215c:	fe010113          	addi	sp,sp,-32
    80002160:	00113c23          	sd	ra,24(sp)
    80002164:	00813823          	sd	s0,16(sp)
    80002168:	00913423          	sd	s1,8(sp)
    8000216c:	01213023          	sd	s2,0(sp)
    80002170:	02010413          	addi	s0,sp,32
    80002174:	00050493          	mv	s1,a0
    80002178:	00058913          	mv	s2,a1
    8000217c:	00000097          	auipc	ra,0x0
    80002180:	e0c080e7          	jalr	-500(ra) # 80001f88 <_ZN6ThreadC1Ev>
    80002184:	0000a797          	auipc	a5,0xa
    80002188:	8d478793          	addi	a5,a5,-1836 # 8000ba58 <_ZTV14PeriodicThread+0x10>
    8000218c:	00f4b023          	sd	a5,0(s1)
    this -> period = period;
    80002190:	0324b023          	sd	s2,32(s1)
}
    80002194:	01813083          	ld	ra,24(sp)
    80002198:	01013403          	ld	s0,16(sp)
    8000219c:	00813483          	ld	s1,8(sp)
    800021a0:	00013903          	ld	s2,0(sp)
    800021a4:	02010113          	addi	sp,sp,32
    800021a8:	00008067          	ret

00000000800021ac <_ZN7Console4getcEv>:

char Console::getc() {
    800021ac:	ff010113          	addi	sp,sp,-16
    800021b0:	00113423          	sd	ra,8(sp)
    800021b4:	00813023          	sd	s0,0(sp)
    800021b8:	01010413          	addi	s0,sp,16
    return ::getc();
    800021bc:	fffff097          	auipc	ra,0xfffff
    800021c0:	464080e7          	jalr	1124(ra) # 80001620 <_Z4getcv>
}
    800021c4:	00813083          	ld	ra,8(sp)
    800021c8:	00013403          	ld	s0,0(sp)
    800021cc:	01010113          	addi	sp,sp,16
    800021d0:	00008067          	ret

00000000800021d4 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    800021d4:	ff010113          	addi	sp,sp,-16
    800021d8:	00113423          	sd	ra,8(sp)
    800021dc:	00813023          	sd	s0,0(sp)
    800021e0:	01010413          	addi	s0,sp,16
    ::putc(c);
    800021e4:	fffff097          	auipc	ra,0xfffff
    800021e8:	488080e7          	jalr	1160(ra) # 8000166c <_Z4putcc>
}
    800021ec:	00813083          	ld	ra,8(sp)
    800021f0:	00013403          	ld	s0,0(sp)
    800021f4:	01010113          	addi	sp,sp,16
    800021f8:	00008067          	ret

00000000800021fc <_ZN6Thread3runEv>:
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    800021fc:	ff010113          	addi	sp,sp,-16
    80002200:	00813423          	sd	s0,8(sp)
    80002204:	01010413          	addi	s0,sp,16
    80002208:	00813403          	ld	s0,8(sp)
    8000220c:	01010113          	addi	sp,sp,16
    80002210:	00008067          	ret

0000000080002214 <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    80002214:	ff010113          	addi	sp,sp,-16
    80002218:	00813423          	sd	s0,8(sp)
    8000221c:	01010413          	addi	s0,sp,16
    80002220:	00813403          	ld	s0,8(sp)
    80002224:	01010113          	addi	sp,sp,16
    80002228:	00008067          	ret

000000008000222c <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    8000222c:	ff010113          	addi	sp,sp,-16
    80002230:	00113423          	sd	ra,8(sp)
    80002234:	00813023          	sd	s0,0(sp)
    80002238:	01010413          	addi	s0,sp,16
    8000223c:	0000a797          	auipc	a5,0xa
    80002240:	81c78793          	addi	a5,a5,-2020 # 8000ba58 <_ZTV14PeriodicThread+0x10>
    80002244:	00f53023          	sd	a5,0(a0)
    80002248:	00000097          	auipc	ra,0x0
    8000224c:	ba8080e7          	jalr	-1112(ra) # 80001df0 <_ZN6ThreadD1Ev>
    80002250:	00813083          	ld	ra,8(sp)
    80002254:	00013403          	ld	s0,0(sp)
    80002258:	01010113          	addi	sp,sp,16
    8000225c:	00008067          	ret

0000000080002260 <_ZN14PeriodicThreadD0Ev>:
    80002260:	fe010113          	addi	sp,sp,-32
    80002264:	00113c23          	sd	ra,24(sp)
    80002268:	00813823          	sd	s0,16(sp)
    8000226c:	00913423          	sd	s1,8(sp)
    80002270:	02010413          	addi	s0,sp,32
    80002274:	00050493          	mv	s1,a0
    80002278:	00009797          	auipc	a5,0x9
    8000227c:	7e078793          	addi	a5,a5,2016 # 8000ba58 <_ZTV14PeriodicThread+0x10>
    80002280:	00f53023          	sd	a5,0(a0)
    80002284:	00000097          	auipc	ra,0x0
    80002288:	b6c080e7          	jalr	-1172(ra) # 80001df0 <_ZN6ThreadD1Ev>
    8000228c:	00048513          	mv	a0,s1
    80002290:	00000097          	auipc	ra,0x0
    80002294:	c20080e7          	jalr	-992(ra) # 80001eb0 <_ZdlPv>
    80002298:	01813083          	ld	ra,24(sp)
    8000229c:	01013403          	ld	s0,16(sp)
    800022a0:	00813483          	ld	s1,8(sp)
    800022a4:	02010113          	addi	sp,sp,32
    800022a8:	00008067          	ret

00000000800022ac <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb>:
        instance = (MemoryAllocator*) MemoryAllocator::mem_alloc(get_number_of_blocks(sizeof(MemoryAllocator)));
    }
}

/// helper function for removing element from linked list
void MemoryAllocator::removeNode(MemSeg *toRemove, MemSeg *nextSeg, bool newIsCreated, bool free_list) {
    800022ac:	ff010113          	addi	sp,sp,-16
    800022b0:	00813423          	sd	s0,8(sp)
    800022b4:	01010413          	addi	s0,sp,16
    if (toRemove -> prev) toRemove -> prev -> next = nextSeg;
    800022b8:	00853783          	ld	a5,8(a0)
    800022bc:	02078463          	beqz	a5,800022e4 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb+0x38>
    800022c0:	00b7b823          	sd	a1,16(a5)
    else (free_list ? freeSegHead : usedSegHead) = nextSeg;
    if (toRemove -> next) toRemove -> next -> prev = (newIsCreated) ? nextSeg : toRemove -> prev;
    800022c4:	01053783          	ld	a5,16(a0)
    800022c8:	00078863          	beqz	a5,800022d8 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb+0x2c>
    800022cc:	00061463          	bnez	a2,800022d4 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb+0x28>
    800022d0:	00853583          	ld	a1,8(a0)
    800022d4:	00b7b423          	sd	a1,8(a5)
}
    800022d8:	00813403          	ld	s0,8(sp)
    800022dc:	01010113          	addi	sp,sp,16
    800022e0:	00008067          	ret
    else (free_list ? freeSegHead : usedSegHead) = nextSeg;
    800022e4:	00068863          	beqz	a3,800022f4 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb+0x48>
    800022e8:	0000a797          	auipc	a5,0xa
    800022ec:	a4b7b023          	sd	a1,-1472(a5) # 8000bd28 <_ZN15MemoryAllocator11freeSegHeadE>
    800022f0:	fd5ff06f          	j	800022c4 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb+0x18>
    800022f4:	0000a797          	auipc	a5,0xa
    800022f8:	a2b7be23          	sd	a1,-1476(a5) # 8000bd30 <_ZN15MemoryAllocator11usedSegHeadE>
    800022fc:	fc9ff06f          	j	800022c4 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb+0x18>

0000000080002300 <_ZN15MemoryAllocator9mem_allocEm>:

/// allocate `size` blocks
void *MemoryAllocator::mem_alloc(size_t size) {
    80002300:	fe010113          	addi	sp,sp,-32
    80002304:	00113c23          	sd	ra,24(sp)
    80002308:	00813823          	sd	s0,16(sp)
    8000230c:	00913423          	sd	s1,8(sp)
    80002310:	01213023          	sd	s2,0(sp)
    80002314:	02010413          	addi	s0,sp,32
    if (size <= 0) return nullptr;
    80002318:	10050263          	beqz	a0,8000241c <_ZN15MemoryAllocator9mem_allocEm+0x11c>
    size_t bytesToAllocate = size * MEM_BLOCK_SIZE;
    8000231c:	00651913          	slli	s2,a0,0x6
    MemSeg *tmp = freeSegHead;
    80002320:	0000a497          	auipc	s1,0xa
    80002324:	a084b483          	ld	s1,-1528(s1) # 8000bd28 <_ZN15MemoryAllocator11freeSegHeadE>
    while (tmp) {
    80002328:	0c048263          	beqz	s1,800023ec <_ZN15MemoryAllocator9mem_allocEm+0xec>
        if (tmp -> size < bytesToAllocate) {
    8000232c:	0004b783          	ld	a5,0(s1)
    80002330:	0527e663          	bltu	a5,s2,8000237c <_ZN15MemoryAllocator9mem_allocEm+0x7c>
            tmp = tmp -> next;
            continue;
        }
        /// update free memory list
        size_t remaining = tmp -> size - bytesToAllocate;
    80002334:	412787b3          	sub	a5,a5,s2
        if (remaining <= sizeof(MemSeg)) removeNode(tmp, tmp->next, false, true);
    80002338:	01800713          	li	a4,24
    8000233c:	04f76463          	bltu	a4,a5,80002384 <_ZN15MemoryAllocator9mem_allocEm+0x84>
    80002340:	00100693          	li	a3,1
    80002344:	00000613          	li	a2,0
    80002348:	0104b583          	ld	a1,16(s1)
    8000234c:	00048513          	mv	a0,s1
    80002350:	00000097          	auipc	ra,0x0
    80002354:	f5c080e7          	jalr	-164(ra) # 800022ac <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb>
        }

        /// update used memory list
        /// insert segment after tmp2
        MemSeg* tmp2 = nullptr;
        if (usedSegHead && (char*) tmp > (char*) usedSegHead)
    80002358:	0000a797          	auipc	a5,0xa
    8000235c:	9d87b783          	ld	a5,-1576(a5) # 8000bd30 <_ZN15MemoryAllocator11usedSegHeadE>
    80002360:	04078a63          	beqz	a5,800023b4 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
    80002364:	0497fc63          	bgeu	a5,s1,800023bc <_ZN15MemoryAllocator9mem_allocEm+0xbc>
            for (tmp2 = usedSegHead; tmp2 -> next && (char*) tmp > (char*) (tmp2 -> next); tmp2 = tmp2 -> next);
    80002368:	00078713          	mv	a4,a5
    8000236c:	0107b783          	ld	a5,16(a5)
    80002370:	04078863          	beqz	a5,800023c0 <_ZN15MemoryAllocator9mem_allocEm+0xc0>
    80002374:	fe97eae3          	bltu	a5,s1,80002368 <_ZN15MemoryAllocator9mem_allocEm+0x68>
    80002378:	0480006f          	j	800023c0 <_ZN15MemoryAllocator9mem_allocEm+0xc0>
            tmp = tmp -> next;
    8000237c:	0104b483          	ld	s1,16(s1)
    while (tmp) {
    80002380:	fa9ff06f          	j	80002328 <_ZN15MemoryAllocator9mem_allocEm+0x28>
            MemSeg* newFree = (MemSeg*) ((char*) tmp + bytesToAllocate);
    80002384:	012485b3          	add	a1,s1,s2
            newFree -> prev = tmp -> prev;
    80002388:	0084b703          	ld	a4,8(s1)
    8000238c:	00e5b423          	sd	a4,8(a1)
            newFree -> next = tmp -> next;
    80002390:	0104b703          	ld	a4,16(s1)
    80002394:	00e5b823          	sd	a4,16(a1)
            newFree -> size = remaining;
    80002398:	00f5b023          	sd	a5,0(a1)
            removeNode(tmp, newFree, true, true);
    8000239c:	00100693          	li	a3,1
    800023a0:	00100613          	li	a2,1
    800023a4:	00048513          	mv	a0,s1
    800023a8:	00000097          	auipc	ra,0x0
    800023ac:	f04080e7          	jalr	-252(ra) # 800022ac <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb>
    800023b0:	fa9ff06f          	j	80002358 <_ZN15MemoryAllocator9mem_allocEm+0x58>
        MemSeg* tmp2 = nullptr;
    800023b4:	00078713          	mv	a4,a5
    800023b8:	0080006f          	j	800023c0 <_ZN15MemoryAllocator9mem_allocEm+0xc0>
    800023bc:	00000713          	li	a4,0
        MemSeg* newUsed = (MemSeg*) tmp;
        newUsed -> size = bytesToAllocate;
    800023c0:	0124b023          	sd	s2,0(s1)
        newUsed -> prev = tmp2;
    800023c4:	00e4b423          	sd	a4,8(s1)
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    800023c8:	04070063          	beqz	a4,80002408 <_ZN15MemoryAllocator9mem_allocEm+0x108>
    800023cc:	01073783          	ld	a5,16(a4)
    800023d0:	00f4b823          	sd	a5,16(s1)
        if (tmp2) tmp2 -> next = newUsed;
    800023d4:	02070e63          	beqz	a4,80002410 <_ZN15MemoryAllocator9mem_allocEm+0x110>
    800023d8:	00973823          	sd	s1,16(a4)
        else usedSegHead = newUsed;
        if (newUsed -> next) newUsed -> next -> prev = newUsed;
    800023dc:	0104b783          	ld	a5,16(s1)
    800023e0:	00078463          	beqz	a5,800023e8 <_ZN15MemoryAllocator9mem_allocEm+0xe8>
    800023e4:	0097b423          	sd	s1,8(a5)
        return (void*) ((char*)tmp + sizeof(MemSeg));
    800023e8:	01848493          	addi	s1,s1,24
    }
    return nullptr;
}
    800023ec:	00048513          	mv	a0,s1
    800023f0:	01813083          	ld	ra,24(sp)
    800023f4:	01013403          	ld	s0,16(sp)
    800023f8:	00813483          	ld	s1,8(sp)
    800023fc:	00013903          	ld	s2,0(sp)
    80002400:	02010113          	addi	sp,sp,32
    80002404:	00008067          	ret
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    80002408:	00070793          	mv	a5,a4
    8000240c:	fc5ff06f          	j	800023d0 <_ZN15MemoryAllocator9mem_allocEm+0xd0>
        else usedSegHead = newUsed;
    80002410:	0000a797          	auipc	a5,0xa
    80002414:	9297b023          	sd	s1,-1760(a5) # 8000bd30 <_ZN15MemoryAllocator11usedSegHeadE>
    80002418:	fc5ff06f          	j	800023dc <_ZN15MemoryAllocator9mem_allocEm+0xdc>
    if (size <= 0) return nullptr;
    8000241c:	00000493          	li	s1,0
    80002420:	fcdff06f          	j	800023ec <_ZN15MemoryAllocator9mem_allocEm+0xec>

0000000080002424 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>:
    }
    return 0;
}

/// join free segment with next if possible
void MemoryAllocator::tryToJoin(MemSeg *seg) {
    80002424:	ff010113          	addi	sp,sp,-16
    80002428:	00813423          	sd	s0,8(sp)
    8000242c:	01010413          	addi	s0,sp,16
    if (seg -> next && (char*) seg + seg -> size == (char*) seg -> next) {
    80002430:	01053783          	ld	a5,16(a0)
    80002434:	00078863          	beqz	a5,80002444 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    80002438:	00053703          	ld	a4,0(a0)
    8000243c:	00e506b3          	add	a3,a0,a4
    80002440:	00d78863          	beq	a5,a3,80002450 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x2c>
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
        seg -> next = seg -> next -> next;
        if (seg -> next) seg -> next -> prev = seg;
    }
}
    80002444:	00813403          	ld	s0,8(sp)
    80002448:	01010113          	addi	sp,sp,16
    8000244c:	00008067          	ret
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
    80002450:	0007b683          	ld	a3,0(a5)
    80002454:	00d70733          	add	a4,a4,a3
    80002458:	01870713          	addi	a4,a4,24
    8000245c:	00e53023          	sd	a4,0(a0)
        seg -> next = seg -> next -> next;
    80002460:	0107b783          	ld	a5,16(a5)
    80002464:	00f53823          	sd	a5,16(a0)
        if (seg -> next) seg -> next -> prev = seg;
    80002468:	fc078ee3          	beqz	a5,80002444 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    8000246c:	00a7b423          	sd	a0,8(a5)
}
    80002470:	fd5ff06f          	j	80002444 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>

0000000080002474 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    80002474:	14050a63          	beqz	a0,800025c8 <_ZN15MemoryAllocator8mem_freeEPv+0x154>
int MemoryAllocator::mem_free(void *addr) {
    80002478:	fd010113          	addi	sp,sp,-48
    8000247c:	02113423          	sd	ra,40(sp)
    80002480:	02813023          	sd	s0,32(sp)
    80002484:	00913c23          	sd	s1,24(sp)
    80002488:	01213823          	sd	s2,16(sp)
    8000248c:	01313423          	sd	s3,8(sp)
    80002490:	03010413          	addi	s0,sp,48
    80002494:	00050913          	mv	s2,a0
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    80002498:	00009797          	auipc	a5,0x9
    8000249c:	7e87b783          	ld	a5,2024(a5) # 8000bc80 <_GLOBAL_OFFSET_TABLE_+0x18>
    800024a0:	0007b783          	ld	a5,0(a5)
    800024a4:	12f56663          	bltu	a0,a5,800025d0 <_ZN15MemoryAllocator8mem_freeEPv+0x15c>
    800024a8:	0000a797          	auipc	a5,0xa
    800024ac:	8187b783          	ld	a5,-2024(a5) # 8000bcc0 <_GLOBAL_OFFSET_TABLE_+0x58>
    800024b0:	0007b783          	ld	a5,0(a5)
    800024b4:	12a7e263          	bltu	a5,a0,800025d8 <_ZN15MemoryAllocator8mem_freeEPv+0x164>
    if (!usedSegHead) return -2;
    800024b8:	0000a797          	auipc	a5,0xa
    800024bc:	8787b783          	ld	a5,-1928(a5) # 8000bd30 <_ZN15MemoryAllocator11usedSegHeadE>
    800024c0:	12078063          	beqz	a5,800025e0 <_ZN15MemoryAllocator8mem_freeEPv+0x16c>
    addr = (void*) ((char*) addr - sizeof(MemSeg));
    800024c4:	fe850493          	addi	s1,a0,-24
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    800024c8:	00078863          	beqz	a5,800024d8 <_ZN15MemoryAllocator8mem_freeEPv+0x64>
        if (tmp == segToFree) {
    800024cc:	0a978663          	beq	a5,s1,80002578 <_ZN15MemoryAllocator8mem_freeEPv+0x104>
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    800024d0:	0107b783          	ld	a5,16(a5)
    800024d4:	ff5ff06f          	j	800024c8 <_ZN15MemoryAllocator8mem_freeEPv+0x54>
    bool found = false;
    800024d8:	00000793          	li	a5,0
    if (!found) return -3;
    800024dc:	10078663          	beqz	a5,800025e8 <_ZN15MemoryAllocator8mem_freeEPv+0x174>
    removeNode(segToFree, segToFree -> next, false, false);
    800024e0:	00000693          	li	a3,0
    800024e4:	00000613          	li	a2,0
    800024e8:	ff893583          	ld	a1,-8(s2)
    800024ec:	00048513          	mv	a0,s1
    800024f0:	00000097          	auipc	ra,0x0
    800024f4:	dbc080e7          	jalr	-580(ra) # 800022ac <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb>
    segToFree -> size += sizeof(MemSeg);
    800024f8:	fe893783          	ld	a5,-24(s2)
    800024fc:	01878793          	addi	a5,a5,24
    80002500:	fef93423          	sd	a5,-24(s2)
    if (!freeSegHead) {
    80002504:	0000a797          	auipc	a5,0xa
    80002508:	8247b783          	ld	a5,-2012(a5) # 8000bd28 <_ZN15MemoryAllocator11freeSegHeadE>
    8000250c:	06078a63          	beqz	a5,80002580 <_ZN15MemoryAllocator8mem_freeEPv+0x10c>
    else if ((char*) addr < (char*) freeSegHead) {
    80002510:	08f4e463          	bltu	s1,a5,80002598 <_ZN15MemoryAllocator8mem_freeEPv+0x124>
        for (tmp = freeSegHead; tmp -> next && (char*) (tmp -> next) < (char*) segToFree; tmp = tmp -> next);
    80002514:	00078993          	mv	s3,a5
    80002518:	0107b783          	ld	a5,16(a5)
    8000251c:	00078463          	beqz	a5,80002524 <_ZN15MemoryAllocator8mem_freeEPv+0xb0>
    80002520:	fe97eae3          	bltu	a5,s1,80002514 <_ZN15MemoryAllocator8mem_freeEPv+0xa0>
        segToFree -> prev = tmp;
    80002524:	ff393823          	sd	s3,-16(s2)
        segToFree -> next = tmp -> next;
    80002528:	0109b783          	ld	a5,16(s3)
    8000252c:	fef93c23          	sd	a5,-8(s2)
        tmp -> next = segToFree;
    80002530:	0099b823          	sd	s1,16(s3)
        if (segToFree -> next) segToFree -> next -> prev = segToFree;
    80002534:	ff893783          	ld	a5,-8(s2)
    80002538:	00078463          	beqz	a5,80002540 <_ZN15MemoryAllocator8mem_freeEPv+0xcc>
    8000253c:	0097b423          	sd	s1,8(a5)
        tryToJoin(segToFree);
    80002540:	00048513          	mv	a0,s1
    80002544:	00000097          	auipc	ra,0x0
    80002548:	ee0080e7          	jalr	-288(ra) # 80002424 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
        tryToJoin(tmp);
    8000254c:	00098513          	mv	a0,s3
    80002550:	00000097          	auipc	ra,0x0
    80002554:	ed4080e7          	jalr	-300(ra) # 80002424 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    80002558:	00000513          	li	a0,0
}
    8000255c:	02813083          	ld	ra,40(sp)
    80002560:	02013403          	ld	s0,32(sp)
    80002564:	01813483          	ld	s1,24(sp)
    80002568:	01013903          	ld	s2,16(sp)
    8000256c:	00813983          	ld	s3,8(sp)
    80002570:	03010113          	addi	sp,sp,48
    80002574:	00008067          	ret
            found = true;
    80002578:	00100793          	li	a5,1
    8000257c:	f61ff06f          	j	800024dc <_ZN15MemoryAllocator8mem_freeEPv+0x68>
        freeSegHead = segToFree;
    80002580:	00009797          	auipc	a5,0x9
    80002584:	7a97b423          	sd	s1,1960(a5) # 8000bd28 <_ZN15MemoryAllocator11freeSegHeadE>
        segToFree -> prev = segToFree -> next = nullptr;
    80002588:	fe093c23          	sd	zero,-8(s2)
    8000258c:	fe093823          	sd	zero,-16(s2)
    return 0;
    80002590:	00000513          	li	a0,0
    80002594:	fc9ff06f          	j	8000255c <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
        segToFree -> prev = nullptr;
    80002598:	fe093823          	sd	zero,-16(s2)
        segToFree -> next = freeSegHead;
    8000259c:	00009797          	auipc	a5,0x9
    800025a0:	78c78793          	addi	a5,a5,1932 # 8000bd28 <_ZN15MemoryAllocator11freeSegHeadE>
    800025a4:	0007b703          	ld	a4,0(a5)
    800025a8:	fee93c23          	sd	a4,-8(s2)
        freeSegHead -> prev = segToFree;
    800025ac:	00973423          	sd	s1,8(a4)
        freeSegHead = segToFree;
    800025b0:	0097b023          	sd	s1,0(a5)
        tryToJoin(segToFree);
    800025b4:	00048513          	mv	a0,s1
    800025b8:	00000097          	auipc	ra,0x0
    800025bc:	e6c080e7          	jalr	-404(ra) # 80002424 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    800025c0:	00000513          	li	a0,0
    800025c4:	f99ff06f          	j	8000255c <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    800025c8:	fff00513          	li	a0,-1
}
    800025cc:	00008067          	ret
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    800025d0:	fff00513          	li	a0,-1
    800025d4:	f89ff06f          	j	8000255c <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
    800025d8:	fff00513          	li	a0,-1
    800025dc:	f81ff06f          	j	8000255c <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
    if (!usedSegHead) return -2;
    800025e0:	ffe00513          	li	a0,-2
    800025e4:	f79ff06f          	j	8000255c <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
    if (!found) return -3;
    800025e8:	ffd00513          	li	a0,-3
    800025ec:	f71ff06f          	j	8000255c <_ZN15MemoryAllocator8mem_freeEPv+0xe8>

00000000800025f0 <_ZN15MemoryAllocator5printEv>:

void MemoryAllocator::print() {
    800025f0:	fe010113          	addi	sp,sp,-32
    800025f4:	00113c23          	sd	ra,24(sp)
    800025f8:	00813823          	sd	s0,16(sp)
    800025fc:	00913423          	sd	s1,8(sp)
    80002600:	02010413          	addi	s0,sp,32
    __putc('\n');
    80002604:	00a00513          	li	a0,10
    80002608:	00006097          	auipc	ra,0x6
    8000260c:	694080e7          	jalr	1684(ra) # 80008c9c <__putc>
    __putc('M');
    80002610:	04d00513          	li	a0,77
    80002614:	00006097          	auipc	ra,0x6
    80002618:	688080e7          	jalr	1672(ra) # 80008c9c <__putc>
    __putc(':');
    8000261c:	03a00513          	li	a0,58
    80002620:	00006097          	auipc	ra,0x6
    80002624:	67c080e7          	jalr	1660(ra) # 80008c9c <__putc>
    __putc(' ');
    80002628:	02000513          	li	a0,32
    8000262c:	00006097          	auipc	ra,0x6
    80002630:	670080e7          	jalr	1648(ra) # 80008c9c <__putc>
    for (MemSeg* tmp = freeSegHead; tmp; tmp = tmp -> next) {
    80002634:	00009497          	auipc	s1,0x9
    80002638:	6f44b483          	ld	s1,1780(s1) # 8000bd28 <_ZN15MemoryAllocator11freeSegHeadE>
    8000263c:	02048863          	beqz	s1,8000266c <_ZN15MemoryAllocator5printEv+0x7c>
        printNumber(tmp -> size);
    80002640:	0004b503          	ld	a0,0(s1)
    80002644:	fffff097          	auipc	ra,0xfffff
    80002648:	458080e7          	jalr	1112(ra) # 80001a9c <_Z11printNumberm>
        __putc(' ');
    8000264c:	02000513          	li	a0,32
    80002650:	00006097          	auipc	ra,0x6
    80002654:	64c080e7          	jalr	1612(ra) # 80008c9c <__putc>
        __putc('f');
    80002658:	06600513          	li	a0,102
    8000265c:	00006097          	auipc	ra,0x6
    80002660:	640080e7          	jalr	1600(ra) # 80008c9c <__putc>
    for (MemSeg* tmp = freeSegHead; tmp; tmp = tmp -> next) {
    80002664:	0104b483          	ld	s1,16(s1)
    80002668:	fd5ff06f          	j	8000263c <_ZN15MemoryAllocator5printEv+0x4c>
    }
    __putc('\t');
    8000266c:	00900513          	li	a0,9
    80002670:	00006097          	auipc	ra,0x6
    80002674:	62c080e7          	jalr	1580(ra) # 80008c9c <__putc>
    for (MemSeg* tmp = usedSegHead; tmp; tmp = tmp -> next) {
    80002678:	00009497          	auipc	s1,0x9
    8000267c:	6b84b483          	ld	s1,1720(s1) # 8000bd30 <_ZN15MemoryAllocator11usedSegHeadE>
    80002680:	02048863          	beqz	s1,800026b0 <_ZN15MemoryAllocator5printEv+0xc0>
        printNumber(tmp -> size);
    80002684:	0004b503          	ld	a0,0(s1)
    80002688:	fffff097          	auipc	ra,0xfffff
    8000268c:	414080e7          	jalr	1044(ra) # 80001a9c <_Z11printNumberm>
        __putc(' ');
    80002690:	02000513          	li	a0,32
    80002694:	00006097          	auipc	ra,0x6
    80002698:	608080e7          	jalr	1544(ra) # 80008c9c <__putc>
        __putc('u');
    8000269c:	07500513          	li	a0,117
    800026a0:	00006097          	auipc	ra,0x6
    800026a4:	5fc080e7          	jalr	1532(ra) # 80008c9c <__putc>
    for (MemSeg* tmp = usedSegHead; tmp; tmp = tmp -> next) {
    800026a8:	0104b483          	ld	s1,16(s1)
    800026ac:	fd5ff06f          	j	80002680 <_ZN15MemoryAllocator5printEv+0x90>
    }
}
    800026b0:	01813083          	ld	ra,24(sp)
    800026b4:	01013403          	ld	s0,16(sp)
    800026b8:	00813483          	ld	s1,8(sp)
    800026bc:	02010113          	addi	sp,sp,32
    800026c0:	00008067          	ret

00000000800026c4 <_ZN15MemoryAllocator20get_number_of_blocksEm>:

size_t MemoryAllocator::get_number_of_blocks(size_t size) {
    800026c4:	ff010113          	addi	sp,sp,-16
    800026c8:	00813423          	sd	s0,8(sp)
    800026cc:	01010413          	addi	s0,sp,16
    return (size + sizeof(MemoryAllocator::MemSeg) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    800026d0:	05750513          	addi	a0,a0,87
}
    800026d4:	00655513          	srli	a0,a0,0x6
    800026d8:	00813403          	ld	s0,8(sp)
    800026dc:	01010113          	addi	sp,sp,16
    800026e0:	00008067          	ret

00000000800026e4 <_ZN15MemoryAllocator10initializeEv>:
    if (!instance) {
    800026e4:	00009797          	auipc	a5,0x9
    800026e8:	6547b783          	ld	a5,1620(a5) # 8000bd38 <_ZN15MemoryAllocator8instanceE>
    800026ec:	00078463          	beqz	a5,800026f4 <_ZN15MemoryAllocator10initializeEv+0x10>
    800026f0:	00008067          	ret
void MemoryAllocator::initialize() {
    800026f4:	fe010113          	addi	sp,sp,-32
    800026f8:	00113c23          	sd	ra,24(sp)
    800026fc:	00813823          	sd	s0,16(sp)
    80002700:	00913423          	sd	s1,8(sp)
    80002704:	02010413          	addi	s0,sp,32
        freeSegHead = (MemSeg*) HEAP_START_ADDR;
    80002708:	00009797          	auipc	a5,0x9
    8000270c:	5787b783          	ld	a5,1400(a5) # 8000bc80 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002710:	0007b783          	ld	a5,0(a5)
    80002714:	00009497          	auipc	s1,0x9
    80002718:	61448493          	addi	s1,s1,1556 # 8000bd28 <_ZN15MemoryAllocator11freeSegHeadE>
    8000271c:	00f4b023          	sd	a5,0(s1)
        freeSegHead -> size = (size_t) HEAP_END_ADDR - (size_t) HEAP_START_ADDR;
    80002720:	00009717          	auipc	a4,0x9
    80002724:	5a073703          	ld	a4,1440(a4) # 8000bcc0 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002728:	00073703          	ld	a4,0(a4)
    8000272c:	40f70733          	sub	a4,a4,a5
    80002730:	00e7b023          	sd	a4,0(a5)
        freeSegHead -> prev = nullptr;
    80002734:	0004b783          	ld	a5,0(s1)
    80002738:	0007b423          	sd	zero,8(a5)
        freeSegHead -> next = nullptr;
    8000273c:	0007b823          	sd	zero,16(a5)
        instance = (MemoryAllocator*) MemoryAllocator::mem_alloc(get_number_of_blocks(sizeof(MemoryAllocator)));
    80002740:	00100513          	li	a0,1
    80002744:	00000097          	auipc	ra,0x0
    80002748:	f80080e7          	jalr	-128(ra) # 800026c4 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    8000274c:	00000097          	auipc	ra,0x0
    80002750:	bb4080e7          	jalr	-1100(ra) # 80002300 <_ZN15MemoryAllocator9mem_allocEm>
    80002754:	00a4b823          	sd	a0,16(s1)
}
    80002758:	01813083          	ld	ra,24(sp)
    8000275c:	01013403          	ld	s0,16(sp)
    80002760:	00813483          	ld	s1,8(sp)
    80002764:	02010113          	addi	sp,sp,32
    80002768:	00008067          	ret

000000008000276c <_ZN13BoundedBufferC1Ev>:
#include "../h/bounded_bufffer.hpp"

BoundedBuffer::BoundedBuffer() {
    8000276c:	fe010113          	addi	sp,sp,-32
    80002770:	00113c23          	sd	ra,24(sp)
    80002774:	00813823          	sd	s0,16(sp)
    80002778:	00913423          	sd	s1,8(sp)
    8000277c:	02010413          	addi	s0,sp,32
    80002780:	00050493          	mv	s1,a0
    80002784:	00052023          	sw	zero,0(a0)
    80002788:	00052223          	sw	zero,4(a0)
    Sem::open(&item_available, 0);
    8000278c:	00000593          	li	a1,0
    80002790:	01050513          	addi	a0,a0,16
    80002794:	fffff097          	auipc	ra,0xfffff
    80002798:	1b8080e7          	jalr	440(ra) # 8000194c <_ZN3Sem4openEPPS_j>
    Sem::open(&space_available, CAPACITY);
    8000279c:	1f400593          	li	a1,500
    800027a0:	00848513          	addi	a0,s1,8
    800027a4:	fffff097          	auipc	ra,0xfffff
    800027a8:	1a8080e7          	jalr	424(ra) # 8000194c <_ZN3Sem4openEPPS_j>
}
    800027ac:	01813083          	ld	ra,24(sp)
    800027b0:	01013403          	ld	s0,16(sp)
    800027b4:	00813483          	ld	s1,8(sp)
    800027b8:	02010113          	addi	sp,sp,32
    800027bc:	00008067          	ret

00000000800027c0 <_ZN13BoundedBufferD1Ev>:

BoundedBuffer::~BoundedBuffer() {
    800027c0:	fe010113          	addi	sp,sp,-32
    800027c4:	00113c23          	sd	ra,24(sp)
    800027c8:	00813823          	sd	s0,16(sp)
    800027cc:	00913423          	sd	s1,8(sp)
    800027d0:	02010413          	addi	s0,sp,32
    800027d4:	00050493          	mv	s1,a0
    Sem::close(item_available);
    800027d8:	01053503          	ld	a0,16(a0)
    800027dc:	fffff097          	auipc	ra,0xfffff
    800027e0:	fd8080e7          	jalr	-40(ra) # 800017b4 <_ZN3Sem5closeEPS_>
    Sem::close(space_available);
    800027e4:	0084b503          	ld	a0,8(s1)
    800027e8:	fffff097          	auipc	ra,0xfffff
    800027ec:	fcc080e7          	jalr	-52(ra) # 800017b4 <_ZN3Sem5closeEPS_>
}
    800027f0:	01813083          	ld	ra,24(sp)
    800027f4:	01013403          	ld	s0,16(sp)
    800027f8:	00813483          	ld	s1,8(sp)
    800027fc:	02010113          	addi	sp,sp,32
    80002800:	00008067          	ret

0000000080002804 <_ZN13BoundedBuffernwEm>:

void *BoundedBuffer::operator new(size_t size) {
    80002804:	ff010113          	addi	sp,sp,-16
    80002808:	00113423          	sd	ra,8(sp)
    8000280c:	00813023          	sd	s0,0(sp)
    80002810:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    80002814:	00000097          	auipc	ra,0x0
    80002818:	eb0080e7          	jalr	-336(ra) # 800026c4 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    8000281c:	00000097          	auipc	ra,0x0
    80002820:	ae4080e7          	jalr	-1308(ra) # 80002300 <_ZN15MemoryAllocator9mem_allocEm>
}
    80002824:	00813083          	ld	ra,8(sp)
    80002828:	00013403          	ld	s0,0(sp)
    8000282c:	01010113          	addi	sp,sp,16
    80002830:	00008067          	ret

0000000080002834 <_ZN13BoundedBufferdlEPv>:

void BoundedBuffer::operator delete(void *addr) {
    80002834:	ff010113          	addi	sp,sp,-16
    80002838:	00113423          	sd	ra,8(sp)
    8000283c:	00813023          	sd	s0,0(sp)
    80002840:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    80002844:	00000097          	auipc	ra,0x0
    80002848:	c30080e7          	jalr	-976(ra) # 80002474 <_ZN15MemoryAllocator8mem_freeEPv>
}
    8000284c:	00813083          	ld	ra,8(sp)
    80002850:	00013403          	ld	s0,0(sp)
    80002854:	01010113          	addi	sp,sp,16
    80002858:	00008067          	ret

000000008000285c <_ZN13BoundedBuffer4putcEc>:

void BoundedBuffer::putc(char c) {
    8000285c:	fe010113          	addi	sp,sp,-32
    80002860:	00113c23          	sd	ra,24(sp)
    80002864:	00813823          	sd	s0,16(sp)
    80002868:	00913423          	sd	s1,8(sp)
    8000286c:	01213023          	sd	s2,0(sp)
    80002870:	02010413          	addi	s0,sp,32
    80002874:	00050493          	mv	s1,a0
    80002878:	00058913          	mv	s2,a1
    Sem::wait(space_available);
    8000287c:	00853503          	ld	a0,8(a0)
    80002880:	fffff097          	auipc	ra,0xfffff
    80002884:	fa0080e7          	jalr	-96(ra) # 80001820 <_ZN3Sem4waitEPS_>
    array[tail] = c;
    80002888:	0044a783          	lw	a5,4(s1)
    8000288c:	00f48733          	add	a4,s1,a5
    80002890:	01270c23          	sb	s2,24(a4)
    tail = (tail + 1) % CAPACITY;
    80002894:	0017879b          	addiw	a5,a5,1
    80002898:	1f400713          	li	a4,500
    8000289c:	02e7e7bb          	remw	a5,a5,a4
    800028a0:	00f4a223          	sw	a5,4(s1)
    Sem::signal(item_available);
    800028a4:	0104b503          	ld	a0,16(s1)
    800028a8:	fffff097          	auipc	ra,0xfffff
    800028ac:	fcc080e7          	jalr	-52(ra) # 80001874 <_ZN3Sem6signalEPS_>
}
    800028b0:	01813083          	ld	ra,24(sp)
    800028b4:	01013403          	ld	s0,16(sp)
    800028b8:	00813483          	ld	s1,8(sp)
    800028bc:	00013903          	ld	s2,0(sp)
    800028c0:	02010113          	addi	sp,sp,32
    800028c4:	00008067          	ret

00000000800028c8 <_ZN13BoundedBuffer4getcEv>:

char BoundedBuffer::getc() {
    800028c8:	fe010113          	addi	sp,sp,-32
    800028cc:	00113c23          	sd	ra,24(sp)
    800028d0:	00813823          	sd	s0,16(sp)
    800028d4:	00913423          	sd	s1,8(sp)
    800028d8:	01213023          	sd	s2,0(sp)
    800028dc:	02010413          	addi	s0,sp,32
    800028e0:	00050493          	mv	s1,a0
    Sem::wait(item_available);
    800028e4:	01053503          	ld	a0,16(a0)
    800028e8:	fffff097          	auipc	ra,0xfffff
    800028ec:	f38080e7          	jalr	-200(ra) # 80001820 <_ZN3Sem4waitEPS_>
    char c = array[head];
    800028f0:	0004a783          	lw	a5,0(s1)
    800028f4:	00f48733          	add	a4,s1,a5
    800028f8:	01874903          	lbu	s2,24(a4)
    head = (head + 1) % CAPACITY;
    800028fc:	0017879b          	addiw	a5,a5,1
    80002900:	1f400713          	li	a4,500
    80002904:	02e7e7bb          	remw	a5,a5,a4
    80002908:	00f4a023          	sw	a5,0(s1)
    Sem::signal(space_available);
    8000290c:	0084b503          	ld	a0,8(s1)
    80002910:	fffff097          	auipc	ra,0xfffff
    80002914:	f64080e7          	jalr	-156(ra) # 80001874 <_ZN3Sem6signalEPS_>
    return c;
}
    80002918:	00090513          	mv	a0,s2
    8000291c:	01813083          	ld	ra,24(sp)
    80002920:	01013403          	ld	s0,16(sp)
    80002924:	00813483          	ld	s1,8(sp)
    80002928:	00013903          	ld	s2,0(sp)
    8000292c:	02010113          	addi	sp,sp,32
    80002930:	00008067          	ret

0000000080002934 <_ZN9Scheduler3putEP3TCB>:

TCB* Scheduler::head_ready = nullptr;
TCB* Scheduler::tail_ready = nullptr;
TCB* Scheduler::head_sleeping = nullptr;

void Scheduler::put(TCB *thread) {
    80002934:	fe010113          	addi	sp,sp,-32
    80002938:	00113c23          	sd	ra,24(sp)
    8000293c:	00813823          	sd	s0,16(sp)
    80002940:	00913423          	sd	s1,8(sp)
    80002944:	02010413          	addi	s0,sp,32
    80002948:	00050493          	mv	s1,a0
    if (tail_ready) {
    8000294c:	00009517          	auipc	a0,0x9
    80002950:	3f453503          	ld	a0,1012(a0) # 8000bd40 <_ZN9Scheduler10tail_readyE>
    80002954:	02050e63          	beqz	a0,80002990 <_ZN9Scheduler3putEP3TCB+0x5c>
        tail_ready -> set_next_ready(thread);
    80002958:	00048593          	mv	a1,s1
    8000295c:	00001097          	auipc	ra,0x1
    80002960:	910080e7          	jalr	-1776(ra) # 8000326c <_ZN3TCB14set_next_readyEPS_>
        tail_ready = thread;
    80002964:	00009797          	auipc	a5,0x9
    80002968:	3c97be23          	sd	s1,988(a5) # 8000bd40 <_ZN9Scheduler10tail_readyE>
    }
    else head_ready = tail_ready = thread;
    thread -> set_next_ready(nullptr);
    8000296c:	00000593          	li	a1,0
    80002970:	00048513          	mv	a0,s1
    80002974:	00001097          	auipc	ra,0x1
    80002978:	8f8080e7          	jalr	-1800(ra) # 8000326c <_ZN3TCB14set_next_readyEPS_>
}
    8000297c:	01813083          	ld	ra,24(sp)
    80002980:	01013403          	ld	s0,16(sp)
    80002984:	00813483          	ld	s1,8(sp)
    80002988:	02010113          	addi	sp,sp,32
    8000298c:	00008067          	ret
    else head_ready = tail_ready = thread;
    80002990:	00009797          	auipc	a5,0x9
    80002994:	3b078793          	addi	a5,a5,944 # 8000bd40 <_ZN9Scheduler10tail_readyE>
    80002998:	0097b023          	sd	s1,0(a5)
    8000299c:	0097b423          	sd	s1,8(a5)
    800029a0:	fcdff06f          	j	8000296c <_ZN9Scheduler3putEP3TCB+0x38>

00000000800029a4 <_ZN9Scheduler3getEv>:

TCB* Scheduler::get() {
    800029a4:	fe010113          	addi	sp,sp,-32
    800029a8:	00113c23          	sd	ra,24(sp)
    800029ac:	00813823          	sd	s0,16(sp)
    800029b0:	00913423          	sd	s1,8(sp)
    800029b4:	02010413          	addi	s0,sp,32
    if (!head_ready) return nullptr;
    800029b8:	00009497          	auipc	s1,0x9
    800029bc:	3904b483          	ld	s1,912(s1) # 8000bd48 <_ZN9Scheduler10head_readyE>
    800029c0:	02048663          	beqz	s1,800029ec <_ZN9Scheduler3getEv+0x48>
    TCB *tmp = head_ready;
    head_ready = head_ready -> get_next_ready();
    800029c4:	00048513          	mv	a0,s1
    800029c8:	00001097          	auipc	ra,0x1
    800029cc:	888080e7          	jalr	-1912(ra) # 80003250 <_ZNK3TCB14get_next_readyEv>
    800029d0:	00009797          	auipc	a5,0x9
    800029d4:	36a7bc23          	sd	a0,888(a5) # 8000bd48 <_ZN9Scheduler10head_readyE>
    if (!head_ready) tail_ready = nullptr;
    800029d8:	02050663          	beqz	a0,80002a04 <_ZN9Scheduler3getEv+0x60>
    tmp -> set_next_ready(nullptr);
    800029dc:	00000593          	li	a1,0
    800029e0:	00048513          	mv	a0,s1
    800029e4:	00001097          	auipc	ra,0x1
    800029e8:	888080e7          	jalr	-1912(ra) # 8000326c <_ZN3TCB14set_next_readyEPS_>
    return tmp;
}
    800029ec:	00048513          	mv	a0,s1
    800029f0:	01813083          	ld	ra,24(sp)
    800029f4:	01013403          	ld	s0,16(sp)
    800029f8:	00813483          	ld	s1,8(sp)
    800029fc:	02010113          	addi	sp,sp,32
    80002a00:	00008067          	ret
    if (!head_ready) tail_ready = nullptr;
    80002a04:	00009797          	auipc	a5,0x9
    80002a08:	3207be23          	sd	zero,828(a5) # 8000bd40 <_ZN9Scheduler10tail_readyE>
    80002a0c:	fd1ff06f          	j	800029dc <_ZN9Scheduler3getEv+0x38>

0000000080002a10 <_ZN9Scheduler13change_threadEv>:
    thread -> set_next_sleeping(nullptr);
    change_thread();
    return 0;
}

void Scheduler::change_thread() {
    80002a10:	fe010113          	addi	sp,sp,-32
    80002a14:	00113c23          	sd	ra,24(sp)
    80002a18:	00813823          	sd	s0,16(sp)
    80002a1c:	00913423          	sd	s1,8(sp)
    80002a20:	01213023          	sd	s2,0(sp)
    80002a24:	02010413          	addi	s0,sp,32
    TCB* old = TCB::running;
    80002a28:	00009917          	auipc	s2,0x9
    80002a2c:	29093903          	ld	s2,656(s2) # 8000bcb8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002a30:	00093483          	ld	s1,0(s2)
    old -> set_status(TCB::SLEEPING);
    80002a34:	00100593          	li	a1,1
    80002a38:	00048513          	mv	a0,s1
    80002a3c:	00001097          	auipc	ra,0x1
    80002a40:	8bc080e7          	jalr	-1860(ra) # 800032f8 <_ZN3TCB10set_statusENS_6StatusE>
    TCB::running = Scheduler::get();
    80002a44:	00000097          	auipc	ra,0x0
    80002a48:	f60080e7          	jalr	-160(ra) # 800029a4 <_ZN9Scheduler3getEv>
    80002a4c:	00a93023          	sd	a0,0(s2)
    if (old != TCB::running) TCB::yield(old, TCB::running);
    80002a50:	00a48a63          	beq	s1,a0,80002a64 <_ZN9Scheduler13change_threadEv+0x54>
    80002a54:	00050593          	mv	a1,a0
    80002a58:	00048513          	mv	a0,s1
    80002a5c:	00000097          	auipc	ra,0x0
    80002a60:	70c080e7          	jalr	1804(ra) # 80003168 <_ZN3TCB5yieldEPS_S0_>
}
    80002a64:	01813083          	ld	ra,24(sp)
    80002a68:	01013403          	ld	s0,16(sp)
    80002a6c:	00813483          	ld	s1,8(sp)
    80002a70:	00013903          	ld	s2,0(sp)
    80002a74:	02010113          	addi	sp,sp,32
    80002a78:	00008067          	ret

0000000080002a7c <_ZN9Scheduler12put_to_sleepEm>:
    if (!time) return -1;
    80002a7c:	18050a63          	beqz	a0,80002c10 <_ZN9Scheduler12put_to_sleepEm+0x194>
int Scheduler::put_to_sleep(time_t time) {
    80002a80:	fc010113          	addi	sp,sp,-64
    80002a84:	02113c23          	sd	ra,56(sp)
    80002a88:	02813823          	sd	s0,48(sp)
    80002a8c:	02913423          	sd	s1,40(sp)
    80002a90:	03213023          	sd	s2,32(sp)
    80002a94:	01313c23          	sd	s3,24(sp)
    80002a98:	01413823          	sd	s4,16(sp)
    80002a9c:	01513423          	sd	s5,8(sp)
    80002aa0:	04010413          	addi	s0,sp,64
    80002aa4:	00050993          	mv	s3,a0
    TCB* thread = TCB::running;
    80002aa8:	00009797          	auipc	a5,0x9
    80002aac:	2107b783          	ld	a5,528(a5) # 8000bcb8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002ab0:	0007ba83          	ld	s5,0(a5)
    if (!head_sleeping) {
    80002ab4:	00009497          	auipc	s1,0x9
    80002ab8:	29c4b483          	ld	s1,668(s1) # 8000bd50 <_ZN9Scheduler13head_sleepingE>
    80002abc:	02048e63          	beqz	s1,80002af8 <_ZN9Scheduler12put_to_sleepEm+0x7c>
    time_t current_time = 0;
    80002ac0:	00000913          	li	s2,0
    TCB* tmp = head_sleeping, *prev = nullptr;
    80002ac4:	00000a13          	li	s4,0
    while (tmp) {
    80002ac8:	0e048463          	beqz	s1,80002bb0 <_ZN9Scheduler12put_to_sleepEm+0x134>
        current_time += tmp -> get_time_to_sleep();
    80002acc:	00048513          	mv	a0,s1
    80002ad0:	00001097          	auipc	ra,0x1
    80002ad4:	80c080e7          	jalr	-2036(ra) # 800032dc <_ZNK3TCB17get_time_to_sleepEv>
    80002ad8:	00a90933          	add	s2,s2,a0
        if (current_time > time) {
    80002adc:	0529ea63          	bltu	s3,s2,80002b30 <_ZN9Scheduler12put_to_sleepEm+0xb4>
        tmp = tmp -> get_next_sleeping();
    80002ae0:	00048513          	mv	a0,s1
    80002ae4:	00000097          	auipc	ra,0x0
    80002ae8:	7c0080e7          	jalr	1984(ra) # 800032a4 <_ZNK3TCB17get_next_sleepingEv>
        prev = tmp;
    80002aec:	00048a13          	mv	s4,s1
        tmp = tmp -> get_next_sleeping();
    80002af0:	00050493          	mv	s1,a0
    while (tmp) {
    80002af4:	fd5ff06f          	j	80002ac8 <_ZN9Scheduler12put_to_sleepEm+0x4c>
        head_sleeping = thread;
    80002af8:	00009797          	auipc	a5,0x9
    80002afc:	2557bc23          	sd	s5,600(a5) # 8000bd50 <_ZN9Scheduler13head_sleepingE>
        thread -> set_next_sleeping(nullptr);
    80002b00:	00000593          	li	a1,0
    80002b04:	000a8513          	mv	a0,s5
    80002b08:	00000097          	auipc	ra,0x0
    80002b0c:	780080e7          	jalr	1920(ra) # 80003288 <_ZN3TCB17set_next_sleepingEPS_>
        thread -> set_time_to_sleep(time);
    80002b10:	00098593          	mv	a1,s3
    80002b14:	000a8513          	mv	a0,s5
    80002b18:	00000097          	auipc	ra,0x0
    80002b1c:	7a8080e7          	jalr	1960(ra) # 800032c0 <_ZN3TCB17set_time_to_sleepEm>
        change_thread();
    80002b20:	00000097          	auipc	ra,0x0
    80002b24:	ef0080e7          	jalr	-272(ra) # 80002a10 <_ZN9Scheduler13change_threadEv>
        return 0;
    80002b28:	00000513          	li	a0,0
    80002b2c:	0c00006f          	j	80002bec <_ZN9Scheduler12put_to_sleepEm+0x170>
            time_t new_time = time - (current_time - tmp -> get_time_to_sleep());
    80002b30:	00048513          	mv	a0,s1
    80002b34:	00000097          	auipc	ra,0x0
    80002b38:	7a8080e7          	jalr	1960(ra) # 800032dc <_ZNK3TCB17get_time_to_sleepEv>
    80002b3c:	41250933          	sub	s2,a0,s2
    80002b40:	013909b3          	add	s3,s2,s3
            thread -> set_time_to_sleep(new_time);
    80002b44:	00098593          	mv	a1,s3
    80002b48:	000a8513          	mv	a0,s5
    80002b4c:	00000097          	auipc	ra,0x0
    80002b50:	774080e7          	jalr	1908(ra) # 800032c0 <_ZN3TCB17set_time_to_sleepEm>
            thread -> set_next_sleeping(tmp);
    80002b54:	00048593          	mv	a1,s1
    80002b58:	000a8513          	mv	a0,s5
    80002b5c:	00000097          	auipc	ra,0x0
    80002b60:	72c080e7          	jalr	1836(ra) # 80003288 <_ZN3TCB17set_next_sleepingEPS_>
            if (prev) prev -> set_next_sleeping(thread);
    80002b64:	040a0063          	beqz	s4,80002ba4 <_ZN9Scheduler12put_to_sleepEm+0x128>
    80002b68:	000a8593          	mv	a1,s5
    80002b6c:	000a0513          	mv	a0,s4
    80002b70:	00000097          	auipc	ra,0x0
    80002b74:	718080e7          	jalr	1816(ra) # 80003288 <_ZN3TCB17set_next_sleepingEPS_>
            tmp -> set_time_to_sleep(tmp -> get_time_to_sleep() - new_time);
    80002b78:	00048513          	mv	a0,s1
    80002b7c:	00000097          	auipc	ra,0x0
    80002b80:	760080e7          	jalr	1888(ra) # 800032dc <_ZNK3TCB17get_time_to_sleepEv>
    80002b84:	413505b3          	sub	a1,a0,s3
    80002b88:	00048513          	mv	a0,s1
    80002b8c:	00000097          	auipc	ra,0x0
    80002b90:	734080e7          	jalr	1844(ra) # 800032c0 <_ZN3TCB17set_time_to_sleepEm>
            change_thread();
    80002b94:	00000097          	auipc	ra,0x0
    80002b98:	e7c080e7          	jalr	-388(ra) # 80002a10 <_ZN9Scheduler13change_threadEv>
            return 0;
    80002b9c:	00000513          	li	a0,0
    80002ba0:	04c0006f          	j	80002bec <_ZN9Scheduler12put_to_sleepEm+0x170>
            else head_sleeping = thread;
    80002ba4:	00009797          	auipc	a5,0x9
    80002ba8:	1b57b623          	sd	s5,428(a5) # 8000bd50 <_ZN9Scheduler13head_sleepingE>
    80002bac:	fcdff06f          	j	80002b78 <_ZN9Scheduler12put_to_sleepEm+0xfc>
    thread -> set_time_to_sleep(time - current_time);
    80002bb0:	412985b3          	sub	a1,s3,s2
    80002bb4:	000a8513          	mv	a0,s5
    80002bb8:	00000097          	auipc	ra,0x0
    80002bbc:	708080e7          	jalr	1800(ra) # 800032c0 <_ZN3TCB17set_time_to_sleepEm>
    prev -> set_next_sleeping(thread);
    80002bc0:	000a8593          	mv	a1,s5
    80002bc4:	000a0513          	mv	a0,s4
    80002bc8:	00000097          	auipc	ra,0x0
    80002bcc:	6c0080e7          	jalr	1728(ra) # 80003288 <_ZN3TCB17set_next_sleepingEPS_>
    thread -> set_next_sleeping(nullptr);
    80002bd0:	00000593          	li	a1,0
    80002bd4:	000a8513          	mv	a0,s5
    80002bd8:	00000097          	auipc	ra,0x0
    80002bdc:	6b0080e7          	jalr	1712(ra) # 80003288 <_ZN3TCB17set_next_sleepingEPS_>
    change_thread();
    80002be0:	00000097          	auipc	ra,0x0
    80002be4:	e30080e7          	jalr	-464(ra) # 80002a10 <_ZN9Scheduler13change_threadEv>
    return 0;
    80002be8:	00000513          	li	a0,0
}
    80002bec:	03813083          	ld	ra,56(sp)
    80002bf0:	03013403          	ld	s0,48(sp)
    80002bf4:	02813483          	ld	s1,40(sp)
    80002bf8:	02013903          	ld	s2,32(sp)
    80002bfc:	01813983          	ld	s3,24(sp)
    80002c00:	01013a03          	ld	s4,16(sp)
    80002c04:	00813a83          	ld	s5,8(sp)
    80002c08:	04010113          	addi	sp,sp,64
    80002c0c:	00008067          	ret
    if (!time) return -1;
    80002c10:	fff00513          	li	a0,-1
}
    80002c14:	00008067          	ret

0000000080002c18 <_ZN5RiscV10popSppSpieEv>:
    SUPERVISOR_INTERRUPT = 0x0000000000000009UL,
};

/// used in thread wrapper function when initializing thread because thread stack is empty
/// pc = (sepc = ra)
void RiscV::popSppSpie() {
    80002c18:	ff010113          	addi	sp,sp,-16
    80002c1c:	00813423          	sd	s0,8(sp)
    80002c20:	01010413          	addi	s0,sp,16
    /// conditionally return to User mode
    if (TCB::running -> function_body && TCB::running->function_body != kernelConsoleOutput) mc_sstatus(SSTATUS_SPP);
    80002c24:	00009797          	auipc	a5,0x9
    80002c28:	0947b783          	ld	a5,148(a5) # 8000bcb8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002c2c:	0007b783          	ld	a5,0(a5)
    80002c30:	0207b783          	ld	a5,32(a5)
    80002c34:	00078c63          	beqz	a5,80002c4c <_ZN5RiscV10popSppSpieEv+0x34>
    80002c38:	00009717          	auipc	a4,0x9
    80002c3c:	07873703          	ld	a4,120(a4) # 8000bcb0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002c40:	00e78663          	beq	a5,a4,80002c4c <_ZN5RiscV10popSppSpieEv+0x34>
}

inline void RiscV::mc_sstatus(uint64 mask) {
    __asm__ volatile ("csrc sstatus, %0" : : "r"(mask));
    80002c44:	10000793          	li	a5,256
    80002c48:	1007b073          	csrc	sstatus,a5
    __asm__ volatile("csrw sepc, ra");
    80002c4c:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80002c50:	10200073          	sret
}
    80002c54:	00813403          	ld	s0,8(sp)
    80002c58:	01010113          	addi	sp,sp,16
    80002c5c:	00008067          	ret

0000000080002c60 <_ZN5RiscV22handle_supervisor_trapEv>:

/// interrupt handler
void RiscV::handle_supervisor_trap() {
    80002c60:	f9010113          	addi	sp,sp,-112
    80002c64:	06113423          	sd	ra,104(sp)
    80002c68:	06813023          	sd	s0,96(sp)
    80002c6c:	04913c23          	sd	s1,88(sp)
    80002c70:	05213823          	sd	s2,80(sp)
    80002c74:	05313423          	sd	s3,72(sp)
    80002c78:	07010413          	addi	s0,sp,112
    /// read values from registers
    uint64 syscall_code, a1, a2, a3, a4;
    __asm__ volatile("mv %0, a0" : "=r"(syscall_code));
    80002c7c:	00050793          	mv	a5,a0
    __asm__ volatile("mv %0, a1" : "=r"(a1));
    80002c80:	00058513          	mv	a0,a1
    __asm__ volatile("mv %0, a2" : "=r"(a2));
    80002c84:	00060593          	mv	a1,a2
    __asm__ volatile("mv %0, a3" : "=r"(a3));
    80002c88:	00068613          	mv	a2,a3
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    80002c8c:	00070693          	mv	a3,a4
    __asm__ volatile ("csrr %0, scause" : "=r"(scause));
    80002c90:	14202773          	csrr	a4,scause
    80002c94:	f8e43c23          	sd	a4,-104(s0)
    return scause;
    80002c98:	f9843703          	ld	a4,-104(s0)

    /// read scause register value
    uint64 scause = read_scause();

    /// interrupt from supervisor / user mode
    if (scause == USER_INTERRUPT || scause == SUPERVISOR_INTERRUPT) {
    80002c9c:	ff870893          	addi	a7,a4,-8
    80002ca0:	00100813          	li	a6,1
    80002ca4:	07187063          	bgeu	a6,a7,80002d04 <_ZN5RiscV22handle_supervisor_trapEv+0xa4>
        write_sepc(sepc);
        write_sstatus(sstatus);
    }

    /// interrupt caused by Timer
    else if (scause == SOFTWARE_INTERRUPT) {
    80002ca8:	fff00793          	li	a5,-1
    80002cac:	03f79793          	slli	a5,a5,0x3f
    80002cb0:	00178793          	addi	a5,a5,1
    80002cb4:	16f70063          	beq	a4,a5,80002e14 <_ZN5RiscV22handle_supervisor_trapEv+0x1b4>
            write_sepc(sepc);
        }
    }

    /// External interrupt (Console)
    else if (scause == HARDWARE_INTERRUPT) {
    80002cb8:	fff00793          	li	a5,-1
    80002cbc:	03f79793          	slli	a5,a5,0x3f
    80002cc0:	00978793          	addi	a5,a5,9
    80002cc4:	20f70663          	beq	a4,a5,80002ed0 <_ZN5RiscV22handle_supervisor_trapEv+0x270>
        mc_sip(SIP_SEIP);
    }

    /// Illegal instruction / Bad memory access
    else {
        printNumber(scause);
    80002cc8:	00070513          	mv	a0,a4
    80002ccc:	fffff097          	auipc	ra,0xfffff
    80002cd0:	dd0080e7          	jalr	-560(ra) # 80001a9c <_Z11printNumberm>
        __putc('!');
    80002cd4:	02100513          	li	a0,33
    80002cd8:	00006097          	auipc	ra,0x6
    80002cdc:	fc4080e7          	jalr	-60(ra) # 80008c9c <__putc>
        __putc('?');
    80002ce0:	03f00513          	li	a0,63
    80002ce4:	00006097          	auipc	ra,0x6
    80002ce8:	fb8080e7          	jalr	-72(ra) # 80008c9c <__putc>
        __putc('!');
    80002cec:	02100513          	li	a0,33
    80002cf0:	00006097          	auipc	ra,0x6
    80002cf4:	fac080e7          	jalr	-84(ra) # 80008c9c <__putc>
        uint64 val = 1;
        __asm__ volatile("mv a0, %0" : : "r"(val));
    80002cf8:	00100793          	li	a5,1
    80002cfc:	00078513          	mv	a0,a5
    }
    80002d00:	0540006f          	j	80002d54 <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
    __asm__ volatile ("csrr %0, sepc" : "=r"(sepc));
    80002d04:	14102773          	csrr	a4,sepc
    80002d08:	fae43423          	sd	a4,-88(s0)
    return sepc;
    80002d0c:	fa843483          	ld	s1,-88(s0)
        uint64 sepc = read_sepc() + 4;
    80002d10:	00448493          	addi	s1,s1,4
}

inline uint64 RiscV::read_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    80002d14:	10002773          	csrr	a4,sstatus
    80002d18:	fae43023          	sd	a4,-96(s0)
    return sstatus;
    80002d1c:	fa043903          	ld	s2,-96(s0)
        switch(syscall_code) {
    80002d20:	04200713          	li	a4,66
    80002d24:	02f76463          	bltu	a4,a5,80002d4c <_ZN5RiscV22handle_supervisor_trapEv+0xec>
    80002d28:	00279793          	slli	a5,a5,0x2
    80002d2c:	00006717          	auipc	a4,0x6
    80002d30:	2f470713          	addi	a4,a4,756 # 80009020 <CONSOLE_STATUS+0x10>
    80002d34:	00e787b3          	add	a5,a5,a4
    80002d38:	0007a783          	lw	a5,0(a5)
    80002d3c:	00e787b3          	add	a5,a5,a4
    80002d40:	00078067          	jr	a5
                MemoryAllocator::mem_alloc((size_t) a1);
    80002d44:	fffff097          	auipc	ra,0xfffff
    80002d48:	5bc080e7          	jalr	1468(ra) # 80002300 <_ZN15MemoryAllocator9mem_allocEm>
    __asm__ volatile ("csrw sepc, %0" : : "r"(val));
    80002d4c:	14149073          	csrw	sepc,s1
}

inline void RiscV::write_sstatus(uint64 val) {
    __asm__ volatile ("csrw sstatus, %0" : : "r"(val));
    80002d50:	10091073          	csrw	sstatus,s2
    80002d54:	06813083          	ld	ra,104(sp)
    80002d58:	06013403          	ld	s0,96(sp)
    80002d5c:	05813483          	ld	s1,88(sp)
    80002d60:	05013903          	ld	s2,80(sp)
    80002d64:	04813983          	ld	s3,72(sp)
    80002d68:	07010113          	addi	sp,sp,112
    80002d6c:	00008067          	ret
                MemoryAllocator::mem_free((void *) a1);
    80002d70:	fffff097          	auipc	ra,0xfffff
    80002d74:	704080e7          	jalr	1796(ra) # 80002474 <_ZN15MemoryAllocator8mem_freeEPv>
                break;
    80002d78:	fd5ff06f          	j	80002d4c <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                TCB::thread_create((thread_t *) a1, (void (*)(void *)) a2, (void *) a3, (void *) a4);
    80002d7c:	00000097          	auipc	ra,0x0
    80002d80:	674080e7          	jalr	1652(ra) # 800033f0 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>
                break;
    80002d84:	fc9ff06f          	j	80002d4c <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                TCB::thread_exit();
    80002d88:	00000097          	auipc	ra,0x0
    80002d8c:	58c080e7          	jalr	1420(ra) # 80003314 <_ZN3TCB11thread_exitEv>
                break;
    80002d90:	fbdff06f          	j	80002d4c <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                TCB::dispatch();
    80002d94:	00000097          	auipc	ra,0x0
    80002d98:	430080e7          	jalr	1072(ra) # 800031c4 <_ZN3TCB8dispatchEv>
                break;
    80002d9c:	fb1ff06f          	j	80002d4c <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Sem::open((sem_t *) a1, a2);
    80002da0:	0005859b          	sext.w	a1,a1
    80002da4:	fffff097          	auipc	ra,0xfffff
    80002da8:	ba8080e7          	jalr	-1112(ra) # 8000194c <_ZN3Sem4openEPPS_j>
                break;
    80002dac:	fa1ff06f          	j	80002d4c <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Sem::close((sem_t) a1);
    80002db0:	fffff097          	auipc	ra,0xfffff
    80002db4:	a04080e7          	jalr	-1532(ra) # 800017b4 <_ZN3Sem5closeEPS_>
                break;
    80002db8:	f95ff06f          	j	80002d4c <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Sem::wait((sem_t) a1);
    80002dbc:	fffff097          	auipc	ra,0xfffff
    80002dc0:	a64080e7          	jalr	-1436(ra) # 80001820 <_ZN3Sem4waitEPS_>
                break;
    80002dc4:	f89ff06f          	j	80002d4c <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Sem::signal((sem_t) a1);
    80002dc8:	fffff097          	auipc	ra,0xfffff
    80002dcc:	aac080e7          	jalr	-1364(ra) # 80001874 <_ZN3Sem6signalEPS_>
                break;
    80002dd0:	f7dff06f          	j	80002d4c <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Sem::timedWait((sem_t) a1, (time_t) a2);
    80002dd4:	fffff097          	auipc	ra,0xfffff
    80002dd8:	af4080e7          	jalr	-1292(ra) # 800018c8 <_ZN3Sem9timedWaitEPS_m>
                break;
    80002ddc:	f71ff06f          	j	80002d4c <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Sem::tryWait((sem_t) a1);
    80002de0:	fffff097          	auipc	ra,0xfffff
    80002de4:	b04080e7          	jalr	-1276(ra) # 800018e4 <_ZN3Sem7tryWaitEPS_>
                break;
    80002de8:	f65ff06f          	j	80002d4c <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Scheduler::put_to_sleep((time_t) a1);
    80002dec:	00000097          	auipc	ra,0x0
    80002df0:	c90080e7          	jalr	-880(ra) # 80002a7c <_ZN9Scheduler12put_to_sleepEm>
                break;
    80002df4:	f59ff06f          	j	80002d4c <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Con::getc_input();
    80002df8:	fffff097          	auipc	ra,0xfffff
    80002dfc:	f8c080e7          	jalr	-116(ra) # 80001d84 <_ZN3Con10getc_inputEv>
                break;
    80002e00:	f4dff06f          	j	80002d4c <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Con::putc_output((char) a1);
    80002e04:	0ff57513          	andi	a0,a0,255
    80002e08:	fffff097          	auipc	ra,0xfffff
    80002e0c:	ee4080e7          	jalr	-284(ra) # 80001cec <_ZN3Con11putc_outputEc>
                break;
    80002e10:	f3dff06f          	j	80002d4c <_ZN5RiscV22handle_supervisor_trapEv+0xec>
    __asm__ volatile ("csrc sip, %0" : : "r"(mask));
    80002e14:	00200793          	li	a5,2
    80002e18:	1447b073          	csrc	sip,a5
        TCB* first_waiting = Scheduler::head_sleeping;
    80002e1c:	00009797          	auipc	a5,0x9
    80002e20:	e6c7b783          	ld	a5,-404(a5) # 8000bc88 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002e24:	0007b483          	ld	s1,0(a5)
        if (first_waiting) {
    80002e28:	04048463          	beqz	s1,80002e70 <_ZN5RiscV22handle_supervisor_trapEv+0x210>
            --first_waiting -> time_to_sleep;
    80002e2c:	0484b783          	ld	a5,72(s1)
    80002e30:	fff78793          	addi	a5,a5,-1
    80002e34:	04f4b423          	sd	a5,72(s1)
            while (first_waiting && first_waiting -> time_to_sleep == 0) {
    80002e38:	02048c63          	beqz	s1,80002e70 <_ZN5RiscV22handle_supervisor_trapEv+0x210>
    80002e3c:	0484b783          	ld	a5,72(s1)
    80002e40:	02079863          	bnez	a5,80002e70 <_ZN5RiscV22handle_supervisor_trapEv+0x210>
                Scheduler::put(first_waiting);
    80002e44:	00048513          	mv	a0,s1
    80002e48:	00000097          	auipc	ra,0x0
    80002e4c:	aec080e7          	jalr	-1300(ra) # 80002934 <_ZN9Scheduler3putEP3TCB>
                first_waiting -> status = TCB::RUNNABLE;
    80002e50:	0004ac23          	sw	zero,24(s1)
                first_waiting = first_waiting -> next_sleeping;
    80002e54:	0504b783          	ld	a5,80(s1)
                tmp -> next_sleeping = nullptr;
    80002e58:	0404b823          	sd	zero,80(s1)
                Scheduler::head_sleeping = first_waiting;
    80002e5c:	00009717          	auipc	a4,0x9
    80002e60:	e2c73703          	ld	a4,-468(a4) # 8000bc88 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002e64:	00f73023          	sd	a5,0(a4)
                first_waiting = first_waiting -> next_sleeping;
    80002e68:	00078493          	mv	s1,a5
            while (first_waiting && first_waiting -> time_to_sleep == 0) {
    80002e6c:	fcdff06f          	j	80002e38 <_ZN5RiscV22handle_supervisor_trapEv+0x1d8>
        ++TCB::time_slice_counter;
    80002e70:	00009717          	auipc	a4,0x9
    80002e74:	e3873703          	ld	a4,-456(a4) # 8000bca8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002e78:	00073783          	ld	a5,0(a4)
    80002e7c:	00178793          	addi	a5,a5,1
    80002e80:	00f73023          	sd	a5,0(a4)
        if (TCB::time_slice_counter >= TCB::running -> time_slice) {
    80002e84:	00009717          	auipc	a4,0x9
    80002e88:	e3473703          	ld	a4,-460(a4) # 8000bcb8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002e8c:	00073703          	ld	a4,0(a4)
    80002e90:	03873703          	ld	a4,56(a4)
    80002e94:	ece7e0e3          	bltu	a5,a4,80002d54 <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
    __asm__ volatile ("csrr %0, sepc" : "=r"(sepc));
    80002e98:	141027f3          	csrr	a5,sepc
    80002e9c:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    80002ea0:	fb843483          	ld	s1,-72(s0)
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    80002ea4:	100027f3          	csrr	a5,sstatus
    80002ea8:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    80002eac:	fb043903          	ld	s2,-80(s0)
            TCB::time_slice_counter = 0;
    80002eb0:	00009797          	auipc	a5,0x9
    80002eb4:	df87b783          	ld	a5,-520(a5) # 8000bca8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002eb8:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80002ebc:	00000097          	auipc	ra,0x0
    80002ec0:	308080e7          	jalr	776(ra) # 800031c4 <_ZN3TCB8dispatchEv>
    __asm__ volatile ("csrw sstatus, %0" : : "r"(val));
    80002ec4:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %0" : : "r"(val));
    80002ec8:	14149073          	csrw	sepc,s1
}
    80002ecc:	e89ff06f          	j	80002d54 <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
    __asm__ volatile ("csrr %0, sepc" : "=r"(sepc));
    80002ed0:	141027f3          	csrr	a5,sepc
    80002ed4:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80002ed8:	fc843983          	ld	s3,-56(s0)
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    80002edc:	100027f3          	csrr	a5,sstatus
    80002ee0:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80002ee4:	fc043903          	ld	s2,-64(s0)
        int irq = plic_claim();
    80002ee8:	00004097          	auipc	ra,0x4
    80002eec:	54c080e7          	jalr	1356(ra) # 80007434 <plic_claim>
    80002ef0:	00050493          	mv	s1,a0
        if (irq == CONSOLE_IRQ) {
    80002ef4:	00a00793          	li	a5,10
    80002ef8:	02f50263          	beq	a0,a5,80002f1c <_ZN5RiscV22handle_supervisor_trapEv+0x2bc>
        plic_complete(irq);
    80002efc:	00048513          	mv	a0,s1
    80002f00:	00004097          	auipc	ra,0x4
    80002f04:	56c080e7          	jalr	1388(ra) # 8000746c <plic_complete>
    __asm__ volatile ("csrw sepc, %0" : : "r"(val));
    80002f08:	14199073          	csrw	sepc,s3
    __asm__ volatile ("csrw sstatus, %0" : : "r"(val));
    80002f0c:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrc sip, %0" : : "r"(mask));
    80002f10:	20000793          	li	a5,512
    80002f14:	1447b073          	csrc	sip,a5
}
    80002f18:	e3dff06f          	j	80002d54 <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
            while (*(char *) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT) {
    80002f1c:	00009797          	auipc	a5,0x9
    80002f20:	d5c7b783          	ld	a5,-676(a5) # 8000bc78 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002f24:	0007b783          	ld	a5,0(a5)
    80002f28:	0007c783          	lbu	a5,0(a5)
    80002f2c:	0017f793          	andi	a5,a5,1
    80002f30:	fc0786e3          	beqz	a5,80002efc <_ZN5RiscV22handle_supervisor_trapEv+0x29c>
                char c = *(char *) CONSOLE_RX_DATA;
    80002f34:	00009797          	auipc	a5,0x9
    80002f38:	d3c7b783          	ld	a5,-708(a5) # 8000bc70 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002f3c:	0007b783          	ld	a5,0(a5)
                Con::putc_input(c);
    80002f40:	0007c503          	lbu	a0,0(a5)
    80002f44:	fffff097          	auipc	ra,0xfffff
    80002f48:	e0c080e7          	jalr	-500(ra) # 80001d50 <_ZN3Con10putc_inputEc>
            while (*(char *) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT) {
    80002f4c:	fd1ff06f          	j	80002f1c <_ZN5RiscV22handle_supervisor_trapEv+0x2bc>

0000000080002f50 <_ZN10ThreadList9get_firstEv>:

void ThreadList::push_back(TCB *thread) {
    tail = (head ? tail -> next : head) = new Node(thread);
}

TCB *ThreadList::get_first() {
    80002f50:	ff010113          	addi	sp,sp,-16
    80002f54:	00813423          	sd	s0,8(sp)
    80002f58:	01010413          	addi	s0,sp,16
    return (head ? head -> data : nullptr);
    80002f5c:	00053503          	ld	a0,0(a0)
    80002f60:	00050463          	beqz	a0,80002f68 <_ZN10ThreadList9get_firstEv+0x18>
    80002f64:	00053503          	ld	a0,0(a0)
}
    80002f68:	00813403          	ld	s0,8(sp)
    80002f6c:	01010113          	addi	sp,sp,16
    80002f70:	00008067          	ret

0000000080002f74 <_ZN10ThreadList4NodenwEm>:

void ThreadList::free() {
    while (get_first()) remove_first();
}

void *ThreadList::Node::operator new(size_t size) {
    80002f74:	ff010113          	addi	sp,sp,-16
    80002f78:	00113423          	sd	ra,8(sp)
    80002f7c:	00813023          	sd	s0,0(sp)
    80002f80:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    80002f84:	fffff097          	auipc	ra,0xfffff
    80002f88:	740080e7          	jalr	1856(ra) # 800026c4 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80002f8c:	fffff097          	auipc	ra,0xfffff
    80002f90:	374080e7          	jalr	884(ra) # 80002300 <_ZN15MemoryAllocator9mem_allocEm>
}
    80002f94:	00813083          	ld	ra,8(sp)
    80002f98:	00013403          	ld	s0,0(sp)
    80002f9c:	01010113          	addi	sp,sp,16
    80002fa0:	00008067          	ret

0000000080002fa4 <_ZN10ThreadList9push_backEP3TCB>:
void ThreadList::push_back(TCB *thread) {
    80002fa4:	fe010113          	addi	sp,sp,-32
    80002fa8:	00113c23          	sd	ra,24(sp)
    80002fac:	00813823          	sd	s0,16(sp)
    80002fb0:	00913423          	sd	s1,8(sp)
    80002fb4:	01213023          	sd	s2,0(sp)
    80002fb8:	02010413          	addi	s0,sp,32
    80002fbc:	00050493          	mv	s1,a0
    80002fc0:	00058913          	mv	s2,a1
    tail = (head ? tail -> next : head) = new Node(thread);
    80002fc4:	01000513          	li	a0,16
    80002fc8:	00000097          	auipc	ra,0x0
    80002fcc:	fac080e7          	jalr	-84(ra) # 80002f74 <_ZN10ThreadList4NodenwEm>
        struct Node *next;

        void* operator new(size_t size);
        void operator delete(void* addr);

        explicit Node(TCB* data) : data(data), next(nullptr) {}
    80002fd0:	01253023          	sd	s2,0(a0)
    80002fd4:	00053423          	sd	zero,8(a0)
    80002fd8:	0004b783          	ld	a5,0(s1)
    80002fdc:	02078463          	beqz	a5,80003004 <_ZN10ThreadList9push_backEP3TCB+0x60>
    80002fe0:	0084b783          	ld	a5,8(s1)
    80002fe4:	00a7b423          	sd	a0,8(a5)
    80002fe8:	00a4b423          	sd	a0,8(s1)
}
    80002fec:	01813083          	ld	ra,24(sp)
    80002ff0:	01013403          	ld	s0,16(sp)
    80002ff4:	00813483          	ld	s1,8(sp)
    80002ff8:	00013903          	ld	s2,0(sp)
    80002ffc:	02010113          	addi	sp,sp,32
    80003000:	00008067          	ret
    tail = (head ? tail -> next : head) = new Node(thread);
    80003004:	00a4b023          	sd	a0,0(s1)
    80003008:	fe1ff06f          	j	80002fe8 <_ZN10ThreadList9push_backEP3TCB+0x44>

000000008000300c <_ZN10ThreadList4NodedlEPv>:

void ThreadList::Node::operator delete(void *addr) {
    8000300c:	ff010113          	addi	sp,sp,-16
    80003010:	00113423          	sd	ra,8(sp)
    80003014:	00813023          	sd	s0,0(sp)
    80003018:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    8000301c:	fffff097          	auipc	ra,0xfffff
    80003020:	458080e7          	jalr	1112(ra) # 80002474 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80003024:	00813083          	ld	ra,8(sp)
    80003028:	00013403          	ld	s0,0(sp)
    8000302c:	01010113          	addi	sp,sp,16
    80003030:	00008067          	ret

0000000080003034 <_ZN10ThreadList12remove_firstEv>:
TCB *ThreadList::remove_first() {
    80003034:	fe010113          	addi	sp,sp,-32
    80003038:	00113c23          	sd	ra,24(sp)
    8000303c:	00813823          	sd	s0,16(sp)
    80003040:	00913423          	sd	s1,8(sp)
    80003044:	02010413          	addi	s0,sp,32
    80003048:	00050793          	mv	a5,a0
    if (!head) return nullptr;
    8000304c:	00053503          	ld	a0,0(a0)
    80003050:	02050863          	beqz	a0,80003080 <_ZN10ThreadList12remove_firstEv+0x4c>
    TCB* thread = tmp -> data;
    80003054:	00053483          	ld	s1,0(a0)
    head = head -> next;
    80003058:	00853703          	ld	a4,8(a0)
    8000305c:	00e7b023          	sd	a4,0(a5)
    delete tmp;
    80003060:	00000097          	auipc	ra,0x0
    80003064:	fac080e7          	jalr	-84(ra) # 8000300c <_ZN10ThreadList4NodedlEPv>
}
    80003068:	00048513          	mv	a0,s1
    8000306c:	01813083          	ld	ra,24(sp)
    80003070:	01013403          	ld	s0,16(sp)
    80003074:	00813483          	ld	s1,8(sp)
    80003078:	02010113          	addi	sp,sp,32
    8000307c:	00008067          	ret
    if (!head) return nullptr;
    80003080:	00050493          	mv	s1,a0
    80003084:	fe5ff06f          	j	80003068 <_ZN10ThreadList12remove_firstEv+0x34>

0000000080003088 <_ZN10ThreadList4freeEv>:
void ThreadList::free() {
    80003088:	fe010113          	addi	sp,sp,-32
    8000308c:	00113c23          	sd	ra,24(sp)
    80003090:	00813823          	sd	s0,16(sp)
    80003094:	00913423          	sd	s1,8(sp)
    80003098:	02010413          	addi	s0,sp,32
    8000309c:	00050493          	mv	s1,a0
    while (get_first()) remove_first();
    800030a0:	00048513          	mv	a0,s1
    800030a4:	00000097          	auipc	ra,0x0
    800030a8:	eac080e7          	jalr	-340(ra) # 80002f50 <_ZN10ThreadList9get_firstEv>
    800030ac:	00050a63          	beqz	a0,800030c0 <_ZN10ThreadList4freeEv+0x38>
    800030b0:	00048513          	mv	a0,s1
    800030b4:	00000097          	auipc	ra,0x0
    800030b8:	f80080e7          	jalr	-128(ra) # 80003034 <_ZN10ThreadList12remove_firstEv>
    800030bc:	fe5ff06f          	j	800030a0 <_ZN10ThreadList4freeEv+0x18>
}
    800030c0:	01813083          	ld	ra,24(sp)
    800030c4:	01013403          	ld	s0,16(sp)
    800030c8:	00813483          	ld	s1,8(sp)
    800030cc:	02010113          	addi	sp,sp,32
    800030d0:	00008067          	ret

00000000800030d4 <_ZN3TCBC1EPFvPvES0_S0_>:

TCB::TCB(void (*function_body)(void *), void *arg, void *stack) {
    context = {
            (uint64) wrapper_function,
            /// stack starts from max address, rises to lower locations
            (uint64) (stack ? (uint64) stack + DEFAULT_STACK_SIZE - 1 : 0)
    800030d4:	08068463          	beqz	a3,8000315c <_ZN3TCBC1EPFvPvES0_S0_+0x88>
    800030d8:	000017b7          	lui	a5,0x1
    800030dc:	fff78793          	addi	a5,a5,-1 # fff <_entry-0x7ffff001>
    800030e0:	00f687b3          	add	a5,a3,a5
    context = {
    800030e4:	00000717          	auipc	a4,0x0
    800030e8:	26c70713          	addi	a4,a4,620 # 80003350 <_ZN3TCB16wrapper_functionEv>
    800030ec:	00e53423          	sd	a4,8(a0)
    800030f0:	00f53823          	sd	a5,16(a0)
    };
    id = cnt++;
    800030f4:	00009717          	auipc	a4,0x9
    800030f8:	c6470713          	addi	a4,a4,-924 # 8000bd58 <_ZN3TCB3cntE>
    800030fc:	00072783          	lw	a5,0(a4)
    80003100:	0017881b          	addiw	a6,a5,1
    80003104:	01072023          	sw	a6,0(a4)
    80003108:	00f52023          	sw	a5,0(a0)
    status = RUNNABLE;
    8000310c:	00052c23          	sw	zero,24(a0)
    this -> function_body = function_body;
    80003110:	02b53023          	sd	a1,32(a0)
    this -> arg = arg;
    80003114:	02c53423          	sd	a2,40(a0)
    this -> stack = stack;
    80003118:	02d53823          	sd	a3,48(a0)
    time_slice = DEFAULT_TIME_SLICE;
    8000311c:	00200793          	li	a5,2
    80003120:	02f53c23          	sd	a5,56(a0)
    time_to_sleep = 0;
    80003124:	04053423          	sd	zero,72(a0)
    next_ready = nullptr;
    80003128:	04053023          	sd	zero,64(a0)
    next_sleeping = nullptr;
    8000312c:	04053823          	sd	zero,80(a0)
    if (function_body) Scheduler::put(this);
    80003130:	02058a63          	beqz	a1,80003164 <_ZN3TCBC1EPFvPvES0_S0_+0x90>
TCB::TCB(void (*function_body)(void *), void *arg, void *stack) {
    80003134:	ff010113          	addi	sp,sp,-16
    80003138:	00113423          	sd	ra,8(sp)
    8000313c:	00813023          	sd	s0,0(sp)
    80003140:	01010413          	addi	s0,sp,16
    if (function_body) Scheduler::put(this);
    80003144:	fffff097          	auipc	ra,0xfffff
    80003148:	7f0080e7          	jalr	2032(ra) # 80002934 <_ZN9Scheduler3putEP3TCB>
}
    8000314c:	00813083          	ld	ra,8(sp)
    80003150:	00013403          	ld	s0,0(sp)
    80003154:	01010113          	addi	sp,sp,16
    80003158:	00008067          	ret
            (uint64) (stack ? (uint64) stack + DEFAULT_STACK_SIZE - 1 : 0)
    8000315c:	00000793          	li	a5,0
    80003160:	f85ff06f          	j	800030e4 <_ZN3TCBC1EPFvPvES0_S0_+0x10>
    80003164:	00008067          	ret

0000000080003168 <_ZN3TCB5yieldEPS_S0_>:
    RiscV::popSppSpie();
    if (running -> function_body) running -> function_body(running -> arg);
    thread_exit();
}

void TCB::yield(TCB *old_running, TCB *new_running) {
    80003168:	fe010113          	addi	sp,sp,-32
    8000316c:	00113c23          	sd	ra,24(sp)
    80003170:	00813823          	sd	s0,16(sp)
    80003174:	00913423          	sd	s1,8(sp)
    80003178:	01213023          	sd	s2,0(sp)
    8000317c:	02010413          	addi	s0,sp,32
    80003180:	00050493          	mv	s1,a0
    80003184:	00058913          	mv	s2,a1
    RiscV::push_registers();
    80003188:	ffffe097          	auipc	ra,0xffffe
    8000318c:	f80080e7          	jalr	-128(ra) # 80001108 <_ZN5RiscV14push_registersEv>
    if (old_running != new_running) context_switch(&old_running -> context, &new_running -> context);
    80003190:	01248a63          	beq	s1,s2,800031a4 <_ZN3TCB5yieldEPS_S0_+0x3c>
    80003194:	00890593          	addi	a1,s2,8
    80003198:	00848513          	addi	a0,s1,8
    8000319c:	ffffe097          	auipc	ra,0xffffe
    800031a0:	06c080e7          	jalr	108(ra) # 80001208 <_ZN3TCB14context_switchEPNS_7ContextES1_>
    RiscV::pop_registers();
    800031a4:	ffffe097          	auipc	ra,0xffffe
    800031a8:	fe4080e7          	jalr	-28(ra) # 80001188 <_ZN5RiscV13pop_registersEv>
}
    800031ac:	01813083          	ld	ra,24(sp)
    800031b0:	01013403          	ld	s0,16(sp)
    800031b4:	00813483          	ld	s1,8(sp)
    800031b8:	00013903          	ld	s2,0(sp)
    800031bc:	02010113          	addi	sp,sp,32
    800031c0:	00008067          	ret

00000000800031c4 <_ZN3TCB8dispatchEv>:

void TCB::dispatch() {
    800031c4:	fe010113          	addi	sp,sp,-32
    800031c8:	00113c23          	sd	ra,24(sp)
    800031cc:	00813823          	sd	s0,16(sp)
    800031d0:	00913423          	sd	s1,8(sp)
    800031d4:	02010413          	addi	s0,sp,32
    TCB* old = running;
    800031d8:	00009497          	auipc	s1,0x9
    800031dc:	b884b483          	ld	s1,-1144(s1) # 8000bd60 <_ZN3TCB7runningE>
    if (old -> status == RUNNABLE) Scheduler::put(old);
    800031e0:	0184a783          	lw	a5,24(s1)
    800031e4:	04078663          	beqz	a5,80003230 <_ZN3TCB8dispatchEv+0x6c>
    else if (old -> status == FINISHED) MemoryAllocator::mem_free(old -> stack);
    800031e8:	00300713          	li	a4,3
    800031ec:	04e78a63          	beq	a5,a4,80003240 <_ZN3TCB8dispatchEv+0x7c>
    running = Scheduler::get();
    800031f0:	fffff097          	auipc	ra,0xfffff
    800031f4:	7b4080e7          	jalr	1972(ra) # 800029a4 <_ZN9Scheduler3getEv>
    800031f8:	00050593          	mv	a1,a0
    800031fc:	00009797          	auipc	a5,0x9
    80003200:	b5c78793          	addi	a5,a5,-1188 # 8000bd58 <_ZN3TCB3cntE>
    80003204:	00a7b423          	sd	a0,8(a5)
    time_slice_counter = 0;
    80003208:	0007b823          	sd	zero,16(a5)
    if (old != running) yield(old, running);
    8000320c:	00a48863          	beq	s1,a0,8000321c <_ZN3TCB8dispatchEv+0x58>
    80003210:	00048513          	mv	a0,s1
    80003214:	00000097          	auipc	ra,0x0
    80003218:	f54080e7          	jalr	-172(ra) # 80003168 <_ZN3TCB5yieldEPS_S0_>
}
    8000321c:	01813083          	ld	ra,24(sp)
    80003220:	01013403          	ld	s0,16(sp)
    80003224:	00813483          	ld	s1,8(sp)
    80003228:	02010113          	addi	sp,sp,32
    8000322c:	00008067          	ret
    if (old -> status == RUNNABLE) Scheduler::put(old);
    80003230:	00048513          	mv	a0,s1
    80003234:	fffff097          	auipc	ra,0xfffff
    80003238:	700080e7          	jalr	1792(ra) # 80002934 <_ZN9Scheduler3putEP3TCB>
    8000323c:	fb5ff06f          	j	800031f0 <_ZN3TCB8dispatchEv+0x2c>
    else if (old -> status == FINISHED) MemoryAllocator::mem_free(old -> stack);
    80003240:	0304b503          	ld	a0,48(s1)
    80003244:	fffff097          	auipc	ra,0xfffff
    80003248:	230080e7          	jalr	560(ra) # 80002474 <_ZN15MemoryAllocator8mem_freeEPv>
    8000324c:	fa5ff06f          	j	800031f0 <_ZN3TCB8dispatchEv+0x2c>

0000000080003250 <_ZNK3TCB14get_next_readyEv>:

TCB *TCB::get_next_ready() const {
    80003250:	ff010113          	addi	sp,sp,-16
    80003254:	00813423          	sd	s0,8(sp)
    80003258:	01010413          	addi	s0,sp,16
    return next_ready;
}
    8000325c:	04053503          	ld	a0,64(a0)
    80003260:	00813403          	ld	s0,8(sp)
    80003264:	01010113          	addi	sp,sp,16
    80003268:	00008067          	ret

000000008000326c <_ZN3TCB14set_next_readyEPS_>:

void TCB::set_next_ready(TCB *next) {
    8000326c:	ff010113          	addi	sp,sp,-16
    80003270:	00813423          	sd	s0,8(sp)
    80003274:	01010413          	addi	s0,sp,16
    next_ready = next;
    80003278:	04b53023          	sd	a1,64(a0)
}
    8000327c:	00813403          	ld	s0,8(sp)
    80003280:	01010113          	addi	sp,sp,16
    80003284:	00008067          	ret

0000000080003288 <_ZN3TCB17set_next_sleepingEPS_>:

void TCB::set_next_sleeping(TCB *next) {
    80003288:	ff010113          	addi	sp,sp,-16
    8000328c:	00813423          	sd	s0,8(sp)
    80003290:	01010413          	addi	s0,sp,16
    next_sleeping = next;
    80003294:	04b53823          	sd	a1,80(a0)
}
    80003298:	00813403          	ld	s0,8(sp)
    8000329c:	01010113          	addi	sp,sp,16
    800032a0:	00008067          	ret

00000000800032a4 <_ZNK3TCB17get_next_sleepingEv>:

TCB* TCB::get_next_sleeping() const {
    800032a4:	ff010113          	addi	sp,sp,-16
    800032a8:	00813423          	sd	s0,8(sp)
    800032ac:	01010413          	addi	s0,sp,16
    return next_sleeping;
}
    800032b0:	05053503          	ld	a0,80(a0)
    800032b4:	00813403          	ld	s0,8(sp)
    800032b8:	01010113          	addi	sp,sp,16
    800032bc:	00008067          	ret

00000000800032c0 <_ZN3TCB17set_time_to_sleepEm>:

void TCB::set_time_to_sleep(time_t time) {
    800032c0:	ff010113          	addi	sp,sp,-16
    800032c4:	00813423          	sd	s0,8(sp)
    800032c8:	01010413          	addi	s0,sp,16
    time_to_sleep = time;
    800032cc:	04b53423          	sd	a1,72(a0)
}
    800032d0:	00813403          	ld	s0,8(sp)
    800032d4:	01010113          	addi	sp,sp,16
    800032d8:	00008067          	ret

00000000800032dc <_ZNK3TCB17get_time_to_sleepEv>:

time_t TCB::get_time_to_sleep() const {
    800032dc:	ff010113          	addi	sp,sp,-16
    800032e0:	00813423          	sd	s0,8(sp)
    800032e4:	01010413          	addi	s0,sp,16
    return time_to_sleep;
}
    800032e8:	04853503          	ld	a0,72(a0)
    800032ec:	00813403          	ld	s0,8(sp)
    800032f0:	01010113          	addi	sp,sp,16
    800032f4:	00008067          	ret

00000000800032f8 <_ZN3TCB10set_statusENS_6StatusE>:

void TCB::set_status(TCB::Status stat) {
    800032f8:	ff010113          	addi	sp,sp,-16
    800032fc:	00813423          	sd	s0,8(sp)
    80003300:	01010413          	addi	s0,sp,16
    this -> status = stat;
    80003304:	00b52c23          	sw	a1,24(a0)
}
    80003308:	00813403          	ld	s0,8(sp)
    8000330c:	01010113          	addi	sp,sp,16
    80003310:	00008067          	ret

0000000080003314 <_ZN3TCB11thread_exitEv>:
void TCB::thread_exit() {
    80003314:	ff010113          	addi	sp,sp,-16
    80003318:	00113423          	sd	ra,8(sp)
    8000331c:	00813023          	sd	s0,0(sp)
    80003320:	01010413          	addi	s0,sp,16
    running -> set_status(Status::FINISHED);
    80003324:	00300593          	li	a1,3
    80003328:	00009517          	auipc	a0,0x9
    8000332c:	a3853503          	ld	a0,-1480(a0) # 8000bd60 <_ZN3TCB7runningE>
    80003330:	00000097          	auipc	ra,0x0
    80003334:	fc8080e7          	jalr	-56(ra) # 800032f8 <_ZN3TCB10set_statusENS_6StatusE>
    thread_dispatch();
    80003338:	ffffe097          	auipc	ra,0xffffe
    8000333c:	094080e7          	jalr	148(ra) # 800013cc <_Z15thread_dispatchv>
}
    80003340:	00813083          	ld	ra,8(sp)
    80003344:	00013403          	ld	s0,0(sp)
    80003348:	01010113          	addi	sp,sp,16
    8000334c:	00008067          	ret

0000000080003350 <_ZN3TCB16wrapper_functionEv>:
void TCB::wrapper_function() {
    80003350:	ff010113          	addi	sp,sp,-16
    80003354:	00113423          	sd	ra,8(sp)
    80003358:	00813023          	sd	s0,0(sp)
    8000335c:	01010413          	addi	s0,sp,16
    RiscV::popSppSpie();
    80003360:	00000097          	auipc	ra,0x0
    80003364:	8b8080e7          	jalr	-1864(ra) # 80002c18 <_ZN5RiscV10popSppSpieEv>
    if (running -> function_body) running -> function_body(running -> arg);
    80003368:	00009717          	auipc	a4,0x9
    8000336c:	9f873703          	ld	a4,-1544(a4) # 8000bd60 <_ZN3TCB7runningE>
    80003370:	02073783          	ld	a5,32(a4)
    80003374:	00078663          	beqz	a5,80003380 <_ZN3TCB16wrapper_functionEv+0x30>
    80003378:	02873503          	ld	a0,40(a4)
    8000337c:	000780e7          	jalr	a5
    thread_exit();
    80003380:	00000097          	auipc	ra,0x0
    80003384:	f94080e7          	jalr	-108(ra) # 80003314 <_ZN3TCB11thread_exitEv>
}
    80003388:	00813083          	ld	ra,8(sp)
    8000338c:	00013403          	ld	s0,0(sp)
    80003390:	01010113          	addi	sp,sp,16
    80003394:	00008067          	ret

0000000080003398 <_ZN3TCBnwEm>:

void *TCB::operator new(size_t size) {
    80003398:	ff010113          	addi	sp,sp,-16
    8000339c:	00113423          	sd	ra,8(sp)
    800033a0:	00813023          	sd	s0,0(sp)
    800033a4:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    800033a8:	fffff097          	auipc	ra,0xfffff
    800033ac:	31c080e7          	jalr	796(ra) # 800026c4 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    800033b0:	fffff097          	auipc	ra,0xfffff
    800033b4:	f50080e7          	jalr	-176(ra) # 80002300 <_ZN15MemoryAllocator9mem_allocEm>
}
    800033b8:	00813083          	ld	ra,8(sp)
    800033bc:	00013403          	ld	s0,0(sp)
    800033c0:	01010113          	addi	sp,sp,16
    800033c4:	00008067          	ret

00000000800033c8 <_ZN3TCBdlEPv>:

void TCB::operator delete(void *addr) {
    800033c8:	ff010113          	addi	sp,sp,-16
    800033cc:	00113423          	sd	ra,8(sp)
    800033d0:	00813023          	sd	s0,0(sp)
    800033d4:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    800033d8:	fffff097          	auipc	ra,0xfffff
    800033dc:	09c080e7          	jalr	156(ra) # 80002474 <_ZN15MemoryAllocator8mem_freeEPv>
}
    800033e0:	00813083          	ld	ra,8(sp)
    800033e4:	00013403          	ld	s0,0(sp)
    800033e8:	01010113          	addi	sp,sp,16
    800033ec:	00008067          	ret

00000000800033f0 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>:
int TCB::thread_create(thread_t *handle, void(*start_routine)(void *), void *arg, void *stack_begin_address) {
    800033f0:	fc010113          	addi	sp,sp,-64
    800033f4:	02113c23          	sd	ra,56(sp)
    800033f8:	02813823          	sd	s0,48(sp)
    800033fc:	02913423          	sd	s1,40(sp)
    80003400:	03213023          	sd	s2,32(sp)
    80003404:	01313c23          	sd	s3,24(sp)
    80003408:	01413823          	sd	s4,16(sp)
    8000340c:	01513423          	sd	s5,8(sp)
    80003410:	04010413          	addi	s0,sp,64
    80003414:	00050913          	mv	s2,a0
    80003418:	00058993          	mv	s3,a1
    8000341c:	00060a13          	mv	s4,a2
    80003420:	00068a93          	mv	s5,a3
    *handle = new TCB(start_routine, arg, stack_begin_address);
    80003424:	05800513          	li	a0,88
    80003428:	00000097          	auipc	ra,0x0
    8000342c:	f70080e7          	jalr	-144(ra) # 80003398 <_ZN3TCBnwEm>
    80003430:	00050493          	mv	s1,a0
    80003434:	000a8693          	mv	a3,s5
    80003438:	000a0613          	mv	a2,s4
    8000343c:	00098593          	mv	a1,s3
    80003440:	00000097          	auipc	ra,0x0
    80003444:	c94080e7          	jalr	-876(ra) # 800030d4 <_ZN3TCBC1EPFvPvES0_S0_>
    80003448:	0200006f          	j	80003468 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_+0x78>
    8000344c:	00050913          	mv	s2,a0
    80003450:	00048513          	mv	a0,s1
    80003454:	00000097          	auipc	ra,0x0
    80003458:	f74080e7          	jalr	-140(ra) # 800033c8 <_ZN3TCBdlEPv>
    8000345c:	00090513          	mv	a0,s2
    80003460:	0000a097          	auipc	ra,0xa
    80003464:	a28080e7          	jalr	-1496(ra) # 8000ce88 <_Unwind_Resume>
    80003468:	00993023          	sd	s1,0(s2)
}
    8000346c:	00000513          	li	a0,0
    80003470:	03813083          	ld	ra,56(sp)
    80003474:	03013403          	ld	s0,48(sp)
    80003478:	02813483          	ld	s1,40(sp)
    8000347c:	02013903          	ld	s2,32(sp)
    80003480:	01813983          	ld	s3,24(sp)
    80003484:	01013a03          	ld	s4,16(sp)
    80003488:	00813a83          	ld	s5,8(sp)
    8000348c:	04010113          	addi	sp,sp,64
    80003490:	00008067          	ret

0000000080003494 <_ZN3TCBnaEm>:

void *TCB::operator new[](size_t size) {
    80003494:	ff010113          	addi	sp,sp,-16
    80003498:	00113423          	sd	ra,8(sp)
    8000349c:	00813023          	sd	s0,0(sp)
    800034a0:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    800034a4:	fffff097          	auipc	ra,0xfffff
    800034a8:	220080e7          	jalr	544(ra) # 800026c4 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    800034ac:	fffff097          	auipc	ra,0xfffff
    800034b0:	e54080e7          	jalr	-428(ra) # 80002300 <_ZN15MemoryAllocator9mem_allocEm>
}
    800034b4:	00813083          	ld	ra,8(sp)
    800034b8:	00013403          	ld	s0,0(sp)
    800034bc:	01010113          	addi	sp,sp,16
    800034c0:	00008067          	ret

00000000800034c4 <_ZN3TCBdaEPv>:

void TCB::operator delete[](void *addr) {
    800034c4:	ff010113          	addi	sp,sp,-16
    800034c8:	00113423          	sd	ra,8(sp)
    800034cc:	00813023          	sd	s0,0(sp)
    800034d0:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    800034d4:	fffff097          	auipc	ra,0xfffff
    800034d8:	fa0080e7          	jalr	-96(ra) # 80002474 <_ZN15MemoryAllocator8mem_freeEPv>
}
    800034dc:	00813083          	ld	ra,8(sp)
    800034e0:	00013403          	ld	s0,0(sp)
    800034e4:	01010113          	addi	sp,sp,16
    800034e8:	00008067          	ret

00000000800034ec <_ZNK3TCB11is_finishedEv>:

bool TCB::is_finished() const {
    800034ec:	ff010113          	addi	sp,sp,-16
    800034f0:	00813423          	sd	s0,8(sp)
    800034f4:	01010413          	addi	s0,sp,16
    return status == FINISHED;
    800034f8:	01852503          	lw	a0,24(a0)
    800034fc:	ffd50513          	addi	a0,a0,-3
}
    80003500:	00153513          	seqz	a0,a0
    80003504:	00813403          	ld	s0,8(sp)
    80003508:	01010113          	addi	sp,sp,16
    8000350c:	00008067          	ret

0000000080003510 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80003510:	fe010113          	addi	sp,sp,-32
    80003514:	00113c23          	sd	ra,24(sp)
    80003518:	00813823          	sd	s0,16(sp)
    8000351c:	00913423          	sd	s1,8(sp)
    80003520:	01213023          	sd	s2,0(sp)
    80003524:	02010413          	addi	s0,sp,32
    80003528:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    8000352c:	00000913          	li	s2,0
    80003530:	00c0006f          	j	8000353c <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003534:	ffffe097          	auipc	ra,0xffffe
    80003538:	e98080e7          	jalr	-360(ra) # 800013cc <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    8000353c:	ffffe097          	auipc	ra,0xffffe
    80003540:	0e4080e7          	jalr	228(ra) # 80001620 <_Z4getcv>
    80003544:	0005059b          	sext.w	a1,a0
    80003548:	01b00793          	li	a5,27
    8000354c:	02f58a63          	beq	a1,a5,80003580 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80003550:	0084b503          	ld	a0,8(s1)
    80003554:	00001097          	auipc	ra,0x1
    80003558:	66c080e7          	jalr	1644(ra) # 80004bc0 <_ZN6Buffer3putEi>
        i++;
    8000355c:	0019071b          	addiw	a4,s2,1
    80003560:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003564:	0004a683          	lw	a3,0(s1)
    80003568:	0026979b          	slliw	a5,a3,0x2
    8000356c:	00d787bb          	addw	a5,a5,a3
    80003570:	0017979b          	slliw	a5,a5,0x1
    80003574:	02f767bb          	remw	a5,a4,a5
    80003578:	fc0792e3          	bnez	a5,8000353c <_ZL16producerKeyboardPv+0x2c>
    8000357c:	fb9ff06f          	j	80003534 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80003580:	00100793          	li	a5,1
    80003584:	00008717          	auipc	a4,0x8
    80003588:	7ef72623          	sw	a5,2028(a4) # 8000bd70 <_ZL9threadEnd>
    data->buffer->put('!');
    8000358c:	02100593          	li	a1,33
    80003590:	0084b503          	ld	a0,8(s1)
    80003594:	00001097          	auipc	ra,0x1
    80003598:	62c080e7          	jalr	1580(ra) # 80004bc0 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    8000359c:	0104b503          	ld	a0,16(s1)
    800035a0:	ffffe097          	auipc	ra,0xffffe
    800035a4:	f50080e7          	jalr	-176(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    800035a8:	01813083          	ld	ra,24(sp)
    800035ac:	01013403          	ld	s0,16(sp)
    800035b0:	00813483          	ld	s1,8(sp)
    800035b4:	00013903          	ld	s2,0(sp)
    800035b8:	02010113          	addi	sp,sp,32
    800035bc:	00008067          	ret

00000000800035c0 <_ZL8producerPv>:

static void producer(void *arg) {
    800035c0:	fe010113          	addi	sp,sp,-32
    800035c4:	00113c23          	sd	ra,24(sp)
    800035c8:	00813823          	sd	s0,16(sp)
    800035cc:	00913423          	sd	s1,8(sp)
    800035d0:	01213023          	sd	s2,0(sp)
    800035d4:	02010413          	addi	s0,sp,32
    800035d8:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800035dc:	00000913          	li	s2,0
    800035e0:	00c0006f          	j	800035ec <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800035e4:	ffffe097          	auipc	ra,0xffffe
    800035e8:	de8080e7          	jalr	-536(ra) # 800013cc <_Z15thread_dispatchv>
    while (!threadEnd) {
    800035ec:	00008797          	auipc	a5,0x8
    800035f0:	7847a783          	lw	a5,1924(a5) # 8000bd70 <_ZL9threadEnd>
    800035f4:	02079e63          	bnez	a5,80003630 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    800035f8:	0004a583          	lw	a1,0(s1)
    800035fc:	0305859b          	addiw	a1,a1,48
    80003600:	0084b503          	ld	a0,8(s1)
    80003604:	00001097          	auipc	ra,0x1
    80003608:	5bc080e7          	jalr	1468(ra) # 80004bc0 <_ZN6Buffer3putEi>
        i++;
    8000360c:	0019071b          	addiw	a4,s2,1
    80003610:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003614:	0004a683          	lw	a3,0(s1)
    80003618:	0026979b          	slliw	a5,a3,0x2
    8000361c:	00d787bb          	addw	a5,a5,a3
    80003620:	0017979b          	slliw	a5,a5,0x1
    80003624:	02f767bb          	remw	a5,a4,a5
    80003628:	fc0792e3          	bnez	a5,800035ec <_ZL8producerPv+0x2c>
    8000362c:	fb9ff06f          	j	800035e4 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80003630:	0104b503          	ld	a0,16(s1)
    80003634:	ffffe097          	auipc	ra,0xffffe
    80003638:	ebc080e7          	jalr	-324(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    8000363c:	01813083          	ld	ra,24(sp)
    80003640:	01013403          	ld	s0,16(sp)
    80003644:	00813483          	ld	s1,8(sp)
    80003648:	00013903          	ld	s2,0(sp)
    8000364c:	02010113          	addi	sp,sp,32
    80003650:	00008067          	ret

0000000080003654 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80003654:	fd010113          	addi	sp,sp,-48
    80003658:	02113423          	sd	ra,40(sp)
    8000365c:	02813023          	sd	s0,32(sp)
    80003660:	00913c23          	sd	s1,24(sp)
    80003664:	01213823          	sd	s2,16(sp)
    80003668:	01313423          	sd	s3,8(sp)
    8000366c:	03010413          	addi	s0,sp,48
    80003670:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003674:	00000993          	li	s3,0
    80003678:	01c0006f          	j	80003694 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    8000367c:	ffffe097          	auipc	ra,0xffffe
    80003680:	d50080e7          	jalr	-688(ra) # 800013cc <_Z15thread_dispatchv>
    80003684:	0500006f          	j	800036d4 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80003688:	00a00513          	li	a0,10
    8000368c:	ffffe097          	auipc	ra,0xffffe
    80003690:	fe0080e7          	jalr	-32(ra) # 8000166c <_Z4putcc>
    while (!threadEnd) {
    80003694:	00008797          	auipc	a5,0x8
    80003698:	6dc7a783          	lw	a5,1756(a5) # 8000bd70 <_ZL9threadEnd>
    8000369c:	06079063          	bnez	a5,800036fc <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    800036a0:	00893503          	ld	a0,8(s2)
    800036a4:	00001097          	auipc	ra,0x1
    800036a8:	5ac080e7          	jalr	1452(ra) # 80004c50 <_ZN6Buffer3getEv>
        i++;
    800036ac:	0019849b          	addiw	s1,s3,1
    800036b0:	0004899b          	sext.w	s3,s1
        putc(key);
    800036b4:	0ff57513          	andi	a0,a0,255
    800036b8:	ffffe097          	auipc	ra,0xffffe
    800036bc:	fb4080e7          	jalr	-76(ra) # 8000166c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800036c0:	00092703          	lw	a4,0(s2)
    800036c4:	0027179b          	slliw	a5,a4,0x2
    800036c8:	00e787bb          	addw	a5,a5,a4
    800036cc:	02f4e7bb          	remw	a5,s1,a5
    800036d0:	fa0786e3          	beqz	a5,8000367c <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    800036d4:	05000793          	li	a5,80
    800036d8:	02f4e4bb          	remw	s1,s1,a5
    800036dc:	fa049ce3          	bnez	s1,80003694 <_ZL8consumerPv+0x40>
    800036e0:	fa9ff06f          	j	80003688 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    800036e4:	00893503          	ld	a0,8(s2)
    800036e8:	00001097          	auipc	ra,0x1
    800036ec:	568080e7          	jalr	1384(ra) # 80004c50 <_ZN6Buffer3getEv>
        putc(key);
    800036f0:	0ff57513          	andi	a0,a0,255
    800036f4:	ffffe097          	auipc	ra,0xffffe
    800036f8:	f78080e7          	jalr	-136(ra) # 8000166c <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    800036fc:	00893503          	ld	a0,8(s2)
    80003700:	00001097          	auipc	ra,0x1
    80003704:	5dc080e7          	jalr	1500(ra) # 80004cdc <_ZN6Buffer6getCntEv>
    80003708:	fca04ee3          	bgtz	a0,800036e4 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    8000370c:	01093503          	ld	a0,16(s2)
    80003710:	ffffe097          	auipc	ra,0xffffe
    80003714:	de0080e7          	jalr	-544(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    80003718:	02813083          	ld	ra,40(sp)
    8000371c:	02013403          	ld	s0,32(sp)
    80003720:	01813483          	ld	s1,24(sp)
    80003724:	01013903          	ld	s2,16(sp)
    80003728:	00813983          	ld	s3,8(sp)
    8000372c:	03010113          	addi	sp,sp,48
    80003730:	00008067          	ret

0000000080003734 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80003734:	f9010113          	addi	sp,sp,-112
    80003738:	06113423          	sd	ra,104(sp)
    8000373c:	06813023          	sd	s0,96(sp)
    80003740:	04913c23          	sd	s1,88(sp)
    80003744:	05213823          	sd	s2,80(sp)
    80003748:	05313423          	sd	s3,72(sp)
    8000374c:	05413023          	sd	s4,64(sp)
    80003750:	03513c23          	sd	s5,56(sp)
    80003754:	03613823          	sd	s6,48(sp)
    80003758:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    8000375c:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003760:	00006517          	auipc	a0,0x6
    80003764:	9d050513          	addi	a0,a0,-1584 # 80009130 <CONSOLE_STATUS+0x120>
    80003768:	00002097          	auipc	ra,0x2
    8000376c:	540080e7          	jalr	1344(ra) # 80005ca8 <_Z11printStringPKc>
    getString(input, 30);
    80003770:	01e00593          	li	a1,30
    80003774:	fa040493          	addi	s1,s0,-96
    80003778:	00048513          	mv	a0,s1
    8000377c:	00002097          	auipc	ra,0x2
    80003780:	5b4080e7          	jalr	1460(ra) # 80005d30 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003784:	00048513          	mv	a0,s1
    80003788:	00002097          	auipc	ra,0x2
    8000378c:	680080e7          	jalr	1664(ra) # 80005e08 <_Z11stringToIntPKc>
    80003790:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003794:	00006517          	auipc	a0,0x6
    80003798:	9bc50513          	addi	a0,a0,-1604 # 80009150 <CONSOLE_STATUS+0x140>
    8000379c:	00002097          	auipc	ra,0x2
    800037a0:	50c080e7          	jalr	1292(ra) # 80005ca8 <_Z11printStringPKc>
    getString(input, 30);
    800037a4:	01e00593          	li	a1,30
    800037a8:	00048513          	mv	a0,s1
    800037ac:	00002097          	auipc	ra,0x2
    800037b0:	584080e7          	jalr	1412(ra) # 80005d30 <_Z9getStringPci>
    n = stringToInt(input);
    800037b4:	00048513          	mv	a0,s1
    800037b8:	00002097          	auipc	ra,0x2
    800037bc:	650080e7          	jalr	1616(ra) # 80005e08 <_Z11stringToIntPKc>
    800037c0:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800037c4:	00006517          	auipc	a0,0x6
    800037c8:	9ac50513          	addi	a0,a0,-1620 # 80009170 <CONSOLE_STATUS+0x160>
    800037cc:	00002097          	auipc	ra,0x2
    800037d0:	4dc080e7          	jalr	1244(ra) # 80005ca8 <_Z11printStringPKc>
    800037d4:	00000613          	li	a2,0
    800037d8:	00a00593          	li	a1,10
    800037dc:	00090513          	mv	a0,s2
    800037e0:	00002097          	auipc	ra,0x2
    800037e4:	678080e7          	jalr	1656(ra) # 80005e58 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800037e8:	00006517          	auipc	a0,0x6
    800037ec:	9a050513          	addi	a0,a0,-1632 # 80009188 <CONSOLE_STATUS+0x178>
    800037f0:	00002097          	auipc	ra,0x2
    800037f4:	4b8080e7          	jalr	1208(ra) # 80005ca8 <_Z11printStringPKc>
    800037f8:	00000613          	li	a2,0
    800037fc:	00a00593          	li	a1,10
    80003800:	00048513          	mv	a0,s1
    80003804:	00002097          	auipc	ra,0x2
    80003808:	654080e7          	jalr	1620(ra) # 80005e58 <_Z8printIntiii>
    printString(".\n");
    8000380c:	00006517          	auipc	a0,0x6
    80003810:	99450513          	addi	a0,a0,-1644 # 800091a0 <CONSOLE_STATUS+0x190>
    80003814:	00002097          	auipc	ra,0x2
    80003818:	494080e7          	jalr	1172(ra) # 80005ca8 <_Z11printStringPKc>
    if(threadNum > n) {
    8000381c:	0324c463          	blt	s1,s2,80003844 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003820:	03205c63          	blez	s2,80003858 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003824:	03800513          	li	a0,56
    80003828:	ffffe097          	auipc	ra,0xffffe
    8000382c:	660080e7          	jalr	1632(ra) # 80001e88 <_Znwm>
    80003830:	00050a13          	mv	s4,a0
    80003834:	00048593          	mv	a1,s1
    80003838:	00001097          	auipc	ra,0x1
    8000383c:	2ec080e7          	jalr	748(ra) # 80004b24 <_ZN6BufferC1Ei>
    80003840:	0300006f          	j	80003870 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003844:	00006517          	auipc	a0,0x6
    80003848:	96450513          	addi	a0,a0,-1692 # 800091a8 <CONSOLE_STATUS+0x198>
    8000384c:	00002097          	auipc	ra,0x2
    80003850:	45c080e7          	jalr	1116(ra) # 80005ca8 <_Z11printStringPKc>
        return;
    80003854:	0140006f          	j	80003868 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003858:	00006517          	auipc	a0,0x6
    8000385c:	99050513          	addi	a0,a0,-1648 # 800091e8 <CONSOLE_STATUS+0x1d8>
    80003860:	00002097          	auipc	ra,0x2
    80003864:	448080e7          	jalr	1096(ra) # 80005ca8 <_Z11printStringPKc>
        return;
    80003868:	000b0113          	mv	sp,s6
    8000386c:	1500006f          	j	800039bc <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003870:	00000593          	li	a1,0
    80003874:	00008517          	auipc	a0,0x8
    80003878:	50450513          	addi	a0,a0,1284 # 8000bd78 <_ZL10waitForAll>
    8000387c:	ffffe097          	auipc	ra,0xffffe
    80003880:	b8c080e7          	jalr	-1140(ra) # 80001408 <_Z8sem_openPP3Semj>
    thread_t threads[threadNum];
    80003884:	00391793          	slli	a5,s2,0x3
    80003888:	00f78793          	addi	a5,a5,15
    8000388c:	ff07f793          	andi	a5,a5,-16
    80003890:	40f10133          	sub	sp,sp,a5
    80003894:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003898:	0019071b          	addiw	a4,s2,1
    8000389c:	00171793          	slli	a5,a4,0x1
    800038a0:	00e787b3          	add	a5,a5,a4
    800038a4:	00379793          	slli	a5,a5,0x3
    800038a8:	00f78793          	addi	a5,a5,15
    800038ac:	ff07f793          	andi	a5,a5,-16
    800038b0:	40f10133          	sub	sp,sp,a5
    800038b4:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    800038b8:	00191613          	slli	a2,s2,0x1
    800038bc:	012607b3          	add	a5,a2,s2
    800038c0:	00379793          	slli	a5,a5,0x3
    800038c4:	00f987b3          	add	a5,s3,a5
    800038c8:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800038cc:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    800038d0:	00008717          	auipc	a4,0x8
    800038d4:	4a873703          	ld	a4,1192(a4) # 8000bd78 <_ZL10waitForAll>
    800038d8:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    800038dc:	00078613          	mv	a2,a5
    800038e0:	00000597          	auipc	a1,0x0
    800038e4:	d7458593          	addi	a1,a1,-652 # 80003654 <_ZL8consumerPv>
    800038e8:	f9840513          	addi	a0,s0,-104
    800038ec:	ffffe097          	auipc	ra,0xffffe
    800038f0:	a0c080e7          	jalr	-1524(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800038f4:	00000493          	li	s1,0
    800038f8:	0280006f          	j	80003920 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    800038fc:	00000597          	auipc	a1,0x0
    80003900:	c1458593          	addi	a1,a1,-1004 # 80003510 <_ZL16producerKeyboardPv>
                      data + i);
    80003904:	00179613          	slli	a2,a5,0x1
    80003908:	00f60633          	add	a2,a2,a5
    8000390c:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003910:	00c98633          	add	a2,s3,a2
    80003914:	ffffe097          	auipc	ra,0xffffe
    80003918:	9e4080e7          	jalr	-1564(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    8000391c:	0014849b          	addiw	s1,s1,1
    80003920:	0524d263          	bge	s1,s2,80003964 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003924:	00149793          	slli	a5,s1,0x1
    80003928:	009787b3          	add	a5,a5,s1
    8000392c:	00379793          	slli	a5,a5,0x3
    80003930:	00f987b3          	add	a5,s3,a5
    80003934:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003938:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    8000393c:	00008717          	auipc	a4,0x8
    80003940:	43c73703          	ld	a4,1084(a4) # 8000bd78 <_ZL10waitForAll>
    80003944:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003948:	00048793          	mv	a5,s1
    8000394c:	00349513          	slli	a0,s1,0x3
    80003950:	00aa8533          	add	a0,s5,a0
    80003954:	fa9054e3          	blez	s1,800038fc <_Z22producerConsumer_C_APIv+0x1c8>
    80003958:	00000597          	auipc	a1,0x0
    8000395c:	c6858593          	addi	a1,a1,-920 # 800035c0 <_ZL8producerPv>
    80003960:	fa5ff06f          	j	80003904 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003964:	ffffe097          	auipc	ra,0xffffe
    80003968:	a68080e7          	jalr	-1432(ra) # 800013cc <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    8000396c:	00000493          	li	s1,0
    80003970:	00994e63          	blt	s2,s1,8000398c <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003974:	00008517          	auipc	a0,0x8
    80003978:	40453503          	ld	a0,1028(a0) # 8000bd78 <_ZL10waitForAll>
    8000397c:	ffffe097          	auipc	ra,0xffffe
    80003980:	b28080e7          	jalr	-1240(ra) # 800014a4 <_Z8sem_waitP3Sem>
    for (int i = 0; i <= threadNum; i++) {
    80003984:	0014849b          	addiw	s1,s1,1
    80003988:	fe9ff06f          	j	80003970 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    8000398c:	00008517          	auipc	a0,0x8
    80003990:	3ec53503          	ld	a0,1004(a0) # 8000bd78 <_ZL10waitForAll>
    80003994:	ffffe097          	auipc	ra,0xffffe
    80003998:	ac4080e7          	jalr	-1340(ra) # 80001458 <_Z9sem_closeP3Sem>
    delete buffer;
    8000399c:	000a0e63          	beqz	s4,800039b8 <_Z22producerConsumer_C_APIv+0x284>
    800039a0:	000a0513          	mv	a0,s4
    800039a4:	00001097          	auipc	ra,0x1
    800039a8:	3c0080e7          	jalr	960(ra) # 80004d64 <_ZN6BufferD1Ev>
    800039ac:	000a0513          	mv	a0,s4
    800039b0:	ffffe097          	auipc	ra,0xffffe
    800039b4:	500080e7          	jalr	1280(ra) # 80001eb0 <_ZdlPv>
    800039b8:	000b0113          	mv	sp,s6

}
    800039bc:	f9040113          	addi	sp,s0,-112
    800039c0:	06813083          	ld	ra,104(sp)
    800039c4:	06013403          	ld	s0,96(sp)
    800039c8:	05813483          	ld	s1,88(sp)
    800039cc:	05013903          	ld	s2,80(sp)
    800039d0:	04813983          	ld	s3,72(sp)
    800039d4:	04013a03          	ld	s4,64(sp)
    800039d8:	03813a83          	ld	s5,56(sp)
    800039dc:	03013b03          	ld	s6,48(sp)
    800039e0:	07010113          	addi	sp,sp,112
    800039e4:	00008067          	ret
    800039e8:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    800039ec:	000a0513          	mv	a0,s4
    800039f0:	ffffe097          	auipc	ra,0xffffe
    800039f4:	4c0080e7          	jalr	1216(ra) # 80001eb0 <_ZdlPv>
    800039f8:	00048513          	mv	a0,s1
    800039fc:	00009097          	auipc	ra,0x9
    80003a00:	48c080e7          	jalr	1164(ra) # 8000ce88 <_Unwind_Resume>

0000000080003a04 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003a04:	fe010113          	addi	sp,sp,-32
    80003a08:	00113c23          	sd	ra,24(sp)
    80003a0c:	00813823          	sd	s0,16(sp)
    80003a10:	00913423          	sd	s1,8(sp)
    80003a14:	01213023          	sd	s2,0(sp)
    80003a18:	02010413          	addi	s0,sp,32
    80003a1c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003a20:	00100793          	li	a5,1
    80003a24:	02a7f863          	bgeu	a5,a0,80003a54 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003a28:	00a00793          	li	a5,10
    80003a2c:	02f577b3          	remu	a5,a0,a5
    80003a30:	02078e63          	beqz	a5,80003a6c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003a34:	fff48513          	addi	a0,s1,-1
    80003a38:	00000097          	auipc	ra,0x0
    80003a3c:	fcc080e7          	jalr	-52(ra) # 80003a04 <_ZL9fibonaccim>
    80003a40:	00050913          	mv	s2,a0
    80003a44:	ffe48513          	addi	a0,s1,-2
    80003a48:	00000097          	auipc	ra,0x0
    80003a4c:	fbc080e7          	jalr	-68(ra) # 80003a04 <_ZL9fibonaccim>
    80003a50:	00a90533          	add	a0,s2,a0
}
    80003a54:	01813083          	ld	ra,24(sp)
    80003a58:	01013403          	ld	s0,16(sp)
    80003a5c:	00813483          	ld	s1,8(sp)
    80003a60:	00013903          	ld	s2,0(sp)
    80003a64:	02010113          	addi	sp,sp,32
    80003a68:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003a6c:	ffffe097          	auipc	ra,0xffffe
    80003a70:	960080e7          	jalr	-1696(ra) # 800013cc <_Z15thread_dispatchv>
    80003a74:	fc1ff06f          	j	80003a34 <_ZL9fibonaccim+0x30>

0000000080003a78 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003a78:	fe010113          	addi	sp,sp,-32
    80003a7c:	00113c23          	sd	ra,24(sp)
    80003a80:	00813823          	sd	s0,16(sp)
    80003a84:	00913423          	sd	s1,8(sp)
    80003a88:	01213023          	sd	s2,0(sp)
    80003a8c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003a90:	00000913          	li	s2,0
    80003a94:	0380006f          	j	80003acc <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003a98:	ffffe097          	auipc	ra,0xffffe
    80003a9c:	934080e7          	jalr	-1740(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003aa0:	00148493          	addi	s1,s1,1
    80003aa4:	000027b7          	lui	a5,0x2
    80003aa8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003aac:	0097ee63          	bltu	a5,s1,80003ac8 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003ab0:	00000713          	li	a4,0
    80003ab4:	000077b7          	lui	a5,0x7
    80003ab8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003abc:	fce7eee3          	bltu	a5,a4,80003a98 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003ac0:	00170713          	addi	a4,a4,1
    80003ac4:	ff1ff06f          	j	80003ab4 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003ac8:	00190913          	addi	s2,s2,1
    80003acc:	00900793          	li	a5,9
    80003ad0:	0527e063          	bltu	a5,s2,80003b10 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003ad4:	00005517          	auipc	a0,0x5
    80003ad8:	74450513          	addi	a0,a0,1860 # 80009218 <CONSOLE_STATUS+0x208>
    80003adc:	00002097          	auipc	ra,0x2
    80003ae0:	1cc080e7          	jalr	460(ra) # 80005ca8 <_Z11printStringPKc>
    80003ae4:	00000613          	li	a2,0
    80003ae8:	00a00593          	li	a1,10
    80003aec:	0009051b          	sext.w	a0,s2
    80003af0:	00002097          	auipc	ra,0x2
    80003af4:	368080e7          	jalr	872(ra) # 80005e58 <_Z8printIntiii>
    80003af8:	00006517          	auipc	a0,0x6
    80003afc:	98050513          	addi	a0,a0,-1664 # 80009478 <CONSOLE_STATUS+0x468>
    80003b00:	00002097          	auipc	ra,0x2
    80003b04:	1a8080e7          	jalr	424(ra) # 80005ca8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003b08:	00000493          	li	s1,0
    80003b0c:	f99ff06f          	j	80003aa4 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003b10:	00005517          	auipc	a0,0x5
    80003b14:	71050513          	addi	a0,a0,1808 # 80009220 <CONSOLE_STATUS+0x210>
    80003b18:	00002097          	auipc	ra,0x2
    80003b1c:	190080e7          	jalr	400(ra) # 80005ca8 <_Z11printStringPKc>
    finishedA = true;
    80003b20:	00100793          	li	a5,1
    80003b24:	00008717          	auipc	a4,0x8
    80003b28:	24f70e23          	sb	a5,604(a4) # 8000bd80 <_ZL9finishedA>
}
    80003b2c:	01813083          	ld	ra,24(sp)
    80003b30:	01013403          	ld	s0,16(sp)
    80003b34:	00813483          	ld	s1,8(sp)
    80003b38:	00013903          	ld	s2,0(sp)
    80003b3c:	02010113          	addi	sp,sp,32
    80003b40:	00008067          	ret

0000000080003b44 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003b44:	fe010113          	addi	sp,sp,-32
    80003b48:	00113c23          	sd	ra,24(sp)
    80003b4c:	00813823          	sd	s0,16(sp)
    80003b50:	00913423          	sd	s1,8(sp)
    80003b54:	01213023          	sd	s2,0(sp)
    80003b58:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003b5c:	00000913          	li	s2,0
    80003b60:	0380006f          	j	80003b98 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003b64:	ffffe097          	auipc	ra,0xffffe
    80003b68:	868080e7          	jalr	-1944(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003b6c:	00148493          	addi	s1,s1,1
    80003b70:	000027b7          	lui	a5,0x2
    80003b74:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003b78:	0097ee63          	bltu	a5,s1,80003b94 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003b7c:	00000713          	li	a4,0
    80003b80:	000077b7          	lui	a5,0x7
    80003b84:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003b88:	fce7eee3          	bltu	a5,a4,80003b64 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003b8c:	00170713          	addi	a4,a4,1
    80003b90:	ff1ff06f          	j	80003b80 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003b94:	00190913          	addi	s2,s2,1
    80003b98:	00f00793          	li	a5,15
    80003b9c:	0527e063          	bltu	a5,s2,80003bdc <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003ba0:	00005517          	auipc	a0,0x5
    80003ba4:	69050513          	addi	a0,a0,1680 # 80009230 <CONSOLE_STATUS+0x220>
    80003ba8:	00002097          	auipc	ra,0x2
    80003bac:	100080e7          	jalr	256(ra) # 80005ca8 <_Z11printStringPKc>
    80003bb0:	00000613          	li	a2,0
    80003bb4:	00a00593          	li	a1,10
    80003bb8:	0009051b          	sext.w	a0,s2
    80003bbc:	00002097          	auipc	ra,0x2
    80003bc0:	29c080e7          	jalr	668(ra) # 80005e58 <_Z8printIntiii>
    80003bc4:	00006517          	auipc	a0,0x6
    80003bc8:	8b450513          	addi	a0,a0,-1868 # 80009478 <CONSOLE_STATUS+0x468>
    80003bcc:	00002097          	auipc	ra,0x2
    80003bd0:	0dc080e7          	jalr	220(ra) # 80005ca8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003bd4:	00000493          	li	s1,0
    80003bd8:	f99ff06f          	j	80003b70 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003bdc:	00005517          	auipc	a0,0x5
    80003be0:	65c50513          	addi	a0,a0,1628 # 80009238 <CONSOLE_STATUS+0x228>
    80003be4:	00002097          	auipc	ra,0x2
    80003be8:	0c4080e7          	jalr	196(ra) # 80005ca8 <_Z11printStringPKc>
    finishedB = true;
    80003bec:	00100793          	li	a5,1
    80003bf0:	00008717          	auipc	a4,0x8
    80003bf4:	18f708a3          	sb	a5,401(a4) # 8000bd81 <_ZL9finishedB>
    thread_dispatch();
    80003bf8:	ffffd097          	auipc	ra,0xffffd
    80003bfc:	7d4080e7          	jalr	2004(ra) # 800013cc <_Z15thread_dispatchv>
}
    80003c00:	01813083          	ld	ra,24(sp)
    80003c04:	01013403          	ld	s0,16(sp)
    80003c08:	00813483          	ld	s1,8(sp)
    80003c0c:	00013903          	ld	s2,0(sp)
    80003c10:	02010113          	addi	sp,sp,32
    80003c14:	00008067          	ret

0000000080003c18 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003c18:	fe010113          	addi	sp,sp,-32
    80003c1c:	00113c23          	sd	ra,24(sp)
    80003c20:	00813823          	sd	s0,16(sp)
    80003c24:	00913423          	sd	s1,8(sp)
    80003c28:	01213023          	sd	s2,0(sp)
    80003c2c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003c30:	00000493          	li	s1,0
    80003c34:	0400006f          	j	80003c74 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003c38:	00005517          	auipc	a0,0x5
    80003c3c:	61050513          	addi	a0,a0,1552 # 80009248 <CONSOLE_STATUS+0x238>
    80003c40:	00002097          	auipc	ra,0x2
    80003c44:	068080e7          	jalr	104(ra) # 80005ca8 <_Z11printStringPKc>
    80003c48:	00000613          	li	a2,0
    80003c4c:	00a00593          	li	a1,10
    80003c50:	00048513          	mv	a0,s1
    80003c54:	00002097          	auipc	ra,0x2
    80003c58:	204080e7          	jalr	516(ra) # 80005e58 <_Z8printIntiii>
    80003c5c:	00006517          	auipc	a0,0x6
    80003c60:	81c50513          	addi	a0,a0,-2020 # 80009478 <CONSOLE_STATUS+0x468>
    80003c64:	00002097          	auipc	ra,0x2
    80003c68:	044080e7          	jalr	68(ra) # 80005ca8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003c6c:	0014849b          	addiw	s1,s1,1
    80003c70:	0ff4f493          	andi	s1,s1,255
    80003c74:	00200793          	li	a5,2
    80003c78:	fc97f0e3          	bgeu	a5,s1,80003c38 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003c7c:	00005517          	auipc	a0,0x5
    80003c80:	5d450513          	addi	a0,a0,1492 # 80009250 <CONSOLE_STATUS+0x240>
    80003c84:	00002097          	auipc	ra,0x2
    80003c88:	024080e7          	jalr	36(ra) # 80005ca8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003c8c:	00700313          	li	t1,7
    thread_dispatch();
    80003c90:	ffffd097          	auipc	ra,0xffffd
    80003c94:	73c080e7          	jalr	1852(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003c98:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003c9c:	00005517          	auipc	a0,0x5
    80003ca0:	5c450513          	addi	a0,a0,1476 # 80009260 <CONSOLE_STATUS+0x250>
    80003ca4:	00002097          	auipc	ra,0x2
    80003ca8:	004080e7          	jalr	4(ra) # 80005ca8 <_Z11printStringPKc>
    80003cac:	00000613          	li	a2,0
    80003cb0:	00a00593          	li	a1,10
    80003cb4:	0009051b          	sext.w	a0,s2
    80003cb8:	00002097          	auipc	ra,0x2
    80003cbc:	1a0080e7          	jalr	416(ra) # 80005e58 <_Z8printIntiii>
    80003cc0:	00005517          	auipc	a0,0x5
    80003cc4:	7b850513          	addi	a0,a0,1976 # 80009478 <CONSOLE_STATUS+0x468>
    80003cc8:	00002097          	auipc	ra,0x2
    80003ccc:	fe0080e7          	jalr	-32(ra) # 80005ca8 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003cd0:	00c00513          	li	a0,12
    80003cd4:	00000097          	auipc	ra,0x0
    80003cd8:	d30080e7          	jalr	-720(ra) # 80003a04 <_ZL9fibonaccim>
    80003cdc:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003ce0:	00005517          	auipc	a0,0x5
    80003ce4:	58850513          	addi	a0,a0,1416 # 80009268 <CONSOLE_STATUS+0x258>
    80003ce8:	00002097          	auipc	ra,0x2
    80003cec:	fc0080e7          	jalr	-64(ra) # 80005ca8 <_Z11printStringPKc>
    80003cf0:	00000613          	li	a2,0
    80003cf4:	00a00593          	li	a1,10
    80003cf8:	0009051b          	sext.w	a0,s2
    80003cfc:	00002097          	auipc	ra,0x2
    80003d00:	15c080e7          	jalr	348(ra) # 80005e58 <_Z8printIntiii>
    80003d04:	00005517          	auipc	a0,0x5
    80003d08:	77450513          	addi	a0,a0,1908 # 80009478 <CONSOLE_STATUS+0x468>
    80003d0c:	00002097          	auipc	ra,0x2
    80003d10:	f9c080e7          	jalr	-100(ra) # 80005ca8 <_Z11printStringPKc>
    80003d14:	0400006f          	j	80003d54 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003d18:	00005517          	auipc	a0,0x5
    80003d1c:	53050513          	addi	a0,a0,1328 # 80009248 <CONSOLE_STATUS+0x238>
    80003d20:	00002097          	auipc	ra,0x2
    80003d24:	f88080e7          	jalr	-120(ra) # 80005ca8 <_Z11printStringPKc>
    80003d28:	00000613          	li	a2,0
    80003d2c:	00a00593          	li	a1,10
    80003d30:	00048513          	mv	a0,s1
    80003d34:	00002097          	auipc	ra,0x2
    80003d38:	124080e7          	jalr	292(ra) # 80005e58 <_Z8printIntiii>
    80003d3c:	00005517          	auipc	a0,0x5
    80003d40:	73c50513          	addi	a0,a0,1852 # 80009478 <CONSOLE_STATUS+0x468>
    80003d44:	00002097          	auipc	ra,0x2
    80003d48:	f64080e7          	jalr	-156(ra) # 80005ca8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003d4c:	0014849b          	addiw	s1,s1,1
    80003d50:	0ff4f493          	andi	s1,s1,255
    80003d54:	00500793          	li	a5,5
    80003d58:	fc97f0e3          	bgeu	a5,s1,80003d18 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80003d5c:	00005517          	auipc	a0,0x5
    80003d60:	4c450513          	addi	a0,a0,1220 # 80009220 <CONSOLE_STATUS+0x210>
    80003d64:	00002097          	auipc	ra,0x2
    80003d68:	f44080e7          	jalr	-188(ra) # 80005ca8 <_Z11printStringPKc>
    finishedC = true;
    80003d6c:	00100793          	li	a5,1
    80003d70:	00008717          	auipc	a4,0x8
    80003d74:	00f70923          	sb	a5,18(a4) # 8000bd82 <_ZL9finishedC>
    thread_dispatch();
    80003d78:	ffffd097          	auipc	ra,0xffffd
    80003d7c:	654080e7          	jalr	1620(ra) # 800013cc <_Z15thread_dispatchv>
}
    80003d80:	01813083          	ld	ra,24(sp)
    80003d84:	01013403          	ld	s0,16(sp)
    80003d88:	00813483          	ld	s1,8(sp)
    80003d8c:	00013903          	ld	s2,0(sp)
    80003d90:	02010113          	addi	sp,sp,32
    80003d94:	00008067          	ret

0000000080003d98 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003d98:	fe010113          	addi	sp,sp,-32
    80003d9c:	00113c23          	sd	ra,24(sp)
    80003da0:	00813823          	sd	s0,16(sp)
    80003da4:	00913423          	sd	s1,8(sp)
    80003da8:	01213023          	sd	s2,0(sp)
    80003dac:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003db0:	00a00493          	li	s1,10
    80003db4:	0400006f          	j	80003df4 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003db8:	00005517          	auipc	a0,0x5
    80003dbc:	4c050513          	addi	a0,a0,1216 # 80009278 <CONSOLE_STATUS+0x268>
    80003dc0:	00002097          	auipc	ra,0x2
    80003dc4:	ee8080e7          	jalr	-280(ra) # 80005ca8 <_Z11printStringPKc>
    80003dc8:	00000613          	li	a2,0
    80003dcc:	00a00593          	li	a1,10
    80003dd0:	00048513          	mv	a0,s1
    80003dd4:	00002097          	auipc	ra,0x2
    80003dd8:	084080e7          	jalr	132(ra) # 80005e58 <_Z8printIntiii>
    80003ddc:	00005517          	auipc	a0,0x5
    80003de0:	69c50513          	addi	a0,a0,1692 # 80009478 <CONSOLE_STATUS+0x468>
    80003de4:	00002097          	auipc	ra,0x2
    80003de8:	ec4080e7          	jalr	-316(ra) # 80005ca8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003dec:	0014849b          	addiw	s1,s1,1
    80003df0:	0ff4f493          	andi	s1,s1,255
    80003df4:	00c00793          	li	a5,12
    80003df8:	fc97f0e3          	bgeu	a5,s1,80003db8 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003dfc:	00005517          	auipc	a0,0x5
    80003e00:	48450513          	addi	a0,a0,1156 # 80009280 <CONSOLE_STATUS+0x270>
    80003e04:	00002097          	auipc	ra,0x2
    80003e08:	ea4080e7          	jalr	-348(ra) # 80005ca8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003e0c:	00500313          	li	t1,5
    thread_dispatch();
    80003e10:	ffffd097          	auipc	ra,0xffffd
    80003e14:	5bc080e7          	jalr	1468(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003e18:	01000513          	li	a0,16
    80003e1c:	00000097          	auipc	ra,0x0
    80003e20:	be8080e7          	jalr	-1048(ra) # 80003a04 <_ZL9fibonaccim>
    80003e24:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003e28:	00005517          	auipc	a0,0x5
    80003e2c:	46850513          	addi	a0,a0,1128 # 80009290 <CONSOLE_STATUS+0x280>
    80003e30:	00002097          	auipc	ra,0x2
    80003e34:	e78080e7          	jalr	-392(ra) # 80005ca8 <_Z11printStringPKc>
    80003e38:	00000613          	li	a2,0
    80003e3c:	00a00593          	li	a1,10
    80003e40:	0009051b          	sext.w	a0,s2
    80003e44:	00002097          	auipc	ra,0x2
    80003e48:	014080e7          	jalr	20(ra) # 80005e58 <_Z8printIntiii>
    80003e4c:	00005517          	auipc	a0,0x5
    80003e50:	62c50513          	addi	a0,a0,1580 # 80009478 <CONSOLE_STATUS+0x468>
    80003e54:	00002097          	auipc	ra,0x2
    80003e58:	e54080e7          	jalr	-428(ra) # 80005ca8 <_Z11printStringPKc>
    80003e5c:	0400006f          	j	80003e9c <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003e60:	00005517          	auipc	a0,0x5
    80003e64:	41850513          	addi	a0,a0,1048 # 80009278 <CONSOLE_STATUS+0x268>
    80003e68:	00002097          	auipc	ra,0x2
    80003e6c:	e40080e7          	jalr	-448(ra) # 80005ca8 <_Z11printStringPKc>
    80003e70:	00000613          	li	a2,0
    80003e74:	00a00593          	li	a1,10
    80003e78:	00048513          	mv	a0,s1
    80003e7c:	00002097          	auipc	ra,0x2
    80003e80:	fdc080e7          	jalr	-36(ra) # 80005e58 <_Z8printIntiii>
    80003e84:	00005517          	auipc	a0,0x5
    80003e88:	5f450513          	addi	a0,a0,1524 # 80009478 <CONSOLE_STATUS+0x468>
    80003e8c:	00002097          	auipc	ra,0x2
    80003e90:	e1c080e7          	jalr	-484(ra) # 80005ca8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003e94:	0014849b          	addiw	s1,s1,1
    80003e98:	0ff4f493          	andi	s1,s1,255
    80003e9c:	00f00793          	li	a5,15
    80003ea0:	fc97f0e3          	bgeu	a5,s1,80003e60 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003ea4:	00005517          	auipc	a0,0x5
    80003ea8:	3fc50513          	addi	a0,a0,1020 # 800092a0 <CONSOLE_STATUS+0x290>
    80003eac:	00002097          	auipc	ra,0x2
    80003eb0:	dfc080e7          	jalr	-516(ra) # 80005ca8 <_Z11printStringPKc>
    finishedD = true;
    80003eb4:	00100793          	li	a5,1
    80003eb8:	00008717          	auipc	a4,0x8
    80003ebc:	ecf705a3          	sb	a5,-309(a4) # 8000bd83 <_ZL9finishedD>
    thread_dispatch();
    80003ec0:	ffffd097          	auipc	ra,0xffffd
    80003ec4:	50c080e7          	jalr	1292(ra) # 800013cc <_Z15thread_dispatchv>
}
    80003ec8:	01813083          	ld	ra,24(sp)
    80003ecc:	01013403          	ld	s0,16(sp)
    80003ed0:	00813483          	ld	s1,8(sp)
    80003ed4:	00013903          	ld	s2,0(sp)
    80003ed8:	02010113          	addi	sp,sp,32
    80003edc:	00008067          	ret

0000000080003ee0 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003ee0:	fc010113          	addi	sp,sp,-64
    80003ee4:	02113c23          	sd	ra,56(sp)
    80003ee8:	02813823          	sd	s0,48(sp)
    80003eec:	02913423          	sd	s1,40(sp)
    80003ef0:	03213023          	sd	s2,32(sp)
    80003ef4:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003ef8:	02000513          	li	a0,32
    80003efc:	ffffe097          	auipc	ra,0xffffe
    80003f00:	f8c080e7          	jalr	-116(ra) # 80001e88 <_Znwm>
    80003f04:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003f08:	ffffe097          	auipc	ra,0xffffe
    80003f0c:	080080e7          	jalr	128(ra) # 80001f88 <_ZN6ThreadC1Ev>
    80003f10:	00008797          	auipc	a5,0x8
    80003f14:	bc078793          	addi	a5,a5,-1088 # 8000bad0 <_ZTV7WorkerA+0x10>
    80003f18:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003f1c:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003f20:	00005517          	auipc	a0,0x5
    80003f24:	39050513          	addi	a0,a0,912 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80003f28:	00002097          	auipc	ra,0x2
    80003f2c:	d80080e7          	jalr	-640(ra) # 80005ca8 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003f30:	02000513          	li	a0,32
    80003f34:	ffffe097          	auipc	ra,0xffffe
    80003f38:	f54080e7          	jalr	-172(ra) # 80001e88 <_Znwm>
    80003f3c:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003f40:	ffffe097          	auipc	ra,0xffffe
    80003f44:	048080e7          	jalr	72(ra) # 80001f88 <_ZN6ThreadC1Ev>
    80003f48:	00008797          	auipc	a5,0x8
    80003f4c:	bb078793          	addi	a5,a5,-1104 # 8000baf8 <_ZTV7WorkerB+0x10>
    80003f50:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003f54:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003f58:	00005517          	auipc	a0,0x5
    80003f5c:	37050513          	addi	a0,a0,880 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80003f60:	00002097          	auipc	ra,0x2
    80003f64:	d48080e7          	jalr	-696(ra) # 80005ca8 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003f68:	02000513          	li	a0,32
    80003f6c:	ffffe097          	auipc	ra,0xffffe
    80003f70:	f1c080e7          	jalr	-228(ra) # 80001e88 <_Znwm>
    80003f74:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003f78:	ffffe097          	auipc	ra,0xffffe
    80003f7c:	010080e7          	jalr	16(ra) # 80001f88 <_ZN6ThreadC1Ev>
    80003f80:	00008797          	auipc	a5,0x8
    80003f84:	ba078793          	addi	a5,a5,-1120 # 8000bb20 <_ZTV7WorkerC+0x10>
    80003f88:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003f8c:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003f90:	00005517          	auipc	a0,0x5
    80003f94:	35050513          	addi	a0,a0,848 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80003f98:	00002097          	auipc	ra,0x2
    80003f9c:	d10080e7          	jalr	-752(ra) # 80005ca8 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003fa0:	02000513          	li	a0,32
    80003fa4:	ffffe097          	auipc	ra,0xffffe
    80003fa8:	ee4080e7          	jalr	-284(ra) # 80001e88 <_Znwm>
    80003fac:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003fb0:	ffffe097          	auipc	ra,0xffffe
    80003fb4:	fd8080e7          	jalr	-40(ra) # 80001f88 <_ZN6ThreadC1Ev>
    80003fb8:	00008797          	auipc	a5,0x8
    80003fbc:	b9078793          	addi	a5,a5,-1136 # 8000bb48 <_ZTV7WorkerD+0x10>
    80003fc0:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003fc4:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003fc8:	00005517          	auipc	a0,0x5
    80003fcc:	33050513          	addi	a0,a0,816 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80003fd0:	00002097          	auipc	ra,0x2
    80003fd4:	cd8080e7          	jalr	-808(ra) # 80005ca8 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003fd8:	00000493          	li	s1,0
    80003fdc:	00300793          	li	a5,3
    80003fe0:	0297c663          	blt	a5,s1,8000400c <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003fe4:	00349793          	slli	a5,s1,0x3
    80003fe8:	fe040713          	addi	a4,s0,-32
    80003fec:	00f707b3          	add	a5,a4,a5
    80003ff0:	fe07b503          	ld	a0,-32(a5)
    80003ff4:	ffffe097          	auipc	ra,0xffffe
    80003ff8:	fc4080e7          	jalr	-60(ra) # 80001fb8 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003ffc:	0014849b          	addiw	s1,s1,1
    80004000:	fddff06f          	j	80003fdc <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80004004:	ffffe097          	auipc	ra,0xffffe
    80004008:	fec080e7          	jalr	-20(ra) # 80001ff0 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000400c:	00008797          	auipc	a5,0x8
    80004010:	d747c783          	lbu	a5,-652(a5) # 8000bd80 <_ZL9finishedA>
    80004014:	fe0788e3          	beqz	a5,80004004 <_Z20Threads_CPP_API_testv+0x124>
    80004018:	00008797          	auipc	a5,0x8
    8000401c:	d697c783          	lbu	a5,-663(a5) # 8000bd81 <_ZL9finishedB>
    80004020:	fe0782e3          	beqz	a5,80004004 <_Z20Threads_CPP_API_testv+0x124>
    80004024:	00008797          	auipc	a5,0x8
    80004028:	d5e7c783          	lbu	a5,-674(a5) # 8000bd82 <_ZL9finishedC>
    8000402c:	fc078ce3          	beqz	a5,80004004 <_Z20Threads_CPP_API_testv+0x124>
    80004030:	00008797          	auipc	a5,0x8
    80004034:	d537c783          	lbu	a5,-685(a5) # 8000bd83 <_ZL9finishedD>
    80004038:	fc0786e3          	beqz	a5,80004004 <_Z20Threads_CPP_API_testv+0x124>
    8000403c:	fc040493          	addi	s1,s0,-64
    80004040:	0080006f          	j	80004048 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80004044:	00848493          	addi	s1,s1,8
    80004048:	fe040793          	addi	a5,s0,-32
    8000404c:	08f48663          	beq	s1,a5,800040d8 <_Z20Threads_CPP_API_testv+0x1f8>
    80004050:	0004b503          	ld	a0,0(s1)
    80004054:	fe0508e3          	beqz	a0,80004044 <_Z20Threads_CPP_API_testv+0x164>
    80004058:	00053783          	ld	a5,0(a0)
    8000405c:	0087b783          	ld	a5,8(a5)
    80004060:	000780e7          	jalr	a5
    80004064:	fe1ff06f          	j	80004044 <_Z20Threads_CPP_API_testv+0x164>
    80004068:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    8000406c:	00048513          	mv	a0,s1
    80004070:	ffffe097          	auipc	ra,0xffffe
    80004074:	e40080e7          	jalr	-448(ra) # 80001eb0 <_ZdlPv>
    80004078:	00090513          	mv	a0,s2
    8000407c:	00009097          	auipc	ra,0x9
    80004080:	e0c080e7          	jalr	-500(ra) # 8000ce88 <_Unwind_Resume>
    80004084:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80004088:	00048513          	mv	a0,s1
    8000408c:	ffffe097          	auipc	ra,0xffffe
    80004090:	e24080e7          	jalr	-476(ra) # 80001eb0 <_ZdlPv>
    80004094:	00090513          	mv	a0,s2
    80004098:	00009097          	auipc	ra,0x9
    8000409c:	df0080e7          	jalr	-528(ra) # 8000ce88 <_Unwind_Resume>
    800040a0:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    800040a4:	00048513          	mv	a0,s1
    800040a8:	ffffe097          	auipc	ra,0xffffe
    800040ac:	e08080e7          	jalr	-504(ra) # 80001eb0 <_ZdlPv>
    800040b0:	00090513          	mv	a0,s2
    800040b4:	00009097          	auipc	ra,0x9
    800040b8:	dd4080e7          	jalr	-556(ra) # 8000ce88 <_Unwind_Resume>
    800040bc:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    800040c0:	00048513          	mv	a0,s1
    800040c4:	ffffe097          	auipc	ra,0xffffe
    800040c8:	dec080e7          	jalr	-532(ra) # 80001eb0 <_ZdlPv>
    800040cc:	00090513          	mv	a0,s2
    800040d0:	00009097          	auipc	ra,0x9
    800040d4:	db8080e7          	jalr	-584(ra) # 8000ce88 <_Unwind_Resume>
}
    800040d8:	03813083          	ld	ra,56(sp)
    800040dc:	03013403          	ld	s0,48(sp)
    800040e0:	02813483          	ld	s1,40(sp)
    800040e4:	02013903          	ld	s2,32(sp)
    800040e8:	04010113          	addi	sp,sp,64
    800040ec:	00008067          	ret

00000000800040f0 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    800040f0:	ff010113          	addi	sp,sp,-16
    800040f4:	00113423          	sd	ra,8(sp)
    800040f8:	00813023          	sd	s0,0(sp)
    800040fc:	01010413          	addi	s0,sp,16
    80004100:	00008797          	auipc	a5,0x8
    80004104:	9d078793          	addi	a5,a5,-1584 # 8000bad0 <_ZTV7WorkerA+0x10>
    80004108:	00f53023          	sd	a5,0(a0)
    8000410c:	ffffe097          	auipc	ra,0xffffe
    80004110:	ce4080e7          	jalr	-796(ra) # 80001df0 <_ZN6ThreadD1Ev>
    80004114:	00813083          	ld	ra,8(sp)
    80004118:	00013403          	ld	s0,0(sp)
    8000411c:	01010113          	addi	sp,sp,16
    80004120:	00008067          	ret

0000000080004124 <_ZN7WorkerAD0Ev>:
    80004124:	fe010113          	addi	sp,sp,-32
    80004128:	00113c23          	sd	ra,24(sp)
    8000412c:	00813823          	sd	s0,16(sp)
    80004130:	00913423          	sd	s1,8(sp)
    80004134:	02010413          	addi	s0,sp,32
    80004138:	00050493          	mv	s1,a0
    8000413c:	00008797          	auipc	a5,0x8
    80004140:	99478793          	addi	a5,a5,-1644 # 8000bad0 <_ZTV7WorkerA+0x10>
    80004144:	00f53023          	sd	a5,0(a0)
    80004148:	ffffe097          	auipc	ra,0xffffe
    8000414c:	ca8080e7          	jalr	-856(ra) # 80001df0 <_ZN6ThreadD1Ev>
    80004150:	00048513          	mv	a0,s1
    80004154:	ffffe097          	auipc	ra,0xffffe
    80004158:	d5c080e7          	jalr	-676(ra) # 80001eb0 <_ZdlPv>
    8000415c:	01813083          	ld	ra,24(sp)
    80004160:	01013403          	ld	s0,16(sp)
    80004164:	00813483          	ld	s1,8(sp)
    80004168:	02010113          	addi	sp,sp,32
    8000416c:	00008067          	ret

0000000080004170 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80004170:	ff010113          	addi	sp,sp,-16
    80004174:	00113423          	sd	ra,8(sp)
    80004178:	00813023          	sd	s0,0(sp)
    8000417c:	01010413          	addi	s0,sp,16
    80004180:	00008797          	auipc	a5,0x8
    80004184:	97878793          	addi	a5,a5,-1672 # 8000baf8 <_ZTV7WorkerB+0x10>
    80004188:	00f53023          	sd	a5,0(a0)
    8000418c:	ffffe097          	auipc	ra,0xffffe
    80004190:	c64080e7          	jalr	-924(ra) # 80001df0 <_ZN6ThreadD1Ev>
    80004194:	00813083          	ld	ra,8(sp)
    80004198:	00013403          	ld	s0,0(sp)
    8000419c:	01010113          	addi	sp,sp,16
    800041a0:	00008067          	ret

00000000800041a4 <_ZN7WorkerBD0Ev>:
    800041a4:	fe010113          	addi	sp,sp,-32
    800041a8:	00113c23          	sd	ra,24(sp)
    800041ac:	00813823          	sd	s0,16(sp)
    800041b0:	00913423          	sd	s1,8(sp)
    800041b4:	02010413          	addi	s0,sp,32
    800041b8:	00050493          	mv	s1,a0
    800041bc:	00008797          	auipc	a5,0x8
    800041c0:	93c78793          	addi	a5,a5,-1732 # 8000baf8 <_ZTV7WorkerB+0x10>
    800041c4:	00f53023          	sd	a5,0(a0)
    800041c8:	ffffe097          	auipc	ra,0xffffe
    800041cc:	c28080e7          	jalr	-984(ra) # 80001df0 <_ZN6ThreadD1Ev>
    800041d0:	00048513          	mv	a0,s1
    800041d4:	ffffe097          	auipc	ra,0xffffe
    800041d8:	cdc080e7          	jalr	-804(ra) # 80001eb0 <_ZdlPv>
    800041dc:	01813083          	ld	ra,24(sp)
    800041e0:	01013403          	ld	s0,16(sp)
    800041e4:	00813483          	ld	s1,8(sp)
    800041e8:	02010113          	addi	sp,sp,32
    800041ec:	00008067          	ret

00000000800041f0 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    800041f0:	ff010113          	addi	sp,sp,-16
    800041f4:	00113423          	sd	ra,8(sp)
    800041f8:	00813023          	sd	s0,0(sp)
    800041fc:	01010413          	addi	s0,sp,16
    80004200:	00008797          	auipc	a5,0x8
    80004204:	92078793          	addi	a5,a5,-1760 # 8000bb20 <_ZTV7WorkerC+0x10>
    80004208:	00f53023          	sd	a5,0(a0)
    8000420c:	ffffe097          	auipc	ra,0xffffe
    80004210:	be4080e7          	jalr	-1052(ra) # 80001df0 <_ZN6ThreadD1Ev>
    80004214:	00813083          	ld	ra,8(sp)
    80004218:	00013403          	ld	s0,0(sp)
    8000421c:	01010113          	addi	sp,sp,16
    80004220:	00008067          	ret

0000000080004224 <_ZN7WorkerCD0Ev>:
    80004224:	fe010113          	addi	sp,sp,-32
    80004228:	00113c23          	sd	ra,24(sp)
    8000422c:	00813823          	sd	s0,16(sp)
    80004230:	00913423          	sd	s1,8(sp)
    80004234:	02010413          	addi	s0,sp,32
    80004238:	00050493          	mv	s1,a0
    8000423c:	00008797          	auipc	a5,0x8
    80004240:	8e478793          	addi	a5,a5,-1820 # 8000bb20 <_ZTV7WorkerC+0x10>
    80004244:	00f53023          	sd	a5,0(a0)
    80004248:	ffffe097          	auipc	ra,0xffffe
    8000424c:	ba8080e7          	jalr	-1112(ra) # 80001df0 <_ZN6ThreadD1Ev>
    80004250:	00048513          	mv	a0,s1
    80004254:	ffffe097          	auipc	ra,0xffffe
    80004258:	c5c080e7          	jalr	-932(ra) # 80001eb0 <_ZdlPv>
    8000425c:	01813083          	ld	ra,24(sp)
    80004260:	01013403          	ld	s0,16(sp)
    80004264:	00813483          	ld	s1,8(sp)
    80004268:	02010113          	addi	sp,sp,32
    8000426c:	00008067          	ret

0000000080004270 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80004270:	ff010113          	addi	sp,sp,-16
    80004274:	00113423          	sd	ra,8(sp)
    80004278:	00813023          	sd	s0,0(sp)
    8000427c:	01010413          	addi	s0,sp,16
    80004280:	00008797          	auipc	a5,0x8
    80004284:	8c878793          	addi	a5,a5,-1848 # 8000bb48 <_ZTV7WorkerD+0x10>
    80004288:	00f53023          	sd	a5,0(a0)
    8000428c:	ffffe097          	auipc	ra,0xffffe
    80004290:	b64080e7          	jalr	-1180(ra) # 80001df0 <_ZN6ThreadD1Ev>
    80004294:	00813083          	ld	ra,8(sp)
    80004298:	00013403          	ld	s0,0(sp)
    8000429c:	01010113          	addi	sp,sp,16
    800042a0:	00008067          	ret

00000000800042a4 <_ZN7WorkerDD0Ev>:
    800042a4:	fe010113          	addi	sp,sp,-32
    800042a8:	00113c23          	sd	ra,24(sp)
    800042ac:	00813823          	sd	s0,16(sp)
    800042b0:	00913423          	sd	s1,8(sp)
    800042b4:	02010413          	addi	s0,sp,32
    800042b8:	00050493          	mv	s1,a0
    800042bc:	00008797          	auipc	a5,0x8
    800042c0:	88c78793          	addi	a5,a5,-1908 # 8000bb48 <_ZTV7WorkerD+0x10>
    800042c4:	00f53023          	sd	a5,0(a0)
    800042c8:	ffffe097          	auipc	ra,0xffffe
    800042cc:	b28080e7          	jalr	-1240(ra) # 80001df0 <_ZN6ThreadD1Ev>
    800042d0:	00048513          	mv	a0,s1
    800042d4:	ffffe097          	auipc	ra,0xffffe
    800042d8:	bdc080e7          	jalr	-1060(ra) # 80001eb0 <_ZdlPv>
    800042dc:	01813083          	ld	ra,24(sp)
    800042e0:	01013403          	ld	s0,16(sp)
    800042e4:	00813483          	ld	s1,8(sp)
    800042e8:	02010113          	addi	sp,sp,32
    800042ec:	00008067          	ret

00000000800042f0 <_ZN7WorkerA3runEv>:
    void run() override {
    800042f0:	ff010113          	addi	sp,sp,-16
    800042f4:	00113423          	sd	ra,8(sp)
    800042f8:	00813023          	sd	s0,0(sp)
    800042fc:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80004300:	00000593          	li	a1,0
    80004304:	fffff097          	auipc	ra,0xfffff
    80004308:	774080e7          	jalr	1908(ra) # 80003a78 <_ZN7WorkerA11workerBodyAEPv>
    }
    8000430c:	00813083          	ld	ra,8(sp)
    80004310:	00013403          	ld	s0,0(sp)
    80004314:	01010113          	addi	sp,sp,16
    80004318:	00008067          	ret

000000008000431c <_ZN7WorkerB3runEv>:
    void run() override {
    8000431c:	ff010113          	addi	sp,sp,-16
    80004320:	00113423          	sd	ra,8(sp)
    80004324:	00813023          	sd	s0,0(sp)
    80004328:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    8000432c:	00000593          	li	a1,0
    80004330:	00000097          	auipc	ra,0x0
    80004334:	814080e7          	jalr	-2028(ra) # 80003b44 <_ZN7WorkerB11workerBodyBEPv>
    }
    80004338:	00813083          	ld	ra,8(sp)
    8000433c:	00013403          	ld	s0,0(sp)
    80004340:	01010113          	addi	sp,sp,16
    80004344:	00008067          	ret

0000000080004348 <_ZN7WorkerC3runEv>:
    void run() override {
    80004348:	ff010113          	addi	sp,sp,-16
    8000434c:	00113423          	sd	ra,8(sp)
    80004350:	00813023          	sd	s0,0(sp)
    80004354:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80004358:	00000593          	li	a1,0
    8000435c:	00000097          	auipc	ra,0x0
    80004360:	8bc080e7          	jalr	-1860(ra) # 80003c18 <_ZN7WorkerC11workerBodyCEPv>
    }
    80004364:	00813083          	ld	ra,8(sp)
    80004368:	00013403          	ld	s0,0(sp)
    8000436c:	01010113          	addi	sp,sp,16
    80004370:	00008067          	ret

0000000080004374 <_ZN7WorkerD3runEv>:
    void run() override {
    80004374:	ff010113          	addi	sp,sp,-16
    80004378:	00113423          	sd	ra,8(sp)
    8000437c:	00813023          	sd	s0,0(sp)
    80004380:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80004384:	00000593          	li	a1,0
    80004388:	00000097          	auipc	ra,0x0
    8000438c:	a10080e7          	jalr	-1520(ra) # 80003d98 <_ZN7WorkerD11workerBodyDEPv>
    }
    80004390:	00813083          	ld	ra,8(sp)
    80004394:	00013403          	ld	s0,0(sp)
    80004398:	01010113          	addi	sp,sp,16
    8000439c:	00008067          	ret

00000000800043a0 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    800043a0:	f8010113          	addi	sp,sp,-128
    800043a4:	06113c23          	sd	ra,120(sp)
    800043a8:	06813823          	sd	s0,112(sp)
    800043ac:	06913423          	sd	s1,104(sp)
    800043b0:	07213023          	sd	s2,96(sp)
    800043b4:	05313c23          	sd	s3,88(sp)
    800043b8:	05413823          	sd	s4,80(sp)
    800043bc:	05513423          	sd	s5,72(sp)
    800043c0:	05613023          	sd	s6,64(sp)
    800043c4:	03713c23          	sd	s7,56(sp)
    800043c8:	03813823          	sd	s8,48(sp)
    800043cc:	03913423          	sd	s9,40(sp)
    800043d0:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    800043d4:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    800043d8:	00005517          	auipc	a0,0x5
    800043dc:	d5850513          	addi	a0,a0,-680 # 80009130 <CONSOLE_STATUS+0x120>
    800043e0:	00002097          	auipc	ra,0x2
    800043e4:	8c8080e7          	jalr	-1848(ra) # 80005ca8 <_Z11printStringPKc>
    getString(input, 30);
    800043e8:	01e00593          	li	a1,30
    800043ec:	f8040493          	addi	s1,s0,-128
    800043f0:	00048513          	mv	a0,s1
    800043f4:	00002097          	auipc	ra,0x2
    800043f8:	93c080e7          	jalr	-1732(ra) # 80005d30 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800043fc:	00048513          	mv	a0,s1
    80004400:	00002097          	auipc	ra,0x2
    80004404:	a08080e7          	jalr	-1528(ra) # 80005e08 <_Z11stringToIntPKc>
    80004408:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    8000440c:	00005517          	auipc	a0,0x5
    80004410:	d4450513          	addi	a0,a0,-700 # 80009150 <CONSOLE_STATUS+0x140>
    80004414:	00002097          	auipc	ra,0x2
    80004418:	894080e7          	jalr	-1900(ra) # 80005ca8 <_Z11printStringPKc>
    getString(input, 30);
    8000441c:	01e00593          	li	a1,30
    80004420:	00048513          	mv	a0,s1
    80004424:	00002097          	auipc	ra,0x2
    80004428:	90c080e7          	jalr	-1780(ra) # 80005d30 <_Z9getStringPci>
    n = stringToInt(input);
    8000442c:	00048513          	mv	a0,s1
    80004430:	00002097          	auipc	ra,0x2
    80004434:	9d8080e7          	jalr	-1576(ra) # 80005e08 <_Z11stringToIntPKc>
    80004438:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    8000443c:	00005517          	auipc	a0,0x5
    80004440:	d3450513          	addi	a0,a0,-716 # 80009170 <CONSOLE_STATUS+0x160>
    80004444:	00002097          	auipc	ra,0x2
    80004448:	864080e7          	jalr	-1948(ra) # 80005ca8 <_Z11printStringPKc>
    printInt(threadNum);
    8000444c:	00000613          	li	a2,0
    80004450:	00a00593          	li	a1,10
    80004454:	00098513          	mv	a0,s3
    80004458:	00002097          	auipc	ra,0x2
    8000445c:	a00080e7          	jalr	-1536(ra) # 80005e58 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80004460:	00005517          	auipc	a0,0x5
    80004464:	d2850513          	addi	a0,a0,-728 # 80009188 <CONSOLE_STATUS+0x178>
    80004468:	00002097          	auipc	ra,0x2
    8000446c:	840080e7          	jalr	-1984(ra) # 80005ca8 <_Z11printStringPKc>
    printInt(n);
    80004470:	00000613          	li	a2,0
    80004474:	00a00593          	li	a1,10
    80004478:	00048513          	mv	a0,s1
    8000447c:	00002097          	auipc	ra,0x2
    80004480:	9dc080e7          	jalr	-1572(ra) # 80005e58 <_Z8printIntiii>
    printString(".\n");
    80004484:	00005517          	auipc	a0,0x5
    80004488:	d1c50513          	addi	a0,a0,-740 # 800091a0 <CONSOLE_STATUS+0x190>
    8000448c:	00002097          	auipc	ra,0x2
    80004490:	81c080e7          	jalr	-2020(ra) # 80005ca8 <_Z11printStringPKc>
    if (threadNum > n) {
    80004494:	0334c463          	blt	s1,s3,800044bc <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80004498:	03305c63          	blez	s3,800044d0 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    8000449c:	03800513          	li	a0,56
    800044a0:	ffffe097          	auipc	ra,0xffffe
    800044a4:	9e8080e7          	jalr	-1560(ra) # 80001e88 <_Znwm>
    800044a8:	00050a93          	mv	s5,a0
    800044ac:	00048593          	mv	a1,s1
    800044b0:	00002097          	auipc	ra,0x2
    800044b4:	ac8080e7          	jalr	-1336(ra) # 80005f78 <_ZN9BufferCPPC1Ei>
    800044b8:	0300006f          	j	800044e8 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800044bc:	00005517          	auipc	a0,0x5
    800044c0:	cec50513          	addi	a0,a0,-788 # 800091a8 <CONSOLE_STATUS+0x198>
    800044c4:	00001097          	auipc	ra,0x1
    800044c8:	7e4080e7          	jalr	2020(ra) # 80005ca8 <_Z11printStringPKc>
        return;
    800044cc:	0140006f          	j	800044e0 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800044d0:	00005517          	auipc	a0,0x5
    800044d4:	d1850513          	addi	a0,a0,-744 # 800091e8 <CONSOLE_STATUS+0x1d8>
    800044d8:	00001097          	auipc	ra,0x1
    800044dc:	7d0080e7          	jalr	2000(ra) # 80005ca8 <_Z11printStringPKc>
        return;
    800044e0:	000c0113          	mv	sp,s8
    800044e4:	2140006f          	j	800046f8 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    800044e8:	01000513          	li	a0,16
    800044ec:	ffffe097          	auipc	ra,0xffffe
    800044f0:	99c080e7          	jalr	-1636(ra) # 80001e88 <_Znwm>
    800044f4:	00050913          	mv	s2,a0
    800044f8:	00000593          	li	a1,0
    800044fc:	ffffe097          	auipc	ra,0xffffe
    80004500:	b44080e7          	jalr	-1212(ra) # 80002040 <_ZN9SemaphoreC1Ej>
    80004504:	00008797          	auipc	a5,0x8
    80004508:	8927b623          	sd	s2,-1908(a5) # 8000bd90 <_ZL10waitForAll>
    Thread *producers[threadNum];
    8000450c:	00399793          	slli	a5,s3,0x3
    80004510:	00f78793          	addi	a5,a5,15
    80004514:	ff07f793          	andi	a5,a5,-16
    80004518:	40f10133          	sub	sp,sp,a5
    8000451c:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80004520:	0019871b          	addiw	a4,s3,1
    80004524:	00171793          	slli	a5,a4,0x1
    80004528:	00e787b3          	add	a5,a5,a4
    8000452c:	00379793          	slli	a5,a5,0x3
    80004530:	00f78793          	addi	a5,a5,15
    80004534:	ff07f793          	andi	a5,a5,-16
    80004538:	40f10133          	sub	sp,sp,a5
    8000453c:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80004540:	00199493          	slli	s1,s3,0x1
    80004544:	013484b3          	add	s1,s1,s3
    80004548:	00349493          	slli	s1,s1,0x3
    8000454c:	009b04b3          	add	s1,s6,s1
    80004550:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80004554:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80004558:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    8000455c:	02800513          	li	a0,40
    80004560:	ffffe097          	auipc	ra,0xffffe
    80004564:	928080e7          	jalr	-1752(ra) # 80001e88 <_Znwm>
    80004568:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    8000456c:	ffffe097          	auipc	ra,0xffffe
    80004570:	a1c080e7          	jalr	-1508(ra) # 80001f88 <_ZN6ThreadC1Ev>
    80004574:	00007797          	auipc	a5,0x7
    80004578:	64c78793          	addi	a5,a5,1612 # 8000bbc0 <_ZTV8Consumer+0x10>
    8000457c:	00fbb023          	sd	a5,0(s7)
    80004580:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80004584:	000b8513          	mv	a0,s7
    80004588:	ffffe097          	auipc	ra,0xffffe
    8000458c:	a30080e7          	jalr	-1488(ra) # 80001fb8 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80004590:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80004594:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80004598:	00007797          	auipc	a5,0x7
    8000459c:	7f87b783          	ld	a5,2040(a5) # 8000bd90 <_ZL10waitForAll>
    800045a0:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800045a4:	02800513          	li	a0,40
    800045a8:	ffffe097          	auipc	ra,0xffffe
    800045ac:	8e0080e7          	jalr	-1824(ra) # 80001e88 <_Znwm>
    800045b0:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    800045b4:	ffffe097          	auipc	ra,0xffffe
    800045b8:	9d4080e7          	jalr	-1580(ra) # 80001f88 <_ZN6ThreadC1Ev>
    800045bc:	00007797          	auipc	a5,0x7
    800045c0:	5b478793          	addi	a5,a5,1460 # 8000bb70 <_ZTV16ProducerKeyborad+0x10>
    800045c4:	00f4b023          	sd	a5,0(s1)
    800045c8:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800045cc:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    800045d0:	00048513          	mv	a0,s1
    800045d4:	ffffe097          	auipc	ra,0xffffe
    800045d8:	9e4080e7          	jalr	-1564(ra) # 80001fb8 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800045dc:	00100913          	li	s2,1
    800045e0:	0300006f          	j	80004610 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800045e4:	00007797          	auipc	a5,0x7
    800045e8:	5b478793          	addi	a5,a5,1460 # 8000bb98 <_ZTV8Producer+0x10>
    800045ec:	00fcb023          	sd	a5,0(s9)
    800045f0:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    800045f4:	00391793          	slli	a5,s2,0x3
    800045f8:	00fa07b3          	add	a5,s4,a5
    800045fc:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80004600:	000c8513          	mv	a0,s9
    80004604:	ffffe097          	auipc	ra,0xffffe
    80004608:	9b4080e7          	jalr	-1612(ra) # 80001fb8 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    8000460c:	0019091b          	addiw	s2,s2,1
    80004610:	05395263          	bge	s2,s3,80004654 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80004614:	00191493          	slli	s1,s2,0x1
    80004618:	012484b3          	add	s1,s1,s2
    8000461c:	00349493          	slli	s1,s1,0x3
    80004620:	009b04b3          	add	s1,s6,s1
    80004624:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80004628:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    8000462c:	00007797          	auipc	a5,0x7
    80004630:	7647b783          	ld	a5,1892(a5) # 8000bd90 <_ZL10waitForAll>
    80004634:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80004638:	02800513          	li	a0,40
    8000463c:	ffffe097          	auipc	ra,0xffffe
    80004640:	84c080e7          	jalr	-1972(ra) # 80001e88 <_Znwm>
    80004644:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004648:	ffffe097          	auipc	ra,0xffffe
    8000464c:	940080e7          	jalr	-1728(ra) # 80001f88 <_ZN6ThreadC1Ev>
    80004650:	f95ff06f          	j	800045e4 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80004654:	ffffe097          	auipc	ra,0xffffe
    80004658:	99c080e7          	jalr	-1636(ra) # 80001ff0 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    8000465c:	00000493          	li	s1,0
    80004660:	0099ce63          	blt	s3,s1,8000467c <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80004664:	00007517          	auipc	a0,0x7
    80004668:	72c53503          	ld	a0,1836(a0) # 8000bd90 <_ZL10waitForAll>
    8000466c:	ffffe097          	auipc	ra,0xffffe
    80004670:	a10080e7          	jalr	-1520(ra) # 8000207c <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004674:	0014849b          	addiw	s1,s1,1
    80004678:	fe9ff06f          	j	80004660 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    8000467c:	00007517          	auipc	a0,0x7
    80004680:	71453503          	ld	a0,1812(a0) # 8000bd90 <_ZL10waitForAll>
    80004684:	00050863          	beqz	a0,80004694 <_Z20testConsumerProducerv+0x2f4>
    80004688:	00053783          	ld	a5,0(a0)
    8000468c:	0087b783          	ld	a5,8(a5)
    80004690:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80004694:	00000493          	li	s1,0
    80004698:	0080006f          	j	800046a0 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    8000469c:	0014849b          	addiw	s1,s1,1
    800046a0:	0334d263          	bge	s1,s3,800046c4 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    800046a4:	00349793          	slli	a5,s1,0x3
    800046a8:	00fa07b3          	add	a5,s4,a5
    800046ac:	0007b503          	ld	a0,0(a5)
    800046b0:	fe0506e3          	beqz	a0,8000469c <_Z20testConsumerProducerv+0x2fc>
    800046b4:	00053783          	ld	a5,0(a0)
    800046b8:	0087b783          	ld	a5,8(a5)
    800046bc:	000780e7          	jalr	a5
    800046c0:	fddff06f          	j	8000469c <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    800046c4:	000b8a63          	beqz	s7,800046d8 <_Z20testConsumerProducerv+0x338>
    800046c8:	000bb783          	ld	a5,0(s7)
    800046cc:	0087b783          	ld	a5,8(a5)
    800046d0:	000b8513          	mv	a0,s7
    800046d4:	000780e7          	jalr	a5
    delete buffer;
    800046d8:	000a8e63          	beqz	s5,800046f4 <_Z20testConsumerProducerv+0x354>
    800046dc:	000a8513          	mv	a0,s5
    800046e0:	00002097          	auipc	ra,0x2
    800046e4:	b90080e7          	jalr	-1136(ra) # 80006270 <_ZN9BufferCPPD1Ev>
    800046e8:	000a8513          	mv	a0,s5
    800046ec:	ffffd097          	auipc	ra,0xffffd
    800046f0:	7c4080e7          	jalr	1988(ra) # 80001eb0 <_ZdlPv>
    800046f4:	000c0113          	mv	sp,s8
}
    800046f8:	f8040113          	addi	sp,s0,-128
    800046fc:	07813083          	ld	ra,120(sp)
    80004700:	07013403          	ld	s0,112(sp)
    80004704:	06813483          	ld	s1,104(sp)
    80004708:	06013903          	ld	s2,96(sp)
    8000470c:	05813983          	ld	s3,88(sp)
    80004710:	05013a03          	ld	s4,80(sp)
    80004714:	04813a83          	ld	s5,72(sp)
    80004718:	04013b03          	ld	s6,64(sp)
    8000471c:	03813b83          	ld	s7,56(sp)
    80004720:	03013c03          	ld	s8,48(sp)
    80004724:	02813c83          	ld	s9,40(sp)
    80004728:	08010113          	addi	sp,sp,128
    8000472c:	00008067          	ret
    80004730:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004734:	000a8513          	mv	a0,s5
    80004738:	ffffd097          	auipc	ra,0xffffd
    8000473c:	778080e7          	jalr	1912(ra) # 80001eb0 <_ZdlPv>
    80004740:	00048513          	mv	a0,s1
    80004744:	00008097          	auipc	ra,0x8
    80004748:	744080e7          	jalr	1860(ra) # 8000ce88 <_Unwind_Resume>
    8000474c:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80004750:	00090513          	mv	a0,s2
    80004754:	ffffd097          	auipc	ra,0xffffd
    80004758:	75c080e7          	jalr	1884(ra) # 80001eb0 <_ZdlPv>
    8000475c:	00048513          	mv	a0,s1
    80004760:	00008097          	auipc	ra,0x8
    80004764:	728080e7          	jalr	1832(ra) # 8000ce88 <_Unwind_Resume>
    80004768:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    8000476c:	000b8513          	mv	a0,s7
    80004770:	ffffd097          	auipc	ra,0xffffd
    80004774:	740080e7          	jalr	1856(ra) # 80001eb0 <_ZdlPv>
    80004778:	00048513          	mv	a0,s1
    8000477c:	00008097          	auipc	ra,0x8
    80004780:	70c080e7          	jalr	1804(ra) # 8000ce88 <_Unwind_Resume>
    80004784:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004788:	00048513          	mv	a0,s1
    8000478c:	ffffd097          	auipc	ra,0xffffd
    80004790:	724080e7          	jalr	1828(ra) # 80001eb0 <_ZdlPv>
    80004794:	00090513          	mv	a0,s2
    80004798:	00008097          	auipc	ra,0x8
    8000479c:	6f0080e7          	jalr	1776(ra) # 8000ce88 <_Unwind_Resume>
    800047a0:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    800047a4:	000c8513          	mv	a0,s9
    800047a8:	ffffd097          	auipc	ra,0xffffd
    800047ac:	708080e7          	jalr	1800(ra) # 80001eb0 <_ZdlPv>
    800047b0:	00048513          	mv	a0,s1
    800047b4:	00008097          	auipc	ra,0x8
    800047b8:	6d4080e7          	jalr	1748(ra) # 8000ce88 <_Unwind_Resume>

00000000800047bc <_ZN8Consumer3runEv>:
    void run() override {
    800047bc:	fd010113          	addi	sp,sp,-48
    800047c0:	02113423          	sd	ra,40(sp)
    800047c4:	02813023          	sd	s0,32(sp)
    800047c8:	00913c23          	sd	s1,24(sp)
    800047cc:	01213823          	sd	s2,16(sp)
    800047d0:	01313423          	sd	s3,8(sp)
    800047d4:	03010413          	addi	s0,sp,48
    800047d8:	00050913          	mv	s2,a0
        int i = 0;
    800047dc:	00000993          	li	s3,0
    800047e0:	0100006f          	j	800047f0 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    800047e4:	00a00513          	li	a0,10
    800047e8:	ffffe097          	auipc	ra,0xffffe
    800047ec:	9ec080e7          	jalr	-1556(ra) # 800021d4 <_ZN7Console4putcEc>
        while (!threadEnd) {
    800047f0:	00007797          	auipc	a5,0x7
    800047f4:	5987a783          	lw	a5,1432(a5) # 8000bd88 <_ZL9threadEnd>
    800047f8:	04079a63          	bnez	a5,8000484c <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    800047fc:	02093783          	ld	a5,32(s2)
    80004800:	0087b503          	ld	a0,8(a5)
    80004804:	00002097          	auipc	ra,0x2
    80004808:	958080e7          	jalr	-1704(ra) # 8000615c <_ZN9BufferCPP3getEv>
            i++;
    8000480c:	0019849b          	addiw	s1,s3,1
    80004810:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80004814:	0ff57513          	andi	a0,a0,255
    80004818:	ffffe097          	auipc	ra,0xffffe
    8000481c:	9bc080e7          	jalr	-1604(ra) # 800021d4 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80004820:	05000793          	li	a5,80
    80004824:	02f4e4bb          	remw	s1,s1,a5
    80004828:	fc0494e3          	bnez	s1,800047f0 <_ZN8Consumer3runEv+0x34>
    8000482c:	fb9ff06f          	j	800047e4 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80004830:	02093783          	ld	a5,32(s2)
    80004834:	0087b503          	ld	a0,8(a5)
    80004838:	00002097          	auipc	ra,0x2
    8000483c:	924080e7          	jalr	-1756(ra) # 8000615c <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80004840:	0ff57513          	andi	a0,a0,255
    80004844:	ffffe097          	auipc	ra,0xffffe
    80004848:	990080e7          	jalr	-1648(ra) # 800021d4 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    8000484c:	02093783          	ld	a5,32(s2)
    80004850:	0087b503          	ld	a0,8(a5)
    80004854:	00002097          	auipc	ra,0x2
    80004858:	994080e7          	jalr	-1644(ra) # 800061e8 <_ZN9BufferCPP6getCntEv>
    8000485c:	fca04ae3          	bgtz	a0,80004830 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004860:	02093783          	ld	a5,32(s2)
    80004864:	0107b503          	ld	a0,16(a5)
    80004868:	ffffe097          	auipc	ra,0xffffe
    8000486c:	84c080e7          	jalr	-1972(ra) # 800020b4 <_ZN9Semaphore6signalEv>
    }
    80004870:	02813083          	ld	ra,40(sp)
    80004874:	02013403          	ld	s0,32(sp)
    80004878:	01813483          	ld	s1,24(sp)
    8000487c:	01013903          	ld	s2,16(sp)
    80004880:	00813983          	ld	s3,8(sp)
    80004884:	03010113          	addi	sp,sp,48
    80004888:	00008067          	ret

000000008000488c <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    8000488c:	ff010113          	addi	sp,sp,-16
    80004890:	00113423          	sd	ra,8(sp)
    80004894:	00813023          	sd	s0,0(sp)
    80004898:	01010413          	addi	s0,sp,16
    8000489c:	00007797          	auipc	a5,0x7
    800048a0:	32478793          	addi	a5,a5,804 # 8000bbc0 <_ZTV8Consumer+0x10>
    800048a4:	00f53023          	sd	a5,0(a0)
    800048a8:	ffffd097          	auipc	ra,0xffffd
    800048ac:	548080e7          	jalr	1352(ra) # 80001df0 <_ZN6ThreadD1Ev>
    800048b0:	00813083          	ld	ra,8(sp)
    800048b4:	00013403          	ld	s0,0(sp)
    800048b8:	01010113          	addi	sp,sp,16
    800048bc:	00008067          	ret

00000000800048c0 <_ZN8ConsumerD0Ev>:
    800048c0:	fe010113          	addi	sp,sp,-32
    800048c4:	00113c23          	sd	ra,24(sp)
    800048c8:	00813823          	sd	s0,16(sp)
    800048cc:	00913423          	sd	s1,8(sp)
    800048d0:	02010413          	addi	s0,sp,32
    800048d4:	00050493          	mv	s1,a0
    800048d8:	00007797          	auipc	a5,0x7
    800048dc:	2e878793          	addi	a5,a5,744 # 8000bbc0 <_ZTV8Consumer+0x10>
    800048e0:	00f53023          	sd	a5,0(a0)
    800048e4:	ffffd097          	auipc	ra,0xffffd
    800048e8:	50c080e7          	jalr	1292(ra) # 80001df0 <_ZN6ThreadD1Ev>
    800048ec:	00048513          	mv	a0,s1
    800048f0:	ffffd097          	auipc	ra,0xffffd
    800048f4:	5c0080e7          	jalr	1472(ra) # 80001eb0 <_ZdlPv>
    800048f8:	01813083          	ld	ra,24(sp)
    800048fc:	01013403          	ld	s0,16(sp)
    80004900:	00813483          	ld	s1,8(sp)
    80004904:	02010113          	addi	sp,sp,32
    80004908:	00008067          	ret

000000008000490c <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    8000490c:	ff010113          	addi	sp,sp,-16
    80004910:	00113423          	sd	ra,8(sp)
    80004914:	00813023          	sd	s0,0(sp)
    80004918:	01010413          	addi	s0,sp,16
    8000491c:	00007797          	auipc	a5,0x7
    80004920:	25478793          	addi	a5,a5,596 # 8000bb70 <_ZTV16ProducerKeyborad+0x10>
    80004924:	00f53023          	sd	a5,0(a0)
    80004928:	ffffd097          	auipc	ra,0xffffd
    8000492c:	4c8080e7          	jalr	1224(ra) # 80001df0 <_ZN6ThreadD1Ev>
    80004930:	00813083          	ld	ra,8(sp)
    80004934:	00013403          	ld	s0,0(sp)
    80004938:	01010113          	addi	sp,sp,16
    8000493c:	00008067          	ret

0000000080004940 <_ZN16ProducerKeyboradD0Ev>:
    80004940:	fe010113          	addi	sp,sp,-32
    80004944:	00113c23          	sd	ra,24(sp)
    80004948:	00813823          	sd	s0,16(sp)
    8000494c:	00913423          	sd	s1,8(sp)
    80004950:	02010413          	addi	s0,sp,32
    80004954:	00050493          	mv	s1,a0
    80004958:	00007797          	auipc	a5,0x7
    8000495c:	21878793          	addi	a5,a5,536 # 8000bb70 <_ZTV16ProducerKeyborad+0x10>
    80004960:	00f53023          	sd	a5,0(a0)
    80004964:	ffffd097          	auipc	ra,0xffffd
    80004968:	48c080e7          	jalr	1164(ra) # 80001df0 <_ZN6ThreadD1Ev>
    8000496c:	00048513          	mv	a0,s1
    80004970:	ffffd097          	auipc	ra,0xffffd
    80004974:	540080e7          	jalr	1344(ra) # 80001eb0 <_ZdlPv>
    80004978:	01813083          	ld	ra,24(sp)
    8000497c:	01013403          	ld	s0,16(sp)
    80004980:	00813483          	ld	s1,8(sp)
    80004984:	02010113          	addi	sp,sp,32
    80004988:	00008067          	ret

000000008000498c <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    8000498c:	ff010113          	addi	sp,sp,-16
    80004990:	00113423          	sd	ra,8(sp)
    80004994:	00813023          	sd	s0,0(sp)
    80004998:	01010413          	addi	s0,sp,16
    8000499c:	00007797          	auipc	a5,0x7
    800049a0:	1fc78793          	addi	a5,a5,508 # 8000bb98 <_ZTV8Producer+0x10>
    800049a4:	00f53023          	sd	a5,0(a0)
    800049a8:	ffffd097          	auipc	ra,0xffffd
    800049ac:	448080e7          	jalr	1096(ra) # 80001df0 <_ZN6ThreadD1Ev>
    800049b0:	00813083          	ld	ra,8(sp)
    800049b4:	00013403          	ld	s0,0(sp)
    800049b8:	01010113          	addi	sp,sp,16
    800049bc:	00008067          	ret

00000000800049c0 <_ZN8ProducerD0Ev>:
    800049c0:	fe010113          	addi	sp,sp,-32
    800049c4:	00113c23          	sd	ra,24(sp)
    800049c8:	00813823          	sd	s0,16(sp)
    800049cc:	00913423          	sd	s1,8(sp)
    800049d0:	02010413          	addi	s0,sp,32
    800049d4:	00050493          	mv	s1,a0
    800049d8:	00007797          	auipc	a5,0x7
    800049dc:	1c078793          	addi	a5,a5,448 # 8000bb98 <_ZTV8Producer+0x10>
    800049e0:	00f53023          	sd	a5,0(a0)
    800049e4:	ffffd097          	auipc	ra,0xffffd
    800049e8:	40c080e7          	jalr	1036(ra) # 80001df0 <_ZN6ThreadD1Ev>
    800049ec:	00048513          	mv	a0,s1
    800049f0:	ffffd097          	auipc	ra,0xffffd
    800049f4:	4c0080e7          	jalr	1216(ra) # 80001eb0 <_ZdlPv>
    800049f8:	01813083          	ld	ra,24(sp)
    800049fc:	01013403          	ld	s0,16(sp)
    80004a00:	00813483          	ld	s1,8(sp)
    80004a04:	02010113          	addi	sp,sp,32
    80004a08:	00008067          	ret

0000000080004a0c <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004a0c:	fe010113          	addi	sp,sp,-32
    80004a10:	00113c23          	sd	ra,24(sp)
    80004a14:	00813823          	sd	s0,16(sp)
    80004a18:	00913423          	sd	s1,8(sp)
    80004a1c:	02010413          	addi	s0,sp,32
    80004a20:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80004a24:	ffffd097          	auipc	ra,0xffffd
    80004a28:	bfc080e7          	jalr	-1028(ra) # 80001620 <_Z4getcv>
    80004a2c:	0005059b          	sext.w	a1,a0
    80004a30:	01b00793          	li	a5,27
    80004a34:	00f58c63          	beq	a1,a5,80004a4c <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80004a38:	0204b783          	ld	a5,32(s1)
    80004a3c:	0087b503          	ld	a0,8(a5)
    80004a40:	00001097          	auipc	ra,0x1
    80004a44:	68c080e7          	jalr	1676(ra) # 800060cc <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80004a48:	fddff06f          	j	80004a24 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004a4c:	00100793          	li	a5,1
    80004a50:	00007717          	auipc	a4,0x7
    80004a54:	32f72c23          	sw	a5,824(a4) # 8000bd88 <_ZL9threadEnd>
        td->buffer->put('!');
    80004a58:	0204b783          	ld	a5,32(s1)
    80004a5c:	02100593          	li	a1,33
    80004a60:	0087b503          	ld	a0,8(a5)
    80004a64:	00001097          	auipc	ra,0x1
    80004a68:	668080e7          	jalr	1640(ra) # 800060cc <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004a6c:	0204b783          	ld	a5,32(s1)
    80004a70:	0107b503          	ld	a0,16(a5)
    80004a74:	ffffd097          	auipc	ra,0xffffd
    80004a78:	640080e7          	jalr	1600(ra) # 800020b4 <_ZN9Semaphore6signalEv>
    }
    80004a7c:	01813083          	ld	ra,24(sp)
    80004a80:	01013403          	ld	s0,16(sp)
    80004a84:	00813483          	ld	s1,8(sp)
    80004a88:	02010113          	addi	sp,sp,32
    80004a8c:	00008067          	ret

0000000080004a90 <_ZN8Producer3runEv>:
    void run() override {
    80004a90:	fe010113          	addi	sp,sp,-32
    80004a94:	00113c23          	sd	ra,24(sp)
    80004a98:	00813823          	sd	s0,16(sp)
    80004a9c:	00913423          	sd	s1,8(sp)
    80004aa0:	01213023          	sd	s2,0(sp)
    80004aa4:	02010413          	addi	s0,sp,32
    80004aa8:	00050493          	mv	s1,a0
        int i = 0;
    80004aac:	00000913          	li	s2,0
        while (!threadEnd) {
    80004ab0:	00007797          	auipc	a5,0x7
    80004ab4:	2d87a783          	lw	a5,728(a5) # 8000bd88 <_ZL9threadEnd>
    80004ab8:	04079263          	bnez	a5,80004afc <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004abc:	0204b783          	ld	a5,32(s1)
    80004ac0:	0007a583          	lw	a1,0(a5)
    80004ac4:	0305859b          	addiw	a1,a1,48
    80004ac8:	0087b503          	ld	a0,8(a5)
    80004acc:	00001097          	auipc	ra,0x1
    80004ad0:	600080e7          	jalr	1536(ra) # 800060cc <_ZN9BufferCPP3putEi>
            i++;
    80004ad4:	0019071b          	addiw	a4,s2,1
    80004ad8:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004adc:	0204b783          	ld	a5,32(s1)
    80004ae0:	0007a783          	lw	a5,0(a5)
    80004ae4:	00e787bb          	addw	a5,a5,a4
    80004ae8:	00500513          	li	a0,5
    80004aec:	02a7e53b          	remw	a0,a5,a0
    80004af0:	ffffd097          	auipc	ra,0xffffd
    80004af4:	528080e7          	jalr	1320(ra) # 80002018 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004af8:	fb9ff06f          	j	80004ab0 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004afc:	0204b783          	ld	a5,32(s1)
    80004b00:	0107b503          	ld	a0,16(a5)
    80004b04:	ffffd097          	auipc	ra,0xffffd
    80004b08:	5b0080e7          	jalr	1456(ra) # 800020b4 <_ZN9Semaphore6signalEv>
    }
    80004b0c:	01813083          	ld	ra,24(sp)
    80004b10:	01013403          	ld	s0,16(sp)
    80004b14:	00813483          	ld	s1,8(sp)
    80004b18:	00013903          	ld	s2,0(sp)
    80004b1c:	02010113          	addi	sp,sp,32
    80004b20:	00008067          	ret

0000000080004b24 <_ZN6BufferC1Ei>:
#include "bounded_buffer.hpp"


Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004b24:	fe010113          	addi	sp,sp,-32
    80004b28:	00113c23          	sd	ra,24(sp)
    80004b2c:	00813823          	sd	s0,16(sp)
    80004b30:	00913423          	sd	s1,8(sp)
    80004b34:	01213023          	sd	s2,0(sp)
    80004b38:	02010413          	addi	s0,sp,32
    80004b3c:	00050493          	mv	s1,a0
    80004b40:	00058913          	mv	s2,a1
    80004b44:	0015879b          	addiw	a5,a1,1
    80004b48:	0007851b          	sext.w	a0,a5
    80004b4c:	00f4a023          	sw	a5,0(s1)
    80004b50:	0004a823          	sw	zero,16(s1)
    80004b54:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004b58:	00251513          	slli	a0,a0,0x2
    80004b5c:	ffffc097          	auipc	ra,0xffffc
    80004b60:	6fc080e7          	jalr	1788(ra) # 80001258 <_Z9mem_allocm>
    80004b64:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80004b68:	00000593          	li	a1,0
    80004b6c:	02048513          	addi	a0,s1,32
    80004b70:	ffffd097          	auipc	ra,0xffffd
    80004b74:	898080e7          	jalr	-1896(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&spaceAvailable, _cap);
    80004b78:	00090593          	mv	a1,s2
    80004b7c:	01848513          	addi	a0,s1,24
    80004b80:	ffffd097          	auipc	ra,0xffffd
    80004b84:	888080e7          	jalr	-1912(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&mutexHead, 1);
    80004b88:	00100593          	li	a1,1
    80004b8c:	02848513          	addi	a0,s1,40
    80004b90:	ffffd097          	auipc	ra,0xffffd
    80004b94:	878080e7          	jalr	-1928(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&mutexTail, 1);
    80004b98:	00100593          	li	a1,1
    80004b9c:	03048513          	addi	a0,s1,48
    80004ba0:	ffffd097          	auipc	ra,0xffffd
    80004ba4:	868080e7          	jalr	-1944(ra) # 80001408 <_Z8sem_openPP3Semj>
}
    80004ba8:	01813083          	ld	ra,24(sp)
    80004bac:	01013403          	ld	s0,16(sp)
    80004bb0:	00813483          	ld	s1,8(sp)
    80004bb4:	00013903          	ld	s2,0(sp)
    80004bb8:	02010113          	addi	sp,sp,32
    80004bbc:	00008067          	ret

0000000080004bc0 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80004bc0:	fe010113          	addi	sp,sp,-32
    80004bc4:	00113c23          	sd	ra,24(sp)
    80004bc8:	00813823          	sd	s0,16(sp)
    80004bcc:	00913423          	sd	s1,8(sp)
    80004bd0:	01213023          	sd	s2,0(sp)
    80004bd4:	02010413          	addi	s0,sp,32
    80004bd8:	00050493          	mv	s1,a0
    80004bdc:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80004be0:	01853503          	ld	a0,24(a0)
    80004be4:	ffffd097          	auipc	ra,0xffffd
    80004be8:	8c0080e7          	jalr	-1856(ra) # 800014a4 <_Z8sem_waitP3Sem>

    sem_wait(mutexTail);
    80004bec:	0304b503          	ld	a0,48(s1)
    80004bf0:	ffffd097          	auipc	ra,0xffffd
    80004bf4:	8b4080e7          	jalr	-1868(ra) # 800014a4 <_Z8sem_waitP3Sem>
    buffer[tail] = val;
    80004bf8:	0084b783          	ld	a5,8(s1)
    80004bfc:	0144a703          	lw	a4,20(s1)
    80004c00:	00271713          	slli	a4,a4,0x2
    80004c04:	00e787b3          	add	a5,a5,a4
    80004c08:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80004c0c:	0144a783          	lw	a5,20(s1)
    80004c10:	0017879b          	addiw	a5,a5,1
    80004c14:	0004a703          	lw	a4,0(s1)
    80004c18:	02e7e7bb          	remw	a5,a5,a4
    80004c1c:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80004c20:	0304b503          	ld	a0,48(s1)
    80004c24:	ffffd097          	auipc	ra,0xffffd
    80004c28:	8cc080e7          	jalr	-1844(ra) # 800014f0 <_Z10sem_signalP3Sem>

    sem_signal(itemAvailable);
    80004c2c:	0204b503          	ld	a0,32(s1)
    80004c30:	ffffd097          	auipc	ra,0xffffd
    80004c34:	8c0080e7          	jalr	-1856(ra) # 800014f0 <_Z10sem_signalP3Sem>

}
    80004c38:	01813083          	ld	ra,24(sp)
    80004c3c:	01013403          	ld	s0,16(sp)
    80004c40:	00813483          	ld	s1,8(sp)
    80004c44:	00013903          	ld	s2,0(sp)
    80004c48:	02010113          	addi	sp,sp,32
    80004c4c:	00008067          	ret

0000000080004c50 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80004c50:	fe010113          	addi	sp,sp,-32
    80004c54:	00113c23          	sd	ra,24(sp)
    80004c58:	00813823          	sd	s0,16(sp)
    80004c5c:	00913423          	sd	s1,8(sp)
    80004c60:	01213023          	sd	s2,0(sp)
    80004c64:	02010413          	addi	s0,sp,32
    80004c68:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80004c6c:	02053503          	ld	a0,32(a0)
    80004c70:	ffffd097          	auipc	ra,0xffffd
    80004c74:	834080e7          	jalr	-1996(ra) # 800014a4 <_Z8sem_waitP3Sem>

    sem_wait(mutexHead);
    80004c78:	0284b503          	ld	a0,40(s1)
    80004c7c:	ffffd097          	auipc	ra,0xffffd
    80004c80:	828080e7          	jalr	-2008(ra) # 800014a4 <_Z8sem_waitP3Sem>

    int ret = buffer[head];
    80004c84:	0084b703          	ld	a4,8(s1)
    80004c88:	0104a783          	lw	a5,16(s1)
    80004c8c:	00279693          	slli	a3,a5,0x2
    80004c90:	00d70733          	add	a4,a4,a3
    80004c94:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80004c98:	0017879b          	addiw	a5,a5,1
    80004c9c:	0004a703          	lw	a4,0(s1)
    80004ca0:	02e7e7bb          	remw	a5,a5,a4
    80004ca4:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80004ca8:	0284b503          	ld	a0,40(s1)
    80004cac:	ffffd097          	auipc	ra,0xffffd
    80004cb0:	844080e7          	jalr	-1980(ra) # 800014f0 <_Z10sem_signalP3Sem>

    sem_signal(spaceAvailable);
    80004cb4:	0184b503          	ld	a0,24(s1)
    80004cb8:	ffffd097          	auipc	ra,0xffffd
    80004cbc:	838080e7          	jalr	-1992(ra) # 800014f0 <_Z10sem_signalP3Sem>

    return ret;
}
    80004cc0:	00090513          	mv	a0,s2
    80004cc4:	01813083          	ld	ra,24(sp)
    80004cc8:	01013403          	ld	s0,16(sp)
    80004ccc:	00813483          	ld	s1,8(sp)
    80004cd0:	00013903          	ld	s2,0(sp)
    80004cd4:	02010113          	addi	sp,sp,32
    80004cd8:	00008067          	ret

0000000080004cdc <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80004cdc:	fe010113          	addi	sp,sp,-32
    80004ce0:	00113c23          	sd	ra,24(sp)
    80004ce4:	00813823          	sd	s0,16(sp)
    80004ce8:	00913423          	sd	s1,8(sp)
    80004cec:	01213023          	sd	s2,0(sp)
    80004cf0:	02010413          	addi	s0,sp,32
    80004cf4:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80004cf8:	02853503          	ld	a0,40(a0)
    80004cfc:	ffffc097          	auipc	ra,0xffffc
    80004d00:	7a8080e7          	jalr	1960(ra) # 800014a4 <_Z8sem_waitP3Sem>
    sem_wait(mutexTail);
    80004d04:	0304b503          	ld	a0,48(s1)
    80004d08:	ffffc097          	auipc	ra,0xffffc
    80004d0c:	79c080e7          	jalr	1948(ra) # 800014a4 <_Z8sem_waitP3Sem>

    if (tail >= head) {
    80004d10:	0144a783          	lw	a5,20(s1)
    80004d14:	0104a903          	lw	s2,16(s1)
    80004d18:	0327ce63          	blt	a5,s2,80004d54 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80004d1c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80004d20:	0304b503          	ld	a0,48(s1)
    80004d24:	ffffc097          	auipc	ra,0xffffc
    80004d28:	7cc080e7          	jalr	1996(ra) # 800014f0 <_Z10sem_signalP3Sem>
    sem_signal(mutexHead);
    80004d2c:	0284b503          	ld	a0,40(s1)
    80004d30:	ffffc097          	auipc	ra,0xffffc
    80004d34:	7c0080e7          	jalr	1984(ra) # 800014f0 <_Z10sem_signalP3Sem>

    return ret;
}
    80004d38:	00090513          	mv	a0,s2
    80004d3c:	01813083          	ld	ra,24(sp)
    80004d40:	01013403          	ld	s0,16(sp)
    80004d44:	00813483          	ld	s1,8(sp)
    80004d48:	00013903          	ld	s2,0(sp)
    80004d4c:	02010113          	addi	sp,sp,32
    80004d50:	00008067          	ret
        ret = cap - head + tail;
    80004d54:	0004a703          	lw	a4,0(s1)
    80004d58:	4127093b          	subw	s2,a4,s2
    80004d5c:	00f9093b          	addw	s2,s2,a5
    80004d60:	fc1ff06f          	j	80004d20 <_ZN6Buffer6getCntEv+0x44>

0000000080004d64 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80004d64:	fe010113          	addi	sp,sp,-32
    80004d68:	00113c23          	sd	ra,24(sp)
    80004d6c:	00813823          	sd	s0,16(sp)
    80004d70:	00913423          	sd	s1,8(sp)
    80004d74:	02010413          	addi	s0,sp,32
    80004d78:	00050493          	mv	s1,a0
    putc('\n');
    80004d7c:	00a00513          	li	a0,10
    80004d80:	ffffd097          	auipc	ra,0xffffd
    80004d84:	8ec080e7          	jalr	-1812(ra) # 8000166c <_Z4putcc>
    printString("Buffer deleted!\n");
    80004d88:	00004517          	auipc	a0,0x4
    80004d8c:	58850513          	addi	a0,a0,1416 # 80009310 <CONSOLE_STATUS+0x300>
    80004d90:	00001097          	auipc	ra,0x1
    80004d94:	f18080e7          	jalr	-232(ra) # 80005ca8 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80004d98:	00048513          	mv	a0,s1
    80004d9c:	00000097          	auipc	ra,0x0
    80004da0:	f40080e7          	jalr	-192(ra) # 80004cdc <_ZN6Buffer6getCntEv>
    80004da4:	02a05c63          	blez	a0,80004ddc <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80004da8:	0084b783          	ld	a5,8(s1)
    80004dac:	0104a703          	lw	a4,16(s1)
    80004db0:	00271713          	slli	a4,a4,0x2
    80004db4:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80004db8:	0007c503          	lbu	a0,0(a5)
    80004dbc:	ffffd097          	auipc	ra,0xffffd
    80004dc0:	8b0080e7          	jalr	-1872(ra) # 8000166c <_Z4putcc>
        head = (head + 1) % cap;
    80004dc4:	0104a783          	lw	a5,16(s1)
    80004dc8:	0017879b          	addiw	a5,a5,1
    80004dcc:	0004a703          	lw	a4,0(s1)
    80004dd0:	02e7e7bb          	remw	a5,a5,a4
    80004dd4:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80004dd8:	fc1ff06f          	j	80004d98 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80004ddc:	02100513          	li	a0,33
    80004de0:	ffffd097          	auipc	ra,0xffffd
    80004de4:	88c080e7          	jalr	-1908(ra) # 8000166c <_Z4putcc>
    putc('\n');
    80004de8:	00a00513          	li	a0,10
    80004dec:	ffffd097          	auipc	ra,0xffffd
    80004df0:	880080e7          	jalr	-1920(ra) # 8000166c <_Z4putcc>
    mem_free(buffer);
    80004df4:	0084b503          	ld	a0,8(s1)
    80004df8:	ffffc097          	auipc	ra,0xffffc
    80004dfc:	4b4080e7          	jalr	1204(ra) # 800012ac <_Z8mem_freePv>
    sem_close(itemAvailable);
    80004e00:	0204b503          	ld	a0,32(s1)
    80004e04:	ffffc097          	auipc	ra,0xffffc
    80004e08:	654080e7          	jalr	1620(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(spaceAvailable);
    80004e0c:	0184b503          	ld	a0,24(s1)
    80004e10:	ffffc097          	auipc	ra,0xffffc
    80004e14:	648080e7          	jalr	1608(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(mutexTail);
    80004e18:	0304b503          	ld	a0,48(s1)
    80004e1c:	ffffc097          	auipc	ra,0xffffc
    80004e20:	63c080e7          	jalr	1596(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(mutexHead);
    80004e24:	0284b503          	ld	a0,40(s1)
    80004e28:	ffffc097          	auipc	ra,0xffffc
    80004e2c:	630080e7          	jalr	1584(ra) # 80001458 <_Z9sem_closeP3Sem>
}
    80004e30:	01813083          	ld	ra,24(sp)
    80004e34:	01013403          	ld	s0,16(sp)
    80004e38:	00813483          	ld	s1,8(sp)
    80004e3c:	02010113          	addi	sp,sp,32
    80004e40:	00008067          	ret

0000000080004e44 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004e44:	fe010113          	addi	sp,sp,-32
    80004e48:	00113c23          	sd	ra,24(sp)
    80004e4c:	00813823          	sd	s0,16(sp)
    80004e50:	00913423          	sd	s1,8(sp)
    80004e54:	01213023          	sd	s2,0(sp)
    80004e58:	02010413          	addi	s0,sp,32
    80004e5c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004e60:	00100793          	li	a5,1
    80004e64:	02a7f863          	bgeu	a5,a0,80004e94 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004e68:	00a00793          	li	a5,10
    80004e6c:	02f577b3          	remu	a5,a0,a5
    80004e70:	02078e63          	beqz	a5,80004eac <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004e74:	fff48513          	addi	a0,s1,-1
    80004e78:	00000097          	auipc	ra,0x0
    80004e7c:	fcc080e7          	jalr	-52(ra) # 80004e44 <_ZL9fibonaccim>
    80004e80:	00050913          	mv	s2,a0
    80004e84:	ffe48513          	addi	a0,s1,-2
    80004e88:	00000097          	auipc	ra,0x0
    80004e8c:	fbc080e7          	jalr	-68(ra) # 80004e44 <_ZL9fibonaccim>
    80004e90:	00a90533          	add	a0,s2,a0
}
    80004e94:	01813083          	ld	ra,24(sp)
    80004e98:	01013403          	ld	s0,16(sp)
    80004e9c:	00813483          	ld	s1,8(sp)
    80004ea0:	00013903          	ld	s2,0(sp)
    80004ea4:	02010113          	addi	sp,sp,32
    80004ea8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004eac:	ffffc097          	auipc	ra,0xffffc
    80004eb0:	520080e7          	jalr	1312(ra) # 800013cc <_Z15thread_dispatchv>
    80004eb4:	fc1ff06f          	j	80004e74 <_ZL9fibonaccim+0x30>

0000000080004eb8 <_ZL11workerBodyDPv>:
    printString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004eb8:	fe010113          	addi	sp,sp,-32
    80004ebc:	00113c23          	sd	ra,24(sp)
    80004ec0:	00813823          	sd	s0,16(sp)
    80004ec4:	00913423          	sd	s1,8(sp)
    80004ec8:	01213023          	sd	s2,0(sp)
    80004ecc:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004ed0:	00a00493          	li	s1,10
    80004ed4:	0400006f          	j	80004f14 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004ed8:	00004517          	auipc	a0,0x4
    80004edc:	3a050513          	addi	a0,a0,928 # 80009278 <CONSOLE_STATUS+0x268>
    80004ee0:	00001097          	auipc	ra,0x1
    80004ee4:	dc8080e7          	jalr	-568(ra) # 80005ca8 <_Z11printStringPKc>
    80004ee8:	00000613          	li	a2,0
    80004eec:	00a00593          	li	a1,10
    80004ef0:	00048513          	mv	a0,s1
    80004ef4:	00001097          	auipc	ra,0x1
    80004ef8:	f64080e7          	jalr	-156(ra) # 80005e58 <_Z8printIntiii>
    80004efc:	00004517          	auipc	a0,0x4
    80004f00:	57c50513          	addi	a0,a0,1404 # 80009478 <CONSOLE_STATUS+0x468>
    80004f04:	00001097          	auipc	ra,0x1
    80004f08:	da4080e7          	jalr	-604(ra) # 80005ca8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004f0c:	0014849b          	addiw	s1,s1,1
    80004f10:	0ff4f493          	andi	s1,s1,255
    80004f14:	00c00793          	li	a5,12
    80004f18:	fc97f0e3          	bgeu	a5,s1,80004ed8 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004f1c:	00004517          	auipc	a0,0x4
    80004f20:	36450513          	addi	a0,a0,868 # 80009280 <CONSOLE_STATUS+0x270>
    80004f24:	00001097          	auipc	ra,0x1
    80004f28:	d84080e7          	jalr	-636(ra) # 80005ca8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004f2c:	00500313          	li	t1,5
    thread_dispatch();
    80004f30:	ffffc097          	auipc	ra,0xffffc
    80004f34:	49c080e7          	jalr	1180(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004f38:	01000513          	li	a0,16
    80004f3c:	00000097          	auipc	ra,0x0
    80004f40:	f08080e7          	jalr	-248(ra) # 80004e44 <_ZL9fibonaccim>
    80004f44:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004f48:	00004517          	auipc	a0,0x4
    80004f4c:	34850513          	addi	a0,a0,840 # 80009290 <CONSOLE_STATUS+0x280>
    80004f50:	00001097          	auipc	ra,0x1
    80004f54:	d58080e7          	jalr	-680(ra) # 80005ca8 <_Z11printStringPKc>
    80004f58:	00000613          	li	a2,0
    80004f5c:	00a00593          	li	a1,10
    80004f60:	0009051b          	sext.w	a0,s2
    80004f64:	00001097          	auipc	ra,0x1
    80004f68:	ef4080e7          	jalr	-268(ra) # 80005e58 <_Z8printIntiii>
    80004f6c:	00004517          	auipc	a0,0x4
    80004f70:	50c50513          	addi	a0,a0,1292 # 80009478 <CONSOLE_STATUS+0x468>
    80004f74:	00001097          	auipc	ra,0x1
    80004f78:	d34080e7          	jalr	-716(ra) # 80005ca8 <_Z11printStringPKc>
    80004f7c:	0400006f          	j	80004fbc <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004f80:	00004517          	auipc	a0,0x4
    80004f84:	2f850513          	addi	a0,a0,760 # 80009278 <CONSOLE_STATUS+0x268>
    80004f88:	00001097          	auipc	ra,0x1
    80004f8c:	d20080e7          	jalr	-736(ra) # 80005ca8 <_Z11printStringPKc>
    80004f90:	00000613          	li	a2,0
    80004f94:	00a00593          	li	a1,10
    80004f98:	00048513          	mv	a0,s1
    80004f9c:	00001097          	auipc	ra,0x1
    80004fa0:	ebc080e7          	jalr	-324(ra) # 80005e58 <_Z8printIntiii>
    80004fa4:	00004517          	auipc	a0,0x4
    80004fa8:	4d450513          	addi	a0,a0,1236 # 80009478 <CONSOLE_STATUS+0x468>
    80004fac:	00001097          	auipc	ra,0x1
    80004fb0:	cfc080e7          	jalr	-772(ra) # 80005ca8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004fb4:	0014849b          	addiw	s1,s1,1
    80004fb8:	0ff4f493          	andi	s1,s1,255
    80004fbc:	00f00793          	li	a5,15
    80004fc0:	fc97f0e3          	bgeu	a5,s1,80004f80 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004fc4:	00004517          	auipc	a0,0x4
    80004fc8:	2dc50513          	addi	a0,a0,732 # 800092a0 <CONSOLE_STATUS+0x290>
    80004fcc:	00001097          	auipc	ra,0x1
    80004fd0:	cdc080e7          	jalr	-804(ra) # 80005ca8 <_Z11printStringPKc>
    finishedD = true;
    80004fd4:	00100793          	li	a5,1
    80004fd8:	00007717          	auipc	a4,0x7
    80004fdc:	dcf70023          	sb	a5,-576(a4) # 8000bd98 <_ZL9finishedD>
    thread_dispatch();
    80004fe0:	ffffc097          	auipc	ra,0xffffc
    80004fe4:	3ec080e7          	jalr	1004(ra) # 800013cc <_Z15thread_dispatchv>
}
    80004fe8:	01813083          	ld	ra,24(sp)
    80004fec:	01013403          	ld	s0,16(sp)
    80004ff0:	00813483          	ld	s1,8(sp)
    80004ff4:	00013903          	ld	s2,0(sp)
    80004ff8:	02010113          	addi	sp,sp,32
    80004ffc:	00008067          	ret

0000000080005000 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005000:	fe010113          	addi	sp,sp,-32
    80005004:	00113c23          	sd	ra,24(sp)
    80005008:	00813823          	sd	s0,16(sp)
    8000500c:	00913423          	sd	s1,8(sp)
    80005010:	01213023          	sd	s2,0(sp)
    80005014:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005018:	00000493          	li	s1,0
    8000501c:	0400006f          	j	8000505c <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005020:	00004517          	auipc	a0,0x4
    80005024:	22850513          	addi	a0,a0,552 # 80009248 <CONSOLE_STATUS+0x238>
    80005028:	00001097          	auipc	ra,0x1
    8000502c:	c80080e7          	jalr	-896(ra) # 80005ca8 <_Z11printStringPKc>
    80005030:	00000613          	li	a2,0
    80005034:	00a00593          	li	a1,10
    80005038:	00048513          	mv	a0,s1
    8000503c:	00001097          	auipc	ra,0x1
    80005040:	e1c080e7          	jalr	-484(ra) # 80005e58 <_Z8printIntiii>
    80005044:	00004517          	auipc	a0,0x4
    80005048:	43450513          	addi	a0,a0,1076 # 80009478 <CONSOLE_STATUS+0x468>
    8000504c:	00001097          	auipc	ra,0x1
    80005050:	c5c080e7          	jalr	-932(ra) # 80005ca8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005054:	0014849b          	addiw	s1,s1,1
    80005058:	0ff4f493          	andi	s1,s1,255
    8000505c:	00200793          	li	a5,2
    80005060:	fc97f0e3          	bgeu	a5,s1,80005020 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005064:	00004517          	auipc	a0,0x4
    80005068:	1ec50513          	addi	a0,a0,492 # 80009250 <CONSOLE_STATUS+0x240>
    8000506c:	00001097          	auipc	ra,0x1
    80005070:	c3c080e7          	jalr	-964(ra) # 80005ca8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005074:	00700313          	li	t1,7
    thread_dispatch();
    80005078:	ffffc097          	auipc	ra,0xffffc
    8000507c:	354080e7          	jalr	852(ra) # 800013cc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005080:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005084:	00004517          	auipc	a0,0x4
    80005088:	1dc50513          	addi	a0,a0,476 # 80009260 <CONSOLE_STATUS+0x250>
    8000508c:	00001097          	auipc	ra,0x1
    80005090:	c1c080e7          	jalr	-996(ra) # 80005ca8 <_Z11printStringPKc>
    80005094:	00000613          	li	a2,0
    80005098:	00a00593          	li	a1,10
    8000509c:	0009051b          	sext.w	a0,s2
    800050a0:	00001097          	auipc	ra,0x1
    800050a4:	db8080e7          	jalr	-584(ra) # 80005e58 <_Z8printIntiii>
    800050a8:	00004517          	auipc	a0,0x4
    800050ac:	3d050513          	addi	a0,a0,976 # 80009478 <CONSOLE_STATUS+0x468>
    800050b0:	00001097          	auipc	ra,0x1
    800050b4:	bf8080e7          	jalr	-1032(ra) # 80005ca8 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800050b8:	00c00513          	li	a0,12
    800050bc:	00000097          	auipc	ra,0x0
    800050c0:	d88080e7          	jalr	-632(ra) # 80004e44 <_ZL9fibonaccim>
    800050c4:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800050c8:	00004517          	auipc	a0,0x4
    800050cc:	1a050513          	addi	a0,a0,416 # 80009268 <CONSOLE_STATUS+0x258>
    800050d0:	00001097          	auipc	ra,0x1
    800050d4:	bd8080e7          	jalr	-1064(ra) # 80005ca8 <_Z11printStringPKc>
    800050d8:	00000613          	li	a2,0
    800050dc:	00a00593          	li	a1,10
    800050e0:	0009051b          	sext.w	a0,s2
    800050e4:	00001097          	auipc	ra,0x1
    800050e8:	d74080e7          	jalr	-652(ra) # 80005e58 <_Z8printIntiii>
    800050ec:	00004517          	auipc	a0,0x4
    800050f0:	38c50513          	addi	a0,a0,908 # 80009478 <CONSOLE_STATUS+0x468>
    800050f4:	00001097          	auipc	ra,0x1
    800050f8:	bb4080e7          	jalr	-1100(ra) # 80005ca8 <_Z11printStringPKc>
    800050fc:	0400006f          	j	8000513c <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005100:	00004517          	auipc	a0,0x4
    80005104:	14850513          	addi	a0,a0,328 # 80009248 <CONSOLE_STATUS+0x238>
    80005108:	00001097          	auipc	ra,0x1
    8000510c:	ba0080e7          	jalr	-1120(ra) # 80005ca8 <_Z11printStringPKc>
    80005110:	00000613          	li	a2,0
    80005114:	00a00593          	li	a1,10
    80005118:	00048513          	mv	a0,s1
    8000511c:	00001097          	auipc	ra,0x1
    80005120:	d3c080e7          	jalr	-708(ra) # 80005e58 <_Z8printIntiii>
    80005124:	00004517          	auipc	a0,0x4
    80005128:	35450513          	addi	a0,a0,852 # 80009478 <CONSOLE_STATUS+0x468>
    8000512c:	00001097          	auipc	ra,0x1
    80005130:	b7c080e7          	jalr	-1156(ra) # 80005ca8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005134:	0014849b          	addiw	s1,s1,1
    80005138:	0ff4f493          	andi	s1,s1,255
    8000513c:	00500793          	li	a5,5
    80005140:	fc97f0e3          	bgeu	a5,s1,80005100 <_ZL11workerBodyCPv+0x100>
    printString("C finished!\n");
    80005144:	00004517          	auipc	a0,0x4
    80005148:	1e450513          	addi	a0,a0,484 # 80009328 <CONSOLE_STATUS+0x318>
    8000514c:	00001097          	auipc	ra,0x1
    80005150:	b5c080e7          	jalr	-1188(ra) # 80005ca8 <_Z11printStringPKc>
    finishedC = true;
    80005154:	00100793          	li	a5,1
    80005158:	00007717          	auipc	a4,0x7
    8000515c:	c4f700a3          	sb	a5,-959(a4) # 8000bd99 <_ZL9finishedC>
    thread_dispatch();
    80005160:	ffffc097          	auipc	ra,0xffffc
    80005164:	26c080e7          	jalr	620(ra) # 800013cc <_Z15thread_dispatchv>
}
    80005168:	01813083          	ld	ra,24(sp)
    8000516c:	01013403          	ld	s0,16(sp)
    80005170:	00813483          	ld	s1,8(sp)
    80005174:	00013903          	ld	s2,0(sp)
    80005178:	02010113          	addi	sp,sp,32
    8000517c:	00008067          	ret

0000000080005180 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005180:	fe010113          	addi	sp,sp,-32
    80005184:	00113c23          	sd	ra,24(sp)
    80005188:	00813823          	sd	s0,16(sp)
    8000518c:	00913423          	sd	s1,8(sp)
    80005190:	01213023          	sd	s2,0(sp)
    80005194:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005198:	00000913          	li	s2,0
    8000519c:	0380006f          	j	800051d4 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    800051a0:	ffffc097          	auipc	ra,0xffffc
    800051a4:	22c080e7          	jalr	556(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800051a8:	00148493          	addi	s1,s1,1
    800051ac:	000027b7          	lui	a5,0x2
    800051b0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800051b4:	0097ee63          	bltu	a5,s1,800051d0 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800051b8:	00000713          	li	a4,0
    800051bc:	000077b7          	lui	a5,0x7
    800051c0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800051c4:	fce7eee3          	bltu	a5,a4,800051a0 <_ZL11workerBodyBPv+0x20>
    800051c8:	00170713          	addi	a4,a4,1
    800051cc:	ff1ff06f          	j	800051bc <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800051d0:	00190913          	addi	s2,s2,1
    800051d4:	00f00793          	li	a5,15
    800051d8:	0527e063          	bltu	a5,s2,80005218 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800051dc:	00004517          	auipc	a0,0x4
    800051e0:	05450513          	addi	a0,a0,84 # 80009230 <CONSOLE_STATUS+0x220>
    800051e4:	00001097          	auipc	ra,0x1
    800051e8:	ac4080e7          	jalr	-1340(ra) # 80005ca8 <_Z11printStringPKc>
    800051ec:	00000613          	li	a2,0
    800051f0:	00a00593          	li	a1,10
    800051f4:	0009051b          	sext.w	a0,s2
    800051f8:	00001097          	auipc	ra,0x1
    800051fc:	c60080e7          	jalr	-928(ra) # 80005e58 <_Z8printIntiii>
    80005200:	00004517          	auipc	a0,0x4
    80005204:	27850513          	addi	a0,a0,632 # 80009478 <CONSOLE_STATUS+0x468>
    80005208:	00001097          	auipc	ra,0x1
    8000520c:	aa0080e7          	jalr	-1376(ra) # 80005ca8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005210:	00000493          	li	s1,0
    80005214:	f99ff06f          	j	800051ac <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80005218:	00004517          	auipc	a0,0x4
    8000521c:	02050513          	addi	a0,a0,32 # 80009238 <CONSOLE_STATUS+0x228>
    80005220:	00001097          	auipc	ra,0x1
    80005224:	a88080e7          	jalr	-1400(ra) # 80005ca8 <_Z11printStringPKc>
    finishedB = true;
    80005228:	00100793          	li	a5,1
    8000522c:	00007717          	auipc	a4,0x7
    80005230:	b6f70723          	sb	a5,-1170(a4) # 8000bd9a <_ZL9finishedB>
    thread_dispatch();
    80005234:	ffffc097          	auipc	ra,0xffffc
    80005238:	198080e7          	jalr	408(ra) # 800013cc <_Z15thread_dispatchv>
}
    8000523c:	01813083          	ld	ra,24(sp)
    80005240:	01013403          	ld	s0,16(sp)
    80005244:	00813483          	ld	s1,8(sp)
    80005248:	00013903          	ld	s2,0(sp)
    8000524c:	02010113          	addi	sp,sp,32
    80005250:	00008067          	ret

0000000080005254 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005254:	fe010113          	addi	sp,sp,-32
    80005258:	00113c23          	sd	ra,24(sp)
    8000525c:	00813823          	sd	s0,16(sp)
    80005260:	00913423          	sd	s1,8(sp)
    80005264:	01213023          	sd	s2,0(sp)
    80005268:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    8000526c:	00000913          	li	s2,0
    80005270:	0380006f          	j	800052a8 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005274:	ffffc097          	auipc	ra,0xffffc
    80005278:	158080e7          	jalr	344(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000527c:	00148493          	addi	s1,s1,1
    80005280:	000027b7          	lui	a5,0x2
    80005284:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005288:	0097ee63          	bltu	a5,s1,800052a4 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000528c:	00000713          	li	a4,0
    80005290:	000077b7          	lui	a5,0x7
    80005294:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005298:	fce7eee3          	bltu	a5,a4,80005274 <_ZL11workerBodyAPv+0x20>
    8000529c:	00170713          	addi	a4,a4,1
    800052a0:	ff1ff06f          	j	80005290 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800052a4:	00190913          	addi	s2,s2,1
    800052a8:	00900793          	li	a5,9
    800052ac:	0527e063          	bltu	a5,s2,800052ec <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800052b0:	00004517          	auipc	a0,0x4
    800052b4:	f6850513          	addi	a0,a0,-152 # 80009218 <CONSOLE_STATUS+0x208>
    800052b8:	00001097          	auipc	ra,0x1
    800052bc:	9f0080e7          	jalr	-1552(ra) # 80005ca8 <_Z11printStringPKc>
    800052c0:	00000613          	li	a2,0
    800052c4:	00a00593          	li	a1,10
    800052c8:	0009051b          	sext.w	a0,s2
    800052cc:	00001097          	auipc	ra,0x1
    800052d0:	b8c080e7          	jalr	-1140(ra) # 80005e58 <_Z8printIntiii>
    800052d4:	00004517          	auipc	a0,0x4
    800052d8:	1a450513          	addi	a0,a0,420 # 80009478 <CONSOLE_STATUS+0x468>
    800052dc:	00001097          	auipc	ra,0x1
    800052e0:	9cc080e7          	jalr	-1588(ra) # 80005ca8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800052e4:	00000493          	li	s1,0
    800052e8:	f99ff06f          	j	80005280 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800052ec:	00004517          	auipc	a0,0x4
    800052f0:	f3450513          	addi	a0,a0,-204 # 80009220 <CONSOLE_STATUS+0x210>
    800052f4:	00001097          	auipc	ra,0x1
    800052f8:	9b4080e7          	jalr	-1612(ra) # 80005ca8 <_Z11printStringPKc>
    finishedA = true;
    800052fc:	00100793          	li	a5,1
    80005300:	00007717          	auipc	a4,0x7
    80005304:	a8f70da3          	sb	a5,-1381(a4) # 8000bd9b <_ZL9finishedA>
}
    80005308:	01813083          	ld	ra,24(sp)
    8000530c:	01013403          	ld	s0,16(sp)
    80005310:	00813483          	ld	s1,8(sp)
    80005314:	00013903          	ld	s2,0(sp)
    80005318:	02010113          	addi	sp,sp,32
    8000531c:	00008067          	ret

0000000080005320 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80005320:	fd010113          	addi	sp,sp,-48
    80005324:	02113423          	sd	ra,40(sp)
    80005328:	02813023          	sd	s0,32(sp)
    8000532c:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005330:	00000613          	li	a2,0
    80005334:	00000597          	auipc	a1,0x0
    80005338:	f2058593          	addi	a1,a1,-224 # 80005254 <_ZL11workerBodyAPv>
    8000533c:	fd040513          	addi	a0,s0,-48
    80005340:	ffffc097          	auipc	ra,0xffffc
    80005344:	fb8080e7          	jalr	-72(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80005348:	00004517          	auipc	a0,0x4
    8000534c:	f6850513          	addi	a0,a0,-152 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80005350:	00001097          	auipc	ra,0x1
    80005354:	958080e7          	jalr	-1704(ra) # 80005ca8 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005358:	00000613          	li	a2,0
    8000535c:	00000597          	auipc	a1,0x0
    80005360:	e2458593          	addi	a1,a1,-476 # 80005180 <_ZL11workerBodyBPv>
    80005364:	fd840513          	addi	a0,s0,-40
    80005368:	ffffc097          	auipc	ra,0xffffc
    8000536c:	f90080e7          	jalr	-112(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80005370:	00004517          	auipc	a0,0x4
    80005374:	f5850513          	addi	a0,a0,-168 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80005378:	00001097          	auipc	ra,0x1
    8000537c:	930080e7          	jalr	-1744(ra) # 80005ca8 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005380:	00000613          	li	a2,0
    80005384:	00000597          	auipc	a1,0x0
    80005388:	c7c58593          	addi	a1,a1,-900 # 80005000 <_ZL11workerBodyCPv>
    8000538c:	fe040513          	addi	a0,s0,-32
    80005390:	ffffc097          	auipc	ra,0xffffc
    80005394:	f68080e7          	jalr	-152(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80005398:	00004517          	auipc	a0,0x4
    8000539c:	f4850513          	addi	a0,a0,-184 # 800092e0 <CONSOLE_STATUS+0x2d0>
    800053a0:	00001097          	auipc	ra,0x1
    800053a4:	908080e7          	jalr	-1784(ra) # 80005ca8 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800053a8:	00000613          	li	a2,0
    800053ac:	00000597          	auipc	a1,0x0
    800053b0:	b0c58593          	addi	a1,a1,-1268 # 80004eb8 <_ZL11workerBodyDPv>
    800053b4:	fe840513          	addi	a0,s0,-24
    800053b8:	ffffc097          	auipc	ra,0xffffc
    800053bc:	f40080e7          	jalr	-192(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    800053c0:	00004517          	auipc	a0,0x4
    800053c4:	f3850513          	addi	a0,a0,-200 # 800092f8 <CONSOLE_STATUS+0x2e8>
    800053c8:	00001097          	auipc	ra,0x1
    800053cc:	8e0080e7          	jalr	-1824(ra) # 80005ca8 <_Z11printStringPKc>
    800053d0:	00c0006f          	j	800053dc <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800053d4:	ffffc097          	auipc	ra,0xffffc
    800053d8:	ff8080e7          	jalr	-8(ra) # 800013cc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800053dc:	00007797          	auipc	a5,0x7
    800053e0:	9bf7c783          	lbu	a5,-1601(a5) # 8000bd9b <_ZL9finishedA>
    800053e4:	fe0788e3          	beqz	a5,800053d4 <_Z18Threads_C_API_testv+0xb4>
    800053e8:	00007797          	auipc	a5,0x7
    800053ec:	9b27c783          	lbu	a5,-1614(a5) # 8000bd9a <_ZL9finishedB>
    800053f0:	fe0782e3          	beqz	a5,800053d4 <_Z18Threads_C_API_testv+0xb4>
    800053f4:	00007797          	auipc	a5,0x7
    800053f8:	9a57c783          	lbu	a5,-1627(a5) # 8000bd99 <_ZL9finishedC>
    800053fc:	fc078ce3          	beqz	a5,800053d4 <_Z18Threads_C_API_testv+0xb4>
    80005400:	00007797          	auipc	a5,0x7
    80005404:	9987c783          	lbu	a5,-1640(a5) # 8000bd98 <_ZL9finishedD>
    80005408:	fc0786e3          	beqz	a5,800053d4 <_Z18Threads_C_API_testv+0xb4>
    }

}
    8000540c:	02813083          	ld	ra,40(sp)
    80005410:	02013403          	ld	s0,32(sp)
    80005414:	03010113          	addi	sp,sp,48
    80005418:	00008067          	ret

000000008000541c <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    8000541c:	fd010113          	addi	sp,sp,-48
    80005420:	02113423          	sd	ra,40(sp)
    80005424:	02813023          	sd	s0,32(sp)
    80005428:	00913c23          	sd	s1,24(sp)
    8000542c:	01213823          	sd	s2,16(sp)
    80005430:	01313423          	sd	s3,8(sp)
    80005434:	03010413          	addi	s0,sp,48
    80005438:	00050993          	mv	s3,a0
    8000543c:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80005440:	00000913          	li	s2,0
    80005444:	00c0006f          	j	80005450 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005448:	ffffd097          	auipc	ra,0xffffd
    8000544c:	ba8080e7          	jalr	-1112(ra) # 80001ff0 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80005450:	ffffc097          	auipc	ra,0xffffc
    80005454:	1d0080e7          	jalr	464(ra) # 80001620 <_Z4getcv>
    80005458:	0005059b          	sext.w	a1,a0
    8000545c:	01b00793          	li	a5,27
    80005460:	02f58a63          	beq	a1,a5,80005494 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80005464:	0084b503          	ld	a0,8(s1)
    80005468:	00001097          	auipc	ra,0x1
    8000546c:	c64080e7          	jalr	-924(ra) # 800060cc <_ZN9BufferCPP3putEi>
        i++;
    80005470:	0019071b          	addiw	a4,s2,1
    80005474:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005478:	0004a683          	lw	a3,0(s1)
    8000547c:	0026979b          	slliw	a5,a3,0x2
    80005480:	00d787bb          	addw	a5,a5,a3
    80005484:	0017979b          	slliw	a5,a5,0x1
    80005488:	02f767bb          	remw	a5,a4,a5
    8000548c:	fc0792e3          	bnez	a5,80005450 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80005490:	fb9ff06f          	j	80005448 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80005494:	00100793          	li	a5,1
    80005498:	00007717          	auipc	a4,0x7
    8000549c:	90f72423          	sw	a5,-1784(a4) # 8000bda0 <_ZL9threadEnd>
    td->buffer->put('!');
    800054a0:	0209b783          	ld	a5,32(s3)
    800054a4:	02100593          	li	a1,33
    800054a8:	0087b503          	ld	a0,8(a5)
    800054ac:	00001097          	auipc	ra,0x1
    800054b0:	c20080e7          	jalr	-992(ra) # 800060cc <_ZN9BufferCPP3putEi>

    data->wait->signal();
    800054b4:	0104b503          	ld	a0,16(s1)
    800054b8:	ffffd097          	auipc	ra,0xffffd
    800054bc:	bfc080e7          	jalr	-1028(ra) # 800020b4 <_ZN9Semaphore6signalEv>
}
    800054c0:	02813083          	ld	ra,40(sp)
    800054c4:	02013403          	ld	s0,32(sp)
    800054c8:	01813483          	ld	s1,24(sp)
    800054cc:	01013903          	ld	s2,16(sp)
    800054d0:	00813983          	ld	s3,8(sp)
    800054d4:	03010113          	addi	sp,sp,48
    800054d8:	00008067          	ret

00000000800054dc <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    800054dc:	fe010113          	addi	sp,sp,-32
    800054e0:	00113c23          	sd	ra,24(sp)
    800054e4:	00813823          	sd	s0,16(sp)
    800054e8:	00913423          	sd	s1,8(sp)
    800054ec:	01213023          	sd	s2,0(sp)
    800054f0:	02010413          	addi	s0,sp,32
    800054f4:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800054f8:	00000913          	li	s2,0
    800054fc:	00c0006f          	j	80005508 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005500:	ffffd097          	auipc	ra,0xffffd
    80005504:	af0080e7          	jalr	-1296(ra) # 80001ff0 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80005508:	00007797          	auipc	a5,0x7
    8000550c:	8987a783          	lw	a5,-1896(a5) # 8000bda0 <_ZL9threadEnd>
    80005510:	02079e63          	bnez	a5,8000554c <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80005514:	0004a583          	lw	a1,0(s1)
    80005518:	0305859b          	addiw	a1,a1,48
    8000551c:	0084b503          	ld	a0,8(s1)
    80005520:	00001097          	auipc	ra,0x1
    80005524:	bac080e7          	jalr	-1108(ra) # 800060cc <_ZN9BufferCPP3putEi>
        i++;
    80005528:	0019071b          	addiw	a4,s2,1
    8000552c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005530:	0004a683          	lw	a3,0(s1)
    80005534:	0026979b          	slliw	a5,a3,0x2
    80005538:	00d787bb          	addw	a5,a5,a3
    8000553c:	0017979b          	slliw	a5,a5,0x1
    80005540:	02f767bb          	remw	a5,a4,a5
    80005544:	fc0792e3          	bnez	a5,80005508 <_ZN12ProducerSync8producerEPv+0x2c>
    80005548:	fb9ff06f          	j	80005500 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    8000554c:	0104b503          	ld	a0,16(s1)
    80005550:	ffffd097          	auipc	ra,0xffffd
    80005554:	b64080e7          	jalr	-1180(ra) # 800020b4 <_ZN9Semaphore6signalEv>
}
    80005558:	01813083          	ld	ra,24(sp)
    8000555c:	01013403          	ld	s0,16(sp)
    80005560:	00813483          	ld	s1,8(sp)
    80005564:	00013903          	ld	s2,0(sp)
    80005568:	02010113          	addi	sp,sp,32
    8000556c:	00008067          	ret

0000000080005570 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80005570:	fd010113          	addi	sp,sp,-48
    80005574:	02113423          	sd	ra,40(sp)
    80005578:	02813023          	sd	s0,32(sp)
    8000557c:	00913c23          	sd	s1,24(sp)
    80005580:	01213823          	sd	s2,16(sp)
    80005584:	01313423          	sd	s3,8(sp)
    80005588:	01413023          	sd	s4,0(sp)
    8000558c:	03010413          	addi	s0,sp,48
    80005590:	00050993          	mv	s3,a0
    80005594:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005598:	00000a13          	li	s4,0
    8000559c:	01c0006f          	j	800055b8 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    800055a0:	ffffd097          	auipc	ra,0xffffd
    800055a4:	a50080e7          	jalr	-1456(ra) # 80001ff0 <_ZN6Thread8dispatchEv>
    800055a8:	0500006f          	j	800055f8 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    800055ac:	00a00513          	li	a0,10
    800055b0:	ffffc097          	auipc	ra,0xffffc
    800055b4:	0bc080e7          	jalr	188(ra) # 8000166c <_Z4putcc>
    while (!threadEnd) {
    800055b8:	00006797          	auipc	a5,0x6
    800055bc:	7e87a783          	lw	a5,2024(a5) # 8000bda0 <_ZL9threadEnd>
    800055c0:	06079263          	bnez	a5,80005624 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    800055c4:	00893503          	ld	a0,8(s2)
    800055c8:	00001097          	auipc	ra,0x1
    800055cc:	b94080e7          	jalr	-1132(ra) # 8000615c <_ZN9BufferCPP3getEv>
        i++;
    800055d0:	001a049b          	addiw	s1,s4,1
    800055d4:	00048a1b          	sext.w	s4,s1
        putc(key);
    800055d8:	0ff57513          	andi	a0,a0,255
    800055dc:	ffffc097          	auipc	ra,0xffffc
    800055e0:	090080e7          	jalr	144(ra) # 8000166c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800055e4:	00092703          	lw	a4,0(s2)
    800055e8:	0027179b          	slliw	a5,a4,0x2
    800055ec:	00e787bb          	addw	a5,a5,a4
    800055f0:	02f4e7bb          	remw	a5,s1,a5
    800055f4:	fa0786e3          	beqz	a5,800055a0 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    800055f8:	05000793          	li	a5,80
    800055fc:	02f4e4bb          	remw	s1,s1,a5
    80005600:	fa049ce3          	bnez	s1,800055b8 <_ZN12ConsumerSync8consumerEPv+0x48>
    80005604:	fa9ff06f          	j	800055ac <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80005608:	0209b783          	ld	a5,32(s3)
    8000560c:	0087b503          	ld	a0,8(a5)
    80005610:	00001097          	auipc	ra,0x1
    80005614:	b4c080e7          	jalr	-1204(ra) # 8000615c <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80005618:	0ff57513          	andi	a0,a0,255
    8000561c:	ffffd097          	auipc	ra,0xffffd
    80005620:	bb8080e7          	jalr	-1096(ra) # 800021d4 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80005624:	0209b783          	ld	a5,32(s3)
    80005628:	0087b503          	ld	a0,8(a5)
    8000562c:	00001097          	auipc	ra,0x1
    80005630:	bbc080e7          	jalr	-1092(ra) # 800061e8 <_ZN9BufferCPP6getCntEv>
    80005634:	fca04ae3          	bgtz	a0,80005608 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80005638:	01093503          	ld	a0,16(s2)
    8000563c:	ffffd097          	auipc	ra,0xffffd
    80005640:	a78080e7          	jalr	-1416(ra) # 800020b4 <_ZN9Semaphore6signalEv>
}
    80005644:	02813083          	ld	ra,40(sp)
    80005648:	02013403          	ld	s0,32(sp)
    8000564c:	01813483          	ld	s1,24(sp)
    80005650:	01013903          	ld	s2,16(sp)
    80005654:	00813983          	ld	s3,8(sp)
    80005658:	00013a03          	ld	s4,0(sp)
    8000565c:	03010113          	addi	sp,sp,48
    80005660:	00008067          	ret

0000000080005664 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80005664:	f8010113          	addi	sp,sp,-128
    80005668:	06113c23          	sd	ra,120(sp)
    8000566c:	06813823          	sd	s0,112(sp)
    80005670:	06913423          	sd	s1,104(sp)
    80005674:	07213023          	sd	s2,96(sp)
    80005678:	05313c23          	sd	s3,88(sp)
    8000567c:	05413823          	sd	s4,80(sp)
    80005680:	05513423          	sd	s5,72(sp)
    80005684:	05613023          	sd	s6,64(sp)
    80005688:	03713c23          	sd	s7,56(sp)
    8000568c:	03813823          	sd	s8,48(sp)
    80005690:	03913423          	sd	s9,40(sp)
    80005694:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80005698:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    8000569c:	00004517          	auipc	a0,0x4
    800056a0:	a9450513          	addi	a0,a0,-1388 # 80009130 <CONSOLE_STATUS+0x120>
    800056a4:	00000097          	auipc	ra,0x0
    800056a8:	604080e7          	jalr	1540(ra) # 80005ca8 <_Z11printStringPKc>
    getString(input, 30);
    800056ac:	01e00593          	li	a1,30
    800056b0:	f8040493          	addi	s1,s0,-128
    800056b4:	00048513          	mv	a0,s1
    800056b8:	00000097          	auipc	ra,0x0
    800056bc:	678080e7          	jalr	1656(ra) # 80005d30 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800056c0:	00048513          	mv	a0,s1
    800056c4:	00000097          	auipc	ra,0x0
    800056c8:	744080e7          	jalr	1860(ra) # 80005e08 <_Z11stringToIntPKc>
    800056cc:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800056d0:	00004517          	auipc	a0,0x4
    800056d4:	a8050513          	addi	a0,a0,-1408 # 80009150 <CONSOLE_STATUS+0x140>
    800056d8:	00000097          	auipc	ra,0x0
    800056dc:	5d0080e7          	jalr	1488(ra) # 80005ca8 <_Z11printStringPKc>
    getString(input, 30);
    800056e0:	01e00593          	li	a1,30
    800056e4:	00048513          	mv	a0,s1
    800056e8:	00000097          	auipc	ra,0x0
    800056ec:	648080e7          	jalr	1608(ra) # 80005d30 <_Z9getStringPci>
    n = stringToInt(input);
    800056f0:	00048513          	mv	a0,s1
    800056f4:	00000097          	auipc	ra,0x0
    800056f8:	714080e7          	jalr	1812(ra) # 80005e08 <_Z11stringToIntPKc>
    800056fc:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80005700:	00004517          	auipc	a0,0x4
    80005704:	a7050513          	addi	a0,a0,-1424 # 80009170 <CONSOLE_STATUS+0x160>
    80005708:	00000097          	auipc	ra,0x0
    8000570c:	5a0080e7          	jalr	1440(ra) # 80005ca8 <_Z11printStringPKc>
    80005710:	00000613          	li	a2,0
    80005714:	00a00593          	li	a1,10
    80005718:	00090513          	mv	a0,s2
    8000571c:	00000097          	auipc	ra,0x0
    80005720:	73c080e7          	jalr	1852(ra) # 80005e58 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80005724:	00004517          	auipc	a0,0x4
    80005728:	a6450513          	addi	a0,a0,-1436 # 80009188 <CONSOLE_STATUS+0x178>
    8000572c:	00000097          	auipc	ra,0x0
    80005730:	57c080e7          	jalr	1404(ra) # 80005ca8 <_Z11printStringPKc>
    80005734:	00000613          	li	a2,0
    80005738:	00a00593          	li	a1,10
    8000573c:	00048513          	mv	a0,s1
    80005740:	00000097          	auipc	ra,0x0
    80005744:	718080e7          	jalr	1816(ra) # 80005e58 <_Z8printIntiii>
    printString(".\n");
    80005748:	00004517          	auipc	a0,0x4
    8000574c:	a5850513          	addi	a0,a0,-1448 # 800091a0 <CONSOLE_STATUS+0x190>
    80005750:	00000097          	auipc	ra,0x0
    80005754:	558080e7          	jalr	1368(ra) # 80005ca8 <_Z11printStringPKc>
    if(threadNum > n) {
    80005758:	0324c463          	blt	s1,s2,80005780 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    8000575c:	03205c63          	blez	s2,80005794 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80005760:	03800513          	li	a0,56
    80005764:	ffffc097          	auipc	ra,0xffffc
    80005768:	724080e7          	jalr	1828(ra) # 80001e88 <_Znwm>
    8000576c:	00050a93          	mv	s5,a0
    80005770:	00048593          	mv	a1,s1
    80005774:	00001097          	auipc	ra,0x1
    80005778:	804080e7          	jalr	-2044(ra) # 80005f78 <_ZN9BufferCPPC1Ei>
    8000577c:	0300006f          	j	800057ac <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005780:	00004517          	auipc	a0,0x4
    80005784:	a2850513          	addi	a0,a0,-1496 # 800091a8 <CONSOLE_STATUS+0x198>
    80005788:	00000097          	auipc	ra,0x0
    8000578c:	520080e7          	jalr	1312(ra) # 80005ca8 <_Z11printStringPKc>
        return;
    80005790:	0140006f          	j	800057a4 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80005794:	00004517          	auipc	a0,0x4
    80005798:	a5450513          	addi	a0,a0,-1452 # 800091e8 <CONSOLE_STATUS+0x1d8>
    8000579c:	00000097          	auipc	ra,0x0
    800057a0:	50c080e7          	jalr	1292(ra) # 80005ca8 <_Z11printStringPKc>
        return;
    800057a4:	000b8113          	mv	sp,s7
    800057a8:	2380006f          	j	800059e0 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    800057ac:	01000513          	li	a0,16
    800057b0:	ffffc097          	auipc	ra,0xffffc
    800057b4:	6d8080e7          	jalr	1752(ra) # 80001e88 <_Znwm>
    800057b8:	00050493          	mv	s1,a0
    800057bc:	00000593          	li	a1,0
    800057c0:	ffffd097          	auipc	ra,0xffffd
    800057c4:	880080e7          	jalr	-1920(ra) # 80002040 <_ZN9SemaphoreC1Ej>
    800057c8:	00006797          	auipc	a5,0x6
    800057cc:	5e97b023          	sd	s1,1504(a5) # 8000bda8 <_ZL10waitForAll>
    Thread* threads[threadNum];
    800057d0:	00391793          	slli	a5,s2,0x3
    800057d4:	00f78793          	addi	a5,a5,15
    800057d8:	ff07f793          	andi	a5,a5,-16
    800057dc:	40f10133          	sub	sp,sp,a5
    800057e0:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    800057e4:	0019071b          	addiw	a4,s2,1
    800057e8:	00171793          	slli	a5,a4,0x1
    800057ec:	00e787b3          	add	a5,a5,a4
    800057f0:	00379793          	slli	a5,a5,0x3
    800057f4:	00f78793          	addi	a5,a5,15
    800057f8:	ff07f793          	andi	a5,a5,-16
    800057fc:	40f10133          	sub	sp,sp,a5
    80005800:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80005804:	00191c13          	slli	s8,s2,0x1
    80005808:	012c07b3          	add	a5,s8,s2
    8000580c:	00379793          	slli	a5,a5,0x3
    80005810:	00fa07b3          	add	a5,s4,a5
    80005814:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80005818:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    8000581c:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80005820:	02800513          	li	a0,40
    80005824:	ffffc097          	auipc	ra,0xffffc
    80005828:	664080e7          	jalr	1636(ra) # 80001e88 <_Znwm>
    8000582c:	00050b13          	mv	s6,a0
    80005830:	012c0c33          	add	s8,s8,s2
    80005834:	003c1c13          	slli	s8,s8,0x3
    80005838:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    8000583c:	ffffc097          	auipc	ra,0xffffc
    80005840:	74c080e7          	jalr	1868(ra) # 80001f88 <_ZN6ThreadC1Ev>
    80005844:	00006797          	auipc	a5,0x6
    80005848:	3f478793          	addi	a5,a5,1012 # 8000bc38 <_ZTV12ConsumerSync+0x10>
    8000584c:	00fb3023          	sd	a5,0(s6)
    80005850:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80005854:	000b0513          	mv	a0,s6
    80005858:	ffffc097          	auipc	ra,0xffffc
    8000585c:	760080e7          	jalr	1888(ra) # 80001fb8 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005860:	00000493          	li	s1,0
    80005864:	0380006f          	j	8000589c <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005868:	00006797          	auipc	a5,0x6
    8000586c:	3a878793          	addi	a5,a5,936 # 8000bc10 <_ZTV12ProducerSync+0x10>
    80005870:	00fcb023          	sd	a5,0(s9)
    80005874:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80005878:	00349793          	slli	a5,s1,0x3
    8000587c:	00f987b3          	add	a5,s3,a5
    80005880:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80005884:	00349793          	slli	a5,s1,0x3
    80005888:	00f987b3          	add	a5,s3,a5
    8000588c:	0007b503          	ld	a0,0(a5)
    80005890:	ffffc097          	auipc	ra,0xffffc
    80005894:	728080e7          	jalr	1832(ra) # 80001fb8 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005898:	0014849b          	addiw	s1,s1,1
    8000589c:	0b24d063          	bge	s1,s2,8000593c <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    800058a0:	00149793          	slli	a5,s1,0x1
    800058a4:	009787b3          	add	a5,a5,s1
    800058a8:	00379793          	slli	a5,a5,0x3
    800058ac:	00fa07b3          	add	a5,s4,a5
    800058b0:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800058b4:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    800058b8:	00006717          	auipc	a4,0x6
    800058bc:	4f073703          	ld	a4,1264(a4) # 8000bda8 <_ZL10waitForAll>
    800058c0:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    800058c4:	02905863          	blez	s1,800058f4 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    800058c8:	02800513          	li	a0,40
    800058cc:	ffffc097          	auipc	ra,0xffffc
    800058d0:	5bc080e7          	jalr	1468(ra) # 80001e88 <_Znwm>
    800058d4:	00050c93          	mv	s9,a0
    800058d8:	00149c13          	slli	s8,s1,0x1
    800058dc:	009c0c33          	add	s8,s8,s1
    800058e0:	003c1c13          	slli	s8,s8,0x3
    800058e4:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800058e8:	ffffc097          	auipc	ra,0xffffc
    800058ec:	6a0080e7          	jalr	1696(ra) # 80001f88 <_ZN6ThreadC1Ev>
    800058f0:	f79ff06f          	j	80005868 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    800058f4:	02800513          	li	a0,40
    800058f8:	ffffc097          	auipc	ra,0xffffc
    800058fc:	590080e7          	jalr	1424(ra) # 80001e88 <_Znwm>
    80005900:	00050c93          	mv	s9,a0
    80005904:	00149c13          	slli	s8,s1,0x1
    80005908:	009c0c33          	add	s8,s8,s1
    8000590c:	003c1c13          	slli	s8,s8,0x3
    80005910:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80005914:	ffffc097          	auipc	ra,0xffffc
    80005918:	674080e7          	jalr	1652(ra) # 80001f88 <_ZN6ThreadC1Ev>
    8000591c:	00006797          	auipc	a5,0x6
    80005920:	2cc78793          	addi	a5,a5,716 # 8000bbe8 <_ZTV16ProducerKeyboard+0x10>
    80005924:	00fcb023          	sd	a5,0(s9)
    80005928:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    8000592c:	00349793          	slli	a5,s1,0x3
    80005930:	00f987b3          	add	a5,s3,a5
    80005934:	0197b023          	sd	s9,0(a5)
    80005938:	f4dff06f          	j	80005884 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    8000593c:	ffffc097          	auipc	ra,0xffffc
    80005940:	6b4080e7          	jalr	1716(ra) # 80001ff0 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80005944:	00000493          	li	s1,0
    80005948:	00994e63          	blt	s2,s1,80005964 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    8000594c:	00006517          	auipc	a0,0x6
    80005950:	45c53503          	ld	a0,1116(a0) # 8000bda8 <_ZL10waitForAll>
    80005954:	ffffc097          	auipc	ra,0xffffc
    80005958:	728080e7          	jalr	1832(ra) # 8000207c <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    8000595c:	0014849b          	addiw	s1,s1,1
    80005960:	fe9ff06f          	j	80005948 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80005964:	00000493          	li	s1,0
    80005968:	0080006f          	j	80005970 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    8000596c:	0014849b          	addiw	s1,s1,1
    80005970:	0324d263          	bge	s1,s2,80005994 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80005974:	00349793          	slli	a5,s1,0x3
    80005978:	00f987b3          	add	a5,s3,a5
    8000597c:	0007b503          	ld	a0,0(a5)
    80005980:	fe0506e3          	beqz	a0,8000596c <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80005984:	00053783          	ld	a5,0(a0)
    80005988:	0087b783          	ld	a5,8(a5)
    8000598c:	000780e7          	jalr	a5
    80005990:	fddff06f          	j	8000596c <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80005994:	000b0a63          	beqz	s6,800059a8 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80005998:	000b3783          	ld	a5,0(s6)
    8000599c:	0087b783          	ld	a5,8(a5)
    800059a0:	000b0513          	mv	a0,s6
    800059a4:	000780e7          	jalr	a5
    delete waitForAll;
    800059a8:	00006517          	auipc	a0,0x6
    800059ac:	40053503          	ld	a0,1024(a0) # 8000bda8 <_ZL10waitForAll>
    800059b0:	00050863          	beqz	a0,800059c0 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    800059b4:	00053783          	ld	a5,0(a0)
    800059b8:	0087b783          	ld	a5,8(a5)
    800059bc:	000780e7          	jalr	a5
    delete buffer;
    800059c0:	000a8e63          	beqz	s5,800059dc <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    800059c4:	000a8513          	mv	a0,s5
    800059c8:	00001097          	auipc	ra,0x1
    800059cc:	8a8080e7          	jalr	-1880(ra) # 80006270 <_ZN9BufferCPPD1Ev>
    800059d0:	000a8513          	mv	a0,s5
    800059d4:	ffffc097          	auipc	ra,0xffffc
    800059d8:	4dc080e7          	jalr	1244(ra) # 80001eb0 <_ZdlPv>
    800059dc:	000b8113          	mv	sp,s7

}
    800059e0:	f8040113          	addi	sp,s0,-128
    800059e4:	07813083          	ld	ra,120(sp)
    800059e8:	07013403          	ld	s0,112(sp)
    800059ec:	06813483          	ld	s1,104(sp)
    800059f0:	06013903          	ld	s2,96(sp)
    800059f4:	05813983          	ld	s3,88(sp)
    800059f8:	05013a03          	ld	s4,80(sp)
    800059fc:	04813a83          	ld	s5,72(sp)
    80005a00:	04013b03          	ld	s6,64(sp)
    80005a04:	03813b83          	ld	s7,56(sp)
    80005a08:	03013c03          	ld	s8,48(sp)
    80005a0c:	02813c83          	ld	s9,40(sp)
    80005a10:	08010113          	addi	sp,sp,128
    80005a14:	00008067          	ret
    80005a18:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80005a1c:	000a8513          	mv	a0,s5
    80005a20:	ffffc097          	auipc	ra,0xffffc
    80005a24:	490080e7          	jalr	1168(ra) # 80001eb0 <_ZdlPv>
    80005a28:	00048513          	mv	a0,s1
    80005a2c:	00007097          	auipc	ra,0x7
    80005a30:	45c080e7          	jalr	1116(ra) # 8000ce88 <_Unwind_Resume>
    80005a34:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80005a38:	00048513          	mv	a0,s1
    80005a3c:	ffffc097          	auipc	ra,0xffffc
    80005a40:	474080e7          	jalr	1140(ra) # 80001eb0 <_ZdlPv>
    80005a44:	00090513          	mv	a0,s2
    80005a48:	00007097          	auipc	ra,0x7
    80005a4c:	440080e7          	jalr	1088(ra) # 8000ce88 <_Unwind_Resume>
    80005a50:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80005a54:	000b0513          	mv	a0,s6
    80005a58:	ffffc097          	auipc	ra,0xffffc
    80005a5c:	458080e7          	jalr	1112(ra) # 80001eb0 <_ZdlPv>
    80005a60:	00048513          	mv	a0,s1
    80005a64:	00007097          	auipc	ra,0x7
    80005a68:	424080e7          	jalr	1060(ra) # 8000ce88 <_Unwind_Resume>
    80005a6c:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005a70:	000c8513          	mv	a0,s9
    80005a74:	ffffc097          	auipc	ra,0xffffc
    80005a78:	43c080e7          	jalr	1084(ra) # 80001eb0 <_ZdlPv>
    80005a7c:	00048513          	mv	a0,s1
    80005a80:	00007097          	auipc	ra,0x7
    80005a84:	408080e7          	jalr	1032(ra) # 8000ce88 <_Unwind_Resume>
    80005a88:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005a8c:	000c8513          	mv	a0,s9
    80005a90:	ffffc097          	auipc	ra,0xffffc
    80005a94:	420080e7          	jalr	1056(ra) # 80001eb0 <_ZdlPv>
    80005a98:	00048513          	mv	a0,s1
    80005a9c:	00007097          	auipc	ra,0x7
    80005aa0:	3ec080e7          	jalr	1004(ra) # 8000ce88 <_Unwind_Resume>

0000000080005aa4 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005aa4:	ff010113          	addi	sp,sp,-16
    80005aa8:	00113423          	sd	ra,8(sp)
    80005aac:	00813023          	sd	s0,0(sp)
    80005ab0:	01010413          	addi	s0,sp,16
    80005ab4:	00006797          	auipc	a5,0x6
    80005ab8:	18478793          	addi	a5,a5,388 # 8000bc38 <_ZTV12ConsumerSync+0x10>
    80005abc:	00f53023          	sd	a5,0(a0)
    80005ac0:	ffffc097          	auipc	ra,0xffffc
    80005ac4:	330080e7          	jalr	816(ra) # 80001df0 <_ZN6ThreadD1Ev>
    80005ac8:	00813083          	ld	ra,8(sp)
    80005acc:	00013403          	ld	s0,0(sp)
    80005ad0:	01010113          	addi	sp,sp,16
    80005ad4:	00008067          	ret

0000000080005ad8 <_ZN12ConsumerSyncD0Ev>:
    80005ad8:	fe010113          	addi	sp,sp,-32
    80005adc:	00113c23          	sd	ra,24(sp)
    80005ae0:	00813823          	sd	s0,16(sp)
    80005ae4:	00913423          	sd	s1,8(sp)
    80005ae8:	02010413          	addi	s0,sp,32
    80005aec:	00050493          	mv	s1,a0
    80005af0:	00006797          	auipc	a5,0x6
    80005af4:	14878793          	addi	a5,a5,328 # 8000bc38 <_ZTV12ConsumerSync+0x10>
    80005af8:	00f53023          	sd	a5,0(a0)
    80005afc:	ffffc097          	auipc	ra,0xffffc
    80005b00:	2f4080e7          	jalr	756(ra) # 80001df0 <_ZN6ThreadD1Ev>
    80005b04:	00048513          	mv	a0,s1
    80005b08:	ffffc097          	auipc	ra,0xffffc
    80005b0c:	3a8080e7          	jalr	936(ra) # 80001eb0 <_ZdlPv>
    80005b10:	01813083          	ld	ra,24(sp)
    80005b14:	01013403          	ld	s0,16(sp)
    80005b18:	00813483          	ld	s1,8(sp)
    80005b1c:	02010113          	addi	sp,sp,32
    80005b20:	00008067          	ret

0000000080005b24 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80005b24:	ff010113          	addi	sp,sp,-16
    80005b28:	00113423          	sd	ra,8(sp)
    80005b2c:	00813023          	sd	s0,0(sp)
    80005b30:	01010413          	addi	s0,sp,16
    80005b34:	00006797          	auipc	a5,0x6
    80005b38:	0dc78793          	addi	a5,a5,220 # 8000bc10 <_ZTV12ProducerSync+0x10>
    80005b3c:	00f53023          	sd	a5,0(a0)
    80005b40:	ffffc097          	auipc	ra,0xffffc
    80005b44:	2b0080e7          	jalr	688(ra) # 80001df0 <_ZN6ThreadD1Ev>
    80005b48:	00813083          	ld	ra,8(sp)
    80005b4c:	00013403          	ld	s0,0(sp)
    80005b50:	01010113          	addi	sp,sp,16
    80005b54:	00008067          	ret

0000000080005b58 <_ZN12ProducerSyncD0Ev>:
    80005b58:	fe010113          	addi	sp,sp,-32
    80005b5c:	00113c23          	sd	ra,24(sp)
    80005b60:	00813823          	sd	s0,16(sp)
    80005b64:	00913423          	sd	s1,8(sp)
    80005b68:	02010413          	addi	s0,sp,32
    80005b6c:	00050493          	mv	s1,a0
    80005b70:	00006797          	auipc	a5,0x6
    80005b74:	0a078793          	addi	a5,a5,160 # 8000bc10 <_ZTV12ProducerSync+0x10>
    80005b78:	00f53023          	sd	a5,0(a0)
    80005b7c:	ffffc097          	auipc	ra,0xffffc
    80005b80:	274080e7          	jalr	628(ra) # 80001df0 <_ZN6ThreadD1Ev>
    80005b84:	00048513          	mv	a0,s1
    80005b88:	ffffc097          	auipc	ra,0xffffc
    80005b8c:	328080e7          	jalr	808(ra) # 80001eb0 <_ZdlPv>
    80005b90:	01813083          	ld	ra,24(sp)
    80005b94:	01013403          	ld	s0,16(sp)
    80005b98:	00813483          	ld	s1,8(sp)
    80005b9c:	02010113          	addi	sp,sp,32
    80005ba0:	00008067          	ret

0000000080005ba4 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005ba4:	ff010113          	addi	sp,sp,-16
    80005ba8:	00113423          	sd	ra,8(sp)
    80005bac:	00813023          	sd	s0,0(sp)
    80005bb0:	01010413          	addi	s0,sp,16
    80005bb4:	00006797          	auipc	a5,0x6
    80005bb8:	03478793          	addi	a5,a5,52 # 8000bbe8 <_ZTV16ProducerKeyboard+0x10>
    80005bbc:	00f53023          	sd	a5,0(a0)
    80005bc0:	ffffc097          	auipc	ra,0xffffc
    80005bc4:	230080e7          	jalr	560(ra) # 80001df0 <_ZN6ThreadD1Ev>
    80005bc8:	00813083          	ld	ra,8(sp)
    80005bcc:	00013403          	ld	s0,0(sp)
    80005bd0:	01010113          	addi	sp,sp,16
    80005bd4:	00008067          	ret

0000000080005bd8 <_ZN16ProducerKeyboardD0Ev>:
    80005bd8:	fe010113          	addi	sp,sp,-32
    80005bdc:	00113c23          	sd	ra,24(sp)
    80005be0:	00813823          	sd	s0,16(sp)
    80005be4:	00913423          	sd	s1,8(sp)
    80005be8:	02010413          	addi	s0,sp,32
    80005bec:	00050493          	mv	s1,a0
    80005bf0:	00006797          	auipc	a5,0x6
    80005bf4:	ff878793          	addi	a5,a5,-8 # 8000bbe8 <_ZTV16ProducerKeyboard+0x10>
    80005bf8:	00f53023          	sd	a5,0(a0)
    80005bfc:	ffffc097          	auipc	ra,0xffffc
    80005c00:	1f4080e7          	jalr	500(ra) # 80001df0 <_ZN6ThreadD1Ev>
    80005c04:	00048513          	mv	a0,s1
    80005c08:	ffffc097          	auipc	ra,0xffffc
    80005c0c:	2a8080e7          	jalr	680(ra) # 80001eb0 <_ZdlPv>
    80005c10:	01813083          	ld	ra,24(sp)
    80005c14:	01013403          	ld	s0,16(sp)
    80005c18:	00813483          	ld	s1,8(sp)
    80005c1c:	02010113          	addi	sp,sp,32
    80005c20:	00008067          	ret

0000000080005c24 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80005c24:	ff010113          	addi	sp,sp,-16
    80005c28:	00113423          	sd	ra,8(sp)
    80005c2c:	00813023          	sd	s0,0(sp)
    80005c30:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80005c34:	02053583          	ld	a1,32(a0)
    80005c38:	fffff097          	auipc	ra,0xfffff
    80005c3c:	7e4080e7          	jalr	2020(ra) # 8000541c <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005c40:	00813083          	ld	ra,8(sp)
    80005c44:	00013403          	ld	s0,0(sp)
    80005c48:	01010113          	addi	sp,sp,16
    80005c4c:	00008067          	ret

0000000080005c50 <_ZN12ProducerSync3runEv>:
    void run() override {
    80005c50:	ff010113          	addi	sp,sp,-16
    80005c54:	00113423          	sd	ra,8(sp)
    80005c58:	00813023          	sd	s0,0(sp)
    80005c5c:	01010413          	addi	s0,sp,16
        producer(td);
    80005c60:	02053583          	ld	a1,32(a0)
    80005c64:	00000097          	auipc	ra,0x0
    80005c68:	878080e7          	jalr	-1928(ra) # 800054dc <_ZN12ProducerSync8producerEPv>
    }
    80005c6c:	00813083          	ld	ra,8(sp)
    80005c70:	00013403          	ld	s0,0(sp)
    80005c74:	01010113          	addi	sp,sp,16
    80005c78:	00008067          	ret

0000000080005c7c <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005c7c:	ff010113          	addi	sp,sp,-16
    80005c80:	00113423          	sd	ra,8(sp)
    80005c84:	00813023          	sd	s0,0(sp)
    80005c88:	01010413          	addi	s0,sp,16
        consumer(td);
    80005c8c:	02053583          	ld	a1,32(a0)
    80005c90:	00000097          	auipc	ra,0x0
    80005c94:	8e0080e7          	jalr	-1824(ra) # 80005570 <_ZN12ConsumerSync8consumerEPv>
    }
    80005c98:	00813083          	ld	ra,8(sp)
    80005c9c:	00013403          	ld	s0,0(sp)
    80005ca0:	01010113          	addi	sp,sp,16
    80005ca4:	00008067          	ret

0000000080005ca8 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005ca8:	fe010113          	addi	sp,sp,-32
    80005cac:	00113c23          	sd	ra,24(sp)
    80005cb0:	00813823          	sd	s0,16(sp)
    80005cb4:	00913423          	sd	s1,8(sp)
    80005cb8:	02010413          	addi	s0,sp,32
    80005cbc:	00050493          	mv	s1,a0
    LOCK();
    80005cc0:	00100613          	li	a2,1
    80005cc4:	00000593          	li	a1,0
    80005cc8:	00006517          	auipc	a0,0x6
    80005ccc:	0e850513          	addi	a0,a0,232 # 8000bdb0 <lockPrint>
    80005cd0:	ffffb097          	auipc	ra,0xffffb
    80005cd4:	54c080e7          	jalr	1356(ra) # 8000121c <copy_and_swap>
    80005cd8:	00050863          	beqz	a0,80005ce8 <_Z11printStringPKc+0x40>
    80005cdc:	ffffb097          	auipc	ra,0xffffb
    80005ce0:	6f0080e7          	jalr	1776(ra) # 800013cc <_Z15thread_dispatchv>
    80005ce4:	fddff06f          	j	80005cc0 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005ce8:	0004c503          	lbu	a0,0(s1)
    80005cec:	00050a63          	beqz	a0,80005d00 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005cf0:	ffffc097          	auipc	ra,0xffffc
    80005cf4:	97c080e7          	jalr	-1668(ra) # 8000166c <_Z4putcc>
        string++;
    80005cf8:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005cfc:	fedff06f          	j	80005ce8 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005d00:	00000613          	li	a2,0
    80005d04:	00100593          	li	a1,1
    80005d08:	00006517          	auipc	a0,0x6
    80005d0c:	0a850513          	addi	a0,a0,168 # 8000bdb0 <lockPrint>
    80005d10:	ffffb097          	auipc	ra,0xffffb
    80005d14:	50c080e7          	jalr	1292(ra) # 8000121c <copy_and_swap>
    80005d18:	fe0514e3          	bnez	a0,80005d00 <_Z11printStringPKc+0x58>
}
    80005d1c:	01813083          	ld	ra,24(sp)
    80005d20:	01013403          	ld	s0,16(sp)
    80005d24:	00813483          	ld	s1,8(sp)
    80005d28:	02010113          	addi	sp,sp,32
    80005d2c:	00008067          	ret

0000000080005d30 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005d30:	fd010113          	addi	sp,sp,-48
    80005d34:	02113423          	sd	ra,40(sp)
    80005d38:	02813023          	sd	s0,32(sp)
    80005d3c:	00913c23          	sd	s1,24(sp)
    80005d40:	01213823          	sd	s2,16(sp)
    80005d44:	01313423          	sd	s3,8(sp)
    80005d48:	01413023          	sd	s4,0(sp)
    80005d4c:	03010413          	addi	s0,sp,48
    80005d50:	00050993          	mv	s3,a0
    80005d54:	00058a13          	mv	s4,a1
    LOCK();
    80005d58:	00100613          	li	a2,1
    80005d5c:	00000593          	li	a1,0
    80005d60:	00006517          	auipc	a0,0x6
    80005d64:	05050513          	addi	a0,a0,80 # 8000bdb0 <lockPrint>
    80005d68:	ffffb097          	auipc	ra,0xffffb
    80005d6c:	4b4080e7          	jalr	1204(ra) # 8000121c <copy_and_swap>
    80005d70:	00050863          	beqz	a0,80005d80 <_Z9getStringPci+0x50>
    80005d74:	ffffb097          	auipc	ra,0xffffb
    80005d78:	658080e7          	jalr	1624(ra) # 800013cc <_Z15thread_dispatchv>
    80005d7c:	fddff06f          	j	80005d58 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005d80:	00000913          	li	s2,0
    80005d84:	00090493          	mv	s1,s2
    80005d88:	0019091b          	addiw	s2,s2,1
    80005d8c:	03495a63          	bge	s2,s4,80005dc0 <_Z9getStringPci+0x90>
        cc = getc();
    80005d90:	ffffc097          	auipc	ra,0xffffc
    80005d94:	890080e7          	jalr	-1904(ra) # 80001620 <_Z4getcv>
        if(cc < 1)
    80005d98:	02050463          	beqz	a0,80005dc0 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005d9c:	009984b3          	add	s1,s3,s1
    80005da0:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005da4:	00a00793          	li	a5,10
    80005da8:	00f50a63          	beq	a0,a5,80005dbc <_Z9getStringPci+0x8c>
    80005dac:	00d00793          	li	a5,13
    80005db0:	fcf51ae3          	bne	a0,a5,80005d84 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80005db4:	00090493          	mv	s1,s2
    80005db8:	0080006f          	j	80005dc0 <_Z9getStringPci+0x90>
    80005dbc:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005dc0:	009984b3          	add	s1,s3,s1
    80005dc4:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005dc8:	00000613          	li	a2,0
    80005dcc:	00100593          	li	a1,1
    80005dd0:	00006517          	auipc	a0,0x6
    80005dd4:	fe050513          	addi	a0,a0,-32 # 8000bdb0 <lockPrint>
    80005dd8:	ffffb097          	auipc	ra,0xffffb
    80005ddc:	444080e7          	jalr	1092(ra) # 8000121c <copy_and_swap>
    80005de0:	fe0514e3          	bnez	a0,80005dc8 <_Z9getStringPci+0x98>
    return buf;
}
    80005de4:	00098513          	mv	a0,s3
    80005de8:	02813083          	ld	ra,40(sp)
    80005dec:	02013403          	ld	s0,32(sp)
    80005df0:	01813483          	ld	s1,24(sp)
    80005df4:	01013903          	ld	s2,16(sp)
    80005df8:	00813983          	ld	s3,8(sp)
    80005dfc:	00013a03          	ld	s4,0(sp)
    80005e00:	03010113          	addi	sp,sp,48
    80005e04:	00008067          	ret

0000000080005e08 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005e08:	ff010113          	addi	sp,sp,-16
    80005e0c:	00813423          	sd	s0,8(sp)
    80005e10:	01010413          	addi	s0,sp,16
    80005e14:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005e18:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005e1c:	0006c603          	lbu	a2,0(a3)
    80005e20:	fd06071b          	addiw	a4,a2,-48
    80005e24:	0ff77713          	andi	a4,a4,255
    80005e28:	00900793          	li	a5,9
    80005e2c:	02e7e063          	bltu	a5,a4,80005e4c <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005e30:	0025179b          	slliw	a5,a0,0x2
    80005e34:	00a787bb          	addw	a5,a5,a0
    80005e38:	0017979b          	slliw	a5,a5,0x1
    80005e3c:	00168693          	addi	a3,a3,1
    80005e40:	00c787bb          	addw	a5,a5,a2
    80005e44:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005e48:	fd5ff06f          	j	80005e1c <_Z11stringToIntPKc+0x14>
    return n;
}
    80005e4c:	00813403          	ld	s0,8(sp)
    80005e50:	01010113          	addi	sp,sp,16
    80005e54:	00008067          	ret

0000000080005e58 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005e58:	fc010113          	addi	sp,sp,-64
    80005e5c:	02113c23          	sd	ra,56(sp)
    80005e60:	02813823          	sd	s0,48(sp)
    80005e64:	02913423          	sd	s1,40(sp)
    80005e68:	03213023          	sd	s2,32(sp)
    80005e6c:	01313c23          	sd	s3,24(sp)
    80005e70:	04010413          	addi	s0,sp,64
    80005e74:	00050493          	mv	s1,a0
    80005e78:	00058913          	mv	s2,a1
    80005e7c:	00060993          	mv	s3,a2
    LOCK();
    80005e80:	00100613          	li	a2,1
    80005e84:	00000593          	li	a1,0
    80005e88:	00006517          	auipc	a0,0x6
    80005e8c:	f2850513          	addi	a0,a0,-216 # 8000bdb0 <lockPrint>
    80005e90:	ffffb097          	auipc	ra,0xffffb
    80005e94:	38c080e7          	jalr	908(ra) # 8000121c <copy_and_swap>
    80005e98:	00050863          	beqz	a0,80005ea8 <_Z8printIntiii+0x50>
    80005e9c:	ffffb097          	auipc	ra,0xffffb
    80005ea0:	530080e7          	jalr	1328(ra) # 800013cc <_Z15thread_dispatchv>
    80005ea4:	fddff06f          	j	80005e80 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005ea8:	00098463          	beqz	s3,80005eb0 <_Z8printIntiii+0x58>
    80005eac:	0804c463          	bltz	s1,80005f34 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005eb0:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005eb4:	00000593          	li	a1,0
    }

    i = 0;
    80005eb8:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005ebc:	0009079b          	sext.w	a5,s2
    80005ec0:	0325773b          	remuw	a4,a0,s2
    80005ec4:	00048613          	mv	a2,s1
    80005ec8:	0014849b          	addiw	s1,s1,1
    80005ecc:	02071693          	slli	a3,a4,0x20
    80005ed0:	0206d693          	srli	a3,a3,0x20
    80005ed4:	00006717          	auipc	a4,0x6
    80005ed8:	d7c70713          	addi	a4,a4,-644 # 8000bc50 <digits>
    80005edc:	00d70733          	add	a4,a4,a3
    80005ee0:	00074683          	lbu	a3,0(a4)
    80005ee4:	fd040713          	addi	a4,s0,-48
    80005ee8:	00c70733          	add	a4,a4,a2
    80005eec:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005ef0:	0005071b          	sext.w	a4,a0
    80005ef4:	0325553b          	divuw	a0,a0,s2
    80005ef8:	fcf772e3          	bgeu	a4,a5,80005ebc <_Z8printIntiii+0x64>
    if(neg)
    80005efc:	00058c63          	beqz	a1,80005f14 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005f00:	fd040793          	addi	a5,s0,-48
    80005f04:	009784b3          	add	s1,a5,s1
    80005f08:	02d00793          	li	a5,45
    80005f0c:	fef48823          	sb	a5,-16(s1)
    80005f10:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005f14:	fff4849b          	addiw	s1,s1,-1
    80005f18:	0204c463          	bltz	s1,80005f40 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80005f1c:	fd040793          	addi	a5,s0,-48
    80005f20:	009787b3          	add	a5,a5,s1
    80005f24:	ff07c503          	lbu	a0,-16(a5)
    80005f28:	ffffb097          	auipc	ra,0xffffb
    80005f2c:	744080e7          	jalr	1860(ra) # 8000166c <_Z4putcc>
    80005f30:	fe5ff06f          	j	80005f14 <_Z8printIntiii+0xbc>
        x = -xx;
    80005f34:	4090053b          	negw	a0,s1
        neg = 1;
    80005f38:	00100593          	li	a1,1
        x = -xx;
    80005f3c:	f7dff06f          	j	80005eb8 <_Z8printIntiii+0x60>

    UNLOCK();
    80005f40:	00000613          	li	a2,0
    80005f44:	00100593          	li	a1,1
    80005f48:	00006517          	auipc	a0,0x6
    80005f4c:	e6850513          	addi	a0,a0,-408 # 8000bdb0 <lockPrint>
    80005f50:	ffffb097          	auipc	ra,0xffffb
    80005f54:	2cc080e7          	jalr	716(ra) # 8000121c <copy_and_swap>
    80005f58:	fe0514e3          	bnez	a0,80005f40 <_Z8printIntiii+0xe8>
    80005f5c:	03813083          	ld	ra,56(sp)
    80005f60:	03013403          	ld	s0,48(sp)
    80005f64:	02813483          	ld	s1,40(sp)
    80005f68:	02013903          	ld	s2,32(sp)
    80005f6c:	01813983          	ld	s3,24(sp)
    80005f70:	04010113          	addi	sp,sp,64
    80005f74:	00008067          	ret

0000000080005f78 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005f78:	fd010113          	addi	sp,sp,-48
    80005f7c:	02113423          	sd	ra,40(sp)
    80005f80:	02813023          	sd	s0,32(sp)
    80005f84:	00913c23          	sd	s1,24(sp)
    80005f88:	01213823          	sd	s2,16(sp)
    80005f8c:	01313423          	sd	s3,8(sp)
    80005f90:	03010413          	addi	s0,sp,48
    80005f94:	00050493          	mv	s1,a0
    80005f98:	00058913          	mv	s2,a1
    80005f9c:	0015879b          	addiw	a5,a1,1
    80005fa0:	0007851b          	sext.w	a0,a5
    80005fa4:	00f4a023          	sw	a5,0(s1)
    80005fa8:	0004a823          	sw	zero,16(s1)
    80005fac:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005fb0:	00251513          	slli	a0,a0,0x2
    80005fb4:	ffffb097          	auipc	ra,0xffffb
    80005fb8:	2a4080e7          	jalr	676(ra) # 80001258 <_Z9mem_allocm>
    80005fbc:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005fc0:	01000513          	li	a0,16
    80005fc4:	ffffc097          	auipc	ra,0xffffc
    80005fc8:	ec4080e7          	jalr	-316(ra) # 80001e88 <_Znwm>
    80005fcc:	00050993          	mv	s3,a0
    80005fd0:	00000593          	li	a1,0
    80005fd4:	ffffc097          	auipc	ra,0xffffc
    80005fd8:	06c080e7          	jalr	108(ra) # 80002040 <_ZN9SemaphoreC1Ej>
    80005fdc:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005fe0:	01000513          	li	a0,16
    80005fe4:	ffffc097          	auipc	ra,0xffffc
    80005fe8:	ea4080e7          	jalr	-348(ra) # 80001e88 <_Znwm>
    80005fec:	00050993          	mv	s3,a0
    80005ff0:	00090593          	mv	a1,s2
    80005ff4:	ffffc097          	auipc	ra,0xffffc
    80005ff8:	04c080e7          	jalr	76(ra) # 80002040 <_ZN9SemaphoreC1Ej>
    80005ffc:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80006000:	01000513          	li	a0,16
    80006004:	ffffc097          	auipc	ra,0xffffc
    80006008:	e84080e7          	jalr	-380(ra) # 80001e88 <_Znwm>
    8000600c:	00050913          	mv	s2,a0
    80006010:	00100593          	li	a1,1
    80006014:	ffffc097          	auipc	ra,0xffffc
    80006018:	02c080e7          	jalr	44(ra) # 80002040 <_ZN9SemaphoreC1Ej>
    8000601c:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80006020:	01000513          	li	a0,16
    80006024:	ffffc097          	auipc	ra,0xffffc
    80006028:	e64080e7          	jalr	-412(ra) # 80001e88 <_Znwm>
    8000602c:	00050913          	mv	s2,a0
    80006030:	00100593          	li	a1,1
    80006034:	ffffc097          	auipc	ra,0xffffc
    80006038:	00c080e7          	jalr	12(ra) # 80002040 <_ZN9SemaphoreC1Ej>
    8000603c:	0324b823          	sd	s2,48(s1)
}
    80006040:	02813083          	ld	ra,40(sp)
    80006044:	02013403          	ld	s0,32(sp)
    80006048:	01813483          	ld	s1,24(sp)
    8000604c:	01013903          	ld	s2,16(sp)
    80006050:	00813983          	ld	s3,8(sp)
    80006054:	03010113          	addi	sp,sp,48
    80006058:	00008067          	ret
    8000605c:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80006060:	00098513          	mv	a0,s3
    80006064:	ffffc097          	auipc	ra,0xffffc
    80006068:	e4c080e7          	jalr	-436(ra) # 80001eb0 <_ZdlPv>
    8000606c:	00048513          	mv	a0,s1
    80006070:	00007097          	auipc	ra,0x7
    80006074:	e18080e7          	jalr	-488(ra) # 8000ce88 <_Unwind_Resume>
    80006078:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    8000607c:	00098513          	mv	a0,s3
    80006080:	ffffc097          	auipc	ra,0xffffc
    80006084:	e30080e7          	jalr	-464(ra) # 80001eb0 <_ZdlPv>
    80006088:	00048513          	mv	a0,s1
    8000608c:	00007097          	auipc	ra,0x7
    80006090:	dfc080e7          	jalr	-516(ra) # 8000ce88 <_Unwind_Resume>
    80006094:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80006098:	00090513          	mv	a0,s2
    8000609c:	ffffc097          	auipc	ra,0xffffc
    800060a0:	e14080e7          	jalr	-492(ra) # 80001eb0 <_ZdlPv>
    800060a4:	00048513          	mv	a0,s1
    800060a8:	00007097          	auipc	ra,0x7
    800060ac:	de0080e7          	jalr	-544(ra) # 8000ce88 <_Unwind_Resume>
    800060b0:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800060b4:	00090513          	mv	a0,s2
    800060b8:	ffffc097          	auipc	ra,0xffffc
    800060bc:	df8080e7          	jalr	-520(ra) # 80001eb0 <_ZdlPv>
    800060c0:	00048513          	mv	a0,s1
    800060c4:	00007097          	auipc	ra,0x7
    800060c8:	dc4080e7          	jalr	-572(ra) # 8000ce88 <_Unwind_Resume>

00000000800060cc <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    800060cc:	fe010113          	addi	sp,sp,-32
    800060d0:	00113c23          	sd	ra,24(sp)
    800060d4:	00813823          	sd	s0,16(sp)
    800060d8:	00913423          	sd	s1,8(sp)
    800060dc:	01213023          	sd	s2,0(sp)
    800060e0:	02010413          	addi	s0,sp,32
    800060e4:	00050493          	mv	s1,a0
    800060e8:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800060ec:	01853503          	ld	a0,24(a0)
    800060f0:	ffffc097          	auipc	ra,0xffffc
    800060f4:	f8c080e7          	jalr	-116(ra) # 8000207c <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800060f8:	0304b503          	ld	a0,48(s1)
    800060fc:	ffffc097          	auipc	ra,0xffffc
    80006100:	f80080e7          	jalr	-128(ra) # 8000207c <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80006104:	0084b783          	ld	a5,8(s1)
    80006108:	0144a703          	lw	a4,20(s1)
    8000610c:	00271713          	slli	a4,a4,0x2
    80006110:	00e787b3          	add	a5,a5,a4
    80006114:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006118:	0144a783          	lw	a5,20(s1)
    8000611c:	0017879b          	addiw	a5,a5,1
    80006120:	0004a703          	lw	a4,0(s1)
    80006124:	02e7e7bb          	remw	a5,a5,a4
    80006128:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    8000612c:	0304b503          	ld	a0,48(s1)
    80006130:	ffffc097          	auipc	ra,0xffffc
    80006134:	f84080e7          	jalr	-124(ra) # 800020b4 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80006138:	0204b503          	ld	a0,32(s1)
    8000613c:	ffffc097          	auipc	ra,0xffffc
    80006140:	f78080e7          	jalr	-136(ra) # 800020b4 <_ZN9Semaphore6signalEv>

}
    80006144:	01813083          	ld	ra,24(sp)
    80006148:	01013403          	ld	s0,16(sp)
    8000614c:	00813483          	ld	s1,8(sp)
    80006150:	00013903          	ld	s2,0(sp)
    80006154:	02010113          	addi	sp,sp,32
    80006158:	00008067          	ret

000000008000615c <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    8000615c:	fe010113          	addi	sp,sp,-32
    80006160:	00113c23          	sd	ra,24(sp)
    80006164:	00813823          	sd	s0,16(sp)
    80006168:	00913423          	sd	s1,8(sp)
    8000616c:	01213023          	sd	s2,0(sp)
    80006170:	02010413          	addi	s0,sp,32
    80006174:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80006178:	02053503          	ld	a0,32(a0)
    8000617c:	ffffc097          	auipc	ra,0xffffc
    80006180:	f00080e7          	jalr	-256(ra) # 8000207c <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80006184:	0284b503          	ld	a0,40(s1)
    80006188:	ffffc097          	auipc	ra,0xffffc
    8000618c:	ef4080e7          	jalr	-268(ra) # 8000207c <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80006190:	0084b703          	ld	a4,8(s1)
    80006194:	0104a783          	lw	a5,16(s1)
    80006198:	00279693          	slli	a3,a5,0x2
    8000619c:	00d70733          	add	a4,a4,a3
    800061a0:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800061a4:	0017879b          	addiw	a5,a5,1
    800061a8:	0004a703          	lw	a4,0(s1)
    800061ac:	02e7e7bb          	remw	a5,a5,a4
    800061b0:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800061b4:	0284b503          	ld	a0,40(s1)
    800061b8:	ffffc097          	auipc	ra,0xffffc
    800061bc:	efc080e7          	jalr	-260(ra) # 800020b4 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800061c0:	0184b503          	ld	a0,24(s1)
    800061c4:	ffffc097          	auipc	ra,0xffffc
    800061c8:	ef0080e7          	jalr	-272(ra) # 800020b4 <_ZN9Semaphore6signalEv>

    return ret;
}
    800061cc:	00090513          	mv	a0,s2
    800061d0:	01813083          	ld	ra,24(sp)
    800061d4:	01013403          	ld	s0,16(sp)
    800061d8:	00813483          	ld	s1,8(sp)
    800061dc:	00013903          	ld	s2,0(sp)
    800061e0:	02010113          	addi	sp,sp,32
    800061e4:	00008067          	ret

00000000800061e8 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800061e8:	fe010113          	addi	sp,sp,-32
    800061ec:	00113c23          	sd	ra,24(sp)
    800061f0:	00813823          	sd	s0,16(sp)
    800061f4:	00913423          	sd	s1,8(sp)
    800061f8:	01213023          	sd	s2,0(sp)
    800061fc:	02010413          	addi	s0,sp,32
    80006200:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80006204:	02853503          	ld	a0,40(a0)
    80006208:	ffffc097          	auipc	ra,0xffffc
    8000620c:	e74080e7          	jalr	-396(ra) # 8000207c <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80006210:	0304b503          	ld	a0,48(s1)
    80006214:	ffffc097          	auipc	ra,0xffffc
    80006218:	e68080e7          	jalr	-408(ra) # 8000207c <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    8000621c:	0144a783          	lw	a5,20(s1)
    80006220:	0104a903          	lw	s2,16(s1)
    80006224:	0327ce63          	blt	a5,s2,80006260 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80006228:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    8000622c:	0304b503          	ld	a0,48(s1)
    80006230:	ffffc097          	auipc	ra,0xffffc
    80006234:	e84080e7          	jalr	-380(ra) # 800020b4 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80006238:	0284b503          	ld	a0,40(s1)
    8000623c:	ffffc097          	auipc	ra,0xffffc
    80006240:	e78080e7          	jalr	-392(ra) # 800020b4 <_ZN9Semaphore6signalEv>

    return ret;
}
    80006244:	00090513          	mv	a0,s2
    80006248:	01813083          	ld	ra,24(sp)
    8000624c:	01013403          	ld	s0,16(sp)
    80006250:	00813483          	ld	s1,8(sp)
    80006254:	00013903          	ld	s2,0(sp)
    80006258:	02010113          	addi	sp,sp,32
    8000625c:	00008067          	ret
        ret = cap - head + tail;
    80006260:	0004a703          	lw	a4,0(s1)
    80006264:	4127093b          	subw	s2,a4,s2
    80006268:	00f9093b          	addw	s2,s2,a5
    8000626c:	fc1ff06f          	j	8000622c <_ZN9BufferCPP6getCntEv+0x44>

0000000080006270 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80006270:	fe010113          	addi	sp,sp,-32
    80006274:	00113c23          	sd	ra,24(sp)
    80006278:	00813823          	sd	s0,16(sp)
    8000627c:	00913423          	sd	s1,8(sp)
    80006280:	02010413          	addi	s0,sp,32
    80006284:	00050493          	mv	s1,a0
    Console::putc('\n');
    80006288:	00a00513          	li	a0,10
    8000628c:	ffffc097          	auipc	ra,0xffffc
    80006290:	f48080e7          	jalr	-184(ra) # 800021d4 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80006294:	00003517          	auipc	a0,0x3
    80006298:	07c50513          	addi	a0,a0,124 # 80009310 <CONSOLE_STATUS+0x300>
    8000629c:	00000097          	auipc	ra,0x0
    800062a0:	a0c080e7          	jalr	-1524(ra) # 80005ca8 <_Z11printStringPKc>
    while (getCnt()) {
    800062a4:	00048513          	mv	a0,s1
    800062a8:	00000097          	auipc	ra,0x0
    800062ac:	f40080e7          	jalr	-192(ra) # 800061e8 <_ZN9BufferCPP6getCntEv>
    800062b0:	02050c63          	beqz	a0,800062e8 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    800062b4:	0084b783          	ld	a5,8(s1)
    800062b8:	0104a703          	lw	a4,16(s1)
    800062bc:	00271713          	slli	a4,a4,0x2
    800062c0:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    800062c4:	0007c503          	lbu	a0,0(a5)
    800062c8:	ffffc097          	auipc	ra,0xffffc
    800062cc:	f0c080e7          	jalr	-244(ra) # 800021d4 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    800062d0:	0104a783          	lw	a5,16(s1)
    800062d4:	0017879b          	addiw	a5,a5,1
    800062d8:	0004a703          	lw	a4,0(s1)
    800062dc:	02e7e7bb          	remw	a5,a5,a4
    800062e0:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800062e4:	fc1ff06f          	j	800062a4 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800062e8:	02100513          	li	a0,33
    800062ec:	ffffc097          	auipc	ra,0xffffc
    800062f0:	ee8080e7          	jalr	-280(ra) # 800021d4 <_ZN7Console4putcEc>
    Console::putc('\n');
    800062f4:	00a00513          	li	a0,10
    800062f8:	ffffc097          	auipc	ra,0xffffc
    800062fc:	edc080e7          	jalr	-292(ra) # 800021d4 <_ZN7Console4putcEc>
    mem_free(buffer);
    80006300:	0084b503          	ld	a0,8(s1)
    80006304:	ffffb097          	auipc	ra,0xffffb
    80006308:	fa8080e7          	jalr	-88(ra) # 800012ac <_Z8mem_freePv>
    delete itemAvailable;
    8000630c:	0204b503          	ld	a0,32(s1)
    80006310:	00050863          	beqz	a0,80006320 <_ZN9BufferCPPD1Ev+0xb0>
    80006314:	00053783          	ld	a5,0(a0)
    80006318:	0087b783          	ld	a5,8(a5)
    8000631c:	000780e7          	jalr	a5
    delete spaceAvailable;
    80006320:	0184b503          	ld	a0,24(s1)
    80006324:	00050863          	beqz	a0,80006334 <_ZN9BufferCPPD1Ev+0xc4>
    80006328:	00053783          	ld	a5,0(a0)
    8000632c:	0087b783          	ld	a5,8(a5)
    80006330:	000780e7          	jalr	a5
    delete mutexTail;
    80006334:	0304b503          	ld	a0,48(s1)
    80006338:	00050863          	beqz	a0,80006348 <_ZN9BufferCPPD1Ev+0xd8>
    8000633c:	00053783          	ld	a5,0(a0)
    80006340:	0087b783          	ld	a5,8(a5)
    80006344:	000780e7          	jalr	a5
    delete mutexHead;
    80006348:	0284b503          	ld	a0,40(s1)
    8000634c:	00050863          	beqz	a0,8000635c <_ZN9BufferCPPD1Ev+0xec>
    80006350:	00053783          	ld	a5,0(a0)
    80006354:	0087b783          	ld	a5,8(a5)
    80006358:	000780e7          	jalr	a5
}
    8000635c:	01813083          	ld	ra,24(sp)
    80006360:	01013403          	ld	s0,16(sp)
    80006364:	00813483          	ld	s1,8(sp)
    80006368:	02010113          	addi	sp,sp,32
    8000636c:	00008067          	ret

0000000080006370 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80006370:	fe010113          	addi	sp,sp,-32
    80006374:	00113c23          	sd	ra,24(sp)
    80006378:	00813823          	sd	s0,16(sp)
    8000637c:	00913423          	sd	s1,8(sp)
    80006380:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80006384:	00003517          	auipc	a0,0x3
    80006388:	fb450513          	addi	a0,a0,-76 # 80009338 <CONSOLE_STATUS+0x328>
    8000638c:	00000097          	auipc	ra,0x0
    80006390:	91c080e7          	jalr	-1764(ra) # 80005ca8 <_Z11printStringPKc>
    int test = getc() - '0';
    80006394:	ffffb097          	auipc	ra,0xffffb
    80006398:	28c080e7          	jalr	652(ra) # 80001620 <_Z4getcv>
    8000639c:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    800063a0:	ffffb097          	auipc	ra,0xffffb
    800063a4:	280080e7          	jalr	640(ra) # 80001620 <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    800063a8:	00700793          	li	a5,7
    800063ac:	1097e263          	bltu	a5,s1,800064b0 <_Z8userMainv+0x140>
    800063b0:	00249493          	slli	s1,s1,0x2
    800063b4:	00003717          	auipc	a4,0x3
    800063b8:	1dc70713          	addi	a4,a4,476 # 80009590 <CONSOLE_STATUS+0x580>
    800063bc:	00e484b3          	add	s1,s1,a4
    800063c0:	0004a783          	lw	a5,0(s1)
    800063c4:	00e787b3          	add	a5,a5,a4
    800063c8:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    800063cc:	fffff097          	auipc	ra,0xfffff
    800063d0:	f54080e7          	jalr	-172(ra) # 80005320 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    800063d4:	00003517          	auipc	a0,0x3
    800063d8:	f8450513          	addi	a0,a0,-124 # 80009358 <CONSOLE_STATUS+0x348>
    800063dc:	00000097          	auipc	ra,0x0
    800063e0:	8cc080e7          	jalr	-1844(ra) # 80005ca8 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    800063e4:	01813083          	ld	ra,24(sp)
    800063e8:	01013403          	ld	s0,16(sp)
    800063ec:	00813483          	ld	s1,8(sp)
    800063f0:	02010113          	addi	sp,sp,32
    800063f4:	00008067          	ret
            Threads_CPP_API_test();
    800063f8:	ffffe097          	auipc	ra,0xffffe
    800063fc:	ae8080e7          	jalr	-1304(ra) # 80003ee0 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80006400:	00003517          	auipc	a0,0x3
    80006404:	f9850513          	addi	a0,a0,-104 # 80009398 <CONSOLE_STATUS+0x388>
    80006408:	00000097          	auipc	ra,0x0
    8000640c:	8a0080e7          	jalr	-1888(ra) # 80005ca8 <_Z11printStringPKc>
            break;
    80006410:	fd5ff06f          	j	800063e4 <_Z8userMainv+0x74>
            producerConsumer_C_API();
    80006414:	ffffd097          	auipc	ra,0xffffd
    80006418:	320080e7          	jalr	800(ra) # 80003734 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    8000641c:	00003517          	auipc	a0,0x3
    80006420:	fbc50513          	addi	a0,a0,-68 # 800093d8 <CONSOLE_STATUS+0x3c8>
    80006424:	00000097          	auipc	ra,0x0
    80006428:	884080e7          	jalr	-1916(ra) # 80005ca8 <_Z11printStringPKc>
            break;
    8000642c:	fb9ff06f          	j	800063e4 <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    80006430:	fffff097          	auipc	ra,0xfffff
    80006434:	234080e7          	jalr	564(ra) # 80005664 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80006438:	00003517          	auipc	a0,0x3
    8000643c:	ff050513          	addi	a0,a0,-16 # 80009428 <CONSOLE_STATUS+0x418>
    80006440:	00000097          	auipc	ra,0x0
    80006444:	868080e7          	jalr	-1944(ra) # 80005ca8 <_Z11printStringPKc>
            break;
    80006448:	f9dff06f          	j	800063e4 <_Z8userMainv+0x74>
            testSleeping();
    8000644c:	00000097          	auipc	ra,0x0
    80006450:	11c080e7          	jalr	284(ra) # 80006568 <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    80006454:	00003517          	auipc	a0,0x3
    80006458:	02c50513          	addi	a0,a0,44 # 80009480 <CONSOLE_STATUS+0x470>
    8000645c:	00000097          	auipc	ra,0x0
    80006460:	84c080e7          	jalr	-1972(ra) # 80005ca8 <_Z11printStringPKc>
            break;
    80006464:	f81ff06f          	j	800063e4 <_Z8userMainv+0x74>
            testConsumerProducer();
    80006468:	ffffe097          	auipc	ra,0xffffe
    8000646c:	f38080e7          	jalr	-200(ra) # 800043a0 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    80006470:	00003517          	auipc	a0,0x3
    80006474:	04050513          	addi	a0,a0,64 # 800094b0 <CONSOLE_STATUS+0x4a0>
    80006478:	00000097          	auipc	ra,0x0
    8000647c:	830080e7          	jalr	-2000(ra) # 80005ca8 <_Z11printStringPKc>
            break;
    80006480:	f65ff06f          	j	800063e4 <_Z8userMainv+0x74>
            System_Mode_test();
    80006484:	00000097          	auipc	ra,0x0
    80006488:	658080e7          	jalr	1624(ra) # 80006adc <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    8000648c:	00003517          	auipc	a0,0x3
    80006490:	06450513          	addi	a0,a0,100 # 800094f0 <CONSOLE_STATUS+0x4e0>
    80006494:	00000097          	auipc	ra,0x0
    80006498:	814080e7          	jalr	-2028(ra) # 80005ca8 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    8000649c:	00003517          	auipc	a0,0x3
    800064a0:	07450513          	addi	a0,a0,116 # 80009510 <CONSOLE_STATUS+0x500>
    800064a4:	00000097          	auipc	ra,0x0
    800064a8:	804080e7          	jalr	-2044(ra) # 80005ca8 <_Z11printStringPKc>
            break;
    800064ac:	f39ff06f          	j	800063e4 <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    800064b0:	00003517          	auipc	a0,0x3
    800064b4:	0b850513          	addi	a0,a0,184 # 80009568 <CONSOLE_STATUS+0x558>
    800064b8:	fffff097          	auipc	ra,0xfffff
    800064bc:	7f0080e7          	jalr	2032(ra) # 80005ca8 <_Z11printStringPKc>
    800064c0:	f25ff06f          	j	800063e4 <_Z8userMainv+0x74>

00000000800064c4 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    800064c4:	fe010113          	addi	sp,sp,-32
    800064c8:	00113c23          	sd	ra,24(sp)
    800064cc:	00813823          	sd	s0,16(sp)
    800064d0:	00913423          	sd	s1,8(sp)
    800064d4:	01213023          	sd	s2,0(sp)
    800064d8:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    800064dc:	00053903          	ld	s2,0(a0)
    int i = 6;
    800064e0:	00600493          	li	s1,6
    while (--i > 0) {
    800064e4:	fff4849b          	addiw	s1,s1,-1
    800064e8:	04905463          	blez	s1,80006530 <_ZL9sleepyRunPv+0x6c>
        printString("Hello ");
    800064ec:	00003517          	auipc	a0,0x3
    800064f0:	0c450513          	addi	a0,a0,196 # 800095b0 <CONSOLE_STATUS+0x5a0>
    800064f4:	fffff097          	auipc	ra,0xfffff
    800064f8:	7b4080e7          	jalr	1972(ra) # 80005ca8 <_Z11printStringPKc>
        printInt(sleep_time);
    800064fc:	00000613          	li	a2,0
    80006500:	00a00593          	li	a1,10
    80006504:	0009051b          	sext.w	a0,s2
    80006508:	00000097          	auipc	ra,0x0
    8000650c:	950080e7          	jalr	-1712(ra) # 80005e58 <_Z8printIntiii>
        printString(" !\n");
    80006510:	00003517          	auipc	a0,0x3
    80006514:	0a850513          	addi	a0,a0,168 # 800095b8 <CONSOLE_STATUS+0x5a8>
    80006518:	fffff097          	auipc	ra,0xfffff
    8000651c:	790080e7          	jalr	1936(ra) # 80005ca8 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80006520:	00090513          	mv	a0,s2
    80006524:	ffffb097          	auipc	ra,0xffffb
    80006528:	0b0080e7          	jalr	176(ra) # 800015d4 <_Z10time_sleepm>
    while (--i > 0) {
    8000652c:	fb9ff06f          	j	800064e4 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80006530:	00a00793          	li	a5,10
    80006534:	02f95933          	divu	s2,s2,a5
    80006538:	fff90913          	addi	s2,s2,-1
    8000653c:	00006797          	auipc	a5,0x6
    80006540:	87c78793          	addi	a5,a5,-1924 # 8000bdb8 <_ZL8finished>
    80006544:	01278933          	add	s2,a5,s2
    80006548:	00100793          	li	a5,1
    8000654c:	00f90023          	sb	a5,0(s2)
}
    80006550:	01813083          	ld	ra,24(sp)
    80006554:	01013403          	ld	s0,16(sp)
    80006558:	00813483          	ld	s1,8(sp)
    8000655c:	00013903          	ld	s2,0(sp)
    80006560:	02010113          	addi	sp,sp,32
    80006564:	00008067          	ret

0000000080006568 <_Z12testSleepingv>:

void testSleeping() {
    80006568:	fc010113          	addi	sp,sp,-64
    8000656c:	02113c23          	sd	ra,56(sp)
    80006570:	02813823          	sd	s0,48(sp)
    80006574:	02913423          	sd	s1,40(sp)
    80006578:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    8000657c:	00a00793          	li	a5,10
    80006580:	fcf43823          	sd	a5,-48(s0)
    80006584:	01400793          	li	a5,20
    80006588:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    8000658c:	00000493          	li	s1,0
    80006590:	02c0006f          	j	800065bc <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80006594:	00349793          	slli	a5,s1,0x3
    80006598:	fd040613          	addi	a2,s0,-48
    8000659c:	00f60633          	add	a2,a2,a5
    800065a0:	00000597          	auipc	a1,0x0
    800065a4:	f2458593          	addi	a1,a1,-220 # 800064c4 <_ZL9sleepyRunPv>
    800065a8:	fc040513          	addi	a0,s0,-64
    800065ac:	00f50533          	add	a0,a0,a5
    800065b0:	ffffb097          	auipc	ra,0xffffb
    800065b4:	d48080e7          	jalr	-696(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    800065b8:	0014849b          	addiw	s1,s1,1
    800065bc:	00100793          	li	a5,1
    800065c0:	fc97dae3          	bge	a5,s1,80006594 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    800065c4:	00005797          	auipc	a5,0x5
    800065c8:	7f47c783          	lbu	a5,2036(a5) # 8000bdb8 <_ZL8finished>
    800065cc:	fe078ce3          	beqz	a5,800065c4 <_Z12testSleepingv+0x5c>
    800065d0:	00005797          	auipc	a5,0x5
    800065d4:	7e97c783          	lbu	a5,2025(a5) # 8000bdb9 <_ZL8finished+0x1>
    800065d8:	fe0786e3          	beqz	a5,800065c4 <_Z12testSleepingv+0x5c>
}
    800065dc:	03813083          	ld	ra,56(sp)
    800065e0:	03013403          	ld	s0,48(sp)
    800065e4:	02813483          	ld	s1,40(sp)
    800065e8:	04010113          	addi	sp,sp,64
    800065ec:	00008067          	ret

00000000800065f0 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800065f0:	fe010113          	addi	sp,sp,-32
    800065f4:	00113c23          	sd	ra,24(sp)
    800065f8:	00813823          	sd	s0,16(sp)
    800065fc:	00913423          	sd	s1,8(sp)
    80006600:	01213023          	sd	s2,0(sp)
    80006604:	02010413          	addi	s0,sp,32
    80006608:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000660c:	00100793          	li	a5,1
    80006610:	02a7f863          	bgeu	a5,a0,80006640 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80006614:	00a00793          	li	a5,10
    80006618:	02f577b3          	remu	a5,a0,a5
    8000661c:	02078e63          	beqz	a5,80006658 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80006620:	fff48513          	addi	a0,s1,-1
    80006624:	00000097          	auipc	ra,0x0
    80006628:	fcc080e7          	jalr	-52(ra) # 800065f0 <_ZL9fibonaccim>
    8000662c:	00050913          	mv	s2,a0
    80006630:	ffe48513          	addi	a0,s1,-2
    80006634:	00000097          	auipc	ra,0x0
    80006638:	fbc080e7          	jalr	-68(ra) # 800065f0 <_ZL9fibonaccim>
    8000663c:	00a90533          	add	a0,s2,a0
}
    80006640:	01813083          	ld	ra,24(sp)
    80006644:	01013403          	ld	s0,16(sp)
    80006648:	00813483          	ld	s1,8(sp)
    8000664c:	00013903          	ld	s2,0(sp)
    80006650:	02010113          	addi	sp,sp,32
    80006654:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80006658:	ffffb097          	auipc	ra,0xffffb
    8000665c:	d74080e7          	jalr	-652(ra) # 800013cc <_Z15thread_dispatchv>
    80006660:	fc1ff06f          	j	80006620 <_ZL9fibonaccim+0x30>

0000000080006664 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80006664:	fe010113          	addi	sp,sp,-32
    80006668:	00113c23          	sd	ra,24(sp)
    8000666c:	00813823          	sd	s0,16(sp)
    80006670:	00913423          	sd	s1,8(sp)
    80006674:	01213023          	sd	s2,0(sp)
    80006678:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000667c:	00a00493          	li	s1,10
    80006680:	0400006f          	j	800066c0 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006684:	00003517          	auipc	a0,0x3
    80006688:	bf450513          	addi	a0,a0,-1036 # 80009278 <CONSOLE_STATUS+0x268>
    8000668c:	fffff097          	auipc	ra,0xfffff
    80006690:	61c080e7          	jalr	1564(ra) # 80005ca8 <_Z11printStringPKc>
    80006694:	00000613          	li	a2,0
    80006698:	00a00593          	li	a1,10
    8000669c:	00048513          	mv	a0,s1
    800066a0:	fffff097          	auipc	ra,0xfffff
    800066a4:	7b8080e7          	jalr	1976(ra) # 80005e58 <_Z8printIntiii>
    800066a8:	00003517          	auipc	a0,0x3
    800066ac:	dd050513          	addi	a0,a0,-560 # 80009478 <CONSOLE_STATUS+0x468>
    800066b0:	fffff097          	auipc	ra,0xfffff
    800066b4:	5f8080e7          	jalr	1528(ra) # 80005ca8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800066b8:	0014849b          	addiw	s1,s1,1
    800066bc:	0ff4f493          	andi	s1,s1,255
    800066c0:	00c00793          	li	a5,12
    800066c4:	fc97f0e3          	bgeu	a5,s1,80006684 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800066c8:	00003517          	auipc	a0,0x3
    800066cc:	bb850513          	addi	a0,a0,-1096 # 80009280 <CONSOLE_STATUS+0x270>
    800066d0:	fffff097          	auipc	ra,0xfffff
    800066d4:	5d8080e7          	jalr	1496(ra) # 80005ca8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800066d8:	00500313          	li	t1,5
    thread_dispatch();
    800066dc:	ffffb097          	auipc	ra,0xffffb
    800066e0:	cf0080e7          	jalr	-784(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800066e4:	01000513          	li	a0,16
    800066e8:	00000097          	auipc	ra,0x0
    800066ec:	f08080e7          	jalr	-248(ra) # 800065f0 <_ZL9fibonaccim>
    800066f0:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800066f4:	00003517          	auipc	a0,0x3
    800066f8:	b9c50513          	addi	a0,a0,-1124 # 80009290 <CONSOLE_STATUS+0x280>
    800066fc:	fffff097          	auipc	ra,0xfffff
    80006700:	5ac080e7          	jalr	1452(ra) # 80005ca8 <_Z11printStringPKc>
    80006704:	00000613          	li	a2,0
    80006708:	00a00593          	li	a1,10
    8000670c:	0009051b          	sext.w	a0,s2
    80006710:	fffff097          	auipc	ra,0xfffff
    80006714:	748080e7          	jalr	1864(ra) # 80005e58 <_Z8printIntiii>
    80006718:	00003517          	auipc	a0,0x3
    8000671c:	d6050513          	addi	a0,a0,-672 # 80009478 <CONSOLE_STATUS+0x468>
    80006720:	fffff097          	auipc	ra,0xfffff
    80006724:	588080e7          	jalr	1416(ra) # 80005ca8 <_Z11printStringPKc>
    80006728:	0400006f          	j	80006768 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000672c:	00003517          	auipc	a0,0x3
    80006730:	b4c50513          	addi	a0,a0,-1204 # 80009278 <CONSOLE_STATUS+0x268>
    80006734:	fffff097          	auipc	ra,0xfffff
    80006738:	574080e7          	jalr	1396(ra) # 80005ca8 <_Z11printStringPKc>
    8000673c:	00000613          	li	a2,0
    80006740:	00a00593          	li	a1,10
    80006744:	00048513          	mv	a0,s1
    80006748:	fffff097          	auipc	ra,0xfffff
    8000674c:	710080e7          	jalr	1808(ra) # 80005e58 <_Z8printIntiii>
    80006750:	00003517          	auipc	a0,0x3
    80006754:	d2850513          	addi	a0,a0,-728 # 80009478 <CONSOLE_STATUS+0x468>
    80006758:	fffff097          	auipc	ra,0xfffff
    8000675c:	550080e7          	jalr	1360(ra) # 80005ca8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80006760:	0014849b          	addiw	s1,s1,1
    80006764:	0ff4f493          	andi	s1,s1,255
    80006768:	00f00793          	li	a5,15
    8000676c:	fc97f0e3          	bgeu	a5,s1,8000672c <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80006770:	00003517          	auipc	a0,0x3
    80006774:	b3050513          	addi	a0,a0,-1232 # 800092a0 <CONSOLE_STATUS+0x290>
    80006778:	fffff097          	auipc	ra,0xfffff
    8000677c:	530080e7          	jalr	1328(ra) # 80005ca8 <_Z11printStringPKc>
    finishedD = true;
    80006780:	00100793          	li	a5,1
    80006784:	00005717          	auipc	a4,0x5
    80006788:	62f70b23          	sb	a5,1590(a4) # 8000bdba <_ZL9finishedD>
    thread_dispatch();
    8000678c:	ffffb097          	auipc	ra,0xffffb
    80006790:	c40080e7          	jalr	-960(ra) # 800013cc <_Z15thread_dispatchv>
}
    80006794:	01813083          	ld	ra,24(sp)
    80006798:	01013403          	ld	s0,16(sp)
    8000679c:	00813483          	ld	s1,8(sp)
    800067a0:	00013903          	ld	s2,0(sp)
    800067a4:	02010113          	addi	sp,sp,32
    800067a8:	00008067          	ret

00000000800067ac <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800067ac:	fe010113          	addi	sp,sp,-32
    800067b0:	00113c23          	sd	ra,24(sp)
    800067b4:	00813823          	sd	s0,16(sp)
    800067b8:	00913423          	sd	s1,8(sp)
    800067bc:	01213023          	sd	s2,0(sp)
    800067c0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800067c4:	00000493          	li	s1,0
    800067c8:	0400006f          	j	80006808 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800067cc:	00003517          	auipc	a0,0x3
    800067d0:	a7c50513          	addi	a0,a0,-1412 # 80009248 <CONSOLE_STATUS+0x238>
    800067d4:	fffff097          	auipc	ra,0xfffff
    800067d8:	4d4080e7          	jalr	1236(ra) # 80005ca8 <_Z11printStringPKc>
    800067dc:	00000613          	li	a2,0
    800067e0:	00a00593          	li	a1,10
    800067e4:	00048513          	mv	a0,s1
    800067e8:	fffff097          	auipc	ra,0xfffff
    800067ec:	670080e7          	jalr	1648(ra) # 80005e58 <_Z8printIntiii>
    800067f0:	00003517          	auipc	a0,0x3
    800067f4:	c8850513          	addi	a0,a0,-888 # 80009478 <CONSOLE_STATUS+0x468>
    800067f8:	fffff097          	auipc	ra,0xfffff
    800067fc:	4b0080e7          	jalr	1200(ra) # 80005ca8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80006800:	0014849b          	addiw	s1,s1,1
    80006804:	0ff4f493          	andi	s1,s1,255
    80006808:	00200793          	li	a5,2
    8000680c:	fc97f0e3          	bgeu	a5,s1,800067cc <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80006810:	00003517          	auipc	a0,0x3
    80006814:	a4050513          	addi	a0,a0,-1472 # 80009250 <CONSOLE_STATUS+0x240>
    80006818:	fffff097          	auipc	ra,0xfffff
    8000681c:	490080e7          	jalr	1168(ra) # 80005ca8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80006820:	00700313          	li	t1,7
    thread_dispatch();
    80006824:	ffffb097          	auipc	ra,0xffffb
    80006828:	ba8080e7          	jalr	-1112(ra) # 800013cc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000682c:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80006830:	00003517          	auipc	a0,0x3
    80006834:	a3050513          	addi	a0,a0,-1488 # 80009260 <CONSOLE_STATUS+0x250>
    80006838:	fffff097          	auipc	ra,0xfffff
    8000683c:	470080e7          	jalr	1136(ra) # 80005ca8 <_Z11printStringPKc>
    80006840:	00000613          	li	a2,0
    80006844:	00a00593          	li	a1,10
    80006848:	0009051b          	sext.w	a0,s2
    8000684c:	fffff097          	auipc	ra,0xfffff
    80006850:	60c080e7          	jalr	1548(ra) # 80005e58 <_Z8printIntiii>
    80006854:	00003517          	auipc	a0,0x3
    80006858:	c2450513          	addi	a0,a0,-988 # 80009478 <CONSOLE_STATUS+0x468>
    8000685c:	fffff097          	auipc	ra,0xfffff
    80006860:	44c080e7          	jalr	1100(ra) # 80005ca8 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80006864:	00c00513          	li	a0,12
    80006868:	00000097          	auipc	ra,0x0
    8000686c:	d88080e7          	jalr	-632(ra) # 800065f0 <_ZL9fibonaccim>
    80006870:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80006874:	00003517          	auipc	a0,0x3
    80006878:	9f450513          	addi	a0,a0,-1548 # 80009268 <CONSOLE_STATUS+0x258>
    8000687c:	fffff097          	auipc	ra,0xfffff
    80006880:	42c080e7          	jalr	1068(ra) # 80005ca8 <_Z11printStringPKc>
    80006884:	00000613          	li	a2,0
    80006888:	00a00593          	li	a1,10
    8000688c:	0009051b          	sext.w	a0,s2
    80006890:	fffff097          	auipc	ra,0xfffff
    80006894:	5c8080e7          	jalr	1480(ra) # 80005e58 <_Z8printIntiii>
    80006898:	00003517          	auipc	a0,0x3
    8000689c:	be050513          	addi	a0,a0,-1056 # 80009478 <CONSOLE_STATUS+0x468>
    800068a0:	fffff097          	auipc	ra,0xfffff
    800068a4:	408080e7          	jalr	1032(ra) # 80005ca8 <_Z11printStringPKc>
    800068a8:	0400006f          	j	800068e8 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800068ac:	00003517          	auipc	a0,0x3
    800068b0:	99c50513          	addi	a0,a0,-1636 # 80009248 <CONSOLE_STATUS+0x238>
    800068b4:	fffff097          	auipc	ra,0xfffff
    800068b8:	3f4080e7          	jalr	1012(ra) # 80005ca8 <_Z11printStringPKc>
    800068bc:	00000613          	li	a2,0
    800068c0:	00a00593          	li	a1,10
    800068c4:	00048513          	mv	a0,s1
    800068c8:	fffff097          	auipc	ra,0xfffff
    800068cc:	590080e7          	jalr	1424(ra) # 80005e58 <_Z8printIntiii>
    800068d0:	00003517          	auipc	a0,0x3
    800068d4:	ba850513          	addi	a0,a0,-1112 # 80009478 <CONSOLE_STATUS+0x468>
    800068d8:	fffff097          	auipc	ra,0xfffff
    800068dc:	3d0080e7          	jalr	976(ra) # 80005ca8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800068e0:	0014849b          	addiw	s1,s1,1
    800068e4:	0ff4f493          	andi	s1,s1,255
    800068e8:	00500793          	li	a5,5
    800068ec:	fc97f0e3          	bgeu	a5,s1,800068ac <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800068f0:	00003517          	auipc	a0,0x3
    800068f4:	93050513          	addi	a0,a0,-1744 # 80009220 <CONSOLE_STATUS+0x210>
    800068f8:	fffff097          	auipc	ra,0xfffff
    800068fc:	3b0080e7          	jalr	944(ra) # 80005ca8 <_Z11printStringPKc>
    finishedC = true;
    80006900:	00100793          	li	a5,1
    80006904:	00005717          	auipc	a4,0x5
    80006908:	4af70ba3          	sb	a5,1207(a4) # 8000bdbb <_ZL9finishedC>
    thread_dispatch();
    8000690c:	ffffb097          	auipc	ra,0xffffb
    80006910:	ac0080e7          	jalr	-1344(ra) # 800013cc <_Z15thread_dispatchv>
}
    80006914:	01813083          	ld	ra,24(sp)
    80006918:	01013403          	ld	s0,16(sp)
    8000691c:	00813483          	ld	s1,8(sp)
    80006920:	00013903          	ld	s2,0(sp)
    80006924:	02010113          	addi	sp,sp,32
    80006928:	00008067          	ret

000000008000692c <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    8000692c:	fe010113          	addi	sp,sp,-32
    80006930:	00113c23          	sd	ra,24(sp)
    80006934:	00813823          	sd	s0,16(sp)
    80006938:	00913423          	sd	s1,8(sp)
    8000693c:	01213023          	sd	s2,0(sp)
    80006940:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80006944:	00000913          	li	s2,0
    80006948:	0400006f          	j	80006988 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    8000694c:	ffffb097          	auipc	ra,0xffffb
    80006950:	a80080e7          	jalr	-1408(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006954:	00148493          	addi	s1,s1,1
    80006958:	000027b7          	lui	a5,0x2
    8000695c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006960:	0097ee63          	bltu	a5,s1,8000697c <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006964:	00000713          	li	a4,0
    80006968:	000077b7          	lui	a5,0x7
    8000696c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006970:	fce7eee3          	bltu	a5,a4,8000694c <_ZL11workerBodyBPv+0x20>
    80006974:	00170713          	addi	a4,a4,1
    80006978:	ff1ff06f          	j	80006968 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    8000697c:	00a00793          	li	a5,10
    80006980:	04f90663          	beq	s2,a5,800069cc <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80006984:	00190913          	addi	s2,s2,1
    80006988:	00f00793          	li	a5,15
    8000698c:	0527e463          	bltu	a5,s2,800069d4 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80006990:	00003517          	auipc	a0,0x3
    80006994:	8a050513          	addi	a0,a0,-1888 # 80009230 <CONSOLE_STATUS+0x220>
    80006998:	fffff097          	auipc	ra,0xfffff
    8000699c:	310080e7          	jalr	784(ra) # 80005ca8 <_Z11printStringPKc>
    800069a0:	00000613          	li	a2,0
    800069a4:	00a00593          	li	a1,10
    800069a8:	0009051b          	sext.w	a0,s2
    800069ac:	fffff097          	auipc	ra,0xfffff
    800069b0:	4ac080e7          	jalr	1196(ra) # 80005e58 <_Z8printIntiii>
    800069b4:	00003517          	auipc	a0,0x3
    800069b8:	ac450513          	addi	a0,a0,-1340 # 80009478 <CONSOLE_STATUS+0x468>
    800069bc:	fffff097          	auipc	ra,0xfffff
    800069c0:	2ec080e7          	jalr	748(ra) # 80005ca8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800069c4:	00000493          	li	s1,0
    800069c8:	f91ff06f          	j	80006958 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    800069cc:	14102ff3          	csrr	t6,sepc
    800069d0:	fb5ff06f          	j	80006984 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    800069d4:	00003517          	auipc	a0,0x3
    800069d8:	86450513          	addi	a0,a0,-1948 # 80009238 <CONSOLE_STATUS+0x228>
    800069dc:	fffff097          	auipc	ra,0xfffff
    800069e0:	2cc080e7          	jalr	716(ra) # 80005ca8 <_Z11printStringPKc>
    finishedB = true;
    800069e4:	00100793          	li	a5,1
    800069e8:	00005717          	auipc	a4,0x5
    800069ec:	3cf70a23          	sb	a5,980(a4) # 8000bdbc <_ZL9finishedB>
    thread_dispatch();
    800069f0:	ffffb097          	auipc	ra,0xffffb
    800069f4:	9dc080e7          	jalr	-1572(ra) # 800013cc <_Z15thread_dispatchv>
}
    800069f8:	01813083          	ld	ra,24(sp)
    800069fc:	01013403          	ld	s0,16(sp)
    80006a00:	00813483          	ld	s1,8(sp)
    80006a04:	00013903          	ld	s2,0(sp)
    80006a08:	02010113          	addi	sp,sp,32
    80006a0c:	00008067          	ret

0000000080006a10 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80006a10:	fe010113          	addi	sp,sp,-32
    80006a14:	00113c23          	sd	ra,24(sp)
    80006a18:	00813823          	sd	s0,16(sp)
    80006a1c:	00913423          	sd	s1,8(sp)
    80006a20:	01213023          	sd	s2,0(sp)
    80006a24:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006a28:	00000913          	li	s2,0
    80006a2c:	0380006f          	j	80006a64 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80006a30:	ffffb097          	auipc	ra,0xffffb
    80006a34:	99c080e7          	jalr	-1636(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006a38:	00148493          	addi	s1,s1,1
    80006a3c:	000027b7          	lui	a5,0x2
    80006a40:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006a44:	0097ee63          	bltu	a5,s1,80006a60 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006a48:	00000713          	li	a4,0
    80006a4c:	000077b7          	lui	a5,0x7
    80006a50:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006a54:	fce7eee3          	bltu	a5,a4,80006a30 <_ZL11workerBodyAPv+0x20>
    80006a58:	00170713          	addi	a4,a4,1
    80006a5c:	ff1ff06f          	j	80006a4c <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80006a60:	00190913          	addi	s2,s2,1
    80006a64:	00900793          	li	a5,9
    80006a68:	0527e063          	bltu	a5,s2,80006aa8 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80006a6c:	00002517          	auipc	a0,0x2
    80006a70:	7ac50513          	addi	a0,a0,1964 # 80009218 <CONSOLE_STATUS+0x208>
    80006a74:	fffff097          	auipc	ra,0xfffff
    80006a78:	234080e7          	jalr	564(ra) # 80005ca8 <_Z11printStringPKc>
    80006a7c:	00000613          	li	a2,0
    80006a80:	00a00593          	li	a1,10
    80006a84:	0009051b          	sext.w	a0,s2
    80006a88:	fffff097          	auipc	ra,0xfffff
    80006a8c:	3d0080e7          	jalr	976(ra) # 80005e58 <_Z8printIntiii>
    80006a90:	00003517          	auipc	a0,0x3
    80006a94:	9e850513          	addi	a0,a0,-1560 # 80009478 <CONSOLE_STATUS+0x468>
    80006a98:	fffff097          	auipc	ra,0xfffff
    80006a9c:	210080e7          	jalr	528(ra) # 80005ca8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006aa0:	00000493          	li	s1,0
    80006aa4:	f99ff06f          	j	80006a3c <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006aa8:	00002517          	auipc	a0,0x2
    80006aac:	77850513          	addi	a0,a0,1912 # 80009220 <CONSOLE_STATUS+0x210>
    80006ab0:	fffff097          	auipc	ra,0xfffff
    80006ab4:	1f8080e7          	jalr	504(ra) # 80005ca8 <_Z11printStringPKc>
    finishedA = true;
    80006ab8:	00100793          	li	a5,1
    80006abc:	00005717          	auipc	a4,0x5
    80006ac0:	30f700a3          	sb	a5,769(a4) # 8000bdbd <_ZL9finishedA>
}
    80006ac4:	01813083          	ld	ra,24(sp)
    80006ac8:	01013403          	ld	s0,16(sp)
    80006acc:	00813483          	ld	s1,8(sp)
    80006ad0:	00013903          	ld	s2,0(sp)
    80006ad4:	02010113          	addi	sp,sp,32
    80006ad8:	00008067          	ret

0000000080006adc <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006adc:	fd010113          	addi	sp,sp,-48
    80006ae0:	02113423          	sd	ra,40(sp)
    80006ae4:	02813023          	sd	s0,32(sp)
    80006ae8:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006aec:	00000613          	li	a2,0
    80006af0:	00000597          	auipc	a1,0x0
    80006af4:	f2058593          	addi	a1,a1,-224 # 80006a10 <_ZL11workerBodyAPv>
    80006af8:	fd040513          	addi	a0,s0,-48
    80006afc:	ffffa097          	auipc	ra,0xffffa
    80006b00:	7fc080e7          	jalr	2044(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80006b04:	00002517          	auipc	a0,0x2
    80006b08:	7ac50513          	addi	a0,a0,1964 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80006b0c:	fffff097          	auipc	ra,0xfffff
    80006b10:	19c080e7          	jalr	412(ra) # 80005ca8 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80006b14:	00000613          	li	a2,0
    80006b18:	00000597          	auipc	a1,0x0
    80006b1c:	e1458593          	addi	a1,a1,-492 # 8000692c <_ZL11workerBodyBPv>
    80006b20:	fd840513          	addi	a0,s0,-40
    80006b24:	ffffa097          	auipc	ra,0xffffa
    80006b28:	7d4080e7          	jalr	2004(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80006b2c:	00002517          	auipc	a0,0x2
    80006b30:	79c50513          	addi	a0,a0,1948 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80006b34:	fffff097          	auipc	ra,0xfffff
    80006b38:	174080e7          	jalr	372(ra) # 80005ca8 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006b3c:	00000613          	li	a2,0
    80006b40:	00000597          	auipc	a1,0x0
    80006b44:	c6c58593          	addi	a1,a1,-916 # 800067ac <_ZL11workerBodyCPv>
    80006b48:	fe040513          	addi	a0,s0,-32
    80006b4c:	ffffa097          	auipc	ra,0xffffa
    80006b50:	7ac080e7          	jalr	1964(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80006b54:	00002517          	auipc	a0,0x2
    80006b58:	78c50513          	addi	a0,a0,1932 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80006b5c:	fffff097          	auipc	ra,0xfffff
    80006b60:	14c080e7          	jalr	332(ra) # 80005ca8 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80006b64:	00000613          	li	a2,0
    80006b68:	00000597          	auipc	a1,0x0
    80006b6c:	afc58593          	addi	a1,a1,-1284 # 80006664 <_ZL11workerBodyDPv>
    80006b70:	fe840513          	addi	a0,s0,-24
    80006b74:	ffffa097          	auipc	ra,0xffffa
    80006b78:	784080e7          	jalr	1924(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80006b7c:	00002517          	auipc	a0,0x2
    80006b80:	77c50513          	addi	a0,a0,1916 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80006b84:	fffff097          	auipc	ra,0xfffff
    80006b88:	124080e7          	jalr	292(ra) # 80005ca8 <_Z11printStringPKc>
    80006b8c:	00c0006f          	j	80006b98 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006b90:	ffffb097          	auipc	ra,0xffffb
    80006b94:	83c080e7          	jalr	-1988(ra) # 800013cc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006b98:	00005797          	auipc	a5,0x5
    80006b9c:	2257c783          	lbu	a5,549(a5) # 8000bdbd <_ZL9finishedA>
    80006ba0:	fe0788e3          	beqz	a5,80006b90 <_Z16System_Mode_testv+0xb4>
    80006ba4:	00005797          	auipc	a5,0x5
    80006ba8:	2187c783          	lbu	a5,536(a5) # 8000bdbc <_ZL9finishedB>
    80006bac:	fe0782e3          	beqz	a5,80006b90 <_Z16System_Mode_testv+0xb4>
    80006bb0:	00005797          	auipc	a5,0x5
    80006bb4:	20b7c783          	lbu	a5,523(a5) # 8000bdbb <_ZL9finishedC>
    80006bb8:	fc078ce3          	beqz	a5,80006b90 <_Z16System_Mode_testv+0xb4>
    80006bbc:	00005797          	auipc	a5,0x5
    80006bc0:	1fe7c783          	lbu	a5,510(a5) # 8000bdba <_ZL9finishedD>
    80006bc4:	fc0786e3          	beqz	a5,80006b90 <_Z16System_Mode_testv+0xb4>
    }

}
    80006bc8:	02813083          	ld	ra,40(sp)
    80006bcc:	02013403          	ld	s0,32(sp)
    80006bd0:	03010113          	addi	sp,sp,48
    80006bd4:	00008067          	ret

0000000080006bd8 <start>:
    80006bd8:	ff010113          	addi	sp,sp,-16
    80006bdc:	00813423          	sd	s0,8(sp)
    80006be0:	01010413          	addi	s0,sp,16
    80006be4:	300027f3          	csrr	a5,mstatus
    80006be8:	ffffe737          	lui	a4,0xffffe
    80006bec:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff17df>
    80006bf0:	00e7f7b3          	and	a5,a5,a4
    80006bf4:	00001737          	lui	a4,0x1
    80006bf8:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006bfc:	00e7e7b3          	or	a5,a5,a4
    80006c00:	30079073          	csrw	mstatus,a5
    80006c04:	00000797          	auipc	a5,0x0
    80006c08:	16078793          	addi	a5,a5,352 # 80006d64 <system_main>
    80006c0c:	34179073          	csrw	mepc,a5
    80006c10:	00000793          	li	a5,0
    80006c14:	18079073          	csrw	satp,a5
    80006c18:	000107b7          	lui	a5,0x10
    80006c1c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006c20:	30279073          	csrw	medeleg,a5
    80006c24:	30379073          	csrw	mideleg,a5
    80006c28:	104027f3          	csrr	a5,sie
    80006c2c:	2227e793          	ori	a5,a5,546
    80006c30:	10479073          	csrw	sie,a5
    80006c34:	fff00793          	li	a5,-1
    80006c38:	00a7d793          	srli	a5,a5,0xa
    80006c3c:	3b079073          	csrw	pmpaddr0,a5
    80006c40:	00f00793          	li	a5,15
    80006c44:	3a079073          	csrw	pmpcfg0,a5
    80006c48:	f14027f3          	csrr	a5,mhartid
    80006c4c:	0200c737          	lui	a4,0x200c
    80006c50:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006c54:	0007869b          	sext.w	a3,a5
    80006c58:	00269713          	slli	a4,a3,0x2
    80006c5c:	000f4637          	lui	a2,0xf4
    80006c60:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006c64:	00d70733          	add	a4,a4,a3
    80006c68:	0037979b          	slliw	a5,a5,0x3
    80006c6c:	020046b7          	lui	a3,0x2004
    80006c70:	00d787b3          	add	a5,a5,a3
    80006c74:	00c585b3          	add	a1,a1,a2
    80006c78:	00371693          	slli	a3,a4,0x3
    80006c7c:	00005717          	auipc	a4,0x5
    80006c80:	14470713          	addi	a4,a4,324 # 8000bdc0 <timer_scratch>
    80006c84:	00b7b023          	sd	a1,0(a5)
    80006c88:	00d70733          	add	a4,a4,a3
    80006c8c:	00f73c23          	sd	a5,24(a4)
    80006c90:	02c73023          	sd	a2,32(a4)
    80006c94:	34071073          	csrw	mscratch,a4
    80006c98:	00000797          	auipc	a5,0x0
    80006c9c:	6e878793          	addi	a5,a5,1768 # 80007380 <timervec>
    80006ca0:	30579073          	csrw	mtvec,a5
    80006ca4:	300027f3          	csrr	a5,mstatus
    80006ca8:	0087e793          	ori	a5,a5,8
    80006cac:	30079073          	csrw	mstatus,a5
    80006cb0:	304027f3          	csrr	a5,mie
    80006cb4:	0807e793          	ori	a5,a5,128
    80006cb8:	30479073          	csrw	mie,a5
    80006cbc:	f14027f3          	csrr	a5,mhartid
    80006cc0:	0007879b          	sext.w	a5,a5
    80006cc4:	00078213          	mv	tp,a5
    80006cc8:	30200073          	mret
    80006ccc:	00813403          	ld	s0,8(sp)
    80006cd0:	01010113          	addi	sp,sp,16
    80006cd4:	00008067          	ret

0000000080006cd8 <timerinit>:
    80006cd8:	ff010113          	addi	sp,sp,-16
    80006cdc:	00813423          	sd	s0,8(sp)
    80006ce0:	01010413          	addi	s0,sp,16
    80006ce4:	f14027f3          	csrr	a5,mhartid
    80006ce8:	0200c737          	lui	a4,0x200c
    80006cec:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006cf0:	0007869b          	sext.w	a3,a5
    80006cf4:	00269713          	slli	a4,a3,0x2
    80006cf8:	000f4637          	lui	a2,0xf4
    80006cfc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006d00:	00d70733          	add	a4,a4,a3
    80006d04:	0037979b          	slliw	a5,a5,0x3
    80006d08:	020046b7          	lui	a3,0x2004
    80006d0c:	00d787b3          	add	a5,a5,a3
    80006d10:	00c585b3          	add	a1,a1,a2
    80006d14:	00371693          	slli	a3,a4,0x3
    80006d18:	00005717          	auipc	a4,0x5
    80006d1c:	0a870713          	addi	a4,a4,168 # 8000bdc0 <timer_scratch>
    80006d20:	00b7b023          	sd	a1,0(a5)
    80006d24:	00d70733          	add	a4,a4,a3
    80006d28:	00f73c23          	sd	a5,24(a4)
    80006d2c:	02c73023          	sd	a2,32(a4)
    80006d30:	34071073          	csrw	mscratch,a4
    80006d34:	00000797          	auipc	a5,0x0
    80006d38:	64c78793          	addi	a5,a5,1612 # 80007380 <timervec>
    80006d3c:	30579073          	csrw	mtvec,a5
    80006d40:	300027f3          	csrr	a5,mstatus
    80006d44:	0087e793          	ori	a5,a5,8
    80006d48:	30079073          	csrw	mstatus,a5
    80006d4c:	304027f3          	csrr	a5,mie
    80006d50:	0807e793          	ori	a5,a5,128
    80006d54:	30479073          	csrw	mie,a5
    80006d58:	00813403          	ld	s0,8(sp)
    80006d5c:	01010113          	addi	sp,sp,16
    80006d60:	00008067          	ret

0000000080006d64 <system_main>:
    80006d64:	fe010113          	addi	sp,sp,-32
    80006d68:	00813823          	sd	s0,16(sp)
    80006d6c:	00913423          	sd	s1,8(sp)
    80006d70:	00113c23          	sd	ra,24(sp)
    80006d74:	02010413          	addi	s0,sp,32
    80006d78:	00000097          	auipc	ra,0x0
    80006d7c:	0c4080e7          	jalr	196(ra) # 80006e3c <cpuid>
    80006d80:	00005497          	auipc	s1,0x5
    80006d84:	f6048493          	addi	s1,s1,-160 # 8000bce0 <started>
    80006d88:	02050263          	beqz	a0,80006dac <system_main+0x48>
    80006d8c:	0004a783          	lw	a5,0(s1)
    80006d90:	0007879b          	sext.w	a5,a5
    80006d94:	fe078ce3          	beqz	a5,80006d8c <system_main+0x28>
    80006d98:	0ff0000f          	fence
    80006d9c:	00003517          	auipc	a0,0x3
    80006da0:	85450513          	addi	a0,a0,-1964 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80006da4:	00001097          	auipc	ra,0x1
    80006da8:	a78080e7          	jalr	-1416(ra) # 8000781c <panic>
    80006dac:	00001097          	auipc	ra,0x1
    80006db0:	9cc080e7          	jalr	-1588(ra) # 80007778 <consoleinit>
    80006db4:	00001097          	auipc	ra,0x1
    80006db8:	158080e7          	jalr	344(ra) # 80007f0c <printfinit>
    80006dbc:	00002517          	auipc	a0,0x2
    80006dc0:	6bc50513          	addi	a0,a0,1724 # 80009478 <CONSOLE_STATUS+0x468>
    80006dc4:	00001097          	auipc	ra,0x1
    80006dc8:	ab4080e7          	jalr	-1356(ra) # 80007878 <__printf>
    80006dcc:	00002517          	auipc	a0,0x2
    80006dd0:	7f450513          	addi	a0,a0,2036 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80006dd4:	00001097          	auipc	ra,0x1
    80006dd8:	aa4080e7          	jalr	-1372(ra) # 80007878 <__printf>
    80006ddc:	00002517          	auipc	a0,0x2
    80006de0:	69c50513          	addi	a0,a0,1692 # 80009478 <CONSOLE_STATUS+0x468>
    80006de4:	00001097          	auipc	ra,0x1
    80006de8:	a94080e7          	jalr	-1388(ra) # 80007878 <__printf>
    80006dec:	00001097          	auipc	ra,0x1
    80006df0:	4ac080e7          	jalr	1196(ra) # 80008298 <kinit>
    80006df4:	00000097          	auipc	ra,0x0
    80006df8:	148080e7          	jalr	328(ra) # 80006f3c <trapinit>
    80006dfc:	00000097          	auipc	ra,0x0
    80006e00:	16c080e7          	jalr	364(ra) # 80006f68 <trapinithart>
    80006e04:	00000097          	auipc	ra,0x0
    80006e08:	5bc080e7          	jalr	1468(ra) # 800073c0 <plicinit>
    80006e0c:	00000097          	auipc	ra,0x0
    80006e10:	5dc080e7          	jalr	1500(ra) # 800073e8 <plicinithart>
    80006e14:	00000097          	auipc	ra,0x0
    80006e18:	078080e7          	jalr	120(ra) # 80006e8c <userinit>
    80006e1c:	0ff0000f          	fence
    80006e20:	00100793          	li	a5,1
    80006e24:	00002517          	auipc	a0,0x2
    80006e28:	7b450513          	addi	a0,a0,1972 # 800095d8 <CONSOLE_STATUS+0x5c8>
    80006e2c:	00f4a023          	sw	a5,0(s1)
    80006e30:	00001097          	auipc	ra,0x1
    80006e34:	a48080e7          	jalr	-1464(ra) # 80007878 <__printf>
    80006e38:	0000006f          	j	80006e38 <system_main+0xd4>

0000000080006e3c <cpuid>:
    80006e3c:	ff010113          	addi	sp,sp,-16
    80006e40:	00813423          	sd	s0,8(sp)
    80006e44:	01010413          	addi	s0,sp,16
    80006e48:	00020513          	mv	a0,tp
    80006e4c:	00813403          	ld	s0,8(sp)
    80006e50:	0005051b          	sext.w	a0,a0
    80006e54:	01010113          	addi	sp,sp,16
    80006e58:	00008067          	ret

0000000080006e5c <mycpu>:
    80006e5c:	ff010113          	addi	sp,sp,-16
    80006e60:	00813423          	sd	s0,8(sp)
    80006e64:	01010413          	addi	s0,sp,16
    80006e68:	00020793          	mv	a5,tp
    80006e6c:	00813403          	ld	s0,8(sp)
    80006e70:	0007879b          	sext.w	a5,a5
    80006e74:	00779793          	slli	a5,a5,0x7
    80006e78:	00006517          	auipc	a0,0x6
    80006e7c:	f7850513          	addi	a0,a0,-136 # 8000cdf0 <cpus>
    80006e80:	00f50533          	add	a0,a0,a5
    80006e84:	01010113          	addi	sp,sp,16
    80006e88:	00008067          	ret

0000000080006e8c <userinit>:
    80006e8c:	ff010113          	addi	sp,sp,-16
    80006e90:	00813423          	sd	s0,8(sp)
    80006e94:	01010413          	addi	s0,sp,16
    80006e98:	00813403          	ld	s0,8(sp)
    80006e9c:	01010113          	addi	sp,sp,16
    80006ea0:	ffffb317          	auipc	t1,0xffffb
    80006ea4:	cf430067          	jr	-780(t1) # 80001b94 <main>

0000000080006ea8 <either_copyout>:
    80006ea8:	ff010113          	addi	sp,sp,-16
    80006eac:	00813023          	sd	s0,0(sp)
    80006eb0:	00113423          	sd	ra,8(sp)
    80006eb4:	01010413          	addi	s0,sp,16
    80006eb8:	02051663          	bnez	a0,80006ee4 <either_copyout+0x3c>
    80006ebc:	00058513          	mv	a0,a1
    80006ec0:	00060593          	mv	a1,a2
    80006ec4:	0006861b          	sext.w	a2,a3
    80006ec8:	00002097          	auipc	ra,0x2
    80006ecc:	c5c080e7          	jalr	-932(ra) # 80008b24 <__memmove>
    80006ed0:	00813083          	ld	ra,8(sp)
    80006ed4:	00013403          	ld	s0,0(sp)
    80006ed8:	00000513          	li	a0,0
    80006edc:	01010113          	addi	sp,sp,16
    80006ee0:	00008067          	ret
    80006ee4:	00002517          	auipc	a0,0x2
    80006ee8:	73450513          	addi	a0,a0,1844 # 80009618 <CONSOLE_STATUS+0x608>
    80006eec:	00001097          	auipc	ra,0x1
    80006ef0:	930080e7          	jalr	-1744(ra) # 8000781c <panic>

0000000080006ef4 <either_copyin>:
    80006ef4:	ff010113          	addi	sp,sp,-16
    80006ef8:	00813023          	sd	s0,0(sp)
    80006efc:	00113423          	sd	ra,8(sp)
    80006f00:	01010413          	addi	s0,sp,16
    80006f04:	02059463          	bnez	a1,80006f2c <either_copyin+0x38>
    80006f08:	00060593          	mv	a1,a2
    80006f0c:	0006861b          	sext.w	a2,a3
    80006f10:	00002097          	auipc	ra,0x2
    80006f14:	c14080e7          	jalr	-1004(ra) # 80008b24 <__memmove>
    80006f18:	00813083          	ld	ra,8(sp)
    80006f1c:	00013403          	ld	s0,0(sp)
    80006f20:	00000513          	li	a0,0
    80006f24:	01010113          	addi	sp,sp,16
    80006f28:	00008067          	ret
    80006f2c:	00002517          	auipc	a0,0x2
    80006f30:	71450513          	addi	a0,a0,1812 # 80009640 <CONSOLE_STATUS+0x630>
    80006f34:	00001097          	auipc	ra,0x1
    80006f38:	8e8080e7          	jalr	-1816(ra) # 8000781c <panic>

0000000080006f3c <trapinit>:
    80006f3c:	ff010113          	addi	sp,sp,-16
    80006f40:	00813423          	sd	s0,8(sp)
    80006f44:	01010413          	addi	s0,sp,16
    80006f48:	00813403          	ld	s0,8(sp)
    80006f4c:	00002597          	auipc	a1,0x2
    80006f50:	71c58593          	addi	a1,a1,1820 # 80009668 <CONSOLE_STATUS+0x658>
    80006f54:	00006517          	auipc	a0,0x6
    80006f58:	f1c50513          	addi	a0,a0,-228 # 8000ce70 <tickslock>
    80006f5c:	01010113          	addi	sp,sp,16
    80006f60:	00001317          	auipc	t1,0x1
    80006f64:	5c830067          	jr	1480(t1) # 80008528 <initlock>

0000000080006f68 <trapinithart>:
    80006f68:	ff010113          	addi	sp,sp,-16
    80006f6c:	00813423          	sd	s0,8(sp)
    80006f70:	01010413          	addi	s0,sp,16
    80006f74:	00000797          	auipc	a5,0x0
    80006f78:	2fc78793          	addi	a5,a5,764 # 80007270 <kernelvec>
    80006f7c:	10579073          	csrw	stvec,a5
    80006f80:	00813403          	ld	s0,8(sp)
    80006f84:	01010113          	addi	sp,sp,16
    80006f88:	00008067          	ret

0000000080006f8c <usertrap>:
    80006f8c:	ff010113          	addi	sp,sp,-16
    80006f90:	00813423          	sd	s0,8(sp)
    80006f94:	01010413          	addi	s0,sp,16
    80006f98:	00813403          	ld	s0,8(sp)
    80006f9c:	01010113          	addi	sp,sp,16
    80006fa0:	00008067          	ret

0000000080006fa4 <usertrapret>:
    80006fa4:	ff010113          	addi	sp,sp,-16
    80006fa8:	00813423          	sd	s0,8(sp)
    80006fac:	01010413          	addi	s0,sp,16
    80006fb0:	00813403          	ld	s0,8(sp)
    80006fb4:	01010113          	addi	sp,sp,16
    80006fb8:	00008067          	ret

0000000080006fbc <kerneltrap>:
    80006fbc:	fe010113          	addi	sp,sp,-32
    80006fc0:	00813823          	sd	s0,16(sp)
    80006fc4:	00113c23          	sd	ra,24(sp)
    80006fc8:	00913423          	sd	s1,8(sp)
    80006fcc:	02010413          	addi	s0,sp,32
    80006fd0:	142025f3          	csrr	a1,scause
    80006fd4:	100027f3          	csrr	a5,sstatus
    80006fd8:	0027f793          	andi	a5,a5,2
    80006fdc:	10079c63          	bnez	a5,800070f4 <kerneltrap+0x138>
    80006fe0:	142027f3          	csrr	a5,scause
    80006fe4:	0207ce63          	bltz	a5,80007020 <kerneltrap+0x64>
    80006fe8:	00002517          	auipc	a0,0x2
    80006fec:	6c850513          	addi	a0,a0,1736 # 800096b0 <CONSOLE_STATUS+0x6a0>
    80006ff0:	00001097          	auipc	ra,0x1
    80006ff4:	888080e7          	jalr	-1912(ra) # 80007878 <__printf>
    80006ff8:	141025f3          	csrr	a1,sepc
    80006ffc:	14302673          	csrr	a2,stval
    80007000:	00002517          	auipc	a0,0x2
    80007004:	6c050513          	addi	a0,a0,1728 # 800096c0 <CONSOLE_STATUS+0x6b0>
    80007008:	00001097          	auipc	ra,0x1
    8000700c:	870080e7          	jalr	-1936(ra) # 80007878 <__printf>
    80007010:	00002517          	auipc	a0,0x2
    80007014:	6c850513          	addi	a0,a0,1736 # 800096d8 <CONSOLE_STATUS+0x6c8>
    80007018:	00001097          	auipc	ra,0x1
    8000701c:	804080e7          	jalr	-2044(ra) # 8000781c <panic>
    80007020:	0ff7f713          	andi	a4,a5,255
    80007024:	00900693          	li	a3,9
    80007028:	04d70063          	beq	a4,a3,80007068 <kerneltrap+0xac>
    8000702c:	fff00713          	li	a4,-1
    80007030:	03f71713          	slli	a4,a4,0x3f
    80007034:	00170713          	addi	a4,a4,1
    80007038:	fae798e3          	bne	a5,a4,80006fe8 <kerneltrap+0x2c>
    8000703c:	00000097          	auipc	ra,0x0
    80007040:	e00080e7          	jalr	-512(ra) # 80006e3c <cpuid>
    80007044:	06050663          	beqz	a0,800070b0 <kerneltrap+0xf4>
    80007048:	144027f3          	csrr	a5,sip
    8000704c:	ffd7f793          	andi	a5,a5,-3
    80007050:	14479073          	csrw	sip,a5
    80007054:	01813083          	ld	ra,24(sp)
    80007058:	01013403          	ld	s0,16(sp)
    8000705c:	00813483          	ld	s1,8(sp)
    80007060:	02010113          	addi	sp,sp,32
    80007064:	00008067          	ret
    80007068:	00000097          	auipc	ra,0x0
    8000706c:	3cc080e7          	jalr	972(ra) # 80007434 <plic_claim>
    80007070:	00a00793          	li	a5,10
    80007074:	00050493          	mv	s1,a0
    80007078:	06f50863          	beq	a0,a5,800070e8 <kerneltrap+0x12c>
    8000707c:	fc050ce3          	beqz	a0,80007054 <kerneltrap+0x98>
    80007080:	00050593          	mv	a1,a0
    80007084:	00002517          	auipc	a0,0x2
    80007088:	60c50513          	addi	a0,a0,1548 # 80009690 <CONSOLE_STATUS+0x680>
    8000708c:	00000097          	auipc	ra,0x0
    80007090:	7ec080e7          	jalr	2028(ra) # 80007878 <__printf>
    80007094:	01013403          	ld	s0,16(sp)
    80007098:	01813083          	ld	ra,24(sp)
    8000709c:	00048513          	mv	a0,s1
    800070a0:	00813483          	ld	s1,8(sp)
    800070a4:	02010113          	addi	sp,sp,32
    800070a8:	00000317          	auipc	t1,0x0
    800070ac:	3c430067          	jr	964(t1) # 8000746c <plic_complete>
    800070b0:	00006517          	auipc	a0,0x6
    800070b4:	dc050513          	addi	a0,a0,-576 # 8000ce70 <tickslock>
    800070b8:	00001097          	auipc	ra,0x1
    800070bc:	494080e7          	jalr	1172(ra) # 8000854c <acquire>
    800070c0:	00005717          	auipc	a4,0x5
    800070c4:	c2470713          	addi	a4,a4,-988 # 8000bce4 <ticks>
    800070c8:	00072783          	lw	a5,0(a4)
    800070cc:	00006517          	auipc	a0,0x6
    800070d0:	da450513          	addi	a0,a0,-604 # 8000ce70 <tickslock>
    800070d4:	0017879b          	addiw	a5,a5,1
    800070d8:	00f72023          	sw	a5,0(a4)
    800070dc:	00001097          	auipc	ra,0x1
    800070e0:	53c080e7          	jalr	1340(ra) # 80008618 <release>
    800070e4:	f65ff06f          	j	80007048 <kerneltrap+0x8c>
    800070e8:	00001097          	auipc	ra,0x1
    800070ec:	098080e7          	jalr	152(ra) # 80008180 <uartintr>
    800070f0:	fa5ff06f          	j	80007094 <kerneltrap+0xd8>
    800070f4:	00002517          	auipc	a0,0x2
    800070f8:	57c50513          	addi	a0,a0,1404 # 80009670 <CONSOLE_STATUS+0x660>
    800070fc:	00000097          	auipc	ra,0x0
    80007100:	720080e7          	jalr	1824(ra) # 8000781c <panic>

0000000080007104 <clockintr>:
    80007104:	fe010113          	addi	sp,sp,-32
    80007108:	00813823          	sd	s0,16(sp)
    8000710c:	00913423          	sd	s1,8(sp)
    80007110:	00113c23          	sd	ra,24(sp)
    80007114:	02010413          	addi	s0,sp,32
    80007118:	00006497          	auipc	s1,0x6
    8000711c:	d5848493          	addi	s1,s1,-680 # 8000ce70 <tickslock>
    80007120:	00048513          	mv	a0,s1
    80007124:	00001097          	auipc	ra,0x1
    80007128:	428080e7          	jalr	1064(ra) # 8000854c <acquire>
    8000712c:	00005717          	auipc	a4,0x5
    80007130:	bb870713          	addi	a4,a4,-1096 # 8000bce4 <ticks>
    80007134:	00072783          	lw	a5,0(a4)
    80007138:	01013403          	ld	s0,16(sp)
    8000713c:	01813083          	ld	ra,24(sp)
    80007140:	00048513          	mv	a0,s1
    80007144:	0017879b          	addiw	a5,a5,1
    80007148:	00813483          	ld	s1,8(sp)
    8000714c:	00f72023          	sw	a5,0(a4)
    80007150:	02010113          	addi	sp,sp,32
    80007154:	00001317          	auipc	t1,0x1
    80007158:	4c430067          	jr	1220(t1) # 80008618 <release>

000000008000715c <devintr>:
    8000715c:	142027f3          	csrr	a5,scause
    80007160:	00000513          	li	a0,0
    80007164:	0007c463          	bltz	a5,8000716c <devintr+0x10>
    80007168:	00008067          	ret
    8000716c:	fe010113          	addi	sp,sp,-32
    80007170:	00813823          	sd	s0,16(sp)
    80007174:	00113c23          	sd	ra,24(sp)
    80007178:	00913423          	sd	s1,8(sp)
    8000717c:	02010413          	addi	s0,sp,32
    80007180:	0ff7f713          	andi	a4,a5,255
    80007184:	00900693          	li	a3,9
    80007188:	04d70c63          	beq	a4,a3,800071e0 <devintr+0x84>
    8000718c:	fff00713          	li	a4,-1
    80007190:	03f71713          	slli	a4,a4,0x3f
    80007194:	00170713          	addi	a4,a4,1
    80007198:	00e78c63          	beq	a5,a4,800071b0 <devintr+0x54>
    8000719c:	01813083          	ld	ra,24(sp)
    800071a0:	01013403          	ld	s0,16(sp)
    800071a4:	00813483          	ld	s1,8(sp)
    800071a8:	02010113          	addi	sp,sp,32
    800071ac:	00008067          	ret
    800071b0:	00000097          	auipc	ra,0x0
    800071b4:	c8c080e7          	jalr	-884(ra) # 80006e3c <cpuid>
    800071b8:	06050663          	beqz	a0,80007224 <devintr+0xc8>
    800071bc:	144027f3          	csrr	a5,sip
    800071c0:	ffd7f793          	andi	a5,a5,-3
    800071c4:	14479073          	csrw	sip,a5
    800071c8:	01813083          	ld	ra,24(sp)
    800071cc:	01013403          	ld	s0,16(sp)
    800071d0:	00813483          	ld	s1,8(sp)
    800071d4:	00200513          	li	a0,2
    800071d8:	02010113          	addi	sp,sp,32
    800071dc:	00008067          	ret
    800071e0:	00000097          	auipc	ra,0x0
    800071e4:	254080e7          	jalr	596(ra) # 80007434 <plic_claim>
    800071e8:	00a00793          	li	a5,10
    800071ec:	00050493          	mv	s1,a0
    800071f0:	06f50663          	beq	a0,a5,8000725c <devintr+0x100>
    800071f4:	00100513          	li	a0,1
    800071f8:	fa0482e3          	beqz	s1,8000719c <devintr+0x40>
    800071fc:	00048593          	mv	a1,s1
    80007200:	00002517          	auipc	a0,0x2
    80007204:	49050513          	addi	a0,a0,1168 # 80009690 <CONSOLE_STATUS+0x680>
    80007208:	00000097          	auipc	ra,0x0
    8000720c:	670080e7          	jalr	1648(ra) # 80007878 <__printf>
    80007210:	00048513          	mv	a0,s1
    80007214:	00000097          	auipc	ra,0x0
    80007218:	258080e7          	jalr	600(ra) # 8000746c <plic_complete>
    8000721c:	00100513          	li	a0,1
    80007220:	f7dff06f          	j	8000719c <devintr+0x40>
    80007224:	00006517          	auipc	a0,0x6
    80007228:	c4c50513          	addi	a0,a0,-948 # 8000ce70 <tickslock>
    8000722c:	00001097          	auipc	ra,0x1
    80007230:	320080e7          	jalr	800(ra) # 8000854c <acquire>
    80007234:	00005717          	auipc	a4,0x5
    80007238:	ab070713          	addi	a4,a4,-1360 # 8000bce4 <ticks>
    8000723c:	00072783          	lw	a5,0(a4)
    80007240:	00006517          	auipc	a0,0x6
    80007244:	c3050513          	addi	a0,a0,-976 # 8000ce70 <tickslock>
    80007248:	0017879b          	addiw	a5,a5,1
    8000724c:	00f72023          	sw	a5,0(a4)
    80007250:	00001097          	auipc	ra,0x1
    80007254:	3c8080e7          	jalr	968(ra) # 80008618 <release>
    80007258:	f65ff06f          	j	800071bc <devintr+0x60>
    8000725c:	00001097          	auipc	ra,0x1
    80007260:	f24080e7          	jalr	-220(ra) # 80008180 <uartintr>
    80007264:	fadff06f          	j	80007210 <devintr+0xb4>
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
    800072f0:	ccdff0ef          	jal	ra,80006fbc <kerneltrap>
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
    800073fc:	a44080e7          	jalr	-1468(ra) # 80006e3c <cpuid>
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
    80007448:	9f8080e7          	jalr	-1544(ra) # 80006e3c <cpuid>
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
    80007488:	9b8080e7          	jalr	-1608(ra) # 80006e3c <cpuid>
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
    8000751c:	9dc080e7          	jalr	-1572(ra) # 80006ef4 <either_copyin>
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
    8000759c:	90048493          	addi	s1,s1,-1792 # 8000ce98 <cons>
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
    800075f4:	8b8080e7          	jalr	-1864(ra) # 80006ea8 <either_copyout>
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
    80007700:	79c90913          	addi	s2,s2,1948 # 8000ce98 <cons>
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
    80007760:	73c50513          	addi	a0,a0,1852 # 8000ce98 <cons>
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
    80007790:	70c48493          	addi	s1,s1,1804 # 8000ce98 <cons>
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
    800077f0:	76433303          	ld	t1,1892(t1) # 8000cf50 <devsw+0x10>
    800077f4:	01010113          	addi	sp,sp,16
    800077f8:	00030067          	jr	t1

00000000800077fc <console_write>:
    800077fc:	ff010113          	addi	sp,sp,-16
    80007800:	00813423          	sd	s0,8(sp)
    80007804:	01010413          	addi	s0,sp,16
    80007808:	00813403          	ld	s0,8(sp)
    8000780c:	00005317          	auipc	t1,0x5
    80007810:	74c33303          	ld	t1,1868(t1) # 8000cf58 <devsw+0x18>
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
    80007840:	7a07ae23          	sw	zero,1980(a5) # 8000cff8 <pr+0x18>
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
    80007870:	46f72e23          	sw	a5,1148(a4) # 8000bce8 <panicked>
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
    800078b8:	72c30313          	addi	t1,t1,1836 # 8000cfe0 <pr>
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
    80007cc8:	31c50513          	addi	a0,a0,796 # 8000cfe0 <pr>
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
    80007f24:	0c048493          	addi	s1,s1,192 # 8000cfe0 <pr>
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
    80007f9c:	d507a783          	lw	a5,-688(a5) # 8000bce8 <panicked>
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
    80007fc8:	d2c90913          	addi	s2,s2,-724 # 8000bcf0 <uart_tx_r>
    80007fcc:	00093783          	ld	a5,0(s2)
    80007fd0:	00004497          	auipc	s1,0x4
    80007fd4:	d2848493          	addi	s1,s1,-728 # 8000bcf8 <uart_tx_w>
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
    80008024:	fe058593          	addi	a1,a1,-32 # 8000d000 <uart_tx_buf>
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
    800080a0:	c4c72703          	lw	a4,-948(a4) # 8000bce8 <panicked>
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
    800080e4:	c1060613          	addi	a2,a2,-1008 # 8000bcf0 <uart_tx_r>
    800080e8:	00004517          	auipc	a0,0x4
    800080ec:	c1050513          	addi	a0,a0,-1008 # 8000bcf8 <uart_tx_w>
    800080f0:	00063783          	ld	a5,0(a2)
    800080f4:	00053703          	ld	a4,0(a0)
    800080f8:	04f70263          	beq	a4,a5,8000813c <uartstart+0x68>
    800080fc:	100005b7          	lui	a1,0x10000
    80008100:	00005817          	auipc	a6,0x5
    80008104:	f0080813          	addi	a6,a6,-256 # 8000d000 <uart_tx_buf>
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
    800081c8:	b2c60613          	addi	a2,a2,-1236 # 8000bcf0 <uart_tx_r>
    800081cc:	00004517          	auipc	a0,0x4
    800081d0:	b2c50513          	addi	a0,a0,-1236 # 8000bcf8 <uart_tx_w>
    800081d4:	00063783          	ld	a5,0(a2)
    800081d8:	00053703          	ld	a4,0(a0)
    800081dc:	04f70263          	beq	a4,a5,80008220 <uartintr+0xa0>
    800081e0:	100005b7          	lui	a1,0x10000
    800081e4:	00005817          	auipc	a6,0x5
    800081e8:	e1c80813          	addi	a6,a6,-484 # 8000d000 <uart_tx_buf>
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
    80008238:	abc60613          	addi	a2,a2,-1348 # 8000bcf0 <uart_tx_r>
    8000823c:	00004517          	auipc	a0,0x4
    80008240:	abc50513          	addi	a0,a0,-1348 # 8000bcf8 <uart_tx_w>
    80008244:	00063783          	ld	a5,0(a2)
    80008248:	00053703          	ld	a4,0(a0)
    8000824c:	04f70263          	beq	a4,a5,80008290 <uartintr+0x110>
    80008250:	100005b7          	lui	a1,0x10000
    80008254:	00005817          	auipc	a6,0x5
    80008258:	dac80813          	addi	a6,a6,-596 # 8000d000 <uart_tx_buf>
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
    800082a8:	d7b48493          	addi	s1,s1,-645 # 8000e01f <end+0xfff>
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
    800082e4:	d40a8a93          	addi	s5,s5,-704 # 8000d020 <end>
    800082e8:	0754ec63          	bltu	s1,s5,80008360 <kinit+0xc8>
    800082ec:	0734fa63          	bgeu	s1,s3,80008360 <kinit+0xc8>
    800082f0:	00088a37          	lui	s4,0x88
    800082f4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800082f8:	00004917          	auipc	s2,0x4
    800082fc:	a0890913          	addi	s2,s2,-1528 # 8000bd00 <kmem>
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
    800083b8:	c6ca8a93          	addi	s5,s5,-916 # 8000d020 <end>
    800083bc:	0954e263          	bltu	s1,s5,80008440 <freerange+0xd0>
    800083c0:	01100993          	li	s3,17
    800083c4:	01b99993          	slli	s3,s3,0x1b
    800083c8:	0734fc63          	bgeu	s1,s3,80008440 <freerange+0xd0>
    800083cc:	00058a13          	mv	s4,a1
    800083d0:	00004917          	auipc	s2,0x4
    800083d4:	93090913          	addi	s2,s2,-1744 # 8000bd00 <kmem>
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
    80008470:	bb478793          	addi	a5,a5,-1100 # 8000d020 <end>
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
    8000849c:	86878793          	addi	a5,a5,-1944 # 8000bd00 <kmem>
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
    800084e8:	81c78793          	addi	a5,a5,-2020 # 8000bd00 <kmem>
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
    8000857c:	8e4080e7          	jalr	-1820(ra) # 80006e5c <mycpu>
    80008580:	07852783          	lw	a5,120(a0)
    80008584:	06078e63          	beqz	a5,80008600 <acquire+0xb4>
    80008588:	fffff097          	auipc	ra,0xfffff
    8000858c:	8d4080e7          	jalr	-1836(ra) # 80006e5c <mycpu>
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
    800085c0:	8a0080e7          	jalr	-1888(ra) # 80006e5c <mycpu>
    800085c4:	01813083          	ld	ra,24(sp)
    800085c8:	01013403          	ld	s0,16(sp)
    800085cc:	00a4b823          	sd	a0,16(s1)
    800085d0:	00013903          	ld	s2,0(sp)
    800085d4:	00813483          	ld	s1,8(sp)
    800085d8:	02010113          	addi	sp,sp,32
    800085dc:	00008067          	ret
    800085e0:	0104b903          	ld	s2,16(s1)
    800085e4:	fffff097          	auipc	ra,0xfffff
    800085e8:	878080e7          	jalr	-1928(ra) # 80006e5c <mycpu>
    800085ec:	faa91ce3          	bne	s2,a0,800085a4 <acquire+0x58>
    800085f0:	00001517          	auipc	a0,0x1
    800085f4:	14850513          	addi	a0,a0,328 # 80009738 <digits+0x20>
    800085f8:	fffff097          	auipc	ra,0xfffff
    800085fc:	224080e7          	jalr	548(ra) # 8000781c <panic>
    80008600:	00195913          	srli	s2,s2,0x1
    80008604:	fffff097          	auipc	ra,0xfffff
    80008608:	858080e7          	jalr	-1960(ra) # 80006e5c <mycpu>
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
    80008654:	80c080e7          	jalr	-2036(ra) # 80006e5c <mycpu>
    80008658:	fea910e3          	bne	s2,a0,80008638 <release+0x20>
    8000865c:	0004b823          	sd	zero,16(s1)
    80008660:	0ff0000f          	fence
    80008664:	0f50000f          	fence	iorw,ow
    80008668:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000866c:	ffffe097          	auipc	ra,0xffffe
    80008670:	7f0080e7          	jalr	2032(ra) # 80006e5c <mycpu>
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
    8000870c:	754080e7          	jalr	1876(ra) # 80006e5c <mycpu>
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
    80008754:	70c080e7          	jalr	1804(ra) # 80006e5c <mycpu>
    80008758:	07852783          	lw	a5,120(a0)
    8000875c:	02078663          	beqz	a5,80008788 <push_off+0x5c>
    80008760:	ffffe097          	auipc	ra,0xffffe
    80008764:	6fc080e7          	jalr	1788(ra) # 80006e5c <mycpu>
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
    80008790:	6d0080e7          	jalr	1744(ra) # 80006e5c <mycpu>
    80008794:	0014f493          	andi	s1,s1,1
    80008798:	06952e23          	sw	s1,124(a0)
    8000879c:	fc5ff06f          	j	80008760 <push_off+0x34>

00000000800087a0 <pop_off>:
    800087a0:	ff010113          	addi	sp,sp,-16
    800087a4:	00813023          	sd	s0,0(sp)
    800087a8:	00113423          	sd	ra,8(sp)
    800087ac:	01010413          	addi	s0,sp,16
    800087b0:	ffffe097          	auipc	ra,0xffffe
    800087b4:	6ac080e7          	jalr	1708(ra) # 80006e5c <mycpu>
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
    80008844:	61c080e7          	jalr	1564(ra) # 80006e5c <mycpu>
    80008848:	07852783          	lw	a5,120(a0)
    8000884c:	02078663          	beqz	a5,80008878 <push_on+0x5c>
    80008850:	ffffe097          	auipc	ra,0xffffe
    80008854:	60c080e7          	jalr	1548(ra) # 80006e5c <mycpu>
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
    80008880:	5e0080e7          	jalr	1504(ra) # 80006e5c <mycpu>
    80008884:	0014f493          	andi	s1,s1,1
    80008888:	06952e23          	sw	s1,124(a0)
    8000888c:	fc5ff06f          	j	80008850 <push_on+0x34>

0000000080008890 <pop_on>:
    80008890:	ff010113          	addi	sp,sp,-16
    80008894:	00813023          	sd	s0,0(sp)
    80008898:	00113423          	sd	ra,8(sp)
    8000889c:	01010413          	addi	s0,sp,16
    800088a0:	ffffe097          	auipc	ra,0xffffe
    800088a4:	5bc080e7          	jalr	1468(ra) # 80006e5c <mycpu>
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
