
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	af013103          	ld	sp,-1296(sp) # 8000baf0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	235060ef          	jal	ra,80006a50 <start>

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
    80001080:	2d9010ef          	jal	ra,80002b58 <_ZN5RiscV22handle_supervisor_trapEv>

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
    80001270:	408080e7          	jalr	1032(ra) # 80002674 <_ZN15MemoryAllocator20get_number_of_blocksEm>
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

void Sem::close() {
    closed = true;
}

Sem::~Sem() {
    800016a8:	ff010113          	addi	sp,sp,-16
    800016ac:	00113423          	sd	ra,8(sp)
    800016b0:	00813023          	sd	s0,0(sp)
    800016b4:	01010413          	addi	s0,sp,16
    800016b8:	0000a797          	auipc	a5,0xa
    800016bc:	1c878793          	addi	a5,a5,456 # 8000b880 <_ZTV3Sem+0x10>
    800016c0:	00f53023          	sd	a5,0(a0) # 1000 <_entry-0x7ffff000>
    blocked_threads.free();
    800016c4:	00850513          	addi	a0,a0,8
    800016c8:	00002097          	auipc	ra,0x2
    800016cc:	894080e7          	jalr	-1900(ra) # 80002f5c <_ZN10ThreadList4freeEv>
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
    80001708:	764080e7          	jalr	1892(ra) # 80001e68 <_ZdlPv>
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
    80001748:	6fc080e7          	jalr	1788(ra) # 80001e40 <_Znwm>
    int tryWait();
    void block();
    void unblock();

private:
    explicit Sem(unsigned init = 1) : value((int) init), closed(false) {}
    8000174c:	0000a797          	auipc	a5,0xa
    80001750:	13478793          	addi	a5,a5,308 # 8000b880 <_ZTV3Sem+0x10>
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
    800017b4:	fd010113          	addi	sp,sp,-48
    800017b8:	02113423          	sd	ra,40(sp)
    800017bc:	02813023          	sd	s0,32(sp)
    800017c0:	00913c23          	sd	s1,24(sp)
    800017c4:	01213823          	sd	s2,16(sp)
    800017c8:	01313423          	sd	s3,8(sp)
    800017cc:	03010413          	addi	s0,sp,48
    800017d0:	00050913          	mv	s2,a0
    TCB* old = TCB::running;
    800017d4:	0000a997          	auipc	s3,0xa
    800017d8:	3349b983          	ld	s3,820(s3) # 8000bb08 <_GLOBAL_OFFSET_TABLE_+0x50>
    800017dc:	0009b483          	ld	s1,0(s3)
    old -> set_status(TCB::BLOCKED);
    800017e0:	00200593          	li	a1,2
    800017e4:	00048513          	mv	a0,s1
    800017e8:	00002097          	auipc	ra,0x2
    800017ec:	9c4080e7          	jalr	-1596(ra) # 800031ac <_ZN3TCB10set_statusENS_6StatusE>
    blocked_threads.push_back(old);
    800017f0:	00048593          	mv	a1,s1
    800017f4:	00890513          	addi	a0,s2,8
    800017f8:	00001097          	auipc	ra,0x1
    800017fc:	680080e7          	jalr	1664(ra) # 80002e78 <_ZN10ThreadList9push_backEP3TCB>
    TCB::running = Scheduler::get();
    80001800:	00001097          	auipc	ra,0x1
    80001804:	0c4080e7          	jalr	196(ra) # 800028c4 <_ZN9Scheduler3getEv>
    80001808:	00050593          	mv	a1,a0
    8000180c:	00a9b023          	sd	a0,0(s3)
    TCB::yield(old, TCB::running);
    80001810:	00048513          	mv	a0,s1
    80001814:	00002097          	auipc	ra,0x2
    80001818:	828080e7          	jalr	-2008(ra) # 8000303c <_ZN3TCB5yieldEPS_S0_>
}
    8000181c:	02813083          	ld	ra,40(sp)
    80001820:	02013403          	ld	s0,32(sp)
    80001824:	01813483          	ld	s1,24(sp)
    80001828:	01013903          	ld	s2,16(sp)
    8000182c:	00813983          	ld	s3,8(sp)
    80001830:	03010113          	addi	sp,sp,48
    80001834:	00008067          	ret

0000000080001838 <_ZN3Sem4waitEv>:
    if (closed) return -1;
    80001838:	01c54783          	lbu	a5,28(a0)
    8000183c:	06079063          	bnez	a5,8000189c <_ZN3Sem4waitEv+0x64>
int Sem::wait() {
    80001840:	fe010113          	addi	sp,sp,-32
    80001844:	00113c23          	sd	ra,24(sp)
    80001848:	00813823          	sd	s0,16(sp)
    8000184c:	00913423          	sd	s1,8(sp)
    80001850:	02010413          	addi	s0,sp,32
    80001854:	00050493          	mv	s1,a0
    if (--value < 0) {
    80001858:	01852783          	lw	a5,24(a0)
    8000185c:	fff7879b          	addiw	a5,a5,-1
    80001860:	00f52c23          	sw	a5,24(a0)
    80001864:	02079713          	slli	a4,a5,0x20
    80001868:	00074e63          	bltz	a4,80001884 <_ZN3Sem4waitEv+0x4c>
    return 0;
    8000186c:	00000513          	li	a0,0
}
    80001870:	01813083          	ld	ra,24(sp)
    80001874:	01013403          	ld	s0,16(sp)
    80001878:	00813483          	ld	s1,8(sp)
    8000187c:	02010113          	addi	sp,sp,32
    80001880:	00008067          	ret
        block();
    80001884:	00000097          	auipc	ra,0x0
    80001888:	f30080e7          	jalr	-208(ra) # 800017b4 <_ZN3Sem5blockEv>
        if (closed) return -2; /// thread released because Semaphore is closed
    8000188c:	01c4c783          	lbu	a5,28(s1)
    80001890:	00079a63          	bnez	a5,800018a4 <_ZN3Sem4waitEv+0x6c>
    return 0;
    80001894:	00000513          	li	a0,0
    80001898:	fd9ff06f          	j	80001870 <_ZN3Sem4waitEv+0x38>
    if (closed) return -1;
    8000189c:	fff00513          	li	a0,-1
}
    800018a0:	00008067          	ret
        if (closed) return -2; /// thread released because Semaphore is closed
    800018a4:	ffe00513          	li	a0,-2
    800018a8:	fc9ff06f          	j	80001870 <_ZN3Sem4waitEv+0x38>

00000000800018ac <_ZN3Sem7unblockEv>:

void Sem::unblock() {
    800018ac:	ff010113          	addi	sp,sp,-16
    800018b0:	00113423          	sd	ra,8(sp)
    800018b4:	00813023          	sd	s0,0(sp)
    800018b8:	01010413          	addi	s0,sp,16
    TCB* thread = blocked_threads.remove_first();
    800018bc:	00850513          	addi	a0,a0,8
    800018c0:	00001097          	auipc	ra,0x1
    800018c4:	648080e7          	jalr	1608(ra) # 80002f08 <_ZN10ThreadList12remove_firstEv>
    Scheduler::put(thread);
    800018c8:	00001097          	auipc	ra,0x1
    800018cc:	f9c080e7          	jalr	-100(ra) # 80002864 <_ZN9Scheduler3putEP3TCB>
}
    800018d0:	00813083          	ld	ra,8(sp)
    800018d4:	00013403          	ld	s0,0(sp)
    800018d8:	01010113          	addi	sp,sp,16
    800018dc:	00008067          	ret

00000000800018e0 <_ZN3Sem6signalEv>:
    if (closed) return -1;
    800018e0:	01c54783          	lbu	a5,28(a0)
    800018e4:	04079663          	bnez	a5,80001930 <_ZN3Sem6signalEv+0x50>
    if (++value <= 0) unblock();
    800018e8:	01852783          	lw	a5,24(a0)
    800018ec:	0017879b          	addiw	a5,a5,1
    800018f0:	0007871b          	sext.w	a4,a5
    800018f4:	00f52c23          	sw	a5,24(a0)
    800018f8:	00e05663          	blez	a4,80001904 <_ZN3Sem6signalEv+0x24>
    return 0;
    800018fc:	00000513          	li	a0,0
}
    80001900:	00008067          	ret
int Sem::signal() {
    80001904:	ff010113          	addi	sp,sp,-16
    80001908:	00113423          	sd	ra,8(sp)
    8000190c:	00813023          	sd	s0,0(sp)
    80001910:	01010413          	addi	s0,sp,16
    if (++value <= 0) unblock();
    80001914:	00000097          	auipc	ra,0x0
    80001918:	f98080e7          	jalr	-104(ra) # 800018ac <_ZN3Sem7unblockEv>
    return 0;
    8000191c:	00000513          	li	a0,0
}
    80001920:	00813083          	ld	ra,8(sp)
    80001924:	00013403          	ld	s0,0(sp)
    80001928:	01010113          	addi	sp,sp,16
    8000192c:	00008067          	ret
    if (closed) return -1;
    80001930:	fff00513          	li	a0,-1
    80001934:	00008067          	ret

0000000080001938 <_ZN3Sem9timedWaitEm>:

int Sem::timedWait(time_t time) {
    80001938:	ff010113          	addi	sp,sp,-16
    8000193c:	00813423          	sd	s0,8(sp)
    80001940:	01010413          	addi	s0,sp,16
    return 0;
}
    80001944:	00000513          	li	a0,0
    80001948:	00813403          	ld	s0,8(sp)
    8000194c:	01010113          	addi	sp,sp,16
    80001950:	00008067          	ret

0000000080001954 <_ZN3Sem7tryWaitEv>:

int Sem::tryWait() {
    80001954:	ff010113          	addi	sp,sp,-16
    80001958:	00813423          	sd	s0,8(sp)
    8000195c:	01010413          	addi	s0,sp,16
    return 0;
}
    80001960:	00000513          	li	a0,0
    80001964:	00813403          	ld	s0,8(sp)
    80001968:	01010113          	addi	sp,sp,16
    8000196c:	00008067          	ret

0000000080001970 <_Z13workerForeverPv>:
            *(char *) CONSOLE_TX_DATA = c;
        }
    }
}

void workerForever(void *args) {
    80001970:	ff010113          	addi	sp,sp,-16
    80001974:	00813423          	sd	s0,8(sp)
    80001978:	01010413          	addi	s0,sp,16
    while (1);
    8000197c:	0000006f          	j	8000197c <_Z13workerForeverPv+0xc>

0000000080001980 <_Z7workerAPv>:
}
void workerA(void *args) {
    80001980:	ff010113          	addi	sp,sp,-16
    80001984:	00813423          	sd	s0,8(sp)
    80001988:	01010413          	addi	s0,sp,16
    while (1) {
    8000198c:	0000006f          	j	8000198c <_Z7workerAPv+0xc>

0000000080001990 <_Z7workerBPv>:
//        time_sleep(4);
//        __putc('A');
    }
}
void workerB(void *args) {
    80001990:	ff010113          	addi	sp,sp,-16
    80001994:	00813423          	sd	s0,8(sp)
    80001998:	01010413          	addi	s0,sp,16
    while (1) {
    8000199c:	0000006f          	j	8000199c <_Z7workerBPv+0xc>

00000000800019a0 <_Z19kernelConsoleOutputPv>:
        while (*(char *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT) {
    800019a0:	0000a797          	auipc	a5,0xa
    800019a4:	1287b783          	ld	a5,296(a5) # 8000bac8 <_GLOBAL_OFFSET_TABLE_+0x10>
    800019a8:	0007b783          	ld	a5,0(a5)
    800019ac:	0007c783          	lbu	a5,0(a5)
    800019b0:	0207f793          	andi	a5,a5,32
    800019b4:	fe0786e3          	beqz	a5,800019a0 <_Z19kernelConsoleOutputPv>
void kernelConsoleOutput(void *args) {
    800019b8:	ff010113          	addi	sp,sp,-16
    800019bc:	00113423          	sd	ra,8(sp)
    800019c0:	00813023          	sd	s0,0(sp)
    800019c4:	01010413          	addi	s0,sp,16
            char c = Con::getc_output();
    800019c8:	00000097          	auipc	ra,0x0
    800019cc:	34c080e7          	jalr	844(ra) # 80001d14 <_ZN3Con11getc_outputEv>
            *(char *) CONSOLE_TX_DATA = c;
    800019d0:	0000a797          	auipc	a5,0xa
    800019d4:	1107b783          	ld	a5,272(a5) # 8000bae0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800019d8:	0007b783          	ld	a5,0(a5)
    800019dc:	00a78023          	sb	a0,0(a5)
        while (*(char *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT) {
    800019e0:	0000a797          	auipc	a5,0xa
    800019e4:	0e87b783          	ld	a5,232(a5) # 8000bac8 <_GLOBAL_OFFSET_TABLE_+0x10>
    800019e8:	0007b783          	ld	a5,0(a5)
    800019ec:	0007c783          	lbu	a5,0(a5)
    800019f0:	0207f793          	andi	a5,a5,32
    800019f4:	fe0786e3          	beqz	a5,800019e0 <_Z19kernelConsoleOutputPv+0x40>
    800019f8:	fd1ff06f          	j	800019c8 <_Z19kernelConsoleOutputPv+0x28>

00000000800019fc <_Z13workerConsolePv>:
//        time_sleep(5);
//        __putc('B');
    }
}
void workerConsole(void *args) {
    800019fc:	ff010113          	addi	sp,sp,-16
    80001a00:	00113423          	sd	ra,8(sp)
    80001a04:	00813023          	sd	s0,0(sp)
    80001a08:	01010413          	addi	s0,sp,16
    while (1) {
        char c = getc();
    80001a0c:	00000097          	auipc	ra,0x0
    80001a10:	c14080e7          	jalr	-1004(ra) # 80001620 <_Z4getcv>
        putc(c);
    80001a14:	00000097          	auipc	ra,0x0
    80001a18:	c58080e7          	jalr	-936(ra) # 8000166c <_Z4putcc>
    while (1) {
    80001a1c:	ff1ff06f          	j	80001a0c <_Z13workerConsolePv+0x10>

0000000080001a20 <_Z11printNumberm>:
void printNumber(uint64 num) {
    80001a20:	fd010113          	addi	sp,sp,-48
    80001a24:	02113423          	sd	ra,40(sp)
    80001a28:	02813023          	sd	s0,32(sp)
    80001a2c:	00913c23          	sd	s1,24(sp)
    80001a30:	01213823          	sd	s2,16(sp)
    80001a34:	01313423          	sd	s3,8(sp)
    80001a38:	03010413          	addi	s0,sp,48
    80001a3c:	00050913          	mv	s2,a0
    __putc('\n');
    80001a40:	00a00513          	li	a0,10
    80001a44:	00007097          	auipc	ra,0x7
    80001a48:	0c8080e7          	jalr	200(ra) # 80008b0c <__putc>
    __putc('N');
    80001a4c:	04e00513          	li	a0,78
    80001a50:	00007097          	auipc	ra,0x7
    80001a54:	0bc080e7          	jalr	188(ra) # 80008b0c <__putc>
    __putc(':');
    80001a58:	03a00513          	li	a0,58
    80001a5c:	00007097          	auipc	ra,0x7
    80001a60:	0b0080e7          	jalr	176(ra) # 80008b0c <__putc>
    __putc(' ');
    80001a64:	02000513          	li	a0,32
    80001a68:	00007097          	auipc	ra,0x7
    80001a6c:	0a4080e7          	jalr	164(ra) # 80008b0c <__putc>
    if (!num) __putc('0');
    80001a70:	00090863          	beqz	s2,80001a80 <_Z11printNumberm+0x60>
    uint64 num2 = 0, zero_count = 0;
    80001a74:	00000993          	li	s3,0
    80001a78:	00000493          	li	s1,0
    80001a7c:	01c0006f          	j	80001a98 <_Z11printNumberm+0x78>
    if (!num) __putc('0');
    80001a80:	03000513          	li	a0,48
    80001a84:	00007097          	auipc	ra,0x7
    80001a88:	088080e7          	jalr	136(ra) # 80008b0c <__putc>
    80001a8c:	fe9ff06f          	j	80001a74 <_Z11printNumberm+0x54>
        num /= 10;
    80001a90:	00a00793          	li	a5,10
    80001a94:	02f95933          	divu	s2,s2,a5
    while (num) {
    80001a98:	02090463          	beqz	s2,80001ac0 <_Z11printNumberm+0xa0>
        num2 *= 10;
    80001a9c:	00249793          	slli	a5,s1,0x2
    80001aa0:	009784b3          	add	s1,a5,s1
    80001aa4:	00149793          	slli	a5,s1,0x1
        num2 += num % 10;
    80001aa8:	00a00493          	li	s1,10
    80001aac:	029974b3          	remu	s1,s2,s1
    80001ab0:	00f484b3          	add	s1,s1,a5
        if (!num2) ++zero_count;
    80001ab4:	fc049ee3          	bnez	s1,80001a90 <_Z11printNumberm+0x70>
    80001ab8:	00198993          	addi	s3,s3,1
    80001abc:	fd5ff06f          	j	80001a90 <_Z11printNumberm+0x70>
    while (num2) {
    80001ac0:	02048063          	beqz	s1,80001ae0 <_Z11printNumberm+0xc0>
        __putc(num2 % 10 + '0');
    80001ac4:	00a00913          	li	s2,10
    80001ac8:	0324f533          	remu	a0,s1,s2
    80001acc:	03050513          	addi	a0,a0,48
    80001ad0:	00007097          	auipc	ra,0x7
    80001ad4:	03c080e7          	jalr	60(ra) # 80008b0c <__putc>
        num2 /= 10;
    80001ad8:	0324d4b3          	divu	s1,s1,s2
    while (num2) {
    80001adc:	fe5ff06f          	j	80001ac0 <_Z11printNumberm+0xa0>
    while (zero_count--) __putc('0');
    80001ae0:	fff98493          	addi	s1,s3,-1
    80001ae4:	00098c63          	beqz	s3,80001afc <_Z11printNumberm+0xdc>
    80001ae8:	03000513          	li	a0,48
    80001aec:	00007097          	auipc	ra,0x7
    80001af0:	020080e7          	jalr	32(ra) # 80008b0c <__putc>
    80001af4:	00048993          	mv	s3,s1
    80001af8:	fe9ff06f          	j	80001ae0 <_Z11printNumberm+0xc0>
}
    80001afc:	02813083          	ld	ra,40(sp)
    80001b00:	02013403          	ld	s0,32(sp)
    80001b04:	01813483          	ld	s1,24(sp)
    80001b08:	01013903          	ld	s2,16(sp)
    80001b0c:	00813983          	ld	s3,8(sp)
    80001b10:	03010113          	addi	sp,sp,48
    80001b14:	00008067          	ret

0000000080001b18 <_Z15userMainWrapperPv>:
    }
}

void userMain();
void userMainWrapper(void *args) {
    80001b18:	ff010113          	addi	sp,sp,-16
    80001b1c:	00113423          	sd	ra,8(sp)
    80001b20:	00813023          	sd	s0,0(sp)
    80001b24:	01010413          	addi	s0,sp,16
    userMain();
    80001b28:	00004097          	auipc	ra,0x4
    80001b2c:	73c080e7          	jalr	1852(ra) # 80006264 <_Z8userMainv>
}
    80001b30:	00813083          	ld	ra,8(sp)
    80001b34:	00013403          	ld	s0,0(sp)
    80001b38:	01010113          	addi	sp,sp,16
    80001b3c:	00008067          	ret

0000000080001b40 <main>:

int main() {
    80001b40:	fc010113          	addi	sp,sp,-64
    80001b44:	02113c23          	sd	ra,56(sp)
    80001b48:	02813823          	sd	s0,48(sp)
    80001b4c:	04010413          	addi	s0,sp,64
    /// Set interrupt routine handler
    RiscV::write_stvec((uint64) &RiscV::handle_interrupt);
    80001b50:	0000a797          	auipc	a5,0xa
    80001b54:	f987b783          	ld	a5,-104(a5) # 8000bae8 <_GLOBAL_OFFSET_TABLE_+0x30>
    __asm__ volatile ("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void RiscV::write_stvec(uint64 val) {
    __asm__ volatile ("csrw stvec, %0" : : "r"(val));
    80001b58:	10579073          	csrw	stvec,a5
    /// Initialization
    MemoryAllocator::initialize();
    80001b5c:	00001097          	auipc	ra,0x1
    80001b60:	838080e7          	jalr	-1992(ra) # 80002394 <_ZN15MemoryAllocator10initializeEv>
    Con::initialize();
    80001b64:	00000097          	auipc	ra,0x0
    80001b68:	0b8080e7          	jalr	184(ra) # 80001c1c <_ZN3Con10initializeEv>

    thread_t threads[6];

    thread_create(&threads[0], nullptr, nullptr);
    80001b6c:	00000613          	li	a2,0
    80001b70:	00000593          	li	a1,0
    80001b74:	fc040513          	addi	a0,s0,-64
    80001b78:	fffff097          	auipc	ra,0xfffff
    80001b7c:	780080e7          	jalr	1920(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running = threads[0];
    80001b80:	fc043703          	ld	a4,-64(s0)
    80001b84:	0000a797          	auipc	a5,0xa
    80001b88:	f847b783          	ld	a5,-124(a5) # 8000bb08 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001b8c:	00e7b023          	sd	a4,0(a5)
inline void RiscV::write_sip(uint64 val) {
    __asm__ volatile ("csrw sip, %0" : : "r"(val));
}

inline void RiscV::ms_sstatus(uint64 mask) {
    __asm__ volatile ("csrs sstatus, %0" : : "r"(mask));
    80001b90:	00200793          	li	a5,2
    80001b94:	1007a073          	csrs	sstatus,a5

    /// Enable software interrupts
    RiscV::ms_sstatus(RiscV::SSTATUS_SIE);

    thread_create(&threads[1], kernelConsoleOutput, nullptr); /// this gets blocked immediately
    80001b98:	00000613          	li	a2,0
    80001b9c:	00000597          	auipc	a1,0x0
    80001ba0:	e0458593          	addi	a1,a1,-508 # 800019a0 <_Z19kernelConsoleOutputPv>
    80001ba4:	fc840513          	addi	a0,s0,-56
    80001ba8:	fffff097          	auipc	ra,0xfffff
    80001bac:	750080e7          	jalr	1872(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&threads[2], workerA, nullptr);
    80001bb0:	00000613          	li	a2,0
    80001bb4:	00000597          	auipc	a1,0x0
    80001bb8:	dcc58593          	addi	a1,a1,-564 # 80001980 <_Z7workerAPv>
    80001bbc:	fd040513          	addi	a0,s0,-48
    80001bc0:	fffff097          	auipc	ra,0xfffff
    80001bc4:	738080e7          	jalr	1848(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&threads[3], workerB, nullptr);
    80001bc8:	00000613          	li	a2,0
    80001bcc:	00000597          	auipc	a1,0x0
    80001bd0:	dc458593          	addi	a1,a1,-572 # 80001990 <_Z7workerBPv>
    80001bd4:	fd840513          	addi	a0,s0,-40
    80001bd8:	fffff097          	auipc	ra,0xfffff
    80001bdc:	720080e7          	jalr	1824(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&threads[4], workerForever, nullptr);
    80001be0:	00000613          	li	a2,0
    80001be4:	00000597          	auipc	a1,0x0
    80001be8:	d8c58593          	addi	a1,a1,-628 # 80001970 <_Z13workerForeverPv>
    80001bec:	fe040513          	addi	a0,s0,-32
    80001bf0:	fffff097          	auipc	ra,0xfffff
    80001bf4:	708080e7          	jalr	1800(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&threads[5], workerConsole, nullptr); /// this as well
    80001bf8:	00000613          	li	a2,0
    80001bfc:	00000597          	auipc	a1,0x0
    80001c00:	e0058593          	addi	a1,a1,-512 # 800019fc <_Z13workerConsolePv>
    80001c04:	fe840513          	addi	a0,s0,-24
    80001c08:	fffff097          	auipc	ra,0xfffff
    80001c0c:	6f0080e7          	jalr	1776(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>

    while (1) thread_dispatch();
    80001c10:	fffff097          	auipc	ra,0xfffff
    80001c14:	7bc080e7          	jalr	1980(ra) # 800013cc <_Z15thread_dispatchv>
    80001c18:	ff9ff06f          	j	80001c10 <main+0xd0>

0000000080001c1c <_ZN3Con10initializeEv>:
bool Con::initialized = false;
BoundedBuffer* Con::input_buffer = nullptr;
BoundedBuffer* Con::output_buffer = nullptr;

void Con::initialize() {
    if (!initialized) {
    80001c1c:	0000a797          	auipc	a5,0xa
    80001c20:	f447c783          	lbu	a5,-188(a5) # 8000bb60 <_ZN3Con11initializedE>
    80001c24:	00078463          	beqz	a5,80001c2c <_ZN3Con10initializeEv+0x10>
    80001c28:	00008067          	ret
void Con::initialize() {
    80001c2c:	fe010113          	addi	sp,sp,-32
    80001c30:	00113c23          	sd	ra,24(sp)
    80001c34:	00813823          	sd	s0,16(sp)
    80001c38:	00913423          	sd	s1,8(sp)
    80001c3c:	01213023          	sd	s2,0(sp)
    80001c40:	02010413          	addi	s0,sp,32
        initialized = true;
    80001c44:	00100793          	li	a5,1
    80001c48:	0000a717          	auipc	a4,0xa
    80001c4c:	f0f70c23          	sb	a5,-232(a4) # 8000bb60 <_ZN3Con11initializedE>
        input_buffer = new BoundedBuffer();
    80001c50:	40800513          	li	a0,1032
    80001c54:	00001097          	auipc	ra,0x1
    80001c58:	ae0080e7          	jalr	-1312(ra) # 80002734 <_ZN13BoundedBuffernwEm>
    80001c5c:	00050493          	mv	s1,a0
    80001c60:	00001097          	auipc	ra,0x1
    80001c64:	a34080e7          	jalr	-1484(ra) # 80002694 <_ZN13BoundedBufferC1Ev>
    80001c68:	0000a797          	auipc	a5,0xa
    80001c6c:	f097b023          	sd	s1,-256(a5) # 8000bb68 <_ZN3Con12input_bufferE>
        output_buffer = new BoundedBuffer();
    80001c70:	40800513          	li	a0,1032
    80001c74:	00001097          	auipc	ra,0x1
    80001c78:	ac0080e7          	jalr	-1344(ra) # 80002734 <_ZN13BoundedBuffernwEm>
    80001c7c:	00050493          	mv	s1,a0
    80001c80:	00001097          	auipc	ra,0x1
    80001c84:	a14080e7          	jalr	-1516(ra) # 80002694 <_ZN13BoundedBufferC1Ev>
    80001c88:	0000a797          	auipc	a5,0xa
    80001c8c:	ee97b423          	sd	s1,-280(a5) # 8000bb70 <_ZN3Con13output_bufferE>
    }
}
    80001c90:	01813083          	ld	ra,24(sp)
    80001c94:	01013403          	ld	s0,16(sp)
    80001c98:	00813483          	ld	s1,8(sp)
    80001c9c:	00013903          	ld	s2,0(sp)
    80001ca0:	02010113          	addi	sp,sp,32
    80001ca4:	00008067          	ret
    80001ca8:	00050913          	mv	s2,a0
        input_buffer = new BoundedBuffer();
    80001cac:	00048513          	mv	a0,s1
    80001cb0:	00001097          	auipc	ra,0x1
    80001cb4:	ab4080e7          	jalr	-1356(ra) # 80002764 <_ZN13BoundedBufferdlEPv>
    80001cb8:	00090513          	mv	a0,s2
    80001cbc:	0000b097          	auipc	ra,0xb
    80001cc0:	01c080e7          	jalr	28(ra) # 8000ccd8 <_Unwind_Resume>
    80001cc4:	00050913          	mv	s2,a0
        output_buffer = new BoundedBuffer();
    80001cc8:	00048513          	mv	a0,s1
    80001ccc:	00001097          	auipc	ra,0x1
    80001cd0:	a98080e7          	jalr	-1384(ra) # 80002764 <_ZN13BoundedBufferdlEPv>
    80001cd4:	00090513          	mv	a0,s2
    80001cd8:	0000b097          	auipc	ra,0xb
    80001cdc:	000080e7          	jalr	ra # 8000ccd8 <_Unwind_Resume>

0000000080001ce0 <_ZN3Con11putc_outputEc>:

void Con::putc_output(char c) {
    80001ce0:	ff010113          	addi	sp,sp,-16
    80001ce4:	00113423          	sd	ra,8(sp)
    80001ce8:	00813023          	sd	s0,0(sp)
    80001cec:	01010413          	addi	s0,sp,16
    80001cf0:	00050593          	mv	a1,a0
    output_buffer -> putc(c);
    80001cf4:	0000a517          	auipc	a0,0xa
    80001cf8:	e7c53503          	ld	a0,-388(a0) # 8000bb70 <_ZN3Con13output_bufferE>
    80001cfc:	00001097          	auipc	ra,0x1
    80001d00:	a90080e7          	jalr	-1392(ra) # 8000278c <_ZN13BoundedBuffer4putcEc>
}
    80001d04:	00813083          	ld	ra,8(sp)
    80001d08:	00013403          	ld	s0,0(sp)
    80001d0c:	01010113          	addi	sp,sp,16
    80001d10:	00008067          	ret

0000000080001d14 <_ZN3Con11getc_outputEv>:

char Con::getc_output() {
    80001d14:	ff010113          	addi	sp,sp,-16
    80001d18:	00113423          	sd	ra,8(sp)
    80001d1c:	00813023          	sd	s0,0(sp)
    80001d20:	01010413          	addi	s0,sp,16
    return output_buffer -> getc();
    80001d24:	0000a517          	auipc	a0,0xa
    80001d28:	e4c53503          	ld	a0,-436(a0) # 8000bb70 <_ZN3Con13output_bufferE>
    80001d2c:	00001097          	auipc	ra,0x1
    80001d30:	acc080e7          	jalr	-1332(ra) # 800027f8 <_ZN13BoundedBuffer4getcEv>
}
    80001d34:	00813083          	ld	ra,8(sp)
    80001d38:	00013403          	ld	s0,0(sp)
    80001d3c:	01010113          	addi	sp,sp,16
    80001d40:	00008067          	ret

0000000080001d44 <_ZN3Con10putc_inputEc>:

void Con::putc_input(char c) {
    80001d44:	ff010113          	addi	sp,sp,-16
    80001d48:	00113423          	sd	ra,8(sp)
    80001d4c:	00813023          	sd	s0,0(sp)
    80001d50:	01010413          	addi	s0,sp,16
    80001d54:	00050593          	mv	a1,a0
    input_buffer -> putc(c);
    80001d58:	0000a517          	auipc	a0,0xa
    80001d5c:	e1053503          	ld	a0,-496(a0) # 8000bb68 <_ZN3Con12input_bufferE>
    80001d60:	00001097          	auipc	ra,0x1
    80001d64:	a2c080e7          	jalr	-1492(ra) # 8000278c <_ZN13BoundedBuffer4putcEc>
}
    80001d68:	00813083          	ld	ra,8(sp)
    80001d6c:	00013403          	ld	s0,0(sp)
    80001d70:	01010113          	addi	sp,sp,16
    80001d74:	00008067          	ret

0000000080001d78 <_ZN3Con10getc_inputEv>:

char Con::getc_input() {
    80001d78:	ff010113          	addi	sp,sp,-16
    80001d7c:	00113423          	sd	ra,8(sp)
    80001d80:	00813023          	sd	s0,0(sp)
    80001d84:	01010413          	addi	s0,sp,16
    return input_buffer -> getc();
    80001d88:	0000a517          	auipc	a0,0xa
    80001d8c:	de053503          	ld	a0,-544(a0) # 8000bb68 <_ZN3Con12input_bufferE>
    80001d90:	00001097          	auipc	ra,0x1
    80001d94:	a68080e7          	jalr	-1432(ra) # 800027f8 <_ZN13BoundedBuffer4getcEv>
    80001d98:	00813083          	ld	ra,8(sp)
    80001d9c:	00013403          	ld	s0,0(sp)
    80001da0:	01010113          	addi	sp,sp,16
    80001da4:	00008067          	ret

0000000080001da8 <_ZN6ThreadD1Ev>:

Thread::Thread(void (*body)(void *), void *arg) : myHandle(nullptr) {
    thread_create(&myHandle, body, arg);
}

Thread::~Thread() {
    80001da8:	fe010113          	addi	sp,sp,-32
    80001dac:	00113c23          	sd	ra,24(sp)
    80001db0:	00813823          	sd	s0,16(sp)
    80001db4:	00913423          	sd	s1,8(sp)
    80001db8:	02010413          	addi	s0,sp,32
    80001dbc:	00050493          	mv	s1,a0
    80001dc0:	0000a797          	auipc	a5,0xa
    80001dc4:	b1878793          	addi	a5,a5,-1256 # 8000b8d8 <_ZTV6Thread+0x10>
    80001dc8:	00f53023          	sd	a5,0(a0)
    myHandle -> set_status(TCB::FINISHED);
    80001dcc:	00300593          	li	a1,3
    80001dd0:	00853503          	ld	a0,8(a0)
    80001dd4:	00001097          	auipc	ra,0x1
    80001dd8:	3d8080e7          	jalr	984(ra) # 800031ac <_ZN3TCB10set_statusENS_6StatusE>
    delete myHandle;
    80001ddc:	0084b503          	ld	a0,8(s1)
    80001de0:	00050663          	beqz	a0,80001dec <_ZN6ThreadD1Ev+0x44>
    80001de4:	00001097          	auipc	ra,0x1
    80001de8:	514080e7          	jalr	1300(ra) # 800032f8 <_ZN3TCBdlEPv>
}
    80001dec:	01813083          	ld	ra,24(sp)
    80001df0:	01013403          	ld	s0,16(sp)
    80001df4:	00813483          	ld	s1,8(sp)
    80001df8:	02010113          	addi	sp,sp,32
    80001dfc:	00008067          	ret

0000000080001e00 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) : myHandle(nullptr) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    80001e00:	0000a797          	auipc	a5,0xa
    80001e04:	b0078793          	addi	a5,a5,-1280 # 8000b900 <_ZTV9Semaphore+0x10>
    80001e08:	00f53023          	sd	a5,0(a0)
    if (myHandle) sem_close(myHandle);
    80001e0c:	00853503          	ld	a0,8(a0)
    80001e10:	02050663          	beqz	a0,80001e3c <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    80001e14:	ff010113          	addi	sp,sp,-16
    80001e18:	00113423          	sd	ra,8(sp)
    80001e1c:	00813023          	sd	s0,0(sp)
    80001e20:	01010413          	addi	s0,sp,16
    if (myHandle) sem_close(myHandle);
    80001e24:	fffff097          	auipc	ra,0xfffff
    80001e28:	634080e7          	jalr	1588(ra) # 80001458 <_Z9sem_closeP3Sem>
}
    80001e2c:	00813083          	ld	ra,8(sp)
    80001e30:	00013403          	ld	s0,0(sp)
    80001e34:	01010113          	addi	sp,sp,16
    80001e38:	00008067          	ret
    80001e3c:	00008067          	ret

0000000080001e40 <_Znwm>:
void* operator new(size_t size){
    80001e40:	ff010113          	addi	sp,sp,-16
    80001e44:	00113423          	sd	ra,8(sp)
    80001e48:	00813023          	sd	s0,0(sp)
    80001e4c:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001e50:	fffff097          	auipc	ra,0xfffff
    80001e54:	408080e7          	jalr	1032(ra) # 80001258 <_Z9mem_allocm>
}
    80001e58:	00813083          	ld	ra,8(sp)
    80001e5c:	00013403          	ld	s0,0(sp)
    80001e60:	01010113          	addi	sp,sp,16
    80001e64:	00008067          	ret

0000000080001e68 <_ZdlPv>:
void operator delete(void* p) noexcept {
    80001e68:	ff010113          	addi	sp,sp,-16
    80001e6c:	00113423          	sd	ra,8(sp)
    80001e70:	00813023          	sd	s0,0(sp)
    80001e74:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001e78:	fffff097          	auipc	ra,0xfffff
    80001e7c:	434080e7          	jalr	1076(ra) # 800012ac <_Z8mem_freePv>
}
    80001e80:	00813083          	ld	ra,8(sp)
    80001e84:	00013403          	ld	s0,0(sp)
    80001e88:	01010113          	addi	sp,sp,16
    80001e8c:	00008067          	ret

0000000080001e90 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80001e90:	fe010113          	addi	sp,sp,-32
    80001e94:	00113c23          	sd	ra,24(sp)
    80001e98:	00813823          	sd	s0,16(sp)
    80001e9c:	00913423          	sd	s1,8(sp)
    80001ea0:	02010413          	addi	s0,sp,32
    80001ea4:	00050493          	mv	s1,a0
}
    80001ea8:	00000097          	auipc	ra,0x0
    80001eac:	f00080e7          	jalr	-256(ra) # 80001da8 <_ZN6ThreadD1Ev>
    80001eb0:	00048513          	mv	a0,s1
    80001eb4:	00000097          	auipc	ra,0x0
    80001eb8:	fb4080e7          	jalr	-76(ra) # 80001e68 <_ZdlPv>
    80001ebc:	01813083          	ld	ra,24(sp)
    80001ec0:	01013403          	ld	s0,16(sp)
    80001ec4:	00813483          	ld	s1,8(sp)
    80001ec8:	02010113          	addi	sp,sp,32
    80001ecc:	00008067          	ret

0000000080001ed0 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001ed0:	fe010113          	addi	sp,sp,-32
    80001ed4:	00113c23          	sd	ra,24(sp)
    80001ed8:	00813823          	sd	s0,16(sp)
    80001edc:	00913423          	sd	s1,8(sp)
    80001ee0:	02010413          	addi	s0,sp,32
    80001ee4:	00050493          	mv	s1,a0
}
    80001ee8:	00000097          	auipc	ra,0x0
    80001eec:	f18080e7          	jalr	-232(ra) # 80001e00 <_ZN9SemaphoreD1Ev>
    80001ef0:	00048513          	mv	a0,s1
    80001ef4:	00000097          	auipc	ra,0x0
    80001ef8:	f74080e7          	jalr	-140(ra) # 80001e68 <_ZdlPv>
    80001efc:	01813083          	ld	ra,24(sp)
    80001f00:	01013403          	ld	s0,16(sp)
    80001f04:	00813483          	ld	s1,8(sp)
    80001f08:	02010113          	addi	sp,sp,32
    80001f0c:	00008067          	ret

0000000080001f10 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) : myHandle(nullptr) {
    80001f10:	ff010113          	addi	sp,sp,-16
    80001f14:	00113423          	sd	ra,8(sp)
    80001f18:	00813023          	sd	s0,0(sp)
    80001f1c:	01010413          	addi	s0,sp,16
    80001f20:	0000a797          	auipc	a5,0xa
    80001f24:	9b878793          	addi	a5,a5,-1608 # 8000b8d8 <_ZTV6Thread+0x10>
    80001f28:	00f53023          	sd	a5,0(a0)
    80001f2c:	00053423          	sd	zero,8(a0)
    thread_create(&myHandle, body, arg);
    80001f30:	00850513          	addi	a0,a0,8
    80001f34:	fffff097          	auipc	ra,0xfffff
    80001f38:	3c4080e7          	jalr	964(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
}
    80001f3c:	00813083          	ld	ra,8(sp)
    80001f40:	00013403          	ld	s0,0(sp)
    80001f44:	01010113          	addi	sp,sp,16
    80001f48:	00008067          	ret

0000000080001f4c <_ZN6Thread5startEv>:
int Thread::start() {
    80001f4c:	ff010113          	addi	sp,sp,-16
    80001f50:	00113423          	sd	ra,8(sp)
    80001f54:	00813023          	sd	s0,0(sp)
    80001f58:	01010413          	addi	s0,sp,16
    myHandle -> start();
    80001f5c:	00853503          	ld	a0,8(a0)
    80001f60:	00001097          	auipc	ra,0x1
    80001f64:	31c080e7          	jalr	796(ra) # 8000327c <_ZN3TCB5startEv>
}
    80001f68:	00000513          	li	a0,0
    80001f6c:	00813083          	ld	ra,8(sp)
    80001f70:	00013403          	ld	s0,0(sp)
    80001f74:	01010113          	addi	sp,sp,16
    80001f78:	00008067          	ret

0000000080001f7c <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001f7c:	ff010113          	addi	sp,sp,-16
    80001f80:	00113423          	sd	ra,8(sp)
    80001f84:	00813023          	sd	s0,0(sp)
    80001f88:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001f8c:	fffff097          	auipc	ra,0xfffff
    80001f90:	440080e7          	jalr	1088(ra) # 800013cc <_Z15thread_dispatchv>
}
    80001f94:	00813083          	ld	ra,8(sp)
    80001f98:	00013403          	ld	s0,0(sp)
    80001f9c:	01010113          	addi	sp,sp,16
    80001fa0:	00008067          	ret

0000000080001fa4 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    80001fa4:	ff010113          	addi	sp,sp,-16
    80001fa8:	00113423          	sd	ra,8(sp)
    80001fac:	00813023          	sd	s0,0(sp)
    80001fb0:	01010413          	addi	s0,sp,16
    time_sleep(time);
    80001fb4:	fffff097          	auipc	ra,0xfffff
    80001fb8:	620080e7          	jalr	1568(ra) # 800015d4 <_Z10time_sleepm>
}
    80001fbc:	00000513          	li	a0,0
    80001fc0:	00813083          	ld	ra,8(sp)
    80001fc4:	00013403          	ld	s0,0(sp)
    80001fc8:	01010113          	addi	sp,sp,16
    80001fcc:	00008067          	ret

0000000080001fd0 <_ZN6ThreadC1Ev>:
Thread::Thread() : myHandle(nullptr) {
    80001fd0:	ff010113          	addi	sp,sp,-16
    80001fd4:	00813423          	sd	s0,8(sp)
    80001fd8:	01010413          	addi	s0,sp,16
    80001fdc:	0000a797          	auipc	a5,0xa
    80001fe0:	8fc78793          	addi	a5,a5,-1796 # 8000b8d8 <_ZTV6Thread+0x10>
    80001fe4:	00f53023          	sd	a5,0(a0)
    80001fe8:	00053423          	sd	zero,8(a0)
}
    80001fec:	00813403          	ld	s0,8(sp)
    80001ff0:	01010113          	addi	sp,sp,16
    80001ff4:	00008067          	ret

0000000080001ff8 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) : myHandle(nullptr) {
    80001ff8:	ff010113          	addi	sp,sp,-16
    80001ffc:	00113423          	sd	ra,8(sp)
    80002000:	00813023          	sd	s0,0(sp)
    80002004:	01010413          	addi	s0,sp,16
    80002008:	0000a797          	auipc	a5,0xa
    8000200c:	8f878793          	addi	a5,a5,-1800 # 8000b900 <_ZTV9Semaphore+0x10>
    80002010:	00f53023          	sd	a5,0(a0)
    80002014:	00053423          	sd	zero,8(a0)
    sem_open(&myHandle, init);
    80002018:	00850513          	addi	a0,a0,8
    8000201c:	fffff097          	auipc	ra,0xfffff
    80002020:	3ec080e7          	jalr	1004(ra) # 80001408 <_Z8sem_openPP3Semj>
}
    80002024:	00813083          	ld	ra,8(sp)
    80002028:	00013403          	ld	s0,0(sp)
    8000202c:	01010113          	addi	sp,sp,16
    80002030:	00008067          	ret

0000000080002034 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    if (myHandle) return sem_wait(myHandle);
    80002034:	00853503          	ld	a0,8(a0)
    80002038:	02050663          	beqz	a0,80002064 <_ZN9Semaphore4waitEv+0x30>
int Semaphore::wait() {
    8000203c:	ff010113          	addi	sp,sp,-16
    80002040:	00113423          	sd	ra,8(sp)
    80002044:	00813023          	sd	s0,0(sp)
    80002048:	01010413          	addi	s0,sp,16
    if (myHandle) return sem_wait(myHandle);
    8000204c:	fffff097          	auipc	ra,0xfffff
    80002050:	458080e7          	jalr	1112(ra) # 800014a4 <_Z8sem_waitP3Sem>
    return -1;
}
    80002054:	00813083          	ld	ra,8(sp)
    80002058:	00013403          	ld	s0,0(sp)
    8000205c:	01010113          	addi	sp,sp,16
    80002060:	00008067          	ret
    return -1;
    80002064:	fff00513          	li	a0,-1
}
    80002068:	00008067          	ret

000000008000206c <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    if (myHandle) return sem_signal(myHandle);
    8000206c:	00853503          	ld	a0,8(a0)
    80002070:	02050663          	beqz	a0,8000209c <_ZN9Semaphore6signalEv+0x30>
int Semaphore::signal() {
    80002074:	ff010113          	addi	sp,sp,-16
    80002078:	00113423          	sd	ra,8(sp)
    8000207c:	00813023          	sd	s0,0(sp)
    80002080:	01010413          	addi	s0,sp,16
    if (myHandle) return sem_signal(myHandle);
    80002084:	fffff097          	auipc	ra,0xfffff
    80002088:	46c080e7          	jalr	1132(ra) # 800014f0 <_Z10sem_signalP3Sem>
    return -1;
}
    8000208c:	00813083          	ld	ra,8(sp)
    80002090:	00013403          	ld	s0,0(sp)
    80002094:	01010113          	addi	sp,sp,16
    80002098:	00008067          	ret
    return -1;
    8000209c:	fff00513          	li	a0,-1
}
    800020a0:	00008067          	ret

00000000800020a4 <_ZN9Semaphore9timedWaitEm>:

int Semaphore::timedWait(time_t) {
    800020a4:	ff010113          	addi	sp,sp,-16
    800020a8:	00813423          	sd	s0,8(sp)
    800020ac:	01010413          	addi	s0,sp,16
    return 0;
}
    800020b0:	00000513          	li	a0,0
    800020b4:	00813403          	ld	s0,8(sp)
    800020b8:	01010113          	addi	sp,sp,16
    800020bc:	00008067          	ret

00000000800020c0 <_ZN9Semaphore7tryWaitEv>:

int Semaphore::tryWait() {
    800020c0:	ff010113          	addi	sp,sp,-16
    800020c4:	00813423          	sd	s0,8(sp)
    800020c8:	01010413          	addi	s0,sp,16
    return 0;
}
    800020cc:	00000513          	li	a0,0
    800020d0:	00813403          	ld	s0,8(sp)
    800020d4:	01010113          	addi	sp,sp,16
    800020d8:	00008067          	ret

00000000800020dc <_ZN14PeriodicThread9terminateEv>:

void PeriodicThread::terminate() {
    800020dc:	ff010113          	addi	sp,sp,-16
    800020e0:	00813423          	sd	s0,8(sp)
    800020e4:	01010413          	addi	s0,sp,16

}
    800020e8:	00813403          	ld	s0,8(sp)
    800020ec:	01010113          	addi	sp,sp,16
    800020f0:	00008067          	ret

00000000800020f4 <_ZN14PeriodicThreadC1Em>:

PeriodicThread::PeriodicThread(time_t period) {
    800020f4:	fe010113          	addi	sp,sp,-32
    800020f8:	00113c23          	sd	ra,24(sp)
    800020fc:	00813823          	sd	s0,16(sp)
    80002100:	00913423          	sd	s1,8(sp)
    80002104:	02010413          	addi	s0,sp,32
    80002108:	00050493          	mv	s1,a0
    8000210c:	00000097          	auipc	ra,0x0
    80002110:	ec4080e7          	jalr	-316(ra) # 80001fd0 <_ZN6ThreadC1Ev>
    80002114:	00009797          	auipc	a5,0x9
    80002118:	79478793          	addi	a5,a5,1940 # 8000b8a8 <_ZTV14PeriodicThread+0x10>
    8000211c:	00f4b023          	sd	a5,0(s1)

}
    80002120:	01813083          	ld	ra,24(sp)
    80002124:	01013403          	ld	s0,16(sp)
    80002128:	00813483          	ld	s1,8(sp)
    8000212c:	02010113          	addi	sp,sp,32
    80002130:	00008067          	ret

0000000080002134 <_ZN7Console4getcEv>:

char Console::getc() {
    80002134:	ff010113          	addi	sp,sp,-16
    80002138:	00113423          	sd	ra,8(sp)
    8000213c:	00813023          	sd	s0,0(sp)
    80002140:	01010413          	addi	s0,sp,16
    return ::getc();
    80002144:	fffff097          	auipc	ra,0xfffff
    80002148:	4dc080e7          	jalr	1244(ra) # 80001620 <_Z4getcv>
}
    8000214c:	00813083          	ld	ra,8(sp)
    80002150:	00013403          	ld	s0,0(sp)
    80002154:	01010113          	addi	sp,sp,16
    80002158:	00008067          	ret

000000008000215c <_ZN7Console4putcEc>:

void Console::putc(char c) {
    8000215c:	ff010113          	addi	sp,sp,-16
    80002160:	00113423          	sd	ra,8(sp)
    80002164:	00813023          	sd	s0,0(sp)
    80002168:	01010413          	addi	s0,sp,16
    ::putc(c);
    8000216c:	fffff097          	auipc	ra,0xfffff
    80002170:	500080e7          	jalr	1280(ra) # 8000166c <_Z4putcc>
}
    80002174:	00813083          	ld	ra,8(sp)
    80002178:	00013403          	ld	s0,0(sp)
    8000217c:	01010113          	addi	sp,sp,16
    80002180:	00008067          	ret

0000000080002184 <_ZN6Thread3runEv>:
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    80002184:	ff010113          	addi	sp,sp,-16
    80002188:	00813423          	sd	s0,8(sp)
    8000218c:	01010413          	addi	s0,sp,16
    80002190:	00813403          	ld	s0,8(sp)
    80002194:	01010113          	addi	sp,sp,16
    80002198:	00008067          	ret

000000008000219c <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    8000219c:	ff010113          	addi	sp,sp,-16
    800021a0:	00813423          	sd	s0,8(sp)
    800021a4:	01010413          	addi	s0,sp,16
    800021a8:	00813403          	ld	s0,8(sp)
    800021ac:	01010113          	addi	sp,sp,16
    800021b0:	00008067          	ret

00000000800021b4 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    800021b4:	ff010113          	addi	sp,sp,-16
    800021b8:	00113423          	sd	ra,8(sp)
    800021bc:	00813023          	sd	s0,0(sp)
    800021c0:	01010413          	addi	s0,sp,16
    800021c4:	00009797          	auipc	a5,0x9
    800021c8:	6e478793          	addi	a5,a5,1764 # 8000b8a8 <_ZTV14PeriodicThread+0x10>
    800021cc:	00f53023          	sd	a5,0(a0)
    800021d0:	00000097          	auipc	ra,0x0
    800021d4:	bd8080e7          	jalr	-1064(ra) # 80001da8 <_ZN6ThreadD1Ev>
    800021d8:	00813083          	ld	ra,8(sp)
    800021dc:	00013403          	ld	s0,0(sp)
    800021e0:	01010113          	addi	sp,sp,16
    800021e4:	00008067          	ret

00000000800021e8 <_ZN14PeriodicThreadD0Ev>:
    800021e8:	fe010113          	addi	sp,sp,-32
    800021ec:	00113c23          	sd	ra,24(sp)
    800021f0:	00813823          	sd	s0,16(sp)
    800021f4:	00913423          	sd	s1,8(sp)
    800021f8:	02010413          	addi	s0,sp,32
    800021fc:	00050493          	mv	s1,a0
    80002200:	00009797          	auipc	a5,0x9
    80002204:	6a878793          	addi	a5,a5,1704 # 8000b8a8 <_ZTV14PeriodicThread+0x10>
    80002208:	00f53023          	sd	a5,0(a0)
    8000220c:	00000097          	auipc	ra,0x0
    80002210:	b9c080e7          	jalr	-1124(ra) # 80001da8 <_ZN6ThreadD1Ev>
    80002214:	00048513          	mv	a0,s1
    80002218:	00000097          	auipc	ra,0x0
    8000221c:	c50080e7          	jalr	-944(ra) # 80001e68 <_ZdlPv>
    80002220:	01813083          	ld	ra,24(sp)
    80002224:	01013403          	ld	s0,16(sp)
    80002228:	00813483          	ld	s1,8(sp)
    8000222c:	02010113          	addi	sp,sp,32
    80002230:	00008067          	ret

0000000080002234 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>:
        instance = (MemoryAllocator*) MemoryAllocator::mem_alloc(sizeof(MemoryAllocator));
    }
}

/// helper function for removing element from linked list
void MemoryAllocator::removeNode(MemSeg *toRemove, MemSeg *nextSeg, bool newIsCreated) {
    80002234:	ff010113          	addi	sp,sp,-16
    80002238:	00813423          	sd	s0,8(sp)
    8000223c:	01010413          	addi	s0,sp,16
    if (toRemove -> prev) toRemove -> prev -> next = nextSeg;
    80002240:	00853783          	ld	a5,8(a0)
    80002244:	02078463          	beqz	a5,8000226c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x38>
    80002248:	00b7b823          	sd	a1,16(a5)
    else freeSegHead = nextSeg;
    if (toRemove -> next) toRemove -> next -> prev = (newIsCreated) ? toRemove -> prev : nextSeg;
    8000224c:	01053783          	ld	a5,16(a0)
    80002250:	00078863          	beqz	a5,80002260 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x2c>
    80002254:	00060463          	beqz	a2,8000225c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x28>
    80002258:	00853583          	ld	a1,8(a0)
    8000225c:	00b7b423          	sd	a1,8(a5)
}
    80002260:	00813403          	ld	s0,8(sp)
    80002264:	01010113          	addi	sp,sp,16
    80002268:	00008067          	ret
    else freeSegHead = nextSeg;
    8000226c:	0000a797          	auipc	a5,0xa
    80002270:	90b7b623          	sd	a1,-1780(a5) # 8000bb78 <_ZN15MemoryAllocator11freeSegHeadE>
    80002274:	fd9ff06f          	j	8000224c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x18>

0000000080002278 <_ZN15MemoryAllocator9mem_allocEm>:

/// allocate `size` blocks
void *MemoryAllocator::mem_alloc(size_t size) {
    80002278:	fe010113          	addi	sp,sp,-32
    8000227c:	00113c23          	sd	ra,24(sp)
    80002280:	00813823          	sd	s0,16(sp)
    80002284:	00913423          	sd	s1,8(sp)
    80002288:	01213023          	sd	s2,0(sp)
    8000228c:	02010413          	addi	s0,sp,32
    if (size <= 0) return nullptr;
    80002290:	0e050e63          	beqz	a0,8000238c <_ZN15MemoryAllocator9mem_allocEm+0x114>
    size_t bytesToAllocate = size * MEM_BLOCK_SIZE;
    80002294:	00651913          	slli	s2,a0,0x6
    MemSeg *tmp = freeSegHead;
    80002298:	0000a497          	auipc	s1,0xa
    8000229c:	8e04b483          	ld	s1,-1824(s1) # 8000bb78 <_ZN15MemoryAllocator11freeSegHeadE>
    while (tmp) {
    800022a0:	0a048e63          	beqz	s1,8000235c <_ZN15MemoryAllocator9mem_allocEm+0xe4>
        if (tmp -> size < bytesToAllocate) {
    800022a4:	0004b783          	ld	a5,0(s1)
    800022a8:	0527e463          	bltu	a5,s2,800022f0 <_ZN15MemoryAllocator9mem_allocEm+0x78>
            tmp = tmp -> next;
            continue;
        }
        /// update free memory list
        size_t remaining = tmp -> size - bytesToAllocate;
    800022ac:	412787b3          	sub	a5,a5,s2
        if (remaining < sizeof(MemSeg)) removeNode(tmp, tmp->next, false);
    800022b0:	01700713          	li	a4,23
    800022b4:	04f76263          	bltu	a4,a5,800022f8 <_ZN15MemoryAllocator9mem_allocEm+0x80>
    800022b8:	00000613          	li	a2,0
    800022bc:	0104b583          	ld	a1,16(s1)
    800022c0:	00048513          	mv	a0,s1
    800022c4:	00000097          	auipc	ra,0x0
    800022c8:	f70080e7          	jalr	-144(ra) # 80002234 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
        }

        /// update used memory list
        /// insert segment after tmp2
        MemSeg* tmp2 = nullptr;
        if (usedSegHead && (char*) tmp > (char*) usedSegHead)
    800022cc:	0000a797          	auipc	a5,0xa
    800022d0:	8b47b783          	ld	a5,-1868(a5) # 8000bb80 <_ZN15MemoryAllocator11usedSegHeadE>
    800022d4:	04078863          	beqz	a5,80002324 <_ZN15MemoryAllocator9mem_allocEm+0xac>
    800022d8:	0497fa63          	bgeu	a5,s1,8000232c <_ZN15MemoryAllocator9mem_allocEm+0xb4>
            for (tmp2 = usedSegHead; tmp2 -> next && (char*) tmp > (char*) (tmp2 -> next); tmp2 = tmp2 -> next);
    800022dc:	00078713          	mv	a4,a5
    800022e0:	0107b783          	ld	a5,16(a5)
    800022e4:	04078663          	beqz	a5,80002330 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
    800022e8:	fe97eae3          	bltu	a5,s1,800022dc <_ZN15MemoryAllocator9mem_allocEm+0x64>
    800022ec:	0440006f          	j	80002330 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
            tmp = tmp -> next;
    800022f0:	0104b483          	ld	s1,16(s1)
    while (tmp) {
    800022f4:	fadff06f          	j	800022a0 <_ZN15MemoryAllocator9mem_allocEm+0x28>
            MemSeg* newFree = (MemSeg*) ((char*) tmp + bytesToAllocate);
    800022f8:	012485b3          	add	a1,s1,s2
            newFree -> prev = tmp -> prev;
    800022fc:	0084b703          	ld	a4,8(s1)
    80002300:	00e5b423          	sd	a4,8(a1)
            newFree -> next = tmp -> next;
    80002304:	0104b703          	ld	a4,16(s1)
    80002308:	00e5b823          	sd	a4,16(a1)
            newFree -> size = remaining;
    8000230c:	00f5b023          	sd	a5,0(a1)
            removeNode(tmp, newFree, true);
    80002310:	00100613          	li	a2,1
    80002314:	00048513          	mv	a0,s1
    80002318:	00000097          	auipc	ra,0x0
    8000231c:	f1c080e7          	jalr	-228(ra) # 80002234 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
    80002320:	fadff06f          	j	800022cc <_ZN15MemoryAllocator9mem_allocEm+0x54>
        MemSeg* tmp2 = nullptr;
    80002324:	00078713          	mv	a4,a5
    80002328:	0080006f          	j	80002330 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
    8000232c:	00000713          	li	a4,0
        MemSeg* newUsed = (MemSeg*) tmp;
        newUsed -> size = bytesToAllocate;
    80002330:	0124b023          	sd	s2,0(s1)
        newUsed -> prev = tmp2;
    80002334:	00e4b423          	sd	a4,8(s1)
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    80002338:	04070063          	beqz	a4,80002378 <_ZN15MemoryAllocator9mem_allocEm+0x100>
    8000233c:	01073783          	ld	a5,16(a4)
    80002340:	00f4b823          	sd	a5,16(s1)
        if (tmp2) tmp2 -> next = newUsed;
    80002344:	02070e63          	beqz	a4,80002380 <_ZN15MemoryAllocator9mem_allocEm+0x108>
    80002348:	00973823          	sd	s1,16(a4)
        else usedSegHead = newUsed;
        if (newUsed -> next) newUsed -> next -> prev = newUsed;
    8000234c:	0104b783          	ld	a5,16(s1)
    80002350:	00078463          	beqz	a5,80002358 <_ZN15MemoryAllocator9mem_allocEm+0xe0>
    80002354:	0097b423          	sd	s1,8(a5)
        return (void*) ((char*)tmp + sizeof(MemSeg));
    80002358:	01848493          	addi	s1,s1,24
    }
    return nullptr;
}
    8000235c:	00048513          	mv	a0,s1
    80002360:	01813083          	ld	ra,24(sp)
    80002364:	01013403          	ld	s0,16(sp)
    80002368:	00813483          	ld	s1,8(sp)
    8000236c:	00013903          	ld	s2,0(sp)
    80002370:	02010113          	addi	sp,sp,32
    80002374:	00008067          	ret
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    80002378:	00070793          	mv	a5,a4
    8000237c:	fc5ff06f          	j	80002340 <_ZN15MemoryAllocator9mem_allocEm+0xc8>
        else usedSegHead = newUsed;
    80002380:	0000a797          	auipc	a5,0xa
    80002384:	8097b023          	sd	s1,-2048(a5) # 8000bb80 <_ZN15MemoryAllocator11usedSegHeadE>
    80002388:	fc5ff06f          	j	8000234c <_ZN15MemoryAllocator9mem_allocEm+0xd4>
    if (size <= 0) return nullptr;
    8000238c:	00000493          	li	s1,0
    80002390:	fcdff06f          	j	8000235c <_ZN15MemoryAllocator9mem_allocEm+0xe4>

0000000080002394 <_ZN15MemoryAllocator10initializeEv>:
    if (!instance) {
    80002394:	00009797          	auipc	a5,0x9
    80002398:	7f47b783          	ld	a5,2036(a5) # 8000bb88 <_ZN15MemoryAllocator8instanceE>
    8000239c:	00078463          	beqz	a5,800023a4 <_ZN15MemoryAllocator10initializeEv+0x10>
    800023a0:	00008067          	ret
void MemoryAllocator::initialize() {
    800023a4:	fe010113          	addi	sp,sp,-32
    800023a8:	00113c23          	sd	ra,24(sp)
    800023ac:	00813823          	sd	s0,16(sp)
    800023b0:	00913423          	sd	s1,8(sp)
    800023b4:	02010413          	addi	s0,sp,32
        freeSegHead = (MemSeg*) HEAP_START_ADDR;
    800023b8:	00009797          	auipc	a5,0x9
    800023bc:	7187b783          	ld	a5,1816(a5) # 8000bad0 <_GLOBAL_OFFSET_TABLE_+0x18>
    800023c0:	0007b783          	ld	a5,0(a5)
    800023c4:	00009497          	auipc	s1,0x9
    800023c8:	7b448493          	addi	s1,s1,1972 # 8000bb78 <_ZN15MemoryAllocator11freeSegHeadE>
    800023cc:	00f4b023          	sd	a5,0(s1)
        freeSegHead -> size = (size_t) HEAP_END_ADDR - (size_t) HEAP_START_ADDR;
    800023d0:	00009717          	auipc	a4,0x9
    800023d4:	74073703          	ld	a4,1856(a4) # 8000bb10 <_GLOBAL_OFFSET_TABLE_+0x58>
    800023d8:	00073703          	ld	a4,0(a4)
    800023dc:	40f70733          	sub	a4,a4,a5
    800023e0:	00e7b023          	sd	a4,0(a5)
        freeSegHead -> prev = nullptr;
    800023e4:	0004b783          	ld	a5,0(s1)
    800023e8:	0007b423          	sd	zero,8(a5)
        freeSegHead -> next = nullptr;
    800023ec:	0007b823          	sd	zero,16(a5)
        instance = (MemoryAllocator*) MemoryAllocator::mem_alloc(sizeof(MemoryAllocator));
    800023f0:	00100513          	li	a0,1
    800023f4:	00000097          	auipc	ra,0x0
    800023f8:	e84080e7          	jalr	-380(ra) # 80002278 <_ZN15MemoryAllocator9mem_allocEm>
    800023fc:	00a4b823          	sd	a0,16(s1)
}
    80002400:	01813083          	ld	ra,24(sp)
    80002404:	01013403          	ld	s0,16(sp)
    80002408:	00813483          	ld	s1,8(sp)
    8000240c:	02010113          	addi	sp,sp,32
    80002410:	00008067          	ret

0000000080002414 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>:
    }
    return 0;
}

/// join free segment with next if possible
void MemoryAllocator::tryToJoin(MemSeg *seg) {
    80002414:	ff010113          	addi	sp,sp,-16
    80002418:	00813423          	sd	s0,8(sp)
    8000241c:	01010413          	addi	s0,sp,16
    if (seg -> next && (char*) seg + seg -> size == (char*) seg -> next) {
    80002420:	01053783          	ld	a5,16(a0)
    80002424:	00078863          	beqz	a5,80002434 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    80002428:	00053703          	ld	a4,0(a0)
    8000242c:	00e506b3          	add	a3,a0,a4
    80002430:	00d78863          	beq	a5,a3,80002440 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x2c>
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
        seg -> next = seg -> next -> next;
        if (seg -> next) seg -> next -> prev = seg;
    }
}
    80002434:	00813403          	ld	s0,8(sp)
    80002438:	01010113          	addi	sp,sp,16
    8000243c:	00008067          	ret
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
    80002440:	0007b683          	ld	a3,0(a5)
    80002444:	00d70733          	add	a4,a4,a3
    80002448:	01870713          	addi	a4,a4,24
    8000244c:	00e53023          	sd	a4,0(a0)
        seg -> next = seg -> next -> next;
    80002450:	0107b783          	ld	a5,16(a5)
    80002454:	00f53823          	sd	a5,16(a0)
        if (seg -> next) seg -> next -> prev = seg;
    80002458:	fc078ee3          	beqz	a5,80002434 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    8000245c:	00a7b423          	sd	a0,8(a5)
}
    80002460:	fd5ff06f          	j	80002434 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>

0000000080002464 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    80002464:	14050263          	beqz	a0,800025a8 <_ZN15MemoryAllocator8mem_freeEPv+0x144>
int MemoryAllocator::mem_free(void *addr) {
    80002468:	fd010113          	addi	sp,sp,-48
    8000246c:	02113423          	sd	ra,40(sp)
    80002470:	02813023          	sd	s0,32(sp)
    80002474:	00913c23          	sd	s1,24(sp)
    80002478:	01213823          	sd	s2,16(sp)
    8000247c:	01313423          	sd	s3,8(sp)
    80002480:	03010413          	addi	s0,sp,48
    80002484:	00050913          	mv	s2,a0
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    80002488:	00009797          	auipc	a5,0x9
    8000248c:	6487b783          	ld	a5,1608(a5) # 8000bad0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002490:	0007b783          	ld	a5,0(a5)
    80002494:	10f56e63          	bltu	a0,a5,800025b0 <_ZN15MemoryAllocator8mem_freeEPv+0x14c>
    80002498:	00009797          	auipc	a5,0x9
    8000249c:	6787b783          	ld	a5,1656(a5) # 8000bb10 <_GLOBAL_OFFSET_TABLE_+0x58>
    800024a0:	0007b783          	ld	a5,0(a5)
    800024a4:	10a7ea63          	bltu	a5,a0,800025b8 <_ZN15MemoryAllocator8mem_freeEPv+0x154>
    if (!usedSegHead) return -2;
    800024a8:	00009797          	auipc	a5,0x9
    800024ac:	6d87b783          	ld	a5,1752(a5) # 8000bb80 <_ZN15MemoryAllocator11usedSegHeadE>
    800024b0:	10078863          	beqz	a5,800025c0 <_ZN15MemoryAllocator8mem_freeEPv+0x15c>
    addr = (void*) ((char*) addr - sizeof(MemSeg));
    800024b4:	fe850493          	addi	s1,a0,-24
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    800024b8:	00078863          	beqz	a5,800024c8 <_ZN15MemoryAllocator8mem_freeEPv+0x64>
        if (tmp == segToFree) {
    800024bc:	08978e63          	beq	a5,s1,80002558 <_ZN15MemoryAllocator8mem_freeEPv+0xf4>
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    800024c0:	0107b783          	ld	a5,16(a5)
    800024c4:	ff5ff06f          	j	800024b8 <_ZN15MemoryAllocator8mem_freeEPv+0x54>
    bool found = false;
    800024c8:	00000793          	li	a5,0
    if (!found) return -3;
    800024cc:	0e078e63          	beqz	a5,800025c8 <_ZN15MemoryAllocator8mem_freeEPv+0x164>
    removeNode(segToFree, segToFree -> next, false);
    800024d0:	00000613          	li	a2,0
    800024d4:	ff893583          	ld	a1,-8(s2)
    800024d8:	00048513          	mv	a0,s1
    800024dc:	00000097          	auipc	ra,0x0
    800024e0:	d58080e7          	jalr	-680(ra) # 80002234 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
    if (!freeSegHead) {
    800024e4:	00009797          	auipc	a5,0x9
    800024e8:	6947b783          	ld	a5,1684(a5) # 8000bb78 <_ZN15MemoryAllocator11freeSegHeadE>
    800024ec:	06078a63          	beqz	a5,80002560 <_ZN15MemoryAllocator8mem_freeEPv+0xfc>
    else if ((char*) addr < (char*) freeSegHead) {
    800024f0:	08f4e463          	bltu	s1,a5,80002578 <_ZN15MemoryAllocator8mem_freeEPv+0x114>
        for (tmp = freeSegHead; tmp -> next && (char*) (tmp -> next) < (char*) segToFree; tmp = tmp -> next);
    800024f4:	00078993          	mv	s3,a5
    800024f8:	0107b783          	ld	a5,16(a5)
    800024fc:	00078463          	beqz	a5,80002504 <_ZN15MemoryAllocator8mem_freeEPv+0xa0>
    80002500:	fe97eae3          	bltu	a5,s1,800024f4 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
        segToFree -> prev = tmp;
    80002504:	ff393823          	sd	s3,-16(s2)
        segToFree -> next = tmp -> next;
    80002508:	0109b783          	ld	a5,16(s3)
    8000250c:	fef93c23          	sd	a5,-8(s2)
        tmp -> next = segToFree;
    80002510:	0099b823          	sd	s1,16(s3)
        if (segToFree -> next) segToFree -> next -> prev = segToFree;
    80002514:	ff893783          	ld	a5,-8(s2)
    80002518:	00078463          	beqz	a5,80002520 <_ZN15MemoryAllocator8mem_freeEPv+0xbc>
    8000251c:	0097b423          	sd	s1,8(a5)
        tryToJoin(segToFree);
    80002520:	00048513          	mv	a0,s1
    80002524:	00000097          	auipc	ra,0x0
    80002528:	ef0080e7          	jalr	-272(ra) # 80002414 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
        tryToJoin(tmp);
    8000252c:	00098513          	mv	a0,s3
    80002530:	00000097          	auipc	ra,0x0
    80002534:	ee4080e7          	jalr	-284(ra) # 80002414 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    80002538:	00000513          	li	a0,0
}
    8000253c:	02813083          	ld	ra,40(sp)
    80002540:	02013403          	ld	s0,32(sp)
    80002544:	01813483          	ld	s1,24(sp)
    80002548:	01013903          	ld	s2,16(sp)
    8000254c:	00813983          	ld	s3,8(sp)
    80002550:	03010113          	addi	sp,sp,48
    80002554:	00008067          	ret
            found = true;
    80002558:	00100793          	li	a5,1
    8000255c:	f71ff06f          	j	800024cc <_ZN15MemoryAllocator8mem_freeEPv+0x68>
        freeSegHead = segToFree;
    80002560:	00009797          	auipc	a5,0x9
    80002564:	6097bc23          	sd	s1,1560(a5) # 8000bb78 <_ZN15MemoryAllocator11freeSegHeadE>
        segToFree -> prev = segToFree -> next = nullptr;
    80002568:	fe093c23          	sd	zero,-8(s2)
    8000256c:	fe093823          	sd	zero,-16(s2)
    return 0;
    80002570:	00000513          	li	a0,0
    80002574:	fc9ff06f          	j	8000253c <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
        segToFree -> prev = nullptr;
    80002578:	fe093823          	sd	zero,-16(s2)
        segToFree -> next = freeSegHead;
    8000257c:	00009797          	auipc	a5,0x9
    80002580:	5fc78793          	addi	a5,a5,1532 # 8000bb78 <_ZN15MemoryAllocator11freeSegHeadE>
    80002584:	0007b703          	ld	a4,0(a5)
    80002588:	fee93c23          	sd	a4,-8(s2)
        freeSegHead -> prev = segToFree;
    8000258c:	00973423          	sd	s1,8(a4)
        freeSegHead = segToFree;
    80002590:	0097b023          	sd	s1,0(a5)
        tryToJoin(segToFree);
    80002594:	00048513          	mv	a0,s1
    80002598:	00000097          	auipc	ra,0x0
    8000259c:	e7c080e7          	jalr	-388(ra) # 80002414 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    800025a0:	00000513          	li	a0,0
    800025a4:	f99ff06f          	j	8000253c <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    800025a8:	fff00513          	li	a0,-1
}
    800025ac:	00008067          	ret
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    800025b0:	fff00513          	li	a0,-1
    800025b4:	f89ff06f          	j	8000253c <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    800025b8:	fff00513          	li	a0,-1
    800025bc:	f81ff06f          	j	8000253c <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!usedSegHead) return -2;
    800025c0:	ffe00513          	li	a0,-2
    800025c4:	f79ff06f          	j	8000253c <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!found) return -3;
    800025c8:	ffd00513          	li	a0,-3
    800025cc:	f71ff06f          	j	8000253c <_ZN15MemoryAllocator8mem_freeEPv+0xd8>

00000000800025d0 <_ZN15MemoryAllocator5printEv>:

void MemoryAllocator::print() {
    800025d0:	fe010113          	addi	sp,sp,-32
    800025d4:	00113c23          	sd	ra,24(sp)
    800025d8:	00813823          	sd	s0,16(sp)
    800025dc:	00913423          	sd	s1,8(sp)
    800025e0:	02010413          	addi	s0,sp,32
    __putc('\n');
    800025e4:	00a00513          	li	a0,10
    800025e8:	00006097          	auipc	ra,0x6
    800025ec:	524080e7          	jalr	1316(ra) # 80008b0c <__putc>
    __putc('M');
    800025f0:	04d00513          	li	a0,77
    800025f4:	00006097          	auipc	ra,0x6
    800025f8:	518080e7          	jalr	1304(ra) # 80008b0c <__putc>
    __putc(':');
    800025fc:	03a00513          	li	a0,58
    80002600:	00006097          	auipc	ra,0x6
    80002604:	50c080e7          	jalr	1292(ra) # 80008b0c <__putc>
    __putc(' ');
    80002608:	02000513          	li	a0,32
    8000260c:	00006097          	auipc	ra,0x6
    80002610:	500080e7          	jalr	1280(ra) # 80008b0c <__putc>
    for (MemSeg* tmp = freeSegHead; tmp; tmp = tmp -> next) __putc('f');
    80002614:	00009497          	auipc	s1,0x9
    80002618:	5644b483          	ld	s1,1380(s1) # 8000bb78 <_ZN15MemoryAllocator11freeSegHeadE>
    8000261c:	00048c63          	beqz	s1,80002634 <_ZN15MemoryAllocator5printEv+0x64>
    80002620:	06600513          	li	a0,102
    80002624:	00006097          	auipc	ra,0x6
    80002628:	4e8080e7          	jalr	1256(ra) # 80008b0c <__putc>
    8000262c:	0104b483          	ld	s1,16(s1)
    80002630:	fedff06f          	j	8000261c <_ZN15MemoryAllocator5printEv+0x4c>
    __putc('\t');
    80002634:	00900513          	li	a0,9
    80002638:	00006097          	auipc	ra,0x6
    8000263c:	4d4080e7          	jalr	1236(ra) # 80008b0c <__putc>
    for (MemSeg* tmp = usedSegHead; tmp; tmp = tmp -> next) __putc('u');
    80002640:	00009497          	auipc	s1,0x9
    80002644:	5404b483          	ld	s1,1344(s1) # 8000bb80 <_ZN15MemoryAllocator11usedSegHeadE>
    80002648:	00048c63          	beqz	s1,80002660 <_ZN15MemoryAllocator5printEv+0x90>
    8000264c:	07500513          	li	a0,117
    80002650:	00006097          	auipc	ra,0x6
    80002654:	4bc080e7          	jalr	1212(ra) # 80008b0c <__putc>
    80002658:	0104b483          	ld	s1,16(s1)
    8000265c:	fedff06f          	j	80002648 <_ZN15MemoryAllocator5printEv+0x78>
}
    80002660:	01813083          	ld	ra,24(sp)
    80002664:	01013403          	ld	s0,16(sp)
    80002668:	00813483          	ld	s1,8(sp)
    8000266c:	02010113          	addi	sp,sp,32
    80002670:	00008067          	ret

0000000080002674 <_ZN15MemoryAllocator20get_number_of_blocksEm>:

size_t MemoryAllocator::get_number_of_blocks(size_t size) {
    80002674:	ff010113          	addi	sp,sp,-16
    80002678:	00813423          	sd	s0,8(sp)
    8000267c:	01010413          	addi	s0,sp,16
    return (size + sizeof(MemoryAllocator::MemSeg) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80002680:	05750513          	addi	a0,a0,87
}
    80002684:	00655513          	srli	a0,a0,0x6
    80002688:	00813403          	ld	s0,8(sp)
    8000268c:	01010113          	addi	sp,sp,16
    80002690:	00008067          	ret

0000000080002694 <_ZN13BoundedBufferC1Ev>:
#include "../h/bounded_bufffer.hpp"

BoundedBuffer::BoundedBuffer() {
    80002694:	fe010113          	addi	sp,sp,-32
    80002698:	00113c23          	sd	ra,24(sp)
    8000269c:	00813823          	sd	s0,16(sp)
    800026a0:	00913423          	sd	s1,8(sp)
    800026a4:	02010413          	addi	s0,sp,32
    800026a8:	00050493          	mv	s1,a0
    800026ac:	3e800793          	li	a5,1000
    800026b0:	00f52023          	sw	a5,0(a0)
    800026b4:	00052223          	sw	zero,4(a0)
    800026b8:	00052423          	sw	zero,8(a0)
    Sem::open(&item_available, 0);
    800026bc:	00000593          	li	a1,0
    800026c0:	01850513          	addi	a0,a0,24
    800026c4:	fffff097          	auipc	ra,0xfffff
    800026c8:	05c080e7          	jalr	92(ra) # 80001720 <_ZN3Sem4openEPPS_j>
    Sem::open(&space_available, CAPACITY);
    800026cc:	3e800593          	li	a1,1000
    800026d0:	01048513          	addi	a0,s1,16
    800026d4:	fffff097          	auipc	ra,0xfffff
    800026d8:	04c080e7          	jalr	76(ra) # 80001720 <_ZN3Sem4openEPPS_j>
}
    800026dc:	01813083          	ld	ra,24(sp)
    800026e0:	01013403          	ld	s0,16(sp)
    800026e4:	00813483          	ld	s1,8(sp)
    800026e8:	02010113          	addi	sp,sp,32
    800026ec:	00008067          	ret

00000000800026f0 <_ZN13BoundedBufferD1Ev>:

BoundedBuffer::~BoundedBuffer() {
    800026f0:	fe010113          	addi	sp,sp,-32
    800026f4:	00113c23          	sd	ra,24(sp)
    800026f8:	00813823          	sd	s0,16(sp)
    800026fc:	00913423          	sd	s1,8(sp)
    80002700:	02010413          	addi	s0,sp,32
    80002704:	00050493          	mv	s1,a0
    item_available -> close();
    80002708:	01853503          	ld	a0,24(a0)
    8000270c:	fffff097          	auipc	ra,0xfffff
    80002710:	088080e7          	jalr	136(ra) # 80001794 <_ZN3Sem5closeEv>
    space_available -> close();
    80002714:	0104b503          	ld	a0,16(s1)
    80002718:	fffff097          	auipc	ra,0xfffff
    8000271c:	07c080e7          	jalr	124(ra) # 80001794 <_ZN3Sem5closeEv>
}
    80002720:	01813083          	ld	ra,24(sp)
    80002724:	01013403          	ld	s0,16(sp)
    80002728:	00813483          	ld	s1,8(sp)
    8000272c:	02010113          	addi	sp,sp,32
    80002730:	00008067          	ret

0000000080002734 <_ZN13BoundedBuffernwEm>:

void *BoundedBuffer::operator new(size_t size) {
    80002734:	ff010113          	addi	sp,sp,-16
    80002738:	00113423          	sd	ra,8(sp)
    8000273c:	00813023          	sd	s0,0(sp)
    80002740:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    80002744:	00000097          	auipc	ra,0x0
    80002748:	f30080e7          	jalr	-208(ra) # 80002674 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    8000274c:	00000097          	auipc	ra,0x0
    80002750:	b2c080e7          	jalr	-1236(ra) # 80002278 <_ZN15MemoryAllocator9mem_allocEm>
}
    80002754:	00813083          	ld	ra,8(sp)
    80002758:	00013403          	ld	s0,0(sp)
    8000275c:	01010113          	addi	sp,sp,16
    80002760:	00008067          	ret

0000000080002764 <_ZN13BoundedBufferdlEPv>:

void BoundedBuffer::operator delete(void *addr) {
    80002764:	ff010113          	addi	sp,sp,-16
    80002768:	00113423          	sd	ra,8(sp)
    8000276c:	00813023          	sd	s0,0(sp)
    80002770:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    80002774:	00000097          	auipc	ra,0x0
    80002778:	cf0080e7          	jalr	-784(ra) # 80002464 <_ZN15MemoryAllocator8mem_freeEPv>
}
    8000277c:	00813083          	ld	ra,8(sp)
    80002780:	00013403          	ld	s0,0(sp)
    80002784:	01010113          	addi	sp,sp,16
    80002788:	00008067          	ret

000000008000278c <_ZN13BoundedBuffer4putcEc>:

void BoundedBuffer::putc(char c) {
    8000278c:	fe010113          	addi	sp,sp,-32
    80002790:	00113c23          	sd	ra,24(sp)
    80002794:	00813823          	sd	s0,16(sp)
    80002798:	00913423          	sd	s1,8(sp)
    8000279c:	01213023          	sd	s2,0(sp)
    800027a0:	02010413          	addi	s0,sp,32
    800027a4:	00050493          	mv	s1,a0
    800027a8:	00058913          	mv	s2,a1
    space_available -> wait();
    800027ac:	01053503          	ld	a0,16(a0)
    800027b0:	fffff097          	auipc	ra,0xfffff
    800027b4:	088080e7          	jalr	136(ra) # 80001838 <_ZN3Sem4waitEv>
    array[tail] = c;
    800027b8:	0084a783          	lw	a5,8(s1)
    800027bc:	00f48733          	add	a4,s1,a5
    800027c0:	03270023          	sb	s2,32(a4)
    tail = (tail + 1) % capacity;
    800027c4:	0017879b          	addiw	a5,a5,1
    800027c8:	0004a703          	lw	a4,0(s1)
    800027cc:	02e7e7bb          	remw	a5,a5,a4
    800027d0:	00f4a423          	sw	a5,8(s1)
    item_available -> signal();
    800027d4:	0184b503          	ld	a0,24(s1)
    800027d8:	fffff097          	auipc	ra,0xfffff
    800027dc:	108080e7          	jalr	264(ra) # 800018e0 <_ZN3Sem6signalEv>
}
    800027e0:	01813083          	ld	ra,24(sp)
    800027e4:	01013403          	ld	s0,16(sp)
    800027e8:	00813483          	ld	s1,8(sp)
    800027ec:	00013903          	ld	s2,0(sp)
    800027f0:	02010113          	addi	sp,sp,32
    800027f4:	00008067          	ret

00000000800027f8 <_ZN13BoundedBuffer4getcEv>:

char BoundedBuffer::getc() {
    800027f8:	fe010113          	addi	sp,sp,-32
    800027fc:	00113c23          	sd	ra,24(sp)
    80002800:	00813823          	sd	s0,16(sp)
    80002804:	00913423          	sd	s1,8(sp)
    80002808:	01213023          	sd	s2,0(sp)
    8000280c:	02010413          	addi	s0,sp,32
    80002810:	00050493          	mv	s1,a0
    item_available -> wait();
    80002814:	01853503          	ld	a0,24(a0)
    80002818:	fffff097          	auipc	ra,0xfffff
    8000281c:	020080e7          	jalr	32(ra) # 80001838 <_ZN3Sem4waitEv>
    char c = array[head];
    80002820:	0044a783          	lw	a5,4(s1)
    80002824:	00f48733          	add	a4,s1,a5
    80002828:	02074903          	lbu	s2,32(a4)
    head = (head + 1) % capacity;
    8000282c:	0017879b          	addiw	a5,a5,1
    80002830:	0004a703          	lw	a4,0(s1)
    80002834:	02e7e7bb          	remw	a5,a5,a4
    80002838:	00f4a223          	sw	a5,4(s1)
    space_available -> signal();
    8000283c:	0104b503          	ld	a0,16(s1)
    80002840:	fffff097          	auipc	ra,0xfffff
    80002844:	0a0080e7          	jalr	160(ra) # 800018e0 <_ZN3Sem6signalEv>
    return c;
}
    80002848:	00090513          	mv	a0,s2
    8000284c:	01813083          	ld	ra,24(sp)
    80002850:	01013403          	ld	s0,16(sp)
    80002854:	00813483          	ld	s1,8(sp)
    80002858:	00013903          	ld	s2,0(sp)
    8000285c:	02010113          	addi	sp,sp,32
    80002860:	00008067          	ret

0000000080002864 <_ZN9Scheduler3putEP3TCB>:

TCB* Scheduler::head_ready = nullptr;
TCB* Scheduler::tail_ready = nullptr;
TCB* Scheduler::head_sleeping = nullptr;

void Scheduler::put(TCB *thread) {
    80002864:	fe010113          	addi	sp,sp,-32
    80002868:	00113c23          	sd	ra,24(sp)
    8000286c:	00813823          	sd	s0,16(sp)
    80002870:	00913423          	sd	s1,8(sp)
    80002874:	02010413          	addi	s0,sp,32
    80002878:	00050493          	mv	s1,a0
    if (tail_ready) {
    8000287c:	00009517          	auipc	a0,0x9
    80002880:	31453503          	ld	a0,788(a0) # 8000bb90 <_ZN9Scheduler10tail_readyE>
    80002884:	02051463          	bnez	a0,800028ac <_ZN9Scheduler3putEP3TCB+0x48>
        tail_ready -> set_next_ready(thread);
        tail_ready = thread;
        return;
    }
    head_ready = tail_ready = thread;
    80002888:	00009797          	auipc	a5,0x9
    8000288c:	30878793          	addi	a5,a5,776 # 8000bb90 <_ZN9Scheduler10tail_readyE>
    80002890:	0097b023          	sd	s1,0(a5)
    80002894:	0097b423          	sd	s1,8(a5)
}
    80002898:	01813083          	ld	ra,24(sp)
    8000289c:	01013403          	ld	s0,16(sp)
    800028a0:	00813483          	ld	s1,8(sp)
    800028a4:	02010113          	addi	sp,sp,32
    800028a8:	00008067          	ret
        tail_ready -> set_next_ready(thread);
    800028ac:	00048593          	mv	a1,s1
    800028b0:	00001097          	auipc	ra,0x1
    800028b4:	870080e7          	jalr	-1936(ra) # 80003120 <_ZN3TCB14set_next_readyEPS_>
        tail_ready = thread;
    800028b8:	00009797          	auipc	a5,0x9
    800028bc:	2c97bc23          	sd	s1,728(a5) # 8000bb90 <_ZN9Scheduler10tail_readyE>
        return;
    800028c0:	fd9ff06f          	j	80002898 <_ZN9Scheduler3putEP3TCB+0x34>

00000000800028c4 <_ZN9Scheduler3getEv>:

TCB* Scheduler::get() {
    800028c4:	fe010113          	addi	sp,sp,-32
    800028c8:	00113c23          	sd	ra,24(sp)
    800028cc:	00813823          	sd	s0,16(sp)
    800028d0:	00913423          	sd	s1,8(sp)
    800028d4:	02010413          	addi	s0,sp,32
    if (!head_ready) return nullptr;
    800028d8:	00009497          	auipc	s1,0x9
    800028dc:	2c04b483          	ld	s1,704(s1) # 8000bb98 <_ZN9Scheduler10head_readyE>
    800028e0:	02048463          	beqz	s1,80002908 <_ZN9Scheduler3getEv+0x44>
    TCB *head = head_ready;
    TCB *tmp = head;
    head_ready = head_ready -> get_next_ready();
    800028e4:	00048513          	mv	a0,s1
    800028e8:	00001097          	auipc	ra,0x1
    800028ec:	81c080e7          	jalr	-2020(ra) # 80003104 <_ZNK3TCB14get_next_readyEv>
    800028f0:	00009797          	auipc	a5,0x9
    800028f4:	2aa7b423          	sd	a0,680(a5) # 8000bb98 <_ZN9Scheduler10head_readyE>
    tmp -> set_next_ready(nullptr);
    800028f8:	00000593          	li	a1,0
    800028fc:	00048513          	mv	a0,s1
    80002900:	00001097          	auipc	ra,0x1
    80002904:	820080e7          	jalr	-2016(ra) # 80003120 <_ZN3TCB14set_next_readyEPS_>
    return head;
}
    80002908:	00048513          	mv	a0,s1
    8000290c:	01813083          	ld	ra,24(sp)
    80002910:	01013403          	ld	s0,16(sp)
    80002914:	00813483          	ld	s1,8(sp)
    80002918:	02010113          	addi	sp,sp,32
    8000291c:	00008067          	ret

0000000080002920 <_ZN9Scheduler13change_threadEv>:
    thread -> set_next_sleeping(nullptr);
    change_thread();
    return 0;
}

void Scheduler::change_thread() {
    80002920:	fe010113          	addi	sp,sp,-32
    80002924:	00113c23          	sd	ra,24(sp)
    80002928:	00813823          	sd	s0,16(sp)
    8000292c:	00913423          	sd	s1,8(sp)
    80002930:	01213023          	sd	s2,0(sp)
    80002934:	02010413          	addi	s0,sp,32
    TCB* old = TCB::running;
    80002938:	00009497          	auipc	s1,0x9
    8000293c:	1d04b483          	ld	s1,464(s1) # 8000bb08 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002940:	0004b903          	ld	s2,0(s1)
    TCB::running = Scheduler::get();
    80002944:	00000097          	auipc	ra,0x0
    80002948:	f80080e7          	jalr	-128(ra) # 800028c4 <_ZN9Scheduler3getEv>
    8000294c:	00a4b023          	sd	a0,0(s1)
    if (old != TCB::running) TCB::yield(old, TCB::running);
    80002950:	00a90a63          	beq	s2,a0,80002964 <_ZN9Scheduler13change_threadEv+0x44>
    80002954:	00050593          	mv	a1,a0
    80002958:	00090513          	mv	a0,s2
    8000295c:	00000097          	auipc	ra,0x0
    80002960:	6e0080e7          	jalr	1760(ra) # 8000303c <_ZN3TCB5yieldEPS_S0_>
}
    80002964:	01813083          	ld	ra,24(sp)
    80002968:	01013403          	ld	s0,16(sp)
    8000296c:	00813483          	ld	s1,8(sp)
    80002970:	00013903          	ld	s2,0(sp)
    80002974:	02010113          	addi	sp,sp,32
    80002978:	00008067          	ret

000000008000297c <_ZN9Scheduler12put_to_sleepEm>:
int Scheduler::put_to_sleep(time_t time) {
    8000297c:	fc010113          	addi	sp,sp,-64
    80002980:	02113c23          	sd	ra,56(sp)
    80002984:	02813823          	sd	s0,48(sp)
    80002988:	02913423          	sd	s1,40(sp)
    8000298c:	03213023          	sd	s2,32(sp)
    80002990:	01313c23          	sd	s3,24(sp)
    80002994:	01413823          	sd	s4,16(sp)
    80002998:	01513423          	sd	s5,8(sp)
    8000299c:	04010413          	addi	s0,sp,64
    800029a0:	00050993          	mv	s3,a0
    TCB* thread = TCB::running;
    800029a4:	00009797          	auipc	a5,0x9
    800029a8:	1647b783          	ld	a5,356(a5) # 8000bb08 <_GLOBAL_OFFSET_TABLE_+0x50>
    800029ac:	0007ba83          	ld	s5,0(a5)
    thread -> set_status(TCB::Status::SLEEPING);
    800029b0:	00100593          	li	a1,1
    800029b4:	000a8513          	mv	a0,s5
    800029b8:	00000097          	auipc	ra,0x0
    800029bc:	7f4080e7          	jalr	2036(ra) # 800031ac <_ZN3TCB10set_statusENS_6StatusE>
    if (!head_sleeping) {
    800029c0:	00009497          	auipc	s1,0x9
    800029c4:	1e04b483          	ld	s1,480(s1) # 8000bba0 <_ZN9Scheduler13head_sleepingE>
    800029c8:	02048e63          	beqz	s1,80002a04 <_ZN9Scheduler12put_to_sleepEm+0x88>
    time_t current_time = 0;
    800029cc:	00000913          	li	s2,0
    TCB* tmp = head_sleeping, *prev = nullptr;
    800029d0:	00000a13          	li	s4,0
    while (tmp) {
    800029d4:	0e048c63          	beqz	s1,80002acc <_ZN9Scheduler12put_to_sleepEm+0x150>
        current_time += tmp -> get_time_to_sleep();
    800029d8:	00048513          	mv	a0,s1
    800029dc:	00000097          	auipc	ra,0x0
    800029e0:	7b4080e7          	jalr	1972(ra) # 80003190 <_ZNK3TCB17get_time_to_sleepEv>
    800029e4:	00a90933          	add	s2,s2,a0
        if (current_time > time) {
    800029e8:	0529e863          	bltu	s3,s2,80002a38 <_ZN9Scheduler12put_to_sleepEm+0xbc>
        tmp = tmp -> get_next_sleeping();
    800029ec:	00048513          	mv	a0,s1
    800029f0:	00000097          	auipc	ra,0x0
    800029f4:	768080e7          	jalr	1896(ra) # 80003158 <_ZNK3TCB17get_next_sleepingEv>
        prev = tmp;
    800029f8:	00048a13          	mv	s4,s1
        tmp = tmp -> get_next_sleeping();
    800029fc:	00050493          	mv	s1,a0
    while (tmp) {
    80002a00:	fd5ff06f          	j	800029d4 <_ZN9Scheduler12put_to_sleepEm+0x58>
        head_sleeping = thread;
    80002a04:	00009797          	auipc	a5,0x9
    80002a08:	1957be23          	sd	s5,412(a5) # 8000bba0 <_ZN9Scheduler13head_sleepingE>
        thread -> set_next_sleeping(nullptr);
    80002a0c:	00000593          	li	a1,0
    80002a10:	000a8513          	mv	a0,s5
    80002a14:	00000097          	auipc	ra,0x0
    80002a18:	728080e7          	jalr	1832(ra) # 8000313c <_ZN3TCB17set_next_sleepingEPS_>
        thread -> set_time_to_sleep(time);
    80002a1c:	00098593          	mv	a1,s3
    80002a20:	000a8513          	mv	a0,s5
    80002a24:	00000097          	auipc	ra,0x0
    80002a28:	750080e7          	jalr	1872(ra) # 80003174 <_ZN3TCB17set_time_to_sleepEm>
        change_thread();
    80002a2c:	00000097          	auipc	ra,0x0
    80002a30:	ef4080e7          	jalr	-268(ra) # 80002920 <_ZN9Scheduler13change_threadEv>
        return 0;
    80002a34:	0d00006f          	j	80002b04 <_ZN9Scheduler12put_to_sleepEm+0x188>
            time_t new_time = time - (current_time - tmp -> get_time_to_sleep());
    80002a38:	00048513          	mv	a0,s1
    80002a3c:	00000097          	auipc	ra,0x0
    80002a40:	754080e7          	jalr	1876(ra) # 80003190 <_ZNK3TCB17get_time_to_sleepEv>
    80002a44:	41250933          	sub	s2,a0,s2
    80002a48:	013909b3          	add	s3,s2,s3
            thread -> set_time_to_sleep(new_time);
    80002a4c:	00098593          	mv	a1,s3
    80002a50:	000a8513          	mv	a0,s5
    80002a54:	00000097          	auipc	ra,0x0
    80002a58:	720080e7          	jalr	1824(ra) # 80003174 <_ZN3TCB17set_time_to_sleepEm>
            thread -> set_next_sleeping(tmp);
    80002a5c:	00048593          	mv	a1,s1
    80002a60:	000a8513          	mv	a0,s5
    80002a64:	00000097          	auipc	ra,0x0
    80002a68:	6d8080e7          	jalr	1752(ra) # 8000313c <_ZN3TCB17set_next_sleepingEPS_>
            if (prev) prev -> set_next_sleeping(thread);
    80002a6c:	040a0463          	beqz	s4,80002ab4 <_ZN9Scheduler12put_to_sleepEm+0x138>
    80002a70:	000a8593          	mv	a1,s5
    80002a74:	000a0513          	mv	a0,s4
    80002a78:	00000097          	auipc	ra,0x0
    80002a7c:	6c4080e7          	jalr	1732(ra) # 8000313c <_ZN3TCB17set_next_sleepingEPS_>
            for (TCB* curr = tmp; curr; curr = curr -> get_next_sleeping())
    80002a80:	04048063          	beqz	s1,80002ac0 <_ZN9Scheduler12put_to_sleepEm+0x144>
                curr -> set_time_to_sleep(curr -> get_time_to_sleep() - new_time);
    80002a84:	00048513          	mv	a0,s1
    80002a88:	00000097          	auipc	ra,0x0
    80002a8c:	708080e7          	jalr	1800(ra) # 80003190 <_ZNK3TCB17get_time_to_sleepEv>
    80002a90:	413505b3          	sub	a1,a0,s3
    80002a94:	00048513          	mv	a0,s1
    80002a98:	00000097          	auipc	ra,0x0
    80002a9c:	6dc080e7          	jalr	1756(ra) # 80003174 <_ZN3TCB17set_time_to_sleepEm>
            for (TCB* curr = tmp; curr; curr = curr -> get_next_sleeping())
    80002aa0:	00048513          	mv	a0,s1
    80002aa4:	00000097          	auipc	ra,0x0
    80002aa8:	6b4080e7          	jalr	1716(ra) # 80003158 <_ZNK3TCB17get_next_sleepingEv>
    80002aac:	00050493          	mv	s1,a0
    80002ab0:	fd1ff06f          	j	80002a80 <_ZN9Scheduler12put_to_sleepEm+0x104>
            else head_sleeping = thread;
    80002ab4:	00009797          	auipc	a5,0x9
    80002ab8:	0f57b623          	sd	s5,236(a5) # 8000bba0 <_ZN9Scheduler13head_sleepingE>
    80002abc:	fc5ff06f          	j	80002a80 <_ZN9Scheduler12put_to_sleepEm+0x104>
            change_thread();
    80002ac0:	00000097          	auipc	ra,0x0
    80002ac4:	e60080e7          	jalr	-416(ra) # 80002920 <_ZN9Scheduler13change_threadEv>
            return 0;
    80002ac8:	03c0006f          	j	80002b04 <_ZN9Scheduler12put_to_sleepEm+0x188>
    thread -> set_time_to_sleep(time - current_time);
    80002acc:	412985b3          	sub	a1,s3,s2
    80002ad0:	000a8513          	mv	a0,s5
    80002ad4:	00000097          	auipc	ra,0x0
    80002ad8:	6a0080e7          	jalr	1696(ra) # 80003174 <_ZN3TCB17set_time_to_sleepEm>
    prev -> set_next_sleeping(thread);
    80002adc:	000a8593          	mv	a1,s5
    80002ae0:	000a0513          	mv	a0,s4
    80002ae4:	00000097          	auipc	ra,0x0
    80002ae8:	658080e7          	jalr	1624(ra) # 8000313c <_ZN3TCB17set_next_sleepingEPS_>
    thread -> set_next_sleeping(nullptr);
    80002aec:	00000593          	li	a1,0
    80002af0:	000a8513          	mv	a0,s5
    80002af4:	00000097          	auipc	ra,0x0
    80002af8:	648080e7          	jalr	1608(ra) # 8000313c <_ZN3TCB17set_next_sleepingEPS_>
    change_thread();
    80002afc:	00000097          	auipc	ra,0x0
    80002b00:	e24080e7          	jalr	-476(ra) # 80002920 <_ZN9Scheduler13change_threadEv>
}
    80002b04:	00000513          	li	a0,0
    80002b08:	03813083          	ld	ra,56(sp)
    80002b0c:	03013403          	ld	s0,48(sp)
    80002b10:	02813483          	ld	s1,40(sp)
    80002b14:	02013903          	ld	s2,32(sp)
    80002b18:	01813983          	ld	s3,24(sp)
    80002b1c:	01013a03          	ld	s4,16(sp)
    80002b20:	00813a83          	ld	s5,8(sp)
    80002b24:	04010113          	addi	sp,sp,64
    80002b28:	00008067          	ret

0000000080002b2c <_ZN5RiscV10popSppSpieEb>:
    SUPERVISOR_INTERRUPT = 0x0000000000000009UL,
};

/// used in thread wrapper function when initializing thread because thread stack is empty
/// pc = (sepc = ra)
void RiscV::popSppSpie(bool return_to_user_mode) {
    80002b2c:	ff010113          	addi	sp,sp,-16
    80002b30:	00813423          	sd	s0,8(sp)
    80002b34:	01010413          	addi	s0,sp,16
    if (return_to_user_mode) mc_sstatus(SSTATUS_SPP);
    80002b38:	00050663          	beqz	a0,80002b44 <_ZN5RiscV10popSppSpieEb+0x18>
}

inline void RiscV::mc_sstatus(uint64 mask) {
    __asm__ volatile ("csrc sstatus, %0" : : "r"(mask));
    80002b3c:	10000793          	li	a5,256
    80002b40:	1007b073          	csrc	sstatus,a5
    __asm__ volatile("csrw sepc, ra");
    80002b44:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80002b48:	10200073          	sret
}
    80002b4c:	00813403          	ld	s0,8(sp)
    80002b50:	01010113          	addi	sp,sp,16
    80002b54:	00008067          	ret

0000000080002b58 <_ZN5RiscV22handle_supervisor_trapEv>:

/// interrupt handler
void RiscV::handle_supervisor_trap() {
    80002b58:	f9010113          	addi	sp,sp,-112
    80002b5c:	06113423          	sd	ra,104(sp)
    80002b60:	06813023          	sd	s0,96(sp)
    80002b64:	04913c23          	sd	s1,88(sp)
    80002b68:	05213823          	sd	s2,80(sp)
    80002b6c:	05313423          	sd	s3,72(sp)
    80002b70:	07010413          	addi	s0,sp,112
    /// read values from registers
    uint64 syscall_code, a1, a2, a3, a4;
    __asm__ volatile("mv %0, a0" : "=r"(syscall_code));
    80002b74:	00050813          	mv	a6,a0
    __asm__ volatile("mv %0, a1" : "=r"(a1));
    80002b78:	00058513          	mv	a0,a1
    __asm__ volatile("mv %0, a2" : "=r"(a2));
    80002b7c:	00060593          	mv	a1,a2
    __asm__ volatile("mv %0, a3" : "=r"(a3));
    80002b80:	00068613          	mv	a2,a3
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    80002b84:	00070693          	mv	a3,a4
    __asm__ volatile ("csrr %0, scause" : "=r"(scause));
    80002b88:	142027f3          	csrr	a5,scause
    80002b8c:	f8f43c23          	sd	a5,-104(s0)
    return scause;
    80002b90:	f9843703          	ld	a4,-104(s0)

    uint64 scause = read_scause();

    /// interrupt caused by Timer
    if (scause == SOFTWARE_INTERRUPT) {
    80002b94:	fff00793          	li	a5,-1
    80002b98:	03f79793          	slli	a5,a5,0x3f
    80002b9c:	00178793          	addi	a5,a5,1
    80002ba0:	04f70263          	beq	a4,a5,80002be4 <_ZN5RiscV22handle_supervisor_trapEv+0x8c>
            write_sepc(sepc);
        }
    }

    /// External interrupt (Console)
    else if (scause == HARDWARE_INTERRUPT) {
    80002ba4:	fff00793          	li	a5,-1
    80002ba8:	03f79793          	slli	a5,a5,0x3f
    80002bac:	00978793          	addi	a5,a5,9
    80002bb0:	0ef70863          	beq	a4,a5,80002ca0 <_ZN5RiscV22handle_supervisor_trapEv+0x148>
        write_sstatus(sstatus);
        mc_sip(SIP_SEIP);
    }

    /// illegal instruction
    else if (scause == INVALID_INTERRUPT) {
    80002bb4:	00200793          	li	a5,2
    80002bb8:	16f70463          	beq	a4,a5,80002d20 <_ZN5RiscV22handle_supervisor_trapEv+0x1c8>
        __asm__ volatile("mv a0, %0" : : "r"(val));
        return;
    }

    /// interrupt from supervisor / user mode
    else if (scause == USER_INTERRUPT || scause == SUPERVISOR_INTERRUPT) {
    80002bbc:	ff870713          	addi	a4,a4,-8
    80002bc0:	00100793          	li	a5,1
    80002bc4:	16e7f463          	bgeu	a5,a4,80002d2c <_ZN5RiscV22handle_supervisor_trapEv+0x1d4>
        }

        write_sepc(sepc);
        write_sstatus(sstatus);
    }
    80002bc8:	06813083          	ld	ra,104(sp)
    80002bcc:	06013403          	ld	s0,96(sp)
    80002bd0:	05813483          	ld	s1,88(sp)
    80002bd4:	05013903          	ld	s2,80(sp)
    80002bd8:	04813983          	ld	s3,72(sp)
    80002bdc:	07010113          	addi	sp,sp,112
    80002be0:	00008067          	ret
    __asm__ volatile ("csrc sip, %0" : : "r"(mask));
    80002be4:	00200793          	li	a5,2
    80002be8:	1447b073          	csrc	sip,a5
        TCB* first_waiting = Scheduler::head_sleeping;
    80002bec:	00009797          	auipc	a5,0x9
    80002bf0:	eec7b783          	ld	a5,-276(a5) # 8000bad8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002bf4:	0007b483          	ld	s1,0(a5)
        if (first_waiting) {
    80002bf8:	04048463          	beqz	s1,80002c40 <_ZN5RiscV22handle_supervisor_trapEv+0xe8>
            --first_waiting -> time_to_sleep;
    80002bfc:	0484b783          	ld	a5,72(s1)
    80002c00:	fff78793          	addi	a5,a5,-1
    80002c04:	04f4b423          	sd	a5,72(s1)
            while (first_waiting && first_waiting -> time_to_sleep <= 0) {
    80002c08:	02048c63          	beqz	s1,80002c40 <_ZN5RiscV22handle_supervisor_trapEv+0xe8>
    80002c0c:	0484b783          	ld	a5,72(s1)
    80002c10:	02079863          	bnez	a5,80002c40 <_ZN5RiscV22handle_supervisor_trapEv+0xe8>
                Scheduler::put(first_waiting);
    80002c14:	00048513          	mv	a0,s1
    80002c18:	00000097          	auipc	ra,0x0
    80002c1c:	c4c080e7          	jalr	-948(ra) # 80002864 <_ZN9Scheduler3putEP3TCB>
                first_waiting -> status = TCB::RUNNABLE;
    80002c20:	0004ac23          	sw	zero,24(s1)
                first_waiting = first_waiting -> next_sleeping;
    80002c24:	0504b783          	ld	a5,80(s1)
                tmp -> next_sleeping = nullptr;
    80002c28:	0404b823          	sd	zero,80(s1)
                Scheduler::head_sleeping = first_waiting;
    80002c2c:	00009717          	auipc	a4,0x9
    80002c30:	eac73703          	ld	a4,-340(a4) # 8000bad8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002c34:	00f73023          	sd	a5,0(a4)
                first_waiting = first_waiting -> next_sleeping;
    80002c38:	00078493          	mv	s1,a5
            while (first_waiting && first_waiting -> time_to_sleep <= 0) {
    80002c3c:	fcdff06f          	j	80002c08 <_ZN5RiscV22handle_supervisor_trapEv+0xb0>
        ++TCB::time_slice_counter;
    80002c40:	00009717          	auipc	a4,0x9
    80002c44:	eb873703          	ld	a4,-328(a4) # 8000baf8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002c48:	00073783          	ld	a5,0(a4)
    80002c4c:	00178793          	addi	a5,a5,1
    80002c50:	00f73023          	sd	a5,0(a4)
        if (TCB::time_slice_counter >= TCB::running -> time_slice) {
    80002c54:	00009717          	auipc	a4,0x9
    80002c58:	eb473703          	ld	a4,-332(a4) # 8000bb08 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002c5c:	00073703          	ld	a4,0(a4)
    80002c60:	03873703          	ld	a4,56(a4)
    80002c64:	f6e7e2e3          	bltu	a5,a4,80002bc8 <_ZN5RiscV22handle_supervisor_trapEv+0x70>
    __asm__ volatile ("csrr %0, sepc" : "=r"(sepc));
    80002c68:	141027f3          	csrr	a5,sepc
    80002c6c:	faf43423          	sd	a5,-88(s0)
    return sepc;
    80002c70:	fa843483          	ld	s1,-88(s0)
}

inline uint64 RiscV::read_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    80002c74:	100027f3          	csrr	a5,sstatus
    80002c78:	faf43023          	sd	a5,-96(s0)
    return sstatus;
    80002c7c:	fa043903          	ld	s2,-96(s0)
            TCB::time_slice_counter = 0;
    80002c80:	00009797          	auipc	a5,0x9
    80002c84:	e787b783          	ld	a5,-392(a5) # 8000baf8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002c88:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80002c8c:	00000097          	auipc	ra,0x0
    80002c90:	40c080e7          	jalr	1036(ra) # 80003098 <_ZN3TCB8dispatchEv>
}

inline void RiscV::write_sstatus(uint64 val) {
    __asm__ volatile ("csrw sstatus, %0" : : "r"(val));
    80002c94:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %0" : : "r"(val));
    80002c98:	14149073          	csrw	sepc,s1
}
    80002c9c:	f2dff06f          	j	80002bc8 <_ZN5RiscV22handle_supervisor_trapEv+0x70>
    __asm__ volatile ("csrr %0, sepc" : "=r"(sepc));
    80002ca0:	141027f3          	csrr	a5,sepc
    80002ca4:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    80002ca8:	fb843983          	ld	s3,-72(s0)
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    80002cac:	100027f3          	csrr	a5,sstatus
    80002cb0:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    80002cb4:	fb043903          	ld	s2,-80(s0)
        int irq = plic_claim();
    80002cb8:	00004097          	auipc	ra,0x4
    80002cbc:	5ec080e7          	jalr	1516(ra) # 800072a4 <plic_claim>
    80002cc0:	00050493          	mv	s1,a0
        if (irq == CONSOLE_IRQ) {
    80002cc4:	00a00793          	li	a5,10
    80002cc8:	02f50263          	beq	a0,a5,80002cec <_ZN5RiscV22handle_supervisor_trapEv+0x194>
        plic_complete(irq);
    80002ccc:	00048513          	mv	a0,s1
    80002cd0:	00004097          	auipc	ra,0x4
    80002cd4:	60c080e7          	jalr	1548(ra) # 800072dc <plic_complete>
    __asm__ volatile ("csrw sepc, %0" : : "r"(val));
    80002cd8:	14199073          	csrw	sepc,s3
    __asm__ volatile ("csrw sstatus, %0" : : "r"(val));
    80002cdc:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrc sip, %0" : : "r"(mask));
    80002ce0:	20000793          	li	a5,512
    80002ce4:	1447b073          	csrc	sip,a5
}
    80002ce8:	ee1ff06f          	j	80002bc8 <_ZN5RiscV22handle_supervisor_trapEv+0x70>
            while (*(char *) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT) {
    80002cec:	00009797          	auipc	a5,0x9
    80002cf0:	ddc7b783          	ld	a5,-548(a5) # 8000bac8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002cf4:	0007b783          	ld	a5,0(a5)
    80002cf8:	0007c783          	lbu	a5,0(a5)
    80002cfc:	0017f793          	andi	a5,a5,1
    80002d00:	fc0786e3          	beqz	a5,80002ccc <_ZN5RiscV22handle_supervisor_trapEv+0x174>
                char c = *(char *) CONSOLE_RX_DATA;
    80002d04:	00009797          	auipc	a5,0x9
    80002d08:	dbc7b783          	ld	a5,-580(a5) # 8000bac0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002d0c:	0007b783          	ld	a5,0(a5)
                Con::putc_input(c);
    80002d10:	0007c503          	lbu	a0,0(a5)
    80002d14:	fffff097          	auipc	ra,0xfffff
    80002d18:	030080e7          	jalr	48(ra) # 80001d44 <_ZN3Con10putc_inputEc>
            while (*(char *) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT) {
    80002d1c:	fd1ff06f          	j	80002cec <_ZN5RiscV22handle_supervisor_trapEv+0x194>
        __asm__ volatile("mv a0, %0" : : "r"(val));
    80002d20:	00100793          	li	a5,1
    80002d24:	00078513          	mv	a0,a5
        return;
    80002d28:	ea1ff06f          	j	80002bc8 <_ZN5RiscV22handle_supervisor_trapEv+0x70>
    __asm__ volatile ("csrr %0, sepc" : "=r"(sepc));
    80002d2c:	141027f3          	csrr	a5,sepc
    80002d30:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80002d34:	fc843483          	ld	s1,-56(s0)
        uint64 sepc = read_sepc() + 4;
    80002d38:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    80002d3c:	100027f3          	csrr	a5,sstatus
    80002d40:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80002d44:	fc043903          	ld	s2,-64(s0)
        switch(syscall_code) {
    80002d48:	04200793          	li	a5,66
    80002d4c:	0307e463          	bltu	a5,a6,80002d74 <_ZN5RiscV22handle_supervisor_trapEv+0x21c>
    80002d50:	00281813          	slli	a6,a6,0x2
    80002d54:	00006717          	auipc	a4,0x6
    80002d58:	2cc70713          	addi	a4,a4,716 # 80009020 <CONSOLE_STATUS+0x10>
    80002d5c:	00e80833          	add	a6,a6,a4
    80002d60:	00082783          	lw	a5,0(a6)
    80002d64:	00e787b3          	add	a5,a5,a4
    80002d68:	00078067          	jr	a5
                MemoryAllocator::mem_alloc((size_t) a1);
    80002d6c:	fffff097          	auipc	ra,0xfffff
    80002d70:	50c080e7          	jalr	1292(ra) # 80002278 <_ZN15MemoryAllocator9mem_allocEm>
    __asm__ volatile ("csrw sepc, %0" : : "r"(val));
    80002d74:	14149073          	csrw	sepc,s1
    __asm__ volatile ("csrw sstatus, %0" : : "r"(val));
    80002d78:	10091073          	csrw	sstatus,s2
}
    80002d7c:	e4dff06f          	j	80002bc8 <_ZN5RiscV22handle_supervisor_trapEv+0x70>
                MemoryAllocator::mem_free((void *) a1);
    80002d80:	fffff097          	auipc	ra,0xfffff
    80002d84:	6e4080e7          	jalr	1764(ra) # 80002464 <_ZN15MemoryAllocator8mem_freeEPv>
                break;
    80002d88:	fedff06f          	j	80002d74 <_ZN5RiscV22handle_supervisor_trapEv+0x21c>
                TCB::thread_create((thread_t *) a1, (void (*)(void *)) a2, (void *) a3, (void *) a4);
    80002d8c:	00000097          	auipc	ra,0x0
    80002d90:	594080e7          	jalr	1428(ra) # 80003320 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>
                break;
    80002d94:	fe1ff06f          	j	80002d74 <_ZN5RiscV22handle_supervisor_trapEv+0x21c>
                TCB::thread_exit();
    80002d98:	00000097          	auipc	ra,0x0
    80002d9c:	430080e7          	jalr	1072(ra) # 800031c8 <_ZN3TCB11thread_exitEv>
                break;
    80002da0:	fd5ff06f          	j	80002d74 <_ZN5RiscV22handle_supervisor_trapEv+0x21c>
                TCB::dispatch();
    80002da4:	00000097          	auipc	ra,0x0
    80002da8:	2f4080e7          	jalr	756(ra) # 80003098 <_ZN3TCB8dispatchEv>
                break;
    80002dac:	fc9ff06f          	j	80002d74 <_ZN5RiscV22handle_supervisor_trapEv+0x21c>
                Sem::open((sem_t *) a1, a2);
    80002db0:	0005859b          	sext.w	a1,a1
    80002db4:	fffff097          	auipc	ra,0xfffff
    80002db8:	96c080e7          	jalr	-1684(ra) # 80001720 <_ZN3Sem4openEPPS_j>
                break;
    80002dbc:	fb9ff06f          	j	80002d74 <_ZN5RiscV22handle_supervisor_trapEv+0x21c>
                ((sem_t) a1) -> close();
    80002dc0:	fffff097          	auipc	ra,0xfffff
    80002dc4:	9d4080e7          	jalr	-1580(ra) # 80001794 <_ZN3Sem5closeEv>
                break;
    80002dc8:	fadff06f          	j	80002d74 <_ZN5RiscV22handle_supervisor_trapEv+0x21c>
                ((sem_t) a1) -> wait();
    80002dcc:	fffff097          	auipc	ra,0xfffff
    80002dd0:	a6c080e7          	jalr	-1428(ra) # 80001838 <_ZN3Sem4waitEv>
                break;
    80002dd4:	fa1ff06f          	j	80002d74 <_ZN5RiscV22handle_supervisor_trapEv+0x21c>
                ((sem_t) a1) -> signal();
    80002dd8:	fffff097          	auipc	ra,0xfffff
    80002ddc:	b08080e7          	jalr	-1272(ra) # 800018e0 <_ZN3Sem6signalEv>
                break;
    80002de0:	f95ff06f          	j	80002d74 <_ZN5RiscV22handle_supervisor_trapEv+0x21c>
                ((sem_t) a1) -> timedWait((time_t) a2);
    80002de4:	fffff097          	auipc	ra,0xfffff
    80002de8:	b54080e7          	jalr	-1196(ra) # 80001938 <_ZN3Sem9timedWaitEm>
                break;
    80002dec:	f89ff06f          	j	80002d74 <_ZN5RiscV22handle_supervisor_trapEv+0x21c>
                ((sem_t) a1) -> tryWait();
    80002df0:	fffff097          	auipc	ra,0xfffff
    80002df4:	b64080e7          	jalr	-1180(ra) # 80001954 <_ZN3Sem7tryWaitEv>
                break;
    80002df8:	f7dff06f          	j	80002d74 <_ZN5RiscV22handle_supervisor_trapEv+0x21c>
                Scheduler::put_to_sleep((time_t) a1);
    80002dfc:	00000097          	auipc	ra,0x0
    80002e00:	b80080e7          	jalr	-1152(ra) # 8000297c <_ZN9Scheduler12put_to_sleepEm>
                break;
    80002e04:	f71ff06f          	j	80002d74 <_ZN5RiscV22handle_supervisor_trapEv+0x21c>
                Con::getc_input();
    80002e08:	fffff097          	auipc	ra,0xfffff
    80002e0c:	f70080e7          	jalr	-144(ra) # 80001d78 <_ZN3Con10getc_inputEv>
                break;
    80002e10:	f65ff06f          	j	80002d74 <_ZN5RiscV22handle_supervisor_trapEv+0x21c>
                Con::putc_output((char) a1);
    80002e14:	0ff57513          	andi	a0,a0,255
    80002e18:	fffff097          	auipc	ra,0xfffff
    80002e1c:	ec8080e7          	jalr	-312(ra) # 80001ce0 <_ZN3Con11putc_outputEc>
                break;
    80002e20:	f55ff06f          	j	80002d74 <_ZN5RiscV22handle_supervisor_trapEv+0x21c>

0000000080002e24 <_ZN10ThreadList9get_firstEv>:

void ThreadList::push_back(TCB *thread) {
    tail = (head ? tail -> next : head) = new Node(thread);
}

TCB *ThreadList::get_first() {
    80002e24:	ff010113          	addi	sp,sp,-16
    80002e28:	00813423          	sd	s0,8(sp)
    80002e2c:	01010413          	addi	s0,sp,16
    return (head ? head -> data : nullptr);
    80002e30:	00053503          	ld	a0,0(a0)
    80002e34:	00050463          	beqz	a0,80002e3c <_ZN10ThreadList9get_firstEv+0x18>
    80002e38:	00053503          	ld	a0,0(a0)
}
    80002e3c:	00813403          	ld	s0,8(sp)
    80002e40:	01010113          	addi	sp,sp,16
    80002e44:	00008067          	ret

0000000080002e48 <_ZN10ThreadList4NodenwEm>:

void ThreadList::free() {
    while (get_first()) remove_first();
}

void *ThreadList::Node::operator new(size_t size) {
    80002e48:	ff010113          	addi	sp,sp,-16
    80002e4c:	00113423          	sd	ra,8(sp)
    80002e50:	00813023          	sd	s0,0(sp)
    80002e54:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    80002e58:	00000097          	auipc	ra,0x0
    80002e5c:	81c080e7          	jalr	-2020(ra) # 80002674 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80002e60:	fffff097          	auipc	ra,0xfffff
    80002e64:	418080e7          	jalr	1048(ra) # 80002278 <_ZN15MemoryAllocator9mem_allocEm>
}
    80002e68:	00813083          	ld	ra,8(sp)
    80002e6c:	00013403          	ld	s0,0(sp)
    80002e70:	01010113          	addi	sp,sp,16
    80002e74:	00008067          	ret

0000000080002e78 <_ZN10ThreadList9push_backEP3TCB>:
void ThreadList::push_back(TCB *thread) {
    80002e78:	fe010113          	addi	sp,sp,-32
    80002e7c:	00113c23          	sd	ra,24(sp)
    80002e80:	00813823          	sd	s0,16(sp)
    80002e84:	00913423          	sd	s1,8(sp)
    80002e88:	01213023          	sd	s2,0(sp)
    80002e8c:	02010413          	addi	s0,sp,32
    80002e90:	00050493          	mv	s1,a0
    80002e94:	00058913          	mv	s2,a1
    tail = (head ? tail -> next : head) = new Node(thread);
    80002e98:	01000513          	li	a0,16
    80002e9c:	00000097          	auipc	ra,0x0
    80002ea0:	fac080e7          	jalr	-84(ra) # 80002e48 <_ZN10ThreadList4NodenwEm>
        struct Node *next;

        void* operator new(size_t size);
        void operator delete(void* addr);

        explicit Node(TCB* data) : data(data), next(nullptr) {}
    80002ea4:	01253023          	sd	s2,0(a0)
    80002ea8:	00053423          	sd	zero,8(a0)
    80002eac:	0004b783          	ld	a5,0(s1)
    80002eb0:	02078463          	beqz	a5,80002ed8 <_ZN10ThreadList9push_backEP3TCB+0x60>
    80002eb4:	0084b783          	ld	a5,8(s1)
    80002eb8:	00a7b423          	sd	a0,8(a5)
    80002ebc:	00a4b423          	sd	a0,8(s1)
}
    80002ec0:	01813083          	ld	ra,24(sp)
    80002ec4:	01013403          	ld	s0,16(sp)
    80002ec8:	00813483          	ld	s1,8(sp)
    80002ecc:	00013903          	ld	s2,0(sp)
    80002ed0:	02010113          	addi	sp,sp,32
    80002ed4:	00008067          	ret
    tail = (head ? tail -> next : head) = new Node(thread);
    80002ed8:	00a4b023          	sd	a0,0(s1)
    80002edc:	fe1ff06f          	j	80002ebc <_ZN10ThreadList9push_backEP3TCB+0x44>

0000000080002ee0 <_ZN10ThreadList4NodedlEPv>:

void ThreadList::Node::operator delete(void *addr) {
    80002ee0:	ff010113          	addi	sp,sp,-16
    80002ee4:	00113423          	sd	ra,8(sp)
    80002ee8:	00813023          	sd	s0,0(sp)
    80002eec:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    80002ef0:	fffff097          	auipc	ra,0xfffff
    80002ef4:	574080e7          	jalr	1396(ra) # 80002464 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80002ef8:	00813083          	ld	ra,8(sp)
    80002efc:	00013403          	ld	s0,0(sp)
    80002f00:	01010113          	addi	sp,sp,16
    80002f04:	00008067          	ret

0000000080002f08 <_ZN10ThreadList12remove_firstEv>:
TCB *ThreadList::remove_first() {
    80002f08:	fe010113          	addi	sp,sp,-32
    80002f0c:	00113c23          	sd	ra,24(sp)
    80002f10:	00813823          	sd	s0,16(sp)
    80002f14:	00913423          	sd	s1,8(sp)
    80002f18:	02010413          	addi	s0,sp,32
    80002f1c:	00050793          	mv	a5,a0
    if (!head) return nullptr;
    80002f20:	00053503          	ld	a0,0(a0)
    80002f24:	02050863          	beqz	a0,80002f54 <_ZN10ThreadList12remove_firstEv+0x4c>
    TCB* thread = tmp -> data;
    80002f28:	00053483          	ld	s1,0(a0)
    head = head -> next;
    80002f2c:	00853703          	ld	a4,8(a0)
    80002f30:	00e7b023          	sd	a4,0(a5)
    delete tmp;
    80002f34:	00000097          	auipc	ra,0x0
    80002f38:	fac080e7          	jalr	-84(ra) # 80002ee0 <_ZN10ThreadList4NodedlEPv>
}
    80002f3c:	00048513          	mv	a0,s1
    80002f40:	01813083          	ld	ra,24(sp)
    80002f44:	01013403          	ld	s0,16(sp)
    80002f48:	00813483          	ld	s1,8(sp)
    80002f4c:	02010113          	addi	sp,sp,32
    80002f50:	00008067          	ret
    if (!head) return nullptr;
    80002f54:	00050493          	mv	s1,a0
    80002f58:	fe5ff06f          	j	80002f3c <_ZN10ThreadList12remove_firstEv+0x34>

0000000080002f5c <_ZN10ThreadList4freeEv>:
void ThreadList::free() {
    80002f5c:	fe010113          	addi	sp,sp,-32
    80002f60:	00113c23          	sd	ra,24(sp)
    80002f64:	00813823          	sd	s0,16(sp)
    80002f68:	00913423          	sd	s1,8(sp)
    80002f6c:	02010413          	addi	s0,sp,32
    80002f70:	00050493          	mv	s1,a0
    while (get_first()) remove_first();
    80002f74:	00048513          	mv	a0,s1
    80002f78:	00000097          	auipc	ra,0x0
    80002f7c:	eac080e7          	jalr	-340(ra) # 80002e24 <_ZN10ThreadList9get_firstEv>
    80002f80:	00050a63          	beqz	a0,80002f94 <_ZN10ThreadList4freeEv+0x38>
    80002f84:	00048513          	mv	a0,s1
    80002f88:	00000097          	auipc	ra,0x0
    80002f8c:	f80080e7          	jalr	-128(ra) # 80002f08 <_ZN10ThreadList12remove_firstEv>
    80002f90:	fe5ff06f          	j	80002f74 <_ZN10ThreadList4freeEv+0x18>
}
    80002f94:	01813083          	ld	ra,24(sp)
    80002f98:	01013403          	ld	s0,16(sp)
    80002f9c:	00813483          	ld	s1,8(sp)
    80002fa0:	02010113          	addi	sp,sp,32
    80002fa4:	00008067          	ret

0000000080002fa8 <_ZN3TCBC1EPFvPvES0_S0_>:

TCB::TCB(void (*function_body)(void *), void *arg, void *stack) {
    context = {
            (uint64) wrapper_function,
            /// stack starts from max address, rises to lower locations
            (uint64) (stack ? (uint64) stack + DEFAULT_STACK_SIZE - 1 : 0)
    80002fa8:	08068463          	beqz	a3,80003030 <_ZN3TCBC1EPFvPvES0_S0_+0x88>
    80002fac:	000017b7          	lui	a5,0x1
    80002fb0:	fff78793          	addi	a5,a5,-1 # fff <_entry-0x7ffff001>
    80002fb4:	00f687b3          	add	a5,a3,a5
    context = {
    80002fb8:	00000717          	auipc	a4,0x0
    80002fbc:	24c70713          	addi	a4,a4,588 # 80003204 <_ZN3TCB16wrapper_functionEv>
    80002fc0:	00e53423          	sd	a4,8(a0)
    80002fc4:	00f53823          	sd	a5,16(a0)
    };
    id = cnt++;
    80002fc8:	00009717          	auipc	a4,0x9
    80002fcc:	be070713          	addi	a4,a4,-1056 # 8000bba8 <_ZN3TCB3cntE>
    80002fd0:	00072783          	lw	a5,0(a4)
    80002fd4:	0017881b          	addiw	a6,a5,1
    80002fd8:	01072023          	sw	a6,0(a4)
    80002fdc:	00f52023          	sw	a5,0(a0)
    status = RUNNABLE;
    80002fe0:	00052c23          	sw	zero,24(a0)
    this -> function_body = function_body;
    80002fe4:	02b53023          	sd	a1,32(a0)
    this -> arg = arg;
    80002fe8:	02c53423          	sd	a2,40(a0)
    this -> stack = stack;
    80002fec:	02d53823          	sd	a3,48(a0)
    time_slice = DEFAULT_TIME_SLICE;
    80002ff0:	00200793          	li	a5,2
    80002ff4:	02f53c23          	sd	a5,56(a0)
    time_to_sleep = 0;
    80002ff8:	04053423          	sd	zero,72(a0)
    next_ready = nullptr;
    80002ffc:	04053023          	sd	zero,64(a0)
    next_sleeping = nullptr;
    80003000:	04053823          	sd	zero,80(a0)
    if (function_body) Scheduler::put(this);
    80003004:	02058a63          	beqz	a1,80003038 <_ZN3TCBC1EPFvPvES0_S0_+0x90>
TCB::TCB(void (*function_body)(void *), void *arg, void *stack) {
    80003008:	ff010113          	addi	sp,sp,-16
    8000300c:	00113423          	sd	ra,8(sp)
    80003010:	00813023          	sd	s0,0(sp)
    80003014:	01010413          	addi	s0,sp,16
    if (function_body) Scheduler::put(this);
    80003018:	00000097          	auipc	ra,0x0
    8000301c:	84c080e7          	jalr	-1972(ra) # 80002864 <_ZN9Scheduler3putEP3TCB>
}
    80003020:	00813083          	ld	ra,8(sp)
    80003024:	00013403          	ld	s0,0(sp)
    80003028:	01010113          	addi	sp,sp,16
    8000302c:	00008067          	ret
            (uint64) (stack ? (uint64) stack + DEFAULT_STACK_SIZE - 1 : 0)
    80003030:	00000793          	li	a5,0
    80003034:	f85ff06f          	j	80002fb8 <_ZN3TCBC1EPFvPvES0_S0_+0x10>
    80003038:	00008067          	ret

000000008000303c <_ZN3TCB5yieldEPS_S0_>:
    else RiscV::popSppSpie(true);
    if (running -> function_body) running -> function_body(running -> arg);
    thread_exit();
}

void TCB::yield(TCB *old_running, TCB *new_running) {
    8000303c:	fe010113          	addi	sp,sp,-32
    80003040:	00113c23          	sd	ra,24(sp)
    80003044:	00813823          	sd	s0,16(sp)
    80003048:	00913423          	sd	s1,8(sp)
    8000304c:	01213023          	sd	s2,0(sp)
    80003050:	02010413          	addi	s0,sp,32
    80003054:	00050493          	mv	s1,a0
    80003058:	00058913          	mv	s2,a1
    RiscV::push_registers();
    8000305c:	ffffe097          	auipc	ra,0xffffe
    80003060:	0ac080e7          	jalr	172(ra) # 80001108 <_ZN5RiscV14push_registersEv>
    if (old_running != new_running) context_switch(&old_running -> context, &new_running -> context);
    80003064:	01248a63          	beq	s1,s2,80003078 <_ZN3TCB5yieldEPS_S0_+0x3c>
    80003068:	00890593          	addi	a1,s2,8
    8000306c:	00848513          	addi	a0,s1,8
    80003070:	ffffe097          	auipc	ra,0xffffe
    80003074:	198080e7          	jalr	408(ra) # 80001208 <_ZN3TCB14context_switchEPNS_7ContextES1_>
    RiscV::pop_registers();
    80003078:	ffffe097          	auipc	ra,0xffffe
    8000307c:	110080e7          	jalr	272(ra) # 80001188 <_ZN5RiscV13pop_registersEv>
}
    80003080:	01813083          	ld	ra,24(sp)
    80003084:	01013403          	ld	s0,16(sp)
    80003088:	00813483          	ld	s1,8(sp)
    8000308c:	00013903          	ld	s2,0(sp)
    80003090:	02010113          	addi	sp,sp,32
    80003094:	00008067          	ret

0000000080003098 <_ZN3TCB8dispatchEv>:

void TCB::dispatch() {
    80003098:	fe010113          	addi	sp,sp,-32
    8000309c:	00113c23          	sd	ra,24(sp)
    800030a0:	00813823          	sd	s0,16(sp)
    800030a4:	00913423          	sd	s1,8(sp)
    800030a8:	02010413          	addi	s0,sp,32
    TCB* old = running;
    800030ac:	00009497          	auipc	s1,0x9
    800030b0:	b044b483          	ld	s1,-1276(s1) # 8000bbb0 <_ZN3TCB7runningE>
    if (old -> status == RUNNABLE) Scheduler::put(old);
    800030b4:	0184a783          	lw	a5,24(s1)
    800030b8:	02078e63          	beqz	a5,800030f4 <_ZN3TCB8dispatchEv+0x5c>
    running = Scheduler::get();
    800030bc:	00000097          	auipc	ra,0x0
    800030c0:	808080e7          	jalr	-2040(ra) # 800028c4 <_ZN9Scheduler3getEv>
    800030c4:	00050593          	mv	a1,a0
    800030c8:	00009797          	auipc	a5,0x9
    800030cc:	aea7b423          	sd	a0,-1304(a5) # 8000bbb0 <_ZN3TCB7runningE>
    if (old != running) yield(old, running);
    800030d0:	00a48863          	beq	s1,a0,800030e0 <_ZN3TCB8dispatchEv+0x48>
    800030d4:	00048513          	mv	a0,s1
    800030d8:	00000097          	auipc	ra,0x0
    800030dc:	f64080e7          	jalr	-156(ra) # 8000303c <_ZN3TCB5yieldEPS_S0_>
}
    800030e0:	01813083          	ld	ra,24(sp)
    800030e4:	01013403          	ld	s0,16(sp)
    800030e8:	00813483          	ld	s1,8(sp)
    800030ec:	02010113          	addi	sp,sp,32
    800030f0:	00008067          	ret
    if (old -> status == RUNNABLE) Scheduler::put(old);
    800030f4:	00048513          	mv	a0,s1
    800030f8:	fffff097          	auipc	ra,0xfffff
    800030fc:	76c080e7          	jalr	1900(ra) # 80002864 <_ZN9Scheduler3putEP3TCB>
    80003100:	fbdff06f          	j	800030bc <_ZN3TCB8dispatchEv+0x24>

0000000080003104 <_ZNK3TCB14get_next_readyEv>:

TCB *TCB::get_next_ready() const {
    80003104:	ff010113          	addi	sp,sp,-16
    80003108:	00813423          	sd	s0,8(sp)
    8000310c:	01010413          	addi	s0,sp,16
    return next_ready;
}
    80003110:	04053503          	ld	a0,64(a0)
    80003114:	00813403          	ld	s0,8(sp)
    80003118:	01010113          	addi	sp,sp,16
    8000311c:	00008067          	ret

0000000080003120 <_ZN3TCB14set_next_readyEPS_>:

void TCB::set_next_ready(TCB *next) {
    80003120:	ff010113          	addi	sp,sp,-16
    80003124:	00813423          	sd	s0,8(sp)
    80003128:	01010413          	addi	s0,sp,16
    next_ready = next;
    8000312c:	04b53023          	sd	a1,64(a0)
}
    80003130:	00813403          	ld	s0,8(sp)
    80003134:	01010113          	addi	sp,sp,16
    80003138:	00008067          	ret

000000008000313c <_ZN3TCB17set_next_sleepingEPS_>:

void TCB::set_next_sleeping(TCB *next) {
    8000313c:	ff010113          	addi	sp,sp,-16
    80003140:	00813423          	sd	s0,8(sp)
    80003144:	01010413          	addi	s0,sp,16
    next_sleeping = next;
    80003148:	04b53823          	sd	a1,80(a0)
}
    8000314c:	00813403          	ld	s0,8(sp)
    80003150:	01010113          	addi	sp,sp,16
    80003154:	00008067          	ret

0000000080003158 <_ZNK3TCB17get_next_sleepingEv>:

TCB* TCB::get_next_sleeping() const {
    80003158:	ff010113          	addi	sp,sp,-16
    8000315c:	00813423          	sd	s0,8(sp)
    80003160:	01010413          	addi	s0,sp,16
    return next_sleeping;
}
    80003164:	05053503          	ld	a0,80(a0)
    80003168:	00813403          	ld	s0,8(sp)
    8000316c:	01010113          	addi	sp,sp,16
    80003170:	00008067          	ret

0000000080003174 <_ZN3TCB17set_time_to_sleepEm>:

void TCB::set_time_to_sleep(time_t time) {
    80003174:	ff010113          	addi	sp,sp,-16
    80003178:	00813423          	sd	s0,8(sp)
    8000317c:	01010413          	addi	s0,sp,16
    time_to_sleep = time;
    80003180:	04b53423          	sd	a1,72(a0)
}
    80003184:	00813403          	ld	s0,8(sp)
    80003188:	01010113          	addi	sp,sp,16
    8000318c:	00008067          	ret

0000000080003190 <_ZNK3TCB17get_time_to_sleepEv>:

time_t TCB::get_time_to_sleep() const {
    80003190:	ff010113          	addi	sp,sp,-16
    80003194:	00813423          	sd	s0,8(sp)
    80003198:	01010413          	addi	s0,sp,16
    return time_to_sleep;
}
    8000319c:	04853503          	ld	a0,72(a0)
    800031a0:	00813403          	ld	s0,8(sp)
    800031a4:	01010113          	addi	sp,sp,16
    800031a8:	00008067          	ret

00000000800031ac <_ZN3TCB10set_statusENS_6StatusE>:

void TCB::set_status(TCB::Status stat) {
    800031ac:	ff010113          	addi	sp,sp,-16
    800031b0:	00813423          	sd	s0,8(sp)
    800031b4:	01010413          	addi	s0,sp,16
    this -> status = stat;
    800031b8:	00b52c23          	sw	a1,24(a0)
}
    800031bc:	00813403          	ld	s0,8(sp)
    800031c0:	01010113          	addi	sp,sp,16
    800031c4:	00008067          	ret

00000000800031c8 <_ZN3TCB11thread_exitEv>:
void TCB::thread_exit() {
    800031c8:	ff010113          	addi	sp,sp,-16
    800031cc:	00113423          	sd	ra,8(sp)
    800031d0:	00813023          	sd	s0,0(sp)
    800031d4:	01010413          	addi	s0,sp,16
    running -> set_status(Status::FINISHED);
    800031d8:	00300593          	li	a1,3
    800031dc:	00009517          	auipc	a0,0x9
    800031e0:	9d453503          	ld	a0,-1580(a0) # 8000bbb0 <_ZN3TCB7runningE>
    800031e4:	00000097          	auipc	ra,0x0
    800031e8:	fc8080e7          	jalr	-56(ra) # 800031ac <_ZN3TCB10set_statusENS_6StatusE>
    dispatch();
    800031ec:	00000097          	auipc	ra,0x0
    800031f0:	eac080e7          	jalr	-340(ra) # 80003098 <_ZN3TCB8dispatchEv>
}
    800031f4:	00813083          	ld	ra,8(sp)
    800031f8:	00013403          	ld	s0,0(sp)
    800031fc:	01010113          	addi	sp,sp,16
    80003200:	00008067          	ret

0000000080003204 <_ZN3TCB16wrapper_functionEv>:
void TCB::wrapper_function() {
    80003204:	ff010113          	addi	sp,sp,-16
    80003208:	00113423          	sd	ra,8(sp)
    8000320c:	00813023          	sd	s0,0(sp)
    80003210:	01010413          	addi	s0,sp,16
    if (!running -> function_body || (running -> function_body && running->function_body == kernelConsoleOutput))
    80003214:	00009797          	auipc	a5,0x9
    80003218:	99c7b783          	ld	a5,-1636(a5) # 8000bbb0 <_ZN3TCB7runningE>
    8000321c:	0207b783          	ld	a5,32(a5)
    80003220:	02078063          	beqz	a5,80003240 <_ZN3TCB16wrapper_functionEv+0x3c>
    80003224:	00009717          	auipc	a4,0x9
    80003228:	8dc73703          	ld	a4,-1828(a4) # 8000bb00 <_GLOBAL_OFFSET_TABLE_+0x48>
    8000322c:	00e78a63          	beq	a5,a4,80003240 <_ZN3TCB16wrapper_functionEv+0x3c>
    else RiscV::popSppSpie(true);
    80003230:	00100513          	li	a0,1
    80003234:	00000097          	auipc	ra,0x0
    80003238:	8f8080e7          	jalr	-1800(ra) # 80002b2c <_ZN5RiscV10popSppSpieEb>
    8000323c:	0100006f          	j	8000324c <_ZN3TCB16wrapper_functionEv+0x48>
        RiscV::popSppSpie(false);
    80003240:	00000513          	li	a0,0
    80003244:	00000097          	auipc	ra,0x0
    80003248:	8e8080e7          	jalr	-1816(ra) # 80002b2c <_ZN5RiscV10popSppSpieEb>
    if (running -> function_body) running -> function_body(running -> arg);
    8000324c:	00009717          	auipc	a4,0x9
    80003250:	96473703          	ld	a4,-1692(a4) # 8000bbb0 <_ZN3TCB7runningE>
    80003254:	02073783          	ld	a5,32(a4)
    80003258:	00078663          	beqz	a5,80003264 <_ZN3TCB16wrapper_functionEv+0x60>
    8000325c:	02873503          	ld	a0,40(a4)
    80003260:	000780e7          	jalr	a5
    thread_exit();
    80003264:	00000097          	auipc	ra,0x0
    80003268:	f64080e7          	jalr	-156(ra) # 800031c8 <_ZN3TCB11thread_exitEv>
}
    8000326c:	00813083          	ld	ra,8(sp)
    80003270:	00013403          	ld	s0,0(sp)
    80003274:	01010113          	addi	sp,sp,16
    80003278:	00008067          	ret

000000008000327c <_ZN3TCB5startEv>:

void TCB::start() {
    8000327c:	fe010113          	addi	sp,sp,-32
    80003280:	00113c23          	sd	ra,24(sp)
    80003284:	00813823          	sd	s0,16(sp)
    80003288:	00913423          	sd	s1,8(sp)
    8000328c:	02010413          	addi	s0,sp,32
    80003290:	00050493          	mv	s1,a0
    Scheduler::put(this);
    80003294:	fffff097          	auipc	ra,0xfffff
    80003298:	5d0080e7          	jalr	1488(ra) # 80002864 <_ZN9Scheduler3putEP3TCB>
    if (!running) running = this;
    8000329c:	00009797          	auipc	a5,0x9
    800032a0:	9147b783          	ld	a5,-1772(a5) # 8000bbb0 <_ZN3TCB7runningE>
    800032a4:	00078c63          	beqz	a5,800032bc <_ZN3TCB5startEv+0x40>
}
    800032a8:	01813083          	ld	ra,24(sp)
    800032ac:	01013403          	ld	s0,16(sp)
    800032b0:	00813483          	ld	s1,8(sp)
    800032b4:	02010113          	addi	sp,sp,32
    800032b8:	00008067          	ret
    if (!running) running = this;
    800032bc:	00009797          	auipc	a5,0x9
    800032c0:	8e97ba23          	sd	s1,-1804(a5) # 8000bbb0 <_ZN3TCB7runningE>
}
    800032c4:	fe5ff06f          	j	800032a8 <_ZN3TCB5startEv+0x2c>

00000000800032c8 <_ZN3TCBnwEm>:

void *TCB::operator new(size_t size) {
    800032c8:	ff010113          	addi	sp,sp,-16
    800032cc:	00113423          	sd	ra,8(sp)
    800032d0:	00813023          	sd	s0,0(sp)
    800032d4:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    800032d8:	fffff097          	auipc	ra,0xfffff
    800032dc:	39c080e7          	jalr	924(ra) # 80002674 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    800032e0:	fffff097          	auipc	ra,0xfffff
    800032e4:	f98080e7          	jalr	-104(ra) # 80002278 <_ZN15MemoryAllocator9mem_allocEm>
}
    800032e8:	00813083          	ld	ra,8(sp)
    800032ec:	00013403          	ld	s0,0(sp)
    800032f0:	01010113          	addi	sp,sp,16
    800032f4:	00008067          	ret

00000000800032f8 <_ZN3TCBdlEPv>:

void TCB::operator delete(void *addr) {
    800032f8:	ff010113          	addi	sp,sp,-16
    800032fc:	00113423          	sd	ra,8(sp)
    80003300:	00813023          	sd	s0,0(sp)
    80003304:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    80003308:	fffff097          	auipc	ra,0xfffff
    8000330c:	15c080e7          	jalr	348(ra) # 80002464 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80003310:	00813083          	ld	ra,8(sp)
    80003314:	00013403          	ld	s0,0(sp)
    80003318:	01010113          	addi	sp,sp,16
    8000331c:	00008067          	ret

0000000080003320 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>:
int TCB::thread_create(thread_t *handle, void(*start_routine)(void *), void *arg, void *stack_begin_address) {
    80003320:	fc010113          	addi	sp,sp,-64
    80003324:	02113c23          	sd	ra,56(sp)
    80003328:	02813823          	sd	s0,48(sp)
    8000332c:	02913423          	sd	s1,40(sp)
    80003330:	03213023          	sd	s2,32(sp)
    80003334:	01313c23          	sd	s3,24(sp)
    80003338:	01413823          	sd	s4,16(sp)
    8000333c:	01513423          	sd	s5,8(sp)
    80003340:	04010413          	addi	s0,sp,64
    80003344:	00050913          	mv	s2,a0
    80003348:	00058993          	mv	s3,a1
    8000334c:	00060a13          	mv	s4,a2
    80003350:	00068a93          	mv	s5,a3
    *handle = new TCB(start_routine, arg, stack_begin_address);
    80003354:	05800513          	li	a0,88
    80003358:	00000097          	auipc	ra,0x0
    8000335c:	f70080e7          	jalr	-144(ra) # 800032c8 <_ZN3TCBnwEm>
    80003360:	00050493          	mv	s1,a0
    80003364:	000a8693          	mv	a3,s5
    80003368:	000a0613          	mv	a2,s4
    8000336c:	00098593          	mv	a1,s3
    80003370:	00000097          	auipc	ra,0x0
    80003374:	c38080e7          	jalr	-968(ra) # 80002fa8 <_ZN3TCBC1EPFvPvES0_S0_>
    80003378:	0200006f          	j	80003398 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_+0x78>
    8000337c:	00050913          	mv	s2,a0
    80003380:	00048513          	mv	a0,s1
    80003384:	00000097          	auipc	ra,0x0
    80003388:	f74080e7          	jalr	-140(ra) # 800032f8 <_ZN3TCBdlEPv>
    8000338c:	00090513          	mv	a0,s2
    80003390:	0000a097          	auipc	ra,0xa
    80003394:	948080e7          	jalr	-1720(ra) # 8000ccd8 <_Unwind_Resume>
    80003398:	00993023          	sd	s1,0(s2)
}
    8000339c:	00000513          	li	a0,0
    800033a0:	03813083          	ld	ra,56(sp)
    800033a4:	03013403          	ld	s0,48(sp)
    800033a8:	02813483          	ld	s1,40(sp)
    800033ac:	02013903          	ld	s2,32(sp)
    800033b0:	01813983          	ld	s3,24(sp)
    800033b4:	01013a03          	ld	s4,16(sp)
    800033b8:	00813a83          	ld	s5,8(sp)
    800033bc:	04010113          	addi	sp,sp,64
    800033c0:	00008067          	ret

00000000800033c4 <_ZNK3TCB14get_time_sliceEv>:

time_t TCB::get_time_slice() const {
    800033c4:	ff010113          	addi	sp,sp,-16
    800033c8:	00813423          	sd	s0,8(sp)
    800033cc:	01010413          	addi	s0,sp,16
    return time_slice;
}
    800033d0:	03853503          	ld	a0,56(a0)
    800033d4:	00813403          	ld	s0,8(sp)
    800033d8:	01010113          	addi	sp,sp,16
    800033dc:	00008067          	ret

00000000800033e0 <_ZNK3TCB11is_finishedEv>:

bool TCB::is_finished() const {
    800033e0:	ff010113          	addi	sp,sp,-16
    800033e4:	00813423          	sd	s0,8(sp)
    800033e8:	01010413          	addi	s0,sp,16
    return status == FINISHED;
    800033ec:	01852503          	lw	a0,24(a0)
    800033f0:	ffd50513          	addi	a0,a0,-3
}
    800033f4:	00153513          	seqz	a0,a0
    800033f8:	00813403          	ld	s0,8(sp)
    800033fc:	01010113          	addi	sp,sp,16
    80003400:	00008067          	ret

0000000080003404 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80003404:	fe010113          	addi	sp,sp,-32
    80003408:	00113c23          	sd	ra,24(sp)
    8000340c:	00813823          	sd	s0,16(sp)
    80003410:	00913423          	sd	s1,8(sp)
    80003414:	01213023          	sd	s2,0(sp)
    80003418:	02010413          	addi	s0,sp,32
    8000341c:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80003420:	00000913          	li	s2,0
    80003424:	00c0006f          	j	80003430 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003428:	ffffe097          	auipc	ra,0xffffe
    8000342c:	fa4080e7          	jalr	-92(ra) # 800013cc <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80003430:	ffffe097          	auipc	ra,0xffffe
    80003434:	1f0080e7          	jalr	496(ra) # 80001620 <_Z4getcv>
    80003438:	0005059b          	sext.w	a1,a0
    8000343c:	01b00793          	li	a5,27
    80003440:	02f58a63          	beq	a1,a5,80003474 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80003444:	0084b503          	ld	a0,8(s1)
    80003448:	00001097          	auipc	ra,0x1
    8000344c:	66c080e7          	jalr	1644(ra) # 80004ab4 <_ZN6Buffer3putEi>
        i++;
    80003450:	0019071b          	addiw	a4,s2,1
    80003454:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003458:	0004a683          	lw	a3,0(s1)
    8000345c:	0026979b          	slliw	a5,a3,0x2
    80003460:	00d787bb          	addw	a5,a5,a3
    80003464:	0017979b          	slliw	a5,a5,0x1
    80003468:	02f767bb          	remw	a5,a4,a5
    8000346c:	fc0792e3          	bnez	a5,80003430 <_ZL16producerKeyboardPv+0x2c>
    80003470:	fb9ff06f          	j	80003428 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80003474:	00100793          	li	a5,1
    80003478:	00008717          	auipc	a4,0x8
    8000347c:	74f72423          	sw	a5,1864(a4) # 8000bbc0 <_ZL9threadEnd>
    data->buffer->put('!');
    80003480:	02100593          	li	a1,33
    80003484:	0084b503          	ld	a0,8(s1)
    80003488:	00001097          	auipc	ra,0x1
    8000348c:	62c080e7          	jalr	1580(ra) # 80004ab4 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80003490:	0104b503          	ld	a0,16(s1)
    80003494:	ffffe097          	auipc	ra,0xffffe
    80003498:	05c080e7          	jalr	92(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    8000349c:	01813083          	ld	ra,24(sp)
    800034a0:	01013403          	ld	s0,16(sp)
    800034a4:	00813483          	ld	s1,8(sp)
    800034a8:	00013903          	ld	s2,0(sp)
    800034ac:	02010113          	addi	sp,sp,32
    800034b0:	00008067          	ret

00000000800034b4 <_ZL8producerPv>:

static void producer(void *arg) {
    800034b4:	fe010113          	addi	sp,sp,-32
    800034b8:	00113c23          	sd	ra,24(sp)
    800034bc:	00813823          	sd	s0,16(sp)
    800034c0:	00913423          	sd	s1,8(sp)
    800034c4:	01213023          	sd	s2,0(sp)
    800034c8:	02010413          	addi	s0,sp,32
    800034cc:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800034d0:	00000913          	li	s2,0
    800034d4:	00c0006f          	j	800034e0 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800034d8:	ffffe097          	auipc	ra,0xffffe
    800034dc:	ef4080e7          	jalr	-268(ra) # 800013cc <_Z15thread_dispatchv>
    while (!threadEnd) {
    800034e0:	00008797          	auipc	a5,0x8
    800034e4:	6e07a783          	lw	a5,1760(a5) # 8000bbc0 <_ZL9threadEnd>
    800034e8:	02079e63          	bnez	a5,80003524 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    800034ec:	0004a583          	lw	a1,0(s1)
    800034f0:	0305859b          	addiw	a1,a1,48
    800034f4:	0084b503          	ld	a0,8(s1)
    800034f8:	00001097          	auipc	ra,0x1
    800034fc:	5bc080e7          	jalr	1468(ra) # 80004ab4 <_ZN6Buffer3putEi>
        i++;
    80003500:	0019071b          	addiw	a4,s2,1
    80003504:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003508:	0004a683          	lw	a3,0(s1)
    8000350c:	0026979b          	slliw	a5,a3,0x2
    80003510:	00d787bb          	addw	a5,a5,a3
    80003514:	0017979b          	slliw	a5,a5,0x1
    80003518:	02f767bb          	remw	a5,a4,a5
    8000351c:	fc0792e3          	bnez	a5,800034e0 <_ZL8producerPv+0x2c>
    80003520:	fb9ff06f          	j	800034d8 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80003524:	0104b503          	ld	a0,16(s1)
    80003528:	ffffe097          	auipc	ra,0xffffe
    8000352c:	fc8080e7          	jalr	-56(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    80003530:	01813083          	ld	ra,24(sp)
    80003534:	01013403          	ld	s0,16(sp)
    80003538:	00813483          	ld	s1,8(sp)
    8000353c:	00013903          	ld	s2,0(sp)
    80003540:	02010113          	addi	sp,sp,32
    80003544:	00008067          	ret

0000000080003548 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80003548:	fd010113          	addi	sp,sp,-48
    8000354c:	02113423          	sd	ra,40(sp)
    80003550:	02813023          	sd	s0,32(sp)
    80003554:	00913c23          	sd	s1,24(sp)
    80003558:	01213823          	sd	s2,16(sp)
    8000355c:	01313423          	sd	s3,8(sp)
    80003560:	03010413          	addi	s0,sp,48
    80003564:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003568:	00000993          	li	s3,0
    8000356c:	01c0006f          	j	80003588 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80003570:	ffffe097          	auipc	ra,0xffffe
    80003574:	e5c080e7          	jalr	-420(ra) # 800013cc <_Z15thread_dispatchv>
    80003578:	0500006f          	j	800035c8 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    8000357c:	00a00513          	li	a0,10
    80003580:	ffffe097          	auipc	ra,0xffffe
    80003584:	0ec080e7          	jalr	236(ra) # 8000166c <_Z4putcc>
    while (!threadEnd) {
    80003588:	00008797          	auipc	a5,0x8
    8000358c:	6387a783          	lw	a5,1592(a5) # 8000bbc0 <_ZL9threadEnd>
    80003590:	06079063          	bnez	a5,800035f0 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80003594:	00893503          	ld	a0,8(s2)
    80003598:	00001097          	auipc	ra,0x1
    8000359c:	5ac080e7          	jalr	1452(ra) # 80004b44 <_ZN6Buffer3getEv>
        i++;
    800035a0:	0019849b          	addiw	s1,s3,1
    800035a4:	0004899b          	sext.w	s3,s1
        putc(key);
    800035a8:	0ff57513          	andi	a0,a0,255
    800035ac:	ffffe097          	auipc	ra,0xffffe
    800035b0:	0c0080e7          	jalr	192(ra) # 8000166c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800035b4:	00092703          	lw	a4,0(s2)
    800035b8:	0027179b          	slliw	a5,a4,0x2
    800035bc:	00e787bb          	addw	a5,a5,a4
    800035c0:	02f4e7bb          	remw	a5,s1,a5
    800035c4:	fa0786e3          	beqz	a5,80003570 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    800035c8:	05000793          	li	a5,80
    800035cc:	02f4e4bb          	remw	s1,s1,a5
    800035d0:	fa049ce3          	bnez	s1,80003588 <_ZL8consumerPv+0x40>
    800035d4:	fa9ff06f          	j	8000357c <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    800035d8:	00893503          	ld	a0,8(s2)
    800035dc:	00001097          	auipc	ra,0x1
    800035e0:	568080e7          	jalr	1384(ra) # 80004b44 <_ZN6Buffer3getEv>
        putc(key);
    800035e4:	0ff57513          	andi	a0,a0,255
    800035e8:	ffffe097          	auipc	ra,0xffffe
    800035ec:	084080e7          	jalr	132(ra) # 8000166c <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    800035f0:	00893503          	ld	a0,8(s2)
    800035f4:	00001097          	auipc	ra,0x1
    800035f8:	5dc080e7          	jalr	1500(ra) # 80004bd0 <_ZN6Buffer6getCntEv>
    800035fc:	fca04ee3          	bgtz	a0,800035d8 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80003600:	01093503          	ld	a0,16(s2)
    80003604:	ffffe097          	auipc	ra,0xffffe
    80003608:	eec080e7          	jalr	-276(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    8000360c:	02813083          	ld	ra,40(sp)
    80003610:	02013403          	ld	s0,32(sp)
    80003614:	01813483          	ld	s1,24(sp)
    80003618:	01013903          	ld	s2,16(sp)
    8000361c:	00813983          	ld	s3,8(sp)
    80003620:	03010113          	addi	sp,sp,48
    80003624:	00008067          	ret

0000000080003628 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80003628:	f9010113          	addi	sp,sp,-112
    8000362c:	06113423          	sd	ra,104(sp)
    80003630:	06813023          	sd	s0,96(sp)
    80003634:	04913c23          	sd	s1,88(sp)
    80003638:	05213823          	sd	s2,80(sp)
    8000363c:	05313423          	sd	s3,72(sp)
    80003640:	05413023          	sd	s4,64(sp)
    80003644:	03513c23          	sd	s5,56(sp)
    80003648:	03613823          	sd	s6,48(sp)
    8000364c:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80003650:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003654:	00006517          	auipc	a0,0x6
    80003658:	adc50513          	addi	a0,a0,-1316 # 80009130 <CONSOLE_STATUS+0x120>
    8000365c:	00002097          	auipc	ra,0x2
    80003660:	540080e7          	jalr	1344(ra) # 80005b9c <_Z11printStringPKc>
    getString(input, 30);
    80003664:	01e00593          	li	a1,30
    80003668:	fa040493          	addi	s1,s0,-96
    8000366c:	00048513          	mv	a0,s1
    80003670:	00002097          	auipc	ra,0x2
    80003674:	5b4080e7          	jalr	1460(ra) # 80005c24 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003678:	00048513          	mv	a0,s1
    8000367c:	00002097          	auipc	ra,0x2
    80003680:	680080e7          	jalr	1664(ra) # 80005cfc <_Z11stringToIntPKc>
    80003684:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003688:	00006517          	auipc	a0,0x6
    8000368c:	ac850513          	addi	a0,a0,-1336 # 80009150 <CONSOLE_STATUS+0x140>
    80003690:	00002097          	auipc	ra,0x2
    80003694:	50c080e7          	jalr	1292(ra) # 80005b9c <_Z11printStringPKc>
    getString(input, 30);
    80003698:	01e00593          	li	a1,30
    8000369c:	00048513          	mv	a0,s1
    800036a0:	00002097          	auipc	ra,0x2
    800036a4:	584080e7          	jalr	1412(ra) # 80005c24 <_Z9getStringPci>
    n = stringToInt(input);
    800036a8:	00048513          	mv	a0,s1
    800036ac:	00002097          	auipc	ra,0x2
    800036b0:	650080e7          	jalr	1616(ra) # 80005cfc <_Z11stringToIntPKc>
    800036b4:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800036b8:	00006517          	auipc	a0,0x6
    800036bc:	ab850513          	addi	a0,a0,-1352 # 80009170 <CONSOLE_STATUS+0x160>
    800036c0:	00002097          	auipc	ra,0x2
    800036c4:	4dc080e7          	jalr	1244(ra) # 80005b9c <_Z11printStringPKc>
    800036c8:	00000613          	li	a2,0
    800036cc:	00a00593          	li	a1,10
    800036d0:	00090513          	mv	a0,s2
    800036d4:	00002097          	auipc	ra,0x2
    800036d8:	678080e7          	jalr	1656(ra) # 80005d4c <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800036dc:	00006517          	auipc	a0,0x6
    800036e0:	aac50513          	addi	a0,a0,-1364 # 80009188 <CONSOLE_STATUS+0x178>
    800036e4:	00002097          	auipc	ra,0x2
    800036e8:	4b8080e7          	jalr	1208(ra) # 80005b9c <_Z11printStringPKc>
    800036ec:	00000613          	li	a2,0
    800036f0:	00a00593          	li	a1,10
    800036f4:	00048513          	mv	a0,s1
    800036f8:	00002097          	auipc	ra,0x2
    800036fc:	654080e7          	jalr	1620(ra) # 80005d4c <_Z8printIntiii>
    printString(".\n");
    80003700:	00006517          	auipc	a0,0x6
    80003704:	aa050513          	addi	a0,a0,-1376 # 800091a0 <CONSOLE_STATUS+0x190>
    80003708:	00002097          	auipc	ra,0x2
    8000370c:	494080e7          	jalr	1172(ra) # 80005b9c <_Z11printStringPKc>
    if(threadNum > n) {
    80003710:	0324c463          	blt	s1,s2,80003738 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003714:	03205c63          	blez	s2,8000374c <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003718:	03800513          	li	a0,56
    8000371c:	ffffe097          	auipc	ra,0xffffe
    80003720:	724080e7          	jalr	1828(ra) # 80001e40 <_Znwm>
    80003724:	00050a13          	mv	s4,a0
    80003728:	00048593          	mv	a1,s1
    8000372c:	00001097          	auipc	ra,0x1
    80003730:	2ec080e7          	jalr	748(ra) # 80004a18 <_ZN6BufferC1Ei>
    80003734:	0300006f          	j	80003764 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003738:	00006517          	auipc	a0,0x6
    8000373c:	a7050513          	addi	a0,a0,-1424 # 800091a8 <CONSOLE_STATUS+0x198>
    80003740:	00002097          	auipc	ra,0x2
    80003744:	45c080e7          	jalr	1116(ra) # 80005b9c <_Z11printStringPKc>
        return;
    80003748:	0140006f          	j	8000375c <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    8000374c:	00006517          	auipc	a0,0x6
    80003750:	a9c50513          	addi	a0,a0,-1380 # 800091e8 <CONSOLE_STATUS+0x1d8>
    80003754:	00002097          	auipc	ra,0x2
    80003758:	448080e7          	jalr	1096(ra) # 80005b9c <_Z11printStringPKc>
        return;
    8000375c:	000b0113          	mv	sp,s6
    80003760:	1500006f          	j	800038b0 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003764:	00000593          	li	a1,0
    80003768:	00008517          	auipc	a0,0x8
    8000376c:	46050513          	addi	a0,a0,1120 # 8000bbc8 <_ZL10waitForAll>
    80003770:	ffffe097          	auipc	ra,0xffffe
    80003774:	c98080e7          	jalr	-872(ra) # 80001408 <_Z8sem_openPP3Semj>
    thread_t threads[threadNum];
    80003778:	00391793          	slli	a5,s2,0x3
    8000377c:	00f78793          	addi	a5,a5,15
    80003780:	ff07f793          	andi	a5,a5,-16
    80003784:	40f10133          	sub	sp,sp,a5
    80003788:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    8000378c:	0019071b          	addiw	a4,s2,1
    80003790:	00171793          	slli	a5,a4,0x1
    80003794:	00e787b3          	add	a5,a5,a4
    80003798:	00379793          	slli	a5,a5,0x3
    8000379c:	00f78793          	addi	a5,a5,15
    800037a0:	ff07f793          	andi	a5,a5,-16
    800037a4:	40f10133          	sub	sp,sp,a5
    800037a8:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    800037ac:	00191613          	slli	a2,s2,0x1
    800037b0:	012607b3          	add	a5,a2,s2
    800037b4:	00379793          	slli	a5,a5,0x3
    800037b8:	00f987b3          	add	a5,s3,a5
    800037bc:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800037c0:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    800037c4:	00008717          	auipc	a4,0x8
    800037c8:	40473703          	ld	a4,1028(a4) # 8000bbc8 <_ZL10waitForAll>
    800037cc:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    800037d0:	00078613          	mv	a2,a5
    800037d4:	00000597          	auipc	a1,0x0
    800037d8:	d7458593          	addi	a1,a1,-652 # 80003548 <_ZL8consumerPv>
    800037dc:	f9840513          	addi	a0,s0,-104
    800037e0:	ffffe097          	auipc	ra,0xffffe
    800037e4:	b18080e7          	jalr	-1256(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800037e8:	00000493          	li	s1,0
    800037ec:	0280006f          	j	80003814 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    800037f0:	00000597          	auipc	a1,0x0
    800037f4:	c1458593          	addi	a1,a1,-1004 # 80003404 <_ZL16producerKeyboardPv>
                      data + i);
    800037f8:	00179613          	slli	a2,a5,0x1
    800037fc:	00f60633          	add	a2,a2,a5
    80003800:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003804:	00c98633          	add	a2,s3,a2
    80003808:	ffffe097          	auipc	ra,0xffffe
    8000380c:	af0080e7          	jalr	-1296(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003810:	0014849b          	addiw	s1,s1,1
    80003814:	0524d263          	bge	s1,s2,80003858 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003818:	00149793          	slli	a5,s1,0x1
    8000381c:	009787b3          	add	a5,a5,s1
    80003820:	00379793          	slli	a5,a5,0x3
    80003824:	00f987b3          	add	a5,s3,a5
    80003828:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    8000382c:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80003830:	00008717          	auipc	a4,0x8
    80003834:	39873703          	ld	a4,920(a4) # 8000bbc8 <_ZL10waitForAll>
    80003838:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    8000383c:	00048793          	mv	a5,s1
    80003840:	00349513          	slli	a0,s1,0x3
    80003844:	00aa8533          	add	a0,s5,a0
    80003848:	fa9054e3          	blez	s1,800037f0 <_Z22producerConsumer_C_APIv+0x1c8>
    8000384c:	00000597          	auipc	a1,0x0
    80003850:	c6858593          	addi	a1,a1,-920 # 800034b4 <_ZL8producerPv>
    80003854:	fa5ff06f          	j	800037f8 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003858:	ffffe097          	auipc	ra,0xffffe
    8000385c:	b74080e7          	jalr	-1164(ra) # 800013cc <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003860:	00000493          	li	s1,0
    80003864:	00994e63          	blt	s2,s1,80003880 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003868:	00008517          	auipc	a0,0x8
    8000386c:	36053503          	ld	a0,864(a0) # 8000bbc8 <_ZL10waitForAll>
    80003870:	ffffe097          	auipc	ra,0xffffe
    80003874:	c34080e7          	jalr	-972(ra) # 800014a4 <_Z8sem_waitP3Sem>
    for (int i = 0; i <= threadNum; i++) {
    80003878:	0014849b          	addiw	s1,s1,1
    8000387c:	fe9ff06f          	j	80003864 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003880:	00008517          	auipc	a0,0x8
    80003884:	34853503          	ld	a0,840(a0) # 8000bbc8 <_ZL10waitForAll>
    80003888:	ffffe097          	auipc	ra,0xffffe
    8000388c:	bd0080e7          	jalr	-1072(ra) # 80001458 <_Z9sem_closeP3Sem>
    delete buffer;
    80003890:	000a0e63          	beqz	s4,800038ac <_Z22producerConsumer_C_APIv+0x284>
    80003894:	000a0513          	mv	a0,s4
    80003898:	00001097          	auipc	ra,0x1
    8000389c:	3c0080e7          	jalr	960(ra) # 80004c58 <_ZN6BufferD1Ev>
    800038a0:	000a0513          	mv	a0,s4
    800038a4:	ffffe097          	auipc	ra,0xffffe
    800038a8:	5c4080e7          	jalr	1476(ra) # 80001e68 <_ZdlPv>
    800038ac:	000b0113          	mv	sp,s6

}
    800038b0:	f9040113          	addi	sp,s0,-112
    800038b4:	06813083          	ld	ra,104(sp)
    800038b8:	06013403          	ld	s0,96(sp)
    800038bc:	05813483          	ld	s1,88(sp)
    800038c0:	05013903          	ld	s2,80(sp)
    800038c4:	04813983          	ld	s3,72(sp)
    800038c8:	04013a03          	ld	s4,64(sp)
    800038cc:	03813a83          	ld	s5,56(sp)
    800038d0:	03013b03          	ld	s6,48(sp)
    800038d4:	07010113          	addi	sp,sp,112
    800038d8:	00008067          	ret
    800038dc:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    800038e0:	000a0513          	mv	a0,s4
    800038e4:	ffffe097          	auipc	ra,0xffffe
    800038e8:	584080e7          	jalr	1412(ra) # 80001e68 <_ZdlPv>
    800038ec:	00048513          	mv	a0,s1
    800038f0:	00009097          	auipc	ra,0x9
    800038f4:	3e8080e7          	jalr	1000(ra) # 8000ccd8 <_Unwind_Resume>

00000000800038f8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800038f8:	fe010113          	addi	sp,sp,-32
    800038fc:	00113c23          	sd	ra,24(sp)
    80003900:	00813823          	sd	s0,16(sp)
    80003904:	00913423          	sd	s1,8(sp)
    80003908:	01213023          	sd	s2,0(sp)
    8000390c:	02010413          	addi	s0,sp,32
    80003910:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003914:	00100793          	li	a5,1
    80003918:	02a7f863          	bgeu	a5,a0,80003948 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000391c:	00a00793          	li	a5,10
    80003920:	02f577b3          	remu	a5,a0,a5
    80003924:	02078e63          	beqz	a5,80003960 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003928:	fff48513          	addi	a0,s1,-1
    8000392c:	00000097          	auipc	ra,0x0
    80003930:	fcc080e7          	jalr	-52(ra) # 800038f8 <_ZL9fibonaccim>
    80003934:	00050913          	mv	s2,a0
    80003938:	ffe48513          	addi	a0,s1,-2
    8000393c:	00000097          	auipc	ra,0x0
    80003940:	fbc080e7          	jalr	-68(ra) # 800038f8 <_ZL9fibonaccim>
    80003944:	00a90533          	add	a0,s2,a0
}
    80003948:	01813083          	ld	ra,24(sp)
    8000394c:	01013403          	ld	s0,16(sp)
    80003950:	00813483          	ld	s1,8(sp)
    80003954:	00013903          	ld	s2,0(sp)
    80003958:	02010113          	addi	sp,sp,32
    8000395c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003960:	ffffe097          	auipc	ra,0xffffe
    80003964:	a6c080e7          	jalr	-1428(ra) # 800013cc <_Z15thread_dispatchv>
    80003968:	fc1ff06f          	j	80003928 <_ZL9fibonaccim+0x30>

000000008000396c <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    8000396c:	fe010113          	addi	sp,sp,-32
    80003970:	00113c23          	sd	ra,24(sp)
    80003974:	00813823          	sd	s0,16(sp)
    80003978:	00913423          	sd	s1,8(sp)
    8000397c:	01213023          	sd	s2,0(sp)
    80003980:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003984:	00000913          	li	s2,0
    80003988:	0380006f          	j	800039c0 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    8000398c:	ffffe097          	auipc	ra,0xffffe
    80003990:	a40080e7          	jalr	-1472(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003994:	00148493          	addi	s1,s1,1
    80003998:	000027b7          	lui	a5,0x2
    8000399c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800039a0:	0097ee63          	bltu	a5,s1,800039bc <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800039a4:	00000713          	li	a4,0
    800039a8:	000077b7          	lui	a5,0x7
    800039ac:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800039b0:	fce7eee3          	bltu	a5,a4,8000398c <_ZN7WorkerA11workerBodyAEPv+0x20>
    800039b4:	00170713          	addi	a4,a4,1
    800039b8:	ff1ff06f          	j	800039a8 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800039bc:	00190913          	addi	s2,s2,1
    800039c0:	00900793          	li	a5,9
    800039c4:	0527e063          	bltu	a5,s2,80003a04 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800039c8:	00006517          	auipc	a0,0x6
    800039cc:	85050513          	addi	a0,a0,-1968 # 80009218 <CONSOLE_STATUS+0x208>
    800039d0:	00002097          	auipc	ra,0x2
    800039d4:	1cc080e7          	jalr	460(ra) # 80005b9c <_Z11printStringPKc>
    800039d8:	00000613          	li	a2,0
    800039dc:	00a00593          	li	a1,10
    800039e0:	0009051b          	sext.w	a0,s2
    800039e4:	00002097          	auipc	ra,0x2
    800039e8:	368080e7          	jalr	872(ra) # 80005d4c <_Z8printIntiii>
    800039ec:	00005517          	auipc	a0,0x5
    800039f0:	77c50513          	addi	a0,a0,1916 # 80009168 <CONSOLE_STATUS+0x158>
    800039f4:	00002097          	auipc	ra,0x2
    800039f8:	1a8080e7          	jalr	424(ra) # 80005b9c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800039fc:	00000493          	li	s1,0
    80003a00:	f99ff06f          	j	80003998 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003a04:	00006517          	auipc	a0,0x6
    80003a08:	81c50513          	addi	a0,a0,-2020 # 80009220 <CONSOLE_STATUS+0x210>
    80003a0c:	00002097          	auipc	ra,0x2
    80003a10:	190080e7          	jalr	400(ra) # 80005b9c <_Z11printStringPKc>
    finishedA = true;
    80003a14:	00100793          	li	a5,1
    80003a18:	00008717          	auipc	a4,0x8
    80003a1c:	1af70c23          	sb	a5,440(a4) # 8000bbd0 <_ZL9finishedA>
}
    80003a20:	01813083          	ld	ra,24(sp)
    80003a24:	01013403          	ld	s0,16(sp)
    80003a28:	00813483          	ld	s1,8(sp)
    80003a2c:	00013903          	ld	s2,0(sp)
    80003a30:	02010113          	addi	sp,sp,32
    80003a34:	00008067          	ret

0000000080003a38 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003a38:	fe010113          	addi	sp,sp,-32
    80003a3c:	00113c23          	sd	ra,24(sp)
    80003a40:	00813823          	sd	s0,16(sp)
    80003a44:	00913423          	sd	s1,8(sp)
    80003a48:	01213023          	sd	s2,0(sp)
    80003a4c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003a50:	00000913          	li	s2,0
    80003a54:	0380006f          	j	80003a8c <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003a58:	ffffe097          	auipc	ra,0xffffe
    80003a5c:	974080e7          	jalr	-1676(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003a60:	00148493          	addi	s1,s1,1
    80003a64:	000027b7          	lui	a5,0x2
    80003a68:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003a6c:	0097ee63          	bltu	a5,s1,80003a88 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003a70:	00000713          	li	a4,0
    80003a74:	000077b7          	lui	a5,0x7
    80003a78:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003a7c:	fce7eee3          	bltu	a5,a4,80003a58 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003a80:	00170713          	addi	a4,a4,1
    80003a84:	ff1ff06f          	j	80003a74 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003a88:	00190913          	addi	s2,s2,1
    80003a8c:	00f00793          	li	a5,15
    80003a90:	0527e063          	bltu	a5,s2,80003ad0 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003a94:	00005517          	auipc	a0,0x5
    80003a98:	79c50513          	addi	a0,a0,1948 # 80009230 <CONSOLE_STATUS+0x220>
    80003a9c:	00002097          	auipc	ra,0x2
    80003aa0:	100080e7          	jalr	256(ra) # 80005b9c <_Z11printStringPKc>
    80003aa4:	00000613          	li	a2,0
    80003aa8:	00a00593          	li	a1,10
    80003aac:	0009051b          	sext.w	a0,s2
    80003ab0:	00002097          	auipc	ra,0x2
    80003ab4:	29c080e7          	jalr	668(ra) # 80005d4c <_Z8printIntiii>
    80003ab8:	00005517          	auipc	a0,0x5
    80003abc:	6b050513          	addi	a0,a0,1712 # 80009168 <CONSOLE_STATUS+0x158>
    80003ac0:	00002097          	auipc	ra,0x2
    80003ac4:	0dc080e7          	jalr	220(ra) # 80005b9c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003ac8:	00000493          	li	s1,0
    80003acc:	f99ff06f          	j	80003a64 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003ad0:	00005517          	auipc	a0,0x5
    80003ad4:	76850513          	addi	a0,a0,1896 # 80009238 <CONSOLE_STATUS+0x228>
    80003ad8:	00002097          	auipc	ra,0x2
    80003adc:	0c4080e7          	jalr	196(ra) # 80005b9c <_Z11printStringPKc>
    finishedB = true;
    80003ae0:	00100793          	li	a5,1
    80003ae4:	00008717          	auipc	a4,0x8
    80003ae8:	0ef706a3          	sb	a5,237(a4) # 8000bbd1 <_ZL9finishedB>
    thread_dispatch();
    80003aec:	ffffe097          	auipc	ra,0xffffe
    80003af0:	8e0080e7          	jalr	-1824(ra) # 800013cc <_Z15thread_dispatchv>
}
    80003af4:	01813083          	ld	ra,24(sp)
    80003af8:	01013403          	ld	s0,16(sp)
    80003afc:	00813483          	ld	s1,8(sp)
    80003b00:	00013903          	ld	s2,0(sp)
    80003b04:	02010113          	addi	sp,sp,32
    80003b08:	00008067          	ret

0000000080003b0c <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003b0c:	fe010113          	addi	sp,sp,-32
    80003b10:	00113c23          	sd	ra,24(sp)
    80003b14:	00813823          	sd	s0,16(sp)
    80003b18:	00913423          	sd	s1,8(sp)
    80003b1c:	01213023          	sd	s2,0(sp)
    80003b20:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003b24:	00000493          	li	s1,0
    80003b28:	0400006f          	j	80003b68 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003b2c:	00005517          	auipc	a0,0x5
    80003b30:	71c50513          	addi	a0,a0,1820 # 80009248 <CONSOLE_STATUS+0x238>
    80003b34:	00002097          	auipc	ra,0x2
    80003b38:	068080e7          	jalr	104(ra) # 80005b9c <_Z11printStringPKc>
    80003b3c:	00000613          	li	a2,0
    80003b40:	00a00593          	li	a1,10
    80003b44:	00048513          	mv	a0,s1
    80003b48:	00002097          	auipc	ra,0x2
    80003b4c:	204080e7          	jalr	516(ra) # 80005d4c <_Z8printIntiii>
    80003b50:	00005517          	auipc	a0,0x5
    80003b54:	61850513          	addi	a0,a0,1560 # 80009168 <CONSOLE_STATUS+0x158>
    80003b58:	00002097          	auipc	ra,0x2
    80003b5c:	044080e7          	jalr	68(ra) # 80005b9c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003b60:	0014849b          	addiw	s1,s1,1
    80003b64:	0ff4f493          	andi	s1,s1,255
    80003b68:	00200793          	li	a5,2
    80003b6c:	fc97f0e3          	bgeu	a5,s1,80003b2c <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003b70:	00005517          	auipc	a0,0x5
    80003b74:	6e050513          	addi	a0,a0,1760 # 80009250 <CONSOLE_STATUS+0x240>
    80003b78:	00002097          	auipc	ra,0x2
    80003b7c:	024080e7          	jalr	36(ra) # 80005b9c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003b80:	00700313          	li	t1,7
    thread_dispatch();
    80003b84:	ffffe097          	auipc	ra,0xffffe
    80003b88:	848080e7          	jalr	-1976(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003b8c:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003b90:	00005517          	auipc	a0,0x5
    80003b94:	6d050513          	addi	a0,a0,1744 # 80009260 <CONSOLE_STATUS+0x250>
    80003b98:	00002097          	auipc	ra,0x2
    80003b9c:	004080e7          	jalr	4(ra) # 80005b9c <_Z11printStringPKc>
    80003ba0:	00000613          	li	a2,0
    80003ba4:	00a00593          	li	a1,10
    80003ba8:	0009051b          	sext.w	a0,s2
    80003bac:	00002097          	auipc	ra,0x2
    80003bb0:	1a0080e7          	jalr	416(ra) # 80005d4c <_Z8printIntiii>
    80003bb4:	00005517          	auipc	a0,0x5
    80003bb8:	5b450513          	addi	a0,a0,1460 # 80009168 <CONSOLE_STATUS+0x158>
    80003bbc:	00002097          	auipc	ra,0x2
    80003bc0:	fe0080e7          	jalr	-32(ra) # 80005b9c <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003bc4:	00c00513          	li	a0,12
    80003bc8:	00000097          	auipc	ra,0x0
    80003bcc:	d30080e7          	jalr	-720(ra) # 800038f8 <_ZL9fibonaccim>
    80003bd0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003bd4:	00005517          	auipc	a0,0x5
    80003bd8:	69450513          	addi	a0,a0,1684 # 80009268 <CONSOLE_STATUS+0x258>
    80003bdc:	00002097          	auipc	ra,0x2
    80003be0:	fc0080e7          	jalr	-64(ra) # 80005b9c <_Z11printStringPKc>
    80003be4:	00000613          	li	a2,0
    80003be8:	00a00593          	li	a1,10
    80003bec:	0009051b          	sext.w	a0,s2
    80003bf0:	00002097          	auipc	ra,0x2
    80003bf4:	15c080e7          	jalr	348(ra) # 80005d4c <_Z8printIntiii>
    80003bf8:	00005517          	auipc	a0,0x5
    80003bfc:	57050513          	addi	a0,a0,1392 # 80009168 <CONSOLE_STATUS+0x158>
    80003c00:	00002097          	auipc	ra,0x2
    80003c04:	f9c080e7          	jalr	-100(ra) # 80005b9c <_Z11printStringPKc>
    80003c08:	0400006f          	j	80003c48 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003c0c:	00005517          	auipc	a0,0x5
    80003c10:	63c50513          	addi	a0,a0,1596 # 80009248 <CONSOLE_STATUS+0x238>
    80003c14:	00002097          	auipc	ra,0x2
    80003c18:	f88080e7          	jalr	-120(ra) # 80005b9c <_Z11printStringPKc>
    80003c1c:	00000613          	li	a2,0
    80003c20:	00a00593          	li	a1,10
    80003c24:	00048513          	mv	a0,s1
    80003c28:	00002097          	auipc	ra,0x2
    80003c2c:	124080e7          	jalr	292(ra) # 80005d4c <_Z8printIntiii>
    80003c30:	00005517          	auipc	a0,0x5
    80003c34:	53850513          	addi	a0,a0,1336 # 80009168 <CONSOLE_STATUS+0x158>
    80003c38:	00002097          	auipc	ra,0x2
    80003c3c:	f64080e7          	jalr	-156(ra) # 80005b9c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003c40:	0014849b          	addiw	s1,s1,1
    80003c44:	0ff4f493          	andi	s1,s1,255
    80003c48:	00500793          	li	a5,5
    80003c4c:	fc97f0e3          	bgeu	a5,s1,80003c0c <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80003c50:	00005517          	auipc	a0,0x5
    80003c54:	5d050513          	addi	a0,a0,1488 # 80009220 <CONSOLE_STATUS+0x210>
    80003c58:	00002097          	auipc	ra,0x2
    80003c5c:	f44080e7          	jalr	-188(ra) # 80005b9c <_Z11printStringPKc>
    finishedC = true;
    80003c60:	00100793          	li	a5,1
    80003c64:	00008717          	auipc	a4,0x8
    80003c68:	f6f70723          	sb	a5,-146(a4) # 8000bbd2 <_ZL9finishedC>
    thread_dispatch();
    80003c6c:	ffffd097          	auipc	ra,0xffffd
    80003c70:	760080e7          	jalr	1888(ra) # 800013cc <_Z15thread_dispatchv>
}
    80003c74:	01813083          	ld	ra,24(sp)
    80003c78:	01013403          	ld	s0,16(sp)
    80003c7c:	00813483          	ld	s1,8(sp)
    80003c80:	00013903          	ld	s2,0(sp)
    80003c84:	02010113          	addi	sp,sp,32
    80003c88:	00008067          	ret

0000000080003c8c <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003c8c:	fe010113          	addi	sp,sp,-32
    80003c90:	00113c23          	sd	ra,24(sp)
    80003c94:	00813823          	sd	s0,16(sp)
    80003c98:	00913423          	sd	s1,8(sp)
    80003c9c:	01213023          	sd	s2,0(sp)
    80003ca0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003ca4:	00a00493          	li	s1,10
    80003ca8:	0400006f          	j	80003ce8 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003cac:	00005517          	auipc	a0,0x5
    80003cb0:	5cc50513          	addi	a0,a0,1484 # 80009278 <CONSOLE_STATUS+0x268>
    80003cb4:	00002097          	auipc	ra,0x2
    80003cb8:	ee8080e7          	jalr	-280(ra) # 80005b9c <_Z11printStringPKc>
    80003cbc:	00000613          	li	a2,0
    80003cc0:	00a00593          	li	a1,10
    80003cc4:	00048513          	mv	a0,s1
    80003cc8:	00002097          	auipc	ra,0x2
    80003ccc:	084080e7          	jalr	132(ra) # 80005d4c <_Z8printIntiii>
    80003cd0:	00005517          	auipc	a0,0x5
    80003cd4:	49850513          	addi	a0,a0,1176 # 80009168 <CONSOLE_STATUS+0x158>
    80003cd8:	00002097          	auipc	ra,0x2
    80003cdc:	ec4080e7          	jalr	-316(ra) # 80005b9c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003ce0:	0014849b          	addiw	s1,s1,1
    80003ce4:	0ff4f493          	andi	s1,s1,255
    80003ce8:	00c00793          	li	a5,12
    80003cec:	fc97f0e3          	bgeu	a5,s1,80003cac <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003cf0:	00005517          	auipc	a0,0x5
    80003cf4:	59050513          	addi	a0,a0,1424 # 80009280 <CONSOLE_STATUS+0x270>
    80003cf8:	00002097          	auipc	ra,0x2
    80003cfc:	ea4080e7          	jalr	-348(ra) # 80005b9c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003d00:	00500313          	li	t1,5
    thread_dispatch();
    80003d04:	ffffd097          	auipc	ra,0xffffd
    80003d08:	6c8080e7          	jalr	1736(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003d0c:	01000513          	li	a0,16
    80003d10:	00000097          	auipc	ra,0x0
    80003d14:	be8080e7          	jalr	-1048(ra) # 800038f8 <_ZL9fibonaccim>
    80003d18:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003d1c:	00005517          	auipc	a0,0x5
    80003d20:	57450513          	addi	a0,a0,1396 # 80009290 <CONSOLE_STATUS+0x280>
    80003d24:	00002097          	auipc	ra,0x2
    80003d28:	e78080e7          	jalr	-392(ra) # 80005b9c <_Z11printStringPKc>
    80003d2c:	00000613          	li	a2,0
    80003d30:	00a00593          	li	a1,10
    80003d34:	0009051b          	sext.w	a0,s2
    80003d38:	00002097          	auipc	ra,0x2
    80003d3c:	014080e7          	jalr	20(ra) # 80005d4c <_Z8printIntiii>
    80003d40:	00005517          	auipc	a0,0x5
    80003d44:	42850513          	addi	a0,a0,1064 # 80009168 <CONSOLE_STATUS+0x158>
    80003d48:	00002097          	auipc	ra,0x2
    80003d4c:	e54080e7          	jalr	-428(ra) # 80005b9c <_Z11printStringPKc>
    80003d50:	0400006f          	j	80003d90 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003d54:	00005517          	auipc	a0,0x5
    80003d58:	52450513          	addi	a0,a0,1316 # 80009278 <CONSOLE_STATUS+0x268>
    80003d5c:	00002097          	auipc	ra,0x2
    80003d60:	e40080e7          	jalr	-448(ra) # 80005b9c <_Z11printStringPKc>
    80003d64:	00000613          	li	a2,0
    80003d68:	00a00593          	li	a1,10
    80003d6c:	00048513          	mv	a0,s1
    80003d70:	00002097          	auipc	ra,0x2
    80003d74:	fdc080e7          	jalr	-36(ra) # 80005d4c <_Z8printIntiii>
    80003d78:	00005517          	auipc	a0,0x5
    80003d7c:	3f050513          	addi	a0,a0,1008 # 80009168 <CONSOLE_STATUS+0x158>
    80003d80:	00002097          	auipc	ra,0x2
    80003d84:	e1c080e7          	jalr	-484(ra) # 80005b9c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003d88:	0014849b          	addiw	s1,s1,1
    80003d8c:	0ff4f493          	andi	s1,s1,255
    80003d90:	00f00793          	li	a5,15
    80003d94:	fc97f0e3          	bgeu	a5,s1,80003d54 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003d98:	00005517          	auipc	a0,0x5
    80003d9c:	50850513          	addi	a0,a0,1288 # 800092a0 <CONSOLE_STATUS+0x290>
    80003da0:	00002097          	auipc	ra,0x2
    80003da4:	dfc080e7          	jalr	-516(ra) # 80005b9c <_Z11printStringPKc>
    finishedD = true;
    80003da8:	00100793          	li	a5,1
    80003dac:	00008717          	auipc	a4,0x8
    80003db0:	e2f703a3          	sb	a5,-473(a4) # 8000bbd3 <_ZL9finishedD>
    thread_dispatch();
    80003db4:	ffffd097          	auipc	ra,0xffffd
    80003db8:	618080e7          	jalr	1560(ra) # 800013cc <_Z15thread_dispatchv>
}
    80003dbc:	01813083          	ld	ra,24(sp)
    80003dc0:	01013403          	ld	s0,16(sp)
    80003dc4:	00813483          	ld	s1,8(sp)
    80003dc8:	00013903          	ld	s2,0(sp)
    80003dcc:	02010113          	addi	sp,sp,32
    80003dd0:	00008067          	ret

0000000080003dd4 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003dd4:	fc010113          	addi	sp,sp,-64
    80003dd8:	02113c23          	sd	ra,56(sp)
    80003ddc:	02813823          	sd	s0,48(sp)
    80003de0:	02913423          	sd	s1,40(sp)
    80003de4:	03213023          	sd	s2,32(sp)
    80003de8:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003dec:	02000513          	li	a0,32
    80003df0:	ffffe097          	auipc	ra,0xffffe
    80003df4:	050080e7          	jalr	80(ra) # 80001e40 <_Znwm>
    80003df8:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003dfc:	ffffe097          	auipc	ra,0xffffe
    80003e00:	1d4080e7          	jalr	468(ra) # 80001fd0 <_ZN6ThreadC1Ev>
    80003e04:	00008797          	auipc	a5,0x8
    80003e08:	b1c78793          	addi	a5,a5,-1252 # 8000b920 <_ZTV7WorkerA+0x10>
    80003e0c:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003e10:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003e14:	00005517          	auipc	a0,0x5
    80003e18:	49c50513          	addi	a0,a0,1180 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80003e1c:	00002097          	auipc	ra,0x2
    80003e20:	d80080e7          	jalr	-640(ra) # 80005b9c <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003e24:	02000513          	li	a0,32
    80003e28:	ffffe097          	auipc	ra,0xffffe
    80003e2c:	018080e7          	jalr	24(ra) # 80001e40 <_Znwm>
    80003e30:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003e34:	ffffe097          	auipc	ra,0xffffe
    80003e38:	19c080e7          	jalr	412(ra) # 80001fd0 <_ZN6ThreadC1Ev>
    80003e3c:	00008797          	auipc	a5,0x8
    80003e40:	b0c78793          	addi	a5,a5,-1268 # 8000b948 <_ZTV7WorkerB+0x10>
    80003e44:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003e48:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003e4c:	00005517          	auipc	a0,0x5
    80003e50:	47c50513          	addi	a0,a0,1148 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80003e54:	00002097          	auipc	ra,0x2
    80003e58:	d48080e7          	jalr	-696(ra) # 80005b9c <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003e5c:	02000513          	li	a0,32
    80003e60:	ffffe097          	auipc	ra,0xffffe
    80003e64:	fe0080e7          	jalr	-32(ra) # 80001e40 <_Znwm>
    80003e68:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003e6c:	ffffe097          	auipc	ra,0xffffe
    80003e70:	164080e7          	jalr	356(ra) # 80001fd0 <_ZN6ThreadC1Ev>
    80003e74:	00008797          	auipc	a5,0x8
    80003e78:	afc78793          	addi	a5,a5,-1284 # 8000b970 <_ZTV7WorkerC+0x10>
    80003e7c:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003e80:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003e84:	00005517          	auipc	a0,0x5
    80003e88:	45c50513          	addi	a0,a0,1116 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80003e8c:	00002097          	auipc	ra,0x2
    80003e90:	d10080e7          	jalr	-752(ra) # 80005b9c <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003e94:	02000513          	li	a0,32
    80003e98:	ffffe097          	auipc	ra,0xffffe
    80003e9c:	fa8080e7          	jalr	-88(ra) # 80001e40 <_Znwm>
    80003ea0:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003ea4:	ffffe097          	auipc	ra,0xffffe
    80003ea8:	12c080e7          	jalr	300(ra) # 80001fd0 <_ZN6ThreadC1Ev>
    80003eac:	00008797          	auipc	a5,0x8
    80003eb0:	aec78793          	addi	a5,a5,-1300 # 8000b998 <_ZTV7WorkerD+0x10>
    80003eb4:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003eb8:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003ebc:	00005517          	auipc	a0,0x5
    80003ec0:	43c50513          	addi	a0,a0,1084 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80003ec4:	00002097          	auipc	ra,0x2
    80003ec8:	cd8080e7          	jalr	-808(ra) # 80005b9c <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003ecc:	00000493          	li	s1,0
    80003ed0:	00300793          	li	a5,3
    80003ed4:	0297c663          	blt	a5,s1,80003f00 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003ed8:	00349793          	slli	a5,s1,0x3
    80003edc:	fe040713          	addi	a4,s0,-32
    80003ee0:	00f707b3          	add	a5,a4,a5
    80003ee4:	fe07b503          	ld	a0,-32(a5)
    80003ee8:	ffffe097          	auipc	ra,0xffffe
    80003eec:	064080e7          	jalr	100(ra) # 80001f4c <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003ef0:	0014849b          	addiw	s1,s1,1
    80003ef4:	fddff06f          	j	80003ed0 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003ef8:	ffffe097          	auipc	ra,0xffffe
    80003efc:	084080e7          	jalr	132(ra) # 80001f7c <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003f00:	00008797          	auipc	a5,0x8
    80003f04:	cd07c783          	lbu	a5,-816(a5) # 8000bbd0 <_ZL9finishedA>
    80003f08:	fe0788e3          	beqz	a5,80003ef8 <_Z20Threads_CPP_API_testv+0x124>
    80003f0c:	00008797          	auipc	a5,0x8
    80003f10:	cc57c783          	lbu	a5,-827(a5) # 8000bbd1 <_ZL9finishedB>
    80003f14:	fe0782e3          	beqz	a5,80003ef8 <_Z20Threads_CPP_API_testv+0x124>
    80003f18:	00008797          	auipc	a5,0x8
    80003f1c:	cba7c783          	lbu	a5,-838(a5) # 8000bbd2 <_ZL9finishedC>
    80003f20:	fc078ce3          	beqz	a5,80003ef8 <_Z20Threads_CPP_API_testv+0x124>
    80003f24:	00008797          	auipc	a5,0x8
    80003f28:	caf7c783          	lbu	a5,-849(a5) # 8000bbd3 <_ZL9finishedD>
    80003f2c:	fc0786e3          	beqz	a5,80003ef8 <_Z20Threads_CPP_API_testv+0x124>
    80003f30:	fc040493          	addi	s1,s0,-64
    80003f34:	0080006f          	j	80003f3c <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80003f38:	00848493          	addi	s1,s1,8
    80003f3c:	fe040793          	addi	a5,s0,-32
    80003f40:	08f48663          	beq	s1,a5,80003fcc <_Z20Threads_CPP_API_testv+0x1f8>
    80003f44:	0004b503          	ld	a0,0(s1)
    80003f48:	fe0508e3          	beqz	a0,80003f38 <_Z20Threads_CPP_API_testv+0x164>
    80003f4c:	00053783          	ld	a5,0(a0)
    80003f50:	0087b783          	ld	a5,8(a5)
    80003f54:	000780e7          	jalr	a5
    80003f58:	fe1ff06f          	j	80003f38 <_Z20Threads_CPP_API_testv+0x164>
    80003f5c:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80003f60:	00048513          	mv	a0,s1
    80003f64:	ffffe097          	auipc	ra,0xffffe
    80003f68:	f04080e7          	jalr	-252(ra) # 80001e68 <_ZdlPv>
    80003f6c:	00090513          	mv	a0,s2
    80003f70:	00009097          	auipc	ra,0x9
    80003f74:	d68080e7          	jalr	-664(ra) # 8000ccd8 <_Unwind_Resume>
    80003f78:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003f7c:	00048513          	mv	a0,s1
    80003f80:	ffffe097          	auipc	ra,0xffffe
    80003f84:	ee8080e7          	jalr	-280(ra) # 80001e68 <_ZdlPv>
    80003f88:	00090513          	mv	a0,s2
    80003f8c:	00009097          	auipc	ra,0x9
    80003f90:	d4c080e7          	jalr	-692(ra) # 8000ccd8 <_Unwind_Resume>
    80003f94:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80003f98:	00048513          	mv	a0,s1
    80003f9c:	ffffe097          	auipc	ra,0xffffe
    80003fa0:	ecc080e7          	jalr	-308(ra) # 80001e68 <_ZdlPv>
    80003fa4:	00090513          	mv	a0,s2
    80003fa8:	00009097          	auipc	ra,0x9
    80003fac:	d30080e7          	jalr	-720(ra) # 8000ccd8 <_Unwind_Resume>
    80003fb0:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003fb4:	00048513          	mv	a0,s1
    80003fb8:	ffffe097          	auipc	ra,0xffffe
    80003fbc:	eb0080e7          	jalr	-336(ra) # 80001e68 <_ZdlPv>
    80003fc0:	00090513          	mv	a0,s2
    80003fc4:	00009097          	auipc	ra,0x9
    80003fc8:	d14080e7          	jalr	-748(ra) # 8000ccd8 <_Unwind_Resume>
}
    80003fcc:	03813083          	ld	ra,56(sp)
    80003fd0:	03013403          	ld	s0,48(sp)
    80003fd4:	02813483          	ld	s1,40(sp)
    80003fd8:	02013903          	ld	s2,32(sp)
    80003fdc:	04010113          	addi	sp,sp,64
    80003fe0:	00008067          	ret

0000000080003fe4 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003fe4:	ff010113          	addi	sp,sp,-16
    80003fe8:	00113423          	sd	ra,8(sp)
    80003fec:	00813023          	sd	s0,0(sp)
    80003ff0:	01010413          	addi	s0,sp,16
    80003ff4:	00008797          	auipc	a5,0x8
    80003ff8:	92c78793          	addi	a5,a5,-1748 # 8000b920 <_ZTV7WorkerA+0x10>
    80003ffc:	00f53023          	sd	a5,0(a0)
    80004000:	ffffe097          	auipc	ra,0xffffe
    80004004:	da8080e7          	jalr	-600(ra) # 80001da8 <_ZN6ThreadD1Ev>
    80004008:	00813083          	ld	ra,8(sp)
    8000400c:	00013403          	ld	s0,0(sp)
    80004010:	01010113          	addi	sp,sp,16
    80004014:	00008067          	ret

0000000080004018 <_ZN7WorkerAD0Ev>:
    80004018:	fe010113          	addi	sp,sp,-32
    8000401c:	00113c23          	sd	ra,24(sp)
    80004020:	00813823          	sd	s0,16(sp)
    80004024:	00913423          	sd	s1,8(sp)
    80004028:	02010413          	addi	s0,sp,32
    8000402c:	00050493          	mv	s1,a0
    80004030:	00008797          	auipc	a5,0x8
    80004034:	8f078793          	addi	a5,a5,-1808 # 8000b920 <_ZTV7WorkerA+0x10>
    80004038:	00f53023          	sd	a5,0(a0)
    8000403c:	ffffe097          	auipc	ra,0xffffe
    80004040:	d6c080e7          	jalr	-660(ra) # 80001da8 <_ZN6ThreadD1Ev>
    80004044:	00048513          	mv	a0,s1
    80004048:	ffffe097          	auipc	ra,0xffffe
    8000404c:	e20080e7          	jalr	-480(ra) # 80001e68 <_ZdlPv>
    80004050:	01813083          	ld	ra,24(sp)
    80004054:	01013403          	ld	s0,16(sp)
    80004058:	00813483          	ld	s1,8(sp)
    8000405c:	02010113          	addi	sp,sp,32
    80004060:	00008067          	ret

0000000080004064 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80004064:	ff010113          	addi	sp,sp,-16
    80004068:	00113423          	sd	ra,8(sp)
    8000406c:	00813023          	sd	s0,0(sp)
    80004070:	01010413          	addi	s0,sp,16
    80004074:	00008797          	auipc	a5,0x8
    80004078:	8d478793          	addi	a5,a5,-1836 # 8000b948 <_ZTV7WorkerB+0x10>
    8000407c:	00f53023          	sd	a5,0(a0)
    80004080:	ffffe097          	auipc	ra,0xffffe
    80004084:	d28080e7          	jalr	-728(ra) # 80001da8 <_ZN6ThreadD1Ev>
    80004088:	00813083          	ld	ra,8(sp)
    8000408c:	00013403          	ld	s0,0(sp)
    80004090:	01010113          	addi	sp,sp,16
    80004094:	00008067          	ret

0000000080004098 <_ZN7WorkerBD0Ev>:
    80004098:	fe010113          	addi	sp,sp,-32
    8000409c:	00113c23          	sd	ra,24(sp)
    800040a0:	00813823          	sd	s0,16(sp)
    800040a4:	00913423          	sd	s1,8(sp)
    800040a8:	02010413          	addi	s0,sp,32
    800040ac:	00050493          	mv	s1,a0
    800040b0:	00008797          	auipc	a5,0x8
    800040b4:	89878793          	addi	a5,a5,-1896 # 8000b948 <_ZTV7WorkerB+0x10>
    800040b8:	00f53023          	sd	a5,0(a0)
    800040bc:	ffffe097          	auipc	ra,0xffffe
    800040c0:	cec080e7          	jalr	-788(ra) # 80001da8 <_ZN6ThreadD1Ev>
    800040c4:	00048513          	mv	a0,s1
    800040c8:	ffffe097          	auipc	ra,0xffffe
    800040cc:	da0080e7          	jalr	-608(ra) # 80001e68 <_ZdlPv>
    800040d0:	01813083          	ld	ra,24(sp)
    800040d4:	01013403          	ld	s0,16(sp)
    800040d8:	00813483          	ld	s1,8(sp)
    800040dc:	02010113          	addi	sp,sp,32
    800040e0:	00008067          	ret

00000000800040e4 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    800040e4:	ff010113          	addi	sp,sp,-16
    800040e8:	00113423          	sd	ra,8(sp)
    800040ec:	00813023          	sd	s0,0(sp)
    800040f0:	01010413          	addi	s0,sp,16
    800040f4:	00008797          	auipc	a5,0x8
    800040f8:	87c78793          	addi	a5,a5,-1924 # 8000b970 <_ZTV7WorkerC+0x10>
    800040fc:	00f53023          	sd	a5,0(a0)
    80004100:	ffffe097          	auipc	ra,0xffffe
    80004104:	ca8080e7          	jalr	-856(ra) # 80001da8 <_ZN6ThreadD1Ev>
    80004108:	00813083          	ld	ra,8(sp)
    8000410c:	00013403          	ld	s0,0(sp)
    80004110:	01010113          	addi	sp,sp,16
    80004114:	00008067          	ret

0000000080004118 <_ZN7WorkerCD0Ev>:
    80004118:	fe010113          	addi	sp,sp,-32
    8000411c:	00113c23          	sd	ra,24(sp)
    80004120:	00813823          	sd	s0,16(sp)
    80004124:	00913423          	sd	s1,8(sp)
    80004128:	02010413          	addi	s0,sp,32
    8000412c:	00050493          	mv	s1,a0
    80004130:	00008797          	auipc	a5,0x8
    80004134:	84078793          	addi	a5,a5,-1984 # 8000b970 <_ZTV7WorkerC+0x10>
    80004138:	00f53023          	sd	a5,0(a0)
    8000413c:	ffffe097          	auipc	ra,0xffffe
    80004140:	c6c080e7          	jalr	-916(ra) # 80001da8 <_ZN6ThreadD1Ev>
    80004144:	00048513          	mv	a0,s1
    80004148:	ffffe097          	auipc	ra,0xffffe
    8000414c:	d20080e7          	jalr	-736(ra) # 80001e68 <_ZdlPv>
    80004150:	01813083          	ld	ra,24(sp)
    80004154:	01013403          	ld	s0,16(sp)
    80004158:	00813483          	ld	s1,8(sp)
    8000415c:	02010113          	addi	sp,sp,32
    80004160:	00008067          	ret

0000000080004164 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80004164:	ff010113          	addi	sp,sp,-16
    80004168:	00113423          	sd	ra,8(sp)
    8000416c:	00813023          	sd	s0,0(sp)
    80004170:	01010413          	addi	s0,sp,16
    80004174:	00008797          	auipc	a5,0x8
    80004178:	82478793          	addi	a5,a5,-2012 # 8000b998 <_ZTV7WorkerD+0x10>
    8000417c:	00f53023          	sd	a5,0(a0)
    80004180:	ffffe097          	auipc	ra,0xffffe
    80004184:	c28080e7          	jalr	-984(ra) # 80001da8 <_ZN6ThreadD1Ev>
    80004188:	00813083          	ld	ra,8(sp)
    8000418c:	00013403          	ld	s0,0(sp)
    80004190:	01010113          	addi	sp,sp,16
    80004194:	00008067          	ret

0000000080004198 <_ZN7WorkerDD0Ev>:
    80004198:	fe010113          	addi	sp,sp,-32
    8000419c:	00113c23          	sd	ra,24(sp)
    800041a0:	00813823          	sd	s0,16(sp)
    800041a4:	00913423          	sd	s1,8(sp)
    800041a8:	02010413          	addi	s0,sp,32
    800041ac:	00050493          	mv	s1,a0
    800041b0:	00007797          	auipc	a5,0x7
    800041b4:	7e878793          	addi	a5,a5,2024 # 8000b998 <_ZTV7WorkerD+0x10>
    800041b8:	00f53023          	sd	a5,0(a0)
    800041bc:	ffffe097          	auipc	ra,0xffffe
    800041c0:	bec080e7          	jalr	-1044(ra) # 80001da8 <_ZN6ThreadD1Ev>
    800041c4:	00048513          	mv	a0,s1
    800041c8:	ffffe097          	auipc	ra,0xffffe
    800041cc:	ca0080e7          	jalr	-864(ra) # 80001e68 <_ZdlPv>
    800041d0:	01813083          	ld	ra,24(sp)
    800041d4:	01013403          	ld	s0,16(sp)
    800041d8:	00813483          	ld	s1,8(sp)
    800041dc:	02010113          	addi	sp,sp,32
    800041e0:	00008067          	ret

00000000800041e4 <_ZN7WorkerA3runEv>:
    void run() override {
    800041e4:	ff010113          	addi	sp,sp,-16
    800041e8:	00113423          	sd	ra,8(sp)
    800041ec:	00813023          	sd	s0,0(sp)
    800041f0:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    800041f4:	00000593          	li	a1,0
    800041f8:	fffff097          	auipc	ra,0xfffff
    800041fc:	774080e7          	jalr	1908(ra) # 8000396c <_ZN7WorkerA11workerBodyAEPv>
    }
    80004200:	00813083          	ld	ra,8(sp)
    80004204:	00013403          	ld	s0,0(sp)
    80004208:	01010113          	addi	sp,sp,16
    8000420c:	00008067          	ret

0000000080004210 <_ZN7WorkerB3runEv>:
    void run() override {
    80004210:	ff010113          	addi	sp,sp,-16
    80004214:	00113423          	sd	ra,8(sp)
    80004218:	00813023          	sd	s0,0(sp)
    8000421c:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80004220:	00000593          	li	a1,0
    80004224:	00000097          	auipc	ra,0x0
    80004228:	814080e7          	jalr	-2028(ra) # 80003a38 <_ZN7WorkerB11workerBodyBEPv>
    }
    8000422c:	00813083          	ld	ra,8(sp)
    80004230:	00013403          	ld	s0,0(sp)
    80004234:	01010113          	addi	sp,sp,16
    80004238:	00008067          	ret

000000008000423c <_ZN7WorkerC3runEv>:
    void run() override {
    8000423c:	ff010113          	addi	sp,sp,-16
    80004240:	00113423          	sd	ra,8(sp)
    80004244:	00813023          	sd	s0,0(sp)
    80004248:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    8000424c:	00000593          	li	a1,0
    80004250:	00000097          	auipc	ra,0x0
    80004254:	8bc080e7          	jalr	-1860(ra) # 80003b0c <_ZN7WorkerC11workerBodyCEPv>
    }
    80004258:	00813083          	ld	ra,8(sp)
    8000425c:	00013403          	ld	s0,0(sp)
    80004260:	01010113          	addi	sp,sp,16
    80004264:	00008067          	ret

0000000080004268 <_ZN7WorkerD3runEv>:
    void run() override {
    80004268:	ff010113          	addi	sp,sp,-16
    8000426c:	00113423          	sd	ra,8(sp)
    80004270:	00813023          	sd	s0,0(sp)
    80004274:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80004278:	00000593          	li	a1,0
    8000427c:	00000097          	auipc	ra,0x0
    80004280:	a10080e7          	jalr	-1520(ra) # 80003c8c <_ZN7WorkerD11workerBodyDEPv>
    }
    80004284:	00813083          	ld	ra,8(sp)
    80004288:	00013403          	ld	s0,0(sp)
    8000428c:	01010113          	addi	sp,sp,16
    80004290:	00008067          	ret

0000000080004294 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80004294:	f8010113          	addi	sp,sp,-128
    80004298:	06113c23          	sd	ra,120(sp)
    8000429c:	06813823          	sd	s0,112(sp)
    800042a0:	06913423          	sd	s1,104(sp)
    800042a4:	07213023          	sd	s2,96(sp)
    800042a8:	05313c23          	sd	s3,88(sp)
    800042ac:	05413823          	sd	s4,80(sp)
    800042b0:	05513423          	sd	s5,72(sp)
    800042b4:	05613023          	sd	s6,64(sp)
    800042b8:	03713c23          	sd	s7,56(sp)
    800042bc:	03813823          	sd	s8,48(sp)
    800042c0:	03913423          	sd	s9,40(sp)
    800042c4:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    800042c8:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    800042cc:	00005517          	auipc	a0,0x5
    800042d0:	e6450513          	addi	a0,a0,-412 # 80009130 <CONSOLE_STATUS+0x120>
    800042d4:	00002097          	auipc	ra,0x2
    800042d8:	8c8080e7          	jalr	-1848(ra) # 80005b9c <_Z11printStringPKc>
    getString(input, 30);
    800042dc:	01e00593          	li	a1,30
    800042e0:	f8040493          	addi	s1,s0,-128
    800042e4:	00048513          	mv	a0,s1
    800042e8:	00002097          	auipc	ra,0x2
    800042ec:	93c080e7          	jalr	-1732(ra) # 80005c24 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800042f0:	00048513          	mv	a0,s1
    800042f4:	00002097          	auipc	ra,0x2
    800042f8:	a08080e7          	jalr	-1528(ra) # 80005cfc <_Z11stringToIntPKc>
    800042fc:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80004300:	00005517          	auipc	a0,0x5
    80004304:	e5050513          	addi	a0,a0,-432 # 80009150 <CONSOLE_STATUS+0x140>
    80004308:	00002097          	auipc	ra,0x2
    8000430c:	894080e7          	jalr	-1900(ra) # 80005b9c <_Z11printStringPKc>
    getString(input, 30);
    80004310:	01e00593          	li	a1,30
    80004314:	00048513          	mv	a0,s1
    80004318:	00002097          	auipc	ra,0x2
    8000431c:	90c080e7          	jalr	-1780(ra) # 80005c24 <_Z9getStringPci>
    n = stringToInt(input);
    80004320:	00048513          	mv	a0,s1
    80004324:	00002097          	auipc	ra,0x2
    80004328:	9d8080e7          	jalr	-1576(ra) # 80005cfc <_Z11stringToIntPKc>
    8000432c:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80004330:	00005517          	auipc	a0,0x5
    80004334:	e4050513          	addi	a0,a0,-448 # 80009170 <CONSOLE_STATUS+0x160>
    80004338:	00002097          	auipc	ra,0x2
    8000433c:	864080e7          	jalr	-1948(ra) # 80005b9c <_Z11printStringPKc>
    printInt(threadNum);
    80004340:	00000613          	li	a2,0
    80004344:	00a00593          	li	a1,10
    80004348:	00098513          	mv	a0,s3
    8000434c:	00002097          	auipc	ra,0x2
    80004350:	a00080e7          	jalr	-1536(ra) # 80005d4c <_Z8printIntiii>
    printString(" i velicina bafera ");
    80004354:	00005517          	auipc	a0,0x5
    80004358:	e3450513          	addi	a0,a0,-460 # 80009188 <CONSOLE_STATUS+0x178>
    8000435c:	00002097          	auipc	ra,0x2
    80004360:	840080e7          	jalr	-1984(ra) # 80005b9c <_Z11printStringPKc>
    printInt(n);
    80004364:	00000613          	li	a2,0
    80004368:	00a00593          	li	a1,10
    8000436c:	00048513          	mv	a0,s1
    80004370:	00002097          	auipc	ra,0x2
    80004374:	9dc080e7          	jalr	-1572(ra) # 80005d4c <_Z8printIntiii>
    printString(".\n");
    80004378:	00005517          	auipc	a0,0x5
    8000437c:	e2850513          	addi	a0,a0,-472 # 800091a0 <CONSOLE_STATUS+0x190>
    80004380:	00002097          	auipc	ra,0x2
    80004384:	81c080e7          	jalr	-2020(ra) # 80005b9c <_Z11printStringPKc>
    if (threadNum > n) {
    80004388:	0334c463          	blt	s1,s3,800043b0 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    8000438c:	03305c63          	blez	s3,800043c4 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004390:	03800513          	li	a0,56
    80004394:	ffffe097          	auipc	ra,0xffffe
    80004398:	aac080e7          	jalr	-1364(ra) # 80001e40 <_Znwm>
    8000439c:	00050a93          	mv	s5,a0
    800043a0:	00048593          	mv	a1,s1
    800043a4:	00002097          	auipc	ra,0x2
    800043a8:	ac8080e7          	jalr	-1336(ra) # 80005e6c <_ZN9BufferCPPC1Ei>
    800043ac:	0300006f          	j	800043dc <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800043b0:	00005517          	auipc	a0,0x5
    800043b4:	df850513          	addi	a0,a0,-520 # 800091a8 <CONSOLE_STATUS+0x198>
    800043b8:	00001097          	auipc	ra,0x1
    800043bc:	7e4080e7          	jalr	2020(ra) # 80005b9c <_Z11printStringPKc>
        return;
    800043c0:	0140006f          	j	800043d4 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800043c4:	00005517          	auipc	a0,0x5
    800043c8:	e2450513          	addi	a0,a0,-476 # 800091e8 <CONSOLE_STATUS+0x1d8>
    800043cc:	00001097          	auipc	ra,0x1
    800043d0:	7d0080e7          	jalr	2000(ra) # 80005b9c <_Z11printStringPKc>
        return;
    800043d4:	000c0113          	mv	sp,s8
    800043d8:	2140006f          	j	800045ec <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    800043dc:	01000513          	li	a0,16
    800043e0:	ffffe097          	auipc	ra,0xffffe
    800043e4:	a60080e7          	jalr	-1440(ra) # 80001e40 <_Znwm>
    800043e8:	00050913          	mv	s2,a0
    800043ec:	00000593          	li	a1,0
    800043f0:	ffffe097          	auipc	ra,0xffffe
    800043f4:	c08080e7          	jalr	-1016(ra) # 80001ff8 <_ZN9SemaphoreC1Ej>
    800043f8:	00007797          	auipc	a5,0x7
    800043fc:	7f27b423          	sd	s2,2024(a5) # 8000bbe0 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80004400:	00399793          	slli	a5,s3,0x3
    80004404:	00f78793          	addi	a5,a5,15
    80004408:	ff07f793          	andi	a5,a5,-16
    8000440c:	40f10133          	sub	sp,sp,a5
    80004410:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80004414:	0019871b          	addiw	a4,s3,1
    80004418:	00171793          	slli	a5,a4,0x1
    8000441c:	00e787b3          	add	a5,a5,a4
    80004420:	00379793          	slli	a5,a5,0x3
    80004424:	00f78793          	addi	a5,a5,15
    80004428:	ff07f793          	andi	a5,a5,-16
    8000442c:	40f10133          	sub	sp,sp,a5
    80004430:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80004434:	00199493          	slli	s1,s3,0x1
    80004438:	013484b3          	add	s1,s1,s3
    8000443c:	00349493          	slli	s1,s1,0x3
    80004440:	009b04b3          	add	s1,s6,s1
    80004444:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80004448:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    8000444c:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004450:	02800513          	li	a0,40
    80004454:	ffffe097          	auipc	ra,0xffffe
    80004458:	9ec080e7          	jalr	-1556(ra) # 80001e40 <_Znwm>
    8000445c:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80004460:	ffffe097          	auipc	ra,0xffffe
    80004464:	b70080e7          	jalr	-1168(ra) # 80001fd0 <_ZN6ThreadC1Ev>
    80004468:	00007797          	auipc	a5,0x7
    8000446c:	5a878793          	addi	a5,a5,1448 # 8000ba10 <_ZTV8Consumer+0x10>
    80004470:	00fbb023          	sd	a5,0(s7)
    80004474:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80004478:	000b8513          	mv	a0,s7
    8000447c:	ffffe097          	auipc	ra,0xffffe
    80004480:	ad0080e7          	jalr	-1328(ra) # 80001f4c <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80004484:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80004488:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    8000448c:	00007797          	auipc	a5,0x7
    80004490:	7547b783          	ld	a5,1876(a5) # 8000bbe0 <_ZL10waitForAll>
    80004494:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004498:	02800513          	li	a0,40
    8000449c:	ffffe097          	auipc	ra,0xffffe
    800044a0:	9a4080e7          	jalr	-1628(ra) # 80001e40 <_Znwm>
    800044a4:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    800044a8:	ffffe097          	auipc	ra,0xffffe
    800044ac:	b28080e7          	jalr	-1240(ra) # 80001fd0 <_ZN6ThreadC1Ev>
    800044b0:	00007797          	auipc	a5,0x7
    800044b4:	51078793          	addi	a5,a5,1296 # 8000b9c0 <_ZTV16ProducerKeyborad+0x10>
    800044b8:	00f4b023          	sd	a5,0(s1)
    800044bc:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800044c0:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    800044c4:	00048513          	mv	a0,s1
    800044c8:	ffffe097          	auipc	ra,0xffffe
    800044cc:	a84080e7          	jalr	-1404(ra) # 80001f4c <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800044d0:	00100913          	li	s2,1
    800044d4:	0300006f          	j	80004504 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800044d8:	00007797          	auipc	a5,0x7
    800044dc:	51078793          	addi	a5,a5,1296 # 8000b9e8 <_ZTV8Producer+0x10>
    800044e0:	00fcb023          	sd	a5,0(s9)
    800044e4:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    800044e8:	00391793          	slli	a5,s2,0x3
    800044ec:	00fa07b3          	add	a5,s4,a5
    800044f0:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    800044f4:	000c8513          	mv	a0,s9
    800044f8:	ffffe097          	auipc	ra,0xffffe
    800044fc:	a54080e7          	jalr	-1452(ra) # 80001f4c <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004500:	0019091b          	addiw	s2,s2,1
    80004504:	05395263          	bge	s2,s3,80004548 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80004508:	00191493          	slli	s1,s2,0x1
    8000450c:	012484b3          	add	s1,s1,s2
    80004510:	00349493          	slli	s1,s1,0x3
    80004514:	009b04b3          	add	s1,s6,s1
    80004518:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    8000451c:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80004520:	00007797          	auipc	a5,0x7
    80004524:	6c07b783          	ld	a5,1728(a5) # 8000bbe0 <_ZL10waitForAll>
    80004528:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    8000452c:	02800513          	li	a0,40
    80004530:	ffffe097          	auipc	ra,0xffffe
    80004534:	910080e7          	jalr	-1776(ra) # 80001e40 <_Znwm>
    80004538:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    8000453c:	ffffe097          	auipc	ra,0xffffe
    80004540:	a94080e7          	jalr	-1388(ra) # 80001fd0 <_ZN6ThreadC1Ev>
    80004544:	f95ff06f          	j	800044d8 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80004548:	ffffe097          	auipc	ra,0xffffe
    8000454c:	a34080e7          	jalr	-1484(ra) # 80001f7c <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004550:	00000493          	li	s1,0
    80004554:	0099ce63          	blt	s3,s1,80004570 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80004558:	00007517          	auipc	a0,0x7
    8000455c:	68853503          	ld	a0,1672(a0) # 8000bbe0 <_ZL10waitForAll>
    80004560:	ffffe097          	auipc	ra,0xffffe
    80004564:	ad4080e7          	jalr	-1324(ra) # 80002034 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004568:	0014849b          	addiw	s1,s1,1
    8000456c:	fe9ff06f          	j	80004554 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80004570:	00007517          	auipc	a0,0x7
    80004574:	67053503          	ld	a0,1648(a0) # 8000bbe0 <_ZL10waitForAll>
    80004578:	00050863          	beqz	a0,80004588 <_Z20testConsumerProducerv+0x2f4>
    8000457c:	00053783          	ld	a5,0(a0)
    80004580:	0087b783          	ld	a5,8(a5)
    80004584:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80004588:	00000493          	li	s1,0
    8000458c:	0080006f          	j	80004594 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80004590:	0014849b          	addiw	s1,s1,1
    80004594:	0334d263          	bge	s1,s3,800045b8 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80004598:	00349793          	slli	a5,s1,0x3
    8000459c:	00fa07b3          	add	a5,s4,a5
    800045a0:	0007b503          	ld	a0,0(a5)
    800045a4:	fe0506e3          	beqz	a0,80004590 <_Z20testConsumerProducerv+0x2fc>
    800045a8:	00053783          	ld	a5,0(a0)
    800045ac:	0087b783          	ld	a5,8(a5)
    800045b0:	000780e7          	jalr	a5
    800045b4:	fddff06f          	j	80004590 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    800045b8:	000b8a63          	beqz	s7,800045cc <_Z20testConsumerProducerv+0x338>
    800045bc:	000bb783          	ld	a5,0(s7)
    800045c0:	0087b783          	ld	a5,8(a5)
    800045c4:	000b8513          	mv	a0,s7
    800045c8:	000780e7          	jalr	a5
    delete buffer;
    800045cc:	000a8e63          	beqz	s5,800045e8 <_Z20testConsumerProducerv+0x354>
    800045d0:	000a8513          	mv	a0,s5
    800045d4:	00002097          	auipc	ra,0x2
    800045d8:	b90080e7          	jalr	-1136(ra) # 80006164 <_ZN9BufferCPPD1Ev>
    800045dc:	000a8513          	mv	a0,s5
    800045e0:	ffffe097          	auipc	ra,0xffffe
    800045e4:	888080e7          	jalr	-1912(ra) # 80001e68 <_ZdlPv>
    800045e8:	000c0113          	mv	sp,s8
}
    800045ec:	f8040113          	addi	sp,s0,-128
    800045f0:	07813083          	ld	ra,120(sp)
    800045f4:	07013403          	ld	s0,112(sp)
    800045f8:	06813483          	ld	s1,104(sp)
    800045fc:	06013903          	ld	s2,96(sp)
    80004600:	05813983          	ld	s3,88(sp)
    80004604:	05013a03          	ld	s4,80(sp)
    80004608:	04813a83          	ld	s5,72(sp)
    8000460c:	04013b03          	ld	s6,64(sp)
    80004610:	03813b83          	ld	s7,56(sp)
    80004614:	03013c03          	ld	s8,48(sp)
    80004618:	02813c83          	ld	s9,40(sp)
    8000461c:	08010113          	addi	sp,sp,128
    80004620:	00008067          	ret
    80004624:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004628:	000a8513          	mv	a0,s5
    8000462c:	ffffe097          	auipc	ra,0xffffe
    80004630:	83c080e7          	jalr	-1988(ra) # 80001e68 <_ZdlPv>
    80004634:	00048513          	mv	a0,s1
    80004638:	00008097          	auipc	ra,0x8
    8000463c:	6a0080e7          	jalr	1696(ra) # 8000ccd8 <_Unwind_Resume>
    80004640:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80004644:	00090513          	mv	a0,s2
    80004648:	ffffe097          	auipc	ra,0xffffe
    8000464c:	820080e7          	jalr	-2016(ra) # 80001e68 <_ZdlPv>
    80004650:	00048513          	mv	a0,s1
    80004654:	00008097          	auipc	ra,0x8
    80004658:	684080e7          	jalr	1668(ra) # 8000ccd8 <_Unwind_Resume>
    8000465c:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004660:	000b8513          	mv	a0,s7
    80004664:	ffffe097          	auipc	ra,0xffffe
    80004668:	804080e7          	jalr	-2044(ra) # 80001e68 <_ZdlPv>
    8000466c:	00048513          	mv	a0,s1
    80004670:	00008097          	auipc	ra,0x8
    80004674:	668080e7          	jalr	1640(ra) # 8000ccd8 <_Unwind_Resume>
    80004678:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    8000467c:	00048513          	mv	a0,s1
    80004680:	ffffd097          	auipc	ra,0xffffd
    80004684:	7e8080e7          	jalr	2024(ra) # 80001e68 <_ZdlPv>
    80004688:	00090513          	mv	a0,s2
    8000468c:	00008097          	auipc	ra,0x8
    80004690:	64c080e7          	jalr	1612(ra) # 8000ccd8 <_Unwind_Resume>
    80004694:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80004698:	000c8513          	mv	a0,s9
    8000469c:	ffffd097          	auipc	ra,0xffffd
    800046a0:	7cc080e7          	jalr	1996(ra) # 80001e68 <_ZdlPv>
    800046a4:	00048513          	mv	a0,s1
    800046a8:	00008097          	auipc	ra,0x8
    800046ac:	630080e7          	jalr	1584(ra) # 8000ccd8 <_Unwind_Resume>

00000000800046b0 <_ZN8Consumer3runEv>:
    void run() override {
    800046b0:	fd010113          	addi	sp,sp,-48
    800046b4:	02113423          	sd	ra,40(sp)
    800046b8:	02813023          	sd	s0,32(sp)
    800046bc:	00913c23          	sd	s1,24(sp)
    800046c0:	01213823          	sd	s2,16(sp)
    800046c4:	01313423          	sd	s3,8(sp)
    800046c8:	03010413          	addi	s0,sp,48
    800046cc:	00050913          	mv	s2,a0
        int i = 0;
    800046d0:	00000993          	li	s3,0
    800046d4:	0100006f          	j	800046e4 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    800046d8:	00a00513          	li	a0,10
    800046dc:	ffffe097          	auipc	ra,0xffffe
    800046e0:	a80080e7          	jalr	-1408(ra) # 8000215c <_ZN7Console4putcEc>
        while (!threadEnd) {
    800046e4:	00007797          	auipc	a5,0x7
    800046e8:	4f47a783          	lw	a5,1268(a5) # 8000bbd8 <_ZL9threadEnd>
    800046ec:	04079a63          	bnez	a5,80004740 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    800046f0:	02093783          	ld	a5,32(s2)
    800046f4:	0087b503          	ld	a0,8(a5)
    800046f8:	00002097          	auipc	ra,0x2
    800046fc:	958080e7          	jalr	-1704(ra) # 80006050 <_ZN9BufferCPP3getEv>
            i++;
    80004700:	0019849b          	addiw	s1,s3,1
    80004704:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80004708:	0ff57513          	andi	a0,a0,255
    8000470c:	ffffe097          	auipc	ra,0xffffe
    80004710:	a50080e7          	jalr	-1456(ra) # 8000215c <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80004714:	05000793          	li	a5,80
    80004718:	02f4e4bb          	remw	s1,s1,a5
    8000471c:	fc0494e3          	bnez	s1,800046e4 <_ZN8Consumer3runEv+0x34>
    80004720:	fb9ff06f          	j	800046d8 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80004724:	02093783          	ld	a5,32(s2)
    80004728:	0087b503          	ld	a0,8(a5)
    8000472c:	00002097          	auipc	ra,0x2
    80004730:	924080e7          	jalr	-1756(ra) # 80006050 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80004734:	0ff57513          	andi	a0,a0,255
    80004738:	ffffe097          	auipc	ra,0xffffe
    8000473c:	a24080e7          	jalr	-1500(ra) # 8000215c <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80004740:	02093783          	ld	a5,32(s2)
    80004744:	0087b503          	ld	a0,8(a5)
    80004748:	00002097          	auipc	ra,0x2
    8000474c:	994080e7          	jalr	-1644(ra) # 800060dc <_ZN9BufferCPP6getCntEv>
    80004750:	fca04ae3          	bgtz	a0,80004724 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004754:	02093783          	ld	a5,32(s2)
    80004758:	0107b503          	ld	a0,16(a5)
    8000475c:	ffffe097          	auipc	ra,0xffffe
    80004760:	910080e7          	jalr	-1776(ra) # 8000206c <_ZN9Semaphore6signalEv>
    }
    80004764:	02813083          	ld	ra,40(sp)
    80004768:	02013403          	ld	s0,32(sp)
    8000476c:	01813483          	ld	s1,24(sp)
    80004770:	01013903          	ld	s2,16(sp)
    80004774:	00813983          	ld	s3,8(sp)
    80004778:	03010113          	addi	sp,sp,48
    8000477c:	00008067          	ret

0000000080004780 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004780:	ff010113          	addi	sp,sp,-16
    80004784:	00113423          	sd	ra,8(sp)
    80004788:	00813023          	sd	s0,0(sp)
    8000478c:	01010413          	addi	s0,sp,16
    80004790:	00007797          	auipc	a5,0x7
    80004794:	28078793          	addi	a5,a5,640 # 8000ba10 <_ZTV8Consumer+0x10>
    80004798:	00f53023          	sd	a5,0(a0)
    8000479c:	ffffd097          	auipc	ra,0xffffd
    800047a0:	60c080e7          	jalr	1548(ra) # 80001da8 <_ZN6ThreadD1Ev>
    800047a4:	00813083          	ld	ra,8(sp)
    800047a8:	00013403          	ld	s0,0(sp)
    800047ac:	01010113          	addi	sp,sp,16
    800047b0:	00008067          	ret

00000000800047b4 <_ZN8ConsumerD0Ev>:
    800047b4:	fe010113          	addi	sp,sp,-32
    800047b8:	00113c23          	sd	ra,24(sp)
    800047bc:	00813823          	sd	s0,16(sp)
    800047c0:	00913423          	sd	s1,8(sp)
    800047c4:	02010413          	addi	s0,sp,32
    800047c8:	00050493          	mv	s1,a0
    800047cc:	00007797          	auipc	a5,0x7
    800047d0:	24478793          	addi	a5,a5,580 # 8000ba10 <_ZTV8Consumer+0x10>
    800047d4:	00f53023          	sd	a5,0(a0)
    800047d8:	ffffd097          	auipc	ra,0xffffd
    800047dc:	5d0080e7          	jalr	1488(ra) # 80001da8 <_ZN6ThreadD1Ev>
    800047e0:	00048513          	mv	a0,s1
    800047e4:	ffffd097          	auipc	ra,0xffffd
    800047e8:	684080e7          	jalr	1668(ra) # 80001e68 <_ZdlPv>
    800047ec:	01813083          	ld	ra,24(sp)
    800047f0:	01013403          	ld	s0,16(sp)
    800047f4:	00813483          	ld	s1,8(sp)
    800047f8:	02010113          	addi	sp,sp,32
    800047fc:	00008067          	ret

0000000080004800 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004800:	ff010113          	addi	sp,sp,-16
    80004804:	00113423          	sd	ra,8(sp)
    80004808:	00813023          	sd	s0,0(sp)
    8000480c:	01010413          	addi	s0,sp,16
    80004810:	00007797          	auipc	a5,0x7
    80004814:	1b078793          	addi	a5,a5,432 # 8000b9c0 <_ZTV16ProducerKeyborad+0x10>
    80004818:	00f53023          	sd	a5,0(a0)
    8000481c:	ffffd097          	auipc	ra,0xffffd
    80004820:	58c080e7          	jalr	1420(ra) # 80001da8 <_ZN6ThreadD1Ev>
    80004824:	00813083          	ld	ra,8(sp)
    80004828:	00013403          	ld	s0,0(sp)
    8000482c:	01010113          	addi	sp,sp,16
    80004830:	00008067          	ret

0000000080004834 <_ZN16ProducerKeyboradD0Ev>:
    80004834:	fe010113          	addi	sp,sp,-32
    80004838:	00113c23          	sd	ra,24(sp)
    8000483c:	00813823          	sd	s0,16(sp)
    80004840:	00913423          	sd	s1,8(sp)
    80004844:	02010413          	addi	s0,sp,32
    80004848:	00050493          	mv	s1,a0
    8000484c:	00007797          	auipc	a5,0x7
    80004850:	17478793          	addi	a5,a5,372 # 8000b9c0 <_ZTV16ProducerKeyborad+0x10>
    80004854:	00f53023          	sd	a5,0(a0)
    80004858:	ffffd097          	auipc	ra,0xffffd
    8000485c:	550080e7          	jalr	1360(ra) # 80001da8 <_ZN6ThreadD1Ev>
    80004860:	00048513          	mv	a0,s1
    80004864:	ffffd097          	auipc	ra,0xffffd
    80004868:	604080e7          	jalr	1540(ra) # 80001e68 <_ZdlPv>
    8000486c:	01813083          	ld	ra,24(sp)
    80004870:	01013403          	ld	s0,16(sp)
    80004874:	00813483          	ld	s1,8(sp)
    80004878:	02010113          	addi	sp,sp,32
    8000487c:	00008067          	ret

0000000080004880 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004880:	ff010113          	addi	sp,sp,-16
    80004884:	00113423          	sd	ra,8(sp)
    80004888:	00813023          	sd	s0,0(sp)
    8000488c:	01010413          	addi	s0,sp,16
    80004890:	00007797          	auipc	a5,0x7
    80004894:	15878793          	addi	a5,a5,344 # 8000b9e8 <_ZTV8Producer+0x10>
    80004898:	00f53023          	sd	a5,0(a0)
    8000489c:	ffffd097          	auipc	ra,0xffffd
    800048a0:	50c080e7          	jalr	1292(ra) # 80001da8 <_ZN6ThreadD1Ev>
    800048a4:	00813083          	ld	ra,8(sp)
    800048a8:	00013403          	ld	s0,0(sp)
    800048ac:	01010113          	addi	sp,sp,16
    800048b0:	00008067          	ret

00000000800048b4 <_ZN8ProducerD0Ev>:
    800048b4:	fe010113          	addi	sp,sp,-32
    800048b8:	00113c23          	sd	ra,24(sp)
    800048bc:	00813823          	sd	s0,16(sp)
    800048c0:	00913423          	sd	s1,8(sp)
    800048c4:	02010413          	addi	s0,sp,32
    800048c8:	00050493          	mv	s1,a0
    800048cc:	00007797          	auipc	a5,0x7
    800048d0:	11c78793          	addi	a5,a5,284 # 8000b9e8 <_ZTV8Producer+0x10>
    800048d4:	00f53023          	sd	a5,0(a0)
    800048d8:	ffffd097          	auipc	ra,0xffffd
    800048dc:	4d0080e7          	jalr	1232(ra) # 80001da8 <_ZN6ThreadD1Ev>
    800048e0:	00048513          	mv	a0,s1
    800048e4:	ffffd097          	auipc	ra,0xffffd
    800048e8:	584080e7          	jalr	1412(ra) # 80001e68 <_ZdlPv>
    800048ec:	01813083          	ld	ra,24(sp)
    800048f0:	01013403          	ld	s0,16(sp)
    800048f4:	00813483          	ld	s1,8(sp)
    800048f8:	02010113          	addi	sp,sp,32
    800048fc:	00008067          	ret

0000000080004900 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004900:	fe010113          	addi	sp,sp,-32
    80004904:	00113c23          	sd	ra,24(sp)
    80004908:	00813823          	sd	s0,16(sp)
    8000490c:	00913423          	sd	s1,8(sp)
    80004910:	02010413          	addi	s0,sp,32
    80004914:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80004918:	ffffd097          	auipc	ra,0xffffd
    8000491c:	d08080e7          	jalr	-760(ra) # 80001620 <_Z4getcv>
    80004920:	0005059b          	sext.w	a1,a0
    80004924:	01b00793          	li	a5,27
    80004928:	00f58c63          	beq	a1,a5,80004940 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    8000492c:	0204b783          	ld	a5,32(s1)
    80004930:	0087b503          	ld	a0,8(a5)
    80004934:	00001097          	auipc	ra,0x1
    80004938:	68c080e7          	jalr	1676(ra) # 80005fc0 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    8000493c:	fddff06f          	j	80004918 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004940:	00100793          	li	a5,1
    80004944:	00007717          	auipc	a4,0x7
    80004948:	28f72a23          	sw	a5,660(a4) # 8000bbd8 <_ZL9threadEnd>
        td->buffer->put('!');
    8000494c:	0204b783          	ld	a5,32(s1)
    80004950:	02100593          	li	a1,33
    80004954:	0087b503          	ld	a0,8(a5)
    80004958:	00001097          	auipc	ra,0x1
    8000495c:	668080e7          	jalr	1640(ra) # 80005fc0 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004960:	0204b783          	ld	a5,32(s1)
    80004964:	0107b503          	ld	a0,16(a5)
    80004968:	ffffd097          	auipc	ra,0xffffd
    8000496c:	704080e7          	jalr	1796(ra) # 8000206c <_ZN9Semaphore6signalEv>
    }
    80004970:	01813083          	ld	ra,24(sp)
    80004974:	01013403          	ld	s0,16(sp)
    80004978:	00813483          	ld	s1,8(sp)
    8000497c:	02010113          	addi	sp,sp,32
    80004980:	00008067          	ret

0000000080004984 <_ZN8Producer3runEv>:
    void run() override {
    80004984:	fe010113          	addi	sp,sp,-32
    80004988:	00113c23          	sd	ra,24(sp)
    8000498c:	00813823          	sd	s0,16(sp)
    80004990:	00913423          	sd	s1,8(sp)
    80004994:	01213023          	sd	s2,0(sp)
    80004998:	02010413          	addi	s0,sp,32
    8000499c:	00050493          	mv	s1,a0
        int i = 0;
    800049a0:	00000913          	li	s2,0
        while (!threadEnd) {
    800049a4:	00007797          	auipc	a5,0x7
    800049a8:	2347a783          	lw	a5,564(a5) # 8000bbd8 <_ZL9threadEnd>
    800049ac:	04079263          	bnez	a5,800049f0 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    800049b0:	0204b783          	ld	a5,32(s1)
    800049b4:	0007a583          	lw	a1,0(a5)
    800049b8:	0305859b          	addiw	a1,a1,48
    800049bc:	0087b503          	ld	a0,8(a5)
    800049c0:	00001097          	auipc	ra,0x1
    800049c4:	600080e7          	jalr	1536(ra) # 80005fc0 <_ZN9BufferCPP3putEi>
            i++;
    800049c8:	0019071b          	addiw	a4,s2,1
    800049cc:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    800049d0:	0204b783          	ld	a5,32(s1)
    800049d4:	0007a783          	lw	a5,0(a5)
    800049d8:	00e787bb          	addw	a5,a5,a4
    800049dc:	00500513          	li	a0,5
    800049e0:	02a7e53b          	remw	a0,a5,a0
    800049e4:	ffffd097          	auipc	ra,0xffffd
    800049e8:	5c0080e7          	jalr	1472(ra) # 80001fa4 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    800049ec:	fb9ff06f          	j	800049a4 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    800049f0:	0204b783          	ld	a5,32(s1)
    800049f4:	0107b503          	ld	a0,16(a5)
    800049f8:	ffffd097          	auipc	ra,0xffffd
    800049fc:	674080e7          	jalr	1652(ra) # 8000206c <_ZN9Semaphore6signalEv>
    }
    80004a00:	01813083          	ld	ra,24(sp)
    80004a04:	01013403          	ld	s0,16(sp)
    80004a08:	00813483          	ld	s1,8(sp)
    80004a0c:	00013903          	ld	s2,0(sp)
    80004a10:	02010113          	addi	sp,sp,32
    80004a14:	00008067          	ret

0000000080004a18 <_ZN6BufferC1Ei>:
#include "bounded_buffer.hpp"


Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004a18:	fe010113          	addi	sp,sp,-32
    80004a1c:	00113c23          	sd	ra,24(sp)
    80004a20:	00813823          	sd	s0,16(sp)
    80004a24:	00913423          	sd	s1,8(sp)
    80004a28:	01213023          	sd	s2,0(sp)
    80004a2c:	02010413          	addi	s0,sp,32
    80004a30:	00050493          	mv	s1,a0
    80004a34:	00058913          	mv	s2,a1
    80004a38:	0015879b          	addiw	a5,a1,1
    80004a3c:	0007851b          	sext.w	a0,a5
    80004a40:	00f4a023          	sw	a5,0(s1)
    80004a44:	0004a823          	sw	zero,16(s1)
    80004a48:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004a4c:	00251513          	slli	a0,a0,0x2
    80004a50:	ffffd097          	auipc	ra,0xffffd
    80004a54:	808080e7          	jalr	-2040(ra) # 80001258 <_Z9mem_allocm>
    80004a58:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80004a5c:	00000593          	li	a1,0
    80004a60:	02048513          	addi	a0,s1,32
    80004a64:	ffffd097          	auipc	ra,0xffffd
    80004a68:	9a4080e7          	jalr	-1628(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&spaceAvailable, _cap);
    80004a6c:	00090593          	mv	a1,s2
    80004a70:	01848513          	addi	a0,s1,24
    80004a74:	ffffd097          	auipc	ra,0xffffd
    80004a78:	994080e7          	jalr	-1644(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&mutexHead, 1);
    80004a7c:	00100593          	li	a1,1
    80004a80:	02848513          	addi	a0,s1,40
    80004a84:	ffffd097          	auipc	ra,0xffffd
    80004a88:	984080e7          	jalr	-1660(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&mutexTail, 1);
    80004a8c:	00100593          	li	a1,1
    80004a90:	03048513          	addi	a0,s1,48
    80004a94:	ffffd097          	auipc	ra,0xffffd
    80004a98:	974080e7          	jalr	-1676(ra) # 80001408 <_Z8sem_openPP3Semj>
}
    80004a9c:	01813083          	ld	ra,24(sp)
    80004aa0:	01013403          	ld	s0,16(sp)
    80004aa4:	00813483          	ld	s1,8(sp)
    80004aa8:	00013903          	ld	s2,0(sp)
    80004aac:	02010113          	addi	sp,sp,32
    80004ab0:	00008067          	ret

0000000080004ab4 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80004ab4:	fe010113          	addi	sp,sp,-32
    80004ab8:	00113c23          	sd	ra,24(sp)
    80004abc:	00813823          	sd	s0,16(sp)
    80004ac0:	00913423          	sd	s1,8(sp)
    80004ac4:	01213023          	sd	s2,0(sp)
    80004ac8:	02010413          	addi	s0,sp,32
    80004acc:	00050493          	mv	s1,a0
    80004ad0:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80004ad4:	01853503          	ld	a0,24(a0)
    80004ad8:	ffffd097          	auipc	ra,0xffffd
    80004adc:	9cc080e7          	jalr	-1588(ra) # 800014a4 <_Z8sem_waitP3Sem>

    sem_wait(mutexTail);
    80004ae0:	0304b503          	ld	a0,48(s1)
    80004ae4:	ffffd097          	auipc	ra,0xffffd
    80004ae8:	9c0080e7          	jalr	-1600(ra) # 800014a4 <_Z8sem_waitP3Sem>
    buffer[tail] = val;
    80004aec:	0084b783          	ld	a5,8(s1)
    80004af0:	0144a703          	lw	a4,20(s1)
    80004af4:	00271713          	slli	a4,a4,0x2
    80004af8:	00e787b3          	add	a5,a5,a4
    80004afc:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80004b00:	0144a783          	lw	a5,20(s1)
    80004b04:	0017879b          	addiw	a5,a5,1
    80004b08:	0004a703          	lw	a4,0(s1)
    80004b0c:	02e7e7bb          	remw	a5,a5,a4
    80004b10:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80004b14:	0304b503          	ld	a0,48(s1)
    80004b18:	ffffd097          	auipc	ra,0xffffd
    80004b1c:	9d8080e7          	jalr	-1576(ra) # 800014f0 <_Z10sem_signalP3Sem>

    sem_signal(itemAvailable);
    80004b20:	0204b503          	ld	a0,32(s1)
    80004b24:	ffffd097          	auipc	ra,0xffffd
    80004b28:	9cc080e7          	jalr	-1588(ra) # 800014f0 <_Z10sem_signalP3Sem>

}
    80004b2c:	01813083          	ld	ra,24(sp)
    80004b30:	01013403          	ld	s0,16(sp)
    80004b34:	00813483          	ld	s1,8(sp)
    80004b38:	00013903          	ld	s2,0(sp)
    80004b3c:	02010113          	addi	sp,sp,32
    80004b40:	00008067          	ret

0000000080004b44 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80004b44:	fe010113          	addi	sp,sp,-32
    80004b48:	00113c23          	sd	ra,24(sp)
    80004b4c:	00813823          	sd	s0,16(sp)
    80004b50:	00913423          	sd	s1,8(sp)
    80004b54:	01213023          	sd	s2,0(sp)
    80004b58:	02010413          	addi	s0,sp,32
    80004b5c:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80004b60:	02053503          	ld	a0,32(a0)
    80004b64:	ffffd097          	auipc	ra,0xffffd
    80004b68:	940080e7          	jalr	-1728(ra) # 800014a4 <_Z8sem_waitP3Sem>

    sem_wait(mutexHead);
    80004b6c:	0284b503          	ld	a0,40(s1)
    80004b70:	ffffd097          	auipc	ra,0xffffd
    80004b74:	934080e7          	jalr	-1740(ra) # 800014a4 <_Z8sem_waitP3Sem>

    int ret = buffer[head];
    80004b78:	0084b703          	ld	a4,8(s1)
    80004b7c:	0104a783          	lw	a5,16(s1)
    80004b80:	00279693          	slli	a3,a5,0x2
    80004b84:	00d70733          	add	a4,a4,a3
    80004b88:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80004b8c:	0017879b          	addiw	a5,a5,1
    80004b90:	0004a703          	lw	a4,0(s1)
    80004b94:	02e7e7bb          	remw	a5,a5,a4
    80004b98:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80004b9c:	0284b503          	ld	a0,40(s1)
    80004ba0:	ffffd097          	auipc	ra,0xffffd
    80004ba4:	950080e7          	jalr	-1712(ra) # 800014f0 <_Z10sem_signalP3Sem>

    sem_signal(spaceAvailable);
    80004ba8:	0184b503          	ld	a0,24(s1)
    80004bac:	ffffd097          	auipc	ra,0xffffd
    80004bb0:	944080e7          	jalr	-1724(ra) # 800014f0 <_Z10sem_signalP3Sem>

    return ret;
}
    80004bb4:	00090513          	mv	a0,s2
    80004bb8:	01813083          	ld	ra,24(sp)
    80004bbc:	01013403          	ld	s0,16(sp)
    80004bc0:	00813483          	ld	s1,8(sp)
    80004bc4:	00013903          	ld	s2,0(sp)
    80004bc8:	02010113          	addi	sp,sp,32
    80004bcc:	00008067          	ret

0000000080004bd0 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80004bd0:	fe010113          	addi	sp,sp,-32
    80004bd4:	00113c23          	sd	ra,24(sp)
    80004bd8:	00813823          	sd	s0,16(sp)
    80004bdc:	00913423          	sd	s1,8(sp)
    80004be0:	01213023          	sd	s2,0(sp)
    80004be4:	02010413          	addi	s0,sp,32
    80004be8:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80004bec:	02853503          	ld	a0,40(a0)
    80004bf0:	ffffd097          	auipc	ra,0xffffd
    80004bf4:	8b4080e7          	jalr	-1868(ra) # 800014a4 <_Z8sem_waitP3Sem>
    sem_wait(mutexTail);
    80004bf8:	0304b503          	ld	a0,48(s1)
    80004bfc:	ffffd097          	auipc	ra,0xffffd
    80004c00:	8a8080e7          	jalr	-1880(ra) # 800014a4 <_Z8sem_waitP3Sem>

    if (tail >= head) {
    80004c04:	0144a783          	lw	a5,20(s1)
    80004c08:	0104a903          	lw	s2,16(s1)
    80004c0c:	0327ce63          	blt	a5,s2,80004c48 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80004c10:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80004c14:	0304b503          	ld	a0,48(s1)
    80004c18:	ffffd097          	auipc	ra,0xffffd
    80004c1c:	8d8080e7          	jalr	-1832(ra) # 800014f0 <_Z10sem_signalP3Sem>
    sem_signal(mutexHead);
    80004c20:	0284b503          	ld	a0,40(s1)
    80004c24:	ffffd097          	auipc	ra,0xffffd
    80004c28:	8cc080e7          	jalr	-1844(ra) # 800014f0 <_Z10sem_signalP3Sem>

    return ret;
}
    80004c2c:	00090513          	mv	a0,s2
    80004c30:	01813083          	ld	ra,24(sp)
    80004c34:	01013403          	ld	s0,16(sp)
    80004c38:	00813483          	ld	s1,8(sp)
    80004c3c:	00013903          	ld	s2,0(sp)
    80004c40:	02010113          	addi	sp,sp,32
    80004c44:	00008067          	ret
        ret = cap - head + tail;
    80004c48:	0004a703          	lw	a4,0(s1)
    80004c4c:	4127093b          	subw	s2,a4,s2
    80004c50:	00f9093b          	addw	s2,s2,a5
    80004c54:	fc1ff06f          	j	80004c14 <_ZN6Buffer6getCntEv+0x44>

0000000080004c58 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80004c58:	fe010113          	addi	sp,sp,-32
    80004c5c:	00113c23          	sd	ra,24(sp)
    80004c60:	00813823          	sd	s0,16(sp)
    80004c64:	00913423          	sd	s1,8(sp)
    80004c68:	02010413          	addi	s0,sp,32
    80004c6c:	00050493          	mv	s1,a0
    putc('\n');
    80004c70:	00a00513          	li	a0,10
    80004c74:	ffffd097          	auipc	ra,0xffffd
    80004c78:	9f8080e7          	jalr	-1544(ra) # 8000166c <_Z4putcc>
    printString("Buffer deleted!\n");
    80004c7c:	00004517          	auipc	a0,0x4
    80004c80:	69450513          	addi	a0,a0,1684 # 80009310 <CONSOLE_STATUS+0x300>
    80004c84:	00001097          	auipc	ra,0x1
    80004c88:	f18080e7          	jalr	-232(ra) # 80005b9c <_Z11printStringPKc>
    while (getCnt() > 0) {
    80004c8c:	00048513          	mv	a0,s1
    80004c90:	00000097          	auipc	ra,0x0
    80004c94:	f40080e7          	jalr	-192(ra) # 80004bd0 <_ZN6Buffer6getCntEv>
    80004c98:	02a05c63          	blez	a0,80004cd0 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80004c9c:	0084b783          	ld	a5,8(s1)
    80004ca0:	0104a703          	lw	a4,16(s1)
    80004ca4:	00271713          	slli	a4,a4,0x2
    80004ca8:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80004cac:	0007c503          	lbu	a0,0(a5)
    80004cb0:	ffffd097          	auipc	ra,0xffffd
    80004cb4:	9bc080e7          	jalr	-1604(ra) # 8000166c <_Z4putcc>
        head = (head + 1) % cap;
    80004cb8:	0104a783          	lw	a5,16(s1)
    80004cbc:	0017879b          	addiw	a5,a5,1
    80004cc0:	0004a703          	lw	a4,0(s1)
    80004cc4:	02e7e7bb          	remw	a5,a5,a4
    80004cc8:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80004ccc:	fc1ff06f          	j	80004c8c <_ZN6BufferD1Ev+0x34>
    putc('!');
    80004cd0:	02100513          	li	a0,33
    80004cd4:	ffffd097          	auipc	ra,0xffffd
    80004cd8:	998080e7          	jalr	-1640(ra) # 8000166c <_Z4putcc>
    putc('\n');
    80004cdc:	00a00513          	li	a0,10
    80004ce0:	ffffd097          	auipc	ra,0xffffd
    80004ce4:	98c080e7          	jalr	-1652(ra) # 8000166c <_Z4putcc>
    mem_free(buffer);
    80004ce8:	0084b503          	ld	a0,8(s1)
    80004cec:	ffffc097          	auipc	ra,0xffffc
    80004cf0:	5c0080e7          	jalr	1472(ra) # 800012ac <_Z8mem_freePv>
    sem_close(itemAvailable);
    80004cf4:	0204b503          	ld	a0,32(s1)
    80004cf8:	ffffc097          	auipc	ra,0xffffc
    80004cfc:	760080e7          	jalr	1888(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(spaceAvailable);
    80004d00:	0184b503          	ld	a0,24(s1)
    80004d04:	ffffc097          	auipc	ra,0xffffc
    80004d08:	754080e7          	jalr	1876(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(mutexTail);
    80004d0c:	0304b503          	ld	a0,48(s1)
    80004d10:	ffffc097          	auipc	ra,0xffffc
    80004d14:	748080e7          	jalr	1864(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(mutexHead);
    80004d18:	0284b503          	ld	a0,40(s1)
    80004d1c:	ffffc097          	auipc	ra,0xffffc
    80004d20:	73c080e7          	jalr	1852(ra) # 80001458 <_Z9sem_closeP3Sem>
}
    80004d24:	01813083          	ld	ra,24(sp)
    80004d28:	01013403          	ld	s0,16(sp)
    80004d2c:	00813483          	ld	s1,8(sp)
    80004d30:	02010113          	addi	sp,sp,32
    80004d34:	00008067          	ret

0000000080004d38 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004d38:	fe010113          	addi	sp,sp,-32
    80004d3c:	00113c23          	sd	ra,24(sp)
    80004d40:	00813823          	sd	s0,16(sp)
    80004d44:	00913423          	sd	s1,8(sp)
    80004d48:	01213023          	sd	s2,0(sp)
    80004d4c:	02010413          	addi	s0,sp,32
    80004d50:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004d54:	00100793          	li	a5,1
    80004d58:	02a7f863          	bgeu	a5,a0,80004d88 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004d5c:	00a00793          	li	a5,10
    80004d60:	02f577b3          	remu	a5,a0,a5
    80004d64:	02078e63          	beqz	a5,80004da0 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004d68:	fff48513          	addi	a0,s1,-1
    80004d6c:	00000097          	auipc	ra,0x0
    80004d70:	fcc080e7          	jalr	-52(ra) # 80004d38 <_ZL9fibonaccim>
    80004d74:	00050913          	mv	s2,a0
    80004d78:	ffe48513          	addi	a0,s1,-2
    80004d7c:	00000097          	auipc	ra,0x0
    80004d80:	fbc080e7          	jalr	-68(ra) # 80004d38 <_ZL9fibonaccim>
    80004d84:	00a90533          	add	a0,s2,a0
}
    80004d88:	01813083          	ld	ra,24(sp)
    80004d8c:	01013403          	ld	s0,16(sp)
    80004d90:	00813483          	ld	s1,8(sp)
    80004d94:	00013903          	ld	s2,0(sp)
    80004d98:	02010113          	addi	sp,sp,32
    80004d9c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004da0:	ffffc097          	auipc	ra,0xffffc
    80004da4:	62c080e7          	jalr	1580(ra) # 800013cc <_Z15thread_dispatchv>
    80004da8:	fc1ff06f          	j	80004d68 <_ZL9fibonaccim+0x30>

0000000080004dac <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004dac:	fe010113          	addi	sp,sp,-32
    80004db0:	00113c23          	sd	ra,24(sp)
    80004db4:	00813823          	sd	s0,16(sp)
    80004db8:	00913423          	sd	s1,8(sp)
    80004dbc:	01213023          	sd	s2,0(sp)
    80004dc0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004dc4:	00a00493          	li	s1,10
    80004dc8:	0400006f          	j	80004e08 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004dcc:	00004517          	auipc	a0,0x4
    80004dd0:	4ac50513          	addi	a0,a0,1196 # 80009278 <CONSOLE_STATUS+0x268>
    80004dd4:	00001097          	auipc	ra,0x1
    80004dd8:	dc8080e7          	jalr	-568(ra) # 80005b9c <_Z11printStringPKc>
    80004ddc:	00000613          	li	a2,0
    80004de0:	00a00593          	li	a1,10
    80004de4:	00048513          	mv	a0,s1
    80004de8:	00001097          	auipc	ra,0x1
    80004dec:	f64080e7          	jalr	-156(ra) # 80005d4c <_Z8printIntiii>
    80004df0:	00004517          	auipc	a0,0x4
    80004df4:	37850513          	addi	a0,a0,888 # 80009168 <CONSOLE_STATUS+0x158>
    80004df8:	00001097          	auipc	ra,0x1
    80004dfc:	da4080e7          	jalr	-604(ra) # 80005b9c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004e00:	0014849b          	addiw	s1,s1,1
    80004e04:	0ff4f493          	andi	s1,s1,255
    80004e08:	00c00793          	li	a5,12
    80004e0c:	fc97f0e3          	bgeu	a5,s1,80004dcc <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004e10:	00004517          	auipc	a0,0x4
    80004e14:	47050513          	addi	a0,a0,1136 # 80009280 <CONSOLE_STATUS+0x270>
    80004e18:	00001097          	auipc	ra,0x1
    80004e1c:	d84080e7          	jalr	-636(ra) # 80005b9c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004e20:	00500313          	li	t1,5
    thread_dispatch();
    80004e24:	ffffc097          	auipc	ra,0xffffc
    80004e28:	5a8080e7          	jalr	1448(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004e2c:	01000513          	li	a0,16
    80004e30:	00000097          	auipc	ra,0x0
    80004e34:	f08080e7          	jalr	-248(ra) # 80004d38 <_ZL9fibonaccim>
    80004e38:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004e3c:	00004517          	auipc	a0,0x4
    80004e40:	45450513          	addi	a0,a0,1108 # 80009290 <CONSOLE_STATUS+0x280>
    80004e44:	00001097          	auipc	ra,0x1
    80004e48:	d58080e7          	jalr	-680(ra) # 80005b9c <_Z11printStringPKc>
    80004e4c:	00000613          	li	a2,0
    80004e50:	00a00593          	li	a1,10
    80004e54:	0009051b          	sext.w	a0,s2
    80004e58:	00001097          	auipc	ra,0x1
    80004e5c:	ef4080e7          	jalr	-268(ra) # 80005d4c <_Z8printIntiii>
    80004e60:	00004517          	auipc	a0,0x4
    80004e64:	30850513          	addi	a0,a0,776 # 80009168 <CONSOLE_STATUS+0x158>
    80004e68:	00001097          	auipc	ra,0x1
    80004e6c:	d34080e7          	jalr	-716(ra) # 80005b9c <_Z11printStringPKc>
    80004e70:	0400006f          	j	80004eb0 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004e74:	00004517          	auipc	a0,0x4
    80004e78:	40450513          	addi	a0,a0,1028 # 80009278 <CONSOLE_STATUS+0x268>
    80004e7c:	00001097          	auipc	ra,0x1
    80004e80:	d20080e7          	jalr	-736(ra) # 80005b9c <_Z11printStringPKc>
    80004e84:	00000613          	li	a2,0
    80004e88:	00a00593          	li	a1,10
    80004e8c:	00048513          	mv	a0,s1
    80004e90:	00001097          	auipc	ra,0x1
    80004e94:	ebc080e7          	jalr	-324(ra) # 80005d4c <_Z8printIntiii>
    80004e98:	00004517          	auipc	a0,0x4
    80004e9c:	2d050513          	addi	a0,a0,720 # 80009168 <CONSOLE_STATUS+0x158>
    80004ea0:	00001097          	auipc	ra,0x1
    80004ea4:	cfc080e7          	jalr	-772(ra) # 80005b9c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004ea8:	0014849b          	addiw	s1,s1,1
    80004eac:	0ff4f493          	andi	s1,s1,255
    80004eb0:	00f00793          	li	a5,15
    80004eb4:	fc97f0e3          	bgeu	a5,s1,80004e74 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004eb8:	00004517          	auipc	a0,0x4
    80004ebc:	3e850513          	addi	a0,a0,1000 # 800092a0 <CONSOLE_STATUS+0x290>
    80004ec0:	00001097          	auipc	ra,0x1
    80004ec4:	cdc080e7          	jalr	-804(ra) # 80005b9c <_Z11printStringPKc>
    finishedD = true;
    80004ec8:	00100793          	li	a5,1
    80004ecc:	00007717          	auipc	a4,0x7
    80004ed0:	d0f70e23          	sb	a5,-740(a4) # 8000bbe8 <_ZL9finishedD>
    thread_dispatch();
    80004ed4:	ffffc097          	auipc	ra,0xffffc
    80004ed8:	4f8080e7          	jalr	1272(ra) # 800013cc <_Z15thread_dispatchv>
}
    80004edc:	01813083          	ld	ra,24(sp)
    80004ee0:	01013403          	ld	s0,16(sp)
    80004ee4:	00813483          	ld	s1,8(sp)
    80004ee8:	00013903          	ld	s2,0(sp)
    80004eec:	02010113          	addi	sp,sp,32
    80004ef0:	00008067          	ret

0000000080004ef4 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004ef4:	fe010113          	addi	sp,sp,-32
    80004ef8:	00113c23          	sd	ra,24(sp)
    80004efc:	00813823          	sd	s0,16(sp)
    80004f00:	00913423          	sd	s1,8(sp)
    80004f04:	01213023          	sd	s2,0(sp)
    80004f08:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004f0c:	00000493          	li	s1,0
    80004f10:	0400006f          	j	80004f50 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004f14:	00004517          	auipc	a0,0x4
    80004f18:	33450513          	addi	a0,a0,820 # 80009248 <CONSOLE_STATUS+0x238>
    80004f1c:	00001097          	auipc	ra,0x1
    80004f20:	c80080e7          	jalr	-896(ra) # 80005b9c <_Z11printStringPKc>
    80004f24:	00000613          	li	a2,0
    80004f28:	00a00593          	li	a1,10
    80004f2c:	00048513          	mv	a0,s1
    80004f30:	00001097          	auipc	ra,0x1
    80004f34:	e1c080e7          	jalr	-484(ra) # 80005d4c <_Z8printIntiii>
    80004f38:	00004517          	auipc	a0,0x4
    80004f3c:	23050513          	addi	a0,a0,560 # 80009168 <CONSOLE_STATUS+0x158>
    80004f40:	00001097          	auipc	ra,0x1
    80004f44:	c5c080e7          	jalr	-932(ra) # 80005b9c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004f48:	0014849b          	addiw	s1,s1,1
    80004f4c:	0ff4f493          	andi	s1,s1,255
    80004f50:	00200793          	li	a5,2
    80004f54:	fc97f0e3          	bgeu	a5,s1,80004f14 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004f58:	00004517          	auipc	a0,0x4
    80004f5c:	2f850513          	addi	a0,a0,760 # 80009250 <CONSOLE_STATUS+0x240>
    80004f60:	00001097          	auipc	ra,0x1
    80004f64:	c3c080e7          	jalr	-964(ra) # 80005b9c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004f68:	00700313          	li	t1,7
    thread_dispatch();
    80004f6c:	ffffc097          	auipc	ra,0xffffc
    80004f70:	460080e7          	jalr	1120(ra) # 800013cc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004f74:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004f78:	00004517          	auipc	a0,0x4
    80004f7c:	2e850513          	addi	a0,a0,744 # 80009260 <CONSOLE_STATUS+0x250>
    80004f80:	00001097          	auipc	ra,0x1
    80004f84:	c1c080e7          	jalr	-996(ra) # 80005b9c <_Z11printStringPKc>
    80004f88:	00000613          	li	a2,0
    80004f8c:	00a00593          	li	a1,10
    80004f90:	0009051b          	sext.w	a0,s2
    80004f94:	00001097          	auipc	ra,0x1
    80004f98:	db8080e7          	jalr	-584(ra) # 80005d4c <_Z8printIntiii>
    80004f9c:	00004517          	auipc	a0,0x4
    80004fa0:	1cc50513          	addi	a0,a0,460 # 80009168 <CONSOLE_STATUS+0x158>
    80004fa4:	00001097          	auipc	ra,0x1
    80004fa8:	bf8080e7          	jalr	-1032(ra) # 80005b9c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004fac:	00c00513          	li	a0,12
    80004fb0:	00000097          	auipc	ra,0x0
    80004fb4:	d88080e7          	jalr	-632(ra) # 80004d38 <_ZL9fibonaccim>
    80004fb8:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004fbc:	00004517          	auipc	a0,0x4
    80004fc0:	2ac50513          	addi	a0,a0,684 # 80009268 <CONSOLE_STATUS+0x258>
    80004fc4:	00001097          	auipc	ra,0x1
    80004fc8:	bd8080e7          	jalr	-1064(ra) # 80005b9c <_Z11printStringPKc>
    80004fcc:	00000613          	li	a2,0
    80004fd0:	00a00593          	li	a1,10
    80004fd4:	0009051b          	sext.w	a0,s2
    80004fd8:	00001097          	auipc	ra,0x1
    80004fdc:	d74080e7          	jalr	-652(ra) # 80005d4c <_Z8printIntiii>
    80004fe0:	00004517          	auipc	a0,0x4
    80004fe4:	18850513          	addi	a0,a0,392 # 80009168 <CONSOLE_STATUS+0x158>
    80004fe8:	00001097          	auipc	ra,0x1
    80004fec:	bb4080e7          	jalr	-1100(ra) # 80005b9c <_Z11printStringPKc>
    80004ff0:	0400006f          	j	80005030 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004ff4:	00004517          	auipc	a0,0x4
    80004ff8:	25450513          	addi	a0,a0,596 # 80009248 <CONSOLE_STATUS+0x238>
    80004ffc:	00001097          	auipc	ra,0x1
    80005000:	ba0080e7          	jalr	-1120(ra) # 80005b9c <_Z11printStringPKc>
    80005004:	00000613          	li	a2,0
    80005008:	00a00593          	li	a1,10
    8000500c:	00048513          	mv	a0,s1
    80005010:	00001097          	auipc	ra,0x1
    80005014:	d3c080e7          	jalr	-708(ra) # 80005d4c <_Z8printIntiii>
    80005018:	00004517          	auipc	a0,0x4
    8000501c:	15050513          	addi	a0,a0,336 # 80009168 <CONSOLE_STATUS+0x158>
    80005020:	00001097          	auipc	ra,0x1
    80005024:	b7c080e7          	jalr	-1156(ra) # 80005b9c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005028:	0014849b          	addiw	s1,s1,1
    8000502c:	0ff4f493          	andi	s1,s1,255
    80005030:	00500793          	li	a5,5
    80005034:	fc97f0e3          	bgeu	a5,s1,80004ff4 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80005038:	00004517          	auipc	a0,0x4
    8000503c:	1e850513          	addi	a0,a0,488 # 80009220 <CONSOLE_STATUS+0x210>
    80005040:	00001097          	auipc	ra,0x1
    80005044:	b5c080e7          	jalr	-1188(ra) # 80005b9c <_Z11printStringPKc>
    finishedC = true;
    80005048:	00100793          	li	a5,1
    8000504c:	00007717          	auipc	a4,0x7
    80005050:	b8f70ea3          	sb	a5,-1123(a4) # 8000bbe9 <_ZL9finishedC>
    thread_dispatch();
    80005054:	ffffc097          	auipc	ra,0xffffc
    80005058:	378080e7          	jalr	888(ra) # 800013cc <_Z15thread_dispatchv>
}
    8000505c:	01813083          	ld	ra,24(sp)
    80005060:	01013403          	ld	s0,16(sp)
    80005064:	00813483          	ld	s1,8(sp)
    80005068:	00013903          	ld	s2,0(sp)
    8000506c:	02010113          	addi	sp,sp,32
    80005070:	00008067          	ret

0000000080005074 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005074:	fe010113          	addi	sp,sp,-32
    80005078:	00113c23          	sd	ra,24(sp)
    8000507c:	00813823          	sd	s0,16(sp)
    80005080:	00913423          	sd	s1,8(sp)
    80005084:	01213023          	sd	s2,0(sp)
    80005088:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000508c:	00000913          	li	s2,0
    80005090:	0380006f          	j	800050c8 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80005094:	ffffc097          	auipc	ra,0xffffc
    80005098:	338080e7          	jalr	824(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000509c:	00148493          	addi	s1,s1,1
    800050a0:	000027b7          	lui	a5,0x2
    800050a4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800050a8:	0097ee63          	bltu	a5,s1,800050c4 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800050ac:	00000713          	li	a4,0
    800050b0:	000077b7          	lui	a5,0x7
    800050b4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800050b8:	fce7eee3          	bltu	a5,a4,80005094 <_ZL11workerBodyBPv+0x20>
    800050bc:	00170713          	addi	a4,a4,1
    800050c0:	ff1ff06f          	j	800050b0 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800050c4:	00190913          	addi	s2,s2,1
    800050c8:	00f00793          	li	a5,15
    800050cc:	0527e063          	bltu	a5,s2,8000510c <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800050d0:	00004517          	auipc	a0,0x4
    800050d4:	16050513          	addi	a0,a0,352 # 80009230 <CONSOLE_STATUS+0x220>
    800050d8:	00001097          	auipc	ra,0x1
    800050dc:	ac4080e7          	jalr	-1340(ra) # 80005b9c <_Z11printStringPKc>
    800050e0:	00000613          	li	a2,0
    800050e4:	00a00593          	li	a1,10
    800050e8:	0009051b          	sext.w	a0,s2
    800050ec:	00001097          	auipc	ra,0x1
    800050f0:	c60080e7          	jalr	-928(ra) # 80005d4c <_Z8printIntiii>
    800050f4:	00004517          	auipc	a0,0x4
    800050f8:	07450513          	addi	a0,a0,116 # 80009168 <CONSOLE_STATUS+0x158>
    800050fc:	00001097          	auipc	ra,0x1
    80005100:	aa0080e7          	jalr	-1376(ra) # 80005b9c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005104:	00000493          	li	s1,0
    80005108:	f99ff06f          	j	800050a0 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    8000510c:	00004517          	auipc	a0,0x4
    80005110:	12c50513          	addi	a0,a0,300 # 80009238 <CONSOLE_STATUS+0x228>
    80005114:	00001097          	auipc	ra,0x1
    80005118:	a88080e7          	jalr	-1400(ra) # 80005b9c <_Z11printStringPKc>
    finishedB = true;
    8000511c:	00100793          	li	a5,1
    80005120:	00007717          	auipc	a4,0x7
    80005124:	acf70523          	sb	a5,-1334(a4) # 8000bbea <_ZL9finishedB>
    thread_dispatch();
    80005128:	ffffc097          	auipc	ra,0xffffc
    8000512c:	2a4080e7          	jalr	676(ra) # 800013cc <_Z15thread_dispatchv>
}
    80005130:	01813083          	ld	ra,24(sp)
    80005134:	01013403          	ld	s0,16(sp)
    80005138:	00813483          	ld	s1,8(sp)
    8000513c:	00013903          	ld	s2,0(sp)
    80005140:	02010113          	addi	sp,sp,32
    80005144:	00008067          	ret

0000000080005148 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005148:	fe010113          	addi	sp,sp,-32
    8000514c:	00113c23          	sd	ra,24(sp)
    80005150:	00813823          	sd	s0,16(sp)
    80005154:	00913423          	sd	s1,8(sp)
    80005158:	01213023          	sd	s2,0(sp)
    8000515c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005160:	00000913          	li	s2,0
    80005164:	0380006f          	j	8000519c <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005168:	ffffc097          	auipc	ra,0xffffc
    8000516c:	264080e7          	jalr	612(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005170:	00148493          	addi	s1,s1,1
    80005174:	000027b7          	lui	a5,0x2
    80005178:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000517c:	0097ee63          	bltu	a5,s1,80005198 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005180:	00000713          	li	a4,0
    80005184:	000077b7          	lui	a5,0x7
    80005188:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000518c:	fce7eee3          	bltu	a5,a4,80005168 <_ZL11workerBodyAPv+0x20>
    80005190:	00170713          	addi	a4,a4,1
    80005194:	ff1ff06f          	j	80005184 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005198:	00190913          	addi	s2,s2,1
    8000519c:	00900793          	li	a5,9
    800051a0:	0527e063          	bltu	a5,s2,800051e0 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800051a4:	00004517          	auipc	a0,0x4
    800051a8:	07450513          	addi	a0,a0,116 # 80009218 <CONSOLE_STATUS+0x208>
    800051ac:	00001097          	auipc	ra,0x1
    800051b0:	9f0080e7          	jalr	-1552(ra) # 80005b9c <_Z11printStringPKc>
    800051b4:	00000613          	li	a2,0
    800051b8:	00a00593          	li	a1,10
    800051bc:	0009051b          	sext.w	a0,s2
    800051c0:	00001097          	auipc	ra,0x1
    800051c4:	b8c080e7          	jalr	-1140(ra) # 80005d4c <_Z8printIntiii>
    800051c8:	00004517          	auipc	a0,0x4
    800051cc:	fa050513          	addi	a0,a0,-96 # 80009168 <CONSOLE_STATUS+0x158>
    800051d0:	00001097          	auipc	ra,0x1
    800051d4:	9cc080e7          	jalr	-1588(ra) # 80005b9c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800051d8:	00000493          	li	s1,0
    800051dc:	f99ff06f          	j	80005174 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800051e0:	00004517          	auipc	a0,0x4
    800051e4:	04050513          	addi	a0,a0,64 # 80009220 <CONSOLE_STATUS+0x210>
    800051e8:	00001097          	auipc	ra,0x1
    800051ec:	9b4080e7          	jalr	-1612(ra) # 80005b9c <_Z11printStringPKc>
    finishedA = true;
    800051f0:	00100793          	li	a5,1
    800051f4:	00007717          	auipc	a4,0x7
    800051f8:	9ef70ba3          	sb	a5,-1545(a4) # 8000bbeb <_ZL9finishedA>
}
    800051fc:	01813083          	ld	ra,24(sp)
    80005200:	01013403          	ld	s0,16(sp)
    80005204:	00813483          	ld	s1,8(sp)
    80005208:	00013903          	ld	s2,0(sp)
    8000520c:	02010113          	addi	sp,sp,32
    80005210:	00008067          	ret

0000000080005214 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80005214:	fd010113          	addi	sp,sp,-48
    80005218:	02113423          	sd	ra,40(sp)
    8000521c:	02813023          	sd	s0,32(sp)
    80005220:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005224:	00000613          	li	a2,0
    80005228:	00000597          	auipc	a1,0x0
    8000522c:	f2058593          	addi	a1,a1,-224 # 80005148 <_ZL11workerBodyAPv>
    80005230:	fd040513          	addi	a0,s0,-48
    80005234:	ffffc097          	auipc	ra,0xffffc
    80005238:	0c4080e7          	jalr	196(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    8000523c:	00004517          	auipc	a0,0x4
    80005240:	07450513          	addi	a0,a0,116 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80005244:	00001097          	auipc	ra,0x1
    80005248:	958080e7          	jalr	-1704(ra) # 80005b9c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    8000524c:	00000613          	li	a2,0
    80005250:	00000597          	auipc	a1,0x0
    80005254:	e2458593          	addi	a1,a1,-476 # 80005074 <_ZL11workerBodyBPv>
    80005258:	fd840513          	addi	a0,s0,-40
    8000525c:	ffffc097          	auipc	ra,0xffffc
    80005260:	09c080e7          	jalr	156(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80005264:	00004517          	auipc	a0,0x4
    80005268:	06450513          	addi	a0,a0,100 # 800092c8 <CONSOLE_STATUS+0x2b8>
    8000526c:	00001097          	auipc	ra,0x1
    80005270:	930080e7          	jalr	-1744(ra) # 80005b9c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005274:	00000613          	li	a2,0
    80005278:	00000597          	auipc	a1,0x0
    8000527c:	c7c58593          	addi	a1,a1,-900 # 80004ef4 <_ZL11workerBodyCPv>
    80005280:	fe040513          	addi	a0,s0,-32
    80005284:	ffffc097          	auipc	ra,0xffffc
    80005288:	074080e7          	jalr	116(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    8000528c:	00004517          	auipc	a0,0x4
    80005290:	05450513          	addi	a0,a0,84 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80005294:	00001097          	auipc	ra,0x1
    80005298:	908080e7          	jalr	-1784(ra) # 80005b9c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    8000529c:	00000613          	li	a2,0
    800052a0:	00000597          	auipc	a1,0x0
    800052a4:	b0c58593          	addi	a1,a1,-1268 # 80004dac <_ZL11workerBodyDPv>
    800052a8:	fe840513          	addi	a0,s0,-24
    800052ac:	ffffc097          	auipc	ra,0xffffc
    800052b0:	04c080e7          	jalr	76(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    800052b4:	00004517          	auipc	a0,0x4
    800052b8:	04450513          	addi	a0,a0,68 # 800092f8 <CONSOLE_STATUS+0x2e8>
    800052bc:	00001097          	auipc	ra,0x1
    800052c0:	8e0080e7          	jalr	-1824(ra) # 80005b9c <_Z11printStringPKc>
    800052c4:	00c0006f          	j	800052d0 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800052c8:	ffffc097          	auipc	ra,0xffffc
    800052cc:	104080e7          	jalr	260(ra) # 800013cc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800052d0:	00007797          	auipc	a5,0x7
    800052d4:	91b7c783          	lbu	a5,-1765(a5) # 8000bbeb <_ZL9finishedA>
    800052d8:	fe0788e3          	beqz	a5,800052c8 <_Z18Threads_C_API_testv+0xb4>
    800052dc:	00007797          	auipc	a5,0x7
    800052e0:	90e7c783          	lbu	a5,-1778(a5) # 8000bbea <_ZL9finishedB>
    800052e4:	fe0782e3          	beqz	a5,800052c8 <_Z18Threads_C_API_testv+0xb4>
    800052e8:	00007797          	auipc	a5,0x7
    800052ec:	9017c783          	lbu	a5,-1791(a5) # 8000bbe9 <_ZL9finishedC>
    800052f0:	fc078ce3          	beqz	a5,800052c8 <_Z18Threads_C_API_testv+0xb4>
    800052f4:	00007797          	auipc	a5,0x7
    800052f8:	8f47c783          	lbu	a5,-1804(a5) # 8000bbe8 <_ZL9finishedD>
    800052fc:	fc0786e3          	beqz	a5,800052c8 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80005300:	02813083          	ld	ra,40(sp)
    80005304:	02013403          	ld	s0,32(sp)
    80005308:	03010113          	addi	sp,sp,48
    8000530c:	00008067          	ret

0000000080005310 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80005310:	fd010113          	addi	sp,sp,-48
    80005314:	02113423          	sd	ra,40(sp)
    80005318:	02813023          	sd	s0,32(sp)
    8000531c:	00913c23          	sd	s1,24(sp)
    80005320:	01213823          	sd	s2,16(sp)
    80005324:	01313423          	sd	s3,8(sp)
    80005328:	03010413          	addi	s0,sp,48
    8000532c:	00050993          	mv	s3,a0
    80005330:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80005334:	00000913          	li	s2,0
    80005338:	00c0006f          	j	80005344 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    8000533c:	ffffd097          	auipc	ra,0xffffd
    80005340:	c40080e7          	jalr	-960(ra) # 80001f7c <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80005344:	ffffc097          	auipc	ra,0xffffc
    80005348:	2dc080e7          	jalr	732(ra) # 80001620 <_Z4getcv>
    8000534c:	0005059b          	sext.w	a1,a0
    80005350:	01b00793          	li	a5,27
    80005354:	02f58a63          	beq	a1,a5,80005388 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80005358:	0084b503          	ld	a0,8(s1)
    8000535c:	00001097          	auipc	ra,0x1
    80005360:	c64080e7          	jalr	-924(ra) # 80005fc0 <_ZN9BufferCPP3putEi>
        i++;
    80005364:	0019071b          	addiw	a4,s2,1
    80005368:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000536c:	0004a683          	lw	a3,0(s1)
    80005370:	0026979b          	slliw	a5,a3,0x2
    80005374:	00d787bb          	addw	a5,a5,a3
    80005378:	0017979b          	slliw	a5,a5,0x1
    8000537c:	02f767bb          	remw	a5,a4,a5
    80005380:	fc0792e3          	bnez	a5,80005344 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80005384:	fb9ff06f          	j	8000533c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80005388:	00100793          	li	a5,1
    8000538c:	00007717          	auipc	a4,0x7
    80005390:	86f72223          	sw	a5,-1948(a4) # 8000bbf0 <_ZL9threadEnd>
    td->buffer->put('!');
    80005394:	0209b783          	ld	a5,32(s3)
    80005398:	02100593          	li	a1,33
    8000539c:	0087b503          	ld	a0,8(a5)
    800053a0:	00001097          	auipc	ra,0x1
    800053a4:	c20080e7          	jalr	-992(ra) # 80005fc0 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    800053a8:	0104b503          	ld	a0,16(s1)
    800053ac:	ffffd097          	auipc	ra,0xffffd
    800053b0:	cc0080e7          	jalr	-832(ra) # 8000206c <_ZN9Semaphore6signalEv>
}
    800053b4:	02813083          	ld	ra,40(sp)
    800053b8:	02013403          	ld	s0,32(sp)
    800053bc:	01813483          	ld	s1,24(sp)
    800053c0:	01013903          	ld	s2,16(sp)
    800053c4:	00813983          	ld	s3,8(sp)
    800053c8:	03010113          	addi	sp,sp,48
    800053cc:	00008067          	ret

00000000800053d0 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    800053d0:	fe010113          	addi	sp,sp,-32
    800053d4:	00113c23          	sd	ra,24(sp)
    800053d8:	00813823          	sd	s0,16(sp)
    800053dc:	00913423          	sd	s1,8(sp)
    800053e0:	01213023          	sd	s2,0(sp)
    800053e4:	02010413          	addi	s0,sp,32
    800053e8:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800053ec:	00000913          	li	s2,0
    800053f0:	00c0006f          	j	800053fc <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800053f4:	ffffd097          	auipc	ra,0xffffd
    800053f8:	b88080e7          	jalr	-1144(ra) # 80001f7c <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    800053fc:	00006797          	auipc	a5,0x6
    80005400:	7f47a783          	lw	a5,2036(a5) # 8000bbf0 <_ZL9threadEnd>
    80005404:	02079e63          	bnez	a5,80005440 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80005408:	0004a583          	lw	a1,0(s1)
    8000540c:	0305859b          	addiw	a1,a1,48
    80005410:	0084b503          	ld	a0,8(s1)
    80005414:	00001097          	auipc	ra,0x1
    80005418:	bac080e7          	jalr	-1108(ra) # 80005fc0 <_ZN9BufferCPP3putEi>
        i++;
    8000541c:	0019071b          	addiw	a4,s2,1
    80005420:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005424:	0004a683          	lw	a3,0(s1)
    80005428:	0026979b          	slliw	a5,a3,0x2
    8000542c:	00d787bb          	addw	a5,a5,a3
    80005430:	0017979b          	slliw	a5,a5,0x1
    80005434:	02f767bb          	remw	a5,a4,a5
    80005438:	fc0792e3          	bnez	a5,800053fc <_ZN12ProducerSync8producerEPv+0x2c>
    8000543c:	fb9ff06f          	j	800053f4 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80005440:	0104b503          	ld	a0,16(s1)
    80005444:	ffffd097          	auipc	ra,0xffffd
    80005448:	c28080e7          	jalr	-984(ra) # 8000206c <_ZN9Semaphore6signalEv>
}
    8000544c:	01813083          	ld	ra,24(sp)
    80005450:	01013403          	ld	s0,16(sp)
    80005454:	00813483          	ld	s1,8(sp)
    80005458:	00013903          	ld	s2,0(sp)
    8000545c:	02010113          	addi	sp,sp,32
    80005460:	00008067          	ret

0000000080005464 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80005464:	fd010113          	addi	sp,sp,-48
    80005468:	02113423          	sd	ra,40(sp)
    8000546c:	02813023          	sd	s0,32(sp)
    80005470:	00913c23          	sd	s1,24(sp)
    80005474:	01213823          	sd	s2,16(sp)
    80005478:	01313423          	sd	s3,8(sp)
    8000547c:	01413023          	sd	s4,0(sp)
    80005480:	03010413          	addi	s0,sp,48
    80005484:	00050993          	mv	s3,a0
    80005488:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000548c:	00000a13          	li	s4,0
    80005490:	01c0006f          	j	800054ac <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80005494:	ffffd097          	auipc	ra,0xffffd
    80005498:	ae8080e7          	jalr	-1304(ra) # 80001f7c <_ZN6Thread8dispatchEv>
    8000549c:	0500006f          	j	800054ec <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    800054a0:	00a00513          	li	a0,10
    800054a4:	ffffc097          	auipc	ra,0xffffc
    800054a8:	1c8080e7          	jalr	456(ra) # 8000166c <_Z4putcc>
    while (!threadEnd) {
    800054ac:	00006797          	auipc	a5,0x6
    800054b0:	7447a783          	lw	a5,1860(a5) # 8000bbf0 <_ZL9threadEnd>
    800054b4:	06079263          	bnez	a5,80005518 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    800054b8:	00893503          	ld	a0,8(s2)
    800054bc:	00001097          	auipc	ra,0x1
    800054c0:	b94080e7          	jalr	-1132(ra) # 80006050 <_ZN9BufferCPP3getEv>
        i++;
    800054c4:	001a049b          	addiw	s1,s4,1
    800054c8:	00048a1b          	sext.w	s4,s1
        putc(key);
    800054cc:	0ff57513          	andi	a0,a0,255
    800054d0:	ffffc097          	auipc	ra,0xffffc
    800054d4:	19c080e7          	jalr	412(ra) # 8000166c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800054d8:	00092703          	lw	a4,0(s2)
    800054dc:	0027179b          	slliw	a5,a4,0x2
    800054e0:	00e787bb          	addw	a5,a5,a4
    800054e4:	02f4e7bb          	remw	a5,s1,a5
    800054e8:	fa0786e3          	beqz	a5,80005494 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    800054ec:	05000793          	li	a5,80
    800054f0:	02f4e4bb          	remw	s1,s1,a5
    800054f4:	fa049ce3          	bnez	s1,800054ac <_ZN12ConsumerSync8consumerEPv+0x48>
    800054f8:	fa9ff06f          	j	800054a0 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    800054fc:	0209b783          	ld	a5,32(s3)
    80005500:	0087b503          	ld	a0,8(a5)
    80005504:	00001097          	auipc	ra,0x1
    80005508:	b4c080e7          	jalr	-1204(ra) # 80006050 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    8000550c:	0ff57513          	andi	a0,a0,255
    80005510:	ffffd097          	auipc	ra,0xffffd
    80005514:	c4c080e7          	jalr	-948(ra) # 8000215c <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80005518:	0209b783          	ld	a5,32(s3)
    8000551c:	0087b503          	ld	a0,8(a5)
    80005520:	00001097          	auipc	ra,0x1
    80005524:	bbc080e7          	jalr	-1092(ra) # 800060dc <_ZN9BufferCPP6getCntEv>
    80005528:	fca04ae3          	bgtz	a0,800054fc <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    8000552c:	01093503          	ld	a0,16(s2)
    80005530:	ffffd097          	auipc	ra,0xffffd
    80005534:	b3c080e7          	jalr	-1220(ra) # 8000206c <_ZN9Semaphore6signalEv>
}
    80005538:	02813083          	ld	ra,40(sp)
    8000553c:	02013403          	ld	s0,32(sp)
    80005540:	01813483          	ld	s1,24(sp)
    80005544:	01013903          	ld	s2,16(sp)
    80005548:	00813983          	ld	s3,8(sp)
    8000554c:	00013a03          	ld	s4,0(sp)
    80005550:	03010113          	addi	sp,sp,48
    80005554:	00008067          	ret

0000000080005558 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80005558:	f8010113          	addi	sp,sp,-128
    8000555c:	06113c23          	sd	ra,120(sp)
    80005560:	06813823          	sd	s0,112(sp)
    80005564:	06913423          	sd	s1,104(sp)
    80005568:	07213023          	sd	s2,96(sp)
    8000556c:	05313c23          	sd	s3,88(sp)
    80005570:	05413823          	sd	s4,80(sp)
    80005574:	05513423          	sd	s5,72(sp)
    80005578:	05613023          	sd	s6,64(sp)
    8000557c:	03713c23          	sd	s7,56(sp)
    80005580:	03813823          	sd	s8,48(sp)
    80005584:	03913423          	sd	s9,40(sp)
    80005588:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    8000558c:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80005590:	00004517          	auipc	a0,0x4
    80005594:	ba050513          	addi	a0,a0,-1120 # 80009130 <CONSOLE_STATUS+0x120>
    80005598:	00000097          	auipc	ra,0x0
    8000559c:	604080e7          	jalr	1540(ra) # 80005b9c <_Z11printStringPKc>
    getString(input, 30);
    800055a0:	01e00593          	li	a1,30
    800055a4:	f8040493          	addi	s1,s0,-128
    800055a8:	00048513          	mv	a0,s1
    800055ac:	00000097          	auipc	ra,0x0
    800055b0:	678080e7          	jalr	1656(ra) # 80005c24 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800055b4:	00048513          	mv	a0,s1
    800055b8:	00000097          	auipc	ra,0x0
    800055bc:	744080e7          	jalr	1860(ra) # 80005cfc <_Z11stringToIntPKc>
    800055c0:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800055c4:	00004517          	auipc	a0,0x4
    800055c8:	b8c50513          	addi	a0,a0,-1140 # 80009150 <CONSOLE_STATUS+0x140>
    800055cc:	00000097          	auipc	ra,0x0
    800055d0:	5d0080e7          	jalr	1488(ra) # 80005b9c <_Z11printStringPKc>
    getString(input, 30);
    800055d4:	01e00593          	li	a1,30
    800055d8:	00048513          	mv	a0,s1
    800055dc:	00000097          	auipc	ra,0x0
    800055e0:	648080e7          	jalr	1608(ra) # 80005c24 <_Z9getStringPci>
    n = stringToInt(input);
    800055e4:	00048513          	mv	a0,s1
    800055e8:	00000097          	auipc	ra,0x0
    800055ec:	714080e7          	jalr	1812(ra) # 80005cfc <_Z11stringToIntPKc>
    800055f0:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800055f4:	00004517          	auipc	a0,0x4
    800055f8:	b7c50513          	addi	a0,a0,-1156 # 80009170 <CONSOLE_STATUS+0x160>
    800055fc:	00000097          	auipc	ra,0x0
    80005600:	5a0080e7          	jalr	1440(ra) # 80005b9c <_Z11printStringPKc>
    80005604:	00000613          	li	a2,0
    80005608:	00a00593          	li	a1,10
    8000560c:	00090513          	mv	a0,s2
    80005610:	00000097          	auipc	ra,0x0
    80005614:	73c080e7          	jalr	1852(ra) # 80005d4c <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80005618:	00004517          	auipc	a0,0x4
    8000561c:	b7050513          	addi	a0,a0,-1168 # 80009188 <CONSOLE_STATUS+0x178>
    80005620:	00000097          	auipc	ra,0x0
    80005624:	57c080e7          	jalr	1404(ra) # 80005b9c <_Z11printStringPKc>
    80005628:	00000613          	li	a2,0
    8000562c:	00a00593          	li	a1,10
    80005630:	00048513          	mv	a0,s1
    80005634:	00000097          	auipc	ra,0x0
    80005638:	718080e7          	jalr	1816(ra) # 80005d4c <_Z8printIntiii>
    printString(".\n");
    8000563c:	00004517          	auipc	a0,0x4
    80005640:	b6450513          	addi	a0,a0,-1180 # 800091a0 <CONSOLE_STATUS+0x190>
    80005644:	00000097          	auipc	ra,0x0
    80005648:	558080e7          	jalr	1368(ra) # 80005b9c <_Z11printStringPKc>
    if(threadNum > n) {
    8000564c:	0324c463          	blt	s1,s2,80005674 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80005650:	03205c63          	blez	s2,80005688 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80005654:	03800513          	li	a0,56
    80005658:	ffffc097          	auipc	ra,0xffffc
    8000565c:	7e8080e7          	jalr	2024(ra) # 80001e40 <_Znwm>
    80005660:	00050a93          	mv	s5,a0
    80005664:	00048593          	mv	a1,s1
    80005668:	00001097          	auipc	ra,0x1
    8000566c:	804080e7          	jalr	-2044(ra) # 80005e6c <_ZN9BufferCPPC1Ei>
    80005670:	0300006f          	j	800056a0 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005674:	00004517          	auipc	a0,0x4
    80005678:	b3450513          	addi	a0,a0,-1228 # 800091a8 <CONSOLE_STATUS+0x198>
    8000567c:	00000097          	auipc	ra,0x0
    80005680:	520080e7          	jalr	1312(ra) # 80005b9c <_Z11printStringPKc>
        return;
    80005684:	0140006f          	j	80005698 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80005688:	00004517          	auipc	a0,0x4
    8000568c:	b6050513          	addi	a0,a0,-1184 # 800091e8 <CONSOLE_STATUS+0x1d8>
    80005690:	00000097          	auipc	ra,0x0
    80005694:	50c080e7          	jalr	1292(ra) # 80005b9c <_Z11printStringPKc>
        return;
    80005698:	000b8113          	mv	sp,s7
    8000569c:	2380006f          	j	800058d4 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    800056a0:	01000513          	li	a0,16
    800056a4:	ffffc097          	auipc	ra,0xffffc
    800056a8:	79c080e7          	jalr	1948(ra) # 80001e40 <_Znwm>
    800056ac:	00050493          	mv	s1,a0
    800056b0:	00000593          	li	a1,0
    800056b4:	ffffd097          	auipc	ra,0xffffd
    800056b8:	944080e7          	jalr	-1724(ra) # 80001ff8 <_ZN9SemaphoreC1Ej>
    800056bc:	00006797          	auipc	a5,0x6
    800056c0:	5297be23          	sd	s1,1340(a5) # 8000bbf8 <_ZL10waitForAll>
    Thread* threads[threadNum];
    800056c4:	00391793          	slli	a5,s2,0x3
    800056c8:	00f78793          	addi	a5,a5,15
    800056cc:	ff07f793          	andi	a5,a5,-16
    800056d0:	40f10133          	sub	sp,sp,a5
    800056d4:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    800056d8:	0019071b          	addiw	a4,s2,1
    800056dc:	00171793          	slli	a5,a4,0x1
    800056e0:	00e787b3          	add	a5,a5,a4
    800056e4:	00379793          	slli	a5,a5,0x3
    800056e8:	00f78793          	addi	a5,a5,15
    800056ec:	ff07f793          	andi	a5,a5,-16
    800056f0:	40f10133          	sub	sp,sp,a5
    800056f4:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    800056f8:	00191c13          	slli	s8,s2,0x1
    800056fc:	012c07b3          	add	a5,s8,s2
    80005700:	00379793          	slli	a5,a5,0x3
    80005704:	00fa07b3          	add	a5,s4,a5
    80005708:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    8000570c:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80005710:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80005714:	02800513          	li	a0,40
    80005718:	ffffc097          	auipc	ra,0xffffc
    8000571c:	728080e7          	jalr	1832(ra) # 80001e40 <_Znwm>
    80005720:	00050b13          	mv	s6,a0
    80005724:	012c0c33          	add	s8,s8,s2
    80005728:	003c1c13          	slli	s8,s8,0x3
    8000572c:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80005730:	ffffd097          	auipc	ra,0xffffd
    80005734:	8a0080e7          	jalr	-1888(ra) # 80001fd0 <_ZN6ThreadC1Ev>
    80005738:	00006797          	auipc	a5,0x6
    8000573c:	35078793          	addi	a5,a5,848 # 8000ba88 <_ZTV12ConsumerSync+0x10>
    80005740:	00fb3023          	sd	a5,0(s6)
    80005744:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80005748:	000b0513          	mv	a0,s6
    8000574c:	ffffd097          	auipc	ra,0xffffd
    80005750:	800080e7          	jalr	-2048(ra) # 80001f4c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005754:	00000493          	li	s1,0
    80005758:	0380006f          	j	80005790 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    8000575c:	00006797          	auipc	a5,0x6
    80005760:	30478793          	addi	a5,a5,772 # 8000ba60 <_ZTV12ProducerSync+0x10>
    80005764:	00fcb023          	sd	a5,0(s9)
    80005768:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    8000576c:	00349793          	slli	a5,s1,0x3
    80005770:	00f987b3          	add	a5,s3,a5
    80005774:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80005778:	00349793          	slli	a5,s1,0x3
    8000577c:	00f987b3          	add	a5,s3,a5
    80005780:	0007b503          	ld	a0,0(a5)
    80005784:	ffffc097          	auipc	ra,0xffffc
    80005788:	7c8080e7          	jalr	1992(ra) # 80001f4c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    8000578c:	0014849b          	addiw	s1,s1,1
    80005790:	0b24d063          	bge	s1,s2,80005830 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80005794:	00149793          	slli	a5,s1,0x1
    80005798:	009787b3          	add	a5,a5,s1
    8000579c:	00379793          	slli	a5,a5,0x3
    800057a0:	00fa07b3          	add	a5,s4,a5
    800057a4:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800057a8:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    800057ac:	00006717          	auipc	a4,0x6
    800057b0:	44c73703          	ld	a4,1100(a4) # 8000bbf8 <_ZL10waitForAll>
    800057b4:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    800057b8:	02905863          	blez	s1,800057e8 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    800057bc:	02800513          	li	a0,40
    800057c0:	ffffc097          	auipc	ra,0xffffc
    800057c4:	680080e7          	jalr	1664(ra) # 80001e40 <_Znwm>
    800057c8:	00050c93          	mv	s9,a0
    800057cc:	00149c13          	slli	s8,s1,0x1
    800057d0:	009c0c33          	add	s8,s8,s1
    800057d4:	003c1c13          	slli	s8,s8,0x3
    800057d8:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800057dc:	ffffc097          	auipc	ra,0xffffc
    800057e0:	7f4080e7          	jalr	2036(ra) # 80001fd0 <_ZN6ThreadC1Ev>
    800057e4:	f79ff06f          	j	8000575c <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    800057e8:	02800513          	li	a0,40
    800057ec:	ffffc097          	auipc	ra,0xffffc
    800057f0:	654080e7          	jalr	1620(ra) # 80001e40 <_Znwm>
    800057f4:	00050c93          	mv	s9,a0
    800057f8:	00149c13          	slli	s8,s1,0x1
    800057fc:	009c0c33          	add	s8,s8,s1
    80005800:	003c1c13          	slli	s8,s8,0x3
    80005804:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80005808:	ffffc097          	auipc	ra,0xffffc
    8000580c:	7c8080e7          	jalr	1992(ra) # 80001fd0 <_ZN6ThreadC1Ev>
    80005810:	00006797          	auipc	a5,0x6
    80005814:	22878793          	addi	a5,a5,552 # 8000ba38 <_ZTV16ProducerKeyboard+0x10>
    80005818:	00fcb023          	sd	a5,0(s9)
    8000581c:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80005820:	00349793          	slli	a5,s1,0x3
    80005824:	00f987b3          	add	a5,s3,a5
    80005828:	0197b023          	sd	s9,0(a5)
    8000582c:	f4dff06f          	j	80005778 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80005830:	ffffc097          	auipc	ra,0xffffc
    80005834:	74c080e7          	jalr	1868(ra) # 80001f7c <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80005838:	00000493          	li	s1,0
    8000583c:	00994e63          	blt	s2,s1,80005858 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80005840:	00006517          	auipc	a0,0x6
    80005844:	3b853503          	ld	a0,952(a0) # 8000bbf8 <_ZL10waitForAll>
    80005848:	ffffc097          	auipc	ra,0xffffc
    8000584c:	7ec080e7          	jalr	2028(ra) # 80002034 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80005850:	0014849b          	addiw	s1,s1,1
    80005854:	fe9ff06f          	j	8000583c <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80005858:	00000493          	li	s1,0
    8000585c:	0080006f          	j	80005864 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80005860:	0014849b          	addiw	s1,s1,1
    80005864:	0324d263          	bge	s1,s2,80005888 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80005868:	00349793          	slli	a5,s1,0x3
    8000586c:	00f987b3          	add	a5,s3,a5
    80005870:	0007b503          	ld	a0,0(a5)
    80005874:	fe0506e3          	beqz	a0,80005860 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80005878:	00053783          	ld	a5,0(a0)
    8000587c:	0087b783          	ld	a5,8(a5)
    80005880:	000780e7          	jalr	a5
    80005884:	fddff06f          	j	80005860 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80005888:	000b0a63          	beqz	s6,8000589c <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    8000588c:	000b3783          	ld	a5,0(s6)
    80005890:	0087b783          	ld	a5,8(a5)
    80005894:	000b0513          	mv	a0,s6
    80005898:	000780e7          	jalr	a5
    delete waitForAll;
    8000589c:	00006517          	auipc	a0,0x6
    800058a0:	35c53503          	ld	a0,860(a0) # 8000bbf8 <_ZL10waitForAll>
    800058a4:	00050863          	beqz	a0,800058b4 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    800058a8:	00053783          	ld	a5,0(a0)
    800058ac:	0087b783          	ld	a5,8(a5)
    800058b0:	000780e7          	jalr	a5
    delete buffer;
    800058b4:	000a8e63          	beqz	s5,800058d0 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    800058b8:	000a8513          	mv	a0,s5
    800058bc:	00001097          	auipc	ra,0x1
    800058c0:	8a8080e7          	jalr	-1880(ra) # 80006164 <_ZN9BufferCPPD1Ev>
    800058c4:	000a8513          	mv	a0,s5
    800058c8:	ffffc097          	auipc	ra,0xffffc
    800058cc:	5a0080e7          	jalr	1440(ra) # 80001e68 <_ZdlPv>
    800058d0:	000b8113          	mv	sp,s7

}
    800058d4:	f8040113          	addi	sp,s0,-128
    800058d8:	07813083          	ld	ra,120(sp)
    800058dc:	07013403          	ld	s0,112(sp)
    800058e0:	06813483          	ld	s1,104(sp)
    800058e4:	06013903          	ld	s2,96(sp)
    800058e8:	05813983          	ld	s3,88(sp)
    800058ec:	05013a03          	ld	s4,80(sp)
    800058f0:	04813a83          	ld	s5,72(sp)
    800058f4:	04013b03          	ld	s6,64(sp)
    800058f8:	03813b83          	ld	s7,56(sp)
    800058fc:	03013c03          	ld	s8,48(sp)
    80005900:	02813c83          	ld	s9,40(sp)
    80005904:	08010113          	addi	sp,sp,128
    80005908:	00008067          	ret
    8000590c:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80005910:	000a8513          	mv	a0,s5
    80005914:	ffffc097          	auipc	ra,0xffffc
    80005918:	554080e7          	jalr	1364(ra) # 80001e68 <_ZdlPv>
    8000591c:	00048513          	mv	a0,s1
    80005920:	00007097          	auipc	ra,0x7
    80005924:	3b8080e7          	jalr	952(ra) # 8000ccd8 <_Unwind_Resume>
    80005928:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    8000592c:	00048513          	mv	a0,s1
    80005930:	ffffc097          	auipc	ra,0xffffc
    80005934:	538080e7          	jalr	1336(ra) # 80001e68 <_ZdlPv>
    80005938:	00090513          	mv	a0,s2
    8000593c:	00007097          	auipc	ra,0x7
    80005940:	39c080e7          	jalr	924(ra) # 8000ccd8 <_Unwind_Resume>
    80005944:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80005948:	000b0513          	mv	a0,s6
    8000594c:	ffffc097          	auipc	ra,0xffffc
    80005950:	51c080e7          	jalr	1308(ra) # 80001e68 <_ZdlPv>
    80005954:	00048513          	mv	a0,s1
    80005958:	00007097          	auipc	ra,0x7
    8000595c:	380080e7          	jalr	896(ra) # 8000ccd8 <_Unwind_Resume>
    80005960:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005964:	000c8513          	mv	a0,s9
    80005968:	ffffc097          	auipc	ra,0xffffc
    8000596c:	500080e7          	jalr	1280(ra) # 80001e68 <_ZdlPv>
    80005970:	00048513          	mv	a0,s1
    80005974:	00007097          	auipc	ra,0x7
    80005978:	364080e7          	jalr	868(ra) # 8000ccd8 <_Unwind_Resume>
    8000597c:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005980:	000c8513          	mv	a0,s9
    80005984:	ffffc097          	auipc	ra,0xffffc
    80005988:	4e4080e7          	jalr	1252(ra) # 80001e68 <_ZdlPv>
    8000598c:	00048513          	mv	a0,s1
    80005990:	00007097          	auipc	ra,0x7
    80005994:	348080e7          	jalr	840(ra) # 8000ccd8 <_Unwind_Resume>

0000000080005998 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005998:	ff010113          	addi	sp,sp,-16
    8000599c:	00113423          	sd	ra,8(sp)
    800059a0:	00813023          	sd	s0,0(sp)
    800059a4:	01010413          	addi	s0,sp,16
    800059a8:	00006797          	auipc	a5,0x6
    800059ac:	0e078793          	addi	a5,a5,224 # 8000ba88 <_ZTV12ConsumerSync+0x10>
    800059b0:	00f53023          	sd	a5,0(a0)
    800059b4:	ffffc097          	auipc	ra,0xffffc
    800059b8:	3f4080e7          	jalr	1012(ra) # 80001da8 <_ZN6ThreadD1Ev>
    800059bc:	00813083          	ld	ra,8(sp)
    800059c0:	00013403          	ld	s0,0(sp)
    800059c4:	01010113          	addi	sp,sp,16
    800059c8:	00008067          	ret

00000000800059cc <_ZN12ConsumerSyncD0Ev>:
    800059cc:	fe010113          	addi	sp,sp,-32
    800059d0:	00113c23          	sd	ra,24(sp)
    800059d4:	00813823          	sd	s0,16(sp)
    800059d8:	00913423          	sd	s1,8(sp)
    800059dc:	02010413          	addi	s0,sp,32
    800059e0:	00050493          	mv	s1,a0
    800059e4:	00006797          	auipc	a5,0x6
    800059e8:	0a478793          	addi	a5,a5,164 # 8000ba88 <_ZTV12ConsumerSync+0x10>
    800059ec:	00f53023          	sd	a5,0(a0)
    800059f0:	ffffc097          	auipc	ra,0xffffc
    800059f4:	3b8080e7          	jalr	952(ra) # 80001da8 <_ZN6ThreadD1Ev>
    800059f8:	00048513          	mv	a0,s1
    800059fc:	ffffc097          	auipc	ra,0xffffc
    80005a00:	46c080e7          	jalr	1132(ra) # 80001e68 <_ZdlPv>
    80005a04:	01813083          	ld	ra,24(sp)
    80005a08:	01013403          	ld	s0,16(sp)
    80005a0c:	00813483          	ld	s1,8(sp)
    80005a10:	02010113          	addi	sp,sp,32
    80005a14:	00008067          	ret

0000000080005a18 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80005a18:	ff010113          	addi	sp,sp,-16
    80005a1c:	00113423          	sd	ra,8(sp)
    80005a20:	00813023          	sd	s0,0(sp)
    80005a24:	01010413          	addi	s0,sp,16
    80005a28:	00006797          	auipc	a5,0x6
    80005a2c:	03878793          	addi	a5,a5,56 # 8000ba60 <_ZTV12ProducerSync+0x10>
    80005a30:	00f53023          	sd	a5,0(a0)
    80005a34:	ffffc097          	auipc	ra,0xffffc
    80005a38:	374080e7          	jalr	884(ra) # 80001da8 <_ZN6ThreadD1Ev>
    80005a3c:	00813083          	ld	ra,8(sp)
    80005a40:	00013403          	ld	s0,0(sp)
    80005a44:	01010113          	addi	sp,sp,16
    80005a48:	00008067          	ret

0000000080005a4c <_ZN12ProducerSyncD0Ev>:
    80005a4c:	fe010113          	addi	sp,sp,-32
    80005a50:	00113c23          	sd	ra,24(sp)
    80005a54:	00813823          	sd	s0,16(sp)
    80005a58:	00913423          	sd	s1,8(sp)
    80005a5c:	02010413          	addi	s0,sp,32
    80005a60:	00050493          	mv	s1,a0
    80005a64:	00006797          	auipc	a5,0x6
    80005a68:	ffc78793          	addi	a5,a5,-4 # 8000ba60 <_ZTV12ProducerSync+0x10>
    80005a6c:	00f53023          	sd	a5,0(a0)
    80005a70:	ffffc097          	auipc	ra,0xffffc
    80005a74:	338080e7          	jalr	824(ra) # 80001da8 <_ZN6ThreadD1Ev>
    80005a78:	00048513          	mv	a0,s1
    80005a7c:	ffffc097          	auipc	ra,0xffffc
    80005a80:	3ec080e7          	jalr	1004(ra) # 80001e68 <_ZdlPv>
    80005a84:	01813083          	ld	ra,24(sp)
    80005a88:	01013403          	ld	s0,16(sp)
    80005a8c:	00813483          	ld	s1,8(sp)
    80005a90:	02010113          	addi	sp,sp,32
    80005a94:	00008067          	ret

0000000080005a98 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005a98:	ff010113          	addi	sp,sp,-16
    80005a9c:	00113423          	sd	ra,8(sp)
    80005aa0:	00813023          	sd	s0,0(sp)
    80005aa4:	01010413          	addi	s0,sp,16
    80005aa8:	00006797          	auipc	a5,0x6
    80005aac:	f9078793          	addi	a5,a5,-112 # 8000ba38 <_ZTV16ProducerKeyboard+0x10>
    80005ab0:	00f53023          	sd	a5,0(a0)
    80005ab4:	ffffc097          	auipc	ra,0xffffc
    80005ab8:	2f4080e7          	jalr	756(ra) # 80001da8 <_ZN6ThreadD1Ev>
    80005abc:	00813083          	ld	ra,8(sp)
    80005ac0:	00013403          	ld	s0,0(sp)
    80005ac4:	01010113          	addi	sp,sp,16
    80005ac8:	00008067          	ret

0000000080005acc <_ZN16ProducerKeyboardD0Ev>:
    80005acc:	fe010113          	addi	sp,sp,-32
    80005ad0:	00113c23          	sd	ra,24(sp)
    80005ad4:	00813823          	sd	s0,16(sp)
    80005ad8:	00913423          	sd	s1,8(sp)
    80005adc:	02010413          	addi	s0,sp,32
    80005ae0:	00050493          	mv	s1,a0
    80005ae4:	00006797          	auipc	a5,0x6
    80005ae8:	f5478793          	addi	a5,a5,-172 # 8000ba38 <_ZTV16ProducerKeyboard+0x10>
    80005aec:	00f53023          	sd	a5,0(a0)
    80005af0:	ffffc097          	auipc	ra,0xffffc
    80005af4:	2b8080e7          	jalr	696(ra) # 80001da8 <_ZN6ThreadD1Ev>
    80005af8:	00048513          	mv	a0,s1
    80005afc:	ffffc097          	auipc	ra,0xffffc
    80005b00:	36c080e7          	jalr	876(ra) # 80001e68 <_ZdlPv>
    80005b04:	01813083          	ld	ra,24(sp)
    80005b08:	01013403          	ld	s0,16(sp)
    80005b0c:	00813483          	ld	s1,8(sp)
    80005b10:	02010113          	addi	sp,sp,32
    80005b14:	00008067          	ret

0000000080005b18 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80005b18:	ff010113          	addi	sp,sp,-16
    80005b1c:	00113423          	sd	ra,8(sp)
    80005b20:	00813023          	sd	s0,0(sp)
    80005b24:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80005b28:	02053583          	ld	a1,32(a0)
    80005b2c:	fffff097          	auipc	ra,0xfffff
    80005b30:	7e4080e7          	jalr	2020(ra) # 80005310 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005b34:	00813083          	ld	ra,8(sp)
    80005b38:	00013403          	ld	s0,0(sp)
    80005b3c:	01010113          	addi	sp,sp,16
    80005b40:	00008067          	ret

0000000080005b44 <_ZN12ProducerSync3runEv>:
    void run() override {
    80005b44:	ff010113          	addi	sp,sp,-16
    80005b48:	00113423          	sd	ra,8(sp)
    80005b4c:	00813023          	sd	s0,0(sp)
    80005b50:	01010413          	addi	s0,sp,16
        producer(td);
    80005b54:	02053583          	ld	a1,32(a0)
    80005b58:	00000097          	auipc	ra,0x0
    80005b5c:	878080e7          	jalr	-1928(ra) # 800053d0 <_ZN12ProducerSync8producerEPv>
    }
    80005b60:	00813083          	ld	ra,8(sp)
    80005b64:	00013403          	ld	s0,0(sp)
    80005b68:	01010113          	addi	sp,sp,16
    80005b6c:	00008067          	ret

0000000080005b70 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005b70:	ff010113          	addi	sp,sp,-16
    80005b74:	00113423          	sd	ra,8(sp)
    80005b78:	00813023          	sd	s0,0(sp)
    80005b7c:	01010413          	addi	s0,sp,16
        consumer(td);
    80005b80:	02053583          	ld	a1,32(a0)
    80005b84:	00000097          	auipc	ra,0x0
    80005b88:	8e0080e7          	jalr	-1824(ra) # 80005464 <_ZN12ConsumerSync8consumerEPv>
    }
    80005b8c:	00813083          	ld	ra,8(sp)
    80005b90:	00013403          	ld	s0,0(sp)
    80005b94:	01010113          	addi	sp,sp,16
    80005b98:	00008067          	ret

0000000080005b9c <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005b9c:	fe010113          	addi	sp,sp,-32
    80005ba0:	00113c23          	sd	ra,24(sp)
    80005ba4:	00813823          	sd	s0,16(sp)
    80005ba8:	00913423          	sd	s1,8(sp)
    80005bac:	02010413          	addi	s0,sp,32
    80005bb0:	00050493          	mv	s1,a0
    LOCK();
    80005bb4:	00100613          	li	a2,1
    80005bb8:	00000593          	li	a1,0
    80005bbc:	00006517          	auipc	a0,0x6
    80005bc0:	04450513          	addi	a0,a0,68 # 8000bc00 <lockPrint>
    80005bc4:	ffffb097          	auipc	ra,0xffffb
    80005bc8:	658080e7          	jalr	1624(ra) # 8000121c <copy_and_swap>
    80005bcc:	00050863          	beqz	a0,80005bdc <_Z11printStringPKc+0x40>
    80005bd0:	ffffb097          	auipc	ra,0xffffb
    80005bd4:	7fc080e7          	jalr	2044(ra) # 800013cc <_Z15thread_dispatchv>
    80005bd8:	fddff06f          	j	80005bb4 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005bdc:	0004c503          	lbu	a0,0(s1)
    80005be0:	00050a63          	beqz	a0,80005bf4 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005be4:	ffffc097          	auipc	ra,0xffffc
    80005be8:	a88080e7          	jalr	-1400(ra) # 8000166c <_Z4putcc>
        string++;
    80005bec:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005bf0:	fedff06f          	j	80005bdc <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005bf4:	00000613          	li	a2,0
    80005bf8:	00100593          	li	a1,1
    80005bfc:	00006517          	auipc	a0,0x6
    80005c00:	00450513          	addi	a0,a0,4 # 8000bc00 <lockPrint>
    80005c04:	ffffb097          	auipc	ra,0xffffb
    80005c08:	618080e7          	jalr	1560(ra) # 8000121c <copy_and_swap>
    80005c0c:	fe0514e3          	bnez	a0,80005bf4 <_Z11printStringPKc+0x58>
}
    80005c10:	01813083          	ld	ra,24(sp)
    80005c14:	01013403          	ld	s0,16(sp)
    80005c18:	00813483          	ld	s1,8(sp)
    80005c1c:	02010113          	addi	sp,sp,32
    80005c20:	00008067          	ret

0000000080005c24 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005c24:	fd010113          	addi	sp,sp,-48
    80005c28:	02113423          	sd	ra,40(sp)
    80005c2c:	02813023          	sd	s0,32(sp)
    80005c30:	00913c23          	sd	s1,24(sp)
    80005c34:	01213823          	sd	s2,16(sp)
    80005c38:	01313423          	sd	s3,8(sp)
    80005c3c:	01413023          	sd	s4,0(sp)
    80005c40:	03010413          	addi	s0,sp,48
    80005c44:	00050993          	mv	s3,a0
    80005c48:	00058a13          	mv	s4,a1
    LOCK();
    80005c4c:	00100613          	li	a2,1
    80005c50:	00000593          	li	a1,0
    80005c54:	00006517          	auipc	a0,0x6
    80005c58:	fac50513          	addi	a0,a0,-84 # 8000bc00 <lockPrint>
    80005c5c:	ffffb097          	auipc	ra,0xffffb
    80005c60:	5c0080e7          	jalr	1472(ra) # 8000121c <copy_and_swap>
    80005c64:	00050863          	beqz	a0,80005c74 <_Z9getStringPci+0x50>
    80005c68:	ffffb097          	auipc	ra,0xffffb
    80005c6c:	764080e7          	jalr	1892(ra) # 800013cc <_Z15thread_dispatchv>
    80005c70:	fddff06f          	j	80005c4c <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005c74:	00000913          	li	s2,0
    80005c78:	00090493          	mv	s1,s2
    80005c7c:	0019091b          	addiw	s2,s2,1
    80005c80:	03495a63          	bge	s2,s4,80005cb4 <_Z9getStringPci+0x90>
        cc = getc();
    80005c84:	ffffc097          	auipc	ra,0xffffc
    80005c88:	99c080e7          	jalr	-1636(ra) # 80001620 <_Z4getcv>
        if(cc < 1)
    80005c8c:	02050463          	beqz	a0,80005cb4 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005c90:	009984b3          	add	s1,s3,s1
    80005c94:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005c98:	00a00793          	li	a5,10
    80005c9c:	00f50a63          	beq	a0,a5,80005cb0 <_Z9getStringPci+0x8c>
    80005ca0:	00d00793          	li	a5,13
    80005ca4:	fcf51ae3          	bne	a0,a5,80005c78 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80005ca8:	00090493          	mv	s1,s2
    80005cac:	0080006f          	j	80005cb4 <_Z9getStringPci+0x90>
    80005cb0:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005cb4:	009984b3          	add	s1,s3,s1
    80005cb8:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005cbc:	00000613          	li	a2,0
    80005cc0:	00100593          	li	a1,1
    80005cc4:	00006517          	auipc	a0,0x6
    80005cc8:	f3c50513          	addi	a0,a0,-196 # 8000bc00 <lockPrint>
    80005ccc:	ffffb097          	auipc	ra,0xffffb
    80005cd0:	550080e7          	jalr	1360(ra) # 8000121c <copy_and_swap>
    80005cd4:	fe0514e3          	bnez	a0,80005cbc <_Z9getStringPci+0x98>
    return buf;
}
    80005cd8:	00098513          	mv	a0,s3
    80005cdc:	02813083          	ld	ra,40(sp)
    80005ce0:	02013403          	ld	s0,32(sp)
    80005ce4:	01813483          	ld	s1,24(sp)
    80005ce8:	01013903          	ld	s2,16(sp)
    80005cec:	00813983          	ld	s3,8(sp)
    80005cf0:	00013a03          	ld	s4,0(sp)
    80005cf4:	03010113          	addi	sp,sp,48
    80005cf8:	00008067          	ret

0000000080005cfc <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005cfc:	ff010113          	addi	sp,sp,-16
    80005d00:	00813423          	sd	s0,8(sp)
    80005d04:	01010413          	addi	s0,sp,16
    80005d08:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005d0c:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005d10:	0006c603          	lbu	a2,0(a3)
    80005d14:	fd06071b          	addiw	a4,a2,-48
    80005d18:	0ff77713          	andi	a4,a4,255
    80005d1c:	00900793          	li	a5,9
    80005d20:	02e7e063          	bltu	a5,a4,80005d40 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005d24:	0025179b          	slliw	a5,a0,0x2
    80005d28:	00a787bb          	addw	a5,a5,a0
    80005d2c:	0017979b          	slliw	a5,a5,0x1
    80005d30:	00168693          	addi	a3,a3,1
    80005d34:	00c787bb          	addw	a5,a5,a2
    80005d38:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005d3c:	fd5ff06f          	j	80005d10 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005d40:	00813403          	ld	s0,8(sp)
    80005d44:	01010113          	addi	sp,sp,16
    80005d48:	00008067          	ret

0000000080005d4c <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005d4c:	fc010113          	addi	sp,sp,-64
    80005d50:	02113c23          	sd	ra,56(sp)
    80005d54:	02813823          	sd	s0,48(sp)
    80005d58:	02913423          	sd	s1,40(sp)
    80005d5c:	03213023          	sd	s2,32(sp)
    80005d60:	01313c23          	sd	s3,24(sp)
    80005d64:	04010413          	addi	s0,sp,64
    80005d68:	00050493          	mv	s1,a0
    80005d6c:	00058913          	mv	s2,a1
    80005d70:	00060993          	mv	s3,a2
    LOCK();
    80005d74:	00100613          	li	a2,1
    80005d78:	00000593          	li	a1,0
    80005d7c:	00006517          	auipc	a0,0x6
    80005d80:	e8450513          	addi	a0,a0,-380 # 8000bc00 <lockPrint>
    80005d84:	ffffb097          	auipc	ra,0xffffb
    80005d88:	498080e7          	jalr	1176(ra) # 8000121c <copy_and_swap>
    80005d8c:	00050863          	beqz	a0,80005d9c <_Z8printIntiii+0x50>
    80005d90:	ffffb097          	auipc	ra,0xffffb
    80005d94:	63c080e7          	jalr	1596(ra) # 800013cc <_Z15thread_dispatchv>
    80005d98:	fddff06f          	j	80005d74 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005d9c:	00098463          	beqz	s3,80005da4 <_Z8printIntiii+0x58>
    80005da0:	0804c463          	bltz	s1,80005e28 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005da4:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005da8:	00000593          	li	a1,0
    }

    i = 0;
    80005dac:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005db0:	0009079b          	sext.w	a5,s2
    80005db4:	0325773b          	remuw	a4,a0,s2
    80005db8:	00048613          	mv	a2,s1
    80005dbc:	0014849b          	addiw	s1,s1,1
    80005dc0:	02071693          	slli	a3,a4,0x20
    80005dc4:	0206d693          	srli	a3,a3,0x20
    80005dc8:	00006717          	auipc	a4,0x6
    80005dcc:	cd870713          	addi	a4,a4,-808 # 8000baa0 <digits>
    80005dd0:	00d70733          	add	a4,a4,a3
    80005dd4:	00074683          	lbu	a3,0(a4)
    80005dd8:	fd040713          	addi	a4,s0,-48
    80005ddc:	00c70733          	add	a4,a4,a2
    80005de0:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005de4:	0005071b          	sext.w	a4,a0
    80005de8:	0325553b          	divuw	a0,a0,s2
    80005dec:	fcf772e3          	bgeu	a4,a5,80005db0 <_Z8printIntiii+0x64>
    if(neg)
    80005df0:	00058c63          	beqz	a1,80005e08 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005df4:	fd040793          	addi	a5,s0,-48
    80005df8:	009784b3          	add	s1,a5,s1
    80005dfc:	02d00793          	li	a5,45
    80005e00:	fef48823          	sb	a5,-16(s1)
    80005e04:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005e08:	fff4849b          	addiw	s1,s1,-1
    80005e0c:	0204c463          	bltz	s1,80005e34 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80005e10:	fd040793          	addi	a5,s0,-48
    80005e14:	009787b3          	add	a5,a5,s1
    80005e18:	ff07c503          	lbu	a0,-16(a5)
    80005e1c:	ffffc097          	auipc	ra,0xffffc
    80005e20:	850080e7          	jalr	-1968(ra) # 8000166c <_Z4putcc>
    80005e24:	fe5ff06f          	j	80005e08 <_Z8printIntiii+0xbc>
        x = -xx;
    80005e28:	4090053b          	negw	a0,s1
        neg = 1;
    80005e2c:	00100593          	li	a1,1
        x = -xx;
    80005e30:	f7dff06f          	j	80005dac <_Z8printIntiii+0x60>

    UNLOCK();
    80005e34:	00000613          	li	a2,0
    80005e38:	00100593          	li	a1,1
    80005e3c:	00006517          	auipc	a0,0x6
    80005e40:	dc450513          	addi	a0,a0,-572 # 8000bc00 <lockPrint>
    80005e44:	ffffb097          	auipc	ra,0xffffb
    80005e48:	3d8080e7          	jalr	984(ra) # 8000121c <copy_and_swap>
    80005e4c:	fe0514e3          	bnez	a0,80005e34 <_Z8printIntiii+0xe8>
    80005e50:	03813083          	ld	ra,56(sp)
    80005e54:	03013403          	ld	s0,48(sp)
    80005e58:	02813483          	ld	s1,40(sp)
    80005e5c:	02013903          	ld	s2,32(sp)
    80005e60:	01813983          	ld	s3,24(sp)
    80005e64:	04010113          	addi	sp,sp,64
    80005e68:	00008067          	ret

0000000080005e6c <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005e6c:	fd010113          	addi	sp,sp,-48
    80005e70:	02113423          	sd	ra,40(sp)
    80005e74:	02813023          	sd	s0,32(sp)
    80005e78:	00913c23          	sd	s1,24(sp)
    80005e7c:	01213823          	sd	s2,16(sp)
    80005e80:	01313423          	sd	s3,8(sp)
    80005e84:	03010413          	addi	s0,sp,48
    80005e88:	00050493          	mv	s1,a0
    80005e8c:	00058913          	mv	s2,a1
    80005e90:	0015879b          	addiw	a5,a1,1
    80005e94:	0007851b          	sext.w	a0,a5
    80005e98:	00f4a023          	sw	a5,0(s1)
    80005e9c:	0004a823          	sw	zero,16(s1)
    80005ea0:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005ea4:	00251513          	slli	a0,a0,0x2
    80005ea8:	ffffb097          	auipc	ra,0xffffb
    80005eac:	3b0080e7          	jalr	944(ra) # 80001258 <_Z9mem_allocm>
    80005eb0:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005eb4:	01000513          	li	a0,16
    80005eb8:	ffffc097          	auipc	ra,0xffffc
    80005ebc:	f88080e7          	jalr	-120(ra) # 80001e40 <_Znwm>
    80005ec0:	00050993          	mv	s3,a0
    80005ec4:	00000593          	li	a1,0
    80005ec8:	ffffc097          	auipc	ra,0xffffc
    80005ecc:	130080e7          	jalr	304(ra) # 80001ff8 <_ZN9SemaphoreC1Ej>
    80005ed0:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005ed4:	01000513          	li	a0,16
    80005ed8:	ffffc097          	auipc	ra,0xffffc
    80005edc:	f68080e7          	jalr	-152(ra) # 80001e40 <_Znwm>
    80005ee0:	00050993          	mv	s3,a0
    80005ee4:	00090593          	mv	a1,s2
    80005ee8:	ffffc097          	auipc	ra,0xffffc
    80005eec:	110080e7          	jalr	272(ra) # 80001ff8 <_ZN9SemaphoreC1Ej>
    80005ef0:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005ef4:	01000513          	li	a0,16
    80005ef8:	ffffc097          	auipc	ra,0xffffc
    80005efc:	f48080e7          	jalr	-184(ra) # 80001e40 <_Znwm>
    80005f00:	00050913          	mv	s2,a0
    80005f04:	00100593          	li	a1,1
    80005f08:	ffffc097          	auipc	ra,0xffffc
    80005f0c:	0f0080e7          	jalr	240(ra) # 80001ff8 <_ZN9SemaphoreC1Ej>
    80005f10:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005f14:	01000513          	li	a0,16
    80005f18:	ffffc097          	auipc	ra,0xffffc
    80005f1c:	f28080e7          	jalr	-216(ra) # 80001e40 <_Znwm>
    80005f20:	00050913          	mv	s2,a0
    80005f24:	00100593          	li	a1,1
    80005f28:	ffffc097          	auipc	ra,0xffffc
    80005f2c:	0d0080e7          	jalr	208(ra) # 80001ff8 <_ZN9SemaphoreC1Ej>
    80005f30:	0324b823          	sd	s2,48(s1)
}
    80005f34:	02813083          	ld	ra,40(sp)
    80005f38:	02013403          	ld	s0,32(sp)
    80005f3c:	01813483          	ld	s1,24(sp)
    80005f40:	01013903          	ld	s2,16(sp)
    80005f44:	00813983          	ld	s3,8(sp)
    80005f48:	03010113          	addi	sp,sp,48
    80005f4c:	00008067          	ret
    80005f50:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005f54:	00098513          	mv	a0,s3
    80005f58:	ffffc097          	auipc	ra,0xffffc
    80005f5c:	f10080e7          	jalr	-240(ra) # 80001e68 <_ZdlPv>
    80005f60:	00048513          	mv	a0,s1
    80005f64:	00007097          	auipc	ra,0x7
    80005f68:	d74080e7          	jalr	-652(ra) # 8000ccd8 <_Unwind_Resume>
    80005f6c:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005f70:	00098513          	mv	a0,s3
    80005f74:	ffffc097          	auipc	ra,0xffffc
    80005f78:	ef4080e7          	jalr	-268(ra) # 80001e68 <_ZdlPv>
    80005f7c:	00048513          	mv	a0,s1
    80005f80:	00007097          	auipc	ra,0x7
    80005f84:	d58080e7          	jalr	-680(ra) # 8000ccd8 <_Unwind_Resume>
    80005f88:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005f8c:	00090513          	mv	a0,s2
    80005f90:	ffffc097          	auipc	ra,0xffffc
    80005f94:	ed8080e7          	jalr	-296(ra) # 80001e68 <_ZdlPv>
    80005f98:	00048513          	mv	a0,s1
    80005f9c:	00007097          	auipc	ra,0x7
    80005fa0:	d3c080e7          	jalr	-708(ra) # 8000ccd8 <_Unwind_Resume>
    80005fa4:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005fa8:	00090513          	mv	a0,s2
    80005fac:	ffffc097          	auipc	ra,0xffffc
    80005fb0:	ebc080e7          	jalr	-324(ra) # 80001e68 <_ZdlPv>
    80005fb4:	00048513          	mv	a0,s1
    80005fb8:	00007097          	auipc	ra,0x7
    80005fbc:	d20080e7          	jalr	-736(ra) # 8000ccd8 <_Unwind_Resume>

0000000080005fc0 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005fc0:	fe010113          	addi	sp,sp,-32
    80005fc4:	00113c23          	sd	ra,24(sp)
    80005fc8:	00813823          	sd	s0,16(sp)
    80005fcc:	00913423          	sd	s1,8(sp)
    80005fd0:	01213023          	sd	s2,0(sp)
    80005fd4:	02010413          	addi	s0,sp,32
    80005fd8:	00050493          	mv	s1,a0
    80005fdc:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005fe0:	01853503          	ld	a0,24(a0)
    80005fe4:	ffffc097          	auipc	ra,0xffffc
    80005fe8:	050080e7          	jalr	80(ra) # 80002034 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005fec:	0304b503          	ld	a0,48(s1)
    80005ff0:	ffffc097          	auipc	ra,0xffffc
    80005ff4:	044080e7          	jalr	68(ra) # 80002034 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005ff8:	0084b783          	ld	a5,8(s1)
    80005ffc:	0144a703          	lw	a4,20(s1)
    80006000:	00271713          	slli	a4,a4,0x2
    80006004:	00e787b3          	add	a5,a5,a4
    80006008:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000600c:	0144a783          	lw	a5,20(s1)
    80006010:	0017879b          	addiw	a5,a5,1
    80006014:	0004a703          	lw	a4,0(s1)
    80006018:	02e7e7bb          	remw	a5,a5,a4
    8000601c:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80006020:	0304b503          	ld	a0,48(s1)
    80006024:	ffffc097          	auipc	ra,0xffffc
    80006028:	048080e7          	jalr	72(ra) # 8000206c <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    8000602c:	0204b503          	ld	a0,32(s1)
    80006030:	ffffc097          	auipc	ra,0xffffc
    80006034:	03c080e7          	jalr	60(ra) # 8000206c <_ZN9Semaphore6signalEv>

}
    80006038:	01813083          	ld	ra,24(sp)
    8000603c:	01013403          	ld	s0,16(sp)
    80006040:	00813483          	ld	s1,8(sp)
    80006044:	00013903          	ld	s2,0(sp)
    80006048:	02010113          	addi	sp,sp,32
    8000604c:	00008067          	ret

0000000080006050 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80006050:	fe010113          	addi	sp,sp,-32
    80006054:	00113c23          	sd	ra,24(sp)
    80006058:	00813823          	sd	s0,16(sp)
    8000605c:	00913423          	sd	s1,8(sp)
    80006060:	01213023          	sd	s2,0(sp)
    80006064:	02010413          	addi	s0,sp,32
    80006068:	00050493          	mv	s1,a0
    itemAvailable->wait();
    8000606c:	02053503          	ld	a0,32(a0)
    80006070:	ffffc097          	auipc	ra,0xffffc
    80006074:	fc4080e7          	jalr	-60(ra) # 80002034 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80006078:	0284b503          	ld	a0,40(s1)
    8000607c:	ffffc097          	auipc	ra,0xffffc
    80006080:	fb8080e7          	jalr	-72(ra) # 80002034 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80006084:	0084b703          	ld	a4,8(s1)
    80006088:	0104a783          	lw	a5,16(s1)
    8000608c:	00279693          	slli	a3,a5,0x2
    80006090:	00d70733          	add	a4,a4,a3
    80006094:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006098:	0017879b          	addiw	a5,a5,1
    8000609c:	0004a703          	lw	a4,0(s1)
    800060a0:	02e7e7bb          	remw	a5,a5,a4
    800060a4:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800060a8:	0284b503          	ld	a0,40(s1)
    800060ac:	ffffc097          	auipc	ra,0xffffc
    800060b0:	fc0080e7          	jalr	-64(ra) # 8000206c <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800060b4:	0184b503          	ld	a0,24(s1)
    800060b8:	ffffc097          	auipc	ra,0xffffc
    800060bc:	fb4080e7          	jalr	-76(ra) # 8000206c <_ZN9Semaphore6signalEv>

    return ret;
}
    800060c0:	00090513          	mv	a0,s2
    800060c4:	01813083          	ld	ra,24(sp)
    800060c8:	01013403          	ld	s0,16(sp)
    800060cc:	00813483          	ld	s1,8(sp)
    800060d0:	00013903          	ld	s2,0(sp)
    800060d4:	02010113          	addi	sp,sp,32
    800060d8:	00008067          	ret

00000000800060dc <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800060dc:	fe010113          	addi	sp,sp,-32
    800060e0:	00113c23          	sd	ra,24(sp)
    800060e4:	00813823          	sd	s0,16(sp)
    800060e8:	00913423          	sd	s1,8(sp)
    800060ec:	01213023          	sd	s2,0(sp)
    800060f0:	02010413          	addi	s0,sp,32
    800060f4:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800060f8:	02853503          	ld	a0,40(a0)
    800060fc:	ffffc097          	auipc	ra,0xffffc
    80006100:	f38080e7          	jalr	-200(ra) # 80002034 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80006104:	0304b503          	ld	a0,48(s1)
    80006108:	ffffc097          	auipc	ra,0xffffc
    8000610c:	f2c080e7          	jalr	-212(ra) # 80002034 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80006110:	0144a783          	lw	a5,20(s1)
    80006114:	0104a903          	lw	s2,16(s1)
    80006118:	0327ce63          	blt	a5,s2,80006154 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    8000611c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80006120:	0304b503          	ld	a0,48(s1)
    80006124:	ffffc097          	auipc	ra,0xffffc
    80006128:	f48080e7          	jalr	-184(ra) # 8000206c <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    8000612c:	0284b503          	ld	a0,40(s1)
    80006130:	ffffc097          	auipc	ra,0xffffc
    80006134:	f3c080e7          	jalr	-196(ra) # 8000206c <_ZN9Semaphore6signalEv>

    return ret;
}
    80006138:	00090513          	mv	a0,s2
    8000613c:	01813083          	ld	ra,24(sp)
    80006140:	01013403          	ld	s0,16(sp)
    80006144:	00813483          	ld	s1,8(sp)
    80006148:	00013903          	ld	s2,0(sp)
    8000614c:	02010113          	addi	sp,sp,32
    80006150:	00008067          	ret
        ret = cap - head + tail;
    80006154:	0004a703          	lw	a4,0(s1)
    80006158:	4127093b          	subw	s2,a4,s2
    8000615c:	00f9093b          	addw	s2,s2,a5
    80006160:	fc1ff06f          	j	80006120 <_ZN9BufferCPP6getCntEv+0x44>

0000000080006164 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80006164:	fe010113          	addi	sp,sp,-32
    80006168:	00113c23          	sd	ra,24(sp)
    8000616c:	00813823          	sd	s0,16(sp)
    80006170:	00913423          	sd	s1,8(sp)
    80006174:	02010413          	addi	s0,sp,32
    80006178:	00050493          	mv	s1,a0
    Console::putc('\n');
    8000617c:	00a00513          	li	a0,10
    80006180:	ffffc097          	auipc	ra,0xffffc
    80006184:	fdc080e7          	jalr	-36(ra) # 8000215c <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80006188:	00003517          	auipc	a0,0x3
    8000618c:	18850513          	addi	a0,a0,392 # 80009310 <CONSOLE_STATUS+0x300>
    80006190:	00000097          	auipc	ra,0x0
    80006194:	a0c080e7          	jalr	-1524(ra) # 80005b9c <_Z11printStringPKc>
    while (getCnt()) {
    80006198:	00048513          	mv	a0,s1
    8000619c:	00000097          	auipc	ra,0x0
    800061a0:	f40080e7          	jalr	-192(ra) # 800060dc <_ZN9BufferCPP6getCntEv>
    800061a4:	02050c63          	beqz	a0,800061dc <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    800061a8:	0084b783          	ld	a5,8(s1)
    800061ac:	0104a703          	lw	a4,16(s1)
    800061b0:	00271713          	slli	a4,a4,0x2
    800061b4:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    800061b8:	0007c503          	lbu	a0,0(a5)
    800061bc:	ffffc097          	auipc	ra,0xffffc
    800061c0:	fa0080e7          	jalr	-96(ra) # 8000215c <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    800061c4:	0104a783          	lw	a5,16(s1)
    800061c8:	0017879b          	addiw	a5,a5,1
    800061cc:	0004a703          	lw	a4,0(s1)
    800061d0:	02e7e7bb          	remw	a5,a5,a4
    800061d4:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800061d8:	fc1ff06f          	j	80006198 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800061dc:	02100513          	li	a0,33
    800061e0:	ffffc097          	auipc	ra,0xffffc
    800061e4:	f7c080e7          	jalr	-132(ra) # 8000215c <_ZN7Console4putcEc>
    Console::putc('\n');
    800061e8:	00a00513          	li	a0,10
    800061ec:	ffffc097          	auipc	ra,0xffffc
    800061f0:	f70080e7          	jalr	-144(ra) # 8000215c <_ZN7Console4putcEc>
    mem_free(buffer);
    800061f4:	0084b503          	ld	a0,8(s1)
    800061f8:	ffffb097          	auipc	ra,0xffffb
    800061fc:	0b4080e7          	jalr	180(ra) # 800012ac <_Z8mem_freePv>
    delete itemAvailable;
    80006200:	0204b503          	ld	a0,32(s1)
    80006204:	00050863          	beqz	a0,80006214 <_ZN9BufferCPPD1Ev+0xb0>
    80006208:	00053783          	ld	a5,0(a0)
    8000620c:	0087b783          	ld	a5,8(a5)
    80006210:	000780e7          	jalr	a5
    delete spaceAvailable;
    80006214:	0184b503          	ld	a0,24(s1)
    80006218:	00050863          	beqz	a0,80006228 <_ZN9BufferCPPD1Ev+0xc4>
    8000621c:	00053783          	ld	a5,0(a0)
    80006220:	0087b783          	ld	a5,8(a5)
    80006224:	000780e7          	jalr	a5
    delete mutexTail;
    80006228:	0304b503          	ld	a0,48(s1)
    8000622c:	00050863          	beqz	a0,8000623c <_ZN9BufferCPPD1Ev+0xd8>
    80006230:	00053783          	ld	a5,0(a0)
    80006234:	0087b783          	ld	a5,8(a5)
    80006238:	000780e7          	jalr	a5
    delete mutexHead;
    8000623c:	0284b503          	ld	a0,40(s1)
    80006240:	00050863          	beqz	a0,80006250 <_ZN9BufferCPPD1Ev+0xec>
    80006244:	00053783          	ld	a5,0(a0)
    80006248:	0087b783          	ld	a5,8(a5)
    8000624c:	000780e7          	jalr	a5
}
    80006250:	01813083          	ld	ra,24(sp)
    80006254:	01013403          	ld	s0,16(sp)
    80006258:	00813483          	ld	s1,8(sp)
    8000625c:	02010113          	addi	sp,sp,32
    80006260:	00008067          	ret

0000000080006264 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80006264:	fe010113          	addi	sp,sp,-32
    80006268:	00113c23          	sd	ra,24(sp)
    8000626c:	00813823          	sd	s0,16(sp)
    80006270:	00913423          	sd	s1,8(sp)
    80006274:	01213023          	sd	s2,0(sp)
    80006278:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    8000627c:	00003517          	auipc	a0,0x3
    80006280:	0ac50513          	addi	a0,a0,172 # 80009328 <CONSOLE_STATUS+0x318>
    80006284:	00000097          	auipc	ra,0x0
    80006288:	918080e7          	jalr	-1768(ra) # 80005b9c <_Z11printStringPKc>
    int test = getc() - '0';
    8000628c:	ffffb097          	auipc	ra,0xffffb
    80006290:	394080e7          	jalr	916(ra) # 80001620 <_Z4getcv>
    80006294:	0005091b          	sext.w	s2,a0
    80006298:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    8000629c:	ffffb097          	auipc	ra,0xffffb
    800062a0:	384080e7          	jalr	900(ra) # 80001620 <_Z4getcv>


    if ((test >= 1 && test <= 2) || test == 7) {
    800062a4:	fcf9071b          	addiw	a4,s2,-49
    800062a8:	00100793          	li	a5,1
    800062ac:	04e7f063          	bgeu	a5,a4,800062ec <_Z8userMainv+0x88>
    800062b0:	00700793          	li	a5,7
    800062b4:	02f48c63          	beq	s1,a5,800062ec <_Z8userMainv+0x88>
            printString("Nije navedeno da je zadatak 2 implementiran\n");
            return;
        }
    }

    if (test >= 3 && test <= 4) {
    800062b8:	fcd9079b          	addiw	a5,s2,-51
    800062bc:	00100693          	li	a3,1
    800062c0:	04f6fa63          	bgeu	a3,a5,80006314 <_Z8userMainv+0xb0>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    800062c4:	fcb9091b          	addiw	s2,s2,-53
    800062c8:	00100793          	li	a5,1
    800062cc:	0527fe63          	bgeu	a5,s2,80006328 <_Z8userMainv+0xc4>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    800062d0:	00600793          	li	a5,6
    800062d4:	02e7f463          	bgeu	a5,a4,800062fc <_Z8userMainv+0x98>
            printString("Test se nije uspesno zavrsio\n");
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    800062d8:	00003517          	auipc	a0,0x3
    800062dc:	10050513          	addi	a0,a0,256 # 800093d8 <CONSOLE_STATUS+0x3c8>
    800062e0:	00000097          	auipc	ra,0x0
    800062e4:	8bc080e7          	jalr	-1860(ra) # 80005b9c <_Z11printStringPKc>
    800062e8:	0140006f          	j	800062fc <_Z8userMainv+0x98>
            printString("Nije navedeno da je zadatak 2 implementiran\n");
    800062ec:	00003517          	auipc	a0,0x3
    800062f0:	05c50513          	addi	a0,a0,92 # 80009348 <CONSOLE_STATUS+0x338>
    800062f4:	00000097          	auipc	ra,0x0
    800062f8:	8a8080e7          	jalr	-1880(ra) # 80005b9c <_Z11printStringPKc>
    }
    800062fc:	01813083          	ld	ra,24(sp)
    80006300:	01013403          	ld	s0,16(sp)
    80006304:	00813483          	ld	s1,8(sp)
    80006308:	00013903          	ld	s2,0(sp)
    8000630c:	02010113          	addi	sp,sp,32
    80006310:	00008067          	ret
            printString("Nije navedeno da je zadatak 3 implementiran\n");
    80006314:	00003517          	auipc	a0,0x3
    80006318:	06450513          	addi	a0,a0,100 # 80009378 <CONSOLE_STATUS+0x368>
    8000631c:	00000097          	auipc	ra,0x0
    80006320:	880080e7          	jalr	-1920(ra) # 80005b9c <_Z11printStringPKc>
            return;
    80006324:	fd9ff06f          	j	800062fc <_Z8userMainv+0x98>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    80006328:	00003517          	auipc	a0,0x3
    8000632c:	08050513          	addi	a0,a0,128 # 800093a8 <CONSOLE_STATUS+0x398>
    80006330:	00000097          	auipc	ra,0x0
    80006334:	86c080e7          	jalr	-1940(ra) # 80005b9c <_Z11printStringPKc>
            return;
    80006338:	fc5ff06f          	j	800062fc <_Z8userMainv+0x98>

000000008000633c <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    8000633c:	fe010113          	addi	sp,sp,-32
    80006340:	00113c23          	sd	ra,24(sp)
    80006344:	00813823          	sd	s0,16(sp)
    80006348:	00913423          	sd	s1,8(sp)
    8000634c:	01213023          	sd	s2,0(sp)
    80006350:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80006354:	00053903          	ld	s2,0(a0)
    int i = 6;
    80006358:	00600493          	li	s1,6
    while (--i > 0) {
    8000635c:	fff4849b          	addiw	s1,s1,-1
    80006360:	04905463          	blez	s1,800063a8 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80006364:	00003517          	auipc	a0,0x3
    80006368:	09c50513          	addi	a0,a0,156 # 80009400 <CONSOLE_STATUS+0x3f0>
    8000636c:	00000097          	auipc	ra,0x0
    80006370:	830080e7          	jalr	-2000(ra) # 80005b9c <_Z11printStringPKc>
        printInt(sleep_time);
    80006374:	00000613          	li	a2,0
    80006378:	00a00593          	li	a1,10
    8000637c:	0009051b          	sext.w	a0,s2
    80006380:	00000097          	auipc	ra,0x0
    80006384:	9cc080e7          	jalr	-1588(ra) # 80005d4c <_Z8printIntiii>
        printString(" !\n");
    80006388:	00003517          	auipc	a0,0x3
    8000638c:	08050513          	addi	a0,a0,128 # 80009408 <CONSOLE_STATUS+0x3f8>
    80006390:	00000097          	auipc	ra,0x0
    80006394:	80c080e7          	jalr	-2036(ra) # 80005b9c <_Z11printStringPKc>
        time_sleep(sleep_time);
    80006398:	00090513          	mv	a0,s2
    8000639c:	ffffb097          	auipc	ra,0xffffb
    800063a0:	238080e7          	jalr	568(ra) # 800015d4 <_Z10time_sleepm>
    while (--i > 0) {
    800063a4:	fb9ff06f          	j	8000635c <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    800063a8:	00a00793          	li	a5,10
    800063ac:	02f95933          	divu	s2,s2,a5
    800063b0:	fff90913          	addi	s2,s2,-1
    800063b4:	00006797          	auipc	a5,0x6
    800063b8:	85478793          	addi	a5,a5,-1964 # 8000bc08 <_ZL8finished>
    800063bc:	01278933          	add	s2,a5,s2
    800063c0:	00100793          	li	a5,1
    800063c4:	00f90023          	sb	a5,0(s2)
}
    800063c8:	01813083          	ld	ra,24(sp)
    800063cc:	01013403          	ld	s0,16(sp)
    800063d0:	00813483          	ld	s1,8(sp)
    800063d4:	00013903          	ld	s2,0(sp)
    800063d8:	02010113          	addi	sp,sp,32
    800063dc:	00008067          	ret

00000000800063e0 <_Z12testSleepingv>:

void testSleeping() {
    800063e0:	fc010113          	addi	sp,sp,-64
    800063e4:	02113c23          	sd	ra,56(sp)
    800063e8:	02813823          	sd	s0,48(sp)
    800063ec:	02913423          	sd	s1,40(sp)
    800063f0:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    800063f4:	00a00793          	li	a5,10
    800063f8:	fcf43823          	sd	a5,-48(s0)
    800063fc:	01400793          	li	a5,20
    80006400:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80006404:	00000493          	li	s1,0
    80006408:	02c0006f          	j	80006434 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    8000640c:	00349793          	slli	a5,s1,0x3
    80006410:	fd040613          	addi	a2,s0,-48
    80006414:	00f60633          	add	a2,a2,a5
    80006418:	00000597          	auipc	a1,0x0
    8000641c:	f2458593          	addi	a1,a1,-220 # 8000633c <_ZL9sleepyRunPv>
    80006420:	fc040513          	addi	a0,s0,-64
    80006424:	00f50533          	add	a0,a0,a5
    80006428:	ffffb097          	auipc	ra,0xffffb
    8000642c:	ed0080e7          	jalr	-304(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80006430:	0014849b          	addiw	s1,s1,1
    80006434:	00100793          	li	a5,1
    80006438:	fc97dae3          	bge	a5,s1,8000640c <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    8000643c:	00005797          	auipc	a5,0x5
    80006440:	7cc7c783          	lbu	a5,1996(a5) # 8000bc08 <_ZL8finished>
    80006444:	fe078ce3          	beqz	a5,8000643c <_Z12testSleepingv+0x5c>
    80006448:	00005797          	auipc	a5,0x5
    8000644c:	7c17c783          	lbu	a5,1985(a5) # 8000bc09 <_ZL8finished+0x1>
    80006450:	fe0786e3          	beqz	a5,8000643c <_Z12testSleepingv+0x5c>
}
    80006454:	03813083          	ld	ra,56(sp)
    80006458:	03013403          	ld	s0,48(sp)
    8000645c:	02813483          	ld	s1,40(sp)
    80006460:	04010113          	addi	sp,sp,64
    80006464:	00008067          	ret

0000000080006468 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80006468:	fe010113          	addi	sp,sp,-32
    8000646c:	00113c23          	sd	ra,24(sp)
    80006470:	00813823          	sd	s0,16(sp)
    80006474:	00913423          	sd	s1,8(sp)
    80006478:	01213023          	sd	s2,0(sp)
    8000647c:	02010413          	addi	s0,sp,32
    80006480:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80006484:	00100793          	li	a5,1
    80006488:	02a7f863          	bgeu	a5,a0,800064b8 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000648c:	00a00793          	li	a5,10
    80006490:	02f577b3          	remu	a5,a0,a5
    80006494:	02078e63          	beqz	a5,800064d0 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80006498:	fff48513          	addi	a0,s1,-1
    8000649c:	00000097          	auipc	ra,0x0
    800064a0:	fcc080e7          	jalr	-52(ra) # 80006468 <_ZL9fibonaccim>
    800064a4:	00050913          	mv	s2,a0
    800064a8:	ffe48513          	addi	a0,s1,-2
    800064ac:	00000097          	auipc	ra,0x0
    800064b0:	fbc080e7          	jalr	-68(ra) # 80006468 <_ZL9fibonaccim>
    800064b4:	00a90533          	add	a0,s2,a0
}
    800064b8:	01813083          	ld	ra,24(sp)
    800064bc:	01013403          	ld	s0,16(sp)
    800064c0:	00813483          	ld	s1,8(sp)
    800064c4:	00013903          	ld	s2,0(sp)
    800064c8:	02010113          	addi	sp,sp,32
    800064cc:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800064d0:	ffffb097          	auipc	ra,0xffffb
    800064d4:	efc080e7          	jalr	-260(ra) # 800013cc <_Z15thread_dispatchv>
    800064d8:	fc1ff06f          	j	80006498 <_ZL9fibonaccim+0x30>

00000000800064dc <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800064dc:	fe010113          	addi	sp,sp,-32
    800064e0:	00113c23          	sd	ra,24(sp)
    800064e4:	00813823          	sd	s0,16(sp)
    800064e8:	00913423          	sd	s1,8(sp)
    800064ec:	01213023          	sd	s2,0(sp)
    800064f0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800064f4:	00a00493          	li	s1,10
    800064f8:	0400006f          	j	80006538 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800064fc:	00003517          	auipc	a0,0x3
    80006500:	d7c50513          	addi	a0,a0,-644 # 80009278 <CONSOLE_STATUS+0x268>
    80006504:	fffff097          	auipc	ra,0xfffff
    80006508:	698080e7          	jalr	1688(ra) # 80005b9c <_Z11printStringPKc>
    8000650c:	00000613          	li	a2,0
    80006510:	00a00593          	li	a1,10
    80006514:	00048513          	mv	a0,s1
    80006518:	00000097          	auipc	ra,0x0
    8000651c:	834080e7          	jalr	-1996(ra) # 80005d4c <_Z8printIntiii>
    80006520:	00003517          	auipc	a0,0x3
    80006524:	c4850513          	addi	a0,a0,-952 # 80009168 <CONSOLE_STATUS+0x158>
    80006528:	fffff097          	auipc	ra,0xfffff
    8000652c:	674080e7          	jalr	1652(ra) # 80005b9c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80006530:	0014849b          	addiw	s1,s1,1
    80006534:	0ff4f493          	andi	s1,s1,255
    80006538:	00c00793          	li	a5,12
    8000653c:	fc97f0e3          	bgeu	a5,s1,800064fc <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80006540:	00003517          	auipc	a0,0x3
    80006544:	d4050513          	addi	a0,a0,-704 # 80009280 <CONSOLE_STATUS+0x270>
    80006548:	fffff097          	auipc	ra,0xfffff
    8000654c:	654080e7          	jalr	1620(ra) # 80005b9c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80006550:	00500313          	li	t1,5
    thread_dispatch();
    80006554:	ffffb097          	auipc	ra,0xffffb
    80006558:	e78080e7          	jalr	-392(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    8000655c:	01000513          	li	a0,16
    80006560:	00000097          	auipc	ra,0x0
    80006564:	f08080e7          	jalr	-248(ra) # 80006468 <_ZL9fibonaccim>
    80006568:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    8000656c:	00003517          	auipc	a0,0x3
    80006570:	d2450513          	addi	a0,a0,-732 # 80009290 <CONSOLE_STATUS+0x280>
    80006574:	fffff097          	auipc	ra,0xfffff
    80006578:	628080e7          	jalr	1576(ra) # 80005b9c <_Z11printStringPKc>
    8000657c:	00000613          	li	a2,0
    80006580:	00a00593          	li	a1,10
    80006584:	0009051b          	sext.w	a0,s2
    80006588:	fffff097          	auipc	ra,0xfffff
    8000658c:	7c4080e7          	jalr	1988(ra) # 80005d4c <_Z8printIntiii>
    80006590:	00003517          	auipc	a0,0x3
    80006594:	bd850513          	addi	a0,a0,-1064 # 80009168 <CONSOLE_STATUS+0x158>
    80006598:	fffff097          	auipc	ra,0xfffff
    8000659c:	604080e7          	jalr	1540(ra) # 80005b9c <_Z11printStringPKc>
    800065a0:	0400006f          	j	800065e0 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800065a4:	00003517          	auipc	a0,0x3
    800065a8:	cd450513          	addi	a0,a0,-812 # 80009278 <CONSOLE_STATUS+0x268>
    800065ac:	fffff097          	auipc	ra,0xfffff
    800065b0:	5f0080e7          	jalr	1520(ra) # 80005b9c <_Z11printStringPKc>
    800065b4:	00000613          	li	a2,0
    800065b8:	00a00593          	li	a1,10
    800065bc:	00048513          	mv	a0,s1
    800065c0:	fffff097          	auipc	ra,0xfffff
    800065c4:	78c080e7          	jalr	1932(ra) # 80005d4c <_Z8printIntiii>
    800065c8:	00003517          	auipc	a0,0x3
    800065cc:	ba050513          	addi	a0,a0,-1120 # 80009168 <CONSOLE_STATUS+0x158>
    800065d0:	fffff097          	auipc	ra,0xfffff
    800065d4:	5cc080e7          	jalr	1484(ra) # 80005b9c <_Z11printStringPKc>
    for (; i < 16; i++) {
    800065d8:	0014849b          	addiw	s1,s1,1
    800065dc:	0ff4f493          	andi	s1,s1,255
    800065e0:	00f00793          	li	a5,15
    800065e4:	fc97f0e3          	bgeu	a5,s1,800065a4 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800065e8:	00003517          	auipc	a0,0x3
    800065ec:	cb850513          	addi	a0,a0,-840 # 800092a0 <CONSOLE_STATUS+0x290>
    800065f0:	fffff097          	auipc	ra,0xfffff
    800065f4:	5ac080e7          	jalr	1452(ra) # 80005b9c <_Z11printStringPKc>
    finishedD = true;
    800065f8:	00100793          	li	a5,1
    800065fc:	00005717          	auipc	a4,0x5
    80006600:	60f70723          	sb	a5,1550(a4) # 8000bc0a <_ZL9finishedD>
    thread_dispatch();
    80006604:	ffffb097          	auipc	ra,0xffffb
    80006608:	dc8080e7          	jalr	-568(ra) # 800013cc <_Z15thread_dispatchv>
}
    8000660c:	01813083          	ld	ra,24(sp)
    80006610:	01013403          	ld	s0,16(sp)
    80006614:	00813483          	ld	s1,8(sp)
    80006618:	00013903          	ld	s2,0(sp)
    8000661c:	02010113          	addi	sp,sp,32
    80006620:	00008067          	ret

0000000080006624 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80006624:	fe010113          	addi	sp,sp,-32
    80006628:	00113c23          	sd	ra,24(sp)
    8000662c:	00813823          	sd	s0,16(sp)
    80006630:	00913423          	sd	s1,8(sp)
    80006634:	01213023          	sd	s2,0(sp)
    80006638:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000663c:	00000493          	li	s1,0
    80006640:	0400006f          	j	80006680 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80006644:	00003517          	auipc	a0,0x3
    80006648:	c0450513          	addi	a0,a0,-1020 # 80009248 <CONSOLE_STATUS+0x238>
    8000664c:	fffff097          	auipc	ra,0xfffff
    80006650:	550080e7          	jalr	1360(ra) # 80005b9c <_Z11printStringPKc>
    80006654:	00000613          	li	a2,0
    80006658:	00a00593          	li	a1,10
    8000665c:	00048513          	mv	a0,s1
    80006660:	fffff097          	auipc	ra,0xfffff
    80006664:	6ec080e7          	jalr	1772(ra) # 80005d4c <_Z8printIntiii>
    80006668:	00003517          	auipc	a0,0x3
    8000666c:	b0050513          	addi	a0,a0,-1280 # 80009168 <CONSOLE_STATUS+0x158>
    80006670:	fffff097          	auipc	ra,0xfffff
    80006674:	52c080e7          	jalr	1324(ra) # 80005b9c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80006678:	0014849b          	addiw	s1,s1,1
    8000667c:	0ff4f493          	andi	s1,s1,255
    80006680:	00200793          	li	a5,2
    80006684:	fc97f0e3          	bgeu	a5,s1,80006644 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80006688:	00003517          	auipc	a0,0x3
    8000668c:	bc850513          	addi	a0,a0,-1080 # 80009250 <CONSOLE_STATUS+0x240>
    80006690:	fffff097          	auipc	ra,0xfffff
    80006694:	50c080e7          	jalr	1292(ra) # 80005b9c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80006698:	00700313          	li	t1,7
    thread_dispatch();
    8000669c:	ffffb097          	auipc	ra,0xffffb
    800066a0:	d30080e7          	jalr	-720(ra) # 800013cc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800066a4:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800066a8:	00003517          	auipc	a0,0x3
    800066ac:	bb850513          	addi	a0,a0,-1096 # 80009260 <CONSOLE_STATUS+0x250>
    800066b0:	fffff097          	auipc	ra,0xfffff
    800066b4:	4ec080e7          	jalr	1260(ra) # 80005b9c <_Z11printStringPKc>
    800066b8:	00000613          	li	a2,0
    800066bc:	00a00593          	li	a1,10
    800066c0:	0009051b          	sext.w	a0,s2
    800066c4:	fffff097          	auipc	ra,0xfffff
    800066c8:	688080e7          	jalr	1672(ra) # 80005d4c <_Z8printIntiii>
    800066cc:	00003517          	auipc	a0,0x3
    800066d0:	a9c50513          	addi	a0,a0,-1380 # 80009168 <CONSOLE_STATUS+0x158>
    800066d4:	fffff097          	auipc	ra,0xfffff
    800066d8:	4c8080e7          	jalr	1224(ra) # 80005b9c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800066dc:	00c00513          	li	a0,12
    800066e0:	00000097          	auipc	ra,0x0
    800066e4:	d88080e7          	jalr	-632(ra) # 80006468 <_ZL9fibonaccim>
    800066e8:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800066ec:	00003517          	auipc	a0,0x3
    800066f0:	b7c50513          	addi	a0,a0,-1156 # 80009268 <CONSOLE_STATUS+0x258>
    800066f4:	fffff097          	auipc	ra,0xfffff
    800066f8:	4a8080e7          	jalr	1192(ra) # 80005b9c <_Z11printStringPKc>
    800066fc:	00000613          	li	a2,0
    80006700:	00a00593          	li	a1,10
    80006704:	0009051b          	sext.w	a0,s2
    80006708:	fffff097          	auipc	ra,0xfffff
    8000670c:	644080e7          	jalr	1604(ra) # 80005d4c <_Z8printIntiii>
    80006710:	00003517          	auipc	a0,0x3
    80006714:	a5850513          	addi	a0,a0,-1448 # 80009168 <CONSOLE_STATUS+0x158>
    80006718:	fffff097          	auipc	ra,0xfffff
    8000671c:	484080e7          	jalr	1156(ra) # 80005b9c <_Z11printStringPKc>
    80006720:	0400006f          	j	80006760 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80006724:	00003517          	auipc	a0,0x3
    80006728:	b2450513          	addi	a0,a0,-1244 # 80009248 <CONSOLE_STATUS+0x238>
    8000672c:	fffff097          	auipc	ra,0xfffff
    80006730:	470080e7          	jalr	1136(ra) # 80005b9c <_Z11printStringPKc>
    80006734:	00000613          	li	a2,0
    80006738:	00a00593          	li	a1,10
    8000673c:	00048513          	mv	a0,s1
    80006740:	fffff097          	auipc	ra,0xfffff
    80006744:	60c080e7          	jalr	1548(ra) # 80005d4c <_Z8printIntiii>
    80006748:	00003517          	auipc	a0,0x3
    8000674c:	a2050513          	addi	a0,a0,-1504 # 80009168 <CONSOLE_STATUS+0x158>
    80006750:	fffff097          	auipc	ra,0xfffff
    80006754:	44c080e7          	jalr	1100(ra) # 80005b9c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80006758:	0014849b          	addiw	s1,s1,1
    8000675c:	0ff4f493          	andi	s1,s1,255
    80006760:	00500793          	li	a5,5
    80006764:	fc97f0e3          	bgeu	a5,s1,80006724 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80006768:	00003517          	auipc	a0,0x3
    8000676c:	ab850513          	addi	a0,a0,-1352 # 80009220 <CONSOLE_STATUS+0x210>
    80006770:	fffff097          	auipc	ra,0xfffff
    80006774:	42c080e7          	jalr	1068(ra) # 80005b9c <_Z11printStringPKc>
    finishedC = true;
    80006778:	00100793          	li	a5,1
    8000677c:	00005717          	auipc	a4,0x5
    80006780:	48f707a3          	sb	a5,1167(a4) # 8000bc0b <_ZL9finishedC>
    thread_dispatch();
    80006784:	ffffb097          	auipc	ra,0xffffb
    80006788:	c48080e7          	jalr	-952(ra) # 800013cc <_Z15thread_dispatchv>
}
    8000678c:	01813083          	ld	ra,24(sp)
    80006790:	01013403          	ld	s0,16(sp)
    80006794:	00813483          	ld	s1,8(sp)
    80006798:	00013903          	ld	s2,0(sp)
    8000679c:	02010113          	addi	sp,sp,32
    800067a0:	00008067          	ret

00000000800067a4 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800067a4:	fe010113          	addi	sp,sp,-32
    800067a8:	00113c23          	sd	ra,24(sp)
    800067ac:	00813823          	sd	s0,16(sp)
    800067b0:	00913423          	sd	s1,8(sp)
    800067b4:	01213023          	sd	s2,0(sp)
    800067b8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800067bc:	00000913          	li	s2,0
    800067c0:	0400006f          	j	80006800 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    800067c4:	ffffb097          	auipc	ra,0xffffb
    800067c8:	c08080e7          	jalr	-1016(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800067cc:	00148493          	addi	s1,s1,1
    800067d0:	000027b7          	lui	a5,0x2
    800067d4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800067d8:	0097ee63          	bltu	a5,s1,800067f4 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800067dc:	00000713          	li	a4,0
    800067e0:	000077b7          	lui	a5,0x7
    800067e4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800067e8:	fce7eee3          	bltu	a5,a4,800067c4 <_ZL11workerBodyBPv+0x20>
    800067ec:	00170713          	addi	a4,a4,1
    800067f0:	ff1ff06f          	j	800067e0 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    800067f4:	00a00793          	li	a5,10
    800067f8:	04f90663          	beq	s2,a5,80006844 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    800067fc:	00190913          	addi	s2,s2,1
    80006800:	00f00793          	li	a5,15
    80006804:	0527e463          	bltu	a5,s2,8000684c <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80006808:	00003517          	auipc	a0,0x3
    8000680c:	a2850513          	addi	a0,a0,-1496 # 80009230 <CONSOLE_STATUS+0x220>
    80006810:	fffff097          	auipc	ra,0xfffff
    80006814:	38c080e7          	jalr	908(ra) # 80005b9c <_Z11printStringPKc>
    80006818:	00000613          	li	a2,0
    8000681c:	00a00593          	li	a1,10
    80006820:	0009051b          	sext.w	a0,s2
    80006824:	fffff097          	auipc	ra,0xfffff
    80006828:	528080e7          	jalr	1320(ra) # 80005d4c <_Z8printIntiii>
    8000682c:	00003517          	auipc	a0,0x3
    80006830:	93c50513          	addi	a0,a0,-1732 # 80009168 <CONSOLE_STATUS+0x158>
    80006834:	fffff097          	auipc	ra,0xfffff
    80006838:	368080e7          	jalr	872(ra) # 80005b9c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000683c:	00000493          	li	s1,0
    80006840:	f91ff06f          	j	800067d0 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80006844:	14102ff3          	csrr	t6,sepc
    80006848:	fb5ff06f          	j	800067fc <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    8000684c:	00003517          	auipc	a0,0x3
    80006850:	9ec50513          	addi	a0,a0,-1556 # 80009238 <CONSOLE_STATUS+0x228>
    80006854:	fffff097          	auipc	ra,0xfffff
    80006858:	348080e7          	jalr	840(ra) # 80005b9c <_Z11printStringPKc>
    finishedB = true;
    8000685c:	00100793          	li	a5,1
    80006860:	00005717          	auipc	a4,0x5
    80006864:	3af70623          	sb	a5,940(a4) # 8000bc0c <_ZL9finishedB>
    thread_dispatch();
    80006868:	ffffb097          	auipc	ra,0xffffb
    8000686c:	b64080e7          	jalr	-1180(ra) # 800013cc <_Z15thread_dispatchv>
}
    80006870:	01813083          	ld	ra,24(sp)
    80006874:	01013403          	ld	s0,16(sp)
    80006878:	00813483          	ld	s1,8(sp)
    8000687c:	00013903          	ld	s2,0(sp)
    80006880:	02010113          	addi	sp,sp,32
    80006884:	00008067          	ret

0000000080006888 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80006888:	fe010113          	addi	sp,sp,-32
    8000688c:	00113c23          	sd	ra,24(sp)
    80006890:	00813823          	sd	s0,16(sp)
    80006894:	00913423          	sd	s1,8(sp)
    80006898:	01213023          	sd	s2,0(sp)
    8000689c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800068a0:	00000913          	li	s2,0
    800068a4:	0380006f          	j	800068dc <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800068a8:	ffffb097          	auipc	ra,0xffffb
    800068ac:	b24080e7          	jalr	-1244(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800068b0:	00148493          	addi	s1,s1,1
    800068b4:	000027b7          	lui	a5,0x2
    800068b8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800068bc:	0097ee63          	bltu	a5,s1,800068d8 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800068c0:	00000713          	li	a4,0
    800068c4:	000077b7          	lui	a5,0x7
    800068c8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800068cc:	fce7eee3          	bltu	a5,a4,800068a8 <_ZL11workerBodyAPv+0x20>
    800068d0:	00170713          	addi	a4,a4,1
    800068d4:	ff1ff06f          	j	800068c4 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800068d8:	00190913          	addi	s2,s2,1
    800068dc:	00900793          	li	a5,9
    800068e0:	0527e063          	bltu	a5,s2,80006920 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800068e4:	00003517          	auipc	a0,0x3
    800068e8:	93450513          	addi	a0,a0,-1740 # 80009218 <CONSOLE_STATUS+0x208>
    800068ec:	fffff097          	auipc	ra,0xfffff
    800068f0:	2b0080e7          	jalr	688(ra) # 80005b9c <_Z11printStringPKc>
    800068f4:	00000613          	li	a2,0
    800068f8:	00a00593          	li	a1,10
    800068fc:	0009051b          	sext.w	a0,s2
    80006900:	fffff097          	auipc	ra,0xfffff
    80006904:	44c080e7          	jalr	1100(ra) # 80005d4c <_Z8printIntiii>
    80006908:	00003517          	auipc	a0,0x3
    8000690c:	86050513          	addi	a0,a0,-1952 # 80009168 <CONSOLE_STATUS+0x158>
    80006910:	fffff097          	auipc	ra,0xfffff
    80006914:	28c080e7          	jalr	652(ra) # 80005b9c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006918:	00000493          	li	s1,0
    8000691c:	f99ff06f          	j	800068b4 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006920:	00003517          	auipc	a0,0x3
    80006924:	90050513          	addi	a0,a0,-1792 # 80009220 <CONSOLE_STATUS+0x210>
    80006928:	fffff097          	auipc	ra,0xfffff
    8000692c:	274080e7          	jalr	628(ra) # 80005b9c <_Z11printStringPKc>
    finishedA = true;
    80006930:	00100793          	li	a5,1
    80006934:	00005717          	auipc	a4,0x5
    80006938:	2cf70ca3          	sb	a5,729(a4) # 8000bc0d <_ZL9finishedA>
}
    8000693c:	01813083          	ld	ra,24(sp)
    80006940:	01013403          	ld	s0,16(sp)
    80006944:	00813483          	ld	s1,8(sp)
    80006948:	00013903          	ld	s2,0(sp)
    8000694c:	02010113          	addi	sp,sp,32
    80006950:	00008067          	ret

0000000080006954 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006954:	fd010113          	addi	sp,sp,-48
    80006958:	02113423          	sd	ra,40(sp)
    8000695c:	02813023          	sd	s0,32(sp)
    80006960:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006964:	00000613          	li	a2,0
    80006968:	00000597          	auipc	a1,0x0
    8000696c:	f2058593          	addi	a1,a1,-224 # 80006888 <_ZL11workerBodyAPv>
    80006970:	fd040513          	addi	a0,s0,-48
    80006974:	ffffb097          	auipc	ra,0xffffb
    80006978:	984080e7          	jalr	-1660(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    8000697c:	00003517          	auipc	a0,0x3
    80006980:	93450513          	addi	a0,a0,-1740 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80006984:	fffff097          	auipc	ra,0xfffff
    80006988:	218080e7          	jalr	536(ra) # 80005b9c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    8000698c:	00000613          	li	a2,0
    80006990:	00000597          	auipc	a1,0x0
    80006994:	e1458593          	addi	a1,a1,-492 # 800067a4 <_ZL11workerBodyBPv>
    80006998:	fd840513          	addi	a0,s0,-40
    8000699c:	ffffb097          	auipc	ra,0xffffb
    800069a0:	95c080e7          	jalr	-1700(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    800069a4:	00003517          	auipc	a0,0x3
    800069a8:	92450513          	addi	a0,a0,-1756 # 800092c8 <CONSOLE_STATUS+0x2b8>
    800069ac:	fffff097          	auipc	ra,0xfffff
    800069b0:	1f0080e7          	jalr	496(ra) # 80005b9c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800069b4:	00000613          	li	a2,0
    800069b8:	00000597          	auipc	a1,0x0
    800069bc:	c6c58593          	addi	a1,a1,-916 # 80006624 <_ZL11workerBodyCPv>
    800069c0:	fe040513          	addi	a0,s0,-32
    800069c4:	ffffb097          	auipc	ra,0xffffb
    800069c8:	934080e7          	jalr	-1740(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    800069cc:	00003517          	auipc	a0,0x3
    800069d0:	91450513          	addi	a0,a0,-1772 # 800092e0 <CONSOLE_STATUS+0x2d0>
    800069d4:	fffff097          	auipc	ra,0xfffff
    800069d8:	1c8080e7          	jalr	456(ra) # 80005b9c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800069dc:	00000613          	li	a2,0
    800069e0:	00000597          	auipc	a1,0x0
    800069e4:	afc58593          	addi	a1,a1,-1284 # 800064dc <_ZL11workerBodyDPv>
    800069e8:	fe840513          	addi	a0,s0,-24
    800069ec:	ffffb097          	auipc	ra,0xffffb
    800069f0:	90c080e7          	jalr	-1780(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    800069f4:	00003517          	auipc	a0,0x3
    800069f8:	90450513          	addi	a0,a0,-1788 # 800092f8 <CONSOLE_STATUS+0x2e8>
    800069fc:	fffff097          	auipc	ra,0xfffff
    80006a00:	1a0080e7          	jalr	416(ra) # 80005b9c <_Z11printStringPKc>
    80006a04:	00c0006f          	j	80006a10 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006a08:	ffffb097          	auipc	ra,0xffffb
    80006a0c:	9c4080e7          	jalr	-1596(ra) # 800013cc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006a10:	00005797          	auipc	a5,0x5
    80006a14:	1fd7c783          	lbu	a5,509(a5) # 8000bc0d <_ZL9finishedA>
    80006a18:	fe0788e3          	beqz	a5,80006a08 <_Z16System_Mode_testv+0xb4>
    80006a1c:	00005797          	auipc	a5,0x5
    80006a20:	1f07c783          	lbu	a5,496(a5) # 8000bc0c <_ZL9finishedB>
    80006a24:	fe0782e3          	beqz	a5,80006a08 <_Z16System_Mode_testv+0xb4>
    80006a28:	00005797          	auipc	a5,0x5
    80006a2c:	1e37c783          	lbu	a5,483(a5) # 8000bc0b <_ZL9finishedC>
    80006a30:	fc078ce3          	beqz	a5,80006a08 <_Z16System_Mode_testv+0xb4>
    80006a34:	00005797          	auipc	a5,0x5
    80006a38:	1d67c783          	lbu	a5,470(a5) # 8000bc0a <_ZL9finishedD>
    80006a3c:	fc0786e3          	beqz	a5,80006a08 <_Z16System_Mode_testv+0xb4>
    }

}
    80006a40:	02813083          	ld	ra,40(sp)
    80006a44:	02013403          	ld	s0,32(sp)
    80006a48:	03010113          	addi	sp,sp,48
    80006a4c:	00008067          	ret

0000000080006a50 <start>:
    80006a50:	ff010113          	addi	sp,sp,-16
    80006a54:	00813423          	sd	s0,8(sp)
    80006a58:	01010413          	addi	s0,sp,16
    80006a5c:	300027f3          	csrr	a5,mstatus
    80006a60:	ffffe737          	lui	a4,0xffffe
    80006a64:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff198f>
    80006a68:	00e7f7b3          	and	a5,a5,a4
    80006a6c:	00001737          	lui	a4,0x1
    80006a70:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006a74:	00e7e7b3          	or	a5,a5,a4
    80006a78:	30079073          	csrw	mstatus,a5
    80006a7c:	00000797          	auipc	a5,0x0
    80006a80:	16078793          	addi	a5,a5,352 # 80006bdc <system_main>
    80006a84:	34179073          	csrw	mepc,a5
    80006a88:	00000793          	li	a5,0
    80006a8c:	18079073          	csrw	satp,a5
    80006a90:	000107b7          	lui	a5,0x10
    80006a94:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006a98:	30279073          	csrw	medeleg,a5
    80006a9c:	30379073          	csrw	mideleg,a5
    80006aa0:	104027f3          	csrr	a5,sie
    80006aa4:	2227e793          	ori	a5,a5,546
    80006aa8:	10479073          	csrw	sie,a5
    80006aac:	fff00793          	li	a5,-1
    80006ab0:	00a7d793          	srli	a5,a5,0xa
    80006ab4:	3b079073          	csrw	pmpaddr0,a5
    80006ab8:	00f00793          	li	a5,15
    80006abc:	3a079073          	csrw	pmpcfg0,a5
    80006ac0:	f14027f3          	csrr	a5,mhartid
    80006ac4:	0200c737          	lui	a4,0x200c
    80006ac8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006acc:	0007869b          	sext.w	a3,a5
    80006ad0:	00269713          	slli	a4,a3,0x2
    80006ad4:	000f4637          	lui	a2,0xf4
    80006ad8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006adc:	00d70733          	add	a4,a4,a3
    80006ae0:	0037979b          	slliw	a5,a5,0x3
    80006ae4:	020046b7          	lui	a3,0x2004
    80006ae8:	00d787b3          	add	a5,a5,a3
    80006aec:	00c585b3          	add	a1,a1,a2
    80006af0:	00371693          	slli	a3,a4,0x3
    80006af4:	00005717          	auipc	a4,0x5
    80006af8:	11c70713          	addi	a4,a4,284 # 8000bc10 <timer_scratch>
    80006afc:	00b7b023          	sd	a1,0(a5)
    80006b00:	00d70733          	add	a4,a4,a3
    80006b04:	00f73c23          	sd	a5,24(a4)
    80006b08:	02c73023          	sd	a2,32(a4)
    80006b0c:	34071073          	csrw	mscratch,a4
    80006b10:	00000797          	auipc	a5,0x0
    80006b14:	6e078793          	addi	a5,a5,1760 # 800071f0 <timervec>
    80006b18:	30579073          	csrw	mtvec,a5
    80006b1c:	300027f3          	csrr	a5,mstatus
    80006b20:	0087e793          	ori	a5,a5,8
    80006b24:	30079073          	csrw	mstatus,a5
    80006b28:	304027f3          	csrr	a5,mie
    80006b2c:	0807e793          	ori	a5,a5,128
    80006b30:	30479073          	csrw	mie,a5
    80006b34:	f14027f3          	csrr	a5,mhartid
    80006b38:	0007879b          	sext.w	a5,a5
    80006b3c:	00078213          	mv	tp,a5
    80006b40:	30200073          	mret
    80006b44:	00813403          	ld	s0,8(sp)
    80006b48:	01010113          	addi	sp,sp,16
    80006b4c:	00008067          	ret

0000000080006b50 <timerinit>:
    80006b50:	ff010113          	addi	sp,sp,-16
    80006b54:	00813423          	sd	s0,8(sp)
    80006b58:	01010413          	addi	s0,sp,16
    80006b5c:	f14027f3          	csrr	a5,mhartid
    80006b60:	0200c737          	lui	a4,0x200c
    80006b64:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006b68:	0007869b          	sext.w	a3,a5
    80006b6c:	00269713          	slli	a4,a3,0x2
    80006b70:	000f4637          	lui	a2,0xf4
    80006b74:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006b78:	00d70733          	add	a4,a4,a3
    80006b7c:	0037979b          	slliw	a5,a5,0x3
    80006b80:	020046b7          	lui	a3,0x2004
    80006b84:	00d787b3          	add	a5,a5,a3
    80006b88:	00c585b3          	add	a1,a1,a2
    80006b8c:	00371693          	slli	a3,a4,0x3
    80006b90:	00005717          	auipc	a4,0x5
    80006b94:	08070713          	addi	a4,a4,128 # 8000bc10 <timer_scratch>
    80006b98:	00b7b023          	sd	a1,0(a5)
    80006b9c:	00d70733          	add	a4,a4,a3
    80006ba0:	00f73c23          	sd	a5,24(a4)
    80006ba4:	02c73023          	sd	a2,32(a4)
    80006ba8:	34071073          	csrw	mscratch,a4
    80006bac:	00000797          	auipc	a5,0x0
    80006bb0:	64478793          	addi	a5,a5,1604 # 800071f0 <timervec>
    80006bb4:	30579073          	csrw	mtvec,a5
    80006bb8:	300027f3          	csrr	a5,mstatus
    80006bbc:	0087e793          	ori	a5,a5,8
    80006bc0:	30079073          	csrw	mstatus,a5
    80006bc4:	304027f3          	csrr	a5,mie
    80006bc8:	0807e793          	ori	a5,a5,128
    80006bcc:	30479073          	csrw	mie,a5
    80006bd0:	00813403          	ld	s0,8(sp)
    80006bd4:	01010113          	addi	sp,sp,16
    80006bd8:	00008067          	ret

0000000080006bdc <system_main>:
    80006bdc:	fe010113          	addi	sp,sp,-32
    80006be0:	00813823          	sd	s0,16(sp)
    80006be4:	00913423          	sd	s1,8(sp)
    80006be8:	00113c23          	sd	ra,24(sp)
    80006bec:	02010413          	addi	s0,sp,32
    80006bf0:	00000097          	auipc	ra,0x0
    80006bf4:	0c4080e7          	jalr	196(ra) # 80006cb4 <cpuid>
    80006bf8:	00005497          	auipc	s1,0x5
    80006bfc:	f3848493          	addi	s1,s1,-200 # 8000bb30 <started>
    80006c00:	02050263          	beqz	a0,80006c24 <system_main+0x48>
    80006c04:	0004a783          	lw	a5,0(s1)
    80006c08:	0007879b          	sext.w	a5,a5
    80006c0c:	fe078ce3          	beqz	a5,80006c04 <system_main+0x28>
    80006c10:	0ff0000f          	fence
    80006c14:	00003517          	auipc	a0,0x3
    80006c18:	82c50513          	addi	a0,a0,-2004 # 80009440 <CONSOLE_STATUS+0x430>
    80006c1c:	00001097          	auipc	ra,0x1
    80006c20:	a70080e7          	jalr	-1424(ra) # 8000768c <panic>
    80006c24:	00001097          	auipc	ra,0x1
    80006c28:	9c4080e7          	jalr	-1596(ra) # 800075e8 <consoleinit>
    80006c2c:	00001097          	auipc	ra,0x1
    80006c30:	150080e7          	jalr	336(ra) # 80007d7c <printfinit>
    80006c34:	00002517          	auipc	a0,0x2
    80006c38:	53450513          	addi	a0,a0,1332 # 80009168 <CONSOLE_STATUS+0x158>
    80006c3c:	00001097          	auipc	ra,0x1
    80006c40:	aac080e7          	jalr	-1364(ra) # 800076e8 <__printf>
    80006c44:	00002517          	auipc	a0,0x2
    80006c48:	7cc50513          	addi	a0,a0,1996 # 80009410 <CONSOLE_STATUS+0x400>
    80006c4c:	00001097          	auipc	ra,0x1
    80006c50:	a9c080e7          	jalr	-1380(ra) # 800076e8 <__printf>
    80006c54:	00002517          	auipc	a0,0x2
    80006c58:	51450513          	addi	a0,a0,1300 # 80009168 <CONSOLE_STATUS+0x158>
    80006c5c:	00001097          	auipc	ra,0x1
    80006c60:	a8c080e7          	jalr	-1396(ra) # 800076e8 <__printf>
    80006c64:	00001097          	auipc	ra,0x1
    80006c68:	4a4080e7          	jalr	1188(ra) # 80008108 <kinit>
    80006c6c:	00000097          	auipc	ra,0x0
    80006c70:	148080e7          	jalr	328(ra) # 80006db4 <trapinit>
    80006c74:	00000097          	auipc	ra,0x0
    80006c78:	16c080e7          	jalr	364(ra) # 80006de0 <trapinithart>
    80006c7c:	00000097          	auipc	ra,0x0
    80006c80:	5b4080e7          	jalr	1460(ra) # 80007230 <plicinit>
    80006c84:	00000097          	auipc	ra,0x0
    80006c88:	5d4080e7          	jalr	1492(ra) # 80007258 <plicinithart>
    80006c8c:	00000097          	auipc	ra,0x0
    80006c90:	078080e7          	jalr	120(ra) # 80006d04 <userinit>
    80006c94:	0ff0000f          	fence
    80006c98:	00100793          	li	a5,1
    80006c9c:	00002517          	auipc	a0,0x2
    80006ca0:	78c50513          	addi	a0,a0,1932 # 80009428 <CONSOLE_STATUS+0x418>
    80006ca4:	00f4a023          	sw	a5,0(s1)
    80006ca8:	00001097          	auipc	ra,0x1
    80006cac:	a40080e7          	jalr	-1472(ra) # 800076e8 <__printf>
    80006cb0:	0000006f          	j	80006cb0 <system_main+0xd4>

0000000080006cb4 <cpuid>:
    80006cb4:	ff010113          	addi	sp,sp,-16
    80006cb8:	00813423          	sd	s0,8(sp)
    80006cbc:	01010413          	addi	s0,sp,16
    80006cc0:	00020513          	mv	a0,tp
    80006cc4:	00813403          	ld	s0,8(sp)
    80006cc8:	0005051b          	sext.w	a0,a0
    80006ccc:	01010113          	addi	sp,sp,16
    80006cd0:	00008067          	ret

0000000080006cd4 <mycpu>:
    80006cd4:	ff010113          	addi	sp,sp,-16
    80006cd8:	00813423          	sd	s0,8(sp)
    80006cdc:	01010413          	addi	s0,sp,16
    80006ce0:	00020793          	mv	a5,tp
    80006ce4:	00813403          	ld	s0,8(sp)
    80006ce8:	0007879b          	sext.w	a5,a5
    80006cec:	00779793          	slli	a5,a5,0x7
    80006cf0:	00006517          	auipc	a0,0x6
    80006cf4:	f5050513          	addi	a0,a0,-176 # 8000cc40 <cpus>
    80006cf8:	00f50533          	add	a0,a0,a5
    80006cfc:	01010113          	addi	sp,sp,16
    80006d00:	00008067          	ret

0000000080006d04 <userinit>:
    80006d04:	ff010113          	addi	sp,sp,-16
    80006d08:	00813423          	sd	s0,8(sp)
    80006d0c:	01010413          	addi	s0,sp,16
    80006d10:	00813403          	ld	s0,8(sp)
    80006d14:	01010113          	addi	sp,sp,16
    80006d18:	ffffb317          	auipc	t1,0xffffb
    80006d1c:	e2830067          	jr	-472(t1) # 80001b40 <main>

0000000080006d20 <either_copyout>:
    80006d20:	ff010113          	addi	sp,sp,-16
    80006d24:	00813023          	sd	s0,0(sp)
    80006d28:	00113423          	sd	ra,8(sp)
    80006d2c:	01010413          	addi	s0,sp,16
    80006d30:	02051663          	bnez	a0,80006d5c <either_copyout+0x3c>
    80006d34:	00058513          	mv	a0,a1
    80006d38:	00060593          	mv	a1,a2
    80006d3c:	0006861b          	sext.w	a2,a3
    80006d40:	00002097          	auipc	ra,0x2
    80006d44:	c54080e7          	jalr	-940(ra) # 80008994 <__memmove>
    80006d48:	00813083          	ld	ra,8(sp)
    80006d4c:	00013403          	ld	s0,0(sp)
    80006d50:	00000513          	li	a0,0
    80006d54:	01010113          	addi	sp,sp,16
    80006d58:	00008067          	ret
    80006d5c:	00002517          	auipc	a0,0x2
    80006d60:	70c50513          	addi	a0,a0,1804 # 80009468 <CONSOLE_STATUS+0x458>
    80006d64:	00001097          	auipc	ra,0x1
    80006d68:	928080e7          	jalr	-1752(ra) # 8000768c <panic>

0000000080006d6c <either_copyin>:
    80006d6c:	ff010113          	addi	sp,sp,-16
    80006d70:	00813023          	sd	s0,0(sp)
    80006d74:	00113423          	sd	ra,8(sp)
    80006d78:	01010413          	addi	s0,sp,16
    80006d7c:	02059463          	bnez	a1,80006da4 <either_copyin+0x38>
    80006d80:	00060593          	mv	a1,a2
    80006d84:	0006861b          	sext.w	a2,a3
    80006d88:	00002097          	auipc	ra,0x2
    80006d8c:	c0c080e7          	jalr	-1012(ra) # 80008994 <__memmove>
    80006d90:	00813083          	ld	ra,8(sp)
    80006d94:	00013403          	ld	s0,0(sp)
    80006d98:	00000513          	li	a0,0
    80006d9c:	01010113          	addi	sp,sp,16
    80006da0:	00008067          	ret
    80006da4:	00002517          	auipc	a0,0x2
    80006da8:	6ec50513          	addi	a0,a0,1772 # 80009490 <CONSOLE_STATUS+0x480>
    80006dac:	00001097          	auipc	ra,0x1
    80006db0:	8e0080e7          	jalr	-1824(ra) # 8000768c <panic>

0000000080006db4 <trapinit>:
    80006db4:	ff010113          	addi	sp,sp,-16
    80006db8:	00813423          	sd	s0,8(sp)
    80006dbc:	01010413          	addi	s0,sp,16
    80006dc0:	00813403          	ld	s0,8(sp)
    80006dc4:	00002597          	auipc	a1,0x2
    80006dc8:	6f458593          	addi	a1,a1,1780 # 800094b8 <CONSOLE_STATUS+0x4a8>
    80006dcc:	00006517          	auipc	a0,0x6
    80006dd0:	ef450513          	addi	a0,a0,-268 # 8000ccc0 <tickslock>
    80006dd4:	01010113          	addi	sp,sp,16
    80006dd8:	00001317          	auipc	t1,0x1
    80006ddc:	5c030067          	jr	1472(t1) # 80008398 <initlock>

0000000080006de0 <trapinithart>:
    80006de0:	ff010113          	addi	sp,sp,-16
    80006de4:	00813423          	sd	s0,8(sp)
    80006de8:	01010413          	addi	s0,sp,16
    80006dec:	00000797          	auipc	a5,0x0
    80006df0:	2f478793          	addi	a5,a5,756 # 800070e0 <kernelvec>
    80006df4:	10579073          	csrw	stvec,a5
    80006df8:	00813403          	ld	s0,8(sp)
    80006dfc:	01010113          	addi	sp,sp,16
    80006e00:	00008067          	ret

0000000080006e04 <usertrap>:
    80006e04:	ff010113          	addi	sp,sp,-16
    80006e08:	00813423          	sd	s0,8(sp)
    80006e0c:	01010413          	addi	s0,sp,16
    80006e10:	00813403          	ld	s0,8(sp)
    80006e14:	01010113          	addi	sp,sp,16
    80006e18:	00008067          	ret

0000000080006e1c <usertrapret>:
    80006e1c:	ff010113          	addi	sp,sp,-16
    80006e20:	00813423          	sd	s0,8(sp)
    80006e24:	01010413          	addi	s0,sp,16
    80006e28:	00813403          	ld	s0,8(sp)
    80006e2c:	01010113          	addi	sp,sp,16
    80006e30:	00008067          	ret

0000000080006e34 <kerneltrap>:
    80006e34:	fe010113          	addi	sp,sp,-32
    80006e38:	00813823          	sd	s0,16(sp)
    80006e3c:	00113c23          	sd	ra,24(sp)
    80006e40:	00913423          	sd	s1,8(sp)
    80006e44:	02010413          	addi	s0,sp,32
    80006e48:	142025f3          	csrr	a1,scause
    80006e4c:	100027f3          	csrr	a5,sstatus
    80006e50:	0027f793          	andi	a5,a5,2
    80006e54:	10079c63          	bnez	a5,80006f6c <kerneltrap+0x138>
    80006e58:	142027f3          	csrr	a5,scause
    80006e5c:	0207ce63          	bltz	a5,80006e98 <kerneltrap+0x64>
    80006e60:	00002517          	auipc	a0,0x2
    80006e64:	6a050513          	addi	a0,a0,1696 # 80009500 <CONSOLE_STATUS+0x4f0>
    80006e68:	00001097          	auipc	ra,0x1
    80006e6c:	880080e7          	jalr	-1920(ra) # 800076e8 <__printf>
    80006e70:	141025f3          	csrr	a1,sepc
    80006e74:	14302673          	csrr	a2,stval
    80006e78:	00002517          	auipc	a0,0x2
    80006e7c:	69850513          	addi	a0,a0,1688 # 80009510 <CONSOLE_STATUS+0x500>
    80006e80:	00001097          	auipc	ra,0x1
    80006e84:	868080e7          	jalr	-1944(ra) # 800076e8 <__printf>
    80006e88:	00002517          	auipc	a0,0x2
    80006e8c:	6a050513          	addi	a0,a0,1696 # 80009528 <CONSOLE_STATUS+0x518>
    80006e90:	00000097          	auipc	ra,0x0
    80006e94:	7fc080e7          	jalr	2044(ra) # 8000768c <panic>
    80006e98:	0ff7f713          	andi	a4,a5,255
    80006e9c:	00900693          	li	a3,9
    80006ea0:	04d70063          	beq	a4,a3,80006ee0 <kerneltrap+0xac>
    80006ea4:	fff00713          	li	a4,-1
    80006ea8:	03f71713          	slli	a4,a4,0x3f
    80006eac:	00170713          	addi	a4,a4,1
    80006eb0:	fae798e3          	bne	a5,a4,80006e60 <kerneltrap+0x2c>
    80006eb4:	00000097          	auipc	ra,0x0
    80006eb8:	e00080e7          	jalr	-512(ra) # 80006cb4 <cpuid>
    80006ebc:	06050663          	beqz	a0,80006f28 <kerneltrap+0xf4>
    80006ec0:	144027f3          	csrr	a5,sip
    80006ec4:	ffd7f793          	andi	a5,a5,-3
    80006ec8:	14479073          	csrw	sip,a5
    80006ecc:	01813083          	ld	ra,24(sp)
    80006ed0:	01013403          	ld	s0,16(sp)
    80006ed4:	00813483          	ld	s1,8(sp)
    80006ed8:	02010113          	addi	sp,sp,32
    80006edc:	00008067          	ret
    80006ee0:	00000097          	auipc	ra,0x0
    80006ee4:	3c4080e7          	jalr	964(ra) # 800072a4 <plic_claim>
    80006ee8:	00a00793          	li	a5,10
    80006eec:	00050493          	mv	s1,a0
    80006ef0:	06f50863          	beq	a0,a5,80006f60 <kerneltrap+0x12c>
    80006ef4:	fc050ce3          	beqz	a0,80006ecc <kerneltrap+0x98>
    80006ef8:	00050593          	mv	a1,a0
    80006efc:	00002517          	auipc	a0,0x2
    80006f00:	5e450513          	addi	a0,a0,1508 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80006f04:	00000097          	auipc	ra,0x0
    80006f08:	7e4080e7          	jalr	2020(ra) # 800076e8 <__printf>
    80006f0c:	01013403          	ld	s0,16(sp)
    80006f10:	01813083          	ld	ra,24(sp)
    80006f14:	00048513          	mv	a0,s1
    80006f18:	00813483          	ld	s1,8(sp)
    80006f1c:	02010113          	addi	sp,sp,32
    80006f20:	00000317          	auipc	t1,0x0
    80006f24:	3bc30067          	jr	956(t1) # 800072dc <plic_complete>
    80006f28:	00006517          	auipc	a0,0x6
    80006f2c:	d9850513          	addi	a0,a0,-616 # 8000ccc0 <tickslock>
    80006f30:	00001097          	auipc	ra,0x1
    80006f34:	48c080e7          	jalr	1164(ra) # 800083bc <acquire>
    80006f38:	00005717          	auipc	a4,0x5
    80006f3c:	bfc70713          	addi	a4,a4,-1028 # 8000bb34 <ticks>
    80006f40:	00072783          	lw	a5,0(a4)
    80006f44:	00006517          	auipc	a0,0x6
    80006f48:	d7c50513          	addi	a0,a0,-644 # 8000ccc0 <tickslock>
    80006f4c:	0017879b          	addiw	a5,a5,1
    80006f50:	00f72023          	sw	a5,0(a4)
    80006f54:	00001097          	auipc	ra,0x1
    80006f58:	534080e7          	jalr	1332(ra) # 80008488 <release>
    80006f5c:	f65ff06f          	j	80006ec0 <kerneltrap+0x8c>
    80006f60:	00001097          	auipc	ra,0x1
    80006f64:	090080e7          	jalr	144(ra) # 80007ff0 <uartintr>
    80006f68:	fa5ff06f          	j	80006f0c <kerneltrap+0xd8>
    80006f6c:	00002517          	auipc	a0,0x2
    80006f70:	55450513          	addi	a0,a0,1364 # 800094c0 <CONSOLE_STATUS+0x4b0>
    80006f74:	00000097          	auipc	ra,0x0
    80006f78:	718080e7          	jalr	1816(ra) # 8000768c <panic>

0000000080006f7c <clockintr>:
    80006f7c:	fe010113          	addi	sp,sp,-32
    80006f80:	00813823          	sd	s0,16(sp)
    80006f84:	00913423          	sd	s1,8(sp)
    80006f88:	00113c23          	sd	ra,24(sp)
    80006f8c:	02010413          	addi	s0,sp,32
    80006f90:	00006497          	auipc	s1,0x6
    80006f94:	d3048493          	addi	s1,s1,-720 # 8000ccc0 <tickslock>
    80006f98:	00048513          	mv	a0,s1
    80006f9c:	00001097          	auipc	ra,0x1
    80006fa0:	420080e7          	jalr	1056(ra) # 800083bc <acquire>
    80006fa4:	00005717          	auipc	a4,0x5
    80006fa8:	b9070713          	addi	a4,a4,-1136 # 8000bb34 <ticks>
    80006fac:	00072783          	lw	a5,0(a4)
    80006fb0:	01013403          	ld	s0,16(sp)
    80006fb4:	01813083          	ld	ra,24(sp)
    80006fb8:	00048513          	mv	a0,s1
    80006fbc:	0017879b          	addiw	a5,a5,1
    80006fc0:	00813483          	ld	s1,8(sp)
    80006fc4:	00f72023          	sw	a5,0(a4)
    80006fc8:	02010113          	addi	sp,sp,32
    80006fcc:	00001317          	auipc	t1,0x1
    80006fd0:	4bc30067          	jr	1212(t1) # 80008488 <release>

0000000080006fd4 <devintr>:
    80006fd4:	142027f3          	csrr	a5,scause
    80006fd8:	00000513          	li	a0,0
    80006fdc:	0007c463          	bltz	a5,80006fe4 <devintr+0x10>
    80006fe0:	00008067          	ret
    80006fe4:	fe010113          	addi	sp,sp,-32
    80006fe8:	00813823          	sd	s0,16(sp)
    80006fec:	00113c23          	sd	ra,24(sp)
    80006ff0:	00913423          	sd	s1,8(sp)
    80006ff4:	02010413          	addi	s0,sp,32
    80006ff8:	0ff7f713          	andi	a4,a5,255
    80006ffc:	00900693          	li	a3,9
    80007000:	04d70c63          	beq	a4,a3,80007058 <devintr+0x84>
    80007004:	fff00713          	li	a4,-1
    80007008:	03f71713          	slli	a4,a4,0x3f
    8000700c:	00170713          	addi	a4,a4,1
    80007010:	00e78c63          	beq	a5,a4,80007028 <devintr+0x54>
    80007014:	01813083          	ld	ra,24(sp)
    80007018:	01013403          	ld	s0,16(sp)
    8000701c:	00813483          	ld	s1,8(sp)
    80007020:	02010113          	addi	sp,sp,32
    80007024:	00008067          	ret
    80007028:	00000097          	auipc	ra,0x0
    8000702c:	c8c080e7          	jalr	-884(ra) # 80006cb4 <cpuid>
    80007030:	06050663          	beqz	a0,8000709c <devintr+0xc8>
    80007034:	144027f3          	csrr	a5,sip
    80007038:	ffd7f793          	andi	a5,a5,-3
    8000703c:	14479073          	csrw	sip,a5
    80007040:	01813083          	ld	ra,24(sp)
    80007044:	01013403          	ld	s0,16(sp)
    80007048:	00813483          	ld	s1,8(sp)
    8000704c:	00200513          	li	a0,2
    80007050:	02010113          	addi	sp,sp,32
    80007054:	00008067          	ret
    80007058:	00000097          	auipc	ra,0x0
    8000705c:	24c080e7          	jalr	588(ra) # 800072a4 <plic_claim>
    80007060:	00a00793          	li	a5,10
    80007064:	00050493          	mv	s1,a0
    80007068:	06f50663          	beq	a0,a5,800070d4 <devintr+0x100>
    8000706c:	00100513          	li	a0,1
    80007070:	fa0482e3          	beqz	s1,80007014 <devintr+0x40>
    80007074:	00048593          	mv	a1,s1
    80007078:	00002517          	auipc	a0,0x2
    8000707c:	46850513          	addi	a0,a0,1128 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80007080:	00000097          	auipc	ra,0x0
    80007084:	668080e7          	jalr	1640(ra) # 800076e8 <__printf>
    80007088:	00048513          	mv	a0,s1
    8000708c:	00000097          	auipc	ra,0x0
    80007090:	250080e7          	jalr	592(ra) # 800072dc <plic_complete>
    80007094:	00100513          	li	a0,1
    80007098:	f7dff06f          	j	80007014 <devintr+0x40>
    8000709c:	00006517          	auipc	a0,0x6
    800070a0:	c2450513          	addi	a0,a0,-988 # 8000ccc0 <tickslock>
    800070a4:	00001097          	auipc	ra,0x1
    800070a8:	318080e7          	jalr	792(ra) # 800083bc <acquire>
    800070ac:	00005717          	auipc	a4,0x5
    800070b0:	a8870713          	addi	a4,a4,-1400 # 8000bb34 <ticks>
    800070b4:	00072783          	lw	a5,0(a4)
    800070b8:	00006517          	auipc	a0,0x6
    800070bc:	c0850513          	addi	a0,a0,-1016 # 8000ccc0 <tickslock>
    800070c0:	0017879b          	addiw	a5,a5,1
    800070c4:	00f72023          	sw	a5,0(a4)
    800070c8:	00001097          	auipc	ra,0x1
    800070cc:	3c0080e7          	jalr	960(ra) # 80008488 <release>
    800070d0:	f65ff06f          	j	80007034 <devintr+0x60>
    800070d4:	00001097          	auipc	ra,0x1
    800070d8:	f1c080e7          	jalr	-228(ra) # 80007ff0 <uartintr>
    800070dc:	fadff06f          	j	80007088 <devintr+0xb4>

00000000800070e0 <kernelvec>:
    800070e0:	f0010113          	addi	sp,sp,-256
    800070e4:	00113023          	sd	ra,0(sp)
    800070e8:	00213423          	sd	sp,8(sp)
    800070ec:	00313823          	sd	gp,16(sp)
    800070f0:	00413c23          	sd	tp,24(sp)
    800070f4:	02513023          	sd	t0,32(sp)
    800070f8:	02613423          	sd	t1,40(sp)
    800070fc:	02713823          	sd	t2,48(sp)
    80007100:	02813c23          	sd	s0,56(sp)
    80007104:	04913023          	sd	s1,64(sp)
    80007108:	04a13423          	sd	a0,72(sp)
    8000710c:	04b13823          	sd	a1,80(sp)
    80007110:	04c13c23          	sd	a2,88(sp)
    80007114:	06d13023          	sd	a3,96(sp)
    80007118:	06e13423          	sd	a4,104(sp)
    8000711c:	06f13823          	sd	a5,112(sp)
    80007120:	07013c23          	sd	a6,120(sp)
    80007124:	09113023          	sd	a7,128(sp)
    80007128:	09213423          	sd	s2,136(sp)
    8000712c:	09313823          	sd	s3,144(sp)
    80007130:	09413c23          	sd	s4,152(sp)
    80007134:	0b513023          	sd	s5,160(sp)
    80007138:	0b613423          	sd	s6,168(sp)
    8000713c:	0b713823          	sd	s7,176(sp)
    80007140:	0b813c23          	sd	s8,184(sp)
    80007144:	0d913023          	sd	s9,192(sp)
    80007148:	0da13423          	sd	s10,200(sp)
    8000714c:	0db13823          	sd	s11,208(sp)
    80007150:	0dc13c23          	sd	t3,216(sp)
    80007154:	0fd13023          	sd	t4,224(sp)
    80007158:	0fe13423          	sd	t5,232(sp)
    8000715c:	0ff13823          	sd	t6,240(sp)
    80007160:	cd5ff0ef          	jal	ra,80006e34 <kerneltrap>
    80007164:	00013083          	ld	ra,0(sp)
    80007168:	00813103          	ld	sp,8(sp)
    8000716c:	01013183          	ld	gp,16(sp)
    80007170:	02013283          	ld	t0,32(sp)
    80007174:	02813303          	ld	t1,40(sp)
    80007178:	03013383          	ld	t2,48(sp)
    8000717c:	03813403          	ld	s0,56(sp)
    80007180:	04013483          	ld	s1,64(sp)
    80007184:	04813503          	ld	a0,72(sp)
    80007188:	05013583          	ld	a1,80(sp)
    8000718c:	05813603          	ld	a2,88(sp)
    80007190:	06013683          	ld	a3,96(sp)
    80007194:	06813703          	ld	a4,104(sp)
    80007198:	07013783          	ld	a5,112(sp)
    8000719c:	07813803          	ld	a6,120(sp)
    800071a0:	08013883          	ld	a7,128(sp)
    800071a4:	08813903          	ld	s2,136(sp)
    800071a8:	09013983          	ld	s3,144(sp)
    800071ac:	09813a03          	ld	s4,152(sp)
    800071b0:	0a013a83          	ld	s5,160(sp)
    800071b4:	0a813b03          	ld	s6,168(sp)
    800071b8:	0b013b83          	ld	s7,176(sp)
    800071bc:	0b813c03          	ld	s8,184(sp)
    800071c0:	0c013c83          	ld	s9,192(sp)
    800071c4:	0c813d03          	ld	s10,200(sp)
    800071c8:	0d013d83          	ld	s11,208(sp)
    800071cc:	0d813e03          	ld	t3,216(sp)
    800071d0:	0e013e83          	ld	t4,224(sp)
    800071d4:	0e813f03          	ld	t5,232(sp)
    800071d8:	0f013f83          	ld	t6,240(sp)
    800071dc:	10010113          	addi	sp,sp,256
    800071e0:	10200073          	sret
    800071e4:	00000013          	nop
    800071e8:	00000013          	nop
    800071ec:	00000013          	nop

00000000800071f0 <timervec>:
    800071f0:	34051573          	csrrw	a0,mscratch,a0
    800071f4:	00b53023          	sd	a1,0(a0)
    800071f8:	00c53423          	sd	a2,8(a0)
    800071fc:	00d53823          	sd	a3,16(a0)
    80007200:	01853583          	ld	a1,24(a0)
    80007204:	02053603          	ld	a2,32(a0)
    80007208:	0005b683          	ld	a3,0(a1)
    8000720c:	00c686b3          	add	a3,a3,a2
    80007210:	00d5b023          	sd	a3,0(a1)
    80007214:	00200593          	li	a1,2
    80007218:	14459073          	csrw	sip,a1
    8000721c:	01053683          	ld	a3,16(a0)
    80007220:	00853603          	ld	a2,8(a0)
    80007224:	00053583          	ld	a1,0(a0)
    80007228:	34051573          	csrrw	a0,mscratch,a0
    8000722c:	30200073          	mret

0000000080007230 <plicinit>:
    80007230:	ff010113          	addi	sp,sp,-16
    80007234:	00813423          	sd	s0,8(sp)
    80007238:	01010413          	addi	s0,sp,16
    8000723c:	00813403          	ld	s0,8(sp)
    80007240:	0c0007b7          	lui	a5,0xc000
    80007244:	00100713          	li	a4,1
    80007248:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000724c:	00e7a223          	sw	a4,4(a5)
    80007250:	01010113          	addi	sp,sp,16
    80007254:	00008067          	ret

0000000080007258 <plicinithart>:
    80007258:	ff010113          	addi	sp,sp,-16
    8000725c:	00813023          	sd	s0,0(sp)
    80007260:	00113423          	sd	ra,8(sp)
    80007264:	01010413          	addi	s0,sp,16
    80007268:	00000097          	auipc	ra,0x0
    8000726c:	a4c080e7          	jalr	-1460(ra) # 80006cb4 <cpuid>
    80007270:	0085171b          	slliw	a4,a0,0x8
    80007274:	0c0027b7          	lui	a5,0xc002
    80007278:	00e787b3          	add	a5,a5,a4
    8000727c:	40200713          	li	a4,1026
    80007280:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80007284:	00813083          	ld	ra,8(sp)
    80007288:	00013403          	ld	s0,0(sp)
    8000728c:	00d5151b          	slliw	a0,a0,0xd
    80007290:	0c2017b7          	lui	a5,0xc201
    80007294:	00a78533          	add	a0,a5,a0
    80007298:	00052023          	sw	zero,0(a0)
    8000729c:	01010113          	addi	sp,sp,16
    800072a0:	00008067          	ret

00000000800072a4 <plic_claim>:
    800072a4:	ff010113          	addi	sp,sp,-16
    800072a8:	00813023          	sd	s0,0(sp)
    800072ac:	00113423          	sd	ra,8(sp)
    800072b0:	01010413          	addi	s0,sp,16
    800072b4:	00000097          	auipc	ra,0x0
    800072b8:	a00080e7          	jalr	-1536(ra) # 80006cb4 <cpuid>
    800072bc:	00813083          	ld	ra,8(sp)
    800072c0:	00013403          	ld	s0,0(sp)
    800072c4:	00d5151b          	slliw	a0,a0,0xd
    800072c8:	0c2017b7          	lui	a5,0xc201
    800072cc:	00a78533          	add	a0,a5,a0
    800072d0:	00452503          	lw	a0,4(a0)
    800072d4:	01010113          	addi	sp,sp,16
    800072d8:	00008067          	ret

00000000800072dc <plic_complete>:
    800072dc:	fe010113          	addi	sp,sp,-32
    800072e0:	00813823          	sd	s0,16(sp)
    800072e4:	00913423          	sd	s1,8(sp)
    800072e8:	00113c23          	sd	ra,24(sp)
    800072ec:	02010413          	addi	s0,sp,32
    800072f0:	00050493          	mv	s1,a0
    800072f4:	00000097          	auipc	ra,0x0
    800072f8:	9c0080e7          	jalr	-1600(ra) # 80006cb4 <cpuid>
    800072fc:	01813083          	ld	ra,24(sp)
    80007300:	01013403          	ld	s0,16(sp)
    80007304:	00d5179b          	slliw	a5,a0,0xd
    80007308:	0c201737          	lui	a4,0xc201
    8000730c:	00f707b3          	add	a5,a4,a5
    80007310:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007314:	00813483          	ld	s1,8(sp)
    80007318:	02010113          	addi	sp,sp,32
    8000731c:	00008067          	ret

0000000080007320 <consolewrite>:
    80007320:	fb010113          	addi	sp,sp,-80
    80007324:	04813023          	sd	s0,64(sp)
    80007328:	04113423          	sd	ra,72(sp)
    8000732c:	02913c23          	sd	s1,56(sp)
    80007330:	03213823          	sd	s2,48(sp)
    80007334:	03313423          	sd	s3,40(sp)
    80007338:	03413023          	sd	s4,32(sp)
    8000733c:	01513c23          	sd	s5,24(sp)
    80007340:	05010413          	addi	s0,sp,80
    80007344:	06c05c63          	blez	a2,800073bc <consolewrite+0x9c>
    80007348:	00060993          	mv	s3,a2
    8000734c:	00050a13          	mv	s4,a0
    80007350:	00058493          	mv	s1,a1
    80007354:	00000913          	li	s2,0
    80007358:	fff00a93          	li	s5,-1
    8000735c:	01c0006f          	j	80007378 <consolewrite+0x58>
    80007360:	fbf44503          	lbu	a0,-65(s0)
    80007364:	0019091b          	addiw	s2,s2,1
    80007368:	00148493          	addi	s1,s1,1
    8000736c:	00001097          	auipc	ra,0x1
    80007370:	a9c080e7          	jalr	-1380(ra) # 80007e08 <uartputc>
    80007374:	03298063          	beq	s3,s2,80007394 <consolewrite+0x74>
    80007378:	00048613          	mv	a2,s1
    8000737c:	00100693          	li	a3,1
    80007380:	000a0593          	mv	a1,s4
    80007384:	fbf40513          	addi	a0,s0,-65
    80007388:	00000097          	auipc	ra,0x0
    8000738c:	9e4080e7          	jalr	-1564(ra) # 80006d6c <either_copyin>
    80007390:	fd5518e3          	bne	a0,s5,80007360 <consolewrite+0x40>
    80007394:	04813083          	ld	ra,72(sp)
    80007398:	04013403          	ld	s0,64(sp)
    8000739c:	03813483          	ld	s1,56(sp)
    800073a0:	02813983          	ld	s3,40(sp)
    800073a4:	02013a03          	ld	s4,32(sp)
    800073a8:	01813a83          	ld	s5,24(sp)
    800073ac:	00090513          	mv	a0,s2
    800073b0:	03013903          	ld	s2,48(sp)
    800073b4:	05010113          	addi	sp,sp,80
    800073b8:	00008067          	ret
    800073bc:	00000913          	li	s2,0
    800073c0:	fd5ff06f          	j	80007394 <consolewrite+0x74>

00000000800073c4 <consoleread>:
    800073c4:	f9010113          	addi	sp,sp,-112
    800073c8:	06813023          	sd	s0,96(sp)
    800073cc:	04913c23          	sd	s1,88(sp)
    800073d0:	05213823          	sd	s2,80(sp)
    800073d4:	05313423          	sd	s3,72(sp)
    800073d8:	05413023          	sd	s4,64(sp)
    800073dc:	03513c23          	sd	s5,56(sp)
    800073e0:	03613823          	sd	s6,48(sp)
    800073e4:	03713423          	sd	s7,40(sp)
    800073e8:	03813023          	sd	s8,32(sp)
    800073ec:	06113423          	sd	ra,104(sp)
    800073f0:	01913c23          	sd	s9,24(sp)
    800073f4:	07010413          	addi	s0,sp,112
    800073f8:	00060b93          	mv	s7,a2
    800073fc:	00050913          	mv	s2,a0
    80007400:	00058c13          	mv	s8,a1
    80007404:	00060b1b          	sext.w	s6,a2
    80007408:	00006497          	auipc	s1,0x6
    8000740c:	8e048493          	addi	s1,s1,-1824 # 8000cce8 <cons>
    80007410:	00400993          	li	s3,4
    80007414:	fff00a13          	li	s4,-1
    80007418:	00a00a93          	li	s5,10
    8000741c:	05705e63          	blez	s7,80007478 <consoleread+0xb4>
    80007420:	09c4a703          	lw	a4,156(s1)
    80007424:	0984a783          	lw	a5,152(s1)
    80007428:	0007071b          	sext.w	a4,a4
    8000742c:	08e78463          	beq	a5,a4,800074b4 <consoleread+0xf0>
    80007430:	07f7f713          	andi	a4,a5,127
    80007434:	00e48733          	add	a4,s1,a4
    80007438:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000743c:	0017869b          	addiw	a3,a5,1
    80007440:	08d4ac23          	sw	a3,152(s1)
    80007444:	00070c9b          	sext.w	s9,a4
    80007448:	0b370663          	beq	a4,s3,800074f4 <consoleread+0x130>
    8000744c:	00100693          	li	a3,1
    80007450:	f9f40613          	addi	a2,s0,-97
    80007454:	000c0593          	mv	a1,s8
    80007458:	00090513          	mv	a0,s2
    8000745c:	f8e40fa3          	sb	a4,-97(s0)
    80007460:	00000097          	auipc	ra,0x0
    80007464:	8c0080e7          	jalr	-1856(ra) # 80006d20 <either_copyout>
    80007468:	01450863          	beq	a0,s4,80007478 <consoleread+0xb4>
    8000746c:	001c0c13          	addi	s8,s8,1
    80007470:	fffb8b9b          	addiw	s7,s7,-1
    80007474:	fb5c94e3          	bne	s9,s5,8000741c <consoleread+0x58>
    80007478:	000b851b          	sext.w	a0,s7
    8000747c:	06813083          	ld	ra,104(sp)
    80007480:	06013403          	ld	s0,96(sp)
    80007484:	05813483          	ld	s1,88(sp)
    80007488:	05013903          	ld	s2,80(sp)
    8000748c:	04813983          	ld	s3,72(sp)
    80007490:	04013a03          	ld	s4,64(sp)
    80007494:	03813a83          	ld	s5,56(sp)
    80007498:	02813b83          	ld	s7,40(sp)
    8000749c:	02013c03          	ld	s8,32(sp)
    800074a0:	01813c83          	ld	s9,24(sp)
    800074a4:	40ab053b          	subw	a0,s6,a0
    800074a8:	03013b03          	ld	s6,48(sp)
    800074ac:	07010113          	addi	sp,sp,112
    800074b0:	00008067          	ret
    800074b4:	00001097          	auipc	ra,0x1
    800074b8:	1d8080e7          	jalr	472(ra) # 8000868c <push_on>
    800074bc:	0984a703          	lw	a4,152(s1)
    800074c0:	09c4a783          	lw	a5,156(s1)
    800074c4:	0007879b          	sext.w	a5,a5
    800074c8:	fef70ce3          	beq	a4,a5,800074c0 <consoleread+0xfc>
    800074cc:	00001097          	auipc	ra,0x1
    800074d0:	234080e7          	jalr	564(ra) # 80008700 <pop_on>
    800074d4:	0984a783          	lw	a5,152(s1)
    800074d8:	07f7f713          	andi	a4,a5,127
    800074dc:	00e48733          	add	a4,s1,a4
    800074e0:	01874703          	lbu	a4,24(a4)
    800074e4:	0017869b          	addiw	a3,a5,1
    800074e8:	08d4ac23          	sw	a3,152(s1)
    800074ec:	00070c9b          	sext.w	s9,a4
    800074f0:	f5371ee3          	bne	a4,s3,8000744c <consoleread+0x88>
    800074f4:	000b851b          	sext.w	a0,s7
    800074f8:	f96bf2e3          	bgeu	s7,s6,8000747c <consoleread+0xb8>
    800074fc:	08f4ac23          	sw	a5,152(s1)
    80007500:	f7dff06f          	j	8000747c <consoleread+0xb8>

0000000080007504 <consputc>:
    80007504:	10000793          	li	a5,256
    80007508:	00f50663          	beq	a0,a5,80007514 <consputc+0x10>
    8000750c:	00001317          	auipc	t1,0x1
    80007510:	9f430067          	jr	-1548(t1) # 80007f00 <uartputc_sync>
    80007514:	ff010113          	addi	sp,sp,-16
    80007518:	00113423          	sd	ra,8(sp)
    8000751c:	00813023          	sd	s0,0(sp)
    80007520:	01010413          	addi	s0,sp,16
    80007524:	00800513          	li	a0,8
    80007528:	00001097          	auipc	ra,0x1
    8000752c:	9d8080e7          	jalr	-1576(ra) # 80007f00 <uartputc_sync>
    80007530:	02000513          	li	a0,32
    80007534:	00001097          	auipc	ra,0x1
    80007538:	9cc080e7          	jalr	-1588(ra) # 80007f00 <uartputc_sync>
    8000753c:	00013403          	ld	s0,0(sp)
    80007540:	00813083          	ld	ra,8(sp)
    80007544:	00800513          	li	a0,8
    80007548:	01010113          	addi	sp,sp,16
    8000754c:	00001317          	auipc	t1,0x1
    80007550:	9b430067          	jr	-1612(t1) # 80007f00 <uartputc_sync>

0000000080007554 <consoleintr>:
    80007554:	fe010113          	addi	sp,sp,-32
    80007558:	00813823          	sd	s0,16(sp)
    8000755c:	00913423          	sd	s1,8(sp)
    80007560:	01213023          	sd	s2,0(sp)
    80007564:	00113c23          	sd	ra,24(sp)
    80007568:	02010413          	addi	s0,sp,32
    8000756c:	00005917          	auipc	s2,0x5
    80007570:	77c90913          	addi	s2,s2,1916 # 8000cce8 <cons>
    80007574:	00050493          	mv	s1,a0
    80007578:	00090513          	mv	a0,s2
    8000757c:	00001097          	auipc	ra,0x1
    80007580:	e40080e7          	jalr	-448(ra) # 800083bc <acquire>
    80007584:	02048c63          	beqz	s1,800075bc <consoleintr+0x68>
    80007588:	0a092783          	lw	a5,160(s2)
    8000758c:	09892703          	lw	a4,152(s2)
    80007590:	07f00693          	li	a3,127
    80007594:	40e7873b          	subw	a4,a5,a4
    80007598:	02e6e263          	bltu	a3,a4,800075bc <consoleintr+0x68>
    8000759c:	00d00713          	li	a4,13
    800075a0:	04e48063          	beq	s1,a4,800075e0 <consoleintr+0x8c>
    800075a4:	07f7f713          	andi	a4,a5,127
    800075a8:	00e90733          	add	a4,s2,a4
    800075ac:	0017879b          	addiw	a5,a5,1
    800075b0:	0af92023          	sw	a5,160(s2)
    800075b4:	00970c23          	sb	s1,24(a4)
    800075b8:	08f92e23          	sw	a5,156(s2)
    800075bc:	01013403          	ld	s0,16(sp)
    800075c0:	01813083          	ld	ra,24(sp)
    800075c4:	00813483          	ld	s1,8(sp)
    800075c8:	00013903          	ld	s2,0(sp)
    800075cc:	00005517          	auipc	a0,0x5
    800075d0:	71c50513          	addi	a0,a0,1820 # 8000cce8 <cons>
    800075d4:	02010113          	addi	sp,sp,32
    800075d8:	00001317          	auipc	t1,0x1
    800075dc:	eb030067          	jr	-336(t1) # 80008488 <release>
    800075e0:	00a00493          	li	s1,10
    800075e4:	fc1ff06f          	j	800075a4 <consoleintr+0x50>

00000000800075e8 <consoleinit>:
    800075e8:	fe010113          	addi	sp,sp,-32
    800075ec:	00113c23          	sd	ra,24(sp)
    800075f0:	00813823          	sd	s0,16(sp)
    800075f4:	00913423          	sd	s1,8(sp)
    800075f8:	02010413          	addi	s0,sp,32
    800075fc:	00005497          	auipc	s1,0x5
    80007600:	6ec48493          	addi	s1,s1,1772 # 8000cce8 <cons>
    80007604:	00048513          	mv	a0,s1
    80007608:	00002597          	auipc	a1,0x2
    8000760c:	f3058593          	addi	a1,a1,-208 # 80009538 <CONSOLE_STATUS+0x528>
    80007610:	00001097          	auipc	ra,0x1
    80007614:	d88080e7          	jalr	-632(ra) # 80008398 <initlock>
    80007618:	00000097          	auipc	ra,0x0
    8000761c:	7ac080e7          	jalr	1964(ra) # 80007dc4 <uartinit>
    80007620:	01813083          	ld	ra,24(sp)
    80007624:	01013403          	ld	s0,16(sp)
    80007628:	00000797          	auipc	a5,0x0
    8000762c:	d9c78793          	addi	a5,a5,-612 # 800073c4 <consoleread>
    80007630:	0af4bc23          	sd	a5,184(s1)
    80007634:	00000797          	auipc	a5,0x0
    80007638:	cec78793          	addi	a5,a5,-788 # 80007320 <consolewrite>
    8000763c:	0cf4b023          	sd	a5,192(s1)
    80007640:	00813483          	ld	s1,8(sp)
    80007644:	02010113          	addi	sp,sp,32
    80007648:	00008067          	ret

000000008000764c <console_read>:
    8000764c:	ff010113          	addi	sp,sp,-16
    80007650:	00813423          	sd	s0,8(sp)
    80007654:	01010413          	addi	s0,sp,16
    80007658:	00813403          	ld	s0,8(sp)
    8000765c:	00005317          	auipc	t1,0x5
    80007660:	74433303          	ld	t1,1860(t1) # 8000cda0 <devsw+0x10>
    80007664:	01010113          	addi	sp,sp,16
    80007668:	00030067          	jr	t1

000000008000766c <console_write>:
    8000766c:	ff010113          	addi	sp,sp,-16
    80007670:	00813423          	sd	s0,8(sp)
    80007674:	01010413          	addi	s0,sp,16
    80007678:	00813403          	ld	s0,8(sp)
    8000767c:	00005317          	auipc	t1,0x5
    80007680:	72c33303          	ld	t1,1836(t1) # 8000cda8 <devsw+0x18>
    80007684:	01010113          	addi	sp,sp,16
    80007688:	00030067          	jr	t1

000000008000768c <panic>:
    8000768c:	fe010113          	addi	sp,sp,-32
    80007690:	00113c23          	sd	ra,24(sp)
    80007694:	00813823          	sd	s0,16(sp)
    80007698:	00913423          	sd	s1,8(sp)
    8000769c:	02010413          	addi	s0,sp,32
    800076a0:	00050493          	mv	s1,a0
    800076a4:	00002517          	auipc	a0,0x2
    800076a8:	e9c50513          	addi	a0,a0,-356 # 80009540 <CONSOLE_STATUS+0x530>
    800076ac:	00005797          	auipc	a5,0x5
    800076b0:	7807ae23          	sw	zero,1948(a5) # 8000ce48 <pr+0x18>
    800076b4:	00000097          	auipc	ra,0x0
    800076b8:	034080e7          	jalr	52(ra) # 800076e8 <__printf>
    800076bc:	00048513          	mv	a0,s1
    800076c0:	00000097          	auipc	ra,0x0
    800076c4:	028080e7          	jalr	40(ra) # 800076e8 <__printf>
    800076c8:	00002517          	auipc	a0,0x2
    800076cc:	aa050513          	addi	a0,a0,-1376 # 80009168 <CONSOLE_STATUS+0x158>
    800076d0:	00000097          	auipc	ra,0x0
    800076d4:	018080e7          	jalr	24(ra) # 800076e8 <__printf>
    800076d8:	00100793          	li	a5,1
    800076dc:	00004717          	auipc	a4,0x4
    800076e0:	44f72e23          	sw	a5,1116(a4) # 8000bb38 <panicked>
    800076e4:	0000006f          	j	800076e4 <panic+0x58>

00000000800076e8 <__printf>:
    800076e8:	f3010113          	addi	sp,sp,-208
    800076ec:	08813023          	sd	s0,128(sp)
    800076f0:	07313423          	sd	s3,104(sp)
    800076f4:	09010413          	addi	s0,sp,144
    800076f8:	05813023          	sd	s8,64(sp)
    800076fc:	08113423          	sd	ra,136(sp)
    80007700:	06913c23          	sd	s1,120(sp)
    80007704:	07213823          	sd	s2,112(sp)
    80007708:	07413023          	sd	s4,96(sp)
    8000770c:	05513c23          	sd	s5,88(sp)
    80007710:	05613823          	sd	s6,80(sp)
    80007714:	05713423          	sd	s7,72(sp)
    80007718:	03913c23          	sd	s9,56(sp)
    8000771c:	03a13823          	sd	s10,48(sp)
    80007720:	03b13423          	sd	s11,40(sp)
    80007724:	00005317          	auipc	t1,0x5
    80007728:	70c30313          	addi	t1,t1,1804 # 8000ce30 <pr>
    8000772c:	01832c03          	lw	s8,24(t1)
    80007730:	00b43423          	sd	a1,8(s0)
    80007734:	00c43823          	sd	a2,16(s0)
    80007738:	00d43c23          	sd	a3,24(s0)
    8000773c:	02e43023          	sd	a4,32(s0)
    80007740:	02f43423          	sd	a5,40(s0)
    80007744:	03043823          	sd	a6,48(s0)
    80007748:	03143c23          	sd	a7,56(s0)
    8000774c:	00050993          	mv	s3,a0
    80007750:	4a0c1663          	bnez	s8,80007bfc <__printf+0x514>
    80007754:	60098c63          	beqz	s3,80007d6c <__printf+0x684>
    80007758:	0009c503          	lbu	a0,0(s3)
    8000775c:	00840793          	addi	a5,s0,8
    80007760:	f6f43c23          	sd	a5,-136(s0)
    80007764:	00000493          	li	s1,0
    80007768:	22050063          	beqz	a0,80007988 <__printf+0x2a0>
    8000776c:	00002a37          	lui	s4,0x2
    80007770:	00018ab7          	lui	s5,0x18
    80007774:	000f4b37          	lui	s6,0xf4
    80007778:	00989bb7          	lui	s7,0x989
    8000777c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007780:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007784:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007788:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000778c:	00148c9b          	addiw	s9,s1,1
    80007790:	02500793          	li	a5,37
    80007794:	01998933          	add	s2,s3,s9
    80007798:	38f51263          	bne	a0,a5,80007b1c <__printf+0x434>
    8000779c:	00094783          	lbu	a5,0(s2)
    800077a0:	00078c9b          	sext.w	s9,a5
    800077a4:	1e078263          	beqz	a5,80007988 <__printf+0x2a0>
    800077a8:	0024849b          	addiw	s1,s1,2
    800077ac:	07000713          	li	a4,112
    800077b0:	00998933          	add	s2,s3,s1
    800077b4:	38e78a63          	beq	a5,a4,80007b48 <__printf+0x460>
    800077b8:	20f76863          	bltu	a4,a5,800079c8 <__printf+0x2e0>
    800077bc:	42a78863          	beq	a5,a0,80007bec <__printf+0x504>
    800077c0:	06400713          	li	a4,100
    800077c4:	40e79663          	bne	a5,a4,80007bd0 <__printf+0x4e8>
    800077c8:	f7843783          	ld	a5,-136(s0)
    800077cc:	0007a603          	lw	a2,0(a5)
    800077d0:	00878793          	addi	a5,a5,8
    800077d4:	f6f43c23          	sd	a5,-136(s0)
    800077d8:	42064a63          	bltz	a2,80007c0c <__printf+0x524>
    800077dc:	00a00713          	li	a4,10
    800077e0:	02e677bb          	remuw	a5,a2,a4
    800077e4:	00002d97          	auipc	s11,0x2
    800077e8:	d84d8d93          	addi	s11,s11,-636 # 80009568 <digits>
    800077ec:	00900593          	li	a1,9
    800077f0:	0006051b          	sext.w	a0,a2
    800077f4:	00000c93          	li	s9,0
    800077f8:	02079793          	slli	a5,a5,0x20
    800077fc:	0207d793          	srli	a5,a5,0x20
    80007800:	00fd87b3          	add	a5,s11,a5
    80007804:	0007c783          	lbu	a5,0(a5)
    80007808:	02e656bb          	divuw	a3,a2,a4
    8000780c:	f8f40023          	sb	a5,-128(s0)
    80007810:	14c5d863          	bge	a1,a2,80007960 <__printf+0x278>
    80007814:	06300593          	li	a1,99
    80007818:	00100c93          	li	s9,1
    8000781c:	02e6f7bb          	remuw	a5,a3,a4
    80007820:	02079793          	slli	a5,a5,0x20
    80007824:	0207d793          	srli	a5,a5,0x20
    80007828:	00fd87b3          	add	a5,s11,a5
    8000782c:	0007c783          	lbu	a5,0(a5)
    80007830:	02e6d73b          	divuw	a4,a3,a4
    80007834:	f8f400a3          	sb	a5,-127(s0)
    80007838:	12a5f463          	bgeu	a1,a0,80007960 <__printf+0x278>
    8000783c:	00a00693          	li	a3,10
    80007840:	00900593          	li	a1,9
    80007844:	02d777bb          	remuw	a5,a4,a3
    80007848:	02079793          	slli	a5,a5,0x20
    8000784c:	0207d793          	srli	a5,a5,0x20
    80007850:	00fd87b3          	add	a5,s11,a5
    80007854:	0007c503          	lbu	a0,0(a5)
    80007858:	02d757bb          	divuw	a5,a4,a3
    8000785c:	f8a40123          	sb	a0,-126(s0)
    80007860:	48e5f263          	bgeu	a1,a4,80007ce4 <__printf+0x5fc>
    80007864:	06300513          	li	a0,99
    80007868:	02d7f5bb          	remuw	a1,a5,a3
    8000786c:	02059593          	slli	a1,a1,0x20
    80007870:	0205d593          	srli	a1,a1,0x20
    80007874:	00bd85b3          	add	a1,s11,a1
    80007878:	0005c583          	lbu	a1,0(a1)
    8000787c:	02d7d7bb          	divuw	a5,a5,a3
    80007880:	f8b401a3          	sb	a1,-125(s0)
    80007884:	48e57263          	bgeu	a0,a4,80007d08 <__printf+0x620>
    80007888:	3e700513          	li	a0,999
    8000788c:	02d7f5bb          	remuw	a1,a5,a3
    80007890:	02059593          	slli	a1,a1,0x20
    80007894:	0205d593          	srli	a1,a1,0x20
    80007898:	00bd85b3          	add	a1,s11,a1
    8000789c:	0005c583          	lbu	a1,0(a1)
    800078a0:	02d7d7bb          	divuw	a5,a5,a3
    800078a4:	f8b40223          	sb	a1,-124(s0)
    800078a8:	46e57663          	bgeu	a0,a4,80007d14 <__printf+0x62c>
    800078ac:	02d7f5bb          	remuw	a1,a5,a3
    800078b0:	02059593          	slli	a1,a1,0x20
    800078b4:	0205d593          	srli	a1,a1,0x20
    800078b8:	00bd85b3          	add	a1,s11,a1
    800078bc:	0005c583          	lbu	a1,0(a1)
    800078c0:	02d7d7bb          	divuw	a5,a5,a3
    800078c4:	f8b402a3          	sb	a1,-123(s0)
    800078c8:	46ea7863          	bgeu	s4,a4,80007d38 <__printf+0x650>
    800078cc:	02d7f5bb          	remuw	a1,a5,a3
    800078d0:	02059593          	slli	a1,a1,0x20
    800078d4:	0205d593          	srli	a1,a1,0x20
    800078d8:	00bd85b3          	add	a1,s11,a1
    800078dc:	0005c583          	lbu	a1,0(a1)
    800078e0:	02d7d7bb          	divuw	a5,a5,a3
    800078e4:	f8b40323          	sb	a1,-122(s0)
    800078e8:	3eeaf863          	bgeu	s5,a4,80007cd8 <__printf+0x5f0>
    800078ec:	02d7f5bb          	remuw	a1,a5,a3
    800078f0:	02059593          	slli	a1,a1,0x20
    800078f4:	0205d593          	srli	a1,a1,0x20
    800078f8:	00bd85b3          	add	a1,s11,a1
    800078fc:	0005c583          	lbu	a1,0(a1)
    80007900:	02d7d7bb          	divuw	a5,a5,a3
    80007904:	f8b403a3          	sb	a1,-121(s0)
    80007908:	42eb7e63          	bgeu	s6,a4,80007d44 <__printf+0x65c>
    8000790c:	02d7f5bb          	remuw	a1,a5,a3
    80007910:	02059593          	slli	a1,a1,0x20
    80007914:	0205d593          	srli	a1,a1,0x20
    80007918:	00bd85b3          	add	a1,s11,a1
    8000791c:	0005c583          	lbu	a1,0(a1)
    80007920:	02d7d7bb          	divuw	a5,a5,a3
    80007924:	f8b40423          	sb	a1,-120(s0)
    80007928:	42ebfc63          	bgeu	s7,a4,80007d60 <__printf+0x678>
    8000792c:	02079793          	slli	a5,a5,0x20
    80007930:	0207d793          	srli	a5,a5,0x20
    80007934:	00fd8db3          	add	s11,s11,a5
    80007938:	000dc703          	lbu	a4,0(s11)
    8000793c:	00a00793          	li	a5,10
    80007940:	00900c93          	li	s9,9
    80007944:	f8e404a3          	sb	a4,-119(s0)
    80007948:	00065c63          	bgez	a2,80007960 <__printf+0x278>
    8000794c:	f9040713          	addi	a4,s0,-112
    80007950:	00f70733          	add	a4,a4,a5
    80007954:	02d00693          	li	a3,45
    80007958:	fed70823          	sb	a3,-16(a4)
    8000795c:	00078c93          	mv	s9,a5
    80007960:	f8040793          	addi	a5,s0,-128
    80007964:	01978cb3          	add	s9,a5,s9
    80007968:	f7f40d13          	addi	s10,s0,-129
    8000796c:	000cc503          	lbu	a0,0(s9)
    80007970:	fffc8c93          	addi	s9,s9,-1
    80007974:	00000097          	auipc	ra,0x0
    80007978:	b90080e7          	jalr	-1136(ra) # 80007504 <consputc>
    8000797c:	ffac98e3          	bne	s9,s10,8000796c <__printf+0x284>
    80007980:	00094503          	lbu	a0,0(s2)
    80007984:	e00514e3          	bnez	a0,8000778c <__printf+0xa4>
    80007988:	1a0c1663          	bnez	s8,80007b34 <__printf+0x44c>
    8000798c:	08813083          	ld	ra,136(sp)
    80007990:	08013403          	ld	s0,128(sp)
    80007994:	07813483          	ld	s1,120(sp)
    80007998:	07013903          	ld	s2,112(sp)
    8000799c:	06813983          	ld	s3,104(sp)
    800079a0:	06013a03          	ld	s4,96(sp)
    800079a4:	05813a83          	ld	s5,88(sp)
    800079a8:	05013b03          	ld	s6,80(sp)
    800079ac:	04813b83          	ld	s7,72(sp)
    800079b0:	04013c03          	ld	s8,64(sp)
    800079b4:	03813c83          	ld	s9,56(sp)
    800079b8:	03013d03          	ld	s10,48(sp)
    800079bc:	02813d83          	ld	s11,40(sp)
    800079c0:	0d010113          	addi	sp,sp,208
    800079c4:	00008067          	ret
    800079c8:	07300713          	li	a4,115
    800079cc:	1ce78a63          	beq	a5,a4,80007ba0 <__printf+0x4b8>
    800079d0:	07800713          	li	a4,120
    800079d4:	1ee79e63          	bne	a5,a4,80007bd0 <__printf+0x4e8>
    800079d8:	f7843783          	ld	a5,-136(s0)
    800079dc:	0007a703          	lw	a4,0(a5)
    800079e0:	00878793          	addi	a5,a5,8
    800079e4:	f6f43c23          	sd	a5,-136(s0)
    800079e8:	28074263          	bltz	a4,80007c6c <__printf+0x584>
    800079ec:	00002d97          	auipc	s11,0x2
    800079f0:	b7cd8d93          	addi	s11,s11,-1156 # 80009568 <digits>
    800079f4:	00f77793          	andi	a5,a4,15
    800079f8:	00fd87b3          	add	a5,s11,a5
    800079fc:	0007c683          	lbu	a3,0(a5)
    80007a00:	00f00613          	li	a2,15
    80007a04:	0007079b          	sext.w	a5,a4
    80007a08:	f8d40023          	sb	a3,-128(s0)
    80007a0c:	0047559b          	srliw	a1,a4,0x4
    80007a10:	0047569b          	srliw	a3,a4,0x4
    80007a14:	00000c93          	li	s9,0
    80007a18:	0ee65063          	bge	a2,a4,80007af8 <__printf+0x410>
    80007a1c:	00f6f693          	andi	a3,a3,15
    80007a20:	00dd86b3          	add	a3,s11,a3
    80007a24:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007a28:	0087d79b          	srliw	a5,a5,0x8
    80007a2c:	00100c93          	li	s9,1
    80007a30:	f8d400a3          	sb	a3,-127(s0)
    80007a34:	0cb67263          	bgeu	a2,a1,80007af8 <__printf+0x410>
    80007a38:	00f7f693          	andi	a3,a5,15
    80007a3c:	00dd86b3          	add	a3,s11,a3
    80007a40:	0006c583          	lbu	a1,0(a3)
    80007a44:	00f00613          	li	a2,15
    80007a48:	0047d69b          	srliw	a3,a5,0x4
    80007a4c:	f8b40123          	sb	a1,-126(s0)
    80007a50:	0047d593          	srli	a1,a5,0x4
    80007a54:	28f67e63          	bgeu	a2,a5,80007cf0 <__printf+0x608>
    80007a58:	00f6f693          	andi	a3,a3,15
    80007a5c:	00dd86b3          	add	a3,s11,a3
    80007a60:	0006c503          	lbu	a0,0(a3)
    80007a64:	0087d813          	srli	a6,a5,0x8
    80007a68:	0087d69b          	srliw	a3,a5,0x8
    80007a6c:	f8a401a3          	sb	a0,-125(s0)
    80007a70:	28b67663          	bgeu	a2,a1,80007cfc <__printf+0x614>
    80007a74:	00f6f693          	andi	a3,a3,15
    80007a78:	00dd86b3          	add	a3,s11,a3
    80007a7c:	0006c583          	lbu	a1,0(a3)
    80007a80:	00c7d513          	srli	a0,a5,0xc
    80007a84:	00c7d69b          	srliw	a3,a5,0xc
    80007a88:	f8b40223          	sb	a1,-124(s0)
    80007a8c:	29067a63          	bgeu	a2,a6,80007d20 <__printf+0x638>
    80007a90:	00f6f693          	andi	a3,a3,15
    80007a94:	00dd86b3          	add	a3,s11,a3
    80007a98:	0006c583          	lbu	a1,0(a3)
    80007a9c:	0107d813          	srli	a6,a5,0x10
    80007aa0:	0107d69b          	srliw	a3,a5,0x10
    80007aa4:	f8b402a3          	sb	a1,-123(s0)
    80007aa8:	28a67263          	bgeu	a2,a0,80007d2c <__printf+0x644>
    80007aac:	00f6f693          	andi	a3,a3,15
    80007ab0:	00dd86b3          	add	a3,s11,a3
    80007ab4:	0006c683          	lbu	a3,0(a3)
    80007ab8:	0147d79b          	srliw	a5,a5,0x14
    80007abc:	f8d40323          	sb	a3,-122(s0)
    80007ac0:	21067663          	bgeu	a2,a6,80007ccc <__printf+0x5e4>
    80007ac4:	02079793          	slli	a5,a5,0x20
    80007ac8:	0207d793          	srli	a5,a5,0x20
    80007acc:	00fd8db3          	add	s11,s11,a5
    80007ad0:	000dc683          	lbu	a3,0(s11)
    80007ad4:	00800793          	li	a5,8
    80007ad8:	00700c93          	li	s9,7
    80007adc:	f8d403a3          	sb	a3,-121(s0)
    80007ae0:	00075c63          	bgez	a4,80007af8 <__printf+0x410>
    80007ae4:	f9040713          	addi	a4,s0,-112
    80007ae8:	00f70733          	add	a4,a4,a5
    80007aec:	02d00693          	li	a3,45
    80007af0:	fed70823          	sb	a3,-16(a4)
    80007af4:	00078c93          	mv	s9,a5
    80007af8:	f8040793          	addi	a5,s0,-128
    80007afc:	01978cb3          	add	s9,a5,s9
    80007b00:	f7f40d13          	addi	s10,s0,-129
    80007b04:	000cc503          	lbu	a0,0(s9)
    80007b08:	fffc8c93          	addi	s9,s9,-1
    80007b0c:	00000097          	auipc	ra,0x0
    80007b10:	9f8080e7          	jalr	-1544(ra) # 80007504 <consputc>
    80007b14:	ff9d18e3          	bne	s10,s9,80007b04 <__printf+0x41c>
    80007b18:	0100006f          	j	80007b28 <__printf+0x440>
    80007b1c:	00000097          	auipc	ra,0x0
    80007b20:	9e8080e7          	jalr	-1560(ra) # 80007504 <consputc>
    80007b24:	000c8493          	mv	s1,s9
    80007b28:	00094503          	lbu	a0,0(s2)
    80007b2c:	c60510e3          	bnez	a0,8000778c <__printf+0xa4>
    80007b30:	e40c0ee3          	beqz	s8,8000798c <__printf+0x2a4>
    80007b34:	00005517          	auipc	a0,0x5
    80007b38:	2fc50513          	addi	a0,a0,764 # 8000ce30 <pr>
    80007b3c:	00001097          	auipc	ra,0x1
    80007b40:	94c080e7          	jalr	-1716(ra) # 80008488 <release>
    80007b44:	e49ff06f          	j	8000798c <__printf+0x2a4>
    80007b48:	f7843783          	ld	a5,-136(s0)
    80007b4c:	03000513          	li	a0,48
    80007b50:	01000d13          	li	s10,16
    80007b54:	00878713          	addi	a4,a5,8
    80007b58:	0007bc83          	ld	s9,0(a5)
    80007b5c:	f6e43c23          	sd	a4,-136(s0)
    80007b60:	00000097          	auipc	ra,0x0
    80007b64:	9a4080e7          	jalr	-1628(ra) # 80007504 <consputc>
    80007b68:	07800513          	li	a0,120
    80007b6c:	00000097          	auipc	ra,0x0
    80007b70:	998080e7          	jalr	-1640(ra) # 80007504 <consputc>
    80007b74:	00002d97          	auipc	s11,0x2
    80007b78:	9f4d8d93          	addi	s11,s11,-1548 # 80009568 <digits>
    80007b7c:	03ccd793          	srli	a5,s9,0x3c
    80007b80:	00fd87b3          	add	a5,s11,a5
    80007b84:	0007c503          	lbu	a0,0(a5)
    80007b88:	fffd0d1b          	addiw	s10,s10,-1
    80007b8c:	004c9c93          	slli	s9,s9,0x4
    80007b90:	00000097          	auipc	ra,0x0
    80007b94:	974080e7          	jalr	-1676(ra) # 80007504 <consputc>
    80007b98:	fe0d12e3          	bnez	s10,80007b7c <__printf+0x494>
    80007b9c:	f8dff06f          	j	80007b28 <__printf+0x440>
    80007ba0:	f7843783          	ld	a5,-136(s0)
    80007ba4:	0007bc83          	ld	s9,0(a5)
    80007ba8:	00878793          	addi	a5,a5,8
    80007bac:	f6f43c23          	sd	a5,-136(s0)
    80007bb0:	000c9a63          	bnez	s9,80007bc4 <__printf+0x4dc>
    80007bb4:	1080006f          	j	80007cbc <__printf+0x5d4>
    80007bb8:	001c8c93          	addi	s9,s9,1
    80007bbc:	00000097          	auipc	ra,0x0
    80007bc0:	948080e7          	jalr	-1720(ra) # 80007504 <consputc>
    80007bc4:	000cc503          	lbu	a0,0(s9)
    80007bc8:	fe0518e3          	bnez	a0,80007bb8 <__printf+0x4d0>
    80007bcc:	f5dff06f          	j	80007b28 <__printf+0x440>
    80007bd0:	02500513          	li	a0,37
    80007bd4:	00000097          	auipc	ra,0x0
    80007bd8:	930080e7          	jalr	-1744(ra) # 80007504 <consputc>
    80007bdc:	000c8513          	mv	a0,s9
    80007be0:	00000097          	auipc	ra,0x0
    80007be4:	924080e7          	jalr	-1756(ra) # 80007504 <consputc>
    80007be8:	f41ff06f          	j	80007b28 <__printf+0x440>
    80007bec:	02500513          	li	a0,37
    80007bf0:	00000097          	auipc	ra,0x0
    80007bf4:	914080e7          	jalr	-1772(ra) # 80007504 <consputc>
    80007bf8:	f31ff06f          	j	80007b28 <__printf+0x440>
    80007bfc:	00030513          	mv	a0,t1
    80007c00:	00000097          	auipc	ra,0x0
    80007c04:	7bc080e7          	jalr	1980(ra) # 800083bc <acquire>
    80007c08:	b4dff06f          	j	80007754 <__printf+0x6c>
    80007c0c:	40c0053b          	negw	a0,a2
    80007c10:	00a00713          	li	a4,10
    80007c14:	02e576bb          	remuw	a3,a0,a4
    80007c18:	00002d97          	auipc	s11,0x2
    80007c1c:	950d8d93          	addi	s11,s11,-1712 # 80009568 <digits>
    80007c20:	ff700593          	li	a1,-9
    80007c24:	02069693          	slli	a3,a3,0x20
    80007c28:	0206d693          	srli	a3,a3,0x20
    80007c2c:	00dd86b3          	add	a3,s11,a3
    80007c30:	0006c683          	lbu	a3,0(a3)
    80007c34:	02e557bb          	divuw	a5,a0,a4
    80007c38:	f8d40023          	sb	a3,-128(s0)
    80007c3c:	10b65e63          	bge	a2,a1,80007d58 <__printf+0x670>
    80007c40:	06300593          	li	a1,99
    80007c44:	02e7f6bb          	remuw	a3,a5,a4
    80007c48:	02069693          	slli	a3,a3,0x20
    80007c4c:	0206d693          	srli	a3,a3,0x20
    80007c50:	00dd86b3          	add	a3,s11,a3
    80007c54:	0006c683          	lbu	a3,0(a3)
    80007c58:	02e7d73b          	divuw	a4,a5,a4
    80007c5c:	00200793          	li	a5,2
    80007c60:	f8d400a3          	sb	a3,-127(s0)
    80007c64:	bca5ece3          	bltu	a1,a0,8000783c <__printf+0x154>
    80007c68:	ce5ff06f          	j	8000794c <__printf+0x264>
    80007c6c:	40e007bb          	negw	a5,a4
    80007c70:	00002d97          	auipc	s11,0x2
    80007c74:	8f8d8d93          	addi	s11,s11,-1800 # 80009568 <digits>
    80007c78:	00f7f693          	andi	a3,a5,15
    80007c7c:	00dd86b3          	add	a3,s11,a3
    80007c80:	0006c583          	lbu	a1,0(a3)
    80007c84:	ff100613          	li	a2,-15
    80007c88:	0047d69b          	srliw	a3,a5,0x4
    80007c8c:	f8b40023          	sb	a1,-128(s0)
    80007c90:	0047d59b          	srliw	a1,a5,0x4
    80007c94:	0ac75e63          	bge	a4,a2,80007d50 <__printf+0x668>
    80007c98:	00f6f693          	andi	a3,a3,15
    80007c9c:	00dd86b3          	add	a3,s11,a3
    80007ca0:	0006c603          	lbu	a2,0(a3)
    80007ca4:	00f00693          	li	a3,15
    80007ca8:	0087d79b          	srliw	a5,a5,0x8
    80007cac:	f8c400a3          	sb	a2,-127(s0)
    80007cb0:	d8b6e4e3          	bltu	a3,a1,80007a38 <__printf+0x350>
    80007cb4:	00200793          	li	a5,2
    80007cb8:	e2dff06f          	j	80007ae4 <__printf+0x3fc>
    80007cbc:	00002c97          	auipc	s9,0x2
    80007cc0:	88cc8c93          	addi	s9,s9,-1908 # 80009548 <CONSOLE_STATUS+0x538>
    80007cc4:	02800513          	li	a0,40
    80007cc8:	ef1ff06f          	j	80007bb8 <__printf+0x4d0>
    80007ccc:	00700793          	li	a5,7
    80007cd0:	00600c93          	li	s9,6
    80007cd4:	e0dff06f          	j	80007ae0 <__printf+0x3f8>
    80007cd8:	00700793          	li	a5,7
    80007cdc:	00600c93          	li	s9,6
    80007ce0:	c69ff06f          	j	80007948 <__printf+0x260>
    80007ce4:	00300793          	li	a5,3
    80007ce8:	00200c93          	li	s9,2
    80007cec:	c5dff06f          	j	80007948 <__printf+0x260>
    80007cf0:	00300793          	li	a5,3
    80007cf4:	00200c93          	li	s9,2
    80007cf8:	de9ff06f          	j	80007ae0 <__printf+0x3f8>
    80007cfc:	00400793          	li	a5,4
    80007d00:	00300c93          	li	s9,3
    80007d04:	dddff06f          	j	80007ae0 <__printf+0x3f8>
    80007d08:	00400793          	li	a5,4
    80007d0c:	00300c93          	li	s9,3
    80007d10:	c39ff06f          	j	80007948 <__printf+0x260>
    80007d14:	00500793          	li	a5,5
    80007d18:	00400c93          	li	s9,4
    80007d1c:	c2dff06f          	j	80007948 <__printf+0x260>
    80007d20:	00500793          	li	a5,5
    80007d24:	00400c93          	li	s9,4
    80007d28:	db9ff06f          	j	80007ae0 <__printf+0x3f8>
    80007d2c:	00600793          	li	a5,6
    80007d30:	00500c93          	li	s9,5
    80007d34:	dadff06f          	j	80007ae0 <__printf+0x3f8>
    80007d38:	00600793          	li	a5,6
    80007d3c:	00500c93          	li	s9,5
    80007d40:	c09ff06f          	j	80007948 <__printf+0x260>
    80007d44:	00800793          	li	a5,8
    80007d48:	00700c93          	li	s9,7
    80007d4c:	bfdff06f          	j	80007948 <__printf+0x260>
    80007d50:	00100793          	li	a5,1
    80007d54:	d91ff06f          	j	80007ae4 <__printf+0x3fc>
    80007d58:	00100793          	li	a5,1
    80007d5c:	bf1ff06f          	j	8000794c <__printf+0x264>
    80007d60:	00900793          	li	a5,9
    80007d64:	00800c93          	li	s9,8
    80007d68:	be1ff06f          	j	80007948 <__printf+0x260>
    80007d6c:	00001517          	auipc	a0,0x1
    80007d70:	7e450513          	addi	a0,a0,2020 # 80009550 <CONSOLE_STATUS+0x540>
    80007d74:	00000097          	auipc	ra,0x0
    80007d78:	918080e7          	jalr	-1768(ra) # 8000768c <panic>

0000000080007d7c <printfinit>:
    80007d7c:	fe010113          	addi	sp,sp,-32
    80007d80:	00813823          	sd	s0,16(sp)
    80007d84:	00913423          	sd	s1,8(sp)
    80007d88:	00113c23          	sd	ra,24(sp)
    80007d8c:	02010413          	addi	s0,sp,32
    80007d90:	00005497          	auipc	s1,0x5
    80007d94:	0a048493          	addi	s1,s1,160 # 8000ce30 <pr>
    80007d98:	00048513          	mv	a0,s1
    80007d9c:	00001597          	auipc	a1,0x1
    80007da0:	7c458593          	addi	a1,a1,1988 # 80009560 <CONSOLE_STATUS+0x550>
    80007da4:	00000097          	auipc	ra,0x0
    80007da8:	5f4080e7          	jalr	1524(ra) # 80008398 <initlock>
    80007dac:	01813083          	ld	ra,24(sp)
    80007db0:	01013403          	ld	s0,16(sp)
    80007db4:	0004ac23          	sw	zero,24(s1)
    80007db8:	00813483          	ld	s1,8(sp)
    80007dbc:	02010113          	addi	sp,sp,32
    80007dc0:	00008067          	ret

0000000080007dc4 <uartinit>:
    80007dc4:	ff010113          	addi	sp,sp,-16
    80007dc8:	00813423          	sd	s0,8(sp)
    80007dcc:	01010413          	addi	s0,sp,16
    80007dd0:	100007b7          	lui	a5,0x10000
    80007dd4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007dd8:	f8000713          	li	a4,-128
    80007ddc:	00e781a3          	sb	a4,3(a5)
    80007de0:	00300713          	li	a4,3
    80007de4:	00e78023          	sb	a4,0(a5)
    80007de8:	000780a3          	sb	zero,1(a5)
    80007dec:	00e781a3          	sb	a4,3(a5)
    80007df0:	00700693          	li	a3,7
    80007df4:	00d78123          	sb	a3,2(a5)
    80007df8:	00e780a3          	sb	a4,1(a5)
    80007dfc:	00813403          	ld	s0,8(sp)
    80007e00:	01010113          	addi	sp,sp,16
    80007e04:	00008067          	ret

0000000080007e08 <uartputc>:
    80007e08:	00004797          	auipc	a5,0x4
    80007e0c:	d307a783          	lw	a5,-720(a5) # 8000bb38 <panicked>
    80007e10:	00078463          	beqz	a5,80007e18 <uartputc+0x10>
    80007e14:	0000006f          	j	80007e14 <uartputc+0xc>
    80007e18:	fd010113          	addi	sp,sp,-48
    80007e1c:	02813023          	sd	s0,32(sp)
    80007e20:	00913c23          	sd	s1,24(sp)
    80007e24:	01213823          	sd	s2,16(sp)
    80007e28:	01313423          	sd	s3,8(sp)
    80007e2c:	02113423          	sd	ra,40(sp)
    80007e30:	03010413          	addi	s0,sp,48
    80007e34:	00004917          	auipc	s2,0x4
    80007e38:	d0c90913          	addi	s2,s2,-756 # 8000bb40 <uart_tx_r>
    80007e3c:	00093783          	ld	a5,0(s2)
    80007e40:	00004497          	auipc	s1,0x4
    80007e44:	d0848493          	addi	s1,s1,-760 # 8000bb48 <uart_tx_w>
    80007e48:	0004b703          	ld	a4,0(s1)
    80007e4c:	02078693          	addi	a3,a5,32
    80007e50:	00050993          	mv	s3,a0
    80007e54:	02e69c63          	bne	a3,a4,80007e8c <uartputc+0x84>
    80007e58:	00001097          	auipc	ra,0x1
    80007e5c:	834080e7          	jalr	-1996(ra) # 8000868c <push_on>
    80007e60:	00093783          	ld	a5,0(s2)
    80007e64:	0004b703          	ld	a4,0(s1)
    80007e68:	02078793          	addi	a5,a5,32
    80007e6c:	00e79463          	bne	a5,a4,80007e74 <uartputc+0x6c>
    80007e70:	0000006f          	j	80007e70 <uartputc+0x68>
    80007e74:	00001097          	auipc	ra,0x1
    80007e78:	88c080e7          	jalr	-1908(ra) # 80008700 <pop_on>
    80007e7c:	00093783          	ld	a5,0(s2)
    80007e80:	0004b703          	ld	a4,0(s1)
    80007e84:	02078693          	addi	a3,a5,32
    80007e88:	fce688e3          	beq	a3,a4,80007e58 <uartputc+0x50>
    80007e8c:	01f77693          	andi	a3,a4,31
    80007e90:	00005597          	auipc	a1,0x5
    80007e94:	fc058593          	addi	a1,a1,-64 # 8000ce50 <uart_tx_buf>
    80007e98:	00d586b3          	add	a3,a1,a3
    80007e9c:	00170713          	addi	a4,a4,1
    80007ea0:	01368023          	sb	s3,0(a3)
    80007ea4:	00e4b023          	sd	a4,0(s1)
    80007ea8:	10000637          	lui	a2,0x10000
    80007eac:	02f71063          	bne	a4,a5,80007ecc <uartputc+0xc4>
    80007eb0:	0340006f          	j	80007ee4 <uartputc+0xdc>
    80007eb4:	00074703          	lbu	a4,0(a4)
    80007eb8:	00f93023          	sd	a5,0(s2)
    80007ebc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007ec0:	00093783          	ld	a5,0(s2)
    80007ec4:	0004b703          	ld	a4,0(s1)
    80007ec8:	00f70e63          	beq	a4,a5,80007ee4 <uartputc+0xdc>
    80007ecc:	00564683          	lbu	a3,5(a2)
    80007ed0:	01f7f713          	andi	a4,a5,31
    80007ed4:	00e58733          	add	a4,a1,a4
    80007ed8:	0206f693          	andi	a3,a3,32
    80007edc:	00178793          	addi	a5,a5,1
    80007ee0:	fc069ae3          	bnez	a3,80007eb4 <uartputc+0xac>
    80007ee4:	02813083          	ld	ra,40(sp)
    80007ee8:	02013403          	ld	s0,32(sp)
    80007eec:	01813483          	ld	s1,24(sp)
    80007ef0:	01013903          	ld	s2,16(sp)
    80007ef4:	00813983          	ld	s3,8(sp)
    80007ef8:	03010113          	addi	sp,sp,48
    80007efc:	00008067          	ret

0000000080007f00 <uartputc_sync>:
    80007f00:	ff010113          	addi	sp,sp,-16
    80007f04:	00813423          	sd	s0,8(sp)
    80007f08:	01010413          	addi	s0,sp,16
    80007f0c:	00004717          	auipc	a4,0x4
    80007f10:	c2c72703          	lw	a4,-980(a4) # 8000bb38 <panicked>
    80007f14:	02071663          	bnez	a4,80007f40 <uartputc_sync+0x40>
    80007f18:	00050793          	mv	a5,a0
    80007f1c:	100006b7          	lui	a3,0x10000
    80007f20:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007f24:	02077713          	andi	a4,a4,32
    80007f28:	fe070ce3          	beqz	a4,80007f20 <uartputc_sync+0x20>
    80007f2c:	0ff7f793          	andi	a5,a5,255
    80007f30:	00f68023          	sb	a5,0(a3)
    80007f34:	00813403          	ld	s0,8(sp)
    80007f38:	01010113          	addi	sp,sp,16
    80007f3c:	00008067          	ret
    80007f40:	0000006f          	j	80007f40 <uartputc_sync+0x40>

0000000080007f44 <uartstart>:
    80007f44:	ff010113          	addi	sp,sp,-16
    80007f48:	00813423          	sd	s0,8(sp)
    80007f4c:	01010413          	addi	s0,sp,16
    80007f50:	00004617          	auipc	a2,0x4
    80007f54:	bf060613          	addi	a2,a2,-1040 # 8000bb40 <uart_tx_r>
    80007f58:	00004517          	auipc	a0,0x4
    80007f5c:	bf050513          	addi	a0,a0,-1040 # 8000bb48 <uart_tx_w>
    80007f60:	00063783          	ld	a5,0(a2)
    80007f64:	00053703          	ld	a4,0(a0)
    80007f68:	04f70263          	beq	a4,a5,80007fac <uartstart+0x68>
    80007f6c:	100005b7          	lui	a1,0x10000
    80007f70:	00005817          	auipc	a6,0x5
    80007f74:	ee080813          	addi	a6,a6,-288 # 8000ce50 <uart_tx_buf>
    80007f78:	01c0006f          	j	80007f94 <uartstart+0x50>
    80007f7c:	0006c703          	lbu	a4,0(a3)
    80007f80:	00f63023          	sd	a5,0(a2)
    80007f84:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007f88:	00063783          	ld	a5,0(a2)
    80007f8c:	00053703          	ld	a4,0(a0)
    80007f90:	00f70e63          	beq	a4,a5,80007fac <uartstart+0x68>
    80007f94:	01f7f713          	andi	a4,a5,31
    80007f98:	00e806b3          	add	a3,a6,a4
    80007f9c:	0055c703          	lbu	a4,5(a1)
    80007fa0:	00178793          	addi	a5,a5,1
    80007fa4:	02077713          	andi	a4,a4,32
    80007fa8:	fc071ae3          	bnez	a4,80007f7c <uartstart+0x38>
    80007fac:	00813403          	ld	s0,8(sp)
    80007fb0:	01010113          	addi	sp,sp,16
    80007fb4:	00008067          	ret

0000000080007fb8 <uartgetc>:
    80007fb8:	ff010113          	addi	sp,sp,-16
    80007fbc:	00813423          	sd	s0,8(sp)
    80007fc0:	01010413          	addi	s0,sp,16
    80007fc4:	10000737          	lui	a4,0x10000
    80007fc8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80007fcc:	0017f793          	andi	a5,a5,1
    80007fd0:	00078c63          	beqz	a5,80007fe8 <uartgetc+0x30>
    80007fd4:	00074503          	lbu	a0,0(a4)
    80007fd8:	0ff57513          	andi	a0,a0,255
    80007fdc:	00813403          	ld	s0,8(sp)
    80007fe0:	01010113          	addi	sp,sp,16
    80007fe4:	00008067          	ret
    80007fe8:	fff00513          	li	a0,-1
    80007fec:	ff1ff06f          	j	80007fdc <uartgetc+0x24>

0000000080007ff0 <uartintr>:
    80007ff0:	100007b7          	lui	a5,0x10000
    80007ff4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007ff8:	0017f793          	andi	a5,a5,1
    80007ffc:	0a078463          	beqz	a5,800080a4 <uartintr+0xb4>
    80008000:	fe010113          	addi	sp,sp,-32
    80008004:	00813823          	sd	s0,16(sp)
    80008008:	00913423          	sd	s1,8(sp)
    8000800c:	00113c23          	sd	ra,24(sp)
    80008010:	02010413          	addi	s0,sp,32
    80008014:	100004b7          	lui	s1,0x10000
    80008018:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000801c:	0ff57513          	andi	a0,a0,255
    80008020:	fffff097          	auipc	ra,0xfffff
    80008024:	534080e7          	jalr	1332(ra) # 80007554 <consoleintr>
    80008028:	0054c783          	lbu	a5,5(s1)
    8000802c:	0017f793          	andi	a5,a5,1
    80008030:	fe0794e3          	bnez	a5,80008018 <uartintr+0x28>
    80008034:	00004617          	auipc	a2,0x4
    80008038:	b0c60613          	addi	a2,a2,-1268 # 8000bb40 <uart_tx_r>
    8000803c:	00004517          	auipc	a0,0x4
    80008040:	b0c50513          	addi	a0,a0,-1268 # 8000bb48 <uart_tx_w>
    80008044:	00063783          	ld	a5,0(a2)
    80008048:	00053703          	ld	a4,0(a0)
    8000804c:	04f70263          	beq	a4,a5,80008090 <uartintr+0xa0>
    80008050:	100005b7          	lui	a1,0x10000
    80008054:	00005817          	auipc	a6,0x5
    80008058:	dfc80813          	addi	a6,a6,-516 # 8000ce50 <uart_tx_buf>
    8000805c:	01c0006f          	j	80008078 <uartintr+0x88>
    80008060:	0006c703          	lbu	a4,0(a3)
    80008064:	00f63023          	sd	a5,0(a2)
    80008068:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000806c:	00063783          	ld	a5,0(a2)
    80008070:	00053703          	ld	a4,0(a0)
    80008074:	00f70e63          	beq	a4,a5,80008090 <uartintr+0xa0>
    80008078:	01f7f713          	andi	a4,a5,31
    8000807c:	00e806b3          	add	a3,a6,a4
    80008080:	0055c703          	lbu	a4,5(a1)
    80008084:	00178793          	addi	a5,a5,1
    80008088:	02077713          	andi	a4,a4,32
    8000808c:	fc071ae3          	bnez	a4,80008060 <uartintr+0x70>
    80008090:	01813083          	ld	ra,24(sp)
    80008094:	01013403          	ld	s0,16(sp)
    80008098:	00813483          	ld	s1,8(sp)
    8000809c:	02010113          	addi	sp,sp,32
    800080a0:	00008067          	ret
    800080a4:	00004617          	auipc	a2,0x4
    800080a8:	a9c60613          	addi	a2,a2,-1380 # 8000bb40 <uart_tx_r>
    800080ac:	00004517          	auipc	a0,0x4
    800080b0:	a9c50513          	addi	a0,a0,-1380 # 8000bb48 <uart_tx_w>
    800080b4:	00063783          	ld	a5,0(a2)
    800080b8:	00053703          	ld	a4,0(a0)
    800080bc:	04f70263          	beq	a4,a5,80008100 <uartintr+0x110>
    800080c0:	100005b7          	lui	a1,0x10000
    800080c4:	00005817          	auipc	a6,0x5
    800080c8:	d8c80813          	addi	a6,a6,-628 # 8000ce50 <uart_tx_buf>
    800080cc:	01c0006f          	j	800080e8 <uartintr+0xf8>
    800080d0:	0006c703          	lbu	a4,0(a3)
    800080d4:	00f63023          	sd	a5,0(a2)
    800080d8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800080dc:	00063783          	ld	a5,0(a2)
    800080e0:	00053703          	ld	a4,0(a0)
    800080e4:	02f70063          	beq	a4,a5,80008104 <uartintr+0x114>
    800080e8:	01f7f713          	andi	a4,a5,31
    800080ec:	00e806b3          	add	a3,a6,a4
    800080f0:	0055c703          	lbu	a4,5(a1)
    800080f4:	00178793          	addi	a5,a5,1
    800080f8:	02077713          	andi	a4,a4,32
    800080fc:	fc071ae3          	bnez	a4,800080d0 <uartintr+0xe0>
    80008100:	00008067          	ret
    80008104:	00008067          	ret

0000000080008108 <kinit>:
    80008108:	fc010113          	addi	sp,sp,-64
    8000810c:	02913423          	sd	s1,40(sp)
    80008110:	fffff7b7          	lui	a5,0xfffff
    80008114:	00006497          	auipc	s1,0x6
    80008118:	d5b48493          	addi	s1,s1,-677 # 8000de6f <end+0xfff>
    8000811c:	02813823          	sd	s0,48(sp)
    80008120:	01313c23          	sd	s3,24(sp)
    80008124:	00f4f4b3          	and	s1,s1,a5
    80008128:	02113c23          	sd	ra,56(sp)
    8000812c:	03213023          	sd	s2,32(sp)
    80008130:	01413823          	sd	s4,16(sp)
    80008134:	01513423          	sd	s5,8(sp)
    80008138:	04010413          	addi	s0,sp,64
    8000813c:	000017b7          	lui	a5,0x1
    80008140:	01100993          	li	s3,17
    80008144:	00f487b3          	add	a5,s1,a5
    80008148:	01b99993          	slli	s3,s3,0x1b
    8000814c:	06f9e063          	bltu	s3,a5,800081ac <kinit+0xa4>
    80008150:	00005a97          	auipc	s5,0x5
    80008154:	d20a8a93          	addi	s5,s5,-736 # 8000ce70 <end>
    80008158:	0754ec63          	bltu	s1,s5,800081d0 <kinit+0xc8>
    8000815c:	0734fa63          	bgeu	s1,s3,800081d0 <kinit+0xc8>
    80008160:	00088a37          	lui	s4,0x88
    80008164:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80008168:	00004917          	auipc	s2,0x4
    8000816c:	9e890913          	addi	s2,s2,-1560 # 8000bb50 <kmem>
    80008170:	00ca1a13          	slli	s4,s4,0xc
    80008174:	0140006f          	j	80008188 <kinit+0x80>
    80008178:	000017b7          	lui	a5,0x1
    8000817c:	00f484b3          	add	s1,s1,a5
    80008180:	0554e863          	bltu	s1,s5,800081d0 <kinit+0xc8>
    80008184:	0534f663          	bgeu	s1,s3,800081d0 <kinit+0xc8>
    80008188:	00001637          	lui	a2,0x1
    8000818c:	00100593          	li	a1,1
    80008190:	00048513          	mv	a0,s1
    80008194:	00000097          	auipc	ra,0x0
    80008198:	5e4080e7          	jalr	1508(ra) # 80008778 <__memset>
    8000819c:	00093783          	ld	a5,0(s2)
    800081a0:	00f4b023          	sd	a5,0(s1)
    800081a4:	00993023          	sd	s1,0(s2)
    800081a8:	fd4498e3          	bne	s1,s4,80008178 <kinit+0x70>
    800081ac:	03813083          	ld	ra,56(sp)
    800081b0:	03013403          	ld	s0,48(sp)
    800081b4:	02813483          	ld	s1,40(sp)
    800081b8:	02013903          	ld	s2,32(sp)
    800081bc:	01813983          	ld	s3,24(sp)
    800081c0:	01013a03          	ld	s4,16(sp)
    800081c4:	00813a83          	ld	s5,8(sp)
    800081c8:	04010113          	addi	sp,sp,64
    800081cc:	00008067          	ret
    800081d0:	00001517          	auipc	a0,0x1
    800081d4:	3b050513          	addi	a0,a0,944 # 80009580 <digits+0x18>
    800081d8:	fffff097          	auipc	ra,0xfffff
    800081dc:	4b4080e7          	jalr	1204(ra) # 8000768c <panic>

00000000800081e0 <freerange>:
    800081e0:	fc010113          	addi	sp,sp,-64
    800081e4:	000017b7          	lui	a5,0x1
    800081e8:	02913423          	sd	s1,40(sp)
    800081ec:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800081f0:	009504b3          	add	s1,a0,s1
    800081f4:	fffff537          	lui	a0,0xfffff
    800081f8:	02813823          	sd	s0,48(sp)
    800081fc:	02113c23          	sd	ra,56(sp)
    80008200:	03213023          	sd	s2,32(sp)
    80008204:	01313c23          	sd	s3,24(sp)
    80008208:	01413823          	sd	s4,16(sp)
    8000820c:	01513423          	sd	s5,8(sp)
    80008210:	01613023          	sd	s6,0(sp)
    80008214:	04010413          	addi	s0,sp,64
    80008218:	00a4f4b3          	and	s1,s1,a0
    8000821c:	00f487b3          	add	a5,s1,a5
    80008220:	06f5e463          	bltu	a1,a5,80008288 <freerange+0xa8>
    80008224:	00005a97          	auipc	s5,0x5
    80008228:	c4ca8a93          	addi	s5,s5,-948 # 8000ce70 <end>
    8000822c:	0954e263          	bltu	s1,s5,800082b0 <freerange+0xd0>
    80008230:	01100993          	li	s3,17
    80008234:	01b99993          	slli	s3,s3,0x1b
    80008238:	0734fc63          	bgeu	s1,s3,800082b0 <freerange+0xd0>
    8000823c:	00058a13          	mv	s4,a1
    80008240:	00004917          	auipc	s2,0x4
    80008244:	91090913          	addi	s2,s2,-1776 # 8000bb50 <kmem>
    80008248:	00002b37          	lui	s6,0x2
    8000824c:	0140006f          	j	80008260 <freerange+0x80>
    80008250:	000017b7          	lui	a5,0x1
    80008254:	00f484b3          	add	s1,s1,a5
    80008258:	0554ec63          	bltu	s1,s5,800082b0 <freerange+0xd0>
    8000825c:	0534fa63          	bgeu	s1,s3,800082b0 <freerange+0xd0>
    80008260:	00001637          	lui	a2,0x1
    80008264:	00100593          	li	a1,1
    80008268:	00048513          	mv	a0,s1
    8000826c:	00000097          	auipc	ra,0x0
    80008270:	50c080e7          	jalr	1292(ra) # 80008778 <__memset>
    80008274:	00093703          	ld	a4,0(s2)
    80008278:	016487b3          	add	a5,s1,s6
    8000827c:	00e4b023          	sd	a4,0(s1)
    80008280:	00993023          	sd	s1,0(s2)
    80008284:	fcfa76e3          	bgeu	s4,a5,80008250 <freerange+0x70>
    80008288:	03813083          	ld	ra,56(sp)
    8000828c:	03013403          	ld	s0,48(sp)
    80008290:	02813483          	ld	s1,40(sp)
    80008294:	02013903          	ld	s2,32(sp)
    80008298:	01813983          	ld	s3,24(sp)
    8000829c:	01013a03          	ld	s4,16(sp)
    800082a0:	00813a83          	ld	s5,8(sp)
    800082a4:	00013b03          	ld	s6,0(sp)
    800082a8:	04010113          	addi	sp,sp,64
    800082ac:	00008067          	ret
    800082b0:	00001517          	auipc	a0,0x1
    800082b4:	2d050513          	addi	a0,a0,720 # 80009580 <digits+0x18>
    800082b8:	fffff097          	auipc	ra,0xfffff
    800082bc:	3d4080e7          	jalr	980(ra) # 8000768c <panic>

00000000800082c0 <kfree>:
    800082c0:	fe010113          	addi	sp,sp,-32
    800082c4:	00813823          	sd	s0,16(sp)
    800082c8:	00113c23          	sd	ra,24(sp)
    800082cc:	00913423          	sd	s1,8(sp)
    800082d0:	02010413          	addi	s0,sp,32
    800082d4:	03451793          	slli	a5,a0,0x34
    800082d8:	04079c63          	bnez	a5,80008330 <kfree+0x70>
    800082dc:	00005797          	auipc	a5,0x5
    800082e0:	b9478793          	addi	a5,a5,-1132 # 8000ce70 <end>
    800082e4:	00050493          	mv	s1,a0
    800082e8:	04f56463          	bltu	a0,a5,80008330 <kfree+0x70>
    800082ec:	01100793          	li	a5,17
    800082f0:	01b79793          	slli	a5,a5,0x1b
    800082f4:	02f57e63          	bgeu	a0,a5,80008330 <kfree+0x70>
    800082f8:	00001637          	lui	a2,0x1
    800082fc:	00100593          	li	a1,1
    80008300:	00000097          	auipc	ra,0x0
    80008304:	478080e7          	jalr	1144(ra) # 80008778 <__memset>
    80008308:	00004797          	auipc	a5,0x4
    8000830c:	84878793          	addi	a5,a5,-1976 # 8000bb50 <kmem>
    80008310:	0007b703          	ld	a4,0(a5)
    80008314:	01813083          	ld	ra,24(sp)
    80008318:	01013403          	ld	s0,16(sp)
    8000831c:	00e4b023          	sd	a4,0(s1)
    80008320:	0097b023          	sd	s1,0(a5)
    80008324:	00813483          	ld	s1,8(sp)
    80008328:	02010113          	addi	sp,sp,32
    8000832c:	00008067          	ret
    80008330:	00001517          	auipc	a0,0x1
    80008334:	25050513          	addi	a0,a0,592 # 80009580 <digits+0x18>
    80008338:	fffff097          	auipc	ra,0xfffff
    8000833c:	354080e7          	jalr	852(ra) # 8000768c <panic>

0000000080008340 <kalloc>:
    80008340:	fe010113          	addi	sp,sp,-32
    80008344:	00813823          	sd	s0,16(sp)
    80008348:	00913423          	sd	s1,8(sp)
    8000834c:	00113c23          	sd	ra,24(sp)
    80008350:	02010413          	addi	s0,sp,32
    80008354:	00003797          	auipc	a5,0x3
    80008358:	7fc78793          	addi	a5,a5,2044 # 8000bb50 <kmem>
    8000835c:	0007b483          	ld	s1,0(a5)
    80008360:	02048063          	beqz	s1,80008380 <kalloc+0x40>
    80008364:	0004b703          	ld	a4,0(s1)
    80008368:	00001637          	lui	a2,0x1
    8000836c:	00500593          	li	a1,5
    80008370:	00048513          	mv	a0,s1
    80008374:	00e7b023          	sd	a4,0(a5)
    80008378:	00000097          	auipc	ra,0x0
    8000837c:	400080e7          	jalr	1024(ra) # 80008778 <__memset>
    80008380:	01813083          	ld	ra,24(sp)
    80008384:	01013403          	ld	s0,16(sp)
    80008388:	00048513          	mv	a0,s1
    8000838c:	00813483          	ld	s1,8(sp)
    80008390:	02010113          	addi	sp,sp,32
    80008394:	00008067          	ret

0000000080008398 <initlock>:
    80008398:	ff010113          	addi	sp,sp,-16
    8000839c:	00813423          	sd	s0,8(sp)
    800083a0:	01010413          	addi	s0,sp,16
    800083a4:	00813403          	ld	s0,8(sp)
    800083a8:	00b53423          	sd	a1,8(a0)
    800083ac:	00052023          	sw	zero,0(a0)
    800083b0:	00053823          	sd	zero,16(a0)
    800083b4:	01010113          	addi	sp,sp,16
    800083b8:	00008067          	ret

00000000800083bc <acquire>:
    800083bc:	fe010113          	addi	sp,sp,-32
    800083c0:	00813823          	sd	s0,16(sp)
    800083c4:	00913423          	sd	s1,8(sp)
    800083c8:	00113c23          	sd	ra,24(sp)
    800083cc:	01213023          	sd	s2,0(sp)
    800083d0:	02010413          	addi	s0,sp,32
    800083d4:	00050493          	mv	s1,a0
    800083d8:	10002973          	csrr	s2,sstatus
    800083dc:	100027f3          	csrr	a5,sstatus
    800083e0:	ffd7f793          	andi	a5,a5,-3
    800083e4:	10079073          	csrw	sstatus,a5
    800083e8:	fffff097          	auipc	ra,0xfffff
    800083ec:	8ec080e7          	jalr	-1812(ra) # 80006cd4 <mycpu>
    800083f0:	07852783          	lw	a5,120(a0)
    800083f4:	06078e63          	beqz	a5,80008470 <acquire+0xb4>
    800083f8:	fffff097          	auipc	ra,0xfffff
    800083fc:	8dc080e7          	jalr	-1828(ra) # 80006cd4 <mycpu>
    80008400:	07852783          	lw	a5,120(a0)
    80008404:	0004a703          	lw	a4,0(s1)
    80008408:	0017879b          	addiw	a5,a5,1
    8000840c:	06f52c23          	sw	a5,120(a0)
    80008410:	04071063          	bnez	a4,80008450 <acquire+0x94>
    80008414:	00100713          	li	a4,1
    80008418:	00070793          	mv	a5,a4
    8000841c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008420:	0007879b          	sext.w	a5,a5
    80008424:	fe079ae3          	bnez	a5,80008418 <acquire+0x5c>
    80008428:	0ff0000f          	fence
    8000842c:	fffff097          	auipc	ra,0xfffff
    80008430:	8a8080e7          	jalr	-1880(ra) # 80006cd4 <mycpu>
    80008434:	01813083          	ld	ra,24(sp)
    80008438:	01013403          	ld	s0,16(sp)
    8000843c:	00a4b823          	sd	a0,16(s1)
    80008440:	00013903          	ld	s2,0(sp)
    80008444:	00813483          	ld	s1,8(sp)
    80008448:	02010113          	addi	sp,sp,32
    8000844c:	00008067          	ret
    80008450:	0104b903          	ld	s2,16(s1)
    80008454:	fffff097          	auipc	ra,0xfffff
    80008458:	880080e7          	jalr	-1920(ra) # 80006cd4 <mycpu>
    8000845c:	faa91ce3          	bne	s2,a0,80008414 <acquire+0x58>
    80008460:	00001517          	auipc	a0,0x1
    80008464:	12850513          	addi	a0,a0,296 # 80009588 <digits+0x20>
    80008468:	fffff097          	auipc	ra,0xfffff
    8000846c:	224080e7          	jalr	548(ra) # 8000768c <panic>
    80008470:	00195913          	srli	s2,s2,0x1
    80008474:	fffff097          	auipc	ra,0xfffff
    80008478:	860080e7          	jalr	-1952(ra) # 80006cd4 <mycpu>
    8000847c:	00197913          	andi	s2,s2,1
    80008480:	07252e23          	sw	s2,124(a0)
    80008484:	f75ff06f          	j	800083f8 <acquire+0x3c>

0000000080008488 <release>:
    80008488:	fe010113          	addi	sp,sp,-32
    8000848c:	00813823          	sd	s0,16(sp)
    80008490:	00113c23          	sd	ra,24(sp)
    80008494:	00913423          	sd	s1,8(sp)
    80008498:	01213023          	sd	s2,0(sp)
    8000849c:	02010413          	addi	s0,sp,32
    800084a0:	00052783          	lw	a5,0(a0)
    800084a4:	00079a63          	bnez	a5,800084b8 <release+0x30>
    800084a8:	00001517          	auipc	a0,0x1
    800084ac:	0e850513          	addi	a0,a0,232 # 80009590 <digits+0x28>
    800084b0:	fffff097          	auipc	ra,0xfffff
    800084b4:	1dc080e7          	jalr	476(ra) # 8000768c <panic>
    800084b8:	01053903          	ld	s2,16(a0)
    800084bc:	00050493          	mv	s1,a0
    800084c0:	fffff097          	auipc	ra,0xfffff
    800084c4:	814080e7          	jalr	-2028(ra) # 80006cd4 <mycpu>
    800084c8:	fea910e3          	bne	s2,a0,800084a8 <release+0x20>
    800084cc:	0004b823          	sd	zero,16(s1)
    800084d0:	0ff0000f          	fence
    800084d4:	0f50000f          	fence	iorw,ow
    800084d8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800084dc:	ffffe097          	auipc	ra,0xffffe
    800084e0:	7f8080e7          	jalr	2040(ra) # 80006cd4 <mycpu>
    800084e4:	100027f3          	csrr	a5,sstatus
    800084e8:	0027f793          	andi	a5,a5,2
    800084ec:	04079a63          	bnez	a5,80008540 <release+0xb8>
    800084f0:	07852783          	lw	a5,120(a0)
    800084f4:	02f05e63          	blez	a5,80008530 <release+0xa8>
    800084f8:	fff7871b          	addiw	a4,a5,-1
    800084fc:	06e52c23          	sw	a4,120(a0)
    80008500:	00071c63          	bnez	a4,80008518 <release+0x90>
    80008504:	07c52783          	lw	a5,124(a0)
    80008508:	00078863          	beqz	a5,80008518 <release+0x90>
    8000850c:	100027f3          	csrr	a5,sstatus
    80008510:	0027e793          	ori	a5,a5,2
    80008514:	10079073          	csrw	sstatus,a5
    80008518:	01813083          	ld	ra,24(sp)
    8000851c:	01013403          	ld	s0,16(sp)
    80008520:	00813483          	ld	s1,8(sp)
    80008524:	00013903          	ld	s2,0(sp)
    80008528:	02010113          	addi	sp,sp,32
    8000852c:	00008067          	ret
    80008530:	00001517          	auipc	a0,0x1
    80008534:	08050513          	addi	a0,a0,128 # 800095b0 <digits+0x48>
    80008538:	fffff097          	auipc	ra,0xfffff
    8000853c:	154080e7          	jalr	340(ra) # 8000768c <panic>
    80008540:	00001517          	auipc	a0,0x1
    80008544:	05850513          	addi	a0,a0,88 # 80009598 <digits+0x30>
    80008548:	fffff097          	auipc	ra,0xfffff
    8000854c:	144080e7          	jalr	324(ra) # 8000768c <panic>

0000000080008550 <holding>:
    80008550:	00052783          	lw	a5,0(a0)
    80008554:	00079663          	bnez	a5,80008560 <holding+0x10>
    80008558:	00000513          	li	a0,0
    8000855c:	00008067          	ret
    80008560:	fe010113          	addi	sp,sp,-32
    80008564:	00813823          	sd	s0,16(sp)
    80008568:	00913423          	sd	s1,8(sp)
    8000856c:	00113c23          	sd	ra,24(sp)
    80008570:	02010413          	addi	s0,sp,32
    80008574:	01053483          	ld	s1,16(a0)
    80008578:	ffffe097          	auipc	ra,0xffffe
    8000857c:	75c080e7          	jalr	1884(ra) # 80006cd4 <mycpu>
    80008580:	01813083          	ld	ra,24(sp)
    80008584:	01013403          	ld	s0,16(sp)
    80008588:	40a48533          	sub	a0,s1,a0
    8000858c:	00153513          	seqz	a0,a0
    80008590:	00813483          	ld	s1,8(sp)
    80008594:	02010113          	addi	sp,sp,32
    80008598:	00008067          	ret

000000008000859c <push_off>:
    8000859c:	fe010113          	addi	sp,sp,-32
    800085a0:	00813823          	sd	s0,16(sp)
    800085a4:	00113c23          	sd	ra,24(sp)
    800085a8:	00913423          	sd	s1,8(sp)
    800085ac:	02010413          	addi	s0,sp,32
    800085b0:	100024f3          	csrr	s1,sstatus
    800085b4:	100027f3          	csrr	a5,sstatus
    800085b8:	ffd7f793          	andi	a5,a5,-3
    800085bc:	10079073          	csrw	sstatus,a5
    800085c0:	ffffe097          	auipc	ra,0xffffe
    800085c4:	714080e7          	jalr	1812(ra) # 80006cd4 <mycpu>
    800085c8:	07852783          	lw	a5,120(a0)
    800085cc:	02078663          	beqz	a5,800085f8 <push_off+0x5c>
    800085d0:	ffffe097          	auipc	ra,0xffffe
    800085d4:	704080e7          	jalr	1796(ra) # 80006cd4 <mycpu>
    800085d8:	07852783          	lw	a5,120(a0)
    800085dc:	01813083          	ld	ra,24(sp)
    800085e0:	01013403          	ld	s0,16(sp)
    800085e4:	0017879b          	addiw	a5,a5,1
    800085e8:	06f52c23          	sw	a5,120(a0)
    800085ec:	00813483          	ld	s1,8(sp)
    800085f0:	02010113          	addi	sp,sp,32
    800085f4:	00008067          	ret
    800085f8:	0014d493          	srli	s1,s1,0x1
    800085fc:	ffffe097          	auipc	ra,0xffffe
    80008600:	6d8080e7          	jalr	1752(ra) # 80006cd4 <mycpu>
    80008604:	0014f493          	andi	s1,s1,1
    80008608:	06952e23          	sw	s1,124(a0)
    8000860c:	fc5ff06f          	j	800085d0 <push_off+0x34>

0000000080008610 <pop_off>:
    80008610:	ff010113          	addi	sp,sp,-16
    80008614:	00813023          	sd	s0,0(sp)
    80008618:	00113423          	sd	ra,8(sp)
    8000861c:	01010413          	addi	s0,sp,16
    80008620:	ffffe097          	auipc	ra,0xffffe
    80008624:	6b4080e7          	jalr	1716(ra) # 80006cd4 <mycpu>
    80008628:	100027f3          	csrr	a5,sstatus
    8000862c:	0027f793          	andi	a5,a5,2
    80008630:	04079663          	bnez	a5,8000867c <pop_off+0x6c>
    80008634:	07852783          	lw	a5,120(a0)
    80008638:	02f05a63          	blez	a5,8000866c <pop_off+0x5c>
    8000863c:	fff7871b          	addiw	a4,a5,-1
    80008640:	06e52c23          	sw	a4,120(a0)
    80008644:	00071c63          	bnez	a4,8000865c <pop_off+0x4c>
    80008648:	07c52783          	lw	a5,124(a0)
    8000864c:	00078863          	beqz	a5,8000865c <pop_off+0x4c>
    80008650:	100027f3          	csrr	a5,sstatus
    80008654:	0027e793          	ori	a5,a5,2
    80008658:	10079073          	csrw	sstatus,a5
    8000865c:	00813083          	ld	ra,8(sp)
    80008660:	00013403          	ld	s0,0(sp)
    80008664:	01010113          	addi	sp,sp,16
    80008668:	00008067          	ret
    8000866c:	00001517          	auipc	a0,0x1
    80008670:	f4450513          	addi	a0,a0,-188 # 800095b0 <digits+0x48>
    80008674:	fffff097          	auipc	ra,0xfffff
    80008678:	018080e7          	jalr	24(ra) # 8000768c <panic>
    8000867c:	00001517          	auipc	a0,0x1
    80008680:	f1c50513          	addi	a0,a0,-228 # 80009598 <digits+0x30>
    80008684:	fffff097          	auipc	ra,0xfffff
    80008688:	008080e7          	jalr	8(ra) # 8000768c <panic>

000000008000868c <push_on>:
    8000868c:	fe010113          	addi	sp,sp,-32
    80008690:	00813823          	sd	s0,16(sp)
    80008694:	00113c23          	sd	ra,24(sp)
    80008698:	00913423          	sd	s1,8(sp)
    8000869c:	02010413          	addi	s0,sp,32
    800086a0:	100024f3          	csrr	s1,sstatus
    800086a4:	100027f3          	csrr	a5,sstatus
    800086a8:	0027e793          	ori	a5,a5,2
    800086ac:	10079073          	csrw	sstatus,a5
    800086b0:	ffffe097          	auipc	ra,0xffffe
    800086b4:	624080e7          	jalr	1572(ra) # 80006cd4 <mycpu>
    800086b8:	07852783          	lw	a5,120(a0)
    800086bc:	02078663          	beqz	a5,800086e8 <push_on+0x5c>
    800086c0:	ffffe097          	auipc	ra,0xffffe
    800086c4:	614080e7          	jalr	1556(ra) # 80006cd4 <mycpu>
    800086c8:	07852783          	lw	a5,120(a0)
    800086cc:	01813083          	ld	ra,24(sp)
    800086d0:	01013403          	ld	s0,16(sp)
    800086d4:	0017879b          	addiw	a5,a5,1
    800086d8:	06f52c23          	sw	a5,120(a0)
    800086dc:	00813483          	ld	s1,8(sp)
    800086e0:	02010113          	addi	sp,sp,32
    800086e4:	00008067          	ret
    800086e8:	0014d493          	srli	s1,s1,0x1
    800086ec:	ffffe097          	auipc	ra,0xffffe
    800086f0:	5e8080e7          	jalr	1512(ra) # 80006cd4 <mycpu>
    800086f4:	0014f493          	andi	s1,s1,1
    800086f8:	06952e23          	sw	s1,124(a0)
    800086fc:	fc5ff06f          	j	800086c0 <push_on+0x34>

0000000080008700 <pop_on>:
    80008700:	ff010113          	addi	sp,sp,-16
    80008704:	00813023          	sd	s0,0(sp)
    80008708:	00113423          	sd	ra,8(sp)
    8000870c:	01010413          	addi	s0,sp,16
    80008710:	ffffe097          	auipc	ra,0xffffe
    80008714:	5c4080e7          	jalr	1476(ra) # 80006cd4 <mycpu>
    80008718:	100027f3          	csrr	a5,sstatus
    8000871c:	0027f793          	andi	a5,a5,2
    80008720:	04078463          	beqz	a5,80008768 <pop_on+0x68>
    80008724:	07852783          	lw	a5,120(a0)
    80008728:	02f05863          	blez	a5,80008758 <pop_on+0x58>
    8000872c:	fff7879b          	addiw	a5,a5,-1
    80008730:	06f52c23          	sw	a5,120(a0)
    80008734:	07853783          	ld	a5,120(a0)
    80008738:	00079863          	bnez	a5,80008748 <pop_on+0x48>
    8000873c:	100027f3          	csrr	a5,sstatus
    80008740:	ffd7f793          	andi	a5,a5,-3
    80008744:	10079073          	csrw	sstatus,a5
    80008748:	00813083          	ld	ra,8(sp)
    8000874c:	00013403          	ld	s0,0(sp)
    80008750:	01010113          	addi	sp,sp,16
    80008754:	00008067          	ret
    80008758:	00001517          	auipc	a0,0x1
    8000875c:	e8050513          	addi	a0,a0,-384 # 800095d8 <digits+0x70>
    80008760:	fffff097          	auipc	ra,0xfffff
    80008764:	f2c080e7          	jalr	-212(ra) # 8000768c <panic>
    80008768:	00001517          	auipc	a0,0x1
    8000876c:	e5050513          	addi	a0,a0,-432 # 800095b8 <digits+0x50>
    80008770:	fffff097          	auipc	ra,0xfffff
    80008774:	f1c080e7          	jalr	-228(ra) # 8000768c <panic>

0000000080008778 <__memset>:
    80008778:	ff010113          	addi	sp,sp,-16
    8000877c:	00813423          	sd	s0,8(sp)
    80008780:	01010413          	addi	s0,sp,16
    80008784:	1a060e63          	beqz	a2,80008940 <__memset+0x1c8>
    80008788:	40a007b3          	neg	a5,a0
    8000878c:	0077f793          	andi	a5,a5,7
    80008790:	00778693          	addi	a3,a5,7
    80008794:	00b00813          	li	a6,11
    80008798:	0ff5f593          	andi	a1,a1,255
    8000879c:	fff6071b          	addiw	a4,a2,-1
    800087a0:	1b06e663          	bltu	a3,a6,8000894c <__memset+0x1d4>
    800087a4:	1cd76463          	bltu	a4,a3,8000896c <__memset+0x1f4>
    800087a8:	1a078e63          	beqz	a5,80008964 <__memset+0x1ec>
    800087ac:	00b50023          	sb	a1,0(a0)
    800087b0:	00100713          	li	a4,1
    800087b4:	1ae78463          	beq	a5,a4,8000895c <__memset+0x1e4>
    800087b8:	00b500a3          	sb	a1,1(a0)
    800087bc:	00200713          	li	a4,2
    800087c0:	1ae78a63          	beq	a5,a4,80008974 <__memset+0x1fc>
    800087c4:	00b50123          	sb	a1,2(a0)
    800087c8:	00300713          	li	a4,3
    800087cc:	18e78463          	beq	a5,a4,80008954 <__memset+0x1dc>
    800087d0:	00b501a3          	sb	a1,3(a0)
    800087d4:	00400713          	li	a4,4
    800087d8:	1ae78263          	beq	a5,a4,8000897c <__memset+0x204>
    800087dc:	00b50223          	sb	a1,4(a0)
    800087e0:	00500713          	li	a4,5
    800087e4:	1ae78063          	beq	a5,a4,80008984 <__memset+0x20c>
    800087e8:	00b502a3          	sb	a1,5(a0)
    800087ec:	00700713          	li	a4,7
    800087f0:	18e79e63          	bne	a5,a4,8000898c <__memset+0x214>
    800087f4:	00b50323          	sb	a1,6(a0)
    800087f8:	00700e93          	li	t4,7
    800087fc:	00859713          	slli	a4,a1,0x8
    80008800:	00e5e733          	or	a4,a1,a4
    80008804:	01059e13          	slli	t3,a1,0x10
    80008808:	01c76e33          	or	t3,a4,t3
    8000880c:	01859313          	slli	t1,a1,0x18
    80008810:	006e6333          	or	t1,t3,t1
    80008814:	02059893          	slli	a7,a1,0x20
    80008818:	40f60e3b          	subw	t3,a2,a5
    8000881c:	011368b3          	or	a7,t1,a7
    80008820:	02859813          	slli	a6,a1,0x28
    80008824:	0108e833          	or	a6,a7,a6
    80008828:	03059693          	slli	a3,a1,0x30
    8000882c:	003e589b          	srliw	a7,t3,0x3
    80008830:	00d866b3          	or	a3,a6,a3
    80008834:	03859713          	slli	a4,a1,0x38
    80008838:	00389813          	slli	a6,a7,0x3
    8000883c:	00f507b3          	add	a5,a0,a5
    80008840:	00e6e733          	or	a4,a3,a4
    80008844:	000e089b          	sext.w	a7,t3
    80008848:	00f806b3          	add	a3,a6,a5
    8000884c:	00e7b023          	sd	a4,0(a5)
    80008850:	00878793          	addi	a5,a5,8
    80008854:	fed79ce3          	bne	a5,a3,8000884c <__memset+0xd4>
    80008858:	ff8e7793          	andi	a5,t3,-8
    8000885c:	0007871b          	sext.w	a4,a5
    80008860:	01d787bb          	addw	a5,a5,t4
    80008864:	0ce88e63          	beq	a7,a4,80008940 <__memset+0x1c8>
    80008868:	00f50733          	add	a4,a0,a5
    8000886c:	00b70023          	sb	a1,0(a4)
    80008870:	0017871b          	addiw	a4,a5,1
    80008874:	0cc77663          	bgeu	a4,a2,80008940 <__memset+0x1c8>
    80008878:	00e50733          	add	a4,a0,a4
    8000887c:	00b70023          	sb	a1,0(a4)
    80008880:	0027871b          	addiw	a4,a5,2
    80008884:	0ac77e63          	bgeu	a4,a2,80008940 <__memset+0x1c8>
    80008888:	00e50733          	add	a4,a0,a4
    8000888c:	00b70023          	sb	a1,0(a4)
    80008890:	0037871b          	addiw	a4,a5,3
    80008894:	0ac77663          	bgeu	a4,a2,80008940 <__memset+0x1c8>
    80008898:	00e50733          	add	a4,a0,a4
    8000889c:	00b70023          	sb	a1,0(a4)
    800088a0:	0047871b          	addiw	a4,a5,4
    800088a4:	08c77e63          	bgeu	a4,a2,80008940 <__memset+0x1c8>
    800088a8:	00e50733          	add	a4,a0,a4
    800088ac:	00b70023          	sb	a1,0(a4)
    800088b0:	0057871b          	addiw	a4,a5,5
    800088b4:	08c77663          	bgeu	a4,a2,80008940 <__memset+0x1c8>
    800088b8:	00e50733          	add	a4,a0,a4
    800088bc:	00b70023          	sb	a1,0(a4)
    800088c0:	0067871b          	addiw	a4,a5,6
    800088c4:	06c77e63          	bgeu	a4,a2,80008940 <__memset+0x1c8>
    800088c8:	00e50733          	add	a4,a0,a4
    800088cc:	00b70023          	sb	a1,0(a4)
    800088d0:	0077871b          	addiw	a4,a5,7
    800088d4:	06c77663          	bgeu	a4,a2,80008940 <__memset+0x1c8>
    800088d8:	00e50733          	add	a4,a0,a4
    800088dc:	00b70023          	sb	a1,0(a4)
    800088e0:	0087871b          	addiw	a4,a5,8
    800088e4:	04c77e63          	bgeu	a4,a2,80008940 <__memset+0x1c8>
    800088e8:	00e50733          	add	a4,a0,a4
    800088ec:	00b70023          	sb	a1,0(a4)
    800088f0:	0097871b          	addiw	a4,a5,9
    800088f4:	04c77663          	bgeu	a4,a2,80008940 <__memset+0x1c8>
    800088f8:	00e50733          	add	a4,a0,a4
    800088fc:	00b70023          	sb	a1,0(a4)
    80008900:	00a7871b          	addiw	a4,a5,10
    80008904:	02c77e63          	bgeu	a4,a2,80008940 <__memset+0x1c8>
    80008908:	00e50733          	add	a4,a0,a4
    8000890c:	00b70023          	sb	a1,0(a4)
    80008910:	00b7871b          	addiw	a4,a5,11
    80008914:	02c77663          	bgeu	a4,a2,80008940 <__memset+0x1c8>
    80008918:	00e50733          	add	a4,a0,a4
    8000891c:	00b70023          	sb	a1,0(a4)
    80008920:	00c7871b          	addiw	a4,a5,12
    80008924:	00c77e63          	bgeu	a4,a2,80008940 <__memset+0x1c8>
    80008928:	00e50733          	add	a4,a0,a4
    8000892c:	00b70023          	sb	a1,0(a4)
    80008930:	00d7879b          	addiw	a5,a5,13
    80008934:	00c7f663          	bgeu	a5,a2,80008940 <__memset+0x1c8>
    80008938:	00f507b3          	add	a5,a0,a5
    8000893c:	00b78023          	sb	a1,0(a5)
    80008940:	00813403          	ld	s0,8(sp)
    80008944:	01010113          	addi	sp,sp,16
    80008948:	00008067          	ret
    8000894c:	00b00693          	li	a3,11
    80008950:	e55ff06f          	j	800087a4 <__memset+0x2c>
    80008954:	00300e93          	li	t4,3
    80008958:	ea5ff06f          	j	800087fc <__memset+0x84>
    8000895c:	00100e93          	li	t4,1
    80008960:	e9dff06f          	j	800087fc <__memset+0x84>
    80008964:	00000e93          	li	t4,0
    80008968:	e95ff06f          	j	800087fc <__memset+0x84>
    8000896c:	00000793          	li	a5,0
    80008970:	ef9ff06f          	j	80008868 <__memset+0xf0>
    80008974:	00200e93          	li	t4,2
    80008978:	e85ff06f          	j	800087fc <__memset+0x84>
    8000897c:	00400e93          	li	t4,4
    80008980:	e7dff06f          	j	800087fc <__memset+0x84>
    80008984:	00500e93          	li	t4,5
    80008988:	e75ff06f          	j	800087fc <__memset+0x84>
    8000898c:	00600e93          	li	t4,6
    80008990:	e6dff06f          	j	800087fc <__memset+0x84>

0000000080008994 <__memmove>:
    80008994:	ff010113          	addi	sp,sp,-16
    80008998:	00813423          	sd	s0,8(sp)
    8000899c:	01010413          	addi	s0,sp,16
    800089a0:	0e060863          	beqz	a2,80008a90 <__memmove+0xfc>
    800089a4:	fff6069b          	addiw	a3,a2,-1
    800089a8:	0006881b          	sext.w	a6,a3
    800089ac:	0ea5e863          	bltu	a1,a0,80008a9c <__memmove+0x108>
    800089b0:	00758713          	addi	a4,a1,7
    800089b4:	00a5e7b3          	or	a5,a1,a0
    800089b8:	40a70733          	sub	a4,a4,a0
    800089bc:	0077f793          	andi	a5,a5,7
    800089c0:	00f73713          	sltiu	a4,a4,15
    800089c4:	00174713          	xori	a4,a4,1
    800089c8:	0017b793          	seqz	a5,a5
    800089cc:	00e7f7b3          	and	a5,a5,a4
    800089d0:	10078863          	beqz	a5,80008ae0 <__memmove+0x14c>
    800089d4:	00900793          	li	a5,9
    800089d8:	1107f463          	bgeu	a5,a6,80008ae0 <__memmove+0x14c>
    800089dc:	0036581b          	srliw	a6,a2,0x3
    800089e0:	fff8081b          	addiw	a6,a6,-1
    800089e4:	02081813          	slli	a6,a6,0x20
    800089e8:	01d85893          	srli	a7,a6,0x1d
    800089ec:	00858813          	addi	a6,a1,8
    800089f0:	00058793          	mv	a5,a1
    800089f4:	00050713          	mv	a4,a0
    800089f8:	01088833          	add	a6,a7,a6
    800089fc:	0007b883          	ld	a7,0(a5)
    80008a00:	00878793          	addi	a5,a5,8
    80008a04:	00870713          	addi	a4,a4,8
    80008a08:	ff173c23          	sd	a7,-8(a4)
    80008a0c:	ff0798e3          	bne	a5,a6,800089fc <__memmove+0x68>
    80008a10:	ff867713          	andi	a4,a2,-8
    80008a14:	02071793          	slli	a5,a4,0x20
    80008a18:	0207d793          	srli	a5,a5,0x20
    80008a1c:	00f585b3          	add	a1,a1,a5
    80008a20:	40e686bb          	subw	a3,a3,a4
    80008a24:	00f507b3          	add	a5,a0,a5
    80008a28:	06e60463          	beq	a2,a4,80008a90 <__memmove+0xfc>
    80008a2c:	0005c703          	lbu	a4,0(a1)
    80008a30:	00e78023          	sb	a4,0(a5)
    80008a34:	04068e63          	beqz	a3,80008a90 <__memmove+0xfc>
    80008a38:	0015c603          	lbu	a2,1(a1)
    80008a3c:	00100713          	li	a4,1
    80008a40:	00c780a3          	sb	a2,1(a5)
    80008a44:	04e68663          	beq	a3,a4,80008a90 <__memmove+0xfc>
    80008a48:	0025c603          	lbu	a2,2(a1)
    80008a4c:	00200713          	li	a4,2
    80008a50:	00c78123          	sb	a2,2(a5)
    80008a54:	02e68e63          	beq	a3,a4,80008a90 <__memmove+0xfc>
    80008a58:	0035c603          	lbu	a2,3(a1)
    80008a5c:	00300713          	li	a4,3
    80008a60:	00c781a3          	sb	a2,3(a5)
    80008a64:	02e68663          	beq	a3,a4,80008a90 <__memmove+0xfc>
    80008a68:	0045c603          	lbu	a2,4(a1)
    80008a6c:	00400713          	li	a4,4
    80008a70:	00c78223          	sb	a2,4(a5)
    80008a74:	00e68e63          	beq	a3,a4,80008a90 <__memmove+0xfc>
    80008a78:	0055c603          	lbu	a2,5(a1)
    80008a7c:	00500713          	li	a4,5
    80008a80:	00c782a3          	sb	a2,5(a5)
    80008a84:	00e68663          	beq	a3,a4,80008a90 <__memmove+0xfc>
    80008a88:	0065c703          	lbu	a4,6(a1)
    80008a8c:	00e78323          	sb	a4,6(a5)
    80008a90:	00813403          	ld	s0,8(sp)
    80008a94:	01010113          	addi	sp,sp,16
    80008a98:	00008067          	ret
    80008a9c:	02061713          	slli	a4,a2,0x20
    80008aa0:	02075713          	srli	a4,a4,0x20
    80008aa4:	00e587b3          	add	a5,a1,a4
    80008aa8:	f0f574e3          	bgeu	a0,a5,800089b0 <__memmove+0x1c>
    80008aac:	02069613          	slli	a2,a3,0x20
    80008ab0:	02065613          	srli	a2,a2,0x20
    80008ab4:	fff64613          	not	a2,a2
    80008ab8:	00e50733          	add	a4,a0,a4
    80008abc:	00c78633          	add	a2,a5,a2
    80008ac0:	fff7c683          	lbu	a3,-1(a5)
    80008ac4:	fff78793          	addi	a5,a5,-1
    80008ac8:	fff70713          	addi	a4,a4,-1
    80008acc:	00d70023          	sb	a3,0(a4)
    80008ad0:	fec798e3          	bne	a5,a2,80008ac0 <__memmove+0x12c>
    80008ad4:	00813403          	ld	s0,8(sp)
    80008ad8:	01010113          	addi	sp,sp,16
    80008adc:	00008067          	ret
    80008ae0:	02069713          	slli	a4,a3,0x20
    80008ae4:	02075713          	srli	a4,a4,0x20
    80008ae8:	00170713          	addi	a4,a4,1
    80008aec:	00e50733          	add	a4,a0,a4
    80008af0:	00050793          	mv	a5,a0
    80008af4:	0005c683          	lbu	a3,0(a1)
    80008af8:	00178793          	addi	a5,a5,1
    80008afc:	00158593          	addi	a1,a1,1
    80008b00:	fed78fa3          	sb	a3,-1(a5)
    80008b04:	fee798e3          	bne	a5,a4,80008af4 <__memmove+0x160>
    80008b08:	f89ff06f          	j	80008a90 <__memmove+0xfc>

0000000080008b0c <__putc>:
    80008b0c:	fe010113          	addi	sp,sp,-32
    80008b10:	00813823          	sd	s0,16(sp)
    80008b14:	00113c23          	sd	ra,24(sp)
    80008b18:	02010413          	addi	s0,sp,32
    80008b1c:	00050793          	mv	a5,a0
    80008b20:	fef40593          	addi	a1,s0,-17
    80008b24:	00100613          	li	a2,1
    80008b28:	00000513          	li	a0,0
    80008b2c:	fef407a3          	sb	a5,-17(s0)
    80008b30:	fffff097          	auipc	ra,0xfffff
    80008b34:	b3c080e7          	jalr	-1220(ra) # 8000766c <console_write>
    80008b38:	01813083          	ld	ra,24(sp)
    80008b3c:	01013403          	ld	s0,16(sp)
    80008b40:	02010113          	addi	sp,sp,32
    80008b44:	00008067          	ret

0000000080008b48 <__getc>:
    80008b48:	fe010113          	addi	sp,sp,-32
    80008b4c:	00813823          	sd	s0,16(sp)
    80008b50:	00113c23          	sd	ra,24(sp)
    80008b54:	02010413          	addi	s0,sp,32
    80008b58:	fe840593          	addi	a1,s0,-24
    80008b5c:	00100613          	li	a2,1
    80008b60:	00000513          	li	a0,0
    80008b64:	fffff097          	auipc	ra,0xfffff
    80008b68:	ae8080e7          	jalr	-1304(ra) # 8000764c <console_read>
    80008b6c:	fe844503          	lbu	a0,-24(s0)
    80008b70:	01813083          	ld	ra,24(sp)
    80008b74:	01013403          	ld	s0,16(sp)
    80008b78:	02010113          	addi	sp,sp,32
    80008b7c:	00008067          	ret

0000000080008b80 <console_handler>:
    80008b80:	fe010113          	addi	sp,sp,-32
    80008b84:	00813823          	sd	s0,16(sp)
    80008b88:	00113c23          	sd	ra,24(sp)
    80008b8c:	00913423          	sd	s1,8(sp)
    80008b90:	02010413          	addi	s0,sp,32
    80008b94:	14202773          	csrr	a4,scause
    80008b98:	100027f3          	csrr	a5,sstatus
    80008b9c:	0027f793          	andi	a5,a5,2
    80008ba0:	06079e63          	bnez	a5,80008c1c <console_handler+0x9c>
    80008ba4:	00074c63          	bltz	a4,80008bbc <console_handler+0x3c>
    80008ba8:	01813083          	ld	ra,24(sp)
    80008bac:	01013403          	ld	s0,16(sp)
    80008bb0:	00813483          	ld	s1,8(sp)
    80008bb4:	02010113          	addi	sp,sp,32
    80008bb8:	00008067          	ret
    80008bbc:	0ff77713          	andi	a4,a4,255
    80008bc0:	00900793          	li	a5,9
    80008bc4:	fef712e3          	bne	a4,a5,80008ba8 <console_handler+0x28>
    80008bc8:	ffffe097          	auipc	ra,0xffffe
    80008bcc:	6dc080e7          	jalr	1756(ra) # 800072a4 <plic_claim>
    80008bd0:	00a00793          	li	a5,10
    80008bd4:	00050493          	mv	s1,a0
    80008bd8:	02f50c63          	beq	a0,a5,80008c10 <console_handler+0x90>
    80008bdc:	fc0506e3          	beqz	a0,80008ba8 <console_handler+0x28>
    80008be0:	00050593          	mv	a1,a0
    80008be4:	00001517          	auipc	a0,0x1
    80008be8:	8fc50513          	addi	a0,a0,-1796 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80008bec:	fffff097          	auipc	ra,0xfffff
    80008bf0:	afc080e7          	jalr	-1284(ra) # 800076e8 <__printf>
    80008bf4:	01013403          	ld	s0,16(sp)
    80008bf8:	01813083          	ld	ra,24(sp)
    80008bfc:	00048513          	mv	a0,s1
    80008c00:	00813483          	ld	s1,8(sp)
    80008c04:	02010113          	addi	sp,sp,32
    80008c08:	ffffe317          	auipc	t1,0xffffe
    80008c0c:	6d430067          	jr	1748(t1) # 800072dc <plic_complete>
    80008c10:	fffff097          	auipc	ra,0xfffff
    80008c14:	3e0080e7          	jalr	992(ra) # 80007ff0 <uartintr>
    80008c18:	fddff06f          	j	80008bf4 <console_handler+0x74>
    80008c1c:	00001517          	auipc	a0,0x1
    80008c20:	9c450513          	addi	a0,a0,-1596 # 800095e0 <digits+0x78>
    80008c24:	fffff097          	auipc	ra,0xfffff
    80008c28:	a68080e7          	jalr	-1432(ra) # 8000768c <panic>
	...
