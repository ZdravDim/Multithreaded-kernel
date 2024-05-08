
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	98013103          	ld	sp,-1664(sp) # 8000b980 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	674060ef          	jal	ra,80006690 <start>

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
    80001080:	45d010ef          	jal	ra,80002cdc <_ZN5RiscV22handle_supervisor_trapEv>

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
    8000126c:	00002097          	auipc	ra,0x2
    80001270:	824080e7          	jalr	-2012(ra) # 80002a90 <_ZN15MemoryAllocator20get_number_of_blocksEm>
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

int time_sleep (time_t) {
    800015d4:	ff010113          	addi	sp,sp,-16
    800015d8:	00813423          	sd	s0,8(sp)
    800015dc:	01010413          	addi	s0,sp,16
    //..
    return 0;
}
    800015e0:	00000513          	li	a0,0
    800015e4:	00813403          	ld	s0,8(sp)
    800015e8:	01010113          	addi	sp,sp,16
    800015ec:	00008067          	ret

00000000800015f0 <_Z4getcv>:

char getc () {
    800015f0:	fe010113          	addi	sp,sp,-32
    800015f4:	00113c23          	sd	ra,24(sp)
    800015f8:	00813823          	sd	s0,16(sp)
    800015fc:	02010413          	addi	s0,sp,32
    char volatile c;
    syscall(GETC);
    80001600:	00000713          	li	a4,0
    80001604:	00000693          	li	a3,0
    80001608:	00000613          	li	a2,0
    8000160c:	00000593          	li	a1,0
    80001610:	04100513          	li	a0,65
    80001614:	00000097          	auipc	ra,0x0
    80001618:	c28080e7          	jalr	-984(ra) # 8000123c <_Z7syscallmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(c));
    8000161c:	00050793          	mv	a5,a0
    80001620:	fef407a3          	sb	a5,-17(s0)
    return c;
    80001624:	fef44503          	lbu	a0,-17(s0)
}
    80001628:	0ff57513          	andi	a0,a0,255
    8000162c:	01813083          	ld	ra,24(sp)
    80001630:	01013403          	ld	s0,16(sp)
    80001634:	02010113          	addi	sp,sp,32
    80001638:	00008067          	ret

000000008000163c <_Z4putcc>:

void putc (char c) {
    8000163c:	ff010113          	addi	sp,sp,-16
    80001640:	00113423          	sd	ra,8(sp)
    80001644:	00813023          	sd	s0,0(sp)
    80001648:	01010413          	addi	s0,sp,16
    8000164c:	00050593          	mv	a1,a0
    syscall(PUTC, c);
    80001650:	00000713          	li	a4,0
    80001654:	00000693          	li	a3,0
    80001658:	00000613          	li	a2,0
    8000165c:	04200513          	li	a0,66
    80001660:	00000097          	auipc	ra,0x0
    80001664:	bdc080e7          	jalr	-1060(ra) # 8000123c <_Z7syscallmmmmm>
    80001668:	00813083          	ld	ra,8(sp)
    8000166c:	00013403          	ld	s0,0(sp)
    80001670:	01010113          	addi	sp,sp,16
    80001674:	00008067          	ret

0000000080001678 <_ZN3SemD1Ev>:

void Sem::close() {
    closed = true;
}

Sem::~Sem() {
    80001678:	ff010113          	addi	sp,sp,-16
    8000167c:	00113423          	sd	ra,8(sp)
    80001680:	00813023          	sd	s0,0(sp)
    80001684:	01010413          	addi	s0,sp,16
    80001688:	0000a797          	auipc	a5,0xa
    8000168c:	0a878793          	addi	a5,a5,168 # 8000b730 <_ZTV3Sem+0x10>
    80001690:	00f53023          	sd	a5,0(a0) # 1000 <_entry-0x7ffff000>
    blocked_threads.free();
    80001694:	00850513          	addi	a0,a0,8
    80001698:	00002097          	auipc	ra,0x2
    8000169c:	960080e7          	jalr	-1696(ra) # 80002ff8 <_ZN10ThreadList4freeEv>
}
    800016a0:	00813083          	ld	ra,8(sp)
    800016a4:	00013403          	ld	s0,0(sp)
    800016a8:	01010113          	addi	sp,sp,16
    800016ac:	00008067          	ret

00000000800016b0 <_ZN3SemD0Ev>:
Sem::~Sem() {
    800016b0:	fe010113          	addi	sp,sp,-32
    800016b4:	00113c23          	sd	ra,24(sp)
    800016b8:	00813823          	sd	s0,16(sp)
    800016bc:	00913423          	sd	s1,8(sp)
    800016c0:	02010413          	addi	s0,sp,32
    800016c4:	00050493          	mv	s1,a0
}
    800016c8:	00000097          	auipc	ra,0x0
    800016cc:	fb0080e7          	jalr	-80(ra) # 80001678 <_ZN3SemD1Ev>
    800016d0:	00048513          	mv	a0,s1
    800016d4:	00001097          	auipc	ra,0x1
    800016d8:	bb0080e7          	jalr	-1104(ra) # 80002284 <_ZdlPv>
    800016dc:	01813083          	ld	ra,24(sp)
    800016e0:	01013403          	ld	s0,16(sp)
    800016e4:	00813483          	ld	s1,8(sp)
    800016e8:	02010113          	addi	sp,sp,32
    800016ec:	00008067          	ret

00000000800016f0 <_ZN3Sem4openEPPS_j>:
int Sem::open(Sem **handle, unsigned int init) {
    800016f0:	fe010113          	addi	sp,sp,-32
    800016f4:	00113c23          	sd	ra,24(sp)
    800016f8:	00813823          	sd	s0,16(sp)
    800016fc:	00913423          	sd	s1,8(sp)
    80001700:	01213023          	sd	s2,0(sp)
    80001704:	02010413          	addi	s0,sp,32
    80001708:	00050493          	mv	s1,a0
    8000170c:	00058913          	mv	s2,a1
    *handle = new Sem(init);
    80001710:	02000513          	li	a0,32
    80001714:	00001097          	auipc	ra,0x1
    80001718:	b48080e7          	jalr	-1208(ra) # 8000225c <_Znwm>
    int tryWait();
    void block();
    void unblock();

private:
    explicit Sem(unsigned init = 1) : value((int) init), closed(false) {}
    8000171c:	0000a797          	auipc	a5,0xa
    80001720:	01478793          	addi	a5,a5,20 # 8000b730 <_ZTV3Sem+0x10>
    80001724:	00f53023          	sd	a5,0(a0)
#ifndef thread_list
#define thread_list

#include "tcb.hpp"

class ThreadList {
    80001728:	00053423          	sd	zero,8(a0)
    8000172c:	00053823          	sd	zero,16(a0)
    80001730:	01252c23          	sw	s2,24(a0)
    80001734:	00050e23          	sb	zero,28(a0)
    80001738:	00a4b023          	sd	a0,0(s1)
    if (!(*handle)) return -1;
    8000173c:	02050063          	beqz	a0,8000175c <_ZN3Sem4openEPPS_j+0x6c>
    return 0;
    80001740:	00000513          	li	a0,0
}
    80001744:	01813083          	ld	ra,24(sp)
    80001748:	01013403          	ld	s0,16(sp)
    8000174c:	00813483          	ld	s1,8(sp)
    80001750:	00013903          	ld	s2,0(sp)
    80001754:	02010113          	addi	sp,sp,32
    80001758:	00008067          	ret
    if (!(*handle)) return -1;
    8000175c:	fff00513          	li	a0,-1
    80001760:	fe5ff06f          	j	80001744 <_ZN3Sem4openEPPS_j+0x54>

0000000080001764 <_ZN3Sem5closeEv>:
void Sem::close() {
    80001764:	ff010113          	addi	sp,sp,-16
    80001768:	00813423          	sd	s0,8(sp)
    8000176c:	01010413          	addi	s0,sp,16
    closed = true;
    80001770:	00100793          	li	a5,1
    80001774:	00f50e23          	sb	a5,28(a0)
}
    80001778:	00813403          	ld	s0,8(sp)
    8000177c:	01010113          	addi	sp,sp,16
    80001780:	00008067          	ret

0000000080001784 <_ZN3Sem5blockEv>:
    if (closed) return -1;
    if (++value <= 0) unblock();
    return 0;
}

void Sem::block() {
    80001784:	fe010113          	addi	sp,sp,-32
    80001788:	00113c23          	sd	ra,24(sp)
    8000178c:	00813823          	sd	s0,16(sp)
    80001790:	00913423          	sd	s1,8(sp)
    80001794:	01213023          	sd	s2,0(sp)
    80001798:	02010413          	addi	s0,sp,32
    TCB* old = TCB::running;
    8000179c:	0000a917          	auipc	s2,0xa
    800017a0:	1ec93903          	ld	s2,492(s2) # 8000b988 <_GLOBAL_OFFSET_TABLE_+0x20>
    800017a4:	00093483          	ld	s1,0(s2)
    blocked_threads.push_back(old);
    800017a8:	00048593          	mv	a1,s1
    800017ac:	00850513          	addi	a0,a0,8
    800017b0:	00001097          	auipc	ra,0x1
    800017b4:	708080e7          	jalr	1800(ra) # 80002eb8 <_ZN10ThreadList9push_backEP3TCB>
    TCB::running = Scheduler::get();
    800017b8:	00001097          	auipc	ra,0x1
    800017bc:	358080e7          	jalr	856(ra) # 80002b10 <_ZN9Scheduler3getEv>
    800017c0:	00050593          	mv	a1,a0
    800017c4:	00a93023          	sd	a0,0(s2)
    TCB::yield(old, TCB::running);
    800017c8:	00048513          	mv	a0,s1
    800017cc:	00000097          	auipc	ra,0x0
    800017d0:	630080e7          	jalr	1584(ra) # 80001dfc <_ZN3TCB5yieldEPS_S0_>
}
    800017d4:	01813083          	ld	ra,24(sp)
    800017d8:	01013403          	ld	s0,16(sp)
    800017dc:	00813483          	ld	s1,8(sp)
    800017e0:	00013903          	ld	s2,0(sp)
    800017e4:	02010113          	addi	sp,sp,32
    800017e8:	00008067          	ret

00000000800017ec <_ZN3Sem4waitEv>:
    if (closed) return -1;
    800017ec:	01c54783          	lbu	a5,28(a0)
    800017f0:	06079063          	bnez	a5,80001850 <_ZN3Sem4waitEv+0x64>
int Sem::wait() {
    800017f4:	fe010113          	addi	sp,sp,-32
    800017f8:	00113c23          	sd	ra,24(sp)
    800017fc:	00813823          	sd	s0,16(sp)
    80001800:	00913423          	sd	s1,8(sp)
    80001804:	02010413          	addi	s0,sp,32
    80001808:	00050493          	mv	s1,a0
    if (--value < 0) {
    8000180c:	01852783          	lw	a5,24(a0)
    80001810:	fff7879b          	addiw	a5,a5,-1
    80001814:	00f52c23          	sw	a5,24(a0)
    80001818:	02079713          	slli	a4,a5,0x20
    8000181c:	00074e63          	bltz	a4,80001838 <_ZN3Sem4waitEv+0x4c>
    return 0;
    80001820:	00000513          	li	a0,0
}
    80001824:	01813083          	ld	ra,24(sp)
    80001828:	01013403          	ld	s0,16(sp)
    8000182c:	00813483          	ld	s1,8(sp)
    80001830:	02010113          	addi	sp,sp,32
    80001834:	00008067          	ret
        block();
    80001838:	00000097          	auipc	ra,0x0
    8000183c:	f4c080e7          	jalr	-180(ra) # 80001784 <_ZN3Sem5blockEv>
        if (closed) return -2; /// thread released because Semaphore is closed
    80001840:	01c4c783          	lbu	a5,28(s1)
    80001844:	00079a63          	bnez	a5,80001858 <_ZN3Sem4waitEv+0x6c>
    return 0;
    80001848:	00000513          	li	a0,0
    8000184c:	fd9ff06f          	j	80001824 <_ZN3Sem4waitEv+0x38>
    if (closed) return -1;
    80001850:	fff00513          	li	a0,-1
}
    80001854:	00008067          	ret
        if (closed) return -2; /// thread released because Semaphore is closed
    80001858:	ffe00513          	li	a0,-2
    8000185c:	fc9ff06f          	j	80001824 <_ZN3Sem4waitEv+0x38>

0000000080001860 <_ZN3Sem7unblockEv>:

void Sem::unblock() {
    80001860:	ff010113          	addi	sp,sp,-16
    80001864:	00113423          	sd	ra,8(sp)
    80001868:	00813023          	sd	s0,0(sp)
    8000186c:	01010413          	addi	s0,sp,16
    TCB* thread = blocked_threads.get_first();
    80001870:	00850513          	addi	a0,a0,8
    80001874:	00001097          	auipc	ra,0x1
    80001878:	5f0080e7          	jalr	1520(ra) # 80002e64 <_ZN10ThreadList9get_firstEv>
    Scheduler::put(thread);
    8000187c:	00001097          	auipc	ra,0x1
    80001880:	234080e7          	jalr	564(ra) # 80002ab0 <_ZN9Scheduler3putEP3TCB>
}
    80001884:	00813083          	ld	ra,8(sp)
    80001888:	00013403          	ld	s0,0(sp)
    8000188c:	01010113          	addi	sp,sp,16
    80001890:	00008067          	ret

0000000080001894 <_ZN3Sem6signalEv>:
    if (closed) return -1;
    80001894:	01c54783          	lbu	a5,28(a0)
    80001898:	04079663          	bnez	a5,800018e4 <_ZN3Sem6signalEv+0x50>
    if (++value <= 0) unblock();
    8000189c:	01852783          	lw	a5,24(a0)
    800018a0:	0017879b          	addiw	a5,a5,1
    800018a4:	0007871b          	sext.w	a4,a5
    800018a8:	00f52c23          	sw	a5,24(a0)
    800018ac:	00e05663          	blez	a4,800018b8 <_ZN3Sem6signalEv+0x24>
    return 0;
    800018b0:	00000513          	li	a0,0
}
    800018b4:	00008067          	ret
int Sem::signal() {
    800018b8:	ff010113          	addi	sp,sp,-16
    800018bc:	00113423          	sd	ra,8(sp)
    800018c0:	00813023          	sd	s0,0(sp)
    800018c4:	01010413          	addi	s0,sp,16
    if (++value <= 0) unblock();
    800018c8:	00000097          	auipc	ra,0x0
    800018cc:	f98080e7          	jalr	-104(ra) # 80001860 <_ZN3Sem7unblockEv>
    return 0;
    800018d0:	00000513          	li	a0,0
}
    800018d4:	00813083          	ld	ra,8(sp)
    800018d8:	00013403          	ld	s0,0(sp)
    800018dc:	01010113          	addi	sp,sp,16
    800018e0:	00008067          	ret
    if (closed) return -1;
    800018e4:	fff00513          	li	a0,-1
    800018e8:	00008067          	ret

00000000800018ec <_ZN3Sem9timedWaitEm>:

int Sem::timedWait(time_t time) {
    800018ec:	ff010113          	addi	sp,sp,-16
    800018f0:	00813423          	sd	s0,8(sp)
    800018f4:	01010413          	addi	s0,sp,16
    return 0;
}
    800018f8:	00000513          	li	a0,0
    800018fc:	00813403          	ld	s0,8(sp)
    80001900:	01010113          	addi	sp,sp,16
    80001904:	00008067          	ret

0000000080001908 <_ZN3Sem7tryWaitEv>:

int Sem::tryWait() {
    80001908:	ff010113          	addi	sp,sp,-16
    8000190c:	00813423          	sd	s0,8(sp)
    80001910:	01010413          	addi	s0,sp,16
    return 0;
}
    80001914:	00000513          	li	a0,0
    80001918:	00813403          	ld	s0,8(sp)
    8000191c:	01010113          	addi	sp,sp,16
    80001920:	00008067          	ret

0000000080001924 <_Z7workerAPv>:
    void* address = mem_alloc(50);
    MemoryAllocator::print();
    mem_free(address);
    MemoryAllocator::print();
}
void workerA(void *args) {
    80001924:	fe010113          	addi	sp,sp,-32
    80001928:	00113c23          	sd	ra,24(sp)
    8000192c:	00813823          	sd	s0,16(sp)
    80001930:	00913423          	sd	s1,8(sp)
    80001934:	02010413          	addi	s0,sp,32
    80001938:	0140006f          	j	8000194c <_Z7workerAPv+0x28>
    while (1) {
        __putc('\n');
        for (int i = 0; i < 10; ++i) __putc('A');
        thread_dispatch();
    8000193c:	00000097          	auipc	ra,0x0
    80001940:	a90080e7          	jalr	-1392(ra) # 800013cc <_Z15thread_dispatchv>
        thread_exit();
    80001944:	00000097          	auipc	ra,0x0
    80001948:	a3c080e7          	jalr	-1476(ra) # 80001380 <_Z11thread_exitv>
        __putc('\n');
    8000194c:	00a00513          	li	a0,10
    80001950:	00007097          	auipc	ra,0x7
    80001954:	dfc080e7          	jalr	-516(ra) # 8000874c <__putc>
        for (int i = 0; i < 10; ++i) __putc('A');
    80001958:	00000493          	li	s1,0
    8000195c:	00900793          	li	a5,9
    80001960:	fc97cee3          	blt	a5,s1,8000193c <_Z7workerAPv+0x18>
    80001964:	04100513          	li	a0,65
    80001968:	00007097          	auipc	ra,0x7
    8000196c:	de4080e7          	jalr	-540(ra) # 8000874c <__putc>
    80001970:	0014849b          	addiw	s1,s1,1
    80001974:	fe9ff06f          	j	8000195c <_Z7workerAPv+0x38>

0000000080001978 <_Z7workerBPv>:
    }
}
void workerB(void *args) {
    80001978:	fe010113          	addi	sp,sp,-32
    8000197c:	00113c23          	sd	ra,24(sp)
    80001980:	00813823          	sd	s0,16(sp)
    80001984:	00913423          	sd	s1,8(sp)
    80001988:	02010413          	addi	s0,sp,32
    8000198c:	0140006f          	j	800019a0 <_Z7workerBPv+0x28>
    while (1) {
        __putc('\n');
        for (int i = 0; i < 10; ++i) __putc('B');
        thread_dispatch();
    80001990:	00000097          	auipc	ra,0x0
    80001994:	a3c080e7          	jalr	-1476(ra) # 800013cc <_Z15thread_dispatchv>
        thread_exit();
    80001998:	00000097          	auipc	ra,0x0
    8000199c:	9e8080e7          	jalr	-1560(ra) # 80001380 <_Z11thread_exitv>
        __putc('\n');
    800019a0:	00a00513          	li	a0,10
    800019a4:	00007097          	auipc	ra,0x7
    800019a8:	da8080e7          	jalr	-600(ra) # 8000874c <__putc>
        for (int i = 0; i < 10; ++i) __putc('B');
    800019ac:	00000493          	li	s1,0
    800019b0:	00900793          	li	a5,9
    800019b4:	fc97cee3          	blt	a5,s1,80001990 <_Z7workerBPv+0x18>
    800019b8:	04200513          	li	a0,66
    800019bc:	00007097          	auipc	ra,0x7
    800019c0:	d90080e7          	jalr	-624(ra) # 8000874c <__putc>
    800019c4:	0014849b          	addiw	s1,s1,1
    800019c8:	fe9ff06f          	j	800019b0 <_Z7workerBPv+0x38>

00000000800019cc <printNumber>:
extern "C" void printNumber(uint64 num) {
    800019cc:	fd010113          	addi	sp,sp,-48
    800019d0:	02113423          	sd	ra,40(sp)
    800019d4:	02813023          	sd	s0,32(sp)
    800019d8:	00913c23          	sd	s1,24(sp)
    800019dc:	01213823          	sd	s2,16(sp)
    800019e0:	01313423          	sd	s3,8(sp)
    800019e4:	03010413          	addi	s0,sp,48
    800019e8:	00050913          	mv	s2,a0
    __putc('\n');
    800019ec:	00a00513          	li	a0,10
    800019f0:	00007097          	auipc	ra,0x7
    800019f4:	d5c080e7          	jalr	-676(ra) # 8000874c <__putc>
    __putc('N');
    800019f8:	04e00513          	li	a0,78
    800019fc:	00007097          	auipc	ra,0x7
    80001a00:	d50080e7          	jalr	-688(ra) # 8000874c <__putc>
    __putc(':');
    80001a04:	03a00513          	li	a0,58
    80001a08:	00007097          	auipc	ra,0x7
    80001a0c:	d44080e7          	jalr	-700(ra) # 8000874c <__putc>
    __putc(' ');
    80001a10:	02000513          	li	a0,32
    80001a14:	00007097          	auipc	ra,0x7
    80001a18:	d38080e7          	jalr	-712(ra) # 8000874c <__putc>
    if (!num) __putc('0');
    80001a1c:	00090863          	beqz	s2,80001a2c <printNumber+0x60>
    uint64 num2 = 0, zero_count = 0;
    80001a20:	00000993          	li	s3,0
    80001a24:	00000493          	li	s1,0
    80001a28:	01c0006f          	j	80001a44 <printNumber+0x78>
    if (!num) __putc('0');
    80001a2c:	03000513          	li	a0,48
    80001a30:	00007097          	auipc	ra,0x7
    80001a34:	d1c080e7          	jalr	-740(ra) # 8000874c <__putc>
    80001a38:	fe9ff06f          	j	80001a20 <printNumber+0x54>
        num /= 10;
    80001a3c:	00a00793          	li	a5,10
    80001a40:	02f95933          	divu	s2,s2,a5
    while (num) {
    80001a44:	02090463          	beqz	s2,80001a6c <printNumber+0xa0>
        num2 *= 10;
    80001a48:	00249793          	slli	a5,s1,0x2
    80001a4c:	009784b3          	add	s1,a5,s1
    80001a50:	00149793          	slli	a5,s1,0x1
        num2 += num % 10;
    80001a54:	00a00493          	li	s1,10
    80001a58:	029974b3          	remu	s1,s2,s1
    80001a5c:	00f484b3          	add	s1,s1,a5
        if (!num2) ++zero_count;
    80001a60:	fc049ee3          	bnez	s1,80001a3c <printNumber+0x70>
    80001a64:	00198993          	addi	s3,s3,1
    80001a68:	fd5ff06f          	j	80001a3c <printNumber+0x70>
    while (num2) {
    80001a6c:	02048063          	beqz	s1,80001a8c <printNumber+0xc0>
        __putc(num2 % 10 + '0');
    80001a70:	00a00913          	li	s2,10
    80001a74:	0324f533          	remu	a0,s1,s2
    80001a78:	03050513          	addi	a0,a0,48
    80001a7c:	00007097          	auipc	ra,0x7
    80001a80:	cd0080e7          	jalr	-816(ra) # 8000874c <__putc>
        num2 /= 10;
    80001a84:	0324d4b3          	divu	s1,s1,s2
    while (num2) {
    80001a88:	fe5ff06f          	j	80001a6c <printNumber+0xa0>
    while (zero_count--) __putc('0');
    80001a8c:	fff98493          	addi	s1,s3,-1
    80001a90:	00098c63          	beqz	s3,80001aa8 <printNumber+0xdc>
    80001a94:	03000513          	li	a0,48
    80001a98:	00007097          	auipc	ra,0x7
    80001a9c:	cb4080e7          	jalr	-844(ra) # 8000874c <__putc>
    80001aa0:	00048993          	mv	s3,s1
    80001aa4:	fe9ff06f          	j	80001a8c <printNumber+0xc0>
}
    80001aa8:	02813083          	ld	ra,40(sp)
    80001aac:	02013403          	ld	s0,32(sp)
    80001ab0:	01813483          	ld	s1,24(sp)
    80001ab4:	01013903          	ld	s2,16(sp)
    80001ab8:	00813983          	ld	s3,8(sp)
    80001abc:	03010113          	addi	sp,sp,48
    80001ac0:	00008067          	ret

0000000080001ac4 <_Z19testMemoryAllocatorv>:
void testMemoryAllocator() {
    80001ac4:	fe010113          	addi	sp,sp,-32
    80001ac8:	00113c23          	sd	ra,24(sp)
    80001acc:	00813823          	sd	s0,16(sp)
    80001ad0:	00913423          	sd	s1,8(sp)
    80001ad4:	01213023          	sd	s2,0(sp)
    80001ad8:	02010413          	addi	s0,sp,32
    MemoryAllocator::print();
    80001adc:	00001097          	auipc	ra,0x1
    80001ae0:	f10080e7          	jalr	-240(ra) # 800029ec <_ZN15MemoryAllocator5printEv>
    void *address = MemoryAllocator::mem_alloc(1);
    80001ae4:	00100513          	li	a0,1
    80001ae8:	00001097          	auipc	ra,0x1
    80001aec:	bac080e7          	jalr	-1108(ra) # 80002694 <_ZN15MemoryAllocator9mem_allocEm>
    80001af0:	00050493          	mv	s1,a0
    MemoryAllocator::print();
    80001af4:	00001097          	auipc	ra,0x1
    80001af8:	ef8080e7          	jalr	-264(ra) # 800029ec <_ZN15MemoryAllocator5printEv>
    int s1 = MemoryAllocator::mem_free(address);
    80001afc:	00048513          	mv	a0,s1
    80001b00:	00001097          	auipc	ra,0x1
    80001b04:	d80080e7          	jalr	-640(ra) # 80002880 <_ZN15MemoryAllocator8mem_freeEPv>
    80001b08:	00050913          	mv	s2,a0
    MemoryAllocator::print();
    80001b0c:	00001097          	auipc	ra,0x1
    80001b10:	ee0080e7          	jalr	-288(ra) # 800029ec <_ZN15MemoryAllocator5printEv>
    int s2 = MemoryAllocator::mem_free(address);
    80001b14:	00048513          	mv	a0,s1
    80001b18:	00001097          	auipc	ra,0x1
    80001b1c:	d68080e7          	jalr	-664(ra) # 80002880 <_ZN15MemoryAllocator8mem_freeEPv>
    80001b20:	00050493          	mv	s1,a0
    MemoryAllocator::print();
    80001b24:	00001097          	auipc	ra,0x1
    80001b28:	ec8080e7          	jalr	-312(ra) # 800029ec <_ZN15MemoryAllocator5printEv>
    __putc('\n');
    80001b2c:	00a00513          	li	a0,10
    80001b30:	00007097          	auipc	ra,0x7
    80001b34:	c1c080e7          	jalr	-996(ra) # 8000874c <__putc>
    if (s1 == 0) __putc('G'); /// G means Good (passed)
    80001b38:	02090263          	beqz	s2,80001b5c <_Z19testMemoryAllocatorv+0x98>
    if (s2 == -3) __putc('G'); /// same
    80001b3c:	ffd00793          	li	a5,-3
    80001b40:	02f48663          	beq	s1,a5,80001b6c <_Z19testMemoryAllocatorv+0xa8>
}
    80001b44:	01813083          	ld	ra,24(sp)
    80001b48:	01013403          	ld	s0,16(sp)
    80001b4c:	00813483          	ld	s1,8(sp)
    80001b50:	00013903          	ld	s2,0(sp)
    80001b54:	02010113          	addi	sp,sp,32
    80001b58:	00008067          	ret
    if (s1 == 0) __putc('G'); /// G means Good (passed)
    80001b5c:	04700513          	li	a0,71
    80001b60:	00007097          	auipc	ra,0x7
    80001b64:	bec080e7          	jalr	-1044(ra) # 8000874c <__putc>
    80001b68:	fd5ff06f          	j	80001b3c <_Z19testMemoryAllocatorv+0x78>
    if (s2 == -3) __putc('G'); /// same
    80001b6c:	04700513          	li	a0,71
    80001b70:	00007097          	auipc	ra,0x7
    80001b74:	bdc080e7          	jalr	-1060(ra) # 8000874c <__putc>
}
    80001b78:	fcdff06f          	j	80001b44 <_Z19testMemoryAllocatorv+0x80>

0000000080001b7c <_Z11testMemoryCv>:
void testMemoryC() {
    80001b7c:	fe010113          	addi	sp,sp,-32
    80001b80:	00113c23          	sd	ra,24(sp)
    80001b84:	00813823          	sd	s0,16(sp)
    80001b88:	00913423          	sd	s1,8(sp)
    80001b8c:	02010413          	addi	s0,sp,32
    MemoryAllocator::print();
    80001b90:	00001097          	auipc	ra,0x1
    80001b94:	e5c080e7          	jalr	-420(ra) # 800029ec <_ZN15MemoryAllocator5printEv>
    void* address = mem_alloc(50);
    80001b98:	03200513          	li	a0,50
    80001b9c:	fffff097          	auipc	ra,0xfffff
    80001ba0:	6bc080e7          	jalr	1724(ra) # 80001258 <_Z9mem_allocm>
    80001ba4:	00050493          	mv	s1,a0
    MemoryAllocator::print();
    80001ba8:	00001097          	auipc	ra,0x1
    80001bac:	e44080e7          	jalr	-444(ra) # 800029ec <_ZN15MemoryAllocator5printEv>
    mem_free(address);
    80001bb0:	00048513          	mv	a0,s1
    80001bb4:	fffff097          	auipc	ra,0xfffff
    80001bb8:	6f8080e7          	jalr	1784(ra) # 800012ac <_Z8mem_freePv>
    MemoryAllocator::print();
    80001bbc:	00001097          	auipc	ra,0x1
    80001bc0:	e30080e7          	jalr	-464(ra) # 800029ec <_ZN15MemoryAllocator5printEv>
}
    80001bc4:	01813083          	ld	ra,24(sp)
    80001bc8:	01013403          	ld	s0,16(sp)
    80001bcc:	00813483          	ld	s1,8(sp)
    80001bd0:	02010113          	addi	sp,sp,32
    80001bd4:	00008067          	ret

0000000080001bd8 <_Z11testThreadsv>:
    }
}
void testThreads() {
    80001bd8:	fd010113          	addi	sp,sp,-48
    80001bdc:	02113423          	sd	ra,40(sp)
    80001be0:	02813023          	sd	s0,32(sp)
    80001be4:	03010413          	addi	s0,sp,48
     thread_t threads[3];

    thread_create(&threads[0], nullptr, nullptr);
    80001be8:	00000613          	li	a2,0
    80001bec:	00000593          	li	a1,0
    80001bf0:	fd840513          	addi	a0,s0,-40
    80001bf4:	fffff097          	auipc	ra,0xfffff
    80001bf8:	704080e7          	jalr	1796(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running = threads[0];
    80001bfc:	fd843703          	ld	a4,-40(s0)
    80001c00:	0000a797          	auipc	a5,0xa
    80001c04:	d887b783          	ld	a5,-632(a5) # 8000b988 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001c08:	00e7b023          	sd	a4,0(a5)

    thread_create(&threads[1], workerA, nullptr);
    80001c0c:	00000613          	li	a2,0
    80001c10:	00000597          	auipc	a1,0x0
    80001c14:	d1458593          	addi	a1,a1,-748 # 80001924 <_Z7workerAPv>
    80001c18:	fe040513          	addi	a0,s0,-32
    80001c1c:	fffff097          	auipc	ra,0xfffff
    80001c20:	6dc080e7          	jalr	1756(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&threads[2], workerB, nullptr);
    80001c24:	00000613          	li	a2,0
    80001c28:	00000597          	auipc	a1,0x0
    80001c2c:	d5058593          	addi	a1,a1,-688 # 80001978 <_Z7workerBPv>
    80001c30:	fe840513          	addi	a0,s0,-24
    80001c34:	fffff097          	auipc	ra,0xfffff
    80001c38:	6c4080e7          	jalr	1732(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    80001c3c:	00c0006f          	j	80001c48 <_Z11testThreadsv+0x70>

    while (!threads[1] -> is_finished() || !threads[2] -> is_finished()) thread_dispatch();
    80001c40:	fffff097          	auipc	ra,0xfffff
    80001c44:	78c080e7          	jalr	1932(ra) # 800013cc <_Z15thread_dispatchv>
    80001c48:	fe043503          	ld	a0,-32(s0)
    80001c4c:	00000097          	auipc	ra,0x0
    80001c50:	554080e7          	jalr	1364(ra) # 800021a0 <_ZNK3TCB11is_finishedEv>
    80001c54:	fe0506e3          	beqz	a0,80001c40 <_Z11testThreadsv+0x68>
    80001c58:	fe843503          	ld	a0,-24(s0)
    80001c5c:	00000097          	auipc	ra,0x0
    80001c60:	544080e7          	jalr	1348(ra) # 800021a0 <_ZNK3TCB11is_finishedEv>
    80001c64:	fc050ee3          	beqz	a0,80001c40 <_Z11testThreadsv+0x68>
}
    80001c68:	02813083          	ld	ra,40(sp)
    80001c6c:	02013403          	ld	s0,32(sp)
    80001c70:	03010113          	addi	sp,sp,48
    80001c74:	00008067          	ret

0000000080001c78 <_Z13testSemaphorev>:
void testSemaphore() {
    80001c78:	ff010113          	addi	sp,sp,-16
    80001c7c:	00813423          	sd	s0,8(sp)
    80001c80:	01010413          	addi	s0,sp,16

}
    80001c84:	00813403          	ld	s0,8(sp)
    80001c88:	01010113          	addi	sp,sp,16
    80001c8c:	00008067          	ret

0000000080001c90 <_Z15userMainWrapperPv>:
void userMain();
void userMainWrapper(void *args) {
    80001c90:	ff010113          	addi	sp,sp,-16
    80001c94:	00113423          	sd	ra,8(sp)
    80001c98:	00813023          	sd	s0,0(sp)
    80001c9c:	01010413          	addi	s0,sp,16
    userMain();
    80001ca0:	00004097          	auipc	ra,0x4
    80001ca4:	ee4080e7          	jalr	-284(ra) # 80005b84 <_Z8userMainv>
}
    80001ca8:	00813083          	ld	ra,8(sp)
    80001cac:	00013403          	ld	s0,0(sp)
    80001cb0:	01010113          	addi	sp,sp,16
    80001cb4:	00008067          	ret

0000000080001cb8 <_Z10initializev>:
void initialize() {
    80001cb8:	ff010113          	addi	sp,sp,-16
    80001cbc:	00113423          	sd	ra,8(sp)
    80001cc0:	00813023          	sd	s0,0(sp)
    80001cc4:	01010413          	addi	s0,sp,16
    /// Set interrupt routine handler
    RiscV::write_stvec((uint64) &RiscV::handle_interrupt);
    80001cc8:	0000a797          	auipc	a5,0xa
    80001ccc:	cb07b783          	ld	a5,-848(a5) # 8000b978 <_GLOBAL_OFFSET_TABLE_+0x10>
    __asm__ volatile ("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void RiscV::write_stvec(uint64 val) {
    __asm__ volatile ("csrw stvec, %0" : : "r"(val));
    80001cd0:	10579073          	csrw	stvec,a5
    /// Enable software interrupts
//    RiscV::ms_sstatus(RiscV::SSTATUS_SIE);
    /// Initialize Memory Allocator
    MemoryAllocator::initialize();
    80001cd4:	00001097          	auipc	ra,0x1
    80001cd8:	adc080e7          	jalr	-1316(ra) # 800027b0 <_ZN15MemoryAllocator10initializeEv>
}
    80001cdc:	00813083          	ld	ra,8(sp)
    80001ce0:	00013403          	ld	s0,0(sp)
    80001ce4:	01010113          	addi	sp,sp,16
    80001ce8:	00008067          	ret

0000000080001cec <_Z4testv>:
void test() {
    80001cec:	ff010113          	addi	sp,sp,-16
    80001cf0:	00113423          	sd	ra,8(sp)
    80001cf4:	00813023          	sd	s0,0(sp)
    80001cf8:	01010413          	addi	s0,sp,16
    /// Test Memory Allocation
//    testMemoryAllocator();
//    testMemoryC();
    /// Test Threads
    testThreads();
    80001cfc:	00000097          	auipc	ra,0x0
    80001d00:	edc080e7          	jalr	-292(ra) # 80001bd8 <_Z11testThreadsv>
    testSemaphore();
    /// Test Everything
//    static thread_t umain;
//    thread_create(&umain, userMainWrapper, nullptr);
//    while (!umain -> is_finished()) thread_dispatch();
}
    80001d04:	00813083          	ld	ra,8(sp)
    80001d08:	00013403          	ld	s0,0(sp)
    80001d0c:	01010113          	addi	sp,sp,16
    80001d10:	00008067          	ret

0000000080001d14 <main>:


int main() {
    80001d14:	ff010113          	addi	sp,sp,-16
    80001d18:	00113423          	sd	ra,8(sp)
    80001d1c:	00813023          	sd	s0,0(sp)
    80001d20:	01010413          	addi	s0,sp,16
    initialize();
    80001d24:	00000097          	auipc	ra,0x0
    80001d28:	f94080e7          	jalr	-108(ra) # 80001cb8 <_Z10initializev>
    test();
    80001d2c:	00000097          	auipc	ra,0x0
    80001d30:	fc0080e7          	jalr	-64(ra) # 80001cec <_Z4testv>
    __putc('\n');
    80001d34:	00a00513          	li	a0,10
    80001d38:	00007097          	auipc	ra,0x7
    80001d3c:	a14080e7          	jalr	-1516(ra) # 8000874c <__putc>
    return 0;
    80001d40:	00000513          	li	a0,0
    80001d44:	00813083          	ld	ra,8(sp)
    80001d48:	00013403          	ld	s0,0(sp)
    80001d4c:	01010113          	addi	sp,sp,16
    80001d50:	00008067          	ret

0000000080001d54 <_ZN3Con4putcEc>:
#include "../h/console.hpp"

void Con::putc(char c) {
    80001d54:	ff010113          	addi	sp,sp,-16
    80001d58:	00813423          	sd	s0,8(sp)
    80001d5c:	01010413          	addi	s0,sp,16

}
    80001d60:	00813403          	ld	s0,8(sp)
    80001d64:	01010113          	addi	sp,sp,16
    80001d68:	00008067          	ret

0000000080001d6c <_ZN3Con4getcEv>:

char Con::getc() {
    80001d6c:	ff010113          	addi	sp,sp,-16
    80001d70:	00813423          	sd	s0,8(sp)
    80001d74:	01010413          	addi	s0,sp,16
    return 0;
}
    80001d78:	00000513          	li	a0,0
    80001d7c:	00813403          	ld	s0,8(sp)
    80001d80:	01010113          	addi	sp,sp,16
    80001d84:	00008067          	ret

0000000080001d88 <_ZN3TCBC1EPFvPvES0_S0_NS_7ContextE>:
    };
    *handle = new TCB(start_routine, arg, stack_begin_address, context);
    return 0;
}

TCB::TCB(void (*function_body)(void *), void *arg, void *stack, Context context) : context(context) {
    80001d88:	00e53423          	sd	a4,8(a0)
    80001d8c:	00f53823          	sd	a5,16(a0)
    id = cnt++;
    80001d90:	0000a717          	auipc	a4,0xa
    80001d94:	c5070713          	addi	a4,a4,-944 # 8000b9e0 <_ZN3TCB3cntE>
    80001d98:	00072783          	lw	a5,0(a4)
    80001d9c:	0017881b          	addiw	a6,a5,1
    80001da0:	01072023          	sw	a6,0(a4)
    80001da4:	00f52023          	sw	a5,0(a0)
    status = RUNNABLE;
    80001da8:	00052c23          	sw	zero,24(a0)
    this -> function_body = function_body;
    80001dac:	02b53023          	sd	a1,32(a0)
    this -> arg = arg;
    80001db0:	02c53423          	sd	a2,40(a0)
    this -> stack = stack;
    80001db4:	02d53823          	sd	a3,48(a0)
    time_slice = DEFAULT_TIME_SLICE;
    80001db8:	00200793          	li	a5,2
    80001dbc:	02f53c23          	sd	a5,56(a0)
    time_to_sleep = 0;
    80001dc0:	04053423          	sd	zero,72(a0)
    next_ready = nullptr;
    80001dc4:	04053023          	sd	zero,64(a0)
    next_sleeping = nullptr;
    80001dc8:	04053823          	sd	zero,80(a0)
    if (function_body) Scheduler::put(this);
    80001dcc:	02058663          	beqz	a1,80001df8 <_ZN3TCBC1EPFvPvES0_S0_NS_7ContextE+0x70>
TCB::TCB(void (*function_body)(void *), void *arg, void *stack, Context context) : context(context) {
    80001dd0:	fe010113          	addi	sp,sp,-32
    80001dd4:	00113c23          	sd	ra,24(sp)
    80001dd8:	00813823          	sd	s0,16(sp)
    80001ddc:	02010413          	addi	s0,sp,32
    if (function_body) Scheduler::put(this);
    80001de0:	00001097          	auipc	ra,0x1
    80001de4:	cd0080e7          	jalr	-816(ra) # 80002ab0 <_ZN9Scheduler3putEP3TCB>
}
    80001de8:	01813083          	ld	ra,24(sp)
    80001dec:	01013403          	ld	s0,16(sp)
    80001df0:	02010113          	addi	sp,sp,32
    80001df4:	00008067          	ret
    80001df8:	00008067          	ret

0000000080001dfc <_ZN3TCB5yieldEPS_S0_>:
//    RiscV::popSppSpie();
    if (running -> function_body) running -> function_body(running -> arg);
    thread_exit();
}

void TCB::yield(TCB *old_running, TCB *new_running) {
    80001dfc:	fe010113          	addi	sp,sp,-32
    80001e00:	00113c23          	sd	ra,24(sp)
    80001e04:	00813823          	sd	s0,16(sp)
    80001e08:	00913423          	sd	s1,8(sp)
    80001e0c:	01213023          	sd	s2,0(sp)
    80001e10:	02010413          	addi	s0,sp,32
    80001e14:	00050493          	mv	s1,a0
    80001e18:	00058913          	mv	s2,a1
    RiscV::push_registers();
    80001e1c:	fffff097          	auipc	ra,0xfffff
    80001e20:	2ec080e7          	jalr	748(ra) # 80001108 <_ZN5RiscV14push_registersEv>
    if (old_running != new_running) context_switch(&old_running -> context, &new_running -> context);
    80001e24:	01248a63          	beq	s1,s2,80001e38 <_ZN3TCB5yieldEPS_S0_+0x3c>
    80001e28:	00890593          	addi	a1,s2,8
    80001e2c:	00848513          	addi	a0,s1,8
    80001e30:	fffff097          	auipc	ra,0xfffff
    80001e34:	3d8080e7          	jalr	984(ra) # 80001208 <_ZN3TCB14context_switchEPNS_7ContextES1_>
    RiscV::pop_registers();
    80001e38:	fffff097          	auipc	ra,0xfffff
    80001e3c:	350080e7          	jalr	848(ra) # 80001188 <_ZN5RiscV13pop_registersEv>
}
    80001e40:	01813083          	ld	ra,24(sp)
    80001e44:	01013403          	ld	s0,16(sp)
    80001e48:	00813483          	ld	s1,8(sp)
    80001e4c:	00013903          	ld	s2,0(sp)
    80001e50:	02010113          	addi	sp,sp,32
    80001e54:	00008067          	ret

0000000080001e58 <_ZN3TCB8dispatchEv>:

void TCB::dispatch() {
    80001e58:	fe010113          	addi	sp,sp,-32
    80001e5c:	00113c23          	sd	ra,24(sp)
    80001e60:	00813823          	sd	s0,16(sp)
    80001e64:	00913423          	sd	s1,8(sp)
    80001e68:	02010413          	addi	s0,sp,32
    TCB* old = running;
    80001e6c:	0000a497          	auipc	s1,0xa
    80001e70:	b7c4b483          	ld	s1,-1156(s1) # 8000b9e8 <_ZN3TCB7runningE>
    if (old -> status == RUNNABLE) Scheduler::put(old);
    80001e74:	0184a783          	lw	a5,24(s1)
    80001e78:	02078e63          	beqz	a5,80001eb4 <_ZN3TCB8dispatchEv+0x5c>
    running = Scheduler::get();
    80001e7c:	00001097          	auipc	ra,0x1
    80001e80:	c94080e7          	jalr	-876(ra) # 80002b10 <_ZN9Scheduler3getEv>
    80001e84:	00050593          	mv	a1,a0
    80001e88:	0000a797          	auipc	a5,0xa
    80001e8c:	b6a7b023          	sd	a0,-1184(a5) # 8000b9e8 <_ZN3TCB7runningE>
    if (old != running) yield(old, running);
    80001e90:	00a48863          	beq	s1,a0,80001ea0 <_ZN3TCB8dispatchEv+0x48>
    80001e94:	00048513          	mv	a0,s1
    80001e98:	00000097          	auipc	ra,0x0
    80001e9c:	f64080e7          	jalr	-156(ra) # 80001dfc <_ZN3TCB5yieldEPS_S0_>
}
    80001ea0:	01813083          	ld	ra,24(sp)
    80001ea4:	01013403          	ld	s0,16(sp)
    80001ea8:	00813483          	ld	s1,8(sp)
    80001eac:	02010113          	addi	sp,sp,32
    80001eb0:	00008067          	ret
    if (old -> status == RUNNABLE) Scheduler::put(old);
    80001eb4:	00048513          	mv	a0,s1
    80001eb8:	00001097          	auipc	ra,0x1
    80001ebc:	bf8080e7          	jalr	-1032(ra) # 80002ab0 <_ZN9Scheduler3putEP3TCB>
    80001ec0:	fbdff06f          	j	80001e7c <_ZN3TCB8dispatchEv+0x24>

0000000080001ec4 <_ZNK3TCB14get_next_readyEv>:

TCB *TCB::get_next_ready() const {
    80001ec4:	ff010113          	addi	sp,sp,-16
    80001ec8:	00813423          	sd	s0,8(sp)
    80001ecc:	01010413          	addi	s0,sp,16
    return next_ready;
}
    80001ed0:	04053503          	ld	a0,64(a0)
    80001ed4:	00813403          	ld	s0,8(sp)
    80001ed8:	01010113          	addi	sp,sp,16
    80001edc:	00008067          	ret

0000000080001ee0 <_ZN3TCB14set_next_readyEPS_>:

void TCB::set_next_ready(TCB *next) {
    80001ee0:	ff010113          	addi	sp,sp,-16
    80001ee4:	00813423          	sd	s0,8(sp)
    80001ee8:	01010413          	addi	s0,sp,16
    next_ready = next;
    80001eec:	04b53023          	sd	a1,64(a0)
}
    80001ef0:	00813403          	ld	s0,8(sp)
    80001ef4:	01010113          	addi	sp,sp,16
    80001ef8:	00008067          	ret

0000000080001efc <_ZN3TCB17set_next_sleepingEPS_>:

void TCB::set_next_sleeping(TCB *next) {
    80001efc:	ff010113          	addi	sp,sp,-16
    80001f00:	00813423          	sd	s0,8(sp)
    80001f04:	01010413          	addi	s0,sp,16
    next_sleeping = next;
    80001f08:	04b53823          	sd	a1,80(a0)
}
    80001f0c:	00813403          	ld	s0,8(sp)
    80001f10:	01010113          	addi	sp,sp,16
    80001f14:	00008067          	ret

0000000080001f18 <_ZNK3TCB17get_next_sleepingEv>:

TCB* TCB::get_next_sleeping() const {
    80001f18:	ff010113          	addi	sp,sp,-16
    80001f1c:	00813423          	sd	s0,8(sp)
    80001f20:	01010413          	addi	s0,sp,16
    return next_sleeping;
}
    80001f24:	05053503          	ld	a0,80(a0)
    80001f28:	00813403          	ld	s0,8(sp)
    80001f2c:	01010113          	addi	sp,sp,16
    80001f30:	00008067          	ret

0000000080001f34 <_ZN3TCB17set_time_to_sleepEm>:

void TCB::set_time_to_sleep(time_t time) {
    80001f34:	ff010113          	addi	sp,sp,-16
    80001f38:	00813423          	sd	s0,8(sp)
    80001f3c:	01010413          	addi	s0,sp,16
    time_to_sleep = time;
    80001f40:	04b53423          	sd	a1,72(a0)
}
    80001f44:	00813403          	ld	s0,8(sp)
    80001f48:	01010113          	addi	sp,sp,16
    80001f4c:	00008067          	ret

0000000080001f50 <_ZNK3TCB17get_time_to_sleepEv>:

time_t TCB::get_time_to_sleep() const {
    80001f50:	ff010113          	addi	sp,sp,-16
    80001f54:	00813423          	sd	s0,8(sp)
    80001f58:	01010413          	addi	s0,sp,16
    return time_to_sleep;
}
    80001f5c:	04853503          	ld	a0,72(a0)
    80001f60:	00813403          	ld	s0,8(sp)
    80001f64:	01010113          	addi	sp,sp,16
    80001f68:	00008067          	ret

0000000080001f6c <_ZN3TCB10set_statusENS_6StatusE>:

void TCB::set_status(TCB::Status stat) {
    80001f6c:	ff010113          	addi	sp,sp,-16
    80001f70:	00813423          	sd	s0,8(sp)
    80001f74:	01010413          	addi	s0,sp,16
    this -> status = stat;
    80001f78:	00b52c23          	sw	a1,24(a0)
}
    80001f7c:	00813403          	ld	s0,8(sp)
    80001f80:	01010113          	addi	sp,sp,16
    80001f84:	00008067          	ret

0000000080001f88 <_ZN3TCB11thread_exitEv>:
void TCB::thread_exit() {
    80001f88:	ff010113          	addi	sp,sp,-16
    80001f8c:	00113423          	sd	ra,8(sp)
    80001f90:	00813023          	sd	s0,0(sp)
    80001f94:	01010413          	addi	s0,sp,16
    running -> set_status(Status::FINISHED);
    80001f98:	00400593          	li	a1,4
    80001f9c:	0000a517          	auipc	a0,0xa
    80001fa0:	a4c53503          	ld	a0,-1460(a0) # 8000b9e8 <_ZN3TCB7runningE>
    80001fa4:	00000097          	auipc	ra,0x0
    80001fa8:	fc8080e7          	jalr	-56(ra) # 80001f6c <_ZN3TCB10set_statusENS_6StatusE>
    dispatch();
    80001fac:	00000097          	auipc	ra,0x0
    80001fb0:	eac080e7          	jalr	-340(ra) # 80001e58 <_ZN3TCB8dispatchEv>
}
    80001fb4:	00813083          	ld	ra,8(sp)
    80001fb8:	00013403          	ld	s0,0(sp)
    80001fbc:	01010113          	addi	sp,sp,16
    80001fc0:	00008067          	ret

0000000080001fc4 <_ZN3TCB16wrapper_functionEv>:
void TCB::wrapper_function() {
    80001fc4:	ff010113          	addi	sp,sp,-16
    80001fc8:	00113423          	sd	ra,8(sp)
    80001fcc:	00813023          	sd	s0,0(sp)
    80001fd0:	01010413          	addi	s0,sp,16
    if (running -> function_body) running -> function_body(running -> arg);
    80001fd4:	0000a717          	auipc	a4,0xa
    80001fd8:	a1473703          	ld	a4,-1516(a4) # 8000b9e8 <_ZN3TCB7runningE>
    80001fdc:	02073783          	ld	a5,32(a4)
    80001fe0:	00078663          	beqz	a5,80001fec <_ZN3TCB16wrapper_functionEv+0x28>
    80001fe4:	02873503          	ld	a0,40(a4)
    80001fe8:	000780e7          	jalr	a5
    thread_exit();
    80001fec:	00000097          	auipc	ra,0x0
    80001ff0:	f9c080e7          	jalr	-100(ra) # 80001f88 <_ZN3TCB11thread_exitEv>
}
    80001ff4:	00813083          	ld	ra,8(sp)
    80001ff8:	00013403          	ld	s0,0(sp)
    80001ffc:	01010113          	addi	sp,sp,16
    80002000:	00008067          	ret

0000000080002004 <_ZN3TCB5startEv>:

void TCB::start() {
    80002004:	fe010113          	addi	sp,sp,-32
    80002008:	00113c23          	sd	ra,24(sp)
    8000200c:	00813823          	sd	s0,16(sp)
    80002010:	00913423          	sd	s1,8(sp)
    80002014:	02010413          	addi	s0,sp,32
    80002018:	00050493          	mv	s1,a0
    Scheduler::put(this);
    8000201c:	00001097          	auipc	ra,0x1
    80002020:	a94080e7          	jalr	-1388(ra) # 80002ab0 <_ZN9Scheduler3putEP3TCB>
    if (!running) running = this;
    80002024:	0000a797          	auipc	a5,0xa
    80002028:	9c47b783          	ld	a5,-1596(a5) # 8000b9e8 <_ZN3TCB7runningE>
    8000202c:	00078c63          	beqz	a5,80002044 <_ZN3TCB5startEv+0x40>
}
    80002030:	01813083          	ld	ra,24(sp)
    80002034:	01013403          	ld	s0,16(sp)
    80002038:	00813483          	ld	s1,8(sp)
    8000203c:	02010113          	addi	sp,sp,32
    80002040:	00008067          	ret
    if (!running) running = this;
    80002044:	0000a797          	auipc	a5,0xa
    80002048:	9a97b223          	sd	s1,-1628(a5) # 8000b9e8 <_ZN3TCB7runningE>
}
    8000204c:	fe5ff06f          	j	80002030 <_ZN3TCB5startEv+0x2c>

0000000080002050 <_ZN3TCBnwEm>:

void *TCB::operator new(size_t size) {
    80002050:	ff010113          	addi	sp,sp,-16
    80002054:	00113423          	sd	ra,8(sp)
    80002058:	00813023          	sd	s0,0(sp)
    8000205c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    80002060:	00001097          	auipc	ra,0x1
    80002064:	a30080e7          	jalr	-1488(ra) # 80002a90 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80002068:	00000097          	auipc	ra,0x0
    8000206c:	62c080e7          	jalr	1580(ra) # 80002694 <_ZN15MemoryAllocator9mem_allocEm>
}
    80002070:	00813083          	ld	ra,8(sp)
    80002074:	00013403          	ld	s0,0(sp)
    80002078:	01010113          	addi	sp,sp,16
    8000207c:	00008067          	ret

0000000080002080 <_ZN3TCBdlEPv>:

void TCB::operator delete(void *addr) {
    80002080:	ff010113          	addi	sp,sp,-16
    80002084:	00113423          	sd	ra,8(sp)
    80002088:	00813023          	sd	s0,0(sp)
    8000208c:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    80002090:	00000097          	auipc	ra,0x0
    80002094:	7f0080e7          	jalr	2032(ra) # 80002880 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80002098:	00813083          	ld	ra,8(sp)
    8000209c:	00013403          	ld	s0,0(sp)
    800020a0:	01010113          	addi	sp,sp,16
    800020a4:	00008067          	ret

00000000800020a8 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>:
int TCB::thread_create(thread_t *handle, void(*start_routine)(void *), void *arg, void *stack_begin_address) {
    800020a8:	fa010113          	addi	sp,sp,-96
    800020ac:	04113c23          	sd	ra,88(sp)
    800020b0:	04813823          	sd	s0,80(sp)
    800020b4:	04913423          	sd	s1,72(sp)
    800020b8:	05213023          	sd	s2,64(sp)
    800020bc:	03313c23          	sd	s3,56(sp)
    800020c0:	03413823          	sd	s4,48(sp)
    800020c4:	03513423          	sd	s5,40(sp)
    800020c8:	06010413          	addi	s0,sp,96
    800020cc:	00050993          	mv	s3,a0
    800020d0:	00058a13          	mv	s4,a1
    800020d4:	00060a93          	mv	s5,a2
    800020d8:	00068493          	mv	s1,a3
    Context context = {
    800020dc:	00000797          	auipc	a5,0x0
    800020e0:	ee878793          	addi	a5,a5,-280 # 80001fc4 <_ZN3TCB16wrapper_functionEv>
    800020e4:	faf43023          	sd	a5,-96(s0)
            (uint64) (stack_begin_address ? (uint64) stack_begin_address + DEFAULT_STACK_SIZE - 1 : 0)
    800020e8:	04068663          	beqz	a3,80002134 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_+0x8c>
    800020ec:	000017b7          	lui	a5,0x1
    800020f0:	fff78793          	addi	a5,a5,-1 # fff <_entry-0x7ffff001>
    800020f4:	00f687b3          	add	a5,a3,a5
    *handle = new TCB(start_routine, arg, stack_begin_address, context);
    800020f8:	fa043703          	ld	a4,-96(s0)
    800020fc:	fae43823          	sd	a4,-80(s0)
    80002100:	faf43c23          	sd	a5,-72(s0)
    80002104:	05800513          	li	a0,88
    80002108:	00000097          	auipc	ra,0x0
    8000210c:	f48080e7          	jalr	-184(ra) # 80002050 <_ZN3TCBnwEm>
    80002110:	00050913          	mv	s2,a0
    80002114:	fb043703          	ld	a4,-80(s0)
    80002118:	fb843783          	ld	a5,-72(s0)
    8000211c:	00048693          	mv	a3,s1
    80002120:	000a8613          	mv	a2,s5
    80002124:	000a0593          	mv	a1,s4
    80002128:	00000097          	auipc	ra,0x0
    8000212c:	c60080e7          	jalr	-928(ra) # 80001d88 <_ZN3TCBC1EPFvPvES0_S0_NS_7ContextE>
    80002130:	0280006f          	j	80002158 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_+0xb0>
            (uint64) (stack_begin_address ? (uint64) stack_begin_address + DEFAULT_STACK_SIZE - 1 : 0)
    80002134:	00000793          	li	a5,0
    80002138:	fc1ff06f          	j	800020f8 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_+0x50>
    8000213c:	00050493          	mv	s1,a0
    *handle = new TCB(start_routine, arg, stack_begin_address, context);
    80002140:	00090513          	mv	a0,s2
    80002144:	00000097          	auipc	ra,0x0
    80002148:	f3c080e7          	jalr	-196(ra) # 80002080 <_ZN3TCBdlEPv>
    8000214c:	00048513          	mv	a0,s1
    80002150:	0000b097          	auipc	ra,0xb
    80002154:	9f8080e7          	jalr	-1544(ra) # 8000cb48 <_Unwind_Resume>
    80002158:	0129b023          	sd	s2,0(s3)
}
    8000215c:	00000513          	li	a0,0
    80002160:	05813083          	ld	ra,88(sp)
    80002164:	05013403          	ld	s0,80(sp)
    80002168:	04813483          	ld	s1,72(sp)
    8000216c:	04013903          	ld	s2,64(sp)
    80002170:	03813983          	ld	s3,56(sp)
    80002174:	03013a03          	ld	s4,48(sp)
    80002178:	02813a83          	ld	s5,40(sp)
    8000217c:	06010113          	addi	sp,sp,96
    80002180:	00008067          	ret

0000000080002184 <_ZNK3TCB14get_time_sliceEv>:

time_t TCB::get_time_slice() const {
    80002184:	ff010113          	addi	sp,sp,-16
    80002188:	00813423          	sd	s0,8(sp)
    8000218c:	01010413          	addi	s0,sp,16
    return time_slice;
}
    80002190:	03853503          	ld	a0,56(a0)
    80002194:	00813403          	ld	s0,8(sp)
    80002198:	01010113          	addi	sp,sp,16
    8000219c:	00008067          	ret

00000000800021a0 <_ZNK3TCB11is_finishedEv>:

bool TCB::is_finished() const {
    800021a0:	ff010113          	addi	sp,sp,-16
    800021a4:	00813423          	sd	s0,8(sp)
    800021a8:	01010413          	addi	s0,sp,16
    return status == FINISHED;
    800021ac:	01852503          	lw	a0,24(a0)
    800021b0:	ffc50513          	addi	a0,a0,-4
}
    800021b4:	00153513          	seqz	a0,a0
    800021b8:	00813403          	ld	s0,8(sp)
    800021bc:	01010113          	addi	sp,sp,16
    800021c0:	00008067          	ret

00000000800021c4 <_ZN6ThreadD1Ev>:

Thread::Thread(void (*body)(void *), void *arg) : myHandle(nullptr) {
    thread_create(&myHandle, body, arg);
}

Thread::~Thread() {
    800021c4:	fe010113          	addi	sp,sp,-32
    800021c8:	00113c23          	sd	ra,24(sp)
    800021cc:	00813823          	sd	s0,16(sp)
    800021d0:	00913423          	sd	s1,8(sp)
    800021d4:	02010413          	addi	s0,sp,32
    800021d8:	00050493          	mv	s1,a0
    800021dc:	00009797          	auipc	a5,0x9
    800021e0:	5ac78793          	addi	a5,a5,1452 # 8000b788 <_ZTV6Thread+0x10>
    800021e4:	00f53023          	sd	a5,0(a0)
    myHandle -> set_status(TCB::FINISHED);
    800021e8:	00400593          	li	a1,4
    800021ec:	00853503          	ld	a0,8(a0)
    800021f0:	00000097          	auipc	ra,0x0
    800021f4:	d7c080e7          	jalr	-644(ra) # 80001f6c <_ZN3TCB10set_statusENS_6StatusE>
    delete myHandle;
    800021f8:	0084b503          	ld	a0,8(s1)
    800021fc:	00050663          	beqz	a0,80002208 <_ZN6ThreadD1Ev+0x44>
    80002200:	00000097          	auipc	ra,0x0
    80002204:	e80080e7          	jalr	-384(ra) # 80002080 <_ZN3TCBdlEPv>
}
    80002208:	01813083          	ld	ra,24(sp)
    8000220c:	01013403          	ld	s0,16(sp)
    80002210:	00813483          	ld	s1,8(sp)
    80002214:	02010113          	addi	sp,sp,32
    80002218:	00008067          	ret

000000008000221c <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) : myHandle(nullptr) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    8000221c:	00009797          	auipc	a5,0x9
    80002220:	59478793          	addi	a5,a5,1428 # 8000b7b0 <_ZTV9Semaphore+0x10>
    80002224:	00f53023          	sd	a5,0(a0)
    if (myHandle) sem_close(myHandle);
    80002228:	00853503          	ld	a0,8(a0)
    8000222c:	02050663          	beqz	a0,80002258 <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    80002230:	ff010113          	addi	sp,sp,-16
    80002234:	00113423          	sd	ra,8(sp)
    80002238:	00813023          	sd	s0,0(sp)
    8000223c:	01010413          	addi	s0,sp,16
    if (myHandle) sem_close(myHandle);
    80002240:	fffff097          	auipc	ra,0xfffff
    80002244:	218080e7          	jalr	536(ra) # 80001458 <_Z9sem_closeP3Sem>
}
    80002248:	00813083          	ld	ra,8(sp)
    8000224c:	00013403          	ld	s0,0(sp)
    80002250:	01010113          	addi	sp,sp,16
    80002254:	00008067          	ret
    80002258:	00008067          	ret

000000008000225c <_Znwm>:
void* operator new(size_t size){
    8000225c:	ff010113          	addi	sp,sp,-16
    80002260:	00113423          	sd	ra,8(sp)
    80002264:	00813023          	sd	s0,0(sp)
    80002268:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    8000226c:	fffff097          	auipc	ra,0xfffff
    80002270:	fec080e7          	jalr	-20(ra) # 80001258 <_Z9mem_allocm>
}
    80002274:	00813083          	ld	ra,8(sp)
    80002278:	00013403          	ld	s0,0(sp)
    8000227c:	01010113          	addi	sp,sp,16
    80002280:	00008067          	ret

0000000080002284 <_ZdlPv>:
void operator delete(void* p) noexcept {
    80002284:	ff010113          	addi	sp,sp,-16
    80002288:	00113423          	sd	ra,8(sp)
    8000228c:	00813023          	sd	s0,0(sp)
    80002290:	01010413          	addi	s0,sp,16
    mem_free(p);
    80002294:	fffff097          	auipc	ra,0xfffff
    80002298:	018080e7          	jalr	24(ra) # 800012ac <_Z8mem_freePv>
}
    8000229c:	00813083          	ld	ra,8(sp)
    800022a0:	00013403          	ld	s0,0(sp)
    800022a4:	01010113          	addi	sp,sp,16
    800022a8:	00008067          	ret

00000000800022ac <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    800022ac:	fe010113          	addi	sp,sp,-32
    800022b0:	00113c23          	sd	ra,24(sp)
    800022b4:	00813823          	sd	s0,16(sp)
    800022b8:	00913423          	sd	s1,8(sp)
    800022bc:	02010413          	addi	s0,sp,32
    800022c0:	00050493          	mv	s1,a0
}
    800022c4:	00000097          	auipc	ra,0x0
    800022c8:	f00080e7          	jalr	-256(ra) # 800021c4 <_ZN6ThreadD1Ev>
    800022cc:	00048513          	mv	a0,s1
    800022d0:	00000097          	auipc	ra,0x0
    800022d4:	fb4080e7          	jalr	-76(ra) # 80002284 <_ZdlPv>
    800022d8:	01813083          	ld	ra,24(sp)
    800022dc:	01013403          	ld	s0,16(sp)
    800022e0:	00813483          	ld	s1,8(sp)
    800022e4:	02010113          	addi	sp,sp,32
    800022e8:	00008067          	ret

00000000800022ec <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800022ec:	fe010113          	addi	sp,sp,-32
    800022f0:	00113c23          	sd	ra,24(sp)
    800022f4:	00813823          	sd	s0,16(sp)
    800022f8:	00913423          	sd	s1,8(sp)
    800022fc:	02010413          	addi	s0,sp,32
    80002300:	00050493          	mv	s1,a0
}
    80002304:	00000097          	auipc	ra,0x0
    80002308:	f18080e7          	jalr	-232(ra) # 8000221c <_ZN9SemaphoreD1Ev>
    8000230c:	00048513          	mv	a0,s1
    80002310:	00000097          	auipc	ra,0x0
    80002314:	f74080e7          	jalr	-140(ra) # 80002284 <_ZdlPv>
    80002318:	01813083          	ld	ra,24(sp)
    8000231c:	01013403          	ld	s0,16(sp)
    80002320:	00813483          	ld	s1,8(sp)
    80002324:	02010113          	addi	sp,sp,32
    80002328:	00008067          	ret

000000008000232c <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) : myHandle(nullptr) {
    8000232c:	ff010113          	addi	sp,sp,-16
    80002330:	00113423          	sd	ra,8(sp)
    80002334:	00813023          	sd	s0,0(sp)
    80002338:	01010413          	addi	s0,sp,16
    8000233c:	00009797          	auipc	a5,0x9
    80002340:	44c78793          	addi	a5,a5,1100 # 8000b788 <_ZTV6Thread+0x10>
    80002344:	00f53023          	sd	a5,0(a0)
    80002348:	00053423          	sd	zero,8(a0)
    thread_create(&myHandle, body, arg);
    8000234c:	00850513          	addi	a0,a0,8
    80002350:	fffff097          	auipc	ra,0xfffff
    80002354:	fa8080e7          	jalr	-88(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
}
    80002358:	00813083          	ld	ra,8(sp)
    8000235c:	00013403          	ld	s0,0(sp)
    80002360:	01010113          	addi	sp,sp,16
    80002364:	00008067          	ret

0000000080002368 <_ZN6Thread5startEv>:
int Thread::start() {
    80002368:	ff010113          	addi	sp,sp,-16
    8000236c:	00113423          	sd	ra,8(sp)
    80002370:	00813023          	sd	s0,0(sp)
    80002374:	01010413          	addi	s0,sp,16
    myHandle -> start();
    80002378:	00853503          	ld	a0,8(a0)
    8000237c:	00000097          	auipc	ra,0x0
    80002380:	c88080e7          	jalr	-888(ra) # 80002004 <_ZN3TCB5startEv>
}
    80002384:	00000513          	li	a0,0
    80002388:	00813083          	ld	ra,8(sp)
    8000238c:	00013403          	ld	s0,0(sp)
    80002390:	01010113          	addi	sp,sp,16
    80002394:	00008067          	ret

0000000080002398 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80002398:	ff010113          	addi	sp,sp,-16
    8000239c:	00113423          	sd	ra,8(sp)
    800023a0:	00813023          	sd	s0,0(sp)
    800023a4:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800023a8:	fffff097          	auipc	ra,0xfffff
    800023ac:	024080e7          	jalr	36(ra) # 800013cc <_Z15thread_dispatchv>
}
    800023b0:	00813083          	ld	ra,8(sp)
    800023b4:	00013403          	ld	s0,0(sp)
    800023b8:	01010113          	addi	sp,sp,16
    800023bc:	00008067          	ret

00000000800023c0 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    800023c0:	ff010113          	addi	sp,sp,-16
    800023c4:	00113423          	sd	ra,8(sp)
    800023c8:	00813023          	sd	s0,0(sp)
    800023cc:	01010413          	addi	s0,sp,16
    time_sleep(time);
    800023d0:	fffff097          	auipc	ra,0xfffff
    800023d4:	204080e7          	jalr	516(ra) # 800015d4 <_Z10time_sleepm>
}
    800023d8:	00000513          	li	a0,0
    800023dc:	00813083          	ld	ra,8(sp)
    800023e0:	00013403          	ld	s0,0(sp)
    800023e4:	01010113          	addi	sp,sp,16
    800023e8:	00008067          	ret

00000000800023ec <_ZN6ThreadC1Ev>:
Thread::Thread() : myHandle(nullptr) {
    800023ec:	ff010113          	addi	sp,sp,-16
    800023f0:	00813423          	sd	s0,8(sp)
    800023f4:	01010413          	addi	s0,sp,16
    800023f8:	00009797          	auipc	a5,0x9
    800023fc:	39078793          	addi	a5,a5,912 # 8000b788 <_ZTV6Thread+0x10>
    80002400:	00f53023          	sd	a5,0(a0)
    80002404:	00053423          	sd	zero,8(a0)
}
    80002408:	00813403          	ld	s0,8(sp)
    8000240c:	01010113          	addi	sp,sp,16
    80002410:	00008067          	ret

0000000080002414 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) : myHandle(nullptr) {
    80002414:	ff010113          	addi	sp,sp,-16
    80002418:	00113423          	sd	ra,8(sp)
    8000241c:	00813023          	sd	s0,0(sp)
    80002420:	01010413          	addi	s0,sp,16
    80002424:	00009797          	auipc	a5,0x9
    80002428:	38c78793          	addi	a5,a5,908 # 8000b7b0 <_ZTV9Semaphore+0x10>
    8000242c:	00f53023          	sd	a5,0(a0)
    80002430:	00053423          	sd	zero,8(a0)
    sem_open(&myHandle, init);
    80002434:	00850513          	addi	a0,a0,8
    80002438:	fffff097          	auipc	ra,0xfffff
    8000243c:	fd0080e7          	jalr	-48(ra) # 80001408 <_Z8sem_openPP3Semj>
}
    80002440:	00813083          	ld	ra,8(sp)
    80002444:	00013403          	ld	s0,0(sp)
    80002448:	01010113          	addi	sp,sp,16
    8000244c:	00008067          	ret

0000000080002450 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    if (myHandle) return sem_wait(myHandle);
    80002450:	00853503          	ld	a0,8(a0)
    80002454:	02050663          	beqz	a0,80002480 <_ZN9Semaphore4waitEv+0x30>
int Semaphore::wait() {
    80002458:	ff010113          	addi	sp,sp,-16
    8000245c:	00113423          	sd	ra,8(sp)
    80002460:	00813023          	sd	s0,0(sp)
    80002464:	01010413          	addi	s0,sp,16
    if (myHandle) return sem_wait(myHandle);
    80002468:	fffff097          	auipc	ra,0xfffff
    8000246c:	03c080e7          	jalr	60(ra) # 800014a4 <_Z8sem_waitP3Sem>
    return -1;
}
    80002470:	00813083          	ld	ra,8(sp)
    80002474:	00013403          	ld	s0,0(sp)
    80002478:	01010113          	addi	sp,sp,16
    8000247c:	00008067          	ret
    return -1;
    80002480:	fff00513          	li	a0,-1
}
    80002484:	00008067          	ret

0000000080002488 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    if (myHandle) return sem_signal(myHandle);
    80002488:	00853503          	ld	a0,8(a0)
    8000248c:	02050663          	beqz	a0,800024b8 <_ZN9Semaphore6signalEv+0x30>
int Semaphore::signal() {
    80002490:	ff010113          	addi	sp,sp,-16
    80002494:	00113423          	sd	ra,8(sp)
    80002498:	00813023          	sd	s0,0(sp)
    8000249c:	01010413          	addi	s0,sp,16
    if (myHandle) return sem_signal(myHandle);
    800024a0:	fffff097          	auipc	ra,0xfffff
    800024a4:	050080e7          	jalr	80(ra) # 800014f0 <_Z10sem_signalP3Sem>
    return -1;
}
    800024a8:	00813083          	ld	ra,8(sp)
    800024ac:	00013403          	ld	s0,0(sp)
    800024b0:	01010113          	addi	sp,sp,16
    800024b4:	00008067          	ret
    return -1;
    800024b8:	fff00513          	li	a0,-1
}
    800024bc:	00008067          	ret

00000000800024c0 <_ZN9Semaphore9timedWaitEm>:

int Semaphore::timedWait(time_t) {
    800024c0:	ff010113          	addi	sp,sp,-16
    800024c4:	00813423          	sd	s0,8(sp)
    800024c8:	01010413          	addi	s0,sp,16
    return 0;
}
    800024cc:	00000513          	li	a0,0
    800024d0:	00813403          	ld	s0,8(sp)
    800024d4:	01010113          	addi	sp,sp,16
    800024d8:	00008067          	ret

00000000800024dc <_ZN9Semaphore7tryWaitEv>:

int Semaphore::tryWait() {
    800024dc:	ff010113          	addi	sp,sp,-16
    800024e0:	00813423          	sd	s0,8(sp)
    800024e4:	01010413          	addi	s0,sp,16
    return 0;
}
    800024e8:	00000513          	li	a0,0
    800024ec:	00813403          	ld	s0,8(sp)
    800024f0:	01010113          	addi	sp,sp,16
    800024f4:	00008067          	ret

00000000800024f8 <_ZN14PeriodicThread9terminateEv>:

void PeriodicThread::terminate() {
    800024f8:	ff010113          	addi	sp,sp,-16
    800024fc:	00813423          	sd	s0,8(sp)
    80002500:	01010413          	addi	s0,sp,16

}
    80002504:	00813403          	ld	s0,8(sp)
    80002508:	01010113          	addi	sp,sp,16
    8000250c:	00008067          	ret

0000000080002510 <_ZN14PeriodicThreadC1Em>:

PeriodicThread::PeriodicThread(time_t period) {
    80002510:	fe010113          	addi	sp,sp,-32
    80002514:	00113c23          	sd	ra,24(sp)
    80002518:	00813823          	sd	s0,16(sp)
    8000251c:	00913423          	sd	s1,8(sp)
    80002520:	02010413          	addi	s0,sp,32
    80002524:	00050493          	mv	s1,a0
    80002528:	00000097          	auipc	ra,0x0
    8000252c:	ec4080e7          	jalr	-316(ra) # 800023ec <_ZN6ThreadC1Ev>
    80002530:	00009797          	auipc	a5,0x9
    80002534:	22878793          	addi	a5,a5,552 # 8000b758 <_ZTV14PeriodicThread+0x10>
    80002538:	00f4b023          	sd	a5,0(s1)

}
    8000253c:	01813083          	ld	ra,24(sp)
    80002540:	01013403          	ld	s0,16(sp)
    80002544:	00813483          	ld	s1,8(sp)
    80002548:	02010113          	addi	sp,sp,32
    8000254c:	00008067          	ret

0000000080002550 <_ZN7Console4getcEv>:

char Console::getc() {
    80002550:	ff010113          	addi	sp,sp,-16
    80002554:	00113423          	sd	ra,8(sp)
    80002558:	00813023          	sd	s0,0(sp)
    8000255c:	01010413          	addi	s0,sp,16
    return ::getc();
    80002560:	fffff097          	auipc	ra,0xfffff
    80002564:	090080e7          	jalr	144(ra) # 800015f0 <_Z4getcv>
}
    80002568:	00813083          	ld	ra,8(sp)
    8000256c:	00013403          	ld	s0,0(sp)
    80002570:	01010113          	addi	sp,sp,16
    80002574:	00008067          	ret

0000000080002578 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80002578:	ff010113          	addi	sp,sp,-16
    8000257c:	00113423          	sd	ra,8(sp)
    80002580:	00813023          	sd	s0,0(sp)
    80002584:	01010413          	addi	s0,sp,16
    ::putc(c);
    80002588:	fffff097          	auipc	ra,0xfffff
    8000258c:	0b4080e7          	jalr	180(ra) # 8000163c <_Z4putcc>
}
    80002590:	00813083          	ld	ra,8(sp)
    80002594:	00013403          	ld	s0,0(sp)
    80002598:	01010113          	addi	sp,sp,16
    8000259c:	00008067          	ret

00000000800025a0 <_ZN6Thread3runEv>:
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    800025a0:	ff010113          	addi	sp,sp,-16
    800025a4:	00813423          	sd	s0,8(sp)
    800025a8:	01010413          	addi	s0,sp,16
    800025ac:	00813403          	ld	s0,8(sp)
    800025b0:	01010113          	addi	sp,sp,16
    800025b4:	00008067          	ret

00000000800025b8 <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    800025b8:	ff010113          	addi	sp,sp,-16
    800025bc:	00813423          	sd	s0,8(sp)
    800025c0:	01010413          	addi	s0,sp,16
    800025c4:	00813403          	ld	s0,8(sp)
    800025c8:	01010113          	addi	sp,sp,16
    800025cc:	00008067          	ret

00000000800025d0 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    800025d0:	ff010113          	addi	sp,sp,-16
    800025d4:	00113423          	sd	ra,8(sp)
    800025d8:	00813023          	sd	s0,0(sp)
    800025dc:	01010413          	addi	s0,sp,16
    800025e0:	00009797          	auipc	a5,0x9
    800025e4:	17878793          	addi	a5,a5,376 # 8000b758 <_ZTV14PeriodicThread+0x10>
    800025e8:	00f53023          	sd	a5,0(a0)
    800025ec:	00000097          	auipc	ra,0x0
    800025f0:	bd8080e7          	jalr	-1064(ra) # 800021c4 <_ZN6ThreadD1Ev>
    800025f4:	00813083          	ld	ra,8(sp)
    800025f8:	00013403          	ld	s0,0(sp)
    800025fc:	01010113          	addi	sp,sp,16
    80002600:	00008067          	ret

0000000080002604 <_ZN14PeriodicThreadD0Ev>:
    80002604:	fe010113          	addi	sp,sp,-32
    80002608:	00113c23          	sd	ra,24(sp)
    8000260c:	00813823          	sd	s0,16(sp)
    80002610:	00913423          	sd	s1,8(sp)
    80002614:	02010413          	addi	s0,sp,32
    80002618:	00050493          	mv	s1,a0
    8000261c:	00009797          	auipc	a5,0x9
    80002620:	13c78793          	addi	a5,a5,316 # 8000b758 <_ZTV14PeriodicThread+0x10>
    80002624:	00f53023          	sd	a5,0(a0)
    80002628:	00000097          	auipc	ra,0x0
    8000262c:	b9c080e7          	jalr	-1124(ra) # 800021c4 <_ZN6ThreadD1Ev>
    80002630:	00048513          	mv	a0,s1
    80002634:	00000097          	auipc	ra,0x0
    80002638:	c50080e7          	jalr	-944(ra) # 80002284 <_ZdlPv>
    8000263c:	01813083          	ld	ra,24(sp)
    80002640:	01013403          	ld	s0,16(sp)
    80002644:	00813483          	ld	s1,8(sp)
    80002648:	02010113          	addi	sp,sp,32
    8000264c:	00008067          	ret

0000000080002650 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>:
        instance = (MemoryAllocator*) MemoryAllocator::mem_alloc(sizeof(MemoryAllocator));
    }
}

/// helper function for removing element from linked list
void MemoryAllocator::removeNode(MemSeg *toRemove, MemSeg *nextSeg, bool newIsCreated) {
    80002650:	ff010113          	addi	sp,sp,-16
    80002654:	00813423          	sd	s0,8(sp)
    80002658:	01010413          	addi	s0,sp,16
    if (toRemove -> prev) toRemove -> prev -> next = nextSeg;
    8000265c:	00853783          	ld	a5,8(a0)
    80002660:	02078463          	beqz	a5,80002688 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x38>
    80002664:	00b7b823          	sd	a1,16(a5)
    else freeSegHead = nextSeg;
    if (toRemove -> next) toRemove -> next -> prev = (newIsCreated) ? toRemove -> prev : nextSeg;
    80002668:	01053783          	ld	a5,16(a0)
    8000266c:	00078863          	beqz	a5,8000267c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x2c>
    80002670:	00060463          	beqz	a2,80002678 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x28>
    80002674:	00853583          	ld	a1,8(a0)
    80002678:	00b7b423          	sd	a1,8(a5)
}
    8000267c:	00813403          	ld	s0,8(sp)
    80002680:	01010113          	addi	sp,sp,16
    80002684:	00008067          	ret
    else freeSegHead = nextSeg;
    80002688:	00009797          	auipc	a5,0x9
    8000268c:	36b7b823          	sd	a1,880(a5) # 8000b9f8 <_ZN15MemoryAllocator11freeSegHeadE>
    80002690:	fd9ff06f          	j	80002668 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x18>

0000000080002694 <_ZN15MemoryAllocator9mem_allocEm>:

/// allocate `size` blocks
void *MemoryAllocator::mem_alloc(size_t size) {
    80002694:	fe010113          	addi	sp,sp,-32
    80002698:	00113c23          	sd	ra,24(sp)
    8000269c:	00813823          	sd	s0,16(sp)
    800026a0:	00913423          	sd	s1,8(sp)
    800026a4:	01213023          	sd	s2,0(sp)
    800026a8:	02010413          	addi	s0,sp,32
    if (size <= 0) return nullptr;
    800026ac:	0e050e63          	beqz	a0,800027a8 <_ZN15MemoryAllocator9mem_allocEm+0x114>
    size_t bytesToAllocate = size * MEM_BLOCK_SIZE;
    800026b0:	00651913          	slli	s2,a0,0x6
    MemSeg *tmp = freeSegHead;
    800026b4:	00009497          	auipc	s1,0x9
    800026b8:	3444b483          	ld	s1,836(s1) # 8000b9f8 <_ZN15MemoryAllocator11freeSegHeadE>
    while (tmp) {
    800026bc:	0a048e63          	beqz	s1,80002778 <_ZN15MemoryAllocator9mem_allocEm+0xe4>
        if (tmp -> size < bytesToAllocate) {
    800026c0:	0004b783          	ld	a5,0(s1)
    800026c4:	0527e463          	bltu	a5,s2,8000270c <_ZN15MemoryAllocator9mem_allocEm+0x78>
            tmp = tmp -> next;
            continue;
        }
        /// update free memory list
        size_t remaining = tmp -> size - bytesToAllocate;
    800026c8:	412787b3          	sub	a5,a5,s2
        if (remaining < sizeof(MemSeg)) removeNode(tmp, tmp->next, false);
    800026cc:	01700713          	li	a4,23
    800026d0:	04f76263          	bltu	a4,a5,80002714 <_ZN15MemoryAllocator9mem_allocEm+0x80>
    800026d4:	00000613          	li	a2,0
    800026d8:	0104b583          	ld	a1,16(s1)
    800026dc:	00048513          	mv	a0,s1
    800026e0:	00000097          	auipc	ra,0x0
    800026e4:	f70080e7          	jalr	-144(ra) # 80002650 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
        }

        /// update used memory list
        /// insert segment after tmp2
        MemSeg* tmp2 = 0;
        if (usedSegHead && (char*) tmp > (char*) usedSegHead)
    800026e8:	00009797          	auipc	a5,0x9
    800026ec:	3187b783          	ld	a5,792(a5) # 8000ba00 <_ZN15MemoryAllocator11usedSegHeadE>
    800026f0:	04078863          	beqz	a5,80002740 <_ZN15MemoryAllocator9mem_allocEm+0xac>
    800026f4:	0497fa63          	bgeu	a5,s1,80002748 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
            for (tmp2 = usedSegHead; tmp2 -> next && (char*) tmp > (char*) (tmp2 -> next); tmp2 = tmp2 -> next);
    800026f8:	00078713          	mv	a4,a5
    800026fc:	0107b783          	ld	a5,16(a5)
    80002700:	04078663          	beqz	a5,8000274c <_ZN15MemoryAllocator9mem_allocEm+0xb8>
    80002704:	fe97eae3          	bltu	a5,s1,800026f8 <_ZN15MemoryAllocator9mem_allocEm+0x64>
    80002708:	0440006f          	j	8000274c <_ZN15MemoryAllocator9mem_allocEm+0xb8>
            tmp = tmp -> next;
    8000270c:	0104b483          	ld	s1,16(s1)
    while (tmp) {
    80002710:	fadff06f          	j	800026bc <_ZN15MemoryAllocator9mem_allocEm+0x28>
            MemSeg* newFree = (MemSeg*) ((char*) tmp + bytesToAllocate);
    80002714:	012485b3          	add	a1,s1,s2
            newFree -> prev = tmp -> prev;
    80002718:	0084b703          	ld	a4,8(s1)
    8000271c:	00e5b423          	sd	a4,8(a1)
            newFree -> next = tmp -> next;
    80002720:	0104b703          	ld	a4,16(s1)
    80002724:	00e5b823          	sd	a4,16(a1)
            newFree -> size = remaining;
    80002728:	00f5b023          	sd	a5,0(a1)
            removeNode(tmp, newFree, true);
    8000272c:	00100613          	li	a2,1
    80002730:	00048513          	mv	a0,s1
    80002734:	00000097          	auipc	ra,0x0
    80002738:	f1c080e7          	jalr	-228(ra) # 80002650 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
    8000273c:	fadff06f          	j	800026e8 <_ZN15MemoryAllocator9mem_allocEm+0x54>
        MemSeg* tmp2 = 0;
    80002740:	00078713          	mv	a4,a5
    80002744:	0080006f          	j	8000274c <_ZN15MemoryAllocator9mem_allocEm+0xb8>
    80002748:	00000713          	li	a4,0
        MemSeg* newUsed = (MemSeg*) tmp;
        newUsed -> size = bytesToAllocate;
    8000274c:	0124b023          	sd	s2,0(s1)
        newUsed -> prev = tmp2;
    80002750:	00e4b423          	sd	a4,8(s1)
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    80002754:	04070063          	beqz	a4,80002794 <_ZN15MemoryAllocator9mem_allocEm+0x100>
    80002758:	01073783          	ld	a5,16(a4)
    8000275c:	00f4b823          	sd	a5,16(s1)
        if (tmp2) tmp2 -> next = newUsed;
    80002760:	02070e63          	beqz	a4,8000279c <_ZN15MemoryAllocator9mem_allocEm+0x108>
    80002764:	00973823          	sd	s1,16(a4)
        else usedSegHead = newUsed;
        if (newUsed -> next) newUsed -> next -> prev = newUsed;
    80002768:	0104b783          	ld	a5,16(s1)
    8000276c:	00078463          	beqz	a5,80002774 <_ZN15MemoryAllocator9mem_allocEm+0xe0>
    80002770:	0097b423          	sd	s1,8(a5)
        return (void*) ((char*)tmp + sizeof(MemSeg));
    80002774:	01848493          	addi	s1,s1,24
    }
    return nullptr;
}
    80002778:	00048513          	mv	a0,s1
    8000277c:	01813083          	ld	ra,24(sp)
    80002780:	01013403          	ld	s0,16(sp)
    80002784:	00813483          	ld	s1,8(sp)
    80002788:	00013903          	ld	s2,0(sp)
    8000278c:	02010113          	addi	sp,sp,32
    80002790:	00008067          	ret
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    80002794:	00070793          	mv	a5,a4
    80002798:	fc5ff06f          	j	8000275c <_ZN15MemoryAllocator9mem_allocEm+0xc8>
        else usedSegHead = newUsed;
    8000279c:	00009797          	auipc	a5,0x9
    800027a0:	2697b223          	sd	s1,612(a5) # 8000ba00 <_ZN15MemoryAllocator11usedSegHeadE>
    800027a4:	fc5ff06f          	j	80002768 <_ZN15MemoryAllocator9mem_allocEm+0xd4>
    if (size <= 0) return nullptr;
    800027a8:	00000493          	li	s1,0
    800027ac:	fcdff06f          	j	80002778 <_ZN15MemoryAllocator9mem_allocEm+0xe4>

00000000800027b0 <_ZN15MemoryAllocator10initializeEv>:
    if (!instance) {
    800027b0:	00009797          	auipc	a5,0x9
    800027b4:	2587b783          	ld	a5,600(a5) # 8000ba08 <_ZN15MemoryAllocator8instanceE>
    800027b8:	00078463          	beqz	a5,800027c0 <_ZN15MemoryAllocator10initializeEv+0x10>
    800027bc:	00008067          	ret
void MemoryAllocator::initialize() {
    800027c0:	fe010113          	addi	sp,sp,-32
    800027c4:	00113c23          	sd	ra,24(sp)
    800027c8:	00813823          	sd	s0,16(sp)
    800027cc:	00913423          	sd	s1,8(sp)
    800027d0:	02010413          	addi	s0,sp,32
        freeSegHead = (MemSeg*) HEAP_START_ADDR;
    800027d4:	00009797          	auipc	a5,0x9
    800027d8:	19c7b783          	ld	a5,412(a5) # 8000b970 <_GLOBAL_OFFSET_TABLE_+0x8>
    800027dc:	0007b783          	ld	a5,0(a5)
    800027e0:	00009497          	auipc	s1,0x9
    800027e4:	21848493          	addi	s1,s1,536 # 8000b9f8 <_ZN15MemoryAllocator11freeSegHeadE>
    800027e8:	00f4b023          	sd	a5,0(s1)
        freeSegHead -> size = (size_t) HEAP_END_ADDR - (size_t) HEAP_START_ADDR;
    800027ec:	00009717          	auipc	a4,0x9
    800027f0:	1a473703          	ld	a4,420(a4) # 8000b990 <_GLOBAL_OFFSET_TABLE_+0x28>
    800027f4:	00073703          	ld	a4,0(a4)
    800027f8:	40f70733          	sub	a4,a4,a5
    800027fc:	00e7b023          	sd	a4,0(a5)
        freeSegHead -> prev = nullptr;
    80002800:	0004b783          	ld	a5,0(s1)
    80002804:	0007b423          	sd	zero,8(a5)
        freeSegHead -> next = nullptr;
    80002808:	0007b823          	sd	zero,16(a5)
        instance = (MemoryAllocator*) MemoryAllocator::mem_alloc(sizeof(MemoryAllocator));
    8000280c:	00100513          	li	a0,1
    80002810:	00000097          	auipc	ra,0x0
    80002814:	e84080e7          	jalr	-380(ra) # 80002694 <_ZN15MemoryAllocator9mem_allocEm>
    80002818:	00a4b823          	sd	a0,16(s1)
}
    8000281c:	01813083          	ld	ra,24(sp)
    80002820:	01013403          	ld	s0,16(sp)
    80002824:	00813483          	ld	s1,8(sp)
    80002828:	02010113          	addi	sp,sp,32
    8000282c:	00008067          	ret

0000000080002830 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>:
    }
    return 0;
}

/// join free segment with next if possible
void MemoryAllocator::tryToJoin(MemSeg *seg) {
    80002830:	ff010113          	addi	sp,sp,-16
    80002834:	00813423          	sd	s0,8(sp)
    80002838:	01010413          	addi	s0,sp,16
    if (seg -> next && (char*) seg + seg -> size == (char*) seg -> next) {
    8000283c:	01053783          	ld	a5,16(a0)
    80002840:	00078863          	beqz	a5,80002850 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    80002844:	00053703          	ld	a4,0(a0)
    80002848:	00e506b3          	add	a3,a0,a4
    8000284c:	00d78863          	beq	a5,a3,8000285c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x2c>
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
        seg -> next = seg -> next -> next;
        if (seg -> next) seg -> next -> prev = seg;
    }
}
    80002850:	00813403          	ld	s0,8(sp)
    80002854:	01010113          	addi	sp,sp,16
    80002858:	00008067          	ret
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
    8000285c:	0007b683          	ld	a3,0(a5)
    80002860:	00d70733          	add	a4,a4,a3
    80002864:	01870713          	addi	a4,a4,24
    80002868:	00e53023          	sd	a4,0(a0)
        seg -> next = seg -> next -> next;
    8000286c:	0107b783          	ld	a5,16(a5)
    80002870:	00f53823          	sd	a5,16(a0)
        if (seg -> next) seg -> next -> prev = seg;
    80002874:	fc078ee3          	beqz	a5,80002850 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    80002878:	00a7b423          	sd	a0,8(a5)
}
    8000287c:	fd5ff06f          	j	80002850 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>

0000000080002880 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    80002880:	14050263          	beqz	a0,800029c4 <_ZN15MemoryAllocator8mem_freeEPv+0x144>
int MemoryAllocator::mem_free(void *addr) {
    80002884:	fd010113          	addi	sp,sp,-48
    80002888:	02113423          	sd	ra,40(sp)
    8000288c:	02813023          	sd	s0,32(sp)
    80002890:	00913c23          	sd	s1,24(sp)
    80002894:	01213823          	sd	s2,16(sp)
    80002898:	01313423          	sd	s3,8(sp)
    8000289c:	03010413          	addi	s0,sp,48
    800028a0:	00050913          	mv	s2,a0
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    800028a4:	00009797          	auipc	a5,0x9
    800028a8:	0cc7b783          	ld	a5,204(a5) # 8000b970 <_GLOBAL_OFFSET_TABLE_+0x8>
    800028ac:	0007b783          	ld	a5,0(a5)
    800028b0:	10f56e63          	bltu	a0,a5,800029cc <_ZN15MemoryAllocator8mem_freeEPv+0x14c>
    800028b4:	00009797          	auipc	a5,0x9
    800028b8:	0dc7b783          	ld	a5,220(a5) # 8000b990 <_GLOBAL_OFFSET_TABLE_+0x28>
    800028bc:	0007b783          	ld	a5,0(a5)
    800028c0:	10a7ea63          	bltu	a5,a0,800029d4 <_ZN15MemoryAllocator8mem_freeEPv+0x154>
    if (!usedSegHead) return -2;
    800028c4:	00009797          	auipc	a5,0x9
    800028c8:	13c7b783          	ld	a5,316(a5) # 8000ba00 <_ZN15MemoryAllocator11usedSegHeadE>
    800028cc:	10078863          	beqz	a5,800029dc <_ZN15MemoryAllocator8mem_freeEPv+0x15c>
    addr = (void*) ((char*) addr - sizeof(MemSeg));
    800028d0:	fe850493          	addi	s1,a0,-24
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    800028d4:	00078863          	beqz	a5,800028e4 <_ZN15MemoryAllocator8mem_freeEPv+0x64>
        if (tmp == segToFree) {
    800028d8:	08978e63          	beq	a5,s1,80002974 <_ZN15MemoryAllocator8mem_freeEPv+0xf4>
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    800028dc:	0107b783          	ld	a5,16(a5)
    800028e0:	ff5ff06f          	j	800028d4 <_ZN15MemoryAllocator8mem_freeEPv+0x54>
    bool found = false;
    800028e4:	00000793          	li	a5,0
    if (!found) return -3;
    800028e8:	0e078e63          	beqz	a5,800029e4 <_ZN15MemoryAllocator8mem_freeEPv+0x164>
    removeNode(segToFree, segToFree -> next, false);
    800028ec:	00000613          	li	a2,0
    800028f0:	ff893583          	ld	a1,-8(s2)
    800028f4:	00048513          	mv	a0,s1
    800028f8:	00000097          	auipc	ra,0x0
    800028fc:	d58080e7          	jalr	-680(ra) # 80002650 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
    if (!freeSegHead) {
    80002900:	00009797          	auipc	a5,0x9
    80002904:	0f87b783          	ld	a5,248(a5) # 8000b9f8 <_ZN15MemoryAllocator11freeSegHeadE>
    80002908:	06078a63          	beqz	a5,8000297c <_ZN15MemoryAllocator8mem_freeEPv+0xfc>
    else if ((char*) addr < (char*) freeSegHead) {
    8000290c:	08f4e463          	bltu	s1,a5,80002994 <_ZN15MemoryAllocator8mem_freeEPv+0x114>
        for (tmp = freeSegHead; tmp -> next && (char*) (tmp -> next) < (char*) segToFree; tmp = tmp -> next);
    80002910:	00078993          	mv	s3,a5
    80002914:	0107b783          	ld	a5,16(a5)
    80002918:	00078463          	beqz	a5,80002920 <_ZN15MemoryAllocator8mem_freeEPv+0xa0>
    8000291c:	fe97eae3          	bltu	a5,s1,80002910 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
        segToFree -> prev = tmp;
    80002920:	ff393823          	sd	s3,-16(s2)
        segToFree -> next = tmp -> next;
    80002924:	0109b783          	ld	a5,16(s3)
    80002928:	fef93c23          	sd	a5,-8(s2)
        tmp -> next = segToFree;
    8000292c:	0099b823          	sd	s1,16(s3)
        if (segToFree -> next) segToFree -> next -> prev = segToFree;
    80002930:	ff893783          	ld	a5,-8(s2)
    80002934:	00078463          	beqz	a5,8000293c <_ZN15MemoryAllocator8mem_freeEPv+0xbc>
    80002938:	0097b423          	sd	s1,8(a5)
        tryToJoin(segToFree);
    8000293c:	00048513          	mv	a0,s1
    80002940:	00000097          	auipc	ra,0x0
    80002944:	ef0080e7          	jalr	-272(ra) # 80002830 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
        tryToJoin(tmp);
    80002948:	00098513          	mv	a0,s3
    8000294c:	00000097          	auipc	ra,0x0
    80002950:	ee4080e7          	jalr	-284(ra) # 80002830 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    80002954:	00000513          	li	a0,0
}
    80002958:	02813083          	ld	ra,40(sp)
    8000295c:	02013403          	ld	s0,32(sp)
    80002960:	01813483          	ld	s1,24(sp)
    80002964:	01013903          	ld	s2,16(sp)
    80002968:	00813983          	ld	s3,8(sp)
    8000296c:	03010113          	addi	sp,sp,48
    80002970:	00008067          	ret
            found = true;
    80002974:	00100793          	li	a5,1
    80002978:	f71ff06f          	j	800028e8 <_ZN15MemoryAllocator8mem_freeEPv+0x68>
        freeSegHead = segToFree;
    8000297c:	00009797          	auipc	a5,0x9
    80002980:	0697be23          	sd	s1,124(a5) # 8000b9f8 <_ZN15MemoryAllocator11freeSegHeadE>
        segToFree -> prev = segToFree -> next = nullptr;
    80002984:	fe093c23          	sd	zero,-8(s2)
    80002988:	fe093823          	sd	zero,-16(s2)
    return 0;
    8000298c:	00000513          	li	a0,0
    80002990:	fc9ff06f          	j	80002958 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
        segToFree -> prev = nullptr;
    80002994:	fe093823          	sd	zero,-16(s2)
        segToFree -> next = freeSegHead;
    80002998:	00009797          	auipc	a5,0x9
    8000299c:	06078793          	addi	a5,a5,96 # 8000b9f8 <_ZN15MemoryAllocator11freeSegHeadE>
    800029a0:	0007b703          	ld	a4,0(a5)
    800029a4:	fee93c23          	sd	a4,-8(s2)
        freeSegHead -> prev = segToFree;
    800029a8:	00973423          	sd	s1,8(a4)
        freeSegHead = segToFree;
    800029ac:	0097b023          	sd	s1,0(a5)
        tryToJoin(segToFree);
    800029b0:	00048513          	mv	a0,s1
    800029b4:	00000097          	auipc	ra,0x0
    800029b8:	e7c080e7          	jalr	-388(ra) # 80002830 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    800029bc:	00000513          	li	a0,0
    800029c0:	f99ff06f          	j	80002958 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    800029c4:	fff00513          	li	a0,-1
}
    800029c8:	00008067          	ret
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    800029cc:	fff00513          	li	a0,-1
    800029d0:	f89ff06f          	j	80002958 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    800029d4:	fff00513          	li	a0,-1
    800029d8:	f81ff06f          	j	80002958 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!usedSegHead) return -2;
    800029dc:	ffe00513          	li	a0,-2
    800029e0:	f79ff06f          	j	80002958 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!found) return -3;
    800029e4:	ffd00513          	li	a0,-3
    800029e8:	f71ff06f          	j	80002958 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>

00000000800029ec <_ZN15MemoryAllocator5printEv>:

void MemoryAllocator::print() {
    800029ec:	fe010113          	addi	sp,sp,-32
    800029f0:	00113c23          	sd	ra,24(sp)
    800029f4:	00813823          	sd	s0,16(sp)
    800029f8:	00913423          	sd	s1,8(sp)
    800029fc:	02010413          	addi	s0,sp,32
    __putc('\n');
    80002a00:	00a00513          	li	a0,10
    80002a04:	00006097          	auipc	ra,0x6
    80002a08:	d48080e7          	jalr	-696(ra) # 8000874c <__putc>
    __putc('M');
    80002a0c:	04d00513          	li	a0,77
    80002a10:	00006097          	auipc	ra,0x6
    80002a14:	d3c080e7          	jalr	-708(ra) # 8000874c <__putc>
    __putc(':');
    80002a18:	03a00513          	li	a0,58
    80002a1c:	00006097          	auipc	ra,0x6
    80002a20:	d30080e7          	jalr	-720(ra) # 8000874c <__putc>
    __putc(' ');
    80002a24:	02000513          	li	a0,32
    80002a28:	00006097          	auipc	ra,0x6
    80002a2c:	d24080e7          	jalr	-732(ra) # 8000874c <__putc>
    for (MemSeg* tmp = freeSegHead; tmp; tmp = tmp -> next) __putc('f');
    80002a30:	00009497          	auipc	s1,0x9
    80002a34:	fc84b483          	ld	s1,-56(s1) # 8000b9f8 <_ZN15MemoryAllocator11freeSegHeadE>
    80002a38:	00048c63          	beqz	s1,80002a50 <_ZN15MemoryAllocator5printEv+0x64>
    80002a3c:	06600513          	li	a0,102
    80002a40:	00006097          	auipc	ra,0x6
    80002a44:	d0c080e7          	jalr	-756(ra) # 8000874c <__putc>
    80002a48:	0104b483          	ld	s1,16(s1)
    80002a4c:	fedff06f          	j	80002a38 <_ZN15MemoryAllocator5printEv+0x4c>
    __putc('\t');
    80002a50:	00900513          	li	a0,9
    80002a54:	00006097          	auipc	ra,0x6
    80002a58:	cf8080e7          	jalr	-776(ra) # 8000874c <__putc>
    for (MemSeg* tmp = usedSegHead; tmp; tmp = tmp -> next) __putc('u');
    80002a5c:	00009497          	auipc	s1,0x9
    80002a60:	fa44b483          	ld	s1,-92(s1) # 8000ba00 <_ZN15MemoryAllocator11usedSegHeadE>
    80002a64:	00048c63          	beqz	s1,80002a7c <_ZN15MemoryAllocator5printEv+0x90>
    80002a68:	07500513          	li	a0,117
    80002a6c:	00006097          	auipc	ra,0x6
    80002a70:	ce0080e7          	jalr	-800(ra) # 8000874c <__putc>
    80002a74:	0104b483          	ld	s1,16(s1)
    80002a78:	fedff06f          	j	80002a64 <_ZN15MemoryAllocator5printEv+0x78>
}
    80002a7c:	01813083          	ld	ra,24(sp)
    80002a80:	01013403          	ld	s0,16(sp)
    80002a84:	00813483          	ld	s1,8(sp)
    80002a88:	02010113          	addi	sp,sp,32
    80002a8c:	00008067          	ret

0000000080002a90 <_ZN15MemoryAllocator20get_number_of_blocksEm>:

size_t MemoryAllocator::get_number_of_blocks(size_t size) {
    80002a90:	ff010113          	addi	sp,sp,-16
    80002a94:	00813423          	sd	s0,8(sp)
    80002a98:	01010413          	addi	s0,sp,16
    return (size + sizeof(MemoryAllocator::MemSeg) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80002a9c:	05750513          	addi	a0,a0,87
}
    80002aa0:	00655513          	srli	a0,a0,0x6
    80002aa4:	00813403          	ld	s0,8(sp)
    80002aa8:	01010113          	addi	sp,sp,16
    80002aac:	00008067          	ret

0000000080002ab0 <_ZN9Scheduler3putEP3TCB>:

TCB* Scheduler::head_ready = nullptr;
TCB* Scheduler::tail_ready = nullptr;
TCB* Scheduler::head_sleeping = nullptr;

void Scheduler::put(TCB *thread) {
    80002ab0:	fe010113          	addi	sp,sp,-32
    80002ab4:	00113c23          	sd	ra,24(sp)
    80002ab8:	00813823          	sd	s0,16(sp)
    80002abc:	00913423          	sd	s1,8(sp)
    80002ac0:	02010413          	addi	s0,sp,32
    80002ac4:	00050493          	mv	s1,a0
    if (tail_ready) {
    80002ac8:	00009517          	auipc	a0,0x9
    80002acc:	f4853503          	ld	a0,-184(a0) # 8000ba10 <_ZN9Scheduler10tail_readyE>
    80002ad0:	02051463          	bnez	a0,80002af8 <_ZN9Scheduler3putEP3TCB+0x48>
        tail_ready -> set_next_ready(thread);
        tail_ready = thread;
        return;
    }
    head_ready = tail_ready = thread;
    80002ad4:	00009797          	auipc	a5,0x9
    80002ad8:	f3c78793          	addi	a5,a5,-196 # 8000ba10 <_ZN9Scheduler10tail_readyE>
    80002adc:	0097b023          	sd	s1,0(a5)
    80002ae0:	0097b423          	sd	s1,8(a5)
}
    80002ae4:	01813083          	ld	ra,24(sp)
    80002ae8:	01013403          	ld	s0,16(sp)
    80002aec:	00813483          	ld	s1,8(sp)
    80002af0:	02010113          	addi	sp,sp,32
    80002af4:	00008067          	ret
        tail_ready -> set_next_ready(thread);
    80002af8:	00048593          	mv	a1,s1
    80002afc:	fffff097          	auipc	ra,0xfffff
    80002b00:	3e4080e7          	jalr	996(ra) # 80001ee0 <_ZN3TCB14set_next_readyEPS_>
        tail_ready = thread;
    80002b04:	00009797          	auipc	a5,0x9
    80002b08:	f097b623          	sd	s1,-244(a5) # 8000ba10 <_ZN9Scheduler10tail_readyE>
        return;
    80002b0c:	fd9ff06f          	j	80002ae4 <_ZN9Scheduler3putEP3TCB+0x34>

0000000080002b10 <_ZN9Scheduler3getEv>:

TCB* Scheduler::get() {
    80002b10:	fe010113          	addi	sp,sp,-32
    80002b14:	00113c23          	sd	ra,24(sp)
    80002b18:	00813823          	sd	s0,16(sp)
    80002b1c:	00913423          	sd	s1,8(sp)
    80002b20:	02010413          	addi	s0,sp,32
    if (!head_ready) return nullptr;
    80002b24:	00009497          	auipc	s1,0x9
    80002b28:	ef44b483          	ld	s1,-268(s1) # 8000ba18 <_ZN9Scheduler10head_readyE>
    80002b2c:	00048c63          	beqz	s1,80002b44 <_ZN9Scheduler3getEv+0x34>
    TCB *head = head_ready;
    head_ready = head_ready -> get_next_ready();
    80002b30:	00048513          	mv	a0,s1
    80002b34:	fffff097          	auipc	ra,0xfffff
    80002b38:	390080e7          	jalr	912(ra) # 80001ec4 <_ZNK3TCB14get_next_readyEv>
    80002b3c:	00009797          	auipc	a5,0x9
    80002b40:	eca7be23          	sd	a0,-292(a5) # 8000ba18 <_ZN9Scheduler10head_readyE>
    return head;
}
    80002b44:	00048513          	mv	a0,s1
    80002b48:	01813083          	ld	ra,24(sp)
    80002b4c:	01013403          	ld	s0,16(sp)
    80002b50:	00813483          	ld	s1,8(sp)
    80002b54:	02010113          	addi	sp,sp,32
    80002b58:	00008067          	ret

0000000080002b5c <_ZN9Scheduler12put_to_sleepEP3TCBm>:

void Scheduler::put_to_sleep(TCB *thread, time_t time) {
    80002b5c:	fc010113          	addi	sp,sp,-64
    80002b60:	02113c23          	sd	ra,56(sp)
    80002b64:	02813823          	sd	s0,48(sp)
    80002b68:	02913423          	sd	s1,40(sp)
    80002b6c:	03213023          	sd	s2,32(sp)
    80002b70:	01313c23          	sd	s3,24(sp)
    80002b74:	01413823          	sd	s4,16(sp)
    80002b78:	01513423          	sd	s5,8(sp)
    80002b7c:	04010413          	addi	s0,sp,64
    80002b80:	00050a93          	mv	s5,a0
    80002b84:	00058993          	mv	s3,a1
    thread -> set_status(TCB::Status::SLEEPING);
    80002b88:	00100593          	li	a1,1
    80002b8c:	fffff097          	auipc	ra,0xfffff
    80002b90:	3e0080e7          	jalr	992(ra) # 80001f6c <_ZN3TCB10set_statusENS_6StatusE>
    if (!head_sleeping) {
    80002b94:	00009497          	auipc	s1,0x9
    80002b98:	e8c4b483          	ld	s1,-372(s1) # 8000ba20 <_ZN9Scheduler13head_sleepingE>
    80002b9c:	02048e63          	beqz	s1,80002bd8 <_ZN9Scheduler12put_to_sleepEP3TCBm+0x7c>
        thread -> set_next_sleeping(nullptr);
        thread -> set_time_to_sleep(time);
        return;
    }
    TCB* tmp = head_sleeping, *prev = nullptr;
    time_t current_time = 0;
    80002ba0:	00000913          	li	s2,0
    TCB* tmp = head_sleeping, *prev = nullptr;
    80002ba4:	00000a13          	li	s4,0
    while (tmp) {
    80002ba8:	04048c63          	beqz	s1,80002c00 <_ZN9Scheduler12put_to_sleepEP3TCBm+0xa4>
        current_time += tmp -> get_time_to_sleep();
    80002bac:	00048513          	mv	a0,s1
    80002bb0:	fffff097          	auipc	ra,0xfffff
    80002bb4:	3a0080e7          	jalr	928(ra) # 80001f50 <_ZNK3TCB17get_time_to_sleepEv>
    80002bb8:	00a90933          	add	s2,s2,a0
        if (current_time > time) {
    80002bbc:	0729e463          	bltu	s3,s2,80002c24 <_ZN9Scheduler12put_to_sleepEP3TCBm+0xc8>
            for (TCB* curr = tmp -> get_next_sleeping(); curr; curr = curr -> get_next_sleeping())
                curr -> set_time_to_sleep(curr -> get_time_to_sleep() - new_time);
            break;
        }
        prev = tmp;
        tmp = tmp -> get_next_sleeping();
    80002bc0:	00048513          	mv	a0,s1
    80002bc4:	fffff097          	auipc	ra,0xfffff
    80002bc8:	354080e7          	jalr	852(ra) # 80001f18 <_ZNK3TCB17get_next_sleepingEv>
        prev = tmp;
    80002bcc:	00048a13          	mv	s4,s1
        tmp = tmp -> get_next_sleeping();
    80002bd0:	00050493          	mv	s1,a0
    while (tmp) {
    80002bd4:	fd5ff06f          	j	80002ba8 <_ZN9Scheduler12put_to_sleepEP3TCBm+0x4c>
        head_sleeping = thread;
    80002bd8:	00009797          	auipc	a5,0x9
    80002bdc:	e557b423          	sd	s5,-440(a5) # 8000ba20 <_ZN9Scheduler13head_sleepingE>
        thread -> set_next_sleeping(nullptr);
    80002be0:	00000593          	li	a1,0
    80002be4:	000a8513          	mv	a0,s5
    80002be8:	fffff097          	auipc	ra,0xfffff
    80002bec:	314080e7          	jalr	788(ra) # 80001efc <_ZN3TCB17set_next_sleepingEPS_>
        thread -> set_time_to_sleep(time);
    80002bf0:	00098593          	mv	a1,s3
    80002bf4:	000a8513          	mv	a0,s5
    80002bf8:	fffff097          	auipc	ra,0xfffff
    80002bfc:	33c080e7          	jalr	828(ra) # 80001f34 <_ZN3TCB17set_time_to_sleepEm>
    }
}
    80002c00:	03813083          	ld	ra,56(sp)
    80002c04:	03013403          	ld	s0,48(sp)
    80002c08:	02813483          	ld	s1,40(sp)
    80002c0c:	02013903          	ld	s2,32(sp)
    80002c10:	01813983          	ld	s3,24(sp)
    80002c14:	01013a03          	ld	s4,16(sp)
    80002c18:	00813a83          	ld	s5,8(sp)
    80002c1c:	04010113          	addi	sp,sp,64
    80002c20:	00008067          	ret
            time_t new_time = prev ? time - prev -> get_time_to_sleep() : time;
    80002c24:	000a0a63          	beqz	s4,80002c38 <_ZN9Scheduler12put_to_sleepEP3TCBm+0xdc>
    80002c28:	000a0513          	mv	a0,s4
    80002c2c:	fffff097          	auipc	ra,0xfffff
    80002c30:	324080e7          	jalr	804(ra) # 80001f50 <_ZNK3TCB17get_time_to_sleepEv>
    80002c34:	40a989b3          	sub	s3,s3,a0
            thread -> set_time_to_sleep(new_time);
    80002c38:	00098593          	mv	a1,s3
    80002c3c:	000a8513          	mv	a0,s5
    80002c40:	fffff097          	auipc	ra,0xfffff
    80002c44:	2f4080e7          	jalr	756(ra) # 80001f34 <_ZN3TCB17set_time_to_sleepEm>
            thread -> set_next_sleeping(tmp);
    80002c48:	00048593          	mv	a1,s1
    80002c4c:	000a8513          	mv	a0,s5
    80002c50:	fffff097          	auipc	ra,0xfffff
    80002c54:	2ac080e7          	jalr	684(ra) # 80001efc <_ZN3TCB17set_next_sleepingEPS_>
            if (prev) prev -> set_next_sleeping(thread);
    80002c58:	040a0c63          	beqz	s4,80002cb0 <_ZN9Scheduler12put_to_sleepEP3TCBm+0x154>
    80002c5c:	000a8593          	mv	a1,s5
    80002c60:	000a0513          	mv	a0,s4
    80002c64:	fffff097          	auipc	ra,0xfffff
    80002c68:	298080e7          	jalr	664(ra) # 80001efc <_ZN3TCB17set_next_sleepingEPS_>
            for (TCB* curr = tmp -> get_next_sleeping(); curr; curr = curr -> get_next_sleeping())
    80002c6c:	00048513          	mv	a0,s1
    80002c70:	fffff097          	auipc	ra,0xfffff
    80002c74:	2a8080e7          	jalr	680(ra) # 80001f18 <_ZNK3TCB17get_next_sleepingEv>
    80002c78:	00050493          	mv	s1,a0
    80002c7c:	f80482e3          	beqz	s1,80002c00 <_ZN9Scheduler12put_to_sleepEP3TCBm+0xa4>
                curr -> set_time_to_sleep(curr -> get_time_to_sleep() - new_time);
    80002c80:	00048513          	mv	a0,s1
    80002c84:	fffff097          	auipc	ra,0xfffff
    80002c88:	2cc080e7          	jalr	716(ra) # 80001f50 <_ZNK3TCB17get_time_to_sleepEv>
    80002c8c:	413505b3          	sub	a1,a0,s3
    80002c90:	00048513          	mv	a0,s1
    80002c94:	fffff097          	auipc	ra,0xfffff
    80002c98:	2a0080e7          	jalr	672(ra) # 80001f34 <_ZN3TCB17set_time_to_sleepEm>
            for (TCB* curr = tmp -> get_next_sleeping(); curr; curr = curr -> get_next_sleeping())
    80002c9c:	00048513          	mv	a0,s1
    80002ca0:	fffff097          	auipc	ra,0xfffff
    80002ca4:	278080e7          	jalr	632(ra) # 80001f18 <_ZNK3TCB17get_next_sleepingEv>
    80002ca8:	00050493          	mv	s1,a0
    80002cac:	fd1ff06f          	j	80002c7c <_ZN9Scheduler12put_to_sleepEP3TCBm+0x120>
            else head_sleeping = thread;
    80002cb0:	00009797          	auipc	a5,0x9
    80002cb4:	d757b823          	sd	s5,-656(a5) # 8000ba20 <_ZN9Scheduler13head_sleepingE>
    80002cb8:	fb5ff06f          	j	80002c6c <_ZN9Scheduler12put_to_sleepEP3TCBm+0x110>

0000000080002cbc <_ZN5RiscV10popSppSpieEv>:
    SUPERVISOR_INTERRUPT = 0x0000000000000009UL,
};

/// used in thread wrapper function when initializing thread because thread stack is empty
/// pc = (sepc = ra)
void RiscV::popSppSpie() {
    80002cbc:	ff010113          	addi	sp,sp,-16
    80002cc0:	00813423          	sd	s0,8(sp)
    80002cc4:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80002cc8:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80002ccc:	10200073          	sret
}
    80002cd0:	00813403          	ld	s0,8(sp)
    80002cd4:	01010113          	addi	sp,sp,16
    80002cd8:	00008067          	ret

0000000080002cdc <_ZN5RiscV22handle_supervisor_trapEv>:

/// interrupt handler
void RiscV::handle_supervisor_trap() {
    80002cdc:	fc010113          	addi	sp,sp,-64
    80002ce0:	02113c23          	sd	ra,56(sp)
    80002ce4:	02813823          	sd	s0,48(sp)
    80002ce8:	02913423          	sd	s1,40(sp)
    80002cec:	03213023          	sd	s2,32(sp)
    80002cf0:	04010413          	addi	s0,sp,64
    /// read values from registers
    uint64 syscall_code, a1, a2, a3, a4;
    __asm__ volatile("mv %0, a0" : "=r"(syscall_code));
    80002cf4:	00050813          	mv	a6,a0
    __asm__ volatile("mv %0, a1" : "=r"(a1));
    80002cf8:	00058513          	mv	a0,a1
    __asm__ volatile("mv %0, a2" : "=r"(a2));
    80002cfc:	00060593          	mv	a1,a2
    __asm__ volatile("mv %0, a3" : "=r"(a3));
    80002d00:	00068613          	mv	a2,a3
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    80002d04:	00070693          	mv	a3,a4
    __asm__ volatile ("csrr %0, scause" : "=r"(scause));
    80002d08:	142027f3          	csrr	a5,scause
    80002d0c:	fcf43423          	sd	a5,-56(s0)
    return scause;
    80002d10:	fc843703          	ld	a4,-56(s0)

    uint64 scause = read_scause();

    /// interrupt caused by Timer
    if (scause == SOFTWARE_INTERRUPT) {
    80002d14:	fff00793          	li	a5,-1
    80002d18:	03f79793          	slli	a5,a5,0x3f
    80002d1c:	00178793          	addi	a5,a5,1
    80002d20:	02f70463          	beq	a4,a5,80002d48 <_ZN5RiscV22handle_supervisor_trapEv+0x6c>
//        }
//        mc_sip(SIP_SSIE);
    }

    /// External interrupt (Console)
    else if (scause == HARDWARE_INTERRUPT) {
    80002d24:	fff00793          	li	a5,-1
    80002d28:	03f79793          	slli	a5,a5,0x3f
    80002d2c:	00978793          	addi	a5,a5,9
    80002d30:	02f70863          	beq	a4,a5,80002d60 <_ZN5RiscV22handle_supervisor_trapEv+0x84>
        console_handler();
    }

    /// illegal instruction
    else if (scause == INVALID_INTERRUPT) {
    80002d34:	00200793          	li	a5,2
    80002d38:	02f70a63          	beq	a4,a5,80002d6c <_ZN5RiscV22handle_supervisor_trapEv+0x90>
        __asm__ volatile("mv a0, %0" : : "r"(val));
        return;
    }

    /// interrupt from supervisor / user mode
    else if (scause == USER_INTERRUPT || scause == SUPERVISOR_INTERRUPT) {
    80002d3c:	ff870713          	addi	a4,a4,-8
    80002d40:	00100793          	li	a5,1
    80002d44:	02e7fa63          	bgeu	a5,a4,80002d78 <_ZN5RiscV22handle_supervisor_trapEv+0x9c>
        }

        write_sepc(sepc);
        write_sstatus(sstatus);
    }
    80002d48:	03813083          	ld	ra,56(sp)
    80002d4c:	03013403          	ld	s0,48(sp)
    80002d50:	02813483          	ld	s1,40(sp)
    80002d54:	02013903          	ld	s2,32(sp)
    80002d58:	04010113          	addi	sp,sp,64
    80002d5c:	00008067          	ret
        console_handler();
    80002d60:	00006097          	auipc	ra,0x6
    80002d64:	a60080e7          	jalr	-1440(ra) # 800087c0 <console_handler>
    80002d68:	fe1ff06f          	j	80002d48 <_ZN5RiscV22handle_supervisor_trapEv+0x6c>
        __asm__ volatile("mv a0, %0" : : "r"(val));
    80002d6c:	00100793          	li	a5,1
    80002d70:	00078513          	mv	a0,a5
        return;
    80002d74:	fd5ff06f          	j	80002d48 <_ZN5RiscV22handle_supervisor_trapEv+0x6c>
    __asm__ volatile ("csrr %0, sepc" : "=r"(sepc));
    80002d78:	141027f3          	csrr	a5,sepc
    80002d7c:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80002d80:	fd843483          	ld	s1,-40(s0)
        uint64 sepc = read_sepc() + 4;
    80002d84:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrc sstatus, %0" : : "r"(mask));
}

inline uint64 RiscV::read_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    80002d88:	100027f3          	csrr	a5,sstatus
    80002d8c:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80002d90:	fd043903          	ld	s2,-48(s0)
        switch(syscall_code) {
    80002d94:	04200793          	li	a5,66
    80002d98:	0307e463          	bltu	a5,a6,80002dc0 <_ZN5RiscV22handle_supervisor_trapEv+0xe4>
    80002d9c:	00281813          	slli	a6,a6,0x2
    80002da0:	00006717          	auipc	a4,0x6
    80002da4:	28070713          	addi	a4,a4,640 # 80009020 <CONSOLE_STATUS+0x10>
    80002da8:	00e80833          	add	a6,a6,a4
    80002dac:	00082783          	lw	a5,0(a6)
    80002db0:	00e787b3          	add	a5,a5,a4
    80002db4:	00078067          	jr	a5
                MemoryAllocator::mem_alloc((size_t) a1);
    80002db8:	00000097          	auipc	ra,0x0
    80002dbc:	8dc080e7          	jalr	-1828(ra) # 80002694 <_ZN15MemoryAllocator9mem_allocEm>
    __asm__ volatile ("csrw sepc, %0" : : "r"(val));
    80002dc0:	14149073          	csrw	sepc,s1
}

inline void RiscV::write_sstatus(uint64 val) {
    __asm__ volatile ("csrw sstatus, %0" : : "r"(val));
    80002dc4:	10091073          	csrw	sstatus,s2
}
    80002dc8:	f81ff06f          	j	80002d48 <_ZN5RiscV22handle_supervisor_trapEv+0x6c>
                MemoryAllocator::mem_free((void *) a1);
    80002dcc:	00000097          	auipc	ra,0x0
    80002dd0:	ab4080e7          	jalr	-1356(ra) # 80002880 <_ZN15MemoryAllocator8mem_freeEPv>
                break;
    80002dd4:	fedff06f          	j	80002dc0 <_ZN5RiscV22handle_supervisor_trapEv+0xe4>
                TCB::thread_create((thread_t *) a1, (void (*)(void *)) a2, (void *) a3, (void *) a4);
    80002dd8:	fffff097          	auipc	ra,0xfffff
    80002ddc:	2d0080e7          	jalr	720(ra) # 800020a8 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>
                break;
    80002de0:	fe1ff06f          	j	80002dc0 <_ZN5RiscV22handle_supervisor_trapEv+0xe4>
                TCB::thread_exit();
    80002de4:	fffff097          	auipc	ra,0xfffff
    80002de8:	1a4080e7          	jalr	420(ra) # 80001f88 <_ZN3TCB11thread_exitEv>
                break;
    80002dec:	fd5ff06f          	j	80002dc0 <_ZN5RiscV22handle_supervisor_trapEv+0xe4>
                TCB::dispatch();
    80002df0:	fffff097          	auipc	ra,0xfffff
    80002df4:	068080e7          	jalr	104(ra) # 80001e58 <_ZN3TCB8dispatchEv>
                break;
    80002df8:	fc9ff06f          	j	80002dc0 <_ZN5RiscV22handle_supervisor_trapEv+0xe4>
                Sem::open((sem_t *) a1, a2);
    80002dfc:	0005859b          	sext.w	a1,a1
    80002e00:	fffff097          	auipc	ra,0xfffff
    80002e04:	8f0080e7          	jalr	-1808(ra) # 800016f0 <_ZN3Sem4openEPPS_j>
                break;
    80002e08:	fb9ff06f          	j	80002dc0 <_ZN5RiscV22handle_supervisor_trapEv+0xe4>
                ((sem_t) a1) -> close();
    80002e0c:	fffff097          	auipc	ra,0xfffff
    80002e10:	958080e7          	jalr	-1704(ra) # 80001764 <_ZN3Sem5closeEv>
                break;
    80002e14:	fadff06f          	j	80002dc0 <_ZN5RiscV22handle_supervisor_trapEv+0xe4>
                ((sem_t) a1) -> wait();
    80002e18:	fffff097          	auipc	ra,0xfffff
    80002e1c:	9d4080e7          	jalr	-1580(ra) # 800017ec <_ZN3Sem4waitEv>
                break;
    80002e20:	fa1ff06f          	j	80002dc0 <_ZN5RiscV22handle_supervisor_trapEv+0xe4>
                ((sem_t) a1) -> signal();
    80002e24:	fffff097          	auipc	ra,0xfffff
    80002e28:	a70080e7          	jalr	-1424(ra) # 80001894 <_ZN3Sem6signalEv>
                break;
    80002e2c:	f95ff06f          	j	80002dc0 <_ZN5RiscV22handle_supervisor_trapEv+0xe4>
                ((sem_t) a1) -> timedWait((time_t) a2);
    80002e30:	fffff097          	auipc	ra,0xfffff
    80002e34:	abc080e7          	jalr	-1348(ra) # 800018ec <_ZN3Sem9timedWaitEm>
                break;
    80002e38:	f89ff06f          	j	80002dc0 <_ZN5RiscV22handle_supervisor_trapEv+0xe4>
                ((sem_t) a1) -> tryWait();
    80002e3c:	fffff097          	auipc	ra,0xfffff
    80002e40:	acc080e7          	jalr	-1332(ra) # 80001908 <_ZN3Sem7tryWaitEv>
                break;
    80002e44:	f7dff06f          	j	80002dc0 <_ZN5RiscV22handle_supervisor_trapEv+0xe4>
                Con::getc();
    80002e48:	fffff097          	auipc	ra,0xfffff
    80002e4c:	f24080e7          	jalr	-220(ra) # 80001d6c <_ZN3Con4getcEv>
                break;
    80002e50:	f71ff06f          	j	80002dc0 <_ZN5RiscV22handle_supervisor_trapEv+0xe4>
                Con::putc(a1);
    80002e54:	0ff57513          	andi	a0,a0,255
    80002e58:	fffff097          	auipc	ra,0xfffff
    80002e5c:	efc080e7          	jalr	-260(ra) # 80001d54 <_ZN3Con4putcEc>
                break;
    80002e60:	f61ff06f          	j	80002dc0 <_ZN5RiscV22handle_supervisor_trapEv+0xe4>

0000000080002e64 <_ZN10ThreadList9get_firstEv>:
    Node* node = new Node(thread);
    node -> next = head;
    head = node;
}

TCB *ThreadList::get_first() {
    80002e64:	ff010113          	addi	sp,sp,-16
    80002e68:	00813423          	sd	s0,8(sp)
    80002e6c:	01010413          	addi	s0,sp,16
    return (head ? head -> data : nullptr);
    80002e70:	00053503          	ld	a0,0(a0)
    80002e74:	00050463          	beqz	a0,80002e7c <_ZN10ThreadList9get_firstEv+0x18>
    80002e78:	00053503          	ld	a0,0(a0)
}
    80002e7c:	00813403          	ld	s0,8(sp)
    80002e80:	01010113          	addi	sp,sp,16
    80002e84:	00008067          	ret

0000000080002e88 <_ZN10ThreadList4NodenwEm>:

void ThreadList::free() {
    while (get_first()) remove_first();
}

void *ThreadList::Node::operator new(size_t size) {
    80002e88:	ff010113          	addi	sp,sp,-16
    80002e8c:	00113423          	sd	ra,8(sp)
    80002e90:	00813023          	sd	s0,0(sp)
    80002e94:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    80002e98:	00000097          	auipc	ra,0x0
    80002e9c:	bf8080e7          	jalr	-1032(ra) # 80002a90 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80002ea0:	fffff097          	auipc	ra,0xfffff
    80002ea4:	7f4080e7          	jalr	2036(ra) # 80002694 <_ZN15MemoryAllocator9mem_allocEm>
}
    80002ea8:	00813083          	ld	ra,8(sp)
    80002eac:	00013403          	ld	s0,0(sp)
    80002eb0:	01010113          	addi	sp,sp,16
    80002eb4:	00008067          	ret

0000000080002eb8 <_ZN10ThreadList9push_backEP3TCB>:
void ThreadList::push_back(TCB *thread) {
    80002eb8:	fe010113          	addi	sp,sp,-32
    80002ebc:	00113c23          	sd	ra,24(sp)
    80002ec0:	00813823          	sd	s0,16(sp)
    80002ec4:	00913423          	sd	s1,8(sp)
    80002ec8:	01213023          	sd	s2,0(sp)
    80002ecc:	02010413          	addi	s0,sp,32
    80002ed0:	00050493          	mv	s1,a0
    80002ed4:	00058913          	mv	s2,a1
    tail = (head ? head : tail -> next) = new Node(thread);
    80002ed8:	01000513          	li	a0,16
    80002edc:	00000097          	auipc	ra,0x0
    80002ee0:	fac080e7          	jalr	-84(ra) # 80002e88 <_ZN10ThreadList4NodenwEm>
        struct Node *next;

        void* operator new(size_t size);
        void operator delete(void* addr);

        explicit Node(TCB* data) : data(data), next(nullptr) {}
    80002ee4:	01253023          	sd	s2,0(a0)
    80002ee8:	00053423          	sd	zero,8(a0)
    80002eec:	0004b783          	ld	a5,0(s1)
    80002ef0:	02078263          	beqz	a5,80002f14 <_ZN10ThreadList9push_backEP3TCB+0x5c>
    80002ef4:	00a4b023          	sd	a0,0(s1)
    80002ef8:	00a4b423          	sd	a0,8(s1)
}
    80002efc:	01813083          	ld	ra,24(sp)
    80002f00:	01013403          	ld	s0,16(sp)
    80002f04:	00813483          	ld	s1,8(sp)
    80002f08:	00013903          	ld	s2,0(sp)
    80002f0c:	02010113          	addi	sp,sp,32
    80002f10:	00008067          	ret
    tail = (head ? head : tail -> next) = new Node(thread);
    80002f14:	0084b783          	ld	a5,8(s1)
    80002f18:	00a7b423          	sd	a0,8(a5)
    80002f1c:	fddff06f          	j	80002ef8 <_ZN10ThreadList9push_backEP3TCB+0x40>

0000000080002f20 <_ZN10ThreadList10push_frontEP3TCB>:
void ThreadList::push_front(TCB *thread) {
    80002f20:	fe010113          	addi	sp,sp,-32
    80002f24:	00113c23          	sd	ra,24(sp)
    80002f28:	00813823          	sd	s0,16(sp)
    80002f2c:	00913423          	sd	s1,8(sp)
    80002f30:	01213023          	sd	s2,0(sp)
    80002f34:	02010413          	addi	s0,sp,32
    80002f38:	00050493          	mv	s1,a0
    80002f3c:	00058913          	mv	s2,a1
    Node* node = new Node(thread);
    80002f40:	01000513          	li	a0,16
    80002f44:	00000097          	auipc	ra,0x0
    80002f48:	f44080e7          	jalr	-188(ra) # 80002e88 <_ZN10ThreadList4NodenwEm>
    80002f4c:	01253023          	sd	s2,0(a0)
    80002f50:	00053423          	sd	zero,8(a0)
    node -> next = head;
    80002f54:	0004b783          	ld	a5,0(s1)
    80002f58:	00f53423          	sd	a5,8(a0)
    head = node;
    80002f5c:	00a4b023          	sd	a0,0(s1)
}
    80002f60:	01813083          	ld	ra,24(sp)
    80002f64:	01013403          	ld	s0,16(sp)
    80002f68:	00813483          	ld	s1,8(sp)
    80002f6c:	00013903          	ld	s2,0(sp)
    80002f70:	02010113          	addi	sp,sp,32
    80002f74:	00008067          	ret

0000000080002f78 <_ZN10ThreadList4NodedlEPv>:

void ThreadList::Node::operator delete(void *addr) {
    80002f78:	ff010113          	addi	sp,sp,-16
    80002f7c:	00113423          	sd	ra,8(sp)
    80002f80:	00813023          	sd	s0,0(sp)
    80002f84:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    80002f88:	00000097          	auipc	ra,0x0
    80002f8c:	8f8080e7          	jalr	-1800(ra) # 80002880 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80002f90:	00813083          	ld	ra,8(sp)
    80002f94:	00013403          	ld	s0,0(sp)
    80002f98:	01010113          	addi	sp,sp,16
    80002f9c:	00008067          	ret

0000000080002fa0 <_ZN10ThreadList12remove_firstEv>:
TCB *ThreadList::remove_first() {
    80002fa0:	fe010113          	addi	sp,sp,-32
    80002fa4:	00113c23          	sd	ra,24(sp)
    80002fa8:	00813823          	sd	s0,16(sp)
    80002fac:	00913423          	sd	s1,8(sp)
    80002fb0:	02010413          	addi	s0,sp,32
    80002fb4:	00050793          	mv	a5,a0
    if (!head) return nullptr;
    80002fb8:	00053503          	ld	a0,0(a0)
    80002fbc:	02050a63          	beqz	a0,80002ff0 <_ZN10ThreadList12remove_firstEv+0x50>
    TCB* thread = tmp -> data;
    80002fc0:	00053483          	ld	s1,0(a0)
    head = head -> next;
    80002fc4:	00853703          	ld	a4,8(a0)
    80002fc8:	00e7b023          	sd	a4,0(a5)
    head -> next = nullptr;
    80002fcc:	00073423          	sd	zero,8(a4)
    delete tmp;
    80002fd0:	00000097          	auipc	ra,0x0
    80002fd4:	fa8080e7          	jalr	-88(ra) # 80002f78 <_ZN10ThreadList4NodedlEPv>
}
    80002fd8:	00048513          	mv	a0,s1
    80002fdc:	01813083          	ld	ra,24(sp)
    80002fe0:	01013403          	ld	s0,16(sp)
    80002fe4:	00813483          	ld	s1,8(sp)
    80002fe8:	02010113          	addi	sp,sp,32
    80002fec:	00008067          	ret
    if (!head) return nullptr;
    80002ff0:	00050493          	mv	s1,a0
    80002ff4:	fe5ff06f          	j	80002fd8 <_ZN10ThreadList12remove_firstEv+0x38>

0000000080002ff8 <_ZN10ThreadList4freeEv>:
void ThreadList::free() {
    80002ff8:	fe010113          	addi	sp,sp,-32
    80002ffc:	00113c23          	sd	ra,24(sp)
    80003000:	00813823          	sd	s0,16(sp)
    80003004:	00913423          	sd	s1,8(sp)
    80003008:	02010413          	addi	s0,sp,32
    8000300c:	00050493          	mv	s1,a0
    while (get_first()) remove_first();
    80003010:	00048513          	mv	a0,s1
    80003014:	00000097          	auipc	ra,0x0
    80003018:	e50080e7          	jalr	-432(ra) # 80002e64 <_ZN10ThreadList9get_firstEv>
    8000301c:	00050a63          	beqz	a0,80003030 <_ZN10ThreadList4freeEv+0x38>
    80003020:	00048513          	mv	a0,s1
    80003024:	00000097          	auipc	ra,0x0
    80003028:	f7c080e7          	jalr	-132(ra) # 80002fa0 <_ZN10ThreadList12remove_firstEv>
    8000302c:	fe5ff06f          	j	80003010 <_ZN10ThreadList4freeEv+0x18>
}
    80003030:	01813083          	ld	ra,24(sp)
    80003034:	01013403          	ld	s0,16(sp)
    80003038:	00813483          	ld	s1,8(sp)
    8000303c:	02010113          	addi	sp,sp,32
    80003040:	00008067          	ret

0000000080003044 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80003044:	fe010113          	addi	sp,sp,-32
    80003048:	00113c23          	sd	ra,24(sp)
    8000304c:	00813823          	sd	s0,16(sp)
    80003050:	00913423          	sd	s1,8(sp)
    80003054:	01213023          	sd	s2,0(sp)
    80003058:	02010413          	addi	s0,sp,32
    8000305c:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80003060:	00000913          	li	s2,0
    80003064:	00c0006f          	j	80003070 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003068:	ffffe097          	auipc	ra,0xffffe
    8000306c:	364080e7          	jalr	868(ra) # 800013cc <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80003070:	ffffe097          	auipc	ra,0xffffe
    80003074:	580080e7          	jalr	1408(ra) # 800015f0 <_Z4getcv>
    80003078:	0005059b          	sext.w	a1,a0
    8000307c:	01b00793          	li	a5,27
    80003080:	02f58a63          	beq	a1,a5,800030b4 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80003084:	0084b503          	ld	a0,8(s1)
    80003088:	00003097          	auipc	ra,0x3
    8000308c:	384080e7          	jalr	900(ra) # 8000640c <_ZN6Buffer3putEi>
        i++;
    80003090:	0019071b          	addiw	a4,s2,1
    80003094:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003098:	0004a683          	lw	a3,0(s1)
    8000309c:	0026979b          	slliw	a5,a3,0x2
    800030a0:	00d787bb          	addw	a5,a5,a3
    800030a4:	0017979b          	slliw	a5,a5,0x1
    800030a8:	02f767bb          	remw	a5,a4,a5
    800030ac:	fc0792e3          	bnez	a5,80003070 <_ZL16producerKeyboardPv+0x2c>
    800030b0:	fb9ff06f          	j	80003068 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    800030b4:	00100793          	li	a5,1
    800030b8:	00009717          	auipc	a4,0x9
    800030bc:	96f72823          	sw	a5,-1680(a4) # 8000ba28 <_ZL9threadEnd>
    data->buffer->put('!');
    800030c0:	02100593          	li	a1,33
    800030c4:	0084b503          	ld	a0,8(s1)
    800030c8:	00003097          	auipc	ra,0x3
    800030cc:	344080e7          	jalr	836(ra) # 8000640c <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    800030d0:	0104b503          	ld	a0,16(s1)
    800030d4:	ffffe097          	auipc	ra,0xffffe
    800030d8:	41c080e7          	jalr	1052(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    800030dc:	01813083          	ld	ra,24(sp)
    800030e0:	01013403          	ld	s0,16(sp)
    800030e4:	00813483          	ld	s1,8(sp)
    800030e8:	00013903          	ld	s2,0(sp)
    800030ec:	02010113          	addi	sp,sp,32
    800030f0:	00008067          	ret

00000000800030f4 <_ZL8producerPv>:

static void producer(void *arg) {
    800030f4:	fe010113          	addi	sp,sp,-32
    800030f8:	00113c23          	sd	ra,24(sp)
    800030fc:	00813823          	sd	s0,16(sp)
    80003100:	00913423          	sd	s1,8(sp)
    80003104:	01213023          	sd	s2,0(sp)
    80003108:	02010413          	addi	s0,sp,32
    8000310c:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003110:	00000913          	li	s2,0
    80003114:	00c0006f          	j	80003120 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003118:	ffffe097          	auipc	ra,0xffffe
    8000311c:	2b4080e7          	jalr	692(ra) # 800013cc <_Z15thread_dispatchv>
    while (!threadEnd) {
    80003120:	00009797          	auipc	a5,0x9
    80003124:	9087a783          	lw	a5,-1784(a5) # 8000ba28 <_ZL9threadEnd>
    80003128:	02079e63          	bnez	a5,80003164 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    8000312c:	0004a583          	lw	a1,0(s1)
    80003130:	0305859b          	addiw	a1,a1,48
    80003134:	0084b503          	ld	a0,8(s1)
    80003138:	00003097          	auipc	ra,0x3
    8000313c:	2d4080e7          	jalr	724(ra) # 8000640c <_ZN6Buffer3putEi>
        i++;
    80003140:	0019071b          	addiw	a4,s2,1
    80003144:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003148:	0004a683          	lw	a3,0(s1)
    8000314c:	0026979b          	slliw	a5,a3,0x2
    80003150:	00d787bb          	addw	a5,a5,a3
    80003154:	0017979b          	slliw	a5,a5,0x1
    80003158:	02f767bb          	remw	a5,a4,a5
    8000315c:	fc0792e3          	bnez	a5,80003120 <_ZL8producerPv+0x2c>
    80003160:	fb9ff06f          	j	80003118 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80003164:	0104b503          	ld	a0,16(s1)
    80003168:	ffffe097          	auipc	ra,0xffffe
    8000316c:	388080e7          	jalr	904(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    80003170:	01813083          	ld	ra,24(sp)
    80003174:	01013403          	ld	s0,16(sp)
    80003178:	00813483          	ld	s1,8(sp)
    8000317c:	00013903          	ld	s2,0(sp)
    80003180:	02010113          	addi	sp,sp,32
    80003184:	00008067          	ret

0000000080003188 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80003188:	fd010113          	addi	sp,sp,-48
    8000318c:	02113423          	sd	ra,40(sp)
    80003190:	02813023          	sd	s0,32(sp)
    80003194:	00913c23          	sd	s1,24(sp)
    80003198:	01213823          	sd	s2,16(sp)
    8000319c:	01313423          	sd	s3,8(sp)
    800031a0:	03010413          	addi	s0,sp,48
    800031a4:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800031a8:	00000993          	li	s3,0
    800031ac:	01c0006f          	j	800031c8 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    800031b0:	ffffe097          	auipc	ra,0xffffe
    800031b4:	21c080e7          	jalr	540(ra) # 800013cc <_Z15thread_dispatchv>
    800031b8:	0500006f          	j	80003208 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    800031bc:	00a00513          	li	a0,10
    800031c0:	ffffe097          	auipc	ra,0xffffe
    800031c4:	47c080e7          	jalr	1148(ra) # 8000163c <_Z4putcc>
    while (!threadEnd) {
    800031c8:	00009797          	auipc	a5,0x9
    800031cc:	8607a783          	lw	a5,-1952(a5) # 8000ba28 <_ZL9threadEnd>
    800031d0:	06079063          	bnez	a5,80003230 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    800031d4:	00893503          	ld	a0,8(s2)
    800031d8:	00003097          	auipc	ra,0x3
    800031dc:	2c4080e7          	jalr	708(ra) # 8000649c <_ZN6Buffer3getEv>
        i++;
    800031e0:	0019849b          	addiw	s1,s3,1
    800031e4:	0004899b          	sext.w	s3,s1
        putc(key);
    800031e8:	0ff57513          	andi	a0,a0,255
    800031ec:	ffffe097          	auipc	ra,0xffffe
    800031f0:	450080e7          	jalr	1104(ra) # 8000163c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800031f4:	00092703          	lw	a4,0(s2)
    800031f8:	0027179b          	slliw	a5,a4,0x2
    800031fc:	00e787bb          	addw	a5,a5,a4
    80003200:	02f4e7bb          	remw	a5,s1,a5
    80003204:	fa0786e3          	beqz	a5,800031b0 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80003208:	05000793          	li	a5,80
    8000320c:	02f4e4bb          	remw	s1,s1,a5
    80003210:	fa049ce3          	bnez	s1,800031c8 <_ZL8consumerPv+0x40>
    80003214:	fa9ff06f          	j	800031bc <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80003218:	00893503          	ld	a0,8(s2)
    8000321c:	00003097          	auipc	ra,0x3
    80003220:	280080e7          	jalr	640(ra) # 8000649c <_ZN6Buffer3getEv>
        putc(key);
    80003224:	0ff57513          	andi	a0,a0,255
    80003228:	ffffe097          	auipc	ra,0xffffe
    8000322c:	414080e7          	jalr	1044(ra) # 8000163c <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80003230:	00893503          	ld	a0,8(s2)
    80003234:	00003097          	auipc	ra,0x3
    80003238:	2f4080e7          	jalr	756(ra) # 80006528 <_ZN6Buffer6getCntEv>
    8000323c:	fca04ee3          	bgtz	a0,80003218 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80003240:	01093503          	ld	a0,16(s2)
    80003244:	ffffe097          	auipc	ra,0xffffe
    80003248:	2ac080e7          	jalr	684(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    8000324c:	02813083          	ld	ra,40(sp)
    80003250:	02013403          	ld	s0,32(sp)
    80003254:	01813483          	ld	s1,24(sp)
    80003258:	01013903          	ld	s2,16(sp)
    8000325c:	00813983          	ld	s3,8(sp)
    80003260:	03010113          	addi	sp,sp,48
    80003264:	00008067          	ret

0000000080003268 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80003268:	f9010113          	addi	sp,sp,-112
    8000326c:	06113423          	sd	ra,104(sp)
    80003270:	06813023          	sd	s0,96(sp)
    80003274:	04913c23          	sd	s1,88(sp)
    80003278:	05213823          	sd	s2,80(sp)
    8000327c:	05313423          	sd	s3,72(sp)
    80003280:	05413023          	sd	s4,64(sp)
    80003284:	03513c23          	sd	s5,56(sp)
    80003288:	03613823          	sd	s6,48(sp)
    8000328c:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80003290:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003294:	00006517          	auipc	a0,0x6
    80003298:	e9c50513          	addi	a0,a0,-356 # 80009130 <CONSOLE_STATUS+0x120>
    8000329c:	00002097          	auipc	ra,0x2
    800032a0:	220080e7          	jalr	544(ra) # 800054bc <_Z11printStringPKc>
    getString(input, 30);
    800032a4:	01e00593          	li	a1,30
    800032a8:	fa040493          	addi	s1,s0,-96
    800032ac:	00048513          	mv	a0,s1
    800032b0:	00002097          	auipc	ra,0x2
    800032b4:	294080e7          	jalr	660(ra) # 80005544 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800032b8:	00048513          	mv	a0,s1
    800032bc:	00002097          	auipc	ra,0x2
    800032c0:	360080e7          	jalr	864(ra) # 8000561c <_Z11stringToIntPKc>
    800032c4:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800032c8:	00006517          	auipc	a0,0x6
    800032cc:	e8850513          	addi	a0,a0,-376 # 80009150 <CONSOLE_STATUS+0x140>
    800032d0:	00002097          	auipc	ra,0x2
    800032d4:	1ec080e7          	jalr	492(ra) # 800054bc <_Z11printStringPKc>
    getString(input, 30);
    800032d8:	01e00593          	li	a1,30
    800032dc:	00048513          	mv	a0,s1
    800032e0:	00002097          	auipc	ra,0x2
    800032e4:	264080e7          	jalr	612(ra) # 80005544 <_Z9getStringPci>
    n = stringToInt(input);
    800032e8:	00048513          	mv	a0,s1
    800032ec:	00002097          	auipc	ra,0x2
    800032f0:	330080e7          	jalr	816(ra) # 8000561c <_Z11stringToIntPKc>
    800032f4:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800032f8:	00006517          	auipc	a0,0x6
    800032fc:	e7850513          	addi	a0,a0,-392 # 80009170 <CONSOLE_STATUS+0x160>
    80003300:	00002097          	auipc	ra,0x2
    80003304:	1bc080e7          	jalr	444(ra) # 800054bc <_Z11printStringPKc>
    80003308:	00000613          	li	a2,0
    8000330c:	00a00593          	li	a1,10
    80003310:	00090513          	mv	a0,s2
    80003314:	00002097          	auipc	ra,0x2
    80003318:	358080e7          	jalr	856(ra) # 8000566c <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    8000331c:	00006517          	auipc	a0,0x6
    80003320:	e6c50513          	addi	a0,a0,-404 # 80009188 <CONSOLE_STATUS+0x178>
    80003324:	00002097          	auipc	ra,0x2
    80003328:	198080e7          	jalr	408(ra) # 800054bc <_Z11printStringPKc>
    8000332c:	00000613          	li	a2,0
    80003330:	00a00593          	li	a1,10
    80003334:	00048513          	mv	a0,s1
    80003338:	00002097          	auipc	ra,0x2
    8000333c:	334080e7          	jalr	820(ra) # 8000566c <_Z8printIntiii>
    printString(".\n");
    80003340:	00006517          	auipc	a0,0x6
    80003344:	e6050513          	addi	a0,a0,-416 # 800091a0 <CONSOLE_STATUS+0x190>
    80003348:	00002097          	auipc	ra,0x2
    8000334c:	174080e7          	jalr	372(ra) # 800054bc <_Z11printStringPKc>
    if(threadNum > n) {
    80003350:	0324c463          	blt	s1,s2,80003378 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003354:	03205c63          	blez	s2,8000338c <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003358:	03800513          	li	a0,56
    8000335c:	fffff097          	auipc	ra,0xfffff
    80003360:	f00080e7          	jalr	-256(ra) # 8000225c <_Znwm>
    80003364:	00050a13          	mv	s4,a0
    80003368:	00048593          	mv	a1,s1
    8000336c:	00003097          	auipc	ra,0x3
    80003370:	004080e7          	jalr	4(ra) # 80006370 <_ZN6BufferC1Ei>
    80003374:	0300006f          	j	800033a4 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003378:	00006517          	auipc	a0,0x6
    8000337c:	e3050513          	addi	a0,a0,-464 # 800091a8 <CONSOLE_STATUS+0x198>
    80003380:	00002097          	auipc	ra,0x2
    80003384:	13c080e7          	jalr	316(ra) # 800054bc <_Z11printStringPKc>
        return;
    80003388:	0140006f          	j	8000339c <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    8000338c:	00006517          	auipc	a0,0x6
    80003390:	e5c50513          	addi	a0,a0,-420 # 800091e8 <CONSOLE_STATUS+0x1d8>
    80003394:	00002097          	auipc	ra,0x2
    80003398:	128080e7          	jalr	296(ra) # 800054bc <_Z11printStringPKc>
        return;
    8000339c:	000b0113          	mv	sp,s6
    800033a0:	1500006f          	j	800034f0 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    800033a4:	00000593          	li	a1,0
    800033a8:	00008517          	auipc	a0,0x8
    800033ac:	68850513          	addi	a0,a0,1672 # 8000ba30 <_ZL10waitForAll>
    800033b0:	ffffe097          	auipc	ra,0xffffe
    800033b4:	058080e7          	jalr	88(ra) # 80001408 <_Z8sem_openPP3Semj>
    thread_t threads[threadNum];
    800033b8:	00391793          	slli	a5,s2,0x3
    800033bc:	00f78793          	addi	a5,a5,15
    800033c0:	ff07f793          	andi	a5,a5,-16
    800033c4:	40f10133          	sub	sp,sp,a5
    800033c8:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    800033cc:	0019071b          	addiw	a4,s2,1
    800033d0:	00171793          	slli	a5,a4,0x1
    800033d4:	00e787b3          	add	a5,a5,a4
    800033d8:	00379793          	slli	a5,a5,0x3
    800033dc:	00f78793          	addi	a5,a5,15
    800033e0:	ff07f793          	andi	a5,a5,-16
    800033e4:	40f10133          	sub	sp,sp,a5
    800033e8:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    800033ec:	00191613          	slli	a2,s2,0x1
    800033f0:	012607b3          	add	a5,a2,s2
    800033f4:	00379793          	slli	a5,a5,0x3
    800033f8:	00f987b3          	add	a5,s3,a5
    800033fc:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003400:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003404:	00008717          	auipc	a4,0x8
    80003408:	62c73703          	ld	a4,1580(a4) # 8000ba30 <_ZL10waitForAll>
    8000340c:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003410:	00078613          	mv	a2,a5
    80003414:	00000597          	auipc	a1,0x0
    80003418:	d7458593          	addi	a1,a1,-652 # 80003188 <_ZL8consumerPv>
    8000341c:	f9840513          	addi	a0,s0,-104
    80003420:	ffffe097          	auipc	ra,0xffffe
    80003424:	ed8080e7          	jalr	-296(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003428:	00000493          	li	s1,0
    8000342c:	0280006f          	j	80003454 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003430:	00000597          	auipc	a1,0x0
    80003434:	c1458593          	addi	a1,a1,-1004 # 80003044 <_ZL16producerKeyboardPv>
                      data + i);
    80003438:	00179613          	slli	a2,a5,0x1
    8000343c:	00f60633          	add	a2,a2,a5
    80003440:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003444:	00c98633          	add	a2,s3,a2
    80003448:	ffffe097          	auipc	ra,0xffffe
    8000344c:	eb0080e7          	jalr	-336(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003450:	0014849b          	addiw	s1,s1,1
    80003454:	0524d263          	bge	s1,s2,80003498 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003458:	00149793          	slli	a5,s1,0x1
    8000345c:	009787b3          	add	a5,a5,s1
    80003460:	00379793          	slli	a5,a5,0x3
    80003464:	00f987b3          	add	a5,s3,a5
    80003468:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    8000346c:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80003470:	00008717          	auipc	a4,0x8
    80003474:	5c073703          	ld	a4,1472(a4) # 8000ba30 <_ZL10waitForAll>
    80003478:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    8000347c:	00048793          	mv	a5,s1
    80003480:	00349513          	slli	a0,s1,0x3
    80003484:	00aa8533          	add	a0,s5,a0
    80003488:	fa9054e3          	blez	s1,80003430 <_Z22producerConsumer_C_APIv+0x1c8>
    8000348c:	00000597          	auipc	a1,0x0
    80003490:	c6858593          	addi	a1,a1,-920 # 800030f4 <_ZL8producerPv>
    80003494:	fa5ff06f          	j	80003438 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003498:	ffffe097          	auipc	ra,0xffffe
    8000349c:	f34080e7          	jalr	-204(ra) # 800013cc <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    800034a0:	00000493          	li	s1,0
    800034a4:	00994e63          	blt	s2,s1,800034c0 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    800034a8:	00008517          	auipc	a0,0x8
    800034ac:	58853503          	ld	a0,1416(a0) # 8000ba30 <_ZL10waitForAll>
    800034b0:	ffffe097          	auipc	ra,0xffffe
    800034b4:	ff4080e7          	jalr	-12(ra) # 800014a4 <_Z8sem_waitP3Sem>
    for (int i = 0; i <= threadNum; i++) {
    800034b8:	0014849b          	addiw	s1,s1,1
    800034bc:	fe9ff06f          	j	800034a4 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    800034c0:	00008517          	auipc	a0,0x8
    800034c4:	57053503          	ld	a0,1392(a0) # 8000ba30 <_ZL10waitForAll>
    800034c8:	ffffe097          	auipc	ra,0xffffe
    800034cc:	f90080e7          	jalr	-112(ra) # 80001458 <_Z9sem_closeP3Sem>
    delete buffer;
    800034d0:	000a0e63          	beqz	s4,800034ec <_Z22producerConsumer_C_APIv+0x284>
    800034d4:	000a0513          	mv	a0,s4
    800034d8:	00003097          	auipc	ra,0x3
    800034dc:	0d8080e7          	jalr	216(ra) # 800065b0 <_ZN6BufferD1Ev>
    800034e0:	000a0513          	mv	a0,s4
    800034e4:	fffff097          	auipc	ra,0xfffff
    800034e8:	da0080e7          	jalr	-608(ra) # 80002284 <_ZdlPv>
    800034ec:	000b0113          	mv	sp,s6

}
    800034f0:	f9040113          	addi	sp,s0,-112
    800034f4:	06813083          	ld	ra,104(sp)
    800034f8:	06013403          	ld	s0,96(sp)
    800034fc:	05813483          	ld	s1,88(sp)
    80003500:	05013903          	ld	s2,80(sp)
    80003504:	04813983          	ld	s3,72(sp)
    80003508:	04013a03          	ld	s4,64(sp)
    8000350c:	03813a83          	ld	s5,56(sp)
    80003510:	03013b03          	ld	s6,48(sp)
    80003514:	07010113          	addi	sp,sp,112
    80003518:	00008067          	ret
    8000351c:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003520:	000a0513          	mv	a0,s4
    80003524:	fffff097          	auipc	ra,0xfffff
    80003528:	d60080e7          	jalr	-672(ra) # 80002284 <_ZdlPv>
    8000352c:	00048513          	mv	a0,s1
    80003530:	00009097          	auipc	ra,0x9
    80003534:	618080e7          	jalr	1560(ra) # 8000cb48 <_Unwind_Resume>

0000000080003538 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003538:	fe010113          	addi	sp,sp,-32
    8000353c:	00113c23          	sd	ra,24(sp)
    80003540:	00813823          	sd	s0,16(sp)
    80003544:	00913423          	sd	s1,8(sp)
    80003548:	01213023          	sd	s2,0(sp)
    8000354c:	02010413          	addi	s0,sp,32
    80003550:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003554:	00100793          	li	a5,1
    80003558:	02a7f863          	bgeu	a5,a0,80003588 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000355c:	00a00793          	li	a5,10
    80003560:	02f577b3          	remu	a5,a0,a5
    80003564:	02078e63          	beqz	a5,800035a0 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003568:	fff48513          	addi	a0,s1,-1
    8000356c:	00000097          	auipc	ra,0x0
    80003570:	fcc080e7          	jalr	-52(ra) # 80003538 <_ZL9fibonaccim>
    80003574:	00050913          	mv	s2,a0
    80003578:	ffe48513          	addi	a0,s1,-2
    8000357c:	00000097          	auipc	ra,0x0
    80003580:	fbc080e7          	jalr	-68(ra) # 80003538 <_ZL9fibonaccim>
    80003584:	00a90533          	add	a0,s2,a0
}
    80003588:	01813083          	ld	ra,24(sp)
    8000358c:	01013403          	ld	s0,16(sp)
    80003590:	00813483          	ld	s1,8(sp)
    80003594:	00013903          	ld	s2,0(sp)
    80003598:	02010113          	addi	sp,sp,32
    8000359c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800035a0:	ffffe097          	auipc	ra,0xffffe
    800035a4:	e2c080e7          	jalr	-468(ra) # 800013cc <_Z15thread_dispatchv>
    800035a8:	fc1ff06f          	j	80003568 <_ZL9fibonaccim+0x30>

00000000800035ac <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    800035ac:	fe010113          	addi	sp,sp,-32
    800035b0:	00113c23          	sd	ra,24(sp)
    800035b4:	00813823          	sd	s0,16(sp)
    800035b8:	00913423          	sd	s1,8(sp)
    800035bc:	01213023          	sd	s2,0(sp)
    800035c0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800035c4:	00000913          	li	s2,0
    800035c8:	0380006f          	j	80003600 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800035cc:	ffffe097          	auipc	ra,0xffffe
    800035d0:	e00080e7          	jalr	-512(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800035d4:	00148493          	addi	s1,s1,1
    800035d8:	000027b7          	lui	a5,0x2
    800035dc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800035e0:	0097ee63          	bltu	a5,s1,800035fc <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800035e4:	00000713          	li	a4,0
    800035e8:	000077b7          	lui	a5,0x7
    800035ec:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800035f0:	fce7eee3          	bltu	a5,a4,800035cc <_ZN7WorkerA11workerBodyAEPv+0x20>
    800035f4:	00170713          	addi	a4,a4,1
    800035f8:	ff1ff06f          	j	800035e8 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800035fc:	00190913          	addi	s2,s2,1
    80003600:	00900793          	li	a5,9
    80003604:	0527e063          	bltu	a5,s2,80003644 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003608:	00006517          	auipc	a0,0x6
    8000360c:	c1050513          	addi	a0,a0,-1008 # 80009218 <CONSOLE_STATUS+0x208>
    80003610:	00002097          	auipc	ra,0x2
    80003614:	eac080e7          	jalr	-340(ra) # 800054bc <_Z11printStringPKc>
    80003618:	00000613          	li	a2,0
    8000361c:	00a00593          	li	a1,10
    80003620:	0009051b          	sext.w	a0,s2
    80003624:	00002097          	auipc	ra,0x2
    80003628:	048080e7          	jalr	72(ra) # 8000566c <_Z8printIntiii>
    8000362c:	00006517          	auipc	a0,0x6
    80003630:	b3c50513          	addi	a0,a0,-1220 # 80009168 <CONSOLE_STATUS+0x158>
    80003634:	00002097          	auipc	ra,0x2
    80003638:	e88080e7          	jalr	-376(ra) # 800054bc <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000363c:	00000493          	li	s1,0
    80003640:	f99ff06f          	j	800035d8 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003644:	00006517          	auipc	a0,0x6
    80003648:	bdc50513          	addi	a0,a0,-1060 # 80009220 <CONSOLE_STATUS+0x210>
    8000364c:	00002097          	auipc	ra,0x2
    80003650:	e70080e7          	jalr	-400(ra) # 800054bc <_Z11printStringPKc>
    finishedA = true;
    80003654:	00100793          	li	a5,1
    80003658:	00008717          	auipc	a4,0x8
    8000365c:	3ef70023          	sb	a5,992(a4) # 8000ba38 <_ZL9finishedA>
}
    80003660:	01813083          	ld	ra,24(sp)
    80003664:	01013403          	ld	s0,16(sp)
    80003668:	00813483          	ld	s1,8(sp)
    8000366c:	00013903          	ld	s2,0(sp)
    80003670:	02010113          	addi	sp,sp,32
    80003674:	00008067          	ret

0000000080003678 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003678:	fe010113          	addi	sp,sp,-32
    8000367c:	00113c23          	sd	ra,24(sp)
    80003680:	00813823          	sd	s0,16(sp)
    80003684:	00913423          	sd	s1,8(sp)
    80003688:	01213023          	sd	s2,0(sp)
    8000368c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003690:	00000913          	li	s2,0
    80003694:	0380006f          	j	800036cc <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003698:	ffffe097          	auipc	ra,0xffffe
    8000369c:	d34080e7          	jalr	-716(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800036a0:	00148493          	addi	s1,s1,1
    800036a4:	000027b7          	lui	a5,0x2
    800036a8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800036ac:	0097ee63          	bltu	a5,s1,800036c8 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800036b0:	00000713          	li	a4,0
    800036b4:	000077b7          	lui	a5,0x7
    800036b8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800036bc:	fce7eee3          	bltu	a5,a4,80003698 <_ZN7WorkerB11workerBodyBEPv+0x20>
    800036c0:	00170713          	addi	a4,a4,1
    800036c4:	ff1ff06f          	j	800036b4 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800036c8:	00190913          	addi	s2,s2,1
    800036cc:	00f00793          	li	a5,15
    800036d0:	0527e063          	bltu	a5,s2,80003710 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800036d4:	00006517          	auipc	a0,0x6
    800036d8:	b5c50513          	addi	a0,a0,-1188 # 80009230 <CONSOLE_STATUS+0x220>
    800036dc:	00002097          	auipc	ra,0x2
    800036e0:	de0080e7          	jalr	-544(ra) # 800054bc <_Z11printStringPKc>
    800036e4:	00000613          	li	a2,0
    800036e8:	00a00593          	li	a1,10
    800036ec:	0009051b          	sext.w	a0,s2
    800036f0:	00002097          	auipc	ra,0x2
    800036f4:	f7c080e7          	jalr	-132(ra) # 8000566c <_Z8printIntiii>
    800036f8:	00006517          	auipc	a0,0x6
    800036fc:	a7050513          	addi	a0,a0,-1424 # 80009168 <CONSOLE_STATUS+0x158>
    80003700:	00002097          	auipc	ra,0x2
    80003704:	dbc080e7          	jalr	-580(ra) # 800054bc <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003708:	00000493          	li	s1,0
    8000370c:	f99ff06f          	j	800036a4 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003710:	00006517          	auipc	a0,0x6
    80003714:	b2850513          	addi	a0,a0,-1240 # 80009238 <CONSOLE_STATUS+0x228>
    80003718:	00002097          	auipc	ra,0x2
    8000371c:	da4080e7          	jalr	-604(ra) # 800054bc <_Z11printStringPKc>
    finishedB = true;
    80003720:	00100793          	li	a5,1
    80003724:	00008717          	auipc	a4,0x8
    80003728:	30f70aa3          	sb	a5,789(a4) # 8000ba39 <_ZL9finishedB>
    thread_dispatch();
    8000372c:	ffffe097          	auipc	ra,0xffffe
    80003730:	ca0080e7          	jalr	-864(ra) # 800013cc <_Z15thread_dispatchv>
}
    80003734:	01813083          	ld	ra,24(sp)
    80003738:	01013403          	ld	s0,16(sp)
    8000373c:	00813483          	ld	s1,8(sp)
    80003740:	00013903          	ld	s2,0(sp)
    80003744:	02010113          	addi	sp,sp,32
    80003748:	00008067          	ret

000000008000374c <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    8000374c:	fe010113          	addi	sp,sp,-32
    80003750:	00113c23          	sd	ra,24(sp)
    80003754:	00813823          	sd	s0,16(sp)
    80003758:	00913423          	sd	s1,8(sp)
    8000375c:	01213023          	sd	s2,0(sp)
    80003760:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003764:	00000493          	li	s1,0
    80003768:	0400006f          	j	800037a8 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    8000376c:	00006517          	auipc	a0,0x6
    80003770:	adc50513          	addi	a0,a0,-1316 # 80009248 <CONSOLE_STATUS+0x238>
    80003774:	00002097          	auipc	ra,0x2
    80003778:	d48080e7          	jalr	-696(ra) # 800054bc <_Z11printStringPKc>
    8000377c:	00000613          	li	a2,0
    80003780:	00a00593          	li	a1,10
    80003784:	00048513          	mv	a0,s1
    80003788:	00002097          	auipc	ra,0x2
    8000378c:	ee4080e7          	jalr	-284(ra) # 8000566c <_Z8printIntiii>
    80003790:	00006517          	auipc	a0,0x6
    80003794:	9d850513          	addi	a0,a0,-1576 # 80009168 <CONSOLE_STATUS+0x158>
    80003798:	00002097          	auipc	ra,0x2
    8000379c:	d24080e7          	jalr	-732(ra) # 800054bc <_Z11printStringPKc>
    for (; i < 3; i++) {
    800037a0:	0014849b          	addiw	s1,s1,1
    800037a4:	0ff4f493          	andi	s1,s1,255
    800037a8:	00200793          	li	a5,2
    800037ac:	fc97f0e3          	bgeu	a5,s1,8000376c <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    800037b0:	00006517          	auipc	a0,0x6
    800037b4:	aa050513          	addi	a0,a0,-1376 # 80009250 <CONSOLE_STATUS+0x240>
    800037b8:	00002097          	auipc	ra,0x2
    800037bc:	d04080e7          	jalr	-764(ra) # 800054bc <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800037c0:	00700313          	li	t1,7
    thread_dispatch();
    800037c4:	ffffe097          	auipc	ra,0xffffe
    800037c8:	c08080e7          	jalr	-1016(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800037cc:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    800037d0:	00006517          	auipc	a0,0x6
    800037d4:	a9050513          	addi	a0,a0,-1392 # 80009260 <CONSOLE_STATUS+0x250>
    800037d8:	00002097          	auipc	ra,0x2
    800037dc:	ce4080e7          	jalr	-796(ra) # 800054bc <_Z11printStringPKc>
    800037e0:	00000613          	li	a2,0
    800037e4:	00a00593          	li	a1,10
    800037e8:	0009051b          	sext.w	a0,s2
    800037ec:	00002097          	auipc	ra,0x2
    800037f0:	e80080e7          	jalr	-384(ra) # 8000566c <_Z8printIntiii>
    800037f4:	00006517          	auipc	a0,0x6
    800037f8:	97450513          	addi	a0,a0,-1676 # 80009168 <CONSOLE_STATUS+0x158>
    800037fc:	00002097          	auipc	ra,0x2
    80003800:	cc0080e7          	jalr	-832(ra) # 800054bc <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003804:	00c00513          	li	a0,12
    80003808:	00000097          	auipc	ra,0x0
    8000380c:	d30080e7          	jalr	-720(ra) # 80003538 <_ZL9fibonaccim>
    80003810:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003814:	00006517          	auipc	a0,0x6
    80003818:	a5450513          	addi	a0,a0,-1452 # 80009268 <CONSOLE_STATUS+0x258>
    8000381c:	00002097          	auipc	ra,0x2
    80003820:	ca0080e7          	jalr	-864(ra) # 800054bc <_Z11printStringPKc>
    80003824:	00000613          	li	a2,0
    80003828:	00a00593          	li	a1,10
    8000382c:	0009051b          	sext.w	a0,s2
    80003830:	00002097          	auipc	ra,0x2
    80003834:	e3c080e7          	jalr	-452(ra) # 8000566c <_Z8printIntiii>
    80003838:	00006517          	auipc	a0,0x6
    8000383c:	93050513          	addi	a0,a0,-1744 # 80009168 <CONSOLE_STATUS+0x158>
    80003840:	00002097          	auipc	ra,0x2
    80003844:	c7c080e7          	jalr	-900(ra) # 800054bc <_Z11printStringPKc>
    80003848:	0400006f          	j	80003888 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    8000384c:	00006517          	auipc	a0,0x6
    80003850:	9fc50513          	addi	a0,a0,-1540 # 80009248 <CONSOLE_STATUS+0x238>
    80003854:	00002097          	auipc	ra,0x2
    80003858:	c68080e7          	jalr	-920(ra) # 800054bc <_Z11printStringPKc>
    8000385c:	00000613          	li	a2,0
    80003860:	00a00593          	li	a1,10
    80003864:	00048513          	mv	a0,s1
    80003868:	00002097          	auipc	ra,0x2
    8000386c:	e04080e7          	jalr	-508(ra) # 8000566c <_Z8printIntiii>
    80003870:	00006517          	auipc	a0,0x6
    80003874:	8f850513          	addi	a0,a0,-1800 # 80009168 <CONSOLE_STATUS+0x158>
    80003878:	00002097          	auipc	ra,0x2
    8000387c:	c44080e7          	jalr	-956(ra) # 800054bc <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003880:	0014849b          	addiw	s1,s1,1
    80003884:	0ff4f493          	andi	s1,s1,255
    80003888:	00500793          	li	a5,5
    8000388c:	fc97f0e3          	bgeu	a5,s1,8000384c <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80003890:	00006517          	auipc	a0,0x6
    80003894:	99050513          	addi	a0,a0,-1648 # 80009220 <CONSOLE_STATUS+0x210>
    80003898:	00002097          	auipc	ra,0x2
    8000389c:	c24080e7          	jalr	-988(ra) # 800054bc <_Z11printStringPKc>
    finishedC = true;
    800038a0:	00100793          	li	a5,1
    800038a4:	00008717          	auipc	a4,0x8
    800038a8:	18f70b23          	sb	a5,406(a4) # 8000ba3a <_ZL9finishedC>
    thread_dispatch();
    800038ac:	ffffe097          	auipc	ra,0xffffe
    800038b0:	b20080e7          	jalr	-1248(ra) # 800013cc <_Z15thread_dispatchv>
}
    800038b4:	01813083          	ld	ra,24(sp)
    800038b8:	01013403          	ld	s0,16(sp)
    800038bc:	00813483          	ld	s1,8(sp)
    800038c0:	00013903          	ld	s2,0(sp)
    800038c4:	02010113          	addi	sp,sp,32
    800038c8:	00008067          	ret

00000000800038cc <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    800038cc:	fe010113          	addi	sp,sp,-32
    800038d0:	00113c23          	sd	ra,24(sp)
    800038d4:	00813823          	sd	s0,16(sp)
    800038d8:	00913423          	sd	s1,8(sp)
    800038dc:	01213023          	sd	s2,0(sp)
    800038e0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800038e4:	00a00493          	li	s1,10
    800038e8:	0400006f          	j	80003928 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800038ec:	00006517          	auipc	a0,0x6
    800038f0:	98c50513          	addi	a0,a0,-1652 # 80009278 <CONSOLE_STATUS+0x268>
    800038f4:	00002097          	auipc	ra,0x2
    800038f8:	bc8080e7          	jalr	-1080(ra) # 800054bc <_Z11printStringPKc>
    800038fc:	00000613          	li	a2,0
    80003900:	00a00593          	li	a1,10
    80003904:	00048513          	mv	a0,s1
    80003908:	00002097          	auipc	ra,0x2
    8000390c:	d64080e7          	jalr	-668(ra) # 8000566c <_Z8printIntiii>
    80003910:	00006517          	auipc	a0,0x6
    80003914:	85850513          	addi	a0,a0,-1960 # 80009168 <CONSOLE_STATUS+0x158>
    80003918:	00002097          	auipc	ra,0x2
    8000391c:	ba4080e7          	jalr	-1116(ra) # 800054bc <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003920:	0014849b          	addiw	s1,s1,1
    80003924:	0ff4f493          	andi	s1,s1,255
    80003928:	00c00793          	li	a5,12
    8000392c:	fc97f0e3          	bgeu	a5,s1,800038ec <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003930:	00006517          	auipc	a0,0x6
    80003934:	95050513          	addi	a0,a0,-1712 # 80009280 <CONSOLE_STATUS+0x270>
    80003938:	00002097          	auipc	ra,0x2
    8000393c:	b84080e7          	jalr	-1148(ra) # 800054bc <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003940:	00500313          	li	t1,5
    thread_dispatch();
    80003944:	ffffe097          	auipc	ra,0xffffe
    80003948:	a88080e7          	jalr	-1400(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    8000394c:	01000513          	li	a0,16
    80003950:	00000097          	auipc	ra,0x0
    80003954:	be8080e7          	jalr	-1048(ra) # 80003538 <_ZL9fibonaccim>
    80003958:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    8000395c:	00006517          	auipc	a0,0x6
    80003960:	93450513          	addi	a0,a0,-1740 # 80009290 <CONSOLE_STATUS+0x280>
    80003964:	00002097          	auipc	ra,0x2
    80003968:	b58080e7          	jalr	-1192(ra) # 800054bc <_Z11printStringPKc>
    8000396c:	00000613          	li	a2,0
    80003970:	00a00593          	li	a1,10
    80003974:	0009051b          	sext.w	a0,s2
    80003978:	00002097          	auipc	ra,0x2
    8000397c:	cf4080e7          	jalr	-780(ra) # 8000566c <_Z8printIntiii>
    80003980:	00005517          	auipc	a0,0x5
    80003984:	7e850513          	addi	a0,a0,2024 # 80009168 <CONSOLE_STATUS+0x158>
    80003988:	00002097          	auipc	ra,0x2
    8000398c:	b34080e7          	jalr	-1228(ra) # 800054bc <_Z11printStringPKc>
    80003990:	0400006f          	j	800039d0 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003994:	00006517          	auipc	a0,0x6
    80003998:	8e450513          	addi	a0,a0,-1820 # 80009278 <CONSOLE_STATUS+0x268>
    8000399c:	00002097          	auipc	ra,0x2
    800039a0:	b20080e7          	jalr	-1248(ra) # 800054bc <_Z11printStringPKc>
    800039a4:	00000613          	li	a2,0
    800039a8:	00a00593          	li	a1,10
    800039ac:	00048513          	mv	a0,s1
    800039b0:	00002097          	auipc	ra,0x2
    800039b4:	cbc080e7          	jalr	-836(ra) # 8000566c <_Z8printIntiii>
    800039b8:	00005517          	auipc	a0,0x5
    800039bc:	7b050513          	addi	a0,a0,1968 # 80009168 <CONSOLE_STATUS+0x158>
    800039c0:	00002097          	auipc	ra,0x2
    800039c4:	afc080e7          	jalr	-1284(ra) # 800054bc <_Z11printStringPKc>
    for (; i < 16; i++) {
    800039c8:	0014849b          	addiw	s1,s1,1
    800039cc:	0ff4f493          	andi	s1,s1,255
    800039d0:	00f00793          	li	a5,15
    800039d4:	fc97f0e3          	bgeu	a5,s1,80003994 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    800039d8:	00006517          	auipc	a0,0x6
    800039dc:	8c850513          	addi	a0,a0,-1848 # 800092a0 <CONSOLE_STATUS+0x290>
    800039e0:	00002097          	auipc	ra,0x2
    800039e4:	adc080e7          	jalr	-1316(ra) # 800054bc <_Z11printStringPKc>
    finishedD = true;
    800039e8:	00100793          	li	a5,1
    800039ec:	00008717          	auipc	a4,0x8
    800039f0:	04f707a3          	sb	a5,79(a4) # 8000ba3b <_ZL9finishedD>
    thread_dispatch();
    800039f4:	ffffe097          	auipc	ra,0xffffe
    800039f8:	9d8080e7          	jalr	-1576(ra) # 800013cc <_Z15thread_dispatchv>
}
    800039fc:	01813083          	ld	ra,24(sp)
    80003a00:	01013403          	ld	s0,16(sp)
    80003a04:	00813483          	ld	s1,8(sp)
    80003a08:	00013903          	ld	s2,0(sp)
    80003a0c:	02010113          	addi	sp,sp,32
    80003a10:	00008067          	ret

0000000080003a14 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003a14:	fc010113          	addi	sp,sp,-64
    80003a18:	02113c23          	sd	ra,56(sp)
    80003a1c:	02813823          	sd	s0,48(sp)
    80003a20:	02913423          	sd	s1,40(sp)
    80003a24:	03213023          	sd	s2,32(sp)
    80003a28:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003a2c:	02000513          	li	a0,32
    80003a30:	fffff097          	auipc	ra,0xfffff
    80003a34:	82c080e7          	jalr	-2004(ra) # 8000225c <_Znwm>
    80003a38:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003a3c:	fffff097          	auipc	ra,0xfffff
    80003a40:	9b0080e7          	jalr	-1616(ra) # 800023ec <_ZN6ThreadC1Ev>
    80003a44:	00008797          	auipc	a5,0x8
    80003a48:	d8c78793          	addi	a5,a5,-628 # 8000b7d0 <_ZTV7WorkerA+0x10>
    80003a4c:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003a50:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003a54:	00006517          	auipc	a0,0x6
    80003a58:	85c50513          	addi	a0,a0,-1956 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80003a5c:	00002097          	auipc	ra,0x2
    80003a60:	a60080e7          	jalr	-1440(ra) # 800054bc <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003a64:	02000513          	li	a0,32
    80003a68:	ffffe097          	auipc	ra,0xffffe
    80003a6c:	7f4080e7          	jalr	2036(ra) # 8000225c <_Znwm>
    80003a70:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003a74:	fffff097          	auipc	ra,0xfffff
    80003a78:	978080e7          	jalr	-1672(ra) # 800023ec <_ZN6ThreadC1Ev>
    80003a7c:	00008797          	auipc	a5,0x8
    80003a80:	d7c78793          	addi	a5,a5,-644 # 8000b7f8 <_ZTV7WorkerB+0x10>
    80003a84:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003a88:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003a8c:	00006517          	auipc	a0,0x6
    80003a90:	83c50513          	addi	a0,a0,-1988 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80003a94:	00002097          	auipc	ra,0x2
    80003a98:	a28080e7          	jalr	-1496(ra) # 800054bc <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003a9c:	02000513          	li	a0,32
    80003aa0:	ffffe097          	auipc	ra,0xffffe
    80003aa4:	7bc080e7          	jalr	1980(ra) # 8000225c <_Znwm>
    80003aa8:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003aac:	fffff097          	auipc	ra,0xfffff
    80003ab0:	940080e7          	jalr	-1728(ra) # 800023ec <_ZN6ThreadC1Ev>
    80003ab4:	00008797          	auipc	a5,0x8
    80003ab8:	d6c78793          	addi	a5,a5,-660 # 8000b820 <_ZTV7WorkerC+0x10>
    80003abc:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003ac0:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003ac4:	00006517          	auipc	a0,0x6
    80003ac8:	81c50513          	addi	a0,a0,-2020 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80003acc:	00002097          	auipc	ra,0x2
    80003ad0:	9f0080e7          	jalr	-1552(ra) # 800054bc <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003ad4:	02000513          	li	a0,32
    80003ad8:	ffffe097          	auipc	ra,0xffffe
    80003adc:	784080e7          	jalr	1924(ra) # 8000225c <_Znwm>
    80003ae0:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003ae4:	fffff097          	auipc	ra,0xfffff
    80003ae8:	908080e7          	jalr	-1784(ra) # 800023ec <_ZN6ThreadC1Ev>
    80003aec:	00008797          	auipc	a5,0x8
    80003af0:	d5c78793          	addi	a5,a5,-676 # 8000b848 <_ZTV7WorkerD+0x10>
    80003af4:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003af8:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003afc:	00005517          	auipc	a0,0x5
    80003b00:	7fc50513          	addi	a0,a0,2044 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80003b04:	00002097          	auipc	ra,0x2
    80003b08:	9b8080e7          	jalr	-1608(ra) # 800054bc <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003b0c:	00000493          	li	s1,0
    80003b10:	00300793          	li	a5,3
    80003b14:	0297c663          	blt	a5,s1,80003b40 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003b18:	00349793          	slli	a5,s1,0x3
    80003b1c:	fe040713          	addi	a4,s0,-32
    80003b20:	00f707b3          	add	a5,a4,a5
    80003b24:	fe07b503          	ld	a0,-32(a5)
    80003b28:	fffff097          	auipc	ra,0xfffff
    80003b2c:	840080e7          	jalr	-1984(ra) # 80002368 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003b30:	0014849b          	addiw	s1,s1,1
    80003b34:	fddff06f          	j	80003b10 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003b38:	fffff097          	auipc	ra,0xfffff
    80003b3c:	860080e7          	jalr	-1952(ra) # 80002398 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003b40:	00008797          	auipc	a5,0x8
    80003b44:	ef87c783          	lbu	a5,-264(a5) # 8000ba38 <_ZL9finishedA>
    80003b48:	fe0788e3          	beqz	a5,80003b38 <_Z20Threads_CPP_API_testv+0x124>
    80003b4c:	00008797          	auipc	a5,0x8
    80003b50:	eed7c783          	lbu	a5,-275(a5) # 8000ba39 <_ZL9finishedB>
    80003b54:	fe0782e3          	beqz	a5,80003b38 <_Z20Threads_CPP_API_testv+0x124>
    80003b58:	00008797          	auipc	a5,0x8
    80003b5c:	ee27c783          	lbu	a5,-286(a5) # 8000ba3a <_ZL9finishedC>
    80003b60:	fc078ce3          	beqz	a5,80003b38 <_Z20Threads_CPP_API_testv+0x124>
    80003b64:	00008797          	auipc	a5,0x8
    80003b68:	ed77c783          	lbu	a5,-297(a5) # 8000ba3b <_ZL9finishedD>
    80003b6c:	fc0786e3          	beqz	a5,80003b38 <_Z20Threads_CPP_API_testv+0x124>
    80003b70:	fc040493          	addi	s1,s0,-64
    80003b74:	0080006f          	j	80003b7c <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80003b78:	00848493          	addi	s1,s1,8
    80003b7c:	fe040793          	addi	a5,s0,-32
    80003b80:	08f48663          	beq	s1,a5,80003c0c <_Z20Threads_CPP_API_testv+0x1f8>
    80003b84:	0004b503          	ld	a0,0(s1)
    80003b88:	fe0508e3          	beqz	a0,80003b78 <_Z20Threads_CPP_API_testv+0x164>
    80003b8c:	00053783          	ld	a5,0(a0)
    80003b90:	0087b783          	ld	a5,8(a5)
    80003b94:	000780e7          	jalr	a5
    80003b98:	fe1ff06f          	j	80003b78 <_Z20Threads_CPP_API_testv+0x164>
    80003b9c:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80003ba0:	00048513          	mv	a0,s1
    80003ba4:	ffffe097          	auipc	ra,0xffffe
    80003ba8:	6e0080e7          	jalr	1760(ra) # 80002284 <_ZdlPv>
    80003bac:	00090513          	mv	a0,s2
    80003bb0:	00009097          	auipc	ra,0x9
    80003bb4:	f98080e7          	jalr	-104(ra) # 8000cb48 <_Unwind_Resume>
    80003bb8:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003bbc:	00048513          	mv	a0,s1
    80003bc0:	ffffe097          	auipc	ra,0xffffe
    80003bc4:	6c4080e7          	jalr	1732(ra) # 80002284 <_ZdlPv>
    80003bc8:	00090513          	mv	a0,s2
    80003bcc:	00009097          	auipc	ra,0x9
    80003bd0:	f7c080e7          	jalr	-132(ra) # 8000cb48 <_Unwind_Resume>
    80003bd4:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80003bd8:	00048513          	mv	a0,s1
    80003bdc:	ffffe097          	auipc	ra,0xffffe
    80003be0:	6a8080e7          	jalr	1704(ra) # 80002284 <_ZdlPv>
    80003be4:	00090513          	mv	a0,s2
    80003be8:	00009097          	auipc	ra,0x9
    80003bec:	f60080e7          	jalr	-160(ra) # 8000cb48 <_Unwind_Resume>
    80003bf0:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003bf4:	00048513          	mv	a0,s1
    80003bf8:	ffffe097          	auipc	ra,0xffffe
    80003bfc:	68c080e7          	jalr	1676(ra) # 80002284 <_ZdlPv>
    80003c00:	00090513          	mv	a0,s2
    80003c04:	00009097          	auipc	ra,0x9
    80003c08:	f44080e7          	jalr	-188(ra) # 8000cb48 <_Unwind_Resume>
}
    80003c0c:	03813083          	ld	ra,56(sp)
    80003c10:	03013403          	ld	s0,48(sp)
    80003c14:	02813483          	ld	s1,40(sp)
    80003c18:	02013903          	ld	s2,32(sp)
    80003c1c:	04010113          	addi	sp,sp,64
    80003c20:	00008067          	ret

0000000080003c24 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003c24:	ff010113          	addi	sp,sp,-16
    80003c28:	00113423          	sd	ra,8(sp)
    80003c2c:	00813023          	sd	s0,0(sp)
    80003c30:	01010413          	addi	s0,sp,16
    80003c34:	00008797          	auipc	a5,0x8
    80003c38:	b9c78793          	addi	a5,a5,-1124 # 8000b7d0 <_ZTV7WorkerA+0x10>
    80003c3c:	00f53023          	sd	a5,0(a0)
    80003c40:	ffffe097          	auipc	ra,0xffffe
    80003c44:	584080e7          	jalr	1412(ra) # 800021c4 <_ZN6ThreadD1Ev>
    80003c48:	00813083          	ld	ra,8(sp)
    80003c4c:	00013403          	ld	s0,0(sp)
    80003c50:	01010113          	addi	sp,sp,16
    80003c54:	00008067          	ret

0000000080003c58 <_ZN7WorkerAD0Ev>:
    80003c58:	fe010113          	addi	sp,sp,-32
    80003c5c:	00113c23          	sd	ra,24(sp)
    80003c60:	00813823          	sd	s0,16(sp)
    80003c64:	00913423          	sd	s1,8(sp)
    80003c68:	02010413          	addi	s0,sp,32
    80003c6c:	00050493          	mv	s1,a0
    80003c70:	00008797          	auipc	a5,0x8
    80003c74:	b6078793          	addi	a5,a5,-1184 # 8000b7d0 <_ZTV7WorkerA+0x10>
    80003c78:	00f53023          	sd	a5,0(a0)
    80003c7c:	ffffe097          	auipc	ra,0xffffe
    80003c80:	548080e7          	jalr	1352(ra) # 800021c4 <_ZN6ThreadD1Ev>
    80003c84:	00048513          	mv	a0,s1
    80003c88:	ffffe097          	auipc	ra,0xffffe
    80003c8c:	5fc080e7          	jalr	1532(ra) # 80002284 <_ZdlPv>
    80003c90:	01813083          	ld	ra,24(sp)
    80003c94:	01013403          	ld	s0,16(sp)
    80003c98:	00813483          	ld	s1,8(sp)
    80003c9c:	02010113          	addi	sp,sp,32
    80003ca0:	00008067          	ret

0000000080003ca4 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003ca4:	ff010113          	addi	sp,sp,-16
    80003ca8:	00113423          	sd	ra,8(sp)
    80003cac:	00813023          	sd	s0,0(sp)
    80003cb0:	01010413          	addi	s0,sp,16
    80003cb4:	00008797          	auipc	a5,0x8
    80003cb8:	b4478793          	addi	a5,a5,-1212 # 8000b7f8 <_ZTV7WorkerB+0x10>
    80003cbc:	00f53023          	sd	a5,0(a0)
    80003cc0:	ffffe097          	auipc	ra,0xffffe
    80003cc4:	504080e7          	jalr	1284(ra) # 800021c4 <_ZN6ThreadD1Ev>
    80003cc8:	00813083          	ld	ra,8(sp)
    80003ccc:	00013403          	ld	s0,0(sp)
    80003cd0:	01010113          	addi	sp,sp,16
    80003cd4:	00008067          	ret

0000000080003cd8 <_ZN7WorkerBD0Ev>:
    80003cd8:	fe010113          	addi	sp,sp,-32
    80003cdc:	00113c23          	sd	ra,24(sp)
    80003ce0:	00813823          	sd	s0,16(sp)
    80003ce4:	00913423          	sd	s1,8(sp)
    80003ce8:	02010413          	addi	s0,sp,32
    80003cec:	00050493          	mv	s1,a0
    80003cf0:	00008797          	auipc	a5,0x8
    80003cf4:	b0878793          	addi	a5,a5,-1272 # 8000b7f8 <_ZTV7WorkerB+0x10>
    80003cf8:	00f53023          	sd	a5,0(a0)
    80003cfc:	ffffe097          	auipc	ra,0xffffe
    80003d00:	4c8080e7          	jalr	1224(ra) # 800021c4 <_ZN6ThreadD1Ev>
    80003d04:	00048513          	mv	a0,s1
    80003d08:	ffffe097          	auipc	ra,0xffffe
    80003d0c:	57c080e7          	jalr	1404(ra) # 80002284 <_ZdlPv>
    80003d10:	01813083          	ld	ra,24(sp)
    80003d14:	01013403          	ld	s0,16(sp)
    80003d18:	00813483          	ld	s1,8(sp)
    80003d1c:	02010113          	addi	sp,sp,32
    80003d20:	00008067          	ret

0000000080003d24 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003d24:	ff010113          	addi	sp,sp,-16
    80003d28:	00113423          	sd	ra,8(sp)
    80003d2c:	00813023          	sd	s0,0(sp)
    80003d30:	01010413          	addi	s0,sp,16
    80003d34:	00008797          	auipc	a5,0x8
    80003d38:	aec78793          	addi	a5,a5,-1300 # 8000b820 <_ZTV7WorkerC+0x10>
    80003d3c:	00f53023          	sd	a5,0(a0)
    80003d40:	ffffe097          	auipc	ra,0xffffe
    80003d44:	484080e7          	jalr	1156(ra) # 800021c4 <_ZN6ThreadD1Ev>
    80003d48:	00813083          	ld	ra,8(sp)
    80003d4c:	00013403          	ld	s0,0(sp)
    80003d50:	01010113          	addi	sp,sp,16
    80003d54:	00008067          	ret

0000000080003d58 <_ZN7WorkerCD0Ev>:
    80003d58:	fe010113          	addi	sp,sp,-32
    80003d5c:	00113c23          	sd	ra,24(sp)
    80003d60:	00813823          	sd	s0,16(sp)
    80003d64:	00913423          	sd	s1,8(sp)
    80003d68:	02010413          	addi	s0,sp,32
    80003d6c:	00050493          	mv	s1,a0
    80003d70:	00008797          	auipc	a5,0x8
    80003d74:	ab078793          	addi	a5,a5,-1360 # 8000b820 <_ZTV7WorkerC+0x10>
    80003d78:	00f53023          	sd	a5,0(a0)
    80003d7c:	ffffe097          	auipc	ra,0xffffe
    80003d80:	448080e7          	jalr	1096(ra) # 800021c4 <_ZN6ThreadD1Ev>
    80003d84:	00048513          	mv	a0,s1
    80003d88:	ffffe097          	auipc	ra,0xffffe
    80003d8c:	4fc080e7          	jalr	1276(ra) # 80002284 <_ZdlPv>
    80003d90:	01813083          	ld	ra,24(sp)
    80003d94:	01013403          	ld	s0,16(sp)
    80003d98:	00813483          	ld	s1,8(sp)
    80003d9c:	02010113          	addi	sp,sp,32
    80003da0:	00008067          	ret

0000000080003da4 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003da4:	ff010113          	addi	sp,sp,-16
    80003da8:	00113423          	sd	ra,8(sp)
    80003dac:	00813023          	sd	s0,0(sp)
    80003db0:	01010413          	addi	s0,sp,16
    80003db4:	00008797          	auipc	a5,0x8
    80003db8:	a9478793          	addi	a5,a5,-1388 # 8000b848 <_ZTV7WorkerD+0x10>
    80003dbc:	00f53023          	sd	a5,0(a0)
    80003dc0:	ffffe097          	auipc	ra,0xffffe
    80003dc4:	404080e7          	jalr	1028(ra) # 800021c4 <_ZN6ThreadD1Ev>
    80003dc8:	00813083          	ld	ra,8(sp)
    80003dcc:	00013403          	ld	s0,0(sp)
    80003dd0:	01010113          	addi	sp,sp,16
    80003dd4:	00008067          	ret

0000000080003dd8 <_ZN7WorkerDD0Ev>:
    80003dd8:	fe010113          	addi	sp,sp,-32
    80003ddc:	00113c23          	sd	ra,24(sp)
    80003de0:	00813823          	sd	s0,16(sp)
    80003de4:	00913423          	sd	s1,8(sp)
    80003de8:	02010413          	addi	s0,sp,32
    80003dec:	00050493          	mv	s1,a0
    80003df0:	00008797          	auipc	a5,0x8
    80003df4:	a5878793          	addi	a5,a5,-1448 # 8000b848 <_ZTV7WorkerD+0x10>
    80003df8:	00f53023          	sd	a5,0(a0)
    80003dfc:	ffffe097          	auipc	ra,0xffffe
    80003e00:	3c8080e7          	jalr	968(ra) # 800021c4 <_ZN6ThreadD1Ev>
    80003e04:	00048513          	mv	a0,s1
    80003e08:	ffffe097          	auipc	ra,0xffffe
    80003e0c:	47c080e7          	jalr	1148(ra) # 80002284 <_ZdlPv>
    80003e10:	01813083          	ld	ra,24(sp)
    80003e14:	01013403          	ld	s0,16(sp)
    80003e18:	00813483          	ld	s1,8(sp)
    80003e1c:	02010113          	addi	sp,sp,32
    80003e20:	00008067          	ret

0000000080003e24 <_ZN7WorkerA3runEv>:
    void run() override {
    80003e24:	ff010113          	addi	sp,sp,-16
    80003e28:	00113423          	sd	ra,8(sp)
    80003e2c:	00813023          	sd	s0,0(sp)
    80003e30:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003e34:	00000593          	li	a1,0
    80003e38:	fffff097          	auipc	ra,0xfffff
    80003e3c:	774080e7          	jalr	1908(ra) # 800035ac <_ZN7WorkerA11workerBodyAEPv>
    }
    80003e40:	00813083          	ld	ra,8(sp)
    80003e44:	00013403          	ld	s0,0(sp)
    80003e48:	01010113          	addi	sp,sp,16
    80003e4c:	00008067          	ret

0000000080003e50 <_ZN7WorkerB3runEv>:
    void run() override {
    80003e50:	ff010113          	addi	sp,sp,-16
    80003e54:	00113423          	sd	ra,8(sp)
    80003e58:	00813023          	sd	s0,0(sp)
    80003e5c:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80003e60:	00000593          	li	a1,0
    80003e64:	00000097          	auipc	ra,0x0
    80003e68:	814080e7          	jalr	-2028(ra) # 80003678 <_ZN7WorkerB11workerBodyBEPv>
    }
    80003e6c:	00813083          	ld	ra,8(sp)
    80003e70:	00013403          	ld	s0,0(sp)
    80003e74:	01010113          	addi	sp,sp,16
    80003e78:	00008067          	ret

0000000080003e7c <_ZN7WorkerC3runEv>:
    void run() override {
    80003e7c:	ff010113          	addi	sp,sp,-16
    80003e80:	00113423          	sd	ra,8(sp)
    80003e84:	00813023          	sd	s0,0(sp)
    80003e88:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80003e8c:	00000593          	li	a1,0
    80003e90:	00000097          	auipc	ra,0x0
    80003e94:	8bc080e7          	jalr	-1860(ra) # 8000374c <_ZN7WorkerC11workerBodyCEPv>
    }
    80003e98:	00813083          	ld	ra,8(sp)
    80003e9c:	00013403          	ld	s0,0(sp)
    80003ea0:	01010113          	addi	sp,sp,16
    80003ea4:	00008067          	ret

0000000080003ea8 <_ZN7WorkerD3runEv>:
    void run() override {
    80003ea8:	ff010113          	addi	sp,sp,-16
    80003eac:	00113423          	sd	ra,8(sp)
    80003eb0:	00813023          	sd	s0,0(sp)
    80003eb4:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80003eb8:	00000593          	li	a1,0
    80003ebc:	00000097          	auipc	ra,0x0
    80003ec0:	a10080e7          	jalr	-1520(ra) # 800038cc <_ZN7WorkerD11workerBodyDEPv>
    }
    80003ec4:	00813083          	ld	ra,8(sp)
    80003ec8:	00013403          	ld	s0,0(sp)
    80003ecc:	01010113          	addi	sp,sp,16
    80003ed0:	00008067          	ret

0000000080003ed4 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80003ed4:	f8010113          	addi	sp,sp,-128
    80003ed8:	06113c23          	sd	ra,120(sp)
    80003edc:	06813823          	sd	s0,112(sp)
    80003ee0:	06913423          	sd	s1,104(sp)
    80003ee4:	07213023          	sd	s2,96(sp)
    80003ee8:	05313c23          	sd	s3,88(sp)
    80003eec:	05413823          	sd	s4,80(sp)
    80003ef0:	05513423          	sd	s5,72(sp)
    80003ef4:	05613023          	sd	s6,64(sp)
    80003ef8:	03713c23          	sd	s7,56(sp)
    80003efc:	03813823          	sd	s8,48(sp)
    80003f00:	03913423          	sd	s9,40(sp)
    80003f04:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80003f08:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80003f0c:	00005517          	auipc	a0,0x5
    80003f10:	22450513          	addi	a0,a0,548 # 80009130 <CONSOLE_STATUS+0x120>
    80003f14:	00001097          	auipc	ra,0x1
    80003f18:	5a8080e7          	jalr	1448(ra) # 800054bc <_Z11printStringPKc>
    getString(input, 30);
    80003f1c:	01e00593          	li	a1,30
    80003f20:	f8040493          	addi	s1,s0,-128
    80003f24:	00048513          	mv	a0,s1
    80003f28:	00001097          	auipc	ra,0x1
    80003f2c:	61c080e7          	jalr	1564(ra) # 80005544 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003f30:	00048513          	mv	a0,s1
    80003f34:	00001097          	auipc	ra,0x1
    80003f38:	6e8080e7          	jalr	1768(ra) # 8000561c <_Z11stringToIntPKc>
    80003f3c:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80003f40:	00005517          	auipc	a0,0x5
    80003f44:	21050513          	addi	a0,a0,528 # 80009150 <CONSOLE_STATUS+0x140>
    80003f48:	00001097          	auipc	ra,0x1
    80003f4c:	574080e7          	jalr	1396(ra) # 800054bc <_Z11printStringPKc>
    getString(input, 30);
    80003f50:	01e00593          	li	a1,30
    80003f54:	00048513          	mv	a0,s1
    80003f58:	00001097          	auipc	ra,0x1
    80003f5c:	5ec080e7          	jalr	1516(ra) # 80005544 <_Z9getStringPci>
    n = stringToInt(input);
    80003f60:	00048513          	mv	a0,s1
    80003f64:	00001097          	auipc	ra,0x1
    80003f68:	6b8080e7          	jalr	1720(ra) # 8000561c <_Z11stringToIntPKc>
    80003f6c:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80003f70:	00005517          	auipc	a0,0x5
    80003f74:	20050513          	addi	a0,a0,512 # 80009170 <CONSOLE_STATUS+0x160>
    80003f78:	00001097          	auipc	ra,0x1
    80003f7c:	544080e7          	jalr	1348(ra) # 800054bc <_Z11printStringPKc>
    printInt(threadNum);
    80003f80:	00000613          	li	a2,0
    80003f84:	00a00593          	li	a1,10
    80003f88:	00098513          	mv	a0,s3
    80003f8c:	00001097          	auipc	ra,0x1
    80003f90:	6e0080e7          	jalr	1760(ra) # 8000566c <_Z8printIntiii>
    printString(" i velicina bafera ");
    80003f94:	00005517          	auipc	a0,0x5
    80003f98:	1f450513          	addi	a0,a0,500 # 80009188 <CONSOLE_STATUS+0x178>
    80003f9c:	00001097          	auipc	ra,0x1
    80003fa0:	520080e7          	jalr	1312(ra) # 800054bc <_Z11printStringPKc>
    printInt(n);
    80003fa4:	00000613          	li	a2,0
    80003fa8:	00a00593          	li	a1,10
    80003fac:	00048513          	mv	a0,s1
    80003fb0:	00001097          	auipc	ra,0x1
    80003fb4:	6bc080e7          	jalr	1724(ra) # 8000566c <_Z8printIntiii>
    printString(".\n");
    80003fb8:	00005517          	auipc	a0,0x5
    80003fbc:	1e850513          	addi	a0,a0,488 # 800091a0 <CONSOLE_STATUS+0x190>
    80003fc0:	00001097          	auipc	ra,0x1
    80003fc4:	4fc080e7          	jalr	1276(ra) # 800054bc <_Z11printStringPKc>
    if (threadNum > n) {
    80003fc8:	0334c463          	blt	s1,s3,80003ff0 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80003fcc:	03305c63          	blez	s3,80004004 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80003fd0:	03800513          	li	a0,56
    80003fd4:	ffffe097          	auipc	ra,0xffffe
    80003fd8:	288080e7          	jalr	648(ra) # 8000225c <_Znwm>
    80003fdc:	00050a93          	mv	s5,a0
    80003fe0:	00048593          	mv	a1,s1
    80003fe4:	00001097          	auipc	ra,0x1
    80003fe8:	7a8080e7          	jalr	1960(ra) # 8000578c <_ZN9BufferCPPC1Ei>
    80003fec:	0300006f          	j	8000401c <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003ff0:	00005517          	auipc	a0,0x5
    80003ff4:	1b850513          	addi	a0,a0,440 # 800091a8 <CONSOLE_STATUS+0x198>
    80003ff8:	00001097          	auipc	ra,0x1
    80003ffc:	4c4080e7          	jalr	1220(ra) # 800054bc <_Z11printStringPKc>
        return;
    80004000:	0140006f          	j	80004014 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004004:	00005517          	auipc	a0,0x5
    80004008:	1e450513          	addi	a0,a0,484 # 800091e8 <CONSOLE_STATUS+0x1d8>
    8000400c:	00001097          	auipc	ra,0x1
    80004010:	4b0080e7          	jalr	1200(ra) # 800054bc <_Z11printStringPKc>
        return;
    80004014:	000c0113          	mv	sp,s8
    80004018:	2140006f          	j	8000422c <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    8000401c:	01000513          	li	a0,16
    80004020:	ffffe097          	auipc	ra,0xffffe
    80004024:	23c080e7          	jalr	572(ra) # 8000225c <_Znwm>
    80004028:	00050913          	mv	s2,a0
    8000402c:	00000593          	li	a1,0
    80004030:	ffffe097          	auipc	ra,0xffffe
    80004034:	3e4080e7          	jalr	996(ra) # 80002414 <_ZN9SemaphoreC1Ej>
    80004038:	00008797          	auipc	a5,0x8
    8000403c:	a127b823          	sd	s2,-1520(a5) # 8000ba48 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80004040:	00399793          	slli	a5,s3,0x3
    80004044:	00f78793          	addi	a5,a5,15
    80004048:	ff07f793          	andi	a5,a5,-16
    8000404c:	40f10133          	sub	sp,sp,a5
    80004050:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80004054:	0019871b          	addiw	a4,s3,1
    80004058:	00171793          	slli	a5,a4,0x1
    8000405c:	00e787b3          	add	a5,a5,a4
    80004060:	00379793          	slli	a5,a5,0x3
    80004064:	00f78793          	addi	a5,a5,15
    80004068:	ff07f793          	andi	a5,a5,-16
    8000406c:	40f10133          	sub	sp,sp,a5
    80004070:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80004074:	00199493          	slli	s1,s3,0x1
    80004078:	013484b3          	add	s1,s1,s3
    8000407c:	00349493          	slli	s1,s1,0x3
    80004080:	009b04b3          	add	s1,s6,s1
    80004084:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80004088:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    8000408c:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004090:	02800513          	li	a0,40
    80004094:	ffffe097          	auipc	ra,0xffffe
    80004098:	1c8080e7          	jalr	456(ra) # 8000225c <_Znwm>
    8000409c:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    800040a0:	ffffe097          	auipc	ra,0xffffe
    800040a4:	34c080e7          	jalr	844(ra) # 800023ec <_ZN6ThreadC1Ev>
    800040a8:	00008797          	auipc	a5,0x8
    800040ac:	81878793          	addi	a5,a5,-2024 # 8000b8c0 <_ZTV8Consumer+0x10>
    800040b0:	00fbb023          	sd	a5,0(s7)
    800040b4:	029bb023          	sd	s1,32(s7)
    consumer->start();
    800040b8:	000b8513          	mv	a0,s7
    800040bc:	ffffe097          	auipc	ra,0xffffe
    800040c0:	2ac080e7          	jalr	684(ra) # 80002368 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    800040c4:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    800040c8:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    800040cc:	00008797          	auipc	a5,0x8
    800040d0:	97c7b783          	ld	a5,-1668(a5) # 8000ba48 <_ZL10waitForAll>
    800040d4:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800040d8:	02800513          	li	a0,40
    800040dc:	ffffe097          	auipc	ra,0xffffe
    800040e0:	180080e7          	jalr	384(ra) # 8000225c <_Znwm>
    800040e4:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    800040e8:	ffffe097          	auipc	ra,0xffffe
    800040ec:	304080e7          	jalr	772(ra) # 800023ec <_ZN6ThreadC1Ev>
    800040f0:	00007797          	auipc	a5,0x7
    800040f4:	78078793          	addi	a5,a5,1920 # 8000b870 <_ZTV16ProducerKeyborad+0x10>
    800040f8:	00f4b023          	sd	a5,0(s1)
    800040fc:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004100:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80004104:	00048513          	mv	a0,s1
    80004108:	ffffe097          	auipc	ra,0xffffe
    8000410c:	260080e7          	jalr	608(ra) # 80002368 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004110:	00100913          	li	s2,1
    80004114:	0300006f          	j	80004144 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004118:	00007797          	auipc	a5,0x7
    8000411c:	78078793          	addi	a5,a5,1920 # 8000b898 <_ZTV8Producer+0x10>
    80004120:	00fcb023          	sd	a5,0(s9)
    80004124:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80004128:	00391793          	slli	a5,s2,0x3
    8000412c:	00fa07b3          	add	a5,s4,a5
    80004130:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80004134:	000c8513          	mv	a0,s9
    80004138:	ffffe097          	auipc	ra,0xffffe
    8000413c:	230080e7          	jalr	560(ra) # 80002368 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004140:	0019091b          	addiw	s2,s2,1
    80004144:	05395263          	bge	s2,s3,80004188 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80004148:	00191493          	slli	s1,s2,0x1
    8000414c:	012484b3          	add	s1,s1,s2
    80004150:	00349493          	slli	s1,s1,0x3
    80004154:	009b04b3          	add	s1,s6,s1
    80004158:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    8000415c:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80004160:	00008797          	auipc	a5,0x8
    80004164:	8e87b783          	ld	a5,-1816(a5) # 8000ba48 <_ZL10waitForAll>
    80004168:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    8000416c:	02800513          	li	a0,40
    80004170:	ffffe097          	auipc	ra,0xffffe
    80004174:	0ec080e7          	jalr	236(ra) # 8000225c <_Znwm>
    80004178:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    8000417c:	ffffe097          	auipc	ra,0xffffe
    80004180:	270080e7          	jalr	624(ra) # 800023ec <_ZN6ThreadC1Ev>
    80004184:	f95ff06f          	j	80004118 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80004188:	ffffe097          	auipc	ra,0xffffe
    8000418c:	210080e7          	jalr	528(ra) # 80002398 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004190:	00000493          	li	s1,0
    80004194:	0099ce63          	blt	s3,s1,800041b0 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80004198:	00008517          	auipc	a0,0x8
    8000419c:	8b053503          	ld	a0,-1872(a0) # 8000ba48 <_ZL10waitForAll>
    800041a0:	ffffe097          	auipc	ra,0xffffe
    800041a4:	2b0080e7          	jalr	688(ra) # 80002450 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800041a8:	0014849b          	addiw	s1,s1,1
    800041ac:	fe9ff06f          	j	80004194 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    800041b0:	00008517          	auipc	a0,0x8
    800041b4:	89853503          	ld	a0,-1896(a0) # 8000ba48 <_ZL10waitForAll>
    800041b8:	00050863          	beqz	a0,800041c8 <_Z20testConsumerProducerv+0x2f4>
    800041bc:	00053783          	ld	a5,0(a0)
    800041c0:	0087b783          	ld	a5,8(a5)
    800041c4:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    800041c8:	00000493          	li	s1,0
    800041cc:	0080006f          	j	800041d4 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    800041d0:	0014849b          	addiw	s1,s1,1
    800041d4:	0334d263          	bge	s1,s3,800041f8 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    800041d8:	00349793          	slli	a5,s1,0x3
    800041dc:	00fa07b3          	add	a5,s4,a5
    800041e0:	0007b503          	ld	a0,0(a5)
    800041e4:	fe0506e3          	beqz	a0,800041d0 <_Z20testConsumerProducerv+0x2fc>
    800041e8:	00053783          	ld	a5,0(a0)
    800041ec:	0087b783          	ld	a5,8(a5)
    800041f0:	000780e7          	jalr	a5
    800041f4:	fddff06f          	j	800041d0 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    800041f8:	000b8a63          	beqz	s7,8000420c <_Z20testConsumerProducerv+0x338>
    800041fc:	000bb783          	ld	a5,0(s7)
    80004200:	0087b783          	ld	a5,8(a5)
    80004204:	000b8513          	mv	a0,s7
    80004208:	000780e7          	jalr	a5
    delete buffer;
    8000420c:	000a8e63          	beqz	s5,80004228 <_Z20testConsumerProducerv+0x354>
    80004210:	000a8513          	mv	a0,s5
    80004214:	00002097          	auipc	ra,0x2
    80004218:	870080e7          	jalr	-1936(ra) # 80005a84 <_ZN9BufferCPPD1Ev>
    8000421c:	000a8513          	mv	a0,s5
    80004220:	ffffe097          	auipc	ra,0xffffe
    80004224:	064080e7          	jalr	100(ra) # 80002284 <_ZdlPv>
    80004228:	000c0113          	mv	sp,s8
}
    8000422c:	f8040113          	addi	sp,s0,-128
    80004230:	07813083          	ld	ra,120(sp)
    80004234:	07013403          	ld	s0,112(sp)
    80004238:	06813483          	ld	s1,104(sp)
    8000423c:	06013903          	ld	s2,96(sp)
    80004240:	05813983          	ld	s3,88(sp)
    80004244:	05013a03          	ld	s4,80(sp)
    80004248:	04813a83          	ld	s5,72(sp)
    8000424c:	04013b03          	ld	s6,64(sp)
    80004250:	03813b83          	ld	s7,56(sp)
    80004254:	03013c03          	ld	s8,48(sp)
    80004258:	02813c83          	ld	s9,40(sp)
    8000425c:	08010113          	addi	sp,sp,128
    80004260:	00008067          	ret
    80004264:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004268:	000a8513          	mv	a0,s5
    8000426c:	ffffe097          	auipc	ra,0xffffe
    80004270:	018080e7          	jalr	24(ra) # 80002284 <_ZdlPv>
    80004274:	00048513          	mv	a0,s1
    80004278:	00009097          	auipc	ra,0x9
    8000427c:	8d0080e7          	jalr	-1840(ra) # 8000cb48 <_Unwind_Resume>
    80004280:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80004284:	00090513          	mv	a0,s2
    80004288:	ffffe097          	auipc	ra,0xffffe
    8000428c:	ffc080e7          	jalr	-4(ra) # 80002284 <_ZdlPv>
    80004290:	00048513          	mv	a0,s1
    80004294:	00009097          	auipc	ra,0x9
    80004298:	8b4080e7          	jalr	-1868(ra) # 8000cb48 <_Unwind_Resume>
    8000429c:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800042a0:	000b8513          	mv	a0,s7
    800042a4:	ffffe097          	auipc	ra,0xffffe
    800042a8:	fe0080e7          	jalr	-32(ra) # 80002284 <_ZdlPv>
    800042ac:	00048513          	mv	a0,s1
    800042b0:	00009097          	auipc	ra,0x9
    800042b4:	898080e7          	jalr	-1896(ra) # 8000cb48 <_Unwind_Resume>
    800042b8:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800042bc:	00048513          	mv	a0,s1
    800042c0:	ffffe097          	auipc	ra,0xffffe
    800042c4:	fc4080e7          	jalr	-60(ra) # 80002284 <_ZdlPv>
    800042c8:	00090513          	mv	a0,s2
    800042cc:	00009097          	auipc	ra,0x9
    800042d0:	87c080e7          	jalr	-1924(ra) # 8000cb48 <_Unwind_Resume>
    800042d4:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    800042d8:	000c8513          	mv	a0,s9
    800042dc:	ffffe097          	auipc	ra,0xffffe
    800042e0:	fa8080e7          	jalr	-88(ra) # 80002284 <_ZdlPv>
    800042e4:	00048513          	mv	a0,s1
    800042e8:	00009097          	auipc	ra,0x9
    800042ec:	860080e7          	jalr	-1952(ra) # 8000cb48 <_Unwind_Resume>

00000000800042f0 <_ZN8Consumer3runEv>:
    void run() override {
    800042f0:	fd010113          	addi	sp,sp,-48
    800042f4:	02113423          	sd	ra,40(sp)
    800042f8:	02813023          	sd	s0,32(sp)
    800042fc:	00913c23          	sd	s1,24(sp)
    80004300:	01213823          	sd	s2,16(sp)
    80004304:	01313423          	sd	s3,8(sp)
    80004308:	03010413          	addi	s0,sp,48
    8000430c:	00050913          	mv	s2,a0
        int i = 0;
    80004310:	00000993          	li	s3,0
    80004314:	0100006f          	j	80004324 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80004318:	00a00513          	li	a0,10
    8000431c:	ffffe097          	auipc	ra,0xffffe
    80004320:	25c080e7          	jalr	604(ra) # 80002578 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80004324:	00007797          	auipc	a5,0x7
    80004328:	71c7a783          	lw	a5,1820(a5) # 8000ba40 <_ZL9threadEnd>
    8000432c:	04079a63          	bnez	a5,80004380 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80004330:	02093783          	ld	a5,32(s2)
    80004334:	0087b503          	ld	a0,8(a5)
    80004338:	00001097          	auipc	ra,0x1
    8000433c:	638080e7          	jalr	1592(ra) # 80005970 <_ZN9BufferCPP3getEv>
            i++;
    80004340:	0019849b          	addiw	s1,s3,1
    80004344:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80004348:	0ff57513          	andi	a0,a0,255
    8000434c:	ffffe097          	auipc	ra,0xffffe
    80004350:	22c080e7          	jalr	556(ra) # 80002578 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80004354:	05000793          	li	a5,80
    80004358:	02f4e4bb          	remw	s1,s1,a5
    8000435c:	fc0494e3          	bnez	s1,80004324 <_ZN8Consumer3runEv+0x34>
    80004360:	fb9ff06f          	j	80004318 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80004364:	02093783          	ld	a5,32(s2)
    80004368:	0087b503          	ld	a0,8(a5)
    8000436c:	00001097          	auipc	ra,0x1
    80004370:	604080e7          	jalr	1540(ra) # 80005970 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80004374:	0ff57513          	andi	a0,a0,255
    80004378:	ffffe097          	auipc	ra,0xffffe
    8000437c:	200080e7          	jalr	512(ra) # 80002578 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80004380:	02093783          	ld	a5,32(s2)
    80004384:	0087b503          	ld	a0,8(a5)
    80004388:	00001097          	auipc	ra,0x1
    8000438c:	674080e7          	jalr	1652(ra) # 800059fc <_ZN9BufferCPP6getCntEv>
    80004390:	fca04ae3          	bgtz	a0,80004364 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004394:	02093783          	ld	a5,32(s2)
    80004398:	0107b503          	ld	a0,16(a5)
    8000439c:	ffffe097          	auipc	ra,0xffffe
    800043a0:	0ec080e7          	jalr	236(ra) # 80002488 <_ZN9Semaphore6signalEv>
    }
    800043a4:	02813083          	ld	ra,40(sp)
    800043a8:	02013403          	ld	s0,32(sp)
    800043ac:	01813483          	ld	s1,24(sp)
    800043b0:	01013903          	ld	s2,16(sp)
    800043b4:	00813983          	ld	s3,8(sp)
    800043b8:	03010113          	addi	sp,sp,48
    800043bc:	00008067          	ret

00000000800043c0 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    800043c0:	ff010113          	addi	sp,sp,-16
    800043c4:	00113423          	sd	ra,8(sp)
    800043c8:	00813023          	sd	s0,0(sp)
    800043cc:	01010413          	addi	s0,sp,16
    800043d0:	00007797          	auipc	a5,0x7
    800043d4:	4f078793          	addi	a5,a5,1264 # 8000b8c0 <_ZTV8Consumer+0x10>
    800043d8:	00f53023          	sd	a5,0(a0)
    800043dc:	ffffe097          	auipc	ra,0xffffe
    800043e0:	de8080e7          	jalr	-536(ra) # 800021c4 <_ZN6ThreadD1Ev>
    800043e4:	00813083          	ld	ra,8(sp)
    800043e8:	00013403          	ld	s0,0(sp)
    800043ec:	01010113          	addi	sp,sp,16
    800043f0:	00008067          	ret

00000000800043f4 <_ZN8ConsumerD0Ev>:
    800043f4:	fe010113          	addi	sp,sp,-32
    800043f8:	00113c23          	sd	ra,24(sp)
    800043fc:	00813823          	sd	s0,16(sp)
    80004400:	00913423          	sd	s1,8(sp)
    80004404:	02010413          	addi	s0,sp,32
    80004408:	00050493          	mv	s1,a0
    8000440c:	00007797          	auipc	a5,0x7
    80004410:	4b478793          	addi	a5,a5,1204 # 8000b8c0 <_ZTV8Consumer+0x10>
    80004414:	00f53023          	sd	a5,0(a0)
    80004418:	ffffe097          	auipc	ra,0xffffe
    8000441c:	dac080e7          	jalr	-596(ra) # 800021c4 <_ZN6ThreadD1Ev>
    80004420:	00048513          	mv	a0,s1
    80004424:	ffffe097          	auipc	ra,0xffffe
    80004428:	e60080e7          	jalr	-416(ra) # 80002284 <_ZdlPv>
    8000442c:	01813083          	ld	ra,24(sp)
    80004430:	01013403          	ld	s0,16(sp)
    80004434:	00813483          	ld	s1,8(sp)
    80004438:	02010113          	addi	sp,sp,32
    8000443c:	00008067          	ret

0000000080004440 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004440:	ff010113          	addi	sp,sp,-16
    80004444:	00113423          	sd	ra,8(sp)
    80004448:	00813023          	sd	s0,0(sp)
    8000444c:	01010413          	addi	s0,sp,16
    80004450:	00007797          	auipc	a5,0x7
    80004454:	42078793          	addi	a5,a5,1056 # 8000b870 <_ZTV16ProducerKeyborad+0x10>
    80004458:	00f53023          	sd	a5,0(a0)
    8000445c:	ffffe097          	auipc	ra,0xffffe
    80004460:	d68080e7          	jalr	-664(ra) # 800021c4 <_ZN6ThreadD1Ev>
    80004464:	00813083          	ld	ra,8(sp)
    80004468:	00013403          	ld	s0,0(sp)
    8000446c:	01010113          	addi	sp,sp,16
    80004470:	00008067          	ret

0000000080004474 <_ZN16ProducerKeyboradD0Ev>:
    80004474:	fe010113          	addi	sp,sp,-32
    80004478:	00113c23          	sd	ra,24(sp)
    8000447c:	00813823          	sd	s0,16(sp)
    80004480:	00913423          	sd	s1,8(sp)
    80004484:	02010413          	addi	s0,sp,32
    80004488:	00050493          	mv	s1,a0
    8000448c:	00007797          	auipc	a5,0x7
    80004490:	3e478793          	addi	a5,a5,996 # 8000b870 <_ZTV16ProducerKeyborad+0x10>
    80004494:	00f53023          	sd	a5,0(a0)
    80004498:	ffffe097          	auipc	ra,0xffffe
    8000449c:	d2c080e7          	jalr	-724(ra) # 800021c4 <_ZN6ThreadD1Ev>
    800044a0:	00048513          	mv	a0,s1
    800044a4:	ffffe097          	auipc	ra,0xffffe
    800044a8:	de0080e7          	jalr	-544(ra) # 80002284 <_ZdlPv>
    800044ac:	01813083          	ld	ra,24(sp)
    800044b0:	01013403          	ld	s0,16(sp)
    800044b4:	00813483          	ld	s1,8(sp)
    800044b8:	02010113          	addi	sp,sp,32
    800044bc:	00008067          	ret

00000000800044c0 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    800044c0:	ff010113          	addi	sp,sp,-16
    800044c4:	00113423          	sd	ra,8(sp)
    800044c8:	00813023          	sd	s0,0(sp)
    800044cc:	01010413          	addi	s0,sp,16
    800044d0:	00007797          	auipc	a5,0x7
    800044d4:	3c878793          	addi	a5,a5,968 # 8000b898 <_ZTV8Producer+0x10>
    800044d8:	00f53023          	sd	a5,0(a0)
    800044dc:	ffffe097          	auipc	ra,0xffffe
    800044e0:	ce8080e7          	jalr	-792(ra) # 800021c4 <_ZN6ThreadD1Ev>
    800044e4:	00813083          	ld	ra,8(sp)
    800044e8:	00013403          	ld	s0,0(sp)
    800044ec:	01010113          	addi	sp,sp,16
    800044f0:	00008067          	ret

00000000800044f4 <_ZN8ProducerD0Ev>:
    800044f4:	fe010113          	addi	sp,sp,-32
    800044f8:	00113c23          	sd	ra,24(sp)
    800044fc:	00813823          	sd	s0,16(sp)
    80004500:	00913423          	sd	s1,8(sp)
    80004504:	02010413          	addi	s0,sp,32
    80004508:	00050493          	mv	s1,a0
    8000450c:	00007797          	auipc	a5,0x7
    80004510:	38c78793          	addi	a5,a5,908 # 8000b898 <_ZTV8Producer+0x10>
    80004514:	00f53023          	sd	a5,0(a0)
    80004518:	ffffe097          	auipc	ra,0xffffe
    8000451c:	cac080e7          	jalr	-852(ra) # 800021c4 <_ZN6ThreadD1Ev>
    80004520:	00048513          	mv	a0,s1
    80004524:	ffffe097          	auipc	ra,0xffffe
    80004528:	d60080e7          	jalr	-672(ra) # 80002284 <_ZdlPv>
    8000452c:	01813083          	ld	ra,24(sp)
    80004530:	01013403          	ld	s0,16(sp)
    80004534:	00813483          	ld	s1,8(sp)
    80004538:	02010113          	addi	sp,sp,32
    8000453c:	00008067          	ret

0000000080004540 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004540:	fe010113          	addi	sp,sp,-32
    80004544:	00113c23          	sd	ra,24(sp)
    80004548:	00813823          	sd	s0,16(sp)
    8000454c:	00913423          	sd	s1,8(sp)
    80004550:	02010413          	addi	s0,sp,32
    80004554:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80004558:	ffffd097          	auipc	ra,0xffffd
    8000455c:	098080e7          	jalr	152(ra) # 800015f0 <_Z4getcv>
    80004560:	0005059b          	sext.w	a1,a0
    80004564:	01b00793          	li	a5,27
    80004568:	00f58c63          	beq	a1,a5,80004580 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    8000456c:	0204b783          	ld	a5,32(s1)
    80004570:	0087b503          	ld	a0,8(a5)
    80004574:	00001097          	auipc	ra,0x1
    80004578:	36c080e7          	jalr	876(ra) # 800058e0 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    8000457c:	fddff06f          	j	80004558 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004580:	00100793          	li	a5,1
    80004584:	00007717          	auipc	a4,0x7
    80004588:	4af72e23          	sw	a5,1212(a4) # 8000ba40 <_ZL9threadEnd>
        td->buffer->put('!');
    8000458c:	0204b783          	ld	a5,32(s1)
    80004590:	02100593          	li	a1,33
    80004594:	0087b503          	ld	a0,8(a5)
    80004598:	00001097          	auipc	ra,0x1
    8000459c:	348080e7          	jalr	840(ra) # 800058e0 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    800045a0:	0204b783          	ld	a5,32(s1)
    800045a4:	0107b503          	ld	a0,16(a5)
    800045a8:	ffffe097          	auipc	ra,0xffffe
    800045ac:	ee0080e7          	jalr	-288(ra) # 80002488 <_ZN9Semaphore6signalEv>
    }
    800045b0:	01813083          	ld	ra,24(sp)
    800045b4:	01013403          	ld	s0,16(sp)
    800045b8:	00813483          	ld	s1,8(sp)
    800045bc:	02010113          	addi	sp,sp,32
    800045c0:	00008067          	ret

00000000800045c4 <_ZN8Producer3runEv>:
    void run() override {
    800045c4:	fe010113          	addi	sp,sp,-32
    800045c8:	00113c23          	sd	ra,24(sp)
    800045cc:	00813823          	sd	s0,16(sp)
    800045d0:	00913423          	sd	s1,8(sp)
    800045d4:	01213023          	sd	s2,0(sp)
    800045d8:	02010413          	addi	s0,sp,32
    800045dc:	00050493          	mv	s1,a0
        int i = 0;
    800045e0:	00000913          	li	s2,0
        while (!threadEnd) {
    800045e4:	00007797          	auipc	a5,0x7
    800045e8:	45c7a783          	lw	a5,1116(a5) # 8000ba40 <_ZL9threadEnd>
    800045ec:	04079263          	bnez	a5,80004630 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    800045f0:	0204b783          	ld	a5,32(s1)
    800045f4:	0007a583          	lw	a1,0(a5)
    800045f8:	0305859b          	addiw	a1,a1,48
    800045fc:	0087b503          	ld	a0,8(a5)
    80004600:	00001097          	auipc	ra,0x1
    80004604:	2e0080e7          	jalr	736(ra) # 800058e0 <_ZN9BufferCPP3putEi>
            i++;
    80004608:	0019071b          	addiw	a4,s2,1
    8000460c:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004610:	0204b783          	ld	a5,32(s1)
    80004614:	0007a783          	lw	a5,0(a5)
    80004618:	00e787bb          	addw	a5,a5,a4
    8000461c:	00500513          	li	a0,5
    80004620:	02a7e53b          	remw	a0,a5,a0
    80004624:	ffffe097          	auipc	ra,0xffffe
    80004628:	d9c080e7          	jalr	-612(ra) # 800023c0 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    8000462c:	fb9ff06f          	j	800045e4 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004630:	0204b783          	ld	a5,32(s1)
    80004634:	0107b503          	ld	a0,16(a5)
    80004638:	ffffe097          	auipc	ra,0xffffe
    8000463c:	e50080e7          	jalr	-432(ra) # 80002488 <_ZN9Semaphore6signalEv>
    }
    80004640:	01813083          	ld	ra,24(sp)
    80004644:	01013403          	ld	s0,16(sp)
    80004648:	00813483          	ld	s1,8(sp)
    8000464c:	00013903          	ld	s2,0(sp)
    80004650:	02010113          	addi	sp,sp,32
    80004654:	00008067          	ret

0000000080004658 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004658:	fe010113          	addi	sp,sp,-32
    8000465c:	00113c23          	sd	ra,24(sp)
    80004660:	00813823          	sd	s0,16(sp)
    80004664:	00913423          	sd	s1,8(sp)
    80004668:	01213023          	sd	s2,0(sp)
    8000466c:	02010413          	addi	s0,sp,32
    80004670:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004674:	00100793          	li	a5,1
    80004678:	02a7f863          	bgeu	a5,a0,800046a8 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000467c:	00a00793          	li	a5,10
    80004680:	02f577b3          	remu	a5,a0,a5
    80004684:	02078e63          	beqz	a5,800046c0 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004688:	fff48513          	addi	a0,s1,-1
    8000468c:	00000097          	auipc	ra,0x0
    80004690:	fcc080e7          	jalr	-52(ra) # 80004658 <_ZL9fibonaccim>
    80004694:	00050913          	mv	s2,a0
    80004698:	ffe48513          	addi	a0,s1,-2
    8000469c:	00000097          	auipc	ra,0x0
    800046a0:	fbc080e7          	jalr	-68(ra) # 80004658 <_ZL9fibonaccim>
    800046a4:	00a90533          	add	a0,s2,a0
}
    800046a8:	01813083          	ld	ra,24(sp)
    800046ac:	01013403          	ld	s0,16(sp)
    800046b0:	00813483          	ld	s1,8(sp)
    800046b4:	00013903          	ld	s2,0(sp)
    800046b8:	02010113          	addi	sp,sp,32
    800046bc:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800046c0:	ffffd097          	auipc	ra,0xffffd
    800046c4:	d0c080e7          	jalr	-756(ra) # 800013cc <_Z15thread_dispatchv>
    800046c8:	fc1ff06f          	j	80004688 <_ZL9fibonaccim+0x30>

00000000800046cc <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800046cc:	fe010113          	addi	sp,sp,-32
    800046d0:	00113c23          	sd	ra,24(sp)
    800046d4:	00813823          	sd	s0,16(sp)
    800046d8:	00913423          	sd	s1,8(sp)
    800046dc:	01213023          	sd	s2,0(sp)
    800046e0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800046e4:	00a00493          	li	s1,10
    800046e8:	0400006f          	j	80004728 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800046ec:	00005517          	auipc	a0,0x5
    800046f0:	b8c50513          	addi	a0,a0,-1140 # 80009278 <CONSOLE_STATUS+0x268>
    800046f4:	00001097          	auipc	ra,0x1
    800046f8:	dc8080e7          	jalr	-568(ra) # 800054bc <_Z11printStringPKc>
    800046fc:	00000613          	li	a2,0
    80004700:	00a00593          	li	a1,10
    80004704:	00048513          	mv	a0,s1
    80004708:	00001097          	auipc	ra,0x1
    8000470c:	f64080e7          	jalr	-156(ra) # 8000566c <_Z8printIntiii>
    80004710:	00005517          	auipc	a0,0x5
    80004714:	a5850513          	addi	a0,a0,-1448 # 80009168 <CONSOLE_STATUS+0x158>
    80004718:	00001097          	auipc	ra,0x1
    8000471c:	da4080e7          	jalr	-604(ra) # 800054bc <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004720:	0014849b          	addiw	s1,s1,1
    80004724:	0ff4f493          	andi	s1,s1,255
    80004728:	00c00793          	li	a5,12
    8000472c:	fc97f0e3          	bgeu	a5,s1,800046ec <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004730:	00005517          	auipc	a0,0x5
    80004734:	b5050513          	addi	a0,a0,-1200 # 80009280 <CONSOLE_STATUS+0x270>
    80004738:	00001097          	auipc	ra,0x1
    8000473c:	d84080e7          	jalr	-636(ra) # 800054bc <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004740:	00500313          	li	t1,5
    thread_dispatch();
    80004744:	ffffd097          	auipc	ra,0xffffd
    80004748:	c88080e7          	jalr	-888(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    8000474c:	01000513          	li	a0,16
    80004750:	00000097          	auipc	ra,0x0
    80004754:	f08080e7          	jalr	-248(ra) # 80004658 <_ZL9fibonaccim>
    80004758:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    8000475c:	00005517          	auipc	a0,0x5
    80004760:	b3450513          	addi	a0,a0,-1228 # 80009290 <CONSOLE_STATUS+0x280>
    80004764:	00001097          	auipc	ra,0x1
    80004768:	d58080e7          	jalr	-680(ra) # 800054bc <_Z11printStringPKc>
    8000476c:	00000613          	li	a2,0
    80004770:	00a00593          	li	a1,10
    80004774:	0009051b          	sext.w	a0,s2
    80004778:	00001097          	auipc	ra,0x1
    8000477c:	ef4080e7          	jalr	-268(ra) # 8000566c <_Z8printIntiii>
    80004780:	00005517          	auipc	a0,0x5
    80004784:	9e850513          	addi	a0,a0,-1560 # 80009168 <CONSOLE_STATUS+0x158>
    80004788:	00001097          	auipc	ra,0x1
    8000478c:	d34080e7          	jalr	-716(ra) # 800054bc <_Z11printStringPKc>
    80004790:	0400006f          	j	800047d0 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004794:	00005517          	auipc	a0,0x5
    80004798:	ae450513          	addi	a0,a0,-1308 # 80009278 <CONSOLE_STATUS+0x268>
    8000479c:	00001097          	auipc	ra,0x1
    800047a0:	d20080e7          	jalr	-736(ra) # 800054bc <_Z11printStringPKc>
    800047a4:	00000613          	li	a2,0
    800047a8:	00a00593          	li	a1,10
    800047ac:	00048513          	mv	a0,s1
    800047b0:	00001097          	auipc	ra,0x1
    800047b4:	ebc080e7          	jalr	-324(ra) # 8000566c <_Z8printIntiii>
    800047b8:	00005517          	auipc	a0,0x5
    800047bc:	9b050513          	addi	a0,a0,-1616 # 80009168 <CONSOLE_STATUS+0x158>
    800047c0:	00001097          	auipc	ra,0x1
    800047c4:	cfc080e7          	jalr	-772(ra) # 800054bc <_Z11printStringPKc>
    for (; i < 16; i++) {
    800047c8:	0014849b          	addiw	s1,s1,1
    800047cc:	0ff4f493          	andi	s1,s1,255
    800047d0:	00f00793          	li	a5,15
    800047d4:	fc97f0e3          	bgeu	a5,s1,80004794 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800047d8:	00005517          	auipc	a0,0x5
    800047dc:	ac850513          	addi	a0,a0,-1336 # 800092a0 <CONSOLE_STATUS+0x290>
    800047e0:	00001097          	auipc	ra,0x1
    800047e4:	cdc080e7          	jalr	-804(ra) # 800054bc <_Z11printStringPKc>
    finishedD = true;
    800047e8:	00100793          	li	a5,1
    800047ec:	00007717          	auipc	a4,0x7
    800047f0:	26f70223          	sb	a5,612(a4) # 8000ba50 <_ZL9finishedD>
    thread_dispatch();
    800047f4:	ffffd097          	auipc	ra,0xffffd
    800047f8:	bd8080e7          	jalr	-1064(ra) # 800013cc <_Z15thread_dispatchv>
}
    800047fc:	01813083          	ld	ra,24(sp)
    80004800:	01013403          	ld	s0,16(sp)
    80004804:	00813483          	ld	s1,8(sp)
    80004808:	00013903          	ld	s2,0(sp)
    8000480c:	02010113          	addi	sp,sp,32
    80004810:	00008067          	ret

0000000080004814 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004814:	fe010113          	addi	sp,sp,-32
    80004818:	00113c23          	sd	ra,24(sp)
    8000481c:	00813823          	sd	s0,16(sp)
    80004820:	00913423          	sd	s1,8(sp)
    80004824:	01213023          	sd	s2,0(sp)
    80004828:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000482c:	00000493          	li	s1,0
    80004830:	0400006f          	j	80004870 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004834:	00005517          	auipc	a0,0x5
    80004838:	a1450513          	addi	a0,a0,-1516 # 80009248 <CONSOLE_STATUS+0x238>
    8000483c:	00001097          	auipc	ra,0x1
    80004840:	c80080e7          	jalr	-896(ra) # 800054bc <_Z11printStringPKc>
    80004844:	00000613          	li	a2,0
    80004848:	00a00593          	li	a1,10
    8000484c:	00048513          	mv	a0,s1
    80004850:	00001097          	auipc	ra,0x1
    80004854:	e1c080e7          	jalr	-484(ra) # 8000566c <_Z8printIntiii>
    80004858:	00005517          	auipc	a0,0x5
    8000485c:	91050513          	addi	a0,a0,-1776 # 80009168 <CONSOLE_STATUS+0x158>
    80004860:	00001097          	auipc	ra,0x1
    80004864:	c5c080e7          	jalr	-932(ra) # 800054bc <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004868:	0014849b          	addiw	s1,s1,1
    8000486c:	0ff4f493          	andi	s1,s1,255
    80004870:	00200793          	li	a5,2
    80004874:	fc97f0e3          	bgeu	a5,s1,80004834 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004878:	00005517          	auipc	a0,0x5
    8000487c:	9d850513          	addi	a0,a0,-1576 # 80009250 <CONSOLE_STATUS+0x240>
    80004880:	00001097          	auipc	ra,0x1
    80004884:	c3c080e7          	jalr	-964(ra) # 800054bc <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004888:	00700313          	li	t1,7
    thread_dispatch();
    8000488c:	ffffd097          	auipc	ra,0xffffd
    80004890:	b40080e7          	jalr	-1216(ra) # 800013cc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004894:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004898:	00005517          	auipc	a0,0x5
    8000489c:	9c850513          	addi	a0,a0,-1592 # 80009260 <CONSOLE_STATUS+0x250>
    800048a0:	00001097          	auipc	ra,0x1
    800048a4:	c1c080e7          	jalr	-996(ra) # 800054bc <_Z11printStringPKc>
    800048a8:	00000613          	li	a2,0
    800048ac:	00a00593          	li	a1,10
    800048b0:	0009051b          	sext.w	a0,s2
    800048b4:	00001097          	auipc	ra,0x1
    800048b8:	db8080e7          	jalr	-584(ra) # 8000566c <_Z8printIntiii>
    800048bc:	00005517          	auipc	a0,0x5
    800048c0:	8ac50513          	addi	a0,a0,-1876 # 80009168 <CONSOLE_STATUS+0x158>
    800048c4:	00001097          	auipc	ra,0x1
    800048c8:	bf8080e7          	jalr	-1032(ra) # 800054bc <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800048cc:	00c00513          	li	a0,12
    800048d0:	00000097          	auipc	ra,0x0
    800048d4:	d88080e7          	jalr	-632(ra) # 80004658 <_ZL9fibonaccim>
    800048d8:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800048dc:	00005517          	auipc	a0,0x5
    800048e0:	98c50513          	addi	a0,a0,-1652 # 80009268 <CONSOLE_STATUS+0x258>
    800048e4:	00001097          	auipc	ra,0x1
    800048e8:	bd8080e7          	jalr	-1064(ra) # 800054bc <_Z11printStringPKc>
    800048ec:	00000613          	li	a2,0
    800048f0:	00a00593          	li	a1,10
    800048f4:	0009051b          	sext.w	a0,s2
    800048f8:	00001097          	auipc	ra,0x1
    800048fc:	d74080e7          	jalr	-652(ra) # 8000566c <_Z8printIntiii>
    80004900:	00005517          	auipc	a0,0x5
    80004904:	86850513          	addi	a0,a0,-1944 # 80009168 <CONSOLE_STATUS+0x158>
    80004908:	00001097          	auipc	ra,0x1
    8000490c:	bb4080e7          	jalr	-1100(ra) # 800054bc <_Z11printStringPKc>
    80004910:	0400006f          	j	80004950 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004914:	00005517          	auipc	a0,0x5
    80004918:	93450513          	addi	a0,a0,-1740 # 80009248 <CONSOLE_STATUS+0x238>
    8000491c:	00001097          	auipc	ra,0x1
    80004920:	ba0080e7          	jalr	-1120(ra) # 800054bc <_Z11printStringPKc>
    80004924:	00000613          	li	a2,0
    80004928:	00a00593          	li	a1,10
    8000492c:	00048513          	mv	a0,s1
    80004930:	00001097          	auipc	ra,0x1
    80004934:	d3c080e7          	jalr	-708(ra) # 8000566c <_Z8printIntiii>
    80004938:	00005517          	auipc	a0,0x5
    8000493c:	83050513          	addi	a0,a0,-2000 # 80009168 <CONSOLE_STATUS+0x158>
    80004940:	00001097          	auipc	ra,0x1
    80004944:	b7c080e7          	jalr	-1156(ra) # 800054bc <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004948:	0014849b          	addiw	s1,s1,1
    8000494c:	0ff4f493          	andi	s1,s1,255
    80004950:	00500793          	li	a5,5
    80004954:	fc97f0e3          	bgeu	a5,s1,80004914 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80004958:	00005517          	auipc	a0,0x5
    8000495c:	8c850513          	addi	a0,a0,-1848 # 80009220 <CONSOLE_STATUS+0x210>
    80004960:	00001097          	auipc	ra,0x1
    80004964:	b5c080e7          	jalr	-1188(ra) # 800054bc <_Z11printStringPKc>
    finishedC = true;
    80004968:	00100793          	li	a5,1
    8000496c:	00007717          	auipc	a4,0x7
    80004970:	0ef702a3          	sb	a5,229(a4) # 8000ba51 <_ZL9finishedC>
    thread_dispatch();
    80004974:	ffffd097          	auipc	ra,0xffffd
    80004978:	a58080e7          	jalr	-1448(ra) # 800013cc <_Z15thread_dispatchv>
}
    8000497c:	01813083          	ld	ra,24(sp)
    80004980:	01013403          	ld	s0,16(sp)
    80004984:	00813483          	ld	s1,8(sp)
    80004988:	00013903          	ld	s2,0(sp)
    8000498c:	02010113          	addi	sp,sp,32
    80004990:	00008067          	ret

0000000080004994 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004994:	fe010113          	addi	sp,sp,-32
    80004998:	00113c23          	sd	ra,24(sp)
    8000499c:	00813823          	sd	s0,16(sp)
    800049a0:	00913423          	sd	s1,8(sp)
    800049a4:	01213023          	sd	s2,0(sp)
    800049a8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800049ac:	00000913          	li	s2,0
    800049b0:	0380006f          	j	800049e8 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    800049b4:	ffffd097          	auipc	ra,0xffffd
    800049b8:	a18080e7          	jalr	-1512(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800049bc:	00148493          	addi	s1,s1,1
    800049c0:	000027b7          	lui	a5,0x2
    800049c4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800049c8:	0097ee63          	bltu	a5,s1,800049e4 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800049cc:	00000713          	li	a4,0
    800049d0:	000077b7          	lui	a5,0x7
    800049d4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800049d8:	fce7eee3          	bltu	a5,a4,800049b4 <_ZL11workerBodyBPv+0x20>
    800049dc:	00170713          	addi	a4,a4,1
    800049e0:	ff1ff06f          	j	800049d0 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800049e4:	00190913          	addi	s2,s2,1
    800049e8:	00f00793          	li	a5,15
    800049ec:	0527e063          	bltu	a5,s2,80004a2c <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800049f0:	00005517          	auipc	a0,0x5
    800049f4:	84050513          	addi	a0,a0,-1984 # 80009230 <CONSOLE_STATUS+0x220>
    800049f8:	00001097          	auipc	ra,0x1
    800049fc:	ac4080e7          	jalr	-1340(ra) # 800054bc <_Z11printStringPKc>
    80004a00:	00000613          	li	a2,0
    80004a04:	00a00593          	li	a1,10
    80004a08:	0009051b          	sext.w	a0,s2
    80004a0c:	00001097          	auipc	ra,0x1
    80004a10:	c60080e7          	jalr	-928(ra) # 8000566c <_Z8printIntiii>
    80004a14:	00004517          	auipc	a0,0x4
    80004a18:	75450513          	addi	a0,a0,1876 # 80009168 <CONSOLE_STATUS+0x158>
    80004a1c:	00001097          	auipc	ra,0x1
    80004a20:	aa0080e7          	jalr	-1376(ra) # 800054bc <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004a24:	00000493          	li	s1,0
    80004a28:	f99ff06f          	j	800049c0 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004a2c:	00005517          	auipc	a0,0x5
    80004a30:	80c50513          	addi	a0,a0,-2036 # 80009238 <CONSOLE_STATUS+0x228>
    80004a34:	00001097          	auipc	ra,0x1
    80004a38:	a88080e7          	jalr	-1400(ra) # 800054bc <_Z11printStringPKc>
    finishedB = true;
    80004a3c:	00100793          	li	a5,1
    80004a40:	00007717          	auipc	a4,0x7
    80004a44:	00f70923          	sb	a5,18(a4) # 8000ba52 <_ZL9finishedB>
    thread_dispatch();
    80004a48:	ffffd097          	auipc	ra,0xffffd
    80004a4c:	984080e7          	jalr	-1660(ra) # 800013cc <_Z15thread_dispatchv>
}
    80004a50:	01813083          	ld	ra,24(sp)
    80004a54:	01013403          	ld	s0,16(sp)
    80004a58:	00813483          	ld	s1,8(sp)
    80004a5c:	00013903          	ld	s2,0(sp)
    80004a60:	02010113          	addi	sp,sp,32
    80004a64:	00008067          	ret

0000000080004a68 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004a68:	fe010113          	addi	sp,sp,-32
    80004a6c:	00113c23          	sd	ra,24(sp)
    80004a70:	00813823          	sd	s0,16(sp)
    80004a74:	00913423          	sd	s1,8(sp)
    80004a78:	01213023          	sd	s2,0(sp)
    80004a7c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004a80:	00000913          	li	s2,0
    80004a84:	0380006f          	j	80004abc <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004a88:	ffffd097          	auipc	ra,0xffffd
    80004a8c:	944080e7          	jalr	-1724(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004a90:	00148493          	addi	s1,s1,1
    80004a94:	000027b7          	lui	a5,0x2
    80004a98:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004a9c:	0097ee63          	bltu	a5,s1,80004ab8 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004aa0:	00000713          	li	a4,0
    80004aa4:	000077b7          	lui	a5,0x7
    80004aa8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004aac:	fce7eee3          	bltu	a5,a4,80004a88 <_ZL11workerBodyAPv+0x20>
    80004ab0:	00170713          	addi	a4,a4,1
    80004ab4:	ff1ff06f          	j	80004aa4 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004ab8:	00190913          	addi	s2,s2,1
    80004abc:	00900793          	li	a5,9
    80004ac0:	0527e063          	bltu	a5,s2,80004b00 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004ac4:	00004517          	auipc	a0,0x4
    80004ac8:	75450513          	addi	a0,a0,1876 # 80009218 <CONSOLE_STATUS+0x208>
    80004acc:	00001097          	auipc	ra,0x1
    80004ad0:	9f0080e7          	jalr	-1552(ra) # 800054bc <_Z11printStringPKc>
    80004ad4:	00000613          	li	a2,0
    80004ad8:	00a00593          	li	a1,10
    80004adc:	0009051b          	sext.w	a0,s2
    80004ae0:	00001097          	auipc	ra,0x1
    80004ae4:	b8c080e7          	jalr	-1140(ra) # 8000566c <_Z8printIntiii>
    80004ae8:	00004517          	auipc	a0,0x4
    80004aec:	68050513          	addi	a0,a0,1664 # 80009168 <CONSOLE_STATUS+0x158>
    80004af0:	00001097          	auipc	ra,0x1
    80004af4:	9cc080e7          	jalr	-1588(ra) # 800054bc <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004af8:	00000493          	li	s1,0
    80004afc:	f99ff06f          	j	80004a94 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80004b00:	00004517          	auipc	a0,0x4
    80004b04:	72050513          	addi	a0,a0,1824 # 80009220 <CONSOLE_STATUS+0x210>
    80004b08:	00001097          	auipc	ra,0x1
    80004b0c:	9b4080e7          	jalr	-1612(ra) # 800054bc <_Z11printStringPKc>
    finishedA = true;
    80004b10:	00100793          	li	a5,1
    80004b14:	00007717          	auipc	a4,0x7
    80004b18:	f2f70fa3          	sb	a5,-193(a4) # 8000ba53 <_ZL9finishedA>
}
    80004b1c:	01813083          	ld	ra,24(sp)
    80004b20:	01013403          	ld	s0,16(sp)
    80004b24:	00813483          	ld	s1,8(sp)
    80004b28:	00013903          	ld	s2,0(sp)
    80004b2c:	02010113          	addi	sp,sp,32
    80004b30:	00008067          	ret

0000000080004b34 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004b34:	fd010113          	addi	sp,sp,-48
    80004b38:	02113423          	sd	ra,40(sp)
    80004b3c:	02813023          	sd	s0,32(sp)
    80004b40:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004b44:	00000613          	li	a2,0
    80004b48:	00000597          	auipc	a1,0x0
    80004b4c:	f2058593          	addi	a1,a1,-224 # 80004a68 <_ZL11workerBodyAPv>
    80004b50:	fd040513          	addi	a0,s0,-48
    80004b54:	ffffc097          	auipc	ra,0xffffc
    80004b58:	7a4080e7          	jalr	1956(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80004b5c:	00004517          	auipc	a0,0x4
    80004b60:	75450513          	addi	a0,a0,1876 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80004b64:	00001097          	auipc	ra,0x1
    80004b68:	958080e7          	jalr	-1704(ra) # 800054bc <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004b6c:	00000613          	li	a2,0
    80004b70:	00000597          	auipc	a1,0x0
    80004b74:	e2458593          	addi	a1,a1,-476 # 80004994 <_ZL11workerBodyBPv>
    80004b78:	fd840513          	addi	a0,s0,-40
    80004b7c:	ffffc097          	auipc	ra,0xffffc
    80004b80:	77c080e7          	jalr	1916(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80004b84:	00004517          	auipc	a0,0x4
    80004b88:	74450513          	addi	a0,a0,1860 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80004b8c:	00001097          	auipc	ra,0x1
    80004b90:	930080e7          	jalr	-1744(ra) # 800054bc <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004b94:	00000613          	li	a2,0
    80004b98:	00000597          	auipc	a1,0x0
    80004b9c:	c7c58593          	addi	a1,a1,-900 # 80004814 <_ZL11workerBodyCPv>
    80004ba0:	fe040513          	addi	a0,s0,-32
    80004ba4:	ffffc097          	auipc	ra,0xffffc
    80004ba8:	754080e7          	jalr	1876(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80004bac:	00004517          	auipc	a0,0x4
    80004bb0:	73450513          	addi	a0,a0,1844 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80004bb4:	00001097          	auipc	ra,0x1
    80004bb8:	908080e7          	jalr	-1784(ra) # 800054bc <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004bbc:	00000613          	li	a2,0
    80004bc0:	00000597          	auipc	a1,0x0
    80004bc4:	b0c58593          	addi	a1,a1,-1268 # 800046cc <_ZL11workerBodyDPv>
    80004bc8:	fe840513          	addi	a0,s0,-24
    80004bcc:	ffffc097          	auipc	ra,0xffffc
    80004bd0:	72c080e7          	jalr	1836(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80004bd4:	00004517          	auipc	a0,0x4
    80004bd8:	72450513          	addi	a0,a0,1828 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80004bdc:	00001097          	auipc	ra,0x1
    80004be0:	8e0080e7          	jalr	-1824(ra) # 800054bc <_Z11printStringPKc>
    80004be4:	00c0006f          	j	80004bf0 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004be8:	ffffc097          	auipc	ra,0xffffc
    80004bec:	7e4080e7          	jalr	2020(ra) # 800013cc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004bf0:	00007797          	auipc	a5,0x7
    80004bf4:	e637c783          	lbu	a5,-413(a5) # 8000ba53 <_ZL9finishedA>
    80004bf8:	fe0788e3          	beqz	a5,80004be8 <_Z18Threads_C_API_testv+0xb4>
    80004bfc:	00007797          	auipc	a5,0x7
    80004c00:	e567c783          	lbu	a5,-426(a5) # 8000ba52 <_ZL9finishedB>
    80004c04:	fe0782e3          	beqz	a5,80004be8 <_Z18Threads_C_API_testv+0xb4>
    80004c08:	00007797          	auipc	a5,0x7
    80004c0c:	e497c783          	lbu	a5,-439(a5) # 8000ba51 <_ZL9finishedC>
    80004c10:	fc078ce3          	beqz	a5,80004be8 <_Z18Threads_C_API_testv+0xb4>
    80004c14:	00007797          	auipc	a5,0x7
    80004c18:	e3c7c783          	lbu	a5,-452(a5) # 8000ba50 <_ZL9finishedD>
    80004c1c:	fc0786e3          	beqz	a5,80004be8 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80004c20:	02813083          	ld	ra,40(sp)
    80004c24:	02013403          	ld	s0,32(sp)
    80004c28:	03010113          	addi	sp,sp,48
    80004c2c:	00008067          	ret

0000000080004c30 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80004c30:	fd010113          	addi	sp,sp,-48
    80004c34:	02113423          	sd	ra,40(sp)
    80004c38:	02813023          	sd	s0,32(sp)
    80004c3c:	00913c23          	sd	s1,24(sp)
    80004c40:	01213823          	sd	s2,16(sp)
    80004c44:	01313423          	sd	s3,8(sp)
    80004c48:	03010413          	addi	s0,sp,48
    80004c4c:	00050993          	mv	s3,a0
    80004c50:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004c54:	00000913          	li	s2,0
    80004c58:	00c0006f          	j	80004c64 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004c5c:	ffffd097          	auipc	ra,0xffffd
    80004c60:	73c080e7          	jalr	1852(ra) # 80002398 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80004c64:	ffffd097          	auipc	ra,0xffffd
    80004c68:	98c080e7          	jalr	-1652(ra) # 800015f0 <_Z4getcv>
    80004c6c:	0005059b          	sext.w	a1,a0
    80004c70:	01b00793          	li	a5,27
    80004c74:	02f58a63          	beq	a1,a5,80004ca8 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004c78:	0084b503          	ld	a0,8(s1)
    80004c7c:	00001097          	auipc	ra,0x1
    80004c80:	c64080e7          	jalr	-924(ra) # 800058e0 <_ZN9BufferCPP3putEi>
        i++;
    80004c84:	0019071b          	addiw	a4,s2,1
    80004c88:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004c8c:	0004a683          	lw	a3,0(s1)
    80004c90:	0026979b          	slliw	a5,a3,0x2
    80004c94:	00d787bb          	addw	a5,a5,a3
    80004c98:	0017979b          	slliw	a5,a5,0x1
    80004c9c:	02f767bb          	remw	a5,a4,a5
    80004ca0:	fc0792e3          	bnez	a5,80004c64 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004ca4:	fb9ff06f          	j	80004c5c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80004ca8:	00100793          	li	a5,1
    80004cac:	00007717          	auipc	a4,0x7
    80004cb0:	daf72623          	sw	a5,-596(a4) # 8000ba58 <_ZL9threadEnd>
    td->buffer->put('!');
    80004cb4:	0209b783          	ld	a5,32(s3)
    80004cb8:	02100593          	li	a1,33
    80004cbc:	0087b503          	ld	a0,8(a5)
    80004cc0:	00001097          	auipc	ra,0x1
    80004cc4:	c20080e7          	jalr	-992(ra) # 800058e0 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004cc8:	0104b503          	ld	a0,16(s1)
    80004ccc:	ffffd097          	auipc	ra,0xffffd
    80004cd0:	7bc080e7          	jalr	1980(ra) # 80002488 <_ZN9Semaphore6signalEv>
}
    80004cd4:	02813083          	ld	ra,40(sp)
    80004cd8:	02013403          	ld	s0,32(sp)
    80004cdc:	01813483          	ld	s1,24(sp)
    80004ce0:	01013903          	ld	s2,16(sp)
    80004ce4:	00813983          	ld	s3,8(sp)
    80004ce8:	03010113          	addi	sp,sp,48
    80004cec:	00008067          	ret

0000000080004cf0 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80004cf0:	fe010113          	addi	sp,sp,-32
    80004cf4:	00113c23          	sd	ra,24(sp)
    80004cf8:	00813823          	sd	s0,16(sp)
    80004cfc:	00913423          	sd	s1,8(sp)
    80004d00:	01213023          	sd	s2,0(sp)
    80004d04:	02010413          	addi	s0,sp,32
    80004d08:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004d0c:	00000913          	li	s2,0
    80004d10:	00c0006f          	j	80004d1c <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004d14:	ffffd097          	auipc	ra,0xffffd
    80004d18:	684080e7          	jalr	1668(ra) # 80002398 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80004d1c:	00007797          	auipc	a5,0x7
    80004d20:	d3c7a783          	lw	a5,-708(a5) # 8000ba58 <_ZL9threadEnd>
    80004d24:	02079e63          	bnez	a5,80004d60 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80004d28:	0004a583          	lw	a1,0(s1)
    80004d2c:	0305859b          	addiw	a1,a1,48
    80004d30:	0084b503          	ld	a0,8(s1)
    80004d34:	00001097          	auipc	ra,0x1
    80004d38:	bac080e7          	jalr	-1108(ra) # 800058e0 <_ZN9BufferCPP3putEi>
        i++;
    80004d3c:	0019071b          	addiw	a4,s2,1
    80004d40:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004d44:	0004a683          	lw	a3,0(s1)
    80004d48:	0026979b          	slliw	a5,a3,0x2
    80004d4c:	00d787bb          	addw	a5,a5,a3
    80004d50:	0017979b          	slliw	a5,a5,0x1
    80004d54:	02f767bb          	remw	a5,a4,a5
    80004d58:	fc0792e3          	bnez	a5,80004d1c <_ZN12ProducerSync8producerEPv+0x2c>
    80004d5c:	fb9ff06f          	j	80004d14 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80004d60:	0104b503          	ld	a0,16(s1)
    80004d64:	ffffd097          	auipc	ra,0xffffd
    80004d68:	724080e7          	jalr	1828(ra) # 80002488 <_ZN9Semaphore6signalEv>
}
    80004d6c:	01813083          	ld	ra,24(sp)
    80004d70:	01013403          	ld	s0,16(sp)
    80004d74:	00813483          	ld	s1,8(sp)
    80004d78:	00013903          	ld	s2,0(sp)
    80004d7c:	02010113          	addi	sp,sp,32
    80004d80:	00008067          	ret

0000000080004d84 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004d84:	fd010113          	addi	sp,sp,-48
    80004d88:	02113423          	sd	ra,40(sp)
    80004d8c:	02813023          	sd	s0,32(sp)
    80004d90:	00913c23          	sd	s1,24(sp)
    80004d94:	01213823          	sd	s2,16(sp)
    80004d98:	01313423          	sd	s3,8(sp)
    80004d9c:	01413023          	sd	s4,0(sp)
    80004da0:	03010413          	addi	s0,sp,48
    80004da4:	00050993          	mv	s3,a0
    80004da8:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004dac:	00000a13          	li	s4,0
    80004db0:	01c0006f          	j	80004dcc <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80004db4:	ffffd097          	auipc	ra,0xffffd
    80004db8:	5e4080e7          	jalr	1508(ra) # 80002398 <_ZN6Thread8dispatchEv>
    80004dbc:	0500006f          	j	80004e0c <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004dc0:	00a00513          	li	a0,10
    80004dc4:	ffffd097          	auipc	ra,0xffffd
    80004dc8:	878080e7          	jalr	-1928(ra) # 8000163c <_Z4putcc>
    while (!threadEnd) {
    80004dcc:	00007797          	auipc	a5,0x7
    80004dd0:	c8c7a783          	lw	a5,-884(a5) # 8000ba58 <_ZL9threadEnd>
    80004dd4:	06079263          	bnez	a5,80004e38 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80004dd8:	00893503          	ld	a0,8(s2)
    80004ddc:	00001097          	auipc	ra,0x1
    80004de0:	b94080e7          	jalr	-1132(ra) # 80005970 <_ZN9BufferCPP3getEv>
        i++;
    80004de4:	001a049b          	addiw	s1,s4,1
    80004de8:	00048a1b          	sext.w	s4,s1
        putc(key);
    80004dec:	0ff57513          	andi	a0,a0,255
    80004df0:	ffffd097          	auipc	ra,0xffffd
    80004df4:	84c080e7          	jalr	-1972(ra) # 8000163c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80004df8:	00092703          	lw	a4,0(s2)
    80004dfc:	0027179b          	slliw	a5,a4,0x2
    80004e00:	00e787bb          	addw	a5,a5,a4
    80004e04:	02f4e7bb          	remw	a5,s1,a5
    80004e08:	fa0786e3          	beqz	a5,80004db4 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80004e0c:	05000793          	li	a5,80
    80004e10:	02f4e4bb          	remw	s1,s1,a5
    80004e14:	fa049ce3          	bnez	s1,80004dcc <_ZN12ConsumerSync8consumerEPv+0x48>
    80004e18:	fa9ff06f          	j	80004dc0 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80004e1c:	0209b783          	ld	a5,32(s3)
    80004e20:	0087b503          	ld	a0,8(a5)
    80004e24:	00001097          	auipc	ra,0x1
    80004e28:	b4c080e7          	jalr	-1204(ra) # 80005970 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80004e2c:	0ff57513          	andi	a0,a0,255
    80004e30:	ffffd097          	auipc	ra,0xffffd
    80004e34:	748080e7          	jalr	1864(ra) # 80002578 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80004e38:	0209b783          	ld	a5,32(s3)
    80004e3c:	0087b503          	ld	a0,8(a5)
    80004e40:	00001097          	auipc	ra,0x1
    80004e44:	bbc080e7          	jalr	-1092(ra) # 800059fc <_ZN9BufferCPP6getCntEv>
    80004e48:	fca04ae3          	bgtz	a0,80004e1c <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80004e4c:	01093503          	ld	a0,16(s2)
    80004e50:	ffffd097          	auipc	ra,0xffffd
    80004e54:	638080e7          	jalr	1592(ra) # 80002488 <_ZN9Semaphore6signalEv>
}
    80004e58:	02813083          	ld	ra,40(sp)
    80004e5c:	02013403          	ld	s0,32(sp)
    80004e60:	01813483          	ld	s1,24(sp)
    80004e64:	01013903          	ld	s2,16(sp)
    80004e68:	00813983          	ld	s3,8(sp)
    80004e6c:	00013a03          	ld	s4,0(sp)
    80004e70:	03010113          	addi	sp,sp,48
    80004e74:	00008067          	ret

0000000080004e78 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004e78:	f8010113          	addi	sp,sp,-128
    80004e7c:	06113c23          	sd	ra,120(sp)
    80004e80:	06813823          	sd	s0,112(sp)
    80004e84:	06913423          	sd	s1,104(sp)
    80004e88:	07213023          	sd	s2,96(sp)
    80004e8c:	05313c23          	sd	s3,88(sp)
    80004e90:	05413823          	sd	s4,80(sp)
    80004e94:	05513423          	sd	s5,72(sp)
    80004e98:	05613023          	sd	s6,64(sp)
    80004e9c:	03713c23          	sd	s7,56(sp)
    80004ea0:	03813823          	sd	s8,48(sp)
    80004ea4:	03913423          	sd	s9,40(sp)
    80004ea8:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80004eac:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004eb0:	00004517          	auipc	a0,0x4
    80004eb4:	28050513          	addi	a0,a0,640 # 80009130 <CONSOLE_STATUS+0x120>
    80004eb8:	00000097          	auipc	ra,0x0
    80004ebc:	604080e7          	jalr	1540(ra) # 800054bc <_Z11printStringPKc>
    getString(input, 30);
    80004ec0:	01e00593          	li	a1,30
    80004ec4:	f8040493          	addi	s1,s0,-128
    80004ec8:	00048513          	mv	a0,s1
    80004ecc:	00000097          	auipc	ra,0x0
    80004ed0:	678080e7          	jalr	1656(ra) # 80005544 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004ed4:	00048513          	mv	a0,s1
    80004ed8:	00000097          	auipc	ra,0x0
    80004edc:	744080e7          	jalr	1860(ra) # 8000561c <_Z11stringToIntPKc>
    80004ee0:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004ee4:	00004517          	auipc	a0,0x4
    80004ee8:	26c50513          	addi	a0,a0,620 # 80009150 <CONSOLE_STATUS+0x140>
    80004eec:	00000097          	auipc	ra,0x0
    80004ef0:	5d0080e7          	jalr	1488(ra) # 800054bc <_Z11printStringPKc>
    getString(input, 30);
    80004ef4:	01e00593          	li	a1,30
    80004ef8:	00048513          	mv	a0,s1
    80004efc:	00000097          	auipc	ra,0x0
    80004f00:	648080e7          	jalr	1608(ra) # 80005544 <_Z9getStringPci>
    n = stringToInt(input);
    80004f04:	00048513          	mv	a0,s1
    80004f08:	00000097          	auipc	ra,0x0
    80004f0c:	714080e7          	jalr	1812(ra) # 8000561c <_Z11stringToIntPKc>
    80004f10:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80004f14:	00004517          	auipc	a0,0x4
    80004f18:	25c50513          	addi	a0,a0,604 # 80009170 <CONSOLE_STATUS+0x160>
    80004f1c:	00000097          	auipc	ra,0x0
    80004f20:	5a0080e7          	jalr	1440(ra) # 800054bc <_Z11printStringPKc>
    80004f24:	00000613          	li	a2,0
    80004f28:	00a00593          	li	a1,10
    80004f2c:	00090513          	mv	a0,s2
    80004f30:	00000097          	auipc	ra,0x0
    80004f34:	73c080e7          	jalr	1852(ra) # 8000566c <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004f38:	00004517          	auipc	a0,0x4
    80004f3c:	25050513          	addi	a0,a0,592 # 80009188 <CONSOLE_STATUS+0x178>
    80004f40:	00000097          	auipc	ra,0x0
    80004f44:	57c080e7          	jalr	1404(ra) # 800054bc <_Z11printStringPKc>
    80004f48:	00000613          	li	a2,0
    80004f4c:	00a00593          	li	a1,10
    80004f50:	00048513          	mv	a0,s1
    80004f54:	00000097          	auipc	ra,0x0
    80004f58:	718080e7          	jalr	1816(ra) # 8000566c <_Z8printIntiii>
    printString(".\n");
    80004f5c:	00004517          	auipc	a0,0x4
    80004f60:	24450513          	addi	a0,a0,580 # 800091a0 <CONSOLE_STATUS+0x190>
    80004f64:	00000097          	auipc	ra,0x0
    80004f68:	558080e7          	jalr	1368(ra) # 800054bc <_Z11printStringPKc>
    if(threadNum > n) {
    80004f6c:	0324c463          	blt	s1,s2,80004f94 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80004f70:	03205c63          	blez	s2,80004fa8 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004f74:	03800513          	li	a0,56
    80004f78:	ffffd097          	auipc	ra,0xffffd
    80004f7c:	2e4080e7          	jalr	740(ra) # 8000225c <_Znwm>
    80004f80:	00050a93          	mv	s5,a0
    80004f84:	00048593          	mv	a1,s1
    80004f88:	00001097          	auipc	ra,0x1
    80004f8c:	804080e7          	jalr	-2044(ra) # 8000578c <_ZN9BufferCPPC1Ei>
    80004f90:	0300006f          	j	80004fc0 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004f94:	00004517          	auipc	a0,0x4
    80004f98:	21450513          	addi	a0,a0,532 # 800091a8 <CONSOLE_STATUS+0x198>
    80004f9c:	00000097          	auipc	ra,0x0
    80004fa0:	520080e7          	jalr	1312(ra) # 800054bc <_Z11printStringPKc>
        return;
    80004fa4:	0140006f          	j	80004fb8 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004fa8:	00004517          	auipc	a0,0x4
    80004fac:	24050513          	addi	a0,a0,576 # 800091e8 <CONSOLE_STATUS+0x1d8>
    80004fb0:	00000097          	auipc	ra,0x0
    80004fb4:	50c080e7          	jalr	1292(ra) # 800054bc <_Z11printStringPKc>
        return;
    80004fb8:	000b8113          	mv	sp,s7
    80004fbc:	2380006f          	j	800051f4 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80004fc0:	01000513          	li	a0,16
    80004fc4:	ffffd097          	auipc	ra,0xffffd
    80004fc8:	298080e7          	jalr	664(ra) # 8000225c <_Znwm>
    80004fcc:	00050493          	mv	s1,a0
    80004fd0:	00000593          	li	a1,0
    80004fd4:	ffffd097          	auipc	ra,0xffffd
    80004fd8:	440080e7          	jalr	1088(ra) # 80002414 <_ZN9SemaphoreC1Ej>
    80004fdc:	00007797          	auipc	a5,0x7
    80004fe0:	a897b223          	sd	s1,-1404(a5) # 8000ba60 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80004fe4:	00391793          	slli	a5,s2,0x3
    80004fe8:	00f78793          	addi	a5,a5,15
    80004fec:	ff07f793          	andi	a5,a5,-16
    80004ff0:	40f10133          	sub	sp,sp,a5
    80004ff4:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80004ff8:	0019071b          	addiw	a4,s2,1
    80004ffc:	00171793          	slli	a5,a4,0x1
    80005000:	00e787b3          	add	a5,a5,a4
    80005004:	00379793          	slli	a5,a5,0x3
    80005008:	00f78793          	addi	a5,a5,15
    8000500c:	ff07f793          	andi	a5,a5,-16
    80005010:	40f10133          	sub	sp,sp,a5
    80005014:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80005018:	00191c13          	slli	s8,s2,0x1
    8000501c:	012c07b3          	add	a5,s8,s2
    80005020:	00379793          	slli	a5,a5,0x3
    80005024:	00fa07b3          	add	a5,s4,a5
    80005028:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    8000502c:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80005030:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80005034:	02800513          	li	a0,40
    80005038:	ffffd097          	auipc	ra,0xffffd
    8000503c:	224080e7          	jalr	548(ra) # 8000225c <_Znwm>
    80005040:	00050b13          	mv	s6,a0
    80005044:	012c0c33          	add	s8,s8,s2
    80005048:	003c1c13          	slli	s8,s8,0x3
    8000504c:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80005050:	ffffd097          	auipc	ra,0xffffd
    80005054:	39c080e7          	jalr	924(ra) # 800023ec <_ZN6ThreadC1Ev>
    80005058:	00007797          	auipc	a5,0x7
    8000505c:	8e078793          	addi	a5,a5,-1824 # 8000b938 <_ZTV12ConsumerSync+0x10>
    80005060:	00fb3023          	sd	a5,0(s6)
    80005064:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80005068:	000b0513          	mv	a0,s6
    8000506c:	ffffd097          	auipc	ra,0xffffd
    80005070:	2fc080e7          	jalr	764(ra) # 80002368 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005074:	00000493          	li	s1,0
    80005078:	0380006f          	j	800050b0 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    8000507c:	00007797          	auipc	a5,0x7
    80005080:	89478793          	addi	a5,a5,-1900 # 8000b910 <_ZTV12ProducerSync+0x10>
    80005084:	00fcb023          	sd	a5,0(s9)
    80005088:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    8000508c:	00349793          	slli	a5,s1,0x3
    80005090:	00f987b3          	add	a5,s3,a5
    80005094:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80005098:	00349793          	slli	a5,s1,0x3
    8000509c:	00f987b3          	add	a5,s3,a5
    800050a0:	0007b503          	ld	a0,0(a5)
    800050a4:	ffffd097          	auipc	ra,0xffffd
    800050a8:	2c4080e7          	jalr	708(ra) # 80002368 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800050ac:	0014849b          	addiw	s1,s1,1
    800050b0:	0b24d063          	bge	s1,s2,80005150 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    800050b4:	00149793          	slli	a5,s1,0x1
    800050b8:	009787b3          	add	a5,a5,s1
    800050bc:	00379793          	slli	a5,a5,0x3
    800050c0:	00fa07b3          	add	a5,s4,a5
    800050c4:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800050c8:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    800050cc:	00007717          	auipc	a4,0x7
    800050d0:	99473703          	ld	a4,-1644(a4) # 8000ba60 <_ZL10waitForAll>
    800050d4:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    800050d8:	02905863          	blez	s1,80005108 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    800050dc:	02800513          	li	a0,40
    800050e0:	ffffd097          	auipc	ra,0xffffd
    800050e4:	17c080e7          	jalr	380(ra) # 8000225c <_Znwm>
    800050e8:	00050c93          	mv	s9,a0
    800050ec:	00149c13          	slli	s8,s1,0x1
    800050f0:	009c0c33          	add	s8,s8,s1
    800050f4:	003c1c13          	slli	s8,s8,0x3
    800050f8:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800050fc:	ffffd097          	auipc	ra,0xffffd
    80005100:	2f0080e7          	jalr	752(ra) # 800023ec <_ZN6ThreadC1Ev>
    80005104:	f79ff06f          	j	8000507c <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80005108:	02800513          	li	a0,40
    8000510c:	ffffd097          	auipc	ra,0xffffd
    80005110:	150080e7          	jalr	336(ra) # 8000225c <_Znwm>
    80005114:	00050c93          	mv	s9,a0
    80005118:	00149c13          	slli	s8,s1,0x1
    8000511c:	009c0c33          	add	s8,s8,s1
    80005120:	003c1c13          	slli	s8,s8,0x3
    80005124:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80005128:	ffffd097          	auipc	ra,0xffffd
    8000512c:	2c4080e7          	jalr	708(ra) # 800023ec <_ZN6ThreadC1Ev>
    80005130:	00006797          	auipc	a5,0x6
    80005134:	7b878793          	addi	a5,a5,1976 # 8000b8e8 <_ZTV16ProducerKeyboard+0x10>
    80005138:	00fcb023          	sd	a5,0(s9)
    8000513c:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80005140:	00349793          	slli	a5,s1,0x3
    80005144:	00f987b3          	add	a5,s3,a5
    80005148:	0197b023          	sd	s9,0(a5)
    8000514c:	f4dff06f          	j	80005098 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80005150:	ffffd097          	auipc	ra,0xffffd
    80005154:	248080e7          	jalr	584(ra) # 80002398 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80005158:	00000493          	li	s1,0
    8000515c:	00994e63          	blt	s2,s1,80005178 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80005160:	00007517          	auipc	a0,0x7
    80005164:	90053503          	ld	a0,-1792(a0) # 8000ba60 <_ZL10waitForAll>
    80005168:	ffffd097          	auipc	ra,0xffffd
    8000516c:	2e8080e7          	jalr	744(ra) # 80002450 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80005170:	0014849b          	addiw	s1,s1,1
    80005174:	fe9ff06f          	j	8000515c <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80005178:	00000493          	li	s1,0
    8000517c:	0080006f          	j	80005184 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80005180:	0014849b          	addiw	s1,s1,1
    80005184:	0324d263          	bge	s1,s2,800051a8 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80005188:	00349793          	slli	a5,s1,0x3
    8000518c:	00f987b3          	add	a5,s3,a5
    80005190:	0007b503          	ld	a0,0(a5)
    80005194:	fe0506e3          	beqz	a0,80005180 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80005198:	00053783          	ld	a5,0(a0)
    8000519c:	0087b783          	ld	a5,8(a5)
    800051a0:	000780e7          	jalr	a5
    800051a4:	fddff06f          	j	80005180 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    800051a8:	000b0a63          	beqz	s6,800051bc <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    800051ac:	000b3783          	ld	a5,0(s6)
    800051b0:	0087b783          	ld	a5,8(a5)
    800051b4:	000b0513          	mv	a0,s6
    800051b8:	000780e7          	jalr	a5
    delete waitForAll;
    800051bc:	00007517          	auipc	a0,0x7
    800051c0:	8a453503          	ld	a0,-1884(a0) # 8000ba60 <_ZL10waitForAll>
    800051c4:	00050863          	beqz	a0,800051d4 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    800051c8:	00053783          	ld	a5,0(a0)
    800051cc:	0087b783          	ld	a5,8(a5)
    800051d0:	000780e7          	jalr	a5
    delete buffer;
    800051d4:	000a8e63          	beqz	s5,800051f0 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    800051d8:	000a8513          	mv	a0,s5
    800051dc:	00001097          	auipc	ra,0x1
    800051e0:	8a8080e7          	jalr	-1880(ra) # 80005a84 <_ZN9BufferCPPD1Ev>
    800051e4:	000a8513          	mv	a0,s5
    800051e8:	ffffd097          	auipc	ra,0xffffd
    800051ec:	09c080e7          	jalr	156(ra) # 80002284 <_ZdlPv>
    800051f0:	000b8113          	mv	sp,s7

}
    800051f4:	f8040113          	addi	sp,s0,-128
    800051f8:	07813083          	ld	ra,120(sp)
    800051fc:	07013403          	ld	s0,112(sp)
    80005200:	06813483          	ld	s1,104(sp)
    80005204:	06013903          	ld	s2,96(sp)
    80005208:	05813983          	ld	s3,88(sp)
    8000520c:	05013a03          	ld	s4,80(sp)
    80005210:	04813a83          	ld	s5,72(sp)
    80005214:	04013b03          	ld	s6,64(sp)
    80005218:	03813b83          	ld	s7,56(sp)
    8000521c:	03013c03          	ld	s8,48(sp)
    80005220:	02813c83          	ld	s9,40(sp)
    80005224:	08010113          	addi	sp,sp,128
    80005228:	00008067          	ret
    8000522c:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80005230:	000a8513          	mv	a0,s5
    80005234:	ffffd097          	auipc	ra,0xffffd
    80005238:	050080e7          	jalr	80(ra) # 80002284 <_ZdlPv>
    8000523c:	00048513          	mv	a0,s1
    80005240:	00008097          	auipc	ra,0x8
    80005244:	908080e7          	jalr	-1784(ra) # 8000cb48 <_Unwind_Resume>
    80005248:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    8000524c:	00048513          	mv	a0,s1
    80005250:	ffffd097          	auipc	ra,0xffffd
    80005254:	034080e7          	jalr	52(ra) # 80002284 <_ZdlPv>
    80005258:	00090513          	mv	a0,s2
    8000525c:	00008097          	auipc	ra,0x8
    80005260:	8ec080e7          	jalr	-1812(ra) # 8000cb48 <_Unwind_Resume>
    80005264:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80005268:	000b0513          	mv	a0,s6
    8000526c:	ffffd097          	auipc	ra,0xffffd
    80005270:	018080e7          	jalr	24(ra) # 80002284 <_ZdlPv>
    80005274:	00048513          	mv	a0,s1
    80005278:	00008097          	auipc	ra,0x8
    8000527c:	8d0080e7          	jalr	-1840(ra) # 8000cb48 <_Unwind_Resume>
    80005280:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005284:	000c8513          	mv	a0,s9
    80005288:	ffffd097          	auipc	ra,0xffffd
    8000528c:	ffc080e7          	jalr	-4(ra) # 80002284 <_ZdlPv>
    80005290:	00048513          	mv	a0,s1
    80005294:	00008097          	auipc	ra,0x8
    80005298:	8b4080e7          	jalr	-1868(ra) # 8000cb48 <_Unwind_Resume>
    8000529c:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    800052a0:	000c8513          	mv	a0,s9
    800052a4:	ffffd097          	auipc	ra,0xffffd
    800052a8:	fe0080e7          	jalr	-32(ra) # 80002284 <_ZdlPv>
    800052ac:	00048513          	mv	a0,s1
    800052b0:	00008097          	auipc	ra,0x8
    800052b4:	898080e7          	jalr	-1896(ra) # 8000cb48 <_Unwind_Resume>

00000000800052b8 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    800052b8:	ff010113          	addi	sp,sp,-16
    800052bc:	00113423          	sd	ra,8(sp)
    800052c0:	00813023          	sd	s0,0(sp)
    800052c4:	01010413          	addi	s0,sp,16
    800052c8:	00006797          	auipc	a5,0x6
    800052cc:	67078793          	addi	a5,a5,1648 # 8000b938 <_ZTV12ConsumerSync+0x10>
    800052d0:	00f53023          	sd	a5,0(a0)
    800052d4:	ffffd097          	auipc	ra,0xffffd
    800052d8:	ef0080e7          	jalr	-272(ra) # 800021c4 <_ZN6ThreadD1Ev>
    800052dc:	00813083          	ld	ra,8(sp)
    800052e0:	00013403          	ld	s0,0(sp)
    800052e4:	01010113          	addi	sp,sp,16
    800052e8:	00008067          	ret

00000000800052ec <_ZN12ConsumerSyncD0Ev>:
    800052ec:	fe010113          	addi	sp,sp,-32
    800052f0:	00113c23          	sd	ra,24(sp)
    800052f4:	00813823          	sd	s0,16(sp)
    800052f8:	00913423          	sd	s1,8(sp)
    800052fc:	02010413          	addi	s0,sp,32
    80005300:	00050493          	mv	s1,a0
    80005304:	00006797          	auipc	a5,0x6
    80005308:	63478793          	addi	a5,a5,1588 # 8000b938 <_ZTV12ConsumerSync+0x10>
    8000530c:	00f53023          	sd	a5,0(a0)
    80005310:	ffffd097          	auipc	ra,0xffffd
    80005314:	eb4080e7          	jalr	-332(ra) # 800021c4 <_ZN6ThreadD1Ev>
    80005318:	00048513          	mv	a0,s1
    8000531c:	ffffd097          	auipc	ra,0xffffd
    80005320:	f68080e7          	jalr	-152(ra) # 80002284 <_ZdlPv>
    80005324:	01813083          	ld	ra,24(sp)
    80005328:	01013403          	ld	s0,16(sp)
    8000532c:	00813483          	ld	s1,8(sp)
    80005330:	02010113          	addi	sp,sp,32
    80005334:	00008067          	ret

0000000080005338 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80005338:	ff010113          	addi	sp,sp,-16
    8000533c:	00113423          	sd	ra,8(sp)
    80005340:	00813023          	sd	s0,0(sp)
    80005344:	01010413          	addi	s0,sp,16
    80005348:	00006797          	auipc	a5,0x6
    8000534c:	5c878793          	addi	a5,a5,1480 # 8000b910 <_ZTV12ProducerSync+0x10>
    80005350:	00f53023          	sd	a5,0(a0)
    80005354:	ffffd097          	auipc	ra,0xffffd
    80005358:	e70080e7          	jalr	-400(ra) # 800021c4 <_ZN6ThreadD1Ev>
    8000535c:	00813083          	ld	ra,8(sp)
    80005360:	00013403          	ld	s0,0(sp)
    80005364:	01010113          	addi	sp,sp,16
    80005368:	00008067          	ret

000000008000536c <_ZN12ProducerSyncD0Ev>:
    8000536c:	fe010113          	addi	sp,sp,-32
    80005370:	00113c23          	sd	ra,24(sp)
    80005374:	00813823          	sd	s0,16(sp)
    80005378:	00913423          	sd	s1,8(sp)
    8000537c:	02010413          	addi	s0,sp,32
    80005380:	00050493          	mv	s1,a0
    80005384:	00006797          	auipc	a5,0x6
    80005388:	58c78793          	addi	a5,a5,1420 # 8000b910 <_ZTV12ProducerSync+0x10>
    8000538c:	00f53023          	sd	a5,0(a0)
    80005390:	ffffd097          	auipc	ra,0xffffd
    80005394:	e34080e7          	jalr	-460(ra) # 800021c4 <_ZN6ThreadD1Ev>
    80005398:	00048513          	mv	a0,s1
    8000539c:	ffffd097          	auipc	ra,0xffffd
    800053a0:	ee8080e7          	jalr	-280(ra) # 80002284 <_ZdlPv>
    800053a4:	01813083          	ld	ra,24(sp)
    800053a8:	01013403          	ld	s0,16(sp)
    800053ac:	00813483          	ld	s1,8(sp)
    800053b0:	02010113          	addi	sp,sp,32
    800053b4:	00008067          	ret

00000000800053b8 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    800053b8:	ff010113          	addi	sp,sp,-16
    800053bc:	00113423          	sd	ra,8(sp)
    800053c0:	00813023          	sd	s0,0(sp)
    800053c4:	01010413          	addi	s0,sp,16
    800053c8:	00006797          	auipc	a5,0x6
    800053cc:	52078793          	addi	a5,a5,1312 # 8000b8e8 <_ZTV16ProducerKeyboard+0x10>
    800053d0:	00f53023          	sd	a5,0(a0)
    800053d4:	ffffd097          	auipc	ra,0xffffd
    800053d8:	df0080e7          	jalr	-528(ra) # 800021c4 <_ZN6ThreadD1Ev>
    800053dc:	00813083          	ld	ra,8(sp)
    800053e0:	00013403          	ld	s0,0(sp)
    800053e4:	01010113          	addi	sp,sp,16
    800053e8:	00008067          	ret

00000000800053ec <_ZN16ProducerKeyboardD0Ev>:
    800053ec:	fe010113          	addi	sp,sp,-32
    800053f0:	00113c23          	sd	ra,24(sp)
    800053f4:	00813823          	sd	s0,16(sp)
    800053f8:	00913423          	sd	s1,8(sp)
    800053fc:	02010413          	addi	s0,sp,32
    80005400:	00050493          	mv	s1,a0
    80005404:	00006797          	auipc	a5,0x6
    80005408:	4e478793          	addi	a5,a5,1252 # 8000b8e8 <_ZTV16ProducerKeyboard+0x10>
    8000540c:	00f53023          	sd	a5,0(a0)
    80005410:	ffffd097          	auipc	ra,0xffffd
    80005414:	db4080e7          	jalr	-588(ra) # 800021c4 <_ZN6ThreadD1Ev>
    80005418:	00048513          	mv	a0,s1
    8000541c:	ffffd097          	auipc	ra,0xffffd
    80005420:	e68080e7          	jalr	-408(ra) # 80002284 <_ZdlPv>
    80005424:	01813083          	ld	ra,24(sp)
    80005428:	01013403          	ld	s0,16(sp)
    8000542c:	00813483          	ld	s1,8(sp)
    80005430:	02010113          	addi	sp,sp,32
    80005434:	00008067          	ret

0000000080005438 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80005438:	ff010113          	addi	sp,sp,-16
    8000543c:	00113423          	sd	ra,8(sp)
    80005440:	00813023          	sd	s0,0(sp)
    80005444:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80005448:	02053583          	ld	a1,32(a0)
    8000544c:	fffff097          	auipc	ra,0xfffff
    80005450:	7e4080e7          	jalr	2020(ra) # 80004c30 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005454:	00813083          	ld	ra,8(sp)
    80005458:	00013403          	ld	s0,0(sp)
    8000545c:	01010113          	addi	sp,sp,16
    80005460:	00008067          	ret

0000000080005464 <_ZN12ProducerSync3runEv>:
    void run() override {
    80005464:	ff010113          	addi	sp,sp,-16
    80005468:	00113423          	sd	ra,8(sp)
    8000546c:	00813023          	sd	s0,0(sp)
    80005470:	01010413          	addi	s0,sp,16
        producer(td);
    80005474:	02053583          	ld	a1,32(a0)
    80005478:	00000097          	auipc	ra,0x0
    8000547c:	878080e7          	jalr	-1928(ra) # 80004cf0 <_ZN12ProducerSync8producerEPv>
    }
    80005480:	00813083          	ld	ra,8(sp)
    80005484:	00013403          	ld	s0,0(sp)
    80005488:	01010113          	addi	sp,sp,16
    8000548c:	00008067          	ret

0000000080005490 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005490:	ff010113          	addi	sp,sp,-16
    80005494:	00113423          	sd	ra,8(sp)
    80005498:	00813023          	sd	s0,0(sp)
    8000549c:	01010413          	addi	s0,sp,16
        consumer(td);
    800054a0:	02053583          	ld	a1,32(a0)
    800054a4:	00000097          	auipc	ra,0x0
    800054a8:	8e0080e7          	jalr	-1824(ra) # 80004d84 <_ZN12ConsumerSync8consumerEPv>
    }
    800054ac:	00813083          	ld	ra,8(sp)
    800054b0:	00013403          	ld	s0,0(sp)
    800054b4:	01010113          	addi	sp,sp,16
    800054b8:	00008067          	ret

00000000800054bc <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    800054bc:	fe010113          	addi	sp,sp,-32
    800054c0:	00113c23          	sd	ra,24(sp)
    800054c4:	00813823          	sd	s0,16(sp)
    800054c8:	00913423          	sd	s1,8(sp)
    800054cc:	02010413          	addi	s0,sp,32
    800054d0:	00050493          	mv	s1,a0
    LOCK();
    800054d4:	00100613          	li	a2,1
    800054d8:	00000593          	li	a1,0
    800054dc:	00006517          	auipc	a0,0x6
    800054e0:	58c50513          	addi	a0,a0,1420 # 8000ba68 <lockPrint>
    800054e4:	ffffc097          	auipc	ra,0xffffc
    800054e8:	d38080e7          	jalr	-712(ra) # 8000121c <copy_and_swap>
    800054ec:	00050863          	beqz	a0,800054fc <_Z11printStringPKc+0x40>
    800054f0:	ffffc097          	auipc	ra,0xffffc
    800054f4:	edc080e7          	jalr	-292(ra) # 800013cc <_Z15thread_dispatchv>
    800054f8:	fddff06f          	j	800054d4 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800054fc:	0004c503          	lbu	a0,0(s1)
    80005500:	00050a63          	beqz	a0,80005514 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005504:	ffffc097          	auipc	ra,0xffffc
    80005508:	138080e7          	jalr	312(ra) # 8000163c <_Z4putcc>
        string++;
    8000550c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005510:	fedff06f          	j	800054fc <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005514:	00000613          	li	a2,0
    80005518:	00100593          	li	a1,1
    8000551c:	00006517          	auipc	a0,0x6
    80005520:	54c50513          	addi	a0,a0,1356 # 8000ba68 <lockPrint>
    80005524:	ffffc097          	auipc	ra,0xffffc
    80005528:	cf8080e7          	jalr	-776(ra) # 8000121c <copy_and_swap>
    8000552c:	fe0514e3          	bnez	a0,80005514 <_Z11printStringPKc+0x58>
}
    80005530:	01813083          	ld	ra,24(sp)
    80005534:	01013403          	ld	s0,16(sp)
    80005538:	00813483          	ld	s1,8(sp)
    8000553c:	02010113          	addi	sp,sp,32
    80005540:	00008067          	ret

0000000080005544 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005544:	fd010113          	addi	sp,sp,-48
    80005548:	02113423          	sd	ra,40(sp)
    8000554c:	02813023          	sd	s0,32(sp)
    80005550:	00913c23          	sd	s1,24(sp)
    80005554:	01213823          	sd	s2,16(sp)
    80005558:	01313423          	sd	s3,8(sp)
    8000555c:	01413023          	sd	s4,0(sp)
    80005560:	03010413          	addi	s0,sp,48
    80005564:	00050993          	mv	s3,a0
    80005568:	00058a13          	mv	s4,a1
    LOCK();
    8000556c:	00100613          	li	a2,1
    80005570:	00000593          	li	a1,0
    80005574:	00006517          	auipc	a0,0x6
    80005578:	4f450513          	addi	a0,a0,1268 # 8000ba68 <lockPrint>
    8000557c:	ffffc097          	auipc	ra,0xffffc
    80005580:	ca0080e7          	jalr	-864(ra) # 8000121c <copy_and_swap>
    80005584:	00050863          	beqz	a0,80005594 <_Z9getStringPci+0x50>
    80005588:	ffffc097          	auipc	ra,0xffffc
    8000558c:	e44080e7          	jalr	-444(ra) # 800013cc <_Z15thread_dispatchv>
    80005590:	fddff06f          	j	8000556c <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005594:	00000913          	li	s2,0
    80005598:	00090493          	mv	s1,s2
    8000559c:	0019091b          	addiw	s2,s2,1
    800055a0:	03495a63          	bge	s2,s4,800055d4 <_Z9getStringPci+0x90>
        cc = getc();
    800055a4:	ffffc097          	auipc	ra,0xffffc
    800055a8:	04c080e7          	jalr	76(ra) # 800015f0 <_Z4getcv>
        if(cc < 1)
    800055ac:	02050463          	beqz	a0,800055d4 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    800055b0:	009984b3          	add	s1,s3,s1
    800055b4:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800055b8:	00a00793          	li	a5,10
    800055bc:	00f50a63          	beq	a0,a5,800055d0 <_Z9getStringPci+0x8c>
    800055c0:	00d00793          	li	a5,13
    800055c4:	fcf51ae3          	bne	a0,a5,80005598 <_Z9getStringPci+0x54>
        buf[i++] = c;
    800055c8:	00090493          	mv	s1,s2
    800055cc:	0080006f          	j	800055d4 <_Z9getStringPci+0x90>
    800055d0:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    800055d4:	009984b3          	add	s1,s3,s1
    800055d8:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800055dc:	00000613          	li	a2,0
    800055e0:	00100593          	li	a1,1
    800055e4:	00006517          	auipc	a0,0x6
    800055e8:	48450513          	addi	a0,a0,1156 # 8000ba68 <lockPrint>
    800055ec:	ffffc097          	auipc	ra,0xffffc
    800055f0:	c30080e7          	jalr	-976(ra) # 8000121c <copy_and_swap>
    800055f4:	fe0514e3          	bnez	a0,800055dc <_Z9getStringPci+0x98>
    return buf;
}
    800055f8:	00098513          	mv	a0,s3
    800055fc:	02813083          	ld	ra,40(sp)
    80005600:	02013403          	ld	s0,32(sp)
    80005604:	01813483          	ld	s1,24(sp)
    80005608:	01013903          	ld	s2,16(sp)
    8000560c:	00813983          	ld	s3,8(sp)
    80005610:	00013a03          	ld	s4,0(sp)
    80005614:	03010113          	addi	sp,sp,48
    80005618:	00008067          	ret

000000008000561c <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    8000561c:	ff010113          	addi	sp,sp,-16
    80005620:	00813423          	sd	s0,8(sp)
    80005624:	01010413          	addi	s0,sp,16
    80005628:	00050693          	mv	a3,a0
    int n;

    n = 0;
    8000562c:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005630:	0006c603          	lbu	a2,0(a3)
    80005634:	fd06071b          	addiw	a4,a2,-48
    80005638:	0ff77713          	andi	a4,a4,255
    8000563c:	00900793          	li	a5,9
    80005640:	02e7e063          	bltu	a5,a4,80005660 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005644:	0025179b          	slliw	a5,a0,0x2
    80005648:	00a787bb          	addw	a5,a5,a0
    8000564c:	0017979b          	slliw	a5,a5,0x1
    80005650:	00168693          	addi	a3,a3,1
    80005654:	00c787bb          	addw	a5,a5,a2
    80005658:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    8000565c:	fd5ff06f          	j	80005630 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005660:	00813403          	ld	s0,8(sp)
    80005664:	01010113          	addi	sp,sp,16
    80005668:	00008067          	ret

000000008000566c <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    8000566c:	fc010113          	addi	sp,sp,-64
    80005670:	02113c23          	sd	ra,56(sp)
    80005674:	02813823          	sd	s0,48(sp)
    80005678:	02913423          	sd	s1,40(sp)
    8000567c:	03213023          	sd	s2,32(sp)
    80005680:	01313c23          	sd	s3,24(sp)
    80005684:	04010413          	addi	s0,sp,64
    80005688:	00050493          	mv	s1,a0
    8000568c:	00058913          	mv	s2,a1
    80005690:	00060993          	mv	s3,a2
    LOCK();
    80005694:	00100613          	li	a2,1
    80005698:	00000593          	li	a1,0
    8000569c:	00006517          	auipc	a0,0x6
    800056a0:	3cc50513          	addi	a0,a0,972 # 8000ba68 <lockPrint>
    800056a4:	ffffc097          	auipc	ra,0xffffc
    800056a8:	b78080e7          	jalr	-1160(ra) # 8000121c <copy_and_swap>
    800056ac:	00050863          	beqz	a0,800056bc <_Z8printIntiii+0x50>
    800056b0:	ffffc097          	auipc	ra,0xffffc
    800056b4:	d1c080e7          	jalr	-740(ra) # 800013cc <_Z15thread_dispatchv>
    800056b8:	fddff06f          	j	80005694 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    800056bc:	00098463          	beqz	s3,800056c4 <_Z8printIntiii+0x58>
    800056c0:	0804c463          	bltz	s1,80005748 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800056c4:	0004851b          	sext.w	a0,s1
    neg = 0;
    800056c8:	00000593          	li	a1,0
    }

    i = 0;
    800056cc:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    800056d0:	0009079b          	sext.w	a5,s2
    800056d4:	0325773b          	remuw	a4,a0,s2
    800056d8:	00048613          	mv	a2,s1
    800056dc:	0014849b          	addiw	s1,s1,1
    800056e0:	02071693          	slli	a3,a4,0x20
    800056e4:	0206d693          	srli	a3,a3,0x20
    800056e8:	00006717          	auipc	a4,0x6
    800056ec:	26870713          	addi	a4,a4,616 # 8000b950 <digits>
    800056f0:	00d70733          	add	a4,a4,a3
    800056f4:	00074683          	lbu	a3,0(a4)
    800056f8:	fd040713          	addi	a4,s0,-48
    800056fc:	00c70733          	add	a4,a4,a2
    80005700:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005704:	0005071b          	sext.w	a4,a0
    80005708:	0325553b          	divuw	a0,a0,s2
    8000570c:	fcf772e3          	bgeu	a4,a5,800056d0 <_Z8printIntiii+0x64>
    if(neg)
    80005710:	00058c63          	beqz	a1,80005728 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005714:	fd040793          	addi	a5,s0,-48
    80005718:	009784b3          	add	s1,a5,s1
    8000571c:	02d00793          	li	a5,45
    80005720:	fef48823          	sb	a5,-16(s1)
    80005724:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005728:	fff4849b          	addiw	s1,s1,-1
    8000572c:	0204c463          	bltz	s1,80005754 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80005730:	fd040793          	addi	a5,s0,-48
    80005734:	009787b3          	add	a5,a5,s1
    80005738:	ff07c503          	lbu	a0,-16(a5)
    8000573c:	ffffc097          	auipc	ra,0xffffc
    80005740:	f00080e7          	jalr	-256(ra) # 8000163c <_Z4putcc>
    80005744:	fe5ff06f          	j	80005728 <_Z8printIntiii+0xbc>
        x = -xx;
    80005748:	4090053b          	negw	a0,s1
        neg = 1;
    8000574c:	00100593          	li	a1,1
        x = -xx;
    80005750:	f7dff06f          	j	800056cc <_Z8printIntiii+0x60>

    UNLOCK();
    80005754:	00000613          	li	a2,0
    80005758:	00100593          	li	a1,1
    8000575c:	00006517          	auipc	a0,0x6
    80005760:	30c50513          	addi	a0,a0,780 # 8000ba68 <lockPrint>
    80005764:	ffffc097          	auipc	ra,0xffffc
    80005768:	ab8080e7          	jalr	-1352(ra) # 8000121c <copy_and_swap>
    8000576c:	fe0514e3          	bnez	a0,80005754 <_Z8printIntiii+0xe8>
    80005770:	03813083          	ld	ra,56(sp)
    80005774:	03013403          	ld	s0,48(sp)
    80005778:	02813483          	ld	s1,40(sp)
    8000577c:	02013903          	ld	s2,32(sp)
    80005780:	01813983          	ld	s3,24(sp)
    80005784:	04010113          	addi	sp,sp,64
    80005788:	00008067          	ret

000000008000578c <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    8000578c:	fd010113          	addi	sp,sp,-48
    80005790:	02113423          	sd	ra,40(sp)
    80005794:	02813023          	sd	s0,32(sp)
    80005798:	00913c23          	sd	s1,24(sp)
    8000579c:	01213823          	sd	s2,16(sp)
    800057a0:	01313423          	sd	s3,8(sp)
    800057a4:	03010413          	addi	s0,sp,48
    800057a8:	00050493          	mv	s1,a0
    800057ac:	00058913          	mv	s2,a1
    800057b0:	0015879b          	addiw	a5,a1,1
    800057b4:	0007851b          	sext.w	a0,a5
    800057b8:	00f4a023          	sw	a5,0(s1)
    800057bc:	0004a823          	sw	zero,16(s1)
    800057c0:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800057c4:	00251513          	slli	a0,a0,0x2
    800057c8:	ffffc097          	auipc	ra,0xffffc
    800057cc:	a90080e7          	jalr	-1392(ra) # 80001258 <_Z9mem_allocm>
    800057d0:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    800057d4:	01000513          	li	a0,16
    800057d8:	ffffd097          	auipc	ra,0xffffd
    800057dc:	a84080e7          	jalr	-1404(ra) # 8000225c <_Znwm>
    800057e0:	00050993          	mv	s3,a0
    800057e4:	00000593          	li	a1,0
    800057e8:	ffffd097          	auipc	ra,0xffffd
    800057ec:	c2c080e7          	jalr	-980(ra) # 80002414 <_ZN9SemaphoreC1Ej>
    800057f0:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    800057f4:	01000513          	li	a0,16
    800057f8:	ffffd097          	auipc	ra,0xffffd
    800057fc:	a64080e7          	jalr	-1436(ra) # 8000225c <_Znwm>
    80005800:	00050993          	mv	s3,a0
    80005804:	00090593          	mv	a1,s2
    80005808:	ffffd097          	auipc	ra,0xffffd
    8000580c:	c0c080e7          	jalr	-1012(ra) # 80002414 <_ZN9SemaphoreC1Ej>
    80005810:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005814:	01000513          	li	a0,16
    80005818:	ffffd097          	auipc	ra,0xffffd
    8000581c:	a44080e7          	jalr	-1468(ra) # 8000225c <_Znwm>
    80005820:	00050913          	mv	s2,a0
    80005824:	00100593          	li	a1,1
    80005828:	ffffd097          	auipc	ra,0xffffd
    8000582c:	bec080e7          	jalr	-1044(ra) # 80002414 <_ZN9SemaphoreC1Ej>
    80005830:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005834:	01000513          	li	a0,16
    80005838:	ffffd097          	auipc	ra,0xffffd
    8000583c:	a24080e7          	jalr	-1500(ra) # 8000225c <_Znwm>
    80005840:	00050913          	mv	s2,a0
    80005844:	00100593          	li	a1,1
    80005848:	ffffd097          	auipc	ra,0xffffd
    8000584c:	bcc080e7          	jalr	-1076(ra) # 80002414 <_ZN9SemaphoreC1Ej>
    80005850:	0324b823          	sd	s2,48(s1)
}
    80005854:	02813083          	ld	ra,40(sp)
    80005858:	02013403          	ld	s0,32(sp)
    8000585c:	01813483          	ld	s1,24(sp)
    80005860:	01013903          	ld	s2,16(sp)
    80005864:	00813983          	ld	s3,8(sp)
    80005868:	03010113          	addi	sp,sp,48
    8000586c:	00008067          	ret
    80005870:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005874:	00098513          	mv	a0,s3
    80005878:	ffffd097          	auipc	ra,0xffffd
    8000587c:	a0c080e7          	jalr	-1524(ra) # 80002284 <_ZdlPv>
    80005880:	00048513          	mv	a0,s1
    80005884:	00007097          	auipc	ra,0x7
    80005888:	2c4080e7          	jalr	708(ra) # 8000cb48 <_Unwind_Resume>
    8000588c:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005890:	00098513          	mv	a0,s3
    80005894:	ffffd097          	auipc	ra,0xffffd
    80005898:	9f0080e7          	jalr	-1552(ra) # 80002284 <_ZdlPv>
    8000589c:	00048513          	mv	a0,s1
    800058a0:	00007097          	auipc	ra,0x7
    800058a4:	2a8080e7          	jalr	680(ra) # 8000cb48 <_Unwind_Resume>
    800058a8:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    800058ac:	00090513          	mv	a0,s2
    800058b0:	ffffd097          	auipc	ra,0xffffd
    800058b4:	9d4080e7          	jalr	-1580(ra) # 80002284 <_ZdlPv>
    800058b8:	00048513          	mv	a0,s1
    800058bc:	00007097          	auipc	ra,0x7
    800058c0:	28c080e7          	jalr	652(ra) # 8000cb48 <_Unwind_Resume>
    800058c4:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800058c8:	00090513          	mv	a0,s2
    800058cc:	ffffd097          	auipc	ra,0xffffd
    800058d0:	9b8080e7          	jalr	-1608(ra) # 80002284 <_ZdlPv>
    800058d4:	00048513          	mv	a0,s1
    800058d8:	00007097          	auipc	ra,0x7
    800058dc:	270080e7          	jalr	624(ra) # 8000cb48 <_Unwind_Resume>

00000000800058e0 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    800058e0:	fe010113          	addi	sp,sp,-32
    800058e4:	00113c23          	sd	ra,24(sp)
    800058e8:	00813823          	sd	s0,16(sp)
    800058ec:	00913423          	sd	s1,8(sp)
    800058f0:	01213023          	sd	s2,0(sp)
    800058f4:	02010413          	addi	s0,sp,32
    800058f8:	00050493          	mv	s1,a0
    800058fc:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005900:	01853503          	ld	a0,24(a0)
    80005904:	ffffd097          	auipc	ra,0xffffd
    80005908:	b4c080e7          	jalr	-1204(ra) # 80002450 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    8000590c:	0304b503          	ld	a0,48(s1)
    80005910:	ffffd097          	auipc	ra,0xffffd
    80005914:	b40080e7          	jalr	-1216(ra) # 80002450 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005918:	0084b783          	ld	a5,8(s1)
    8000591c:	0144a703          	lw	a4,20(s1)
    80005920:	00271713          	slli	a4,a4,0x2
    80005924:	00e787b3          	add	a5,a5,a4
    80005928:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000592c:	0144a783          	lw	a5,20(s1)
    80005930:	0017879b          	addiw	a5,a5,1
    80005934:	0004a703          	lw	a4,0(s1)
    80005938:	02e7e7bb          	remw	a5,a5,a4
    8000593c:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005940:	0304b503          	ld	a0,48(s1)
    80005944:	ffffd097          	auipc	ra,0xffffd
    80005948:	b44080e7          	jalr	-1212(ra) # 80002488 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    8000594c:	0204b503          	ld	a0,32(s1)
    80005950:	ffffd097          	auipc	ra,0xffffd
    80005954:	b38080e7          	jalr	-1224(ra) # 80002488 <_ZN9Semaphore6signalEv>

}
    80005958:	01813083          	ld	ra,24(sp)
    8000595c:	01013403          	ld	s0,16(sp)
    80005960:	00813483          	ld	s1,8(sp)
    80005964:	00013903          	ld	s2,0(sp)
    80005968:	02010113          	addi	sp,sp,32
    8000596c:	00008067          	ret

0000000080005970 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005970:	fe010113          	addi	sp,sp,-32
    80005974:	00113c23          	sd	ra,24(sp)
    80005978:	00813823          	sd	s0,16(sp)
    8000597c:	00913423          	sd	s1,8(sp)
    80005980:	01213023          	sd	s2,0(sp)
    80005984:	02010413          	addi	s0,sp,32
    80005988:	00050493          	mv	s1,a0
    itemAvailable->wait();
    8000598c:	02053503          	ld	a0,32(a0)
    80005990:	ffffd097          	auipc	ra,0xffffd
    80005994:	ac0080e7          	jalr	-1344(ra) # 80002450 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005998:	0284b503          	ld	a0,40(s1)
    8000599c:	ffffd097          	auipc	ra,0xffffd
    800059a0:	ab4080e7          	jalr	-1356(ra) # 80002450 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    800059a4:	0084b703          	ld	a4,8(s1)
    800059a8:	0104a783          	lw	a5,16(s1)
    800059ac:	00279693          	slli	a3,a5,0x2
    800059b0:	00d70733          	add	a4,a4,a3
    800059b4:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800059b8:	0017879b          	addiw	a5,a5,1
    800059bc:	0004a703          	lw	a4,0(s1)
    800059c0:	02e7e7bb          	remw	a5,a5,a4
    800059c4:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800059c8:	0284b503          	ld	a0,40(s1)
    800059cc:	ffffd097          	auipc	ra,0xffffd
    800059d0:	abc080e7          	jalr	-1348(ra) # 80002488 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800059d4:	0184b503          	ld	a0,24(s1)
    800059d8:	ffffd097          	auipc	ra,0xffffd
    800059dc:	ab0080e7          	jalr	-1360(ra) # 80002488 <_ZN9Semaphore6signalEv>

    return ret;
}
    800059e0:	00090513          	mv	a0,s2
    800059e4:	01813083          	ld	ra,24(sp)
    800059e8:	01013403          	ld	s0,16(sp)
    800059ec:	00813483          	ld	s1,8(sp)
    800059f0:	00013903          	ld	s2,0(sp)
    800059f4:	02010113          	addi	sp,sp,32
    800059f8:	00008067          	ret

00000000800059fc <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800059fc:	fe010113          	addi	sp,sp,-32
    80005a00:	00113c23          	sd	ra,24(sp)
    80005a04:	00813823          	sd	s0,16(sp)
    80005a08:	00913423          	sd	s1,8(sp)
    80005a0c:	01213023          	sd	s2,0(sp)
    80005a10:	02010413          	addi	s0,sp,32
    80005a14:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005a18:	02853503          	ld	a0,40(a0)
    80005a1c:	ffffd097          	auipc	ra,0xffffd
    80005a20:	a34080e7          	jalr	-1484(ra) # 80002450 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005a24:	0304b503          	ld	a0,48(s1)
    80005a28:	ffffd097          	auipc	ra,0xffffd
    80005a2c:	a28080e7          	jalr	-1496(ra) # 80002450 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005a30:	0144a783          	lw	a5,20(s1)
    80005a34:	0104a903          	lw	s2,16(s1)
    80005a38:	0327ce63          	blt	a5,s2,80005a74 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005a3c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005a40:	0304b503          	ld	a0,48(s1)
    80005a44:	ffffd097          	auipc	ra,0xffffd
    80005a48:	a44080e7          	jalr	-1468(ra) # 80002488 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005a4c:	0284b503          	ld	a0,40(s1)
    80005a50:	ffffd097          	auipc	ra,0xffffd
    80005a54:	a38080e7          	jalr	-1480(ra) # 80002488 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005a58:	00090513          	mv	a0,s2
    80005a5c:	01813083          	ld	ra,24(sp)
    80005a60:	01013403          	ld	s0,16(sp)
    80005a64:	00813483          	ld	s1,8(sp)
    80005a68:	00013903          	ld	s2,0(sp)
    80005a6c:	02010113          	addi	sp,sp,32
    80005a70:	00008067          	ret
        ret = cap - head + tail;
    80005a74:	0004a703          	lw	a4,0(s1)
    80005a78:	4127093b          	subw	s2,a4,s2
    80005a7c:	00f9093b          	addw	s2,s2,a5
    80005a80:	fc1ff06f          	j	80005a40 <_ZN9BufferCPP6getCntEv+0x44>

0000000080005a84 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005a84:	fe010113          	addi	sp,sp,-32
    80005a88:	00113c23          	sd	ra,24(sp)
    80005a8c:	00813823          	sd	s0,16(sp)
    80005a90:	00913423          	sd	s1,8(sp)
    80005a94:	02010413          	addi	s0,sp,32
    80005a98:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005a9c:	00a00513          	li	a0,10
    80005aa0:	ffffd097          	auipc	ra,0xffffd
    80005aa4:	ad8080e7          	jalr	-1320(ra) # 80002578 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005aa8:	00004517          	auipc	a0,0x4
    80005aac:	86850513          	addi	a0,a0,-1944 # 80009310 <CONSOLE_STATUS+0x300>
    80005ab0:	00000097          	auipc	ra,0x0
    80005ab4:	a0c080e7          	jalr	-1524(ra) # 800054bc <_Z11printStringPKc>
    while (getCnt()) {
    80005ab8:	00048513          	mv	a0,s1
    80005abc:	00000097          	auipc	ra,0x0
    80005ac0:	f40080e7          	jalr	-192(ra) # 800059fc <_ZN9BufferCPP6getCntEv>
    80005ac4:	02050c63          	beqz	a0,80005afc <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005ac8:	0084b783          	ld	a5,8(s1)
    80005acc:	0104a703          	lw	a4,16(s1)
    80005ad0:	00271713          	slli	a4,a4,0x2
    80005ad4:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005ad8:	0007c503          	lbu	a0,0(a5)
    80005adc:	ffffd097          	auipc	ra,0xffffd
    80005ae0:	a9c080e7          	jalr	-1380(ra) # 80002578 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005ae4:	0104a783          	lw	a5,16(s1)
    80005ae8:	0017879b          	addiw	a5,a5,1
    80005aec:	0004a703          	lw	a4,0(s1)
    80005af0:	02e7e7bb          	remw	a5,a5,a4
    80005af4:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005af8:	fc1ff06f          	j	80005ab8 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005afc:	02100513          	li	a0,33
    80005b00:	ffffd097          	auipc	ra,0xffffd
    80005b04:	a78080e7          	jalr	-1416(ra) # 80002578 <_ZN7Console4putcEc>
    Console::putc('\n');
    80005b08:	00a00513          	li	a0,10
    80005b0c:	ffffd097          	auipc	ra,0xffffd
    80005b10:	a6c080e7          	jalr	-1428(ra) # 80002578 <_ZN7Console4putcEc>
    mem_free(buffer);
    80005b14:	0084b503          	ld	a0,8(s1)
    80005b18:	ffffb097          	auipc	ra,0xffffb
    80005b1c:	794080e7          	jalr	1940(ra) # 800012ac <_Z8mem_freePv>
    delete itemAvailable;
    80005b20:	0204b503          	ld	a0,32(s1)
    80005b24:	00050863          	beqz	a0,80005b34 <_ZN9BufferCPPD1Ev+0xb0>
    80005b28:	00053783          	ld	a5,0(a0)
    80005b2c:	0087b783          	ld	a5,8(a5)
    80005b30:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005b34:	0184b503          	ld	a0,24(s1)
    80005b38:	00050863          	beqz	a0,80005b48 <_ZN9BufferCPPD1Ev+0xc4>
    80005b3c:	00053783          	ld	a5,0(a0)
    80005b40:	0087b783          	ld	a5,8(a5)
    80005b44:	000780e7          	jalr	a5
    delete mutexTail;
    80005b48:	0304b503          	ld	a0,48(s1)
    80005b4c:	00050863          	beqz	a0,80005b5c <_ZN9BufferCPPD1Ev+0xd8>
    80005b50:	00053783          	ld	a5,0(a0)
    80005b54:	0087b783          	ld	a5,8(a5)
    80005b58:	000780e7          	jalr	a5
    delete mutexHead;
    80005b5c:	0284b503          	ld	a0,40(s1)
    80005b60:	00050863          	beqz	a0,80005b70 <_ZN9BufferCPPD1Ev+0xec>
    80005b64:	00053783          	ld	a5,0(a0)
    80005b68:	0087b783          	ld	a5,8(a5)
    80005b6c:	000780e7          	jalr	a5
}
    80005b70:	01813083          	ld	ra,24(sp)
    80005b74:	01013403          	ld	s0,16(sp)
    80005b78:	00813483          	ld	s1,8(sp)
    80005b7c:	02010113          	addi	sp,sp,32
    80005b80:	00008067          	ret

0000000080005b84 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80005b84:	fe010113          	addi	sp,sp,-32
    80005b88:	00113c23          	sd	ra,24(sp)
    80005b8c:	00813823          	sd	s0,16(sp)
    80005b90:	00913423          	sd	s1,8(sp)
    80005b94:	01213023          	sd	s2,0(sp)
    80005b98:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80005b9c:	00003517          	auipc	a0,0x3
    80005ba0:	78c50513          	addi	a0,a0,1932 # 80009328 <CONSOLE_STATUS+0x318>
    80005ba4:	00000097          	auipc	ra,0x0
    80005ba8:	918080e7          	jalr	-1768(ra) # 800054bc <_Z11printStringPKc>
    int test = getc() - '0';
    80005bac:	ffffc097          	auipc	ra,0xffffc
    80005bb0:	a44080e7          	jalr	-1468(ra) # 800015f0 <_Z4getcv>
    80005bb4:	0005091b          	sext.w	s2,a0
    80005bb8:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80005bbc:	ffffc097          	auipc	ra,0xffffc
    80005bc0:	a34080e7          	jalr	-1484(ra) # 800015f0 <_Z4getcv>


    if ((test >= 1 && test <= 2) || test == 7) {
    80005bc4:	fcf9071b          	addiw	a4,s2,-49
    80005bc8:	00100793          	li	a5,1
    80005bcc:	04e7f063          	bgeu	a5,a4,80005c0c <_Z8userMainv+0x88>
    80005bd0:	00700793          	li	a5,7
    80005bd4:	02f48c63          	beq	s1,a5,80005c0c <_Z8userMainv+0x88>
            printString("Nije navedeno da je zadatak 2 implementiran\n");
            return;
        }
    }

    if (test >= 3 && test <= 4) {
    80005bd8:	fcd9079b          	addiw	a5,s2,-51
    80005bdc:	00100693          	li	a3,1
    80005be0:	04f6fa63          	bgeu	a3,a5,80005c34 <_Z8userMainv+0xb0>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    80005be4:	fcb9091b          	addiw	s2,s2,-53
    80005be8:	00100793          	li	a5,1
    80005bec:	0527fe63          	bgeu	a5,s2,80005c48 <_Z8userMainv+0xc4>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80005bf0:	00600793          	li	a5,6
    80005bf4:	02e7f463          	bgeu	a5,a4,80005c1c <_Z8userMainv+0x98>
            printString("Test se nije uspesno zavrsio\n");
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    80005bf8:	00003517          	auipc	a0,0x3
    80005bfc:	7e050513          	addi	a0,a0,2016 # 800093d8 <CONSOLE_STATUS+0x3c8>
    80005c00:	00000097          	auipc	ra,0x0
    80005c04:	8bc080e7          	jalr	-1860(ra) # 800054bc <_Z11printStringPKc>
    80005c08:	0140006f          	j	80005c1c <_Z8userMainv+0x98>
            printString("Nije navedeno da je zadatak 2 implementiran\n");
    80005c0c:	00003517          	auipc	a0,0x3
    80005c10:	73c50513          	addi	a0,a0,1852 # 80009348 <CONSOLE_STATUS+0x338>
    80005c14:	00000097          	auipc	ra,0x0
    80005c18:	8a8080e7          	jalr	-1880(ra) # 800054bc <_Z11printStringPKc>
    }
    80005c1c:	01813083          	ld	ra,24(sp)
    80005c20:	01013403          	ld	s0,16(sp)
    80005c24:	00813483          	ld	s1,8(sp)
    80005c28:	00013903          	ld	s2,0(sp)
    80005c2c:	02010113          	addi	sp,sp,32
    80005c30:	00008067          	ret
            printString("Nije navedeno da je zadatak 3 implementiran\n");
    80005c34:	00003517          	auipc	a0,0x3
    80005c38:	74450513          	addi	a0,a0,1860 # 80009378 <CONSOLE_STATUS+0x368>
    80005c3c:	00000097          	auipc	ra,0x0
    80005c40:	880080e7          	jalr	-1920(ra) # 800054bc <_Z11printStringPKc>
            return;
    80005c44:	fd9ff06f          	j	80005c1c <_Z8userMainv+0x98>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    80005c48:	00003517          	auipc	a0,0x3
    80005c4c:	76050513          	addi	a0,a0,1888 # 800093a8 <CONSOLE_STATUS+0x398>
    80005c50:	00000097          	auipc	ra,0x0
    80005c54:	86c080e7          	jalr	-1940(ra) # 800054bc <_Z11printStringPKc>
            return;
    80005c58:	fc5ff06f          	j	80005c1c <_Z8userMainv+0x98>

0000000080005c5c <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80005c5c:	fe010113          	addi	sp,sp,-32
    80005c60:	00113c23          	sd	ra,24(sp)
    80005c64:	00813823          	sd	s0,16(sp)
    80005c68:	00913423          	sd	s1,8(sp)
    80005c6c:	01213023          	sd	s2,0(sp)
    80005c70:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005c74:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005c78:	00600493          	li	s1,6
    while (--i > 0) {
    80005c7c:	fff4849b          	addiw	s1,s1,-1
    80005c80:	04905463          	blez	s1,80005cc8 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80005c84:	00003517          	auipc	a0,0x3
    80005c88:	77c50513          	addi	a0,a0,1916 # 80009400 <CONSOLE_STATUS+0x3f0>
    80005c8c:	00000097          	auipc	ra,0x0
    80005c90:	830080e7          	jalr	-2000(ra) # 800054bc <_Z11printStringPKc>
        printInt(sleep_time);
    80005c94:	00000613          	li	a2,0
    80005c98:	00a00593          	li	a1,10
    80005c9c:	0009051b          	sext.w	a0,s2
    80005ca0:	00000097          	auipc	ra,0x0
    80005ca4:	9cc080e7          	jalr	-1588(ra) # 8000566c <_Z8printIntiii>
        printString(" !\n");
    80005ca8:	00003517          	auipc	a0,0x3
    80005cac:	76050513          	addi	a0,a0,1888 # 80009408 <CONSOLE_STATUS+0x3f8>
    80005cb0:	00000097          	auipc	ra,0x0
    80005cb4:	80c080e7          	jalr	-2036(ra) # 800054bc <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005cb8:	00090513          	mv	a0,s2
    80005cbc:	ffffc097          	auipc	ra,0xffffc
    80005cc0:	918080e7          	jalr	-1768(ra) # 800015d4 <_Z10time_sleepm>
    while (--i > 0) {
    80005cc4:	fb9ff06f          	j	80005c7c <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005cc8:	00a00793          	li	a5,10
    80005ccc:	02f95933          	divu	s2,s2,a5
    80005cd0:	fff90913          	addi	s2,s2,-1
    80005cd4:	00006797          	auipc	a5,0x6
    80005cd8:	d9c78793          	addi	a5,a5,-612 # 8000ba70 <_ZL8finished>
    80005cdc:	01278933          	add	s2,a5,s2
    80005ce0:	00100793          	li	a5,1
    80005ce4:	00f90023          	sb	a5,0(s2)
}
    80005ce8:	01813083          	ld	ra,24(sp)
    80005cec:	01013403          	ld	s0,16(sp)
    80005cf0:	00813483          	ld	s1,8(sp)
    80005cf4:	00013903          	ld	s2,0(sp)
    80005cf8:	02010113          	addi	sp,sp,32
    80005cfc:	00008067          	ret

0000000080005d00 <_Z12testSleepingv>:

void testSleeping() {
    80005d00:	fc010113          	addi	sp,sp,-64
    80005d04:	02113c23          	sd	ra,56(sp)
    80005d08:	02813823          	sd	s0,48(sp)
    80005d0c:	02913423          	sd	s1,40(sp)
    80005d10:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005d14:	00a00793          	li	a5,10
    80005d18:	fcf43823          	sd	a5,-48(s0)
    80005d1c:	01400793          	li	a5,20
    80005d20:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005d24:	00000493          	li	s1,0
    80005d28:	02c0006f          	j	80005d54 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005d2c:	00349793          	slli	a5,s1,0x3
    80005d30:	fd040613          	addi	a2,s0,-48
    80005d34:	00f60633          	add	a2,a2,a5
    80005d38:	00000597          	auipc	a1,0x0
    80005d3c:	f2458593          	addi	a1,a1,-220 # 80005c5c <_ZL9sleepyRunPv>
    80005d40:	fc040513          	addi	a0,s0,-64
    80005d44:	00f50533          	add	a0,a0,a5
    80005d48:	ffffb097          	auipc	ra,0xffffb
    80005d4c:	5b0080e7          	jalr	1456(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005d50:	0014849b          	addiw	s1,s1,1
    80005d54:	00100793          	li	a5,1
    80005d58:	fc97dae3          	bge	a5,s1,80005d2c <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80005d5c:	00006797          	auipc	a5,0x6
    80005d60:	d147c783          	lbu	a5,-748(a5) # 8000ba70 <_ZL8finished>
    80005d64:	fe078ce3          	beqz	a5,80005d5c <_Z12testSleepingv+0x5c>
    80005d68:	00006797          	auipc	a5,0x6
    80005d6c:	d097c783          	lbu	a5,-759(a5) # 8000ba71 <_ZL8finished+0x1>
    80005d70:	fe0786e3          	beqz	a5,80005d5c <_Z12testSleepingv+0x5c>
}
    80005d74:	03813083          	ld	ra,56(sp)
    80005d78:	03013403          	ld	s0,48(sp)
    80005d7c:	02813483          	ld	s1,40(sp)
    80005d80:	04010113          	addi	sp,sp,64
    80005d84:	00008067          	ret

0000000080005d88 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005d88:	fe010113          	addi	sp,sp,-32
    80005d8c:	00113c23          	sd	ra,24(sp)
    80005d90:	00813823          	sd	s0,16(sp)
    80005d94:	00913423          	sd	s1,8(sp)
    80005d98:	01213023          	sd	s2,0(sp)
    80005d9c:	02010413          	addi	s0,sp,32
    80005da0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005da4:	00100793          	li	a5,1
    80005da8:	02a7f863          	bgeu	a5,a0,80005dd8 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005dac:	00a00793          	li	a5,10
    80005db0:	02f577b3          	remu	a5,a0,a5
    80005db4:	02078e63          	beqz	a5,80005df0 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005db8:	fff48513          	addi	a0,s1,-1
    80005dbc:	00000097          	auipc	ra,0x0
    80005dc0:	fcc080e7          	jalr	-52(ra) # 80005d88 <_ZL9fibonaccim>
    80005dc4:	00050913          	mv	s2,a0
    80005dc8:	ffe48513          	addi	a0,s1,-2
    80005dcc:	00000097          	auipc	ra,0x0
    80005dd0:	fbc080e7          	jalr	-68(ra) # 80005d88 <_ZL9fibonaccim>
    80005dd4:	00a90533          	add	a0,s2,a0
}
    80005dd8:	01813083          	ld	ra,24(sp)
    80005ddc:	01013403          	ld	s0,16(sp)
    80005de0:	00813483          	ld	s1,8(sp)
    80005de4:	00013903          	ld	s2,0(sp)
    80005de8:	02010113          	addi	sp,sp,32
    80005dec:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005df0:	ffffb097          	auipc	ra,0xffffb
    80005df4:	5dc080e7          	jalr	1500(ra) # 800013cc <_Z15thread_dispatchv>
    80005df8:	fc1ff06f          	j	80005db8 <_ZL9fibonaccim+0x30>

0000000080005dfc <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005dfc:	fe010113          	addi	sp,sp,-32
    80005e00:	00113c23          	sd	ra,24(sp)
    80005e04:	00813823          	sd	s0,16(sp)
    80005e08:	00913423          	sd	s1,8(sp)
    80005e0c:	01213023          	sd	s2,0(sp)
    80005e10:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005e14:	00a00493          	li	s1,10
    80005e18:	0400006f          	j	80005e58 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005e1c:	00003517          	auipc	a0,0x3
    80005e20:	45c50513          	addi	a0,a0,1116 # 80009278 <CONSOLE_STATUS+0x268>
    80005e24:	fffff097          	auipc	ra,0xfffff
    80005e28:	698080e7          	jalr	1688(ra) # 800054bc <_Z11printStringPKc>
    80005e2c:	00000613          	li	a2,0
    80005e30:	00a00593          	li	a1,10
    80005e34:	00048513          	mv	a0,s1
    80005e38:	00000097          	auipc	ra,0x0
    80005e3c:	834080e7          	jalr	-1996(ra) # 8000566c <_Z8printIntiii>
    80005e40:	00003517          	auipc	a0,0x3
    80005e44:	32850513          	addi	a0,a0,808 # 80009168 <CONSOLE_STATUS+0x158>
    80005e48:	fffff097          	auipc	ra,0xfffff
    80005e4c:	674080e7          	jalr	1652(ra) # 800054bc <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005e50:	0014849b          	addiw	s1,s1,1
    80005e54:	0ff4f493          	andi	s1,s1,255
    80005e58:	00c00793          	li	a5,12
    80005e5c:	fc97f0e3          	bgeu	a5,s1,80005e1c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005e60:	00003517          	auipc	a0,0x3
    80005e64:	42050513          	addi	a0,a0,1056 # 80009280 <CONSOLE_STATUS+0x270>
    80005e68:	fffff097          	auipc	ra,0xfffff
    80005e6c:	654080e7          	jalr	1620(ra) # 800054bc <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005e70:	00500313          	li	t1,5
    thread_dispatch();
    80005e74:	ffffb097          	auipc	ra,0xffffb
    80005e78:	558080e7          	jalr	1368(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005e7c:	01000513          	li	a0,16
    80005e80:	00000097          	auipc	ra,0x0
    80005e84:	f08080e7          	jalr	-248(ra) # 80005d88 <_ZL9fibonaccim>
    80005e88:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005e8c:	00003517          	auipc	a0,0x3
    80005e90:	40450513          	addi	a0,a0,1028 # 80009290 <CONSOLE_STATUS+0x280>
    80005e94:	fffff097          	auipc	ra,0xfffff
    80005e98:	628080e7          	jalr	1576(ra) # 800054bc <_Z11printStringPKc>
    80005e9c:	00000613          	li	a2,0
    80005ea0:	00a00593          	li	a1,10
    80005ea4:	0009051b          	sext.w	a0,s2
    80005ea8:	fffff097          	auipc	ra,0xfffff
    80005eac:	7c4080e7          	jalr	1988(ra) # 8000566c <_Z8printIntiii>
    80005eb0:	00003517          	auipc	a0,0x3
    80005eb4:	2b850513          	addi	a0,a0,696 # 80009168 <CONSOLE_STATUS+0x158>
    80005eb8:	fffff097          	auipc	ra,0xfffff
    80005ebc:	604080e7          	jalr	1540(ra) # 800054bc <_Z11printStringPKc>
    80005ec0:	0400006f          	j	80005f00 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005ec4:	00003517          	auipc	a0,0x3
    80005ec8:	3b450513          	addi	a0,a0,948 # 80009278 <CONSOLE_STATUS+0x268>
    80005ecc:	fffff097          	auipc	ra,0xfffff
    80005ed0:	5f0080e7          	jalr	1520(ra) # 800054bc <_Z11printStringPKc>
    80005ed4:	00000613          	li	a2,0
    80005ed8:	00a00593          	li	a1,10
    80005edc:	00048513          	mv	a0,s1
    80005ee0:	fffff097          	auipc	ra,0xfffff
    80005ee4:	78c080e7          	jalr	1932(ra) # 8000566c <_Z8printIntiii>
    80005ee8:	00003517          	auipc	a0,0x3
    80005eec:	28050513          	addi	a0,a0,640 # 80009168 <CONSOLE_STATUS+0x158>
    80005ef0:	fffff097          	auipc	ra,0xfffff
    80005ef4:	5cc080e7          	jalr	1484(ra) # 800054bc <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005ef8:	0014849b          	addiw	s1,s1,1
    80005efc:	0ff4f493          	andi	s1,s1,255
    80005f00:	00f00793          	li	a5,15
    80005f04:	fc97f0e3          	bgeu	a5,s1,80005ec4 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005f08:	00003517          	auipc	a0,0x3
    80005f0c:	39850513          	addi	a0,a0,920 # 800092a0 <CONSOLE_STATUS+0x290>
    80005f10:	fffff097          	auipc	ra,0xfffff
    80005f14:	5ac080e7          	jalr	1452(ra) # 800054bc <_Z11printStringPKc>
    finishedD = true;
    80005f18:	00100793          	li	a5,1
    80005f1c:	00006717          	auipc	a4,0x6
    80005f20:	b4f70b23          	sb	a5,-1194(a4) # 8000ba72 <_ZL9finishedD>
    thread_dispatch();
    80005f24:	ffffb097          	auipc	ra,0xffffb
    80005f28:	4a8080e7          	jalr	1192(ra) # 800013cc <_Z15thread_dispatchv>
}
    80005f2c:	01813083          	ld	ra,24(sp)
    80005f30:	01013403          	ld	s0,16(sp)
    80005f34:	00813483          	ld	s1,8(sp)
    80005f38:	00013903          	ld	s2,0(sp)
    80005f3c:	02010113          	addi	sp,sp,32
    80005f40:	00008067          	ret

0000000080005f44 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005f44:	fe010113          	addi	sp,sp,-32
    80005f48:	00113c23          	sd	ra,24(sp)
    80005f4c:	00813823          	sd	s0,16(sp)
    80005f50:	00913423          	sd	s1,8(sp)
    80005f54:	01213023          	sd	s2,0(sp)
    80005f58:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005f5c:	00000493          	li	s1,0
    80005f60:	0400006f          	j	80005fa0 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005f64:	00003517          	auipc	a0,0x3
    80005f68:	2e450513          	addi	a0,a0,740 # 80009248 <CONSOLE_STATUS+0x238>
    80005f6c:	fffff097          	auipc	ra,0xfffff
    80005f70:	550080e7          	jalr	1360(ra) # 800054bc <_Z11printStringPKc>
    80005f74:	00000613          	li	a2,0
    80005f78:	00a00593          	li	a1,10
    80005f7c:	00048513          	mv	a0,s1
    80005f80:	fffff097          	auipc	ra,0xfffff
    80005f84:	6ec080e7          	jalr	1772(ra) # 8000566c <_Z8printIntiii>
    80005f88:	00003517          	auipc	a0,0x3
    80005f8c:	1e050513          	addi	a0,a0,480 # 80009168 <CONSOLE_STATUS+0x158>
    80005f90:	fffff097          	auipc	ra,0xfffff
    80005f94:	52c080e7          	jalr	1324(ra) # 800054bc <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005f98:	0014849b          	addiw	s1,s1,1
    80005f9c:	0ff4f493          	andi	s1,s1,255
    80005fa0:	00200793          	li	a5,2
    80005fa4:	fc97f0e3          	bgeu	a5,s1,80005f64 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005fa8:	00003517          	auipc	a0,0x3
    80005fac:	2a850513          	addi	a0,a0,680 # 80009250 <CONSOLE_STATUS+0x240>
    80005fb0:	fffff097          	auipc	ra,0xfffff
    80005fb4:	50c080e7          	jalr	1292(ra) # 800054bc <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005fb8:	00700313          	li	t1,7
    thread_dispatch();
    80005fbc:	ffffb097          	auipc	ra,0xffffb
    80005fc0:	410080e7          	jalr	1040(ra) # 800013cc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005fc4:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005fc8:	00003517          	auipc	a0,0x3
    80005fcc:	29850513          	addi	a0,a0,664 # 80009260 <CONSOLE_STATUS+0x250>
    80005fd0:	fffff097          	auipc	ra,0xfffff
    80005fd4:	4ec080e7          	jalr	1260(ra) # 800054bc <_Z11printStringPKc>
    80005fd8:	00000613          	li	a2,0
    80005fdc:	00a00593          	li	a1,10
    80005fe0:	0009051b          	sext.w	a0,s2
    80005fe4:	fffff097          	auipc	ra,0xfffff
    80005fe8:	688080e7          	jalr	1672(ra) # 8000566c <_Z8printIntiii>
    80005fec:	00003517          	auipc	a0,0x3
    80005ff0:	17c50513          	addi	a0,a0,380 # 80009168 <CONSOLE_STATUS+0x158>
    80005ff4:	fffff097          	auipc	ra,0xfffff
    80005ff8:	4c8080e7          	jalr	1224(ra) # 800054bc <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005ffc:	00c00513          	li	a0,12
    80006000:	00000097          	auipc	ra,0x0
    80006004:	d88080e7          	jalr	-632(ra) # 80005d88 <_ZL9fibonaccim>
    80006008:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    8000600c:	00003517          	auipc	a0,0x3
    80006010:	25c50513          	addi	a0,a0,604 # 80009268 <CONSOLE_STATUS+0x258>
    80006014:	fffff097          	auipc	ra,0xfffff
    80006018:	4a8080e7          	jalr	1192(ra) # 800054bc <_Z11printStringPKc>
    8000601c:	00000613          	li	a2,0
    80006020:	00a00593          	li	a1,10
    80006024:	0009051b          	sext.w	a0,s2
    80006028:	fffff097          	auipc	ra,0xfffff
    8000602c:	644080e7          	jalr	1604(ra) # 8000566c <_Z8printIntiii>
    80006030:	00003517          	auipc	a0,0x3
    80006034:	13850513          	addi	a0,a0,312 # 80009168 <CONSOLE_STATUS+0x158>
    80006038:	fffff097          	auipc	ra,0xfffff
    8000603c:	484080e7          	jalr	1156(ra) # 800054bc <_Z11printStringPKc>
    80006040:	0400006f          	j	80006080 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80006044:	00003517          	auipc	a0,0x3
    80006048:	20450513          	addi	a0,a0,516 # 80009248 <CONSOLE_STATUS+0x238>
    8000604c:	fffff097          	auipc	ra,0xfffff
    80006050:	470080e7          	jalr	1136(ra) # 800054bc <_Z11printStringPKc>
    80006054:	00000613          	li	a2,0
    80006058:	00a00593          	li	a1,10
    8000605c:	00048513          	mv	a0,s1
    80006060:	fffff097          	auipc	ra,0xfffff
    80006064:	60c080e7          	jalr	1548(ra) # 8000566c <_Z8printIntiii>
    80006068:	00003517          	auipc	a0,0x3
    8000606c:	10050513          	addi	a0,a0,256 # 80009168 <CONSOLE_STATUS+0x158>
    80006070:	fffff097          	auipc	ra,0xfffff
    80006074:	44c080e7          	jalr	1100(ra) # 800054bc <_Z11printStringPKc>
    for (; i < 6; i++) {
    80006078:	0014849b          	addiw	s1,s1,1
    8000607c:	0ff4f493          	andi	s1,s1,255
    80006080:	00500793          	li	a5,5
    80006084:	fc97f0e3          	bgeu	a5,s1,80006044 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80006088:	00003517          	auipc	a0,0x3
    8000608c:	19850513          	addi	a0,a0,408 # 80009220 <CONSOLE_STATUS+0x210>
    80006090:	fffff097          	auipc	ra,0xfffff
    80006094:	42c080e7          	jalr	1068(ra) # 800054bc <_Z11printStringPKc>
    finishedC = true;
    80006098:	00100793          	li	a5,1
    8000609c:	00006717          	auipc	a4,0x6
    800060a0:	9cf70ba3          	sb	a5,-1577(a4) # 8000ba73 <_ZL9finishedC>
    thread_dispatch();
    800060a4:	ffffb097          	auipc	ra,0xffffb
    800060a8:	328080e7          	jalr	808(ra) # 800013cc <_Z15thread_dispatchv>
}
    800060ac:	01813083          	ld	ra,24(sp)
    800060b0:	01013403          	ld	s0,16(sp)
    800060b4:	00813483          	ld	s1,8(sp)
    800060b8:	00013903          	ld	s2,0(sp)
    800060bc:	02010113          	addi	sp,sp,32
    800060c0:	00008067          	ret

00000000800060c4 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800060c4:	fe010113          	addi	sp,sp,-32
    800060c8:	00113c23          	sd	ra,24(sp)
    800060cc:	00813823          	sd	s0,16(sp)
    800060d0:	00913423          	sd	s1,8(sp)
    800060d4:	01213023          	sd	s2,0(sp)
    800060d8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800060dc:	00000913          	li	s2,0
    800060e0:	0400006f          	j	80006120 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    800060e4:	ffffb097          	auipc	ra,0xffffb
    800060e8:	2e8080e7          	jalr	744(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800060ec:	00148493          	addi	s1,s1,1
    800060f0:	000027b7          	lui	a5,0x2
    800060f4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800060f8:	0097ee63          	bltu	a5,s1,80006114 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800060fc:	00000713          	li	a4,0
    80006100:	000077b7          	lui	a5,0x7
    80006104:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006108:	fce7eee3          	bltu	a5,a4,800060e4 <_ZL11workerBodyBPv+0x20>
    8000610c:	00170713          	addi	a4,a4,1
    80006110:	ff1ff06f          	j	80006100 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80006114:	00a00793          	li	a5,10
    80006118:	04f90663          	beq	s2,a5,80006164 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    8000611c:	00190913          	addi	s2,s2,1
    80006120:	00f00793          	li	a5,15
    80006124:	0527e463          	bltu	a5,s2,8000616c <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80006128:	00003517          	auipc	a0,0x3
    8000612c:	10850513          	addi	a0,a0,264 # 80009230 <CONSOLE_STATUS+0x220>
    80006130:	fffff097          	auipc	ra,0xfffff
    80006134:	38c080e7          	jalr	908(ra) # 800054bc <_Z11printStringPKc>
    80006138:	00000613          	li	a2,0
    8000613c:	00a00593          	li	a1,10
    80006140:	0009051b          	sext.w	a0,s2
    80006144:	fffff097          	auipc	ra,0xfffff
    80006148:	528080e7          	jalr	1320(ra) # 8000566c <_Z8printIntiii>
    8000614c:	00003517          	auipc	a0,0x3
    80006150:	01c50513          	addi	a0,a0,28 # 80009168 <CONSOLE_STATUS+0x158>
    80006154:	fffff097          	auipc	ra,0xfffff
    80006158:	368080e7          	jalr	872(ra) # 800054bc <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000615c:	00000493          	li	s1,0
    80006160:	f91ff06f          	j	800060f0 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80006164:	14102ff3          	csrr	t6,sepc
    80006168:	fb5ff06f          	j	8000611c <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    8000616c:	00003517          	auipc	a0,0x3
    80006170:	0cc50513          	addi	a0,a0,204 # 80009238 <CONSOLE_STATUS+0x228>
    80006174:	fffff097          	auipc	ra,0xfffff
    80006178:	348080e7          	jalr	840(ra) # 800054bc <_Z11printStringPKc>
    finishedB = true;
    8000617c:	00100793          	li	a5,1
    80006180:	00006717          	auipc	a4,0x6
    80006184:	8ef70a23          	sb	a5,-1804(a4) # 8000ba74 <_ZL9finishedB>
    thread_dispatch();
    80006188:	ffffb097          	auipc	ra,0xffffb
    8000618c:	244080e7          	jalr	580(ra) # 800013cc <_Z15thread_dispatchv>
}
    80006190:	01813083          	ld	ra,24(sp)
    80006194:	01013403          	ld	s0,16(sp)
    80006198:	00813483          	ld	s1,8(sp)
    8000619c:	00013903          	ld	s2,0(sp)
    800061a0:	02010113          	addi	sp,sp,32
    800061a4:	00008067          	ret

00000000800061a8 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800061a8:	fe010113          	addi	sp,sp,-32
    800061ac:	00113c23          	sd	ra,24(sp)
    800061b0:	00813823          	sd	s0,16(sp)
    800061b4:	00913423          	sd	s1,8(sp)
    800061b8:	01213023          	sd	s2,0(sp)
    800061bc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800061c0:	00000913          	li	s2,0
    800061c4:	0380006f          	j	800061fc <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800061c8:	ffffb097          	auipc	ra,0xffffb
    800061cc:	204080e7          	jalr	516(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800061d0:	00148493          	addi	s1,s1,1
    800061d4:	000027b7          	lui	a5,0x2
    800061d8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800061dc:	0097ee63          	bltu	a5,s1,800061f8 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800061e0:	00000713          	li	a4,0
    800061e4:	000077b7          	lui	a5,0x7
    800061e8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800061ec:	fce7eee3          	bltu	a5,a4,800061c8 <_ZL11workerBodyAPv+0x20>
    800061f0:	00170713          	addi	a4,a4,1
    800061f4:	ff1ff06f          	j	800061e4 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800061f8:	00190913          	addi	s2,s2,1
    800061fc:	00900793          	li	a5,9
    80006200:	0527e063          	bltu	a5,s2,80006240 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80006204:	00003517          	auipc	a0,0x3
    80006208:	01450513          	addi	a0,a0,20 # 80009218 <CONSOLE_STATUS+0x208>
    8000620c:	fffff097          	auipc	ra,0xfffff
    80006210:	2b0080e7          	jalr	688(ra) # 800054bc <_Z11printStringPKc>
    80006214:	00000613          	li	a2,0
    80006218:	00a00593          	li	a1,10
    8000621c:	0009051b          	sext.w	a0,s2
    80006220:	fffff097          	auipc	ra,0xfffff
    80006224:	44c080e7          	jalr	1100(ra) # 8000566c <_Z8printIntiii>
    80006228:	00003517          	auipc	a0,0x3
    8000622c:	f4050513          	addi	a0,a0,-192 # 80009168 <CONSOLE_STATUS+0x158>
    80006230:	fffff097          	auipc	ra,0xfffff
    80006234:	28c080e7          	jalr	652(ra) # 800054bc <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006238:	00000493          	li	s1,0
    8000623c:	f99ff06f          	j	800061d4 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006240:	00003517          	auipc	a0,0x3
    80006244:	fe050513          	addi	a0,a0,-32 # 80009220 <CONSOLE_STATUS+0x210>
    80006248:	fffff097          	auipc	ra,0xfffff
    8000624c:	274080e7          	jalr	628(ra) # 800054bc <_Z11printStringPKc>
    finishedA = true;
    80006250:	00100793          	li	a5,1
    80006254:	00006717          	auipc	a4,0x6
    80006258:	82f700a3          	sb	a5,-2015(a4) # 8000ba75 <_ZL9finishedA>
}
    8000625c:	01813083          	ld	ra,24(sp)
    80006260:	01013403          	ld	s0,16(sp)
    80006264:	00813483          	ld	s1,8(sp)
    80006268:	00013903          	ld	s2,0(sp)
    8000626c:	02010113          	addi	sp,sp,32
    80006270:	00008067          	ret

0000000080006274 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006274:	fd010113          	addi	sp,sp,-48
    80006278:	02113423          	sd	ra,40(sp)
    8000627c:	02813023          	sd	s0,32(sp)
    80006280:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006284:	00000613          	li	a2,0
    80006288:	00000597          	auipc	a1,0x0
    8000628c:	f2058593          	addi	a1,a1,-224 # 800061a8 <_ZL11workerBodyAPv>
    80006290:	fd040513          	addi	a0,s0,-48
    80006294:	ffffb097          	auipc	ra,0xffffb
    80006298:	064080e7          	jalr	100(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    8000629c:	00003517          	auipc	a0,0x3
    800062a0:	01450513          	addi	a0,a0,20 # 800092b0 <CONSOLE_STATUS+0x2a0>
    800062a4:	fffff097          	auipc	ra,0xfffff
    800062a8:	218080e7          	jalr	536(ra) # 800054bc <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800062ac:	00000613          	li	a2,0
    800062b0:	00000597          	auipc	a1,0x0
    800062b4:	e1458593          	addi	a1,a1,-492 # 800060c4 <_ZL11workerBodyBPv>
    800062b8:	fd840513          	addi	a0,s0,-40
    800062bc:	ffffb097          	auipc	ra,0xffffb
    800062c0:	03c080e7          	jalr	60(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    800062c4:	00003517          	auipc	a0,0x3
    800062c8:	00450513          	addi	a0,a0,4 # 800092c8 <CONSOLE_STATUS+0x2b8>
    800062cc:	fffff097          	auipc	ra,0xfffff
    800062d0:	1f0080e7          	jalr	496(ra) # 800054bc <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800062d4:	00000613          	li	a2,0
    800062d8:	00000597          	auipc	a1,0x0
    800062dc:	c6c58593          	addi	a1,a1,-916 # 80005f44 <_ZL11workerBodyCPv>
    800062e0:	fe040513          	addi	a0,s0,-32
    800062e4:	ffffb097          	auipc	ra,0xffffb
    800062e8:	014080e7          	jalr	20(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    800062ec:	00003517          	auipc	a0,0x3
    800062f0:	ff450513          	addi	a0,a0,-12 # 800092e0 <CONSOLE_STATUS+0x2d0>
    800062f4:	fffff097          	auipc	ra,0xfffff
    800062f8:	1c8080e7          	jalr	456(ra) # 800054bc <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800062fc:	00000613          	li	a2,0
    80006300:	00000597          	auipc	a1,0x0
    80006304:	afc58593          	addi	a1,a1,-1284 # 80005dfc <_ZL11workerBodyDPv>
    80006308:	fe840513          	addi	a0,s0,-24
    8000630c:	ffffb097          	auipc	ra,0xffffb
    80006310:	fec080e7          	jalr	-20(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80006314:	00003517          	auipc	a0,0x3
    80006318:	fe450513          	addi	a0,a0,-28 # 800092f8 <CONSOLE_STATUS+0x2e8>
    8000631c:	fffff097          	auipc	ra,0xfffff
    80006320:	1a0080e7          	jalr	416(ra) # 800054bc <_Z11printStringPKc>
    80006324:	00c0006f          	j	80006330 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006328:	ffffb097          	auipc	ra,0xffffb
    8000632c:	0a4080e7          	jalr	164(ra) # 800013cc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006330:	00005797          	auipc	a5,0x5
    80006334:	7457c783          	lbu	a5,1861(a5) # 8000ba75 <_ZL9finishedA>
    80006338:	fe0788e3          	beqz	a5,80006328 <_Z16System_Mode_testv+0xb4>
    8000633c:	00005797          	auipc	a5,0x5
    80006340:	7387c783          	lbu	a5,1848(a5) # 8000ba74 <_ZL9finishedB>
    80006344:	fe0782e3          	beqz	a5,80006328 <_Z16System_Mode_testv+0xb4>
    80006348:	00005797          	auipc	a5,0x5
    8000634c:	72b7c783          	lbu	a5,1835(a5) # 8000ba73 <_ZL9finishedC>
    80006350:	fc078ce3          	beqz	a5,80006328 <_Z16System_Mode_testv+0xb4>
    80006354:	00005797          	auipc	a5,0x5
    80006358:	71e7c783          	lbu	a5,1822(a5) # 8000ba72 <_ZL9finishedD>
    8000635c:	fc0786e3          	beqz	a5,80006328 <_Z16System_Mode_testv+0xb4>
    }

}
    80006360:	02813083          	ld	ra,40(sp)
    80006364:	02013403          	ld	s0,32(sp)
    80006368:	03010113          	addi	sp,sp,48
    8000636c:	00008067          	ret

0000000080006370 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006370:	fe010113          	addi	sp,sp,-32
    80006374:	00113c23          	sd	ra,24(sp)
    80006378:	00813823          	sd	s0,16(sp)
    8000637c:	00913423          	sd	s1,8(sp)
    80006380:	01213023          	sd	s2,0(sp)
    80006384:	02010413          	addi	s0,sp,32
    80006388:	00050493          	mv	s1,a0
    8000638c:	00058913          	mv	s2,a1
    80006390:	0015879b          	addiw	a5,a1,1
    80006394:	0007851b          	sext.w	a0,a5
    80006398:	00f4a023          	sw	a5,0(s1)
    8000639c:	0004a823          	sw	zero,16(s1)
    800063a0:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800063a4:	00251513          	slli	a0,a0,0x2
    800063a8:	ffffb097          	auipc	ra,0xffffb
    800063ac:	eb0080e7          	jalr	-336(ra) # 80001258 <_Z9mem_allocm>
    800063b0:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800063b4:	00000593          	li	a1,0
    800063b8:	02048513          	addi	a0,s1,32
    800063bc:	ffffb097          	auipc	ra,0xffffb
    800063c0:	04c080e7          	jalr	76(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&spaceAvailable, _cap);
    800063c4:	00090593          	mv	a1,s2
    800063c8:	01848513          	addi	a0,s1,24
    800063cc:	ffffb097          	auipc	ra,0xffffb
    800063d0:	03c080e7          	jalr	60(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&mutexHead, 1);
    800063d4:	00100593          	li	a1,1
    800063d8:	02848513          	addi	a0,s1,40
    800063dc:	ffffb097          	auipc	ra,0xffffb
    800063e0:	02c080e7          	jalr	44(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&mutexTail, 1);
    800063e4:	00100593          	li	a1,1
    800063e8:	03048513          	addi	a0,s1,48
    800063ec:	ffffb097          	auipc	ra,0xffffb
    800063f0:	01c080e7          	jalr	28(ra) # 80001408 <_Z8sem_openPP3Semj>
}
    800063f4:	01813083          	ld	ra,24(sp)
    800063f8:	01013403          	ld	s0,16(sp)
    800063fc:	00813483          	ld	s1,8(sp)
    80006400:	00013903          	ld	s2,0(sp)
    80006404:	02010113          	addi	sp,sp,32
    80006408:	00008067          	ret

000000008000640c <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    8000640c:	fe010113          	addi	sp,sp,-32
    80006410:	00113c23          	sd	ra,24(sp)
    80006414:	00813823          	sd	s0,16(sp)
    80006418:	00913423          	sd	s1,8(sp)
    8000641c:	01213023          	sd	s2,0(sp)
    80006420:	02010413          	addi	s0,sp,32
    80006424:	00050493          	mv	s1,a0
    80006428:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    8000642c:	01853503          	ld	a0,24(a0)
    80006430:	ffffb097          	auipc	ra,0xffffb
    80006434:	074080e7          	jalr	116(ra) # 800014a4 <_Z8sem_waitP3Sem>

    sem_wait(mutexTail);
    80006438:	0304b503          	ld	a0,48(s1)
    8000643c:	ffffb097          	auipc	ra,0xffffb
    80006440:	068080e7          	jalr	104(ra) # 800014a4 <_Z8sem_waitP3Sem>
    buffer[tail] = val;
    80006444:	0084b783          	ld	a5,8(s1)
    80006448:	0144a703          	lw	a4,20(s1)
    8000644c:	00271713          	slli	a4,a4,0x2
    80006450:	00e787b3          	add	a5,a5,a4
    80006454:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006458:	0144a783          	lw	a5,20(s1)
    8000645c:	0017879b          	addiw	a5,a5,1
    80006460:	0004a703          	lw	a4,0(s1)
    80006464:	02e7e7bb          	remw	a5,a5,a4
    80006468:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    8000646c:	0304b503          	ld	a0,48(s1)
    80006470:	ffffb097          	auipc	ra,0xffffb
    80006474:	080080e7          	jalr	128(ra) # 800014f0 <_Z10sem_signalP3Sem>

    sem_signal(itemAvailable);
    80006478:	0204b503          	ld	a0,32(s1)
    8000647c:	ffffb097          	auipc	ra,0xffffb
    80006480:	074080e7          	jalr	116(ra) # 800014f0 <_Z10sem_signalP3Sem>

}
    80006484:	01813083          	ld	ra,24(sp)
    80006488:	01013403          	ld	s0,16(sp)
    8000648c:	00813483          	ld	s1,8(sp)
    80006490:	00013903          	ld	s2,0(sp)
    80006494:	02010113          	addi	sp,sp,32
    80006498:	00008067          	ret

000000008000649c <_ZN6Buffer3getEv>:

int Buffer::get() {
    8000649c:	fe010113          	addi	sp,sp,-32
    800064a0:	00113c23          	sd	ra,24(sp)
    800064a4:	00813823          	sd	s0,16(sp)
    800064a8:	00913423          	sd	s1,8(sp)
    800064ac:	01213023          	sd	s2,0(sp)
    800064b0:	02010413          	addi	s0,sp,32
    800064b4:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800064b8:	02053503          	ld	a0,32(a0)
    800064bc:	ffffb097          	auipc	ra,0xffffb
    800064c0:	fe8080e7          	jalr	-24(ra) # 800014a4 <_Z8sem_waitP3Sem>

    sem_wait(mutexHead);
    800064c4:	0284b503          	ld	a0,40(s1)
    800064c8:	ffffb097          	auipc	ra,0xffffb
    800064cc:	fdc080e7          	jalr	-36(ra) # 800014a4 <_Z8sem_waitP3Sem>

    int ret = buffer[head];
    800064d0:	0084b703          	ld	a4,8(s1)
    800064d4:	0104a783          	lw	a5,16(s1)
    800064d8:	00279693          	slli	a3,a5,0x2
    800064dc:	00d70733          	add	a4,a4,a3
    800064e0:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800064e4:	0017879b          	addiw	a5,a5,1
    800064e8:	0004a703          	lw	a4,0(s1)
    800064ec:	02e7e7bb          	remw	a5,a5,a4
    800064f0:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800064f4:	0284b503          	ld	a0,40(s1)
    800064f8:	ffffb097          	auipc	ra,0xffffb
    800064fc:	ff8080e7          	jalr	-8(ra) # 800014f0 <_Z10sem_signalP3Sem>

    sem_signal(spaceAvailable);
    80006500:	0184b503          	ld	a0,24(s1)
    80006504:	ffffb097          	auipc	ra,0xffffb
    80006508:	fec080e7          	jalr	-20(ra) # 800014f0 <_Z10sem_signalP3Sem>

    return ret;
}
    8000650c:	00090513          	mv	a0,s2
    80006510:	01813083          	ld	ra,24(sp)
    80006514:	01013403          	ld	s0,16(sp)
    80006518:	00813483          	ld	s1,8(sp)
    8000651c:	00013903          	ld	s2,0(sp)
    80006520:	02010113          	addi	sp,sp,32
    80006524:	00008067          	ret

0000000080006528 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80006528:	fe010113          	addi	sp,sp,-32
    8000652c:	00113c23          	sd	ra,24(sp)
    80006530:	00813823          	sd	s0,16(sp)
    80006534:	00913423          	sd	s1,8(sp)
    80006538:	01213023          	sd	s2,0(sp)
    8000653c:	02010413          	addi	s0,sp,32
    80006540:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006544:	02853503          	ld	a0,40(a0)
    80006548:	ffffb097          	auipc	ra,0xffffb
    8000654c:	f5c080e7          	jalr	-164(ra) # 800014a4 <_Z8sem_waitP3Sem>
    sem_wait(mutexTail);
    80006550:	0304b503          	ld	a0,48(s1)
    80006554:	ffffb097          	auipc	ra,0xffffb
    80006558:	f50080e7          	jalr	-176(ra) # 800014a4 <_Z8sem_waitP3Sem>

    if (tail >= head) {
    8000655c:	0144a783          	lw	a5,20(s1)
    80006560:	0104a903          	lw	s2,16(s1)
    80006564:	0327ce63          	blt	a5,s2,800065a0 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006568:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    8000656c:	0304b503          	ld	a0,48(s1)
    80006570:	ffffb097          	auipc	ra,0xffffb
    80006574:	f80080e7          	jalr	-128(ra) # 800014f0 <_Z10sem_signalP3Sem>
    sem_signal(mutexHead);
    80006578:	0284b503          	ld	a0,40(s1)
    8000657c:	ffffb097          	auipc	ra,0xffffb
    80006580:	f74080e7          	jalr	-140(ra) # 800014f0 <_Z10sem_signalP3Sem>

    return ret;
}
    80006584:	00090513          	mv	a0,s2
    80006588:	01813083          	ld	ra,24(sp)
    8000658c:	01013403          	ld	s0,16(sp)
    80006590:	00813483          	ld	s1,8(sp)
    80006594:	00013903          	ld	s2,0(sp)
    80006598:	02010113          	addi	sp,sp,32
    8000659c:	00008067          	ret
        ret = cap - head + tail;
    800065a0:	0004a703          	lw	a4,0(s1)
    800065a4:	4127093b          	subw	s2,a4,s2
    800065a8:	00f9093b          	addw	s2,s2,a5
    800065ac:	fc1ff06f          	j	8000656c <_ZN6Buffer6getCntEv+0x44>

00000000800065b0 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    800065b0:	fe010113          	addi	sp,sp,-32
    800065b4:	00113c23          	sd	ra,24(sp)
    800065b8:	00813823          	sd	s0,16(sp)
    800065bc:	00913423          	sd	s1,8(sp)
    800065c0:	02010413          	addi	s0,sp,32
    800065c4:	00050493          	mv	s1,a0
    putc('\n');
    800065c8:	00a00513          	li	a0,10
    800065cc:	ffffb097          	auipc	ra,0xffffb
    800065d0:	070080e7          	jalr	112(ra) # 8000163c <_Z4putcc>
    printString("Buffer deleted!\n");
    800065d4:	00003517          	auipc	a0,0x3
    800065d8:	d3c50513          	addi	a0,a0,-708 # 80009310 <CONSOLE_STATUS+0x300>
    800065dc:	fffff097          	auipc	ra,0xfffff
    800065e0:	ee0080e7          	jalr	-288(ra) # 800054bc <_Z11printStringPKc>
    while (getCnt() > 0) {
    800065e4:	00048513          	mv	a0,s1
    800065e8:	00000097          	auipc	ra,0x0
    800065ec:	f40080e7          	jalr	-192(ra) # 80006528 <_ZN6Buffer6getCntEv>
    800065f0:	02a05c63          	blez	a0,80006628 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    800065f4:	0084b783          	ld	a5,8(s1)
    800065f8:	0104a703          	lw	a4,16(s1)
    800065fc:	00271713          	slli	a4,a4,0x2
    80006600:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006604:	0007c503          	lbu	a0,0(a5)
    80006608:	ffffb097          	auipc	ra,0xffffb
    8000660c:	034080e7          	jalr	52(ra) # 8000163c <_Z4putcc>
        head = (head + 1) % cap;
    80006610:	0104a783          	lw	a5,16(s1)
    80006614:	0017879b          	addiw	a5,a5,1
    80006618:	0004a703          	lw	a4,0(s1)
    8000661c:	02e7e7bb          	remw	a5,a5,a4
    80006620:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006624:	fc1ff06f          	j	800065e4 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80006628:	02100513          	li	a0,33
    8000662c:	ffffb097          	auipc	ra,0xffffb
    80006630:	010080e7          	jalr	16(ra) # 8000163c <_Z4putcc>
    putc('\n');
    80006634:	00a00513          	li	a0,10
    80006638:	ffffb097          	auipc	ra,0xffffb
    8000663c:	004080e7          	jalr	4(ra) # 8000163c <_Z4putcc>
    mem_free(buffer);
    80006640:	0084b503          	ld	a0,8(s1)
    80006644:	ffffb097          	auipc	ra,0xffffb
    80006648:	c68080e7          	jalr	-920(ra) # 800012ac <_Z8mem_freePv>
    sem_close(itemAvailable);
    8000664c:	0204b503          	ld	a0,32(s1)
    80006650:	ffffb097          	auipc	ra,0xffffb
    80006654:	e08080e7          	jalr	-504(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(spaceAvailable);
    80006658:	0184b503          	ld	a0,24(s1)
    8000665c:	ffffb097          	auipc	ra,0xffffb
    80006660:	dfc080e7          	jalr	-516(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(mutexTail);
    80006664:	0304b503          	ld	a0,48(s1)
    80006668:	ffffb097          	auipc	ra,0xffffb
    8000666c:	df0080e7          	jalr	-528(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(mutexHead);
    80006670:	0284b503          	ld	a0,40(s1)
    80006674:	ffffb097          	auipc	ra,0xffffb
    80006678:	de4080e7          	jalr	-540(ra) # 80001458 <_Z9sem_closeP3Sem>
}
    8000667c:	01813083          	ld	ra,24(sp)
    80006680:	01013403          	ld	s0,16(sp)
    80006684:	00813483          	ld	s1,8(sp)
    80006688:	02010113          	addi	sp,sp,32
    8000668c:	00008067          	ret

0000000080006690 <start>:
    80006690:	ff010113          	addi	sp,sp,-16
    80006694:	00813423          	sd	s0,8(sp)
    80006698:	01010413          	addi	s0,sp,16
    8000669c:	300027f3          	csrr	a5,mstatus
    800066a0:	ffffe737          	lui	a4,0xffffe
    800066a4:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1b1f>
    800066a8:	00e7f7b3          	and	a5,a5,a4
    800066ac:	00001737          	lui	a4,0x1
    800066b0:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800066b4:	00e7e7b3          	or	a5,a5,a4
    800066b8:	30079073          	csrw	mstatus,a5
    800066bc:	00000797          	auipc	a5,0x0
    800066c0:	16078793          	addi	a5,a5,352 # 8000681c <system_main>
    800066c4:	34179073          	csrw	mepc,a5
    800066c8:	00000793          	li	a5,0
    800066cc:	18079073          	csrw	satp,a5
    800066d0:	000107b7          	lui	a5,0x10
    800066d4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800066d8:	30279073          	csrw	medeleg,a5
    800066dc:	30379073          	csrw	mideleg,a5
    800066e0:	104027f3          	csrr	a5,sie
    800066e4:	2227e793          	ori	a5,a5,546
    800066e8:	10479073          	csrw	sie,a5
    800066ec:	fff00793          	li	a5,-1
    800066f0:	00a7d793          	srli	a5,a5,0xa
    800066f4:	3b079073          	csrw	pmpaddr0,a5
    800066f8:	00f00793          	li	a5,15
    800066fc:	3a079073          	csrw	pmpcfg0,a5
    80006700:	f14027f3          	csrr	a5,mhartid
    80006704:	0200c737          	lui	a4,0x200c
    80006708:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000670c:	0007869b          	sext.w	a3,a5
    80006710:	00269713          	slli	a4,a3,0x2
    80006714:	000f4637          	lui	a2,0xf4
    80006718:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000671c:	00d70733          	add	a4,a4,a3
    80006720:	0037979b          	slliw	a5,a5,0x3
    80006724:	020046b7          	lui	a3,0x2004
    80006728:	00d787b3          	add	a5,a5,a3
    8000672c:	00c585b3          	add	a1,a1,a2
    80006730:	00371693          	slli	a3,a4,0x3
    80006734:	00005717          	auipc	a4,0x5
    80006738:	34c70713          	addi	a4,a4,844 # 8000ba80 <timer_scratch>
    8000673c:	00b7b023          	sd	a1,0(a5)
    80006740:	00d70733          	add	a4,a4,a3
    80006744:	00f73c23          	sd	a5,24(a4)
    80006748:	02c73023          	sd	a2,32(a4)
    8000674c:	34071073          	csrw	mscratch,a4
    80006750:	00000797          	auipc	a5,0x0
    80006754:	6e078793          	addi	a5,a5,1760 # 80006e30 <timervec>
    80006758:	30579073          	csrw	mtvec,a5
    8000675c:	300027f3          	csrr	a5,mstatus
    80006760:	0087e793          	ori	a5,a5,8
    80006764:	30079073          	csrw	mstatus,a5
    80006768:	304027f3          	csrr	a5,mie
    8000676c:	0807e793          	ori	a5,a5,128
    80006770:	30479073          	csrw	mie,a5
    80006774:	f14027f3          	csrr	a5,mhartid
    80006778:	0007879b          	sext.w	a5,a5
    8000677c:	00078213          	mv	tp,a5
    80006780:	30200073          	mret
    80006784:	00813403          	ld	s0,8(sp)
    80006788:	01010113          	addi	sp,sp,16
    8000678c:	00008067          	ret

0000000080006790 <timerinit>:
    80006790:	ff010113          	addi	sp,sp,-16
    80006794:	00813423          	sd	s0,8(sp)
    80006798:	01010413          	addi	s0,sp,16
    8000679c:	f14027f3          	csrr	a5,mhartid
    800067a0:	0200c737          	lui	a4,0x200c
    800067a4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800067a8:	0007869b          	sext.w	a3,a5
    800067ac:	00269713          	slli	a4,a3,0x2
    800067b0:	000f4637          	lui	a2,0xf4
    800067b4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800067b8:	00d70733          	add	a4,a4,a3
    800067bc:	0037979b          	slliw	a5,a5,0x3
    800067c0:	020046b7          	lui	a3,0x2004
    800067c4:	00d787b3          	add	a5,a5,a3
    800067c8:	00c585b3          	add	a1,a1,a2
    800067cc:	00371693          	slli	a3,a4,0x3
    800067d0:	00005717          	auipc	a4,0x5
    800067d4:	2b070713          	addi	a4,a4,688 # 8000ba80 <timer_scratch>
    800067d8:	00b7b023          	sd	a1,0(a5)
    800067dc:	00d70733          	add	a4,a4,a3
    800067e0:	00f73c23          	sd	a5,24(a4)
    800067e4:	02c73023          	sd	a2,32(a4)
    800067e8:	34071073          	csrw	mscratch,a4
    800067ec:	00000797          	auipc	a5,0x0
    800067f0:	64478793          	addi	a5,a5,1604 # 80006e30 <timervec>
    800067f4:	30579073          	csrw	mtvec,a5
    800067f8:	300027f3          	csrr	a5,mstatus
    800067fc:	0087e793          	ori	a5,a5,8
    80006800:	30079073          	csrw	mstatus,a5
    80006804:	304027f3          	csrr	a5,mie
    80006808:	0807e793          	ori	a5,a5,128
    8000680c:	30479073          	csrw	mie,a5
    80006810:	00813403          	ld	s0,8(sp)
    80006814:	01010113          	addi	sp,sp,16
    80006818:	00008067          	ret

000000008000681c <system_main>:
    8000681c:	fe010113          	addi	sp,sp,-32
    80006820:	00813823          	sd	s0,16(sp)
    80006824:	00913423          	sd	s1,8(sp)
    80006828:	00113c23          	sd	ra,24(sp)
    8000682c:	02010413          	addi	s0,sp,32
    80006830:	00000097          	auipc	ra,0x0
    80006834:	0c4080e7          	jalr	196(ra) # 800068f4 <cpuid>
    80006838:	00005497          	auipc	s1,0x5
    8000683c:	17848493          	addi	s1,s1,376 # 8000b9b0 <started>
    80006840:	02050263          	beqz	a0,80006864 <system_main+0x48>
    80006844:	0004a783          	lw	a5,0(s1)
    80006848:	0007879b          	sext.w	a5,a5
    8000684c:	fe078ce3          	beqz	a5,80006844 <system_main+0x28>
    80006850:	0ff0000f          	fence
    80006854:	00003517          	auipc	a0,0x3
    80006858:	bec50513          	addi	a0,a0,-1044 # 80009440 <CONSOLE_STATUS+0x430>
    8000685c:	00001097          	auipc	ra,0x1
    80006860:	a70080e7          	jalr	-1424(ra) # 800072cc <panic>
    80006864:	00001097          	auipc	ra,0x1
    80006868:	9c4080e7          	jalr	-1596(ra) # 80007228 <consoleinit>
    8000686c:	00001097          	auipc	ra,0x1
    80006870:	150080e7          	jalr	336(ra) # 800079bc <printfinit>
    80006874:	00003517          	auipc	a0,0x3
    80006878:	8f450513          	addi	a0,a0,-1804 # 80009168 <CONSOLE_STATUS+0x158>
    8000687c:	00001097          	auipc	ra,0x1
    80006880:	aac080e7          	jalr	-1364(ra) # 80007328 <__printf>
    80006884:	00003517          	auipc	a0,0x3
    80006888:	b8c50513          	addi	a0,a0,-1140 # 80009410 <CONSOLE_STATUS+0x400>
    8000688c:	00001097          	auipc	ra,0x1
    80006890:	a9c080e7          	jalr	-1380(ra) # 80007328 <__printf>
    80006894:	00003517          	auipc	a0,0x3
    80006898:	8d450513          	addi	a0,a0,-1836 # 80009168 <CONSOLE_STATUS+0x158>
    8000689c:	00001097          	auipc	ra,0x1
    800068a0:	a8c080e7          	jalr	-1396(ra) # 80007328 <__printf>
    800068a4:	00001097          	auipc	ra,0x1
    800068a8:	4a4080e7          	jalr	1188(ra) # 80007d48 <kinit>
    800068ac:	00000097          	auipc	ra,0x0
    800068b0:	148080e7          	jalr	328(ra) # 800069f4 <trapinit>
    800068b4:	00000097          	auipc	ra,0x0
    800068b8:	16c080e7          	jalr	364(ra) # 80006a20 <trapinithart>
    800068bc:	00000097          	auipc	ra,0x0
    800068c0:	5b4080e7          	jalr	1460(ra) # 80006e70 <plicinit>
    800068c4:	00000097          	auipc	ra,0x0
    800068c8:	5d4080e7          	jalr	1492(ra) # 80006e98 <plicinithart>
    800068cc:	00000097          	auipc	ra,0x0
    800068d0:	078080e7          	jalr	120(ra) # 80006944 <userinit>
    800068d4:	0ff0000f          	fence
    800068d8:	00100793          	li	a5,1
    800068dc:	00003517          	auipc	a0,0x3
    800068e0:	b4c50513          	addi	a0,a0,-1204 # 80009428 <CONSOLE_STATUS+0x418>
    800068e4:	00f4a023          	sw	a5,0(s1)
    800068e8:	00001097          	auipc	ra,0x1
    800068ec:	a40080e7          	jalr	-1472(ra) # 80007328 <__printf>
    800068f0:	0000006f          	j	800068f0 <system_main+0xd4>

00000000800068f4 <cpuid>:
    800068f4:	ff010113          	addi	sp,sp,-16
    800068f8:	00813423          	sd	s0,8(sp)
    800068fc:	01010413          	addi	s0,sp,16
    80006900:	00020513          	mv	a0,tp
    80006904:	00813403          	ld	s0,8(sp)
    80006908:	0005051b          	sext.w	a0,a0
    8000690c:	01010113          	addi	sp,sp,16
    80006910:	00008067          	ret

0000000080006914 <mycpu>:
    80006914:	ff010113          	addi	sp,sp,-16
    80006918:	00813423          	sd	s0,8(sp)
    8000691c:	01010413          	addi	s0,sp,16
    80006920:	00020793          	mv	a5,tp
    80006924:	00813403          	ld	s0,8(sp)
    80006928:	0007879b          	sext.w	a5,a5
    8000692c:	00779793          	slli	a5,a5,0x7
    80006930:	00006517          	auipc	a0,0x6
    80006934:	18050513          	addi	a0,a0,384 # 8000cab0 <cpus>
    80006938:	00f50533          	add	a0,a0,a5
    8000693c:	01010113          	addi	sp,sp,16
    80006940:	00008067          	ret

0000000080006944 <userinit>:
    80006944:	ff010113          	addi	sp,sp,-16
    80006948:	00813423          	sd	s0,8(sp)
    8000694c:	01010413          	addi	s0,sp,16
    80006950:	00813403          	ld	s0,8(sp)
    80006954:	01010113          	addi	sp,sp,16
    80006958:	ffffb317          	auipc	t1,0xffffb
    8000695c:	3bc30067          	jr	956(t1) # 80001d14 <main>

0000000080006960 <either_copyout>:
    80006960:	ff010113          	addi	sp,sp,-16
    80006964:	00813023          	sd	s0,0(sp)
    80006968:	00113423          	sd	ra,8(sp)
    8000696c:	01010413          	addi	s0,sp,16
    80006970:	02051663          	bnez	a0,8000699c <either_copyout+0x3c>
    80006974:	00058513          	mv	a0,a1
    80006978:	00060593          	mv	a1,a2
    8000697c:	0006861b          	sext.w	a2,a3
    80006980:	00002097          	auipc	ra,0x2
    80006984:	c54080e7          	jalr	-940(ra) # 800085d4 <__memmove>
    80006988:	00813083          	ld	ra,8(sp)
    8000698c:	00013403          	ld	s0,0(sp)
    80006990:	00000513          	li	a0,0
    80006994:	01010113          	addi	sp,sp,16
    80006998:	00008067          	ret
    8000699c:	00003517          	auipc	a0,0x3
    800069a0:	acc50513          	addi	a0,a0,-1332 # 80009468 <CONSOLE_STATUS+0x458>
    800069a4:	00001097          	auipc	ra,0x1
    800069a8:	928080e7          	jalr	-1752(ra) # 800072cc <panic>

00000000800069ac <either_copyin>:
    800069ac:	ff010113          	addi	sp,sp,-16
    800069b0:	00813023          	sd	s0,0(sp)
    800069b4:	00113423          	sd	ra,8(sp)
    800069b8:	01010413          	addi	s0,sp,16
    800069bc:	02059463          	bnez	a1,800069e4 <either_copyin+0x38>
    800069c0:	00060593          	mv	a1,a2
    800069c4:	0006861b          	sext.w	a2,a3
    800069c8:	00002097          	auipc	ra,0x2
    800069cc:	c0c080e7          	jalr	-1012(ra) # 800085d4 <__memmove>
    800069d0:	00813083          	ld	ra,8(sp)
    800069d4:	00013403          	ld	s0,0(sp)
    800069d8:	00000513          	li	a0,0
    800069dc:	01010113          	addi	sp,sp,16
    800069e0:	00008067          	ret
    800069e4:	00003517          	auipc	a0,0x3
    800069e8:	aac50513          	addi	a0,a0,-1364 # 80009490 <CONSOLE_STATUS+0x480>
    800069ec:	00001097          	auipc	ra,0x1
    800069f0:	8e0080e7          	jalr	-1824(ra) # 800072cc <panic>

00000000800069f4 <trapinit>:
    800069f4:	ff010113          	addi	sp,sp,-16
    800069f8:	00813423          	sd	s0,8(sp)
    800069fc:	01010413          	addi	s0,sp,16
    80006a00:	00813403          	ld	s0,8(sp)
    80006a04:	00003597          	auipc	a1,0x3
    80006a08:	ab458593          	addi	a1,a1,-1356 # 800094b8 <CONSOLE_STATUS+0x4a8>
    80006a0c:	00006517          	auipc	a0,0x6
    80006a10:	12450513          	addi	a0,a0,292 # 8000cb30 <tickslock>
    80006a14:	01010113          	addi	sp,sp,16
    80006a18:	00001317          	auipc	t1,0x1
    80006a1c:	5c030067          	jr	1472(t1) # 80007fd8 <initlock>

0000000080006a20 <trapinithart>:
    80006a20:	ff010113          	addi	sp,sp,-16
    80006a24:	00813423          	sd	s0,8(sp)
    80006a28:	01010413          	addi	s0,sp,16
    80006a2c:	00000797          	auipc	a5,0x0
    80006a30:	2f478793          	addi	a5,a5,756 # 80006d20 <kernelvec>
    80006a34:	10579073          	csrw	stvec,a5
    80006a38:	00813403          	ld	s0,8(sp)
    80006a3c:	01010113          	addi	sp,sp,16
    80006a40:	00008067          	ret

0000000080006a44 <usertrap>:
    80006a44:	ff010113          	addi	sp,sp,-16
    80006a48:	00813423          	sd	s0,8(sp)
    80006a4c:	01010413          	addi	s0,sp,16
    80006a50:	00813403          	ld	s0,8(sp)
    80006a54:	01010113          	addi	sp,sp,16
    80006a58:	00008067          	ret

0000000080006a5c <usertrapret>:
    80006a5c:	ff010113          	addi	sp,sp,-16
    80006a60:	00813423          	sd	s0,8(sp)
    80006a64:	01010413          	addi	s0,sp,16
    80006a68:	00813403          	ld	s0,8(sp)
    80006a6c:	01010113          	addi	sp,sp,16
    80006a70:	00008067          	ret

0000000080006a74 <kerneltrap>:
    80006a74:	fe010113          	addi	sp,sp,-32
    80006a78:	00813823          	sd	s0,16(sp)
    80006a7c:	00113c23          	sd	ra,24(sp)
    80006a80:	00913423          	sd	s1,8(sp)
    80006a84:	02010413          	addi	s0,sp,32
    80006a88:	142025f3          	csrr	a1,scause
    80006a8c:	100027f3          	csrr	a5,sstatus
    80006a90:	0027f793          	andi	a5,a5,2
    80006a94:	10079c63          	bnez	a5,80006bac <kerneltrap+0x138>
    80006a98:	142027f3          	csrr	a5,scause
    80006a9c:	0207ce63          	bltz	a5,80006ad8 <kerneltrap+0x64>
    80006aa0:	00003517          	auipc	a0,0x3
    80006aa4:	a6050513          	addi	a0,a0,-1440 # 80009500 <CONSOLE_STATUS+0x4f0>
    80006aa8:	00001097          	auipc	ra,0x1
    80006aac:	880080e7          	jalr	-1920(ra) # 80007328 <__printf>
    80006ab0:	141025f3          	csrr	a1,sepc
    80006ab4:	14302673          	csrr	a2,stval
    80006ab8:	00003517          	auipc	a0,0x3
    80006abc:	a5850513          	addi	a0,a0,-1448 # 80009510 <CONSOLE_STATUS+0x500>
    80006ac0:	00001097          	auipc	ra,0x1
    80006ac4:	868080e7          	jalr	-1944(ra) # 80007328 <__printf>
    80006ac8:	00003517          	auipc	a0,0x3
    80006acc:	a6050513          	addi	a0,a0,-1440 # 80009528 <CONSOLE_STATUS+0x518>
    80006ad0:	00000097          	auipc	ra,0x0
    80006ad4:	7fc080e7          	jalr	2044(ra) # 800072cc <panic>
    80006ad8:	0ff7f713          	andi	a4,a5,255
    80006adc:	00900693          	li	a3,9
    80006ae0:	04d70063          	beq	a4,a3,80006b20 <kerneltrap+0xac>
    80006ae4:	fff00713          	li	a4,-1
    80006ae8:	03f71713          	slli	a4,a4,0x3f
    80006aec:	00170713          	addi	a4,a4,1
    80006af0:	fae798e3          	bne	a5,a4,80006aa0 <kerneltrap+0x2c>
    80006af4:	00000097          	auipc	ra,0x0
    80006af8:	e00080e7          	jalr	-512(ra) # 800068f4 <cpuid>
    80006afc:	06050663          	beqz	a0,80006b68 <kerneltrap+0xf4>
    80006b00:	144027f3          	csrr	a5,sip
    80006b04:	ffd7f793          	andi	a5,a5,-3
    80006b08:	14479073          	csrw	sip,a5
    80006b0c:	01813083          	ld	ra,24(sp)
    80006b10:	01013403          	ld	s0,16(sp)
    80006b14:	00813483          	ld	s1,8(sp)
    80006b18:	02010113          	addi	sp,sp,32
    80006b1c:	00008067          	ret
    80006b20:	00000097          	auipc	ra,0x0
    80006b24:	3c4080e7          	jalr	964(ra) # 80006ee4 <plic_claim>
    80006b28:	00a00793          	li	a5,10
    80006b2c:	00050493          	mv	s1,a0
    80006b30:	06f50863          	beq	a0,a5,80006ba0 <kerneltrap+0x12c>
    80006b34:	fc050ce3          	beqz	a0,80006b0c <kerneltrap+0x98>
    80006b38:	00050593          	mv	a1,a0
    80006b3c:	00003517          	auipc	a0,0x3
    80006b40:	9a450513          	addi	a0,a0,-1628 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80006b44:	00000097          	auipc	ra,0x0
    80006b48:	7e4080e7          	jalr	2020(ra) # 80007328 <__printf>
    80006b4c:	01013403          	ld	s0,16(sp)
    80006b50:	01813083          	ld	ra,24(sp)
    80006b54:	00048513          	mv	a0,s1
    80006b58:	00813483          	ld	s1,8(sp)
    80006b5c:	02010113          	addi	sp,sp,32
    80006b60:	00000317          	auipc	t1,0x0
    80006b64:	3bc30067          	jr	956(t1) # 80006f1c <plic_complete>
    80006b68:	00006517          	auipc	a0,0x6
    80006b6c:	fc850513          	addi	a0,a0,-56 # 8000cb30 <tickslock>
    80006b70:	00001097          	auipc	ra,0x1
    80006b74:	48c080e7          	jalr	1164(ra) # 80007ffc <acquire>
    80006b78:	00005717          	auipc	a4,0x5
    80006b7c:	e3c70713          	addi	a4,a4,-452 # 8000b9b4 <ticks>
    80006b80:	00072783          	lw	a5,0(a4)
    80006b84:	00006517          	auipc	a0,0x6
    80006b88:	fac50513          	addi	a0,a0,-84 # 8000cb30 <tickslock>
    80006b8c:	0017879b          	addiw	a5,a5,1
    80006b90:	00f72023          	sw	a5,0(a4)
    80006b94:	00001097          	auipc	ra,0x1
    80006b98:	534080e7          	jalr	1332(ra) # 800080c8 <release>
    80006b9c:	f65ff06f          	j	80006b00 <kerneltrap+0x8c>
    80006ba0:	00001097          	auipc	ra,0x1
    80006ba4:	090080e7          	jalr	144(ra) # 80007c30 <uartintr>
    80006ba8:	fa5ff06f          	j	80006b4c <kerneltrap+0xd8>
    80006bac:	00003517          	auipc	a0,0x3
    80006bb0:	91450513          	addi	a0,a0,-1772 # 800094c0 <CONSOLE_STATUS+0x4b0>
    80006bb4:	00000097          	auipc	ra,0x0
    80006bb8:	718080e7          	jalr	1816(ra) # 800072cc <panic>

0000000080006bbc <clockintr>:
    80006bbc:	fe010113          	addi	sp,sp,-32
    80006bc0:	00813823          	sd	s0,16(sp)
    80006bc4:	00913423          	sd	s1,8(sp)
    80006bc8:	00113c23          	sd	ra,24(sp)
    80006bcc:	02010413          	addi	s0,sp,32
    80006bd0:	00006497          	auipc	s1,0x6
    80006bd4:	f6048493          	addi	s1,s1,-160 # 8000cb30 <tickslock>
    80006bd8:	00048513          	mv	a0,s1
    80006bdc:	00001097          	auipc	ra,0x1
    80006be0:	420080e7          	jalr	1056(ra) # 80007ffc <acquire>
    80006be4:	00005717          	auipc	a4,0x5
    80006be8:	dd070713          	addi	a4,a4,-560 # 8000b9b4 <ticks>
    80006bec:	00072783          	lw	a5,0(a4)
    80006bf0:	01013403          	ld	s0,16(sp)
    80006bf4:	01813083          	ld	ra,24(sp)
    80006bf8:	00048513          	mv	a0,s1
    80006bfc:	0017879b          	addiw	a5,a5,1
    80006c00:	00813483          	ld	s1,8(sp)
    80006c04:	00f72023          	sw	a5,0(a4)
    80006c08:	02010113          	addi	sp,sp,32
    80006c0c:	00001317          	auipc	t1,0x1
    80006c10:	4bc30067          	jr	1212(t1) # 800080c8 <release>

0000000080006c14 <devintr>:
    80006c14:	142027f3          	csrr	a5,scause
    80006c18:	00000513          	li	a0,0
    80006c1c:	0007c463          	bltz	a5,80006c24 <devintr+0x10>
    80006c20:	00008067          	ret
    80006c24:	fe010113          	addi	sp,sp,-32
    80006c28:	00813823          	sd	s0,16(sp)
    80006c2c:	00113c23          	sd	ra,24(sp)
    80006c30:	00913423          	sd	s1,8(sp)
    80006c34:	02010413          	addi	s0,sp,32
    80006c38:	0ff7f713          	andi	a4,a5,255
    80006c3c:	00900693          	li	a3,9
    80006c40:	04d70c63          	beq	a4,a3,80006c98 <devintr+0x84>
    80006c44:	fff00713          	li	a4,-1
    80006c48:	03f71713          	slli	a4,a4,0x3f
    80006c4c:	00170713          	addi	a4,a4,1
    80006c50:	00e78c63          	beq	a5,a4,80006c68 <devintr+0x54>
    80006c54:	01813083          	ld	ra,24(sp)
    80006c58:	01013403          	ld	s0,16(sp)
    80006c5c:	00813483          	ld	s1,8(sp)
    80006c60:	02010113          	addi	sp,sp,32
    80006c64:	00008067          	ret
    80006c68:	00000097          	auipc	ra,0x0
    80006c6c:	c8c080e7          	jalr	-884(ra) # 800068f4 <cpuid>
    80006c70:	06050663          	beqz	a0,80006cdc <devintr+0xc8>
    80006c74:	144027f3          	csrr	a5,sip
    80006c78:	ffd7f793          	andi	a5,a5,-3
    80006c7c:	14479073          	csrw	sip,a5
    80006c80:	01813083          	ld	ra,24(sp)
    80006c84:	01013403          	ld	s0,16(sp)
    80006c88:	00813483          	ld	s1,8(sp)
    80006c8c:	00200513          	li	a0,2
    80006c90:	02010113          	addi	sp,sp,32
    80006c94:	00008067          	ret
    80006c98:	00000097          	auipc	ra,0x0
    80006c9c:	24c080e7          	jalr	588(ra) # 80006ee4 <plic_claim>
    80006ca0:	00a00793          	li	a5,10
    80006ca4:	00050493          	mv	s1,a0
    80006ca8:	06f50663          	beq	a0,a5,80006d14 <devintr+0x100>
    80006cac:	00100513          	li	a0,1
    80006cb0:	fa0482e3          	beqz	s1,80006c54 <devintr+0x40>
    80006cb4:	00048593          	mv	a1,s1
    80006cb8:	00003517          	auipc	a0,0x3
    80006cbc:	82850513          	addi	a0,a0,-2008 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80006cc0:	00000097          	auipc	ra,0x0
    80006cc4:	668080e7          	jalr	1640(ra) # 80007328 <__printf>
    80006cc8:	00048513          	mv	a0,s1
    80006ccc:	00000097          	auipc	ra,0x0
    80006cd0:	250080e7          	jalr	592(ra) # 80006f1c <plic_complete>
    80006cd4:	00100513          	li	a0,1
    80006cd8:	f7dff06f          	j	80006c54 <devintr+0x40>
    80006cdc:	00006517          	auipc	a0,0x6
    80006ce0:	e5450513          	addi	a0,a0,-428 # 8000cb30 <tickslock>
    80006ce4:	00001097          	auipc	ra,0x1
    80006ce8:	318080e7          	jalr	792(ra) # 80007ffc <acquire>
    80006cec:	00005717          	auipc	a4,0x5
    80006cf0:	cc870713          	addi	a4,a4,-824 # 8000b9b4 <ticks>
    80006cf4:	00072783          	lw	a5,0(a4)
    80006cf8:	00006517          	auipc	a0,0x6
    80006cfc:	e3850513          	addi	a0,a0,-456 # 8000cb30 <tickslock>
    80006d00:	0017879b          	addiw	a5,a5,1
    80006d04:	00f72023          	sw	a5,0(a4)
    80006d08:	00001097          	auipc	ra,0x1
    80006d0c:	3c0080e7          	jalr	960(ra) # 800080c8 <release>
    80006d10:	f65ff06f          	j	80006c74 <devintr+0x60>
    80006d14:	00001097          	auipc	ra,0x1
    80006d18:	f1c080e7          	jalr	-228(ra) # 80007c30 <uartintr>
    80006d1c:	fadff06f          	j	80006cc8 <devintr+0xb4>

0000000080006d20 <kernelvec>:
    80006d20:	f0010113          	addi	sp,sp,-256
    80006d24:	00113023          	sd	ra,0(sp)
    80006d28:	00213423          	sd	sp,8(sp)
    80006d2c:	00313823          	sd	gp,16(sp)
    80006d30:	00413c23          	sd	tp,24(sp)
    80006d34:	02513023          	sd	t0,32(sp)
    80006d38:	02613423          	sd	t1,40(sp)
    80006d3c:	02713823          	sd	t2,48(sp)
    80006d40:	02813c23          	sd	s0,56(sp)
    80006d44:	04913023          	sd	s1,64(sp)
    80006d48:	04a13423          	sd	a0,72(sp)
    80006d4c:	04b13823          	sd	a1,80(sp)
    80006d50:	04c13c23          	sd	a2,88(sp)
    80006d54:	06d13023          	sd	a3,96(sp)
    80006d58:	06e13423          	sd	a4,104(sp)
    80006d5c:	06f13823          	sd	a5,112(sp)
    80006d60:	07013c23          	sd	a6,120(sp)
    80006d64:	09113023          	sd	a7,128(sp)
    80006d68:	09213423          	sd	s2,136(sp)
    80006d6c:	09313823          	sd	s3,144(sp)
    80006d70:	09413c23          	sd	s4,152(sp)
    80006d74:	0b513023          	sd	s5,160(sp)
    80006d78:	0b613423          	sd	s6,168(sp)
    80006d7c:	0b713823          	sd	s7,176(sp)
    80006d80:	0b813c23          	sd	s8,184(sp)
    80006d84:	0d913023          	sd	s9,192(sp)
    80006d88:	0da13423          	sd	s10,200(sp)
    80006d8c:	0db13823          	sd	s11,208(sp)
    80006d90:	0dc13c23          	sd	t3,216(sp)
    80006d94:	0fd13023          	sd	t4,224(sp)
    80006d98:	0fe13423          	sd	t5,232(sp)
    80006d9c:	0ff13823          	sd	t6,240(sp)
    80006da0:	cd5ff0ef          	jal	ra,80006a74 <kerneltrap>
    80006da4:	00013083          	ld	ra,0(sp)
    80006da8:	00813103          	ld	sp,8(sp)
    80006dac:	01013183          	ld	gp,16(sp)
    80006db0:	02013283          	ld	t0,32(sp)
    80006db4:	02813303          	ld	t1,40(sp)
    80006db8:	03013383          	ld	t2,48(sp)
    80006dbc:	03813403          	ld	s0,56(sp)
    80006dc0:	04013483          	ld	s1,64(sp)
    80006dc4:	04813503          	ld	a0,72(sp)
    80006dc8:	05013583          	ld	a1,80(sp)
    80006dcc:	05813603          	ld	a2,88(sp)
    80006dd0:	06013683          	ld	a3,96(sp)
    80006dd4:	06813703          	ld	a4,104(sp)
    80006dd8:	07013783          	ld	a5,112(sp)
    80006ddc:	07813803          	ld	a6,120(sp)
    80006de0:	08013883          	ld	a7,128(sp)
    80006de4:	08813903          	ld	s2,136(sp)
    80006de8:	09013983          	ld	s3,144(sp)
    80006dec:	09813a03          	ld	s4,152(sp)
    80006df0:	0a013a83          	ld	s5,160(sp)
    80006df4:	0a813b03          	ld	s6,168(sp)
    80006df8:	0b013b83          	ld	s7,176(sp)
    80006dfc:	0b813c03          	ld	s8,184(sp)
    80006e00:	0c013c83          	ld	s9,192(sp)
    80006e04:	0c813d03          	ld	s10,200(sp)
    80006e08:	0d013d83          	ld	s11,208(sp)
    80006e0c:	0d813e03          	ld	t3,216(sp)
    80006e10:	0e013e83          	ld	t4,224(sp)
    80006e14:	0e813f03          	ld	t5,232(sp)
    80006e18:	0f013f83          	ld	t6,240(sp)
    80006e1c:	10010113          	addi	sp,sp,256
    80006e20:	10200073          	sret
    80006e24:	00000013          	nop
    80006e28:	00000013          	nop
    80006e2c:	00000013          	nop

0000000080006e30 <timervec>:
    80006e30:	34051573          	csrrw	a0,mscratch,a0
    80006e34:	00b53023          	sd	a1,0(a0)
    80006e38:	00c53423          	sd	a2,8(a0)
    80006e3c:	00d53823          	sd	a3,16(a0)
    80006e40:	01853583          	ld	a1,24(a0)
    80006e44:	02053603          	ld	a2,32(a0)
    80006e48:	0005b683          	ld	a3,0(a1)
    80006e4c:	00c686b3          	add	a3,a3,a2
    80006e50:	00d5b023          	sd	a3,0(a1)
    80006e54:	00200593          	li	a1,2
    80006e58:	14459073          	csrw	sip,a1
    80006e5c:	01053683          	ld	a3,16(a0)
    80006e60:	00853603          	ld	a2,8(a0)
    80006e64:	00053583          	ld	a1,0(a0)
    80006e68:	34051573          	csrrw	a0,mscratch,a0
    80006e6c:	30200073          	mret

0000000080006e70 <plicinit>:
    80006e70:	ff010113          	addi	sp,sp,-16
    80006e74:	00813423          	sd	s0,8(sp)
    80006e78:	01010413          	addi	s0,sp,16
    80006e7c:	00813403          	ld	s0,8(sp)
    80006e80:	0c0007b7          	lui	a5,0xc000
    80006e84:	00100713          	li	a4,1
    80006e88:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006e8c:	00e7a223          	sw	a4,4(a5)
    80006e90:	01010113          	addi	sp,sp,16
    80006e94:	00008067          	ret

0000000080006e98 <plicinithart>:
    80006e98:	ff010113          	addi	sp,sp,-16
    80006e9c:	00813023          	sd	s0,0(sp)
    80006ea0:	00113423          	sd	ra,8(sp)
    80006ea4:	01010413          	addi	s0,sp,16
    80006ea8:	00000097          	auipc	ra,0x0
    80006eac:	a4c080e7          	jalr	-1460(ra) # 800068f4 <cpuid>
    80006eb0:	0085171b          	slliw	a4,a0,0x8
    80006eb4:	0c0027b7          	lui	a5,0xc002
    80006eb8:	00e787b3          	add	a5,a5,a4
    80006ebc:	40200713          	li	a4,1026
    80006ec0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006ec4:	00813083          	ld	ra,8(sp)
    80006ec8:	00013403          	ld	s0,0(sp)
    80006ecc:	00d5151b          	slliw	a0,a0,0xd
    80006ed0:	0c2017b7          	lui	a5,0xc201
    80006ed4:	00a78533          	add	a0,a5,a0
    80006ed8:	00052023          	sw	zero,0(a0)
    80006edc:	01010113          	addi	sp,sp,16
    80006ee0:	00008067          	ret

0000000080006ee4 <plic_claim>:
    80006ee4:	ff010113          	addi	sp,sp,-16
    80006ee8:	00813023          	sd	s0,0(sp)
    80006eec:	00113423          	sd	ra,8(sp)
    80006ef0:	01010413          	addi	s0,sp,16
    80006ef4:	00000097          	auipc	ra,0x0
    80006ef8:	a00080e7          	jalr	-1536(ra) # 800068f4 <cpuid>
    80006efc:	00813083          	ld	ra,8(sp)
    80006f00:	00013403          	ld	s0,0(sp)
    80006f04:	00d5151b          	slliw	a0,a0,0xd
    80006f08:	0c2017b7          	lui	a5,0xc201
    80006f0c:	00a78533          	add	a0,a5,a0
    80006f10:	00452503          	lw	a0,4(a0)
    80006f14:	01010113          	addi	sp,sp,16
    80006f18:	00008067          	ret

0000000080006f1c <plic_complete>:
    80006f1c:	fe010113          	addi	sp,sp,-32
    80006f20:	00813823          	sd	s0,16(sp)
    80006f24:	00913423          	sd	s1,8(sp)
    80006f28:	00113c23          	sd	ra,24(sp)
    80006f2c:	02010413          	addi	s0,sp,32
    80006f30:	00050493          	mv	s1,a0
    80006f34:	00000097          	auipc	ra,0x0
    80006f38:	9c0080e7          	jalr	-1600(ra) # 800068f4 <cpuid>
    80006f3c:	01813083          	ld	ra,24(sp)
    80006f40:	01013403          	ld	s0,16(sp)
    80006f44:	00d5179b          	slliw	a5,a0,0xd
    80006f48:	0c201737          	lui	a4,0xc201
    80006f4c:	00f707b3          	add	a5,a4,a5
    80006f50:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006f54:	00813483          	ld	s1,8(sp)
    80006f58:	02010113          	addi	sp,sp,32
    80006f5c:	00008067          	ret

0000000080006f60 <consolewrite>:
    80006f60:	fb010113          	addi	sp,sp,-80
    80006f64:	04813023          	sd	s0,64(sp)
    80006f68:	04113423          	sd	ra,72(sp)
    80006f6c:	02913c23          	sd	s1,56(sp)
    80006f70:	03213823          	sd	s2,48(sp)
    80006f74:	03313423          	sd	s3,40(sp)
    80006f78:	03413023          	sd	s4,32(sp)
    80006f7c:	01513c23          	sd	s5,24(sp)
    80006f80:	05010413          	addi	s0,sp,80
    80006f84:	06c05c63          	blez	a2,80006ffc <consolewrite+0x9c>
    80006f88:	00060993          	mv	s3,a2
    80006f8c:	00050a13          	mv	s4,a0
    80006f90:	00058493          	mv	s1,a1
    80006f94:	00000913          	li	s2,0
    80006f98:	fff00a93          	li	s5,-1
    80006f9c:	01c0006f          	j	80006fb8 <consolewrite+0x58>
    80006fa0:	fbf44503          	lbu	a0,-65(s0)
    80006fa4:	0019091b          	addiw	s2,s2,1
    80006fa8:	00148493          	addi	s1,s1,1
    80006fac:	00001097          	auipc	ra,0x1
    80006fb0:	a9c080e7          	jalr	-1380(ra) # 80007a48 <uartputc>
    80006fb4:	03298063          	beq	s3,s2,80006fd4 <consolewrite+0x74>
    80006fb8:	00048613          	mv	a2,s1
    80006fbc:	00100693          	li	a3,1
    80006fc0:	000a0593          	mv	a1,s4
    80006fc4:	fbf40513          	addi	a0,s0,-65
    80006fc8:	00000097          	auipc	ra,0x0
    80006fcc:	9e4080e7          	jalr	-1564(ra) # 800069ac <either_copyin>
    80006fd0:	fd5518e3          	bne	a0,s5,80006fa0 <consolewrite+0x40>
    80006fd4:	04813083          	ld	ra,72(sp)
    80006fd8:	04013403          	ld	s0,64(sp)
    80006fdc:	03813483          	ld	s1,56(sp)
    80006fe0:	02813983          	ld	s3,40(sp)
    80006fe4:	02013a03          	ld	s4,32(sp)
    80006fe8:	01813a83          	ld	s5,24(sp)
    80006fec:	00090513          	mv	a0,s2
    80006ff0:	03013903          	ld	s2,48(sp)
    80006ff4:	05010113          	addi	sp,sp,80
    80006ff8:	00008067          	ret
    80006ffc:	00000913          	li	s2,0
    80007000:	fd5ff06f          	j	80006fd4 <consolewrite+0x74>

0000000080007004 <consoleread>:
    80007004:	f9010113          	addi	sp,sp,-112
    80007008:	06813023          	sd	s0,96(sp)
    8000700c:	04913c23          	sd	s1,88(sp)
    80007010:	05213823          	sd	s2,80(sp)
    80007014:	05313423          	sd	s3,72(sp)
    80007018:	05413023          	sd	s4,64(sp)
    8000701c:	03513c23          	sd	s5,56(sp)
    80007020:	03613823          	sd	s6,48(sp)
    80007024:	03713423          	sd	s7,40(sp)
    80007028:	03813023          	sd	s8,32(sp)
    8000702c:	06113423          	sd	ra,104(sp)
    80007030:	01913c23          	sd	s9,24(sp)
    80007034:	07010413          	addi	s0,sp,112
    80007038:	00060b93          	mv	s7,a2
    8000703c:	00050913          	mv	s2,a0
    80007040:	00058c13          	mv	s8,a1
    80007044:	00060b1b          	sext.w	s6,a2
    80007048:	00006497          	auipc	s1,0x6
    8000704c:	b1048493          	addi	s1,s1,-1264 # 8000cb58 <cons>
    80007050:	00400993          	li	s3,4
    80007054:	fff00a13          	li	s4,-1
    80007058:	00a00a93          	li	s5,10
    8000705c:	05705e63          	blez	s7,800070b8 <consoleread+0xb4>
    80007060:	09c4a703          	lw	a4,156(s1)
    80007064:	0984a783          	lw	a5,152(s1)
    80007068:	0007071b          	sext.w	a4,a4
    8000706c:	08e78463          	beq	a5,a4,800070f4 <consoleread+0xf0>
    80007070:	07f7f713          	andi	a4,a5,127
    80007074:	00e48733          	add	a4,s1,a4
    80007078:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000707c:	0017869b          	addiw	a3,a5,1
    80007080:	08d4ac23          	sw	a3,152(s1)
    80007084:	00070c9b          	sext.w	s9,a4
    80007088:	0b370663          	beq	a4,s3,80007134 <consoleread+0x130>
    8000708c:	00100693          	li	a3,1
    80007090:	f9f40613          	addi	a2,s0,-97
    80007094:	000c0593          	mv	a1,s8
    80007098:	00090513          	mv	a0,s2
    8000709c:	f8e40fa3          	sb	a4,-97(s0)
    800070a0:	00000097          	auipc	ra,0x0
    800070a4:	8c0080e7          	jalr	-1856(ra) # 80006960 <either_copyout>
    800070a8:	01450863          	beq	a0,s4,800070b8 <consoleread+0xb4>
    800070ac:	001c0c13          	addi	s8,s8,1
    800070b0:	fffb8b9b          	addiw	s7,s7,-1
    800070b4:	fb5c94e3          	bne	s9,s5,8000705c <consoleread+0x58>
    800070b8:	000b851b          	sext.w	a0,s7
    800070bc:	06813083          	ld	ra,104(sp)
    800070c0:	06013403          	ld	s0,96(sp)
    800070c4:	05813483          	ld	s1,88(sp)
    800070c8:	05013903          	ld	s2,80(sp)
    800070cc:	04813983          	ld	s3,72(sp)
    800070d0:	04013a03          	ld	s4,64(sp)
    800070d4:	03813a83          	ld	s5,56(sp)
    800070d8:	02813b83          	ld	s7,40(sp)
    800070dc:	02013c03          	ld	s8,32(sp)
    800070e0:	01813c83          	ld	s9,24(sp)
    800070e4:	40ab053b          	subw	a0,s6,a0
    800070e8:	03013b03          	ld	s6,48(sp)
    800070ec:	07010113          	addi	sp,sp,112
    800070f0:	00008067          	ret
    800070f4:	00001097          	auipc	ra,0x1
    800070f8:	1d8080e7          	jalr	472(ra) # 800082cc <push_on>
    800070fc:	0984a703          	lw	a4,152(s1)
    80007100:	09c4a783          	lw	a5,156(s1)
    80007104:	0007879b          	sext.w	a5,a5
    80007108:	fef70ce3          	beq	a4,a5,80007100 <consoleread+0xfc>
    8000710c:	00001097          	auipc	ra,0x1
    80007110:	234080e7          	jalr	564(ra) # 80008340 <pop_on>
    80007114:	0984a783          	lw	a5,152(s1)
    80007118:	07f7f713          	andi	a4,a5,127
    8000711c:	00e48733          	add	a4,s1,a4
    80007120:	01874703          	lbu	a4,24(a4)
    80007124:	0017869b          	addiw	a3,a5,1
    80007128:	08d4ac23          	sw	a3,152(s1)
    8000712c:	00070c9b          	sext.w	s9,a4
    80007130:	f5371ee3          	bne	a4,s3,8000708c <consoleread+0x88>
    80007134:	000b851b          	sext.w	a0,s7
    80007138:	f96bf2e3          	bgeu	s7,s6,800070bc <consoleread+0xb8>
    8000713c:	08f4ac23          	sw	a5,152(s1)
    80007140:	f7dff06f          	j	800070bc <consoleread+0xb8>

0000000080007144 <consputc>:
    80007144:	10000793          	li	a5,256
    80007148:	00f50663          	beq	a0,a5,80007154 <consputc+0x10>
    8000714c:	00001317          	auipc	t1,0x1
    80007150:	9f430067          	jr	-1548(t1) # 80007b40 <uartputc_sync>
    80007154:	ff010113          	addi	sp,sp,-16
    80007158:	00113423          	sd	ra,8(sp)
    8000715c:	00813023          	sd	s0,0(sp)
    80007160:	01010413          	addi	s0,sp,16
    80007164:	00800513          	li	a0,8
    80007168:	00001097          	auipc	ra,0x1
    8000716c:	9d8080e7          	jalr	-1576(ra) # 80007b40 <uartputc_sync>
    80007170:	02000513          	li	a0,32
    80007174:	00001097          	auipc	ra,0x1
    80007178:	9cc080e7          	jalr	-1588(ra) # 80007b40 <uartputc_sync>
    8000717c:	00013403          	ld	s0,0(sp)
    80007180:	00813083          	ld	ra,8(sp)
    80007184:	00800513          	li	a0,8
    80007188:	01010113          	addi	sp,sp,16
    8000718c:	00001317          	auipc	t1,0x1
    80007190:	9b430067          	jr	-1612(t1) # 80007b40 <uartputc_sync>

0000000080007194 <consoleintr>:
    80007194:	fe010113          	addi	sp,sp,-32
    80007198:	00813823          	sd	s0,16(sp)
    8000719c:	00913423          	sd	s1,8(sp)
    800071a0:	01213023          	sd	s2,0(sp)
    800071a4:	00113c23          	sd	ra,24(sp)
    800071a8:	02010413          	addi	s0,sp,32
    800071ac:	00006917          	auipc	s2,0x6
    800071b0:	9ac90913          	addi	s2,s2,-1620 # 8000cb58 <cons>
    800071b4:	00050493          	mv	s1,a0
    800071b8:	00090513          	mv	a0,s2
    800071bc:	00001097          	auipc	ra,0x1
    800071c0:	e40080e7          	jalr	-448(ra) # 80007ffc <acquire>
    800071c4:	02048c63          	beqz	s1,800071fc <consoleintr+0x68>
    800071c8:	0a092783          	lw	a5,160(s2)
    800071cc:	09892703          	lw	a4,152(s2)
    800071d0:	07f00693          	li	a3,127
    800071d4:	40e7873b          	subw	a4,a5,a4
    800071d8:	02e6e263          	bltu	a3,a4,800071fc <consoleintr+0x68>
    800071dc:	00d00713          	li	a4,13
    800071e0:	04e48063          	beq	s1,a4,80007220 <consoleintr+0x8c>
    800071e4:	07f7f713          	andi	a4,a5,127
    800071e8:	00e90733          	add	a4,s2,a4
    800071ec:	0017879b          	addiw	a5,a5,1
    800071f0:	0af92023          	sw	a5,160(s2)
    800071f4:	00970c23          	sb	s1,24(a4)
    800071f8:	08f92e23          	sw	a5,156(s2)
    800071fc:	01013403          	ld	s0,16(sp)
    80007200:	01813083          	ld	ra,24(sp)
    80007204:	00813483          	ld	s1,8(sp)
    80007208:	00013903          	ld	s2,0(sp)
    8000720c:	00006517          	auipc	a0,0x6
    80007210:	94c50513          	addi	a0,a0,-1716 # 8000cb58 <cons>
    80007214:	02010113          	addi	sp,sp,32
    80007218:	00001317          	auipc	t1,0x1
    8000721c:	eb030067          	jr	-336(t1) # 800080c8 <release>
    80007220:	00a00493          	li	s1,10
    80007224:	fc1ff06f          	j	800071e4 <consoleintr+0x50>

0000000080007228 <consoleinit>:
    80007228:	fe010113          	addi	sp,sp,-32
    8000722c:	00113c23          	sd	ra,24(sp)
    80007230:	00813823          	sd	s0,16(sp)
    80007234:	00913423          	sd	s1,8(sp)
    80007238:	02010413          	addi	s0,sp,32
    8000723c:	00006497          	auipc	s1,0x6
    80007240:	91c48493          	addi	s1,s1,-1764 # 8000cb58 <cons>
    80007244:	00048513          	mv	a0,s1
    80007248:	00002597          	auipc	a1,0x2
    8000724c:	2f058593          	addi	a1,a1,752 # 80009538 <CONSOLE_STATUS+0x528>
    80007250:	00001097          	auipc	ra,0x1
    80007254:	d88080e7          	jalr	-632(ra) # 80007fd8 <initlock>
    80007258:	00000097          	auipc	ra,0x0
    8000725c:	7ac080e7          	jalr	1964(ra) # 80007a04 <uartinit>
    80007260:	01813083          	ld	ra,24(sp)
    80007264:	01013403          	ld	s0,16(sp)
    80007268:	00000797          	auipc	a5,0x0
    8000726c:	d9c78793          	addi	a5,a5,-612 # 80007004 <consoleread>
    80007270:	0af4bc23          	sd	a5,184(s1)
    80007274:	00000797          	auipc	a5,0x0
    80007278:	cec78793          	addi	a5,a5,-788 # 80006f60 <consolewrite>
    8000727c:	0cf4b023          	sd	a5,192(s1)
    80007280:	00813483          	ld	s1,8(sp)
    80007284:	02010113          	addi	sp,sp,32
    80007288:	00008067          	ret

000000008000728c <console_read>:
    8000728c:	ff010113          	addi	sp,sp,-16
    80007290:	00813423          	sd	s0,8(sp)
    80007294:	01010413          	addi	s0,sp,16
    80007298:	00813403          	ld	s0,8(sp)
    8000729c:	00006317          	auipc	t1,0x6
    800072a0:	97433303          	ld	t1,-1676(t1) # 8000cc10 <devsw+0x10>
    800072a4:	01010113          	addi	sp,sp,16
    800072a8:	00030067          	jr	t1

00000000800072ac <console_write>:
    800072ac:	ff010113          	addi	sp,sp,-16
    800072b0:	00813423          	sd	s0,8(sp)
    800072b4:	01010413          	addi	s0,sp,16
    800072b8:	00813403          	ld	s0,8(sp)
    800072bc:	00006317          	auipc	t1,0x6
    800072c0:	95c33303          	ld	t1,-1700(t1) # 8000cc18 <devsw+0x18>
    800072c4:	01010113          	addi	sp,sp,16
    800072c8:	00030067          	jr	t1

00000000800072cc <panic>:
    800072cc:	fe010113          	addi	sp,sp,-32
    800072d0:	00113c23          	sd	ra,24(sp)
    800072d4:	00813823          	sd	s0,16(sp)
    800072d8:	00913423          	sd	s1,8(sp)
    800072dc:	02010413          	addi	s0,sp,32
    800072e0:	00050493          	mv	s1,a0
    800072e4:	00002517          	auipc	a0,0x2
    800072e8:	25c50513          	addi	a0,a0,604 # 80009540 <CONSOLE_STATUS+0x530>
    800072ec:	00006797          	auipc	a5,0x6
    800072f0:	9c07a623          	sw	zero,-1588(a5) # 8000ccb8 <pr+0x18>
    800072f4:	00000097          	auipc	ra,0x0
    800072f8:	034080e7          	jalr	52(ra) # 80007328 <__printf>
    800072fc:	00048513          	mv	a0,s1
    80007300:	00000097          	auipc	ra,0x0
    80007304:	028080e7          	jalr	40(ra) # 80007328 <__printf>
    80007308:	00002517          	auipc	a0,0x2
    8000730c:	e6050513          	addi	a0,a0,-416 # 80009168 <CONSOLE_STATUS+0x158>
    80007310:	00000097          	auipc	ra,0x0
    80007314:	018080e7          	jalr	24(ra) # 80007328 <__printf>
    80007318:	00100793          	li	a5,1
    8000731c:	00004717          	auipc	a4,0x4
    80007320:	68f72e23          	sw	a5,1692(a4) # 8000b9b8 <panicked>
    80007324:	0000006f          	j	80007324 <panic+0x58>

0000000080007328 <__printf>:
    80007328:	f3010113          	addi	sp,sp,-208
    8000732c:	08813023          	sd	s0,128(sp)
    80007330:	07313423          	sd	s3,104(sp)
    80007334:	09010413          	addi	s0,sp,144
    80007338:	05813023          	sd	s8,64(sp)
    8000733c:	08113423          	sd	ra,136(sp)
    80007340:	06913c23          	sd	s1,120(sp)
    80007344:	07213823          	sd	s2,112(sp)
    80007348:	07413023          	sd	s4,96(sp)
    8000734c:	05513c23          	sd	s5,88(sp)
    80007350:	05613823          	sd	s6,80(sp)
    80007354:	05713423          	sd	s7,72(sp)
    80007358:	03913c23          	sd	s9,56(sp)
    8000735c:	03a13823          	sd	s10,48(sp)
    80007360:	03b13423          	sd	s11,40(sp)
    80007364:	00006317          	auipc	t1,0x6
    80007368:	93c30313          	addi	t1,t1,-1732 # 8000cca0 <pr>
    8000736c:	01832c03          	lw	s8,24(t1)
    80007370:	00b43423          	sd	a1,8(s0)
    80007374:	00c43823          	sd	a2,16(s0)
    80007378:	00d43c23          	sd	a3,24(s0)
    8000737c:	02e43023          	sd	a4,32(s0)
    80007380:	02f43423          	sd	a5,40(s0)
    80007384:	03043823          	sd	a6,48(s0)
    80007388:	03143c23          	sd	a7,56(s0)
    8000738c:	00050993          	mv	s3,a0
    80007390:	4a0c1663          	bnez	s8,8000783c <__printf+0x514>
    80007394:	60098c63          	beqz	s3,800079ac <__printf+0x684>
    80007398:	0009c503          	lbu	a0,0(s3)
    8000739c:	00840793          	addi	a5,s0,8
    800073a0:	f6f43c23          	sd	a5,-136(s0)
    800073a4:	00000493          	li	s1,0
    800073a8:	22050063          	beqz	a0,800075c8 <__printf+0x2a0>
    800073ac:	00002a37          	lui	s4,0x2
    800073b0:	00018ab7          	lui	s5,0x18
    800073b4:	000f4b37          	lui	s6,0xf4
    800073b8:	00989bb7          	lui	s7,0x989
    800073bc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800073c0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800073c4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800073c8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800073cc:	00148c9b          	addiw	s9,s1,1
    800073d0:	02500793          	li	a5,37
    800073d4:	01998933          	add	s2,s3,s9
    800073d8:	38f51263          	bne	a0,a5,8000775c <__printf+0x434>
    800073dc:	00094783          	lbu	a5,0(s2)
    800073e0:	00078c9b          	sext.w	s9,a5
    800073e4:	1e078263          	beqz	a5,800075c8 <__printf+0x2a0>
    800073e8:	0024849b          	addiw	s1,s1,2
    800073ec:	07000713          	li	a4,112
    800073f0:	00998933          	add	s2,s3,s1
    800073f4:	38e78a63          	beq	a5,a4,80007788 <__printf+0x460>
    800073f8:	20f76863          	bltu	a4,a5,80007608 <__printf+0x2e0>
    800073fc:	42a78863          	beq	a5,a0,8000782c <__printf+0x504>
    80007400:	06400713          	li	a4,100
    80007404:	40e79663          	bne	a5,a4,80007810 <__printf+0x4e8>
    80007408:	f7843783          	ld	a5,-136(s0)
    8000740c:	0007a603          	lw	a2,0(a5)
    80007410:	00878793          	addi	a5,a5,8
    80007414:	f6f43c23          	sd	a5,-136(s0)
    80007418:	42064a63          	bltz	a2,8000784c <__printf+0x524>
    8000741c:	00a00713          	li	a4,10
    80007420:	02e677bb          	remuw	a5,a2,a4
    80007424:	00002d97          	auipc	s11,0x2
    80007428:	144d8d93          	addi	s11,s11,324 # 80009568 <digits>
    8000742c:	00900593          	li	a1,9
    80007430:	0006051b          	sext.w	a0,a2
    80007434:	00000c93          	li	s9,0
    80007438:	02079793          	slli	a5,a5,0x20
    8000743c:	0207d793          	srli	a5,a5,0x20
    80007440:	00fd87b3          	add	a5,s11,a5
    80007444:	0007c783          	lbu	a5,0(a5)
    80007448:	02e656bb          	divuw	a3,a2,a4
    8000744c:	f8f40023          	sb	a5,-128(s0)
    80007450:	14c5d863          	bge	a1,a2,800075a0 <__printf+0x278>
    80007454:	06300593          	li	a1,99
    80007458:	00100c93          	li	s9,1
    8000745c:	02e6f7bb          	remuw	a5,a3,a4
    80007460:	02079793          	slli	a5,a5,0x20
    80007464:	0207d793          	srli	a5,a5,0x20
    80007468:	00fd87b3          	add	a5,s11,a5
    8000746c:	0007c783          	lbu	a5,0(a5)
    80007470:	02e6d73b          	divuw	a4,a3,a4
    80007474:	f8f400a3          	sb	a5,-127(s0)
    80007478:	12a5f463          	bgeu	a1,a0,800075a0 <__printf+0x278>
    8000747c:	00a00693          	li	a3,10
    80007480:	00900593          	li	a1,9
    80007484:	02d777bb          	remuw	a5,a4,a3
    80007488:	02079793          	slli	a5,a5,0x20
    8000748c:	0207d793          	srli	a5,a5,0x20
    80007490:	00fd87b3          	add	a5,s11,a5
    80007494:	0007c503          	lbu	a0,0(a5)
    80007498:	02d757bb          	divuw	a5,a4,a3
    8000749c:	f8a40123          	sb	a0,-126(s0)
    800074a0:	48e5f263          	bgeu	a1,a4,80007924 <__printf+0x5fc>
    800074a4:	06300513          	li	a0,99
    800074a8:	02d7f5bb          	remuw	a1,a5,a3
    800074ac:	02059593          	slli	a1,a1,0x20
    800074b0:	0205d593          	srli	a1,a1,0x20
    800074b4:	00bd85b3          	add	a1,s11,a1
    800074b8:	0005c583          	lbu	a1,0(a1)
    800074bc:	02d7d7bb          	divuw	a5,a5,a3
    800074c0:	f8b401a3          	sb	a1,-125(s0)
    800074c4:	48e57263          	bgeu	a0,a4,80007948 <__printf+0x620>
    800074c8:	3e700513          	li	a0,999
    800074cc:	02d7f5bb          	remuw	a1,a5,a3
    800074d0:	02059593          	slli	a1,a1,0x20
    800074d4:	0205d593          	srli	a1,a1,0x20
    800074d8:	00bd85b3          	add	a1,s11,a1
    800074dc:	0005c583          	lbu	a1,0(a1)
    800074e0:	02d7d7bb          	divuw	a5,a5,a3
    800074e4:	f8b40223          	sb	a1,-124(s0)
    800074e8:	46e57663          	bgeu	a0,a4,80007954 <__printf+0x62c>
    800074ec:	02d7f5bb          	remuw	a1,a5,a3
    800074f0:	02059593          	slli	a1,a1,0x20
    800074f4:	0205d593          	srli	a1,a1,0x20
    800074f8:	00bd85b3          	add	a1,s11,a1
    800074fc:	0005c583          	lbu	a1,0(a1)
    80007500:	02d7d7bb          	divuw	a5,a5,a3
    80007504:	f8b402a3          	sb	a1,-123(s0)
    80007508:	46ea7863          	bgeu	s4,a4,80007978 <__printf+0x650>
    8000750c:	02d7f5bb          	remuw	a1,a5,a3
    80007510:	02059593          	slli	a1,a1,0x20
    80007514:	0205d593          	srli	a1,a1,0x20
    80007518:	00bd85b3          	add	a1,s11,a1
    8000751c:	0005c583          	lbu	a1,0(a1)
    80007520:	02d7d7bb          	divuw	a5,a5,a3
    80007524:	f8b40323          	sb	a1,-122(s0)
    80007528:	3eeaf863          	bgeu	s5,a4,80007918 <__printf+0x5f0>
    8000752c:	02d7f5bb          	remuw	a1,a5,a3
    80007530:	02059593          	slli	a1,a1,0x20
    80007534:	0205d593          	srli	a1,a1,0x20
    80007538:	00bd85b3          	add	a1,s11,a1
    8000753c:	0005c583          	lbu	a1,0(a1)
    80007540:	02d7d7bb          	divuw	a5,a5,a3
    80007544:	f8b403a3          	sb	a1,-121(s0)
    80007548:	42eb7e63          	bgeu	s6,a4,80007984 <__printf+0x65c>
    8000754c:	02d7f5bb          	remuw	a1,a5,a3
    80007550:	02059593          	slli	a1,a1,0x20
    80007554:	0205d593          	srli	a1,a1,0x20
    80007558:	00bd85b3          	add	a1,s11,a1
    8000755c:	0005c583          	lbu	a1,0(a1)
    80007560:	02d7d7bb          	divuw	a5,a5,a3
    80007564:	f8b40423          	sb	a1,-120(s0)
    80007568:	42ebfc63          	bgeu	s7,a4,800079a0 <__printf+0x678>
    8000756c:	02079793          	slli	a5,a5,0x20
    80007570:	0207d793          	srli	a5,a5,0x20
    80007574:	00fd8db3          	add	s11,s11,a5
    80007578:	000dc703          	lbu	a4,0(s11)
    8000757c:	00a00793          	li	a5,10
    80007580:	00900c93          	li	s9,9
    80007584:	f8e404a3          	sb	a4,-119(s0)
    80007588:	00065c63          	bgez	a2,800075a0 <__printf+0x278>
    8000758c:	f9040713          	addi	a4,s0,-112
    80007590:	00f70733          	add	a4,a4,a5
    80007594:	02d00693          	li	a3,45
    80007598:	fed70823          	sb	a3,-16(a4)
    8000759c:	00078c93          	mv	s9,a5
    800075a0:	f8040793          	addi	a5,s0,-128
    800075a4:	01978cb3          	add	s9,a5,s9
    800075a8:	f7f40d13          	addi	s10,s0,-129
    800075ac:	000cc503          	lbu	a0,0(s9)
    800075b0:	fffc8c93          	addi	s9,s9,-1
    800075b4:	00000097          	auipc	ra,0x0
    800075b8:	b90080e7          	jalr	-1136(ra) # 80007144 <consputc>
    800075bc:	ffac98e3          	bne	s9,s10,800075ac <__printf+0x284>
    800075c0:	00094503          	lbu	a0,0(s2)
    800075c4:	e00514e3          	bnez	a0,800073cc <__printf+0xa4>
    800075c8:	1a0c1663          	bnez	s8,80007774 <__printf+0x44c>
    800075cc:	08813083          	ld	ra,136(sp)
    800075d0:	08013403          	ld	s0,128(sp)
    800075d4:	07813483          	ld	s1,120(sp)
    800075d8:	07013903          	ld	s2,112(sp)
    800075dc:	06813983          	ld	s3,104(sp)
    800075e0:	06013a03          	ld	s4,96(sp)
    800075e4:	05813a83          	ld	s5,88(sp)
    800075e8:	05013b03          	ld	s6,80(sp)
    800075ec:	04813b83          	ld	s7,72(sp)
    800075f0:	04013c03          	ld	s8,64(sp)
    800075f4:	03813c83          	ld	s9,56(sp)
    800075f8:	03013d03          	ld	s10,48(sp)
    800075fc:	02813d83          	ld	s11,40(sp)
    80007600:	0d010113          	addi	sp,sp,208
    80007604:	00008067          	ret
    80007608:	07300713          	li	a4,115
    8000760c:	1ce78a63          	beq	a5,a4,800077e0 <__printf+0x4b8>
    80007610:	07800713          	li	a4,120
    80007614:	1ee79e63          	bne	a5,a4,80007810 <__printf+0x4e8>
    80007618:	f7843783          	ld	a5,-136(s0)
    8000761c:	0007a703          	lw	a4,0(a5)
    80007620:	00878793          	addi	a5,a5,8
    80007624:	f6f43c23          	sd	a5,-136(s0)
    80007628:	28074263          	bltz	a4,800078ac <__printf+0x584>
    8000762c:	00002d97          	auipc	s11,0x2
    80007630:	f3cd8d93          	addi	s11,s11,-196 # 80009568 <digits>
    80007634:	00f77793          	andi	a5,a4,15
    80007638:	00fd87b3          	add	a5,s11,a5
    8000763c:	0007c683          	lbu	a3,0(a5)
    80007640:	00f00613          	li	a2,15
    80007644:	0007079b          	sext.w	a5,a4
    80007648:	f8d40023          	sb	a3,-128(s0)
    8000764c:	0047559b          	srliw	a1,a4,0x4
    80007650:	0047569b          	srliw	a3,a4,0x4
    80007654:	00000c93          	li	s9,0
    80007658:	0ee65063          	bge	a2,a4,80007738 <__printf+0x410>
    8000765c:	00f6f693          	andi	a3,a3,15
    80007660:	00dd86b3          	add	a3,s11,a3
    80007664:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007668:	0087d79b          	srliw	a5,a5,0x8
    8000766c:	00100c93          	li	s9,1
    80007670:	f8d400a3          	sb	a3,-127(s0)
    80007674:	0cb67263          	bgeu	a2,a1,80007738 <__printf+0x410>
    80007678:	00f7f693          	andi	a3,a5,15
    8000767c:	00dd86b3          	add	a3,s11,a3
    80007680:	0006c583          	lbu	a1,0(a3)
    80007684:	00f00613          	li	a2,15
    80007688:	0047d69b          	srliw	a3,a5,0x4
    8000768c:	f8b40123          	sb	a1,-126(s0)
    80007690:	0047d593          	srli	a1,a5,0x4
    80007694:	28f67e63          	bgeu	a2,a5,80007930 <__printf+0x608>
    80007698:	00f6f693          	andi	a3,a3,15
    8000769c:	00dd86b3          	add	a3,s11,a3
    800076a0:	0006c503          	lbu	a0,0(a3)
    800076a4:	0087d813          	srli	a6,a5,0x8
    800076a8:	0087d69b          	srliw	a3,a5,0x8
    800076ac:	f8a401a3          	sb	a0,-125(s0)
    800076b0:	28b67663          	bgeu	a2,a1,8000793c <__printf+0x614>
    800076b4:	00f6f693          	andi	a3,a3,15
    800076b8:	00dd86b3          	add	a3,s11,a3
    800076bc:	0006c583          	lbu	a1,0(a3)
    800076c0:	00c7d513          	srli	a0,a5,0xc
    800076c4:	00c7d69b          	srliw	a3,a5,0xc
    800076c8:	f8b40223          	sb	a1,-124(s0)
    800076cc:	29067a63          	bgeu	a2,a6,80007960 <__printf+0x638>
    800076d0:	00f6f693          	andi	a3,a3,15
    800076d4:	00dd86b3          	add	a3,s11,a3
    800076d8:	0006c583          	lbu	a1,0(a3)
    800076dc:	0107d813          	srli	a6,a5,0x10
    800076e0:	0107d69b          	srliw	a3,a5,0x10
    800076e4:	f8b402a3          	sb	a1,-123(s0)
    800076e8:	28a67263          	bgeu	a2,a0,8000796c <__printf+0x644>
    800076ec:	00f6f693          	andi	a3,a3,15
    800076f0:	00dd86b3          	add	a3,s11,a3
    800076f4:	0006c683          	lbu	a3,0(a3)
    800076f8:	0147d79b          	srliw	a5,a5,0x14
    800076fc:	f8d40323          	sb	a3,-122(s0)
    80007700:	21067663          	bgeu	a2,a6,8000790c <__printf+0x5e4>
    80007704:	02079793          	slli	a5,a5,0x20
    80007708:	0207d793          	srli	a5,a5,0x20
    8000770c:	00fd8db3          	add	s11,s11,a5
    80007710:	000dc683          	lbu	a3,0(s11)
    80007714:	00800793          	li	a5,8
    80007718:	00700c93          	li	s9,7
    8000771c:	f8d403a3          	sb	a3,-121(s0)
    80007720:	00075c63          	bgez	a4,80007738 <__printf+0x410>
    80007724:	f9040713          	addi	a4,s0,-112
    80007728:	00f70733          	add	a4,a4,a5
    8000772c:	02d00693          	li	a3,45
    80007730:	fed70823          	sb	a3,-16(a4)
    80007734:	00078c93          	mv	s9,a5
    80007738:	f8040793          	addi	a5,s0,-128
    8000773c:	01978cb3          	add	s9,a5,s9
    80007740:	f7f40d13          	addi	s10,s0,-129
    80007744:	000cc503          	lbu	a0,0(s9)
    80007748:	fffc8c93          	addi	s9,s9,-1
    8000774c:	00000097          	auipc	ra,0x0
    80007750:	9f8080e7          	jalr	-1544(ra) # 80007144 <consputc>
    80007754:	ff9d18e3          	bne	s10,s9,80007744 <__printf+0x41c>
    80007758:	0100006f          	j	80007768 <__printf+0x440>
    8000775c:	00000097          	auipc	ra,0x0
    80007760:	9e8080e7          	jalr	-1560(ra) # 80007144 <consputc>
    80007764:	000c8493          	mv	s1,s9
    80007768:	00094503          	lbu	a0,0(s2)
    8000776c:	c60510e3          	bnez	a0,800073cc <__printf+0xa4>
    80007770:	e40c0ee3          	beqz	s8,800075cc <__printf+0x2a4>
    80007774:	00005517          	auipc	a0,0x5
    80007778:	52c50513          	addi	a0,a0,1324 # 8000cca0 <pr>
    8000777c:	00001097          	auipc	ra,0x1
    80007780:	94c080e7          	jalr	-1716(ra) # 800080c8 <release>
    80007784:	e49ff06f          	j	800075cc <__printf+0x2a4>
    80007788:	f7843783          	ld	a5,-136(s0)
    8000778c:	03000513          	li	a0,48
    80007790:	01000d13          	li	s10,16
    80007794:	00878713          	addi	a4,a5,8
    80007798:	0007bc83          	ld	s9,0(a5)
    8000779c:	f6e43c23          	sd	a4,-136(s0)
    800077a0:	00000097          	auipc	ra,0x0
    800077a4:	9a4080e7          	jalr	-1628(ra) # 80007144 <consputc>
    800077a8:	07800513          	li	a0,120
    800077ac:	00000097          	auipc	ra,0x0
    800077b0:	998080e7          	jalr	-1640(ra) # 80007144 <consputc>
    800077b4:	00002d97          	auipc	s11,0x2
    800077b8:	db4d8d93          	addi	s11,s11,-588 # 80009568 <digits>
    800077bc:	03ccd793          	srli	a5,s9,0x3c
    800077c0:	00fd87b3          	add	a5,s11,a5
    800077c4:	0007c503          	lbu	a0,0(a5)
    800077c8:	fffd0d1b          	addiw	s10,s10,-1
    800077cc:	004c9c93          	slli	s9,s9,0x4
    800077d0:	00000097          	auipc	ra,0x0
    800077d4:	974080e7          	jalr	-1676(ra) # 80007144 <consputc>
    800077d8:	fe0d12e3          	bnez	s10,800077bc <__printf+0x494>
    800077dc:	f8dff06f          	j	80007768 <__printf+0x440>
    800077e0:	f7843783          	ld	a5,-136(s0)
    800077e4:	0007bc83          	ld	s9,0(a5)
    800077e8:	00878793          	addi	a5,a5,8
    800077ec:	f6f43c23          	sd	a5,-136(s0)
    800077f0:	000c9a63          	bnez	s9,80007804 <__printf+0x4dc>
    800077f4:	1080006f          	j	800078fc <__printf+0x5d4>
    800077f8:	001c8c93          	addi	s9,s9,1
    800077fc:	00000097          	auipc	ra,0x0
    80007800:	948080e7          	jalr	-1720(ra) # 80007144 <consputc>
    80007804:	000cc503          	lbu	a0,0(s9)
    80007808:	fe0518e3          	bnez	a0,800077f8 <__printf+0x4d0>
    8000780c:	f5dff06f          	j	80007768 <__printf+0x440>
    80007810:	02500513          	li	a0,37
    80007814:	00000097          	auipc	ra,0x0
    80007818:	930080e7          	jalr	-1744(ra) # 80007144 <consputc>
    8000781c:	000c8513          	mv	a0,s9
    80007820:	00000097          	auipc	ra,0x0
    80007824:	924080e7          	jalr	-1756(ra) # 80007144 <consputc>
    80007828:	f41ff06f          	j	80007768 <__printf+0x440>
    8000782c:	02500513          	li	a0,37
    80007830:	00000097          	auipc	ra,0x0
    80007834:	914080e7          	jalr	-1772(ra) # 80007144 <consputc>
    80007838:	f31ff06f          	j	80007768 <__printf+0x440>
    8000783c:	00030513          	mv	a0,t1
    80007840:	00000097          	auipc	ra,0x0
    80007844:	7bc080e7          	jalr	1980(ra) # 80007ffc <acquire>
    80007848:	b4dff06f          	j	80007394 <__printf+0x6c>
    8000784c:	40c0053b          	negw	a0,a2
    80007850:	00a00713          	li	a4,10
    80007854:	02e576bb          	remuw	a3,a0,a4
    80007858:	00002d97          	auipc	s11,0x2
    8000785c:	d10d8d93          	addi	s11,s11,-752 # 80009568 <digits>
    80007860:	ff700593          	li	a1,-9
    80007864:	02069693          	slli	a3,a3,0x20
    80007868:	0206d693          	srli	a3,a3,0x20
    8000786c:	00dd86b3          	add	a3,s11,a3
    80007870:	0006c683          	lbu	a3,0(a3)
    80007874:	02e557bb          	divuw	a5,a0,a4
    80007878:	f8d40023          	sb	a3,-128(s0)
    8000787c:	10b65e63          	bge	a2,a1,80007998 <__printf+0x670>
    80007880:	06300593          	li	a1,99
    80007884:	02e7f6bb          	remuw	a3,a5,a4
    80007888:	02069693          	slli	a3,a3,0x20
    8000788c:	0206d693          	srli	a3,a3,0x20
    80007890:	00dd86b3          	add	a3,s11,a3
    80007894:	0006c683          	lbu	a3,0(a3)
    80007898:	02e7d73b          	divuw	a4,a5,a4
    8000789c:	00200793          	li	a5,2
    800078a0:	f8d400a3          	sb	a3,-127(s0)
    800078a4:	bca5ece3          	bltu	a1,a0,8000747c <__printf+0x154>
    800078a8:	ce5ff06f          	j	8000758c <__printf+0x264>
    800078ac:	40e007bb          	negw	a5,a4
    800078b0:	00002d97          	auipc	s11,0x2
    800078b4:	cb8d8d93          	addi	s11,s11,-840 # 80009568 <digits>
    800078b8:	00f7f693          	andi	a3,a5,15
    800078bc:	00dd86b3          	add	a3,s11,a3
    800078c0:	0006c583          	lbu	a1,0(a3)
    800078c4:	ff100613          	li	a2,-15
    800078c8:	0047d69b          	srliw	a3,a5,0x4
    800078cc:	f8b40023          	sb	a1,-128(s0)
    800078d0:	0047d59b          	srliw	a1,a5,0x4
    800078d4:	0ac75e63          	bge	a4,a2,80007990 <__printf+0x668>
    800078d8:	00f6f693          	andi	a3,a3,15
    800078dc:	00dd86b3          	add	a3,s11,a3
    800078e0:	0006c603          	lbu	a2,0(a3)
    800078e4:	00f00693          	li	a3,15
    800078e8:	0087d79b          	srliw	a5,a5,0x8
    800078ec:	f8c400a3          	sb	a2,-127(s0)
    800078f0:	d8b6e4e3          	bltu	a3,a1,80007678 <__printf+0x350>
    800078f4:	00200793          	li	a5,2
    800078f8:	e2dff06f          	j	80007724 <__printf+0x3fc>
    800078fc:	00002c97          	auipc	s9,0x2
    80007900:	c4cc8c93          	addi	s9,s9,-948 # 80009548 <CONSOLE_STATUS+0x538>
    80007904:	02800513          	li	a0,40
    80007908:	ef1ff06f          	j	800077f8 <__printf+0x4d0>
    8000790c:	00700793          	li	a5,7
    80007910:	00600c93          	li	s9,6
    80007914:	e0dff06f          	j	80007720 <__printf+0x3f8>
    80007918:	00700793          	li	a5,7
    8000791c:	00600c93          	li	s9,6
    80007920:	c69ff06f          	j	80007588 <__printf+0x260>
    80007924:	00300793          	li	a5,3
    80007928:	00200c93          	li	s9,2
    8000792c:	c5dff06f          	j	80007588 <__printf+0x260>
    80007930:	00300793          	li	a5,3
    80007934:	00200c93          	li	s9,2
    80007938:	de9ff06f          	j	80007720 <__printf+0x3f8>
    8000793c:	00400793          	li	a5,4
    80007940:	00300c93          	li	s9,3
    80007944:	dddff06f          	j	80007720 <__printf+0x3f8>
    80007948:	00400793          	li	a5,4
    8000794c:	00300c93          	li	s9,3
    80007950:	c39ff06f          	j	80007588 <__printf+0x260>
    80007954:	00500793          	li	a5,5
    80007958:	00400c93          	li	s9,4
    8000795c:	c2dff06f          	j	80007588 <__printf+0x260>
    80007960:	00500793          	li	a5,5
    80007964:	00400c93          	li	s9,4
    80007968:	db9ff06f          	j	80007720 <__printf+0x3f8>
    8000796c:	00600793          	li	a5,6
    80007970:	00500c93          	li	s9,5
    80007974:	dadff06f          	j	80007720 <__printf+0x3f8>
    80007978:	00600793          	li	a5,6
    8000797c:	00500c93          	li	s9,5
    80007980:	c09ff06f          	j	80007588 <__printf+0x260>
    80007984:	00800793          	li	a5,8
    80007988:	00700c93          	li	s9,7
    8000798c:	bfdff06f          	j	80007588 <__printf+0x260>
    80007990:	00100793          	li	a5,1
    80007994:	d91ff06f          	j	80007724 <__printf+0x3fc>
    80007998:	00100793          	li	a5,1
    8000799c:	bf1ff06f          	j	8000758c <__printf+0x264>
    800079a0:	00900793          	li	a5,9
    800079a4:	00800c93          	li	s9,8
    800079a8:	be1ff06f          	j	80007588 <__printf+0x260>
    800079ac:	00002517          	auipc	a0,0x2
    800079b0:	ba450513          	addi	a0,a0,-1116 # 80009550 <CONSOLE_STATUS+0x540>
    800079b4:	00000097          	auipc	ra,0x0
    800079b8:	918080e7          	jalr	-1768(ra) # 800072cc <panic>

00000000800079bc <printfinit>:
    800079bc:	fe010113          	addi	sp,sp,-32
    800079c0:	00813823          	sd	s0,16(sp)
    800079c4:	00913423          	sd	s1,8(sp)
    800079c8:	00113c23          	sd	ra,24(sp)
    800079cc:	02010413          	addi	s0,sp,32
    800079d0:	00005497          	auipc	s1,0x5
    800079d4:	2d048493          	addi	s1,s1,720 # 8000cca0 <pr>
    800079d8:	00048513          	mv	a0,s1
    800079dc:	00002597          	auipc	a1,0x2
    800079e0:	b8458593          	addi	a1,a1,-1148 # 80009560 <CONSOLE_STATUS+0x550>
    800079e4:	00000097          	auipc	ra,0x0
    800079e8:	5f4080e7          	jalr	1524(ra) # 80007fd8 <initlock>
    800079ec:	01813083          	ld	ra,24(sp)
    800079f0:	01013403          	ld	s0,16(sp)
    800079f4:	0004ac23          	sw	zero,24(s1)
    800079f8:	00813483          	ld	s1,8(sp)
    800079fc:	02010113          	addi	sp,sp,32
    80007a00:	00008067          	ret

0000000080007a04 <uartinit>:
    80007a04:	ff010113          	addi	sp,sp,-16
    80007a08:	00813423          	sd	s0,8(sp)
    80007a0c:	01010413          	addi	s0,sp,16
    80007a10:	100007b7          	lui	a5,0x10000
    80007a14:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007a18:	f8000713          	li	a4,-128
    80007a1c:	00e781a3          	sb	a4,3(a5)
    80007a20:	00300713          	li	a4,3
    80007a24:	00e78023          	sb	a4,0(a5)
    80007a28:	000780a3          	sb	zero,1(a5)
    80007a2c:	00e781a3          	sb	a4,3(a5)
    80007a30:	00700693          	li	a3,7
    80007a34:	00d78123          	sb	a3,2(a5)
    80007a38:	00e780a3          	sb	a4,1(a5)
    80007a3c:	00813403          	ld	s0,8(sp)
    80007a40:	01010113          	addi	sp,sp,16
    80007a44:	00008067          	ret

0000000080007a48 <uartputc>:
    80007a48:	00004797          	auipc	a5,0x4
    80007a4c:	f707a783          	lw	a5,-144(a5) # 8000b9b8 <panicked>
    80007a50:	00078463          	beqz	a5,80007a58 <uartputc+0x10>
    80007a54:	0000006f          	j	80007a54 <uartputc+0xc>
    80007a58:	fd010113          	addi	sp,sp,-48
    80007a5c:	02813023          	sd	s0,32(sp)
    80007a60:	00913c23          	sd	s1,24(sp)
    80007a64:	01213823          	sd	s2,16(sp)
    80007a68:	01313423          	sd	s3,8(sp)
    80007a6c:	02113423          	sd	ra,40(sp)
    80007a70:	03010413          	addi	s0,sp,48
    80007a74:	00004917          	auipc	s2,0x4
    80007a78:	f4c90913          	addi	s2,s2,-180 # 8000b9c0 <uart_tx_r>
    80007a7c:	00093783          	ld	a5,0(s2)
    80007a80:	00004497          	auipc	s1,0x4
    80007a84:	f4848493          	addi	s1,s1,-184 # 8000b9c8 <uart_tx_w>
    80007a88:	0004b703          	ld	a4,0(s1)
    80007a8c:	02078693          	addi	a3,a5,32
    80007a90:	00050993          	mv	s3,a0
    80007a94:	02e69c63          	bne	a3,a4,80007acc <uartputc+0x84>
    80007a98:	00001097          	auipc	ra,0x1
    80007a9c:	834080e7          	jalr	-1996(ra) # 800082cc <push_on>
    80007aa0:	00093783          	ld	a5,0(s2)
    80007aa4:	0004b703          	ld	a4,0(s1)
    80007aa8:	02078793          	addi	a5,a5,32
    80007aac:	00e79463          	bne	a5,a4,80007ab4 <uartputc+0x6c>
    80007ab0:	0000006f          	j	80007ab0 <uartputc+0x68>
    80007ab4:	00001097          	auipc	ra,0x1
    80007ab8:	88c080e7          	jalr	-1908(ra) # 80008340 <pop_on>
    80007abc:	00093783          	ld	a5,0(s2)
    80007ac0:	0004b703          	ld	a4,0(s1)
    80007ac4:	02078693          	addi	a3,a5,32
    80007ac8:	fce688e3          	beq	a3,a4,80007a98 <uartputc+0x50>
    80007acc:	01f77693          	andi	a3,a4,31
    80007ad0:	00005597          	auipc	a1,0x5
    80007ad4:	1f058593          	addi	a1,a1,496 # 8000ccc0 <uart_tx_buf>
    80007ad8:	00d586b3          	add	a3,a1,a3
    80007adc:	00170713          	addi	a4,a4,1
    80007ae0:	01368023          	sb	s3,0(a3)
    80007ae4:	00e4b023          	sd	a4,0(s1)
    80007ae8:	10000637          	lui	a2,0x10000
    80007aec:	02f71063          	bne	a4,a5,80007b0c <uartputc+0xc4>
    80007af0:	0340006f          	j	80007b24 <uartputc+0xdc>
    80007af4:	00074703          	lbu	a4,0(a4)
    80007af8:	00f93023          	sd	a5,0(s2)
    80007afc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007b00:	00093783          	ld	a5,0(s2)
    80007b04:	0004b703          	ld	a4,0(s1)
    80007b08:	00f70e63          	beq	a4,a5,80007b24 <uartputc+0xdc>
    80007b0c:	00564683          	lbu	a3,5(a2)
    80007b10:	01f7f713          	andi	a4,a5,31
    80007b14:	00e58733          	add	a4,a1,a4
    80007b18:	0206f693          	andi	a3,a3,32
    80007b1c:	00178793          	addi	a5,a5,1
    80007b20:	fc069ae3          	bnez	a3,80007af4 <uartputc+0xac>
    80007b24:	02813083          	ld	ra,40(sp)
    80007b28:	02013403          	ld	s0,32(sp)
    80007b2c:	01813483          	ld	s1,24(sp)
    80007b30:	01013903          	ld	s2,16(sp)
    80007b34:	00813983          	ld	s3,8(sp)
    80007b38:	03010113          	addi	sp,sp,48
    80007b3c:	00008067          	ret

0000000080007b40 <uartputc_sync>:
    80007b40:	ff010113          	addi	sp,sp,-16
    80007b44:	00813423          	sd	s0,8(sp)
    80007b48:	01010413          	addi	s0,sp,16
    80007b4c:	00004717          	auipc	a4,0x4
    80007b50:	e6c72703          	lw	a4,-404(a4) # 8000b9b8 <panicked>
    80007b54:	02071663          	bnez	a4,80007b80 <uartputc_sync+0x40>
    80007b58:	00050793          	mv	a5,a0
    80007b5c:	100006b7          	lui	a3,0x10000
    80007b60:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007b64:	02077713          	andi	a4,a4,32
    80007b68:	fe070ce3          	beqz	a4,80007b60 <uartputc_sync+0x20>
    80007b6c:	0ff7f793          	andi	a5,a5,255
    80007b70:	00f68023          	sb	a5,0(a3)
    80007b74:	00813403          	ld	s0,8(sp)
    80007b78:	01010113          	addi	sp,sp,16
    80007b7c:	00008067          	ret
    80007b80:	0000006f          	j	80007b80 <uartputc_sync+0x40>

0000000080007b84 <uartstart>:
    80007b84:	ff010113          	addi	sp,sp,-16
    80007b88:	00813423          	sd	s0,8(sp)
    80007b8c:	01010413          	addi	s0,sp,16
    80007b90:	00004617          	auipc	a2,0x4
    80007b94:	e3060613          	addi	a2,a2,-464 # 8000b9c0 <uart_tx_r>
    80007b98:	00004517          	auipc	a0,0x4
    80007b9c:	e3050513          	addi	a0,a0,-464 # 8000b9c8 <uart_tx_w>
    80007ba0:	00063783          	ld	a5,0(a2)
    80007ba4:	00053703          	ld	a4,0(a0)
    80007ba8:	04f70263          	beq	a4,a5,80007bec <uartstart+0x68>
    80007bac:	100005b7          	lui	a1,0x10000
    80007bb0:	00005817          	auipc	a6,0x5
    80007bb4:	11080813          	addi	a6,a6,272 # 8000ccc0 <uart_tx_buf>
    80007bb8:	01c0006f          	j	80007bd4 <uartstart+0x50>
    80007bbc:	0006c703          	lbu	a4,0(a3)
    80007bc0:	00f63023          	sd	a5,0(a2)
    80007bc4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007bc8:	00063783          	ld	a5,0(a2)
    80007bcc:	00053703          	ld	a4,0(a0)
    80007bd0:	00f70e63          	beq	a4,a5,80007bec <uartstart+0x68>
    80007bd4:	01f7f713          	andi	a4,a5,31
    80007bd8:	00e806b3          	add	a3,a6,a4
    80007bdc:	0055c703          	lbu	a4,5(a1)
    80007be0:	00178793          	addi	a5,a5,1
    80007be4:	02077713          	andi	a4,a4,32
    80007be8:	fc071ae3          	bnez	a4,80007bbc <uartstart+0x38>
    80007bec:	00813403          	ld	s0,8(sp)
    80007bf0:	01010113          	addi	sp,sp,16
    80007bf4:	00008067          	ret

0000000080007bf8 <uartgetc>:
    80007bf8:	ff010113          	addi	sp,sp,-16
    80007bfc:	00813423          	sd	s0,8(sp)
    80007c00:	01010413          	addi	s0,sp,16
    80007c04:	10000737          	lui	a4,0x10000
    80007c08:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80007c0c:	0017f793          	andi	a5,a5,1
    80007c10:	00078c63          	beqz	a5,80007c28 <uartgetc+0x30>
    80007c14:	00074503          	lbu	a0,0(a4)
    80007c18:	0ff57513          	andi	a0,a0,255
    80007c1c:	00813403          	ld	s0,8(sp)
    80007c20:	01010113          	addi	sp,sp,16
    80007c24:	00008067          	ret
    80007c28:	fff00513          	li	a0,-1
    80007c2c:	ff1ff06f          	j	80007c1c <uartgetc+0x24>

0000000080007c30 <uartintr>:
    80007c30:	100007b7          	lui	a5,0x10000
    80007c34:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007c38:	0017f793          	andi	a5,a5,1
    80007c3c:	0a078463          	beqz	a5,80007ce4 <uartintr+0xb4>
    80007c40:	fe010113          	addi	sp,sp,-32
    80007c44:	00813823          	sd	s0,16(sp)
    80007c48:	00913423          	sd	s1,8(sp)
    80007c4c:	00113c23          	sd	ra,24(sp)
    80007c50:	02010413          	addi	s0,sp,32
    80007c54:	100004b7          	lui	s1,0x10000
    80007c58:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007c5c:	0ff57513          	andi	a0,a0,255
    80007c60:	fffff097          	auipc	ra,0xfffff
    80007c64:	534080e7          	jalr	1332(ra) # 80007194 <consoleintr>
    80007c68:	0054c783          	lbu	a5,5(s1)
    80007c6c:	0017f793          	andi	a5,a5,1
    80007c70:	fe0794e3          	bnez	a5,80007c58 <uartintr+0x28>
    80007c74:	00004617          	auipc	a2,0x4
    80007c78:	d4c60613          	addi	a2,a2,-692 # 8000b9c0 <uart_tx_r>
    80007c7c:	00004517          	auipc	a0,0x4
    80007c80:	d4c50513          	addi	a0,a0,-692 # 8000b9c8 <uart_tx_w>
    80007c84:	00063783          	ld	a5,0(a2)
    80007c88:	00053703          	ld	a4,0(a0)
    80007c8c:	04f70263          	beq	a4,a5,80007cd0 <uartintr+0xa0>
    80007c90:	100005b7          	lui	a1,0x10000
    80007c94:	00005817          	auipc	a6,0x5
    80007c98:	02c80813          	addi	a6,a6,44 # 8000ccc0 <uart_tx_buf>
    80007c9c:	01c0006f          	j	80007cb8 <uartintr+0x88>
    80007ca0:	0006c703          	lbu	a4,0(a3)
    80007ca4:	00f63023          	sd	a5,0(a2)
    80007ca8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007cac:	00063783          	ld	a5,0(a2)
    80007cb0:	00053703          	ld	a4,0(a0)
    80007cb4:	00f70e63          	beq	a4,a5,80007cd0 <uartintr+0xa0>
    80007cb8:	01f7f713          	andi	a4,a5,31
    80007cbc:	00e806b3          	add	a3,a6,a4
    80007cc0:	0055c703          	lbu	a4,5(a1)
    80007cc4:	00178793          	addi	a5,a5,1
    80007cc8:	02077713          	andi	a4,a4,32
    80007ccc:	fc071ae3          	bnez	a4,80007ca0 <uartintr+0x70>
    80007cd0:	01813083          	ld	ra,24(sp)
    80007cd4:	01013403          	ld	s0,16(sp)
    80007cd8:	00813483          	ld	s1,8(sp)
    80007cdc:	02010113          	addi	sp,sp,32
    80007ce0:	00008067          	ret
    80007ce4:	00004617          	auipc	a2,0x4
    80007ce8:	cdc60613          	addi	a2,a2,-804 # 8000b9c0 <uart_tx_r>
    80007cec:	00004517          	auipc	a0,0x4
    80007cf0:	cdc50513          	addi	a0,a0,-804 # 8000b9c8 <uart_tx_w>
    80007cf4:	00063783          	ld	a5,0(a2)
    80007cf8:	00053703          	ld	a4,0(a0)
    80007cfc:	04f70263          	beq	a4,a5,80007d40 <uartintr+0x110>
    80007d00:	100005b7          	lui	a1,0x10000
    80007d04:	00005817          	auipc	a6,0x5
    80007d08:	fbc80813          	addi	a6,a6,-68 # 8000ccc0 <uart_tx_buf>
    80007d0c:	01c0006f          	j	80007d28 <uartintr+0xf8>
    80007d10:	0006c703          	lbu	a4,0(a3)
    80007d14:	00f63023          	sd	a5,0(a2)
    80007d18:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007d1c:	00063783          	ld	a5,0(a2)
    80007d20:	00053703          	ld	a4,0(a0)
    80007d24:	02f70063          	beq	a4,a5,80007d44 <uartintr+0x114>
    80007d28:	01f7f713          	andi	a4,a5,31
    80007d2c:	00e806b3          	add	a3,a6,a4
    80007d30:	0055c703          	lbu	a4,5(a1)
    80007d34:	00178793          	addi	a5,a5,1
    80007d38:	02077713          	andi	a4,a4,32
    80007d3c:	fc071ae3          	bnez	a4,80007d10 <uartintr+0xe0>
    80007d40:	00008067          	ret
    80007d44:	00008067          	ret

0000000080007d48 <kinit>:
    80007d48:	fc010113          	addi	sp,sp,-64
    80007d4c:	02913423          	sd	s1,40(sp)
    80007d50:	fffff7b7          	lui	a5,0xfffff
    80007d54:	00006497          	auipc	s1,0x6
    80007d58:	f8b48493          	addi	s1,s1,-117 # 8000dcdf <end+0xfff>
    80007d5c:	02813823          	sd	s0,48(sp)
    80007d60:	01313c23          	sd	s3,24(sp)
    80007d64:	00f4f4b3          	and	s1,s1,a5
    80007d68:	02113c23          	sd	ra,56(sp)
    80007d6c:	03213023          	sd	s2,32(sp)
    80007d70:	01413823          	sd	s4,16(sp)
    80007d74:	01513423          	sd	s5,8(sp)
    80007d78:	04010413          	addi	s0,sp,64
    80007d7c:	000017b7          	lui	a5,0x1
    80007d80:	01100993          	li	s3,17
    80007d84:	00f487b3          	add	a5,s1,a5
    80007d88:	01b99993          	slli	s3,s3,0x1b
    80007d8c:	06f9e063          	bltu	s3,a5,80007dec <kinit+0xa4>
    80007d90:	00005a97          	auipc	s5,0x5
    80007d94:	f50a8a93          	addi	s5,s5,-176 # 8000cce0 <end>
    80007d98:	0754ec63          	bltu	s1,s5,80007e10 <kinit+0xc8>
    80007d9c:	0734fa63          	bgeu	s1,s3,80007e10 <kinit+0xc8>
    80007da0:	00088a37          	lui	s4,0x88
    80007da4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007da8:	00004917          	auipc	s2,0x4
    80007dac:	c2890913          	addi	s2,s2,-984 # 8000b9d0 <kmem>
    80007db0:	00ca1a13          	slli	s4,s4,0xc
    80007db4:	0140006f          	j	80007dc8 <kinit+0x80>
    80007db8:	000017b7          	lui	a5,0x1
    80007dbc:	00f484b3          	add	s1,s1,a5
    80007dc0:	0554e863          	bltu	s1,s5,80007e10 <kinit+0xc8>
    80007dc4:	0534f663          	bgeu	s1,s3,80007e10 <kinit+0xc8>
    80007dc8:	00001637          	lui	a2,0x1
    80007dcc:	00100593          	li	a1,1
    80007dd0:	00048513          	mv	a0,s1
    80007dd4:	00000097          	auipc	ra,0x0
    80007dd8:	5e4080e7          	jalr	1508(ra) # 800083b8 <__memset>
    80007ddc:	00093783          	ld	a5,0(s2)
    80007de0:	00f4b023          	sd	a5,0(s1)
    80007de4:	00993023          	sd	s1,0(s2)
    80007de8:	fd4498e3          	bne	s1,s4,80007db8 <kinit+0x70>
    80007dec:	03813083          	ld	ra,56(sp)
    80007df0:	03013403          	ld	s0,48(sp)
    80007df4:	02813483          	ld	s1,40(sp)
    80007df8:	02013903          	ld	s2,32(sp)
    80007dfc:	01813983          	ld	s3,24(sp)
    80007e00:	01013a03          	ld	s4,16(sp)
    80007e04:	00813a83          	ld	s5,8(sp)
    80007e08:	04010113          	addi	sp,sp,64
    80007e0c:	00008067          	ret
    80007e10:	00001517          	auipc	a0,0x1
    80007e14:	77050513          	addi	a0,a0,1904 # 80009580 <digits+0x18>
    80007e18:	fffff097          	auipc	ra,0xfffff
    80007e1c:	4b4080e7          	jalr	1204(ra) # 800072cc <panic>

0000000080007e20 <freerange>:
    80007e20:	fc010113          	addi	sp,sp,-64
    80007e24:	000017b7          	lui	a5,0x1
    80007e28:	02913423          	sd	s1,40(sp)
    80007e2c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007e30:	009504b3          	add	s1,a0,s1
    80007e34:	fffff537          	lui	a0,0xfffff
    80007e38:	02813823          	sd	s0,48(sp)
    80007e3c:	02113c23          	sd	ra,56(sp)
    80007e40:	03213023          	sd	s2,32(sp)
    80007e44:	01313c23          	sd	s3,24(sp)
    80007e48:	01413823          	sd	s4,16(sp)
    80007e4c:	01513423          	sd	s5,8(sp)
    80007e50:	01613023          	sd	s6,0(sp)
    80007e54:	04010413          	addi	s0,sp,64
    80007e58:	00a4f4b3          	and	s1,s1,a0
    80007e5c:	00f487b3          	add	a5,s1,a5
    80007e60:	06f5e463          	bltu	a1,a5,80007ec8 <freerange+0xa8>
    80007e64:	00005a97          	auipc	s5,0x5
    80007e68:	e7ca8a93          	addi	s5,s5,-388 # 8000cce0 <end>
    80007e6c:	0954e263          	bltu	s1,s5,80007ef0 <freerange+0xd0>
    80007e70:	01100993          	li	s3,17
    80007e74:	01b99993          	slli	s3,s3,0x1b
    80007e78:	0734fc63          	bgeu	s1,s3,80007ef0 <freerange+0xd0>
    80007e7c:	00058a13          	mv	s4,a1
    80007e80:	00004917          	auipc	s2,0x4
    80007e84:	b5090913          	addi	s2,s2,-1200 # 8000b9d0 <kmem>
    80007e88:	00002b37          	lui	s6,0x2
    80007e8c:	0140006f          	j	80007ea0 <freerange+0x80>
    80007e90:	000017b7          	lui	a5,0x1
    80007e94:	00f484b3          	add	s1,s1,a5
    80007e98:	0554ec63          	bltu	s1,s5,80007ef0 <freerange+0xd0>
    80007e9c:	0534fa63          	bgeu	s1,s3,80007ef0 <freerange+0xd0>
    80007ea0:	00001637          	lui	a2,0x1
    80007ea4:	00100593          	li	a1,1
    80007ea8:	00048513          	mv	a0,s1
    80007eac:	00000097          	auipc	ra,0x0
    80007eb0:	50c080e7          	jalr	1292(ra) # 800083b8 <__memset>
    80007eb4:	00093703          	ld	a4,0(s2)
    80007eb8:	016487b3          	add	a5,s1,s6
    80007ebc:	00e4b023          	sd	a4,0(s1)
    80007ec0:	00993023          	sd	s1,0(s2)
    80007ec4:	fcfa76e3          	bgeu	s4,a5,80007e90 <freerange+0x70>
    80007ec8:	03813083          	ld	ra,56(sp)
    80007ecc:	03013403          	ld	s0,48(sp)
    80007ed0:	02813483          	ld	s1,40(sp)
    80007ed4:	02013903          	ld	s2,32(sp)
    80007ed8:	01813983          	ld	s3,24(sp)
    80007edc:	01013a03          	ld	s4,16(sp)
    80007ee0:	00813a83          	ld	s5,8(sp)
    80007ee4:	00013b03          	ld	s6,0(sp)
    80007ee8:	04010113          	addi	sp,sp,64
    80007eec:	00008067          	ret
    80007ef0:	00001517          	auipc	a0,0x1
    80007ef4:	69050513          	addi	a0,a0,1680 # 80009580 <digits+0x18>
    80007ef8:	fffff097          	auipc	ra,0xfffff
    80007efc:	3d4080e7          	jalr	980(ra) # 800072cc <panic>

0000000080007f00 <kfree>:
    80007f00:	fe010113          	addi	sp,sp,-32
    80007f04:	00813823          	sd	s0,16(sp)
    80007f08:	00113c23          	sd	ra,24(sp)
    80007f0c:	00913423          	sd	s1,8(sp)
    80007f10:	02010413          	addi	s0,sp,32
    80007f14:	03451793          	slli	a5,a0,0x34
    80007f18:	04079c63          	bnez	a5,80007f70 <kfree+0x70>
    80007f1c:	00005797          	auipc	a5,0x5
    80007f20:	dc478793          	addi	a5,a5,-572 # 8000cce0 <end>
    80007f24:	00050493          	mv	s1,a0
    80007f28:	04f56463          	bltu	a0,a5,80007f70 <kfree+0x70>
    80007f2c:	01100793          	li	a5,17
    80007f30:	01b79793          	slli	a5,a5,0x1b
    80007f34:	02f57e63          	bgeu	a0,a5,80007f70 <kfree+0x70>
    80007f38:	00001637          	lui	a2,0x1
    80007f3c:	00100593          	li	a1,1
    80007f40:	00000097          	auipc	ra,0x0
    80007f44:	478080e7          	jalr	1144(ra) # 800083b8 <__memset>
    80007f48:	00004797          	auipc	a5,0x4
    80007f4c:	a8878793          	addi	a5,a5,-1400 # 8000b9d0 <kmem>
    80007f50:	0007b703          	ld	a4,0(a5)
    80007f54:	01813083          	ld	ra,24(sp)
    80007f58:	01013403          	ld	s0,16(sp)
    80007f5c:	00e4b023          	sd	a4,0(s1)
    80007f60:	0097b023          	sd	s1,0(a5)
    80007f64:	00813483          	ld	s1,8(sp)
    80007f68:	02010113          	addi	sp,sp,32
    80007f6c:	00008067          	ret
    80007f70:	00001517          	auipc	a0,0x1
    80007f74:	61050513          	addi	a0,a0,1552 # 80009580 <digits+0x18>
    80007f78:	fffff097          	auipc	ra,0xfffff
    80007f7c:	354080e7          	jalr	852(ra) # 800072cc <panic>

0000000080007f80 <kalloc>:
    80007f80:	fe010113          	addi	sp,sp,-32
    80007f84:	00813823          	sd	s0,16(sp)
    80007f88:	00913423          	sd	s1,8(sp)
    80007f8c:	00113c23          	sd	ra,24(sp)
    80007f90:	02010413          	addi	s0,sp,32
    80007f94:	00004797          	auipc	a5,0x4
    80007f98:	a3c78793          	addi	a5,a5,-1476 # 8000b9d0 <kmem>
    80007f9c:	0007b483          	ld	s1,0(a5)
    80007fa0:	02048063          	beqz	s1,80007fc0 <kalloc+0x40>
    80007fa4:	0004b703          	ld	a4,0(s1)
    80007fa8:	00001637          	lui	a2,0x1
    80007fac:	00500593          	li	a1,5
    80007fb0:	00048513          	mv	a0,s1
    80007fb4:	00e7b023          	sd	a4,0(a5)
    80007fb8:	00000097          	auipc	ra,0x0
    80007fbc:	400080e7          	jalr	1024(ra) # 800083b8 <__memset>
    80007fc0:	01813083          	ld	ra,24(sp)
    80007fc4:	01013403          	ld	s0,16(sp)
    80007fc8:	00048513          	mv	a0,s1
    80007fcc:	00813483          	ld	s1,8(sp)
    80007fd0:	02010113          	addi	sp,sp,32
    80007fd4:	00008067          	ret

0000000080007fd8 <initlock>:
    80007fd8:	ff010113          	addi	sp,sp,-16
    80007fdc:	00813423          	sd	s0,8(sp)
    80007fe0:	01010413          	addi	s0,sp,16
    80007fe4:	00813403          	ld	s0,8(sp)
    80007fe8:	00b53423          	sd	a1,8(a0)
    80007fec:	00052023          	sw	zero,0(a0)
    80007ff0:	00053823          	sd	zero,16(a0)
    80007ff4:	01010113          	addi	sp,sp,16
    80007ff8:	00008067          	ret

0000000080007ffc <acquire>:
    80007ffc:	fe010113          	addi	sp,sp,-32
    80008000:	00813823          	sd	s0,16(sp)
    80008004:	00913423          	sd	s1,8(sp)
    80008008:	00113c23          	sd	ra,24(sp)
    8000800c:	01213023          	sd	s2,0(sp)
    80008010:	02010413          	addi	s0,sp,32
    80008014:	00050493          	mv	s1,a0
    80008018:	10002973          	csrr	s2,sstatus
    8000801c:	100027f3          	csrr	a5,sstatus
    80008020:	ffd7f793          	andi	a5,a5,-3
    80008024:	10079073          	csrw	sstatus,a5
    80008028:	fffff097          	auipc	ra,0xfffff
    8000802c:	8ec080e7          	jalr	-1812(ra) # 80006914 <mycpu>
    80008030:	07852783          	lw	a5,120(a0)
    80008034:	06078e63          	beqz	a5,800080b0 <acquire+0xb4>
    80008038:	fffff097          	auipc	ra,0xfffff
    8000803c:	8dc080e7          	jalr	-1828(ra) # 80006914 <mycpu>
    80008040:	07852783          	lw	a5,120(a0)
    80008044:	0004a703          	lw	a4,0(s1)
    80008048:	0017879b          	addiw	a5,a5,1
    8000804c:	06f52c23          	sw	a5,120(a0)
    80008050:	04071063          	bnez	a4,80008090 <acquire+0x94>
    80008054:	00100713          	li	a4,1
    80008058:	00070793          	mv	a5,a4
    8000805c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008060:	0007879b          	sext.w	a5,a5
    80008064:	fe079ae3          	bnez	a5,80008058 <acquire+0x5c>
    80008068:	0ff0000f          	fence
    8000806c:	fffff097          	auipc	ra,0xfffff
    80008070:	8a8080e7          	jalr	-1880(ra) # 80006914 <mycpu>
    80008074:	01813083          	ld	ra,24(sp)
    80008078:	01013403          	ld	s0,16(sp)
    8000807c:	00a4b823          	sd	a0,16(s1)
    80008080:	00013903          	ld	s2,0(sp)
    80008084:	00813483          	ld	s1,8(sp)
    80008088:	02010113          	addi	sp,sp,32
    8000808c:	00008067          	ret
    80008090:	0104b903          	ld	s2,16(s1)
    80008094:	fffff097          	auipc	ra,0xfffff
    80008098:	880080e7          	jalr	-1920(ra) # 80006914 <mycpu>
    8000809c:	faa91ce3          	bne	s2,a0,80008054 <acquire+0x58>
    800080a0:	00001517          	auipc	a0,0x1
    800080a4:	4e850513          	addi	a0,a0,1256 # 80009588 <digits+0x20>
    800080a8:	fffff097          	auipc	ra,0xfffff
    800080ac:	224080e7          	jalr	548(ra) # 800072cc <panic>
    800080b0:	00195913          	srli	s2,s2,0x1
    800080b4:	fffff097          	auipc	ra,0xfffff
    800080b8:	860080e7          	jalr	-1952(ra) # 80006914 <mycpu>
    800080bc:	00197913          	andi	s2,s2,1
    800080c0:	07252e23          	sw	s2,124(a0)
    800080c4:	f75ff06f          	j	80008038 <acquire+0x3c>

00000000800080c8 <release>:
    800080c8:	fe010113          	addi	sp,sp,-32
    800080cc:	00813823          	sd	s0,16(sp)
    800080d0:	00113c23          	sd	ra,24(sp)
    800080d4:	00913423          	sd	s1,8(sp)
    800080d8:	01213023          	sd	s2,0(sp)
    800080dc:	02010413          	addi	s0,sp,32
    800080e0:	00052783          	lw	a5,0(a0)
    800080e4:	00079a63          	bnez	a5,800080f8 <release+0x30>
    800080e8:	00001517          	auipc	a0,0x1
    800080ec:	4a850513          	addi	a0,a0,1192 # 80009590 <digits+0x28>
    800080f0:	fffff097          	auipc	ra,0xfffff
    800080f4:	1dc080e7          	jalr	476(ra) # 800072cc <panic>
    800080f8:	01053903          	ld	s2,16(a0)
    800080fc:	00050493          	mv	s1,a0
    80008100:	fffff097          	auipc	ra,0xfffff
    80008104:	814080e7          	jalr	-2028(ra) # 80006914 <mycpu>
    80008108:	fea910e3          	bne	s2,a0,800080e8 <release+0x20>
    8000810c:	0004b823          	sd	zero,16(s1)
    80008110:	0ff0000f          	fence
    80008114:	0f50000f          	fence	iorw,ow
    80008118:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000811c:	ffffe097          	auipc	ra,0xffffe
    80008120:	7f8080e7          	jalr	2040(ra) # 80006914 <mycpu>
    80008124:	100027f3          	csrr	a5,sstatus
    80008128:	0027f793          	andi	a5,a5,2
    8000812c:	04079a63          	bnez	a5,80008180 <release+0xb8>
    80008130:	07852783          	lw	a5,120(a0)
    80008134:	02f05e63          	blez	a5,80008170 <release+0xa8>
    80008138:	fff7871b          	addiw	a4,a5,-1
    8000813c:	06e52c23          	sw	a4,120(a0)
    80008140:	00071c63          	bnez	a4,80008158 <release+0x90>
    80008144:	07c52783          	lw	a5,124(a0)
    80008148:	00078863          	beqz	a5,80008158 <release+0x90>
    8000814c:	100027f3          	csrr	a5,sstatus
    80008150:	0027e793          	ori	a5,a5,2
    80008154:	10079073          	csrw	sstatus,a5
    80008158:	01813083          	ld	ra,24(sp)
    8000815c:	01013403          	ld	s0,16(sp)
    80008160:	00813483          	ld	s1,8(sp)
    80008164:	00013903          	ld	s2,0(sp)
    80008168:	02010113          	addi	sp,sp,32
    8000816c:	00008067          	ret
    80008170:	00001517          	auipc	a0,0x1
    80008174:	44050513          	addi	a0,a0,1088 # 800095b0 <digits+0x48>
    80008178:	fffff097          	auipc	ra,0xfffff
    8000817c:	154080e7          	jalr	340(ra) # 800072cc <panic>
    80008180:	00001517          	auipc	a0,0x1
    80008184:	41850513          	addi	a0,a0,1048 # 80009598 <digits+0x30>
    80008188:	fffff097          	auipc	ra,0xfffff
    8000818c:	144080e7          	jalr	324(ra) # 800072cc <panic>

0000000080008190 <holding>:
    80008190:	00052783          	lw	a5,0(a0)
    80008194:	00079663          	bnez	a5,800081a0 <holding+0x10>
    80008198:	00000513          	li	a0,0
    8000819c:	00008067          	ret
    800081a0:	fe010113          	addi	sp,sp,-32
    800081a4:	00813823          	sd	s0,16(sp)
    800081a8:	00913423          	sd	s1,8(sp)
    800081ac:	00113c23          	sd	ra,24(sp)
    800081b0:	02010413          	addi	s0,sp,32
    800081b4:	01053483          	ld	s1,16(a0)
    800081b8:	ffffe097          	auipc	ra,0xffffe
    800081bc:	75c080e7          	jalr	1884(ra) # 80006914 <mycpu>
    800081c0:	01813083          	ld	ra,24(sp)
    800081c4:	01013403          	ld	s0,16(sp)
    800081c8:	40a48533          	sub	a0,s1,a0
    800081cc:	00153513          	seqz	a0,a0
    800081d0:	00813483          	ld	s1,8(sp)
    800081d4:	02010113          	addi	sp,sp,32
    800081d8:	00008067          	ret

00000000800081dc <push_off>:
    800081dc:	fe010113          	addi	sp,sp,-32
    800081e0:	00813823          	sd	s0,16(sp)
    800081e4:	00113c23          	sd	ra,24(sp)
    800081e8:	00913423          	sd	s1,8(sp)
    800081ec:	02010413          	addi	s0,sp,32
    800081f0:	100024f3          	csrr	s1,sstatus
    800081f4:	100027f3          	csrr	a5,sstatus
    800081f8:	ffd7f793          	andi	a5,a5,-3
    800081fc:	10079073          	csrw	sstatus,a5
    80008200:	ffffe097          	auipc	ra,0xffffe
    80008204:	714080e7          	jalr	1812(ra) # 80006914 <mycpu>
    80008208:	07852783          	lw	a5,120(a0)
    8000820c:	02078663          	beqz	a5,80008238 <push_off+0x5c>
    80008210:	ffffe097          	auipc	ra,0xffffe
    80008214:	704080e7          	jalr	1796(ra) # 80006914 <mycpu>
    80008218:	07852783          	lw	a5,120(a0)
    8000821c:	01813083          	ld	ra,24(sp)
    80008220:	01013403          	ld	s0,16(sp)
    80008224:	0017879b          	addiw	a5,a5,1
    80008228:	06f52c23          	sw	a5,120(a0)
    8000822c:	00813483          	ld	s1,8(sp)
    80008230:	02010113          	addi	sp,sp,32
    80008234:	00008067          	ret
    80008238:	0014d493          	srli	s1,s1,0x1
    8000823c:	ffffe097          	auipc	ra,0xffffe
    80008240:	6d8080e7          	jalr	1752(ra) # 80006914 <mycpu>
    80008244:	0014f493          	andi	s1,s1,1
    80008248:	06952e23          	sw	s1,124(a0)
    8000824c:	fc5ff06f          	j	80008210 <push_off+0x34>

0000000080008250 <pop_off>:
    80008250:	ff010113          	addi	sp,sp,-16
    80008254:	00813023          	sd	s0,0(sp)
    80008258:	00113423          	sd	ra,8(sp)
    8000825c:	01010413          	addi	s0,sp,16
    80008260:	ffffe097          	auipc	ra,0xffffe
    80008264:	6b4080e7          	jalr	1716(ra) # 80006914 <mycpu>
    80008268:	100027f3          	csrr	a5,sstatus
    8000826c:	0027f793          	andi	a5,a5,2
    80008270:	04079663          	bnez	a5,800082bc <pop_off+0x6c>
    80008274:	07852783          	lw	a5,120(a0)
    80008278:	02f05a63          	blez	a5,800082ac <pop_off+0x5c>
    8000827c:	fff7871b          	addiw	a4,a5,-1
    80008280:	06e52c23          	sw	a4,120(a0)
    80008284:	00071c63          	bnez	a4,8000829c <pop_off+0x4c>
    80008288:	07c52783          	lw	a5,124(a0)
    8000828c:	00078863          	beqz	a5,8000829c <pop_off+0x4c>
    80008290:	100027f3          	csrr	a5,sstatus
    80008294:	0027e793          	ori	a5,a5,2
    80008298:	10079073          	csrw	sstatus,a5
    8000829c:	00813083          	ld	ra,8(sp)
    800082a0:	00013403          	ld	s0,0(sp)
    800082a4:	01010113          	addi	sp,sp,16
    800082a8:	00008067          	ret
    800082ac:	00001517          	auipc	a0,0x1
    800082b0:	30450513          	addi	a0,a0,772 # 800095b0 <digits+0x48>
    800082b4:	fffff097          	auipc	ra,0xfffff
    800082b8:	018080e7          	jalr	24(ra) # 800072cc <panic>
    800082bc:	00001517          	auipc	a0,0x1
    800082c0:	2dc50513          	addi	a0,a0,732 # 80009598 <digits+0x30>
    800082c4:	fffff097          	auipc	ra,0xfffff
    800082c8:	008080e7          	jalr	8(ra) # 800072cc <panic>

00000000800082cc <push_on>:
    800082cc:	fe010113          	addi	sp,sp,-32
    800082d0:	00813823          	sd	s0,16(sp)
    800082d4:	00113c23          	sd	ra,24(sp)
    800082d8:	00913423          	sd	s1,8(sp)
    800082dc:	02010413          	addi	s0,sp,32
    800082e0:	100024f3          	csrr	s1,sstatus
    800082e4:	100027f3          	csrr	a5,sstatus
    800082e8:	0027e793          	ori	a5,a5,2
    800082ec:	10079073          	csrw	sstatus,a5
    800082f0:	ffffe097          	auipc	ra,0xffffe
    800082f4:	624080e7          	jalr	1572(ra) # 80006914 <mycpu>
    800082f8:	07852783          	lw	a5,120(a0)
    800082fc:	02078663          	beqz	a5,80008328 <push_on+0x5c>
    80008300:	ffffe097          	auipc	ra,0xffffe
    80008304:	614080e7          	jalr	1556(ra) # 80006914 <mycpu>
    80008308:	07852783          	lw	a5,120(a0)
    8000830c:	01813083          	ld	ra,24(sp)
    80008310:	01013403          	ld	s0,16(sp)
    80008314:	0017879b          	addiw	a5,a5,1
    80008318:	06f52c23          	sw	a5,120(a0)
    8000831c:	00813483          	ld	s1,8(sp)
    80008320:	02010113          	addi	sp,sp,32
    80008324:	00008067          	ret
    80008328:	0014d493          	srli	s1,s1,0x1
    8000832c:	ffffe097          	auipc	ra,0xffffe
    80008330:	5e8080e7          	jalr	1512(ra) # 80006914 <mycpu>
    80008334:	0014f493          	andi	s1,s1,1
    80008338:	06952e23          	sw	s1,124(a0)
    8000833c:	fc5ff06f          	j	80008300 <push_on+0x34>

0000000080008340 <pop_on>:
    80008340:	ff010113          	addi	sp,sp,-16
    80008344:	00813023          	sd	s0,0(sp)
    80008348:	00113423          	sd	ra,8(sp)
    8000834c:	01010413          	addi	s0,sp,16
    80008350:	ffffe097          	auipc	ra,0xffffe
    80008354:	5c4080e7          	jalr	1476(ra) # 80006914 <mycpu>
    80008358:	100027f3          	csrr	a5,sstatus
    8000835c:	0027f793          	andi	a5,a5,2
    80008360:	04078463          	beqz	a5,800083a8 <pop_on+0x68>
    80008364:	07852783          	lw	a5,120(a0)
    80008368:	02f05863          	blez	a5,80008398 <pop_on+0x58>
    8000836c:	fff7879b          	addiw	a5,a5,-1
    80008370:	06f52c23          	sw	a5,120(a0)
    80008374:	07853783          	ld	a5,120(a0)
    80008378:	00079863          	bnez	a5,80008388 <pop_on+0x48>
    8000837c:	100027f3          	csrr	a5,sstatus
    80008380:	ffd7f793          	andi	a5,a5,-3
    80008384:	10079073          	csrw	sstatus,a5
    80008388:	00813083          	ld	ra,8(sp)
    8000838c:	00013403          	ld	s0,0(sp)
    80008390:	01010113          	addi	sp,sp,16
    80008394:	00008067          	ret
    80008398:	00001517          	auipc	a0,0x1
    8000839c:	24050513          	addi	a0,a0,576 # 800095d8 <digits+0x70>
    800083a0:	fffff097          	auipc	ra,0xfffff
    800083a4:	f2c080e7          	jalr	-212(ra) # 800072cc <panic>
    800083a8:	00001517          	auipc	a0,0x1
    800083ac:	21050513          	addi	a0,a0,528 # 800095b8 <digits+0x50>
    800083b0:	fffff097          	auipc	ra,0xfffff
    800083b4:	f1c080e7          	jalr	-228(ra) # 800072cc <panic>

00000000800083b8 <__memset>:
    800083b8:	ff010113          	addi	sp,sp,-16
    800083bc:	00813423          	sd	s0,8(sp)
    800083c0:	01010413          	addi	s0,sp,16
    800083c4:	1a060e63          	beqz	a2,80008580 <__memset+0x1c8>
    800083c8:	40a007b3          	neg	a5,a0
    800083cc:	0077f793          	andi	a5,a5,7
    800083d0:	00778693          	addi	a3,a5,7
    800083d4:	00b00813          	li	a6,11
    800083d8:	0ff5f593          	andi	a1,a1,255
    800083dc:	fff6071b          	addiw	a4,a2,-1
    800083e0:	1b06e663          	bltu	a3,a6,8000858c <__memset+0x1d4>
    800083e4:	1cd76463          	bltu	a4,a3,800085ac <__memset+0x1f4>
    800083e8:	1a078e63          	beqz	a5,800085a4 <__memset+0x1ec>
    800083ec:	00b50023          	sb	a1,0(a0)
    800083f0:	00100713          	li	a4,1
    800083f4:	1ae78463          	beq	a5,a4,8000859c <__memset+0x1e4>
    800083f8:	00b500a3          	sb	a1,1(a0)
    800083fc:	00200713          	li	a4,2
    80008400:	1ae78a63          	beq	a5,a4,800085b4 <__memset+0x1fc>
    80008404:	00b50123          	sb	a1,2(a0)
    80008408:	00300713          	li	a4,3
    8000840c:	18e78463          	beq	a5,a4,80008594 <__memset+0x1dc>
    80008410:	00b501a3          	sb	a1,3(a0)
    80008414:	00400713          	li	a4,4
    80008418:	1ae78263          	beq	a5,a4,800085bc <__memset+0x204>
    8000841c:	00b50223          	sb	a1,4(a0)
    80008420:	00500713          	li	a4,5
    80008424:	1ae78063          	beq	a5,a4,800085c4 <__memset+0x20c>
    80008428:	00b502a3          	sb	a1,5(a0)
    8000842c:	00700713          	li	a4,7
    80008430:	18e79e63          	bne	a5,a4,800085cc <__memset+0x214>
    80008434:	00b50323          	sb	a1,6(a0)
    80008438:	00700e93          	li	t4,7
    8000843c:	00859713          	slli	a4,a1,0x8
    80008440:	00e5e733          	or	a4,a1,a4
    80008444:	01059e13          	slli	t3,a1,0x10
    80008448:	01c76e33          	or	t3,a4,t3
    8000844c:	01859313          	slli	t1,a1,0x18
    80008450:	006e6333          	or	t1,t3,t1
    80008454:	02059893          	slli	a7,a1,0x20
    80008458:	40f60e3b          	subw	t3,a2,a5
    8000845c:	011368b3          	or	a7,t1,a7
    80008460:	02859813          	slli	a6,a1,0x28
    80008464:	0108e833          	or	a6,a7,a6
    80008468:	03059693          	slli	a3,a1,0x30
    8000846c:	003e589b          	srliw	a7,t3,0x3
    80008470:	00d866b3          	or	a3,a6,a3
    80008474:	03859713          	slli	a4,a1,0x38
    80008478:	00389813          	slli	a6,a7,0x3
    8000847c:	00f507b3          	add	a5,a0,a5
    80008480:	00e6e733          	or	a4,a3,a4
    80008484:	000e089b          	sext.w	a7,t3
    80008488:	00f806b3          	add	a3,a6,a5
    8000848c:	00e7b023          	sd	a4,0(a5)
    80008490:	00878793          	addi	a5,a5,8
    80008494:	fed79ce3          	bne	a5,a3,8000848c <__memset+0xd4>
    80008498:	ff8e7793          	andi	a5,t3,-8
    8000849c:	0007871b          	sext.w	a4,a5
    800084a0:	01d787bb          	addw	a5,a5,t4
    800084a4:	0ce88e63          	beq	a7,a4,80008580 <__memset+0x1c8>
    800084a8:	00f50733          	add	a4,a0,a5
    800084ac:	00b70023          	sb	a1,0(a4)
    800084b0:	0017871b          	addiw	a4,a5,1
    800084b4:	0cc77663          	bgeu	a4,a2,80008580 <__memset+0x1c8>
    800084b8:	00e50733          	add	a4,a0,a4
    800084bc:	00b70023          	sb	a1,0(a4)
    800084c0:	0027871b          	addiw	a4,a5,2
    800084c4:	0ac77e63          	bgeu	a4,a2,80008580 <__memset+0x1c8>
    800084c8:	00e50733          	add	a4,a0,a4
    800084cc:	00b70023          	sb	a1,0(a4)
    800084d0:	0037871b          	addiw	a4,a5,3
    800084d4:	0ac77663          	bgeu	a4,a2,80008580 <__memset+0x1c8>
    800084d8:	00e50733          	add	a4,a0,a4
    800084dc:	00b70023          	sb	a1,0(a4)
    800084e0:	0047871b          	addiw	a4,a5,4
    800084e4:	08c77e63          	bgeu	a4,a2,80008580 <__memset+0x1c8>
    800084e8:	00e50733          	add	a4,a0,a4
    800084ec:	00b70023          	sb	a1,0(a4)
    800084f0:	0057871b          	addiw	a4,a5,5
    800084f4:	08c77663          	bgeu	a4,a2,80008580 <__memset+0x1c8>
    800084f8:	00e50733          	add	a4,a0,a4
    800084fc:	00b70023          	sb	a1,0(a4)
    80008500:	0067871b          	addiw	a4,a5,6
    80008504:	06c77e63          	bgeu	a4,a2,80008580 <__memset+0x1c8>
    80008508:	00e50733          	add	a4,a0,a4
    8000850c:	00b70023          	sb	a1,0(a4)
    80008510:	0077871b          	addiw	a4,a5,7
    80008514:	06c77663          	bgeu	a4,a2,80008580 <__memset+0x1c8>
    80008518:	00e50733          	add	a4,a0,a4
    8000851c:	00b70023          	sb	a1,0(a4)
    80008520:	0087871b          	addiw	a4,a5,8
    80008524:	04c77e63          	bgeu	a4,a2,80008580 <__memset+0x1c8>
    80008528:	00e50733          	add	a4,a0,a4
    8000852c:	00b70023          	sb	a1,0(a4)
    80008530:	0097871b          	addiw	a4,a5,9
    80008534:	04c77663          	bgeu	a4,a2,80008580 <__memset+0x1c8>
    80008538:	00e50733          	add	a4,a0,a4
    8000853c:	00b70023          	sb	a1,0(a4)
    80008540:	00a7871b          	addiw	a4,a5,10
    80008544:	02c77e63          	bgeu	a4,a2,80008580 <__memset+0x1c8>
    80008548:	00e50733          	add	a4,a0,a4
    8000854c:	00b70023          	sb	a1,0(a4)
    80008550:	00b7871b          	addiw	a4,a5,11
    80008554:	02c77663          	bgeu	a4,a2,80008580 <__memset+0x1c8>
    80008558:	00e50733          	add	a4,a0,a4
    8000855c:	00b70023          	sb	a1,0(a4)
    80008560:	00c7871b          	addiw	a4,a5,12
    80008564:	00c77e63          	bgeu	a4,a2,80008580 <__memset+0x1c8>
    80008568:	00e50733          	add	a4,a0,a4
    8000856c:	00b70023          	sb	a1,0(a4)
    80008570:	00d7879b          	addiw	a5,a5,13
    80008574:	00c7f663          	bgeu	a5,a2,80008580 <__memset+0x1c8>
    80008578:	00f507b3          	add	a5,a0,a5
    8000857c:	00b78023          	sb	a1,0(a5)
    80008580:	00813403          	ld	s0,8(sp)
    80008584:	01010113          	addi	sp,sp,16
    80008588:	00008067          	ret
    8000858c:	00b00693          	li	a3,11
    80008590:	e55ff06f          	j	800083e4 <__memset+0x2c>
    80008594:	00300e93          	li	t4,3
    80008598:	ea5ff06f          	j	8000843c <__memset+0x84>
    8000859c:	00100e93          	li	t4,1
    800085a0:	e9dff06f          	j	8000843c <__memset+0x84>
    800085a4:	00000e93          	li	t4,0
    800085a8:	e95ff06f          	j	8000843c <__memset+0x84>
    800085ac:	00000793          	li	a5,0
    800085b0:	ef9ff06f          	j	800084a8 <__memset+0xf0>
    800085b4:	00200e93          	li	t4,2
    800085b8:	e85ff06f          	j	8000843c <__memset+0x84>
    800085bc:	00400e93          	li	t4,4
    800085c0:	e7dff06f          	j	8000843c <__memset+0x84>
    800085c4:	00500e93          	li	t4,5
    800085c8:	e75ff06f          	j	8000843c <__memset+0x84>
    800085cc:	00600e93          	li	t4,6
    800085d0:	e6dff06f          	j	8000843c <__memset+0x84>

00000000800085d4 <__memmove>:
    800085d4:	ff010113          	addi	sp,sp,-16
    800085d8:	00813423          	sd	s0,8(sp)
    800085dc:	01010413          	addi	s0,sp,16
    800085e0:	0e060863          	beqz	a2,800086d0 <__memmove+0xfc>
    800085e4:	fff6069b          	addiw	a3,a2,-1
    800085e8:	0006881b          	sext.w	a6,a3
    800085ec:	0ea5e863          	bltu	a1,a0,800086dc <__memmove+0x108>
    800085f0:	00758713          	addi	a4,a1,7
    800085f4:	00a5e7b3          	or	a5,a1,a0
    800085f8:	40a70733          	sub	a4,a4,a0
    800085fc:	0077f793          	andi	a5,a5,7
    80008600:	00f73713          	sltiu	a4,a4,15
    80008604:	00174713          	xori	a4,a4,1
    80008608:	0017b793          	seqz	a5,a5
    8000860c:	00e7f7b3          	and	a5,a5,a4
    80008610:	10078863          	beqz	a5,80008720 <__memmove+0x14c>
    80008614:	00900793          	li	a5,9
    80008618:	1107f463          	bgeu	a5,a6,80008720 <__memmove+0x14c>
    8000861c:	0036581b          	srliw	a6,a2,0x3
    80008620:	fff8081b          	addiw	a6,a6,-1
    80008624:	02081813          	slli	a6,a6,0x20
    80008628:	01d85893          	srli	a7,a6,0x1d
    8000862c:	00858813          	addi	a6,a1,8
    80008630:	00058793          	mv	a5,a1
    80008634:	00050713          	mv	a4,a0
    80008638:	01088833          	add	a6,a7,a6
    8000863c:	0007b883          	ld	a7,0(a5)
    80008640:	00878793          	addi	a5,a5,8
    80008644:	00870713          	addi	a4,a4,8
    80008648:	ff173c23          	sd	a7,-8(a4)
    8000864c:	ff0798e3          	bne	a5,a6,8000863c <__memmove+0x68>
    80008650:	ff867713          	andi	a4,a2,-8
    80008654:	02071793          	slli	a5,a4,0x20
    80008658:	0207d793          	srli	a5,a5,0x20
    8000865c:	00f585b3          	add	a1,a1,a5
    80008660:	40e686bb          	subw	a3,a3,a4
    80008664:	00f507b3          	add	a5,a0,a5
    80008668:	06e60463          	beq	a2,a4,800086d0 <__memmove+0xfc>
    8000866c:	0005c703          	lbu	a4,0(a1)
    80008670:	00e78023          	sb	a4,0(a5)
    80008674:	04068e63          	beqz	a3,800086d0 <__memmove+0xfc>
    80008678:	0015c603          	lbu	a2,1(a1)
    8000867c:	00100713          	li	a4,1
    80008680:	00c780a3          	sb	a2,1(a5)
    80008684:	04e68663          	beq	a3,a4,800086d0 <__memmove+0xfc>
    80008688:	0025c603          	lbu	a2,2(a1)
    8000868c:	00200713          	li	a4,2
    80008690:	00c78123          	sb	a2,2(a5)
    80008694:	02e68e63          	beq	a3,a4,800086d0 <__memmove+0xfc>
    80008698:	0035c603          	lbu	a2,3(a1)
    8000869c:	00300713          	li	a4,3
    800086a0:	00c781a3          	sb	a2,3(a5)
    800086a4:	02e68663          	beq	a3,a4,800086d0 <__memmove+0xfc>
    800086a8:	0045c603          	lbu	a2,4(a1)
    800086ac:	00400713          	li	a4,4
    800086b0:	00c78223          	sb	a2,4(a5)
    800086b4:	00e68e63          	beq	a3,a4,800086d0 <__memmove+0xfc>
    800086b8:	0055c603          	lbu	a2,5(a1)
    800086bc:	00500713          	li	a4,5
    800086c0:	00c782a3          	sb	a2,5(a5)
    800086c4:	00e68663          	beq	a3,a4,800086d0 <__memmove+0xfc>
    800086c8:	0065c703          	lbu	a4,6(a1)
    800086cc:	00e78323          	sb	a4,6(a5)
    800086d0:	00813403          	ld	s0,8(sp)
    800086d4:	01010113          	addi	sp,sp,16
    800086d8:	00008067          	ret
    800086dc:	02061713          	slli	a4,a2,0x20
    800086e0:	02075713          	srli	a4,a4,0x20
    800086e4:	00e587b3          	add	a5,a1,a4
    800086e8:	f0f574e3          	bgeu	a0,a5,800085f0 <__memmove+0x1c>
    800086ec:	02069613          	slli	a2,a3,0x20
    800086f0:	02065613          	srli	a2,a2,0x20
    800086f4:	fff64613          	not	a2,a2
    800086f8:	00e50733          	add	a4,a0,a4
    800086fc:	00c78633          	add	a2,a5,a2
    80008700:	fff7c683          	lbu	a3,-1(a5)
    80008704:	fff78793          	addi	a5,a5,-1
    80008708:	fff70713          	addi	a4,a4,-1
    8000870c:	00d70023          	sb	a3,0(a4)
    80008710:	fec798e3          	bne	a5,a2,80008700 <__memmove+0x12c>
    80008714:	00813403          	ld	s0,8(sp)
    80008718:	01010113          	addi	sp,sp,16
    8000871c:	00008067          	ret
    80008720:	02069713          	slli	a4,a3,0x20
    80008724:	02075713          	srli	a4,a4,0x20
    80008728:	00170713          	addi	a4,a4,1
    8000872c:	00e50733          	add	a4,a0,a4
    80008730:	00050793          	mv	a5,a0
    80008734:	0005c683          	lbu	a3,0(a1)
    80008738:	00178793          	addi	a5,a5,1
    8000873c:	00158593          	addi	a1,a1,1
    80008740:	fed78fa3          	sb	a3,-1(a5)
    80008744:	fee798e3          	bne	a5,a4,80008734 <__memmove+0x160>
    80008748:	f89ff06f          	j	800086d0 <__memmove+0xfc>

000000008000874c <__putc>:
    8000874c:	fe010113          	addi	sp,sp,-32
    80008750:	00813823          	sd	s0,16(sp)
    80008754:	00113c23          	sd	ra,24(sp)
    80008758:	02010413          	addi	s0,sp,32
    8000875c:	00050793          	mv	a5,a0
    80008760:	fef40593          	addi	a1,s0,-17
    80008764:	00100613          	li	a2,1
    80008768:	00000513          	li	a0,0
    8000876c:	fef407a3          	sb	a5,-17(s0)
    80008770:	fffff097          	auipc	ra,0xfffff
    80008774:	b3c080e7          	jalr	-1220(ra) # 800072ac <console_write>
    80008778:	01813083          	ld	ra,24(sp)
    8000877c:	01013403          	ld	s0,16(sp)
    80008780:	02010113          	addi	sp,sp,32
    80008784:	00008067          	ret

0000000080008788 <__getc>:
    80008788:	fe010113          	addi	sp,sp,-32
    8000878c:	00813823          	sd	s0,16(sp)
    80008790:	00113c23          	sd	ra,24(sp)
    80008794:	02010413          	addi	s0,sp,32
    80008798:	fe840593          	addi	a1,s0,-24
    8000879c:	00100613          	li	a2,1
    800087a0:	00000513          	li	a0,0
    800087a4:	fffff097          	auipc	ra,0xfffff
    800087a8:	ae8080e7          	jalr	-1304(ra) # 8000728c <console_read>
    800087ac:	fe844503          	lbu	a0,-24(s0)
    800087b0:	01813083          	ld	ra,24(sp)
    800087b4:	01013403          	ld	s0,16(sp)
    800087b8:	02010113          	addi	sp,sp,32
    800087bc:	00008067          	ret

00000000800087c0 <console_handler>:
    800087c0:	fe010113          	addi	sp,sp,-32
    800087c4:	00813823          	sd	s0,16(sp)
    800087c8:	00113c23          	sd	ra,24(sp)
    800087cc:	00913423          	sd	s1,8(sp)
    800087d0:	02010413          	addi	s0,sp,32
    800087d4:	14202773          	csrr	a4,scause
    800087d8:	100027f3          	csrr	a5,sstatus
    800087dc:	0027f793          	andi	a5,a5,2
    800087e0:	06079e63          	bnez	a5,8000885c <console_handler+0x9c>
    800087e4:	00074c63          	bltz	a4,800087fc <console_handler+0x3c>
    800087e8:	01813083          	ld	ra,24(sp)
    800087ec:	01013403          	ld	s0,16(sp)
    800087f0:	00813483          	ld	s1,8(sp)
    800087f4:	02010113          	addi	sp,sp,32
    800087f8:	00008067          	ret
    800087fc:	0ff77713          	andi	a4,a4,255
    80008800:	00900793          	li	a5,9
    80008804:	fef712e3          	bne	a4,a5,800087e8 <console_handler+0x28>
    80008808:	ffffe097          	auipc	ra,0xffffe
    8000880c:	6dc080e7          	jalr	1756(ra) # 80006ee4 <plic_claim>
    80008810:	00a00793          	li	a5,10
    80008814:	00050493          	mv	s1,a0
    80008818:	02f50c63          	beq	a0,a5,80008850 <console_handler+0x90>
    8000881c:	fc0506e3          	beqz	a0,800087e8 <console_handler+0x28>
    80008820:	00050593          	mv	a1,a0
    80008824:	00001517          	auipc	a0,0x1
    80008828:	cbc50513          	addi	a0,a0,-836 # 800094e0 <CONSOLE_STATUS+0x4d0>
    8000882c:	fffff097          	auipc	ra,0xfffff
    80008830:	afc080e7          	jalr	-1284(ra) # 80007328 <__printf>
    80008834:	01013403          	ld	s0,16(sp)
    80008838:	01813083          	ld	ra,24(sp)
    8000883c:	00048513          	mv	a0,s1
    80008840:	00813483          	ld	s1,8(sp)
    80008844:	02010113          	addi	sp,sp,32
    80008848:	ffffe317          	auipc	t1,0xffffe
    8000884c:	6d430067          	jr	1748(t1) # 80006f1c <plic_complete>
    80008850:	fffff097          	auipc	ra,0xfffff
    80008854:	3e0080e7          	jalr	992(ra) # 80007c30 <uartintr>
    80008858:	fddff06f          	j	80008834 <console_handler+0x74>
    8000885c:	00001517          	auipc	a0,0x1
    80008860:	d8450513          	addi	a0,a0,-636 # 800095e0 <digits+0x78>
    80008864:	fffff097          	auipc	ra,0xfffff
    80008868:	a68080e7          	jalr	-1432(ra) # 800072cc <panic>
	...
