
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	d6013103          	ld	sp,-672(sp) # 8000bd60 <_GLOBAL_OFFSET_TABLE_+0x38>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	43d060ef          	jal	ra,80006c58 <start>

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
    80001080:	47d010ef          	jal	ra,80002cfc <_ZN5RiscV22handle_supervisor_trapEv>

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
    80001270:	518080e7          	jalr	1304(ra) # 80002784 <_ZN15MemoryAllocator20get_number_of_blocksEm>
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
    800016bc:	43878793          	addi	a5,a5,1080 # 8000baf0 <_ZTV3Sem+0x10>
    800016c0:	00f53023          	sd	a5,0(a0) # 1000 <_entry-0x7ffff000>
    blocked_threads.free();
    800016c4:	00850513          	addi	a0,a0,8
    800016c8:	00002097          	auipc	ra,0x2
    800016cc:	a34080e7          	jalr	-1484(ra) # 800030fc <_ZN10ThreadList4freeEv>
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
    80001704:	6789b983          	ld	s3,1656(s3) # 8000bd78 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001708:	0009b483          	ld	s1,0(s3)
    old -> set_status(TCB::BLOCKED);
    8000170c:	00200593          	li	a1,2
    80001710:	00048513          	mv	a0,s1
    80001714:	00002097          	auipc	ra,0x2
    80001718:	c38080e7          	jalr	-968(ra) # 8000334c <_ZN3TCB10set_statusENS_6StatusE>
    blocked_threads.push_back(old);
    8000171c:	00048593          	mv	a1,s1
    80001720:	00890513          	addi	a0,s2,8
    80001724:	00002097          	auipc	ra,0x2
    80001728:	8f4080e7          	jalr	-1804(ra) # 80003018 <_ZN10ThreadList9push_backEP3TCB>
    TCB::running = Scheduler::get();
    8000172c:	00001097          	auipc	ra,0x1
    80001730:	328080e7          	jalr	808(ra) # 80002a54 <_ZN9Scheduler3getEv>
    80001734:	00050593          	mv	a1,a0
    80001738:	00a9b023          	sd	a0,0(s3)
    TCB::yield(old, TCB::running);
    8000173c:	00048513          	mv	a0,s1
    80001740:	00002097          	auipc	ra,0x2
    80001744:	a9c080e7          	jalr	-1380(ra) # 800031dc <_ZN3TCB5yieldEPS_S0_>
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
    80001780:	92c080e7          	jalr	-1748(ra) # 800030a8 <_ZN10ThreadList12remove_firstEv>
    80001784:	00050493          	mv	s1,a0
    thread -> set_status(TCB::RUNNABLE);
    80001788:	00000593          	li	a1,0
    8000178c:	00002097          	auipc	ra,0x2
    80001790:	bc0080e7          	jalr	-1088(ra) # 8000334c <_ZN3TCB10set_statusENS_6StatusE>
    Scheduler::put(thread);
    80001794:	00048513          	mv	a0,s1
    80001798:	00001097          	auipc	ra,0x1
    8000179c:	25c080e7          	jalr	604(ra) # 800029f4 <_ZN9Scheduler3putEP3TCB>
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
    800017d8:	7f0080e7          	jalr	2032(ra) # 80002fc4 <_ZN10ThreadList9get_firstEv>
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
    80001930:	e58080e7          	jalr	-424(ra) # 80002784 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80001934:	00001097          	auipc	ra,0x1
    80001938:	aa4080e7          	jalr	-1372(ra) # 800023d8 <_ZN15MemoryAllocator9mem_allocEm>
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
    8000197c:	17878793          	addi	a5,a5,376 # 8000baf0 <_ZTV3Sem+0x10>
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
    800019d0:	b78080e7          	jalr	-1160(ra) # 80002544 <_ZN15MemoryAllocator8mem_freeEPv>
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
    80001a28:	3147b783          	ld	a5,788(a5) # 8000bd38 <_GLOBAL_OFFSET_TABLE_+0x10>
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
    80001a50:	3bc080e7          	jalr	956(ra) # 80001e08 <_ZN3Con11getc_outputEv>
            *(char *) CONSOLE_TX_DATA = c;
    80001a54:	0000a797          	auipc	a5,0xa
    80001a58:	2fc7b783          	ld	a5,764(a5) # 8000bd50 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001a5c:	0007b783          	ld	a5,0(a5)
    80001a60:	00a78023          	sb	a0,0(a5)
        while (*(char *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT) {
    80001a64:	0000a797          	auipc	a5,0xa
    80001a68:	2d47b783          	ld	a5,724(a5) # 8000bd38 <_GLOBAL_OFFSET_TABLE_+0x10>
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
    80001a94:	960080e7          	jalr	-1696(ra) # 800063f0 <_Z8userMainv>
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
    80001ad0:	250080e7          	jalr	592(ra) # 80008d1c <__putc>
    __putc('N');
    80001ad4:	04e00513          	li	a0,78
    80001ad8:	00007097          	auipc	ra,0x7
    80001adc:	244080e7          	jalr	580(ra) # 80008d1c <__putc>
    __putc(':');
    80001ae0:	03a00513          	li	a0,58
    80001ae4:	00007097          	auipc	ra,0x7
    80001ae8:	238080e7          	jalr	568(ra) # 80008d1c <__putc>
    __putc(' ');
    80001aec:	02000513          	li	a0,32
    80001af0:	00007097          	auipc	ra,0x7
    80001af4:	22c080e7          	jalr	556(ra) # 80008d1c <__putc>
    if (!num) __putc('0');
    80001af8:	00090863          	beqz	s2,80001b08 <_Z11printNumberm+0x60>
    uint64 num2 = 0, zero_count = 0;
    80001afc:	00000993          	li	s3,0
    80001b00:	00000493          	li	s1,0
    80001b04:	01c0006f          	j	80001b20 <_Z11printNumberm+0x78>
    if (!num) __putc('0');
    80001b08:	03000513          	li	a0,48
    80001b0c:	00007097          	auipc	ra,0x7
    80001b10:	210080e7          	jalr	528(ra) # 80008d1c <__putc>
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
    80001b5c:	1c4080e7          	jalr	452(ra) # 80008d1c <__putc>
        num2 /= 10;
    80001b60:	0324d4b3          	divu	s1,s1,s2
    while (num2) {
    80001b64:	fe5ff06f          	j	80001b48 <_Z11printNumberm+0xa0>
    while (zero_count--) __putc('0');
    80001b68:	fff98493          	addi	s1,s3,-1
    80001b6c:	00098c63          	beqz	s3,80001b84 <_Z11printNumberm+0xdc>
    80001b70:	03000513          	li	a0,48
    80001b74:	00007097          	auipc	ra,0x7
    80001b78:	1a8080e7          	jalr	424(ra) # 80008d1c <__putc>
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
    80001bd4:	14c080e7          	jalr	332(ra) # 80008d1c <__putc>
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
    80001c00:	120080e7          	jalr	288(ra) # 80008d1c <__putc>
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
    80001c6c:	fd010113          	addi	sp,sp,-48
    80001c70:	02113423          	sd	ra,40(sp)
    80001c74:	02813023          	sd	s0,32(sp)
    80001c78:	03010413          	addi	s0,sp,48
    /// Set interrupt routine handler
    RiscV::write_stvec((uint64) &RiscV::handle_interrupt);
    80001c7c:	0000a797          	auipc	a5,0xa
    80001c80:	0dc7b783          	ld	a5,220(a5) # 8000bd58 <_GLOBAL_OFFSET_TABLE_+0x30>
    __asm__ volatile ("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void RiscV::write_stvec(uint64 val) {
    __asm__ volatile ("csrw stvec, %0" : : "r"(val));
    80001c84:	10579073          	csrw	stvec,a5
    /// Initialization
    MemoryAllocator::initialize();
    80001c88:	00001097          	auipc	ra,0x1
    80001c8c:	b1c080e7          	jalr	-1252(ra) # 800027a4 <_ZN15MemoryAllocator10initializeEv>
    Con::initialize();
    80001c90:	00000097          	auipc	ra,0x0
    80001c94:	080080e7          	jalr	128(ra) # 80001d10 <_ZN3Con10initializeEv>

    thread_t threads[3];

    thread_create(&threads[0], nullptr, nullptr);
    80001c98:	00000613          	li	a2,0
    80001c9c:	00000593          	li	a1,0
    80001ca0:	fd840513          	addi	a0,s0,-40
    80001ca4:	fffff097          	auipc	ra,0xfffff
    80001ca8:	654080e7          	jalr	1620(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running = threads[0];
    80001cac:	fd843703          	ld	a4,-40(s0)
    80001cb0:	0000a797          	auipc	a5,0xa
    80001cb4:	0c87b783          	ld	a5,200(a5) # 8000bd78 <_GLOBAL_OFFSET_TABLE_+0x50>
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
    80001cd0:	fe040513          	addi	a0,s0,-32
    80001cd4:	fffff097          	auipc	ra,0xfffff
    80001cd8:	624080e7          	jalr	1572(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>

    /// Test Everything
    thread_t umain;
    thread_create(&umain, userMainWrapper, nullptr);
    80001cdc:	00000613          	li	a2,0
    80001ce0:	00000597          	auipc	a1,0x0
    80001ce4:	da058593          	addi	a1,a1,-608 # 80001a80 <_Z15userMainWrapperPv>
    80001ce8:	fd040513          	addi	a0,s0,-48
    80001cec:	fffff097          	auipc	ra,0xfffff
    80001cf0:	60c080e7          	jalr	1548(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    while (!umain -> is_finished());
    80001cf4:	fd043503          	ld	a0,-48(s0)
    80001cf8:	00002097          	auipc	ra,0x2
    80001cfc:	864080e7          	jalr	-1948(ra) # 8000355c <_ZNK3TCB11is_finishedEv>
    80001d00:	fe050ae3          	beqz	a0,80001cf4 <main+0x88>
    while (1) thread_dispatch();
    80001d04:	fffff097          	auipc	ra,0xfffff
    80001d08:	6c8080e7          	jalr	1736(ra) # 800013cc <_Z15thread_dispatchv>
    80001d0c:	ff9ff06f          	j	80001d04 <main+0x98>

0000000080001d10 <_ZN3Con10initializeEv>:
bool Con::initialized = false;
BoundedBuffer* Con::input_buffer = nullptr;
BoundedBuffer* Con::output_buffer = nullptr;

void Con::initialize() {
    if (!initialized) {
    80001d10:	0000a797          	auipc	a5,0xa
    80001d14:	0c07c783          	lbu	a5,192(a5) # 8000bdd0 <_ZN3Con11initializedE>
    80001d18:	00078463          	beqz	a5,80001d20 <_ZN3Con10initializeEv+0x10>
    80001d1c:	00008067          	ret
void Con::initialize() {
    80001d20:	fe010113          	addi	sp,sp,-32
    80001d24:	00113c23          	sd	ra,24(sp)
    80001d28:	00813823          	sd	s0,16(sp)
    80001d2c:	00913423          	sd	s1,8(sp)
    80001d30:	01213023          	sd	s2,0(sp)
    80001d34:	02010413          	addi	s0,sp,32
        initialized = true;
    80001d38:	00100793          	li	a5,1
    80001d3c:	0000a717          	auipc	a4,0xa
    80001d40:	08f70a23          	sb	a5,148(a4) # 8000bdd0 <_ZN3Con11initializedE>
        input_buffer = new BoundedBuffer();
    80001d44:	21000513          	li	a0,528
    80001d48:	00001097          	auipc	ra,0x1
    80001d4c:	b7c080e7          	jalr	-1156(ra) # 800028c4 <_ZN13BoundedBuffernwEm>
    80001d50:	00050493          	mv	s1,a0
    80001d54:	00001097          	auipc	ra,0x1
    80001d58:	ad8080e7          	jalr	-1320(ra) # 8000282c <_ZN13BoundedBufferC1Ev>
    80001d5c:	0000a797          	auipc	a5,0xa
    80001d60:	0697be23          	sd	s1,124(a5) # 8000bdd8 <_ZN3Con12input_bufferE>
        output_buffer = new BoundedBuffer();
    80001d64:	21000513          	li	a0,528
    80001d68:	00001097          	auipc	ra,0x1
    80001d6c:	b5c080e7          	jalr	-1188(ra) # 800028c4 <_ZN13BoundedBuffernwEm>
    80001d70:	00050493          	mv	s1,a0
    80001d74:	00001097          	auipc	ra,0x1
    80001d78:	ab8080e7          	jalr	-1352(ra) # 8000282c <_ZN13BoundedBufferC1Ev>
    80001d7c:	0000a797          	auipc	a5,0xa
    80001d80:	0697b223          	sd	s1,100(a5) # 8000bde0 <_ZN3Con13output_bufferE>
    }
}
    80001d84:	01813083          	ld	ra,24(sp)
    80001d88:	01013403          	ld	s0,16(sp)
    80001d8c:	00813483          	ld	s1,8(sp)
    80001d90:	00013903          	ld	s2,0(sp)
    80001d94:	02010113          	addi	sp,sp,32
    80001d98:	00008067          	ret
    80001d9c:	00050913          	mv	s2,a0
        input_buffer = new BoundedBuffer();
    80001da0:	00048513          	mv	a0,s1
    80001da4:	00001097          	auipc	ra,0x1
    80001da8:	b50080e7          	jalr	-1200(ra) # 800028f4 <_ZN13BoundedBufferdlEPv>
    80001dac:	00090513          	mv	a0,s2
    80001db0:	0000b097          	auipc	ra,0xb
    80001db4:	1b8080e7          	jalr	440(ra) # 8000cf68 <_Unwind_Resume>
    80001db8:	00050913          	mv	s2,a0
        output_buffer = new BoundedBuffer();
    80001dbc:	00048513          	mv	a0,s1
    80001dc0:	00001097          	auipc	ra,0x1
    80001dc4:	b34080e7          	jalr	-1228(ra) # 800028f4 <_ZN13BoundedBufferdlEPv>
    80001dc8:	00090513          	mv	a0,s2
    80001dcc:	0000b097          	auipc	ra,0xb
    80001dd0:	19c080e7          	jalr	412(ra) # 8000cf68 <_Unwind_Resume>

0000000080001dd4 <_ZN3Con11putc_outputEc>:

void Con::putc_output(char c) {
    80001dd4:	ff010113          	addi	sp,sp,-16
    80001dd8:	00113423          	sd	ra,8(sp)
    80001ddc:	00813023          	sd	s0,0(sp)
    80001de0:	01010413          	addi	s0,sp,16
    80001de4:	00050593          	mv	a1,a0
    output_buffer -> putc(c);
    80001de8:	0000a517          	auipc	a0,0xa
    80001dec:	ff853503          	ld	a0,-8(a0) # 8000bde0 <_ZN3Con13output_bufferE>
    80001df0:	00001097          	auipc	ra,0x1
    80001df4:	b2c080e7          	jalr	-1236(ra) # 8000291c <_ZN13BoundedBuffer4putcEc>
}
    80001df8:	00813083          	ld	ra,8(sp)
    80001dfc:	00013403          	ld	s0,0(sp)
    80001e00:	01010113          	addi	sp,sp,16
    80001e04:	00008067          	ret

0000000080001e08 <_ZN3Con11getc_outputEv>:

char Con::getc_output() {
    80001e08:	ff010113          	addi	sp,sp,-16
    80001e0c:	00113423          	sd	ra,8(sp)
    80001e10:	00813023          	sd	s0,0(sp)
    80001e14:	01010413          	addi	s0,sp,16
    return output_buffer -> getc();
    80001e18:	0000a517          	auipc	a0,0xa
    80001e1c:	fc853503          	ld	a0,-56(a0) # 8000bde0 <_ZN3Con13output_bufferE>
    80001e20:	00001097          	auipc	ra,0x1
    80001e24:	b68080e7          	jalr	-1176(ra) # 80002988 <_ZN13BoundedBuffer4getcEv>
}
    80001e28:	00813083          	ld	ra,8(sp)
    80001e2c:	00013403          	ld	s0,0(sp)
    80001e30:	01010113          	addi	sp,sp,16
    80001e34:	00008067          	ret

0000000080001e38 <_ZN3Con10putc_inputEc>:

void Con::putc_input(char c) {
    80001e38:	ff010113          	addi	sp,sp,-16
    80001e3c:	00113423          	sd	ra,8(sp)
    80001e40:	00813023          	sd	s0,0(sp)
    80001e44:	01010413          	addi	s0,sp,16
    80001e48:	00050593          	mv	a1,a0
    input_buffer -> putc(c);
    80001e4c:	0000a517          	auipc	a0,0xa
    80001e50:	f8c53503          	ld	a0,-116(a0) # 8000bdd8 <_ZN3Con12input_bufferE>
    80001e54:	00001097          	auipc	ra,0x1
    80001e58:	ac8080e7          	jalr	-1336(ra) # 8000291c <_ZN13BoundedBuffer4putcEc>
}
    80001e5c:	00813083          	ld	ra,8(sp)
    80001e60:	00013403          	ld	s0,0(sp)
    80001e64:	01010113          	addi	sp,sp,16
    80001e68:	00008067          	ret

0000000080001e6c <_ZN3Con10getc_inputEv>:

char Con::getc_input() {
    80001e6c:	ff010113          	addi	sp,sp,-16
    80001e70:	00113423          	sd	ra,8(sp)
    80001e74:	00813023          	sd	s0,0(sp)
    80001e78:	01010413          	addi	s0,sp,16
    return input_buffer -> getc();
    80001e7c:	0000a517          	auipc	a0,0xa
    80001e80:	f5c53503          	ld	a0,-164(a0) # 8000bdd8 <_ZN3Con12input_bufferE>
    80001e84:	00001097          	auipc	ra,0x1
    80001e88:	b04080e7          	jalr	-1276(ra) # 80002988 <_ZN13BoundedBuffer4getcEv>
    80001e8c:	00813083          	ld	ra,8(sp)
    80001e90:	00013403          	ld	s0,0(sp)
    80001e94:	01010113          	addi	sp,sp,16
    80001e98:	00008067          	ret

0000000080001e9c <_ZN6Thread12start_helperEPv>:

Thread::~Thread() {
    if (myHandle -> is_finished()) delete myHandle;
}

void Thread::start_helper(void *args) {
    80001e9c:	ff010113          	addi	sp,sp,-16
    80001ea0:	00113423          	sd	ra,8(sp)
    80001ea4:	00813023          	sd	s0,0(sp)
    80001ea8:	01010413          	addi	s0,sp,16
    auto* thread = (Thread*) args;
    if (!thread -> body) thread -> run();
    80001eac:	01053783          	ld	a5,16(a0)
    80001eb0:	00078c63          	beqz	a5,80001ec8 <_ZN6Thread12start_helperEPv+0x2c>
    else thread -> body(args);
    80001eb4:	000780e7          	jalr	a5
}
    80001eb8:	00813083          	ld	ra,8(sp)
    80001ebc:	00013403          	ld	s0,0(sp)
    80001ec0:	01010113          	addi	sp,sp,16
    80001ec4:	00008067          	ret
    if (!thread -> body) thread -> run();
    80001ec8:	00053783          	ld	a5,0(a0)
    80001ecc:	0107b783          	ld	a5,16(a5)
    80001ed0:	000780e7          	jalr	a5
    80001ed4:	fe5ff06f          	j	80001eb8 <_ZN6Thread12start_helperEPv+0x1c>

0000000080001ed8 <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    80001ed8:	fe010113          	addi	sp,sp,-32
    80001edc:	00113c23          	sd	ra,24(sp)
    80001ee0:	00813823          	sd	s0,16(sp)
    80001ee4:	00913423          	sd	s1,8(sp)
    80001ee8:	02010413          	addi	s0,sp,32
    80001eec:	00050493          	mv	s1,a0
    80001ef0:	0000a797          	auipc	a5,0xa
    80001ef4:	c5878793          	addi	a5,a5,-936 # 8000bb48 <_ZTV6Thread+0x10>
    80001ef8:	00f53023          	sd	a5,0(a0)
    if (myHandle -> is_finished()) delete myHandle;
    80001efc:	00853503          	ld	a0,8(a0)
    80001f00:	00001097          	auipc	ra,0x1
    80001f04:	65c080e7          	jalr	1628(ra) # 8000355c <_ZNK3TCB11is_finishedEv>
    80001f08:	00050a63          	beqz	a0,80001f1c <_ZN6ThreadD1Ev+0x44>
    80001f0c:	0084b503          	ld	a0,8(s1)
    80001f10:	00050663          	beqz	a0,80001f1c <_ZN6ThreadD1Ev+0x44>
    80001f14:	00001097          	auipc	ra,0x1
    80001f18:	508080e7          	jalr	1288(ra) # 8000341c <_ZN3TCBdlEPv>
}
    80001f1c:	01813083          	ld	ra,24(sp)
    80001f20:	01013403          	ld	s0,16(sp)
    80001f24:	00813483          	ld	s1,8(sp)
    80001f28:	02010113          	addi	sp,sp,32
    80001f2c:	00008067          	ret

0000000080001f30 <_ZN9SemaphoreD1Ev>:
Semaphore::Semaphore(unsigned int init) {
    myHandle = nullptr;
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    80001f30:	0000a797          	auipc	a5,0xa
    80001f34:	c4078793          	addi	a5,a5,-960 # 8000bb70 <_ZTV9Semaphore+0x10>
    80001f38:	00f53023          	sd	a5,0(a0)
    if (myHandle) sem_close(myHandle);
    80001f3c:	00853503          	ld	a0,8(a0)
    80001f40:	02050663          	beqz	a0,80001f6c <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    80001f44:	ff010113          	addi	sp,sp,-16
    80001f48:	00113423          	sd	ra,8(sp)
    80001f4c:	00813023          	sd	s0,0(sp)
    80001f50:	01010413          	addi	s0,sp,16
    if (myHandle) sem_close(myHandle);
    80001f54:	fffff097          	auipc	ra,0xfffff
    80001f58:	504080e7          	jalr	1284(ra) # 80001458 <_Z9sem_closeP3Sem>
}
    80001f5c:	00813083          	ld	ra,8(sp)
    80001f60:	00013403          	ld	s0,0(sp)
    80001f64:	01010113          	addi	sp,sp,16
    80001f68:	00008067          	ret
    80001f6c:	00008067          	ret

0000000080001f70 <_Znwm>:
void* operator new(size_t size){
    80001f70:	ff010113          	addi	sp,sp,-16
    80001f74:	00113423          	sd	ra,8(sp)
    80001f78:	00813023          	sd	s0,0(sp)
    80001f7c:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001f80:	fffff097          	auipc	ra,0xfffff
    80001f84:	2d8080e7          	jalr	728(ra) # 80001258 <_Z9mem_allocm>
}
    80001f88:	00813083          	ld	ra,8(sp)
    80001f8c:	00013403          	ld	s0,0(sp)
    80001f90:	01010113          	addi	sp,sp,16
    80001f94:	00008067          	ret

0000000080001f98 <_ZdlPv>:
void operator delete(void* p) noexcept {
    80001f98:	ff010113          	addi	sp,sp,-16
    80001f9c:	00113423          	sd	ra,8(sp)
    80001fa0:	00813023          	sd	s0,0(sp)
    80001fa4:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001fa8:	fffff097          	auipc	ra,0xfffff
    80001fac:	304080e7          	jalr	772(ra) # 800012ac <_Z8mem_freePv>
}
    80001fb0:	00813083          	ld	ra,8(sp)
    80001fb4:	00013403          	ld	s0,0(sp)
    80001fb8:	01010113          	addi	sp,sp,16
    80001fbc:	00008067          	ret

0000000080001fc0 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80001fc0:	fe010113          	addi	sp,sp,-32
    80001fc4:	00113c23          	sd	ra,24(sp)
    80001fc8:	00813823          	sd	s0,16(sp)
    80001fcc:	00913423          	sd	s1,8(sp)
    80001fd0:	02010413          	addi	s0,sp,32
    80001fd4:	00050493          	mv	s1,a0
}
    80001fd8:	00000097          	auipc	ra,0x0
    80001fdc:	f00080e7          	jalr	-256(ra) # 80001ed8 <_ZN6ThreadD1Ev>
    80001fe0:	00048513          	mv	a0,s1
    80001fe4:	00000097          	auipc	ra,0x0
    80001fe8:	fb4080e7          	jalr	-76(ra) # 80001f98 <_ZdlPv>
    80001fec:	01813083          	ld	ra,24(sp)
    80001ff0:	01013403          	ld	s0,16(sp)
    80001ff4:	00813483          	ld	s1,8(sp)
    80001ff8:	02010113          	addi	sp,sp,32
    80001ffc:	00008067          	ret

0000000080002000 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80002000:	fe010113          	addi	sp,sp,-32
    80002004:	00113c23          	sd	ra,24(sp)
    80002008:	00813823          	sd	s0,16(sp)
    8000200c:	00913423          	sd	s1,8(sp)
    80002010:	02010413          	addi	s0,sp,32
    80002014:	00050493          	mv	s1,a0
}
    80002018:	00000097          	auipc	ra,0x0
    8000201c:	f18080e7          	jalr	-232(ra) # 80001f30 <_ZN9SemaphoreD1Ev>
    80002020:	00048513          	mv	a0,s1
    80002024:	00000097          	auipc	ra,0x0
    80002028:	f74080e7          	jalr	-140(ra) # 80001f98 <_ZdlPv>
    8000202c:	01813083          	ld	ra,24(sp)
    80002030:	01013403          	ld	s0,16(sp)
    80002034:	00813483          	ld	s1,8(sp)
    80002038:	02010113          	addi	sp,sp,32
    8000203c:	00008067          	ret

0000000080002040 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    80002040:	ff010113          	addi	sp,sp,-16
    80002044:	00813423          	sd	s0,8(sp)
    80002048:	01010413          	addi	s0,sp,16
    8000204c:	0000a797          	auipc	a5,0xa
    80002050:	afc78793          	addi	a5,a5,-1284 # 8000bb48 <_ZTV6Thread+0x10>
    80002054:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    80002058:	00053423          	sd	zero,8(a0)
    this -> body = body;
    8000205c:	00b53823          	sd	a1,16(a0)
    this -> arg = arg;
    80002060:	00c53c23          	sd	a2,24(a0)
}
    80002064:	00813403          	ld	s0,8(sp)
    80002068:	01010113          	addi	sp,sp,16
    8000206c:	00008067          	ret

0000000080002070 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80002070:	ff010113          	addi	sp,sp,-16
    80002074:	00813423          	sd	s0,8(sp)
    80002078:	01010413          	addi	s0,sp,16
    8000207c:	0000a797          	auipc	a5,0xa
    80002080:	acc78793          	addi	a5,a5,-1332 # 8000bb48 <_ZTV6Thread+0x10>
    80002084:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    80002088:	00053423          	sd	zero,8(a0)
    body = nullptr;
    8000208c:	00053823          	sd	zero,16(a0)
    arg = nullptr;
    80002090:	00053c23          	sd	zero,24(a0)
}
    80002094:	00813403          	ld	s0,8(sp)
    80002098:	01010113          	addi	sp,sp,16
    8000209c:	00008067          	ret

00000000800020a0 <_ZN6Thread5startEv>:
int Thread::start() {
    800020a0:	ff010113          	addi	sp,sp,-16
    800020a4:	00113423          	sd	ra,8(sp)
    800020a8:	00813023          	sd	s0,0(sp)
    800020ac:	01010413          	addi	s0,sp,16
    return thread_create(&myHandle, start_helper, this);
    800020b0:	00050613          	mv	a2,a0
    800020b4:	00000597          	auipc	a1,0x0
    800020b8:	de858593          	addi	a1,a1,-536 # 80001e9c <_ZN6Thread12start_helperEPv>
    800020bc:	00850513          	addi	a0,a0,8
    800020c0:	fffff097          	auipc	ra,0xfffff
    800020c4:	238080e7          	jalr	568(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
}
    800020c8:	00813083          	ld	ra,8(sp)
    800020cc:	00013403          	ld	s0,0(sp)
    800020d0:	01010113          	addi	sp,sp,16
    800020d4:	00008067          	ret

00000000800020d8 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    800020d8:	ff010113          	addi	sp,sp,-16
    800020dc:	00113423          	sd	ra,8(sp)
    800020e0:	00813023          	sd	s0,0(sp)
    800020e4:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800020e8:	fffff097          	auipc	ra,0xfffff
    800020ec:	2e4080e7          	jalr	740(ra) # 800013cc <_Z15thread_dispatchv>
}
    800020f0:	00813083          	ld	ra,8(sp)
    800020f4:	00013403          	ld	s0,0(sp)
    800020f8:	01010113          	addi	sp,sp,16
    800020fc:	00008067          	ret

0000000080002100 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    80002100:	ff010113          	addi	sp,sp,-16
    80002104:	00113423          	sd	ra,8(sp)
    80002108:	00813023          	sd	s0,0(sp)
    8000210c:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    80002110:	fffff097          	auipc	ra,0xfffff
    80002114:	4c4080e7          	jalr	1220(ra) # 800015d4 <_Z10time_sleepm>
}
    80002118:	00813083          	ld	ra,8(sp)
    8000211c:	00013403          	ld	s0,0(sp)
    80002120:	01010113          	addi	sp,sp,16
    80002124:	00008067          	ret

0000000080002128 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80002128:	ff010113          	addi	sp,sp,-16
    8000212c:	00113423          	sd	ra,8(sp)
    80002130:	00813023          	sd	s0,0(sp)
    80002134:	01010413          	addi	s0,sp,16
    80002138:	0000a797          	auipc	a5,0xa
    8000213c:	a3878793          	addi	a5,a5,-1480 # 8000bb70 <_ZTV9Semaphore+0x10>
    80002140:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    80002144:	00053423          	sd	zero,8(a0)
    sem_open(&myHandle, init);
    80002148:	00850513          	addi	a0,a0,8
    8000214c:	fffff097          	auipc	ra,0xfffff
    80002150:	2bc080e7          	jalr	700(ra) # 80001408 <_Z8sem_openPP3Semj>
}
    80002154:	00813083          	ld	ra,8(sp)
    80002158:	00013403          	ld	s0,0(sp)
    8000215c:	01010113          	addi	sp,sp,16
    80002160:	00008067          	ret

0000000080002164 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    if (myHandle) return sem_wait(myHandle);
    80002164:	00853503          	ld	a0,8(a0)
    80002168:	02050663          	beqz	a0,80002194 <_ZN9Semaphore4waitEv+0x30>
int Semaphore::wait() {
    8000216c:	ff010113          	addi	sp,sp,-16
    80002170:	00113423          	sd	ra,8(sp)
    80002174:	00813023          	sd	s0,0(sp)
    80002178:	01010413          	addi	s0,sp,16
    if (myHandle) return sem_wait(myHandle);
    8000217c:	fffff097          	auipc	ra,0xfffff
    80002180:	328080e7          	jalr	808(ra) # 800014a4 <_Z8sem_waitP3Sem>
    return -1;
}
    80002184:	00813083          	ld	ra,8(sp)
    80002188:	00013403          	ld	s0,0(sp)
    8000218c:	01010113          	addi	sp,sp,16
    80002190:	00008067          	ret
    return -1;
    80002194:	fff00513          	li	a0,-1
}
    80002198:	00008067          	ret

000000008000219c <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    if (myHandle) return sem_signal(myHandle);
    8000219c:	00853503          	ld	a0,8(a0)
    800021a0:	02050663          	beqz	a0,800021cc <_ZN9Semaphore6signalEv+0x30>
int Semaphore::signal() {
    800021a4:	ff010113          	addi	sp,sp,-16
    800021a8:	00113423          	sd	ra,8(sp)
    800021ac:	00813023          	sd	s0,0(sp)
    800021b0:	01010413          	addi	s0,sp,16
    if (myHandle) return sem_signal(myHandle);
    800021b4:	fffff097          	auipc	ra,0xfffff
    800021b8:	33c080e7          	jalr	828(ra) # 800014f0 <_Z10sem_signalP3Sem>
    return -1;
}
    800021bc:	00813083          	ld	ra,8(sp)
    800021c0:	00013403          	ld	s0,0(sp)
    800021c4:	01010113          	addi	sp,sp,16
    800021c8:	00008067          	ret
    return -1;
    800021cc:	fff00513          	li	a0,-1
}
    800021d0:	00008067          	ret

00000000800021d4 <_ZN9Semaphore9timedWaitEm>:

int Semaphore::timedWait(time_t time) {
    800021d4:	ff010113          	addi	sp,sp,-16
    800021d8:	00113423          	sd	ra,8(sp)
    800021dc:	00813023          	sd	s0,0(sp)
    800021e0:	01010413          	addi	s0,sp,16
    return sem_timedwait(myHandle, time);
    800021e4:	00853503          	ld	a0,8(a0)
    800021e8:	fffff097          	auipc	ra,0xfffff
    800021ec:	354080e7          	jalr	852(ra) # 8000153c <_Z13sem_timedwaitP3Semm>
}
    800021f0:	00813083          	ld	ra,8(sp)
    800021f4:	00013403          	ld	s0,0(sp)
    800021f8:	01010113          	addi	sp,sp,16
    800021fc:	00008067          	ret

0000000080002200 <_ZN9Semaphore7tryWaitEv>:

int Semaphore::tryWait() {
    80002200:	ff010113          	addi	sp,sp,-16
    80002204:	00113423          	sd	ra,8(sp)
    80002208:	00813023          	sd	s0,0(sp)
    8000220c:	01010413          	addi	s0,sp,16
    return sem_trywait(myHandle);
    80002210:	00853503          	ld	a0,8(a0)
    80002214:	fffff097          	auipc	ra,0xfffff
    80002218:	374080e7          	jalr	884(ra) # 80001588 <_Z11sem_trywaitP3Sem>
}
    8000221c:	00813083          	ld	ra,8(sp)
    80002220:	00013403          	ld	s0,0(sp)
    80002224:	01010113          	addi	sp,sp,16
    80002228:	00008067          	ret

000000008000222c <_ZN14PeriodicThread9terminateEv>:

void PeriodicThread::terminate() {
    8000222c:	ff010113          	addi	sp,sp,-16
    80002230:	00813423          	sd	s0,8(sp)
    80002234:	01010413          	addi	s0,sp,16
    /// TODO terminate
}
    80002238:	00813403          	ld	s0,8(sp)
    8000223c:	01010113          	addi	sp,sp,16
    80002240:	00008067          	ret

0000000080002244 <_ZN14PeriodicThreadC1Em>:

PeriodicThread::PeriodicThread(time_t period) {
    80002244:	fe010113          	addi	sp,sp,-32
    80002248:	00113c23          	sd	ra,24(sp)
    8000224c:	00813823          	sd	s0,16(sp)
    80002250:	00913423          	sd	s1,8(sp)
    80002254:	01213023          	sd	s2,0(sp)
    80002258:	02010413          	addi	s0,sp,32
    8000225c:	00050493          	mv	s1,a0
    80002260:	00058913          	mv	s2,a1
    80002264:	00000097          	auipc	ra,0x0
    80002268:	e0c080e7          	jalr	-500(ra) # 80002070 <_ZN6ThreadC1Ev>
    8000226c:	0000a797          	auipc	a5,0xa
    80002270:	8ac78793          	addi	a5,a5,-1876 # 8000bb18 <_ZTV14PeriodicThread+0x10>
    80002274:	00f4b023          	sd	a5,0(s1)
    this -> period = period;
    80002278:	0324b023          	sd	s2,32(s1)
}
    8000227c:	01813083          	ld	ra,24(sp)
    80002280:	01013403          	ld	s0,16(sp)
    80002284:	00813483          	ld	s1,8(sp)
    80002288:	00013903          	ld	s2,0(sp)
    8000228c:	02010113          	addi	sp,sp,32
    80002290:	00008067          	ret

0000000080002294 <_ZN7Console4getcEv>:

char Console::getc() {
    80002294:	ff010113          	addi	sp,sp,-16
    80002298:	00113423          	sd	ra,8(sp)
    8000229c:	00813023          	sd	s0,0(sp)
    800022a0:	01010413          	addi	s0,sp,16
    return ::getc();
    800022a4:	fffff097          	auipc	ra,0xfffff
    800022a8:	37c080e7          	jalr	892(ra) # 80001620 <_Z4getcv>
}
    800022ac:	00813083          	ld	ra,8(sp)
    800022b0:	00013403          	ld	s0,0(sp)
    800022b4:	01010113          	addi	sp,sp,16
    800022b8:	00008067          	ret

00000000800022bc <_ZN7Console4putcEc>:

void Console::putc(char c) {
    800022bc:	ff010113          	addi	sp,sp,-16
    800022c0:	00113423          	sd	ra,8(sp)
    800022c4:	00813023          	sd	s0,0(sp)
    800022c8:	01010413          	addi	s0,sp,16
    ::putc(c);
    800022cc:	fffff097          	auipc	ra,0xfffff
    800022d0:	3a0080e7          	jalr	928(ra) # 8000166c <_Z4putcc>
}
    800022d4:	00813083          	ld	ra,8(sp)
    800022d8:	00013403          	ld	s0,0(sp)
    800022dc:	01010113          	addi	sp,sp,16
    800022e0:	00008067          	ret

00000000800022e4 <_ZN6Thread3runEv>:
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    800022e4:	ff010113          	addi	sp,sp,-16
    800022e8:	00813423          	sd	s0,8(sp)
    800022ec:	01010413          	addi	s0,sp,16
    800022f0:	00813403          	ld	s0,8(sp)
    800022f4:	01010113          	addi	sp,sp,16
    800022f8:	00008067          	ret

00000000800022fc <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    800022fc:	ff010113          	addi	sp,sp,-16
    80002300:	00813423          	sd	s0,8(sp)
    80002304:	01010413          	addi	s0,sp,16
    80002308:	00813403          	ld	s0,8(sp)
    8000230c:	01010113          	addi	sp,sp,16
    80002310:	00008067          	ret

0000000080002314 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80002314:	ff010113          	addi	sp,sp,-16
    80002318:	00113423          	sd	ra,8(sp)
    8000231c:	00813023          	sd	s0,0(sp)
    80002320:	01010413          	addi	s0,sp,16
    80002324:	00009797          	auipc	a5,0x9
    80002328:	7f478793          	addi	a5,a5,2036 # 8000bb18 <_ZTV14PeriodicThread+0x10>
    8000232c:	00f53023          	sd	a5,0(a0)
    80002330:	00000097          	auipc	ra,0x0
    80002334:	ba8080e7          	jalr	-1112(ra) # 80001ed8 <_ZN6ThreadD1Ev>
    80002338:	00813083          	ld	ra,8(sp)
    8000233c:	00013403          	ld	s0,0(sp)
    80002340:	01010113          	addi	sp,sp,16
    80002344:	00008067          	ret

0000000080002348 <_ZN14PeriodicThreadD0Ev>:
    80002348:	fe010113          	addi	sp,sp,-32
    8000234c:	00113c23          	sd	ra,24(sp)
    80002350:	00813823          	sd	s0,16(sp)
    80002354:	00913423          	sd	s1,8(sp)
    80002358:	02010413          	addi	s0,sp,32
    8000235c:	00050493          	mv	s1,a0
    80002360:	00009797          	auipc	a5,0x9
    80002364:	7b878793          	addi	a5,a5,1976 # 8000bb18 <_ZTV14PeriodicThread+0x10>
    80002368:	00f53023          	sd	a5,0(a0)
    8000236c:	00000097          	auipc	ra,0x0
    80002370:	b6c080e7          	jalr	-1172(ra) # 80001ed8 <_ZN6ThreadD1Ev>
    80002374:	00048513          	mv	a0,s1
    80002378:	00000097          	auipc	ra,0x0
    8000237c:	c20080e7          	jalr	-992(ra) # 80001f98 <_ZdlPv>
    80002380:	01813083          	ld	ra,24(sp)
    80002384:	01013403          	ld	s0,16(sp)
    80002388:	00813483          	ld	s1,8(sp)
    8000238c:	02010113          	addi	sp,sp,32
    80002390:	00008067          	ret

0000000080002394 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>:
        instance = (MemoryAllocator*) MemoryAllocator::mem_alloc(get_number_of_blocks(sizeof(MemoryAllocator)));
    }
}

/// helper function for removing element from linked list
void MemoryAllocator::removeNode(MemSeg *toRemove, MemSeg *nextSeg, bool newIsCreated) {
    80002394:	ff010113          	addi	sp,sp,-16
    80002398:	00813423          	sd	s0,8(sp)
    8000239c:	01010413          	addi	s0,sp,16
    if (toRemove -> prev) toRemove -> prev -> next = nextSeg;
    800023a0:	00853783          	ld	a5,8(a0)
    800023a4:	02078463          	beqz	a5,800023cc <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x38>
    800023a8:	00b7b823          	sd	a1,16(a5)
    else freeSegHead = nextSeg;
    if (toRemove -> next) toRemove -> next -> prev = (newIsCreated) ? nextSeg : toRemove -> prev;
    800023ac:	01053783          	ld	a5,16(a0)
    800023b0:	00078863          	beqz	a5,800023c0 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x2c>
    800023b4:	00061463          	bnez	a2,800023bc <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x28>
    800023b8:	00853583          	ld	a1,8(a0)
    800023bc:	00b7b423          	sd	a1,8(a5)
}
    800023c0:	00813403          	ld	s0,8(sp)
    800023c4:	01010113          	addi	sp,sp,16
    800023c8:	00008067          	ret
    else freeSegHead = nextSeg;
    800023cc:	0000a797          	auipc	a5,0xa
    800023d0:	a0b7be23          	sd	a1,-1508(a5) # 8000bde8 <_ZN15MemoryAllocator11freeSegHeadE>
    800023d4:	fd9ff06f          	j	800023ac <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x18>

00000000800023d8 <_ZN15MemoryAllocator9mem_allocEm>:

/// allocate `size` blocks
void *MemoryAllocator::mem_alloc(size_t size) {
    800023d8:	fe010113          	addi	sp,sp,-32
    800023dc:	00113c23          	sd	ra,24(sp)
    800023e0:	00813823          	sd	s0,16(sp)
    800023e4:	00913423          	sd	s1,8(sp)
    800023e8:	01213023          	sd	s2,0(sp)
    800023ec:	02010413          	addi	s0,sp,32
    if (size <= 0) return nullptr;
    800023f0:	0e050e63          	beqz	a0,800024ec <_ZN15MemoryAllocator9mem_allocEm+0x114>
    size_t bytesToAllocate = size * MEM_BLOCK_SIZE;
    800023f4:	00651913          	slli	s2,a0,0x6
    MemSeg *tmp = freeSegHead;
    800023f8:	0000a497          	auipc	s1,0xa
    800023fc:	9f04b483          	ld	s1,-1552(s1) # 8000bde8 <_ZN15MemoryAllocator11freeSegHeadE>
    while (tmp) {
    80002400:	0a048e63          	beqz	s1,800024bc <_ZN15MemoryAllocator9mem_allocEm+0xe4>
        if (tmp -> size < bytesToAllocate) {
    80002404:	0004b783          	ld	a5,0(s1)
    80002408:	0527e463          	bltu	a5,s2,80002450 <_ZN15MemoryAllocator9mem_allocEm+0x78>
            tmp = tmp -> next;
            continue;
        }
        /// update free memory list
        size_t remaining = tmp -> size - bytesToAllocate;
    8000240c:	412787b3          	sub	a5,a5,s2
        if (remaining <= sizeof(MemSeg)) removeNode(tmp, tmp->next, false);
    80002410:	01800713          	li	a4,24
    80002414:	04f76263          	bltu	a4,a5,80002458 <_ZN15MemoryAllocator9mem_allocEm+0x80>
    80002418:	00000613          	li	a2,0
    8000241c:	0104b583          	ld	a1,16(s1)
    80002420:	00048513          	mv	a0,s1
    80002424:	00000097          	auipc	ra,0x0
    80002428:	f70080e7          	jalr	-144(ra) # 80002394 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
        }

        /// update used memory list
        /// insert segment after tmp2
        MemSeg* tmp2 = nullptr;
        if (usedSegHead && (char*) tmp > (char*) usedSegHead)
    8000242c:	0000a797          	auipc	a5,0xa
    80002430:	9c47b783          	ld	a5,-1596(a5) # 8000bdf0 <_ZN15MemoryAllocator11usedSegHeadE>
    80002434:	04078863          	beqz	a5,80002484 <_ZN15MemoryAllocator9mem_allocEm+0xac>
    80002438:	0497fa63          	bgeu	a5,s1,8000248c <_ZN15MemoryAllocator9mem_allocEm+0xb4>
            for (tmp2 = usedSegHead; tmp2 -> next && (char*) tmp > (char*) (tmp2 -> next); tmp2 = tmp2 -> next);
    8000243c:	00078713          	mv	a4,a5
    80002440:	0107b783          	ld	a5,16(a5)
    80002444:	04078663          	beqz	a5,80002490 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
    80002448:	fe97eae3          	bltu	a5,s1,8000243c <_ZN15MemoryAllocator9mem_allocEm+0x64>
    8000244c:	0440006f          	j	80002490 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
            tmp = tmp -> next;
    80002450:	0104b483          	ld	s1,16(s1)
    while (tmp) {
    80002454:	fadff06f          	j	80002400 <_ZN15MemoryAllocator9mem_allocEm+0x28>
            MemSeg* newFree = (MemSeg*) ((char*) tmp + bytesToAllocate);
    80002458:	012485b3          	add	a1,s1,s2
            newFree -> prev = tmp -> prev;
    8000245c:	0084b703          	ld	a4,8(s1)
    80002460:	00e5b423          	sd	a4,8(a1)
            newFree -> next = tmp -> next;
    80002464:	0104b703          	ld	a4,16(s1)
    80002468:	00e5b823          	sd	a4,16(a1)
            newFree -> size = remaining;
    8000246c:	00f5b023          	sd	a5,0(a1)
            removeNode(tmp, newFree, true);
    80002470:	00100613          	li	a2,1
    80002474:	00048513          	mv	a0,s1
    80002478:	00000097          	auipc	ra,0x0
    8000247c:	f1c080e7          	jalr	-228(ra) # 80002394 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
    80002480:	fadff06f          	j	8000242c <_ZN15MemoryAllocator9mem_allocEm+0x54>
        MemSeg* tmp2 = nullptr;
    80002484:	00078713          	mv	a4,a5
    80002488:	0080006f          	j	80002490 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
    8000248c:	00000713          	li	a4,0
        MemSeg* newUsed = (MemSeg*) tmp;
        newUsed -> size = bytesToAllocate;
    80002490:	0124b023          	sd	s2,0(s1)
        newUsed -> prev = tmp2;
    80002494:	00e4b423          	sd	a4,8(s1)
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    80002498:	04070063          	beqz	a4,800024d8 <_ZN15MemoryAllocator9mem_allocEm+0x100>
    8000249c:	01073783          	ld	a5,16(a4)
    800024a0:	00f4b823          	sd	a5,16(s1)
        if (tmp2) tmp2 -> next = newUsed;
    800024a4:	02070e63          	beqz	a4,800024e0 <_ZN15MemoryAllocator9mem_allocEm+0x108>
    800024a8:	00973823          	sd	s1,16(a4)
        else usedSegHead = newUsed;
        if (newUsed -> next) newUsed -> next -> prev = newUsed;
    800024ac:	0104b783          	ld	a5,16(s1)
    800024b0:	00078463          	beqz	a5,800024b8 <_ZN15MemoryAllocator9mem_allocEm+0xe0>
    800024b4:	0097b423          	sd	s1,8(a5)
        return (void*) ((char*)tmp + sizeof(MemSeg));
    800024b8:	01848493          	addi	s1,s1,24
    }
    return nullptr;
}
    800024bc:	00048513          	mv	a0,s1
    800024c0:	01813083          	ld	ra,24(sp)
    800024c4:	01013403          	ld	s0,16(sp)
    800024c8:	00813483          	ld	s1,8(sp)
    800024cc:	00013903          	ld	s2,0(sp)
    800024d0:	02010113          	addi	sp,sp,32
    800024d4:	00008067          	ret
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    800024d8:	00070793          	mv	a5,a4
    800024dc:	fc5ff06f          	j	800024a0 <_ZN15MemoryAllocator9mem_allocEm+0xc8>
        else usedSegHead = newUsed;
    800024e0:	0000a797          	auipc	a5,0xa
    800024e4:	9097b823          	sd	s1,-1776(a5) # 8000bdf0 <_ZN15MemoryAllocator11usedSegHeadE>
    800024e8:	fc5ff06f          	j	800024ac <_ZN15MemoryAllocator9mem_allocEm+0xd4>
    if (size <= 0) return nullptr;
    800024ec:	00000493          	li	s1,0
    800024f0:	fcdff06f          	j	800024bc <_ZN15MemoryAllocator9mem_allocEm+0xe4>

00000000800024f4 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>:
    }
    return 0;
}

/// join free segment with next if possible
void MemoryAllocator::tryToJoin(MemSeg *seg) {
    800024f4:	ff010113          	addi	sp,sp,-16
    800024f8:	00813423          	sd	s0,8(sp)
    800024fc:	01010413          	addi	s0,sp,16
    if (seg -> next && (char*) seg + seg -> size == (char*) seg -> next) {
    80002500:	01053783          	ld	a5,16(a0)
    80002504:	00078863          	beqz	a5,80002514 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    80002508:	00053703          	ld	a4,0(a0)
    8000250c:	00e506b3          	add	a3,a0,a4
    80002510:	00d78863          	beq	a5,a3,80002520 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x2c>
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
        seg -> next = seg -> next -> next;
        if (seg -> next) seg -> next -> prev = seg;
    }
}
    80002514:	00813403          	ld	s0,8(sp)
    80002518:	01010113          	addi	sp,sp,16
    8000251c:	00008067          	ret
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
    80002520:	0007b683          	ld	a3,0(a5)
    80002524:	00d70733          	add	a4,a4,a3
    80002528:	01870713          	addi	a4,a4,24
    8000252c:	00e53023          	sd	a4,0(a0)
        seg -> next = seg -> next -> next;
    80002530:	0107b783          	ld	a5,16(a5)
    80002534:	00f53823          	sd	a5,16(a0)
        if (seg -> next) seg -> next -> prev = seg;
    80002538:	fc078ee3          	beqz	a5,80002514 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    8000253c:	00a7b423          	sd	a0,8(a5)
}
    80002540:	fd5ff06f          	j	80002514 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>

0000000080002544 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    80002544:	14050263          	beqz	a0,80002688 <_ZN15MemoryAllocator8mem_freeEPv+0x144>
int MemoryAllocator::mem_free(void *addr) {
    80002548:	fd010113          	addi	sp,sp,-48
    8000254c:	02113423          	sd	ra,40(sp)
    80002550:	02813023          	sd	s0,32(sp)
    80002554:	00913c23          	sd	s1,24(sp)
    80002558:	01213823          	sd	s2,16(sp)
    8000255c:	01313423          	sd	s3,8(sp)
    80002560:	03010413          	addi	s0,sp,48
    80002564:	00050913          	mv	s2,a0
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    80002568:	00009797          	auipc	a5,0x9
    8000256c:	7d87b783          	ld	a5,2008(a5) # 8000bd40 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002570:	0007b783          	ld	a5,0(a5)
    80002574:	10f56e63          	bltu	a0,a5,80002690 <_ZN15MemoryAllocator8mem_freeEPv+0x14c>
    80002578:	0000a797          	auipc	a5,0xa
    8000257c:	8087b783          	ld	a5,-2040(a5) # 8000bd80 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002580:	0007b783          	ld	a5,0(a5)
    80002584:	10a7ea63          	bltu	a5,a0,80002698 <_ZN15MemoryAllocator8mem_freeEPv+0x154>
    if (!usedSegHead) return -2;
    80002588:	0000a797          	auipc	a5,0xa
    8000258c:	8687b783          	ld	a5,-1944(a5) # 8000bdf0 <_ZN15MemoryAllocator11usedSegHeadE>
    80002590:	10078863          	beqz	a5,800026a0 <_ZN15MemoryAllocator8mem_freeEPv+0x15c>
    addr = (void*) ((char*) addr - sizeof(MemSeg));
    80002594:	fe850493          	addi	s1,a0,-24
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    80002598:	00078863          	beqz	a5,800025a8 <_ZN15MemoryAllocator8mem_freeEPv+0x64>
        if (tmp == segToFree) {
    8000259c:	08978e63          	beq	a5,s1,80002638 <_ZN15MemoryAllocator8mem_freeEPv+0xf4>
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    800025a0:	0107b783          	ld	a5,16(a5)
    800025a4:	ff5ff06f          	j	80002598 <_ZN15MemoryAllocator8mem_freeEPv+0x54>
    bool found = false;
    800025a8:	00000793          	li	a5,0
    if (!found) return -3;
    800025ac:	0e078e63          	beqz	a5,800026a8 <_ZN15MemoryAllocator8mem_freeEPv+0x164>
    removeNode(segToFree, segToFree -> next, false);
    800025b0:	00000613          	li	a2,0
    800025b4:	ff893583          	ld	a1,-8(s2)
    800025b8:	00048513          	mv	a0,s1
    800025bc:	00000097          	auipc	ra,0x0
    800025c0:	dd8080e7          	jalr	-552(ra) # 80002394 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
    if (!freeSegHead) {
    800025c4:	0000a797          	auipc	a5,0xa
    800025c8:	8247b783          	ld	a5,-2012(a5) # 8000bde8 <_ZN15MemoryAllocator11freeSegHeadE>
    800025cc:	06078a63          	beqz	a5,80002640 <_ZN15MemoryAllocator8mem_freeEPv+0xfc>
    else if ((char*) addr < (char*) freeSegHead) {
    800025d0:	08f4e463          	bltu	s1,a5,80002658 <_ZN15MemoryAllocator8mem_freeEPv+0x114>
        for (tmp = freeSegHead; tmp -> next && (char*) (tmp -> next) < (char*) segToFree; tmp = tmp -> next);
    800025d4:	00078993          	mv	s3,a5
    800025d8:	0107b783          	ld	a5,16(a5)
    800025dc:	00078463          	beqz	a5,800025e4 <_ZN15MemoryAllocator8mem_freeEPv+0xa0>
    800025e0:	fe97eae3          	bltu	a5,s1,800025d4 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
        segToFree -> prev = tmp;
    800025e4:	ff393823          	sd	s3,-16(s2)
        segToFree -> next = tmp -> next;
    800025e8:	0109b783          	ld	a5,16(s3)
    800025ec:	fef93c23          	sd	a5,-8(s2)
        tmp -> next = segToFree;
    800025f0:	0099b823          	sd	s1,16(s3)
        if (segToFree -> next) segToFree -> next -> prev = segToFree;
    800025f4:	ff893783          	ld	a5,-8(s2)
    800025f8:	00078463          	beqz	a5,80002600 <_ZN15MemoryAllocator8mem_freeEPv+0xbc>
    800025fc:	0097b423          	sd	s1,8(a5)
        tryToJoin(segToFree);
    80002600:	00048513          	mv	a0,s1
    80002604:	00000097          	auipc	ra,0x0
    80002608:	ef0080e7          	jalr	-272(ra) # 800024f4 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
        tryToJoin(tmp);
    8000260c:	00098513          	mv	a0,s3
    80002610:	00000097          	auipc	ra,0x0
    80002614:	ee4080e7          	jalr	-284(ra) # 800024f4 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    80002618:	00000513          	li	a0,0
}
    8000261c:	02813083          	ld	ra,40(sp)
    80002620:	02013403          	ld	s0,32(sp)
    80002624:	01813483          	ld	s1,24(sp)
    80002628:	01013903          	ld	s2,16(sp)
    8000262c:	00813983          	ld	s3,8(sp)
    80002630:	03010113          	addi	sp,sp,48
    80002634:	00008067          	ret
            found = true;
    80002638:	00100793          	li	a5,1
    8000263c:	f71ff06f          	j	800025ac <_ZN15MemoryAllocator8mem_freeEPv+0x68>
        freeSegHead = segToFree;
    80002640:	00009797          	auipc	a5,0x9
    80002644:	7a97b423          	sd	s1,1960(a5) # 8000bde8 <_ZN15MemoryAllocator11freeSegHeadE>
        segToFree -> prev = segToFree -> next = nullptr;
    80002648:	fe093c23          	sd	zero,-8(s2)
    8000264c:	fe093823          	sd	zero,-16(s2)
    return 0;
    80002650:	00000513          	li	a0,0
    80002654:	fc9ff06f          	j	8000261c <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
        segToFree -> prev = nullptr;
    80002658:	fe093823          	sd	zero,-16(s2)
        segToFree -> next = freeSegHead;
    8000265c:	00009797          	auipc	a5,0x9
    80002660:	78c78793          	addi	a5,a5,1932 # 8000bde8 <_ZN15MemoryAllocator11freeSegHeadE>
    80002664:	0007b703          	ld	a4,0(a5)
    80002668:	fee93c23          	sd	a4,-8(s2)
        freeSegHead -> prev = segToFree;
    8000266c:	00973423          	sd	s1,8(a4)
        freeSegHead = segToFree;
    80002670:	0097b023          	sd	s1,0(a5)
        tryToJoin(segToFree);
    80002674:	00048513          	mv	a0,s1
    80002678:	00000097          	auipc	ra,0x0
    8000267c:	e7c080e7          	jalr	-388(ra) # 800024f4 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    80002680:	00000513          	li	a0,0
    80002684:	f99ff06f          	j	8000261c <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    80002688:	fff00513          	li	a0,-1
}
    8000268c:	00008067          	ret
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    80002690:	fff00513          	li	a0,-1
    80002694:	f89ff06f          	j	8000261c <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    80002698:	fff00513          	li	a0,-1
    8000269c:	f81ff06f          	j	8000261c <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!usedSegHead) return -2;
    800026a0:	ffe00513          	li	a0,-2
    800026a4:	f79ff06f          	j	8000261c <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!found) return -3;
    800026a8:	ffd00513          	li	a0,-3
    800026ac:	f71ff06f          	j	8000261c <_ZN15MemoryAllocator8mem_freeEPv+0xd8>

00000000800026b0 <_ZN15MemoryAllocator5printEv>:

void MemoryAllocator::print() {
    800026b0:	fe010113          	addi	sp,sp,-32
    800026b4:	00113c23          	sd	ra,24(sp)
    800026b8:	00813823          	sd	s0,16(sp)
    800026bc:	00913423          	sd	s1,8(sp)
    800026c0:	02010413          	addi	s0,sp,32
    __putc('\n');
    800026c4:	00a00513          	li	a0,10
    800026c8:	00006097          	auipc	ra,0x6
    800026cc:	654080e7          	jalr	1620(ra) # 80008d1c <__putc>
    __putc('M');
    800026d0:	04d00513          	li	a0,77
    800026d4:	00006097          	auipc	ra,0x6
    800026d8:	648080e7          	jalr	1608(ra) # 80008d1c <__putc>
    __putc(':');
    800026dc:	03a00513          	li	a0,58
    800026e0:	00006097          	auipc	ra,0x6
    800026e4:	63c080e7          	jalr	1596(ra) # 80008d1c <__putc>
    __putc(' ');
    800026e8:	02000513          	li	a0,32
    800026ec:	00006097          	auipc	ra,0x6
    800026f0:	630080e7          	jalr	1584(ra) # 80008d1c <__putc>
    for (MemSeg* tmp = freeSegHead; tmp; tmp = tmp -> next) {
    800026f4:	00009497          	auipc	s1,0x9
    800026f8:	6f44b483          	ld	s1,1780(s1) # 8000bde8 <_ZN15MemoryAllocator11freeSegHeadE>
    800026fc:	02048863          	beqz	s1,8000272c <_ZN15MemoryAllocator5printEv+0x7c>
        printNumber(tmp -> size);
    80002700:	0004b503          	ld	a0,0(s1)
    80002704:	fffff097          	auipc	ra,0xfffff
    80002708:	3a4080e7          	jalr	932(ra) # 80001aa8 <_Z11printNumberm>
        __putc(' ');
    8000270c:	02000513          	li	a0,32
    80002710:	00006097          	auipc	ra,0x6
    80002714:	60c080e7          	jalr	1548(ra) # 80008d1c <__putc>
        __putc('f');
    80002718:	06600513          	li	a0,102
    8000271c:	00006097          	auipc	ra,0x6
    80002720:	600080e7          	jalr	1536(ra) # 80008d1c <__putc>
    for (MemSeg* tmp = freeSegHead; tmp; tmp = tmp -> next) {
    80002724:	0104b483          	ld	s1,16(s1)
    80002728:	fd5ff06f          	j	800026fc <_ZN15MemoryAllocator5printEv+0x4c>
    }
    __putc('\t');
    8000272c:	00900513          	li	a0,9
    80002730:	00006097          	auipc	ra,0x6
    80002734:	5ec080e7          	jalr	1516(ra) # 80008d1c <__putc>
    for (MemSeg* tmp = usedSegHead; tmp; tmp = tmp -> next) {
    80002738:	00009497          	auipc	s1,0x9
    8000273c:	6b84b483          	ld	s1,1720(s1) # 8000bdf0 <_ZN15MemoryAllocator11usedSegHeadE>
    80002740:	02048863          	beqz	s1,80002770 <_ZN15MemoryAllocator5printEv+0xc0>
        printNumber(tmp -> size);
    80002744:	0004b503          	ld	a0,0(s1)
    80002748:	fffff097          	auipc	ra,0xfffff
    8000274c:	360080e7          	jalr	864(ra) # 80001aa8 <_Z11printNumberm>
        __putc(' ');
    80002750:	02000513          	li	a0,32
    80002754:	00006097          	auipc	ra,0x6
    80002758:	5c8080e7          	jalr	1480(ra) # 80008d1c <__putc>
        __putc('u');
    8000275c:	07500513          	li	a0,117
    80002760:	00006097          	auipc	ra,0x6
    80002764:	5bc080e7          	jalr	1468(ra) # 80008d1c <__putc>
    for (MemSeg* tmp = usedSegHead; tmp; tmp = tmp -> next) {
    80002768:	0104b483          	ld	s1,16(s1)
    8000276c:	fd5ff06f          	j	80002740 <_ZN15MemoryAllocator5printEv+0x90>
    }
}
    80002770:	01813083          	ld	ra,24(sp)
    80002774:	01013403          	ld	s0,16(sp)
    80002778:	00813483          	ld	s1,8(sp)
    8000277c:	02010113          	addi	sp,sp,32
    80002780:	00008067          	ret

0000000080002784 <_ZN15MemoryAllocator20get_number_of_blocksEm>:

size_t MemoryAllocator::get_number_of_blocks(size_t size) {
    80002784:	ff010113          	addi	sp,sp,-16
    80002788:	00813423          	sd	s0,8(sp)
    8000278c:	01010413          	addi	s0,sp,16
    return (size + sizeof(MemoryAllocator::MemSeg) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80002790:	05750513          	addi	a0,a0,87
}
    80002794:	00655513          	srli	a0,a0,0x6
    80002798:	00813403          	ld	s0,8(sp)
    8000279c:	01010113          	addi	sp,sp,16
    800027a0:	00008067          	ret

00000000800027a4 <_ZN15MemoryAllocator10initializeEv>:
    if (!instance) {
    800027a4:	00009797          	auipc	a5,0x9
    800027a8:	6547b783          	ld	a5,1620(a5) # 8000bdf8 <_ZN15MemoryAllocator8instanceE>
    800027ac:	00078463          	beqz	a5,800027b4 <_ZN15MemoryAllocator10initializeEv+0x10>
    800027b0:	00008067          	ret
void MemoryAllocator::initialize() {
    800027b4:	fe010113          	addi	sp,sp,-32
    800027b8:	00113c23          	sd	ra,24(sp)
    800027bc:	00813823          	sd	s0,16(sp)
    800027c0:	00913423          	sd	s1,8(sp)
    800027c4:	02010413          	addi	s0,sp,32
        freeSegHead = (MemSeg*) HEAP_START_ADDR;
    800027c8:	00009797          	auipc	a5,0x9
    800027cc:	5787b783          	ld	a5,1400(a5) # 8000bd40 <_GLOBAL_OFFSET_TABLE_+0x18>
    800027d0:	0007b783          	ld	a5,0(a5)
    800027d4:	00009497          	auipc	s1,0x9
    800027d8:	61448493          	addi	s1,s1,1556 # 8000bde8 <_ZN15MemoryAllocator11freeSegHeadE>
    800027dc:	00f4b023          	sd	a5,0(s1)
        freeSegHead -> size = (size_t) HEAP_END_ADDR - (size_t) HEAP_START_ADDR;
    800027e0:	00009717          	auipc	a4,0x9
    800027e4:	5a073703          	ld	a4,1440(a4) # 8000bd80 <_GLOBAL_OFFSET_TABLE_+0x58>
    800027e8:	00073703          	ld	a4,0(a4)
    800027ec:	40f70733          	sub	a4,a4,a5
    800027f0:	00e7b023          	sd	a4,0(a5)
        freeSegHead -> prev = nullptr;
    800027f4:	0004b783          	ld	a5,0(s1)
    800027f8:	0007b423          	sd	zero,8(a5)
        freeSegHead -> next = nullptr;
    800027fc:	0007b823          	sd	zero,16(a5)
        instance = (MemoryAllocator*) MemoryAllocator::mem_alloc(get_number_of_blocks(sizeof(MemoryAllocator)));
    80002800:	00100513          	li	a0,1
    80002804:	00000097          	auipc	ra,0x0
    80002808:	f80080e7          	jalr	-128(ra) # 80002784 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    8000280c:	00000097          	auipc	ra,0x0
    80002810:	bcc080e7          	jalr	-1076(ra) # 800023d8 <_ZN15MemoryAllocator9mem_allocEm>
    80002814:	00a4b823          	sd	a0,16(s1)
}
    80002818:	01813083          	ld	ra,24(sp)
    8000281c:	01013403          	ld	s0,16(sp)
    80002820:	00813483          	ld	s1,8(sp)
    80002824:	02010113          	addi	sp,sp,32
    80002828:	00008067          	ret

000000008000282c <_ZN13BoundedBufferC1Ev>:
#include "../h/bounded_bufffer.hpp"

BoundedBuffer::BoundedBuffer() {
    8000282c:	fe010113          	addi	sp,sp,-32
    80002830:	00113c23          	sd	ra,24(sp)
    80002834:	00813823          	sd	s0,16(sp)
    80002838:	00913423          	sd	s1,8(sp)
    8000283c:	02010413          	addi	s0,sp,32
    80002840:	00050493          	mv	s1,a0
    80002844:	00052023          	sw	zero,0(a0)
    80002848:	00052223          	sw	zero,4(a0)
    Sem::open(&item_available, 0);
    8000284c:	00000593          	li	a1,0
    80002850:	01050513          	addi	a0,a0,16
    80002854:	fffff097          	auipc	ra,0xfffff
    80002858:	0f8080e7          	jalr	248(ra) # 8000194c <_ZN3Sem4openEPPS_j>
    Sem::open(&space_available, CAPACITY);
    8000285c:	1f400593          	li	a1,500
    80002860:	00848513          	addi	a0,s1,8
    80002864:	fffff097          	auipc	ra,0xfffff
    80002868:	0e8080e7          	jalr	232(ra) # 8000194c <_ZN3Sem4openEPPS_j>
}
    8000286c:	01813083          	ld	ra,24(sp)
    80002870:	01013403          	ld	s0,16(sp)
    80002874:	00813483          	ld	s1,8(sp)
    80002878:	02010113          	addi	sp,sp,32
    8000287c:	00008067          	ret

0000000080002880 <_ZN13BoundedBufferD1Ev>:

BoundedBuffer::~BoundedBuffer() {
    80002880:	fe010113          	addi	sp,sp,-32
    80002884:	00113c23          	sd	ra,24(sp)
    80002888:	00813823          	sd	s0,16(sp)
    8000288c:	00913423          	sd	s1,8(sp)
    80002890:	02010413          	addi	s0,sp,32
    80002894:	00050493          	mv	s1,a0
    Sem::close(item_available);
    80002898:	01053503          	ld	a0,16(a0)
    8000289c:	fffff097          	auipc	ra,0xfffff
    800028a0:	f18080e7          	jalr	-232(ra) # 800017b4 <_ZN3Sem5closeEPS_>
    Sem::close(space_available);
    800028a4:	0084b503          	ld	a0,8(s1)
    800028a8:	fffff097          	auipc	ra,0xfffff
    800028ac:	f0c080e7          	jalr	-244(ra) # 800017b4 <_ZN3Sem5closeEPS_>
}
    800028b0:	01813083          	ld	ra,24(sp)
    800028b4:	01013403          	ld	s0,16(sp)
    800028b8:	00813483          	ld	s1,8(sp)
    800028bc:	02010113          	addi	sp,sp,32
    800028c0:	00008067          	ret

00000000800028c4 <_ZN13BoundedBuffernwEm>:

void *BoundedBuffer::operator new(size_t size) {
    800028c4:	ff010113          	addi	sp,sp,-16
    800028c8:	00113423          	sd	ra,8(sp)
    800028cc:	00813023          	sd	s0,0(sp)
    800028d0:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    800028d4:	00000097          	auipc	ra,0x0
    800028d8:	eb0080e7          	jalr	-336(ra) # 80002784 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    800028dc:	00000097          	auipc	ra,0x0
    800028e0:	afc080e7          	jalr	-1284(ra) # 800023d8 <_ZN15MemoryAllocator9mem_allocEm>
}
    800028e4:	00813083          	ld	ra,8(sp)
    800028e8:	00013403          	ld	s0,0(sp)
    800028ec:	01010113          	addi	sp,sp,16
    800028f0:	00008067          	ret

00000000800028f4 <_ZN13BoundedBufferdlEPv>:

void BoundedBuffer::operator delete(void *addr) {
    800028f4:	ff010113          	addi	sp,sp,-16
    800028f8:	00113423          	sd	ra,8(sp)
    800028fc:	00813023          	sd	s0,0(sp)
    80002900:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    80002904:	00000097          	auipc	ra,0x0
    80002908:	c40080e7          	jalr	-960(ra) # 80002544 <_ZN15MemoryAllocator8mem_freeEPv>
}
    8000290c:	00813083          	ld	ra,8(sp)
    80002910:	00013403          	ld	s0,0(sp)
    80002914:	01010113          	addi	sp,sp,16
    80002918:	00008067          	ret

000000008000291c <_ZN13BoundedBuffer4putcEc>:

void BoundedBuffer::putc(char c) {
    8000291c:	fe010113          	addi	sp,sp,-32
    80002920:	00113c23          	sd	ra,24(sp)
    80002924:	00813823          	sd	s0,16(sp)
    80002928:	00913423          	sd	s1,8(sp)
    8000292c:	01213023          	sd	s2,0(sp)
    80002930:	02010413          	addi	s0,sp,32
    80002934:	00050493          	mv	s1,a0
    80002938:	00058913          	mv	s2,a1
    Sem::wait(space_available);
    8000293c:	00853503          	ld	a0,8(a0)
    80002940:	fffff097          	auipc	ra,0xfffff
    80002944:	ee0080e7          	jalr	-288(ra) # 80001820 <_ZN3Sem4waitEPS_>
    array[tail] = c;
    80002948:	0044a783          	lw	a5,4(s1)
    8000294c:	00f48733          	add	a4,s1,a5
    80002950:	01270c23          	sb	s2,24(a4)
    tail = (tail + 1) % CAPACITY;
    80002954:	0017879b          	addiw	a5,a5,1
    80002958:	1f400713          	li	a4,500
    8000295c:	02e7e7bb          	remw	a5,a5,a4
    80002960:	00f4a223          	sw	a5,4(s1)
    Sem::signal(item_available);
    80002964:	0104b503          	ld	a0,16(s1)
    80002968:	fffff097          	auipc	ra,0xfffff
    8000296c:	f0c080e7          	jalr	-244(ra) # 80001874 <_ZN3Sem6signalEPS_>
}
    80002970:	01813083          	ld	ra,24(sp)
    80002974:	01013403          	ld	s0,16(sp)
    80002978:	00813483          	ld	s1,8(sp)
    8000297c:	00013903          	ld	s2,0(sp)
    80002980:	02010113          	addi	sp,sp,32
    80002984:	00008067          	ret

0000000080002988 <_ZN13BoundedBuffer4getcEv>:

char BoundedBuffer::getc() {
    80002988:	fe010113          	addi	sp,sp,-32
    8000298c:	00113c23          	sd	ra,24(sp)
    80002990:	00813823          	sd	s0,16(sp)
    80002994:	00913423          	sd	s1,8(sp)
    80002998:	01213023          	sd	s2,0(sp)
    8000299c:	02010413          	addi	s0,sp,32
    800029a0:	00050493          	mv	s1,a0
    Sem::wait(item_available);
    800029a4:	01053503          	ld	a0,16(a0)
    800029a8:	fffff097          	auipc	ra,0xfffff
    800029ac:	e78080e7          	jalr	-392(ra) # 80001820 <_ZN3Sem4waitEPS_>
    char c = array[head];
    800029b0:	0004a783          	lw	a5,0(s1)
    800029b4:	00f48733          	add	a4,s1,a5
    800029b8:	01874903          	lbu	s2,24(a4)
    head = (head + 1) % CAPACITY;
    800029bc:	0017879b          	addiw	a5,a5,1
    800029c0:	1f400713          	li	a4,500
    800029c4:	02e7e7bb          	remw	a5,a5,a4
    800029c8:	00f4a023          	sw	a5,0(s1)
    Sem::signal(space_available);
    800029cc:	0084b503          	ld	a0,8(s1)
    800029d0:	fffff097          	auipc	ra,0xfffff
    800029d4:	ea4080e7          	jalr	-348(ra) # 80001874 <_ZN3Sem6signalEPS_>
    return c;
}
    800029d8:	00090513          	mv	a0,s2
    800029dc:	01813083          	ld	ra,24(sp)
    800029e0:	01013403          	ld	s0,16(sp)
    800029e4:	00813483          	ld	s1,8(sp)
    800029e8:	00013903          	ld	s2,0(sp)
    800029ec:	02010113          	addi	sp,sp,32
    800029f0:	00008067          	ret

00000000800029f4 <_ZN9Scheduler3putEP3TCB>:

TCB* Scheduler::head_ready = nullptr;
TCB* Scheduler::tail_ready = nullptr;
TCB* Scheduler::head_sleeping = nullptr;

void Scheduler::put(TCB *thread) {
    800029f4:	fe010113          	addi	sp,sp,-32
    800029f8:	00113c23          	sd	ra,24(sp)
    800029fc:	00813823          	sd	s0,16(sp)
    80002a00:	00913423          	sd	s1,8(sp)
    80002a04:	02010413          	addi	s0,sp,32
    80002a08:	00050493          	mv	s1,a0
    if (tail_ready) {
    80002a0c:	00009517          	auipc	a0,0x9
    80002a10:	3f453503          	ld	a0,1012(a0) # 8000be00 <_ZN9Scheduler10tail_readyE>
    80002a14:	02050663          	beqz	a0,80002a40 <_ZN9Scheduler3putEP3TCB+0x4c>
        tail_ready -> set_next_ready(thread);
    80002a18:	00048593          	mv	a1,s1
    80002a1c:	00001097          	auipc	ra,0x1
    80002a20:	8a4080e7          	jalr	-1884(ra) # 800032c0 <_ZN3TCB14set_next_readyEPS_>
        tail_ready = thread;
    80002a24:	00009797          	auipc	a5,0x9
    80002a28:	3c97be23          	sd	s1,988(a5) # 8000be00 <_ZN9Scheduler10tail_readyE>
    }
    else head_ready = tail_ready = thread;
}
    80002a2c:	01813083          	ld	ra,24(sp)
    80002a30:	01013403          	ld	s0,16(sp)
    80002a34:	00813483          	ld	s1,8(sp)
    80002a38:	02010113          	addi	sp,sp,32
    80002a3c:	00008067          	ret
    else head_ready = tail_ready = thread;
    80002a40:	00009797          	auipc	a5,0x9
    80002a44:	3c078793          	addi	a5,a5,960 # 8000be00 <_ZN9Scheduler10tail_readyE>
    80002a48:	0097b023          	sd	s1,0(a5)
    80002a4c:	0097b423          	sd	s1,8(a5)
}
    80002a50:	fddff06f          	j	80002a2c <_ZN9Scheduler3putEP3TCB+0x38>

0000000080002a54 <_ZN9Scheduler3getEv>:

TCB* Scheduler::get() {
    80002a54:	fe010113          	addi	sp,sp,-32
    80002a58:	00113c23          	sd	ra,24(sp)
    80002a5c:	00813823          	sd	s0,16(sp)
    80002a60:	00913423          	sd	s1,8(sp)
    80002a64:	02010413          	addi	s0,sp,32
    if (!head_ready) return nullptr;
    80002a68:	00009497          	auipc	s1,0x9
    80002a6c:	3a04b483          	ld	s1,928(s1) # 8000be08 <_ZN9Scheduler10head_readyE>
    80002a70:	02048663          	beqz	s1,80002a9c <_ZN9Scheduler3getEv+0x48>
    TCB *tmp = head_ready;
    head_ready = head_ready -> get_next_ready();
    80002a74:	00048513          	mv	a0,s1
    80002a78:	00001097          	auipc	ra,0x1
    80002a7c:	82c080e7          	jalr	-2004(ra) # 800032a4 <_ZNK3TCB14get_next_readyEv>
    80002a80:	00009797          	auipc	a5,0x9
    80002a84:	38a7b423          	sd	a0,904(a5) # 8000be08 <_ZN9Scheduler10head_readyE>
    if (!head_ready) tail_ready = nullptr;
    80002a88:	02050663          	beqz	a0,80002ab4 <_ZN9Scheduler3getEv+0x60>
    tmp -> set_next_ready(nullptr);
    80002a8c:	00000593          	li	a1,0
    80002a90:	00048513          	mv	a0,s1
    80002a94:	00001097          	auipc	ra,0x1
    80002a98:	82c080e7          	jalr	-2004(ra) # 800032c0 <_ZN3TCB14set_next_readyEPS_>
    return tmp;
}
    80002a9c:	00048513          	mv	a0,s1
    80002aa0:	01813083          	ld	ra,24(sp)
    80002aa4:	01013403          	ld	s0,16(sp)
    80002aa8:	00813483          	ld	s1,8(sp)
    80002aac:	02010113          	addi	sp,sp,32
    80002ab0:	00008067          	ret
    if (!head_ready) tail_ready = nullptr;
    80002ab4:	00009797          	auipc	a5,0x9
    80002ab8:	3407b623          	sd	zero,844(a5) # 8000be00 <_ZN9Scheduler10tail_readyE>
    80002abc:	fd1ff06f          	j	80002a8c <_ZN9Scheduler3getEv+0x38>

0000000080002ac0 <_ZN9Scheduler13change_threadEv>:
    thread -> set_next_sleeping(nullptr);
    change_thread();
    return 0;
}

void Scheduler::change_thread() {
    80002ac0:	fe010113          	addi	sp,sp,-32
    80002ac4:	00113c23          	sd	ra,24(sp)
    80002ac8:	00813823          	sd	s0,16(sp)
    80002acc:	00913423          	sd	s1,8(sp)
    80002ad0:	01213023          	sd	s2,0(sp)
    80002ad4:	02010413          	addi	s0,sp,32
    TCB* old = TCB::running;
    80002ad8:	00009917          	auipc	s2,0x9
    80002adc:	2a093903          	ld	s2,672(s2) # 8000bd78 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002ae0:	00093483          	ld	s1,0(s2)
    old -> set_status(TCB::SLEEPING);
    80002ae4:	00100593          	li	a1,1
    80002ae8:	00048513          	mv	a0,s1
    80002aec:	00001097          	auipc	ra,0x1
    80002af0:	860080e7          	jalr	-1952(ra) # 8000334c <_ZN3TCB10set_statusENS_6StatusE>
    TCB::running = Scheduler::get();
    80002af4:	00000097          	auipc	ra,0x0
    80002af8:	f60080e7          	jalr	-160(ra) # 80002a54 <_ZN9Scheduler3getEv>
    80002afc:	00a93023          	sd	a0,0(s2)
    if (old != TCB::running) TCB::yield(old, TCB::running);
    80002b00:	00a48a63          	beq	s1,a0,80002b14 <_ZN9Scheduler13change_threadEv+0x54>
    80002b04:	00050593          	mv	a1,a0
    80002b08:	00048513          	mv	a0,s1
    80002b0c:	00000097          	auipc	ra,0x0
    80002b10:	6d0080e7          	jalr	1744(ra) # 800031dc <_ZN3TCB5yieldEPS_S0_>
}
    80002b14:	01813083          	ld	ra,24(sp)
    80002b18:	01013403          	ld	s0,16(sp)
    80002b1c:	00813483          	ld	s1,8(sp)
    80002b20:	00013903          	ld	s2,0(sp)
    80002b24:	02010113          	addi	sp,sp,32
    80002b28:	00008067          	ret

0000000080002b2c <_ZN9Scheduler12put_to_sleepEm>:
int Scheduler::put_to_sleep(time_t time) {
    80002b2c:	fc010113          	addi	sp,sp,-64
    80002b30:	02113c23          	sd	ra,56(sp)
    80002b34:	02813823          	sd	s0,48(sp)
    80002b38:	02913423          	sd	s1,40(sp)
    80002b3c:	03213023          	sd	s2,32(sp)
    80002b40:	01313c23          	sd	s3,24(sp)
    80002b44:	01413823          	sd	s4,16(sp)
    80002b48:	01513423          	sd	s5,8(sp)
    80002b4c:	04010413          	addi	s0,sp,64
    80002b50:	00050993          	mv	s3,a0
    TCB* thread = TCB::running;
    80002b54:	00009797          	auipc	a5,0x9
    80002b58:	2247b783          	ld	a5,548(a5) # 8000bd78 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002b5c:	0007ba83          	ld	s5,0(a5)
    if (!head_sleeping) {
    80002b60:	00009497          	auipc	s1,0x9
    80002b64:	2b04b483          	ld	s1,688(s1) # 8000be10 <_ZN9Scheduler13head_sleepingE>
    80002b68:	02048e63          	beqz	s1,80002ba4 <_ZN9Scheduler12put_to_sleepEm+0x78>
    time_t current_time = 0;
    80002b6c:	00000913          	li	s2,0
    TCB* tmp = head_sleeping, *prev = nullptr;
    80002b70:	00000a13          	li	s4,0
    while (tmp) {
    80002b74:	0e048063          	beqz	s1,80002c54 <_ZN9Scheduler12put_to_sleepEm+0x128>
        current_time += tmp -> get_time_to_sleep();
    80002b78:	00048513          	mv	a0,s1
    80002b7c:	00000097          	auipc	ra,0x0
    80002b80:	7b4080e7          	jalr	1972(ra) # 80003330 <_ZNK3TCB17get_time_to_sleepEv>
    80002b84:	00a90933          	add	s2,s2,a0
        if (current_time > time) {
    80002b88:	0529e863          	bltu	s3,s2,80002bd8 <_ZN9Scheduler12put_to_sleepEm+0xac>
        tmp = tmp -> get_next_sleeping();
    80002b8c:	00048513          	mv	a0,s1
    80002b90:	00000097          	auipc	ra,0x0
    80002b94:	768080e7          	jalr	1896(ra) # 800032f8 <_ZNK3TCB17get_next_sleepingEv>
        prev = tmp;
    80002b98:	00048a13          	mv	s4,s1
        tmp = tmp -> get_next_sleeping();
    80002b9c:	00050493          	mv	s1,a0
    while (tmp) {
    80002ba0:	fd5ff06f          	j	80002b74 <_ZN9Scheduler12put_to_sleepEm+0x48>
        head_sleeping = thread;
    80002ba4:	00009797          	auipc	a5,0x9
    80002ba8:	2757b623          	sd	s5,620(a5) # 8000be10 <_ZN9Scheduler13head_sleepingE>
        thread -> set_next_sleeping(nullptr);
    80002bac:	00000593          	li	a1,0
    80002bb0:	000a8513          	mv	a0,s5
    80002bb4:	00000097          	auipc	ra,0x0
    80002bb8:	728080e7          	jalr	1832(ra) # 800032dc <_ZN3TCB17set_next_sleepingEPS_>
        thread -> set_time_to_sleep(time);
    80002bbc:	00098593          	mv	a1,s3
    80002bc0:	000a8513          	mv	a0,s5
    80002bc4:	00000097          	auipc	ra,0x0
    80002bc8:	750080e7          	jalr	1872(ra) # 80003314 <_ZN3TCB17set_time_to_sleepEm>
        change_thread();
    80002bcc:	00000097          	auipc	ra,0x0
    80002bd0:	ef4080e7          	jalr	-268(ra) # 80002ac0 <_ZN9Scheduler13change_threadEv>
        return 0;
    80002bd4:	0b80006f          	j	80002c8c <_ZN9Scheduler12put_to_sleepEm+0x160>
            time_t new_time = time - (current_time - tmp -> get_time_to_sleep());
    80002bd8:	00048513          	mv	a0,s1
    80002bdc:	00000097          	auipc	ra,0x0
    80002be0:	754080e7          	jalr	1876(ra) # 80003330 <_ZNK3TCB17get_time_to_sleepEv>
    80002be4:	41250933          	sub	s2,a0,s2
    80002be8:	013909b3          	add	s3,s2,s3
            thread -> set_time_to_sleep(new_time);
    80002bec:	00098593          	mv	a1,s3
    80002bf0:	000a8513          	mv	a0,s5
    80002bf4:	00000097          	auipc	ra,0x0
    80002bf8:	720080e7          	jalr	1824(ra) # 80003314 <_ZN3TCB17set_time_to_sleepEm>
            thread -> set_next_sleeping(tmp);
    80002bfc:	00048593          	mv	a1,s1
    80002c00:	000a8513          	mv	a0,s5
    80002c04:	00000097          	auipc	ra,0x0
    80002c08:	6d8080e7          	jalr	1752(ra) # 800032dc <_ZN3TCB17set_next_sleepingEPS_>
            if (prev) prev -> set_next_sleeping(thread);
    80002c0c:	020a0e63          	beqz	s4,80002c48 <_ZN9Scheduler12put_to_sleepEm+0x11c>
    80002c10:	000a8593          	mv	a1,s5
    80002c14:	000a0513          	mv	a0,s4
    80002c18:	00000097          	auipc	ra,0x0
    80002c1c:	6c4080e7          	jalr	1732(ra) # 800032dc <_ZN3TCB17set_next_sleepingEPS_>
            tmp -> set_time_to_sleep(tmp -> get_time_to_sleep() - new_time);
    80002c20:	00048513          	mv	a0,s1
    80002c24:	00000097          	auipc	ra,0x0
    80002c28:	70c080e7          	jalr	1804(ra) # 80003330 <_ZNK3TCB17get_time_to_sleepEv>
    80002c2c:	413505b3          	sub	a1,a0,s3
    80002c30:	00048513          	mv	a0,s1
    80002c34:	00000097          	auipc	ra,0x0
    80002c38:	6e0080e7          	jalr	1760(ra) # 80003314 <_ZN3TCB17set_time_to_sleepEm>
            change_thread();
    80002c3c:	00000097          	auipc	ra,0x0
    80002c40:	e84080e7          	jalr	-380(ra) # 80002ac0 <_ZN9Scheduler13change_threadEv>
            return 0;
    80002c44:	0480006f          	j	80002c8c <_ZN9Scheduler12put_to_sleepEm+0x160>
            else head_sleeping = thread;
    80002c48:	00009797          	auipc	a5,0x9
    80002c4c:	1d57b423          	sd	s5,456(a5) # 8000be10 <_ZN9Scheduler13head_sleepingE>
    80002c50:	fd1ff06f          	j	80002c20 <_ZN9Scheduler12put_to_sleepEm+0xf4>
    thread -> set_time_to_sleep(time - current_time);
    80002c54:	412985b3          	sub	a1,s3,s2
    80002c58:	000a8513          	mv	a0,s5
    80002c5c:	00000097          	auipc	ra,0x0
    80002c60:	6b8080e7          	jalr	1720(ra) # 80003314 <_ZN3TCB17set_time_to_sleepEm>
    prev -> set_next_sleeping(thread);
    80002c64:	000a8593          	mv	a1,s5
    80002c68:	000a0513          	mv	a0,s4
    80002c6c:	00000097          	auipc	ra,0x0
    80002c70:	670080e7          	jalr	1648(ra) # 800032dc <_ZN3TCB17set_next_sleepingEPS_>
    thread -> set_next_sleeping(nullptr);
    80002c74:	00000593          	li	a1,0
    80002c78:	000a8513          	mv	a0,s5
    80002c7c:	00000097          	auipc	ra,0x0
    80002c80:	660080e7          	jalr	1632(ra) # 800032dc <_ZN3TCB17set_next_sleepingEPS_>
    change_thread();
    80002c84:	00000097          	auipc	ra,0x0
    80002c88:	e3c080e7          	jalr	-452(ra) # 80002ac0 <_ZN9Scheduler13change_threadEv>
}
    80002c8c:	00000513          	li	a0,0
    80002c90:	03813083          	ld	ra,56(sp)
    80002c94:	03013403          	ld	s0,48(sp)
    80002c98:	02813483          	ld	s1,40(sp)
    80002c9c:	02013903          	ld	s2,32(sp)
    80002ca0:	01813983          	ld	s3,24(sp)
    80002ca4:	01013a03          	ld	s4,16(sp)
    80002ca8:	00813a83          	ld	s5,8(sp)
    80002cac:	04010113          	addi	sp,sp,64
    80002cb0:	00008067          	ret

0000000080002cb4 <_ZN5RiscV10popSppSpieEv>:
    SUPERVISOR_INTERRUPT = 0x0000000000000009UL,
};

/// used in thread wrapper function when initializing thread because thread stack is empty
/// pc = (sepc = ra)
void RiscV::popSppSpie() {
    80002cb4:	ff010113          	addi	sp,sp,-16
    80002cb8:	00813423          	sd	s0,8(sp)
    80002cbc:	01010413          	addi	s0,sp,16
    /// conditionally return to User mode
    if (TCB::running -> function_body && TCB::running->function_body != kernelConsoleOutput) mc_sstatus(SSTATUS_SPP);
    80002cc0:	00009797          	auipc	a5,0x9
    80002cc4:	0b87b783          	ld	a5,184(a5) # 8000bd78 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002cc8:	0007b783          	ld	a5,0(a5)
    80002ccc:	0207b783          	ld	a5,32(a5)
    80002cd0:	00078c63          	beqz	a5,80002ce8 <_ZN5RiscV10popSppSpieEv+0x34>
    80002cd4:	00009717          	auipc	a4,0x9
    80002cd8:	09c73703          	ld	a4,156(a4) # 8000bd70 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002cdc:	00e78663          	beq	a5,a4,80002ce8 <_ZN5RiscV10popSppSpieEv+0x34>
}

inline void RiscV::mc_sstatus(uint64 mask) {
    __asm__ volatile ("csrc sstatus, %0" : : "r"(mask));
    80002ce0:	10000793          	li	a5,256
    80002ce4:	1007b073          	csrc	sstatus,a5
    __asm__ volatile("csrw sepc, ra");
    80002ce8:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80002cec:	10200073          	sret
}
    80002cf0:	00813403          	ld	s0,8(sp)
    80002cf4:	01010113          	addi	sp,sp,16
    80002cf8:	00008067          	ret

0000000080002cfc <_ZN5RiscV22handle_supervisor_trapEv>:

/// interrupt handler
void RiscV::handle_supervisor_trap() {
    80002cfc:	f9010113          	addi	sp,sp,-112
    80002d00:	06113423          	sd	ra,104(sp)
    80002d04:	06813023          	sd	s0,96(sp)
    80002d08:	04913c23          	sd	s1,88(sp)
    80002d0c:	05213823          	sd	s2,80(sp)
    80002d10:	05313423          	sd	s3,72(sp)
    80002d14:	07010413          	addi	s0,sp,112
    /// read values from registers
    uint64 syscall_code, a1, a2, a3, a4;
    __asm__ volatile("mv %0, a0" : "=r"(syscall_code));
    80002d18:	00050793          	mv	a5,a0
    __asm__ volatile("mv %0, a1" : "=r"(a1));
    80002d1c:	00058513          	mv	a0,a1
    __asm__ volatile("mv %0, a2" : "=r"(a2));
    80002d20:	00060593          	mv	a1,a2
    __asm__ volatile("mv %0, a3" : "=r"(a3));
    80002d24:	00068613          	mv	a2,a3
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    80002d28:	00070693          	mv	a3,a4
    __asm__ volatile ("csrr %0, scause" : "=r"(scause));
    80002d2c:	14202773          	csrr	a4,scause
    80002d30:	f8e43c23          	sd	a4,-104(s0)
    return scause;
    80002d34:	f9843703          	ld	a4,-104(s0)

    uint64 scause = read_scause();

    /// interrupt from supervisor / user mode
    if (scause == USER_INTERRUPT || scause == SUPERVISOR_INTERRUPT) {
    80002d38:	ff870893          	addi	a7,a4,-8
    80002d3c:	00100813          	li	a6,1
    80002d40:	03187c63          	bgeu	a6,a7,80002d78 <_ZN5RiscV22handle_supervisor_trapEv+0x7c>
        write_sepc(sepc);
        write_sstatus(sstatus);
    }

    /// interrupt caused by Timer
    else if (scause == SOFTWARE_INTERRUPT) {
    80002d44:	fff00793          	li	a5,-1
    80002d48:	03f79793          	slli	a5,a5,0x3f
    80002d4c:	00178793          	addi	a5,a5,1
    80002d50:	12f70c63          	beq	a4,a5,80002e88 <_ZN5RiscV22handle_supervisor_trapEv+0x18c>
            write_sepc(sepc);
        }
    }

    /// External interrupt (Console)
    else if (scause == HARDWARE_INTERRUPT) {
    80002d54:	fff00793          	li	a5,-1
    80002d58:	03f79793          	slli	a5,a5,0x3f
    80002d5c:	00978793          	addi	a5,a5,9
    80002d60:	1ef70263          	beq	a4,a5,80002f44 <_ZN5RiscV22handle_supervisor_trapEv+0x248>
        write_sstatus(sstatus);
        mc_sip(SIP_SEIP);
    }

    /// illegal instruction
    else if (scause == INVALID_INTERRUPT) {
    80002d64:	00200793          	li	a5,2
    80002d68:	06f71063          	bne	a4,a5,80002dc8 <_ZN5RiscV22handle_supervisor_trapEv+0xcc>
        uint64 val = 1;
        __asm__ volatile("mv a0, %0" : : "r"(val));
    80002d6c:	00100793          	li	a5,1
    80002d70:	00078513          	mv	a0,a5
        return;
    80002d74:	0540006f          	j	80002dc8 <_ZN5RiscV22handle_supervisor_trapEv+0xcc>
    __asm__ volatile ("csrr %0, sepc" : "=r"(sepc));
    80002d78:	14102773          	csrr	a4,sepc
    80002d7c:	fae43423          	sd	a4,-88(s0)
    return sepc;
    80002d80:	fa843483          	ld	s1,-88(s0)
        uint64 sepc = read_sepc() + 4;
    80002d84:	00448493          	addi	s1,s1,4
}

inline uint64 RiscV::read_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    80002d88:	10002773          	csrr	a4,sstatus
    80002d8c:	fae43023          	sd	a4,-96(s0)
    return sstatus;
    80002d90:	fa043903          	ld	s2,-96(s0)
        switch(syscall_code) {
    80002d94:	04200713          	li	a4,66
    80002d98:	02f76463          	bltu	a4,a5,80002dc0 <_ZN5RiscV22handle_supervisor_trapEv+0xc4>
    80002d9c:	00279793          	slli	a5,a5,0x2
    80002da0:	00006717          	auipc	a4,0x6
    80002da4:	29070713          	addi	a4,a4,656 # 80009030 <CONSOLE_STATUS+0x20>
    80002da8:	00e787b3          	add	a5,a5,a4
    80002dac:	0007a783          	lw	a5,0(a5)
    80002db0:	00e787b3          	add	a5,a5,a4
    80002db4:	00078067          	jr	a5
                MemoryAllocator::mem_alloc((size_t) a1);
    80002db8:	fffff097          	auipc	ra,0xfffff
    80002dbc:	620080e7          	jalr	1568(ra) # 800023d8 <_ZN15MemoryAllocator9mem_allocEm>
    __asm__ volatile ("csrw sepc, %0" : : "r"(val));
    80002dc0:	14149073          	csrw	sepc,s1
}

inline void RiscV::write_sstatus(uint64 val) {
    __asm__ volatile ("csrw sstatus, %0" : : "r"(val));
    80002dc4:	10091073          	csrw	sstatus,s2
    }
    80002dc8:	06813083          	ld	ra,104(sp)
    80002dcc:	06013403          	ld	s0,96(sp)
    80002dd0:	05813483          	ld	s1,88(sp)
    80002dd4:	05013903          	ld	s2,80(sp)
    80002dd8:	04813983          	ld	s3,72(sp)
    80002ddc:	07010113          	addi	sp,sp,112
    80002de0:	00008067          	ret
                MemoryAllocator::mem_free((void *) a1);
    80002de4:	fffff097          	auipc	ra,0xfffff
    80002de8:	760080e7          	jalr	1888(ra) # 80002544 <_ZN15MemoryAllocator8mem_freeEPv>
                break;
    80002dec:	fd5ff06f          	j	80002dc0 <_ZN5RiscV22handle_supervisor_trapEv+0xc4>
                TCB::thread_create((thread_t *) a1, (void (*)(void *)) a2, (void *) a3, (void *) a4);
    80002df0:	00000097          	auipc	ra,0x0
    80002df4:	654080e7          	jalr	1620(ra) # 80003444 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>
                break;
    80002df8:	fc9ff06f          	j	80002dc0 <_ZN5RiscV22handle_supervisor_trapEv+0xc4>
                TCB::thread_exit();
    80002dfc:	00000097          	auipc	ra,0x0
    80002e00:	56c080e7          	jalr	1388(ra) # 80003368 <_ZN3TCB11thread_exitEv>
                break;
    80002e04:	fbdff06f          	j	80002dc0 <_ZN5RiscV22handle_supervisor_trapEv+0xc4>
                TCB::dispatch();
    80002e08:	00000097          	auipc	ra,0x0
    80002e0c:	430080e7          	jalr	1072(ra) # 80003238 <_ZN3TCB8dispatchEv>
                break;
    80002e10:	fb1ff06f          	j	80002dc0 <_ZN5RiscV22handle_supervisor_trapEv+0xc4>
                Sem::open((sem_t *) a1, a2);
    80002e14:	0005859b          	sext.w	a1,a1
    80002e18:	fffff097          	auipc	ra,0xfffff
    80002e1c:	b34080e7          	jalr	-1228(ra) # 8000194c <_ZN3Sem4openEPPS_j>
                break;
    80002e20:	fa1ff06f          	j	80002dc0 <_ZN5RiscV22handle_supervisor_trapEv+0xc4>
                Sem::close((sem_t) a1);
    80002e24:	fffff097          	auipc	ra,0xfffff
    80002e28:	990080e7          	jalr	-1648(ra) # 800017b4 <_ZN3Sem5closeEPS_>
                break;
    80002e2c:	f95ff06f          	j	80002dc0 <_ZN5RiscV22handle_supervisor_trapEv+0xc4>
                Sem::wait((sem_t) a1);
    80002e30:	fffff097          	auipc	ra,0xfffff
    80002e34:	9f0080e7          	jalr	-1552(ra) # 80001820 <_ZN3Sem4waitEPS_>
                break;
    80002e38:	f89ff06f          	j	80002dc0 <_ZN5RiscV22handle_supervisor_trapEv+0xc4>
                Sem::signal((sem_t) a1);
    80002e3c:	fffff097          	auipc	ra,0xfffff
    80002e40:	a38080e7          	jalr	-1480(ra) # 80001874 <_ZN3Sem6signalEPS_>
                break;
    80002e44:	f7dff06f          	j	80002dc0 <_ZN5RiscV22handle_supervisor_trapEv+0xc4>
                Sem::timedWait((sem_t) a1, (time_t) a2);
    80002e48:	fffff097          	auipc	ra,0xfffff
    80002e4c:	a80080e7          	jalr	-1408(ra) # 800018c8 <_ZN3Sem9timedWaitEPS_m>
                break;
    80002e50:	f71ff06f          	j	80002dc0 <_ZN5RiscV22handle_supervisor_trapEv+0xc4>
                Sem::tryWait((sem_t) a1);
    80002e54:	fffff097          	auipc	ra,0xfffff
    80002e58:	a90080e7          	jalr	-1392(ra) # 800018e4 <_ZN3Sem7tryWaitEPS_>
                break;
    80002e5c:	f65ff06f          	j	80002dc0 <_ZN5RiscV22handle_supervisor_trapEv+0xc4>
                Scheduler::put_to_sleep((time_t) a1);
    80002e60:	00000097          	auipc	ra,0x0
    80002e64:	ccc080e7          	jalr	-820(ra) # 80002b2c <_ZN9Scheduler12put_to_sleepEm>
                break;
    80002e68:	f59ff06f          	j	80002dc0 <_ZN5RiscV22handle_supervisor_trapEv+0xc4>
                Con::getc_input();
    80002e6c:	fffff097          	auipc	ra,0xfffff
    80002e70:	000080e7          	jalr	ra # 80001e6c <_ZN3Con10getc_inputEv>
                break;
    80002e74:	f4dff06f          	j	80002dc0 <_ZN5RiscV22handle_supervisor_trapEv+0xc4>
                Con::putc_output((char) a1);
    80002e78:	0ff57513          	andi	a0,a0,255
    80002e7c:	fffff097          	auipc	ra,0xfffff
    80002e80:	f58080e7          	jalr	-168(ra) # 80001dd4 <_ZN3Con11putc_outputEc>
                break;
    80002e84:	f3dff06f          	j	80002dc0 <_ZN5RiscV22handle_supervisor_trapEv+0xc4>
    __asm__ volatile ("csrc sip, %0" : : "r"(mask));
    80002e88:	00200793          	li	a5,2
    80002e8c:	1447b073          	csrc	sip,a5
        TCB* first_waiting = Scheduler::head_sleeping;
    80002e90:	00009797          	auipc	a5,0x9
    80002e94:	eb87b783          	ld	a5,-328(a5) # 8000bd48 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002e98:	0007b483          	ld	s1,0(a5)
        if (first_waiting) {
    80002e9c:	04048463          	beqz	s1,80002ee4 <_ZN5RiscV22handle_supervisor_trapEv+0x1e8>
            --first_waiting -> time_to_sleep;
    80002ea0:	0484b783          	ld	a5,72(s1)
    80002ea4:	fff78793          	addi	a5,a5,-1
    80002ea8:	04f4b423          	sd	a5,72(s1)
            while (first_waiting && first_waiting -> time_to_sleep <= 0) {
    80002eac:	02048c63          	beqz	s1,80002ee4 <_ZN5RiscV22handle_supervisor_trapEv+0x1e8>
    80002eb0:	0484b783          	ld	a5,72(s1)
    80002eb4:	02079863          	bnez	a5,80002ee4 <_ZN5RiscV22handle_supervisor_trapEv+0x1e8>
                Scheduler::put(first_waiting);
    80002eb8:	00048513          	mv	a0,s1
    80002ebc:	00000097          	auipc	ra,0x0
    80002ec0:	b38080e7          	jalr	-1224(ra) # 800029f4 <_ZN9Scheduler3putEP3TCB>
                first_waiting -> status = TCB::RUNNABLE;
    80002ec4:	0004ac23          	sw	zero,24(s1)
                first_waiting = first_waiting -> next_sleeping;
    80002ec8:	0504b783          	ld	a5,80(s1)
                tmp -> next_sleeping = nullptr;
    80002ecc:	0404b823          	sd	zero,80(s1)
                Scheduler::head_sleeping = first_waiting;
    80002ed0:	00009717          	auipc	a4,0x9
    80002ed4:	e7873703          	ld	a4,-392(a4) # 8000bd48 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002ed8:	00f73023          	sd	a5,0(a4)
                first_waiting = first_waiting -> next_sleeping;
    80002edc:	00078493          	mv	s1,a5
            while (first_waiting && first_waiting -> time_to_sleep <= 0) {
    80002ee0:	fcdff06f          	j	80002eac <_ZN5RiscV22handle_supervisor_trapEv+0x1b0>
        ++TCB::time_slice_counter;
    80002ee4:	00009717          	auipc	a4,0x9
    80002ee8:	e8473703          	ld	a4,-380(a4) # 8000bd68 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002eec:	00073783          	ld	a5,0(a4)
    80002ef0:	00178793          	addi	a5,a5,1
    80002ef4:	00f73023          	sd	a5,0(a4)
        if (TCB::time_slice_counter >= TCB::running -> time_slice) {
    80002ef8:	00009717          	auipc	a4,0x9
    80002efc:	e8073703          	ld	a4,-384(a4) # 8000bd78 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002f00:	00073703          	ld	a4,0(a4)
    80002f04:	03873703          	ld	a4,56(a4)
    80002f08:	ece7e0e3          	bltu	a5,a4,80002dc8 <_ZN5RiscV22handle_supervisor_trapEv+0xcc>
    __asm__ volatile ("csrr %0, sepc" : "=r"(sepc));
    80002f0c:	141027f3          	csrr	a5,sepc
    80002f10:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    80002f14:	fb843483          	ld	s1,-72(s0)
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    80002f18:	100027f3          	csrr	a5,sstatus
    80002f1c:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    80002f20:	fb043903          	ld	s2,-80(s0)
            TCB::time_slice_counter = 0;
    80002f24:	00009797          	auipc	a5,0x9
    80002f28:	e447b783          	ld	a5,-444(a5) # 8000bd68 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002f2c:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80002f30:	00000097          	auipc	ra,0x0
    80002f34:	308080e7          	jalr	776(ra) # 80003238 <_ZN3TCB8dispatchEv>
    __asm__ volatile ("csrw sstatus, %0" : : "r"(val));
    80002f38:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %0" : : "r"(val));
    80002f3c:	14149073          	csrw	sepc,s1
}
    80002f40:	e89ff06f          	j	80002dc8 <_ZN5RiscV22handle_supervisor_trapEv+0xcc>
    __asm__ volatile ("csrr %0, sepc" : "=r"(sepc));
    80002f44:	141027f3          	csrr	a5,sepc
    80002f48:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80002f4c:	fc843983          	ld	s3,-56(s0)
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    80002f50:	100027f3          	csrr	a5,sstatus
    80002f54:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80002f58:	fc043903          	ld	s2,-64(s0)
        int irq = plic_claim();
    80002f5c:	00004097          	auipc	ra,0x4
    80002f60:	558080e7          	jalr	1368(ra) # 800074b4 <plic_claim>
    80002f64:	00050493          	mv	s1,a0
        if (irq == CONSOLE_IRQ) {
    80002f68:	00a00793          	li	a5,10
    80002f6c:	02f50263          	beq	a0,a5,80002f90 <_ZN5RiscV22handle_supervisor_trapEv+0x294>
        plic_complete(irq);
    80002f70:	00048513          	mv	a0,s1
    80002f74:	00004097          	auipc	ra,0x4
    80002f78:	578080e7          	jalr	1400(ra) # 800074ec <plic_complete>
    __asm__ volatile ("csrw sepc, %0" : : "r"(val));
    80002f7c:	14199073          	csrw	sepc,s3
    __asm__ volatile ("csrw sstatus, %0" : : "r"(val));
    80002f80:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrc sip, %0" : : "r"(mask));
    80002f84:	20000793          	li	a5,512
    80002f88:	1447b073          	csrc	sip,a5
}
    80002f8c:	e3dff06f          	j	80002dc8 <_ZN5RiscV22handle_supervisor_trapEv+0xcc>
            while (*(char *) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT) {
    80002f90:	00009797          	auipc	a5,0x9
    80002f94:	da87b783          	ld	a5,-600(a5) # 8000bd38 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002f98:	0007b783          	ld	a5,0(a5)
    80002f9c:	0007c783          	lbu	a5,0(a5)
    80002fa0:	0017f793          	andi	a5,a5,1
    80002fa4:	fc0786e3          	beqz	a5,80002f70 <_ZN5RiscV22handle_supervisor_trapEv+0x274>
                char c = *(char *) CONSOLE_RX_DATA;
    80002fa8:	00009797          	auipc	a5,0x9
    80002fac:	d887b783          	ld	a5,-632(a5) # 8000bd30 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002fb0:	0007b783          	ld	a5,0(a5)
                Con::putc_input(c);
    80002fb4:	0007c503          	lbu	a0,0(a5)
    80002fb8:	fffff097          	auipc	ra,0xfffff
    80002fbc:	e80080e7          	jalr	-384(ra) # 80001e38 <_ZN3Con10putc_inputEc>
            while (*(char *) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT) {
    80002fc0:	fd1ff06f          	j	80002f90 <_ZN5RiscV22handle_supervisor_trapEv+0x294>

0000000080002fc4 <_ZN10ThreadList9get_firstEv>:

void ThreadList::push_back(TCB *thread) {
    tail = (head ? tail -> next : head) = new Node(thread);
}

TCB *ThreadList::get_first() {
    80002fc4:	ff010113          	addi	sp,sp,-16
    80002fc8:	00813423          	sd	s0,8(sp)
    80002fcc:	01010413          	addi	s0,sp,16
    return (head ? head -> data : nullptr);
    80002fd0:	00053503          	ld	a0,0(a0)
    80002fd4:	00050463          	beqz	a0,80002fdc <_ZN10ThreadList9get_firstEv+0x18>
    80002fd8:	00053503          	ld	a0,0(a0)
}
    80002fdc:	00813403          	ld	s0,8(sp)
    80002fe0:	01010113          	addi	sp,sp,16
    80002fe4:	00008067          	ret

0000000080002fe8 <_ZN10ThreadList4NodenwEm>:

void ThreadList::free() {
    while (get_first()) remove_first();
}

void *ThreadList::Node::operator new(size_t size) {
    80002fe8:	ff010113          	addi	sp,sp,-16
    80002fec:	00113423          	sd	ra,8(sp)
    80002ff0:	00813023          	sd	s0,0(sp)
    80002ff4:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    80002ff8:	fffff097          	auipc	ra,0xfffff
    80002ffc:	78c080e7          	jalr	1932(ra) # 80002784 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80003000:	fffff097          	auipc	ra,0xfffff
    80003004:	3d8080e7          	jalr	984(ra) # 800023d8 <_ZN15MemoryAllocator9mem_allocEm>
}
    80003008:	00813083          	ld	ra,8(sp)
    8000300c:	00013403          	ld	s0,0(sp)
    80003010:	01010113          	addi	sp,sp,16
    80003014:	00008067          	ret

0000000080003018 <_ZN10ThreadList9push_backEP3TCB>:
void ThreadList::push_back(TCB *thread) {
    80003018:	fe010113          	addi	sp,sp,-32
    8000301c:	00113c23          	sd	ra,24(sp)
    80003020:	00813823          	sd	s0,16(sp)
    80003024:	00913423          	sd	s1,8(sp)
    80003028:	01213023          	sd	s2,0(sp)
    8000302c:	02010413          	addi	s0,sp,32
    80003030:	00050493          	mv	s1,a0
    80003034:	00058913          	mv	s2,a1
    tail = (head ? tail -> next : head) = new Node(thread);
    80003038:	01000513          	li	a0,16
    8000303c:	00000097          	auipc	ra,0x0
    80003040:	fac080e7          	jalr	-84(ra) # 80002fe8 <_ZN10ThreadList4NodenwEm>
        struct Node *next;

        void* operator new(size_t size);
        void operator delete(void* addr);

        explicit Node(TCB* data) : data(data), next(nullptr) {}
    80003044:	01253023          	sd	s2,0(a0)
    80003048:	00053423          	sd	zero,8(a0)
    8000304c:	0004b783          	ld	a5,0(s1)
    80003050:	02078463          	beqz	a5,80003078 <_ZN10ThreadList9push_backEP3TCB+0x60>
    80003054:	0084b783          	ld	a5,8(s1)
    80003058:	00a7b423          	sd	a0,8(a5)
    8000305c:	00a4b423          	sd	a0,8(s1)
}
    80003060:	01813083          	ld	ra,24(sp)
    80003064:	01013403          	ld	s0,16(sp)
    80003068:	00813483          	ld	s1,8(sp)
    8000306c:	00013903          	ld	s2,0(sp)
    80003070:	02010113          	addi	sp,sp,32
    80003074:	00008067          	ret
    tail = (head ? tail -> next : head) = new Node(thread);
    80003078:	00a4b023          	sd	a0,0(s1)
    8000307c:	fe1ff06f          	j	8000305c <_ZN10ThreadList9push_backEP3TCB+0x44>

0000000080003080 <_ZN10ThreadList4NodedlEPv>:

void ThreadList::Node::operator delete(void *addr) {
    80003080:	ff010113          	addi	sp,sp,-16
    80003084:	00113423          	sd	ra,8(sp)
    80003088:	00813023          	sd	s0,0(sp)
    8000308c:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    80003090:	fffff097          	auipc	ra,0xfffff
    80003094:	4b4080e7          	jalr	1204(ra) # 80002544 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80003098:	00813083          	ld	ra,8(sp)
    8000309c:	00013403          	ld	s0,0(sp)
    800030a0:	01010113          	addi	sp,sp,16
    800030a4:	00008067          	ret

00000000800030a8 <_ZN10ThreadList12remove_firstEv>:
TCB *ThreadList::remove_first() {
    800030a8:	fe010113          	addi	sp,sp,-32
    800030ac:	00113c23          	sd	ra,24(sp)
    800030b0:	00813823          	sd	s0,16(sp)
    800030b4:	00913423          	sd	s1,8(sp)
    800030b8:	02010413          	addi	s0,sp,32
    800030bc:	00050793          	mv	a5,a0
    if (!head) return nullptr;
    800030c0:	00053503          	ld	a0,0(a0)
    800030c4:	02050863          	beqz	a0,800030f4 <_ZN10ThreadList12remove_firstEv+0x4c>
    TCB* thread = tmp -> data;
    800030c8:	00053483          	ld	s1,0(a0)
    head = head -> next;
    800030cc:	00853703          	ld	a4,8(a0)
    800030d0:	00e7b023          	sd	a4,0(a5)
    delete tmp;
    800030d4:	00000097          	auipc	ra,0x0
    800030d8:	fac080e7          	jalr	-84(ra) # 80003080 <_ZN10ThreadList4NodedlEPv>
}
    800030dc:	00048513          	mv	a0,s1
    800030e0:	01813083          	ld	ra,24(sp)
    800030e4:	01013403          	ld	s0,16(sp)
    800030e8:	00813483          	ld	s1,8(sp)
    800030ec:	02010113          	addi	sp,sp,32
    800030f0:	00008067          	ret
    if (!head) return nullptr;
    800030f4:	00050493          	mv	s1,a0
    800030f8:	fe5ff06f          	j	800030dc <_ZN10ThreadList12remove_firstEv+0x34>

00000000800030fc <_ZN10ThreadList4freeEv>:
void ThreadList::free() {
    800030fc:	fe010113          	addi	sp,sp,-32
    80003100:	00113c23          	sd	ra,24(sp)
    80003104:	00813823          	sd	s0,16(sp)
    80003108:	00913423          	sd	s1,8(sp)
    8000310c:	02010413          	addi	s0,sp,32
    80003110:	00050493          	mv	s1,a0
    while (get_first()) remove_first();
    80003114:	00048513          	mv	a0,s1
    80003118:	00000097          	auipc	ra,0x0
    8000311c:	eac080e7          	jalr	-340(ra) # 80002fc4 <_ZN10ThreadList9get_firstEv>
    80003120:	00050a63          	beqz	a0,80003134 <_ZN10ThreadList4freeEv+0x38>
    80003124:	00048513          	mv	a0,s1
    80003128:	00000097          	auipc	ra,0x0
    8000312c:	f80080e7          	jalr	-128(ra) # 800030a8 <_ZN10ThreadList12remove_firstEv>
    80003130:	fe5ff06f          	j	80003114 <_ZN10ThreadList4freeEv+0x18>
}
    80003134:	01813083          	ld	ra,24(sp)
    80003138:	01013403          	ld	s0,16(sp)
    8000313c:	00813483          	ld	s1,8(sp)
    80003140:	02010113          	addi	sp,sp,32
    80003144:	00008067          	ret

0000000080003148 <_ZN3TCBC1EPFvPvES0_S0_>:

TCB::TCB(void (*function_body)(void *), void *arg, void *stack) {
    context = {
            (uint64) wrapper_function,
            /// stack starts from max address, rises to lower locations
            (uint64) (stack ? (uint64) stack + DEFAULT_STACK_SIZE - 1 : 0)
    80003148:	08068463          	beqz	a3,800031d0 <_ZN3TCBC1EPFvPvES0_S0_+0x88>
    8000314c:	000017b7          	lui	a5,0x1
    80003150:	fff78793          	addi	a5,a5,-1 # fff <_entry-0x7ffff001>
    80003154:	00f687b3          	add	a5,a3,a5
    context = {
    80003158:	00000717          	auipc	a4,0x0
    8000315c:	24c70713          	addi	a4,a4,588 # 800033a4 <_ZN3TCB16wrapper_functionEv>
    80003160:	00e53423          	sd	a4,8(a0)
    80003164:	00f53823          	sd	a5,16(a0)
    };
    id = cnt++;
    80003168:	00009717          	auipc	a4,0x9
    8000316c:	cb070713          	addi	a4,a4,-848 # 8000be18 <_ZN3TCB3cntE>
    80003170:	00072783          	lw	a5,0(a4)
    80003174:	0017881b          	addiw	a6,a5,1
    80003178:	01072023          	sw	a6,0(a4)
    8000317c:	00f52023          	sw	a5,0(a0)
    status = RUNNABLE;
    80003180:	00052c23          	sw	zero,24(a0)
    this -> function_body = function_body;
    80003184:	02b53023          	sd	a1,32(a0)
    this -> arg = arg;
    80003188:	02c53423          	sd	a2,40(a0)
    this -> stack = stack;
    8000318c:	02d53823          	sd	a3,48(a0)
    time_slice = DEFAULT_TIME_SLICE;
    80003190:	00200793          	li	a5,2
    80003194:	02f53c23          	sd	a5,56(a0)
    time_to_sleep = 0;
    80003198:	04053423          	sd	zero,72(a0)
    next_ready = nullptr;
    8000319c:	04053023          	sd	zero,64(a0)
    next_sleeping = nullptr;
    800031a0:	04053823          	sd	zero,80(a0)
    if (function_body) Scheduler::put(this);
    800031a4:	02058a63          	beqz	a1,800031d8 <_ZN3TCBC1EPFvPvES0_S0_+0x90>
TCB::TCB(void (*function_body)(void *), void *arg, void *stack) {
    800031a8:	ff010113          	addi	sp,sp,-16
    800031ac:	00113423          	sd	ra,8(sp)
    800031b0:	00813023          	sd	s0,0(sp)
    800031b4:	01010413          	addi	s0,sp,16
    if (function_body) Scheduler::put(this);
    800031b8:	00000097          	auipc	ra,0x0
    800031bc:	83c080e7          	jalr	-1988(ra) # 800029f4 <_ZN9Scheduler3putEP3TCB>
}
    800031c0:	00813083          	ld	ra,8(sp)
    800031c4:	00013403          	ld	s0,0(sp)
    800031c8:	01010113          	addi	sp,sp,16
    800031cc:	00008067          	ret
            (uint64) (stack ? (uint64) stack + DEFAULT_STACK_SIZE - 1 : 0)
    800031d0:	00000793          	li	a5,0
    800031d4:	f85ff06f          	j	80003158 <_ZN3TCBC1EPFvPvES0_S0_+0x10>
    800031d8:	00008067          	ret

00000000800031dc <_ZN3TCB5yieldEPS_S0_>:
    RiscV::popSppSpie();
    if (running -> function_body) running -> function_body(running -> arg);
    thread_exit();
}

void TCB::yield(TCB *old_running, TCB *new_running) {
    800031dc:	fe010113          	addi	sp,sp,-32
    800031e0:	00113c23          	sd	ra,24(sp)
    800031e4:	00813823          	sd	s0,16(sp)
    800031e8:	00913423          	sd	s1,8(sp)
    800031ec:	01213023          	sd	s2,0(sp)
    800031f0:	02010413          	addi	s0,sp,32
    800031f4:	00050493          	mv	s1,a0
    800031f8:	00058913          	mv	s2,a1
    RiscV::push_registers();
    800031fc:	ffffe097          	auipc	ra,0xffffe
    80003200:	f0c080e7          	jalr	-244(ra) # 80001108 <_ZN5RiscV14push_registersEv>
    if (old_running != new_running) context_switch(&old_running -> context, &new_running -> context);
    80003204:	01248a63          	beq	s1,s2,80003218 <_ZN3TCB5yieldEPS_S0_+0x3c>
    80003208:	00890593          	addi	a1,s2,8
    8000320c:	00848513          	addi	a0,s1,8
    80003210:	ffffe097          	auipc	ra,0xffffe
    80003214:	ff8080e7          	jalr	-8(ra) # 80001208 <_ZN3TCB14context_switchEPNS_7ContextES1_>
    RiscV::pop_registers();
    80003218:	ffffe097          	auipc	ra,0xffffe
    8000321c:	f70080e7          	jalr	-144(ra) # 80001188 <_ZN5RiscV13pop_registersEv>
}
    80003220:	01813083          	ld	ra,24(sp)
    80003224:	01013403          	ld	s0,16(sp)
    80003228:	00813483          	ld	s1,8(sp)
    8000322c:	00013903          	ld	s2,0(sp)
    80003230:	02010113          	addi	sp,sp,32
    80003234:	00008067          	ret

0000000080003238 <_ZN3TCB8dispatchEv>:

void TCB::dispatch() {
    80003238:	fe010113          	addi	sp,sp,-32
    8000323c:	00113c23          	sd	ra,24(sp)
    80003240:	00813823          	sd	s0,16(sp)
    80003244:	00913423          	sd	s1,8(sp)
    80003248:	02010413          	addi	s0,sp,32
    TCB* old = running;
    8000324c:	00009497          	auipc	s1,0x9
    80003250:	bd44b483          	ld	s1,-1068(s1) # 8000be20 <_ZN3TCB7runningE>
    if (old -> status == RUNNABLE) Scheduler::put(old);
    80003254:	0184a783          	lw	a5,24(s1)
    80003258:	02078e63          	beqz	a5,80003294 <_ZN3TCB8dispatchEv+0x5c>
    running = Scheduler::get();
    8000325c:	fffff097          	auipc	ra,0xfffff
    80003260:	7f8080e7          	jalr	2040(ra) # 80002a54 <_ZN9Scheduler3getEv>
    80003264:	00050593          	mv	a1,a0
    80003268:	00009797          	auipc	a5,0x9
    8000326c:	baa7bc23          	sd	a0,-1096(a5) # 8000be20 <_ZN3TCB7runningE>
    if (old != running) yield(old, running);
    80003270:	00a48863          	beq	s1,a0,80003280 <_ZN3TCB8dispatchEv+0x48>
    80003274:	00048513          	mv	a0,s1
    80003278:	00000097          	auipc	ra,0x0
    8000327c:	f64080e7          	jalr	-156(ra) # 800031dc <_ZN3TCB5yieldEPS_S0_>
}
    80003280:	01813083          	ld	ra,24(sp)
    80003284:	01013403          	ld	s0,16(sp)
    80003288:	00813483          	ld	s1,8(sp)
    8000328c:	02010113          	addi	sp,sp,32
    80003290:	00008067          	ret
    if (old -> status == RUNNABLE) Scheduler::put(old);
    80003294:	00048513          	mv	a0,s1
    80003298:	fffff097          	auipc	ra,0xfffff
    8000329c:	75c080e7          	jalr	1884(ra) # 800029f4 <_ZN9Scheduler3putEP3TCB>
    800032a0:	fbdff06f          	j	8000325c <_ZN3TCB8dispatchEv+0x24>

00000000800032a4 <_ZNK3TCB14get_next_readyEv>:

TCB *TCB::get_next_ready() const {
    800032a4:	ff010113          	addi	sp,sp,-16
    800032a8:	00813423          	sd	s0,8(sp)
    800032ac:	01010413          	addi	s0,sp,16
    return next_ready;
}
    800032b0:	04053503          	ld	a0,64(a0)
    800032b4:	00813403          	ld	s0,8(sp)
    800032b8:	01010113          	addi	sp,sp,16
    800032bc:	00008067          	ret

00000000800032c0 <_ZN3TCB14set_next_readyEPS_>:

void TCB::set_next_ready(TCB *next) {
    800032c0:	ff010113          	addi	sp,sp,-16
    800032c4:	00813423          	sd	s0,8(sp)
    800032c8:	01010413          	addi	s0,sp,16
    next_ready = next;
    800032cc:	04b53023          	sd	a1,64(a0)
}
    800032d0:	00813403          	ld	s0,8(sp)
    800032d4:	01010113          	addi	sp,sp,16
    800032d8:	00008067          	ret

00000000800032dc <_ZN3TCB17set_next_sleepingEPS_>:

void TCB::set_next_sleeping(TCB *next) {
    800032dc:	ff010113          	addi	sp,sp,-16
    800032e0:	00813423          	sd	s0,8(sp)
    800032e4:	01010413          	addi	s0,sp,16
    next_sleeping = next;
    800032e8:	04b53823          	sd	a1,80(a0)
}
    800032ec:	00813403          	ld	s0,8(sp)
    800032f0:	01010113          	addi	sp,sp,16
    800032f4:	00008067          	ret

00000000800032f8 <_ZNK3TCB17get_next_sleepingEv>:

TCB* TCB::get_next_sleeping() const {
    800032f8:	ff010113          	addi	sp,sp,-16
    800032fc:	00813423          	sd	s0,8(sp)
    80003300:	01010413          	addi	s0,sp,16
    return next_sleeping;
}
    80003304:	05053503          	ld	a0,80(a0)
    80003308:	00813403          	ld	s0,8(sp)
    8000330c:	01010113          	addi	sp,sp,16
    80003310:	00008067          	ret

0000000080003314 <_ZN3TCB17set_time_to_sleepEm>:

void TCB::set_time_to_sleep(time_t time) {
    80003314:	ff010113          	addi	sp,sp,-16
    80003318:	00813423          	sd	s0,8(sp)
    8000331c:	01010413          	addi	s0,sp,16
    time_to_sleep = time;
    80003320:	04b53423          	sd	a1,72(a0)
}
    80003324:	00813403          	ld	s0,8(sp)
    80003328:	01010113          	addi	sp,sp,16
    8000332c:	00008067          	ret

0000000080003330 <_ZNK3TCB17get_time_to_sleepEv>:

time_t TCB::get_time_to_sleep() const {
    80003330:	ff010113          	addi	sp,sp,-16
    80003334:	00813423          	sd	s0,8(sp)
    80003338:	01010413          	addi	s0,sp,16
    return time_to_sleep;
}
    8000333c:	04853503          	ld	a0,72(a0)
    80003340:	00813403          	ld	s0,8(sp)
    80003344:	01010113          	addi	sp,sp,16
    80003348:	00008067          	ret

000000008000334c <_ZN3TCB10set_statusENS_6StatusE>:

void TCB::set_status(TCB::Status stat) {
    8000334c:	ff010113          	addi	sp,sp,-16
    80003350:	00813423          	sd	s0,8(sp)
    80003354:	01010413          	addi	s0,sp,16
    this -> status = stat;
    80003358:	00b52c23          	sw	a1,24(a0)
}
    8000335c:	00813403          	ld	s0,8(sp)
    80003360:	01010113          	addi	sp,sp,16
    80003364:	00008067          	ret

0000000080003368 <_ZN3TCB11thread_exitEv>:
void TCB::thread_exit() {
    80003368:	ff010113          	addi	sp,sp,-16
    8000336c:	00113423          	sd	ra,8(sp)
    80003370:	00813023          	sd	s0,0(sp)
    80003374:	01010413          	addi	s0,sp,16
    running -> set_status(Status::FINISHED);
    80003378:	00300593          	li	a1,3
    8000337c:	00009517          	auipc	a0,0x9
    80003380:	aa453503          	ld	a0,-1372(a0) # 8000be20 <_ZN3TCB7runningE>
    80003384:	00000097          	auipc	ra,0x0
    80003388:	fc8080e7          	jalr	-56(ra) # 8000334c <_ZN3TCB10set_statusENS_6StatusE>
    dispatch();
    8000338c:	00000097          	auipc	ra,0x0
    80003390:	eac080e7          	jalr	-340(ra) # 80003238 <_ZN3TCB8dispatchEv>
}
    80003394:	00813083          	ld	ra,8(sp)
    80003398:	00013403          	ld	s0,0(sp)
    8000339c:	01010113          	addi	sp,sp,16
    800033a0:	00008067          	ret

00000000800033a4 <_ZN3TCB16wrapper_functionEv>:
void TCB::wrapper_function() {
    800033a4:	ff010113          	addi	sp,sp,-16
    800033a8:	00113423          	sd	ra,8(sp)
    800033ac:	00813023          	sd	s0,0(sp)
    800033b0:	01010413          	addi	s0,sp,16
    RiscV::popSppSpie();
    800033b4:	00000097          	auipc	ra,0x0
    800033b8:	900080e7          	jalr	-1792(ra) # 80002cb4 <_ZN5RiscV10popSppSpieEv>
    if (running -> function_body) running -> function_body(running -> arg);
    800033bc:	00009717          	auipc	a4,0x9
    800033c0:	a6473703          	ld	a4,-1436(a4) # 8000be20 <_ZN3TCB7runningE>
    800033c4:	02073783          	ld	a5,32(a4)
    800033c8:	00078663          	beqz	a5,800033d4 <_ZN3TCB16wrapper_functionEv+0x30>
    800033cc:	02873503          	ld	a0,40(a4)
    800033d0:	000780e7          	jalr	a5
    thread_exit();
    800033d4:	00000097          	auipc	ra,0x0
    800033d8:	f94080e7          	jalr	-108(ra) # 80003368 <_ZN3TCB11thread_exitEv>
}
    800033dc:	00813083          	ld	ra,8(sp)
    800033e0:	00013403          	ld	s0,0(sp)
    800033e4:	01010113          	addi	sp,sp,16
    800033e8:	00008067          	ret

00000000800033ec <_ZN3TCBnwEm>:

void *TCB::operator new(size_t size) {
    800033ec:	ff010113          	addi	sp,sp,-16
    800033f0:	00113423          	sd	ra,8(sp)
    800033f4:	00813023          	sd	s0,0(sp)
    800033f8:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    800033fc:	fffff097          	auipc	ra,0xfffff
    80003400:	388080e7          	jalr	904(ra) # 80002784 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80003404:	fffff097          	auipc	ra,0xfffff
    80003408:	fd4080e7          	jalr	-44(ra) # 800023d8 <_ZN15MemoryAllocator9mem_allocEm>
}
    8000340c:	00813083          	ld	ra,8(sp)
    80003410:	00013403          	ld	s0,0(sp)
    80003414:	01010113          	addi	sp,sp,16
    80003418:	00008067          	ret

000000008000341c <_ZN3TCBdlEPv>:

void TCB::operator delete(void *addr) {
    8000341c:	ff010113          	addi	sp,sp,-16
    80003420:	00113423          	sd	ra,8(sp)
    80003424:	00813023          	sd	s0,0(sp)
    80003428:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    8000342c:	fffff097          	auipc	ra,0xfffff
    80003430:	118080e7          	jalr	280(ra) # 80002544 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80003434:	00813083          	ld	ra,8(sp)
    80003438:	00013403          	ld	s0,0(sp)
    8000343c:	01010113          	addi	sp,sp,16
    80003440:	00008067          	ret

0000000080003444 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>:
int TCB::thread_create(thread_t *handle, void(*start_routine)(void *), void *arg, void *stack_begin_address) {
    80003444:	fc010113          	addi	sp,sp,-64
    80003448:	02113c23          	sd	ra,56(sp)
    8000344c:	02813823          	sd	s0,48(sp)
    80003450:	02913423          	sd	s1,40(sp)
    80003454:	03213023          	sd	s2,32(sp)
    80003458:	01313c23          	sd	s3,24(sp)
    8000345c:	01413823          	sd	s4,16(sp)
    80003460:	01513423          	sd	s5,8(sp)
    80003464:	04010413          	addi	s0,sp,64
    80003468:	00050913          	mv	s2,a0
    8000346c:	00058993          	mv	s3,a1
    80003470:	00060a13          	mv	s4,a2
    80003474:	00068a93          	mv	s5,a3
    *handle = new TCB(start_routine, arg, stack_begin_address);
    80003478:	05800513          	li	a0,88
    8000347c:	00000097          	auipc	ra,0x0
    80003480:	f70080e7          	jalr	-144(ra) # 800033ec <_ZN3TCBnwEm>
    80003484:	00050493          	mv	s1,a0
    80003488:	000a8693          	mv	a3,s5
    8000348c:	000a0613          	mv	a2,s4
    80003490:	00098593          	mv	a1,s3
    80003494:	00000097          	auipc	ra,0x0
    80003498:	cb4080e7          	jalr	-844(ra) # 80003148 <_ZN3TCBC1EPFvPvES0_S0_>
    8000349c:	0200006f          	j	800034bc <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_+0x78>
    800034a0:	00050913          	mv	s2,a0
    800034a4:	00048513          	mv	a0,s1
    800034a8:	00000097          	auipc	ra,0x0
    800034ac:	f74080e7          	jalr	-140(ra) # 8000341c <_ZN3TCBdlEPv>
    800034b0:	00090513          	mv	a0,s2
    800034b4:	0000a097          	auipc	ra,0xa
    800034b8:	ab4080e7          	jalr	-1356(ra) # 8000cf68 <_Unwind_Resume>
    800034bc:	00993023          	sd	s1,0(s2)
}
    800034c0:	00000513          	li	a0,0
    800034c4:	03813083          	ld	ra,56(sp)
    800034c8:	03013403          	ld	s0,48(sp)
    800034cc:	02813483          	ld	s1,40(sp)
    800034d0:	02013903          	ld	s2,32(sp)
    800034d4:	01813983          	ld	s3,24(sp)
    800034d8:	01013a03          	ld	s4,16(sp)
    800034dc:	00813a83          	ld	s5,8(sp)
    800034e0:	04010113          	addi	sp,sp,64
    800034e4:	00008067          	ret

00000000800034e8 <_ZN3TCBnaEm>:

void *TCB::operator new[](size_t size) {
    800034e8:	ff010113          	addi	sp,sp,-16
    800034ec:	00113423          	sd	ra,8(sp)
    800034f0:	00813023          	sd	s0,0(sp)
    800034f4:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    800034f8:	fffff097          	auipc	ra,0xfffff
    800034fc:	28c080e7          	jalr	652(ra) # 80002784 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80003500:	fffff097          	auipc	ra,0xfffff
    80003504:	ed8080e7          	jalr	-296(ra) # 800023d8 <_ZN15MemoryAllocator9mem_allocEm>
}
    80003508:	00813083          	ld	ra,8(sp)
    8000350c:	00013403          	ld	s0,0(sp)
    80003510:	01010113          	addi	sp,sp,16
    80003514:	00008067          	ret

0000000080003518 <_ZN3TCBdaEPv>:

void TCB::operator delete[](void *addr) {
    80003518:	ff010113          	addi	sp,sp,-16
    8000351c:	00113423          	sd	ra,8(sp)
    80003520:	00813023          	sd	s0,0(sp)
    80003524:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    80003528:	fffff097          	auipc	ra,0xfffff
    8000352c:	01c080e7          	jalr	28(ra) # 80002544 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80003530:	00813083          	ld	ra,8(sp)
    80003534:	00013403          	ld	s0,0(sp)
    80003538:	01010113          	addi	sp,sp,16
    8000353c:	00008067          	ret

0000000080003540 <_ZNK3TCB14get_time_sliceEv>:

time_t TCB::get_time_slice() const {
    80003540:	ff010113          	addi	sp,sp,-16
    80003544:	00813423          	sd	s0,8(sp)
    80003548:	01010413          	addi	s0,sp,16
    return time_slice;
}
    8000354c:	03853503          	ld	a0,56(a0)
    80003550:	00813403          	ld	s0,8(sp)
    80003554:	01010113          	addi	sp,sp,16
    80003558:	00008067          	ret

000000008000355c <_ZNK3TCB11is_finishedEv>:

bool TCB::is_finished() const {
    8000355c:	ff010113          	addi	sp,sp,-16
    80003560:	00813423          	sd	s0,8(sp)
    80003564:	01010413          	addi	s0,sp,16
    return status == FINISHED;
    80003568:	01852503          	lw	a0,24(a0)
    8000356c:	ffd50513          	addi	a0,a0,-3
}
    80003570:	00153513          	seqz	a0,a0
    80003574:	00813403          	ld	s0,8(sp)
    80003578:	01010113          	addi	sp,sp,16
    8000357c:	00008067          	ret

0000000080003580 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80003580:	fe010113          	addi	sp,sp,-32
    80003584:	00113c23          	sd	ra,24(sp)
    80003588:	00813823          	sd	s0,16(sp)
    8000358c:	00913423          	sd	s1,8(sp)
    80003590:	01213023          	sd	s2,0(sp)
    80003594:	02010413          	addi	s0,sp,32
    80003598:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    8000359c:	00000913          	li	s2,0
    800035a0:	00c0006f          	j	800035ac <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800035a4:	ffffe097          	auipc	ra,0xffffe
    800035a8:	e28080e7          	jalr	-472(ra) # 800013cc <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    800035ac:	ffffe097          	auipc	ra,0xffffe
    800035b0:	074080e7          	jalr	116(ra) # 80001620 <_Z4getcv>
    800035b4:	0005059b          	sext.w	a1,a0
    800035b8:	01b00793          	li	a5,27
    800035bc:	02f58a63          	beq	a1,a5,800035f0 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    800035c0:	0084b503          	ld	a0,8(s1)
    800035c4:	00001097          	auipc	ra,0x1
    800035c8:	66c080e7          	jalr	1644(ra) # 80004c30 <_ZN6Buffer3putEi>
        i++;
    800035cc:	0019071b          	addiw	a4,s2,1
    800035d0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800035d4:	0004a683          	lw	a3,0(s1)
    800035d8:	0026979b          	slliw	a5,a3,0x2
    800035dc:	00d787bb          	addw	a5,a5,a3
    800035e0:	0017979b          	slliw	a5,a5,0x1
    800035e4:	02f767bb          	remw	a5,a4,a5
    800035e8:	fc0792e3          	bnez	a5,800035ac <_ZL16producerKeyboardPv+0x2c>
    800035ec:	fb9ff06f          	j	800035a4 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    800035f0:	00100793          	li	a5,1
    800035f4:	00009717          	auipc	a4,0x9
    800035f8:	82f72e23          	sw	a5,-1988(a4) # 8000be30 <_ZL9threadEnd>
    data->buffer->put('!');
    800035fc:	02100593          	li	a1,33
    80003600:	0084b503          	ld	a0,8(s1)
    80003604:	00001097          	auipc	ra,0x1
    80003608:	62c080e7          	jalr	1580(ra) # 80004c30 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    8000360c:	0104b503          	ld	a0,16(s1)
    80003610:	ffffe097          	auipc	ra,0xffffe
    80003614:	ee0080e7          	jalr	-288(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    80003618:	01813083          	ld	ra,24(sp)
    8000361c:	01013403          	ld	s0,16(sp)
    80003620:	00813483          	ld	s1,8(sp)
    80003624:	00013903          	ld	s2,0(sp)
    80003628:	02010113          	addi	sp,sp,32
    8000362c:	00008067          	ret

0000000080003630 <_ZL8producerPv>:

static void producer(void *arg) {
    80003630:	fe010113          	addi	sp,sp,-32
    80003634:	00113c23          	sd	ra,24(sp)
    80003638:	00813823          	sd	s0,16(sp)
    8000363c:	00913423          	sd	s1,8(sp)
    80003640:	01213023          	sd	s2,0(sp)
    80003644:	02010413          	addi	s0,sp,32
    80003648:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000364c:	00000913          	li	s2,0
    80003650:	00c0006f          	j	8000365c <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003654:	ffffe097          	auipc	ra,0xffffe
    80003658:	d78080e7          	jalr	-648(ra) # 800013cc <_Z15thread_dispatchv>
    while (!threadEnd) {
    8000365c:	00008797          	auipc	a5,0x8
    80003660:	7d47a783          	lw	a5,2004(a5) # 8000be30 <_ZL9threadEnd>
    80003664:	02079e63          	bnez	a5,800036a0 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80003668:	0004a583          	lw	a1,0(s1)
    8000366c:	0305859b          	addiw	a1,a1,48
    80003670:	0084b503          	ld	a0,8(s1)
    80003674:	00001097          	auipc	ra,0x1
    80003678:	5bc080e7          	jalr	1468(ra) # 80004c30 <_ZN6Buffer3putEi>
        i++;
    8000367c:	0019071b          	addiw	a4,s2,1
    80003680:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003684:	0004a683          	lw	a3,0(s1)
    80003688:	0026979b          	slliw	a5,a3,0x2
    8000368c:	00d787bb          	addw	a5,a5,a3
    80003690:	0017979b          	slliw	a5,a5,0x1
    80003694:	02f767bb          	remw	a5,a4,a5
    80003698:	fc0792e3          	bnez	a5,8000365c <_ZL8producerPv+0x2c>
    8000369c:	fb9ff06f          	j	80003654 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    800036a0:	0104b503          	ld	a0,16(s1)
    800036a4:	ffffe097          	auipc	ra,0xffffe
    800036a8:	e4c080e7          	jalr	-436(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    800036ac:	01813083          	ld	ra,24(sp)
    800036b0:	01013403          	ld	s0,16(sp)
    800036b4:	00813483          	ld	s1,8(sp)
    800036b8:	00013903          	ld	s2,0(sp)
    800036bc:	02010113          	addi	sp,sp,32
    800036c0:	00008067          	ret

00000000800036c4 <_ZL8consumerPv>:

static void consumer(void *arg) {
    800036c4:	fd010113          	addi	sp,sp,-48
    800036c8:	02113423          	sd	ra,40(sp)
    800036cc:	02813023          	sd	s0,32(sp)
    800036d0:	00913c23          	sd	s1,24(sp)
    800036d4:	01213823          	sd	s2,16(sp)
    800036d8:	01313423          	sd	s3,8(sp)
    800036dc:	03010413          	addi	s0,sp,48
    800036e0:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800036e4:	00000993          	li	s3,0
    800036e8:	01c0006f          	j	80003704 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    800036ec:	ffffe097          	auipc	ra,0xffffe
    800036f0:	ce0080e7          	jalr	-800(ra) # 800013cc <_Z15thread_dispatchv>
    800036f4:	0500006f          	j	80003744 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    800036f8:	00a00513          	li	a0,10
    800036fc:	ffffe097          	auipc	ra,0xffffe
    80003700:	f70080e7          	jalr	-144(ra) # 8000166c <_Z4putcc>
    while (!threadEnd) {
    80003704:	00008797          	auipc	a5,0x8
    80003708:	72c7a783          	lw	a5,1836(a5) # 8000be30 <_ZL9threadEnd>
    8000370c:	06079063          	bnez	a5,8000376c <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80003710:	00893503          	ld	a0,8(s2)
    80003714:	00001097          	auipc	ra,0x1
    80003718:	5ac080e7          	jalr	1452(ra) # 80004cc0 <_ZN6Buffer3getEv>
        i++;
    8000371c:	0019849b          	addiw	s1,s3,1
    80003720:	0004899b          	sext.w	s3,s1
        putc(key);
    80003724:	0ff57513          	andi	a0,a0,255
    80003728:	ffffe097          	auipc	ra,0xffffe
    8000372c:	f44080e7          	jalr	-188(ra) # 8000166c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80003730:	00092703          	lw	a4,0(s2)
    80003734:	0027179b          	slliw	a5,a4,0x2
    80003738:	00e787bb          	addw	a5,a5,a4
    8000373c:	02f4e7bb          	remw	a5,s1,a5
    80003740:	fa0786e3          	beqz	a5,800036ec <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80003744:	05000793          	li	a5,80
    80003748:	02f4e4bb          	remw	s1,s1,a5
    8000374c:	fa049ce3          	bnez	s1,80003704 <_ZL8consumerPv+0x40>
    80003750:	fa9ff06f          	j	800036f8 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80003754:	00893503          	ld	a0,8(s2)
    80003758:	00001097          	auipc	ra,0x1
    8000375c:	568080e7          	jalr	1384(ra) # 80004cc0 <_ZN6Buffer3getEv>
        putc(key);
    80003760:	0ff57513          	andi	a0,a0,255
    80003764:	ffffe097          	auipc	ra,0xffffe
    80003768:	f08080e7          	jalr	-248(ra) # 8000166c <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    8000376c:	00893503          	ld	a0,8(s2)
    80003770:	00001097          	auipc	ra,0x1
    80003774:	5dc080e7          	jalr	1500(ra) # 80004d4c <_ZN6Buffer6getCntEv>
    80003778:	fca04ee3          	bgtz	a0,80003754 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    8000377c:	01093503          	ld	a0,16(s2)
    80003780:	ffffe097          	auipc	ra,0xffffe
    80003784:	d70080e7          	jalr	-656(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    80003788:	02813083          	ld	ra,40(sp)
    8000378c:	02013403          	ld	s0,32(sp)
    80003790:	01813483          	ld	s1,24(sp)
    80003794:	01013903          	ld	s2,16(sp)
    80003798:	00813983          	ld	s3,8(sp)
    8000379c:	03010113          	addi	sp,sp,48
    800037a0:	00008067          	ret

00000000800037a4 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800037a4:	f9010113          	addi	sp,sp,-112
    800037a8:	06113423          	sd	ra,104(sp)
    800037ac:	06813023          	sd	s0,96(sp)
    800037b0:	04913c23          	sd	s1,88(sp)
    800037b4:	05213823          	sd	s2,80(sp)
    800037b8:	05313423          	sd	s3,72(sp)
    800037bc:	05413023          	sd	s4,64(sp)
    800037c0:	03513c23          	sd	s5,56(sp)
    800037c4:	03613823          	sd	s6,48(sp)
    800037c8:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    800037cc:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    800037d0:	00006517          	auipc	a0,0x6
    800037d4:	97050513          	addi	a0,a0,-1680 # 80009140 <CONSOLE_STATUS+0x130>
    800037d8:	00002097          	auipc	ra,0x2
    800037dc:	550080e7          	jalr	1360(ra) # 80005d28 <_Z11printStringPKc>
    getString(input, 30);
    800037e0:	01e00593          	li	a1,30
    800037e4:	fa040493          	addi	s1,s0,-96
    800037e8:	00048513          	mv	a0,s1
    800037ec:	00002097          	auipc	ra,0x2
    800037f0:	5c4080e7          	jalr	1476(ra) # 80005db0 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800037f4:	00048513          	mv	a0,s1
    800037f8:	00002097          	auipc	ra,0x2
    800037fc:	690080e7          	jalr	1680(ra) # 80005e88 <_Z11stringToIntPKc>
    80003800:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003804:	00006517          	auipc	a0,0x6
    80003808:	95c50513          	addi	a0,a0,-1700 # 80009160 <CONSOLE_STATUS+0x150>
    8000380c:	00002097          	auipc	ra,0x2
    80003810:	51c080e7          	jalr	1308(ra) # 80005d28 <_Z11printStringPKc>
    getString(input, 30);
    80003814:	01e00593          	li	a1,30
    80003818:	00048513          	mv	a0,s1
    8000381c:	00002097          	auipc	ra,0x2
    80003820:	594080e7          	jalr	1428(ra) # 80005db0 <_Z9getStringPci>
    n = stringToInt(input);
    80003824:	00048513          	mv	a0,s1
    80003828:	00002097          	auipc	ra,0x2
    8000382c:	660080e7          	jalr	1632(ra) # 80005e88 <_Z11stringToIntPKc>
    80003830:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003834:	00006517          	auipc	a0,0x6
    80003838:	94c50513          	addi	a0,a0,-1716 # 80009180 <CONSOLE_STATUS+0x170>
    8000383c:	00002097          	auipc	ra,0x2
    80003840:	4ec080e7          	jalr	1260(ra) # 80005d28 <_Z11printStringPKc>
    80003844:	00000613          	li	a2,0
    80003848:	00a00593          	li	a1,10
    8000384c:	00090513          	mv	a0,s2
    80003850:	00002097          	auipc	ra,0x2
    80003854:	688080e7          	jalr	1672(ra) # 80005ed8 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003858:	00006517          	auipc	a0,0x6
    8000385c:	94050513          	addi	a0,a0,-1728 # 80009198 <CONSOLE_STATUS+0x188>
    80003860:	00002097          	auipc	ra,0x2
    80003864:	4c8080e7          	jalr	1224(ra) # 80005d28 <_Z11printStringPKc>
    80003868:	00000613          	li	a2,0
    8000386c:	00a00593          	li	a1,10
    80003870:	00048513          	mv	a0,s1
    80003874:	00002097          	auipc	ra,0x2
    80003878:	664080e7          	jalr	1636(ra) # 80005ed8 <_Z8printIntiii>
    printString(".\n");
    8000387c:	00006517          	auipc	a0,0x6
    80003880:	93450513          	addi	a0,a0,-1740 # 800091b0 <CONSOLE_STATUS+0x1a0>
    80003884:	00002097          	auipc	ra,0x2
    80003888:	4a4080e7          	jalr	1188(ra) # 80005d28 <_Z11printStringPKc>
    if(threadNum > n) {
    8000388c:	0324c463          	blt	s1,s2,800038b4 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003890:	03205c63          	blez	s2,800038c8 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003894:	03800513          	li	a0,56
    80003898:	ffffe097          	auipc	ra,0xffffe
    8000389c:	6d8080e7          	jalr	1752(ra) # 80001f70 <_Znwm>
    800038a0:	00050a13          	mv	s4,a0
    800038a4:	00048593          	mv	a1,s1
    800038a8:	00001097          	auipc	ra,0x1
    800038ac:	2ec080e7          	jalr	748(ra) # 80004b94 <_ZN6BufferC1Ei>
    800038b0:	0300006f          	j	800038e0 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800038b4:	00006517          	auipc	a0,0x6
    800038b8:	90450513          	addi	a0,a0,-1788 # 800091b8 <CONSOLE_STATUS+0x1a8>
    800038bc:	00002097          	auipc	ra,0x2
    800038c0:	46c080e7          	jalr	1132(ra) # 80005d28 <_Z11printStringPKc>
        return;
    800038c4:	0140006f          	j	800038d8 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800038c8:	00006517          	auipc	a0,0x6
    800038cc:	93050513          	addi	a0,a0,-1744 # 800091f8 <CONSOLE_STATUS+0x1e8>
    800038d0:	00002097          	auipc	ra,0x2
    800038d4:	458080e7          	jalr	1112(ra) # 80005d28 <_Z11printStringPKc>
        return;
    800038d8:	000b0113          	mv	sp,s6
    800038dc:	1500006f          	j	80003a2c <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    800038e0:	00000593          	li	a1,0
    800038e4:	00008517          	auipc	a0,0x8
    800038e8:	55450513          	addi	a0,a0,1364 # 8000be38 <_ZL10waitForAll>
    800038ec:	ffffe097          	auipc	ra,0xffffe
    800038f0:	b1c080e7          	jalr	-1252(ra) # 80001408 <_Z8sem_openPP3Semj>
    thread_t threads[threadNum];
    800038f4:	00391793          	slli	a5,s2,0x3
    800038f8:	00f78793          	addi	a5,a5,15
    800038fc:	ff07f793          	andi	a5,a5,-16
    80003900:	40f10133          	sub	sp,sp,a5
    80003904:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003908:	0019071b          	addiw	a4,s2,1
    8000390c:	00171793          	slli	a5,a4,0x1
    80003910:	00e787b3          	add	a5,a5,a4
    80003914:	00379793          	slli	a5,a5,0x3
    80003918:	00f78793          	addi	a5,a5,15
    8000391c:	ff07f793          	andi	a5,a5,-16
    80003920:	40f10133          	sub	sp,sp,a5
    80003924:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003928:	00191613          	slli	a2,s2,0x1
    8000392c:	012607b3          	add	a5,a2,s2
    80003930:	00379793          	slli	a5,a5,0x3
    80003934:	00f987b3          	add	a5,s3,a5
    80003938:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    8000393c:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003940:	00008717          	auipc	a4,0x8
    80003944:	4f873703          	ld	a4,1272(a4) # 8000be38 <_ZL10waitForAll>
    80003948:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    8000394c:	00078613          	mv	a2,a5
    80003950:	00000597          	auipc	a1,0x0
    80003954:	d7458593          	addi	a1,a1,-652 # 800036c4 <_ZL8consumerPv>
    80003958:	f9840513          	addi	a0,s0,-104
    8000395c:	ffffe097          	auipc	ra,0xffffe
    80003960:	99c080e7          	jalr	-1636(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003964:	00000493          	li	s1,0
    80003968:	0280006f          	j	80003990 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    8000396c:	00000597          	auipc	a1,0x0
    80003970:	c1458593          	addi	a1,a1,-1004 # 80003580 <_ZL16producerKeyboardPv>
                      data + i);
    80003974:	00179613          	slli	a2,a5,0x1
    80003978:	00f60633          	add	a2,a2,a5
    8000397c:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003980:	00c98633          	add	a2,s3,a2
    80003984:	ffffe097          	auipc	ra,0xffffe
    80003988:	974080e7          	jalr	-1676(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    8000398c:	0014849b          	addiw	s1,s1,1
    80003990:	0524d263          	bge	s1,s2,800039d4 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003994:	00149793          	slli	a5,s1,0x1
    80003998:	009787b3          	add	a5,a5,s1
    8000399c:	00379793          	slli	a5,a5,0x3
    800039a0:	00f987b3          	add	a5,s3,a5
    800039a4:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800039a8:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    800039ac:	00008717          	auipc	a4,0x8
    800039b0:	48c73703          	ld	a4,1164(a4) # 8000be38 <_ZL10waitForAll>
    800039b4:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    800039b8:	00048793          	mv	a5,s1
    800039bc:	00349513          	slli	a0,s1,0x3
    800039c0:	00aa8533          	add	a0,s5,a0
    800039c4:	fa9054e3          	blez	s1,8000396c <_Z22producerConsumer_C_APIv+0x1c8>
    800039c8:	00000597          	auipc	a1,0x0
    800039cc:	c6858593          	addi	a1,a1,-920 # 80003630 <_ZL8producerPv>
    800039d0:	fa5ff06f          	j	80003974 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    800039d4:	ffffe097          	auipc	ra,0xffffe
    800039d8:	9f8080e7          	jalr	-1544(ra) # 800013cc <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    800039dc:	00000493          	li	s1,0
    800039e0:	00994e63          	blt	s2,s1,800039fc <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    800039e4:	00008517          	auipc	a0,0x8
    800039e8:	45453503          	ld	a0,1108(a0) # 8000be38 <_ZL10waitForAll>
    800039ec:	ffffe097          	auipc	ra,0xffffe
    800039f0:	ab8080e7          	jalr	-1352(ra) # 800014a4 <_Z8sem_waitP3Sem>
    for (int i = 0; i <= threadNum; i++) {
    800039f4:	0014849b          	addiw	s1,s1,1
    800039f8:	fe9ff06f          	j	800039e0 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    800039fc:	00008517          	auipc	a0,0x8
    80003a00:	43c53503          	ld	a0,1084(a0) # 8000be38 <_ZL10waitForAll>
    80003a04:	ffffe097          	auipc	ra,0xffffe
    80003a08:	a54080e7          	jalr	-1452(ra) # 80001458 <_Z9sem_closeP3Sem>
    delete buffer;
    80003a0c:	000a0e63          	beqz	s4,80003a28 <_Z22producerConsumer_C_APIv+0x284>
    80003a10:	000a0513          	mv	a0,s4
    80003a14:	00001097          	auipc	ra,0x1
    80003a18:	3c0080e7          	jalr	960(ra) # 80004dd4 <_ZN6BufferD1Ev>
    80003a1c:	000a0513          	mv	a0,s4
    80003a20:	ffffe097          	auipc	ra,0xffffe
    80003a24:	578080e7          	jalr	1400(ra) # 80001f98 <_ZdlPv>
    80003a28:	000b0113          	mv	sp,s6

}
    80003a2c:	f9040113          	addi	sp,s0,-112
    80003a30:	06813083          	ld	ra,104(sp)
    80003a34:	06013403          	ld	s0,96(sp)
    80003a38:	05813483          	ld	s1,88(sp)
    80003a3c:	05013903          	ld	s2,80(sp)
    80003a40:	04813983          	ld	s3,72(sp)
    80003a44:	04013a03          	ld	s4,64(sp)
    80003a48:	03813a83          	ld	s5,56(sp)
    80003a4c:	03013b03          	ld	s6,48(sp)
    80003a50:	07010113          	addi	sp,sp,112
    80003a54:	00008067          	ret
    80003a58:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003a5c:	000a0513          	mv	a0,s4
    80003a60:	ffffe097          	auipc	ra,0xffffe
    80003a64:	538080e7          	jalr	1336(ra) # 80001f98 <_ZdlPv>
    80003a68:	00048513          	mv	a0,s1
    80003a6c:	00009097          	auipc	ra,0x9
    80003a70:	4fc080e7          	jalr	1276(ra) # 8000cf68 <_Unwind_Resume>

0000000080003a74 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003a74:	fe010113          	addi	sp,sp,-32
    80003a78:	00113c23          	sd	ra,24(sp)
    80003a7c:	00813823          	sd	s0,16(sp)
    80003a80:	00913423          	sd	s1,8(sp)
    80003a84:	01213023          	sd	s2,0(sp)
    80003a88:	02010413          	addi	s0,sp,32
    80003a8c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003a90:	00100793          	li	a5,1
    80003a94:	02a7f863          	bgeu	a5,a0,80003ac4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003a98:	00a00793          	li	a5,10
    80003a9c:	02f577b3          	remu	a5,a0,a5
    80003aa0:	02078e63          	beqz	a5,80003adc <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003aa4:	fff48513          	addi	a0,s1,-1
    80003aa8:	00000097          	auipc	ra,0x0
    80003aac:	fcc080e7          	jalr	-52(ra) # 80003a74 <_ZL9fibonaccim>
    80003ab0:	00050913          	mv	s2,a0
    80003ab4:	ffe48513          	addi	a0,s1,-2
    80003ab8:	00000097          	auipc	ra,0x0
    80003abc:	fbc080e7          	jalr	-68(ra) # 80003a74 <_ZL9fibonaccim>
    80003ac0:	00a90533          	add	a0,s2,a0
}
    80003ac4:	01813083          	ld	ra,24(sp)
    80003ac8:	01013403          	ld	s0,16(sp)
    80003acc:	00813483          	ld	s1,8(sp)
    80003ad0:	00013903          	ld	s2,0(sp)
    80003ad4:	02010113          	addi	sp,sp,32
    80003ad8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003adc:	ffffe097          	auipc	ra,0xffffe
    80003ae0:	8f0080e7          	jalr	-1808(ra) # 800013cc <_Z15thread_dispatchv>
    80003ae4:	fc1ff06f          	j	80003aa4 <_ZL9fibonaccim+0x30>

0000000080003ae8 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003ae8:	fe010113          	addi	sp,sp,-32
    80003aec:	00113c23          	sd	ra,24(sp)
    80003af0:	00813823          	sd	s0,16(sp)
    80003af4:	00913423          	sd	s1,8(sp)
    80003af8:	01213023          	sd	s2,0(sp)
    80003afc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003b00:	00000913          	li	s2,0
    80003b04:	0380006f          	j	80003b3c <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003b08:	ffffe097          	auipc	ra,0xffffe
    80003b0c:	8c4080e7          	jalr	-1852(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003b10:	00148493          	addi	s1,s1,1
    80003b14:	000027b7          	lui	a5,0x2
    80003b18:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003b1c:	0097ee63          	bltu	a5,s1,80003b38 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003b20:	00000713          	li	a4,0
    80003b24:	000077b7          	lui	a5,0x7
    80003b28:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003b2c:	fce7eee3          	bltu	a5,a4,80003b08 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003b30:	00170713          	addi	a4,a4,1
    80003b34:	ff1ff06f          	j	80003b24 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003b38:	00190913          	addi	s2,s2,1
    80003b3c:	00900793          	li	a5,9
    80003b40:	0527e063          	bltu	a5,s2,80003b80 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003b44:	00005517          	auipc	a0,0x5
    80003b48:	6e450513          	addi	a0,a0,1764 # 80009228 <CONSOLE_STATUS+0x218>
    80003b4c:	00002097          	auipc	ra,0x2
    80003b50:	1dc080e7          	jalr	476(ra) # 80005d28 <_Z11printStringPKc>
    80003b54:	00000613          	li	a2,0
    80003b58:	00a00593          	li	a1,10
    80003b5c:	0009051b          	sext.w	a0,s2
    80003b60:	00002097          	auipc	ra,0x2
    80003b64:	378080e7          	jalr	888(ra) # 80005ed8 <_Z8printIntiii>
    80003b68:	00006517          	auipc	a0,0x6
    80003b6c:	92050513          	addi	a0,a0,-1760 # 80009488 <CONSOLE_STATUS+0x478>
    80003b70:	00002097          	auipc	ra,0x2
    80003b74:	1b8080e7          	jalr	440(ra) # 80005d28 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003b78:	00000493          	li	s1,0
    80003b7c:	f99ff06f          	j	80003b14 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003b80:	00005517          	auipc	a0,0x5
    80003b84:	6b050513          	addi	a0,a0,1712 # 80009230 <CONSOLE_STATUS+0x220>
    80003b88:	00002097          	auipc	ra,0x2
    80003b8c:	1a0080e7          	jalr	416(ra) # 80005d28 <_Z11printStringPKc>
    finishedA = true;
    80003b90:	00100793          	li	a5,1
    80003b94:	00008717          	auipc	a4,0x8
    80003b98:	2af70623          	sb	a5,684(a4) # 8000be40 <_ZL9finishedA>
}
    80003b9c:	01813083          	ld	ra,24(sp)
    80003ba0:	01013403          	ld	s0,16(sp)
    80003ba4:	00813483          	ld	s1,8(sp)
    80003ba8:	00013903          	ld	s2,0(sp)
    80003bac:	02010113          	addi	sp,sp,32
    80003bb0:	00008067          	ret

0000000080003bb4 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003bb4:	fe010113          	addi	sp,sp,-32
    80003bb8:	00113c23          	sd	ra,24(sp)
    80003bbc:	00813823          	sd	s0,16(sp)
    80003bc0:	00913423          	sd	s1,8(sp)
    80003bc4:	01213023          	sd	s2,0(sp)
    80003bc8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003bcc:	00000913          	li	s2,0
    80003bd0:	0380006f          	j	80003c08 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003bd4:	ffffd097          	auipc	ra,0xffffd
    80003bd8:	7f8080e7          	jalr	2040(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003bdc:	00148493          	addi	s1,s1,1
    80003be0:	000027b7          	lui	a5,0x2
    80003be4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003be8:	0097ee63          	bltu	a5,s1,80003c04 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003bec:	00000713          	li	a4,0
    80003bf0:	000077b7          	lui	a5,0x7
    80003bf4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003bf8:	fce7eee3          	bltu	a5,a4,80003bd4 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003bfc:	00170713          	addi	a4,a4,1
    80003c00:	ff1ff06f          	j	80003bf0 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003c04:	00190913          	addi	s2,s2,1
    80003c08:	00f00793          	li	a5,15
    80003c0c:	0527e063          	bltu	a5,s2,80003c4c <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003c10:	00005517          	auipc	a0,0x5
    80003c14:	63050513          	addi	a0,a0,1584 # 80009240 <CONSOLE_STATUS+0x230>
    80003c18:	00002097          	auipc	ra,0x2
    80003c1c:	110080e7          	jalr	272(ra) # 80005d28 <_Z11printStringPKc>
    80003c20:	00000613          	li	a2,0
    80003c24:	00a00593          	li	a1,10
    80003c28:	0009051b          	sext.w	a0,s2
    80003c2c:	00002097          	auipc	ra,0x2
    80003c30:	2ac080e7          	jalr	684(ra) # 80005ed8 <_Z8printIntiii>
    80003c34:	00006517          	auipc	a0,0x6
    80003c38:	85450513          	addi	a0,a0,-1964 # 80009488 <CONSOLE_STATUS+0x478>
    80003c3c:	00002097          	auipc	ra,0x2
    80003c40:	0ec080e7          	jalr	236(ra) # 80005d28 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003c44:	00000493          	li	s1,0
    80003c48:	f99ff06f          	j	80003be0 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003c4c:	00005517          	auipc	a0,0x5
    80003c50:	5fc50513          	addi	a0,a0,1532 # 80009248 <CONSOLE_STATUS+0x238>
    80003c54:	00002097          	auipc	ra,0x2
    80003c58:	0d4080e7          	jalr	212(ra) # 80005d28 <_Z11printStringPKc>
    finishedB = true;
    80003c5c:	00100793          	li	a5,1
    80003c60:	00008717          	auipc	a4,0x8
    80003c64:	1ef700a3          	sb	a5,481(a4) # 8000be41 <_ZL9finishedB>
    thread_dispatch();
    80003c68:	ffffd097          	auipc	ra,0xffffd
    80003c6c:	764080e7          	jalr	1892(ra) # 800013cc <_Z15thread_dispatchv>
}
    80003c70:	01813083          	ld	ra,24(sp)
    80003c74:	01013403          	ld	s0,16(sp)
    80003c78:	00813483          	ld	s1,8(sp)
    80003c7c:	00013903          	ld	s2,0(sp)
    80003c80:	02010113          	addi	sp,sp,32
    80003c84:	00008067          	ret

0000000080003c88 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003c88:	fe010113          	addi	sp,sp,-32
    80003c8c:	00113c23          	sd	ra,24(sp)
    80003c90:	00813823          	sd	s0,16(sp)
    80003c94:	00913423          	sd	s1,8(sp)
    80003c98:	01213023          	sd	s2,0(sp)
    80003c9c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003ca0:	00000493          	li	s1,0
    80003ca4:	0400006f          	j	80003ce4 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003ca8:	00005517          	auipc	a0,0x5
    80003cac:	5b050513          	addi	a0,a0,1456 # 80009258 <CONSOLE_STATUS+0x248>
    80003cb0:	00002097          	auipc	ra,0x2
    80003cb4:	078080e7          	jalr	120(ra) # 80005d28 <_Z11printStringPKc>
    80003cb8:	00000613          	li	a2,0
    80003cbc:	00a00593          	li	a1,10
    80003cc0:	00048513          	mv	a0,s1
    80003cc4:	00002097          	auipc	ra,0x2
    80003cc8:	214080e7          	jalr	532(ra) # 80005ed8 <_Z8printIntiii>
    80003ccc:	00005517          	auipc	a0,0x5
    80003cd0:	7bc50513          	addi	a0,a0,1980 # 80009488 <CONSOLE_STATUS+0x478>
    80003cd4:	00002097          	auipc	ra,0x2
    80003cd8:	054080e7          	jalr	84(ra) # 80005d28 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003cdc:	0014849b          	addiw	s1,s1,1
    80003ce0:	0ff4f493          	andi	s1,s1,255
    80003ce4:	00200793          	li	a5,2
    80003ce8:	fc97f0e3          	bgeu	a5,s1,80003ca8 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003cec:	00005517          	auipc	a0,0x5
    80003cf0:	57450513          	addi	a0,a0,1396 # 80009260 <CONSOLE_STATUS+0x250>
    80003cf4:	00002097          	auipc	ra,0x2
    80003cf8:	034080e7          	jalr	52(ra) # 80005d28 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003cfc:	00700313          	li	t1,7
    thread_dispatch();
    80003d00:	ffffd097          	auipc	ra,0xffffd
    80003d04:	6cc080e7          	jalr	1740(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003d08:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003d0c:	00005517          	auipc	a0,0x5
    80003d10:	56450513          	addi	a0,a0,1380 # 80009270 <CONSOLE_STATUS+0x260>
    80003d14:	00002097          	auipc	ra,0x2
    80003d18:	014080e7          	jalr	20(ra) # 80005d28 <_Z11printStringPKc>
    80003d1c:	00000613          	li	a2,0
    80003d20:	00a00593          	li	a1,10
    80003d24:	0009051b          	sext.w	a0,s2
    80003d28:	00002097          	auipc	ra,0x2
    80003d2c:	1b0080e7          	jalr	432(ra) # 80005ed8 <_Z8printIntiii>
    80003d30:	00005517          	auipc	a0,0x5
    80003d34:	75850513          	addi	a0,a0,1880 # 80009488 <CONSOLE_STATUS+0x478>
    80003d38:	00002097          	auipc	ra,0x2
    80003d3c:	ff0080e7          	jalr	-16(ra) # 80005d28 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003d40:	00c00513          	li	a0,12
    80003d44:	00000097          	auipc	ra,0x0
    80003d48:	d30080e7          	jalr	-720(ra) # 80003a74 <_ZL9fibonaccim>
    80003d4c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003d50:	00005517          	auipc	a0,0x5
    80003d54:	52850513          	addi	a0,a0,1320 # 80009278 <CONSOLE_STATUS+0x268>
    80003d58:	00002097          	auipc	ra,0x2
    80003d5c:	fd0080e7          	jalr	-48(ra) # 80005d28 <_Z11printStringPKc>
    80003d60:	00000613          	li	a2,0
    80003d64:	00a00593          	li	a1,10
    80003d68:	0009051b          	sext.w	a0,s2
    80003d6c:	00002097          	auipc	ra,0x2
    80003d70:	16c080e7          	jalr	364(ra) # 80005ed8 <_Z8printIntiii>
    80003d74:	00005517          	auipc	a0,0x5
    80003d78:	71450513          	addi	a0,a0,1812 # 80009488 <CONSOLE_STATUS+0x478>
    80003d7c:	00002097          	auipc	ra,0x2
    80003d80:	fac080e7          	jalr	-84(ra) # 80005d28 <_Z11printStringPKc>
    80003d84:	0400006f          	j	80003dc4 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003d88:	00005517          	auipc	a0,0x5
    80003d8c:	4d050513          	addi	a0,a0,1232 # 80009258 <CONSOLE_STATUS+0x248>
    80003d90:	00002097          	auipc	ra,0x2
    80003d94:	f98080e7          	jalr	-104(ra) # 80005d28 <_Z11printStringPKc>
    80003d98:	00000613          	li	a2,0
    80003d9c:	00a00593          	li	a1,10
    80003da0:	00048513          	mv	a0,s1
    80003da4:	00002097          	auipc	ra,0x2
    80003da8:	134080e7          	jalr	308(ra) # 80005ed8 <_Z8printIntiii>
    80003dac:	00005517          	auipc	a0,0x5
    80003db0:	6dc50513          	addi	a0,a0,1756 # 80009488 <CONSOLE_STATUS+0x478>
    80003db4:	00002097          	auipc	ra,0x2
    80003db8:	f74080e7          	jalr	-140(ra) # 80005d28 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003dbc:	0014849b          	addiw	s1,s1,1
    80003dc0:	0ff4f493          	andi	s1,s1,255
    80003dc4:	00500793          	li	a5,5
    80003dc8:	fc97f0e3          	bgeu	a5,s1,80003d88 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80003dcc:	00005517          	auipc	a0,0x5
    80003dd0:	46450513          	addi	a0,a0,1124 # 80009230 <CONSOLE_STATUS+0x220>
    80003dd4:	00002097          	auipc	ra,0x2
    80003dd8:	f54080e7          	jalr	-172(ra) # 80005d28 <_Z11printStringPKc>
    finishedC = true;
    80003ddc:	00100793          	li	a5,1
    80003de0:	00008717          	auipc	a4,0x8
    80003de4:	06f70123          	sb	a5,98(a4) # 8000be42 <_ZL9finishedC>
    thread_dispatch();
    80003de8:	ffffd097          	auipc	ra,0xffffd
    80003dec:	5e4080e7          	jalr	1508(ra) # 800013cc <_Z15thread_dispatchv>
}
    80003df0:	01813083          	ld	ra,24(sp)
    80003df4:	01013403          	ld	s0,16(sp)
    80003df8:	00813483          	ld	s1,8(sp)
    80003dfc:	00013903          	ld	s2,0(sp)
    80003e00:	02010113          	addi	sp,sp,32
    80003e04:	00008067          	ret

0000000080003e08 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003e08:	fe010113          	addi	sp,sp,-32
    80003e0c:	00113c23          	sd	ra,24(sp)
    80003e10:	00813823          	sd	s0,16(sp)
    80003e14:	00913423          	sd	s1,8(sp)
    80003e18:	01213023          	sd	s2,0(sp)
    80003e1c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003e20:	00a00493          	li	s1,10
    80003e24:	0400006f          	j	80003e64 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003e28:	00005517          	auipc	a0,0x5
    80003e2c:	46050513          	addi	a0,a0,1120 # 80009288 <CONSOLE_STATUS+0x278>
    80003e30:	00002097          	auipc	ra,0x2
    80003e34:	ef8080e7          	jalr	-264(ra) # 80005d28 <_Z11printStringPKc>
    80003e38:	00000613          	li	a2,0
    80003e3c:	00a00593          	li	a1,10
    80003e40:	00048513          	mv	a0,s1
    80003e44:	00002097          	auipc	ra,0x2
    80003e48:	094080e7          	jalr	148(ra) # 80005ed8 <_Z8printIntiii>
    80003e4c:	00005517          	auipc	a0,0x5
    80003e50:	63c50513          	addi	a0,a0,1596 # 80009488 <CONSOLE_STATUS+0x478>
    80003e54:	00002097          	auipc	ra,0x2
    80003e58:	ed4080e7          	jalr	-300(ra) # 80005d28 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003e5c:	0014849b          	addiw	s1,s1,1
    80003e60:	0ff4f493          	andi	s1,s1,255
    80003e64:	00c00793          	li	a5,12
    80003e68:	fc97f0e3          	bgeu	a5,s1,80003e28 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003e6c:	00005517          	auipc	a0,0x5
    80003e70:	42450513          	addi	a0,a0,1060 # 80009290 <CONSOLE_STATUS+0x280>
    80003e74:	00002097          	auipc	ra,0x2
    80003e78:	eb4080e7          	jalr	-332(ra) # 80005d28 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003e7c:	00500313          	li	t1,5
    thread_dispatch();
    80003e80:	ffffd097          	auipc	ra,0xffffd
    80003e84:	54c080e7          	jalr	1356(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003e88:	01000513          	li	a0,16
    80003e8c:	00000097          	auipc	ra,0x0
    80003e90:	be8080e7          	jalr	-1048(ra) # 80003a74 <_ZL9fibonaccim>
    80003e94:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003e98:	00005517          	auipc	a0,0x5
    80003e9c:	40850513          	addi	a0,a0,1032 # 800092a0 <CONSOLE_STATUS+0x290>
    80003ea0:	00002097          	auipc	ra,0x2
    80003ea4:	e88080e7          	jalr	-376(ra) # 80005d28 <_Z11printStringPKc>
    80003ea8:	00000613          	li	a2,0
    80003eac:	00a00593          	li	a1,10
    80003eb0:	0009051b          	sext.w	a0,s2
    80003eb4:	00002097          	auipc	ra,0x2
    80003eb8:	024080e7          	jalr	36(ra) # 80005ed8 <_Z8printIntiii>
    80003ebc:	00005517          	auipc	a0,0x5
    80003ec0:	5cc50513          	addi	a0,a0,1484 # 80009488 <CONSOLE_STATUS+0x478>
    80003ec4:	00002097          	auipc	ra,0x2
    80003ec8:	e64080e7          	jalr	-412(ra) # 80005d28 <_Z11printStringPKc>
    80003ecc:	0400006f          	j	80003f0c <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003ed0:	00005517          	auipc	a0,0x5
    80003ed4:	3b850513          	addi	a0,a0,952 # 80009288 <CONSOLE_STATUS+0x278>
    80003ed8:	00002097          	auipc	ra,0x2
    80003edc:	e50080e7          	jalr	-432(ra) # 80005d28 <_Z11printStringPKc>
    80003ee0:	00000613          	li	a2,0
    80003ee4:	00a00593          	li	a1,10
    80003ee8:	00048513          	mv	a0,s1
    80003eec:	00002097          	auipc	ra,0x2
    80003ef0:	fec080e7          	jalr	-20(ra) # 80005ed8 <_Z8printIntiii>
    80003ef4:	00005517          	auipc	a0,0x5
    80003ef8:	59450513          	addi	a0,a0,1428 # 80009488 <CONSOLE_STATUS+0x478>
    80003efc:	00002097          	auipc	ra,0x2
    80003f00:	e2c080e7          	jalr	-468(ra) # 80005d28 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003f04:	0014849b          	addiw	s1,s1,1
    80003f08:	0ff4f493          	andi	s1,s1,255
    80003f0c:	00f00793          	li	a5,15
    80003f10:	fc97f0e3          	bgeu	a5,s1,80003ed0 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003f14:	00005517          	auipc	a0,0x5
    80003f18:	39c50513          	addi	a0,a0,924 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80003f1c:	00002097          	auipc	ra,0x2
    80003f20:	e0c080e7          	jalr	-500(ra) # 80005d28 <_Z11printStringPKc>
    finishedD = true;
    80003f24:	00100793          	li	a5,1
    80003f28:	00008717          	auipc	a4,0x8
    80003f2c:	f0f70da3          	sb	a5,-229(a4) # 8000be43 <_ZL9finishedD>
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

0000000080003f50 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003f50:	fc010113          	addi	sp,sp,-64
    80003f54:	02113c23          	sd	ra,56(sp)
    80003f58:	02813823          	sd	s0,48(sp)
    80003f5c:	02913423          	sd	s1,40(sp)
    80003f60:	03213023          	sd	s2,32(sp)
    80003f64:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003f68:	02000513          	li	a0,32
    80003f6c:	ffffe097          	auipc	ra,0xffffe
    80003f70:	004080e7          	jalr	4(ra) # 80001f70 <_Znwm>
    80003f74:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003f78:	ffffe097          	auipc	ra,0xffffe
    80003f7c:	0f8080e7          	jalr	248(ra) # 80002070 <_ZN6ThreadC1Ev>
    80003f80:	00008797          	auipc	a5,0x8
    80003f84:	c1078793          	addi	a5,a5,-1008 # 8000bb90 <_ZTV7WorkerA+0x10>
    80003f88:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003f8c:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003f90:	00005517          	auipc	a0,0x5
    80003f94:	33050513          	addi	a0,a0,816 # 800092c0 <CONSOLE_STATUS+0x2b0>
    80003f98:	00002097          	auipc	ra,0x2
    80003f9c:	d90080e7          	jalr	-624(ra) # 80005d28 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003fa0:	02000513          	li	a0,32
    80003fa4:	ffffe097          	auipc	ra,0xffffe
    80003fa8:	fcc080e7          	jalr	-52(ra) # 80001f70 <_Znwm>
    80003fac:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003fb0:	ffffe097          	auipc	ra,0xffffe
    80003fb4:	0c0080e7          	jalr	192(ra) # 80002070 <_ZN6ThreadC1Ev>
    80003fb8:	00008797          	auipc	a5,0x8
    80003fbc:	c0078793          	addi	a5,a5,-1024 # 8000bbb8 <_ZTV7WorkerB+0x10>
    80003fc0:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003fc4:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003fc8:	00005517          	auipc	a0,0x5
    80003fcc:	31050513          	addi	a0,a0,784 # 800092d8 <CONSOLE_STATUS+0x2c8>
    80003fd0:	00002097          	auipc	ra,0x2
    80003fd4:	d58080e7          	jalr	-680(ra) # 80005d28 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003fd8:	02000513          	li	a0,32
    80003fdc:	ffffe097          	auipc	ra,0xffffe
    80003fe0:	f94080e7          	jalr	-108(ra) # 80001f70 <_Znwm>
    80003fe4:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003fe8:	ffffe097          	auipc	ra,0xffffe
    80003fec:	088080e7          	jalr	136(ra) # 80002070 <_ZN6ThreadC1Ev>
    80003ff0:	00008797          	auipc	a5,0x8
    80003ff4:	bf078793          	addi	a5,a5,-1040 # 8000bbe0 <_ZTV7WorkerC+0x10>
    80003ff8:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003ffc:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80004000:	00005517          	auipc	a0,0x5
    80004004:	2f050513          	addi	a0,a0,752 # 800092f0 <CONSOLE_STATUS+0x2e0>
    80004008:	00002097          	auipc	ra,0x2
    8000400c:	d20080e7          	jalr	-736(ra) # 80005d28 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80004010:	02000513          	li	a0,32
    80004014:	ffffe097          	auipc	ra,0xffffe
    80004018:	f5c080e7          	jalr	-164(ra) # 80001f70 <_Znwm>
    8000401c:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80004020:	ffffe097          	auipc	ra,0xffffe
    80004024:	050080e7          	jalr	80(ra) # 80002070 <_ZN6ThreadC1Ev>
    80004028:	00008797          	auipc	a5,0x8
    8000402c:	be078793          	addi	a5,a5,-1056 # 8000bc08 <_ZTV7WorkerD+0x10>
    80004030:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80004034:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80004038:	00005517          	auipc	a0,0x5
    8000403c:	2d050513          	addi	a0,a0,720 # 80009308 <CONSOLE_STATUS+0x2f8>
    80004040:	00002097          	auipc	ra,0x2
    80004044:	ce8080e7          	jalr	-792(ra) # 80005d28 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80004048:	00000493          	li	s1,0
    8000404c:	00300793          	li	a5,3
    80004050:	0297c663          	blt	a5,s1,8000407c <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80004054:	00349793          	slli	a5,s1,0x3
    80004058:	fe040713          	addi	a4,s0,-32
    8000405c:	00f707b3          	add	a5,a4,a5
    80004060:	fe07b503          	ld	a0,-32(a5)
    80004064:	ffffe097          	auipc	ra,0xffffe
    80004068:	03c080e7          	jalr	60(ra) # 800020a0 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    8000406c:	0014849b          	addiw	s1,s1,1
    80004070:	fddff06f          	j	8000404c <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80004074:	ffffe097          	auipc	ra,0xffffe
    80004078:	064080e7          	jalr	100(ra) # 800020d8 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000407c:	00008797          	auipc	a5,0x8
    80004080:	dc47c783          	lbu	a5,-572(a5) # 8000be40 <_ZL9finishedA>
    80004084:	fe0788e3          	beqz	a5,80004074 <_Z20Threads_CPP_API_testv+0x124>
    80004088:	00008797          	auipc	a5,0x8
    8000408c:	db97c783          	lbu	a5,-583(a5) # 8000be41 <_ZL9finishedB>
    80004090:	fe0782e3          	beqz	a5,80004074 <_Z20Threads_CPP_API_testv+0x124>
    80004094:	00008797          	auipc	a5,0x8
    80004098:	dae7c783          	lbu	a5,-594(a5) # 8000be42 <_ZL9finishedC>
    8000409c:	fc078ce3          	beqz	a5,80004074 <_Z20Threads_CPP_API_testv+0x124>
    800040a0:	00008797          	auipc	a5,0x8
    800040a4:	da37c783          	lbu	a5,-605(a5) # 8000be43 <_ZL9finishedD>
    800040a8:	fc0786e3          	beqz	a5,80004074 <_Z20Threads_CPP_API_testv+0x124>
    800040ac:	fc040493          	addi	s1,s0,-64
    800040b0:	0080006f          	j	800040b8 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    800040b4:	00848493          	addi	s1,s1,8
    800040b8:	fe040793          	addi	a5,s0,-32
    800040bc:	08f48663          	beq	s1,a5,80004148 <_Z20Threads_CPP_API_testv+0x1f8>
    800040c0:	0004b503          	ld	a0,0(s1)
    800040c4:	fe0508e3          	beqz	a0,800040b4 <_Z20Threads_CPP_API_testv+0x164>
    800040c8:	00053783          	ld	a5,0(a0)
    800040cc:	0087b783          	ld	a5,8(a5)
    800040d0:	000780e7          	jalr	a5
    800040d4:	fe1ff06f          	j	800040b4 <_Z20Threads_CPP_API_testv+0x164>
    800040d8:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    800040dc:	00048513          	mv	a0,s1
    800040e0:	ffffe097          	auipc	ra,0xffffe
    800040e4:	eb8080e7          	jalr	-328(ra) # 80001f98 <_ZdlPv>
    800040e8:	00090513          	mv	a0,s2
    800040ec:	00009097          	auipc	ra,0x9
    800040f0:	e7c080e7          	jalr	-388(ra) # 8000cf68 <_Unwind_Resume>
    800040f4:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    800040f8:	00048513          	mv	a0,s1
    800040fc:	ffffe097          	auipc	ra,0xffffe
    80004100:	e9c080e7          	jalr	-356(ra) # 80001f98 <_ZdlPv>
    80004104:	00090513          	mv	a0,s2
    80004108:	00009097          	auipc	ra,0x9
    8000410c:	e60080e7          	jalr	-416(ra) # 8000cf68 <_Unwind_Resume>
    80004110:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80004114:	00048513          	mv	a0,s1
    80004118:	ffffe097          	auipc	ra,0xffffe
    8000411c:	e80080e7          	jalr	-384(ra) # 80001f98 <_ZdlPv>
    80004120:	00090513          	mv	a0,s2
    80004124:	00009097          	auipc	ra,0x9
    80004128:	e44080e7          	jalr	-444(ra) # 8000cf68 <_Unwind_Resume>
    8000412c:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80004130:	00048513          	mv	a0,s1
    80004134:	ffffe097          	auipc	ra,0xffffe
    80004138:	e64080e7          	jalr	-412(ra) # 80001f98 <_ZdlPv>
    8000413c:	00090513          	mv	a0,s2
    80004140:	00009097          	auipc	ra,0x9
    80004144:	e28080e7          	jalr	-472(ra) # 8000cf68 <_Unwind_Resume>
}
    80004148:	03813083          	ld	ra,56(sp)
    8000414c:	03013403          	ld	s0,48(sp)
    80004150:	02813483          	ld	s1,40(sp)
    80004154:	02013903          	ld	s2,32(sp)
    80004158:	04010113          	addi	sp,sp,64
    8000415c:	00008067          	ret

0000000080004160 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80004160:	ff010113          	addi	sp,sp,-16
    80004164:	00113423          	sd	ra,8(sp)
    80004168:	00813023          	sd	s0,0(sp)
    8000416c:	01010413          	addi	s0,sp,16
    80004170:	00008797          	auipc	a5,0x8
    80004174:	a2078793          	addi	a5,a5,-1504 # 8000bb90 <_ZTV7WorkerA+0x10>
    80004178:	00f53023          	sd	a5,0(a0)
    8000417c:	ffffe097          	auipc	ra,0xffffe
    80004180:	d5c080e7          	jalr	-676(ra) # 80001ed8 <_ZN6ThreadD1Ev>
    80004184:	00813083          	ld	ra,8(sp)
    80004188:	00013403          	ld	s0,0(sp)
    8000418c:	01010113          	addi	sp,sp,16
    80004190:	00008067          	ret

0000000080004194 <_ZN7WorkerAD0Ev>:
    80004194:	fe010113          	addi	sp,sp,-32
    80004198:	00113c23          	sd	ra,24(sp)
    8000419c:	00813823          	sd	s0,16(sp)
    800041a0:	00913423          	sd	s1,8(sp)
    800041a4:	02010413          	addi	s0,sp,32
    800041a8:	00050493          	mv	s1,a0
    800041ac:	00008797          	auipc	a5,0x8
    800041b0:	9e478793          	addi	a5,a5,-1564 # 8000bb90 <_ZTV7WorkerA+0x10>
    800041b4:	00f53023          	sd	a5,0(a0)
    800041b8:	ffffe097          	auipc	ra,0xffffe
    800041bc:	d20080e7          	jalr	-736(ra) # 80001ed8 <_ZN6ThreadD1Ev>
    800041c0:	00048513          	mv	a0,s1
    800041c4:	ffffe097          	auipc	ra,0xffffe
    800041c8:	dd4080e7          	jalr	-556(ra) # 80001f98 <_ZdlPv>
    800041cc:	01813083          	ld	ra,24(sp)
    800041d0:	01013403          	ld	s0,16(sp)
    800041d4:	00813483          	ld	s1,8(sp)
    800041d8:	02010113          	addi	sp,sp,32
    800041dc:	00008067          	ret

00000000800041e0 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800041e0:	ff010113          	addi	sp,sp,-16
    800041e4:	00113423          	sd	ra,8(sp)
    800041e8:	00813023          	sd	s0,0(sp)
    800041ec:	01010413          	addi	s0,sp,16
    800041f0:	00008797          	auipc	a5,0x8
    800041f4:	9c878793          	addi	a5,a5,-1592 # 8000bbb8 <_ZTV7WorkerB+0x10>
    800041f8:	00f53023          	sd	a5,0(a0)
    800041fc:	ffffe097          	auipc	ra,0xffffe
    80004200:	cdc080e7          	jalr	-804(ra) # 80001ed8 <_ZN6ThreadD1Ev>
    80004204:	00813083          	ld	ra,8(sp)
    80004208:	00013403          	ld	s0,0(sp)
    8000420c:	01010113          	addi	sp,sp,16
    80004210:	00008067          	ret

0000000080004214 <_ZN7WorkerBD0Ev>:
    80004214:	fe010113          	addi	sp,sp,-32
    80004218:	00113c23          	sd	ra,24(sp)
    8000421c:	00813823          	sd	s0,16(sp)
    80004220:	00913423          	sd	s1,8(sp)
    80004224:	02010413          	addi	s0,sp,32
    80004228:	00050493          	mv	s1,a0
    8000422c:	00008797          	auipc	a5,0x8
    80004230:	98c78793          	addi	a5,a5,-1652 # 8000bbb8 <_ZTV7WorkerB+0x10>
    80004234:	00f53023          	sd	a5,0(a0)
    80004238:	ffffe097          	auipc	ra,0xffffe
    8000423c:	ca0080e7          	jalr	-864(ra) # 80001ed8 <_ZN6ThreadD1Ev>
    80004240:	00048513          	mv	a0,s1
    80004244:	ffffe097          	auipc	ra,0xffffe
    80004248:	d54080e7          	jalr	-684(ra) # 80001f98 <_ZdlPv>
    8000424c:	01813083          	ld	ra,24(sp)
    80004250:	01013403          	ld	s0,16(sp)
    80004254:	00813483          	ld	s1,8(sp)
    80004258:	02010113          	addi	sp,sp,32
    8000425c:	00008067          	ret

0000000080004260 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80004260:	ff010113          	addi	sp,sp,-16
    80004264:	00113423          	sd	ra,8(sp)
    80004268:	00813023          	sd	s0,0(sp)
    8000426c:	01010413          	addi	s0,sp,16
    80004270:	00008797          	auipc	a5,0x8
    80004274:	97078793          	addi	a5,a5,-1680 # 8000bbe0 <_ZTV7WorkerC+0x10>
    80004278:	00f53023          	sd	a5,0(a0)
    8000427c:	ffffe097          	auipc	ra,0xffffe
    80004280:	c5c080e7          	jalr	-932(ra) # 80001ed8 <_ZN6ThreadD1Ev>
    80004284:	00813083          	ld	ra,8(sp)
    80004288:	00013403          	ld	s0,0(sp)
    8000428c:	01010113          	addi	sp,sp,16
    80004290:	00008067          	ret

0000000080004294 <_ZN7WorkerCD0Ev>:
    80004294:	fe010113          	addi	sp,sp,-32
    80004298:	00113c23          	sd	ra,24(sp)
    8000429c:	00813823          	sd	s0,16(sp)
    800042a0:	00913423          	sd	s1,8(sp)
    800042a4:	02010413          	addi	s0,sp,32
    800042a8:	00050493          	mv	s1,a0
    800042ac:	00008797          	auipc	a5,0x8
    800042b0:	93478793          	addi	a5,a5,-1740 # 8000bbe0 <_ZTV7WorkerC+0x10>
    800042b4:	00f53023          	sd	a5,0(a0)
    800042b8:	ffffe097          	auipc	ra,0xffffe
    800042bc:	c20080e7          	jalr	-992(ra) # 80001ed8 <_ZN6ThreadD1Ev>
    800042c0:	00048513          	mv	a0,s1
    800042c4:	ffffe097          	auipc	ra,0xffffe
    800042c8:	cd4080e7          	jalr	-812(ra) # 80001f98 <_ZdlPv>
    800042cc:	01813083          	ld	ra,24(sp)
    800042d0:	01013403          	ld	s0,16(sp)
    800042d4:	00813483          	ld	s1,8(sp)
    800042d8:	02010113          	addi	sp,sp,32
    800042dc:	00008067          	ret

00000000800042e0 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800042e0:	ff010113          	addi	sp,sp,-16
    800042e4:	00113423          	sd	ra,8(sp)
    800042e8:	00813023          	sd	s0,0(sp)
    800042ec:	01010413          	addi	s0,sp,16
    800042f0:	00008797          	auipc	a5,0x8
    800042f4:	91878793          	addi	a5,a5,-1768 # 8000bc08 <_ZTV7WorkerD+0x10>
    800042f8:	00f53023          	sd	a5,0(a0)
    800042fc:	ffffe097          	auipc	ra,0xffffe
    80004300:	bdc080e7          	jalr	-1060(ra) # 80001ed8 <_ZN6ThreadD1Ev>
    80004304:	00813083          	ld	ra,8(sp)
    80004308:	00013403          	ld	s0,0(sp)
    8000430c:	01010113          	addi	sp,sp,16
    80004310:	00008067          	ret

0000000080004314 <_ZN7WorkerDD0Ev>:
    80004314:	fe010113          	addi	sp,sp,-32
    80004318:	00113c23          	sd	ra,24(sp)
    8000431c:	00813823          	sd	s0,16(sp)
    80004320:	00913423          	sd	s1,8(sp)
    80004324:	02010413          	addi	s0,sp,32
    80004328:	00050493          	mv	s1,a0
    8000432c:	00008797          	auipc	a5,0x8
    80004330:	8dc78793          	addi	a5,a5,-1828 # 8000bc08 <_ZTV7WorkerD+0x10>
    80004334:	00f53023          	sd	a5,0(a0)
    80004338:	ffffe097          	auipc	ra,0xffffe
    8000433c:	ba0080e7          	jalr	-1120(ra) # 80001ed8 <_ZN6ThreadD1Ev>
    80004340:	00048513          	mv	a0,s1
    80004344:	ffffe097          	auipc	ra,0xffffe
    80004348:	c54080e7          	jalr	-940(ra) # 80001f98 <_ZdlPv>
    8000434c:	01813083          	ld	ra,24(sp)
    80004350:	01013403          	ld	s0,16(sp)
    80004354:	00813483          	ld	s1,8(sp)
    80004358:	02010113          	addi	sp,sp,32
    8000435c:	00008067          	ret

0000000080004360 <_ZN7WorkerA3runEv>:
    void run() override {
    80004360:	ff010113          	addi	sp,sp,-16
    80004364:	00113423          	sd	ra,8(sp)
    80004368:	00813023          	sd	s0,0(sp)
    8000436c:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80004370:	00000593          	li	a1,0
    80004374:	fffff097          	auipc	ra,0xfffff
    80004378:	774080e7          	jalr	1908(ra) # 80003ae8 <_ZN7WorkerA11workerBodyAEPv>
    }
    8000437c:	00813083          	ld	ra,8(sp)
    80004380:	00013403          	ld	s0,0(sp)
    80004384:	01010113          	addi	sp,sp,16
    80004388:	00008067          	ret

000000008000438c <_ZN7WorkerB3runEv>:
    void run() override {
    8000438c:	ff010113          	addi	sp,sp,-16
    80004390:	00113423          	sd	ra,8(sp)
    80004394:	00813023          	sd	s0,0(sp)
    80004398:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    8000439c:	00000593          	li	a1,0
    800043a0:	00000097          	auipc	ra,0x0
    800043a4:	814080e7          	jalr	-2028(ra) # 80003bb4 <_ZN7WorkerB11workerBodyBEPv>
    }
    800043a8:	00813083          	ld	ra,8(sp)
    800043ac:	00013403          	ld	s0,0(sp)
    800043b0:	01010113          	addi	sp,sp,16
    800043b4:	00008067          	ret

00000000800043b8 <_ZN7WorkerC3runEv>:
    void run() override {
    800043b8:	ff010113          	addi	sp,sp,-16
    800043bc:	00113423          	sd	ra,8(sp)
    800043c0:	00813023          	sd	s0,0(sp)
    800043c4:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800043c8:	00000593          	li	a1,0
    800043cc:	00000097          	auipc	ra,0x0
    800043d0:	8bc080e7          	jalr	-1860(ra) # 80003c88 <_ZN7WorkerC11workerBodyCEPv>
    }
    800043d4:	00813083          	ld	ra,8(sp)
    800043d8:	00013403          	ld	s0,0(sp)
    800043dc:	01010113          	addi	sp,sp,16
    800043e0:	00008067          	ret

00000000800043e4 <_ZN7WorkerD3runEv>:
    void run() override {
    800043e4:	ff010113          	addi	sp,sp,-16
    800043e8:	00113423          	sd	ra,8(sp)
    800043ec:	00813023          	sd	s0,0(sp)
    800043f0:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800043f4:	00000593          	li	a1,0
    800043f8:	00000097          	auipc	ra,0x0
    800043fc:	a10080e7          	jalr	-1520(ra) # 80003e08 <_ZN7WorkerD11workerBodyDEPv>
    }
    80004400:	00813083          	ld	ra,8(sp)
    80004404:	00013403          	ld	s0,0(sp)
    80004408:	01010113          	addi	sp,sp,16
    8000440c:	00008067          	ret

0000000080004410 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80004410:	f8010113          	addi	sp,sp,-128
    80004414:	06113c23          	sd	ra,120(sp)
    80004418:	06813823          	sd	s0,112(sp)
    8000441c:	06913423          	sd	s1,104(sp)
    80004420:	07213023          	sd	s2,96(sp)
    80004424:	05313c23          	sd	s3,88(sp)
    80004428:	05413823          	sd	s4,80(sp)
    8000442c:	05513423          	sd	s5,72(sp)
    80004430:	05613023          	sd	s6,64(sp)
    80004434:	03713c23          	sd	s7,56(sp)
    80004438:	03813823          	sd	s8,48(sp)
    8000443c:	03913423          	sd	s9,40(sp)
    80004440:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80004444:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80004448:	00005517          	auipc	a0,0x5
    8000444c:	cf850513          	addi	a0,a0,-776 # 80009140 <CONSOLE_STATUS+0x130>
    80004450:	00002097          	auipc	ra,0x2
    80004454:	8d8080e7          	jalr	-1832(ra) # 80005d28 <_Z11printStringPKc>
    getString(input, 30);
    80004458:	01e00593          	li	a1,30
    8000445c:	f8040493          	addi	s1,s0,-128
    80004460:	00048513          	mv	a0,s1
    80004464:	00002097          	auipc	ra,0x2
    80004468:	94c080e7          	jalr	-1716(ra) # 80005db0 <_Z9getStringPci>
    threadNum = stringToInt(input);
    8000446c:	00048513          	mv	a0,s1
    80004470:	00002097          	auipc	ra,0x2
    80004474:	a18080e7          	jalr	-1512(ra) # 80005e88 <_Z11stringToIntPKc>
    80004478:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    8000447c:	00005517          	auipc	a0,0x5
    80004480:	ce450513          	addi	a0,a0,-796 # 80009160 <CONSOLE_STATUS+0x150>
    80004484:	00002097          	auipc	ra,0x2
    80004488:	8a4080e7          	jalr	-1884(ra) # 80005d28 <_Z11printStringPKc>
    getString(input, 30);
    8000448c:	01e00593          	li	a1,30
    80004490:	00048513          	mv	a0,s1
    80004494:	00002097          	auipc	ra,0x2
    80004498:	91c080e7          	jalr	-1764(ra) # 80005db0 <_Z9getStringPci>
    n = stringToInt(input);
    8000449c:	00048513          	mv	a0,s1
    800044a0:	00002097          	auipc	ra,0x2
    800044a4:	9e8080e7          	jalr	-1560(ra) # 80005e88 <_Z11stringToIntPKc>
    800044a8:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    800044ac:	00005517          	auipc	a0,0x5
    800044b0:	cd450513          	addi	a0,a0,-812 # 80009180 <CONSOLE_STATUS+0x170>
    800044b4:	00002097          	auipc	ra,0x2
    800044b8:	874080e7          	jalr	-1932(ra) # 80005d28 <_Z11printStringPKc>
    printInt(threadNum);
    800044bc:	00000613          	li	a2,0
    800044c0:	00a00593          	li	a1,10
    800044c4:	00098513          	mv	a0,s3
    800044c8:	00002097          	auipc	ra,0x2
    800044cc:	a10080e7          	jalr	-1520(ra) # 80005ed8 <_Z8printIntiii>
    printString(" i velicina bafera ");
    800044d0:	00005517          	auipc	a0,0x5
    800044d4:	cc850513          	addi	a0,a0,-824 # 80009198 <CONSOLE_STATUS+0x188>
    800044d8:	00002097          	auipc	ra,0x2
    800044dc:	850080e7          	jalr	-1968(ra) # 80005d28 <_Z11printStringPKc>
    printInt(n);
    800044e0:	00000613          	li	a2,0
    800044e4:	00a00593          	li	a1,10
    800044e8:	00048513          	mv	a0,s1
    800044ec:	00002097          	auipc	ra,0x2
    800044f0:	9ec080e7          	jalr	-1556(ra) # 80005ed8 <_Z8printIntiii>
    printString(".\n");
    800044f4:	00005517          	auipc	a0,0x5
    800044f8:	cbc50513          	addi	a0,a0,-836 # 800091b0 <CONSOLE_STATUS+0x1a0>
    800044fc:	00002097          	auipc	ra,0x2
    80004500:	82c080e7          	jalr	-2004(ra) # 80005d28 <_Z11printStringPKc>
    if (threadNum > n) {
    80004504:	0334c463          	blt	s1,s3,8000452c <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80004508:	03305c63          	blez	s3,80004540 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    8000450c:	03800513          	li	a0,56
    80004510:	ffffe097          	auipc	ra,0xffffe
    80004514:	a60080e7          	jalr	-1440(ra) # 80001f70 <_Znwm>
    80004518:	00050a93          	mv	s5,a0
    8000451c:	00048593          	mv	a1,s1
    80004520:	00002097          	auipc	ra,0x2
    80004524:	ad8080e7          	jalr	-1320(ra) # 80005ff8 <_ZN9BufferCPPC1Ei>
    80004528:	0300006f          	j	80004558 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    8000452c:	00005517          	auipc	a0,0x5
    80004530:	c8c50513          	addi	a0,a0,-884 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80004534:	00001097          	auipc	ra,0x1
    80004538:	7f4080e7          	jalr	2036(ra) # 80005d28 <_Z11printStringPKc>
        return;
    8000453c:	0140006f          	j	80004550 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004540:	00005517          	auipc	a0,0x5
    80004544:	cb850513          	addi	a0,a0,-840 # 800091f8 <CONSOLE_STATUS+0x1e8>
    80004548:	00001097          	auipc	ra,0x1
    8000454c:	7e0080e7          	jalr	2016(ra) # 80005d28 <_Z11printStringPKc>
        return;
    80004550:	000c0113          	mv	sp,s8
    80004554:	2140006f          	j	80004768 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80004558:	01000513          	li	a0,16
    8000455c:	ffffe097          	auipc	ra,0xffffe
    80004560:	a14080e7          	jalr	-1516(ra) # 80001f70 <_Znwm>
    80004564:	00050913          	mv	s2,a0
    80004568:	00000593          	li	a1,0
    8000456c:	ffffe097          	auipc	ra,0xffffe
    80004570:	bbc080e7          	jalr	-1092(ra) # 80002128 <_ZN9SemaphoreC1Ej>
    80004574:	00008797          	auipc	a5,0x8
    80004578:	8d27be23          	sd	s2,-1828(a5) # 8000be50 <_ZL10waitForAll>
    Thread *producers[threadNum];
    8000457c:	00399793          	slli	a5,s3,0x3
    80004580:	00f78793          	addi	a5,a5,15
    80004584:	ff07f793          	andi	a5,a5,-16
    80004588:	40f10133          	sub	sp,sp,a5
    8000458c:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80004590:	0019871b          	addiw	a4,s3,1
    80004594:	00171793          	slli	a5,a4,0x1
    80004598:	00e787b3          	add	a5,a5,a4
    8000459c:	00379793          	slli	a5,a5,0x3
    800045a0:	00f78793          	addi	a5,a5,15
    800045a4:	ff07f793          	andi	a5,a5,-16
    800045a8:	40f10133          	sub	sp,sp,a5
    800045ac:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    800045b0:	00199493          	slli	s1,s3,0x1
    800045b4:	013484b3          	add	s1,s1,s3
    800045b8:	00349493          	slli	s1,s1,0x3
    800045bc:	009b04b3          	add	s1,s6,s1
    800045c0:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    800045c4:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    800045c8:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800045cc:	02800513          	li	a0,40
    800045d0:	ffffe097          	auipc	ra,0xffffe
    800045d4:	9a0080e7          	jalr	-1632(ra) # 80001f70 <_Znwm>
    800045d8:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    800045dc:	ffffe097          	auipc	ra,0xffffe
    800045e0:	a94080e7          	jalr	-1388(ra) # 80002070 <_ZN6ThreadC1Ev>
    800045e4:	00007797          	auipc	a5,0x7
    800045e8:	69c78793          	addi	a5,a5,1692 # 8000bc80 <_ZTV8Consumer+0x10>
    800045ec:	00fbb023          	sd	a5,0(s7)
    800045f0:	029bb023          	sd	s1,32(s7)
    consumer->start();
    800045f4:	000b8513          	mv	a0,s7
    800045f8:	ffffe097          	auipc	ra,0xffffe
    800045fc:	aa8080e7          	jalr	-1368(ra) # 800020a0 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80004600:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80004604:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80004608:	00008797          	auipc	a5,0x8
    8000460c:	8487b783          	ld	a5,-1976(a5) # 8000be50 <_ZL10waitForAll>
    80004610:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004614:	02800513          	li	a0,40
    80004618:	ffffe097          	auipc	ra,0xffffe
    8000461c:	958080e7          	jalr	-1704(ra) # 80001f70 <_Znwm>
    80004620:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80004624:	ffffe097          	auipc	ra,0xffffe
    80004628:	a4c080e7          	jalr	-1460(ra) # 80002070 <_ZN6ThreadC1Ev>
    8000462c:	00007797          	auipc	a5,0x7
    80004630:	60478793          	addi	a5,a5,1540 # 8000bc30 <_ZTV16ProducerKeyborad+0x10>
    80004634:	00f4b023          	sd	a5,0(s1)
    80004638:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    8000463c:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80004640:	00048513          	mv	a0,s1
    80004644:	ffffe097          	auipc	ra,0xffffe
    80004648:	a5c080e7          	jalr	-1444(ra) # 800020a0 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    8000464c:	00100913          	li	s2,1
    80004650:	0300006f          	j	80004680 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004654:	00007797          	auipc	a5,0x7
    80004658:	60478793          	addi	a5,a5,1540 # 8000bc58 <_ZTV8Producer+0x10>
    8000465c:	00fcb023          	sd	a5,0(s9)
    80004660:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80004664:	00391793          	slli	a5,s2,0x3
    80004668:	00fa07b3          	add	a5,s4,a5
    8000466c:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80004670:	000c8513          	mv	a0,s9
    80004674:	ffffe097          	auipc	ra,0xffffe
    80004678:	a2c080e7          	jalr	-1492(ra) # 800020a0 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    8000467c:	0019091b          	addiw	s2,s2,1
    80004680:	05395263          	bge	s2,s3,800046c4 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80004684:	00191493          	slli	s1,s2,0x1
    80004688:	012484b3          	add	s1,s1,s2
    8000468c:	00349493          	slli	s1,s1,0x3
    80004690:	009b04b3          	add	s1,s6,s1
    80004694:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80004698:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    8000469c:	00007797          	auipc	a5,0x7
    800046a0:	7b47b783          	ld	a5,1972(a5) # 8000be50 <_ZL10waitForAll>
    800046a4:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    800046a8:	02800513          	li	a0,40
    800046ac:	ffffe097          	auipc	ra,0xffffe
    800046b0:	8c4080e7          	jalr	-1852(ra) # 80001f70 <_Znwm>
    800046b4:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800046b8:	ffffe097          	auipc	ra,0xffffe
    800046bc:	9b8080e7          	jalr	-1608(ra) # 80002070 <_ZN6ThreadC1Ev>
    800046c0:	f95ff06f          	j	80004654 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    800046c4:	ffffe097          	auipc	ra,0xffffe
    800046c8:	a14080e7          	jalr	-1516(ra) # 800020d8 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800046cc:	00000493          	li	s1,0
    800046d0:	0099ce63          	blt	s3,s1,800046ec <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    800046d4:	00007517          	auipc	a0,0x7
    800046d8:	77c53503          	ld	a0,1916(a0) # 8000be50 <_ZL10waitForAll>
    800046dc:	ffffe097          	auipc	ra,0xffffe
    800046e0:	a88080e7          	jalr	-1400(ra) # 80002164 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800046e4:	0014849b          	addiw	s1,s1,1
    800046e8:	fe9ff06f          	j	800046d0 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    800046ec:	00007517          	auipc	a0,0x7
    800046f0:	76453503          	ld	a0,1892(a0) # 8000be50 <_ZL10waitForAll>
    800046f4:	00050863          	beqz	a0,80004704 <_Z20testConsumerProducerv+0x2f4>
    800046f8:	00053783          	ld	a5,0(a0)
    800046fc:	0087b783          	ld	a5,8(a5)
    80004700:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80004704:	00000493          	li	s1,0
    80004708:	0080006f          	j	80004710 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    8000470c:	0014849b          	addiw	s1,s1,1
    80004710:	0334d263          	bge	s1,s3,80004734 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80004714:	00349793          	slli	a5,s1,0x3
    80004718:	00fa07b3          	add	a5,s4,a5
    8000471c:	0007b503          	ld	a0,0(a5)
    80004720:	fe0506e3          	beqz	a0,8000470c <_Z20testConsumerProducerv+0x2fc>
    80004724:	00053783          	ld	a5,0(a0)
    80004728:	0087b783          	ld	a5,8(a5)
    8000472c:	000780e7          	jalr	a5
    80004730:	fddff06f          	j	8000470c <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80004734:	000b8a63          	beqz	s7,80004748 <_Z20testConsumerProducerv+0x338>
    80004738:	000bb783          	ld	a5,0(s7)
    8000473c:	0087b783          	ld	a5,8(a5)
    80004740:	000b8513          	mv	a0,s7
    80004744:	000780e7          	jalr	a5
    delete buffer;
    80004748:	000a8e63          	beqz	s5,80004764 <_Z20testConsumerProducerv+0x354>
    8000474c:	000a8513          	mv	a0,s5
    80004750:	00002097          	auipc	ra,0x2
    80004754:	ba0080e7          	jalr	-1120(ra) # 800062f0 <_ZN9BufferCPPD1Ev>
    80004758:	000a8513          	mv	a0,s5
    8000475c:	ffffe097          	auipc	ra,0xffffe
    80004760:	83c080e7          	jalr	-1988(ra) # 80001f98 <_ZdlPv>
    80004764:	000c0113          	mv	sp,s8
}
    80004768:	f8040113          	addi	sp,s0,-128
    8000476c:	07813083          	ld	ra,120(sp)
    80004770:	07013403          	ld	s0,112(sp)
    80004774:	06813483          	ld	s1,104(sp)
    80004778:	06013903          	ld	s2,96(sp)
    8000477c:	05813983          	ld	s3,88(sp)
    80004780:	05013a03          	ld	s4,80(sp)
    80004784:	04813a83          	ld	s5,72(sp)
    80004788:	04013b03          	ld	s6,64(sp)
    8000478c:	03813b83          	ld	s7,56(sp)
    80004790:	03013c03          	ld	s8,48(sp)
    80004794:	02813c83          	ld	s9,40(sp)
    80004798:	08010113          	addi	sp,sp,128
    8000479c:	00008067          	ret
    800047a0:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800047a4:	000a8513          	mv	a0,s5
    800047a8:	ffffd097          	auipc	ra,0xffffd
    800047ac:	7f0080e7          	jalr	2032(ra) # 80001f98 <_ZdlPv>
    800047b0:	00048513          	mv	a0,s1
    800047b4:	00008097          	auipc	ra,0x8
    800047b8:	7b4080e7          	jalr	1972(ra) # 8000cf68 <_Unwind_Resume>
    800047bc:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    800047c0:	00090513          	mv	a0,s2
    800047c4:	ffffd097          	auipc	ra,0xffffd
    800047c8:	7d4080e7          	jalr	2004(ra) # 80001f98 <_ZdlPv>
    800047cc:	00048513          	mv	a0,s1
    800047d0:	00008097          	auipc	ra,0x8
    800047d4:	798080e7          	jalr	1944(ra) # 8000cf68 <_Unwind_Resume>
    800047d8:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800047dc:	000b8513          	mv	a0,s7
    800047e0:	ffffd097          	auipc	ra,0xffffd
    800047e4:	7b8080e7          	jalr	1976(ra) # 80001f98 <_ZdlPv>
    800047e8:	00048513          	mv	a0,s1
    800047ec:	00008097          	auipc	ra,0x8
    800047f0:	77c080e7          	jalr	1916(ra) # 8000cf68 <_Unwind_Resume>
    800047f4:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800047f8:	00048513          	mv	a0,s1
    800047fc:	ffffd097          	auipc	ra,0xffffd
    80004800:	79c080e7          	jalr	1948(ra) # 80001f98 <_ZdlPv>
    80004804:	00090513          	mv	a0,s2
    80004808:	00008097          	auipc	ra,0x8
    8000480c:	760080e7          	jalr	1888(ra) # 8000cf68 <_Unwind_Resume>
    80004810:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80004814:	000c8513          	mv	a0,s9
    80004818:	ffffd097          	auipc	ra,0xffffd
    8000481c:	780080e7          	jalr	1920(ra) # 80001f98 <_ZdlPv>
    80004820:	00048513          	mv	a0,s1
    80004824:	00008097          	auipc	ra,0x8
    80004828:	744080e7          	jalr	1860(ra) # 8000cf68 <_Unwind_Resume>

000000008000482c <_ZN8Consumer3runEv>:
    void run() override {
    8000482c:	fd010113          	addi	sp,sp,-48
    80004830:	02113423          	sd	ra,40(sp)
    80004834:	02813023          	sd	s0,32(sp)
    80004838:	00913c23          	sd	s1,24(sp)
    8000483c:	01213823          	sd	s2,16(sp)
    80004840:	01313423          	sd	s3,8(sp)
    80004844:	03010413          	addi	s0,sp,48
    80004848:	00050913          	mv	s2,a0
        int i = 0;
    8000484c:	00000993          	li	s3,0
    80004850:	0100006f          	j	80004860 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80004854:	00a00513          	li	a0,10
    80004858:	ffffe097          	auipc	ra,0xffffe
    8000485c:	a64080e7          	jalr	-1436(ra) # 800022bc <_ZN7Console4putcEc>
        while (!threadEnd) {
    80004860:	00007797          	auipc	a5,0x7
    80004864:	5e87a783          	lw	a5,1512(a5) # 8000be48 <_ZL9threadEnd>
    80004868:	04079a63          	bnez	a5,800048bc <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    8000486c:	02093783          	ld	a5,32(s2)
    80004870:	0087b503          	ld	a0,8(a5)
    80004874:	00002097          	auipc	ra,0x2
    80004878:	968080e7          	jalr	-1688(ra) # 800061dc <_ZN9BufferCPP3getEv>
            i++;
    8000487c:	0019849b          	addiw	s1,s3,1
    80004880:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80004884:	0ff57513          	andi	a0,a0,255
    80004888:	ffffe097          	auipc	ra,0xffffe
    8000488c:	a34080e7          	jalr	-1484(ra) # 800022bc <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80004890:	05000793          	li	a5,80
    80004894:	02f4e4bb          	remw	s1,s1,a5
    80004898:	fc0494e3          	bnez	s1,80004860 <_ZN8Consumer3runEv+0x34>
    8000489c:	fb9ff06f          	j	80004854 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    800048a0:	02093783          	ld	a5,32(s2)
    800048a4:	0087b503          	ld	a0,8(a5)
    800048a8:	00002097          	auipc	ra,0x2
    800048ac:	934080e7          	jalr	-1740(ra) # 800061dc <_ZN9BufferCPP3getEv>
            Console::putc(key);
    800048b0:	0ff57513          	andi	a0,a0,255
    800048b4:	ffffe097          	auipc	ra,0xffffe
    800048b8:	a08080e7          	jalr	-1528(ra) # 800022bc <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    800048bc:	02093783          	ld	a5,32(s2)
    800048c0:	0087b503          	ld	a0,8(a5)
    800048c4:	00002097          	auipc	ra,0x2
    800048c8:	9a4080e7          	jalr	-1628(ra) # 80006268 <_ZN9BufferCPP6getCntEv>
    800048cc:	fca04ae3          	bgtz	a0,800048a0 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    800048d0:	02093783          	ld	a5,32(s2)
    800048d4:	0107b503          	ld	a0,16(a5)
    800048d8:	ffffe097          	auipc	ra,0xffffe
    800048dc:	8c4080e7          	jalr	-1852(ra) # 8000219c <_ZN9Semaphore6signalEv>
    }
    800048e0:	02813083          	ld	ra,40(sp)
    800048e4:	02013403          	ld	s0,32(sp)
    800048e8:	01813483          	ld	s1,24(sp)
    800048ec:	01013903          	ld	s2,16(sp)
    800048f0:	00813983          	ld	s3,8(sp)
    800048f4:	03010113          	addi	sp,sp,48
    800048f8:	00008067          	ret

00000000800048fc <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    800048fc:	ff010113          	addi	sp,sp,-16
    80004900:	00113423          	sd	ra,8(sp)
    80004904:	00813023          	sd	s0,0(sp)
    80004908:	01010413          	addi	s0,sp,16
    8000490c:	00007797          	auipc	a5,0x7
    80004910:	37478793          	addi	a5,a5,884 # 8000bc80 <_ZTV8Consumer+0x10>
    80004914:	00f53023          	sd	a5,0(a0)
    80004918:	ffffd097          	auipc	ra,0xffffd
    8000491c:	5c0080e7          	jalr	1472(ra) # 80001ed8 <_ZN6ThreadD1Ev>
    80004920:	00813083          	ld	ra,8(sp)
    80004924:	00013403          	ld	s0,0(sp)
    80004928:	01010113          	addi	sp,sp,16
    8000492c:	00008067          	ret

0000000080004930 <_ZN8ConsumerD0Ev>:
    80004930:	fe010113          	addi	sp,sp,-32
    80004934:	00113c23          	sd	ra,24(sp)
    80004938:	00813823          	sd	s0,16(sp)
    8000493c:	00913423          	sd	s1,8(sp)
    80004940:	02010413          	addi	s0,sp,32
    80004944:	00050493          	mv	s1,a0
    80004948:	00007797          	auipc	a5,0x7
    8000494c:	33878793          	addi	a5,a5,824 # 8000bc80 <_ZTV8Consumer+0x10>
    80004950:	00f53023          	sd	a5,0(a0)
    80004954:	ffffd097          	auipc	ra,0xffffd
    80004958:	584080e7          	jalr	1412(ra) # 80001ed8 <_ZN6ThreadD1Ev>
    8000495c:	00048513          	mv	a0,s1
    80004960:	ffffd097          	auipc	ra,0xffffd
    80004964:	638080e7          	jalr	1592(ra) # 80001f98 <_ZdlPv>
    80004968:	01813083          	ld	ra,24(sp)
    8000496c:	01013403          	ld	s0,16(sp)
    80004970:	00813483          	ld	s1,8(sp)
    80004974:	02010113          	addi	sp,sp,32
    80004978:	00008067          	ret

000000008000497c <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    8000497c:	ff010113          	addi	sp,sp,-16
    80004980:	00113423          	sd	ra,8(sp)
    80004984:	00813023          	sd	s0,0(sp)
    80004988:	01010413          	addi	s0,sp,16
    8000498c:	00007797          	auipc	a5,0x7
    80004990:	2a478793          	addi	a5,a5,676 # 8000bc30 <_ZTV16ProducerKeyborad+0x10>
    80004994:	00f53023          	sd	a5,0(a0)
    80004998:	ffffd097          	auipc	ra,0xffffd
    8000499c:	540080e7          	jalr	1344(ra) # 80001ed8 <_ZN6ThreadD1Ev>
    800049a0:	00813083          	ld	ra,8(sp)
    800049a4:	00013403          	ld	s0,0(sp)
    800049a8:	01010113          	addi	sp,sp,16
    800049ac:	00008067          	ret

00000000800049b0 <_ZN16ProducerKeyboradD0Ev>:
    800049b0:	fe010113          	addi	sp,sp,-32
    800049b4:	00113c23          	sd	ra,24(sp)
    800049b8:	00813823          	sd	s0,16(sp)
    800049bc:	00913423          	sd	s1,8(sp)
    800049c0:	02010413          	addi	s0,sp,32
    800049c4:	00050493          	mv	s1,a0
    800049c8:	00007797          	auipc	a5,0x7
    800049cc:	26878793          	addi	a5,a5,616 # 8000bc30 <_ZTV16ProducerKeyborad+0x10>
    800049d0:	00f53023          	sd	a5,0(a0)
    800049d4:	ffffd097          	auipc	ra,0xffffd
    800049d8:	504080e7          	jalr	1284(ra) # 80001ed8 <_ZN6ThreadD1Ev>
    800049dc:	00048513          	mv	a0,s1
    800049e0:	ffffd097          	auipc	ra,0xffffd
    800049e4:	5b8080e7          	jalr	1464(ra) # 80001f98 <_ZdlPv>
    800049e8:	01813083          	ld	ra,24(sp)
    800049ec:	01013403          	ld	s0,16(sp)
    800049f0:	00813483          	ld	s1,8(sp)
    800049f4:	02010113          	addi	sp,sp,32
    800049f8:	00008067          	ret

00000000800049fc <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    800049fc:	ff010113          	addi	sp,sp,-16
    80004a00:	00113423          	sd	ra,8(sp)
    80004a04:	00813023          	sd	s0,0(sp)
    80004a08:	01010413          	addi	s0,sp,16
    80004a0c:	00007797          	auipc	a5,0x7
    80004a10:	24c78793          	addi	a5,a5,588 # 8000bc58 <_ZTV8Producer+0x10>
    80004a14:	00f53023          	sd	a5,0(a0)
    80004a18:	ffffd097          	auipc	ra,0xffffd
    80004a1c:	4c0080e7          	jalr	1216(ra) # 80001ed8 <_ZN6ThreadD1Ev>
    80004a20:	00813083          	ld	ra,8(sp)
    80004a24:	00013403          	ld	s0,0(sp)
    80004a28:	01010113          	addi	sp,sp,16
    80004a2c:	00008067          	ret

0000000080004a30 <_ZN8ProducerD0Ev>:
    80004a30:	fe010113          	addi	sp,sp,-32
    80004a34:	00113c23          	sd	ra,24(sp)
    80004a38:	00813823          	sd	s0,16(sp)
    80004a3c:	00913423          	sd	s1,8(sp)
    80004a40:	02010413          	addi	s0,sp,32
    80004a44:	00050493          	mv	s1,a0
    80004a48:	00007797          	auipc	a5,0x7
    80004a4c:	21078793          	addi	a5,a5,528 # 8000bc58 <_ZTV8Producer+0x10>
    80004a50:	00f53023          	sd	a5,0(a0)
    80004a54:	ffffd097          	auipc	ra,0xffffd
    80004a58:	484080e7          	jalr	1156(ra) # 80001ed8 <_ZN6ThreadD1Ev>
    80004a5c:	00048513          	mv	a0,s1
    80004a60:	ffffd097          	auipc	ra,0xffffd
    80004a64:	538080e7          	jalr	1336(ra) # 80001f98 <_ZdlPv>
    80004a68:	01813083          	ld	ra,24(sp)
    80004a6c:	01013403          	ld	s0,16(sp)
    80004a70:	00813483          	ld	s1,8(sp)
    80004a74:	02010113          	addi	sp,sp,32
    80004a78:	00008067          	ret

0000000080004a7c <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004a7c:	fe010113          	addi	sp,sp,-32
    80004a80:	00113c23          	sd	ra,24(sp)
    80004a84:	00813823          	sd	s0,16(sp)
    80004a88:	00913423          	sd	s1,8(sp)
    80004a8c:	02010413          	addi	s0,sp,32
    80004a90:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80004a94:	ffffd097          	auipc	ra,0xffffd
    80004a98:	b8c080e7          	jalr	-1140(ra) # 80001620 <_Z4getcv>
    80004a9c:	0005059b          	sext.w	a1,a0
    80004aa0:	01b00793          	li	a5,27
    80004aa4:	00f58c63          	beq	a1,a5,80004abc <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80004aa8:	0204b783          	ld	a5,32(s1)
    80004aac:	0087b503          	ld	a0,8(a5)
    80004ab0:	00001097          	auipc	ra,0x1
    80004ab4:	69c080e7          	jalr	1692(ra) # 8000614c <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80004ab8:	fddff06f          	j	80004a94 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004abc:	00100793          	li	a5,1
    80004ac0:	00007717          	auipc	a4,0x7
    80004ac4:	38f72423          	sw	a5,904(a4) # 8000be48 <_ZL9threadEnd>
        td->buffer->put('!');
    80004ac8:	0204b783          	ld	a5,32(s1)
    80004acc:	02100593          	li	a1,33
    80004ad0:	0087b503          	ld	a0,8(a5)
    80004ad4:	00001097          	auipc	ra,0x1
    80004ad8:	678080e7          	jalr	1656(ra) # 8000614c <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004adc:	0204b783          	ld	a5,32(s1)
    80004ae0:	0107b503          	ld	a0,16(a5)
    80004ae4:	ffffd097          	auipc	ra,0xffffd
    80004ae8:	6b8080e7          	jalr	1720(ra) # 8000219c <_ZN9Semaphore6signalEv>
    }
    80004aec:	01813083          	ld	ra,24(sp)
    80004af0:	01013403          	ld	s0,16(sp)
    80004af4:	00813483          	ld	s1,8(sp)
    80004af8:	02010113          	addi	sp,sp,32
    80004afc:	00008067          	ret

0000000080004b00 <_ZN8Producer3runEv>:
    void run() override {
    80004b00:	fe010113          	addi	sp,sp,-32
    80004b04:	00113c23          	sd	ra,24(sp)
    80004b08:	00813823          	sd	s0,16(sp)
    80004b0c:	00913423          	sd	s1,8(sp)
    80004b10:	01213023          	sd	s2,0(sp)
    80004b14:	02010413          	addi	s0,sp,32
    80004b18:	00050493          	mv	s1,a0
        int i = 0;
    80004b1c:	00000913          	li	s2,0
        while (!threadEnd) {
    80004b20:	00007797          	auipc	a5,0x7
    80004b24:	3287a783          	lw	a5,808(a5) # 8000be48 <_ZL9threadEnd>
    80004b28:	04079263          	bnez	a5,80004b6c <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004b2c:	0204b783          	ld	a5,32(s1)
    80004b30:	0007a583          	lw	a1,0(a5)
    80004b34:	0305859b          	addiw	a1,a1,48
    80004b38:	0087b503          	ld	a0,8(a5)
    80004b3c:	00001097          	auipc	ra,0x1
    80004b40:	610080e7          	jalr	1552(ra) # 8000614c <_ZN9BufferCPP3putEi>
            i++;
    80004b44:	0019071b          	addiw	a4,s2,1
    80004b48:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004b4c:	0204b783          	ld	a5,32(s1)
    80004b50:	0007a783          	lw	a5,0(a5)
    80004b54:	00e787bb          	addw	a5,a5,a4
    80004b58:	00500513          	li	a0,5
    80004b5c:	02a7e53b          	remw	a0,a5,a0
    80004b60:	ffffd097          	auipc	ra,0xffffd
    80004b64:	5a0080e7          	jalr	1440(ra) # 80002100 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004b68:	fb9ff06f          	j	80004b20 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004b6c:	0204b783          	ld	a5,32(s1)
    80004b70:	0107b503          	ld	a0,16(a5)
    80004b74:	ffffd097          	auipc	ra,0xffffd
    80004b78:	628080e7          	jalr	1576(ra) # 8000219c <_ZN9Semaphore6signalEv>
    }
    80004b7c:	01813083          	ld	ra,24(sp)
    80004b80:	01013403          	ld	s0,16(sp)
    80004b84:	00813483          	ld	s1,8(sp)
    80004b88:	00013903          	ld	s2,0(sp)
    80004b8c:	02010113          	addi	sp,sp,32
    80004b90:	00008067          	ret

0000000080004b94 <_ZN6BufferC1Ei>:
#include "bounded_buffer.hpp"


Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004b94:	fe010113          	addi	sp,sp,-32
    80004b98:	00113c23          	sd	ra,24(sp)
    80004b9c:	00813823          	sd	s0,16(sp)
    80004ba0:	00913423          	sd	s1,8(sp)
    80004ba4:	01213023          	sd	s2,0(sp)
    80004ba8:	02010413          	addi	s0,sp,32
    80004bac:	00050493          	mv	s1,a0
    80004bb0:	00058913          	mv	s2,a1
    80004bb4:	0015879b          	addiw	a5,a1,1
    80004bb8:	0007851b          	sext.w	a0,a5
    80004bbc:	00f4a023          	sw	a5,0(s1)
    80004bc0:	0004a823          	sw	zero,16(s1)
    80004bc4:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004bc8:	00251513          	slli	a0,a0,0x2
    80004bcc:	ffffc097          	auipc	ra,0xffffc
    80004bd0:	68c080e7          	jalr	1676(ra) # 80001258 <_Z9mem_allocm>
    80004bd4:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80004bd8:	00000593          	li	a1,0
    80004bdc:	02048513          	addi	a0,s1,32
    80004be0:	ffffd097          	auipc	ra,0xffffd
    80004be4:	828080e7          	jalr	-2008(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&spaceAvailable, _cap);
    80004be8:	00090593          	mv	a1,s2
    80004bec:	01848513          	addi	a0,s1,24
    80004bf0:	ffffd097          	auipc	ra,0xffffd
    80004bf4:	818080e7          	jalr	-2024(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&mutexHead, 1);
    80004bf8:	00100593          	li	a1,1
    80004bfc:	02848513          	addi	a0,s1,40
    80004c00:	ffffd097          	auipc	ra,0xffffd
    80004c04:	808080e7          	jalr	-2040(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&mutexTail, 1);
    80004c08:	00100593          	li	a1,1
    80004c0c:	03048513          	addi	a0,s1,48
    80004c10:	ffffc097          	auipc	ra,0xffffc
    80004c14:	7f8080e7          	jalr	2040(ra) # 80001408 <_Z8sem_openPP3Semj>
}
    80004c18:	01813083          	ld	ra,24(sp)
    80004c1c:	01013403          	ld	s0,16(sp)
    80004c20:	00813483          	ld	s1,8(sp)
    80004c24:	00013903          	ld	s2,0(sp)
    80004c28:	02010113          	addi	sp,sp,32
    80004c2c:	00008067          	ret

0000000080004c30 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80004c30:	fe010113          	addi	sp,sp,-32
    80004c34:	00113c23          	sd	ra,24(sp)
    80004c38:	00813823          	sd	s0,16(sp)
    80004c3c:	00913423          	sd	s1,8(sp)
    80004c40:	01213023          	sd	s2,0(sp)
    80004c44:	02010413          	addi	s0,sp,32
    80004c48:	00050493          	mv	s1,a0
    80004c4c:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80004c50:	01853503          	ld	a0,24(a0)
    80004c54:	ffffd097          	auipc	ra,0xffffd
    80004c58:	850080e7          	jalr	-1968(ra) # 800014a4 <_Z8sem_waitP3Sem>

    sem_wait(mutexTail);
    80004c5c:	0304b503          	ld	a0,48(s1)
    80004c60:	ffffd097          	auipc	ra,0xffffd
    80004c64:	844080e7          	jalr	-1980(ra) # 800014a4 <_Z8sem_waitP3Sem>
    buffer[tail] = val;
    80004c68:	0084b783          	ld	a5,8(s1)
    80004c6c:	0144a703          	lw	a4,20(s1)
    80004c70:	00271713          	slli	a4,a4,0x2
    80004c74:	00e787b3          	add	a5,a5,a4
    80004c78:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80004c7c:	0144a783          	lw	a5,20(s1)
    80004c80:	0017879b          	addiw	a5,a5,1
    80004c84:	0004a703          	lw	a4,0(s1)
    80004c88:	02e7e7bb          	remw	a5,a5,a4
    80004c8c:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80004c90:	0304b503          	ld	a0,48(s1)
    80004c94:	ffffd097          	auipc	ra,0xffffd
    80004c98:	85c080e7          	jalr	-1956(ra) # 800014f0 <_Z10sem_signalP3Sem>

    sem_signal(itemAvailable);
    80004c9c:	0204b503          	ld	a0,32(s1)
    80004ca0:	ffffd097          	auipc	ra,0xffffd
    80004ca4:	850080e7          	jalr	-1968(ra) # 800014f0 <_Z10sem_signalP3Sem>

}
    80004ca8:	01813083          	ld	ra,24(sp)
    80004cac:	01013403          	ld	s0,16(sp)
    80004cb0:	00813483          	ld	s1,8(sp)
    80004cb4:	00013903          	ld	s2,0(sp)
    80004cb8:	02010113          	addi	sp,sp,32
    80004cbc:	00008067          	ret

0000000080004cc0 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80004cc0:	fe010113          	addi	sp,sp,-32
    80004cc4:	00113c23          	sd	ra,24(sp)
    80004cc8:	00813823          	sd	s0,16(sp)
    80004ccc:	00913423          	sd	s1,8(sp)
    80004cd0:	01213023          	sd	s2,0(sp)
    80004cd4:	02010413          	addi	s0,sp,32
    80004cd8:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80004cdc:	02053503          	ld	a0,32(a0)
    80004ce0:	ffffc097          	auipc	ra,0xffffc
    80004ce4:	7c4080e7          	jalr	1988(ra) # 800014a4 <_Z8sem_waitP3Sem>

    sem_wait(mutexHead);
    80004ce8:	0284b503          	ld	a0,40(s1)
    80004cec:	ffffc097          	auipc	ra,0xffffc
    80004cf0:	7b8080e7          	jalr	1976(ra) # 800014a4 <_Z8sem_waitP3Sem>

    int ret = buffer[head];
    80004cf4:	0084b703          	ld	a4,8(s1)
    80004cf8:	0104a783          	lw	a5,16(s1)
    80004cfc:	00279693          	slli	a3,a5,0x2
    80004d00:	00d70733          	add	a4,a4,a3
    80004d04:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80004d08:	0017879b          	addiw	a5,a5,1
    80004d0c:	0004a703          	lw	a4,0(s1)
    80004d10:	02e7e7bb          	remw	a5,a5,a4
    80004d14:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80004d18:	0284b503          	ld	a0,40(s1)
    80004d1c:	ffffc097          	auipc	ra,0xffffc
    80004d20:	7d4080e7          	jalr	2004(ra) # 800014f0 <_Z10sem_signalP3Sem>

    sem_signal(spaceAvailable);
    80004d24:	0184b503          	ld	a0,24(s1)
    80004d28:	ffffc097          	auipc	ra,0xffffc
    80004d2c:	7c8080e7          	jalr	1992(ra) # 800014f0 <_Z10sem_signalP3Sem>

    return ret;
}
    80004d30:	00090513          	mv	a0,s2
    80004d34:	01813083          	ld	ra,24(sp)
    80004d38:	01013403          	ld	s0,16(sp)
    80004d3c:	00813483          	ld	s1,8(sp)
    80004d40:	00013903          	ld	s2,0(sp)
    80004d44:	02010113          	addi	sp,sp,32
    80004d48:	00008067          	ret

0000000080004d4c <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80004d4c:	fe010113          	addi	sp,sp,-32
    80004d50:	00113c23          	sd	ra,24(sp)
    80004d54:	00813823          	sd	s0,16(sp)
    80004d58:	00913423          	sd	s1,8(sp)
    80004d5c:	01213023          	sd	s2,0(sp)
    80004d60:	02010413          	addi	s0,sp,32
    80004d64:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80004d68:	02853503          	ld	a0,40(a0)
    80004d6c:	ffffc097          	auipc	ra,0xffffc
    80004d70:	738080e7          	jalr	1848(ra) # 800014a4 <_Z8sem_waitP3Sem>
    sem_wait(mutexTail);
    80004d74:	0304b503          	ld	a0,48(s1)
    80004d78:	ffffc097          	auipc	ra,0xffffc
    80004d7c:	72c080e7          	jalr	1836(ra) # 800014a4 <_Z8sem_waitP3Sem>

    if (tail >= head) {
    80004d80:	0144a783          	lw	a5,20(s1)
    80004d84:	0104a903          	lw	s2,16(s1)
    80004d88:	0327ce63          	blt	a5,s2,80004dc4 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80004d8c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80004d90:	0304b503          	ld	a0,48(s1)
    80004d94:	ffffc097          	auipc	ra,0xffffc
    80004d98:	75c080e7          	jalr	1884(ra) # 800014f0 <_Z10sem_signalP3Sem>
    sem_signal(mutexHead);
    80004d9c:	0284b503          	ld	a0,40(s1)
    80004da0:	ffffc097          	auipc	ra,0xffffc
    80004da4:	750080e7          	jalr	1872(ra) # 800014f0 <_Z10sem_signalP3Sem>

    return ret;
}
    80004da8:	00090513          	mv	a0,s2
    80004dac:	01813083          	ld	ra,24(sp)
    80004db0:	01013403          	ld	s0,16(sp)
    80004db4:	00813483          	ld	s1,8(sp)
    80004db8:	00013903          	ld	s2,0(sp)
    80004dbc:	02010113          	addi	sp,sp,32
    80004dc0:	00008067          	ret
        ret = cap - head + tail;
    80004dc4:	0004a703          	lw	a4,0(s1)
    80004dc8:	4127093b          	subw	s2,a4,s2
    80004dcc:	00f9093b          	addw	s2,s2,a5
    80004dd0:	fc1ff06f          	j	80004d90 <_ZN6Buffer6getCntEv+0x44>

0000000080004dd4 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80004dd4:	fe010113          	addi	sp,sp,-32
    80004dd8:	00113c23          	sd	ra,24(sp)
    80004ddc:	00813823          	sd	s0,16(sp)
    80004de0:	00913423          	sd	s1,8(sp)
    80004de4:	02010413          	addi	s0,sp,32
    80004de8:	00050493          	mv	s1,a0
    putc('\n');
    80004dec:	00a00513          	li	a0,10
    80004df0:	ffffd097          	auipc	ra,0xffffd
    80004df4:	87c080e7          	jalr	-1924(ra) # 8000166c <_Z4putcc>
    printString("Buffer deleted!\n");
    80004df8:	00004517          	auipc	a0,0x4
    80004dfc:	52850513          	addi	a0,a0,1320 # 80009320 <CONSOLE_STATUS+0x310>
    80004e00:	00001097          	auipc	ra,0x1
    80004e04:	f28080e7          	jalr	-216(ra) # 80005d28 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80004e08:	00048513          	mv	a0,s1
    80004e0c:	00000097          	auipc	ra,0x0
    80004e10:	f40080e7          	jalr	-192(ra) # 80004d4c <_ZN6Buffer6getCntEv>
    80004e14:	02a05c63          	blez	a0,80004e4c <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80004e18:	0084b783          	ld	a5,8(s1)
    80004e1c:	0104a703          	lw	a4,16(s1)
    80004e20:	00271713          	slli	a4,a4,0x2
    80004e24:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80004e28:	0007c503          	lbu	a0,0(a5)
    80004e2c:	ffffd097          	auipc	ra,0xffffd
    80004e30:	840080e7          	jalr	-1984(ra) # 8000166c <_Z4putcc>
        head = (head + 1) % cap;
    80004e34:	0104a783          	lw	a5,16(s1)
    80004e38:	0017879b          	addiw	a5,a5,1
    80004e3c:	0004a703          	lw	a4,0(s1)
    80004e40:	02e7e7bb          	remw	a5,a5,a4
    80004e44:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80004e48:	fc1ff06f          	j	80004e08 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80004e4c:	02100513          	li	a0,33
    80004e50:	ffffd097          	auipc	ra,0xffffd
    80004e54:	81c080e7          	jalr	-2020(ra) # 8000166c <_Z4putcc>
    putc('\n');
    80004e58:	00a00513          	li	a0,10
    80004e5c:	ffffd097          	auipc	ra,0xffffd
    80004e60:	810080e7          	jalr	-2032(ra) # 8000166c <_Z4putcc>
    mem_free(buffer);
    80004e64:	0084b503          	ld	a0,8(s1)
    80004e68:	ffffc097          	auipc	ra,0xffffc
    80004e6c:	444080e7          	jalr	1092(ra) # 800012ac <_Z8mem_freePv>
    sem_close(itemAvailable);
    80004e70:	0204b503          	ld	a0,32(s1)
    80004e74:	ffffc097          	auipc	ra,0xffffc
    80004e78:	5e4080e7          	jalr	1508(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(spaceAvailable);
    80004e7c:	0184b503          	ld	a0,24(s1)
    80004e80:	ffffc097          	auipc	ra,0xffffc
    80004e84:	5d8080e7          	jalr	1496(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(mutexTail);
    80004e88:	0304b503          	ld	a0,48(s1)
    80004e8c:	ffffc097          	auipc	ra,0xffffc
    80004e90:	5cc080e7          	jalr	1484(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(mutexHead);
    80004e94:	0284b503          	ld	a0,40(s1)
    80004e98:	ffffc097          	auipc	ra,0xffffc
    80004e9c:	5c0080e7          	jalr	1472(ra) # 80001458 <_Z9sem_closeP3Sem>
}
    80004ea0:	01813083          	ld	ra,24(sp)
    80004ea4:	01013403          	ld	s0,16(sp)
    80004ea8:	00813483          	ld	s1,8(sp)
    80004eac:	02010113          	addi	sp,sp,32
    80004eb0:	00008067          	ret

0000000080004eb4 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004eb4:	fe010113          	addi	sp,sp,-32
    80004eb8:	00113c23          	sd	ra,24(sp)
    80004ebc:	00813823          	sd	s0,16(sp)
    80004ec0:	00913423          	sd	s1,8(sp)
    80004ec4:	01213023          	sd	s2,0(sp)
    80004ec8:	02010413          	addi	s0,sp,32
    80004ecc:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004ed0:	00100793          	li	a5,1
    80004ed4:	02a7f863          	bgeu	a5,a0,80004f04 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004ed8:	00a00793          	li	a5,10
    80004edc:	02f577b3          	remu	a5,a0,a5
    80004ee0:	02078e63          	beqz	a5,80004f1c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004ee4:	fff48513          	addi	a0,s1,-1
    80004ee8:	00000097          	auipc	ra,0x0
    80004eec:	fcc080e7          	jalr	-52(ra) # 80004eb4 <_ZL9fibonaccim>
    80004ef0:	00050913          	mv	s2,a0
    80004ef4:	ffe48513          	addi	a0,s1,-2
    80004ef8:	00000097          	auipc	ra,0x0
    80004efc:	fbc080e7          	jalr	-68(ra) # 80004eb4 <_ZL9fibonaccim>
    80004f00:	00a90533          	add	a0,s2,a0
}
    80004f04:	01813083          	ld	ra,24(sp)
    80004f08:	01013403          	ld	s0,16(sp)
    80004f0c:	00813483          	ld	s1,8(sp)
    80004f10:	00013903          	ld	s2,0(sp)
    80004f14:	02010113          	addi	sp,sp,32
    80004f18:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004f1c:	ffffc097          	auipc	ra,0xffffc
    80004f20:	4b0080e7          	jalr	1200(ra) # 800013cc <_Z15thread_dispatchv>
    80004f24:	fc1ff06f          	j	80004ee4 <_ZL9fibonaccim+0x30>

0000000080004f28 <_ZL11workerBodyDPv>:
    printString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004f28:	fe010113          	addi	sp,sp,-32
    80004f2c:	00113c23          	sd	ra,24(sp)
    80004f30:	00813823          	sd	s0,16(sp)
    80004f34:	00913423          	sd	s1,8(sp)
    80004f38:	01213023          	sd	s2,0(sp)
    80004f3c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004f40:	00a00493          	li	s1,10
    80004f44:	0400006f          	j	80004f84 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004f48:	00004517          	auipc	a0,0x4
    80004f4c:	34050513          	addi	a0,a0,832 # 80009288 <CONSOLE_STATUS+0x278>
    80004f50:	00001097          	auipc	ra,0x1
    80004f54:	dd8080e7          	jalr	-552(ra) # 80005d28 <_Z11printStringPKc>
    80004f58:	00000613          	li	a2,0
    80004f5c:	00a00593          	li	a1,10
    80004f60:	00048513          	mv	a0,s1
    80004f64:	00001097          	auipc	ra,0x1
    80004f68:	f74080e7          	jalr	-140(ra) # 80005ed8 <_Z8printIntiii>
    80004f6c:	00004517          	auipc	a0,0x4
    80004f70:	51c50513          	addi	a0,a0,1308 # 80009488 <CONSOLE_STATUS+0x478>
    80004f74:	00001097          	auipc	ra,0x1
    80004f78:	db4080e7          	jalr	-588(ra) # 80005d28 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004f7c:	0014849b          	addiw	s1,s1,1
    80004f80:	0ff4f493          	andi	s1,s1,255
    80004f84:	00c00793          	li	a5,12
    80004f88:	fc97f0e3          	bgeu	a5,s1,80004f48 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004f8c:	00004517          	auipc	a0,0x4
    80004f90:	30450513          	addi	a0,a0,772 # 80009290 <CONSOLE_STATUS+0x280>
    80004f94:	00001097          	auipc	ra,0x1
    80004f98:	d94080e7          	jalr	-620(ra) # 80005d28 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004f9c:	00500313          	li	t1,5
    thread_dispatch();
    80004fa0:	ffffc097          	auipc	ra,0xffffc
    80004fa4:	42c080e7          	jalr	1068(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004fa8:	01000513          	li	a0,16
    80004fac:	00000097          	auipc	ra,0x0
    80004fb0:	f08080e7          	jalr	-248(ra) # 80004eb4 <_ZL9fibonaccim>
    80004fb4:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004fb8:	00004517          	auipc	a0,0x4
    80004fbc:	2e850513          	addi	a0,a0,744 # 800092a0 <CONSOLE_STATUS+0x290>
    80004fc0:	00001097          	auipc	ra,0x1
    80004fc4:	d68080e7          	jalr	-664(ra) # 80005d28 <_Z11printStringPKc>
    80004fc8:	00000613          	li	a2,0
    80004fcc:	00a00593          	li	a1,10
    80004fd0:	0009051b          	sext.w	a0,s2
    80004fd4:	00001097          	auipc	ra,0x1
    80004fd8:	f04080e7          	jalr	-252(ra) # 80005ed8 <_Z8printIntiii>
    80004fdc:	00004517          	auipc	a0,0x4
    80004fe0:	4ac50513          	addi	a0,a0,1196 # 80009488 <CONSOLE_STATUS+0x478>
    80004fe4:	00001097          	auipc	ra,0x1
    80004fe8:	d44080e7          	jalr	-700(ra) # 80005d28 <_Z11printStringPKc>
    80004fec:	0400006f          	j	8000502c <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004ff0:	00004517          	auipc	a0,0x4
    80004ff4:	29850513          	addi	a0,a0,664 # 80009288 <CONSOLE_STATUS+0x278>
    80004ff8:	00001097          	auipc	ra,0x1
    80004ffc:	d30080e7          	jalr	-720(ra) # 80005d28 <_Z11printStringPKc>
    80005000:	00000613          	li	a2,0
    80005004:	00a00593          	li	a1,10
    80005008:	00048513          	mv	a0,s1
    8000500c:	00001097          	auipc	ra,0x1
    80005010:	ecc080e7          	jalr	-308(ra) # 80005ed8 <_Z8printIntiii>
    80005014:	00004517          	auipc	a0,0x4
    80005018:	47450513          	addi	a0,a0,1140 # 80009488 <CONSOLE_STATUS+0x478>
    8000501c:	00001097          	auipc	ra,0x1
    80005020:	d0c080e7          	jalr	-756(ra) # 80005d28 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005024:	0014849b          	addiw	s1,s1,1
    80005028:	0ff4f493          	andi	s1,s1,255
    8000502c:	00f00793          	li	a5,15
    80005030:	fc97f0e3          	bgeu	a5,s1,80004ff0 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005034:	00004517          	auipc	a0,0x4
    80005038:	27c50513          	addi	a0,a0,636 # 800092b0 <CONSOLE_STATUS+0x2a0>
    8000503c:	00001097          	auipc	ra,0x1
    80005040:	cec080e7          	jalr	-788(ra) # 80005d28 <_Z11printStringPKc>
    finishedD = true;
    80005044:	00100793          	li	a5,1
    80005048:	00007717          	auipc	a4,0x7
    8000504c:	e0f70823          	sb	a5,-496(a4) # 8000be58 <_ZL9finishedD>
    thread_dispatch();
    80005050:	ffffc097          	auipc	ra,0xffffc
    80005054:	37c080e7          	jalr	892(ra) # 800013cc <_Z15thread_dispatchv>
}
    80005058:	01813083          	ld	ra,24(sp)
    8000505c:	01013403          	ld	s0,16(sp)
    80005060:	00813483          	ld	s1,8(sp)
    80005064:	00013903          	ld	s2,0(sp)
    80005068:	02010113          	addi	sp,sp,32
    8000506c:	00008067          	ret

0000000080005070 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005070:	fe010113          	addi	sp,sp,-32
    80005074:	00113c23          	sd	ra,24(sp)
    80005078:	00813823          	sd	s0,16(sp)
    8000507c:	00913423          	sd	s1,8(sp)
    80005080:	01213023          	sd	s2,0(sp)
    80005084:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005088:	00000493          	li	s1,0
    8000508c:	0400006f          	j	800050cc <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005090:	00004517          	auipc	a0,0x4
    80005094:	1c850513          	addi	a0,a0,456 # 80009258 <CONSOLE_STATUS+0x248>
    80005098:	00001097          	auipc	ra,0x1
    8000509c:	c90080e7          	jalr	-880(ra) # 80005d28 <_Z11printStringPKc>
    800050a0:	00000613          	li	a2,0
    800050a4:	00a00593          	li	a1,10
    800050a8:	00048513          	mv	a0,s1
    800050ac:	00001097          	auipc	ra,0x1
    800050b0:	e2c080e7          	jalr	-468(ra) # 80005ed8 <_Z8printIntiii>
    800050b4:	00004517          	auipc	a0,0x4
    800050b8:	3d450513          	addi	a0,a0,980 # 80009488 <CONSOLE_STATUS+0x478>
    800050bc:	00001097          	auipc	ra,0x1
    800050c0:	c6c080e7          	jalr	-916(ra) # 80005d28 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800050c4:	0014849b          	addiw	s1,s1,1
    800050c8:	0ff4f493          	andi	s1,s1,255
    800050cc:	00200793          	li	a5,2
    800050d0:	fc97f0e3          	bgeu	a5,s1,80005090 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800050d4:	00004517          	auipc	a0,0x4
    800050d8:	18c50513          	addi	a0,a0,396 # 80009260 <CONSOLE_STATUS+0x250>
    800050dc:	00001097          	auipc	ra,0x1
    800050e0:	c4c080e7          	jalr	-948(ra) # 80005d28 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800050e4:	00700313          	li	t1,7
    thread_dispatch();
    800050e8:	ffffc097          	auipc	ra,0xffffc
    800050ec:	2e4080e7          	jalr	740(ra) # 800013cc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800050f0:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800050f4:	00004517          	auipc	a0,0x4
    800050f8:	17c50513          	addi	a0,a0,380 # 80009270 <CONSOLE_STATUS+0x260>
    800050fc:	00001097          	auipc	ra,0x1
    80005100:	c2c080e7          	jalr	-980(ra) # 80005d28 <_Z11printStringPKc>
    80005104:	00000613          	li	a2,0
    80005108:	00a00593          	li	a1,10
    8000510c:	0009051b          	sext.w	a0,s2
    80005110:	00001097          	auipc	ra,0x1
    80005114:	dc8080e7          	jalr	-568(ra) # 80005ed8 <_Z8printIntiii>
    80005118:	00004517          	auipc	a0,0x4
    8000511c:	37050513          	addi	a0,a0,880 # 80009488 <CONSOLE_STATUS+0x478>
    80005120:	00001097          	auipc	ra,0x1
    80005124:	c08080e7          	jalr	-1016(ra) # 80005d28 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005128:	00c00513          	li	a0,12
    8000512c:	00000097          	auipc	ra,0x0
    80005130:	d88080e7          	jalr	-632(ra) # 80004eb4 <_ZL9fibonaccim>
    80005134:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005138:	00004517          	auipc	a0,0x4
    8000513c:	14050513          	addi	a0,a0,320 # 80009278 <CONSOLE_STATUS+0x268>
    80005140:	00001097          	auipc	ra,0x1
    80005144:	be8080e7          	jalr	-1048(ra) # 80005d28 <_Z11printStringPKc>
    80005148:	00000613          	li	a2,0
    8000514c:	00a00593          	li	a1,10
    80005150:	0009051b          	sext.w	a0,s2
    80005154:	00001097          	auipc	ra,0x1
    80005158:	d84080e7          	jalr	-636(ra) # 80005ed8 <_Z8printIntiii>
    8000515c:	00004517          	auipc	a0,0x4
    80005160:	32c50513          	addi	a0,a0,812 # 80009488 <CONSOLE_STATUS+0x478>
    80005164:	00001097          	auipc	ra,0x1
    80005168:	bc4080e7          	jalr	-1084(ra) # 80005d28 <_Z11printStringPKc>
    8000516c:	0400006f          	j	800051ac <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005170:	00004517          	auipc	a0,0x4
    80005174:	0e850513          	addi	a0,a0,232 # 80009258 <CONSOLE_STATUS+0x248>
    80005178:	00001097          	auipc	ra,0x1
    8000517c:	bb0080e7          	jalr	-1104(ra) # 80005d28 <_Z11printStringPKc>
    80005180:	00000613          	li	a2,0
    80005184:	00a00593          	li	a1,10
    80005188:	00048513          	mv	a0,s1
    8000518c:	00001097          	auipc	ra,0x1
    80005190:	d4c080e7          	jalr	-692(ra) # 80005ed8 <_Z8printIntiii>
    80005194:	00004517          	auipc	a0,0x4
    80005198:	2f450513          	addi	a0,a0,756 # 80009488 <CONSOLE_STATUS+0x478>
    8000519c:	00001097          	auipc	ra,0x1
    800051a0:	b8c080e7          	jalr	-1140(ra) # 80005d28 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800051a4:	0014849b          	addiw	s1,s1,1
    800051a8:	0ff4f493          	andi	s1,s1,255
    800051ac:	00500793          	li	a5,5
    800051b0:	fc97f0e3          	bgeu	a5,s1,80005170 <_ZL11workerBodyCPv+0x100>
    printString("C finished!\n");
    800051b4:	00004517          	auipc	a0,0x4
    800051b8:	18450513          	addi	a0,a0,388 # 80009338 <CONSOLE_STATUS+0x328>
    800051bc:	00001097          	auipc	ra,0x1
    800051c0:	b6c080e7          	jalr	-1172(ra) # 80005d28 <_Z11printStringPKc>
    finishedC = true;
    800051c4:	00100793          	li	a5,1
    800051c8:	00007717          	auipc	a4,0x7
    800051cc:	c8f708a3          	sb	a5,-879(a4) # 8000be59 <_ZL9finishedC>
    thread_dispatch();
    800051d0:	ffffc097          	auipc	ra,0xffffc
    800051d4:	1fc080e7          	jalr	508(ra) # 800013cc <_Z15thread_dispatchv>
}
    800051d8:	01813083          	ld	ra,24(sp)
    800051dc:	01013403          	ld	s0,16(sp)
    800051e0:	00813483          	ld	s1,8(sp)
    800051e4:	00013903          	ld	s2,0(sp)
    800051e8:	02010113          	addi	sp,sp,32
    800051ec:	00008067          	ret

00000000800051f0 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800051f0:	fe010113          	addi	sp,sp,-32
    800051f4:	00113c23          	sd	ra,24(sp)
    800051f8:	00813823          	sd	s0,16(sp)
    800051fc:	00913423          	sd	s1,8(sp)
    80005200:	01213023          	sd	s2,0(sp)
    80005204:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005208:	00000913          	li	s2,0
    8000520c:	0380006f          	j	80005244 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80005210:	ffffc097          	auipc	ra,0xffffc
    80005214:	1bc080e7          	jalr	444(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005218:	00148493          	addi	s1,s1,1
    8000521c:	000027b7          	lui	a5,0x2
    80005220:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005224:	0097ee63          	bltu	a5,s1,80005240 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005228:	00000713          	li	a4,0
    8000522c:	000077b7          	lui	a5,0x7
    80005230:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005234:	fce7eee3          	bltu	a5,a4,80005210 <_ZL11workerBodyBPv+0x20>
    80005238:	00170713          	addi	a4,a4,1
    8000523c:	ff1ff06f          	j	8000522c <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80005240:	00190913          	addi	s2,s2,1
    80005244:	00f00793          	li	a5,15
    80005248:	0527e063          	bltu	a5,s2,80005288 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    8000524c:	00004517          	auipc	a0,0x4
    80005250:	ff450513          	addi	a0,a0,-12 # 80009240 <CONSOLE_STATUS+0x230>
    80005254:	00001097          	auipc	ra,0x1
    80005258:	ad4080e7          	jalr	-1324(ra) # 80005d28 <_Z11printStringPKc>
    8000525c:	00000613          	li	a2,0
    80005260:	00a00593          	li	a1,10
    80005264:	0009051b          	sext.w	a0,s2
    80005268:	00001097          	auipc	ra,0x1
    8000526c:	c70080e7          	jalr	-912(ra) # 80005ed8 <_Z8printIntiii>
    80005270:	00004517          	auipc	a0,0x4
    80005274:	21850513          	addi	a0,a0,536 # 80009488 <CONSOLE_STATUS+0x478>
    80005278:	00001097          	auipc	ra,0x1
    8000527c:	ab0080e7          	jalr	-1360(ra) # 80005d28 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005280:	00000493          	li	s1,0
    80005284:	f99ff06f          	j	8000521c <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80005288:	00004517          	auipc	a0,0x4
    8000528c:	fc050513          	addi	a0,a0,-64 # 80009248 <CONSOLE_STATUS+0x238>
    80005290:	00001097          	auipc	ra,0x1
    80005294:	a98080e7          	jalr	-1384(ra) # 80005d28 <_Z11printStringPKc>
    finishedB = true;
    80005298:	00100793          	li	a5,1
    8000529c:	00007717          	auipc	a4,0x7
    800052a0:	baf70f23          	sb	a5,-1090(a4) # 8000be5a <_ZL9finishedB>
    thread_dispatch();
    800052a4:	ffffc097          	auipc	ra,0xffffc
    800052a8:	128080e7          	jalr	296(ra) # 800013cc <_Z15thread_dispatchv>
}
    800052ac:	01813083          	ld	ra,24(sp)
    800052b0:	01013403          	ld	s0,16(sp)
    800052b4:	00813483          	ld	s1,8(sp)
    800052b8:	00013903          	ld	s2,0(sp)
    800052bc:	02010113          	addi	sp,sp,32
    800052c0:	00008067          	ret

00000000800052c4 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800052c4:	fe010113          	addi	sp,sp,-32
    800052c8:	00113c23          	sd	ra,24(sp)
    800052cc:	00813823          	sd	s0,16(sp)
    800052d0:	00913423          	sd	s1,8(sp)
    800052d4:	01213023          	sd	s2,0(sp)
    800052d8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800052dc:	00000913          	li	s2,0
    800052e0:	0380006f          	j	80005318 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800052e4:	ffffc097          	auipc	ra,0xffffc
    800052e8:	0e8080e7          	jalr	232(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800052ec:	00148493          	addi	s1,s1,1
    800052f0:	000027b7          	lui	a5,0x2
    800052f4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800052f8:	0097ee63          	bltu	a5,s1,80005314 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800052fc:	00000713          	li	a4,0
    80005300:	000077b7          	lui	a5,0x7
    80005304:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005308:	fce7eee3          	bltu	a5,a4,800052e4 <_ZL11workerBodyAPv+0x20>
    8000530c:	00170713          	addi	a4,a4,1
    80005310:	ff1ff06f          	j	80005300 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005314:	00190913          	addi	s2,s2,1
    80005318:	00900793          	li	a5,9
    8000531c:	0527e063          	bltu	a5,s2,8000535c <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005320:	00004517          	auipc	a0,0x4
    80005324:	f0850513          	addi	a0,a0,-248 # 80009228 <CONSOLE_STATUS+0x218>
    80005328:	00001097          	auipc	ra,0x1
    8000532c:	a00080e7          	jalr	-1536(ra) # 80005d28 <_Z11printStringPKc>
    80005330:	00000613          	li	a2,0
    80005334:	00a00593          	li	a1,10
    80005338:	0009051b          	sext.w	a0,s2
    8000533c:	00001097          	auipc	ra,0x1
    80005340:	b9c080e7          	jalr	-1124(ra) # 80005ed8 <_Z8printIntiii>
    80005344:	00004517          	auipc	a0,0x4
    80005348:	14450513          	addi	a0,a0,324 # 80009488 <CONSOLE_STATUS+0x478>
    8000534c:	00001097          	auipc	ra,0x1
    80005350:	9dc080e7          	jalr	-1572(ra) # 80005d28 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005354:	00000493          	li	s1,0
    80005358:	f99ff06f          	j	800052f0 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    8000535c:	00004517          	auipc	a0,0x4
    80005360:	ed450513          	addi	a0,a0,-300 # 80009230 <CONSOLE_STATUS+0x220>
    80005364:	00001097          	auipc	ra,0x1
    80005368:	9c4080e7          	jalr	-1596(ra) # 80005d28 <_Z11printStringPKc>
    finishedA = true;
    8000536c:	00100793          	li	a5,1
    80005370:	00007717          	auipc	a4,0x7
    80005374:	aef705a3          	sb	a5,-1301(a4) # 8000be5b <_ZL9finishedA>
}
    80005378:	01813083          	ld	ra,24(sp)
    8000537c:	01013403          	ld	s0,16(sp)
    80005380:	00813483          	ld	s1,8(sp)
    80005384:	00013903          	ld	s2,0(sp)
    80005388:	02010113          	addi	sp,sp,32
    8000538c:	00008067          	ret

0000000080005390 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80005390:	ff010113          	addi	sp,sp,-16
    80005394:	00113423          	sd	ra,8(sp)
    80005398:	00813023          	sd	s0,0(sp)
    8000539c:	01010413          	addi	s0,sp,16
    static thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800053a0:	00000613          	li	a2,0
    800053a4:	00000597          	auipc	a1,0x0
    800053a8:	f2058593          	addi	a1,a1,-224 # 800052c4 <_ZL11workerBodyAPv>
    800053ac:	00007517          	auipc	a0,0x7
    800053b0:	ab450513          	addi	a0,a0,-1356 # 8000be60 <_ZZ18Threads_C_API_testvE7threads>
    800053b4:	ffffc097          	auipc	ra,0xffffc
    800053b8:	f44080e7          	jalr	-188(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    800053bc:	00004517          	auipc	a0,0x4
    800053c0:	f0450513          	addi	a0,a0,-252 # 800092c0 <CONSOLE_STATUS+0x2b0>
    800053c4:	00001097          	auipc	ra,0x1
    800053c8:	964080e7          	jalr	-1692(ra) # 80005d28 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800053cc:	00000613          	li	a2,0
    800053d0:	00000597          	auipc	a1,0x0
    800053d4:	e2058593          	addi	a1,a1,-480 # 800051f0 <_ZL11workerBodyBPv>
    800053d8:	00007517          	auipc	a0,0x7
    800053dc:	a9050513          	addi	a0,a0,-1392 # 8000be68 <_ZZ18Threads_C_API_testvE7threads+0x8>
    800053e0:	ffffc097          	auipc	ra,0xffffc
    800053e4:	f18080e7          	jalr	-232(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    800053e8:	00004517          	auipc	a0,0x4
    800053ec:	ef050513          	addi	a0,a0,-272 # 800092d8 <CONSOLE_STATUS+0x2c8>
    800053f0:	00001097          	auipc	ra,0x1
    800053f4:	938080e7          	jalr	-1736(ra) # 80005d28 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800053f8:	00000613          	li	a2,0
    800053fc:	00000597          	auipc	a1,0x0
    80005400:	c7458593          	addi	a1,a1,-908 # 80005070 <_ZL11workerBodyCPv>
    80005404:	00007517          	auipc	a0,0x7
    80005408:	a6c50513          	addi	a0,a0,-1428 # 8000be70 <_ZZ18Threads_C_API_testvE7threads+0x10>
    8000540c:	ffffc097          	auipc	ra,0xffffc
    80005410:	eec080e7          	jalr	-276(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80005414:	00004517          	auipc	a0,0x4
    80005418:	edc50513          	addi	a0,a0,-292 # 800092f0 <CONSOLE_STATUS+0x2e0>
    8000541c:	00001097          	auipc	ra,0x1
    80005420:	90c080e7          	jalr	-1780(ra) # 80005d28 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005424:	00000613          	li	a2,0
    80005428:	00000597          	auipc	a1,0x0
    8000542c:	b0058593          	addi	a1,a1,-1280 # 80004f28 <_ZL11workerBodyDPv>
    80005430:	00007517          	auipc	a0,0x7
    80005434:	a4850513          	addi	a0,a0,-1464 # 8000be78 <_ZZ18Threads_C_API_testvE7threads+0x18>
    80005438:	ffffc097          	auipc	ra,0xffffc
    8000543c:	ec0080e7          	jalr	-320(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80005440:	00004517          	auipc	a0,0x4
    80005444:	ec850513          	addi	a0,a0,-312 # 80009308 <CONSOLE_STATUS+0x2f8>
    80005448:	00001097          	auipc	ra,0x1
    8000544c:	8e0080e7          	jalr	-1824(ra) # 80005d28 <_Z11printStringPKc>
    80005450:	00c0006f          	j	8000545c <_Z18Threads_C_API_testv+0xcc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005454:	ffffc097          	auipc	ra,0xffffc
    80005458:	f78080e7          	jalr	-136(ra) # 800013cc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000545c:	00007797          	auipc	a5,0x7
    80005460:	9ff7c783          	lbu	a5,-1537(a5) # 8000be5b <_ZL9finishedA>
    80005464:	fe0788e3          	beqz	a5,80005454 <_Z18Threads_C_API_testv+0xc4>
    80005468:	00007797          	auipc	a5,0x7
    8000546c:	9f27c783          	lbu	a5,-1550(a5) # 8000be5a <_ZL9finishedB>
    80005470:	fe0782e3          	beqz	a5,80005454 <_Z18Threads_C_API_testv+0xc4>
    80005474:	00007797          	auipc	a5,0x7
    80005478:	9e57c783          	lbu	a5,-1563(a5) # 8000be59 <_ZL9finishedC>
    8000547c:	fc078ce3          	beqz	a5,80005454 <_Z18Threads_C_API_testv+0xc4>
    80005480:	00007797          	auipc	a5,0x7
    80005484:	9d87c783          	lbu	a5,-1576(a5) # 8000be58 <_ZL9finishedD>
    80005488:	fc0786e3          	beqz	a5,80005454 <_Z18Threads_C_API_testv+0xc4>
    }

}
    8000548c:	00813083          	ld	ra,8(sp)
    80005490:	00013403          	ld	s0,0(sp)
    80005494:	01010113          	addi	sp,sp,16
    80005498:	00008067          	ret

000000008000549c <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    8000549c:	fd010113          	addi	sp,sp,-48
    800054a0:	02113423          	sd	ra,40(sp)
    800054a4:	02813023          	sd	s0,32(sp)
    800054a8:	00913c23          	sd	s1,24(sp)
    800054ac:	01213823          	sd	s2,16(sp)
    800054b0:	01313423          	sd	s3,8(sp)
    800054b4:	03010413          	addi	s0,sp,48
    800054b8:	00050993          	mv	s3,a0
    800054bc:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800054c0:	00000913          	li	s2,0
    800054c4:	00c0006f          	j	800054d0 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800054c8:	ffffd097          	auipc	ra,0xffffd
    800054cc:	c10080e7          	jalr	-1008(ra) # 800020d8 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    800054d0:	ffffc097          	auipc	ra,0xffffc
    800054d4:	150080e7          	jalr	336(ra) # 80001620 <_Z4getcv>
    800054d8:	0005059b          	sext.w	a1,a0
    800054dc:	01b00793          	li	a5,27
    800054e0:	02f58a63          	beq	a1,a5,80005514 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    800054e4:	0084b503          	ld	a0,8(s1)
    800054e8:	00001097          	auipc	ra,0x1
    800054ec:	c64080e7          	jalr	-924(ra) # 8000614c <_ZN9BufferCPP3putEi>
        i++;
    800054f0:	0019071b          	addiw	a4,s2,1
    800054f4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800054f8:	0004a683          	lw	a3,0(s1)
    800054fc:	0026979b          	slliw	a5,a3,0x2
    80005500:	00d787bb          	addw	a5,a5,a3
    80005504:	0017979b          	slliw	a5,a5,0x1
    80005508:	02f767bb          	remw	a5,a4,a5
    8000550c:	fc0792e3          	bnez	a5,800054d0 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80005510:	fb9ff06f          	j	800054c8 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80005514:	00100793          	li	a5,1
    80005518:	00007717          	auipc	a4,0x7
    8000551c:	96f72423          	sw	a5,-1688(a4) # 8000be80 <_ZL9threadEnd>
    td->buffer->put('!');
    80005520:	0209b783          	ld	a5,32(s3)
    80005524:	02100593          	li	a1,33
    80005528:	0087b503          	ld	a0,8(a5)
    8000552c:	00001097          	auipc	ra,0x1
    80005530:	c20080e7          	jalr	-992(ra) # 8000614c <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80005534:	0104b503          	ld	a0,16(s1)
    80005538:	ffffd097          	auipc	ra,0xffffd
    8000553c:	c64080e7          	jalr	-924(ra) # 8000219c <_ZN9Semaphore6signalEv>
}
    80005540:	02813083          	ld	ra,40(sp)
    80005544:	02013403          	ld	s0,32(sp)
    80005548:	01813483          	ld	s1,24(sp)
    8000554c:	01013903          	ld	s2,16(sp)
    80005550:	00813983          	ld	s3,8(sp)
    80005554:	03010113          	addi	sp,sp,48
    80005558:	00008067          	ret

000000008000555c <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    8000555c:	fe010113          	addi	sp,sp,-32
    80005560:	00113c23          	sd	ra,24(sp)
    80005564:	00813823          	sd	s0,16(sp)
    80005568:	00913423          	sd	s1,8(sp)
    8000556c:	01213023          	sd	s2,0(sp)
    80005570:	02010413          	addi	s0,sp,32
    80005574:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005578:	00000913          	li	s2,0
    8000557c:	00c0006f          	j	80005588 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005580:	ffffd097          	auipc	ra,0xffffd
    80005584:	b58080e7          	jalr	-1192(ra) # 800020d8 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80005588:	00007797          	auipc	a5,0x7
    8000558c:	8f87a783          	lw	a5,-1800(a5) # 8000be80 <_ZL9threadEnd>
    80005590:	02079e63          	bnez	a5,800055cc <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80005594:	0004a583          	lw	a1,0(s1)
    80005598:	0305859b          	addiw	a1,a1,48
    8000559c:	0084b503          	ld	a0,8(s1)
    800055a0:	00001097          	auipc	ra,0x1
    800055a4:	bac080e7          	jalr	-1108(ra) # 8000614c <_ZN9BufferCPP3putEi>
        i++;
    800055a8:	0019071b          	addiw	a4,s2,1
    800055ac:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800055b0:	0004a683          	lw	a3,0(s1)
    800055b4:	0026979b          	slliw	a5,a3,0x2
    800055b8:	00d787bb          	addw	a5,a5,a3
    800055bc:	0017979b          	slliw	a5,a5,0x1
    800055c0:	02f767bb          	remw	a5,a4,a5
    800055c4:	fc0792e3          	bnez	a5,80005588 <_ZN12ProducerSync8producerEPv+0x2c>
    800055c8:	fb9ff06f          	j	80005580 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    800055cc:	0104b503          	ld	a0,16(s1)
    800055d0:	ffffd097          	auipc	ra,0xffffd
    800055d4:	bcc080e7          	jalr	-1076(ra) # 8000219c <_ZN9Semaphore6signalEv>
}
    800055d8:	01813083          	ld	ra,24(sp)
    800055dc:	01013403          	ld	s0,16(sp)
    800055e0:	00813483          	ld	s1,8(sp)
    800055e4:	00013903          	ld	s2,0(sp)
    800055e8:	02010113          	addi	sp,sp,32
    800055ec:	00008067          	ret

00000000800055f0 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    800055f0:	fd010113          	addi	sp,sp,-48
    800055f4:	02113423          	sd	ra,40(sp)
    800055f8:	02813023          	sd	s0,32(sp)
    800055fc:	00913c23          	sd	s1,24(sp)
    80005600:	01213823          	sd	s2,16(sp)
    80005604:	01313423          	sd	s3,8(sp)
    80005608:	01413023          	sd	s4,0(sp)
    8000560c:	03010413          	addi	s0,sp,48
    80005610:	00050993          	mv	s3,a0
    80005614:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005618:	00000a13          	li	s4,0
    8000561c:	01c0006f          	j	80005638 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80005620:	ffffd097          	auipc	ra,0xffffd
    80005624:	ab8080e7          	jalr	-1352(ra) # 800020d8 <_ZN6Thread8dispatchEv>
    80005628:	0500006f          	j	80005678 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    8000562c:	00a00513          	li	a0,10
    80005630:	ffffc097          	auipc	ra,0xffffc
    80005634:	03c080e7          	jalr	60(ra) # 8000166c <_Z4putcc>
    while (!threadEnd) {
    80005638:	00007797          	auipc	a5,0x7
    8000563c:	8487a783          	lw	a5,-1976(a5) # 8000be80 <_ZL9threadEnd>
    80005640:	06079263          	bnez	a5,800056a4 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80005644:	00893503          	ld	a0,8(s2)
    80005648:	00001097          	auipc	ra,0x1
    8000564c:	b94080e7          	jalr	-1132(ra) # 800061dc <_ZN9BufferCPP3getEv>
        i++;
    80005650:	001a049b          	addiw	s1,s4,1
    80005654:	00048a1b          	sext.w	s4,s1
        putc(key);
    80005658:	0ff57513          	andi	a0,a0,255
    8000565c:	ffffc097          	auipc	ra,0xffffc
    80005660:	010080e7          	jalr	16(ra) # 8000166c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80005664:	00092703          	lw	a4,0(s2)
    80005668:	0027179b          	slliw	a5,a4,0x2
    8000566c:	00e787bb          	addw	a5,a5,a4
    80005670:	02f4e7bb          	remw	a5,s1,a5
    80005674:	fa0786e3          	beqz	a5,80005620 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80005678:	05000793          	li	a5,80
    8000567c:	02f4e4bb          	remw	s1,s1,a5
    80005680:	fa049ce3          	bnez	s1,80005638 <_ZN12ConsumerSync8consumerEPv+0x48>
    80005684:	fa9ff06f          	j	8000562c <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80005688:	0209b783          	ld	a5,32(s3)
    8000568c:	0087b503          	ld	a0,8(a5)
    80005690:	00001097          	auipc	ra,0x1
    80005694:	b4c080e7          	jalr	-1204(ra) # 800061dc <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80005698:	0ff57513          	andi	a0,a0,255
    8000569c:	ffffd097          	auipc	ra,0xffffd
    800056a0:	c20080e7          	jalr	-992(ra) # 800022bc <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    800056a4:	0209b783          	ld	a5,32(s3)
    800056a8:	0087b503          	ld	a0,8(a5)
    800056ac:	00001097          	auipc	ra,0x1
    800056b0:	bbc080e7          	jalr	-1092(ra) # 80006268 <_ZN9BufferCPP6getCntEv>
    800056b4:	fca04ae3          	bgtz	a0,80005688 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    800056b8:	01093503          	ld	a0,16(s2)
    800056bc:	ffffd097          	auipc	ra,0xffffd
    800056c0:	ae0080e7          	jalr	-1312(ra) # 8000219c <_ZN9Semaphore6signalEv>
}
    800056c4:	02813083          	ld	ra,40(sp)
    800056c8:	02013403          	ld	s0,32(sp)
    800056cc:	01813483          	ld	s1,24(sp)
    800056d0:	01013903          	ld	s2,16(sp)
    800056d4:	00813983          	ld	s3,8(sp)
    800056d8:	00013a03          	ld	s4,0(sp)
    800056dc:	03010113          	addi	sp,sp,48
    800056e0:	00008067          	ret

00000000800056e4 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    800056e4:	f8010113          	addi	sp,sp,-128
    800056e8:	06113c23          	sd	ra,120(sp)
    800056ec:	06813823          	sd	s0,112(sp)
    800056f0:	06913423          	sd	s1,104(sp)
    800056f4:	07213023          	sd	s2,96(sp)
    800056f8:	05313c23          	sd	s3,88(sp)
    800056fc:	05413823          	sd	s4,80(sp)
    80005700:	05513423          	sd	s5,72(sp)
    80005704:	05613023          	sd	s6,64(sp)
    80005708:	03713c23          	sd	s7,56(sp)
    8000570c:	03813823          	sd	s8,48(sp)
    80005710:	03913423          	sd	s9,40(sp)
    80005714:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80005718:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    8000571c:	00004517          	auipc	a0,0x4
    80005720:	a2450513          	addi	a0,a0,-1500 # 80009140 <CONSOLE_STATUS+0x130>
    80005724:	00000097          	auipc	ra,0x0
    80005728:	604080e7          	jalr	1540(ra) # 80005d28 <_Z11printStringPKc>
    getString(input, 30);
    8000572c:	01e00593          	li	a1,30
    80005730:	f8040493          	addi	s1,s0,-128
    80005734:	00048513          	mv	a0,s1
    80005738:	00000097          	auipc	ra,0x0
    8000573c:	678080e7          	jalr	1656(ra) # 80005db0 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80005740:	00048513          	mv	a0,s1
    80005744:	00000097          	auipc	ra,0x0
    80005748:	744080e7          	jalr	1860(ra) # 80005e88 <_Z11stringToIntPKc>
    8000574c:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80005750:	00004517          	auipc	a0,0x4
    80005754:	a1050513          	addi	a0,a0,-1520 # 80009160 <CONSOLE_STATUS+0x150>
    80005758:	00000097          	auipc	ra,0x0
    8000575c:	5d0080e7          	jalr	1488(ra) # 80005d28 <_Z11printStringPKc>
    getString(input, 30);
    80005760:	01e00593          	li	a1,30
    80005764:	00048513          	mv	a0,s1
    80005768:	00000097          	auipc	ra,0x0
    8000576c:	648080e7          	jalr	1608(ra) # 80005db0 <_Z9getStringPci>
    n = stringToInt(input);
    80005770:	00048513          	mv	a0,s1
    80005774:	00000097          	auipc	ra,0x0
    80005778:	714080e7          	jalr	1812(ra) # 80005e88 <_Z11stringToIntPKc>
    8000577c:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80005780:	00004517          	auipc	a0,0x4
    80005784:	a0050513          	addi	a0,a0,-1536 # 80009180 <CONSOLE_STATUS+0x170>
    80005788:	00000097          	auipc	ra,0x0
    8000578c:	5a0080e7          	jalr	1440(ra) # 80005d28 <_Z11printStringPKc>
    80005790:	00000613          	li	a2,0
    80005794:	00a00593          	li	a1,10
    80005798:	00090513          	mv	a0,s2
    8000579c:	00000097          	auipc	ra,0x0
    800057a0:	73c080e7          	jalr	1852(ra) # 80005ed8 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800057a4:	00004517          	auipc	a0,0x4
    800057a8:	9f450513          	addi	a0,a0,-1548 # 80009198 <CONSOLE_STATUS+0x188>
    800057ac:	00000097          	auipc	ra,0x0
    800057b0:	57c080e7          	jalr	1404(ra) # 80005d28 <_Z11printStringPKc>
    800057b4:	00000613          	li	a2,0
    800057b8:	00a00593          	li	a1,10
    800057bc:	00048513          	mv	a0,s1
    800057c0:	00000097          	auipc	ra,0x0
    800057c4:	718080e7          	jalr	1816(ra) # 80005ed8 <_Z8printIntiii>
    printString(".\n");
    800057c8:	00004517          	auipc	a0,0x4
    800057cc:	9e850513          	addi	a0,a0,-1560 # 800091b0 <CONSOLE_STATUS+0x1a0>
    800057d0:	00000097          	auipc	ra,0x0
    800057d4:	558080e7          	jalr	1368(ra) # 80005d28 <_Z11printStringPKc>
    if(threadNum > n) {
    800057d8:	0324c463          	blt	s1,s2,80005800 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    800057dc:	03205c63          	blez	s2,80005814 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    800057e0:	03800513          	li	a0,56
    800057e4:	ffffc097          	auipc	ra,0xffffc
    800057e8:	78c080e7          	jalr	1932(ra) # 80001f70 <_Znwm>
    800057ec:	00050a93          	mv	s5,a0
    800057f0:	00048593          	mv	a1,s1
    800057f4:	00001097          	auipc	ra,0x1
    800057f8:	804080e7          	jalr	-2044(ra) # 80005ff8 <_ZN9BufferCPPC1Ei>
    800057fc:	0300006f          	j	8000582c <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005800:	00004517          	auipc	a0,0x4
    80005804:	9b850513          	addi	a0,a0,-1608 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80005808:	00000097          	auipc	ra,0x0
    8000580c:	520080e7          	jalr	1312(ra) # 80005d28 <_Z11printStringPKc>
        return;
    80005810:	0140006f          	j	80005824 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80005814:	00004517          	auipc	a0,0x4
    80005818:	9e450513          	addi	a0,a0,-1564 # 800091f8 <CONSOLE_STATUS+0x1e8>
    8000581c:	00000097          	auipc	ra,0x0
    80005820:	50c080e7          	jalr	1292(ra) # 80005d28 <_Z11printStringPKc>
        return;
    80005824:	000b8113          	mv	sp,s7
    80005828:	2380006f          	j	80005a60 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    8000582c:	01000513          	li	a0,16
    80005830:	ffffc097          	auipc	ra,0xffffc
    80005834:	740080e7          	jalr	1856(ra) # 80001f70 <_Znwm>
    80005838:	00050493          	mv	s1,a0
    8000583c:	00000593          	li	a1,0
    80005840:	ffffd097          	auipc	ra,0xffffd
    80005844:	8e8080e7          	jalr	-1816(ra) # 80002128 <_ZN9SemaphoreC1Ej>
    80005848:	00006797          	auipc	a5,0x6
    8000584c:	6497b023          	sd	s1,1600(a5) # 8000be88 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80005850:	00391793          	slli	a5,s2,0x3
    80005854:	00f78793          	addi	a5,a5,15
    80005858:	ff07f793          	andi	a5,a5,-16
    8000585c:	40f10133          	sub	sp,sp,a5
    80005860:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80005864:	0019071b          	addiw	a4,s2,1
    80005868:	00171793          	slli	a5,a4,0x1
    8000586c:	00e787b3          	add	a5,a5,a4
    80005870:	00379793          	slli	a5,a5,0x3
    80005874:	00f78793          	addi	a5,a5,15
    80005878:	ff07f793          	andi	a5,a5,-16
    8000587c:	40f10133          	sub	sp,sp,a5
    80005880:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80005884:	00191c13          	slli	s8,s2,0x1
    80005888:	012c07b3          	add	a5,s8,s2
    8000588c:	00379793          	slli	a5,a5,0x3
    80005890:	00fa07b3          	add	a5,s4,a5
    80005894:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80005898:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    8000589c:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    800058a0:	02800513          	li	a0,40
    800058a4:	ffffc097          	auipc	ra,0xffffc
    800058a8:	6cc080e7          	jalr	1740(ra) # 80001f70 <_Znwm>
    800058ac:	00050b13          	mv	s6,a0
    800058b0:	012c0c33          	add	s8,s8,s2
    800058b4:	003c1c13          	slli	s8,s8,0x3
    800058b8:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    800058bc:	ffffc097          	auipc	ra,0xffffc
    800058c0:	7b4080e7          	jalr	1972(ra) # 80002070 <_ZN6ThreadC1Ev>
    800058c4:	00006797          	auipc	a5,0x6
    800058c8:	43478793          	addi	a5,a5,1076 # 8000bcf8 <_ZTV12ConsumerSync+0x10>
    800058cc:	00fb3023          	sd	a5,0(s6)
    800058d0:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    800058d4:	000b0513          	mv	a0,s6
    800058d8:	ffffc097          	auipc	ra,0xffffc
    800058dc:	7c8080e7          	jalr	1992(ra) # 800020a0 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800058e0:	00000493          	li	s1,0
    800058e4:	0380006f          	j	8000591c <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800058e8:	00006797          	auipc	a5,0x6
    800058ec:	3e878793          	addi	a5,a5,1000 # 8000bcd0 <_ZTV12ProducerSync+0x10>
    800058f0:	00fcb023          	sd	a5,0(s9)
    800058f4:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    800058f8:	00349793          	slli	a5,s1,0x3
    800058fc:	00f987b3          	add	a5,s3,a5
    80005900:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80005904:	00349793          	slli	a5,s1,0x3
    80005908:	00f987b3          	add	a5,s3,a5
    8000590c:	0007b503          	ld	a0,0(a5)
    80005910:	ffffc097          	auipc	ra,0xffffc
    80005914:	790080e7          	jalr	1936(ra) # 800020a0 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005918:	0014849b          	addiw	s1,s1,1
    8000591c:	0b24d063          	bge	s1,s2,800059bc <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80005920:	00149793          	slli	a5,s1,0x1
    80005924:	009787b3          	add	a5,a5,s1
    80005928:	00379793          	slli	a5,a5,0x3
    8000592c:	00fa07b3          	add	a5,s4,a5
    80005930:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005934:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80005938:	00006717          	auipc	a4,0x6
    8000593c:	55073703          	ld	a4,1360(a4) # 8000be88 <_ZL10waitForAll>
    80005940:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80005944:	02905863          	blez	s1,80005974 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80005948:	02800513          	li	a0,40
    8000594c:	ffffc097          	auipc	ra,0xffffc
    80005950:	624080e7          	jalr	1572(ra) # 80001f70 <_Znwm>
    80005954:	00050c93          	mv	s9,a0
    80005958:	00149c13          	slli	s8,s1,0x1
    8000595c:	009c0c33          	add	s8,s8,s1
    80005960:	003c1c13          	slli	s8,s8,0x3
    80005964:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005968:	ffffc097          	auipc	ra,0xffffc
    8000596c:	708080e7          	jalr	1800(ra) # 80002070 <_ZN6ThreadC1Ev>
    80005970:	f79ff06f          	j	800058e8 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80005974:	02800513          	li	a0,40
    80005978:	ffffc097          	auipc	ra,0xffffc
    8000597c:	5f8080e7          	jalr	1528(ra) # 80001f70 <_Znwm>
    80005980:	00050c93          	mv	s9,a0
    80005984:	00149c13          	slli	s8,s1,0x1
    80005988:	009c0c33          	add	s8,s8,s1
    8000598c:	003c1c13          	slli	s8,s8,0x3
    80005990:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80005994:	ffffc097          	auipc	ra,0xffffc
    80005998:	6dc080e7          	jalr	1756(ra) # 80002070 <_ZN6ThreadC1Ev>
    8000599c:	00006797          	auipc	a5,0x6
    800059a0:	30c78793          	addi	a5,a5,780 # 8000bca8 <_ZTV16ProducerKeyboard+0x10>
    800059a4:	00fcb023          	sd	a5,0(s9)
    800059a8:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    800059ac:	00349793          	slli	a5,s1,0x3
    800059b0:	00f987b3          	add	a5,s3,a5
    800059b4:	0197b023          	sd	s9,0(a5)
    800059b8:	f4dff06f          	j	80005904 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    800059bc:	ffffc097          	auipc	ra,0xffffc
    800059c0:	71c080e7          	jalr	1820(ra) # 800020d8 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800059c4:	00000493          	li	s1,0
    800059c8:	00994e63          	blt	s2,s1,800059e4 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    800059cc:	00006517          	auipc	a0,0x6
    800059d0:	4bc53503          	ld	a0,1212(a0) # 8000be88 <_ZL10waitForAll>
    800059d4:	ffffc097          	auipc	ra,0xffffc
    800059d8:	790080e7          	jalr	1936(ra) # 80002164 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800059dc:	0014849b          	addiw	s1,s1,1
    800059e0:	fe9ff06f          	j	800059c8 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    800059e4:	00000493          	li	s1,0
    800059e8:	0080006f          	j	800059f0 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    800059ec:	0014849b          	addiw	s1,s1,1
    800059f0:	0324d263          	bge	s1,s2,80005a14 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    800059f4:	00349793          	slli	a5,s1,0x3
    800059f8:	00f987b3          	add	a5,s3,a5
    800059fc:	0007b503          	ld	a0,0(a5)
    80005a00:	fe0506e3          	beqz	a0,800059ec <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80005a04:	00053783          	ld	a5,0(a0)
    80005a08:	0087b783          	ld	a5,8(a5)
    80005a0c:	000780e7          	jalr	a5
    80005a10:	fddff06f          	j	800059ec <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80005a14:	000b0a63          	beqz	s6,80005a28 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80005a18:	000b3783          	ld	a5,0(s6)
    80005a1c:	0087b783          	ld	a5,8(a5)
    80005a20:	000b0513          	mv	a0,s6
    80005a24:	000780e7          	jalr	a5
    delete waitForAll;
    80005a28:	00006517          	auipc	a0,0x6
    80005a2c:	46053503          	ld	a0,1120(a0) # 8000be88 <_ZL10waitForAll>
    80005a30:	00050863          	beqz	a0,80005a40 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80005a34:	00053783          	ld	a5,0(a0)
    80005a38:	0087b783          	ld	a5,8(a5)
    80005a3c:	000780e7          	jalr	a5
    delete buffer;
    80005a40:	000a8e63          	beqz	s5,80005a5c <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80005a44:	000a8513          	mv	a0,s5
    80005a48:	00001097          	auipc	ra,0x1
    80005a4c:	8a8080e7          	jalr	-1880(ra) # 800062f0 <_ZN9BufferCPPD1Ev>
    80005a50:	000a8513          	mv	a0,s5
    80005a54:	ffffc097          	auipc	ra,0xffffc
    80005a58:	544080e7          	jalr	1348(ra) # 80001f98 <_ZdlPv>
    80005a5c:	000b8113          	mv	sp,s7

}
    80005a60:	f8040113          	addi	sp,s0,-128
    80005a64:	07813083          	ld	ra,120(sp)
    80005a68:	07013403          	ld	s0,112(sp)
    80005a6c:	06813483          	ld	s1,104(sp)
    80005a70:	06013903          	ld	s2,96(sp)
    80005a74:	05813983          	ld	s3,88(sp)
    80005a78:	05013a03          	ld	s4,80(sp)
    80005a7c:	04813a83          	ld	s5,72(sp)
    80005a80:	04013b03          	ld	s6,64(sp)
    80005a84:	03813b83          	ld	s7,56(sp)
    80005a88:	03013c03          	ld	s8,48(sp)
    80005a8c:	02813c83          	ld	s9,40(sp)
    80005a90:	08010113          	addi	sp,sp,128
    80005a94:	00008067          	ret
    80005a98:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80005a9c:	000a8513          	mv	a0,s5
    80005aa0:	ffffc097          	auipc	ra,0xffffc
    80005aa4:	4f8080e7          	jalr	1272(ra) # 80001f98 <_ZdlPv>
    80005aa8:	00048513          	mv	a0,s1
    80005aac:	00007097          	auipc	ra,0x7
    80005ab0:	4bc080e7          	jalr	1212(ra) # 8000cf68 <_Unwind_Resume>
    80005ab4:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80005ab8:	00048513          	mv	a0,s1
    80005abc:	ffffc097          	auipc	ra,0xffffc
    80005ac0:	4dc080e7          	jalr	1244(ra) # 80001f98 <_ZdlPv>
    80005ac4:	00090513          	mv	a0,s2
    80005ac8:	00007097          	auipc	ra,0x7
    80005acc:	4a0080e7          	jalr	1184(ra) # 8000cf68 <_Unwind_Resume>
    80005ad0:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80005ad4:	000b0513          	mv	a0,s6
    80005ad8:	ffffc097          	auipc	ra,0xffffc
    80005adc:	4c0080e7          	jalr	1216(ra) # 80001f98 <_ZdlPv>
    80005ae0:	00048513          	mv	a0,s1
    80005ae4:	00007097          	auipc	ra,0x7
    80005ae8:	484080e7          	jalr	1156(ra) # 8000cf68 <_Unwind_Resume>
    80005aec:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005af0:	000c8513          	mv	a0,s9
    80005af4:	ffffc097          	auipc	ra,0xffffc
    80005af8:	4a4080e7          	jalr	1188(ra) # 80001f98 <_ZdlPv>
    80005afc:	00048513          	mv	a0,s1
    80005b00:	00007097          	auipc	ra,0x7
    80005b04:	468080e7          	jalr	1128(ra) # 8000cf68 <_Unwind_Resume>
    80005b08:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005b0c:	000c8513          	mv	a0,s9
    80005b10:	ffffc097          	auipc	ra,0xffffc
    80005b14:	488080e7          	jalr	1160(ra) # 80001f98 <_ZdlPv>
    80005b18:	00048513          	mv	a0,s1
    80005b1c:	00007097          	auipc	ra,0x7
    80005b20:	44c080e7          	jalr	1100(ra) # 8000cf68 <_Unwind_Resume>

0000000080005b24 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005b24:	ff010113          	addi	sp,sp,-16
    80005b28:	00113423          	sd	ra,8(sp)
    80005b2c:	00813023          	sd	s0,0(sp)
    80005b30:	01010413          	addi	s0,sp,16
    80005b34:	00006797          	auipc	a5,0x6
    80005b38:	1c478793          	addi	a5,a5,452 # 8000bcf8 <_ZTV12ConsumerSync+0x10>
    80005b3c:	00f53023          	sd	a5,0(a0)
    80005b40:	ffffc097          	auipc	ra,0xffffc
    80005b44:	398080e7          	jalr	920(ra) # 80001ed8 <_ZN6ThreadD1Ev>
    80005b48:	00813083          	ld	ra,8(sp)
    80005b4c:	00013403          	ld	s0,0(sp)
    80005b50:	01010113          	addi	sp,sp,16
    80005b54:	00008067          	ret

0000000080005b58 <_ZN12ConsumerSyncD0Ev>:
    80005b58:	fe010113          	addi	sp,sp,-32
    80005b5c:	00113c23          	sd	ra,24(sp)
    80005b60:	00813823          	sd	s0,16(sp)
    80005b64:	00913423          	sd	s1,8(sp)
    80005b68:	02010413          	addi	s0,sp,32
    80005b6c:	00050493          	mv	s1,a0
    80005b70:	00006797          	auipc	a5,0x6
    80005b74:	18878793          	addi	a5,a5,392 # 8000bcf8 <_ZTV12ConsumerSync+0x10>
    80005b78:	00f53023          	sd	a5,0(a0)
    80005b7c:	ffffc097          	auipc	ra,0xffffc
    80005b80:	35c080e7          	jalr	860(ra) # 80001ed8 <_ZN6ThreadD1Ev>
    80005b84:	00048513          	mv	a0,s1
    80005b88:	ffffc097          	auipc	ra,0xffffc
    80005b8c:	410080e7          	jalr	1040(ra) # 80001f98 <_ZdlPv>
    80005b90:	01813083          	ld	ra,24(sp)
    80005b94:	01013403          	ld	s0,16(sp)
    80005b98:	00813483          	ld	s1,8(sp)
    80005b9c:	02010113          	addi	sp,sp,32
    80005ba0:	00008067          	ret

0000000080005ba4 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80005ba4:	ff010113          	addi	sp,sp,-16
    80005ba8:	00113423          	sd	ra,8(sp)
    80005bac:	00813023          	sd	s0,0(sp)
    80005bb0:	01010413          	addi	s0,sp,16
    80005bb4:	00006797          	auipc	a5,0x6
    80005bb8:	11c78793          	addi	a5,a5,284 # 8000bcd0 <_ZTV12ProducerSync+0x10>
    80005bbc:	00f53023          	sd	a5,0(a0)
    80005bc0:	ffffc097          	auipc	ra,0xffffc
    80005bc4:	318080e7          	jalr	792(ra) # 80001ed8 <_ZN6ThreadD1Ev>
    80005bc8:	00813083          	ld	ra,8(sp)
    80005bcc:	00013403          	ld	s0,0(sp)
    80005bd0:	01010113          	addi	sp,sp,16
    80005bd4:	00008067          	ret

0000000080005bd8 <_ZN12ProducerSyncD0Ev>:
    80005bd8:	fe010113          	addi	sp,sp,-32
    80005bdc:	00113c23          	sd	ra,24(sp)
    80005be0:	00813823          	sd	s0,16(sp)
    80005be4:	00913423          	sd	s1,8(sp)
    80005be8:	02010413          	addi	s0,sp,32
    80005bec:	00050493          	mv	s1,a0
    80005bf0:	00006797          	auipc	a5,0x6
    80005bf4:	0e078793          	addi	a5,a5,224 # 8000bcd0 <_ZTV12ProducerSync+0x10>
    80005bf8:	00f53023          	sd	a5,0(a0)
    80005bfc:	ffffc097          	auipc	ra,0xffffc
    80005c00:	2dc080e7          	jalr	732(ra) # 80001ed8 <_ZN6ThreadD1Ev>
    80005c04:	00048513          	mv	a0,s1
    80005c08:	ffffc097          	auipc	ra,0xffffc
    80005c0c:	390080e7          	jalr	912(ra) # 80001f98 <_ZdlPv>
    80005c10:	01813083          	ld	ra,24(sp)
    80005c14:	01013403          	ld	s0,16(sp)
    80005c18:	00813483          	ld	s1,8(sp)
    80005c1c:	02010113          	addi	sp,sp,32
    80005c20:	00008067          	ret

0000000080005c24 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005c24:	ff010113          	addi	sp,sp,-16
    80005c28:	00113423          	sd	ra,8(sp)
    80005c2c:	00813023          	sd	s0,0(sp)
    80005c30:	01010413          	addi	s0,sp,16
    80005c34:	00006797          	auipc	a5,0x6
    80005c38:	07478793          	addi	a5,a5,116 # 8000bca8 <_ZTV16ProducerKeyboard+0x10>
    80005c3c:	00f53023          	sd	a5,0(a0)
    80005c40:	ffffc097          	auipc	ra,0xffffc
    80005c44:	298080e7          	jalr	664(ra) # 80001ed8 <_ZN6ThreadD1Ev>
    80005c48:	00813083          	ld	ra,8(sp)
    80005c4c:	00013403          	ld	s0,0(sp)
    80005c50:	01010113          	addi	sp,sp,16
    80005c54:	00008067          	ret

0000000080005c58 <_ZN16ProducerKeyboardD0Ev>:
    80005c58:	fe010113          	addi	sp,sp,-32
    80005c5c:	00113c23          	sd	ra,24(sp)
    80005c60:	00813823          	sd	s0,16(sp)
    80005c64:	00913423          	sd	s1,8(sp)
    80005c68:	02010413          	addi	s0,sp,32
    80005c6c:	00050493          	mv	s1,a0
    80005c70:	00006797          	auipc	a5,0x6
    80005c74:	03878793          	addi	a5,a5,56 # 8000bca8 <_ZTV16ProducerKeyboard+0x10>
    80005c78:	00f53023          	sd	a5,0(a0)
    80005c7c:	ffffc097          	auipc	ra,0xffffc
    80005c80:	25c080e7          	jalr	604(ra) # 80001ed8 <_ZN6ThreadD1Ev>
    80005c84:	00048513          	mv	a0,s1
    80005c88:	ffffc097          	auipc	ra,0xffffc
    80005c8c:	310080e7          	jalr	784(ra) # 80001f98 <_ZdlPv>
    80005c90:	01813083          	ld	ra,24(sp)
    80005c94:	01013403          	ld	s0,16(sp)
    80005c98:	00813483          	ld	s1,8(sp)
    80005c9c:	02010113          	addi	sp,sp,32
    80005ca0:	00008067          	ret

0000000080005ca4 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80005ca4:	ff010113          	addi	sp,sp,-16
    80005ca8:	00113423          	sd	ra,8(sp)
    80005cac:	00813023          	sd	s0,0(sp)
    80005cb0:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80005cb4:	02053583          	ld	a1,32(a0)
    80005cb8:	fffff097          	auipc	ra,0xfffff
    80005cbc:	7e4080e7          	jalr	2020(ra) # 8000549c <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005cc0:	00813083          	ld	ra,8(sp)
    80005cc4:	00013403          	ld	s0,0(sp)
    80005cc8:	01010113          	addi	sp,sp,16
    80005ccc:	00008067          	ret

0000000080005cd0 <_ZN12ProducerSync3runEv>:
    void run() override {
    80005cd0:	ff010113          	addi	sp,sp,-16
    80005cd4:	00113423          	sd	ra,8(sp)
    80005cd8:	00813023          	sd	s0,0(sp)
    80005cdc:	01010413          	addi	s0,sp,16
        producer(td);
    80005ce0:	02053583          	ld	a1,32(a0)
    80005ce4:	00000097          	auipc	ra,0x0
    80005ce8:	878080e7          	jalr	-1928(ra) # 8000555c <_ZN12ProducerSync8producerEPv>
    }
    80005cec:	00813083          	ld	ra,8(sp)
    80005cf0:	00013403          	ld	s0,0(sp)
    80005cf4:	01010113          	addi	sp,sp,16
    80005cf8:	00008067          	ret

0000000080005cfc <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005cfc:	ff010113          	addi	sp,sp,-16
    80005d00:	00113423          	sd	ra,8(sp)
    80005d04:	00813023          	sd	s0,0(sp)
    80005d08:	01010413          	addi	s0,sp,16
        consumer(td);
    80005d0c:	02053583          	ld	a1,32(a0)
    80005d10:	00000097          	auipc	ra,0x0
    80005d14:	8e0080e7          	jalr	-1824(ra) # 800055f0 <_ZN12ConsumerSync8consumerEPv>
    }
    80005d18:	00813083          	ld	ra,8(sp)
    80005d1c:	00013403          	ld	s0,0(sp)
    80005d20:	01010113          	addi	sp,sp,16
    80005d24:	00008067          	ret

0000000080005d28 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005d28:	fe010113          	addi	sp,sp,-32
    80005d2c:	00113c23          	sd	ra,24(sp)
    80005d30:	00813823          	sd	s0,16(sp)
    80005d34:	00913423          	sd	s1,8(sp)
    80005d38:	02010413          	addi	s0,sp,32
    80005d3c:	00050493          	mv	s1,a0
    LOCK();
    80005d40:	00100613          	li	a2,1
    80005d44:	00000593          	li	a1,0
    80005d48:	00006517          	auipc	a0,0x6
    80005d4c:	14850513          	addi	a0,a0,328 # 8000be90 <lockPrint>
    80005d50:	ffffb097          	auipc	ra,0xffffb
    80005d54:	4cc080e7          	jalr	1228(ra) # 8000121c <copy_and_swap>
    80005d58:	00050863          	beqz	a0,80005d68 <_Z11printStringPKc+0x40>
    80005d5c:	ffffb097          	auipc	ra,0xffffb
    80005d60:	670080e7          	jalr	1648(ra) # 800013cc <_Z15thread_dispatchv>
    80005d64:	fddff06f          	j	80005d40 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005d68:	0004c503          	lbu	a0,0(s1)
    80005d6c:	00050a63          	beqz	a0,80005d80 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005d70:	ffffc097          	auipc	ra,0xffffc
    80005d74:	8fc080e7          	jalr	-1796(ra) # 8000166c <_Z4putcc>
        string++;
    80005d78:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005d7c:	fedff06f          	j	80005d68 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005d80:	00000613          	li	a2,0
    80005d84:	00100593          	li	a1,1
    80005d88:	00006517          	auipc	a0,0x6
    80005d8c:	10850513          	addi	a0,a0,264 # 8000be90 <lockPrint>
    80005d90:	ffffb097          	auipc	ra,0xffffb
    80005d94:	48c080e7          	jalr	1164(ra) # 8000121c <copy_and_swap>
    80005d98:	fe0514e3          	bnez	a0,80005d80 <_Z11printStringPKc+0x58>
}
    80005d9c:	01813083          	ld	ra,24(sp)
    80005da0:	01013403          	ld	s0,16(sp)
    80005da4:	00813483          	ld	s1,8(sp)
    80005da8:	02010113          	addi	sp,sp,32
    80005dac:	00008067          	ret

0000000080005db0 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005db0:	fd010113          	addi	sp,sp,-48
    80005db4:	02113423          	sd	ra,40(sp)
    80005db8:	02813023          	sd	s0,32(sp)
    80005dbc:	00913c23          	sd	s1,24(sp)
    80005dc0:	01213823          	sd	s2,16(sp)
    80005dc4:	01313423          	sd	s3,8(sp)
    80005dc8:	01413023          	sd	s4,0(sp)
    80005dcc:	03010413          	addi	s0,sp,48
    80005dd0:	00050993          	mv	s3,a0
    80005dd4:	00058a13          	mv	s4,a1
    LOCK();
    80005dd8:	00100613          	li	a2,1
    80005ddc:	00000593          	li	a1,0
    80005de0:	00006517          	auipc	a0,0x6
    80005de4:	0b050513          	addi	a0,a0,176 # 8000be90 <lockPrint>
    80005de8:	ffffb097          	auipc	ra,0xffffb
    80005dec:	434080e7          	jalr	1076(ra) # 8000121c <copy_and_swap>
    80005df0:	00050863          	beqz	a0,80005e00 <_Z9getStringPci+0x50>
    80005df4:	ffffb097          	auipc	ra,0xffffb
    80005df8:	5d8080e7          	jalr	1496(ra) # 800013cc <_Z15thread_dispatchv>
    80005dfc:	fddff06f          	j	80005dd8 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005e00:	00000913          	li	s2,0
    80005e04:	00090493          	mv	s1,s2
    80005e08:	0019091b          	addiw	s2,s2,1
    80005e0c:	03495a63          	bge	s2,s4,80005e40 <_Z9getStringPci+0x90>
        cc = getc();
    80005e10:	ffffc097          	auipc	ra,0xffffc
    80005e14:	810080e7          	jalr	-2032(ra) # 80001620 <_Z4getcv>
        if(cc < 1)
    80005e18:	02050463          	beqz	a0,80005e40 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005e1c:	009984b3          	add	s1,s3,s1
    80005e20:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005e24:	00a00793          	li	a5,10
    80005e28:	00f50a63          	beq	a0,a5,80005e3c <_Z9getStringPci+0x8c>
    80005e2c:	00d00793          	li	a5,13
    80005e30:	fcf51ae3          	bne	a0,a5,80005e04 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80005e34:	00090493          	mv	s1,s2
    80005e38:	0080006f          	j	80005e40 <_Z9getStringPci+0x90>
    80005e3c:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005e40:	009984b3          	add	s1,s3,s1
    80005e44:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005e48:	00000613          	li	a2,0
    80005e4c:	00100593          	li	a1,1
    80005e50:	00006517          	auipc	a0,0x6
    80005e54:	04050513          	addi	a0,a0,64 # 8000be90 <lockPrint>
    80005e58:	ffffb097          	auipc	ra,0xffffb
    80005e5c:	3c4080e7          	jalr	964(ra) # 8000121c <copy_and_swap>
    80005e60:	fe0514e3          	bnez	a0,80005e48 <_Z9getStringPci+0x98>
    return buf;
}
    80005e64:	00098513          	mv	a0,s3
    80005e68:	02813083          	ld	ra,40(sp)
    80005e6c:	02013403          	ld	s0,32(sp)
    80005e70:	01813483          	ld	s1,24(sp)
    80005e74:	01013903          	ld	s2,16(sp)
    80005e78:	00813983          	ld	s3,8(sp)
    80005e7c:	00013a03          	ld	s4,0(sp)
    80005e80:	03010113          	addi	sp,sp,48
    80005e84:	00008067          	ret

0000000080005e88 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005e88:	ff010113          	addi	sp,sp,-16
    80005e8c:	00813423          	sd	s0,8(sp)
    80005e90:	01010413          	addi	s0,sp,16
    80005e94:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005e98:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005e9c:	0006c603          	lbu	a2,0(a3)
    80005ea0:	fd06071b          	addiw	a4,a2,-48
    80005ea4:	0ff77713          	andi	a4,a4,255
    80005ea8:	00900793          	li	a5,9
    80005eac:	02e7e063          	bltu	a5,a4,80005ecc <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005eb0:	0025179b          	slliw	a5,a0,0x2
    80005eb4:	00a787bb          	addw	a5,a5,a0
    80005eb8:	0017979b          	slliw	a5,a5,0x1
    80005ebc:	00168693          	addi	a3,a3,1
    80005ec0:	00c787bb          	addw	a5,a5,a2
    80005ec4:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005ec8:	fd5ff06f          	j	80005e9c <_Z11stringToIntPKc+0x14>
    return n;
}
    80005ecc:	00813403          	ld	s0,8(sp)
    80005ed0:	01010113          	addi	sp,sp,16
    80005ed4:	00008067          	ret

0000000080005ed8 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005ed8:	fc010113          	addi	sp,sp,-64
    80005edc:	02113c23          	sd	ra,56(sp)
    80005ee0:	02813823          	sd	s0,48(sp)
    80005ee4:	02913423          	sd	s1,40(sp)
    80005ee8:	03213023          	sd	s2,32(sp)
    80005eec:	01313c23          	sd	s3,24(sp)
    80005ef0:	04010413          	addi	s0,sp,64
    80005ef4:	00050493          	mv	s1,a0
    80005ef8:	00058913          	mv	s2,a1
    80005efc:	00060993          	mv	s3,a2
    LOCK();
    80005f00:	00100613          	li	a2,1
    80005f04:	00000593          	li	a1,0
    80005f08:	00006517          	auipc	a0,0x6
    80005f0c:	f8850513          	addi	a0,a0,-120 # 8000be90 <lockPrint>
    80005f10:	ffffb097          	auipc	ra,0xffffb
    80005f14:	30c080e7          	jalr	780(ra) # 8000121c <copy_and_swap>
    80005f18:	00050863          	beqz	a0,80005f28 <_Z8printIntiii+0x50>
    80005f1c:	ffffb097          	auipc	ra,0xffffb
    80005f20:	4b0080e7          	jalr	1200(ra) # 800013cc <_Z15thread_dispatchv>
    80005f24:	fddff06f          	j	80005f00 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005f28:	00098463          	beqz	s3,80005f30 <_Z8printIntiii+0x58>
    80005f2c:	0804c463          	bltz	s1,80005fb4 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005f30:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005f34:	00000593          	li	a1,0
    }

    i = 0;
    80005f38:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005f3c:	0009079b          	sext.w	a5,s2
    80005f40:	0325773b          	remuw	a4,a0,s2
    80005f44:	00048613          	mv	a2,s1
    80005f48:	0014849b          	addiw	s1,s1,1
    80005f4c:	02071693          	slli	a3,a4,0x20
    80005f50:	0206d693          	srli	a3,a3,0x20
    80005f54:	00006717          	auipc	a4,0x6
    80005f58:	dbc70713          	addi	a4,a4,-580 # 8000bd10 <digits>
    80005f5c:	00d70733          	add	a4,a4,a3
    80005f60:	00074683          	lbu	a3,0(a4)
    80005f64:	fd040713          	addi	a4,s0,-48
    80005f68:	00c70733          	add	a4,a4,a2
    80005f6c:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005f70:	0005071b          	sext.w	a4,a0
    80005f74:	0325553b          	divuw	a0,a0,s2
    80005f78:	fcf772e3          	bgeu	a4,a5,80005f3c <_Z8printIntiii+0x64>
    if(neg)
    80005f7c:	00058c63          	beqz	a1,80005f94 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005f80:	fd040793          	addi	a5,s0,-48
    80005f84:	009784b3          	add	s1,a5,s1
    80005f88:	02d00793          	li	a5,45
    80005f8c:	fef48823          	sb	a5,-16(s1)
    80005f90:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005f94:	fff4849b          	addiw	s1,s1,-1
    80005f98:	0204c463          	bltz	s1,80005fc0 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80005f9c:	fd040793          	addi	a5,s0,-48
    80005fa0:	009787b3          	add	a5,a5,s1
    80005fa4:	ff07c503          	lbu	a0,-16(a5)
    80005fa8:	ffffb097          	auipc	ra,0xffffb
    80005fac:	6c4080e7          	jalr	1732(ra) # 8000166c <_Z4putcc>
    80005fb0:	fe5ff06f          	j	80005f94 <_Z8printIntiii+0xbc>
        x = -xx;
    80005fb4:	4090053b          	negw	a0,s1
        neg = 1;
    80005fb8:	00100593          	li	a1,1
        x = -xx;
    80005fbc:	f7dff06f          	j	80005f38 <_Z8printIntiii+0x60>

    UNLOCK();
    80005fc0:	00000613          	li	a2,0
    80005fc4:	00100593          	li	a1,1
    80005fc8:	00006517          	auipc	a0,0x6
    80005fcc:	ec850513          	addi	a0,a0,-312 # 8000be90 <lockPrint>
    80005fd0:	ffffb097          	auipc	ra,0xffffb
    80005fd4:	24c080e7          	jalr	588(ra) # 8000121c <copy_and_swap>
    80005fd8:	fe0514e3          	bnez	a0,80005fc0 <_Z8printIntiii+0xe8>
    80005fdc:	03813083          	ld	ra,56(sp)
    80005fe0:	03013403          	ld	s0,48(sp)
    80005fe4:	02813483          	ld	s1,40(sp)
    80005fe8:	02013903          	ld	s2,32(sp)
    80005fec:	01813983          	ld	s3,24(sp)
    80005ff0:	04010113          	addi	sp,sp,64
    80005ff4:	00008067          	ret

0000000080005ff8 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005ff8:	fd010113          	addi	sp,sp,-48
    80005ffc:	02113423          	sd	ra,40(sp)
    80006000:	02813023          	sd	s0,32(sp)
    80006004:	00913c23          	sd	s1,24(sp)
    80006008:	01213823          	sd	s2,16(sp)
    8000600c:	01313423          	sd	s3,8(sp)
    80006010:	03010413          	addi	s0,sp,48
    80006014:	00050493          	mv	s1,a0
    80006018:	00058913          	mv	s2,a1
    8000601c:	0015879b          	addiw	a5,a1,1
    80006020:	0007851b          	sext.w	a0,a5
    80006024:	00f4a023          	sw	a5,0(s1)
    80006028:	0004a823          	sw	zero,16(s1)
    8000602c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006030:	00251513          	slli	a0,a0,0x2
    80006034:	ffffb097          	auipc	ra,0xffffb
    80006038:	224080e7          	jalr	548(ra) # 80001258 <_Z9mem_allocm>
    8000603c:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80006040:	01000513          	li	a0,16
    80006044:	ffffc097          	auipc	ra,0xffffc
    80006048:	f2c080e7          	jalr	-212(ra) # 80001f70 <_Znwm>
    8000604c:	00050993          	mv	s3,a0
    80006050:	00000593          	li	a1,0
    80006054:	ffffc097          	auipc	ra,0xffffc
    80006058:	0d4080e7          	jalr	212(ra) # 80002128 <_ZN9SemaphoreC1Ej>
    8000605c:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80006060:	01000513          	li	a0,16
    80006064:	ffffc097          	auipc	ra,0xffffc
    80006068:	f0c080e7          	jalr	-244(ra) # 80001f70 <_Znwm>
    8000606c:	00050993          	mv	s3,a0
    80006070:	00090593          	mv	a1,s2
    80006074:	ffffc097          	auipc	ra,0xffffc
    80006078:	0b4080e7          	jalr	180(ra) # 80002128 <_ZN9SemaphoreC1Ej>
    8000607c:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80006080:	01000513          	li	a0,16
    80006084:	ffffc097          	auipc	ra,0xffffc
    80006088:	eec080e7          	jalr	-276(ra) # 80001f70 <_Znwm>
    8000608c:	00050913          	mv	s2,a0
    80006090:	00100593          	li	a1,1
    80006094:	ffffc097          	auipc	ra,0xffffc
    80006098:	094080e7          	jalr	148(ra) # 80002128 <_ZN9SemaphoreC1Ej>
    8000609c:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800060a0:	01000513          	li	a0,16
    800060a4:	ffffc097          	auipc	ra,0xffffc
    800060a8:	ecc080e7          	jalr	-308(ra) # 80001f70 <_Znwm>
    800060ac:	00050913          	mv	s2,a0
    800060b0:	00100593          	li	a1,1
    800060b4:	ffffc097          	auipc	ra,0xffffc
    800060b8:	074080e7          	jalr	116(ra) # 80002128 <_ZN9SemaphoreC1Ej>
    800060bc:	0324b823          	sd	s2,48(s1)
}
    800060c0:	02813083          	ld	ra,40(sp)
    800060c4:	02013403          	ld	s0,32(sp)
    800060c8:	01813483          	ld	s1,24(sp)
    800060cc:	01013903          	ld	s2,16(sp)
    800060d0:	00813983          	ld	s3,8(sp)
    800060d4:	03010113          	addi	sp,sp,48
    800060d8:	00008067          	ret
    800060dc:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    800060e0:	00098513          	mv	a0,s3
    800060e4:	ffffc097          	auipc	ra,0xffffc
    800060e8:	eb4080e7          	jalr	-332(ra) # 80001f98 <_ZdlPv>
    800060ec:	00048513          	mv	a0,s1
    800060f0:	00007097          	auipc	ra,0x7
    800060f4:	e78080e7          	jalr	-392(ra) # 8000cf68 <_Unwind_Resume>
    800060f8:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    800060fc:	00098513          	mv	a0,s3
    80006100:	ffffc097          	auipc	ra,0xffffc
    80006104:	e98080e7          	jalr	-360(ra) # 80001f98 <_ZdlPv>
    80006108:	00048513          	mv	a0,s1
    8000610c:	00007097          	auipc	ra,0x7
    80006110:	e5c080e7          	jalr	-420(ra) # 8000cf68 <_Unwind_Resume>
    80006114:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80006118:	00090513          	mv	a0,s2
    8000611c:	ffffc097          	auipc	ra,0xffffc
    80006120:	e7c080e7          	jalr	-388(ra) # 80001f98 <_ZdlPv>
    80006124:	00048513          	mv	a0,s1
    80006128:	00007097          	auipc	ra,0x7
    8000612c:	e40080e7          	jalr	-448(ra) # 8000cf68 <_Unwind_Resume>
    80006130:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80006134:	00090513          	mv	a0,s2
    80006138:	ffffc097          	auipc	ra,0xffffc
    8000613c:	e60080e7          	jalr	-416(ra) # 80001f98 <_ZdlPv>
    80006140:	00048513          	mv	a0,s1
    80006144:	00007097          	auipc	ra,0x7
    80006148:	e24080e7          	jalr	-476(ra) # 8000cf68 <_Unwind_Resume>

000000008000614c <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    8000614c:	fe010113          	addi	sp,sp,-32
    80006150:	00113c23          	sd	ra,24(sp)
    80006154:	00813823          	sd	s0,16(sp)
    80006158:	00913423          	sd	s1,8(sp)
    8000615c:	01213023          	sd	s2,0(sp)
    80006160:	02010413          	addi	s0,sp,32
    80006164:	00050493          	mv	s1,a0
    80006168:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    8000616c:	01853503          	ld	a0,24(a0)
    80006170:	ffffc097          	auipc	ra,0xffffc
    80006174:	ff4080e7          	jalr	-12(ra) # 80002164 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80006178:	0304b503          	ld	a0,48(s1)
    8000617c:	ffffc097          	auipc	ra,0xffffc
    80006180:	fe8080e7          	jalr	-24(ra) # 80002164 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80006184:	0084b783          	ld	a5,8(s1)
    80006188:	0144a703          	lw	a4,20(s1)
    8000618c:	00271713          	slli	a4,a4,0x2
    80006190:	00e787b3          	add	a5,a5,a4
    80006194:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006198:	0144a783          	lw	a5,20(s1)
    8000619c:	0017879b          	addiw	a5,a5,1
    800061a0:	0004a703          	lw	a4,0(s1)
    800061a4:	02e7e7bb          	remw	a5,a5,a4
    800061a8:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800061ac:	0304b503          	ld	a0,48(s1)
    800061b0:	ffffc097          	auipc	ra,0xffffc
    800061b4:	fec080e7          	jalr	-20(ra) # 8000219c <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    800061b8:	0204b503          	ld	a0,32(s1)
    800061bc:	ffffc097          	auipc	ra,0xffffc
    800061c0:	fe0080e7          	jalr	-32(ra) # 8000219c <_ZN9Semaphore6signalEv>

}
    800061c4:	01813083          	ld	ra,24(sp)
    800061c8:	01013403          	ld	s0,16(sp)
    800061cc:	00813483          	ld	s1,8(sp)
    800061d0:	00013903          	ld	s2,0(sp)
    800061d4:	02010113          	addi	sp,sp,32
    800061d8:	00008067          	ret

00000000800061dc <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    800061dc:	fe010113          	addi	sp,sp,-32
    800061e0:	00113c23          	sd	ra,24(sp)
    800061e4:	00813823          	sd	s0,16(sp)
    800061e8:	00913423          	sd	s1,8(sp)
    800061ec:	01213023          	sd	s2,0(sp)
    800061f0:	02010413          	addi	s0,sp,32
    800061f4:	00050493          	mv	s1,a0
    itemAvailable->wait();
    800061f8:	02053503          	ld	a0,32(a0)
    800061fc:	ffffc097          	auipc	ra,0xffffc
    80006200:	f68080e7          	jalr	-152(ra) # 80002164 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80006204:	0284b503          	ld	a0,40(s1)
    80006208:	ffffc097          	auipc	ra,0xffffc
    8000620c:	f5c080e7          	jalr	-164(ra) # 80002164 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80006210:	0084b703          	ld	a4,8(s1)
    80006214:	0104a783          	lw	a5,16(s1)
    80006218:	00279693          	slli	a3,a5,0x2
    8000621c:	00d70733          	add	a4,a4,a3
    80006220:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006224:	0017879b          	addiw	a5,a5,1
    80006228:	0004a703          	lw	a4,0(s1)
    8000622c:	02e7e7bb          	remw	a5,a5,a4
    80006230:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80006234:	0284b503          	ld	a0,40(s1)
    80006238:	ffffc097          	auipc	ra,0xffffc
    8000623c:	f64080e7          	jalr	-156(ra) # 8000219c <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80006240:	0184b503          	ld	a0,24(s1)
    80006244:	ffffc097          	auipc	ra,0xffffc
    80006248:	f58080e7          	jalr	-168(ra) # 8000219c <_ZN9Semaphore6signalEv>

    return ret;
}
    8000624c:	00090513          	mv	a0,s2
    80006250:	01813083          	ld	ra,24(sp)
    80006254:	01013403          	ld	s0,16(sp)
    80006258:	00813483          	ld	s1,8(sp)
    8000625c:	00013903          	ld	s2,0(sp)
    80006260:	02010113          	addi	sp,sp,32
    80006264:	00008067          	ret

0000000080006268 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80006268:	fe010113          	addi	sp,sp,-32
    8000626c:	00113c23          	sd	ra,24(sp)
    80006270:	00813823          	sd	s0,16(sp)
    80006274:	00913423          	sd	s1,8(sp)
    80006278:	01213023          	sd	s2,0(sp)
    8000627c:	02010413          	addi	s0,sp,32
    80006280:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80006284:	02853503          	ld	a0,40(a0)
    80006288:	ffffc097          	auipc	ra,0xffffc
    8000628c:	edc080e7          	jalr	-292(ra) # 80002164 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80006290:	0304b503          	ld	a0,48(s1)
    80006294:	ffffc097          	auipc	ra,0xffffc
    80006298:	ed0080e7          	jalr	-304(ra) # 80002164 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    8000629c:	0144a783          	lw	a5,20(s1)
    800062a0:	0104a903          	lw	s2,16(s1)
    800062a4:	0327ce63          	blt	a5,s2,800062e0 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    800062a8:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800062ac:	0304b503          	ld	a0,48(s1)
    800062b0:	ffffc097          	auipc	ra,0xffffc
    800062b4:	eec080e7          	jalr	-276(ra) # 8000219c <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    800062b8:	0284b503          	ld	a0,40(s1)
    800062bc:	ffffc097          	auipc	ra,0xffffc
    800062c0:	ee0080e7          	jalr	-288(ra) # 8000219c <_ZN9Semaphore6signalEv>

    return ret;
}
    800062c4:	00090513          	mv	a0,s2
    800062c8:	01813083          	ld	ra,24(sp)
    800062cc:	01013403          	ld	s0,16(sp)
    800062d0:	00813483          	ld	s1,8(sp)
    800062d4:	00013903          	ld	s2,0(sp)
    800062d8:	02010113          	addi	sp,sp,32
    800062dc:	00008067          	ret
        ret = cap - head + tail;
    800062e0:	0004a703          	lw	a4,0(s1)
    800062e4:	4127093b          	subw	s2,a4,s2
    800062e8:	00f9093b          	addw	s2,s2,a5
    800062ec:	fc1ff06f          	j	800062ac <_ZN9BufferCPP6getCntEv+0x44>

00000000800062f0 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    800062f0:	fe010113          	addi	sp,sp,-32
    800062f4:	00113c23          	sd	ra,24(sp)
    800062f8:	00813823          	sd	s0,16(sp)
    800062fc:	00913423          	sd	s1,8(sp)
    80006300:	02010413          	addi	s0,sp,32
    80006304:	00050493          	mv	s1,a0
    Console::putc('\n');
    80006308:	00a00513          	li	a0,10
    8000630c:	ffffc097          	auipc	ra,0xffffc
    80006310:	fb0080e7          	jalr	-80(ra) # 800022bc <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80006314:	00003517          	auipc	a0,0x3
    80006318:	00c50513          	addi	a0,a0,12 # 80009320 <CONSOLE_STATUS+0x310>
    8000631c:	00000097          	auipc	ra,0x0
    80006320:	a0c080e7          	jalr	-1524(ra) # 80005d28 <_Z11printStringPKc>
    while (getCnt()) {
    80006324:	00048513          	mv	a0,s1
    80006328:	00000097          	auipc	ra,0x0
    8000632c:	f40080e7          	jalr	-192(ra) # 80006268 <_ZN9BufferCPP6getCntEv>
    80006330:	02050c63          	beqz	a0,80006368 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80006334:	0084b783          	ld	a5,8(s1)
    80006338:	0104a703          	lw	a4,16(s1)
    8000633c:	00271713          	slli	a4,a4,0x2
    80006340:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80006344:	0007c503          	lbu	a0,0(a5)
    80006348:	ffffc097          	auipc	ra,0xffffc
    8000634c:	f74080e7          	jalr	-140(ra) # 800022bc <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80006350:	0104a783          	lw	a5,16(s1)
    80006354:	0017879b          	addiw	a5,a5,1
    80006358:	0004a703          	lw	a4,0(s1)
    8000635c:	02e7e7bb          	remw	a5,a5,a4
    80006360:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80006364:	fc1ff06f          	j	80006324 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80006368:	02100513          	li	a0,33
    8000636c:	ffffc097          	auipc	ra,0xffffc
    80006370:	f50080e7          	jalr	-176(ra) # 800022bc <_ZN7Console4putcEc>
    Console::putc('\n');
    80006374:	00a00513          	li	a0,10
    80006378:	ffffc097          	auipc	ra,0xffffc
    8000637c:	f44080e7          	jalr	-188(ra) # 800022bc <_ZN7Console4putcEc>
    mem_free(buffer);
    80006380:	0084b503          	ld	a0,8(s1)
    80006384:	ffffb097          	auipc	ra,0xffffb
    80006388:	f28080e7          	jalr	-216(ra) # 800012ac <_Z8mem_freePv>
    delete itemAvailable;
    8000638c:	0204b503          	ld	a0,32(s1)
    80006390:	00050863          	beqz	a0,800063a0 <_ZN9BufferCPPD1Ev+0xb0>
    80006394:	00053783          	ld	a5,0(a0)
    80006398:	0087b783          	ld	a5,8(a5)
    8000639c:	000780e7          	jalr	a5
    delete spaceAvailable;
    800063a0:	0184b503          	ld	a0,24(s1)
    800063a4:	00050863          	beqz	a0,800063b4 <_ZN9BufferCPPD1Ev+0xc4>
    800063a8:	00053783          	ld	a5,0(a0)
    800063ac:	0087b783          	ld	a5,8(a5)
    800063b0:	000780e7          	jalr	a5
    delete mutexTail;
    800063b4:	0304b503          	ld	a0,48(s1)
    800063b8:	00050863          	beqz	a0,800063c8 <_ZN9BufferCPPD1Ev+0xd8>
    800063bc:	00053783          	ld	a5,0(a0)
    800063c0:	0087b783          	ld	a5,8(a5)
    800063c4:	000780e7          	jalr	a5
    delete mutexHead;
    800063c8:	0284b503          	ld	a0,40(s1)
    800063cc:	00050863          	beqz	a0,800063dc <_ZN9BufferCPPD1Ev+0xec>
    800063d0:	00053783          	ld	a5,0(a0)
    800063d4:	0087b783          	ld	a5,8(a5)
    800063d8:	000780e7          	jalr	a5
}
    800063dc:	01813083          	ld	ra,24(sp)
    800063e0:	01013403          	ld	s0,16(sp)
    800063e4:	00813483          	ld	s1,8(sp)
    800063e8:	02010113          	addi	sp,sp,32
    800063ec:	00008067          	ret

00000000800063f0 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    800063f0:	fe010113          	addi	sp,sp,-32
    800063f4:	00113c23          	sd	ra,24(sp)
    800063f8:	00813823          	sd	s0,16(sp)
    800063fc:	00913423          	sd	s1,8(sp)
    80006400:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80006404:	00003517          	auipc	a0,0x3
    80006408:	f4450513          	addi	a0,a0,-188 # 80009348 <CONSOLE_STATUS+0x338>
    8000640c:	00000097          	auipc	ra,0x0
    80006410:	91c080e7          	jalr	-1764(ra) # 80005d28 <_Z11printStringPKc>
    int test = getc() - '0';
    80006414:	ffffb097          	auipc	ra,0xffffb
    80006418:	20c080e7          	jalr	524(ra) # 80001620 <_Z4getcv>
    8000641c:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80006420:	ffffb097          	auipc	ra,0xffffb
    80006424:	200080e7          	jalr	512(ra) # 80001620 <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80006428:	00700793          	li	a5,7
    8000642c:	1097e263          	bltu	a5,s1,80006530 <_Z8userMainv+0x140>
    80006430:	00249493          	slli	s1,s1,0x2
    80006434:	00003717          	auipc	a4,0x3
    80006438:	16c70713          	addi	a4,a4,364 # 800095a0 <CONSOLE_STATUS+0x590>
    8000643c:	00e484b3          	add	s1,s1,a4
    80006440:	0004a783          	lw	a5,0(s1)
    80006444:	00e787b3          	add	a5,a5,a4
    80006448:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    8000644c:	fffff097          	auipc	ra,0xfffff
    80006450:	f44080e7          	jalr	-188(ra) # 80005390 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80006454:	00003517          	auipc	a0,0x3
    80006458:	f1450513          	addi	a0,a0,-236 # 80009368 <CONSOLE_STATUS+0x358>
    8000645c:	00000097          	auipc	ra,0x0
    80006460:	8cc080e7          	jalr	-1844(ra) # 80005d28 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80006464:	01813083          	ld	ra,24(sp)
    80006468:	01013403          	ld	s0,16(sp)
    8000646c:	00813483          	ld	s1,8(sp)
    80006470:	02010113          	addi	sp,sp,32
    80006474:	00008067          	ret
            Threads_CPP_API_test();
    80006478:	ffffe097          	auipc	ra,0xffffe
    8000647c:	ad8080e7          	jalr	-1320(ra) # 80003f50 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80006480:	00003517          	auipc	a0,0x3
    80006484:	f2850513          	addi	a0,a0,-216 # 800093a8 <CONSOLE_STATUS+0x398>
    80006488:	00000097          	auipc	ra,0x0
    8000648c:	8a0080e7          	jalr	-1888(ra) # 80005d28 <_Z11printStringPKc>
            break;
    80006490:	fd5ff06f          	j	80006464 <_Z8userMainv+0x74>
            producerConsumer_C_API();
    80006494:	ffffd097          	auipc	ra,0xffffd
    80006498:	310080e7          	jalr	784(ra) # 800037a4 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    8000649c:	00003517          	auipc	a0,0x3
    800064a0:	f4c50513          	addi	a0,a0,-180 # 800093e8 <CONSOLE_STATUS+0x3d8>
    800064a4:	00000097          	auipc	ra,0x0
    800064a8:	884080e7          	jalr	-1916(ra) # 80005d28 <_Z11printStringPKc>
            break;
    800064ac:	fb9ff06f          	j	80006464 <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    800064b0:	fffff097          	auipc	ra,0xfffff
    800064b4:	234080e7          	jalr	564(ra) # 800056e4 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    800064b8:	00003517          	auipc	a0,0x3
    800064bc:	f8050513          	addi	a0,a0,-128 # 80009438 <CONSOLE_STATUS+0x428>
    800064c0:	00000097          	auipc	ra,0x0
    800064c4:	868080e7          	jalr	-1944(ra) # 80005d28 <_Z11printStringPKc>
            break;
    800064c8:	f9dff06f          	j	80006464 <_Z8userMainv+0x74>
            testSleeping();
    800064cc:	00000097          	auipc	ra,0x0
    800064d0:	11c080e7          	jalr	284(ra) # 800065e8 <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    800064d4:	00003517          	auipc	a0,0x3
    800064d8:	fbc50513          	addi	a0,a0,-68 # 80009490 <CONSOLE_STATUS+0x480>
    800064dc:	00000097          	auipc	ra,0x0
    800064e0:	84c080e7          	jalr	-1972(ra) # 80005d28 <_Z11printStringPKc>
            break;
    800064e4:	f81ff06f          	j	80006464 <_Z8userMainv+0x74>
            testConsumerProducer();
    800064e8:	ffffe097          	auipc	ra,0xffffe
    800064ec:	f28080e7          	jalr	-216(ra) # 80004410 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    800064f0:	00003517          	auipc	a0,0x3
    800064f4:	fd050513          	addi	a0,a0,-48 # 800094c0 <CONSOLE_STATUS+0x4b0>
    800064f8:	00000097          	auipc	ra,0x0
    800064fc:	830080e7          	jalr	-2000(ra) # 80005d28 <_Z11printStringPKc>
            break;
    80006500:	f65ff06f          	j	80006464 <_Z8userMainv+0x74>
            System_Mode_test();
    80006504:	00000097          	auipc	ra,0x0
    80006508:	658080e7          	jalr	1624(ra) # 80006b5c <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    8000650c:	00003517          	auipc	a0,0x3
    80006510:	ff450513          	addi	a0,a0,-12 # 80009500 <CONSOLE_STATUS+0x4f0>
    80006514:	00000097          	auipc	ra,0x0
    80006518:	814080e7          	jalr	-2028(ra) # 80005d28 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    8000651c:	00003517          	auipc	a0,0x3
    80006520:	00450513          	addi	a0,a0,4 # 80009520 <CONSOLE_STATUS+0x510>
    80006524:	00000097          	auipc	ra,0x0
    80006528:	804080e7          	jalr	-2044(ra) # 80005d28 <_Z11printStringPKc>
            break;
    8000652c:	f39ff06f          	j	80006464 <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    80006530:	00003517          	auipc	a0,0x3
    80006534:	04850513          	addi	a0,a0,72 # 80009578 <CONSOLE_STATUS+0x568>
    80006538:	fffff097          	auipc	ra,0xfffff
    8000653c:	7f0080e7          	jalr	2032(ra) # 80005d28 <_Z11printStringPKc>
    80006540:	f25ff06f          	j	80006464 <_Z8userMainv+0x74>

0000000080006544 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80006544:	fe010113          	addi	sp,sp,-32
    80006548:	00113c23          	sd	ra,24(sp)
    8000654c:	00813823          	sd	s0,16(sp)
    80006550:	00913423          	sd	s1,8(sp)
    80006554:	01213023          	sd	s2,0(sp)
    80006558:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    8000655c:	00053903          	ld	s2,0(a0)
    int i = 6;
    80006560:	00600493          	li	s1,6
    while (--i > 0) {
    80006564:	fff4849b          	addiw	s1,s1,-1
    80006568:	04905463          	blez	s1,800065b0 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    8000656c:	00003517          	auipc	a0,0x3
    80006570:	05450513          	addi	a0,a0,84 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80006574:	fffff097          	auipc	ra,0xfffff
    80006578:	7b4080e7          	jalr	1972(ra) # 80005d28 <_Z11printStringPKc>
        printInt(sleep_time);
    8000657c:	00000613          	li	a2,0
    80006580:	00a00593          	li	a1,10
    80006584:	0009051b          	sext.w	a0,s2
    80006588:	00000097          	auipc	ra,0x0
    8000658c:	950080e7          	jalr	-1712(ra) # 80005ed8 <_Z8printIntiii>
        printString(" !\n");
    80006590:	00003517          	auipc	a0,0x3
    80006594:	03850513          	addi	a0,a0,56 # 800095c8 <CONSOLE_STATUS+0x5b8>
    80006598:	fffff097          	auipc	ra,0xfffff
    8000659c:	790080e7          	jalr	1936(ra) # 80005d28 <_Z11printStringPKc>
        time_sleep(sleep_time);
    800065a0:	00090513          	mv	a0,s2
    800065a4:	ffffb097          	auipc	ra,0xffffb
    800065a8:	030080e7          	jalr	48(ra) # 800015d4 <_Z10time_sleepm>
    while (--i > 0) {
    800065ac:	fb9ff06f          	j	80006564 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    800065b0:	00a00793          	li	a5,10
    800065b4:	02f95933          	divu	s2,s2,a5
    800065b8:	fff90913          	addi	s2,s2,-1
    800065bc:	00006797          	auipc	a5,0x6
    800065c0:	8dc78793          	addi	a5,a5,-1828 # 8000be98 <_ZL8finished>
    800065c4:	01278933          	add	s2,a5,s2
    800065c8:	00100793          	li	a5,1
    800065cc:	00f90023          	sb	a5,0(s2)
}
    800065d0:	01813083          	ld	ra,24(sp)
    800065d4:	01013403          	ld	s0,16(sp)
    800065d8:	00813483          	ld	s1,8(sp)
    800065dc:	00013903          	ld	s2,0(sp)
    800065e0:	02010113          	addi	sp,sp,32
    800065e4:	00008067          	ret

00000000800065e8 <_Z12testSleepingv>:

void testSleeping() {
    800065e8:	fc010113          	addi	sp,sp,-64
    800065ec:	02113c23          	sd	ra,56(sp)
    800065f0:	02813823          	sd	s0,48(sp)
    800065f4:	02913423          	sd	s1,40(sp)
    800065f8:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    800065fc:	00a00793          	li	a5,10
    80006600:	fcf43823          	sd	a5,-48(s0)
    80006604:	01400793          	li	a5,20
    80006608:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    8000660c:	00000493          	li	s1,0
    80006610:	02c0006f          	j	8000663c <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80006614:	00349793          	slli	a5,s1,0x3
    80006618:	fd040613          	addi	a2,s0,-48
    8000661c:	00f60633          	add	a2,a2,a5
    80006620:	00000597          	auipc	a1,0x0
    80006624:	f2458593          	addi	a1,a1,-220 # 80006544 <_ZL9sleepyRunPv>
    80006628:	fc040513          	addi	a0,s0,-64
    8000662c:	00f50533          	add	a0,a0,a5
    80006630:	ffffb097          	auipc	ra,0xffffb
    80006634:	cc8080e7          	jalr	-824(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80006638:	0014849b          	addiw	s1,s1,1
    8000663c:	00100793          	li	a5,1
    80006640:	fc97dae3          	bge	a5,s1,80006614 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80006644:	00006797          	auipc	a5,0x6
    80006648:	8547c783          	lbu	a5,-1964(a5) # 8000be98 <_ZL8finished>
    8000664c:	fe078ce3          	beqz	a5,80006644 <_Z12testSleepingv+0x5c>
    80006650:	00006797          	auipc	a5,0x6
    80006654:	8497c783          	lbu	a5,-1975(a5) # 8000be99 <_ZL8finished+0x1>
    80006658:	fe0786e3          	beqz	a5,80006644 <_Z12testSleepingv+0x5c>
}
    8000665c:	03813083          	ld	ra,56(sp)
    80006660:	03013403          	ld	s0,48(sp)
    80006664:	02813483          	ld	s1,40(sp)
    80006668:	04010113          	addi	sp,sp,64
    8000666c:	00008067          	ret

0000000080006670 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80006670:	fe010113          	addi	sp,sp,-32
    80006674:	00113c23          	sd	ra,24(sp)
    80006678:	00813823          	sd	s0,16(sp)
    8000667c:	00913423          	sd	s1,8(sp)
    80006680:	01213023          	sd	s2,0(sp)
    80006684:	02010413          	addi	s0,sp,32
    80006688:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000668c:	00100793          	li	a5,1
    80006690:	02a7f863          	bgeu	a5,a0,800066c0 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80006694:	00a00793          	li	a5,10
    80006698:	02f577b3          	remu	a5,a0,a5
    8000669c:	02078e63          	beqz	a5,800066d8 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800066a0:	fff48513          	addi	a0,s1,-1
    800066a4:	00000097          	auipc	ra,0x0
    800066a8:	fcc080e7          	jalr	-52(ra) # 80006670 <_ZL9fibonaccim>
    800066ac:	00050913          	mv	s2,a0
    800066b0:	ffe48513          	addi	a0,s1,-2
    800066b4:	00000097          	auipc	ra,0x0
    800066b8:	fbc080e7          	jalr	-68(ra) # 80006670 <_ZL9fibonaccim>
    800066bc:	00a90533          	add	a0,s2,a0
}
    800066c0:	01813083          	ld	ra,24(sp)
    800066c4:	01013403          	ld	s0,16(sp)
    800066c8:	00813483          	ld	s1,8(sp)
    800066cc:	00013903          	ld	s2,0(sp)
    800066d0:	02010113          	addi	sp,sp,32
    800066d4:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800066d8:	ffffb097          	auipc	ra,0xffffb
    800066dc:	cf4080e7          	jalr	-780(ra) # 800013cc <_Z15thread_dispatchv>
    800066e0:	fc1ff06f          	j	800066a0 <_ZL9fibonaccim+0x30>

00000000800066e4 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800066e4:	fe010113          	addi	sp,sp,-32
    800066e8:	00113c23          	sd	ra,24(sp)
    800066ec:	00813823          	sd	s0,16(sp)
    800066f0:	00913423          	sd	s1,8(sp)
    800066f4:	01213023          	sd	s2,0(sp)
    800066f8:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800066fc:	00a00493          	li	s1,10
    80006700:	0400006f          	j	80006740 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006704:	00003517          	auipc	a0,0x3
    80006708:	b8450513          	addi	a0,a0,-1148 # 80009288 <CONSOLE_STATUS+0x278>
    8000670c:	fffff097          	auipc	ra,0xfffff
    80006710:	61c080e7          	jalr	1564(ra) # 80005d28 <_Z11printStringPKc>
    80006714:	00000613          	li	a2,0
    80006718:	00a00593          	li	a1,10
    8000671c:	00048513          	mv	a0,s1
    80006720:	fffff097          	auipc	ra,0xfffff
    80006724:	7b8080e7          	jalr	1976(ra) # 80005ed8 <_Z8printIntiii>
    80006728:	00003517          	auipc	a0,0x3
    8000672c:	d6050513          	addi	a0,a0,-672 # 80009488 <CONSOLE_STATUS+0x478>
    80006730:	fffff097          	auipc	ra,0xfffff
    80006734:	5f8080e7          	jalr	1528(ra) # 80005d28 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80006738:	0014849b          	addiw	s1,s1,1
    8000673c:	0ff4f493          	andi	s1,s1,255
    80006740:	00c00793          	li	a5,12
    80006744:	fc97f0e3          	bgeu	a5,s1,80006704 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80006748:	00003517          	auipc	a0,0x3
    8000674c:	b4850513          	addi	a0,a0,-1208 # 80009290 <CONSOLE_STATUS+0x280>
    80006750:	fffff097          	auipc	ra,0xfffff
    80006754:	5d8080e7          	jalr	1496(ra) # 80005d28 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80006758:	00500313          	li	t1,5
    thread_dispatch();
    8000675c:	ffffb097          	auipc	ra,0xffffb
    80006760:	c70080e7          	jalr	-912(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80006764:	01000513          	li	a0,16
    80006768:	00000097          	auipc	ra,0x0
    8000676c:	f08080e7          	jalr	-248(ra) # 80006670 <_ZL9fibonaccim>
    80006770:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80006774:	00003517          	auipc	a0,0x3
    80006778:	b2c50513          	addi	a0,a0,-1236 # 800092a0 <CONSOLE_STATUS+0x290>
    8000677c:	fffff097          	auipc	ra,0xfffff
    80006780:	5ac080e7          	jalr	1452(ra) # 80005d28 <_Z11printStringPKc>
    80006784:	00000613          	li	a2,0
    80006788:	00a00593          	li	a1,10
    8000678c:	0009051b          	sext.w	a0,s2
    80006790:	fffff097          	auipc	ra,0xfffff
    80006794:	748080e7          	jalr	1864(ra) # 80005ed8 <_Z8printIntiii>
    80006798:	00003517          	auipc	a0,0x3
    8000679c:	cf050513          	addi	a0,a0,-784 # 80009488 <CONSOLE_STATUS+0x478>
    800067a0:	fffff097          	auipc	ra,0xfffff
    800067a4:	588080e7          	jalr	1416(ra) # 80005d28 <_Z11printStringPKc>
    800067a8:	0400006f          	j	800067e8 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800067ac:	00003517          	auipc	a0,0x3
    800067b0:	adc50513          	addi	a0,a0,-1316 # 80009288 <CONSOLE_STATUS+0x278>
    800067b4:	fffff097          	auipc	ra,0xfffff
    800067b8:	574080e7          	jalr	1396(ra) # 80005d28 <_Z11printStringPKc>
    800067bc:	00000613          	li	a2,0
    800067c0:	00a00593          	li	a1,10
    800067c4:	00048513          	mv	a0,s1
    800067c8:	fffff097          	auipc	ra,0xfffff
    800067cc:	710080e7          	jalr	1808(ra) # 80005ed8 <_Z8printIntiii>
    800067d0:	00003517          	auipc	a0,0x3
    800067d4:	cb850513          	addi	a0,a0,-840 # 80009488 <CONSOLE_STATUS+0x478>
    800067d8:	fffff097          	auipc	ra,0xfffff
    800067dc:	550080e7          	jalr	1360(ra) # 80005d28 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800067e0:	0014849b          	addiw	s1,s1,1
    800067e4:	0ff4f493          	andi	s1,s1,255
    800067e8:	00f00793          	li	a5,15
    800067ec:	fc97f0e3          	bgeu	a5,s1,800067ac <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800067f0:	00003517          	auipc	a0,0x3
    800067f4:	ac050513          	addi	a0,a0,-1344 # 800092b0 <CONSOLE_STATUS+0x2a0>
    800067f8:	fffff097          	auipc	ra,0xfffff
    800067fc:	530080e7          	jalr	1328(ra) # 80005d28 <_Z11printStringPKc>
    finishedD = true;
    80006800:	00100793          	li	a5,1
    80006804:	00005717          	auipc	a4,0x5
    80006808:	68f70b23          	sb	a5,1686(a4) # 8000be9a <_ZL9finishedD>
    thread_dispatch();
    8000680c:	ffffb097          	auipc	ra,0xffffb
    80006810:	bc0080e7          	jalr	-1088(ra) # 800013cc <_Z15thread_dispatchv>
}
    80006814:	01813083          	ld	ra,24(sp)
    80006818:	01013403          	ld	s0,16(sp)
    8000681c:	00813483          	ld	s1,8(sp)
    80006820:	00013903          	ld	s2,0(sp)
    80006824:	02010113          	addi	sp,sp,32
    80006828:	00008067          	ret

000000008000682c <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    8000682c:	fe010113          	addi	sp,sp,-32
    80006830:	00113c23          	sd	ra,24(sp)
    80006834:	00813823          	sd	s0,16(sp)
    80006838:	00913423          	sd	s1,8(sp)
    8000683c:	01213023          	sd	s2,0(sp)
    80006840:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80006844:	00000493          	li	s1,0
    80006848:	0400006f          	j	80006888 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    8000684c:	00003517          	auipc	a0,0x3
    80006850:	a0c50513          	addi	a0,a0,-1524 # 80009258 <CONSOLE_STATUS+0x248>
    80006854:	fffff097          	auipc	ra,0xfffff
    80006858:	4d4080e7          	jalr	1236(ra) # 80005d28 <_Z11printStringPKc>
    8000685c:	00000613          	li	a2,0
    80006860:	00a00593          	li	a1,10
    80006864:	00048513          	mv	a0,s1
    80006868:	fffff097          	auipc	ra,0xfffff
    8000686c:	670080e7          	jalr	1648(ra) # 80005ed8 <_Z8printIntiii>
    80006870:	00003517          	auipc	a0,0x3
    80006874:	c1850513          	addi	a0,a0,-1000 # 80009488 <CONSOLE_STATUS+0x478>
    80006878:	fffff097          	auipc	ra,0xfffff
    8000687c:	4b0080e7          	jalr	1200(ra) # 80005d28 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80006880:	0014849b          	addiw	s1,s1,1
    80006884:	0ff4f493          	andi	s1,s1,255
    80006888:	00200793          	li	a5,2
    8000688c:	fc97f0e3          	bgeu	a5,s1,8000684c <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80006890:	00003517          	auipc	a0,0x3
    80006894:	9d050513          	addi	a0,a0,-1584 # 80009260 <CONSOLE_STATUS+0x250>
    80006898:	fffff097          	auipc	ra,0xfffff
    8000689c:	490080e7          	jalr	1168(ra) # 80005d28 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800068a0:	00700313          	li	t1,7
    thread_dispatch();
    800068a4:	ffffb097          	auipc	ra,0xffffb
    800068a8:	b28080e7          	jalr	-1240(ra) # 800013cc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800068ac:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800068b0:	00003517          	auipc	a0,0x3
    800068b4:	9c050513          	addi	a0,a0,-1600 # 80009270 <CONSOLE_STATUS+0x260>
    800068b8:	fffff097          	auipc	ra,0xfffff
    800068bc:	470080e7          	jalr	1136(ra) # 80005d28 <_Z11printStringPKc>
    800068c0:	00000613          	li	a2,0
    800068c4:	00a00593          	li	a1,10
    800068c8:	0009051b          	sext.w	a0,s2
    800068cc:	fffff097          	auipc	ra,0xfffff
    800068d0:	60c080e7          	jalr	1548(ra) # 80005ed8 <_Z8printIntiii>
    800068d4:	00003517          	auipc	a0,0x3
    800068d8:	bb450513          	addi	a0,a0,-1100 # 80009488 <CONSOLE_STATUS+0x478>
    800068dc:	fffff097          	auipc	ra,0xfffff
    800068e0:	44c080e7          	jalr	1100(ra) # 80005d28 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800068e4:	00c00513          	li	a0,12
    800068e8:	00000097          	auipc	ra,0x0
    800068ec:	d88080e7          	jalr	-632(ra) # 80006670 <_ZL9fibonaccim>
    800068f0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800068f4:	00003517          	auipc	a0,0x3
    800068f8:	98450513          	addi	a0,a0,-1660 # 80009278 <CONSOLE_STATUS+0x268>
    800068fc:	fffff097          	auipc	ra,0xfffff
    80006900:	42c080e7          	jalr	1068(ra) # 80005d28 <_Z11printStringPKc>
    80006904:	00000613          	li	a2,0
    80006908:	00a00593          	li	a1,10
    8000690c:	0009051b          	sext.w	a0,s2
    80006910:	fffff097          	auipc	ra,0xfffff
    80006914:	5c8080e7          	jalr	1480(ra) # 80005ed8 <_Z8printIntiii>
    80006918:	00003517          	auipc	a0,0x3
    8000691c:	b7050513          	addi	a0,a0,-1168 # 80009488 <CONSOLE_STATUS+0x478>
    80006920:	fffff097          	auipc	ra,0xfffff
    80006924:	408080e7          	jalr	1032(ra) # 80005d28 <_Z11printStringPKc>
    80006928:	0400006f          	j	80006968 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    8000692c:	00003517          	auipc	a0,0x3
    80006930:	92c50513          	addi	a0,a0,-1748 # 80009258 <CONSOLE_STATUS+0x248>
    80006934:	fffff097          	auipc	ra,0xfffff
    80006938:	3f4080e7          	jalr	1012(ra) # 80005d28 <_Z11printStringPKc>
    8000693c:	00000613          	li	a2,0
    80006940:	00a00593          	li	a1,10
    80006944:	00048513          	mv	a0,s1
    80006948:	fffff097          	auipc	ra,0xfffff
    8000694c:	590080e7          	jalr	1424(ra) # 80005ed8 <_Z8printIntiii>
    80006950:	00003517          	auipc	a0,0x3
    80006954:	b3850513          	addi	a0,a0,-1224 # 80009488 <CONSOLE_STATUS+0x478>
    80006958:	fffff097          	auipc	ra,0xfffff
    8000695c:	3d0080e7          	jalr	976(ra) # 80005d28 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80006960:	0014849b          	addiw	s1,s1,1
    80006964:	0ff4f493          	andi	s1,s1,255
    80006968:	00500793          	li	a5,5
    8000696c:	fc97f0e3          	bgeu	a5,s1,8000692c <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80006970:	00003517          	auipc	a0,0x3
    80006974:	8c050513          	addi	a0,a0,-1856 # 80009230 <CONSOLE_STATUS+0x220>
    80006978:	fffff097          	auipc	ra,0xfffff
    8000697c:	3b0080e7          	jalr	944(ra) # 80005d28 <_Z11printStringPKc>
    finishedC = true;
    80006980:	00100793          	li	a5,1
    80006984:	00005717          	auipc	a4,0x5
    80006988:	50f70ba3          	sb	a5,1303(a4) # 8000be9b <_ZL9finishedC>
    thread_dispatch();
    8000698c:	ffffb097          	auipc	ra,0xffffb
    80006990:	a40080e7          	jalr	-1472(ra) # 800013cc <_Z15thread_dispatchv>
}
    80006994:	01813083          	ld	ra,24(sp)
    80006998:	01013403          	ld	s0,16(sp)
    8000699c:	00813483          	ld	s1,8(sp)
    800069a0:	00013903          	ld	s2,0(sp)
    800069a4:	02010113          	addi	sp,sp,32
    800069a8:	00008067          	ret

00000000800069ac <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800069ac:	fe010113          	addi	sp,sp,-32
    800069b0:	00113c23          	sd	ra,24(sp)
    800069b4:	00813823          	sd	s0,16(sp)
    800069b8:	00913423          	sd	s1,8(sp)
    800069bc:	01213023          	sd	s2,0(sp)
    800069c0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800069c4:	00000913          	li	s2,0
    800069c8:	0400006f          	j	80006a08 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    800069cc:	ffffb097          	auipc	ra,0xffffb
    800069d0:	a00080e7          	jalr	-1536(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800069d4:	00148493          	addi	s1,s1,1
    800069d8:	000027b7          	lui	a5,0x2
    800069dc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800069e0:	0097ee63          	bltu	a5,s1,800069fc <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800069e4:	00000713          	li	a4,0
    800069e8:	000077b7          	lui	a5,0x7
    800069ec:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800069f0:	fce7eee3          	bltu	a5,a4,800069cc <_ZL11workerBodyBPv+0x20>
    800069f4:	00170713          	addi	a4,a4,1
    800069f8:	ff1ff06f          	j	800069e8 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    800069fc:	00a00793          	li	a5,10
    80006a00:	04f90663          	beq	s2,a5,80006a4c <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80006a04:	00190913          	addi	s2,s2,1
    80006a08:	00f00793          	li	a5,15
    80006a0c:	0527e463          	bltu	a5,s2,80006a54 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80006a10:	00003517          	auipc	a0,0x3
    80006a14:	83050513          	addi	a0,a0,-2000 # 80009240 <CONSOLE_STATUS+0x230>
    80006a18:	fffff097          	auipc	ra,0xfffff
    80006a1c:	310080e7          	jalr	784(ra) # 80005d28 <_Z11printStringPKc>
    80006a20:	00000613          	li	a2,0
    80006a24:	00a00593          	li	a1,10
    80006a28:	0009051b          	sext.w	a0,s2
    80006a2c:	fffff097          	auipc	ra,0xfffff
    80006a30:	4ac080e7          	jalr	1196(ra) # 80005ed8 <_Z8printIntiii>
    80006a34:	00003517          	auipc	a0,0x3
    80006a38:	a5450513          	addi	a0,a0,-1452 # 80009488 <CONSOLE_STATUS+0x478>
    80006a3c:	fffff097          	auipc	ra,0xfffff
    80006a40:	2ec080e7          	jalr	748(ra) # 80005d28 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006a44:	00000493          	li	s1,0
    80006a48:	f91ff06f          	j	800069d8 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80006a4c:	14102ff3          	csrr	t6,sepc
    80006a50:	fb5ff06f          	j	80006a04 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80006a54:	00002517          	auipc	a0,0x2
    80006a58:	7f450513          	addi	a0,a0,2036 # 80009248 <CONSOLE_STATUS+0x238>
    80006a5c:	fffff097          	auipc	ra,0xfffff
    80006a60:	2cc080e7          	jalr	716(ra) # 80005d28 <_Z11printStringPKc>
    finishedB = true;
    80006a64:	00100793          	li	a5,1
    80006a68:	00005717          	auipc	a4,0x5
    80006a6c:	42f70a23          	sb	a5,1076(a4) # 8000be9c <_ZL9finishedB>
    thread_dispatch();
    80006a70:	ffffb097          	auipc	ra,0xffffb
    80006a74:	95c080e7          	jalr	-1700(ra) # 800013cc <_Z15thread_dispatchv>
}
    80006a78:	01813083          	ld	ra,24(sp)
    80006a7c:	01013403          	ld	s0,16(sp)
    80006a80:	00813483          	ld	s1,8(sp)
    80006a84:	00013903          	ld	s2,0(sp)
    80006a88:	02010113          	addi	sp,sp,32
    80006a8c:	00008067          	ret

0000000080006a90 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80006a90:	fe010113          	addi	sp,sp,-32
    80006a94:	00113c23          	sd	ra,24(sp)
    80006a98:	00813823          	sd	s0,16(sp)
    80006a9c:	00913423          	sd	s1,8(sp)
    80006aa0:	01213023          	sd	s2,0(sp)
    80006aa4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006aa8:	00000913          	li	s2,0
    80006aac:	0380006f          	j	80006ae4 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80006ab0:	ffffb097          	auipc	ra,0xffffb
    80006ab4:	91c080e7          	jalr	-1764(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006ab8:	00148493          	addi	s1,s1,1
    80006abc:	000027b7          	lui	a5,0x2
    80006ac0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006ac4:	0097ee63          	bltu	a5,s1,80006ae0 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006ac8:	00000713          	li	a4,0
    80006acc:	000077b7          	lui	a5,0x7
    80006ad0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006ad4:	fce7eee3          	bltu	a5,a4,80006ab0 <_ZL11workerBodyAPv+0x20>
    80006ad8:	00170713          	addi	a4,a4,1
    80006adc:	ff1ff06f          	j	80006acc <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80006ae0:	00190913          	addi	s2,s2,1
    80006ae4:	00900793          	li	a5,9
    80006ae8:	0527e063          	bltu	a5,s2,80006b28 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80006aec:	00002517          	auipc	a0,0x2
    80006af0:	73c50513          	addi	a0,a0,1852 # 80009228 <CONSOLE_STATUS+0x218>
    80006af4:	fffff097          	auipc	ra,0xfffff
    80006af8:	234080e7          	jalr	564(ra) # 80005d28 <_Z11printStringPKc>
    80006afc:	00000613          	li	a2,0
    80006b00:	00a00593          	li	a1,10
    80006b04:	0009051b          	sext.w	a0,s2
    80006b08:	fffff097          	auipc	ra,0xfffff
    80006b0c:	3d0080e7          	jalr	976(ra) # 80005ed8 <_Z8printIntiii>
    80006b10:	00003517          	auipc	a0,0x3
    80006b14:	97850513          	addi	a0,a0,-1672 # 80009488 <CONSOLE_STATUS+0x478>
    80006b18:	fffff097          	auipc	ra,0xfffff
    80006b1c:	210080e7          	jalr	528(ra) # 80005d28 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006b20:	00000493          	li	s1,0
    80006b24:	f99ff06f          	j	80006abc <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006b28:	00002517          	auipc	a0,0x2
    80006b2c:	70850513          	addi	a0,a0,1800 # 80009230 <CONSOLE_STATUS+0x220>
    80006b30:	fffff097          	auipc	ra,0xfffff
    80006b34:	1f8080e7          	jalr	504(ra) # 80005d28 <_Z11printStringPKc>
    finishedA = true;
    80006b38:	00100793          	li	a5,1
    80006b3c:	00005717          	auipc	a4,0x5
    80006b40:	36f700a3          	sb	a5,865(a4) # 8000be9d <_ZL9finishedA>
}
    80006b44:	01813083          	ld	ra,24(sp)
    80006b48:	01013403          	ld	s0,16(sp)
    80006b4c:	00813483          	ld	s1,8(sp)
    80006b50:	00013903          	ld	s2,0(sp)
    80006b54:	02010113          	addi	sp,sp,32
    80006b58:	00008067          	ret

0000000080006b5c <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006b5c:	fd010113          	addi	sp,sp,-48
    80006b60:	02113423          	sd	ra,40(sp)
    80006b64:	02813023          	sd	s0,32(sp)
    80006b68:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006b6c:	00000613          	li	a2,0
    80006b70:	00000597          	auipc	a1,0x0
    80006b74:	f2058593          	addi	a1,a1,-224 # 80006a90 <_ZL11workerBodyAPv>
    80006b78:	fd040513          	addi	a0,s0,-48
    80006b7c:	ffffa097          	auipc	ra,0xffffa
    80006b80:	77c080e7          	jalr	1916(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80006b84:	00002517          	auipc	a0,0x2
    80006b88:	73c50513          	addi	a0,a0,1852 # 800092c0 <CONSOLE_STATUS+0x2b0>
    80006b8c:	fffff097          	auipc	ra,0xfffff
    80006b90:	19c080e7          	jalr	412(ra) # 80005d28 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80006b94:	00000613          	li	a2,0
    80006b98:	00000597          	auipc	a1,0x0
    80006b9c:	e1458593          	addi	a1,a1,-492 # 800069ac <_ZL11workerBodyBPv>
    80006ba0:	fd840513          	addi	a0,s0,-40
    80006ba4:	ffffa097          	auipc	ra,0xffffa
    80006ba8:	754080e7          	jalr	1876(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80006bac:	00002517          	auipc	a0,0x2
    80006bb0:	72c50513          	addi	a0,a0,1836 # 800092d8 <CONSOLE_STATUS+0x2c8>
    80006bb4:	fffff097          	auipc	ra,0xfffff
    80006bb8:	174080e7          	jalr	372(ra) # 80005d28 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006bbc:	00000613          	li	a2,0
    80006bc0:	00000597          	auipc	a1,0x0
    80006bc4:	c6c58593          	addi	a1,a1,-916 # 8000682c <_ZL11workerBodyCPv>
    80006bc8:	fe040513          	addi	a0,s0,-32
    80006bcc:	ffffa097          	auipc	ra,0xffffa
    80006bd0:	72c080e7          	jalr	1836(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80006bd4:	00002517          	auipc	a0,0x2
    80006bd8:	71c50513          	addi	a0,a0,1820 # 800092f0 <CONSOLE_STATUS+0x2e0>
    80006bdc:	fffff097          	auipc	ra,0xfffff
    80006be0:	14c080e7          	jalr	332(ra) # 80005d28 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80006be4:	00000613          	li	a2,0
    80006be8:	00000597          	auipc	a1,0x0
    80006bec:	afc58593          	addi	a1,a1,-1284 # 800066e4 <_ZL11workerBodyDPv>
    80006bf0:	fe840513          	addi	a0,s0,-24
    80006bf4:	ffffa097          	auipc	ra,0xffffa
    80006bf8:	704080e7          	jalr	1796(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80006bfc:	00002517          	auipc	a0,0x2
    80006c00:	70c50513          	addi	a0,a0,1804 # 80009308 <CONSOLE_STATUS+0x2f8>
    80006c04:	fffff097          	auipc	ra,0xfffff
    80006c08:	124080e7          	jalr	292(ra) # 80005d28 <_Z11printStringPKc>
    80006c0c:	00c0006f          	j	80006c18 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006c10:	ffffa097          	auipc	ra,0xffffa
    80006c14:	7bc080e7          	jalr	1980(ra) # 800013cc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006c18:	00005797          	auipc	a5,0x5
    80006c1c:	2857c783          	lbu	a5,645(a5) # 8000be9d <_ZL9finishedA>
    80006c20:	fe0788e3          	beqz	a5,80006c10 <_Z16System_Mode_testv+0xb4>
    80006c24:	00005797          	auipc	a5,0x5
    80006c28:	2787c783          	lbu	a5,632(a5) # 8000be9c <_ZL9finishedB>
    80006c2c:	fe0782e3          	beqz	a5,80006c10 <_Z16System_Mode_testv+0xb4>
    80006c30:	00005797          	auipc	a5,0x5
    80006c34:	26b7c783          	lbu	a5,619(a5) # 8000be9b <_ZL9finishedC>
    80006c38:	fc078ce3          	beqz	a5,80006c10 <_Z16System_Mode_testv+0xb4>
    80006c3c:	00005797          	auipc	a5,0x5
    80006c40:	25e7c783          	lbu	a5,606(a5) # 8000be9a <_ZL9finishedD>
    80006c44:	fc0786e3          	beqz	a5,80006c10 <_Z16System_Mode_testv+0xb4>
    }

}
    80006c48:	02813083          	ld	ra,40(sp)
    80006c4c:	02013403          	ld	s0,32(sp)
    80006c50:	03010113          	addi	sp,sp,48
    80006c54:	00008067          	ret

0000000080006c58 <start>:
    80006c58:	ff010113          	addi	sp,sp,-16
    80006c5c:	00813423          	sd	s0,8(sp)
    80006c60:	01010413          	addi	s0,sp,16
    80006c64:	300027f3          	csrr	a5,mstatus
    80006c68:	ffffe737          	lui	a4,0xffffe
    80006c6c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff16ff>
    80006c70:	00e7f7b3          	and	a5,a5,a4
    80006c74:	00001737          	lui	a4,0x1
    80006c78:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006c7c:	00e7e7b3          	or	a5,a5,a4
    80006c80:	30079073          	csrw	mstatus,a5
    80006c84:	00000797          	auipc	a5,0x0
    80006c88:	16078793          	addi	a5,a5,352 # 80006de4 <system_main>
    80006c8c:	34179073          	csrw	mepc,a5
    80006c90:	00000793          	li	a5,0
    80006c94:	18079073          	csrw	satp,a5
    80006c98:	000107b7          	lui	a5,0x10
    80006c9c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006ca0:	30279073          	csrw	medeleg,a5
    80006ca4:	30379073          	csrw	mideleg,a5
    80006ca8:	104027f3          	csrr	a5,sie
    80006cac:	2227e793          	ori	a5,a5,546
    80006cb0:	10479073          	csrw	sie,a5
    80006cb4:	fff00793          	li	a5,-1
    80006cb8:	00a7d793          	srli	a5,a5,0xa
    80006cbc:	3b079073          	csrw	pmpaddr0,a5
    80006cc0:	00f00793          	li	a5,15
    80006cc4:	3a079073          	csrw	pmpcfg0,a5
    80006cc8:	f14027f3          	csrr	a5,mhartid
    80006ccc:	0200c737          	lui	a4,0x200c
    80006cd0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006cd4:	0007869b          	sext.w	a3,a5
    80006cd8:	00269713          	slli	a4,a3,0x2
    80006cdc:	000f4637          	lui	a2,0xf4
    80006ce0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006ce4:	00d70733          	add	a4,a4,a3
    80006ce8:	0037979b          	slliw	a5,a5,0x3
    80006cec:	020046b7          	lui	a3,0x2004
    80006cf0:	00d787b3          	add	a5,a5,a3
    80006cf4:	00c585b3          	add	a1,a1,a2
    80006cf8:	00371693          	slli	a3,a4,0x3
    80006cfc:	00005717          	auipc	a4,0x5
    80006d00:	1a470713          	addi	a4,a4,420 # 8000bea0 <timer_scratch>
    80006d04:	00b7b023          	sd	a1,0(a5)
    80006d08:	00d70733          	add	a4,a4,a3
    80006d0c:	00f73c23          	sd	a5,24(a4)
    80006d10:	02c73023          	sd	a2,32(a4)
    80006d14:	34071073          	csrw	mscratch,a4
    80006d18:	00000797          	auipc	a5,0x0
    80006d1c:	6e878793          	addi	a5,a5,1768 # 80007400 <timervec>
    80006d20:	30579073          	csrw	mtvec,a5
    80006d24:	300027f3          	csrr	a5,mstatus
    80006d28:	0087e793          	ori	a5,a5,8
    80006d2c:	30079073          	csrw	mstatus,a5
    80006d30:	304027f3          	csrr	a5,mie
    80006d34:	0807e793          	ori	a5,a5,128
    80006d38:	30479073          	csrw	mie,a5
    80006d3c:	f14027f3          	csrr	a5,mhartid
    80006d40:	0007879b          	sext.w	a5,a5
    80006d44:	00078213          	mv	tp,a5
    80006d48:	30200073          	mret
    80006d4c:	00813403          	ld	s0,8(sp)
    80006d50:	01010113          	addi	sp,sp,16
    80006d54:	00008067          	ret

0000000080006d58 <timerinit>:
    80006d58:	ff010113          	addi	sp,sp,-16
    80006d5c:	00813423          	sd	s0,8(sp)
    80006d60:	01010413          	addi	s0,sp,16
    80006d64:	f14027f3          	csrr	a5,mhartid
    80006d68:	0200c737          	lui	a4,0x200c
    80006d6c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006d70:	0007869b          	sext.w	a3,a5
    80006d74:	00269713          	slli	a4,a3,0x2
    80006d78:	000f4637          	lui	a2,0xf4
    80006d7c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006d80:	00d70733          	add	a4,a4,a3
    80006d84:	0037979b          	slliw	a5,a5,0x3
    80006d88:	020046b7          	lui	a3,0x2004
    80006d8c:	00d787b3          	add	a5,a5,a3
    80006d90:	00c585b3          	add	a1,a1,a2
    80006d94:	00371693          	slli	a3,a4,0x3
    80006d98:	00005717          	auipc	a4,0x5
    80006d9c:	10870713          	addi	a4,a4,264 # 8000bea0 <timer_scratch>
    80006da0:	00b7b023          	sd	a1,0(a5)
    80006da4:	00d70733          	add	a4,a4,a3
    80006da8:	00f73c23          	sd	a5,24(a4)
    80006dac:	02c73023          	sd	a2,32(a4)
    80006db0:	34071073          	csrw	mscratch,a4
    80006db4:	00000797          	auipc	a5,0x0
    80006db8:	64c78793          	addi	a5,a5,1612 # 80007400 <timervec>
    80006dbc:	30579073          	csrw	mtvec,a5
    80006dc0:	300027f3          	csrr	a5,mstatus
    80006dc4:	0087e793          	ori	a5,a5,8
    80006dc8:	30079073          	csrw	mstatus,a5
    80006dcc:	304027f3          	csrr	a5,mie
    80006dd0:	0807e793          	ori	a5,a5,128
    80006dd4:	30479073          	csrw	mie,a5
    80006dd8:	00813403          	ld	s0,8(sp)
    80006ddc:	01010113          	addi	sp,sp,16
    80006de0:	00008067          	ret

0000000080006de4 <system_main>:
    80006de4:	fe010113          	addi	sp,sp,-32
    80006de8:	00813823          	sd	s0,16(sp)
    80006dec:	00913423          	sd	s1,8(sp)
    80006df0:	00113c23          	sd	ra,24(sp)
    80006df4:	02010413          	addi	s0,sp,32
    80006df8:	00000097          	auipc	ra,0x0
    80006dfc:	0c4080e7          	jalr	196(ra) # 80006ebc <cpuid>
    80006e00:	00005497          	auipc	s1,0x5
    80006e04:	fa048493          	addi	s1,s1,-96 # 8000bda0 <started>
    80006e08:	02050263          	beqz	a0,80006e2c <system_main+0x48>
    80006e0c:	0004a783          	lw	a5,0(s1)
    80006e10:	0007879b          	sext.w	a5,a5
    80006e14:	fe078ce3          	beqz	a5,80006e0c <system_main+0x28>
    80006e18:	0ff0000f          	fence
    80006e1c:	00002517          	auipc	a0,0x2
    80006e20:	7e450513          	addi	a0,a0,2020 # 80009600 <CONSOLE_STATUS+0x5f0>
    80006e24:	00001097          	auipc	ra,0x1
    80006e28:	a78080e7          	jalr	-1416(ra) # 8000789c <panic>
    80006e2c:	00001097          	auipc	ra,0x1
    80006e30:	9cc080e7          	jalr	-1588(ra) # 800077f8 <consoleinit>
    80006e34:	00001097          	auipc	ra,0x1
    80006e38:	158080e7          	jalr	344(ra) # 80007f8c <printfinit>
    80006e3c:	00002517          	auipc	a0,0x2
    80006e40:	64c50513          	addi	a0,a0,1612 # 80009488 <CONSOLE_STATUS+0x478>
    80006e44:	00001097          	auipc	ra,0x1
    80006e48:	ab4080e7          	jalr	-1356(ra) # 800078f8 <__printf>
    80006e4c:	00002517          	auipc	a0,0x2
    80006e50:	78450513          	addi	a0,a0,1924 # 800095d0 <CONSOLE_STATUS+0x5c0>
    80006e54:	00001097          	auipc	ra,0x1
    80006e58:	aa4080e7          	jalr	-1372(ra) # 800078f8 <__printf>
    80006e5c:	00002517          	auipc	a0,0x2
    80006e60:	62c50513          	addi	a0,a0,1580 # 80009488 <CONSOLE_STATUS+0x478>
    80006e64:	00001097          	auipc	ra,0x1
    80006e68:	a94080e7          	jalr	-1388(ra) # 800078f8 <__printf>
    80006e6c:	00001097          	auipc	ra,0x1
    80006e70:	4ac080e7          	jalr	1196(ra) # 80008318 <kinit>
    80006e74:	00000097          	auipc	ra,0x0
    80006e78:	148080e7          	jalr	328(ra) # 80006fbc <trapinit>
    80006e7c:	00000097          	auipc	ra,0x0
    80006e80:	16c080e7          	jalr	364(ra) # 80006fe8 <trapinithart>
    80006e84:	00000097          	auipc	ra,0x0
    80006e88:	5bc080e7          	jalr	1468(ra) # 80007440 <plicinit>
    80006e8c:	00000097          	auipc	ra,0x0
    80006e90:	5dc080e7          	jalr	1500(ra) # 80007468 <plicinithart>
    80006e94:	00000097          	auipc	ra,0x0
    80006e98:	078080e7          	jalr	120(ra) # 80006f0c <userinit>
    80006e9c:	0ff0000f          	fence
    80006ea0:	00100793          	li	a5,1
    80006ea4:	00002517          	auipc	a0,0x2
    80006ea8:	74450513          	addi	a0,a0,1860 # 800095e8 <CONSOLE_STATUS+0x5d8>
    80006eac:	00f4a023          	sw	a5,0(s1)
    80006eb0:	00001097          	auipc	ra,0x1
    80006eb4:	a48080e7          	jalr	-1464(ra) # 800078f8 <__printf>
    80006eb8:	0000006f          	j	80006eb8 <system_main+0xd4>

0000000080006ebc <cpuid>:
    80006ebc:	ff010113          	addi	sp,sp,-16
    80006ec0:	00813423          	sd	s0,8(sp)
    80006ec4:	01010413          	addi	s0,sp,16
    80006ec8:	00020513          	mv	a0,tp
    80006ecc:	00813403          	ld	s0,8(sp)
    80006ed0:	0005051b          	sext.w	a0,a0
    80006ed4:	01010113          	addi	sp,sp,16
    80006ed8:	00008067          	ret

0000000080006edc <mycpu>:
    80006edc:	ff010113          	addi	sp,sp,-16
    80006ee0:	00813423          	sd	s0,8(sp)
    80006ee4:	01010413          	addi	s0,sp,16
    80006ee8:	00020793          	mv	a5,tp
    80006eec:	00813403          	ld	s0,8(sp)
    80006ef0:	0007879b          	sext.w	a5,a5
    80006ef4:	00779793          	slli	a5,a5,0x7
    80006ef8:	00006517          	auipc	a0,0x6
    80006efc:	fd850513          	addi	a0,a0,-40 # 8000ced0 <cpus>
    80006f00:	00f50533          	add	a0,a0,a5
    80006f04:	01010113          	addi	sp,sp,16
    80006f08:	00008067          	ret

0000000080006f0c <userinit>:
    80006f0c:	ff010113          	addi	sp,sp,-16
    80006f10:	00813423          	sd	s0,8(sp)
    80006f14:	01010413          	addi	s0,sp,16
    80006f18:	00813403          	ld	s0,8(sp)
    80006f1c:	01010113          	addi	sp,sp,16
    80006f20:	ffffb317          	auipc	t1,0xffffb
    80006f24:	d4c30067          	jr	-692(t1) # 80001c6c <main>

0000000080006f28 <either_copyout>:
    80006f28:	ff010113          	addi	sp,sp,-16
    80006f2c:	00813023          	sd	s0,0(sp)
    80006f30:	00113423          	sd	ra,8(sp)
    80006f34:	01010413          	addi	s0,sp,16
    80006f38:	02051663          	bnez	a0,80006f64 <either_copyout+0x3c>
    80006f3c:	00058513          	mv	a0,a1
    80006f40:	00060593          	mv	a1,a2
    80006f44:	0006861b          	sext.w	a2,a3
    80006f48:	00002097          	auipc	ra,0x2
    80006f4c:	c5c080e7          	jalr	-932(ra) # 80008ba4 <__memmove>
    80006f50:	00813083          	ld	ra,8(sp)
    80006f54:	00013403          	ld	s0,0(sp)
    80006f58:	00000513          	li	a0,0
    80006f5c:	01010113          	addi	sp,sp,16
    80006f60:	00008067          	ret
    80006f64:	00002517          	auipc	a0,0x2
    80006f68:	6c450513          	addi	a0,a0,1732 # 80009628 <CONSOLE_STATUS+0x618>
    80006f6c:	00001097          	auipc	ra,0x1
    80006f70:	930080e7          	jalr	-1744(ra) # 8000789c <panic>

0000000080006f74 <either_copyin>:
    80006f74:	ff010113          	addi	sp,sp,-16
    80006f78:	00813023          	sd	s0,0(sp)
    80006f7c:	00113423          	sd	ra,8(sp)
    80006f80:	01010413          	addi	s0,sp,16
    80006f84:	02059463          	bnez	a1,80006fac <either_copyin+0x38>
    80006f88:	00060593          	mv	a1,a2
    80006f8c:	0006861b          	sext.w	a2,a3
    80006f90:	00002097          	auipc	ra,0x2
    80006f94:	c14080e7          	jalr	-1004(ra) # 80008ba4 <__memmove>
    80006f98:	00813083          	ld	ra,8(sp)
    80006f9c:	00013403          	ld	s0,0(sp)
    80006fa0:	00000513          	li	a0,0
    80006fa4:	01010113          	addi	sp,sp,16
    80006fa8:	00008067          	ret
    80006fac:	00002517          	auipc	a0,0x2
    80006fb0:	6a450513          	addi	a0,a0,1700 # 80009650 <CONSOLE_STATUS+0x640>
    80006fb4:	00001097          	auipc	ra,0x1
    80006fb8:	8e8080e7          	jalr	-1816(ra) # 8000789c <panic>

0000000080006fbc <trapinit>:
    80006fbc:	ff010113          	addi	sp,sp,-16
    80006fc0:	00813423          	sd	s0,8(sp)
    80006fc4:	01010413          	addi	s0,sp,16
    80006fc8:	00813403          	ld	s0,8(sp)
    80006fcc:	00002597          	auipc	a1,0x2
    80006fd0:	6ac58593          	addi	a1,a1,1708 # 80009678 <CONSOLE_STATUS+0x668>
    80006fd4:	00006517          	auipc	a0,0x6
    80006fd8:	f7c50513          	addi	a0,a0,-132 # 8000cf50 <tickslock>
    80006fdc:	01010113          	addi	sp,sp,16
    80006fe0:	00001317          	auipc	t1,0x1
    80006fe4:	5c830067          	jr	1480(t1) # 800085a8 <initlock>

0000000080006fe8 <trapinithart>:
    80006fe8:	ff010113          	addi	sp,sp,-16
    80006fec:	00813423          	sd	s0,8(sp)
    80006ff0:	01010413          	addi	s0,sp,16
    80006ff4:	00000797          	auipc	a5,0x0
    80006ff8:	2fc78793          	addi	a5,a5,764 # 800072f0 <kernelvec>
    80006ffc:	10579073          	csrw	stvec,a5
    80007000:	00813403          	ld	s0,8(sp)
    80007004:	01010113          	addi	sp,sp,16
    80007008:	00008067          	ret

000000008000700c <usertrap>:
    8000700c:	ff010113          	addi	sp,sp,-16
    80007010:	00813423          	sd	s0,8(sp)
    80007014:	01010413          	addi	s0,sp,16
    80007018:	00813403          	ld	s0,8(sp)
    8000701c:	01010113          	addi	sp,sp,16
    80007020:	00008067          	ret

0000000080007024 <usertrapret>:
    80007024:	ff010113          	addi	sp,sp,-16
    80007028:	00813423          	sd	s0,8(sp)
    8000702c:	01010413          	addi	s0,sp,16
    80007030:	00813403          	ld	s0,8(sp)
    80007034:	01010113          	addi	sp,sp,16
    80007038:	00008067          	ret

000000008000703c <kerneltrap>:
    8000703c:	fe010113          	addi	sp,sp,-32
    80007040:	00813823          	sd	s0,16(sp)
    80007044:	00113c23          	sd	ra,24(sp)
    80007048:	00913423          	sd	s1,8(sp)
    8000704c:	02010413          	addi	s0,sp,32
    80007050:	142025f3          	csrr	a1,scause
    80007054:	100027f3          	csrr	a5,sstatus
    80007058:	0027f793          	andi	a5,a5,2
    8000705c:	10079c63          	bnez	a5,80007174 <kerneltrap+0x138>
    80007060:	142027f3          	csrr	a5,scause
    80007064:	0207ce63          	bltz	a5,800070a0 <kerneltrap+0x64>
    80007068:	00002517          	auipc	a0,0x2
    8000706c:	65850513          	addi	a0,a0,1624 # 800096c0 <CONSOLE_STATUS+0x6b0>
    80007070:	00001097          	auipc	ra,0x1
    80007074:	888080e7          	jalr	-1912(ra) # 800078f8 <__printf>
    80007078:	141025f3          	csrr	a1,sepc
    8000707c:	14302673          	csrr	a2,stval
    80007080:	00002517          	auipc	a0,0x2
    80007084:	65050513          	addi	a0,a0,1616 # 800096d0 <CONSOLE_STATUS+0x6c0>
    80007088:	00001097          	auipc	ra,0x1
    8000708c:	870080e7          	jalr	-1936(ra) # 800078f8 <__printf>
    80007090:	00002517          	auipc	a0,0x2
    80007094:	65850513          	addi	a0,a0,1624 # 800096e8 <CONSOLE_STATUS+0x6d8>
    80007098:	00001097          	auipc	ra,0x1
    8000709c:	804080e7          	jalr	-2044(ra) # 8000789c <panic>
    800070a0:	0ff7f713          	andi	a4,a5,255
    800070a4:	00900693          	li	a3,9
    800070a8:	04d70063          	beq	a4,a3,800070e8 <kerneltrap+0xac>
    800070ac:	fff00713          	li	a4,-1
    800070b0:	03f71713          	slli	a4,a4,0x3f
    800070b4:	00170713          	addi	a4,a4,1
    800070b8:	fae798e3          	bne	a5,a4,80007068 <kerneltrap+0x2c>
    800070bc:	00000097          	auipc	ra,0x0
    800070c0:	e00080e7          	jalr	-512(ra) # 80006ebc <cpuid>
    800070c4:	06050663          	beqz	a0,80007130 <kerneltrap+0xf4>
    800070c8:	144027f3          	csrr	a5,sip
    800070cc:	ffd7f793          	andi	a5,a5,-3
    800070d0:	14479073          	csrw	sip,a5
    800070d4:	01813083          	ld	ra,24(sp)
    800070d8:	01013403          	ld	s0,16(sp)
    800070dc:	00813483          	ld	s1,8(sp)
    800070e0:	02010113          	addi	sp,sp,32
    800070e4:	00008067          	ret
    800070e8:	00000097          	auipc	ra,0x0
    800070ec:	3cc080e7          	jalr	972(ra) # 800074b4 <plic_claim>
    800070f0:	00a00793          	li	a5,10
    800070f4:	00050493          	mv	s1,a0
    800070f8:	06f50863          	beq	a0,a5,80007168 <kerneltrap+0x12c>
    800070fc:	fc050ce3          	beqz	a0,800070d4 <kerneltrap+0x98>
    80007100:	00050593          	mv	a1,a0
    80007104:	00002517          	auipc	a0,0x2
    80007108:	59c50513          	addi	a0,a0,1436 # 800096a0 <CONSOLE_STATUS+0x690>
    8000710c:	00000097          	auipc	ra,0x0
    80007110:	7ec080e7          	jalr	2028(ra) # 800078f8 <__printf>
    80007114:	01013403          	ld	s0,16(sp)
    80007118:	01813083          	ld	ra,24(sp)
    8000711c:	00048513          	mv	a0,s1
    80007120:	00813483          	ld	s1,8(sp)
    80007124:	02010113          	addi	sp,sp,32
    80007128:	00000317          	auipc	t1,0x0
    8000712c:	3c430067          	jr	964(t1) # 800074ec <plic_complete>
    80007130:	00006517          	auipc	a0,0x6
    80007134:	e2050513          	addi	a0,a0,-480 # 8000cf50 <tickslock>
    80007138:	00001097          	auipc	ra,0x1
    8000713c:	494080e7          	jalr	1172(ra) # 800085cc <acquire>
    80007140:	00005717          	auipc	a4,0x5
    80007144:	c6470713          	addi	a4,a4,-924 # 8000bda4 <ticks>
    80007148:	00072783          	lw	a5,0(a4)
    8000714c:	00006517          	auipc	a0,0x6
    80007150:	e0450513          	addi	a0,a0,-508 # 8000cf50 <tickslock>
    80007154:	0017879b          	addiw	a5,a5,1
    80007158:	00f72023          	sw	a5,0(a4)
    8000715c:	00001097          	auipc	ra,0x1
    80007160:	53c080e7          	jalr	1340(ra) # 80008698 <release>
    80007164:	f65ff06f          	j	800070c8 <kerneltrap+0x8c>
    80007168:	00001097          	auipc	ra,0x1
    8000716c:	098080e7          	jalr	152(ra) # 80008200 <uartintr>
    80007170:	fa5ff06f          	j	80007114 <kerneltrap+0xd8>
    80007174:	00002517          	auipc	a0,0x2
    80007178:	50c50513          	addi	a0,a0,1292 # 80009680 <CONSOLE_STATUS+0x670>
    8000717c:	00000097          	auipc	ra,0x0
    80007180:	720080e7          	jalr	1824(ra) # 8000789c <panic>

0000000080007184 <clockintr>:
    80007184:	fe010113          	addi	sp,sp,-32
    80007188:	00813823          	sd	s0,16(sp)
    8000718c:	00913423          	sd	s1,8(sp)
    80007190:	00113c23          	sd	ra,24(sp)
    80007194:	02010413          	addi	s0,sp,32
    80007198:	00006497          	auipc	s1,0x6
    8000719c:	db848493          	addi	s1,s1,-584 # 8000cf50 <tickslock>
    800071a0:	00048513          	mv	a0,s1
    800071a4:	00001097          	auipc	ra,0x1
    800071a8:	428080e7          	jalr	1064(ra) # 800085cc <acquire>
    800071ac:	00005717          	auipc	a4,0x5
    800071b0:	bf870713          	addi	a4,a4,-1032 # 8000bda4 <ticks>
    800071b4:	00072783          	lw	a5,0(a4)
    800071b8:	01013403          	ld	s0,16(sp)
    800071bc:	01813083          	ld	ra,24(sp)
    800071c0:	00048513          	mv	a0,s1
    800071c4:	0017879b          	addiw	a5,a5,1
    800071c8:	00813483          	ld	s1,8(sp)
    800071cc:	00f72023          	sw	a5,0(a4)
    800071d0:	02010113          	addi	sp,sp,32
    800071d4:	00001317          	auipc	t1,0x1
    800071d8:	4c430067          	jr	1220(t1) # 80008698 <release>

00000000800071dc <devintr>:
    800071dc:	142027f3          	csrr	a5,scause
    800071e0:	00000513          	li	a0,0
    800071e4:	0007c463          	bltz	a5,800071ec <devintr+0x10>
    800071e8:	00008067          	ret
    800071ec:	fe010113          	addi	sp,sp,-32
    800071f0:	00813823          	sd	s0,16(sp)
    800071f4:	00113c23          	sd	ra,24(sp)
    800071f8:	00913423          	sd	s1,8(sp)
    800071fc:	02010413          	addi	s0,sp,32
    80007200:	0ff7f713          	andi	a4,a5,255
    80007204:	00900693          	li	a3,9
    80007208:	04d70c63          	beq	a4,a3,80007260 <devintr+0x84>
    8000720c:	fff00713          	li	a4,-1
    80007210:	03f71713          	slli	a4,a4,0x3f
    80007214:	00170713          	addi	a4,a4,1
    80007218:	00e78c63          	beq	a5,a4,80007230 <devintr+0x54>
    8000721c:	01813083          	ld	ra,24(sp)
    80007220:	01013403          	ld	s0,16(sp)
    80007224:	00813483          	ld	s1,8(sp)
    80007228:	02010113          	addi	sp,sp,32
    8000722c:	00008067          	ret
    80007230:	00000097          	auipc	ra,0x0
    80007234:	c8c080e7          	jalr	-884(ra) # 80006ebc <cpuid>
    80007238:	06050663          	beqz	a0,800072a4 <devintr+0xc8>
    8000723c:	144027f3          	csrr	a5,sip
    80007240:	ffd7f793          	andi	a5,a5,-3
    80007244:	14479073          	csrw	sip,a5
    80007248:	01813083          	ld	ra,24(sp)
    8000724c:	01013403          	ld	s0,16(sp)
    80007250:	00813483          	ld	s1,8(sp)
    80007254:	00200513          	li	a0,2
    80007258:	02010113          	addi	sp,sp,32
    8000725c:	00008067          	ret
    80007260:	00000097          	auipc	ra,0x0
    80007264:	254080e7          	jalr	596(ra) # 800074b4 <plic_claim>
    80007268:	00a00793          	li	a5,10
    8000726c:	00050493          	mv	s1,a0
    80007270:	06f50663          	beq	a0,a5,800072dc <devintr+0x100>
    80007274:	00100513          	li	a0,1
    80007278:	fa0482e3          	beqz	s1,8000721c <devintr+0x40>
    8000727c:	00048593          	mv	a1,s1
    80007280:	00002517          	auipc	a0,0x2
    80007284:	42050513          	addi	a0,a0,1056 # 800096a0 <CONSOLE_STATUS+0x690>
    80007288:	00000097          	auipc	ra,0x0
    8000728c:	670080e7          	jalr	1648(ra) # 800078f8 <__printf>
    80007290:	00048513          	mv	a0,s1
    80007294:	00000097          	auipc	ra,0x0
    80007298:	258080e7          	jalr	600(ra) # 800074ec <plic_complete>
    8000729c:	00100513          	li	a0,1
    800072a0:	f7dff06f          	j	8000721c <devintr+0x40>
    800072a4:	00006517          	auipc	a0,0x6
    800072a8:	cac50513          	addi	a0,a0,-852 # 8000cf50 <tickslock>
    800072ac:	00001097          	auipc	ra,0x1
    800072b0:	320080e7          	jalr	800(ra) # 800085cc <acquire>
    800072b4:	00005717          	auipc	a4,0x5
    800072b8:	af070713          	addi	a4,a4,-1296 # 8000bda4 <ticks>
    800072bc:	00072783          	lw	a5,0(a4)
    800072c0:	00006517          	auipc	a0,0x6
    800072c4:	c9050513          	addi	a0,a0,-880 # 8000cf50 <tickslock>
    800072c8:	0017879b          	addiw	a5,a5,1
    800072cc:	00f72023          	sw	a5,0(a4)
    800072d0:	00001097          	auipc	ra,0x1
    800072d4:	3c8080e7          	jalr	968(ra) # 80008698 <release>
    800072d8:	f65ff06f          	j	8000723c <devintr+0x60>
    800072dc:	00001097          	auipc	ra,0x1
    800072e0:	f24080e7          	jalr	-220(ra) # 80008200 <uartintr>
    800072e4:	fadff06f          	j	80007290 <devintr+0xb4>
	...

00000000800072f0 <kernelvec>:
    800072f0:	f0010113          	addi	sp,sp,-256
    800072f4:	00113023          	sd	ra,0(sp)
    800072f8:	00213423          	sd	sp,8(sp)
    800072fc:	00313823          	sd	gp,16(sp)
    80007300:	00413c23          	sd	tp,24(sp)
    80007304:	02513023          	sd	t0,32(sp)
    80007308:	02613423          	sd	t1,40(sp)
    8000730c:	02713823          	sd	t2,48(sp)
    80007310:	02813c23          	sd	s0,56(sp)
    80007314:	04913023          	sd	s1,64(sp)
    80007318:	04a13423          	sd	a0,72(sp)
    8000731c:	04b13823          	sd	a1,80(sp)
    80007320:	04c13c23          	sd	a2,88(sp)
    80007324:	06d13023          	sd	a3,96(sp)
    80007328:	06e13423          	sd	a4,104(sp)
    8000732c:	06f13823          	sd	a5,112(sp)
    80007330:	07013c23          	sd	a6,120(sp)
    80007334:	09113023          	sd	a7,128(sp)
    80007338:	09213423          	sd	s2,136(sp)
    8000733c:	09313823          	sd	s3,144(sp)
    80007340:	09413c23          	sd	s4,152(sp)
    80007344:	0b513023          	sd	s5,160(sp)
    80007348:	0b613423          	sd	s6,168(sp)
    8000734c:	0b713823          	sd	s7,176(sp)
    80007350:	0b813c23          	sd	s8,184(sp)
    80007354:	0d913023          	sd	s9,192(sp)
    80007358:	0da13423          	sd	s10,200(sp)
    8000735c:	0db13823          	sd	s11,208(sp)
    80007360:	0dc13c23          	sd	t3,216(sp)
    80007364:	0fd13023          	sd	t4,224(sp)
    80007368:	0fe13423          	sd	t5,232(sp)
    8000736c:	0ff13823          	sd	t6,240(sp)
    80007370:	ccdff0ef          	jal	ra,8000703c <kerneltrap>
    80007374:	00013083          	ld	ra,0(sp)
    80007378:	00813103          	ld	sp,8(sp)
    8000737c:	01013183          	ld	gp,16(sp)
    80007380:	02013283          	ld	t0,32(sp)
    80007384:	02813303          	ld	t1,40(sp)
    80007388:	03013383          	ld	t2,48(sp)
    8000738c:	03813403          	ld	s0,56(sp)
    80007390:	04013483          	ld	s1,64(sp)
    80007394:	04813503          	ld	a0,72(sp)
    80007398:	05013583          	ld	a1,80(sp)
    8000739c:	05813603          	ld	a2,88(sp)
    800073a0:	06013683          	ld	a3,96(sp)
    800073a4:	06813703          	ld	a4,104(sp)
    800073a8:	07013783          	ld	a5,112(sp)
    800073ac:	07813803          	ld	a6,120(sp)
    800073b0:	08013883          	ld	a7,128(sp)
    800073b4:	08813903          	ld	s2,136(sp)
    800073b8:	09013983          	ld	s3,144(sp)
    800073bc:	09813a03          	ld	s4,152(sp)
    800073c0:	0a013a83          	ld	s5,160(sp)
    800073c4:	0a813b03          	ld	s6,168(sp)
    800073c8:	0b013b83          	ld	s7,176(sp)
    800073cc:	0b813c03          	ld	s8,184(sp)
    800073d0:	0c013c83          	ld	s9,192(sp)
    800073d4:	0c813d03          	ld	s10,200(sp)
    800073d8:	0d013d83          	ld	s11,208(sp)
    800073dc:	0d813e03          	ld	t3,216(sp)
    800073e0:	0e013e83          	ld	t4,224(sp)
    800073e4:	0e813f03          	ld	t5,232(sp)
    800073e8:	0f013f83          	ld	t6,240(sp)
    800073ec:	10010113          	addi	sp,sp,256
    800073f0:	10200073          	sret
    800073f4:	00000013          	nop
    800073f8:	00000013          	nop
    800073fc:	00000013          	nop

0000000080007400 <timervec>:
    80007400:	34051573          	csrrw	a0,mscratch,a0
    80007404:	00b53023          	sd	a1,0(a0)
    80007408:	00c53423          	sd	a2,8(a0)
    8000740c:	00d53823          	sd	a3,16(a0)
    80007410:	01853583          	ld	a1,24(a0)
    80007414:	02053603          	ld	a2,32(a0)
    80007418:	0005b683          	ld	a3,0(a1)
    8000741c:	00c686b3          	add	a3,a3,a2
    80007420:	00d5b023          	sd	a3,0(a1)
    80007424:	00200593          	li	a1,2
    80007428:	14459073          	csrw	sip,a1
    8000742c:	01053683          	ld	a3,16(a0)
    80007430:	00853603          	ld	a2,8(a0)
    80007434:	00053583          	ld	a1,0(a0)
    80007438:	34051573          	csrrw	a0,mscratch,a0
    8000743c:	30200073          	mret

0000000080007440 <plicinit>:
    80007440:	ff010113          	addi	sp,sp,-16
    80007444:	00813423          	sd	s0,8(sp)
    80007448:	01010413          	addi	s0,sp,16
    8000744c:	00813403          	ld	s0,8(sp)
    80007450:	0c0007b7          	lui	a5,0xc000
    80007454:	00100713          	li	a4,1
    80007458:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000745c:	00e7a223          	sw	a4,4(a5)
    80007460:	01010113          	addi	sp,sp,16
    80007464:	00008067          	ret

0000000080007468 <plicinithart>:
    80007468:	ff010113          	addi	sp,sp,-16
    8000746c:	00813023          	sd	s0,0(sp)
    80007470:	00113423          	sd	ra,8(sp)
    80007474:	01010413          	addi	s0,sp,16
    80007478:	00000097          	auipc	ra,0x0
    8000747c:	a44080e7          	jalr	-1468(ra) # 80006ebc <cpuid>
    80007480:	0085171b          	slliw	a4,a0,0x8
    80007484:	0c0027b7          	lui	a5,0xc002
    80007488:	00e787b3          	add	a5,a5,a4
    8000748c:	40200713          	li	a4,1026
    80007490:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80007494:	00813083          	ld	ra,8(sp)
    80007498:	00013403          	ld	s0,0(sp)
    8000749c:	00d5151b          	slliw	a0,a0,0xd
    800074a0:	0c2017b7          	lui	a5,0xc201
    800074a4:	00a78533          	add	a0,a5,a0
    800074a8:	00052023          	sw	zero,0(a0)
    800074ac:	01010113          	addi	sp,sp,16
    800074b0:	00008067          	ret

00000000800074b4 <plic_claim>:
    800074b4:	ff010113          	addi	sp,sp,-16
    800074b8:	00813023          	sd	s0,0(sp)
    800074bc:	00113423          	sd	ra,8(sp)
    800074c0:	01010413          	addi	s0,sp,16
    800074c4:	00000097          	auipc	ra,0x0
    800074c8:	9f8080e7          	jalr	-1544(ra) # 80006ebc <cpuid>
    800074cc:	00813083          	ld	ra,8(sp)
    800074d0:	00013403          	ld	s0,0(sp)
    800074d4:	00d5151b          	slliw	a0,a0,0xd
    800074d8:	0c2017b7          	lui	a5,0xc201
    800074dc:	00a78533          	add	a0,a5,a0
    800074e0:	00452503          	lw	a0,4(a0)
    800074e4:	01010113          	addi	sp,sp,16
    800074e8:	00008067          	ret

00000000800074ec <plic_complete>:
    800074ec:	fe010113          	addi	sp,sp,-32
    800074f0:	00813823          	sd	s0,16(sp)
    800074f4:	00913423          	sd	s1,8(sp)
    800074f8:	00113c23          	sd	ra,24(sp)
    800074fc:	02010413          	addi	s0,sp,32
    80007500:	00050493          	mv	s1,a0
    80007504:	00000097          	auipc	ra,0x0
    80007508:	9b8080e7          	jalr	-1608(ra) # 80006ebc <cpuid>
    8000750c:	01813083          	ld	ra,24(sp)
    80007510:	01013403          	ld	s0,16(sp)
    80007514:	00d5179b          	slliw	a5,a0,0xd
    80007518:	0c201737          	lui	a4,0xc201
    8000751c:	00f707b3          	add	a5,a4,a5
    80007520:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007524:	00813483          	ld	s1,8(sp)
    80007528:	02010113          	addi	sp,sp,32
    8000752c:	00008067          	ret

0000000080007530 <consolewrite>:
    80007530:	fb010113          	addi	sp,sp,-80
    80007534:	04813023          	sd	s0,64(sp)
    80007538:	04113423          	sd	ra,72(sp)
    8000753c:	02913c23          	sd	s1,56(sp)
    80007540:	03213823          	sd	s2,48(sp)
    80007544:	03313423          	sd	s3,40(sp)
    80007548:	03413023          	sd	s4,32(sp)
    8000754c:	01513c23          	sd	s5,24(sp)
    80007550:	05010413          	addi	s0,sp,80
    80007554:	06c05c63          	blez	a2,800075cc <consolewrite+0x9c>
    80007558:	00060993          	mv	s3,a2
    8000755c:	00050a13          	mv	s4,a0
    80007560:	00058493          	mv	s1,a1
    80007564:	00000913          	li	s2,0
    80007568:	fff00a93          	li	s5,-1
    8000756c:	01c0006f          	j	80007588 <consolewrite+0x58>
    80007570:	fbf44503          	lbu	a0,-65(s0)
    80007574:	0019091b          	addiw	s2,s2,1
    80007578:	00148493          	addi	s1,s1,1
    8000757c:	00001097          	auipc	ra,0x1
    80007580:	a9c080e7          	jalr	-1380(ra) # 80008018 <uartputc>
    80007584:	03298063          	beq	s3,s2,800075a4 <consolewrite+0x74>
    80007588:	00048613          	mv	a2,s1
    8000758c:	00100693          	li	a3,1
    80007590:	000a0593          	mv	a1,s4
    80007594:	fbf40513          	addi	a0,s0,-65
    80007598:	00000097          	auipc	ra,0x0
    8000759c:	9dc080e7          	jalr	-1572(ra) # 80006f74 <either_copyin>
    800075a0:	fd5518e3          	bne	a0,s5,80007570 <consolewrite+0x40>
    800075a4:	04813083          	ld	ra,72(sp)
    800075a8:	04013403          	ld	s0,64(sp)
    800075ac:	03813483          	ld	s1,56(sp)
    800075b0:	02813983          	ld	s3,40(sp)
    800075b4:	02013a03          	ld	s4,32(sp)
    800075b8:	01813a83          	ld	s5,24(sp)
    800075bc:	00090513          	mv	a0,s2
    800075c0:	03013903          	ld	s2,48(sp)
    800075c4:	05010113          	addi	sp,sp,80
    800075c8:	00008067          	ret
    800075cc:	00000913          	li	s2,0
    800075d0:	fd5ff06f          	j	800075a4 <consolewrite+0x74>

00000000800075d4 <consoleread>:
    800075d4:	f9010113          	addi	sp,sp,-112
    800075d8:	06813023          	sd	s0,96(sp)
    800075dc:	04913c23          	sd	s1,88(sp)
    800075e0:	05213823          	sd	s2,80(sp)
    800075e4:	05313423          	sd	s3,72(sp)
    800075e8:	05413023          	sd	s4,64(sp)
    800075ec:	03513c23          	sd	s5,56(sp)
    800075f0:	03613823          	sd	s6,48(sp)
    800075f4:	03713423          	sd	s7,40(sp)
    800075f8:	03813023          	sd	s8,32(sp)
    800075fc:	06113423          	sd	ra,104(sp)
    80007600:	01913c23          	sd	s9,24(sp)
    80007604:	07010413          	addi	s0,sp,112
    80007608:	00060b93          	mv	s7,a2
    8000760c:	00050913          	mv	s2,a0
    80007610:	00058c13          	mv	s8,a1
    80007614:	00060b1b          	sext.w	s6,a2
    80007618:	00006497          	auipc	s1,0x6
    8000761c:	96048493          	addi	s1,s1,-1696 # 8000cf78 <cons>
    80007620:	00400993          	li	s3,4
    80007624:	fff00a13          	li	s4,-1
    80007628:	00a00a93          	li	s5,10
    8000762c:	05705e63          	blez	s7,80007688 <consoleread+0xb4>
    80007630:	09c4a703          	lw	a4,156(s1)
    80007634:	0984a783          	lw	a5,152(s1)
    80007638:	0007071b          	sext.w	a4,a4
    8000763c:	08e78463          	beq	a5,a4,800076c4 <consoleread+0xf0>
    80007640:	07f7f713          	andi	a4,a5,127
    80007644:	00e48733          	add	a4,s1,a4
    80007648:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000764c:	0017869b          	addiw	a3,a5,1
    80007650:	08d4ac23          	sw	a3,152(s1)
    80007654:	00070c9b          	sext.w	s9,a4
    80007658:	0b370663          	beq	a4,s3,80007704 <consoleread+0x130>
    8000765c:	00100693          	li	a3,1
    80007660:	f9f40613          	addi	a2,s0,-97
    80007664:	000c0593          	mv	a1,s8
    80007668:	00090513          	mv	a0,s2
    8000766c:	f8e40fa3          	sb	a4,-97(s0)
    80007670:	00000097          	auipc	ra,0x0
    80007674:	8b8080e7          	jalr	-1864(ra) # 80006f28 <either_copyout>
    80007678:	01450863          	beq	a0,s4,80007688 <consoleread+0xb4>
    8000767c:	001c0c13          	addi	s8,s8,1
    80007680:	fffb8b9b          	addiw	s7,s7,-1
    80007684:	fb5c94e3          	bne	s9,s5,8000762c <consoleread+0x58>
    80007688:	000b851b          	sext.w	a0,s7
    8000768c:	06813083          	ld	ra,104(sp)
    80007690:	06013403          	ld	s0,96(sp)
    80007694:	05813483          	ld	s1,88(sp)
    80007698:	05013903          	ld	s2,80(sp)
    8000769c:	04813983          	ld	s3,72(sp)
    800076a0:	04013a03          	ld	s4,64(sp)
    800076a4:	03813a83          	ld	s5,56(sp)
    800076a8:	02813b83          	ld	s7,40(sp)
    800076ac:	02013c03          	ld	s8,32(sp)
    800076b0:	01813c83          	ld	s9,24(sp)
    800076b4:	40ab053b          	subw	a0,s6,a0
    800076b8:	03013b03          	ld	s6,48(sp)
    800076bc:	07010113          	addi	sp,sp,112
    800076c0:	00008067          	ret
    800076c4:	00001097          	auipc	ra,0x1
    800076c8:	1d8080e7          	jalr	472(ra) # 8000889c <push_on>
    800076cc:	0984a703          	lw	a4,152(s1)
    800076d0:	09c4a783          	lw	a5,156(s1)
    800076d4:	0007879b          	sext.w	a5,a5
    800076d8:	fef70ce3          	beq	a4,a5,800076d0 <consoleread+0xfc>
    800076dc:	00001097          	auipc	ra,0x1
    800076e0:	234080e7          	jalr	564(ra) # 80008910 <pop_on>
    800076e4:	0984a783          	lw	a5,152(s1)
    800076e8:	07f7f713          	andi	a4,a5,127
    800076ec:	00e48733          	add	a4,s1,a4
    800076f0:	01874703          	lbu	a4,24(a4)
    800076f4:	0017869b          	addiw	a3,a5,1
    800076f8:	08d4ac23          	sw	a3,152(s1)
    800076fc:	00070c9b          	sext.w	s9,a4
    80007700:	f5371ee3          	bne	a4,s3,8000765c <consoleread+0x88>
    80007704:	000b851b          	sext.w	a0,s7
    80007708:	f96bf2e3          	bgeu	s7,s6,8000768c <consoleread+0xb8>
    8000770c:	08f4ac23          	sw	a5,152(s1)
    80007710:	f7dff06f          	j	8000768c <consoleread+0xb8>

0000000080007714 <consputc>:
    80007714:	10000793          	li	a5,256
    80007718:	00f50663          	beq	a0,a5,80007724 <consputc+0x10>
    8000771c:	00001317          	auipc	t1,0x1
    80007720:	9f430067          	jr	-1548(t1) # 80008110 <uartputc_sync>
    80007724:	ff010113          	addi	sp,sp,-16
    80007728:	00113423          	sd	ra,8(sp)
    8000772c:	00813023          	sd	s0,0(sp)
    80007730:	01010413          	addi	s0,sp,16
    80007734:	00800513          	li	a0,8
    80007738:	00001097          	auipc	ra,0x1
    8000773c:	9d8080e7          	jalr	-1576(ra) # 80008110 <uartputc_sync>
    80007740:	02000513          	li	a0,32
    80007744:	00001097          	auipc	ra,0x1
    80007748:	9cc080e7          	jalr	-1588(ra) # 80008110 <uartputc_sync>
    8000774c:	00013403          	ld	s0,0(sp)
    80007750:	00813083          	ld	ra,8(sp)
    80007754:	00800513          	li	a0,8
    80007758:	01010113          	addi	sp,sp,16
    8000775c:	00001317          	auipc	t1,0x1
    80007760:	9b430067          	jr	-1612(t1) # 80008110 <uartputc_sync>

0000000080007764 <consoleintr>:
    80007764:	fe010113          	addi	sp,sp,-32
    80007768:	00813823          	sd	s0,16(sp)
    8000776c:	00913423          	sd	s1,8(sp)
    80007770:	01213023          	sd	s2,0(sp)
    80007774:	00113c23          	sd	ra,24(sp)
    80007778:	02010413          	addi	s0,sp,32
    8000777c:	00005917          	auipc	s2,0x5
    80007780:	7fc90913          	addi	s2,s2,2044 # 8000cf78 <cons>
    80007784:	00050493          	mv	s1,a0
    80007788:	00090513          	mv	a0,s2
    8000778c:	00001097          	auipc	ra,0x1
    80007790:	e40080e7          	jalr	-448(ra) # 800085cc <acquire>
    80007794:	02048c63          	beqz	s1,800077cc <consoleintr+0x68>
    80007798:	0a092783          	lw	a5,160(s2)
    8000779c:	09892703          	lw	a4,152(s2)
    800077a0:	07f00693          	li	a3,127
    800077a4:	40e7873b          	subw	a4,a5,a4
    800077a8:	02e6e263          	bltu	a3,a4,800077cc <consoleintr+0x68>
    800077ac:	00d00713          	li	a4,13
    800077b0:	04e48063          	beq	s1,a4,800077f0 <consoleintr+0x8c>
    800077b4:	07f7f713          	andi	a4,a5,127
    800077b8:	00e90733          	add	a4,s2,a4
    800077bc:	0017879b          	addiw	a5,a5,1
    800077c0:	0af92023          	sw	a5,160(s2)
    800077c4:	00970c23          	sb	s1,24(a4)
    800077c8:	08f92e23          	sw	a5,156(s2)
    800077cc:	01013403          	ld	s0,16(sp)
    800077d0:	01813083          	ld	ra,24(sp)
    800077d4:	00813483          	ld	s1,8(sp)
    800077d8:	00013903          	ld	s2,0(sp)
    800077dc:	00005517          	auipc	a0,0x5
    800077e0:	79c50513          	addi	a0,a0,1948 # 8000cf78 <cons>
    800077e4:	02010113          	addi	sp,sp,32
    800077e8:	00001317          	auipc	t1,0x1
    800077ec:	eb030067          	jr	-336(t1) # 80008698 <release>
    800077f0:	00a00493          	li	s1,10
    800077f4:	fc1ff06f          	j	800077b4 <consoleintr+0x50>

00000000800077f8 <consoleinit>:
    800077f8:	fe010113          	addi	sp,sp,-32
    800077fc:	00113c23          	sd	ra,24(sp)
    80007800:	00813823          	sd	s0,16(sp)
    80007804:	00913423          	sd	s1,8(sp)
    80007808:	02010413          	addi	s0,sp,32
    8000780c:	00005497          	auipc	s1,0x5
    80007810:	76c48493          	addi	s1,s1,1900 # 8000cf78 <cons>
    80007814:	00048513          	mv	a0,s1
    80007818:	00002597          	auipc	a1,0x2
    8000781c:	ee058593          	addi	a1,a1,-288 # 800096f8 <CONSOLE_STATUS+0x6e8>
    80007820:	00001097          	auipc	ra,0x1
    80007824:	d88080e7          	jalr	-632(ra) # 800085a8 <initlock>
    80007828:	00000097          	auipc	ra,0x0
    8000782c:	7ac080e7          	jalr	1964(ra) # 80007fd4 <uartinit>
    80007830:	01813083          	ld	ra,24(sp)
    80007834:	01013403          	ld	s0,16(sp)
    80007838:	00000797          	auipc	a5,0x0
    8000783c:	d9c78793          	addi	a5,a5,-612 # 800075d4 <consoleread>
    80007840:	0af4bc23          	sd	a5,184(s1)
    80007844:	00000797          	auipc	a5,0x0
    80007848:	cec78793          	addi	a5,a5,-788 # 80007530 <consolewrite>
    8000784c:	0cf4b023          	sd	a5,192(s1)
    80007850:	00813483          	ld	s1,8(sp)
    80007854:	02010113          	addi	sp,sp,32
    80007858:	00008067          	ret

000000008000785c <console_read>:
    8000785c:	ff010113          	addi	sp,sp,-16
    80007860:	00813423          	sd	s0,8(sp)
    80007864:	01010413          	addi	s0,sp,16
    80007868:	00813403          	ld	s0,8(sp)
    8000786c:	00005317          	auipc	t1,0x5
    80007870:	7c433303          	ld	t1,1988(t1) # 8000d030 <devsw+0x10>
    80007874:	01010113          	addi	sp,sp,16
    80007878:	00030067          	jr	t1

000000008000787c <console_write>:
    8000787c:	ff010113          	addi	sp,sp,-16
    80007880:	00813423          	sd	s0,8(sp)
    80007884:	01010413          	addi	s0,sp,16
    80007888:	00813403          	ld	s0,8(sp)
    8000788c:	00005317          	auipc	t1,0x5
    80007890:	7ac33303          	ld	t1,1964(t1) # 8000d038 <devsw+0x18>
    80007894:	01010113          	addi	sp,sp,16
    80007898:	00030067          	jr	t1

000000008000789c <panic>:
    8000789c:	fe010113          	addi	sp,sp,-32
    800078a0:	00113c23          	sd	ra,24(sp)
    800078a4:	00813823          	sd	s0,16(sp)
    800078a8:	00913423          	sd	s1,8(sp)
    800078ac:	02010413          	addi	s0,sp,32
    800078b0:	00050493          	mv	s1,a0
    800078b4:	00002517          	auipc	a0,0x2
    800078b8:	e4c50513          	addi	a0,a0,-436 # 80009700 <CONSOLE_STATUS+0x6f0>
    800078bc:	00006797          	auipc	a5,0x6
    800078c0:	8007ae23          	sw	zero,-2020(a5) # 8000d0d8 <pr+0x18>
    800078c4:	00000097          	auipc	ra,0x0
    800078c8:	034080e7          	jalr	52(ra) # 800078f8 <__printf>
    800078cc:	00048513          	mv	a0,s1
    800078d0:	00000097          	auipc	ra,0x0
    800078d4:	028080e7          	jalr	40(ra) # 800078f8 <__printf>
    800078d8:	00002517          	auipc	a0,0x2
    800078dc:	bb050513          	addi	a0,a0,-1104 # 80009488 <CONSOLE_STATUS+0x478>
    800078e0:	00000097          	auipc	ra,0x0
    800078e4:	018080e7          	jalr	24(ra) # 800078f8 <__printf>
    800078e8:	00100793          	li	a5,1
    800078ec:	00004717          	auipc	a4,0x4
    800078f0:	4af72e23          	sw	a5,1212(a4) # 8000bda8 <panicked>
    800078f4:	0000006f          	j	800078f4 <panic+0x58>

00000000800078f8 <__printf>:
    800078f8:	f3010113          	addi	sp,sp,-208
    800078fc:	08813023          	sd	s0,128(sp)
    80007900:	07313423          	sd	s3,104(sp)
    80007904:	09010413          	addi	s0,sp,144
    80007908:	05813023          	sd	s8,64(sp)
    8000790c:	08113423          	sd	ra,136(sp)
    80007910:	06913c23          	sd	s1,120(sp)
    80007914:	07213823          	sd	s2,112(sp)
    80007918:	07413023          	sd	s4,96(sp)
    8000791c:	05513c23          	sd	s5,88(sp)
    80007920:	05613823          	sd	s6,80(sp)
    80007924:	05713423          	sd	s7,72(sp)
    80007928:	03913c23          	sd	s9,56(sp)
    8000792c:	03a13823          	sd	s10,48(sp)
    80007930:	03b13423          	sd	s11,40(sp)
    80007934:	00005317          	auipc	t1,0x5
    80007938:	78c30313          	addi	t1,t1,1932 # 8000d0c0 <pr>
    8000793c:	01832c03          	lw	s8,24(t1)
    80007940:	00b43423          	sd	a1,8(s0)
    80007944:	00c43823          	sd	a2,16(s0)
    80007948:	00d43c23          	sd	a3,24(s0)
    8000794c:	02e43023          	sd	a4,32(s0)
    80007950:	02f43423          	sd	a5,40(s0)
    80007954:	03043823          	sd	a6,48(s0)
    80007958:	03143c23          	sd	a7,56(s0)
    8000795c:	00050993          	mv	s3,a0
    80007960:	4a0c1663          	bnez	s8,80007e0c <__printf+0x514>
    80007964:	60098c63          	beqz	s3,80007f7c <__printf+0x684>
    80007968:	0009c503          	lbu	a0,0(s3)
    8000796c:	00840793          	addi	a5,s0,8
    80007970:	f6f43c23          	sd	a5,-136(s0)
    80007974:	00000493          	li	s1,0
    80007978:	22050063          	beqz	a0,80007b98 <__printf+0x2a0>
    8000797c:	00002a37          	lui	s4,0x2
    80007980:	00018ab7          	lui	s5,0x18
    80007984:	000f4b37          	lui	s6,0xf4
    80007988:	00989bb7          	lui	s7,0x989
    8000798c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007990:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007994:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007998:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000799c:	00148c9b          	addiw	s9,s1,1
    800079a0:	02500793          	li	a5,37
    800079a4:	01998933          	add	s2,s3,s9
    800079a8:	38f51263          	bne	a0,a5,80007d2c <__printf+0x434>
    800079ac:	00094783          	lbu	a5,0(s2)
    800079b0:	00078c9b          	sext.w	s9,a5
    800079b4:	1e078263          	beqz	a5,80007b98 <__printf+0x2a0>
    800079b8:	0024849b          	addiw	s1,s1,2
    800079bc:	07000713          	li	a4,112
    800079c0:	00998933          	add	s2,s3,s1
    800079c4:	38e78a63          	beq	a5,a4,80007d58 <__printf+0x460>
    800079c8:	20f76863          	bltu	a4,a5,80007bd8 <__printf+0x2e0>
    800079cc:	42a78863          	beq	a5,a0,80007dfc <__printf+0x504>
    800079d0:	06400713          	li	a4,100
    800079d4:	40e79663          	bne	a5,a4,80007de0 <__printf+0x4e8>
    800079d8:	f7843783          	ld	a5,-136(s0)
    800079dc:	0007a603          	lw	a2,0(a5)
    800079e0:	00878793          	addi	a5,a5,8
    800079e4:	f6f43c23          	sd	a5,-136(s0)
    800079e8:	42064a63          	bltz	a2,80007e1c <__printf+0x524>
    800079ec:	00a00713          	li	a4,10
    800079f0:	02e677bb          	remuw	a5,a2,a4
    800079f4:	00002d97          	auipc	s11,0x2
    800079f8:	d34d8d93          	addi	s11,s11,-716 # 80009728 <digits>
    800079fc:	00900593          	li	a1,9
    80007a00:	0006051b          	sext.w	a0,a2
    80007a04:	00000c93          	li	s9,0
    80007a08:	02079793          	slli	a5,a5,0x20
    80007a0c:	0207d793          	srli	a5,a5,0x20
    80007a10:	00fd87b3          	add	a5,s11,a5
    80007a14:	0007c783          	lbu	a5,0(a5)
    80007a18:	02e656bb          	divuw	a3,a2,a4
    80007a1c:	f8f40023          	sb	a5,-128(s0)
    80007a20:	14c5d863          	bge	a1,a2,80007b70 <__printf+0x278>
    80007a24:	06300593          	li	a1,99
    80007a28:	00100c93          	li	s9,1
    80007a2c:	02e6f7bb          	remuw	a5,a3,a4
    80007a30:	02079793          	slli	a5,a5,0x20
    80007a34:	0207d793          	srli	a5,a5,0x20
    80007a38:	00fd87b3          	add	a5,s11,a5
    80007a3c:	0007c783          	lbu	a5,0(a5)
    80007a40:	02e6d73b          	divuw	a4,a3,a4
    80007a44:	f8f400a3          	sb	a5,-127(s0)
    80007a48:	12a5f463          	bgeu	a1,a0,80007b70 <__printf+0x278>
    80007a4c:	00a00693          	li	a3,10
    80007a50:	00900593          	li	a1,9
    80007a54:	02d777bb          	remuw	a5,a4,a3
    80007a58:	02079793          	slli	a5,a5,0x20
    80007a5c:	0207d793          	srli	a5,a5,0x20
    80007a60:	00fd87b3          	add	a5,s11,a5
    80007a64:	0007c503          	lbu	a0,0(a5)
    80007a68:	02d757bb          	divuw	a5,a4,a3
    80007a6c:	f8a40123          	sb	a0,-126(s0)
    80007a70:	48e5f263          	bgeu	a1,a4,80007ef4 <__printf+0x5fc>
    80007a74:	06300513          	li	a0,99
    80007a78:	02d7f5bb          	remuw	a1,a5,a3
    80007a7c:	02059593          	slli	a1,a1,0x20
    80007a80:	0205d593          	srli	a1,a1,0x20
    80007a84:	00bd85b3          	add	a1,s11,a1
    80007a88:	0005c583          	lbu	a1,0(a1)
    80007a8c:	02d7d7bb          	divuw	a5,a5,a3
    80007a90:	f8b401a3          	sb	a1,-125(s0)
    80007a94:	48e57263          	bgeu	a0,a4,80007f18 <__printf+0x620>
    80007a98:	3e700513          	li	a0,999
    80007a9c:	02d7f5bb          	remuw	a1,a5,a3
    80007aa0:	02059593          	slli	a1,a1,0x20
    80007aa4:	0205d593          	srli	a1,a1,0x20
    80007aa8:	00bd85b3          	add	a1,s11,a1
    80007aac:	0005c583          	lbu	a1,0(a1)
    80007ab0:	02d7d7bb          	divuw	a5,a5,a3
    80007ab4:	f8b40223          	sb	a1,-124(s0)
    80007ab8:	46e57663          	bgeu	a0,a4,80007f24 <__printf+0x62c>
    80007abc:	02d7f5bb          	remuw	a1,a5,a3
    80007ac0:	02059593          	slli	a1,a1,0x20
    80007ac4:	0205d593          	srli	a1,a1,0x20
    80007ac8:	00bd85b3          	add	a1,s11,a1
    80007acc:	0005c583          	lbu	a1,0(a1)
    80007ad0:	02d7d7bb          	divuw	a5,a5,a3
    80007ad4:	f8b402a3          	sb	a1,-123(s0)
    80007ad8:	46ea7863          	bgeu	s4,a4,80007f48 <__printf+0x650>
    80007adc:	02d7f5bb          	remuw	a1,a5,a3
    80007ae0:	02059593          	slli	a1,a1,0x20
    80007ae4:	0205d593          	srli	a1,a1,0x20
    80007ae8:	00bd85b3          	add	a1,s11,a1
    80007aec:	0005c583          	lbu	a1,0(a1)
    80007af0:	02d7d7bb          	divuw	a5,a5,a3
    80007af4:	f8b40323          	sb	a1,-122(s0)
    80007af8:	3eeaf863          	bgeu	s5,a4,80007ee8 <__printf+0x5f0>
    80007afc:	02d7f5bb          	remuw	a1,a5,a3
    80007b00:	02059593          	slli	a1,a1,0x20
    80007b04:	0205d593          	srli	a1,a1,0x20
    80007b08:	00bd85b3          	add	a1,s11,a1
    80007b0c:	0005c583          	lbu	a1,0(a1)
    80007b10:	02d7d7bb          	divuw	a5,a5,a3
    80007b14:	f8b403a3          	sb	a1,-121(s0)
    80007b18:	42eb7e63          	bgeu	s6,a4,80007f54 <__printf+0x65c>
    80007b1c:	02d7f5bb          	remuw	a1,a5,a3
    80007b20:	02059593          	slli	a1,a1,0x20
    80007b24:	0205d593          	srli	a1,a1,0x20
    80007b28:	00bd85b3          	add	a1,s11,a1
    80007b2c:	0005c583          	lbu	a1,0(a1)
    80007b30:	02d7d7bb          	divuw	a5,a5,a3
    80007b34:	f8b40423          	sb	a1,-120(s0)
    80007b38:	42ebfc63          	bgeu	s7,a4,80007f70 <__printf+0x678>
    80007b3c:	02079793          	slli	a5,a5,0x20
    80007b40:	0207d793          	srli	a5,a5,0x20
    80007b44:	00fd8db3          	add	s11,s11,a5
    80007b48:	000dc703          	lbu	a4,0(s11)
    80007b4c:	00a00793          	li	a5,10
    80007b50:	00900c93          	li	s9,9
    80007b54:	f8e404a3          	sb	a4,-119(s0)
    80007b58:	00065c63          	bgez	a2,80007b70 <__printf+0x278>
    80007b5c:	f9040713          	addi	a4,s0,-112
    80007b60:	00f70733          	add	a4,a4,a5
    80007b64:	02d00693          	li	a3,45
    80007b68:	fed70823          	sb	a3,-16(a4)
    80007b6c:	00078c93          	mv	s9,a5
    80007b70:	f8040793          	addi	a5,s0,-128
    80007b74:	01978cb3          	add	s9,a5,s9
    80007b78:	f7f40d13          	addi	s10,s0,-129
    80007b7c:	000cc503          	lbu	a0,0(s9)
    80007b80:	fffc8c93          	addi	s9,s9,-1
    80007b84:	00000097          	auipc	ra,0x0
    80007b88:	b90080e7          	jalr	-1136(ra) # 80007714 <consputc>
    80007b8c:	ffac98e3          	bne	s9,s10,80007b7c <__printf+0x284>
    80007b90:	00094503          	lbu	a0,0(s2)
    80007b94:	e00514e3          	bnez	a0,8000799c <__printf+0xa4>
    80007b98:	1a0c1663          	bnez	s8,80007d44 <__printf+0x44c>
    80007b9c:	08813083          	ld	ra,136(sp)
    80007ba0:	08013403          	ld	s0,128(sp)
    80007ba4:	07813483          	ld	s1,120(sp)
    80007ba8:	07013903          	ld	s2,112(sp)
    80007bac:	06813983          	ld	s3,104(sp)
    80007bb0:	06013a03          	ld	s4,96(sp)
    80007bb4:	05813a83          	ld	s5,88(sp)
    80007bb8:	05013b03          	ld	s6,80(sp)
    80007bbc:	04813b83          	ld	s7,72(sp)
    80007bc0:	04013c03          	ld	s8,64(sp)
    80007bc4:	03813c83          	ld	s9,56(sp)
    80007bc8:	03013d03          	ld	s10,48(sp)
    80007bcc:	02813d83          	ld	s11,40(sp)
    80007bd0:	0d010113          	addi	sp,sp,208
    80007bd4:	00008067          	ret
    80007bd8:	07300713          	li	a4,115
    80007bdc:	1ce78a63          	beq	a5,a4,80007db0 <__printf+0x4b8>
    80007be0:	07800713          	li	a4,120
    80007be4:	1ee79e63          	bne	a5,a4,80007de0 <__printf+0x4e8>
    80007be8:	f7843783          	ld	a5,-136(s0)
    80007bec:	0007a703          	lw	a4,0(a5)
    80007bf0:	00878793          	addi	a5,a5,8
    80007bf4:	f6f43c23          	sd	a5,-136(s0)
    80007bf8:	28074263          	bltz	a4,80007e7c <__printf+0x584>
    80007bfc:	00002d97          	auipc	s11,0x2
    80007c00:	b2cd8d93          	addi	s11,s11,-1236 # 80009728 <digits>
    80007c04:	00f77793          	andi	a5,a4,15
    80007c08:	00fd87b3          	add	a5,s11,a5
    80007c0c:	0007c683          	lbu	a3,0(a5)
    80007c10:	00f00613          	li	a2,15
    80007c14:	0007079b          	sext.w	a5,a4
    80007c18:	f8d40023          	sb	a3,-128(s0)
    80007c1c:	0047559b          	srliw	a1,a4,0x4
    80007c20:	0047569b          	srliw	a3,a4,0x4
    80007c24:	00000c93          	li	s9,0
    80007c28:	0ee65063          	bge	a2,a4,80007d08 <__printf+0x410>
    80007c2c:	00f6f693          	andi	a3,a3,15
    80007c30:	00dd86b3          	add	a3,s11,a3
    80007c34:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007c38:	0087d79b          	srliw	a5,a5,0x8
    80007c3c:	00100c93          	li	s9,1
    80007c40:	f8d400a3          	sb	a3,-127(s0)
    80007c44:	0cb67263          	bgeu	a2,a1,80007d08 <__printf+0x410>
    80007c48:	00f7f693          	andi	a3,a5,15
    80007c4c:	00dd86b3          	add	a3,s11,a3
    80007c50:	0006c583          	lbu	a1,0(a3)
    80007c54:	00f00613          	li	a2,15
    80007c58:	0047d69b          	srliw	a3,a5,0x4
    80007c5c:	f8b40123          	sb	a1,-126(s0)
    80007c60:	0047d593          	srli	a1,a5,0x4
    80007c64:	28f67e63          	bgeu	a2,a5,80007f00 <__printf+0x608>
    80007c68:	00f6f693          	andi	a3,a3,15
    80007c6c:	00dd86b3          	add	a3,s11,a3
    80007c70:	0006c503          	lbu	a0,0(a3)
    80007c74:	0087d813          	srli	a6,a5,0x8
    80007c78:	0087d69b          	srliw	a3,a5,0x8
    80007c7c:	f8a401a3          	sb	a0,-125(s0)
    80007c80:	28b67663          	bgeu	a2,a1,80007f0c <__printf+0x614>
    80007c84:	00f6f693          	andi	a3,a3,15
    80007c88:	00dd86b3          	add	a3,s11,a3
    80007c8c:	0006c583          	lbu	a1,0(a3)
    80007c90:	00c7d513          	srli	a0,a5,0xc
    80007c94:	00c7d69b          	srliw	a3,a5,0xc
    80007c98:	f8b40223          	sb	a1,-124(s0)
    80007c9c:	29067a63          	bgeu	a2,a6,80007f30 <__printf+0x638>
    80007ca0:	00f6f693          	andi	a3,a3,15
    80007ca4:	00dd86b3          	add	a3,s11,a3
    80007ca8:	0006c583          	lbu	a1,0(a3)
    80007cac:	0107d813          	srli	a6,a5,0x10
    80007cb0:	0107d69b          	srliw	a3,a5,0x10
    80007cb4:	f8b402a3          	sb	a1,-123(s0)
    80007cb8:	28a67263          	bgeu	a2,a0,80007f3c <__printf+0x644>
    80007cbc:	00f6f693          	andi	a3,a3,15
    80007cc0:	00dd86b3          	add	a3,s11,a3
    80007cc4:	0006c683          	lbu	a3,0(a3)
    80007cc8:	0147d79b          	srliw	a5,a5,0x14
    80007ccc:	f8d40323          	sb	a3,-122(s0)
    80007cd0:	21067663          	bgeu	a2,a6,80007edc <__printf+0x5e4>
    80007cd4:	02079793          	slli	a5,a5,0x20
    80007cd8:	0207d793          	srli	a5,a5,0x20
    80007cdc:	00fd8db3          	add	s11,s11,a5
    80007ce0:	000dc683          	lbu	a3,0(s11)
    80007ce4:	00800793          	li	a5,8
    80007ce8:	00700c93          	li	s9,7
    80007cec:	f8d403a3          	sb	a3,-121(s0)
    80007cf0:	00075c63          	bgez	a4,80007d08 <__printf+0x410>
    80007cf4:	f9040713          	addi	a4,s0,-112
    80007cf8:	00f70733          	add	a4,a4,a5
    80007cfc:	02d00693          	li	a3,45
    80007d00:	fed70823          	sb	a3,-16(a4)
    80007d04:	00078c93          	mv	s9,a5
    80007d08:	f8040793          	addi	a5,s0,-128
    80007d0c:	01978cb3          	add	s9,a5,s9
    80007d10:	f7f40d13          	addi	s10,s0,-129
    80007d14:	000cc503          	lbu	a0,0(s9)
    80007d18:	fffc8c93          	addi	s9,s9,-1
    80007d1c:	00000097          	auipc	ra,0x0
    80007d20:	9f8080e7          	jalr	-1544(ra) # 80007714 <consputc>
    80007d24:	ff9d18e3          	bne	s10,s9,80007d14 <__printf+0x41c>
    80007d28:	0100006f          	j	80007d38 <__printf+0x440>
    80007d2c:	00000097          	auipc	ra,0x0
    80007d30:	9e8080e7          	jalr	-1560(ra) # 80007714 <consputc>
    80007d34:	000c8493          	mv	s1,s9
    80007d38:	00094503          	lbu	a0,0(s2)
    80007d3c:	c60510e3          	bnez	a0,8000799c <__printf+0xa4>
    80007d40:	e40c0ee3          	beqz	s8,80007b9c <__printf+0x2a4>
    80007d44:	00005517          	auipc	a0,0x5
    80007d48:	37c50513          	addi	a0,a0,892 # 8000d0c0 <pr>
    80007d4c:	00001097          	auipc	ra,0x1
    80007d50:	94c080e7          	jalr	-1716(ra) # 80008698 <release>
    80007d54:	e49ff06f          	j	80007b9c <__printf+0x2a4>
    80007d58:	f7843783          	ld	a5,-136(s0)
    80007d5c:	03000513          	li	a0,48
    80007d60:	01000d13          	li	s10,16
    80007d64:	00878713          	addi	a4,a5,8
    80007d68:	0007bc83          	ld	s9,0(a5)
    80007d6c:	f6e43c23          	sd	a4,-136(s0)
    80007d70:	00000097          	auipc	ra,0x0
    80007d74:	9a4080e7          	jalr	-1628(ra) # 80007714 <consputc>
    80007d78:	07800513          	li	a0,120
    80007d7c:	00000097          	auipc	ra,0x0
    80007d80:	998080e7          	jalr	-1640(ra) # 80007714 <consputc>
    80007d84:	00002d97          	auipc	s11,0x2
    80007d88:	9a4d8d93          	addi	s11,s11,-1628 # 80009728 <digits>
    80007d8c:	03ccd793          	srli	a5,s9,0x3c
    80007d90:	00fd87b3          	add	a5,s11,a5
    80007d94:	0007c503          	lbu	a0,0(a5)
    80007d98:	fffd0d1b          	addiw	s10,s10,-1
    80007d9c:	004c9c93          	slli	s9,s9,0x4
    80007da0:	00000097          	auipc	ra,0x0
    80007da4:	974080e7          	jalr	-1676(ra) # 80007714 <consputc>
    80007da8:	fe0d12e3          	bnez	s10,80007d8c <__printf+0x494>
    80007dac:	f8dff06f          	j	80007d38 <__printf+0x440>
    80007db0:	f7843783          	ld	a5,-136(s0)
    80007db4:	0007bc83          	ld	s9,0(a5)
    80007db8:	00878793          	addi	a5,a5,8
    80007dbc:	f6f43c23          	sd	a5,-136(s0)
    80007dc0:	000c9a63          	bnez	s9,80007dd4 <__printf+0x4dc>
    80007dc4:	1080006f          	j	80007ecc <__printf+0x5d4>
    80007dc8:	001c8c93          	addi	s9,s9,1
    80007dcc:	00000097          	auipc	ra,0x0
    80007dd0:	948080e7          	jalr	-1720(ra) # 80007714 <consputc>
    80007dd4:	000cc503          	lbu	a0,0(s9)
    80007dd8:	fe0518e3          	bnez	a0,80007dc8 <__printf+0x4d0>
    80007ddc:	f5dff06f          	j	80007d38 <__printf+0x440>
    80007de0:	02500513          	li	a0,37
    80007de4:	00000097          	auipc	ra,0x0
    80007de8:	930080e7          	jalr	-1744(ra) # 80007714 <consputc>
    80007dec:	000c8513          	mv	a0,s9
    80007df0:	00000097          	auipc	ra,0x0
    80007df4:	924080e7          	jalr	-1756(ra) # 80007714 <consputc>
    80007df8:	f41ff06f          	j	80007d38 <__printf+0x440>
    80007dfc:	02500513          	li	a0,37
    80007e00:	00000097          	auipc	ra,0x0
    80007e04:	914080e7          	jalr	-1772(ra) # 80007714 <consputc>
    80007e08:	f31ff06f          	j	80007d38 <__printf+0x440>
    80007e0c:	00030513          	mv	a0,t1
    80007e10:	00000097          	auipc	ra,0x0
    80007e14:	7bc080e7          	jalr	1980(ra) # 800085cc <acquire>
    80007e18:	b4dff06f          	j	80007964 <__printf+0x6c>
    80007e1c:	40c0053b          	negw	a0,a2
    80007e20:	00a00713          	li	a4,10
    80007e24:	02e576bb          	remuw	a3,a0,a4
    80007e28:	00002d97          	auipc	s11,0x2
    80007e2c:	900d8d93          	addi	s11,s11,-1792 # 80009728 <digits>
    80007e30:	ff700593          	li	a1,-9
    80007e34:	02069693          	slli	a3,a3,0x20
    80007e38:	0206d693          	srli	a3,a3,0x20
    80007e3c:	00dd86b3          	add	a3,s11,a3
    80007e40:	0006c683          	lbu	a3,0(a3)
    80007e44:	02e557bb          	divuw	a5,a0,a4
    80007e48:	f8d40023          	sb	a3,-128(s0)
    80007e4c:	10b65e63          	bge	a2,a1,80007f68 <__printf+0x670>
    80007e50:	06300593          	li	a1,99
    80007e54:	02e7f6bb          	remuw	a3,a5,a4
    80007e58:	02069693          	slli	a3,a3,0x20
    80007e5c:	0206d693          	srli	a3,a3,0x20
    80007e60:	00dd86b3          	add	a3,s11,a3
    80007e64:	0006c683          	lbu	a3,0(a3)
    80007e68:	02e7d73b          	divuw	a4,a5,a4
    80007e6c:	00200793          	li	a5,2
    80007e70:	f8d400a3          	sb	a3,-127(s0)
    80007e74:	bca5ece3          	bltu	a1,a0,80007a4c <__printf+0x154>
    80007e78:	ce5ff06f          	j	80007b5c <__printf+0x264>
    80007e7c:	40e007bb          	negw	a5,a4
    80007e80:	00002d97          	auipc	s11,0x2
    80007e84:	8a8d8d93          	addi	s11,s11,-1880 # 80009728 <digits>
    80007e88:	00f7f693          	andi	a3,a5,15
    80007e8c:	00dd86b3          	add	a3,s11,a3
    80007e90:	0006c583          	lbu	a1,0(a3)
    80007e94:	ff100613          	li	a2,-15
    80007e98:	0047d69b          	srliw	a3,a5,0x4
    80007e9c:	f8b40023          	sb	a1,-128(s0)
    80007ea0:	0047d59b          	srliw	a1,a5,0x4
    80007ea4:	0ac75e63          	bge	a4,a2,80007f60 <__printf+0x668>
    80007ea8:	00f6f693          	andi	a3,a3,15
    80007eac:	00dd86b3          	add	a3,s11,a3
    80007eb0:	0006c603          	lbu	a2,0(a3)
    80007eb4:	00f00693          	li	a3,15
    80007eb8:	0087d79b          	srliw	a5,a5,0x8
    80007ebc:	f8c400a3          	sb	a2,-127(s0)
    80007ec0:	d8b6e4e3          	bltu	a3,a1,80007c48 <__printf+0x350>
    80007ec4:	00200793          	li	a5,2
    80007ec8:	e2dff06f          	j	80007cf4 <__printf+0x3fc>
    80007ecc:	00002c97          	auipc	s9,0x2
    80007ed0:	83cc8c93          	addi	s9,s9,-1988 # 80009708 <CONSOLE_STATUS+0x6f8>
    80007ed4:	02800513          	li	a0,40
    80007ed8:	ef1ff06f          	j	80007dc8 <__printf+0x4d0>
    80007edc:	00700793          	li	a5,7
    80007ee0:	00600c93          	li	s9,6
    80007ee4:	e0dff06f          	j	80007cf0 <__printf+0x3f8>
    80007ee8:	00700793          	li	a5,7
    80007eec:	00600c93          	li	s9,6
    80007ef0:	c69ff06f          	j	80007b58 <__printf+0x260>
    80007ef4:	00300793          	li	a5,3
    80007ef8:	00200c93          	li	s9,2
    80007efc:	c5dff06f          	j	80007b58 <__printf+0x260>
    80007f00:	00300793          	li	a5,3
    80007f04:	00200c93          	li	s9,2
    80007f08:	de9ff06f          	j	80007cf0 <__printf+0x3f8>
    80007f0c:	00400793          	li	a5,4
    80007f10:	00300c93          	li	s9,3
    80007f14:	dddff06f          	j	80007cf0 <__printf+0x3f8>
    80007f18:	00400793          	li	a5,4
    80007f1c:	00300c93          	li	s9,3
    80007f20:	c39ff06f          	j	80007b58 <__printf+0x260>
    80007f24:	00500793          	li	a5,5
    80007f28:	00400c93          	li	s9,4
    80007f2c:	c2dff06f          	j	80007b58 <__printf+0x260>
    80007f30:	00500793          	li	a5,5
    80007f34:	00400c93          	li	s9,4
    80007f38:	db9ff06f          	j	80007cf0 <__printf+0x3f8>
    80007f3c:	00600793          	li	a5,6
    80007f40:	00500c93          	li	s9,5
    80007f44:	dadff06f          	j	80007cf0 <__printf+0x3f8>
    80007f48:	00600793          	li	a5,6
    80007f4c:	00500c93          	li	s9,5
    80007f50:	c09ff06f          	j	80007b58 <__printf+0x260>
    80007f54:	00800793          	li	a5,8
    80007f58:	00700c93          	li	s9,7
    80007f5c:	bfdff06f          	j	80007b58 <__printf+0x260>
    80007f60:	00100793          	li	a5,1
    80007f64:	d91ff06f          	j	80007cf4 <__printf+0x3fc>
    80007f68:	00100793          	li	a5,1
    80007f6c:	bf1ff06f          	j	80007b5c <__printf+0x264>
    80007f70:	00900793          	li	a5,9
    80007f74:	00800c93          	li	s9,8
    80007f78:	be1ff06f          	j	80007b58 <__printf+0x260>
    80007f7c:	00001517          	auipc	a0,0x1
    80007f80:	79450513          	addi	a0,a0,1940 # 80009710 <CONSOLE_STATUS+0x700>
    80007f84:	00000097          	auipc	ra,0x0
    80007f88:	918080e7          	jalr	-1768(ra) # 8000789c <panic>

0000000080007f8c <printfinit>:
    80007f8c:	fe010113          	addi	sp,sp,-32
    80007f90:	00813823          	sd	s0,16(sp)
    80007f94:	00913423          	sd	s1,8(sp)
    80007f98:	00113c23          	sd	ra,24(sp)
    80007f9c:	02010413          	addi	s0,sp,32
    80007fa0:	00005497          	auipc	s1,0x5
    80007fa4:	12048493          	addi	s1,s1,288 # 8000d0c0 <pr>
    80007fa8:	00048513          	mv	a0,s1
    80007fac:	00001597          	auipc	a1,0x1
    80007fb0:	77458593          	addi	a1,a1,1908 # 80009720 <CONSOLE_STATUS+0x710>
    80007fb4:	00000097          	auipc	ra,0x0
    80007fb8:	5f4080e7          	jalr	1524(ra) # 800085a8 <initlock>
    80007fbc:	01813083          	ld	ra,24(sp)
    80007fc0:	01013403          	ld	s0,16(sp)
    80007fc4:	0004ac23          	sw	zero,24(s1)
    80007fc8:	00813483          	ld	s1,8(sp)
    80007fcc:	02010113          	addi	sp,sp,32
    80007fd0:	00008067          	ret

0000000080007fd4 <uartinit>:
    80007fd4:	ff010113          	addi	sp,sp,-16
    80007fd8:	00813423          	sd	s0,8(sp)
    80007fdc:	01010413          	addi	s0,sp,16
    80007fe0:	100007b7          	lui	a5,0x10000
    80007fe4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007fe8:	f8000713          	li	a4,-128
    80007fec:	00e781a3          	sb	a4,3(a5)
    80007ff0:	00300713          	li	a4,3
    80007ff4:	00e78023          	sb	a4,0(a5)
    80007ff8:	000780a3          	sb	zero,1(a5)
    80007ffc:	00e781a3          	sb	a4,3(a5)
    80008000:	00700693          	li	a3,7
    80008004:	00d78123          	sb	a3,2(a5)
    80008008:	00e780a3          	sb	a4,1(a5)
    8000800c:	00813403          	ld	s0,8(sp)
    80008010:	01010113          	addi	sp,sp,16
    80008014:	00008067          	ret

0000000080008018 <uartputc>:
    80008018:	00004797          	auipc	a5,0x4
    8000801c:	d907a783          	lw	a5,-624(a5) # 8000bda8 <panicked>
    80008020:	00078463          	beqz	a5,80008028 <uartputc+0x10>
    80008024:	0000006f          	j	80008024 <uartputc+0xc>
    80008028:	fd010113          	addi	sp,sp,-48
    8000802c:	02813023          	sd	s0,32(sp)
    80008030:	00913c23          	sd	s1,24(sp)
    80008034:	01213823          	sd	s2,16(sp)
    80008038:	01313423          	sd	s3,8(sp)
    8000803c:	02113423          	sd	ra,40(sp)
    80008040:	03010413          	addi	s0,sp,48
    80008044:	00004917          	auipc	s2,0x4
    80008048:	d6c90913          	addi	s2,s2,-660 # 8000bdb0 <uart_tx_r>
    8000804c:	00093783          	ld	a5,0(s2)
    80008050:	00004497          	auipc	s1,0x4
    80008054:	d6848493          	addi	s1,s1,-664 # 8000bdb8 <uart_tx_w>
    80008058:	0004b703          	ld	a4,0(s1)
    8000805c:	02078693          	addi	a3,a5,32
    80008060:	00050993          	mv	s3,a0
    80008064:	02e69c63          	bne	a3,a4,8000809c <uartputc+0x84>
    80008068:	00001097          	auipc	ra,0x1
    8000806c:	834080e7          	jalr	-1996(ra) # 8000889c <push_on>
    80008070:	00093783          	ld	a5,0(s2)
    80008074:	0004b703          	ld	a4,0(s1)
    80008078:	02078793          	addi	a5,a5,32
    8000807c:	00e79463          	bne	a5,a4,80008084 <uartputc+0x6c>
    80008080:	0000006f          	j	80008080 <uartputc+0x68>
    80008084:	00001097          	auipc	ra,0x1
    80008088:	88c080e7          	jalr	-1908(ra) # 80008910 <pop_on>
    8000808c:	00093783          	ld	a5,0(s2)
    80008090:	0004b703          	ld	a4,0(s1)
    80008094:	02078693          	addi	a3,a5,32
    80008098:	fce688e3          	beq	a3,a4,80008068 <uartputc+0x50>
    8000809c:	01f77693          	andi	a3,a4,31
    800080a0:	00005597          	auipc	a1,0x5
    800080a4:	04058593          	addi	a1,a1,64 # 8000d0e0 <uart_tx_buf>
    800080a8:	00d586b3          	add	a3,a1,a3
    800080ac:	00170713          	addi	a4,a4,1
    800080b0:	01368023          	sb	s3,0(a3)
    800080b4:	00e4b023          	sd	a4,0(s1)
    800080b8:	10000637          	lui	a2,0x10000
    800080bc:	02f71063          	bne	a4,a5,800080dc <uartputc+0xc4>
    800080c0:	0340006f          	j	800080f4 <uartputc+0xdc>
    800080c4:	00074703          	lbu	a4,0(a4)
    800080c8:	00f93023          	sd	a5,0(s2)
    800080cc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800080d0:	00093783          	ld	a5,0(s2)
    800080d4:	0004b703          	ld	a4,0(s1)
    800080d8:	00f70e63          	beq	a4,a5,800080f4 <uartputc+0xdc>
    800080dc:	00564683          	lbu	a3,5(a2)
    800080e0:	01f7f713          	andi	a4,a5,31
    800080e4:	00e58733          	add	a4,a1,a4
    800080e8:	0206f693          	andi	a3,a3,32
    800080ec:	00178793          	addi	a5,a5,1
    800080f0:	fc069ae3          	bnez	a3,800080c4 <uartputc+0xac>
    800080f4:	02813083          	ld	ra,40(sp)
    800080f8:	02013403          	ld	s0,32(sp)
    800080fc:	01813483          	ld	s1,24(sp)
    80008100:	01013903          	ld	s2,16(sp)
    80008104:	00813983          	ld	s3,8(sp)
    80008108:	03010113          	addi	sp,sp,48
    8000810c:	00008067          	ret

0000000080008110 <uartputc_sync>:
    80008110:	ff010113          	addi	sp,sp,-16
    80008114:	00813423          	sd	s0,8(sp)
    80008118:	01010413          	addi	s0,sp,16
    8000811c:	00004717          	auipc	a4,0x4
    80008120:	c8c72703          	lw	a4,-884(a4) # 8000bda8 <panicked>
    80008124:	02071663          	bnez	a4,80008150 <uartputc_sync+0x40>
    80008128:	00050793          	mv	a5,a0
    8000812c:	100006b7          	lui	a3,0x10000
    80008130:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80008134:	02077713          	andi	a4,a4,32
    80008138:	fe070ce3          	beqz	a4,80008130 <uartputc_sync+0x20>
    8000813c:	0ff7f793          	andi	a5,a5,255
    80008140:	00f68023          	sb	a5,0(a3)
    80008144:	00813403          	ld	s0,8(sp)
    80008148:	01010113          	addi	sp,sp,16
    8000814c:	00008067          	ret
    80008150:	0000006f          	j	80008150 <uartputc_sync+0x40>

0000000080008154 <uartstart>:
    80008154:	ff010113          	addi	sp,sp,-16
    80008158:	00813423          	sd	s0,8(sp)
    8000815c:	01010413          	addi	s0,sp,16
    80008160:	00004617          	auipc	a2,0x4
    80008164:	c5060613          	addi	a2,a2,-944 # 8000bdb0 <uart_tx_r>
    80008168:	00004517          	auipc	a0,0x4
    8000816c:	c5050513          	addi	a0,a0,-944 # 8000bdb8 <uart_tx_w>
    80008170:	00063783          	ld	a5,0(a2)
    80008174:	00053703          	ld	a4,0(a0)
    80008178:	04f70263          	beq	a4,a5,800081bc <uartstart+0x68>
    8000817c:	100005b7          	lui	a1,0x10000
    80008180:	00005817          	auipc	a6,0x5
    80008184:	f6080813          	addi	a6,a6,-160 # 8000d0e0 <uart_tx_buf>
    80008188:	01c0006f          	j	800081a4 <uartstart+0x50>
    8000818c:	0006c703          	lbu	a4,0(a3)
    80008190:	00f63023          	sd	a5,0(a2)
    80008194:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80008198:	00063783          	ld	a5,0(a2)
    8000819c:	00053703          	ld	a4,0(a0)
    800081a0:	00f70e63          	beq	a4,a5,800081bc <uartstart+0x68>
    800081a4:	01f7f713          	andi	a4,a5,31
    800081a8:	00e806b3          	add	a3,a6,a4
    800081ac:	0055c703          	lbu	a4,5(a1)
    800081b0:	00178793          	addi	a5,a5,1
    800081b4:	02077713          	andi	a4,a4,32
    800081b8:	fc071ae3          	bnez	a4,8000818c <uartstart+0x38>
    800081bc:	00813403          	ld	s0,8(sp)
    800081c0:	01010113          	addi	sp,sp,16
    800081c4:	00008067          	ret

00000000800081c8 <uartgetc>:
    800081c8:	ff010113          	addi	sp,sp,-16
    800081cc:	00813423          	sd	s0,8(sp)
    800081d0:	01010413          	addi	s0,sp,16
    800081d4:	10000737          	lui	a4,0x10000
    800081d8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800081dc:	0017f793          	andi	a5,a5,1
    800081e0:	00078c63          	beqz	a5,800081f8 <uartgetc+0x30>
    800081e4:	00074503          	lbu	a0,0(a4)
    800081e8:	0ff57513          	andi	a0,a0,255
    800081ec:	00813403          	ld	s0,8(sp)
    800081f0:	01010113          	addi	sp,sp,16
    800081f4:	00008067          	ret
    800081f8:	fff00513          	li	a0,-1
    800081fc:	ff1ff06f          	j	800081ec <uartgetc+0x24>

0000000080008200 <uartintr>:
    80008200:	100007b7          	lui	a5,0x10000
    80008204:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80008208:	0017f793          	andi	a5,a5,1
    8000820c:	0a078463          	beqz	a5,800082b4 <uartintr+0xb4>
    80008210:	fe010113          	addi	sp,sp,-32
    80008214:	00813823          	sd	s0,16(sp)
    80008218:	00913423          	sd	s1,8(sp)
    8000821c:	00113c23          	sd	ra,24(sp)
    80008220:	02010413          	addi	s0,sp,32
    80008224:	100004b7          	lui	s1,0x10000
    80008228:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000822c:	0ff57513          	andi	a0,a0,255
    80008230:	fffff097          	auipc	ra,0xfffff
    80008234:	534080e7          	jalr	1332(ra) # 80007764 <consoleintr>
    80008238:	0054c783          	lbu	a5,5(s1)
    8000823c:	0017f793          	andi	a5,a5,1
    80008240:	fe0794e3          	bnez	a5,80008228 <uartintr+0x28>
    80008244:	00004617          	auipc	a2,0x4
    80008248:	b6c60613          	addi	a2,a2,-1172 # 8000bdb0 <uart_tx_r>
    8000824c:	00004517          	auipc	a0,0x4
    80008250:	b6c50513          	addi	a0,a0,-1172 # 8000bdb8 <uart_tx_w>
    80008254:	00063783          	ld	a5,0(a2)
    80008258:	00053703          	ld	a4,0(a0)
    8000825c:	04f70263          	beq	a4,a5,800082a0 <uartintr+0xa0>
    80008260:	100005b7          	lui	a1,0x10000
    80008264:	00005817          	auipc	a6,0x5
    80008268:	e7c80813          	addi	a6,a6,-388 # 8000d0e0 <uart_tx_buf>
    8000826c:	01c0006f          	j	80008288 <uartintr+0x88>
    80008270:	0006c703          	lbu	a4,0(a3)
    80008274:	00f63023          	sd	a5,0(a2)
    80008278:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000827c:	00063783          	ld	a5,0(a2)
    80008280:	00053703          	ld	a4,0(a0)
    80008284:	00f70e63          	beq	a4,a5,800082a0 <uartintr+0xa0>
    80008288:	01f7f713          	andi	a4,a5,31
    8000828c:	00e806b3          	add	a3,a6,a4
    80008290:	0055c703          	lbu	a4,5(a1)
    80008294:	00178793          	addi	a5,a5,1
    80008298:	02077713          	andi	a4,a4,32
    8000829c:	fc071ae3          	bnez	a4,80008270 <uartintr+0x70>
    800082a0:	01813083          	ld	ra,24(sp)
    800082a4:	01013403          	ld	s0,16(sp)
    800082a8:	00813483          	ld	s1,8(sp)
    800082ac:	02010113          	addi	sp,sp,32
    800082b0:	00008067          	ret
    800082b4:	00004617          	auipc	a2,0x4
    800082b8:	afc60613          	addi	a2,a2,-1284 # 8000bdb0 <uart_tx_r>
    800082bc:	00004517          	auipc	a0,0x4
    800082c0:	afc50513          	addi	a0,a0,-1284 # 8000bdb8 <uart_tx_w>
    800082c4:	00063783          	ld	a5,0(a2)
    800082c8:	00053703          	ld	a4,0(a0)
    800082cc:	04f70263          	beq	a4,a5,80008310 <uartintr+0x110>
    800082d0:	100005b7          	lui	a1,0x10000
    800082d4:	00005817          	auipc	a6,0x5
    800082d8:	e0c80813          	addi	a6,a6,-500 # 8000d0e0 <uart_tx_buf>
    800082dc:	01c0006f          	j	800082f8 <uartintr+0xf8>
    800082e0:	0006c703          	lbu	a4,0(a3)
    800082e4:	00f63023          	sd	a5,0(a2)
    800082e8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800082ec:	00063783          	ld	a5,0(a2)
    800082f0:	00053703          	ld	a4,0(a0)
    800082f4:	02f70063          	beq	a4,a5,80008314 <uartintr+0x114>
    800082f8:	01f7f713          	andi	a4,a5,31
    800082fc:	00e806b3          	add	a3,a6,a4
    80008300:	0055c703          	lbu	a4,5(a1)
    80008304:	00178793          	addi	a5,a5,1
    80008308:	02077713          	andi	a4,a4,32
    8000830c:	fc071ae3          	bnez	a4,800082e0 <uartintr+0xe0>
    80008310:	00008067          	ret
    80008314:	00008067          	ret

0000000080008318 <kinit>:
    80008318:	fc010113          	addi	sp,sp,-64
    8000831c:	02913423          	sd	s1,40(sp)
    80008320:	fffff7b7          	lui	a5,0xfffff
    80008324:	00006497          	auipc	s1,0x6
    80008328:	ddb48493          	addi	s1,s1,-549 # 8000e0ff <end+0xfff>
    8000832c:	02813823          	sd	s0,48(sp)
    80008330:	01313c23          	sd	s3,24(sp)
    80008334:	00f4f4b3          	and	s1,s1,a5
    80008338:	02113c23          	sd	ra,56(sp)
    8000833c:	03213023          	sd	s2,32(sp)
    80008340:	01413823          	sd	s4,16(sp)
    80008344:	01513423          	sd	s5,8(sp)
    80008348:	04010413          	addi	s0,sp,64
    8000834c:	000017b7          	lui	a5,0x1
    80008350:	01100993          	li	s3,17
    80008354:	00f487b3          	add	a5,s1,a5
    80008358:	01b99993          	slli	s3,s3,0x1b
    8000835c:	06f9e063          	bltu	s3,a5,800083bc <kinit+0xa4>
    80008360:	00005a97          	auipc	s5,0x5
    80008364:	da0a8a93          	addi	s5,s5,-608 # 8000d100 <end>
    80008368:	0754ec63          	bltu	s1,s5,800083e0 <kinit+0xc8>
    8000836c:	0734fa63          	bgeu	s1,s3,800083e0 <kinit+0xc8>
    80008370:	00088a37          	lui	s4,0x88
    80008374:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80008378:	00004917          	auipc	s2,0x4
    8000837c:	a4890913          	addi	s2,s2,-1464 # 8000bdc0 <kmem>
    80008380:	00ca1a13          	slli	s4,s4,0xc
    80008384:	0140006f          	j	80008398 <kinit+0x80>
    80008388:	000017b7          	lui	a5,0x1
    8000838c:	00f484b3          	add	s1,s1,a5
    80008390:	0554e863          	bltu	s1,s5,800083e0 <kinit+0xc8>
    80008394:	0534f663          	bgeu	s1,s3,800083e0 <kinit+0xc8>
    80008398:	00001637          	lui	a2,0x1
    8000839c:	00100593          	li	a1,1
    800083a0:	00048513          	mv	a0,s1
    800083a4:	00000097          	auipc	ra,0x0
    800083a8:	5e4080e7          	jalr	1508(ra) # 80008988 <__memset>
    800083ac:	00093783          	ld	a5,0(s2)
    800083b0:	00f4b023          	sd	a5,0(s1)
    800083b4:	00993023          	sd	s1,0(s2)
    800083b8:	fd4498e3          	bne	s1,s4,80008388 <kinit+0x70>
    800083bc:	03813083          	ld	ra,56(sp)
    800083c0:	03013403          	ld	s0,48(sp)
    800083c4:	02813483          	ld	s1,40(sp)
    800083c8:	02013903          	ld	s2,32(sp)
    800083cc:	01813983          	ld	s3,24(sp)
    800083d0:	01013a03          	ld	s4,16(sp)
    800083d4:	00813a83          	ld	s5,8(sp)
    800083d8:	04010113          	addi	sp,sp,64
    800083dc:	00008067          	ret
    800083e0:	00001517          	auipc	a0,0x1
    800083e4:	36050513          	addi	a0,a0,864 # 80009740 <digits+0x18>
    800083e8:	fffff097          	auipc	ra,0xfffff
    800083ec:	4b4080e7          	jalr	1204(ra) # 8000789c <panic>

00000000800083f0 <freerange>:
    800083f0:	fc010113          	addi	sp,sp,-64
    800083f4:	000017b7          	lui	a5,0x1
    800083f8:	02913423          	sd	s1,40(sp)
    800083fc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80008400:	009504b3          	add	s1,a0,s1
    80008404:	fffff537          	lui	a0,0xfffff
    80008408:	02813823          	sd	s0,48(sp)
    8000840c:	02113c23          	sd	ra,56(sp)
    80008410:	03213023          	sd	s2,32(sp)
    80008414:	01313c23          	sd	s3,24(sp)
    80008418:	01413823          	sd	s4,16(sp)
    8000841c:	01513423          	sd	s5,8(sp)
    80008420:	01613023          	sd	s6,0(sp)
    80008424:	04010413          	addi	s0,sp,64
    80008428:	00a4f4b3          	and	s1,s1,a0
    8000842c:	00f487b3          	add	a5,s1,a5
    80008430:	06f5e463          	bltu	a1,a5,80008498 <freerange+0xa8>
    80008434:	00005a97          	auipc	s5,0x5
    80008438:	ccca8a93          	addi	s5,s5,-820 # 8000d100 <end>
    8000843c:	0954e263          	bltu	s1,s5,800084c0 <freerange+0xd0>
    80008440:	01100993          	li	s3,17
    80008444:	01b99993          	slli	s3,s3,0x1b
    80008448:	0734fc63          	bgeu	s1,s3,800084c0 <freerange+0xd0>
    8000844c:	00058a13          	mv	s4,a1
    80008450:	00004917          	auipc	s2,0x4
    80008454:	97090913          	addi	s2,s2,-1680 # 8000bdc0 <kmem>
    80008458:	00002b37          	lui	s6,0x2
    8000845c:	0140006f          	j	80008470 <freerange+0x80>
    80008460:	000017b7          	lui	a5,0x1
    80008464:	00f484b3          	add	s1,s1,a5
    80008468:	0554ec63          	bltu	s1,s5,800084c0 <freerange+0xd0>
    8000846c:	0534fa63          	bgeu	s1,s3,800084c0 <freerange+0xd0>
    80008470:	00001637          	lui	a2,0x1
    80008474:	00100593          	li	a1,1
    80008478:	00048513          	mv	a0,s1
    8000847c:	00000097          	auipc	ra,0x0
    80008480:	50c080e7          	jalr	1292(ra) # 80008988 <__memset>
    80008484:	00093703          	ld	a4,0(s2)
    80008488:	016487b3          	add	a5,s1,s6
    8000848c:	00e4b023          	sd	a4,0(s1)
    80008490:	00993023          	sd	s1,0(s2)
    80008494:	fcfa76e3          	bgeu	s4,a5,80008460 <freerange+0x70>
    80008498:	03813083          	ld	ra,56(sp)
    8000849c:	03013403          	ld	s0,48(sp)
    800084a0:	02813483          	ld	s1,40(sp)
    800084a4:	02013903          	ld	s2,32(sp)
    800084a8:	01813983          	ld	s3,24(sp)
    800084ac:	01013a03          	ld	s4,16(sp)
    800084b0:	00813a83          	ld	s5,8(sp)
    800084b4:	00013b03          	ld	s6,0(sp)
    800084b8:	04010113          	addi	sp,sp,64
    800084bc:	00008067          	ret
    800084c0:	00001517          	auipc	a0,0x1
    800084c4:	28050513          	addi	a0,a0,640 # 80009740 <digits+0x18>
    800084c8:	fffff097          	auipc	ra,0xfffff
    800084cc:	3d4080e7          	jalr	980(ra) # 8000789c <panic>

00000000800084d0 <kfree>:
    800084d0:	fe010113          	addi	sp,sp,-32
    800084d4:	00813823          	sd	s0,16(sp)
    800084d8:	00113c23          	sd	ra,24(sp)
    800084dc:	00913423          	sd	s1,8(sp)
    800084e0:	02010413          	addi	s0,sp,32
    800084e4:	03451793          	slli	a5,a0,0x34
    800084e8:	04079c63          	bnez	a5,80008540 <kfree+0x70>
    800084ec:	00005797          	auipc	a5,0x5
    800084f0:	c1478793          	addi	a5,a5,-1004 # 8000d100 <end>
    800084f4:	00050493          	mv	s1,a0
    800084f8:	04f56463          	bltu	a0,a5,80008540 <kfree+0x70>
    800084fc:	01100793          	li	a5,17
    80008500:	01b79793          	slli	a5,a5,0x1b
    80008504:	02f57e63          	bgeu	a0,a5,80008540 <kfree+0x70>
    80008508:	00001637          	lui	a2,0x1
    8000850c:	00100593          	li	a1,1
    80008510:	00000097          	auipc	ra,0x0
    80008514:	478080e7          	jalr	1144(ra) # 80008988 <__memset>
    80008518:	00004797          	auipc	a5,0x4
    8000851c:	8a878793          	addi	a5,a5,-1880 # 8000bdc0 <kmem>
    80008520:	0007b703          	ld	a4,0(a5)
    80008524:	01813083          	ld	ra,24(sp)
    80008528:	01013403          	ld	s0,16(sp)
    8000852c:	00e4b023          	sd	a4,0(s1)
    80008530:	0097b023          	sd	s1,0(a5)
    80008534:	00813483          	ld	s1,8(sp)
    80008538:	02010113          	addi	sp,sp,32
    8000853c:	00008067          	ret
    80008540:	00001517          	auipc	a0,0x1
    80008544:	20050513          	addi	a0,a0,512 # 80009740 <digits+0x18>
    80008548:	fffff097          	auipc	ra,0xfffff
    8000854c:	354080e7          	jalr	852(ra) # 8000789c <panic>

0000000080008550 <kalloc>:
    80008550:	fe010113          	addi	sp,sp,-32
    80008554:	00813823          	sd	s0,16(sp)
    80008558:	00913423          	sd	s1,8(sp)
    8000855c:	00113c23          	sd	ra,24(sp)
    80008560:	02010413          	addi	s0,sp,32
    80008564:	00004797          	auipc	a5,0x4
    80008568:	85c78793          	addi	a5,a5,-1956 # 8000bdc0 <kmem>
    8000856c:	0007b483          	ld	s1,0(a5)
    80008570:	02048063          	beqz	s1,80008590 <kalloc+0x40>
    80008574:	0004b703          	ld	a4,0(s1)
    80008578:	00001637          	lui	a2,0x1
    8000857c:	00500593          	li	a1,5
    80008580:	00048513          	mv	a0,s1
    80008584:	00e7b023          	sd	a4,0(a5)
    80008588:	00000097          	auipc	ra,0x0
    8000858c:	400080e7          	jalr	1024(ra) # 80008988 <__memset>
    80008590:	01813083          	ld	ra,24(sp)
    80008594:	01013403          	ld	s0,16(sp)
    80008598:	00048513          	mv	a0,s1
    8000859c:	00813483          	ld	s1,8(sp)
    800085a0:	02010113          	addi	sp,sp,32
    800085a4:	00008067          	ret

00000000800085a8 <initlock>:
    800085a8:	ff010113          	addi	sp,sp,-16
    800085ac:	00813423          	sd	s0,8(sp)
    800085b0:	01010413          	addi	s0,sp,16
    800085b4:	00813403          	ld	s0,8(sp)
    800085b8:	00b53423          	sd	a1,8(a0)
    800085bc:	00052023          	sw	zero,0(a0)
    800085c0:	00053823          	sd	zero,16(a0)
    800085c4:	01010113          	addi	sp,sp,16
    800085c8:	00008067          	ret

00000000800085cc <acquire>:
    800085cc:	fe010113          	addi	sp,sp,-32
    800085d0:	00813823          	sd	s0,16(sp)
    800085d4:	00913423          	sd	s1,8(sp)
    800085d8:	00113c23          	sd	ra,24(sp)
    800085dc:	01213023          	sd	s2,0(sp)
    800085e0:	02010413          	addi	s0,sp,32
    800085e4:	00050493          	mv	s1,a0
    800085e8:	10002973          	csrr	s2,sstatus
    800085ec:	100027f3          	csrr	a5,sstatus
    800085f0:	ffd7f793          	andi	a5,a5,-3
    800085f4:	10079073          	csrw	sstatus,a5
    800085f8:	fffff097          	auipc	ra,0xfffff
    800085fc:	8e4080e7          	jalr	-1820(ra) # 80006edc <mycpu>
    80008600:	07852783          	lw	a5,120(a0)
    80008604:	06078e63          	beqz	a5,80008680 <acquire+0xb4>
    80008608:	fffff097          	auipc	ra,0xfffff
    8000860c:	8d4080e7          	jalr	-1836(ra) # 80006edc <mycpu>
    80008610:	07852783          	lw	a5,120(a0)
    80008614:	0004a703          	lw	a4,0(s1)
    80008618:	0017879b          	addiw	a5,a5,1
    8000861c:	06f52c23          	sw	a5,120(a0)
    80008620:	04071063          	bnez	a4,80008660 <acquire+0x94>
    80008624:	00100713          	li	a4,1
    80008628:	00070793          	mv	a5,a4
    8000862c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008630:	0007879b          	sext.w	a5,a5
    80008634:	fe079ae3          	bnez	a5,80008628 <acquire+0x5c>
    80008638:	0ff0000f          	fence
    8000863c:	fffff097          	auipc	ra,0xfffff
    80008640:	8a0080e7          	jalr	-1888(ra) # 80006edc <mycpu>
    80008644:	01813083          	ld	ra,24(sp)
    80008648:	01013403          	ld	s0,16(sp)
    8000864c:	00a4b823          	sd	a0,16(s1)
    80008650:	00013903          	ld	s2,0(sp)
    80008654:	00813483          	ld	s1,8(sp)
    80008658:	02010113          	addi	sp,sp,32
    8000865c:	00008067          	ret
    80008660:	0104b903          	ld	s2,16(s1)
    80008664:	fffff097          	auipc	ra,0xfffff
    80008668:	878080e7          	jalr	-1928(ra) # 80006edc <mycpu>
    8000866c:	faa91ce3          	bne	s2,a0,80008624 <acquire+0x58>
    80008670:	00001517          	auipc	a0,0x1
    80008674:	0d850513          	addi	a0,a0,216 # 80009748 <digits+0x20>
    80008678:	fffff097          	auipc	ra,0xfffff
    8000867c:	224080e7          	jalr	548(ra) # 8000789c <panic>
    80008680:	00195913          	srli	s2,s2,0x1
    80008684:	fffff097          	auipc	ra,0xfffff
    80008688:	858080e7          	jalr	-1960(ra) # 80006edc <mycpu>
    8000868c:	00197913          	andi	s2,s2,1
    80008690:	07252e23          	sw	s2,124(a0)
    80008694:	f75ff06f          	j	80008608 <acquire+0x3c>

0000000080008698 <release>:
    80008698:	fe010113          	addi	sp,sp,-32
    8000869c:	00813823          	sd	s0,16(sp)
    800086a0:	00113c23          	sd	ra,24(sp)
    800086a4:	00913423          	sd	s1,8(sp)
    800086a8:	01213023          	sd	s2,0(sp)
    800086ac:	02010413          	addi	s0,sp,32
    800086b0:	00052783          	lw	a5,0(a0)
    800086b4:	00079a63          	bnez	a5,800086c8 <release+0x30>
    800086b8:	00001517          	auipc	a0,0x1
    800086bc:	09850513          	addi	a0,a0,152 # 80009750 <digits+0x28>
    800086c0:	fffff097          	auipc	ra,0xfffff
    800086c4:	1dc080e7          	jalr	476(ra) # 8000789c <panic>
    800086c8:	01053903          	ld	s2,16(a0)
    800086cc:	00050493          	mv	s1,a0
    800086d0:	fffff097          	auipc	ra,0xfffff
    800086d4:	80c080e7          	jalr	-2036(ra) # 80006edc <mycpu>
    800086d8:	fea910e3          	bne	s2,a0,800086b8 <release+0x20>
    800086dc:	0004b823          	sd	zero,16(s1)
    800086e0:	0ff0000f          	fence
    800086e4:	0f50000f          	fence	iorw,ow
    800086e8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800086ec:	ffffe097          	auipc	ra,0xffffe
    800086f0:	7f0080e7          	jalr	2032(ra) # 80006edc <mycpu>
    800086f4:	100027f3          	csrr	a5,sstatus
    800086f8:	0027f793          	andi	a5,a5,2
    800086fc:	04079a63          	bnez	a5,80008750 <release+0xb8>
    80008700:	07852783          	lw	a5,120(a0)
    80008704:	02f05e63          	blez	a5,80008740 <release+0xa8>
    80008708:	fff7871b          	addiw	a4,a5,-1
    8000870c:	06e52c23          	sw	a4,120(a0)
    80008710:	00071c63          	bnez	a4,80008728 <release+0x90>
    80008714:	07c52783          	lw	a5,124(a0)
    80008718:	00078863          	beqz	a5,80008728 <release+0x90>
    8000871c:	100027f3          	csrr	a5,sstatus
    80008720:	0027e793          	ori	a5,a5,2
    80008724:	10079073          	csrw	sstatus,a5
    80008728:	01813083          	ld	ra,24(sp)
    8000872c:	01013403          	ld	s0,16(sp)
    80008730:	00813483          	ld	s1,8(sp)
    80008734:	00013903          	ld	s2,0(sp)
    80008738:	02010113          	addi	sp,sp,32
    8000873c:	00008067          	ret
    80008740:	00001517          	auipc	a0,0x1
    80008744:	03050513          	addi	a0,a0,48 # 80009770 <digits+0x48>
    80008748:	fffff097          	auipc	ra,0xfffff
    8000874c:	154080e7          	jalr	340(ra) # 8000789c <panic>
    80008750:	00001517          	auipc	a0,0x1
    80008754:	00850513          	addi	a0,a0,8 # 80009758 <digits+0x30>
    80008758:	fffff097          	auipc	ra,0xfffff
    8000875c:	144080e7          	jalr	324(ra) # 8000789c <panic>

0000000080008760 <holding>:
    80008760:	00052783          	lw	a5,0(a0)
    80008764:	00079663          	bnez	a5,80008770 <holding+0x10>
    80008768:	00000513          	li	a0,0
    8000876c:	00008067          	ret
    80008770:	fe010113          	addi	sp,sp,-32
    80008774:	00813823          	sd	s0,16(sp)
    80008778:	00913423          	sd	s1,8(sp)
    8000877c:	00113c23          	sd	ra,24(sp)
    80008780:	02010413          	addi	s0,sp,32
    80008784:	01053483          	ld	s1,16(a0)
    80008788:	ffffe097          	auipc	ra,0xffffe
    8000878c:	754080e7          	jalr	1876(ra) # 80006edc <mycpu>
    80008790:	01813083          	ld	ra,24(sp)
    80008794:	01013403          	ld	s0,16(sp)
    80008798:	40a48533          	sub	a0,s1,a0
    8000879c:	00153513          	seqz	a0,a0
    800087a0:	00813483          	ld	s1,8(sp)
    800087a4:	02010113          	addi	sp,sp,32
    800087a8:	00008067          	ret

00000000800087ac <push_off>:
    800087ac:	fe010113          	addi	sp,sp,-32
    800087b0:	00813823          	sd	s0,16(sp)
    800087b4:	00113c23          	sd	ra,24(sp)
    800087b8:	00913423          	sd	s1,8(sp)
    800087bc:	02010413          	addi	s0,sp,32
    800087c0:	100024f3          	csrr	s1,sstatus
    800087c4:	100027f3          	csrr	a5,sstatus
    800087c8:	ffd7f793          	andi	a5,a5,-3
    800087cc:	10079073          	csrw	sstatus,a5
    800087d0:	ffffe097          	auipc	ra,0xffffe
    800087d4:	70c080e7          	jalr	1804(ra) # 80006edc <mycpu>
    800087d8:	07852783          	lw	a5,120(a0)
    800087dc:	02078663          	beqz	a5,80008808 <push_off+0x5c>
    800087e0:	ffffe097          	auipc	ra,0xffffe
    800087e4:	6fc080e7          	jalr	1788(ra) # 80006edc <mycpu>
    800087e8:	07852783          	lw	a5,120(a0)
    800087ec:	01813083          	ld	ra,24(sp)
    800087f0:	01013403          	ld	s0,16(sp)
    800087f4:	0017879b          	addiw	a5,a5,1
    800087f8:	06f52c23          	sw	a5,120(a0)
    800087fc:	00813483          	ld	s1,8(sp)
    80008800:	02010113          	addi	sp,sp,32
    80008804:	00008067          	ret
    80008808:	0014d493          	srli	s1,s1,0x1
    8000880c:	ffffe097          	auipc	ra,0xffffe
    80008810:	6d0080e7          	jalr	1744(ra) # 80006edc <mycpu>
    80008814:	0014f493          	andi	s1,s1,1
    80008818:	06952e23          	sw	s1,124(a0)
    8000881c:	fc5ff06f          	j	800087e0 <push_off+0x34>

0000000080008820 <pop_off>:
    80008820:	ff010113          	addi	sp,sp,-16
    80008824:	00813023          	sd	s0,0(sp)
    80008828:	00113423          	sd	ra,8(sp)
    8000882c:	01010413          	addi	s0,sp,16
    80008830:	ffffe097          	auipc	ra,0xffffe
    80008834:	6ac080e7          	jalr	1708(ra) # 80006edc <mycpu>
    80008838:	100027f3          	csrr	a5,sstatus
    8000883c:	0027f793          	andi	a5,a5,2
    80008840:	04079663          	bnez	a5,8000888c <pop_off+0x6c>
    80008844:	07852783          	lw	a5,120(a0)
    80008848:	02f05a63          	blez	a5,8000887c <pop_off+0x5c>
    8000884c:	fff7871b          	addiw	a4,a5,-1
    80008850:	06e52c23          	sw	a4,120(a0)
    80008854:	00071c63          	bnez	a4,8000886c <pop_off+0x4c>
    80008858:	07c52783          	lw	a5,124(a0)
    8000885c:	00078863          	beqz	a5,8000886c <pop_off+0x4c>
    80008860:	100027f3          	csrr	a5,sstatus
    80008864:	0027e793          	ori	a5,a5,2
    80008868:	10079073          	csrw	sstatus,a5
    8000886c:	00813083          	ld	ra,8(sp)
    80008870:	00013403          	ld	s0,0(sp)
    80008874:	01010113          	addi	sp,sp,16
    80008878:	00008067          	ret
    8000887c:	00001517          	auipc	a0,0x1
    80008880:	ef450513          	addi	a0,a0,-268 # 80009770 <digits+0x48>
    80008884:	fffff097          	auipc	ra,0xfffff
    80008888:	018080e7          	jalr	24(ra) # 8000789c <panic>
    8000888c:	00001517          	auipc	a0,0x1
    80008890:	ecc50513          	addi	a0,a0,-308 # 80009758 <digits+0x30>
    80008894:	fffff097          	auipc	ra,0xfffff
    80008898:	008080e7          	jalr	8(ra) # 8000789c <panic>

000000008000889c <push_on>:
    8000889c:	fe010113          	addi	sp,sp,-32
    800088a0:	00813823          	sd	s0,16(sp)
    800088a4:	00113c23          	sd	ra,24(sp)
    800088a8:	00913423          	sd	s1,8(sp)
    800088ac:	02010413          	addi	s0,sp,32
    800088b0:	100024f3          	csrr	s1,sstatus
    800088b4:	100027f3          	csrr	a5,sstatus
    800088b8:	0027e793          	ori	a5,a5,2
    800088bc:	10079073          	csrw	sstatus,a5
    800088c0:	ffffe097          	auipc	ra,0xffffe
    800088c4:	61c080e7          	jalr	1564(ra) # 80006edc <mycpu>
    800088c8:	07852783          	lw	a5,120(a0)
    800088cc:	02078663          	beqz	a5,800088f8 <push_on+0x5c>
    800088d0:	ffffe097          	auipc	ra,0xffffe
    800088d4:	60c080e7          	jalr	1548(ra) # 80006edc <mycpu>
    800088d8:	07852783          	lw	a5,120(a0)
    800088dc:	01813083          	ld	ra,24(sp)
    800088e0:	01013403          	ld	s0,16(sp)
    800088e4:	0017879b          	addiw	a5,a5,1
    800088e8:	06f52c23          	sw	a5,120(a0)
    800088ec:	00813483          	ld	s1,8(sp)
    800088f0:	02010113          	addi	sp,sp,32
    800088f4:	00008067          	ret
    800088f8:	0014d493          	srli	s1,s1,0x1
    800088fc:	ffffe097          	auipc	ra,0xffffe
    80008900:	5e0080e7          	jalr	1504(ra) # 80006edc <mycpu>
    80008904:	0014f493          	andi	s1,s1,1
    80008908:	06952e23          	sw	s1,124(a0)
    8000890c:	fc5ff06f          	j	800088d0 <push_on+0x34>

0000000080008910 <pop_on>:
    80008910:	ff010113          	addi	sp,sp,-16
    80008914:	00813023          	sd	s0,0(sp)
    80008918:	00113423          	sd	ra,8(sp)
    8000891c:	01010413          	addi	s0,sp,16
    80008920:	ffffe097          	auipc	ra,0xffffe
    80008924:	5bc080e7          	jalr	1468(ra) # 80006edc <mycpu>
    80008928:	100027f3          	csrr	a5,sstatus
    8000892c:	0027f793          	andi	a5,a5,2
    80008930:	04078463          	beqz	a5,80008978 <pop_on+0x68>
    80008934:	07852783          	lw	a5,120(a0)
    80008938:	02f05863          	blez	a5,80008968 <pop_on+0x58>
    8000893c:	fff7879b          	addiw	a5,a5,-1
    80008940:	06f52c23          	sw	a5,120(a0)
    80008944:	07853783          	ld	a5,120(a0)
    80008948:	00079863          	bnez	a5,80008958 <pop_on+0x48>
    8000894c:	100027f3          	csrr	a5,sstatus
    80008950:	ffd7f793          	andi	a5,a5,-3
    80008954:	10079073          	csrw	sstatus,a5
    80008958:	00813083          	ld	ra,8(sp)
    8000895c:	00013403          	ld	s0,0(sp)
    80008960:	01010113          	addi	sp,sp,16
    80008964:	00008067          	ret
    80008968:	00001517          	auipc	a0,0x1
    8000896c:	e3050513          	addi	a0,a0,-464 # 80009798 <digits+0x70>
    80008970:	fffff097          	auipc	ra,0xfffff
    80008974:	f2c080e7          	jalr	-212(ra) # 8000789c <panic>
    80008978:	00001517          	auipc	a0,0x1
    8000897c:	e0050513          	addi	a0,a0,-512 # 80009778 <digits+0x50>
    80008980:	fffff097          	auipc	ra,0xfffff
    80008984:	f1c080e7          	jalr	-228(ra) # 8000789c <panic>

0000000080008988 <__memset>:
    80008988:	ff010113          	addi	sp,sp,-16
    8000898c:	00813423          	sd	s0,8(sp)
    80008990:	01010413          	addi	s0,sp,16
    80008994:	1a060e63          	beqz	a2,80008b50 <__memset+0x1c8>
    80008998:	40a007b3          	neg	a5,a0
    8000899c:	0077f793          	andi	a5,a5,7
    800089a0:	00778693          	addi	a3,a5,7
    800089a4:	00b00813          	li	a6,11
    800089a8:	0ff5f593          	andi	a1,a1,255
    800089ac:	fff6071b          	addiw	a4,a2,-1
    800089b0:	1b06e663          	bltu	a3,a6,80008b5c <__memset+0x1d4>
    800089b4:	1cd76463          	bltu	a4,a3,80008b7c <__memset+0x1f4>
    800089b8:	1a078e63          	beqz	a5,80008b74 <__memset+0x1ec>
    800089bc:	00b50023          	sb	a1,0(a0)
    800089c0:	00100713          	li	a4,1
    800089c4:	1ae78463          	beq	a5,a4,80008b6c <__memset+0x1e4>
    800089c8:	00b500a3          	sb	a1,1(a0)
    800089cc:	00200713          	li	a4,2
    800089d0:	1ae78a63          	beq	a5,a4,80008b84 <__memset+0x1fc>
    800089d4:	00b50123          	sb	a1,2(a0)
    800089d8:	00300713          	li	a4,3
    800089dc:	18e78463          	beq	a5,a4,80008b64 <__memset+0x1dc>
    800089e0:	00b501a3          	sb	a1,3(a0)
    800089e4:	00400713          	li	a4,4
    800089e8:	1ae78263          	beq	a5,a4,80008b8c <__memset+0x204>
    800089ec:	00b50223          	sb	a1,4(a0)
    800089f0:	00500713          	li	a4,5
    800089f4:	1ae78063          	beq	a5,a4,80008b94 <__memset+0x20c>
    800089f8:	00b502a3          	sb	a1,5(a0)
    800089fc:	00700713          	li	a4,7
    80008a00:	18e79e63          	bne	a5,a4,80008b9c <__memset+0x214>
    80008a04:	00b50323          	sb	a1,6(a0)
    80008a08:	00700e93          	li	t4,7
    80008a0c:	00859713          	slli	a4,a1,0x8
    80008a10:	00e5e733          	or	a4,a1,a4
    80008a14:	01059e13          	slli	t3,a1,0x10
    80008a18:	01c76e33          	or	t3,a4,t3
    80008a1c:	01859313          	slli	t1,a1,0x18
    80008a20:	006e6333          	or	t1,t3,t1
    80008a24:	02059893          	slli	a7,a1,0x20
    80008a28:	40f60e3b          	subw	t3,a2,a5
    80008a2c:	011368b3          	or	a7,t1,a7
    80008a30:	02859813          	slli	a6,a1,0x28
    80008a34:	0108e833          	or	a6,a7,a6
    80008a38:	03059693          	slli	a3,a1,0x30
    80008a3c:	003e589b          	srliw	a7,t3,0x3
    80008a40:	00d866b3          	or	a3,a6,a3
    80008a44:	03859713          	slli	a4,a1,0x38
    80008a48:	00389813          	slli	a6,a7,0x3
    80008a4c:	00f507b3          	add	a5,a0,a5
    80008a50:	00e6e733          	or	a4,a3,a4
    80008a54:	000e089b          	sext.w	a7,t3
    80008a58:	00f806b3          	add	a3,a6,a5
    80008a5c:	00e7b023          	sd	a4,0(a5)
    80008a60:	00878793          	addi	a5,a5,8
    80008a64:	fed79ce3          	bne	a5,a3,80008a5c <__memset+0xd4>
    80008a68:	ff8e7793          	andi	a5,t3,-8
    80008a6c:	0007871b          	sext.w	a4,a5
    80008a70:	01d787bb          	addw	a5,a5,t4
    80008a74:	0ce88e63          	beq	a7,a4,80008b50 <__memset+0x1c8>
    80008a78:	00f50733          	add	a4,a0,a5
    80008a7c:	00b70023          	sb	a1,0(a4)
    80008a80:	0017871b          	addiw	a4,a5,1
    80008a84:	0cc77663          	bgeu	a4,a2,80008b50 <__memset+0x1c8>
    80008a88:	00e50733          	add	a4,a0,a4
    80008a8c:	00b70023          	sb	a1,0(a4)
    80008a90:	0027871b          	addiw	a4,a5,2
    80008a94:	0ac77e63          	bgeu	a4,a2,80008b50 <__memset+0x1c8>
    80008a98:	00e50733          	add	a4,a0,a4
    80008a9c:	00b70023          	sb	a1,0(a4)
    80008aa0:	0037871b          	addiw	a4,a5,3
    80008aa4:	0ac77663          	bgeu	a4,a2,80008b50 <__memset+0x1c8>
    80008aa8:	00e50733          	add	a4,a0,a4
    80008aac:	00b70023          	sb	a1,0(a4)
    80008ab0:	0047871b          	addiw	a4,a5,4
    80008ab4:	08c77e63          	bgeu	a4,a2,80008b50 <__memset+0x1c8>
    80008ab8:	00e50733          	add	a4,a0,a4
    80008abc:	00b70023          	sb	a1,0(a4)
    80008ac0:	0057871b          	addiw	a4,a5,5
    80008ac4:	08c77663          	bgeu	a4,a2,80008b50 <__memset+0x1c8>
    80008ac8:	00e50733          	add	a4,a0,a4
    80008acc:	00b70023          	sb	a1,0(a4)
    80008ad0:	0067871b          	addiw	a4,a5,6
    80008ad4:	06c77e63          	bgeu	a4,a2,80008b50 <__memset+0x1c8>
    80008ad8:	00e50733          	add	a4,a0,a4
    80008adc:	00b70023          	sb	a1,0(a4)
    80008ae0:	0077871b          	addiw	a4,a5,7
    80008ae4:	06c77663          	bgeu	a4,a2,80008b50 <__memset+0x1c8>
    80008ae8:	00e50733          	add	a4,a0,a4
    80008aec:	00b70023          	sb	a1,0(a4)
    80008af0:	0087871b          	addiw	a4,a5,8
    80008af4:	04c77e63          	bgeu	a4,a2,80008b50 <__memset+0x1c8>
    80008af8:	00e50733          	add	a4,a0,a4
    80008afc:	00b70023          	sb	a1,0(a4)
    80008b00:	0097871b          	addiw	a4,a5,9
    80008b04:	04c77663          	bgeu	a4,a2,80008b50 <__memset+0x1c8>
    80008b08:	00e50733          	add	a4,a0,a4
    80008b0c:	00b70023          	sb	a1,0(a4)
    80008b10:	00a7871b          	addiw	a4,a5,10
    80008b14:	02c77e63          	bgeu	a4,a2,80008b50 <__memset+0x1c8>
    80008b18:	00e50733          	add	a4,a0,a4
    80008b1c:	00b70023          	sb	a1,0(a4)
    80008b20:	00b7871b          	addiw	a4,a5,11
    80008b24:	02c77663          	bgeu	a4,a2,80008b50 <__memset+0x1c8>
    80008b28:	00e50733          	add	a4,a0,a4
    80008b2c:	00b70023          	sb	a1,0(a4)
    80008b30:	00c7871b          	addiw	a4,a5,12
    80008b34:	00c77e63          	bgeu	a4,a2,80008b50 <__memset+0x1c8>
    80008b38:	00e50733          	add	a4,a0,a4
    80008b3c:	00b70023          	sb	a1,0(a4)
    80008b40:	00d7879b          	addiw	a5,a5,13
    80008b44:	00c7f663          	bgeu	a5,a2,80008b50 <__memset+0x1c8>
    80008b48:	00f507b3          	add	a5,a0,a5
    80008b4c:	00b78023          	sb	a1,0(a5)
    80008b50:	00813403          	ld	s0,8(sp)
    80008b54:	01010113          	addi	sp,sp,16
    80008b58:	00008067          	ret
    80008b5c:	00b00693          	li	a3,11
    80008b60:	e55ff06f          	j	800089b4 <__memset+0x2c>
    80008b64:	00300e93          	li	t4,3
    80008b68:	ea5ff06f          	j	80008a0c <__memset+0x84>
    80008b6c:	00100e93          	li	t4,1
    80008b70:	e9dff06f          	j	80008a0c <__memset+0x84>
    80008b74:	00000e93          	li	t4,0
    80008b78:	e95ff06f          	j	80008a0c <__memset+0x84>
    80008b7c:	00000793          	li	a5,0
    80008b80:	ef9ff06f          	j	80008a78 <__memset+0xf0>
    80008b84:	00200e93          	li	t4,2
    80008b88:	e85ff06f          	j	80008a0c <__memset+0x84>
    80008b8c:	00400e93          	li	t4,4
    80008b90:	e7dff06f          	j	80008a0c <__memset+0x84>
    80008b94:	00500e93          	li	t4,5
    80008b98:	e75ff06f          	j	80008a0c <__memset+0x84>
    80008b9c:	00600e93          	li	t4,6
    80008ba0:	e6dff06f          	j	80008a0c <__memset+0x84>

0000000080008ba4 <__memmove>:
    80008ba4:	ff010113          	addi	sp,sp,-16
    80008ba8:	00813423          	sd	s0,8(sp)
    80008bac:	01010413          	addi	s0,sp,16
    80008bb0:	0e060863          	beqz	a2,80008ca0 <__memmove+0xfc>
    80008bb4:	fff6069b          	addiw	a3,a2,-1
    80008bb8:	0006881b          	sext.w	a6,a3
    80008bbc:	0ea5e863          	bltu	a1,a0,80008cac <__memmove+0x108>
    80008bc0:	00758713          	addi	a4,a1,7
    80008bc4:	00a5e7b3          	or	a5,a1,a0
    80008bc8:	40a70733          	sub	a4,a4,a0
    80008bcc:	0077f793          	andi	a5,a5,7
    80008bd0:	00f73713          	sltiu	a4,a4,15
    80008bd4:	00174713          	xori	a4,a4,1
    80008bd8:	0017b793          	seqz	a5,a5
    80008bdc:	00e7f7b3          	and	a5,a5,a4
    80008be0:	10078863          	beqz	a5,80008cf0 <__memmove+0x14c>
    80008be4:	00900793          	li	a5,9
    80008be8:	1107f463          	bgeu	a5,a6,80008cf0 <__memmove+0x14c>
    80008bec:	0036581b          	srliw	a6,a2,0x3
    80008bf0:	fff8081b          	addiw	a6,a6,-1
    80008bf4:	02081813          	slli	a6,a6,0x20
    80008bf8:	01d85893          	srli	a7,a6,0x1d
    80008bfc:	00858813          	addi	a6,a1,8
    80008c00:	00058793          	mv	a5,a1
    80008c04:	00050713          	mv	a4,a0
    80008c08:	01088833          	add	a6,a7,a6
    80008c0c:	0007b883          	ld	a7,0(a5)
    80008c10:	00878793          	addi	a5,a5,8
    80008c14:	00870713          	addi	a4,a4,8
    80008c18:	ff173c23          	sd	a7,-8(a4)
    80008c1c:	ff0798e3          	bne	a5,a6,80008c0c <__memmove+0x68>
    80008c20:	ff867713          	andi	a4,a2,-8
    80008c24:	02071793          	slli	a5,a4,0x20
    80008c28:	0207d793          	srli	a5,a5,0x20
    80008c2c:	00f585b3          	add	a1,a1,a5
    80008c30:	40e686bb          	subw	a3,a3,a4
    80008c34:	00f507b3          	add	a5,a0,a5
    80008c38:	06e60463          	beq	a2,a4,80008ca0 <__memmove+0xfc>
    80008c3c:	0005c703          	lbu	a4,0(a1)
    80008c40:	00e78023          	sb	a4,0(a5)
    80008c44:	04068e63          	beqz	a3,80008ca0 <__memmove+0xfc>
    80008c48:	0015c603          	lbu	a2,1(a1)
    80008c4c:	00100713          	li	a4,1
    80008c50:	00c780a3          	sb	a2,1(a5)
    80008c54:	04e68663          	beq	a3,a4,80008ca0 <__memmove+0xfc>
    80008c58:	0025c603          	lbu	a2,2(a1)
    80008c5c:	00200713          	li	a4,2
    80008c60:	00c78123          	sb	a2,2(a5)
    80008c64:	02e68e63          	beq	a3,a4,80008ca0 <__memmove+0xfc>
    80008c68:	0035c603          	lbu	a2,3(a1)
    80008c6c:	00300713          	li	a4,3
    80008c70:	00c781a3          	sb	a2,3(a5)
    80008c74:	02e68663          	beq	a3,a4,80008ca0 <__memmove+0xfc>
    80008c78:	0045c603          	lbu	a2,4(a1)
    80008c7c:	00400713          	li	a4,4
    80008c80:	00c78223          	sb	a2,4(a5)
    80008c84:	00e68e63          	beq	a3,a4,80008ca0 <__memmove+0xfc>
    80008c88:	0055c603          	lbu	a2,5(a1)
    80008c8c:	00500713          	li	a4,5
    80008c90:	00c782a3          	sb	a2,5(a5)
    80008c94:	00e68663          	beq	a3,a4,80008ca0 <__memmove+0xfc>
    80008c98:	0065c703          	lbu	a4,6(a1)
    80008c9c:	00e78323          	sb	a4,6(a5)
    80008ca0:	00813403          	ld	s0,8(sp)
    80008ca4:	01010113          	addi	sp,sp,16
    80008ca8:	00008067          	ret
    80008cac:	02061713          	slli	a4,a2,0x20
    80008cb0:	02075713          	srli	a4,a4,0x20
    80008cb4:	00e587b3          	add	a5,a1,a4
    80008cb8:	f0f574e3          	bgeu	a0,a5,80008bc0 <__memmove+0x1c>
    80008cbc:	02069613          	slli	a2,a3,0x20
    80008cc0:	02065613          	srli	a2,a2,0x20
    80008cc4:	fff64613          	not	a2,a2
    80008cc8:	00e50733          	add	a4,a0,a4
    80008ccc:	00c78633          	add	a2,a5,a2
    80008cd0:	fff7c683          	lbu	a3,-1(a5)
    80008cd4:	fff78793          	addi	a5,a5,-1
    80008cd8:	fff70713          	addi	a4,a4,-1
    80008cdc:	00d70023          	sb	a3,0(a4)
    80008ce0:	fec798e3          	bne	a5,a2,80008cd0 <__memmove+0x12c>
    80008ce4:	00813403          	ld	s0,8(sp)
    80008ce8:	01010113          	addi	sp,sp,16
    80008cec:	00008067          	ret
    80008cf0:	02069713          	slli	a4,a3,0x20
    80008cf4:	02075713          	srli	a4,a4,0x20
    80008cf8:	00170713          	addi	a4,a4,1
    80008cfc:	00e50733          	add	a4,a0,a4
    80008d00:	00050793          	mv	a5,a0
    80008d04:	0005c683          	lbu	a3,0(a1)
    80008d08:	00178793          	addi	a5,a5,1
    80008d0c:	00158593          	addi	a1,a1,1
    80008d10:	fed78fa3          	sb	a3,-1(a5)
    80008d14:	fee798e3          	bne	a5,a4,80008d04 <__memmove+0x160>
    80008d18:	f89ff06f          	j	80008ca0 <__memmove+0xfc>

0000000080008d1c <__putc>:
    80008d1c:	fe010113          	addi	sp,sp,-32
    80008d20:	00813823          	sd	s0,16(sp)
    80008d24:	00113c23          	sd	ra,24(sp)
    80008d28:	02010413          	addi	s0,sp,32
    80008d2c:	00050793          	mv	a5,a0
    80008d30:	fef40593          	addi	a1,s0,-17
    80008d34:	00100613          	li	a2,1
    80008d38:	00000513          	li	a0,0
    80008d3c:	fef407a3          	sb	a5,-17(s0)
    80008d40:	fffff097          	auipc	ra,0xfffff
    80008d44:	b3c080e7          	jalr	-1220(ra) # 8000787c <console_write>
    80008d48:	01813083          	ld	ra,24(sp)
    80008d4c:	01013403          	ld	s0,16(sp)
    80008d50:	02010113          	addi	sp,sp,32
    80008d54:	00008067          	ret

0000000080008d58 <__getc>:
    80008d58:	fe010113          	addi	sp,sp,-32
    80008d5c:	00813823          	sd	s0,16(sp)
    80008d60:	00113c23          	sd	ra,24(sp)
    80008d64:	02010413          	addi	s0,sp,32
    80008d68:	fe840593          	addi	a1,s0,-24
    80008d6c:	00100613          	li	a2,1
    80008d70:	00000513          	li	a0,0
    80008d74:	fffff097          	auipc	ra,0xfffff
    80008d78:	ae8080e7          	jalr	-1304(ra) # 8000785c <console_read>
    80008d7c:	fe844503          	lbu	a0,-24(s0)
    80008d80:	01813083          	ld	ra,24(sp)
    80008d84:	01013403          	ld	s0,16(sp)
    80008d88:	02010113          	addi	sp,sp,32
    80008d8c:	00008067          	ret

0000000080008d90 <console_handler>:
    80008d90:	fe010113          	addi	sp,sp,-32
    80008d94:	00813823          	sd	s0,16(sp)
    80008d98:	00113c23          	sd	ra,24(sp)
    80008d9c:	00913423          	sd	s1,8(sp)
    80008da0:	02010413          	addi	s0,sp,32
    80008da4:	14202773          	csrr	a4,scause
    80008da8:	100027f3          	csrr	a5,sstatus
    80008dac:	0027f793          	andi	a5,a5,2
    80008db0:	06079e63          	bnez	a5,80008e2c <console_handler+0x9c>
    80008db4:	00074c63          	bltz	a4,80008dcc <console_handler+0x3c>
    80008db8:	01813083          	ld	ra,24(sp)
    80008dbc:	01013403          	ld	s0,16(sp)
    80008dc0:	00813483          	ld	s1,8(sp)
    80008dc4:	02010113          	addi	sp,sp,32
    80008dc8:	00008067          	ret
    80008dcc:	0ff77713          	andi	a4,a4,255
    80008dd0:	00900793          	li	a5,9
    80008dd4:	fef712e3          	bne	a4,a5,80008db8 <console_handler+0x28>
    80008dd8:	ffffe097          	auipc	ra,0xffffe
    80008ddc:	6dc080e7          	jalr	1756(ra) # 800074b4 <plic_claim>
    80008de0:	00a00793          	li	a5,10
    80008de4:	00050493          	mv	s1,a0
    80008de8:	02f50c63          	beq	a0,a5,80008e20 <console_handler+0x90>
    80008dec:	fc0506e3          	beqz	a0,80008db8 <console_handler+0x28>
    80008df0:	00050593          	mv	a1,a0
    80008df4:	00001517          	auipc	a0,0x1
    80008df8:	8ac50513          	addi	a0,a0,-1876 # 800096a0 <CONSOLE_STATUS+0x690>
    80008dfc:	fffff097          	auipc	ra,0xfffff
    80008e00:	afc080e7          	jalr	-1284(ra) # 800078f8 <__printf>
    80008e04:	01013403          	ld	s0,16(sp)
    80008e08:	01813083          	ld	ra,24(sp)
    80008e0c:	00048513          	mv	a0,s1
    80008e10:	00813483          	ld	s1,8(sp)
    80008e14:	02010113          	addi	sp,sp,32
    80008e18:	ffffe317          	auipc	t1,0xffffe
    80008e1c:	6d430067          	jr	1748(t1) # 800074ec <plic_complete>
    80008e20:	fffff097          	auipc	ra,0xfffff
    80008e24:	3e0080e7          	jalr	992(ra) # 80008200 <uartintr>
    80008e28:	fddff06f          	j	80008e04 <console_handler+0x74>
    80008e2c:	00001517          	auipc	a0,0x1
    80008e30:	97450513          	addi	a0,a0,-1676 # 800097a0 <digits+0x78>
    80008e34:	fffff097          	auipc	ra,0xfffff
    80008e38:	a68080e7          	jalr	-1432(ra) # 8000789c <panic>
	...
