
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000d117          	auipc	sp,0xd
    80000004:	ee813103          	ld	sp,-280(sp) # 8000cee8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	024070ef          	jal	ra,80007040 <start>

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
    80001080:	6f1010ef          	jal	ra,80002f70 <_ZN5RiscV22handle_supervisor_trapEv>

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
    80001270:	6d0080e7          	jalr	1744(ra) # 8000293c <_ZN15MemoryAllocator20get_number_of_blocksEm>
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
    800016c4:	58078793          	addi	a5,a5,1408 # 8000cc40 <_ZTV3Sem+0x10>
    800016c8:	00f53023          	sd	a5,0(a0) # 1000 <_entry-0x7ffff000>
    blocked_threads -> free();
    800016cc:	00853503          	ld	a0,8(a0)
    800016d0:	00002097          	auipc	ra,0x2
    800016d4:	da8080e7          	jalr	-600(ra) # 80003478 <_ZN10ThreadList4freeEv>
    delete blocked_threads;
    800016d8:	0084b503          	ld	a0,8(s1)
    800016dc:	00050663          	beqz	a0,800016e8 <_ZN3SemD1Ev+0x40>
    800016e0:	00002097          	auipc	ra,0x2
    800016e4:	c5c080e7          	jalr	-932(ra) # 8000333c <_ZN10ThreadListdlEPv>
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
    80001718:	52c78793          	addi	a5,a5,1324 # 8000cc40 <_ZTV3Sem+0x10>
    8000171c:	00f53023          	sd	a5,0(a0)
    80001720:	00b52823          	sw	a1,16(a0)
    blocked_threads = new ThreadList();
    80001724:	01000513          	li	a0,16
    80001728:	00002097          	auipc	ra,0x2
    8000172c:	be4080e7          	jalr	-1052(ra) # 8000330c <_ZN10ThreadListnwEm>
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
    8000176c:	79893903          	ld	s2,1944(s2) # 8000cf00 <_GLOBAL_OFFSET_TABLE_+0x58>
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
    8000178c:	c0c080e7          	jalr	-1012(ra) # 80003394 <_ZN10ThreadList9push_backEP3TCB>
    TCB::running = Scheduler::get();
    80001790:	00001097          	auipc	ra,0x1
    80001794:	48c080e7          	jalr	1164(ra) # 80002c1c <_ZN9Scheduler3getEv>
    80001798:	00050593          	mv	a1,a0
    8000179c:	00a93023          	sd	a0,0(s2)
    TCB::yield(old, TCB::running);
    800017a0:	00048513          	mv	a0,s1
    800017a4:	00002097          	auipc	ra,0x2
    800017a8:	dbc080e7          	jalr	-580(ra) # 80003560 <_ZN3TCB5yieldEPS_S0_>
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
    800017e0:	c48080e7          	jalr	-952(ra) # 80003424 <_ZN10ThreadList12remove_firstEv>
    800017e4:	00050493          	mv	s1,a0
    if (thread -> timed_wait) Scheduler::remove_from_sleep(thread);
    800017e8:	04854783          	lbu	a5,72(a0)
    800017ec:	02079c63          	bnez	a5,80001824 <_ZN3Sem7unblockEv+0x60>
    thread -> clear_from_timed_wait(false);
    800017f0:	00000593          	li	a1,0
    800017f4:	00048513          	mv	a0,s1
    800017f8:	00002097          	auipc	ra,0x2
    800017fc:	120080e7          	jalr	288(ra) # 80003918 <_ZN3TCB21clear_from_timed_waitEb>
    thread -> status = TCB::RUNNABLE;
    80001800:	0204a023          	sw	zero,32(s1)
    Scheduler::put(thread);
    80001804:	00048513          	mv	a0,s1
    80001808:	00001097          	auipc	ra,0x1
    8000180c:	3a4080e7          	jalr	932(ra) # 80002bac <_ZN9Scheduler3putEP3TCB>
}
    80001810:	01813083          	ld	ra,24(sp)
    80001814:	01013403          	ld	s0,16(sp)
    80001818:	00813483          	ld	s1,8(sp)
    8000181c:	02010113          	addi	sp,sp,32
    80001820:	00008067          	ret
    if (thread -> timed_wait) Scheduler::remove_from_sleep(thread);
    80001824:	00001097          	auipc	ra,0x1
    80001828:	464080e7          	jalr	1124(ra) # 80002c88 <_ZN9Scheduler17remove_from_sleepEP3TCB>
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
    80001854:	a2c080e7          	jalr	-1492(ra) # 8000327c <_ZN10ThreadList9get_firstEv>
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
    80001964:	5a07b783          	ld	a5,1440(a5) # 8000cf00 <_GLOBAL_OFFSET_TABLE_+0x58>
    80001968:	0007b903          	ld	s2,0(a5)
    thread -> timed_wait = true;
    8000196c:	00100793          	li	a5,1
    80001970:	04f90423          	sb	a5,72(s2)
    Scheduler::put_to_sleep(time);
    80001974:	00058513          	mv	a0,a1
    80001978:	00001097          	auipc	ra,0x1
    8000197c:	414080e7          	jalr	1044(ra) # 80002d8c <_ZN9Scheduler12put_to_sleepEm>
    int status = wait(handle);
    80001980:	00048513          	mv	a0,s1
    80001984:	00000097          	auipc	ra,0x0
    80001988:	f18080e7          	jalr	-232(ra) # 8000189c <_ZN3Sem4waitEPS_>
    8000198c:	00050493          	mv	s1,a0
    Scheduler::remove_from_sleep(thread);
    80001990:	00090513          	mv	a0,s2
    80001994:	00001097          	auipc	ra,0x1
    80001998:	2f4080e7          	jalr	756(ra) # 80002c88 <_ZN9Scheduler17remove_from_sleepEP3TCB>
    thread -> clear_from_timed_wait(false);
    8000199c:	00000593          	li	a1,0
    800019a0:	00090513          	mv	a0,s2
    800019a4:	00002097          	auipc	ra,0x2
    800019a8:	f74080e7          	jalr	-140(ra) # 80003918 <_ZN3TCB21clear_from_timed_waitEb>
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
    80001a14:	f2c080e7          	jalr	-212(ra) # 8000293c <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80001a18:	00001097          	auipc	ra,0x1
    80001a1c:	b60080e7          	jalr	-1184(ra) # 80002578 <_ZN15MemoryAllocator9mem_allocEm>
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
    80001a44:	cac080e7          	jalr	-852(ra) # 800026ec <_ZN15MemoryAllocator8mem_freeEPv>
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
    80001ae0:	5ec080e7          	jalr	1516(ra) # 8000e0c8 <_Unwind_Resume>

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
    80001b3c:	410080e7          	jalr	1040(ra) # 80001f48 <_ZN3Con11getc_outputEv>
            *(char *) CONSOLE_TX_DATA = c;
    80001b40:	0000b797          	auipc	a5,0xb
    80001b44:	3987b783          	ld	a5,920(a5) # 8000ced8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001b48:	0007b783          	ld	a5,0(a5)
    80001b4c:	00a78023          	sb	a0,0(a5)
        while (*(char *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT) {
    80001b50:	0000b797          	auipc	a5,0xb
    80001b54:	3687b783          	ld	a5,872(a5) # 8000ceb8 <_GLOBAL_OFFSET_TABLE_+0x10>
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

0000000080001b74 <_Z11printNumberm>:
void printNumber(uint64 num) {
    80001b74:	fd010113          	addi	sp,sp,-48
    80001b78:	02113423          	sd	ra,40(sp)
    80001b7c:	02813023          	sd	s0,32(sp)
    80001b80:	00913c23          	sd	s1,24(sp)
    80001b84:	01213823          	sd	s2,16(sp)
    80001b88:	01313423          	sd	s3,8(sp)
    80001b8c:	03010413          	addi	s0,sp,48
    80001b90:	00050913          	mv	s2,a0
    __putc('\n');
    80001b94:	00a00513          	li	a0,10
    80001b98:	00007097          	auipc	ra,0x7
    80001b9c:	564080e7          	jalr	1380(ra) # 800090fc <__putc>
    __putc('N');
    80001ba0:	04e00513          	li	a0,78
    80001ba4:	00007097          	auipc	ra,0x7
    80001ba8:	558080e7          	jalr	1368(ra) # 800090fc <__putc>
    __putc(':');
    80001bac:	03a00513          	li	a0,58
    80001bb0:	00007097          	auipc	ra,0x7
    80001bb4:	54c080e7          	jalr	1356(ra) # 800090fc <__putc>
    __putc(' ');
    80001bb8:	02000513          	li	a0,32
    80001bbc:	00007097          	auipc	ra,0x7
    80001bc0:	540080e7          	jalr	1344(ra) # 800090fc <__putc>
    if (!num) __putc('0');
    80001bc4:	00090863          	beqz	s2,80001bd4 <_Z11printNumberm+0x60>
    uint64 num2 = 0, zero_count = 0;
    80001bc8:	00000993          	li	s3,0
    80001bcc:	00000493          	li	s1,0
    80001bd0:	01c0006f          	j	80001bec <_Z11printNumberm+0x78>
    if (!num) __putc('0');
    80001bd4:	03000513          	li	a0,48
    80001bd8:	00007097          	auipc	ra,0x7
    80001bdc:	524080e7          	jalr	1316(ra) # 800090fc <__putc>
    80001be0:	fe9ff06f          	j	80001bc8 <_Z11printNumberm+0x54>
        num /= 10;
    80001be4:	00a00793          	li	a5,10
    80001be8:	02f95933          	divu	s2,s2,a5
    while (num) {
    80001bec:	02090463          	beqz	s2,80001c14 <_Z11printNumberm+0xa0>
        num2 *= 10;
    80001bf0:	00249793          	slli	a5,s1,0x2
    80001bf4:	009784b3          	add	s1,a5,s1
    80001bf8:	00149793          	slli	a5,s1,0x1
        num2 += num % 10;
    80001bfc:	00a00493          	li	s1,10
    80001c00:	029974b3          	remu	s1,s2,s1
    80001c04:	00f484b3          	add	s1,s1,a5
        if (!num2) ++zero_count;
    80001c08:	fc049ee3          	bnez	s1,80001be4 <_Z11printNumberm+0x70>
    80001c0c:	00198993          	addi	s3,s3,1
    80001c10:	fd5ff06f          	j	80001be4 <_Z11printNumberm+0x70>
    while (num2) {
    80001c14:	02048063          	beqz	s1,80001c34 <_Z11printNumberm+0xc0>
        __putc(num2 % 10 + '0');
    80001c18:	00a00913          	li	s2,10
    80001c1c:	0324f533          	remu	a0,s1,s2
    80001c20:	03050513          	addi	a0,a0,48
    80001c24:	00007097          	auipc	ra,0x7
    80001c28:	4d8080e7          	jalr	1240(ra) # 800090fc <__putc>
        num2 /= 10;
    80001c2c:	0324d4b3          	divu	s1,s1,s2
    while (num2) {
    80001c30:	fe5ff06f          	j	80001c14 <_Z11printNumberm+0xa0>
    while (zero_count--) __putc('0');
    80001c34:	fff98493          	addi	s1,s3,-1
    80001c38:	00098c63          	beqz	s3,80001c50 <_Z11printNumberm+0xdc>
    80001c3c:	03000513          	li	a0,48
    80001c40:	00007097          	auipc	ra,0x7
    80001c44:	4bc080e7          	jalr	1212(ra) # 800090fc <__putc>
    80001c48:	00048993          	mv	s3,s1
    80001c4c:	fe9ff06f          	j	80001c34 <_Z11printNumberm+0xc0>
}
    80001c50:	02813083          	ld	ra,40(sp)
    80001c54:	02013403          	ld	s0,32(sp)
    80001c58:	01813483          	ld	s1,24(sp)
    80001c5c:	01013903          	ld	s2,16(sp)
    80001c60:	00813983          	ld	s3,8(sp)
    80001c64:	03010113          	addi	sp,sp,48
    80001c68:	00008067          	ret

0000000080001c6c <_Z15userMainWrapperPv>:
}

void userMain();
void userMainWrapper(void *args) {
    80001c6c:	ff010113          	addi	sp,sp,-16
    80001c70:	00113423          	sd	ra,8(sp)
    80001c74:	00813023          	sd	s0,0(sp)
    80001c78:	01010413          	addi	s0,sp,16
    userMain();
    80001c7c:	00005097          	auipc	ra,0x5
    80001c80:	b5c080e7          	jalr	-1188(ra) # 800067d8 <_Z8userMainv>
}
    80001c84:	00813083          	ld	ra,8(sp)
    80001c88:	00013403          	ld	s0,0(sp)
    80001c8c:	01010113          	addi	sp,sp,16
    80001c90:	00008067          	ret

0000000080001c94 <main>:
        printNumber(value--);
        if (value < 0) terminate();
    }
};

int main() {
    80001c94:	fc010113          	addi	sp,sp,-64
    80001c98:	02113c23          	sd	ra,56(sp)
    80001c9c:	02813823          	sd	s0,48(sp)
    80001ca0:	02913423          	sd	s1,40(sp)
    80001ca4:	03213023          	sd	s2,32(sp)
    80001ca8:	04010413          	addi	s0,sp,64
    /// Set interrupt routine handler
    RiscV::write_stvec((uint64) &RiscV::handle_interrupt);
    80001cac:	0000b797          	auipc	a5,0xb
    80001cb0:	2347b783          	ld	a5,564(a5) # 8000cee0 <_GLOBAL_OFFSET_TABLE_+0x38>
    __asm__ volatile ("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void RiscV::write_stvec(uint64 val) {
    __asm__ volatile ("csrw stvec, %0" : : "r"(val));
    80001cb4:	10579073          	csrw	stvec,a5
    /// Initialization
    MemoryAllocator::initialize();
    80001cb8:	00001097          	auipc	ra,0x1
    80001cbc:	ca4080e7          	jalr	-860(ra) # 8000295c <_ZN15MemoryAllocator10initializeEv>
    Con::initialize();
    80001cc0:	00000097          	auipc	ra,0x0
    80001cc4:	190080e7          	jalr	400(ra) # 80001e50 <_ZN3Con10initializeEv>

    thread_t threads[4];

    thread_create(&threads[0], nullptr, nullptr);
    80001cc8:	00000613          	li	a2,0
    80001ccc:	00000593          	li	a1,0
    80001cd0:	fc040513          	addi	a0,s0,-64
    80001cd4:	fffff097          	auipc	ra,0xfffff
    80001cd8:	624080e7          	jalr	1572(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running = threads[0];
    80001cdc:	fc043703          	ld	a4,-64(s0)
    80001ce0:	0000b797          	auipc	a5,0xb
    80001ce4:	2207b783          	ld	a5,544(a5) # 8000cf00 <_GLOBAL_OFFSET_TABLE_+0x58>
    80001ce8:	00e7b023          	sd	a4,0(a5)
inline void RiscV::write_sip(uint64 val) {
    __asm__ volatile ("csrw sip, %0" : : "r"(val));
}

inline void RiscV::ms_sstatus(uint64 mask) {
    __asm__ volatile ("csrs sstatus, %0" : : "r"(mask));
    80001cec:	00200793          	li	a5,2
    80001cf0:	1007a073          	csrs	sstatus,a5

    /// Enable external interrupts
    RiscV::ms_sstatus(RiscV::SSTATUS_SIE);

    thread_create(&threads[1], kernelConsoleOutput, nullptr);
    80001cf4:	00000613          	li	a2,0
    80001cf8:	00000597          	auipc	a1,0x0
    80001cfc:	e2c58593          	addi	a1,a1,-468 # 80001b24 <_Z19kernelConsoleOutputPv>
    80001d00:	fc840513          	addi	a0,s0,-56
    80001d04:	fffff097          	auipc	ra,0xfffff
    80001d08:	5f4080e7          	jalr	1524(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>

    Thread *periodic = new PeriodicWorker();
    80001d0c:	03000513          	li	a0,48
    80001d10:	00000097          	auipc	ra,0x0
    80001d14:	3dc080e7          	jalr	988(ra) # 800020ec <_Znwm>
    80001d18:	00050493          	mv	s1,a0
    explicit PeriodicWorker() : PeriodicThread(4) {}
    80001d1c:	00400593          	li	a1,4
    80001d20:	00000097          	auipc	ra,0x0
    80001d24:	6b0080e7          	jalr	1712(ra) # 800023d0 <_ZN14PeriodicThreadC1Em>
    80001d28:	0000b797          	auipc	a5,0xb
    80001d2c:	f4078793          	addi	a5,a5,-192 # 8000cc68 <_ZTV14PeriodicWorker+0x10>
    80001d30:	00f4b023          	sd	a5,0(s1)
    80001d34:	00a00793          	li	a5,10
    80001d38:	02f4a423          	sw	a5,40(s1)
    periodic -> start();
    80001d3c:	00048513          	mv	a0,s1
    80001d40:	00000097          	auipc	ra,0x0
    80001d44:	4dc080e7          	jalr	1244(ra) # 8000221c <_ZN6Thread5startEv>

    /// Test Everything
//    thread_create(&threads[2], userMainWrapper, nullptr);
    while (true) thread_dispatch();
    80001d48:	fffff097          	auipc	ra,0xfffff
    80001d4c:	684080e7          	jalr	1668(ra) # 800013cc <_Z15thread_dispatchv>
    80001d50:	ff9ff06f          	j	80001d48 <main+0xb4>
    80001d54:	00050913          	mv	s2,a0
    Thread *periodic = new PeriodicWorker();
    80001d58:	00048513          	mv	a0,s1
    80001d5c:	00000097          	auipc	ra,0x0
    80001d60:	3b8080e7          	jalr	952(ra) # 80002114 <_ZdlPv>
    80001d64:	00090513          	mv	a0,s2
    80001d68:	0000c097          	auipc	ra,0xc
    80001d6c:	360080e7          	jalr	864(ra) # 8000e0c8 <_Unwind_Resume>

0000000080001d70 <_ZN14PeriodicWorkerD1Ev>:
class PeriodicWorker : public PeriodicThread {
    80001d70:	ff010113          	addi	sp,sp,-16
    80001d74:	00113423          	sd	ra,8(sp)
    80001d78:	00813023          	sd	s0,0(sp)
    80001d7c:	01010413          	addi	s0,sp,16
    int tryWait();
private:
    sem_t myHandle;
};

class PeriodicThread : public Thread {
    80001d80:	0000b797          	auipc	a5,0xb
    80001d84:	1487b783          	ld	a5,328(a5) # 8000cec8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001d88:	01078793          	addi	a5,a5,16
    80001d8c:	00f53023          	sd	a5,0(a0)
    80001d90:	00000097          	auipc	ra,0x0
    80001d94:	28c080e7          	jalr	652(ra) # 8000201c <_ZN6ThreadD1Ev>
    80001d98:	00813083          	ld	ra,8(sp)
    80001d9c:	00013403          	ld	s0,0(sp)
    80001da0:	01010113          	addi	sp,sp,16
    80001da4:	00008067          	ret

0000000080001da8 <_ZN14PeriodicWorkerD0Ev>:
    80001da8:	fe010113          	addi	sp,sp,-32
    80001dac:	00113c23          	sd	ra,24(sp)
    80001db0:	00813823          	sd	s0,16(sp)
    80001db4:	00913423          	sd	s1,8(sp)
    80001db8:	02010413          	addi	s0,sp,32
    80001dbc:	00050493          	mv	s1,a0
    80001dc0:	0000b797          	auipc	a5,0xb
    80001dc4:	1087b783          	ld	a5,264(a5) # 8000cec8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001dc8:	01078793          	addi	a5,a5,16
    80001dcc:	00f53023          	sd	a5,0(a0)
    80001dd0:	00000097          	auipc	ra,0x0
    80001dd4:	24c080e7          	jalr	588(ra) # 8000201c <_ZN6ThreadD1Ev>
    80001dd8:	00048513          	mv	a0,s1
    80001ddc:	00000097          	auipc	ra,0x0
    80001de0:	338080e7          	jalr	824(ra) # 80002114 <_ZdlPv>
    80001de4:	01813083          	ld	ra,24(sp)
    80001de8:	01013403          	ld	s0,16(sp)
    80001dec:	00813483          	ld	s1,8(sp)
    80001df0:	02010113          	addi	sp,sp,32
    80001df4:	00008067          	ret

0000000080001df8 <_ZN14PeriodicWorker18periodicActivationEv>:
    void periodicActivation() override {
    80001df8:	fe010113          	addi	sp,sp,-32
    80001dfc:	00113c23          	sd	ra,24(sp)
    80001e00:	00813823          	sd	s0,16(sp)
    80001e04:	00913423          	sd	s1,8(sp)
    80001e08:	02010413          	addi	s0,sp,32
    80001e0c:	00050493          	mv	s1,a0
        printNumber(value--);
    80001e10:	02852503          	lw	a0,40(a0)
    80001e14:	fff5079b          	addiw	a5,a0,-1
    80001e18:	02f4a423          	sw	a5,40(s1)
    80001e1c:	00000097          	auipc	ra,0x0
    80001e20:	d58080e7          	jalr	-680(ra) # 80001b74 <_Z11printNumberm>
        if (value < 0) terminate();
    80001e24:	0284a783          	lw	a5,40(s1)
    80001e28:	0007cc63          	bltz	a5,80001e40 <_ZN14PeriodicWorker18periodicActivationEv+0x48>
    }
    80001e2c:	01813083          	ld	ra,24(sp)
    80001e30:	01013403          	ld	s0,16(sp)
    80001e34:	00813483          	ld	s1,8(sp)
    80001e38:	02010113          	addi	sp,sp,32
    80001e3c:	00008067          	ret
        if (value < 0) terminate();
    80001e40:	00048513          	mv	a0,s1
    80001e44:	00000097          	auipc	ra,0x0
    80001e48:	564080e7          	jalr	1380(ra) # 800023a8 <_ZN14PeriodicThread9terminateEv>
    }
    80001e4c:	fe1ff06f          	j	80001e2c <_ZN14PeriodicWorker18periodicActivationEv+0x34>

0000000080001e50 <_ZN3Con10initializeEv>:
bool Con::initialized = false;
BoundedBuffer* Con::input_buffer = nullptr;
BoundedBuffer* Con::output_buffer = nullptr;

void Con::initialize() {
    if (!initialized) {
    80001e50:	0000b797          	auipc	a5,0xb
    80001e54:	1007c783          	lbu	a5,256(a5) # 8000cf50 <_ZN3Con11initializedE>
    80001e58:	00078463          	beqz	a5,80001e60 <_ZN3Con10initializeEv+0x10>
    80001e5c:	00008067          	ret
void Con::initialize() {
    80001e60:	fe010113          	addi	sp,sp,-32
    80001e64:	00113c23          	sd	ra,24(sp)
    80001e68:	00813823          	sd	s0,16(sp)
    80001e6c:	00913423          	sd	s1,8(sp)
    80001e70:	01213023          	sd	s2,0(sp)
    80001e74:	02010413          	addi	s0,sp,32
        initialized = true;
    80001e78:	00100793          	li	a5,1
    80001e7c:	0000b717          	auipc	a4,0xb
    80001e80:	0cf70a23          	sb	a5,212(a4) # 8000cf50 <_ZN3Con11initializedE>
        input_buffer = new BoundedBuffer();
    80001e84:	21000513          	li	a0,528
    80001e88:	00001097          	auipc	ra,0x1
    80001e8c:	bf4080e7          	jalr	-1036(ra) # 80002a7c <_ZN13BoundedBuffernwEm>
    80001e90:	00050493          	mv	s1,a0
    80001e94:	00001097          	auipc	ra,0x1
    80001e98:	b50080e7          	jalr	-1200(ra) # 800029e4 <_ZN13BoundedBufferC1Ev>
    80001e9c:	0000b797          	auipc	a5,0xb
    80001ea0:	0a97be23          	sd	s1,188(a5) # 8000cf58 <_ZN3Con12input_bufferE>
        output_buffer = new BoundedBuffer();
    80001ea4:	21000513          	li	a0,528
    80001ea8:	00001097          	auipc	ra,0x1
    80001eac:	bd4080e7          	jalr	-1068(ra) # 80002a7c <_ZN13BoundedBuffernwEm>
    80001eb0:	00050493          	mv	s1,a0
    80001eb4:	00001097          	auipc	ra,0x1
    80001eb8:	b30080e7          	jalr	-1232(ra) # 800029e4 <_ZN13BoundedBufferC1Ev>
    80001ebc:	0000b797          	auipc	a5,0xb
    80001ec0:	0a97b223          	sd	s1,164(a5) # 8000cf60 <_ZN3Con13output_bufferE>
    }
}
    80001ec4:	01813083          	ld	ra,24(sp)
    80001ec8:	01013403          	ld	s0,16(sp)
    80001ecc:	00813483          	ld	s1,8(sp)
    80001ed0:	00013903          	ld	s2,0(sp)
    80001ed4:	02010113          	addi	sp,sp,32
    80001ed8:	00008067          	ret
    80001edc:	00050913          	mv	s2,a0
        input_buffer = new BoundedBuffer();
    80001ee0:	00048513          	mv	a0,s1
    80001ee4:	00001097          	auipc	ra,0x1
    80001ee8:	bc8080e7          	jalr	-1080(ra) # 80002aac <_ZN13BoundedBufferdlEPv>
    80001eec:	00090513          	mv	a0,s2
    80001ef0:	0000c097          	auipc	ra,0xc
    80001ef4:	1d8080e7          	jalr	472(ra) # 8000e0c8 <_Unwind_Resume>
    80001ef8:	00050913          	mv	s2,a0
        output_buffer = new BoundedBuffer();
    80001efc:	00048513          	mv	a0,s1
    80001f00:	00001097          	auipc	ra,0x1
    80001f04:	bac080e7          	jalr	-1108(ra) # 80002aac <_ZN13BoundedBufferdlEPv>
    80001f08:	00090513          	mv	a0,s2
    80001f0c:	0000c097          	auipc	ra,0xc
    80001f10:	1bc080e7          	jalr	444(ra) # 8000e0c8 <_Unwind_Resume>

0000000080001f14 <_ZN3Con11putc_outputEc>:

void Con::putc_output(char c) {
    80001f14:	ff010113          	addi	sp,sp,-16
    80001f18:	00113423          	sd	ra,8(sp)
    80001f1c:	00813023          	sd	s0,0(sp)
    80001f20:	01010413          	addi	s0,sp,16
    80001f24:	00050593          	mv	a1,a0
    output_buffer -> putc(c);
    80001f28:	0000b517          	auipc	a0,0xb
    80001f2c:	03853503          	ld	a0,56(a0) # 8000cf60 <_ZN3Con13output_bufferE>
    80001f30:	00001097          	auipc	ra,0x1
    80001f34:	ba4080e7          	jalr	-1116(ra) # 80002ad4 <_ZN13BoundedBuffer4putcEc>
}
    80001f38:	00813083          	ld	ra,8(sp)
    80001f3c:	00013403          	ld	s0,0(sp)
    80001f40:	01010113          	addi	sp,sp,16
    80001f44:	00008067          	ret

0000000080001f48 <_ZN3Con11getc_outputEv>:

char Con::getc_output() {
    80001f48:	ff010113          	addi	sp,sp,-16
    80001f4c:	00113423          	sd	ra,8(sp)
    80001f50:	00813023          	sd	s0,0(sp)
    80001f54:	01010413          	addi	s0,sp,16
    return output_buffer -> getc();
    80001f58:	0000b517          	auipc	a0,0xb
    80001f5c:	00853503          	ld	a0,8(a0) # 8000cf60 <_ZN3Con13output_bufferE>
    80001f60:	00001097          	auipc	ra,0x1
    80001f64:	be0080e7          	jalr	-1056(ra) # 80002b40 <_ZN13BoundedBuffer4getcEv>
}
    80001f68:	00813083          	ld	ra,8(sp)
    80001f6c:	00013403          	ld	s0,0(sp)
    80001f70:	01010113          	addi	sp,sp,16
    80001f74:	00008067          	ret

0000000080001f78 <_ZN3Con10putc_inputEc>:

void Con::putc_input(char c) {
    80001f78:	ff010113          	addi	sp,sp,-16
    80001f7c:	00113423          	sd	ra,8(sp)
    80001f80:	00813023          	sd	s0,0(sp)
    80001f84:	01010413          	addi	s0,sp,16
    80001f88:	00050593          	mv	a1,a0
    input_buffer -> putc(c);
    80001f8c:	0000b517          	auipc	a0,0xb
    80001f90:	fcc53503          	ld	a0,-52(a0) # 8000cf58 <_ZN3Con12input_bufferE>
    80001f94:	00001097          	auipc	ra,0x1
    80001f98:	b40080e7          	jalr	-1216(ra) # 80002ad4 <_ZN13BoundedBuffer4putcEc>
}
    80001f9c:	00813083          	ld	ra,8(sp)
    80001fa0:	00013403          	ld	s0,0(sp)
    80001fa4:	01010113          	addi	sp,sp,16
    80001fa8:	00008067          	ret

0000000080001fac <_ZN3Con10getc_inputEv>:

char Con::getc_input() {
    80001fac:	ff010113          	addi	sp,sp,-16
    80001fb0:	00113423          	sd	ra,8(sp)
    80001fb4:	00813023          	sd	s0,0(sp)
    80001fb8:	01010413          	addi	s0,sp,16
    return input_buffer -> getc();
    80001fbc:	0000b517          	auipc	a0,0xb
    80001fc0:	f9c53503          	ld	a0,-100(a0) # 8000cf58 <_ZN3Con12input_bufferE>
    80001fc4:	00001097          	auipc	ra,0x1
    80001fc8:	b7c080e7          	jalr	-1156(ra) # 80002b40 <_ZN13BoundedBuffer4getcEv>
    80001fcc:	00813083          	ld	ra,8(sp)
    80001fd0:	00013403          	ld	s0,0(sp)
    80001fd4:	01010113          	addi	sp,sp,16
    80001fd8:	00008067          	ret

0000000080001fdc <_ZN6Thread12start_helperEPv>:

Thread::~Thread() {
    if (myHandle -> is_finished()) delete myHandle;
}

void Thread::start_helper(void *args) {
    80001fdc:	ff010113          	addi	sp,sp,-16
    80001fe0:	00113423          	sd	ra,8(sp)
    80001fe4:	00813023          	sd	s0,0(sp)
    80001fe8:	01010413          	addi	s0,sp,16
    auto* thread = (Thread*) args;
    if (!thread -> body) thread -> run();
    80001fec:	01053783          	ld	a5,16(a0)
    80001ff0:	00078e63          	beqz	a5,8000200c <_ZN6Thread12start_helperEPv+0x30>
    else thread -> body(thread -> arg);
    80001ff4:	01853503          	ld	a0,24(a0)
    80001ff8:	000780e7          	jalr	a5
}
    80001ffc:	00813083          	ld	ra,8(sp)
    80002000:	00013403          	ld	s0,0(sp)
    80002004:	01010113          	addi	sp,sp,16
    80002008:	00008067          	ret
    if (!thread -> body) thread -> run();
    8000200c:	00053783          	ld	a5,0(a0)
    80002010:	0107b783          	ld	a5,16(a5)
    80002014:	000780e7          	jalr	a5
    80002018:	fe5ff06f          	j	80001ffc <_ZN6Thread12start_helperEPv+0x20>

000000008000201c <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    8000201c:	fe010113          	addi	sp,sp,-32
    80002020:	00113c23          	sd	ra,24(sp)
    80002024:	00813823          	sd	s0,16(sp)
    80002028:	00913423          	sd	s1,8(sp)
    8000202c:	02010413          	addi	s0,sp,32
    80002030:	00050493          	mv	s1,a0
    80002034:	0000b797          	auipc	a5,0xb
    80002038:	c6478793          	addi	a5,a5,-924 # 8000cc98 <_ZTV6Thread+0x10>
    8000203c:	00f53023          	sd	a5,0(a0)
    if (myHandle -> is_finished()) delete myHandle;
    80002040:	00853503          	ld	a0,8(a0)
    80002044:	00002097          	auipc	ra,0x2
    80002048:	8b0080e7          	jalr	-1872(ra) # 800038f4 <_ZNK3TCB11is_finishedEv>
    8000204c:	00050a63          	beqz	a0,80002060 <_ZN6ThreadD1Ev+0x44>
    80002050:	0084b503          	ld	a0,8(s1)
    80002054:	00050663          	beqz	a0,80002060 <_ZN6ThreadD1Ev+0x44>
    80002058:	00001097          	auipc	ra,0x1
    8000205c:	778080e7          	jalr	1912(ra) # 800037d0 <_ZN3TCBdlEPv>
}
    80002060:	01813083          	ld	ra,24(sp)
    80002064:	01013403          	ld	s0,16(sp)
    80002068:	00813483          	ld	s1,8(sp)
    8000206c:	02010113          	addi	sp,sp,32
    80002070:	00008067          	ret

0000000080002074 <_ZN14PeriodicThread3runEv>:
PeriodicThread::PeriodicThread(time_t period) : Thread() {
    if (period <= 0) period = DEFAULT_TIME_SLICE;
    else this -> period = period;
}

[[noreturn]] void PeriodicThread::run() {
    80002074:	fe010113          	addi	sp,sp,-32
    80002078:	00113c23          	sd	ra,24(sp)
    8000207c:	00813823          	sd	s0,16(sp)
    80002080:	00913423          	sd	s1,8(sp)
    80002084:	02010413          	addi	s0,sp,32
    80002088:	00050493          	mv	s1,a0
    while (true) {
        periodicActivation();
    8000208c:	0004b783          	ld	a5,0(s1)
    80002090:	0187b783          	ld	a5,24(a5)
    80002094:	00048513          	mv	a0,s1
    80002098:	000780e7          	jalr	a5
        time_sleep(period);
    8000209c:	0204b503          	ld	a0,32(s1)
    800020a0:	fffff097          	auipc	ra,0xfffff
    800020a4:	534080e7          	jalr	1332(ra) # 800015d4 <_Z10time_sleepm>
    while (true) {
    800020a8:	fe5ff06f          	j	8000208c <_ZN14PeriodicThread3runEv+0x18>

00000000800020ac <_ZN9SemaphoreD1Ev>:
Semaphore::~Semaphore() {
    800020ac:	0000b797          	auipc	a5,0xb
    800020b0:	c1478793          	addi	a5,a5,-1004 # 8000ccc0 <_ZTV9Semaphore+0x10>
    800020b4:	00f53023          	sd	a5,0(a0)
    if (myHandle) sem_close(myHandle);
    800020b8:	00853503          	ld	a0,8(a0)
    800020bc:	02050663          	beqz	a0,800020e8 <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    800020c0:	ff010113          	addi	sp,sp,-16
    800020c4:	00113423          	sd	ra,8(sp)
    800020c8:	00813023          	sd	s0,0(sp)
    800020cc:	01010413          	addi	s0,sp,16
    if (myHandle) sem_close(myHandle);
    800020d0:	fffff097          	auipc	ra,0xfffff
    800020d4:	388080e7          	jalr	904(ra) # 80001458 <_Z9sem_closeP3Sem>
}
    800020d8:	00813083          	ld	ra,8(sp)
    800020dc:	00013403          	ld	s0,0(sp)
    800020e0:	01010113          	addi	sp,sp,16
    800020e4:	00008067          	ret
    800020e8:	00008067          	ret

00000000800020ec <_Znwm>:
void* operator new(size_t size){
    800020ec:	ff010113          	addi	sp,sp,-16
    800020f0:	00113423          	sd	ra,8(sp)
    800020f4:	00813023          	sd	s0,0(sp)
    800020f8:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800020fc:	fffff097          	auipc	ra,0xfffff
    80002100:	15c080e7          	jalr	348(ra) # 80001258 <_Z9mem_allocm>
}
    80002104:	00813083          	ld	ra,8(sp)
    80002108:	00013403          	ld	s0,0(sp)
    8000210c:	01010113          	addi	sp,sp,16
    80002110:	00008067          	ret

0000000080002114 <_ZdlPv>:
void operator delete(void* p) noexcept {
    80002114:	ff010113          	addi	sp,sp,-16
    80002118:	00113423          	sd	ra,8(sp)
    8000211c:	00813023          	sd	s0,0(sp)
    80002120:	01010413          	addi	s0,sp,16
    mem_free(p);
    80002124:	fffff097          	auipc	ra,0xfffff
    80002128:	188080e7          	jalr	392(ra) # 800012ac <_Z8mem_freePv>
}
    8000212c:	00813083          	ld	ra,8(sp)
    80002130:	00013403          	ld	s0,0(sp)
    80002134:	01010113          	addi	sp,sp,16
    80002138:	00008067          	ret

000000008000213c <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    8000213c:	fe010113          	addi	sp,sp,-32
    80002140:	00113c23          	sd	ra,24(sp)
    80002144:	00813823          	sd	s0,16(sp)
    80002148:	00913423          	sd	s1,8(sp)
    8000214c:	02010413          	addi	s0,sp,32
    80002150:	00050493          	mv	s1,a0
}
    80002154:	00000097          	auipc	ra,0x0
    80002158:	ec8080e7          	jalr	-312(ra) # 8000201c <_ZN6ThreadD1Ev>
    8000215c:	00048513          	mv	a0,s1
    80002160:	00000097          	auipc	ra,0x0
    80002164:	fb4080e7          	jalr	-76(ra) # 80002114 <_ZdlPv>
    80002168:	01813083          	ld	ra,24(sp)
    8000216c:	01013403          	ld	s0,16(sp)
    80002170:	00813483          	ld	s1,8(sp)
    80002174:	02010113          	addi	sp,sp,32
    80002178:	00008067          	ret

000000008000217c <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    8000217c:	fe010113          	addi	sp,sp,-32
    80002180:	00113c23          	sd	ra,24(sp)
    80002184:	00813823          	sd	s0,16(sp)
    80002188:	00913423          	sd	s1,8(sp)
    8000218c:	02010413          	addi	s0,sp,32
    80002190:	00050493          	mv	s1,a0
}
    80002194:	00000097          	auipc	ra,0x0
    80002198:	f18080e7          	jalr	-232(ra) # 800020ac <_ZN9SemaphoreD1Ev>
    8000219c:	00048513          	mv	a0,s1
    800021a0:	00000097          	auipc	ra,0x0
    800021a4:	f74080e7          	jalr	-140(ra) # 80002114 <_ZdlPv>
    800021a8:	01813083          	ld	ra,24(sp)
    800021ac:	01013403          	ld	s0,16(sp)
    800021b0:	00813483          	ld	s1,8(sp)
    800021b4:	02010113          	addi	sp,sp,32
    800021b8:	00008067          	ret

00000000800021bc <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    800021bc:	ff010113          	addi	sp,sp,-16
    800021c0:	00813423          	sd	s0,8(sp)
    800021c4:	01010413          	addi	s0,sp,16
    800021c8:	0000b797          	auipc	a5,0xb
    800021cc:	ad078793          	addi	a5,a5,-1328 # 8000cc98 <_ZTV6Thread+0x10>
    800021d0:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    800021d4:	00053423          	sd	zero,8(a0)
    this -> body = body;
    800021d8:	00b53823          	sd	a1,16(a0)
    this -> arg = arg;
    800021dc:	00c53c23          	sd	a2,24(a0)
}
    800021e0:	00813403          	ld	s0,8(sp)
    800021e4:	01010113          	addi	sp,sp,16
    800021e8:	00008067          	ret

00000000800021ec <_ZN6ThreadC1Ev>:
Thread::Thread() {
    800021ec:	ff010113          	addi	sp,sp,-16
    800021f0:	00813423          	sd	s0,8(sp)
    800021f4:	01010413          	addi	s0,sp,16
    800021f8:	0000b797          	auipc	a5,0xb
    800021fc:	aa078793          	addi	a5,a5,-1376 # 8000cc98 <_ZTV6Thread+0x10>
    80002200:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    80002204:	00053423          	sd	zero,8(a0)
    body = nullptr;
    80002208:	00053823          	sd	zero,16(a0)
    arg = nullptr;
    8000220c:	00053c23          	sd	zero,24(a0)
}
    80002210:	00813403          	ld	s0,8(sp)
    80002214:	01010113          	addi	sp,sp,16
    80002218:	00008067          	ret

000000008000221c <_ZN6Thread5startEv>:
int Thread::start() {
    8000221c:	ff010113          	addi	sp,sp,-16
    80002220:	00113423          	sd	ra,8(sp)
    80002224:	00813023          	sd	s0,0(sp)
    80002228:	01010413          	addi	s0,sp,16
    return thread_create(&myHandle, start_helper, this);
    8000222c:	00050613          	mv	a2,a0
    80002230:	00000597          	auipc	a1,0x0
    80002234:	dac58593          	addi	a1,a1,-596 # 80001fdc <_ZN6Thread12start_helperEPv>
    80002238:	00850513          	addi	a0,a0,8
    8000223c:	fffff097          	auipc	ra,0xfffff
    80002240:	0bc080e7          	jalr	188(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
}
    80002244:	00813083          	ld	ra,8(sp)
    80002248:	00013403          	ld	s0,0(sp)
    8000224c:	01010113          	addi	sp,sp,16
    80002250:	00008067          	ret

0000000080002254 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80002254:	ff010113          	addi	sp,sp,-16
    80002258:	00113423          	sd	ra,8(sp)
    8000225c:	00813023          	sd	s0,0(sp)
    80002260:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002264:	fffff097          	auipc	ra,0xfffff
    80002268:	168080e7          	jalr	360(ra) # 800013cc <_Z15thread_dispatchv>
}
    8000226c:	00813083          	ld	ra,8(sp)
    80002270:	00013403          	ld	s0,0(sp)
    80002274:	01010113          	addi	sp,sp,16
    80002278:	00008067          	ret

000000008000227c <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    8000227c:	ff010113          	addi	sp,sp,-16
    80002280:	00113423          	sd	ra,8(sp)
    80002284:	00813023          	sd	s0,0(sp)
    80002288:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    8000228c:	fffff097          	auipc	ra,0xfffff
    80002290:	348080e7          	jalr	840(ra) # 800015d4 <_Z10time_sleepm>
}
    80002294:	00813083          	ld	ra,8(sp)
    80002298:	00013403          	ld	s0,0(sp)
    8000229c:	01010113          	addi	sp,sp,16
    800022a0:	00008067          	ret

00000000800022a4 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    800022a4:	ff010113          	addi	sp,sp,-16
    800022a8:	00113423          	sd	ra,8(sp)
    800022ac:	00813023          	sd	s0,0(sp)
    800022b0:	01010413          	addi	s0,sp,16
    800022b4:	0000b797          	auipc	a5,0xb
    800022b8:	a0c78793          	addi	a5,a5,-1524 # 8000ccc0 <_ZTV9Semaphore+0x10>
    800022bc:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    800022c0:	00053423          	sd	zero,8(a0)
    sem_open(&myHandle, init);
    800022c4:	00850513          	addi	a0,a0,8
    800022c8:	fffff097          	auipc	ra,0xfffff
    800022cc:	140080e7          	jalr	320(ra) # 80001408 <_Z8sem_openPP3Semj>
}
    800022d0:	00813083          	ld	ra,8(sp)
    800022d4:	00013403          	ld	s0,0(sp)
    800022d8:	01010113          	addi	sp,sp,16
    800022dc:	00008067          	ret

00000000800022e0 <_ZN9Semaphore4waitEv>:
    if (myHandle) return sem_wait(myHandle);
    800022e0:	00853503          	ld	a0,8(a0)
    800022e4:	02050663          	beqz	a0,80002310 <_ZN9Semaphore4waitEv+0x30>
int Semaphore::wait() {
    800022e8:	ff010113          	addi	sp,sp,-16
    800022ec:	00113423          	sd	ra,8(sp)
    800022f0:	00813023          	sd	s0,0(sp)
    800022f4:	01010413          	addi	s0,sp,16
    if (myHandle) return sem_wait(myHandle);
    800022f8:	fffff097          	auipc	ra,0xfffff
    800022fc:	1ac080e7          	jalr	428(ra) # 800014a4 <_Z8sem_waitP3Sem>
}
    80002300:	00813083          	ld	ra,8(sp)
    80002304:	00013403          	ld	s0,0(sp)
    80002308:	01010113          	addi	sp,sp,16
    8000230c:	00008067          	ret
    return -1;
    80002310:	fff00513          	li	a0,-1
}
    80002314:	00008067          	ret

0000000080002318 <_ZN9Semaphore6signalEv>:
    if (myHandle) return sem_signal(myHandle);
    80002318:	00853503          	ld	a0,8(a0)
    8000231c:	02050663          	beqz	a0,80002348 <_ZN9Semaphore6signalEv+0x30>
int Semaphore::signal() {
    80002320:	ff010113          	addi	sp,sp,-16
    80002324:	00113423          	sd	ra,8(sp)
    80002328:	00813023          	sd	s0,0(sp)
    8000232c:	01010413          	addi	s0,sp,16
    if (myHandle) return sem_signal(myHandle);
    80002330:	fffff097          	auipc	ra,0xfffff
    80002334:	1c0080e7          	jalr	448(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    80002338:	00813083          	ld	ra,8(sp)
    8000233c:	00013403          	ld	s0,0(sp)
    80002340:	01010113          	addi	sp,sp,16
    80002344:	00008067          	ret
    return -1;
    80002348:	fff00513          	li	a0,-1
}
    8000234c:	00008067          	ret

0000000080002350 <_ZN9Semaphore9timedWaitEm>:
int Semaphore::timedWait(time_t time) {
    80002350:	ff010113          	addi	sp,sp,-16
    80002354:	00113423          	sd	ra,8(sp)
    80002358:	00813023          	sd	s0,0(sp)
    8000235c:	01010413          	addi	s0,sp,16
    return sem_timedwait(myHandle, time);
    80002360:	00853503          	ld	a0,8(a0)
    80002364:	fffff097          	auipc	ra,0xfffff
    80002368:	1d8080e7          	jalr	472(ra) # 8000153c <_Z13sem_timedwaitP3Semm>
}
    8000236c:	00813083          	ld	ra,8(sp)
    80002370:	00013403          	ld	s0,0(sp)
    80002374:	01010113          	addi	sp,sp,16
    80002378:	00008067          	ret

000000008000237c <_ZN9Semaphore7tryWaitEv>:
int Semaphore::tryWait() {
    8000237c:	ff010113          	addi	sp,sp,-16
    80002380:	00113423          	sd	ra,8(sp)
    80002384:	00813023          	sd	s0,0(sp)
    80002388:	01010413          	addi	s0,sp,16
    return sem_trywait(myHandle);
    8000238c:	00853503          	ld	a0,8(a0)
    80002390:	fffff097          	auipc	ra,0xfffff
    80002394:	1f8080e7          	jalr	504(ra) # 80001588 <_Z11sem_trywaitP3Sem>
}
    80002398:	00813083          	ld	ra,8(sp)
    8000239c:	00013403          	ld	s0,0(sp)
    800023a0:	01010113          	addi	sp,sp,16
    800023a4:	00008067          	ret

00000000800023a8 <_ZN14PeriodicThread9terminateEv>:
void PeriodicThread::terminate() {
    800023a8:	ff010113          	addi	sp,sp,-16
    800023ac:	00113423          	sd	ra,8(sp)
    800023b0:	00813023          	sd	s0,0(sp)
    800023b4:	01010413          	addi	s0,sp,16
    thread_exit();
    800023b8:	fffff097          	auipc	ra,0xfffff
    800023bc:	fc8080e7          	jalr	-56(ra) # 80001380 <_Z11thread_exitv>
}
    800023c0:	00813083          	ld	ra,8(sp)
    800023c4:	00013403          	ld	s0,0(sp)
    800023c8:	01010113          	addi	sp,sp,16
    800023cc:	00008067          	ret

00000000800023d0 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread() {
    800023d0:	fe010113          	addi	sp,sp,-32
    800023d4:	00113c23          	sd	ra,24(sp)
    800023d8:	00813823          	sd	s0,16(sp)
    800023dc:	00913423          	sd	s1,8(sp)
    800023e0:	01213023          	sd	s2,0(sp)
    800023e4:	02010413          	addi	s0,sp,32
    800023e8:	00050493          	mv	s1,a0
    800023ec:	00058913          	mv	s2,a1
    800023f0:	00000097          	auipc	ra,0x0
    800023f4:	dfc080e7          	jalr	-516(ra) # 800021ec <_ZN6ThreadC1Ev>
    800023f8:	0000b797          	auipc	a5,0xb
    800023fc:	8e878793          	addi	a5,a5,-1816 # 8000cce0 <_ZTV14PeriodicThread+0x10>
    80002400:	00f4b023          	sd	a5,0(s1)
    if (period <= 0) period = DEFAULT_TIME_SLICE;
    80002404:	00090463          	beqz	s2,8000240c <_ZN14PeriodicThreadC1Em+0x3c>
    else this -> period = period;
    80002408:	0324b023          	sd	s2,32(s1)
}
    8000240c:	01813083          	ld	ra,24(sp)
    80002410:	01013403          	ld	s0,16(sp)
    80002414:	00813483          	ld	s1,8(sp)
    80002418:	00013903          	ld	s2,0(sp)
    8000241c:	02010113          	addi	sp,sp,32
    80002420:	00008067          	ret

0000000080002424 <_ZN7Console4getcEv>:
    }
}

char Console::getc() {
    80002424:	ff010113          	addi	sp,sp,-16
    80002428:	00113423          	sd	ra,8(sp)
    8000242c:	00813023          	sd	s0,0(sp)
    80002430:	01010413          	addi	s0,sp,16
    return ::getc();
    80002434:	fffff097          	auipc	ra,0xfffff
    80002438:	1ec080e7          	jalr	492(ra) # 80001620 <_Z4getcv>
}
    8000243c:	00813083          	ld	ra,8(sp)
    80002440:	00013403          	ld	s0,0(sp)
    80002444:	01010113          	addi	sp,sp,16
    80002448:	00008067          	ret

000000008000244c <_ZN7Console4putcEc>:

void Console::putc(char c) {
    8000244c:	ff010113          	addi	sp,sp,-16
    80002450:	00113423          	sd	ra,8(sp)
    80002454:	00813023          	sd	s0,0(sp)
    80002458:	01010413          	addi	s0,sp,16
    ::putc(c);
    8000245c:	fffff097          	auipc	ra,0xfffff
    80002460:	210080e7          	jalr	528(ra) # 8000166c <_Z4putcc>
}
    80002464:	00813083          	ld	ra,8(sp)
    80002468:	00013403          	ld	s0,0(sp)
    8000246c:	01010113          	addi	sp,sp,16
    80002470:	00008067          	ret

0000000080002474 <_ZN6Thread3runEv>:
    virtual void run () {}
    80002474:	ff010113          	addi	sp,sp,-16
    80002478:	00813423          	sd	s0,8(sp)
    8000247c:	01010413          	addi	s0,sp,16
    80002480:	00813403          	ld	s0,8(sp)
    80002484:	01010113          	addi	sp,sp,16
    80002488:	00008067          	ret

000000008000248c <_ZN14PeriodicThread18periodicActivationEv>:
    void terminate ();
protected:
    PeriodicThread (time_t period);

    [[noreturn]] virtual void run() override;
    virtual void periodicActivation () {}
    8000248c:	ff010113          	addi	sp,sp,-16
    80002490:	00813423          	sd	s0,8(sp)
    80002494:	01010413          	addi	s0,sp,16
    80002498:	00813403          	ld	s0,8(sp)
    8000249c:	01010113          	addi	sp,sp,16
    800024a0:	00008067          	ret

00000000800024a4 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    800024a4:	ff010113          	addi	sp,sp,-16
    800024a8:	00113423          	sd	ra,8(sp)
    800024ac:	00813023          	sd	s0,0(sp)
    800024b0:	01010413          	addi	s0,sp,16
    800024b4:	0000b797          	auipc	a5,0xb
    800024b8:	82c78793          	addi	a5,a5,-2004 # 8000cce0 <_ZTV14PeriodicThread+0x10>
    800024bc:	00f53023          	sd	a5,0(a0)
    800024c0:	00000097          	auipc	ra,0x0
    800024c4:	b5c080e7          	jalr	-1188(ra) # 8000201c <_ZN6ThreadD1Ev>
    800024c8:	00813083          	ld	ra,8(sp)
    800024cc:	00013403          	ld	s0,0(sp)
    800024d0:	01010113          	addi	sp,sp,16
    800024d4:	00008067          	ret

00000000800024d8 <_ZN14PeriodicThreadD0Ev>:
    800024d8:	fe010113          	addi	sp,sp,-32
    800024dc:	00113c23          	sd	ra,24(sp)
    800024e0:	00813823          	sd	s0,16(sp)
    800024e4:	00913423          	sd	s1,8(sp)
    800024e8:	02010413          	addi	s0,sp,32
    800024ec:	00050493          	mv	s1,a0
    800024f0:	0000a797          	auipc	a5,0xa
    800024f4:	7f078793          	addi	a5,a5,2032 # 8000cce0 <_ZTV14PeriodicThread+0x10>
    800024f8:	00f53023          	sd	a5,0(a0)
    800024fc:	00000097          	auipc	ra,0x0
    80002500:	b20080e7          	jalr	-1248(ra) # 8000201c <_ZN6ThreadD1Ev>
    80002504:	00048513          	mv	a0,s1
    80002508:	00000097          	auipc	ra,0x0
    8000250c:	c0c080e7          	jalr	-1012(ra) # 80002114 <_ZdlPv>
    80002510:	01813083          	ld	ra,24(sp)
    80002514:	01013403          	ld	s0,16(sp)
    80002518:	00813483          	ld	s1,8(sp)
    8000251c:	02010113          	addi	sp,sp,32
    80002520:	00008067          	ret

0000000080002524 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb>:
        instance = (MemoryAllocator*) MemoryAllocator::mem_alloc(get_number_of_blocks(sizeof(MemoryAllocator)));
    }
}

/// helper function for removing element from linked list
void MemoryAllocator::removeNode(MemSeg *toRemove, MemSeg *nextSeg, bool newIsCreated, bool free_list) {
    80002524:	ff010113          	addi	sp,sp,-16
    80002528:	00813423          	sd	s0,8(sp)
    8000252c:	01010413          	addi	s0,sp,16
    if (toRemove -> prev) toRemove -> prev -> next = nextSeg;
    80002530:	00853783          	ld	a5,8(a0)
    80002534:	02078463          	beqz	a5,8000255c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb+0x38>
    80002538:	00b7b823          	sd	a1,16(a5)
    else (free_list ? freeSegHead : usedSegHead) = nextSeg;
    if (toRemove -> next) toRemove -> next -> prev = (newIsCreated) ? nextSeg : toRemove -> prev;
    8000253c:	01053783          	ld	a5,16(a0)
    80002540:	00078863          	beqz	a5,80002550 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb+0x2c>
    80002544:	00061463          	bnez	a2,8000254c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb+0x28>
    80002548:	00853583          	ld	a1,8(a0)
    8000254c:	00b7b423          	sd	a1,8(a5)
}
    80002550:	00813403          	ld	s0,8(sp)
    80002554:	01010113          	addi	sp,sp,16
    80002558:	00008067          	ret
    else (free_list ? freeSegHead : usedSegHead) = nextSeg;
    8000255c:	00068863          	beqz	a3,8000256c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb+0x48>
    80002560:	0000b797          	auipc	a5,0xb
    80002564:	a0b7b423          	sd	a1,-1528(a5) # 8000cf68 <_ZN15MemoryAllocator11freeSegHeadE>
    80002568:	fd5ff06f          	j	8000253c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb+0x18>
    8000256c:	0000b797          	auipc	a5,0xb
    80002570:	a0b7b223          	sd	a1,-1532(a5) # 8000cf70 <_ZN15MemoryAllocator11usedSegHeadE>
    80002574:	fc9ff06f          	j	8000253c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb+0x18>

0000000080002578 <_ZN15MemoryAllocator9mem_allocEm>:

/// allocate `size` blocks
void *MemoryAllocator::mem_alloc(size_t size) {
    80002578:	fe010113          	addi	sp,sp,-32
    8000257c:	00113c23          	sd	ra,24(sp)
    80002580:	00813823          	sd	s0,16(sp)
    80002584:	00913423          	sd	s1,8(sp)
    80002588:	01213023          	sd	s2,0(sp)
    8000258c:	02010413          	addi	s0,sp,32
    if (size <= 0) return nullptr;
    80002590:	10050263          	beqz	a0,80002694 <_ZN15MemoryAllocator9mem_allocEm+0x11c>
    size_t bytesToAllocate = size * MEM_BLOCK_SIZE;
    80002594:	00651913          	slli	s2,a0,0x6
    MemSeg *tmp = freeSegHead;
    80002598:	0000b497          	auipc	s1,0xb
    8000259c:	9d04b483          	ld	s1,-1584(s1) # 8000cf68 <_ZN15MemoryAllocator11freeSegHeadE>
    while (tmp) {
    800025a0:	0c048263          	beqz	s1,80002664 <_ZN15MemoryAllocator9mem_allocEm+0xec>
        if (tmp -> size < bytesToAllocate) {
    800025a4:	0004b783          	ld	a5,0(s1)
    800025a8:	0527e663          	bltu	a5,s2,800025f4 <_ZN15MemoryAllocator9mem_allocEm+0x7c>
            tmp = tmp -> next;
            continue;
        }
        /// update free memory list
        size_t remaining = tmp -> size - bytesToAllocate;
    800025ac:	412787b3          	sub	a5,a5,s2
        if (remaining <= sizeof(MemSeg)) removeNode(tmp, tmp->next, false, true);
    800025b0:	01800713          	li	a4,24
    800025b4:	04f76463          	bltu	a4,a5,800025fc <_ZN15MemoryAllocator9mem_allocEm+0x84>
    800025b8:	00100693          	li	a3,1
    800025bc:	00000613          	li	a2,0
    800025c0:	0104b583          	ld	a1,16(s1)
    800025c4:	00048513          	mv	a0,s1
    800025c8:	00000097          	auipc	ra,0x0
    800025cc:	f5c080e7          	jalr	-164(ra) # 80002524 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb>
        }

        /// update used memory list
        /// insert segment after tmp2
        MemSeg* tmp2 = nullptr;
        if (usedSegHead && (char*) tmp > (char*) usedSegHead)
    800025d0:	0000b797          	auipc	a5,0xb
    800025d4:	9a07b783          	ld	a5,-1632(a5) # 8000cf70 <_ZN15MemoryAllocator11usedSegHeadE>
    800025d8:	04078a63          	beqz	a5,8000262c <_ZN15MemoryAllocator9mem_allocEm+0xb4>
    800025dc:	0497fc63          	bgeu	a5,s1,80002634 <_ZN15MemoryAllocator9mem_allocEm+0xbc>
            for (tmp2 = usedSegHead; tmp2 -> next && (char*) tmp > (char*) (tmp2 -> next); tmp2 = tmp2 -> next);
    800025e0:	00078713          	mv	a4,a5
    800025e4:	0107b783          	ld	a5,16(a5)
    800025e8:	04078863          	beqz	a5,80002638 <_ZN15MemoryAllocator9mem_allocEm+0xc0>
    800025ec:	fe97eae3          	bltu	a5,s1,800025e0 <_ZN15MemoryAllocator9mem_allocEm+0x68>
    800025f0:	0480006f          	j	80002638 <_ZN15MemoryAllocator9mem_allocEm+0xc0>
            tmp = tmp -> next;
    800025f4:	0104b483          	ld	s1,16(s1)
    while (tmp) {
    800025f8:	fa9ff06f          	j	800025a0 <_ZN15MemoryAllocator9mem_allocEm+0x28>
            MemSeg* newFree = (MemSeg*) ((char*) tmp + bytesToAllocate);
    800025fc:	012485b3          	add	a1,s1,s2
            newFree -> prev = tmp -> prev;
    80002600:	0084b703          	ld	a4,8(s1)
    80002604:	00e5b423          	sd	a4,8(a1)
            newFree -> next = tmp -> next;
    80002608:	0104b703          	ld	a4,16(s1)
    8000260c:	00e5b823          	sd	a4,16(a1)
            newFree -> size = remaining;
    80002610:	00f5b023          	sd	a5,0(a1)
            removeNode(tmp, newFree, true, true);
    80002614:	00100693          	li	a3,1
    80002618:	00100613          	li	a2,1
    8000261c:	00048513          	mv	a0,s1
    80002620:	00000097          	auipc	ra,0x0
    80002624:	f04080e7          	jalr	-252(ra) # 80002524 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb>
    80002628:	fa9ff06f          	j	800025d0 <_ZN15MemoryAllocator9mem_allocEm+0x58>
        MemSeg* tmp2 = nullptr;
    8000262c:	00078713          	mv	a4,a5
    80002630:	0080006f          	j	80002638 <_ZN15MemoryAllocator9mem_allocEm+0xc0>
    80002634:	00000713          	li	a4,0
        MemSeg* newUsed = (MemSeg*) tmp;
        newUsed -> size = bytesToAllocate;
    80002638:	0124b023          	sd	s2,0(s1)
        newUsed -> prev = tmp2;
    8000263c:	00e4b423          	sd	a4,8(s1)
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    80002640:	04070063          	beqz	a4,80002680 <_ZN15MemoryAllocator9mem_allocEm+0x108>
    80002644:	01073783          	ld	a5,16(a4)
    80002648:	00f4b823          	sd	a5,16(s1)
        if (tmp2) tmp2 -> next = newUsed;
    8000264c:	02070e63          	beqz	a4,80002688 <_ZN15MemoryAllocator9mem_allocEm+0x110>
    80002650:	00973823          	sd	s1,16(a4)
        else usedSegHead = newUsed;
        if (newUsed -> next) newUsed -> next -> prev = newUsed;
    80002654:	0104b783          	ld	a5,16(s1)
    80002658:	00078463          	beqz	a5,80002660 <_ZN15MemoryAllocator9mem_allocEm+0xe8>
    8000265c:	0097b423          	sd	s1,8(a5)
        return (void*) ((char*)tmp + sizeof(MemSeg));
    80002660:	01848493          	addi	s1,s1,24
    }
    return nullptr;
}
    80002664:	00048513          	mv	a0,s1
    80002668:	01813083          	ld	ra,24(sp)
    8000266c:	01013403          	ld	s0,16(sp)
    80002670:	00813483          	ld	s1,8(sp)
    80002674:	00013903          	ld	s2,0(sp)
    80002678:	02010113          	addi	sp,sp,32
    8000267c:	00008067          	ret
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    80002680:	00070793          	mv	a5,a4
    80002684:	fc5ff06f          	j	80002648 <_ZN15MemoryAllocator9mem_allocEm+0xd0>
        else usedSegHead = newUsed;
    80002688:	0000b797          	auipc	a5,0xb
    8000268c:	8e97b423          	sd	s1,-1816(a5) # 8000cf70 <_ZN15MemoryAllocator11usedSegHeadE>
    80002690:	fc5ff06f          	j	80002654 <_ZN15MemoryAllocator9mem_allocEm+0xdc>
    if (size <= 0) return nullptr;
    80002694:	00000493          	li	s1,0
    80002698:	fcdff06f          	j	80002664 <_ZN15MemoryAllocator9mem_allocEm+0xec>

000000008000269c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>:
    }
    return 0;
}

/// join free segment with next if possible
void MemoryAllocator::tryToJoin(MemSeg *seg) {
    8000269c:	ff010113          	addi	sp,sp,-16
    800026a0:	00813423          	sd	s0,8(sp)
    800026a4:	01010413          	addi	s0,sp,16
    if (seg -> next && (char*) seg + seg -> size == (char*) seg -> next) {
    800026a8:	01053783          	ld	a5,16(a0)
    800026ac:	00078863          	beqz	a5,800026bc <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    800026b0:	00053703          	ld	a4,0(a0)
    800026b4:	00e506b3          	add	a3,a0,a4
    800026b8:	00d78863          	beq	a5,a3,800026c8 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x2c>
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
        seg -> next = seg -> next -> next;
        if (seg -> next) seg -> next -> prev = seg;
    }
}
    800026bc:	00813403          	ld	s0,8(sp)
    800026c0:	01010113          	addi	sp,sp,16
    800026c4:	00008067          	ret
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
    800026c8:	0007b683          	ld	a3,0(a5)
    800026cc:	00d70733          	add	a4,a4,a3
    800026d0:	01870713          	addi	a4,a4,24
    800026d4:	00e53023          	sd	a4,0(a0)
        seg -> next = seg -> next -> next;
    800026d8:	0107b783          	ld	a5,16(a5)
    800026dc:	00f53823          	sd	a5,16(a0)
        if (seg -> next) seg -> next -> prev = seg;
    800026e0:	fc078ee3          	beqz	a5,800026bc <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    800026e4:	00a7b423          	sd	a0,8(a5)
}
    800026e8:	fd5ff06f          	j	800026bc <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>

00000000800026ec <_ZN15MemoryAllocator8mem_freeEPv>:
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    800026ec:	14050a63          	beqz	a0,80002840 <_ZN15MemoryAllocator8mem_freeEPv+0x154>
int MemoryAllocator::mem_free(void *addr) {
    800026f0:	fd010113          	addi	sp,sp,-48
    800026f4:	02113423          	sd	ra,40(sp)
    800026f8:	02813023          	sd	s0,32(sp)
    800026fc:	00913c23          	sd	s1,24(sp)
    80002700:	01213823          	sd	s2,16(sp)
    80002704:	01313423          	sd	s3,8(sp)
    80002708:	03010413          	addi	s0,sp,48
    8000270c:	00050913          	mv	s2,a0
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    80002710:	0000a797          	auipc	a5,0xa
    80002714:	7b07b783          	ld	a5,1968(a5) # 8000cec0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002718:	0007b783          	ld	a5,0(a5)
    8000271c:	12f56663          	bltu	a0,a5,80002848 <_ZN15MemoryAllocator8mem_freeEPv+0x15c>
    80002720:	0000a797          	auipc	a5,0xa
    80002724:	7e87b783          	ld	a5,2024(a5) # 8000cf08 <_GLOBAL_OFFSET_TABLE_+0x60>
    80002728:	0007b783          	ld	a5,0(a5)
    8000272c:	12a7e263          	bltu	a5,a0,80002850 <_ZN15MemoryAllocator8mem_freeEPv+0x164>
    if (!usedSegHead) return -2;
    80002730:	0000b797          	auipc	a5,0xb
    80002734:	8407b783          	ld	a5,-1984(a5) # 8000cf70 <_ZN15MemoryAllocator11usedSegHeadE>
    80002738:	12078063          	beqz	a5,80002858 <_ZN15MemoryAllocator8mem_freeEPv+0x16c>
    addr = (void*) ((char*) addr - sizeof(MemSeg));
    8000273c:	fe850493          	addi	s1,a0,-24
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    80002740:	00078863          	beqz	a5,80002750 <_ZN15MemoryAllocator8mem_freeEPv+0x64>
        if (tmp == segToFree) {
    80002744:	0a978663          	beq	a5,s1,800027f0 <_ZN15MemoryAllocator8mem_freeEPv+0x104>
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    80002748:	0107b783          	ld	a5,16(a5)
    8000274c:	ff5ff06f          	j	80002740 <_ZN15MemoryAllocator8mem_freeEPv+0x54>
    bool found = false;
    80002750:	00000793          	li	a5,0
    if (!found) return -3;
    80002754:	10078663          	beqz	a5,80002860 <_ZN15MemoryAllocator8mem_freeEPv+0x174>
    removeNode(segToFree, segToFree -> next, false, false);
    80002758:	00000693          	li	a3,0
    8000275c:	00000613          	li	a2,0
    80002760:	ff893583          	ld	a1,-8(s2)
    80002764:	00048513          	mv	a0,s1
    80002768:	00000097          	auipc	ra,0x0
    8000276c:	dbc080e7          	jalr	-580(ra) # 80002524 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb>
    segToFree -> size += sizeof(MemSeg);
    80002770:	fe893783          	ld	a5,-24(s2)
    80002774:	01878793          	addi	a5,a5,24
    80002778:	fef93423          	sd	a5,-24(s2)
    if (!freeSegHead) {
    8000277c:	0000a797          	auipc	a5,0xa
    80002780:	7ec7b783          	ld	a5,2028(a5) # 8000cf68 <_ZN15MemoryAllocator11freeSegHeadE>
    80002784:	06078a63          	beqz	a5,800027f8 <_ZN15MemoryAllocator8mem_freeEPv+0x10c>
    else if ((char*) addr < (char*) freeSegHead) {
    80002788:	08f4e463          	bltu	s1,a5,80002810 <_ZN15MemoryAllocator8mem_freeEPv+0x124>
        for (tmp = freeSegHead; tmp -> next && (char*) (tmp -> next) < (char*) segToFree; tmp = tmp -> next);
    8000278c:	00078993          	mv	s3,a5
    80002790:	0107b783          	ld	a5,16(a5)
    80002794:	00078463          	beqz	a5,8000279c <_ZN15MemoryAllocator8mem_freeEPv+0xb0>
    80002798:	fe97eae3          	bltu	a5,s1,8000278c <_ZN15MemoryAllocator8mem_freeEPv+0xa0>
        segToFree -> prev = tmp;
    8000279c:	ff393823          	sd	s3,-16(s2)
        segToFree -> next = tmp -> next;
    800027a0:	0109b783          	ld	a5,16(s3)
    800027a4:	fef93c23          	sd	a5,-8(s2)
        tmp -> next = segToFree;
    800027a8:	0099b823          	sd	s1,16(s3)
        if (segToFree -> next) segToFree -> next -> prev = segToFree;
    800027ac:	ff893783          	ld	a5,-8(s2)
    800027b0:	00078463          	beqz	a5,800027b8 <_ZN15MemoryAllocator8mem_freeEPv+0xcc>
    800027b4:	0097b423          	sd	s1,8(a5)
        tryToJoin(segToFree);
    800027b8:	00048513          	mv	a0,s1
    800027bc:	00000097          	auipc	ra,0x0
    800027c0:	ee0080e7          	jalr	-288(ra) # 8000269c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
        tryToJoin(tmp);
    800027c4:	00098513          	mv	a0,s3
    800027c8:	00000097          	auipc	ra,0x0
    800027cc:	ed4080e7          	jalr	-300(ra) # 8000269c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    800027d0:	00000513          	li	a0,0
}
    800027d4:	02813083          	ld	ra,40(sp)
    800027d8:	02013403          	ld	s0,32(sp)
    800027dc:	01813483          	ld	s1,24(sp)
    800027e0:	01013903          	ld	s2,16(sp)
    800027e4:	00813983          	ld	s3,8(sp)
    800027e8:	03010113          	addi	sp,sp,48
    800027ec:	00008067          	ret
            found = true;
    800027f0:	00100793          	li	a5,1
    800027f4:	f61ff06f          	j	80002754 <_ZN15MemoryAllocator8mem_freeEPv+0x68>
        freeSegHead = segToFree;
    800027f8:	0000a797          	auipc	a5,0xa
    800027fc:	7697b823          	sd	s1,1904(a5) # 8000cf68 <_ZN15MemoryAllocator11freeSegHeadE>
        segToFree -> prev = segToFree -> next = nullptr;
    80002800:	fe093c23          	sd	zero,-8(s2)
    80002804:	fe093823          	sd	zero,-16(s2)
    return 0;
    80002808:	00000513          	li	a0,0
    8000280c:	fc9ff06f          	j	800027d4 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
        segToFree -> prev = nullptr;
    80002810:	fe093823          	sd	zero,-16(s2)
        segToFree -> next = freeSegHead;
    80002814:	0000a797          	auipc	a5,0xa
    80002818:	75478793          	addi	a5,a5,1876 # 8000cf68 <_ZN15MemoryAllocator11freeSegHeadE>
    8000281c:	0007b703          	ld	a4,0(a5)
    80002820:	fee93c23          	sd	a4,-8(s2)
        freeSegHead -> prev = segToFree;
    80002824:	00973423          	sd	s1,8(a4)
        freeSegHead = segToFree;
    80002828:	0097b023          	sd	s1,0(a5)
        tryToJoin(segToFree);
    8000282c:	00048513          	mv	a0,s1
    80002830:	00000097          	auipc	ra,0x0
    80002834:	e6c080e7          	jalr	-404(ra) # 8000269c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    80002838:	00000513          	li	a0,0
    8000283c:	f99ff06f          	j	800027d4 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    80002840:	fff00513          	li	a0,-1
}
    80002844:	00008067          	ret
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    80002848:	fff00513          	li	a0,-1
    8000284c:	f89ff06f          	j	800027d4 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
    80002850:	fff00513          	li	a0,-1
    80002854:	f81ff06f          	j	800027d4 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
    if (!usedSegHead) return -2;
    80002858:	ffe00513          	li	a0,-2
    8000285c:	f79ff06f          	j	800027d4 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
    if (!found) return -3;
    80002860:	ffd00513          	li	a0,-3
    80002864:	f71ff06f          	j	800027d4 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>

0000000080002868 <_ZN15MemoryAllocator5printEv>:

void MemoryAllocator::print() {
    80002868:	fe010113          	addi	sp,sp,-32
    8000286c:	00113c23          	sd	ra,24(sp)
    80002870:	00813823          	sd	s0,16(sp)
    80002874:	00913423          	sd	s1,8(sp)
    80002878:	02010413          	addi	s0,sp,32
    __putc('\n');
    8000287c:	00a00513          	li	a0,10
    80002880:	00007097          	auipc	ra,0x7
    80002884:	87c080e7          	jalr	-1924(ra) # 800090fc <__putc>
    __putc('M');
    80002888:	04d00513          	li	a0,77
    8000288c:	00007097          	auipc	ra,0x7
    80002890:	870080e7          	jalr	-1936(ra) # 800090fc <__putc>
    __putc(':');
    80002894:	03a00513          	li	a0,58
    80002898:	00007097          	auipc	ra,0x7
    8000289c:	864080e7          	jalr	-1948(ra) # 800090fc <__putc>
    __putc(' ');
    800028a0:	02000513          	li	a0,32
    800028a4:	00007097          	auipc	ra,0x7
    800028a8:	858080e7          	jalr	-1960(ra) # 800090fc <__putc>
    for (MemSeg* tmp = freeSegHead; tmp; tmp = tmp -> next) {
    800028ac:	0000a497          	auipc	s1,0xa
    800028b0:	6bc4b483          	ld	s1,1724(s1) # 8000cf68 <_ZN15MemoryAllocator11freeSegHeadE>
    800028b4:	02048863          	beqz	s1,800028e4 <_ZN15MemoryAllocator5printEv+0x7c>
        printNumber(tmp -> size);
    800028b8:	0004b503          	ld	a0,0(s1)
    800028bc:	fffff097          	auipc	ra,0xfffff
    800028c0:	2b8080e7          	jalr	696(ra) # 80001b74 <_Z11printNumberm>
        __putc(' ');
    800028c4:	02000513          	li	a0,32
    800028c8:	00007097          	auipc	ra,0x7
    800028cc:	834080e7          	jalr	-1996(ra) # 800090fc <__putc>
        __putc('f');
    800028d0:	06600513          	li	a0,102
    800028d4:	00007097          	auipc	ra,0x7
    800028d8:	828080e7          	jalr	-2008(ra) # 800090fc <__putc>
    for (MemSeg* tmp = freeSegHead; tmp; tmp = tmp -> next) {
    800028dc:	0104b483          	ld	s1,16(s1)
    800028e0:	fd5ff06f          	j	800028b4 <_ZN15MemoryAllocator5printEv+0x4c>
    }
    __putc('\t');
    800028e4:	00900513          	li	a0,9
    800028e8:	00007097          	auipc	ra,0x7
    800028ec:	814080e7          	jalr	-2028(ra) # 800090fc <__putc>
    for (MemSeg* tmp = usedSegHead; tmp; tmp = tmp -> next) {
    800028f0:	0000a497          	auipc	s1,0xa
    800028f4:	6804b483          	ld	s1,1664(s1) # 8000cf70 <_ZN15MemoryAllocator11usedSegHeadE>
    800028f8:	02048863          	beqz	s1,80002928 <_ZN15MemoryAllocator5printEv+0xc0>
        printNumber(tmp -> size);
    800028fc:	0004b503          	ld	a0,0(s1)
    80002900:	fffff097          	auipc	ra,0xfffff
    80002904:	274080e7          	jalr	628(ra) # 80001b74 <_Z11printNumberm>
        __putc(' ');
    80002908:	02000513          	li	a0,32
    8000290c:	00006097          	auipc	ra,0x6
    80002910:	7f0080e7          	jalr	2032(ra) # 800090fc <__putc>
        __putc('u');
    80002914:	07500513          	li	a0,117
    80002918:	00006097          	auipc	ra,0x6
    8000291c:	7e4080e7          	jalr	2020(ra) # 800090fc <__putc>
    for (MemSeg* tmp = usedSegHead; tmp; tmp = tmp -> next) {
    80002920:	0104b483          	ld	s1,16(s1)
    80002924:	fd5ff06f          	j	800028f8 <_ZN15MemoryAllocator5printEv+0x90>
    }
}
    80002928:	01813083          	ld	ra,24(sp)
    8000292c:	01013403          	ld	s0,16(sp)
    80002930:	00813483          	ld	s1,8(sp)
    80002934:	02010113          	addi	sp,sp,32
    80002938:	00008067          	ret

000000008000293c <_ZN15MemoryAllocator20get_number_of_blocksEm>:

size_t MemoryAllocator::get_number_of_blocks(size_t size) {
    8000293c:	ff010113          	addi	sp,sp,-16
    80002940:	00813423          	sd	s0,8(sp)
    80002944:	01010413          	addi	s0,sp,16
    return (size + sizeof(MemoryAllocator::MemSeg) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80002948:	05750513          	addi	a0,a0,87
}
    8000294c:	00655513          	srli	a0,a0,0x6
    80002950:	00813403          	ld	s0,8(sp)
    80002954:	01010113          	addi	sp,sp,16
    80002958:	00008067          	ret

000000008000295c <_ZN15MemoryAllocator10initializeEv>:
    if (!instance) {
    8000295c:	0000a797          	auipc	a5,0xa
    80002960:	61c7b783          	ld	a5,1564(a5) # 8000cf78 <_ZN15MemoryAllocator8instanceE>
    80002964:	00078463          	beqz	a5,8000296c <_ZN15MemoryAllocator10initializeEv+0x10>
    80002968:	00008067          	ret
void MemoryAllocator::initialize() {
    8000296c:	fe010113          	addi	sp,sp,-32
    80002970:	00113c23          	sd	ra,24(sp)
    80002974:	00813823          	sd	s0,16(sp)
    80002978:	00913423          	sd	s1,8(sp)
    8000297c:	02010413          	addi	s0,sp,32
        freeSegHead = (MemSeg*) HEAP_START_ADDR;
    80002980:	0000a797          	auipc	a5,0xa
    80002984:	5407b783          	ld	a5,1344(a5) # 8000cec0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002988:	0007b783          	ld	a5,0(a5)
    8000298c:	0000a497          	auipc	s1,0xa
    80002990:	5dc48493          	addi	s1,s1,1500 # 8000cf68 <_ZN15MemoryAllocator11freeSegHeadE>
    80002994:	00f4b023          	sd	a5,0(s1)
        freeSegHead -> size = (size_t) HEAP_END_ADDR - (size_t) HEAP_START_ADDR;
    80002998:	0000a717          	auipc	a4,0xa
    8000299c:	57073703          	ld	a4,1392(a4) # 8000cf08 <_GLOBAL_OFFSET_TABLE_+0x60>
    800029a0:	00073703          	ld	a4,0(a4)
    800029a4:	40f70733          	sub	a4,a4,a5
    800029a8:	00e7b023          	sd	a4,0(a5)
        freeSegHead -> prev = nullptr;
    800029ac:	0004b783          	ld	a5,0(s1)
    800029b0:	0007b423          	sd	zero,8(a5)
        freeSegHead -> next = nullptr;
    800029b4:	0007b823          	sd	zero,16(a5)
        instance = (MemoryAllocator*) MemoryAllocator::mem_alloc(get_number_of_blocks(sizeof(MemoryAllocator)));
    800029b8:	00100513          	li	a0,1
    800029bc:	00000097          	auipc	ra,0x0
    800029c0:	f80080e7          	jalr	-128(ra) # 8000293c <_ZN15MemoryAllocator20get_number_of_blocksEm>
    800029c4:	00000097          	auipc	ra,0x0
    800029c8:	bb4080e7          	jalr	-1100(ra) # 80002578 <_ZN15MemoryAllocator9mem_allocEm>
    800029cc:	00a4b823          	sd	a0,16(s1)
}
    800029d0:	01813083          	ld	ra,24(sp)
    800029d4:	01013403          	ld	s0,16(sp)
    800029d8:	00813483          	ld	s1,8(sp)
    800029dc:	02010113          	addi	sp,sp,32
    800029e0:	00008067          	ret

00000000800029e4 <_ZN13BoundedBufferC1Ev>:
#include "../h/bounded_bufffer.hpp"

BoundedBuffer::BoundedBuffer() {
    800029e4:	fe010113          	addi	sp,sp,-32
    800029e8:	00113c23          	sd	ra,24(sp)
    800029ec:	00813823          	sd	s0,16(sp)
    800029f0:	00913423          	sd	s1,8(sp)
    800029f4:	02010413          	addi	s0,sp,32
    800029f8:	00050493          	mv	s1,a0
    800029fc:	00052023          	sw	zero,0(a0)
    80002a00:	00052223          	sw	zero,4(a0)
    Sem::open(&item_available, 0);
    80002a04:	00000593          	li	a1,0
    80002a08:	01050513          	addi	a0,a0,16
    80002a0c:	fffff097          	auipc	ra,0xfffff
    80002a10:	04c080e7          	jalr	76(ra) # 80001a58 <_ZN3Sem4openEPPS_j>
    Sem::open(&space_available, CAPACITY);
    80002a14:	1f400593          	li	a1,500
    80002a18:	00848513          	addi	a0,s1,8
    80002a1c:	fffff097          	auipc	ra,0xfffff
    80002a20:	03c080e7          	jalr	60(ra) # 80001a58 <_ZN3Sem4openEPPS_j>
}
    80002a24:	01813083          	ld	ra,24(sp)
    80002a28:	01013403          	ld	s0,16(sp)
    80002a2c:	00813483          	ld	s1,8(sp)
    80002a30:	02010113          	addi	sp,sp,32
    80002a34:	00008067          	ret

0000000080002a38 <_ZN13BoundedBufferD1Ev>:

BoundedBuffer::~BoundedBuffer() {
    80002a38:	fe010113          	addi	sp,sp,-32
    80002a3c:	00113c23          	sd	ra,24(sp)
    80002a40:	00813823          	sd	s0,16(sp)
    80002a44:	00913423          	sd	s1,8(sp)
    80002a48:	02010413          	addi	s0,sp,32
    80002a4c:	00050493          	mv	s1,a0
    Sem::close(item_available);
    80002a50:	01053503          	ld	a0,16(a0)
    80002a54:	fffff097          	auipc	ra,0xfffff
    80002a58:	ddc080e7          	jalr	-548(ra) # 80001830 <_ZN3Sem5closeEPS_>
    Sem::close(space_available);
    80002a5c:	0084b503          	ld	a0,8(s1)
    80002a60:	fffff097          	auipc	ra,0xfffff
    80002a64:	dd0080e7          	jalr	-560(ra) # 80001830 <_ZN3Sem5closeEPS_>
}
    80002a68:	01813083          	ld	ra,24(sp)
    80002a6c:	01013403          	ld	s0,16(sp)
    80002a70:	00813483          	ld	s1,8(sp)
    80002a74:	02010113          	addi	sp,sp,32
    80002a78:	00008067          	ret

0000000080002a7c <_ZN13BoundedBuffernwEm>:

void *BoundedBuffer::operator new(size_t size) {
    80002a7c:	ff010113          	addi	sp,sp,-16
    80002a80:	00113423          	sd	ra,8(sp)
    80002a84:	00813023          	sd	s0,0(sp)
    80002a88:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    80002a8c:	00000097          	auipc	ra,0x0
    80002a90:	eb0080e7          	jalr	-336(ra) # 8000293c <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80002a94:	00000097          	auipc	ra,0x0
    80002a98:	ae4080e7          	jalr	-1308(ra) # 80002578 <_ZN15MemoryAllocator9mem_allocEm>
}
    80002a9c:	00813083          	ld	ra,8(sp)
    80002aa0:	00013403          	ld	s0,0(sp)
    80002aa4:	01010113          	addi	sp,sp,16
    80002aa8:	00008067          	ret

0000000080002aac <_ZN13BoundedBufferdlEPv>:

void BoundedBuffer::operator delete(void *addr) {
    80002aac:	ff010113          	addi	sp,sp,-16
    80002ab0:	00113423          	sd	ra,8(sp)
    80002ab4:	00813023          	sd	s0,0(sp)
    80002ab8:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    80002abc:	00000097          	auipc	ra,0x0
    80002ac0:	c30080e7          	jalr	-976(ra) # 800026ec <_ZN15MemoryAllocator8mem_freeEPv>
}
    80002ac4:	00813083          	ld	ra,8(sp)
    80002ac8:	00013403          	ld	s0,0(sp)
    80002acc:	01010113          	addi	sp,sp,16
    80002ad0:	00008067          	ret

0000000080002ad4 <_ZN13BoundedBuffer4putcEc>:

void BoundedBuffer::putc(char c) {
    80002ad4:	fe010113          	addi	sp,sp,-32
    80002ad8:	00113c23          	sd	ra,24(sp)
    80002adc:	00813823          	sd	s0,16(sp)
    80002ae0:	00913423          	sd	s1,8(sp)
    80002ae4:	01213023          	sd	s2,0(sp)
    80002ae8:	02010413          	addi	s0,sp,32
    80002aec:	00050493          	mv	s1,a0
    80002af0:	00058913          	mv	s2,a1
    Sem::wait(space_available);
    80002af4:	00853503          	ld	a0,8(a0)
    80002af8:	fffff097          	auipc	ra,0xfffff
    80002afc:	da4080e7          	jalr	-604(ra) # 8000189c <_ZN3Sem4waitEPS_>
    array[tail] = c;
    80002b00:	0044a783          	lw	a5,4(s1)
    80002b04:	00f48733          	add	a4,s1,a5
    80002b08:	01270c23          	sb	s2,24(a4)
    tail = (tail + 1) % CAPACITY;
    80002b0c:	0017879b          	addiw	a5,a5,1
    80002b10:	1f400713          	li	a4,500
    80002b14:	02e7e7bb          	remw	a5,a5,a4
    80002b18:	00f4a223          	sw	a5,4(s1)
    Sem::signal(item_available);
    80002b1c:	0104b503          	ld	a0,16(s1)
    80002b20:	fffff097          	auipc	ra,0xfffff
    80002b24:	dd0080e7          	jalr	-560(ra) # 800018f0 <_ZN3Sem6signalEPS_>
}
    80002b28:	01813083          	ld	ra,24(sp)
    80002b2c:	01013403          	ld	s0,16(sp)
    80002b30:	00813483          	ld	s1,8(sp)
    80002b34:	00013903          	ld	s2,0(sp)
    80002b38:	02010113          	addi	sp,sp,32
    80002b3c:	00008067          	ret

0000000080002b40 <_ZN13BoundedBuffer4getcEv>:

char BoundedBuffer::getc() {
    80002b40:	fe010113          	addi	sp,sp,-32
    80002b44:	00113c23          	sd	ra,24(sp)
    80002b48:	00813823          	sd	s0,16(sp)
    80002b4c:	00913423          	sd	s1,8(sp)
    80002b50:	01213023          	sd	s2,0(sp)
    80002b54:	02010413          	addi	s0,sp,32
    80002b58:	00050493          	mv	s1,a0
    Sem::wait(item_available);
    80002b5c:	01053503          	ld	a0,16(a0)
    80002b60:	fffff097          	auipc	ra,0xfffff
    80002b64:	d3c080e7          	jalr	-708(ra) # 8000189c <_ZN3Sem4waitEPS_>
    char c = array[head];
    80002b68:	0004a783          	lw	a5,0(s1)
    80002b6c:	00f48733          	add	a4,s1,a5
    80002b70:	01874903          	lbu	s2,24(a4)
    head = (head + 1) % CAPACITY;
    80002b74:	0017879b          	addiw	a5,a5,1
    80002b78:	1f400713          	li	a4,500
    80002b7c:	02e7e7bb          	remw	a5,a5,a4
    80002b80:	00f4a023          	sw	a5,0(s1)
    Sem::signal(space_available);
    80002b84:	0084b503          	ld	a0,8(s1)
    80002b88:	fffff097          	auipc	ra,0xfffff
    80002b8c:	d68080e7          	jalr	-664(ra) # 800018f0 <_ZN3Sem6signalEPS_>
    return c;
}
    80002b90:	00090513          	mv	a0,s2
    80002b94:	01813083          	ld	ra,24(sp)
    80002b98:	01013403          	ld	s0,16(sp)
    80002b9c:	00813483          	ld	s1,8(sp)
    80002ba0:	00013903          	ld	s2,0(sp)
    80002ba4:	02010113          	addi	sp,sp,32
    80002ba8:	00008067          	ret

0000000080002bac <_ZN9Scheduler3putEP3TCB>:

TCB* Scheduler::head_ready = nullptr;
TCB* Scheduler::tail_ready = nullptr;
TCB* Scheduler::head_sleeping = nullptr;

void Scheduler::put(TCB *thread) {
    80002bac:	fe010113          	addi	sp,sp,-32
    80002bb0:	00113c23          	sd	ra,24(sp)
    80002bb4:	00813823          	sd	s0,16(sp)
    80002bb8:	00913423          	sd	s1,8(sp)
    80002bbc:	02010413          	addi	s0,sp,32
    80002bc0:	00050493          	mv	s1,a0
    if (tail_ready) {
    80002bc4:	0000a517          	auipc	a0,0xa
    80002bc8:	3bc53503          	ld	a0,956(a0) # 8000cf80 <_ZN9Scheduler10tail_readyE>
    80002bcc:	02050e63          	beqz	a0,80002c08 <_ZN9Scheduler3putEP3TCB+0x5c>
        tail_ready -> set_next_ready(thread);
    80002bd0:	00048593          	mv	a1,s1
    80002bd4:	00001097          	auipc	ra,0x1
    80002bd8:	a90080e7          	jalr	-1392(ra) # 80003664 <_ZN3TCB14set_next_readyEPS_>
        tail_ready = thread;
    80002bdc:	0000a797          	auipc	a5,0xa
    80002be0:	3a97b223          	sd	s1,932(a5) # 8000cf80 <_ZN9Scheduler10tail_readyE>
    }
    else head_ready = tail_ready = thread;
    thread -> set_next_ready(nullptr);
    80002be4:	00000593          	li	a1,0
    80002be8:	00048513          	mv	a0,s1
    80002bec:	00001097          	auipc	ra,0x1
    80002bf0:	a78080e7          	jalr	-1416(ra) # 80003664 <_ZN3TCB14set_next_readyEPS_>
}
    80002bf4:	01813083          	ld	ra,24(sp)
    80002bf8:	01013403          	ld	s0,16(sp)
    80002bfc:	00813483          	ld	s1,8(sp)
    80002c00:	02010113          	addi	sp,sp,32
    80002c04:	00008067          	ret
    else head_ready = tail_ready = thread;
    80002c08:	0000a797          	auipc	a5,0xa
    80002c0c:	37878793          	addi	a5,a5,888 # 8000cf80 <_ZN9Scheduler10tail_readyE>
    80002c10:	0097b023          	sd	s1,0(a5)
    80002c14:	0097b423          	sd	s1,8(a5)
    80002c18:	fcdff06f          	j	80002be4 <_ZN9Scheduler3putEP3TCB+0x38>

0000000080002c1c <_ZN9Scheduler3getEv>:

TCB* Scheduler::get() {
    80002c1c:	fe010113          	addi	sp,sp,-32
    80002c20:	00113c23          	sd	ra,24(sp)
    80002c24:	00813823          	sd	s0,16(sp)
    80002c28:	00913423          	sd	s1,8(sp)
    80002c2c:	02010413          	addi	s0,sp,32
    if (!head_ready) return nullptr;
    80002c30:	0000a497          	auipc	s1,0xa
    80002c34:	3584b483          	ld	s1,856(s1) # 8000cf88 <_ZN9Scheduler10head_readyE>
    80002c38:	02048663          	beqz	s1,80002c64 <_ZN9Scheduler3getEv+0x48>
    TCB *tmp = head_ready;
    head_ready = head_ready -> get_next_ready();
    80002c3c:	00048513          	mv	a0,s1
    80002c40:	00001097          	auipc	ra,0x1
    80002c44:	a08080e7          	jalr	-1528(ra) # 80003648 <_ZNK3TCB14get_next_readyEv>
    80002c48:	0000a797          	auipc	a5,0xa
    80002c4c:	34a7b023          	sd	a0,832(a5) # 8000cf88 <_ZN9Scheduler10head_readyE>
    if (!head_ready) tail_ready = nullptr;
    80002c50:	02050663          	beqz	a0,80002c7c <_ZN9Scheduler3getEv+0x60>
    tmp -> set_next_ready(nullptr);
    80002c54:	00000593          	li	a1,0
    80002c58:	00048513          	mv	a0,s1
    80002c5c:	00001097          	auipc	ra,0x1
    80002c60:	a08080e7          	jalr	-1528(ra) # 80003664 <_ZN3TCB14set_next_readyEPS_>
    return tmp;
}
    80002c64:	00048513          	mv	a0,s1
    80002c68:	01813083          	ld	ra,24(sp)
    80002c6c:	01013403          	ld	s0,16(sp)
    80002c70:	00813483          	ld	s1,8(sp)
    80002c74:	02010113          	addi	sp,sp,32
    80002c78:	00008067          	ret
    if (!head_ready) tail_ready = nullptr;
    80002c7c:	0000a797          	auipc	a5,0xa
    80002c80:	3007b223          	sd	zero,772(a5) # 8000cf80 <_ZN9Scheduler10tail_readyE>
    80002c84:	fd1ff06f          	j	80002c54 <_ZN9Scheduler3getEv+0x38>

0000000080002c88 <_ZN9Scheduler17remove_from_sleepEP3TCB>:
    thread -> set_next_sleeping(nullptr);
    change_thread();
    return 0;
}

int Scheduler::remove_from_sleep(TCB *thread) {
    80002c88:	ff010113          	addi	sp,sp,-16
    80002c8c:	00813423          	sd	s0,8(sp)
    80002c90:	01010413          	addi	s0,sp,16
    if (!thread) return -1;
    80002c94:	06050863          	beqz	a0,80002d04 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x7c>
    TCB *prev = nullptr, *tmp = head_sleeping;
    80002c98:	0000a797          	auipc	a5,0xa
    80002c9c:	2f87b783          	ld	a5,760(a5) # 8000cf90 <_ZN9Scheduler13head_sleepingE>
    80002ca0:	00000713          	li	a4,0
    while (tmp && tmp != thread) {
    80002ca4:	00078a63          	beqz	a5,80002cb8 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x30>
    80002ca8:	00a78863          	beq	a5,a0,80002cb8 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x30>
        prev = tmp;
    80002cac:	00078713          	mv	a4,a5
        tmp = tmp -> next_sleeping;
    80002cb0:	0587b783          	ld	a5,88(a5)
    while (tmp && tmp != thread) {
    80002cb4:	ff1ff06f          	j	80002ca4 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x1c>
    }
    if (!tmp) return -2;
    80002cb8:	04078a63          	beqz	a5,80002d0c <_ZN9Scheduler17remove_from_sleepEP3TCB+0x84>
    if (prev) prev -> next_sleeping = tmp -> next_sleeping;
    80002cbc:	02070c63          	beqz	a4,80002cf4 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x6c>
    80002cc0:	0587b683          	ld	a3,88(a5)
    80002cc4:	04d73c23          	sd	a3,88(a4)
    else head_sleeping = tmp -> next_sleeping;
    if (tmp -> next_sleeping) tmp -> next_sleeping -> time_to_sleep += tmp -> time_to_sleep;
    80002cc8:	0587b703          	ld	a4,88(a5)
    80002ccc:	00070a63          	beqz	a4,80002ce0 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x58>
    80002cd0:	0507b603          	ld	a2,80(a5)
    80002cd4:	05073683          	ld	a3,80(a4)
    80002cd8:	00c686b3          	add	a3,a3,a2
    80002cdc:	04d73823          	sd	a3,80(a4)
    tmp -> next_sleeping = nullptr;
    80002ce0:	0407bc23          	sd	zero,88(a5)
    return 0;
    80002ce4:	00000513          	li	a0,0
}
    80002ce8:	00813403          	ld	s0,8(sp)
    80002cec:	01010113          	addi	sp,sp,16
    80002cf0:	00008067          	ret
    else head_sleeping = tmp -> next_sleeping;
    80002cf4:	0587b703          	ld	a4,88(a5)
    80002cf8:	0000a697          	auipc	a3,0xa
    80002cfc:	28e6bc23          	sd	a4,664(a3) # 8000cf90 <_ZN9Scheduler13head_sleepingE>
    80002d00:	fc9ff06f          	j	80002cc8 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x40>
    if (!thread) return -1;
    80002d04:	fff00513          	li	a0,-1
    80002d08:	fe1ff06f          	j	80002ce8 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x60>
    if (!tmp) return -2;
    80002d0c:	ffe00513          	li	a0,-2
    80002d10:	fd9ff06f          	j	80002ce8 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x60>

0000000080002d14 <_ZN9Scheduler13change_threadEv>:

void Scheduler::change_thread() {
    80002d14:	fe010113          	addi	sp,sp,-32
    80002d18:	00113c23          	sd	ra,24(sp)
    80002d1c:	00813823          	sd	s0,16(sp)
    80002d20:	00913423          	sd	s1,8(sp)
    80002d24:	02010413          	addi	s0,sp,32
    TCB* old = TCB::running;
    80002d28:	0000a797          	auipc	a5,0xa
    80002d2c:	1d87b783          	ld	a5,472(a5) # 8000cf00 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002d30:	0007b483          	ld	s1,0(a5)
    old -> set_status(TCB::SLEEPING);
    80002d34:	00100593          	li	a1,1
    80002d38:	00048513          	mv	a0,s1
    80002d3c:	00001097          	auipc	ra,0x1
    80002d40:	9b4080e7          	jalr	-1612(ra) # 800036f0 <_ZN3TCB10set_statusENS_6StatusE>
    if (!old-> timed_wait) {
    80002d44:	0484c783          	lbu	a5,72(s1)
    80002d48:	00078c63          	beqz	a5,80002d60 <_ZN9Scheduler13change_threadEv+0x4c>
        TCB::running = Scheduler::get();
        if (old != TCB::running) TCB::yield(old, TCB::running);
    }
}
    80002d4c:	01813083          	ld	ra,24(sp)
    80002d50:	01013403          	ld	s0,16(sp)
    80002d54:	00813483          	ld	s1,8(sp)
    80002d58:	02010113          	addi	sp,sp,32
    80002d5c:	00008067          	ret
        TCB::running = Scheduler::get();
    80002d60:	00000097          	auipc	ra,0x0
    80002d64:	ebc080e7          	jalr	-324(ra) # 80002c1c <_ZN9Scheduler3getEv>
    80002d68:	00050593          	mv	a1,a0
    80002d6c:	0000a797          	auipc	a5,0xa
    80002d70:	1947b783          	ld	a5,404(a5) # 8000cf00 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002d74:	00a7b023          	sd	a0,0(a5)
        if (old != TCB::running) TCB::yield(old, TCB::running);
    80002d78:	fca48ae3          	beq	s1,a0,80002d4c <_ZN9Scheduler13change_threadEv+0x38>
    80002d7c:	00048513          	mv	a0,s1
    80002d80:	00000097          	auipc	ra,0x0
    80002d84:	7e0080e7          	jalr	2016(ra) # 80003560 <_ZN3TCB5yieldEPS_S0_>
}
    80002d88:	fc5ff06f          	j	80002d4c <_ZN9Scheduler13change_threadEv+0x38>

0000000080002d8c <_ZN9Scheduler12put_to_sleepEm>:
    if (!time) return -1;
    80002d8c:	18050a63          	beqz	a0,80002f20 <_ZN9Scheduler12put_to_sleepEm+0x194>
int Scheduler::put_to_sleep(time_t time) {
    80002d90:	fc010113          	addi	sp,sp,-64
    80002d94:	02113c23          	sd	ra,56(sp)
    80002d98:	02813823          	sd	s0,48(sp)
    80002d9c:	02913423          	sd	s1,40(sp)
    80002da0:	03213023          	sd	s2,32(sp)
    80002da4:	01313c23          	sd	s3,24(sp)
    80002da8:	01413823          	sd	s4,16(sp)
    80002dac:	01513423          	sd	s5,8(sp)
    80002db0:	04010413          	addi	s0,sp,64
    80002db4:	00050993          	mv	s3,a0
    TCB* thread = TCB::running;
    80002db8:	0000a797          	auipc	a5,0xa
    80002dbc:	1487b783          	ld	a5,328(a5) # 8000cf00 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002dc0:	0007ba83          	ld	s5,0(a5)
    if (!head_sleeping) {
    80002dc4:	0000a497          	auipc	s1,0xa
    80002dc8:	1cc4b483          	ld	s1,460(s1) # 8000cf90 <_ZN9Scheduler13head_sleepingE>
    80002dcc:	02048e63          	beqz	s1,80002e08 <_ZN9Scheduler12put_to_sleepEm+0x7c>
    time_t current_time = 0;
    80002dd0:	00000913          	li	s2,0
    TCB* tmp = head_sleeping, *prev = nullptr;
    80002dd4:	00000a13          	li	s4,0
    while (tmp) {
    80002dd8:	0e048463          	beqz	s1,80002ec0 <_ZN9Scheduler12put_to_sleepEm+0x134>
        current_time += tmp -> get_time_to_sleep();
    80002ddc:	00048513          	mv	a0,s1
    80002de0:	00001097          	auipc	ra,0x1
    80002de4:	8f4080e7          	jalr	-1804(ra) # 800036d4 <_ZNK3TCB17get_time_to_sleepEv>
    80002de8:	00a90933          	add	s2,s2,a0
        if (current_time > time) {
    80002dec:	0529ea63          	bltu	s3,s2,80002e40 <_ZN9Scheduler12put_to_sleepEm+0xb4>
        tmp = tmp -> get_next_sleeping();
    80002df0:	00048513          	mv	a0,s1
    80002df4:	00001097          	auipc	ra,0x1
    80002df8:	8a8080e7          	jalr	-1880(ra) # 8000369c <_ZNK3TCB17get_next_sleepingEv>
        prev = tmp;
    80002dfc:	00048a13          	mv	s4,s1
        tmp = tmp -> get_next_sleeping();
    80002e00:	00050493          	mv	s1,a0
    while (tmp) {
    80002e04:	fd5ff06f          	j	80002dd8 <_ZN9Scheduler12put_to_sleepEm+0x4c>
        head_sleeping = thread;
    80002e08:	0000a797          	auipc	a5,0xa
    80002e0c:	1957b423          	sd	s5,392(a5) # 8000cf90 <_ZN9Scheduler13head_sleepingE>
        thread -> set_next_sleeping(nullptr);
    80002e10:	00000593          	li	a1,0
    80002e14:	000a8513          	mv	a0,s5
    80002e18:	00001097          	auipc	ra,0x1
    80002e1c:	868080e7          	jalr	-1944(ra) # 80003680 <_ZN3TCB17set_next_sleepingEPS_>
        thread -> set_time_to_sleep(time);
    80002e20:	00098593          	mv	a1,s3
    80002e24:	000a8513          	mv	a0,s5
    80002e28:	00001097          	auipc	ra,0x1
    80002e2c:	890080e7          	jalr	-1904(ra) # 800036b8 <_ZN3TCB17set_time_to_sleepEm>
        change_thread();
    80002e30:	00000097          	auipc	ra,0x0
    80002e34:	ee4080e7          	jalr	-284(ra) # 80002d14 <_ZN9Scheduler13change_threadEv>
        return 0;
    80002e38:	00000513          	li	a0,0
    80002e3c:	0c00006f          	j	80002efc <_ZN9Scheduler12put_to_sleepEm+0x170>
            time_t new_time = time - (current_time - tmp -> get_time_to_sleep());
    80002e40:	00048513          	mv	a0,s1
    80002e44:	00001097          	auipc	ra,0x1
    80002e48:	890080e7          	jalr	-1904(ra) # 800036d4 <_ZNK3TCB17get_time_to_sleepEv>
    80002e4c:	41250933          	sub	s2,a0,s2
    80002e50:	013909b3          	add	s3,s2,s3
            thread -> set_time_to_sleep(new_time);
    80002e54:	00098593          	mv	a1,s3
    80002e58:	000a8513          	mv	a0,s5
    80002e5c:	00001097          	auipc	ra,0x1
    80002e60:	85c080e7          	jalr	-1956(ra) # 800036b8 <_ZN3TCB17set_time_to_sleepEm>
            thread -> set_next_sleeping(tmp);
    80002e64:	00048593          	mv	a1,s1
    80002e68:	000a8513          	mv	a0,s5
    80002e6c:	00001097          	auipc	ra,0x1
    80002e70:	814080e7          	jalr	-2028(ra) # 80003680 <_ZN3TCB17set_next_sleepingEPS_>
            if (prev) prev -> set_next_sleeping(thread);
    80002e74:	040a0063          	beqz	s4,80002eb4 <_ZN9Scheduler12put_to_sleepEm+0x128>
    80002e78:	000a8593          	mv	a1,s5
    80002e7c:	000a0513          	mv	a0,s4
    80002e80:	00001097          	auipc	ra,0x1
    80002e84:	800080e7          	jalr	-2048(ra) # 80003680 <_ZN3TCB17set_next_sleepingEPS_>
            tmp -> set_time_to_sleep(tmp -> get_time_to_sleep() - new_time);
    80002e88:	00048513          	mv	a0,s1
    80002e8c:	00001097          	auipc	ra,0x1
    80002e90:	848080e7          	jalr	-1976(ra) # 800036d4 <_ZNK3TCB17get_time_to_sleepEv>
    80002e94:	413505b3          	sub	a1,a0,s3
    80002e98:	00048513          	mv	a0,s1
    80002e9c:	00001097          	auipc	ra,0x1
    80002ea0:	81c080e7          	jalr	-2020(ra) # 800036b8 <_ZN3TCB17set_time_to_sleepEm>
            change_thread();
    80002ea4:	00000097          	auipc	ra,0x0
    80002ea8:	e70080e7          	jalr	-400(ra) # 80002d14 <_ZN9Scheduler13change_threadEv>
            return 0;
    80002eac:	00000513          	li	a0,0
    80002eb0:	04c0006f          	j	80002efc <_ZN9Scheduler12put_to_sleepEm+0x170>
            else head_sleeping = thread;
    80002eb4:	0000a797          	auipc	a5,0xa
    80002eb8:	0d57be23          	sd	s5,220(a5) # 8000cf90 <_ZN9Scheduler13head_sleepingE>
    80002ebc:	fcdff06f          	j	80002e88 <_ZN9Scheduler12put_to_sleepEm+0xfc>
    thread -> set_time_to_sleep(time - current_time);
    80002ec0:	412985b3          	sub	a1,s3,s2
    80002ec4:	000a8513          	mv	a0,s5
    80002ec8:	00000097          	auipc	ra,0x0
    80002ecc:	7f0080e7          	jalr	2032(ra) # 800036b8 <_ZN3TCB17set_time_to_sleepEm>
    prev -> set_next_sleeping(thread);
    80002ed0:	000a8593          	mv	a1,s5
    80002ed4:	000a0513          	mv	a0,s4
    80002ed8:	00000097          	auipc	ra,0x0
    80002edc:	7a8080e7          	jalr	1960(ra) # 80003680 <_ZN3TCB17set_next_sleepingEPS_>
    thread -> set_next_sleeping(nullptr);
    80002ee0:	00000593          	li	a1,0
    80002ee4:	000a8513          	mv	a0,s5
    80002ee8:	00000097          	auipc	ra,0x0
    80002eec:	798080e7          	jalr	1944(ra) # 80003680 <_ZN3TCB17set_next_sleepingEPS_>
    change_thread();
    80002ef0:	00000097          	auipc	ra,0x0
    80002ef4:	e24080e7          	jalr	-476(ra) # 80002d14 <_ZN9Scheduler13change_threadEv>
    return 0;
    80002ef8:	00000513          	li	a0,0
}
    80002efc:	03813083          	ld	ra,56(sp)
    80002f00:	03013403          	ld	s0,48(sp)
    80002f04:	02813483          	ld	s1,40(sp)
    80002f08:	02013903          	ld	s2,32(sp)
    80002f0c:	01813983          	ld	s3,24(sp)
    80002f10:	01013a03          	ld	s4,16(sp)
    80002f14:	00813a83          	ld	s5,8(sp)
    80002f18:	04010113          	addi	sp,sp,64
    80002f1c:	00008067          	ret
    if (!time) return -1;
    80002f20:	fff00513          	li	a0,-1
}
    80002f24:	00008067          	ret

0000000080002f28 <_ZN5RiscV10popSppSpieEv>:
    SUPERVISOR_INTERRUPT = 0x0000000000000009UL,
};

/// used in thread wrapper function when initializing thread because thread stack is empty
/// pc = (sepc = ra)
void RiscV::popSppSpie() {
    80002f28:	ff010113          	addi	sp,sp,-16
    80002f2c:	00813423          	sd	s0,8(sp)
    80002f30:	01010413          	addi	s0,sp,16
    /// conditionally return to User mode
    if (TCB::running -> function_body && TCB::running->function_body != kernelConsoleOutput) mc_sstatus(SSTATUS_SPP);
    80002f34:	0000a797          	auipc	a5,0xa
    80002f38:	fcc7b783          	ld	a5,-52(a5) # 8000cf00 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002f3c:	0007b783          	ld	a5,0(a5)
    80002f40:	0287b783          	ld	a5,40(a5)
    80002f44:	00078c63          	beqz	a5,80002f5c <_ZN5RiscV10popSppSpieEv+0x34>
    80002f48:	0000a717          	auipc	a4,0xa
    80002f4c:	fb073703          	ld	a4,-80(a4) # 8000cef8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002f50:	00e78663          	beq	a5,a4,80002f5c <_ZN5RiscV10popSppSpieEv+0x34>
}

inline void RiscV::mc_sstatus(uint64 mask) {
    __asm__ volatile ("csrc sstatus, %0" : : "r"(mask));
    80002f54:	10000793          	li	a5,256
    80002f58:	1007b073          	csrc	sstatus,a5
    __asm__ volatile("csrw sepc, ra");
    80002f5c:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80002f60:	10200073          	sret
}
    80002f64:	00813403          	ld	s0,8(sp)
    80002f68:	01010113          	addi	sp,sp,16
    80002f6c:	00008067          	ret

0000000080002f70 <_ZN5RiscV22handle_supervisor_trapEv>:

/// interrupt handler
void RiscV::handle_supervisor_trap() {
    80002f70:	f9010113          	addi	sp,sp,-112
    80002f74:	06113423          	sd	ra,104(sp)
    80002f78:	06813023          	sd	s0,96(sp)
    80002f7c:	04913c23          	sd	s1,88(sp)
    80002f80:	05213823          	sd	s2,80(sp)
    80002f84:	05313423          	sd	s3,72(sp)
    80002f88:	07010413          	addi	s0,sp,112
    /// read values from registers
    uint64 syscall_code, a1, a2, a3, a4;
    __asm__ volatile("mv %0, a0" : "=r"(syscall_code));
    80002f8c:	00050793          	mv	a5,a0
    __asm__ volatile("mv %0, a1" : "=r"(a1));
    80002f90:	00058513          	mv	a0,a1
    __asm__ volatile("mv %0, a2" : "=r"(a2));
    80002f94:	00060593          	mv	a1,a2
    __asm__ volatile("mv %0, a3" : "=r"(a3));
    80002f98:	00068613          	mv	a2,a3
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    80002f9c:	00070693          	mv	a3,a4
    __asm__ volatile ("csrr %0, scause" : "=r"(scause));
    80002fa0:	14202773          	csrr	a4,scause
    80002fa4:	f8e43c23          	sd	a4,-104(s0)
    return scause;
    80002fa8:	f9843703          	ld	a4,-104(s0)

    /// read scause register value
    uint64 scause = read_scause();

    /// interrupt from supervisor / user mode
    if (scause == USER_INTERRUPT || scause == SUPERVISOR_INTERRUPT) {
    80002fac:	ff870893          	addi	a7,a4,-8
    80002fb0:	00100813          	li	a6,1
    80002fb4:	07187063          	bgeu	a6,a7,80003014 <_ZN5RiscV22handle_supervisor_trapEv+0xa4>
        write_sepc(sepc);
        write_sstatus(sstatus);
    }

    /// interrupt caused by Timer
    else if (scause == SOFTWARE_INTERRUPT) {
    80002fb8:	fff00793          	li	a5,-1
    80002fbc:	03f79793          	slli	a5,a5,0x3f
    80002fc0:	00178793          	addi	a5,a5,1
    80002fc4:	16f70063          	beq	a4,a5,80003124 <_ZN5RiscV22handle_supervisor_trapEv+0x1b4>
            write_sepc(sepc);
        }
    }

    /// External interrupt (Console)
    else if (scause == HARDWARE_INTERRUPT) {
    80002fc8:	fff00793          	li	a5,-1
    80002fcc:	03f79793          	slli	a5,a5,0x3f
    80002fd0:	00978793          	addi	a5,a5,9
    80002fd4:	22f70463          	beq	a4,a5,800031fc <_ZN5RiscV22handle_supervisor_trapEv+0x28c>
        mc_sip(SIP_SEIP);
    }

    /// Illegal instruction / Bad memory access
    else {
        printNumber(scause);
    80002fd8:	00070513          	mv	a0,a4
    80002fdc:	fffff097          	auipc	ra,0xfffff
    80002fe0:	b98080e7          	jalr	-1128(ra) # 80001b74 <_Z11printNumberm>
        __putc('!');
    80002fe4:	02100513          	li	a0,33
    80002fe8:	00006097          	auipc	ra,0x6
    80002fec:	114080e7          	jalr	276(ra) # 800090fc <__putc>
        __putc('?');
    80002ff0:	03f00513          	li	a0,63
    80002ff4:	00006097          	auipc	ra,0x6
    80002ff8:	108080e7          	jalr	264(ra) # 800090fc <__putc>
        __putc('!');
    80002ffc:	02100513          	li	a0,33
    80003000:	00006097          	auipc	ra,0x6
    80003004:	0fc080e7          	jalr	252(ra) # 800090fc <__putc>
        uint64 val = 1;
        __asm__ volatile("mv a0, %0" : : "r"(val));
    80003008:	00100793          	li	a5,1
    8000300c:	00078513          	mv	a0,a5
    }
    80003010:	0540006f          	j	80003064 <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
    __asm__ volatile ("csrr %0, sepc" : "=r"(sepc));
    80003014:	14102773          	csrr	a4,sepc
    80003018:	fae43423          	sd	a4,-88(s0)
    return sepc;
    8000301c:	fa843483          	ld	s1,-88(s0)
        uint64 sepc = read_sepc() + 4;
    80003020:	00448493          	addi	s1,s1,4
}

inline uint64 RiscV::read_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    80003024:	10002773          	csrr	a4,sstatus
    80003028:	fae43023          	sd	a4,-96(s0)
    return sstatus;
    8000302c:	fa043903          	ld	s2,-96(s0)
        switch(syscall_code) {
    80003030:	04200713          	li	a4,66
    80003034:	02f76463          	bltu	a4,a5,8000305c <_ZN5RiscV22handle_supervisor_trapEv+0xec>
    80003038:	00279793          	slli	a5,a5,0x2
    8000303c:	00007717          	auipc	a4,0x7
    80003040:	fe470713          	addi	a4,a4,-28 # 8000a020 <CONSOLE_STATUS+0x10>
    80003044:	00e787b3          	add	a5,a5,a4
    80003048:	0007a783          	lw	a5,0(a5)
    8000304c:	00e787b3          	add	a5,a5,a4
    80003050:	00078067          	jr	a5
                MemoryAllocator::mem_alloc((size_t) a1);
    80003054:	fffff097          	auipc	ra,0xfffff
    80003058:	524080e7          	jalr	1316(ra) # 80002578 <_ZN15MemoryAllocator9mem_allocEm>
    __asm__ volatile ("csrw sepc, %0" : : "r"(val));
    8000305c:	14149073          	csrw	sepc,s1
}

inline void RiscV::write_sstatus(uint64 val) {
    __asm__ volatile ("csrw sstatus, %0" : : "r"(val));
    80003060:	10091073          	csrw	sstatus,s2
    80003064:	06813083          	ld	ra,104(sp)
    80003068:	06013403          	ld	s0,96(sp)
    8000306c:	05813483          	ld	s1,88(sp)
    80003070:	05013903          	ld	s2,80(sp)
    80003074:	04813983          	ld	s3,72(sp)
    80003078:	07010113          	addi	sp,sp,112
    8000307c:	00008067          	ret
                MemoryAllocator::mem_free((void *) a1);
    80003080:	fffff097          	auipc	ra,0xfffff
    80003084:	66c080e7          	jalr	1644(ra) # 800026ec <_ZN15MemoryAllocator8mem_freeEPv>
                break;
    80003088:	fd5ff06f          	j	8000305c <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                TCB::thread_create((thread_t *) a1, (void (*)(void *)) a2, (void *) a3, (void *) a4);
    8000308c:	00000097          	auipc	ra,0x0
    80003090:	76c080e7          	jalr	1900(ra) # 800037f8 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>
                break;
    80003094:	fc9ff06f          	j	8000305c <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                TCB::thread_exit();
    80003098:	00000097          	auipc	ra,0x0
    8000309c:	674080e7          	jalr	1652(ra) # 8000370c <_ZN3TCB11thread_exitEv>
                break;
    800030a0:	fbdff06f          	j	8000305c <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                TCB::dispatch();
    800030a4:	00000097          	auipc	ra,0x0
    800030a8:	518080e7          	jalr	1304(ra) # 800035bc <_ZN3TCB8dispatchEv>
                break;
    800030ac:	fb1ff06f          	j	8000305c <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Sem::open((sem_t *) a1, a2);
    800030b0:	0005859b          	sext.w	a1,a1
    800030b4:	fffff097          	auipc	ra,0xfffff
    800030b8:	9a4080e7          	jalr	-1628(ra) # 80001a58 <_ZN3Sem4openEPPS_j>
                break;
    800030bc:	fa1ff06f          	j	8000305c <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Sem::close((sem_t) a1);
    800030c0:	ffffe097          	auipc	ra,0xffffe
    800030c4:	770080e7          	jalr	1904(ra) # 80001830 <_ZN3Sem5closeEPS_>
                break;
    800030c8:	f95ff06f          	j	8000305c <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Sem::wait((sem_t) a1);
    800030cc:	ffffe097          	auipc	ra,0xffffe
    800030d0:	7d0080e7          	jalr	2000(ra) # 8000189c <_ZN3Sem4waitEPS_>
                break;
    800030d4:	f89ff06f          	j	8000305c <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Sem::signal((sem_t) a1);
    800030d8:	fffff097          	auipc	ra,0xfffff
    800030dc:	818080e7          	jalr	-2024(ra) # 800018f0 <_ZN3Sem6signalEPS_>
                break;
    800030e0:	f7dff06f          	j	8000305c <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Sem::timedWait((sem_t) a1, (time_t) a2);
    800030e4:	fffff097          	auipc	ra,0xfffff
    800030e8:	860080e7          	jalr	-1952(ra) # 80001944 <_ZN3Sem9timedWaitEPS_m>
                break;
    800030ec:	f71ff06f          	j	8000305c <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Sem::tryWait((sem_t) a1);
    800030f0:	fffff097          	auipc	ra,0xfffff
    800030f4:	8d8080e7          	jalr	-1832(ra) # 800019c8 <_ZN3Sem7tryWaitEPS_>
                break;
    800030f8:	f65ff06f          	j	8000305c <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Scheduler::put_to_sleep((time_t) a1);
    800030fc:	00000097          	auipc	ra,0x0
    80003100:	c90080e7          	jalr	-880(ra) # 80002d8c <_ZN9Scheduler12put_to_sleepEm>
                break;
    80003104:	f59ff06f          	j	8000305c <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Con::getc_input();
    80003108:	fffff097          	auipc	ra,0xfffff
    8000310c:	ea4080e7          	jalr	-348(ra) # 80001fac <_ZN3Con10getc_inputEv>
                break;
    80003110:	f4dff06f          	j	8000305c <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Con::putc_output((char) a1);
    80003114:	0ff57513          	andi	a0,a0,255
    80003118:	fffff097          	auipc	ra,0xfffff
    8000311c:	dfc080e7          	jalr	-516(ra) # 80001f14 <_ZN3Con11putc_outputEc>
                break;
    80003120:	f3dff06f          	j	8000305c <_ZN5RiscV22handle_supervisor_trapEv+0xec>
    __asm__ volatile ("csrc sip, %0" : : "r"(mask));
    80003124:	00200793          	li	a5,2
    80003128:	1447b073          	csrc	sip,a5
        TCB* first_waiting = Scheduler::head_sleeping;
    8000312c:	0000a797          	auipc	a5,0xa
    80003130:	da47b783          	ld	a5,-604(a5) # 8000ced0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003134:	0007b483          	ld	s1,0(a5)
        if (first_waiting) {
    80003138:	06048263          	beqz	s1,8000319c <_ZN5RiscV22handle_supervisor_trapEv+0x22c>
            --first_waiting -> time_to_sleep;
    8000313c:	0504b783          	ld	a5,80(s1)
    80003140:	fff78793          	addi	a5,a5,-1
    80003144:	04f4b823          	sd	a5,80(s1)
    80003148:	03c0006f          	j	80003184 <_ZN5RiscV22handle_supervisor_trapEv+0x214>
                if (first_waiting -> timed_wait) first_waiting -> clear_from_timed_wait(true);
    8000314c:	00100593          	li	a1,1
    80003150:	00048513          	mv	a0,s1
    80003154:	00000097          	auipc	ra,0x0
    80003158:	7c4080e7          	jalr	1988(ra) # 80003918 <_ZN3TCB21clear_from_timed_waitEb>
                Scheduler::put(first_waiting);
    8000315c:	00048513          	mv	a0,s1
    80003160:	00000097          	auipc	ra,0x0
    80003164:	a4c080e7          	jalr	-1460(ra) # 80002bac <_ZN9Scheduler3putEP3TCB>
                first_waiting -> status = TCB::RUNNABLE;
    80003168:	0204a023          	sw	zero,32(s1)
                first_waiting = first_waiting -> next_sleeping;
    8000316c:	0584b783          	ld	a5,88(s1)
                tmp -> next_sleeping = nullptr;
    80003170:	0404bc23          	sd	zero,88(s1)
                Scheduler::head_sleeping = first_waiting;
    80003174:	0000a717          	auipc	a4,0xa
    80003178:	d5c73703          	ld	a4,-676(a4) # 8000ced0 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000317c:	00f73023          	sd	a5,0(a4)
                first_waiting = first_waiting -> next_sleeping;
    80003180:	00078493          	mv	s1,a5
            while (first_waiting && first_waiting -> time_to_sleep == 0) {
    80003184:	00048c63          	beqz	s1,8000319c <_ZN5RiscV22handle_supervisor_trapEv+0x22c>
    80003188:	0504b783          	ld	a5,80(s1)
    8000318c:	00079863          	bnez	a5,8000319c <_ZN5RiscV22handle_supervisor_trapEv+0x22c>
                if (first_waiting -> timed_wait) first_waiting -> clear_from_timed_wait(true);
    80003190:	0484c783          	lbu	a5,72(s1)
    80003194:	fc0784e3          	beqz	a5,8000315c <_ZN5RiscV22handle_supervisor_trapEv+0x1ec>
    80003198:	fb5ff06f          	j	8000314c <_ZN5RiscV22handle_supervisor_trapEv+0x1dc>
        ++TCB::time_slice_counter;
    8000319c:	0000a717          	auipc	a4,0xa
    800031a0:	d5473703          	ld	a4,-684(a4) # 8000cef0 <_GLOBAL_OFFSET_TABLE_+0x48>
    800031a4:	00073783          	ld	a5,0(a4)
    800031a8:	00178793          	addi	a5,a5,1
    800031ac:	00f73023          	sd	a5,0(a4)
        if (TCB::time_slice_counter >= TCB::running -> time_slice) {
    800031b0:	0000a717          	auipc	a4,0xa
    800031b4:	d5073703          	ld	a4,-688(a4) # 8000cf00 <_GLOBAL_OFFSET_TABLE_+0x58>
    800031b8:	00073703          	ld	a4,0(a4)
    800031bc:	00073703          	ld	a4,0(a4)
    800031c0:	eae7e2e3          	bltu	a5,a4,80003064 <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
    __asm__ volatile ("csrr %0, sepc" : "=r"(sepc));
    800031c4:	141027f3          	csrr	a5,sepc
    800031c8:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    800031cc:	fb843483          	ld	s1,-72(s0)
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    800031d0:	100027f3          	csrr	a5,sstatus
    800031d4:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    800031d8:	fb043903          	ld	s2,-80(s0)
            TCB::time_slice_counter = 0;
    800031dc:	0000a797          	auipc	a5,0xa
    800031e0:	d147b783          	ld	a5,-748(a5) # 8000cef0 <_GLOBAL_OFFSET_TABLE_+0x48>
    800031e4:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    800031e8:	00000097          	auipc	ra,0x0
    800031ec:	3d4080e7          	jalr	980(ra) # 800035bc <_ZN3TCB8dispatchEv>
    __asm__ volatile ("csrw sstatus, %0" : : "r"(val));
    800031f0:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %0" : : "r"(val));
    800031f4:	14149073          	csrw	sepc,s1
}
    800031f8:	e6dff06f          	j	80003064 <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
    __asm__ volatile ("csrr %0, sepc" : "=r"(sepc));
    800031fc:	141027f3          	csrr	a5,sepc
    80003200:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80003204:	fc843983          	ld	s3,-56(s0)
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    80003208:	100027f3          	csrr	a5,sstatus
    8000320c:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80003210:	fc043903          	ld	s2,-64(s0)
        int irq = plic_claim();
    80003214:	00004097          	auipc	ra,0x4
    80003218:	680080e7          	jalr	1664(ra) # 80007894 <plic_claim>
    8000321c:	00050493          	mv	s1,a0
        if (irq == CONSOLE_IRQ) {
    80003220:	00a00793          	li	a5,10
    80003224:	02f50263          	beq	a0,a5,80003248 <_ZN5RiscV22handle_supervisor_trapEv+0x2d8>
        plic_complete(irq);
    80003228:	00048513          	mv	a0,s1
    8000322c:	00004097          	auipc	ra,0x4
    80003230:	6a0080e7          	jalr	1696(ra) # 800078cc <plic_complete>
    __asm__ volatile ("csrw sepc, %0" : : "r"(val));
    80003234:	14199073          	csrw	sepc,s3
    __asm__ volatile ("csrw sstatus, %0" : : "r"(val));
    80003238:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrc sip, %0" : : "r"(mask));
    8000323c:	20000793          	li	a5,512
    80003240:	1447b073          	csrc	sip,a5
}
    80003244:	e21ff06f          	j	80003064 <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
            while (*(char *) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT) {
    80003248:	0000a797          	auipc	a5,0xa
    8000324c:	c707b783          	ld	a5,-912(a5) # 8000ceb8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003250:	0007b783          	ld	a5,0(a5)
    80003254:	0007c783          	lbu	a5,0(a5)
    80003258:	0017f793          	andi	a5,a5,1
    8000325c:	fc0786e3          	beqz	a5,80003228 <_ZN5RiscV22handle_supervisor_trapEv+0x2b8>
                char c = *(char *) CONSOLE_RX_DATA;
    80003260:	0000a797          	auipc	a5,0xa
    80003264:	c507b783          	ld	a5,-944(a5) # 8000ceb0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80003268:	0007b783          	ld	a5,0(a5)
                Con::putc_input(c);
    8000326c:	0007c503          	lbu	a0,0(a5)
    80003270:	fffff097          	auipc	ra,0xfffff
    80003274:	d08080e7          	jalr	-760(ra) # 80001f78 <_ZN3Con10putc_inputEc>
            while (*(char *) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT) {
    80003278:	fd1ff06f          	j	80003248 <_ZN5RiscV22handle_supervisor_trapEv+0x2d8>

000000008000327c <_ZN10ThreadList9get_firstEv>:

void ThreadList::push_back(TCB *thread) {
    tail = (head ? tail -> next : head) = new Node(thread);
}

TCB *ThreadList::get_first() {
    8000327c:	ff010113          	addi	sp,sp,-16
    80003280:	00813423          	sd	s0,8(sp)
    80003284:	01010413          	addi	s0,sp,16
    return (head ? head -> data : nullptr);
    80003288:	00053503          	ld	a0,0(a0)
    8000328c:	00050463          	beqz	a0,80003294 <_ZN10ThreadList9get_firstEv+0x18>
    80003290:	00053503          	ld	a0,0(a0)
}
    80003294:	00813403          	ld	s0,8(sp)
    80003298:	01010113          	addi	sp,sp,16
    8000329c:	00008067          	ret

00000000800032a0 <_ZN10ThreadList6removeEP3TCB>:
    tmp -> next = nullptr;
    delete tmp;
    return thread;
}

int ThreadList::remove(TCB *thread) {
    800032a0:	ff010113          	addi	sp,sp,-16
    800032a4:	00813423          	sd	s0,8(sp)
    800032a8:	01010413          	addi	s0,sp,16
    if (!thread) return -1;
    800032ac:	04058863          	beqz	a1,800032fc <_ZN10ThreadList6removeEP3TCB+0x5c>
    Node *tmp = head, *prev = nullptr;
    800032b0:	00053783          	ld	a5,0(a0)
    800032b4:	00000693          	li	a3,0
    while (tmp && tmp -> data != thread) {
    800032b8:	00078c63          	beqz	a5,800032d0 <_ZN10ThreadList6removeEP3TCB+0x30>
    800032bc:	0007b703          	ld	a4,0(a5)
    800032c0:	00b70863          	beq	a4,a1,800032d0 <_ZN10ThreadList6removeEP3TCB+0x30>
        prev = tmp;
    800032c4:	00078693          	mv	a3,a5
        tmp = tmp -> next;
    800032c8:	0087b783          	ld	a5,8(a5)
    while (tmp && tmp -> data != thread) {
    800032cc:	fedff06f          	j	800032b8 <_ZN10ThreadList6removeEP3TCB+0x18>
    }
    if (!tmp) return -2;
    800032d0:	02078a63          	beqz	a5,80003304 <_ZN10ThreadList6removeEP3TCB+0x64>
    if (prev) prev -> next = tmp -> next;
    800032d4:	00068e63          	beqz	a3,800032f0 <_ZN10ThreadList6removeEP3TCB+0x50>
    800032d8:	0087b783          	ld	a5,8(a5)
    800032dc:	00f6b423          	sd	a5,8(a3)
    else head = tmp;
    return 0;
    800032e0:	00000513          	li	a0,0
}
    800032e4:	00813403          	ld	s0,8(sp)
    800032e8:	01010113          	addi	sp,sp,16
    800032ec:	00008067          	ret
    else head = tmp;
    800032f0:	00f53023          	sd	a5,0(a0)
    return 0;
    800032f4:	00000513          	li	a0,0
    800032f8:	fedff06f          	j	800032e4 <_ZN10ThreadList6removeEP3TCB+0x44>
    if (!thread) return -1;
    800032fc:	fff00513          	li	a0,-1
    80003300:	fe5ff06f          	j	800032e4 <_ZN10ThreadList6removeEP3TCB+0x44>
    if (!tmp) return -2;
    80003304:	ffe00513          	li	a0,-2
    80003308:	fddff06f          	j	800032e4 <_ZN10ThreadList6removeEP3TCB+0x44>

000000008000330c <_ZN10ThreadListnwEm>:

void ThreadList::free() {
    while (get_first()) remove_first();
}

void *ThreadList::operator new(size_t size) {
    8000330c:	ff010113          	addi	sp,sp,-16
    80003310:	00113423          	sd	ra,8(sp)
    80003314:	00813023          	sd	s0,0(sp)
    80003318:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    8000331c:	fffff097          	auipc	ra,0xfffff
    80003320:	620080e7          	jalr	1568(ra) # 8000293c <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80003324:	fffff097          	auipc	ra,0xfffff
    80003328:	254080e7          	jalr	596(ra) # 80002578 <_ZN15MemoryAllocator9mem_allocEm>
}
    8000332c:	00813083          	ld	ra,8(sp)
    80003330:	00013403          	ld	s0,0(sp)
    80003334:	01010113          	addi	sp,sp,16
    80003338:	00008067          	ret

000000008000333c <_ZN10ThreadListdlEPv>:

void ThreadList::operator delete(void *addr) {
    8000333c:	ff010113          	addi	sp,sp,-16
    80003340:	00113423          	sd	ra,8(sp)
    80003344:	00813023          	sd	s0,0(sp)
    80003348:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    8000334c:	fffff097          	auipc	ra,0xfffff
    80003350:	3a0080e7          	jalr	928(ra) # 800026ec <_ZN15MemoryAllocator8mem_freeEPv>
}
    80003354:	00813083          	ld	ra,8(sp)
    80003358:	00013403          	ld	s0,0(sp)
    8000335c:	01010113          	addi	sp,sp,16
    80003360:	00008067          	ret

0000000080003364 <_ZN10ThreadList4NodenwEm>:

void *ThreadList::Node::operator new(size_t size) {
    80003364:	ff010113          	addi	sp,sp,-16
    80003368:	00113423          	sd	ra,8(sp)
    8000336c:	00813023          	sd	s0,0(sp)
    80003370:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    80003374:	fffff097          	auipc	ra,0xfffff
    80003378:	5c8080e7          	jalr	1480(ra) # 8000293c <_ZN15MemoryAllocator20get_number_of_blocksEm>
    8000337c:	fffff097          	auipc	ra,0xfffff
    80003380:	1fc080e7          	jalr	508(ra) # 80002578 <_ZN15MemoryAllocator9mem_allocEm>
}
    80003384:	00813083          	ld	ra,8(sp)
    80003388:	00013403          	ld	s0,0(sp)
    8000338c:	01010113          	addi	sp,sp,16
    80003390:	00008067          	ret

0000000080003394 <_ZN10ThreadList9push_backEP3TCB>:
void ThreadList::push_back(TCB *thread) {
    80003394:	fe010113          	addi	sp,sp,-32
    80003398:	00113c23          	sd	ra,24(sp)
    8000339c:	00813823          	sd	s0,16(sp)
    800033a0:	00913423          	sd	s1,8(sp)
    800033a4:	01213023          	sd	s2,0(sp)
    800033a8:	02010413          	addi	s0,sp,32
    800033ac:	00050493          	mv	s1,a0
    800033b0:	00058913          	mv	s2,a1
    tail = (head ? tail -> next : head) = new Node(thread);
    800033b4:	01000513          	li	a0,16
    800033b8:	00000097          	auipc	ra,0x0
    800033bc:	fac080e7          	jalr	-84(ra) # 80003364 <_ZN10ThreadList4NodenwEm>
        struct Node *next;

        void* operator new(size_t size);
        void operator delete(void* addr);

        explicit Node(TCB* data) : data(data), next(nullptr) {}
    800033c0:	01253023          	sd	s2,0(a0)
    800033c4:	00053423          	sd	zero,8(a0)
    800033c8:	0004b783          	ld	a5,0(s1)
    800033cc:	02078463          	beqz	a5,800033f4 <_ZN10ThreadList9push_backEP3TCB+0x60>
    800033d0:	0084b783          	ld	a5,8(s1)
    800033d4:	00a7b423          	sd	a0,8(a5)
    800033d8:	00a4b423          	sd	a0,8(s1)
}
    800033dc:	01813083          	ld	ra,24(sp)
    800033e0:	01013403          	ld	s0,16(sp)
    800033e4:	00813483          	ld	s1,8(sp)
    800033e8:	00013903          	ld	s2,0(sp)
    800033ec:	02010113          	addi	sp,sp,32
    800033f0:	00008067          	ret
    tail = (head ? tail -> next : head) = new Node(thread);
    800033f4:	00a4b023          	sd	a0,0(s1)
    800033f8:	fe1ff06f          	j	800033d8 <_ZN10ThreadList9push_backEP3TCB+0x44>

00000000800033fc <_ZN10ThreadList4NodedlEPv>:

void ThreadList::Node::operator delete(void *addr) {
    800033fc:	ff010113          	addi	sp,sp,-16
    80003400:	00113423          	sd	ra,8(sp)
    80003404:	00813023          	sd	s0,0(sp)
    80003408:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    8000340c:	fffff097          	auipc	ra,0xfffff
    80003410:	2e0080e7          	jalr	736(ra) # 800026ec <_ZN15MemoryAllocator8mem_freeEPv>
}
    80003414:	00813083          	ld	ra,8(sp)
    80003418:	00013403          	ld	s0,0(sp)
    8000341c:	01010113          	addi	sp,sp,16
    80003420:	00008067          	ret

0000000080003424 <_ZN10ThreadList12remove_firstEv>:
TCB *ThreadList::remove_first() {
    80003424:	fe010113          	addi	sp,sp,-32
    80003428:	00113c23          	sd	ra,24(sp)
    8000342c:	00813823          	sd	s0,16(sp)
    80003430:	00913423          	sd	s1,8(sp)
    80003434:	02010413          	addi	s0,sp,32
    80003438:	00050793          	mv	a5,a0
    if (!head) return nullptr;
    8000343c:	00053503          	ld	a0,0(a0)
    80003440:	02050863          	beqz	a0,80003470 <_ZN10ThreadList12remove_firstEv+0x4c>
    TCB* thread = tmp -> data;
    80003444:	00053483          	ld	s1,0(a0)
    head = head -> next;
    80003448:	00853703          	ld	a4,8(a0)
    8000344c:	00e7b023          	sd	a4,0(a5)
    delete tmp;
    80003450:	00000097          	auipc	ra,0x0
    80003454:	fac080e7          	jalr	-84(ra) # 800033fc <_ZN10ThreadList4NodedlEPv>
}
    80003458:	00048513          	mv	a0,s1
    8000345c:	01813083          	ld	ra,24(sp)
    80003460:	01013403          	ld	s0,16(sp)
    80003464:	00813483          	ld	s1,8(sp)
    80003468:	02010113          	addi	sp,sp,32
    8000346c:	00008067          	ret
    if (!head) return nullptr;
    80003470:	00050493          	mv	s1,a0
    80003474:	fe5ff06f          	j	80003458 <_ZN10ThreadList12remove_firstEv+0x34>

0000000080003478 <_ZN10ThreadList4freeEv>:
void ThreadList::free() {
    80003478:	fe010113          	addi	sp,sp,-32
    8000347c:	00113c23          	sd	ra,24(sp)
    80003480:	00813823          	sd	s0,16(sp)
    80003484:	00913423          	sd	s1,8(sp)
    80003488:	02010413          	addi	s0,sp,32
    8000348c:	00050493          	mv	s1,a0
    while (get_first()) remove_first();
    80003490:	00048513          	mv	a0,s1
    80003494:	00000097          	auipc	ra,0x0
    80003498:	de8080e7          	jalr	-536(ra) # 8000327c <_ZN10ThreadList9get_firstEv>
    8000349c:	00050a63          	beqz	a0,800034b0 <_ZN10ThreadList4freeEv+0x38>
    800034a0:	00048513          	mv	a0,s1
    800034a4:	00000097          	auipc	ra,0x0
    800034a8:	f80080e7          	jalr	-128(ra) # 80003424 <_ZN10ThreadList12remove_firstEv>
    800034ac:	fe5ff06f          	j	80003490 <_ZN10ThreadList4freeEv+0x18>
}
    800034b0:	01813083          	ld	ra,24(sp)
    800034b4:	01013403          	ld	s0,16(sp)
    800034b8:	00813483          	ld	s1,8(sp)
    800034bc:	02010113          	addi	sp,sp,32
    800034c0:	00008067          	ret

00000000800034c4 <_ZN3TCBC1EPFvPvES0_S0_>:

TCB::TCB(void (*function_body)(void *), void *arg, void *stack) {
    context = {
            (uint64) wrapper_function,
            /// stack starts from max address, rises to lower locations
            (uint64) (stack ? (uint64) stack + DEFAULT_STACK_SIZE - 1 : 0)
    800034c4:	08068863          	beqz	a3,80003554 <_ZN3TCBC1EPFvPvES0_S0_+0x90>
    800034c8:	000017b7          	lui	a5,0x1
    800034cc:	fff78793          	addi	a5,a5,-1 # fff <_entry-0x7ffff001>
    800034d0:	00f687b3          	add	a5,a3,a5
    context = {
    800034d4:	00000717          	auipc	a4,0x0
    800034d8:	28470713          	addi	a4,a4,644 # 80003758 <_ZN3TCB16wrapper_functionEv>
    800034dc:	00e53823          	sd	a4,16(a0)
    800034e0:	00f53c23          	sd	a5,24(a0)
    };
    id = cnt++;
    800034e4:	0000a717          	auipc	a4,0xa
    800034e8:	ab470713          	addi	a4,a4,-1356 # 8000cf98 <_ZN3TCB3cntE>
    800034ec:	00072783          	lw	a5,0(a4)
    800034f0:	0017881b          	addiw	a6,a5,1
    800034f4:	01072023          	sw	a6,0(a4)
    800034f8:	00f52423          	sw	a5,8(a0)
    time_slice = DEFAULT_TIME_SLICE;
    800034fc:	00200793          	li	a5,2
    80003500:	00f53023          	sd	a5,0(a0)
    status = RUNNABLE;
    80003504:	02052023          	sw	zero,32(a0)
    this -> function_body = function_body;
    80003508:	02b53423          	sd	a1,40(a0)
    this -> arg = arg;
    8000350c:	02c53823          	sd	a2,48(a0)
    this -> stack = stack;
    80003510:	02d53c23          	sd	a3,56(a0)
    timed_wait = false;
    80003514:	04050423          	sb	zero,72(a0)
    time_to_sleep = 0;
    80003518:	04053823          	sd	zero,80(a0)
    next_ready = nullptr;
    8000351c:	04053023          	sd	zero,64(a0)
    next_sleeping = nullptr;
    80003520:	04053c23          	sd	zero,88(a0)
    sem = nullptr;
    80003524:	06053023          	sd	zero,96(a0)
    if (function_body) Scheduler::put(this);
    80003528:	02058a63          	beqz	a1,8000355c <_ZN3TCBC1EPFvPvES0_S0_+0x98>
TCB::TCB(void (*function_body)(void *), void *arg, void *stack) {
    8000352c:	ff010113          	addi	sp,sp,-16
    80003530:	00113423          	sd	ra,8(sp)
    80003534:	00813023          	sd	s0,0(sp)
    80003538:	01010413          	addi	s0,sp,16
    if (function_body) Scheduler::put(this);
    8000353c:	fffff097          	auipc	ra,0xfffff
    80003540:	670080e7          	jalr	1648(ra) # 80002bac <_ZN9Scheduler3putEP3TCB>
}
    80003544:	00813083          	ld	ra,8(sp)
    80003548:	00013403          	ld	s0,0(sp)
    8000354c:	01010113          	addi	sp,sp,16
    80003550:	00008067          	ret
            (uint64) (stack ? (uint64) stack + DEFAULT_STACK_SIZE - 1 : 0)
    80003554:	00000793          	li	a5,0
    80003558:	f7dff06f          	j	800034d4 <_ZN3TCBC1EPFvPvES0_S0_+0x10>
    8000355c:	00008067          	ret

0000000080003560 <_ZN3TCB5yieldEPS_S0_>:
    RiscV::popSppSpie();
    if (running -> function_body) running -> function_body(running -> arg);
    thread_exit();
}

void TCB::yield(TCB *old_running, TCB *new_running) {
    80003560:	fe010113          	addi	sp,sp,-32
    80003564:	00113c23          	sd	ra,24(sp)
    80003568:	00813823          	sd	s0,16(sp)
    8000356c:	00913423          	sd	s1,8(sp)
    80003570:	01213023          	sd	s2,0(sp)
    80003574:	02010413          	addi	s0,sp,32
    80003578:	00050493          	mv	s1,a0
    8000357c:	00058913          	mv	s2,a1
    RiscV::push_registers();
    80003580:	ffffe097          	auipc	ra,0xffffe
    80003584:	b88080e7          	jalr	-1144(ra) # 80001108 <_ZN5RiscV14push_registersEv>
    if (old_running != new_running) context_switch(&old_running -> context, &new_running -> context);
    80003588:	01248a63          	beq	s1,s2,8000359c <_ZN3TCB5yieldEPS_S0_+0x3c>
    8000358c:	01090593          	addi	a1,s2,16
    80003590:	01048513          	addi	a0,s1,16
    80003594:	ffffe097          	auipc	ra,0xffffe
    80003598:	c74080e7          	jalr	-908(ra) # 80001208 <_ZN3TCB14context_switchEPNS_7ContextES1_>
    RiscV::pop_registers();
    8000359c:	ffffe097          	auipc	ra,0xffffe
    800035a0:	bec080e7          	jalr	-1044(ra) # 80001188 <_ZN5RiscV13pop_registersEv>
}
    800035a4:	01813083          	ld	ra,24(sp)
    800035a8:	01013403          	ld	s0,16(sp)
    800035ac:	00813483          	ld	s1,8(sp)
    800035b0:	00013903          	ld	s2,0(sp)
    800035b4:	02010113          	addi	sp,sp,32
    800035b8:	00008067          	ret

00000000800035bc <_ZN3TCB8dispatchEv>:

void TCB::dispatch() {
    800035bc:	fe010113          	addi	sp,sp,-32
    800035c0:	00113c23          	sd	ra,24(sp)
    800035c4:	00813823          	sd	s0,16(sp)
    800035c8:	00913423          	sd	s1,8(sp)
    800035cc:	02010413          	addi	s0,sp,32
    TCB* old = running;
    800035d0:	0000a497          	auipc	s1,0xa
    800035d4:	9d04b483          	ld	s1,-1584(s1) # 8000cfa0 <_ZN3TCB7runningE>
    if (old -> status == RUNNABLE) Scheduler::put(old);
    800035d8:	0204a783          	lw	a5,32(s1)
    800035dc:	04078663          	beqz	a5,80003628 <_ZN3TCB8dispatchEv+0x6c>
    else if (old -> status == FINISHED) MemoryAllocator::mem_free(old -> stack);
    800035e0:	00300713          	li	a4,3
    800035e4:	04e78a63          	beq	a5,a4,80003638 <_ZN3TCB8dispatchEv+0x7c>
    running = Scheduler::get();
    800035e8:	fffff097          	auipc	ra,0xfffff
    800035ec:	634080e7          	jalr	1588(ra) # 80002c1c <_ZN9Scheduler3getEv>
    800035f0:	00050593          	mv	a1,a0
    800035f4:	0000a797          	auipc	a5,0xa
    800035f8:	9a478793          	addi	a5,a5,-1628 # 8000cf98 <_ZN3TCB3cntE>
    800035fc:	00a7b423          	sd	a0,8(a5)
    time_slice_counter = 0;
    80003600:	0007b823          	sd	zero,16(a5)
    if (old != running) yield(old, running);
    80003604:	00a48863          	beq	s1,a0,80003614 <_ZN3TCB8dispatchEv+0x58>
    80003608:	00048513          	mv	a0,s1
    8000360c:	00000097          	auipc	ra,0x0
    80003610:	f54080e7          	jalr	-172(ra) # 80003560 <_ZN3TCB5yieldEPS_S0_>
}
    80003614:	01813083          	ld	ra,24(sp)
    80003618:	01013403          	ld	s0,16(sp)
    8000361c:	00813483          	ld	s1,8(sp)
    80003620:	02010113          	addi	sp,sp,32
    80003624:	00008067          	ret
    if (old -> status == RUNNABLE) Scheduler::put(old);
    80003628:	00048513          	mv	a0,s1
    8000362c:	fffff097          	auipc	ra,0xfffff
    80003630:	580080e7          	jalr	1408(ra) # 80002bac <_ZN9Scheduler3putEP3TCB>
    80003634:	fb5ff06f          	j	800035e8 <_ZN3TCB8dispatchEv+0x2c>
    else if (old -> status == FINISHED) MemoryAllocator::mem_free(old -> stack);
    80003638:	0384b503          	ld	a0,56(s1)
    8000363c:	fffff097          	auipc	ra,0xfffff
    80003640:	0b0080e7          	jalr	176(ra) # 800026ec <_ZN15MemoryAllocator8mem_freeEPv>
    80003644:	fa5ff06f          	j	800035e8 <_ZN3TCB8dispatchEv+0x2c>

0000000080003648 <_ZNK3TCB14get_next_readyEv>:

TCB *TCB::get_next_ready() const {
    80003648:	ff010113          	addi	sp,sp,-16
    8000364c:	00813423          	sd	s0,8(sp)
    80003650:	01010413          	addi	s0,sp,16
    return next_ready;
}
    80003654:	04053503          	ld	a0,64(a0)
    80003658:	00813403          	ld	s0,8(sp)
    8000365c:	01010113          	addi	sp,sp,16
    80003660:	00008067          	ret

0000000080003664 <_ZN3TCB14set_next_readyEPS_>:

void TCB::set_next_ready(TCB *next) {
    80003664:	ff010113          	addi	sp,sp,-16
    80003668:	00813423          	sd	s0,8(sp)
    8000366c:	01010413          	addi	s0,sp,16
    next_ready = next;
    80003670:	04b53023          	sd	a1,64(a0)
}
    80003674:	00813403          	ld	s0,8(sp)
    80003678:	01010113          	addi	sp,sp,16
    8000367c:	00008067          	ret

0000000080003680 <_ZN3TCB17set_next_sleepingEPS_>:

void TCB::set_next_sleeping(TCB *next) {
    80003680:	ff010113          	addi	sp,sp,-16
    80003684:	00813423          	sd	s0,8(sp)
    80003688:	01010413          	addi	s0,sp,16
    next_sleeping = next;
    8000368c:	04b53c23          	sd	a1,88(a0)
}
    80003690:	00813403          	ld	s0,8(sp)
    80003694:	01010113          	addi	sp,sp,16
    80003698:	00008067          	ret

000000008000369c <_ZNK3TCB17get_next_sleepingEv>:

TCB* TCB::get_next_sleeping() const {
    8000369c:	ff010113          	addi	sp,sp,-16
    800036a0:	00813423          	sd	s0,8(sp)
    800036a4:	01010413          	addi	s0,sp,16
    return next_sleeping;
}
    800036a8:	05853503          	ld	a0,88(a0)
    800036ac:	00813403          	ld	s0,8(sp)
    800036b0:	01010113          	addi	sp,sp,16
    800036b4:	00008067          	ret

00000000800036b8 <_ZN3TCB17set_time_to_sleepEm>:

void TCB::set_time_to_sleep(time_t time) {
    800036b8:	ff010113          	addi	sp,sp,-16
    800036bc:	00813423          	sd	s0,8(sp)
    800036c0:	01010413          	addi	s0,sp,16
    time_to_sleep = time;
    800036c4:	04b53823          	sd	a1,80(a0)
}
    800036c8:	00813403          	ld	s0,8(sp)
    800036cc:	01010113          	addi	sp,sp,16
    800036d0:	00008067          	ret

00000000800036d4 <_ZNK3TCB17get_time_to_sleepEv>:

time_t TCB::get_time_to_sleep() const {
    800036d4:	ff010113          	addi	sp,sp,-16
    800036d8:	00813423          	sd	s0,8(sp)
    800036dc:	01010413          	addi	s0,sp,16
    return time_to_sleep;
}
    800036e0:	05053503          	ld	a0,80(a0)
    800036e4:	00813403          	ld	s0,8(sp)
    800036e8:	01010113          	addi	sp,sp,16
    800036ec:	00008067          	ret

00000000800036f0 <_ZN3TCB10set_statusENS_6StatusE>:

void TCB::set_status(TCB::Status stat) {
    800036f0:	ff010113          	addi	sp,sp,-16
    800036f4:	00813423          	sd	s0,8(sp)
    800036f8:	01010413          	addi	s0,sp,16
    this -> status = stat;
    800036fc:	02b52023          	sw	a1,32(a0)
}
    80003700:	00813403          	ld	s0,8(sp)
    80003704:	01010113          	addi	sp,sp,16
    80003708:	00008067          	ret

000000008000370c <_ZN3TCB11thread_exitEv>:
    if (!running) return -1;
    8000370c:	0000a517          	auipc	a0,0xa
    80003710:	89453503          	ld	a0,-1900(a0) # 8000cfa0 <_ZN3TCB7runningE>
    80003714:	02050e63          	beqz	a0,80003750 <_ZN3TCB11thread_exitEv+0x44>
int TCB::thread_exit() {
    80003718:	ff010113          	addi	sp,sp,-16
    8000371c:	00113423          	sd	ra,8(sp)
    80003720:	00813023          	sd	s0,0(sp)
    80003724:	01010413          	addi	s0,sp,16
    running -> set_status(Status::FINISHED);
    80003728:	00300593          	li	a1,3
    8000372c:	00000097          	auipc	ra,0x0
    80003730:	fc4080e7          	jalr	-60(ra) # 800036f0 <_ZN3TCB10set_statusENS_6StatusE>
    thread_dispatch();
    80003734:	ffffe097          	auipc	ra,0xffffe
    80003738:	c98080e7          	jalr	-872(ra) # 800013cc <_Z15thread_dispatchv>
    return 0;
    8000373c:	00000513          	li	a0,0
}
    80003740:	00813083          	ld	ra,8(sp)
    80003744:	00013403          	ld	s0,0(sp)
    80003748:	01010113          	addi	sp,sp,16
    8000374c:	00008067          	ret
    if (!running) return -1;
    80003750:	fff00513          	li	a0,-1
}
    80003754:	00008067          	ret

0000000080003758 <_ZN3TCB16wrapper_functionEv>:
void TCB::wrapper_function() {
    80003758:	ff010113          	addi	sp,sp,-16
    8000375c:	00113423          	sd	ra,8(sp)
    80003760:	00813023          	sd	s0,0(sp)
    80003764:	01010413          	addi	s0,sp,16
    RiscV::popSppSpie();
    80003768:	fffff097          	auipc	ra,0xfffff
    8000376c:	7c0080e7          	jalr	1984(ra) # 80002f28 <_ZN5RiscV10popSppSpieEv>
    if (running -> function_body) running -> function_body(running -> arg);
    80003770:	0000a717          	auipc	a4,0xa
    80003774:	83073703          	ld	a4,-2000(a4) # 8000cfa0 <_ZN3TCB7runningE>
    80003778:	02873783          	ld	a5,40(a4)
    8000377c:	00078663          	beqz	a5,80003788 <_ZN3TCB16wrapper_functionEv+0x30>
    80003780:	03073503          	ld	a0,48(a4)
    80003784:	000780e7          	jalr	a5
    thread_exit();
    80003788:	00000097          	auipc	ra,0x0
    8000378c:	f84080e7          	jalr	-124(ra) # 8000370c <_ZN3TCB11thread_exitEv>
}
    80003790:	00813083          	ld	ra,8(sp)
    80003794:	00013403          	ld	s0,0(sp)
    80003798:	01010113          	addi	sp,sp,16
    8000379c:	00008067          	ret

00000000800037a0 <_ZN3TCBnwEm>:

void *TCB::operator new(size_t size) {
    800037a0:	ff010113          	addi	sp,sp,-16
    800037a4:	00113423          	sd	ra,8(sp)
    800037a8:	00813023          	sd	s0,0(sp)
    800037ac:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    800037b0:	fffff097          	auipc	ra,0xfffff
    800037b4:	18c080e7          	jalr	396(ra) # 8000293c <_ZN15MemoryAllocator20get_number_of_blocksEm>
    800037b8:	fffff097          	auipc	ra,0xfffff
    800037bc:	dc0080e7          	jalr	-576(ra) # 80002578 <_ZN15MemoryAllocator9mem_allocEm>
}
    800037c0:	00813083          	ld	ra,8(sp)
    800037c4:	00013403          	ld	s0,0(sp)
    800037c8:	01010113          	addi	sp,sp,16
    800037cc:	00008067          	ret

00000000800037d0 <_ZN3TCBdlEPv>:

void TCB::operator delete(void *addr) {
    800037d0:	ff010113          	addi	sp,sp,-16
    800037d4:	00113423          	sd	ra,8(sp)
    800037d8:	00813023          	sd	s0,0(sp)
    800037dc:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    800037e0:	fffff097          	auipc	ra,0xfffff
    800037e4:	f0c080e7          	jalr	-244(ra) # 800026ec <_ZN15MemoryAllocator8mem_freeEPv>
}
    800037e8:	00813083          	ld	ra,8(sp)
    800037ec:	00013403          	ld	s0,0(sp)
    800037f0:	01010113          	addi	sp,sp,16
    800037f4:	00008067          	ret

00000000800037f8 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>:
int TCB::thread_create(thread_t *handle, void(*start_routine)(void *), void *arg, void *stack_begin_address) {
    800037f8:	fc010113          	addi	sp,sp,-64
    800037fc:	02113c23          	sd	ra,56(sp)
    80003800:	02813823          	sd	s0,48(sp)
    80003804:	02913423          	sd	s1,40(sp)
    80003808:	03213023          	sd	s2,32(sp)
    8000380c:	01313c23          	sd	s3,24(sp)
    80003810:	01413823          	sd	s4,16(sp)
    80003814:	01513423          	sd	s5,8(sp)
    80003818:	04010413          	addi	s0,sp,64
    8000381c:	00050913          	mv	s2,a0
    80003820:	00058993          	mv	s3,a1
    80003824:	00060a13          	mv	s4,a2
    80003828:	00068a93          	mv	s5,a3
    *handle = new TCB(start_routine, arg, stack_begin_address);
    8000382c:	06800513          	li	a0,104
    80003830:	00000097          	auipc	ra,0x0
    80003834:	f70080e7          	jalr	-144(ra) # 800037a0 <_ZN3TCBnwEm>
    80003838:	00050493          	mv	s1,a0
    8000383c:	000a8693          	mv	a3,s5
    80003840:	000a0613          	mv	a2,s4
    80003844:	00098593          	mv	a1,s3
    80003848:	00000097          	auipc	ra,0x0
    8000384c:	c7c080e7          	jalr	-900(ra) # 800034c4 <_ZN3TCBC1EPFvPvES0_S0_>
    80003850:	0200006f          	j	80003870 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_+0x78>
    80003854:	00050913          	mv	s2,a0
    80003858:	00048513          	mv	a0,s1
    8000385c:	00000097          	auipc	ra,0x0
    80003860:	f74080e7          	jalr	-140(ra) # 800037d0 <_ZN3TCBdlEPv>
    80003864:	00090513          	mv	a0,s2
    80003868:	0000b097          	auipc	ra,0xb
    8000386c:	860080e7          	jalr	-1952(ra) # 8000e0c8 <_Unwind_Resume>
    80003870:	00993023          	sd	s1,0(s2)
}
    80003874:	00000513          	li	a0,0
    80003878:	03813083          	ld	ra,56(sp)
    8000387c:	03013403          	ld	s0,48(sp)
    80003880:	02813483          	ld	s1,40(sp)
    80003884:	02013903          	ld	s2,32(sp)
    80003888:	01813983          	ld	s3,24(sp)
    8000388c:	01013a03          	ld	s4,16(sp)
    80003890:	00813a83          	ld	s5,8(sp)
    80003894:	04010113          	addi	sp,sp,64
    80003898:	00008067          	ret

000000008000389c <_ZN3TCBnaEm>:

void *TCB::operator new[](size_t size) {
    8000389c:	ff010113          	addi	sp,sp,-16
    800038a0:	00113423          	sd	ra,8(sp)
    800038a4:	00813023          	sd	s0,0(sp)
    800038a8:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    800038ac:	fffff097          	auipc	ra,0xfffff
    800038b0:	090080e7          	jalr	144(ra) # 8000293c <_ZN15MemoryAllocator20get_number_of_blocksEm>
    800038b4:	fffff097          	auipc	ra,0xfffff
    800038b8:	cc4080e7          	jalr	-828(ra) # 80002578 <_ZN15MemoryAllocator9mem_allocEm>
}
    800038bc:	00813083          	ld	ra,8(sp)
    800038c0:	00013403          	ld	s0,0(sp)
    800038c4:	01010113          	addi	sp,sp,16
    800038c8:	00008067          	ret

00000000800038cc <_ZN3TCBdaEPv>:

void TCB::operator delete[](void *addr) {
    800038cc:	ff010113          	addi	sp,sp,-16
    800038d0:	00113423          	sd	ra,8(sp)
    800038d4:	00813023          	sd	s0,0(sp)
    800038d8:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    800038dc:	fffff097          	auipc	ra,0xfffff
    800038e0:	e10080e7          	jalr	-496(ra) # 800026ec <_ZN15MemoryAllocator8mem_freeEPv>
}
    800038e4:	00813083          	ld	ra,8(sp)
    800038e8:	00013403          	ld	s0,0(sp)
    800038ec:	01010113          	addi	sp,sp,16
    800038f0:	00008067          	ret

00000000800038f4 <_ZNK3TCB11is_finishedEv>:

bool TCB::is_finished() const {
    800038f4:	ff010113          	addi	sp,sp,-16
    800038f8:	00813423          	sd	s0,8(sp)
    800038fc:	01010413          	addi	s0,sp,16
    return status == FINISHED;
    80003900:	02052503          	lw	a0,32(a0)
    80003904:	ffd50513          	addi	a0,a0,-3
}
    80003908:	00153513          	seqz	a0,a0
    8000390c:	00813403          	ld	s0,8(sp)
    80003910:	01010113          	addi	sp,sp,16
    80003914:	00008067          	ret

0000000080003918 <_ZN3TCB21clear_from_timed_waitEb>:

void TCB::clear_from_timed_wait(bool removed_from_timer) {
    80003918:	fe010113          	addi	sp,sp,-32
    8000391c:	00113c23          	sd	ra,24(sp)
    80003920:	00813823          	sd	s0,16(sp)
    80003924:	00913423          	sd	s1,8(sp)
    80003928:	02010413          	addi	s0,sp,32
    8000392c:	00050493          	mv	s1,a0
    if (removed_from_timer) {
    80003930:	02059063          	bnez	a1,80003950 <_ZN3TCB21clear_from_timed_waitEb+0x38>
        sem -> blocked_threads -> remove(this);
        ++sem -> value;
    }
    timed_wait = false;
    80003934:	04048423          	sb	zero,72(s1)
    sem = nullptr;
    80003938:	0604b023          	sd	zero,96(s1)
}
    8000393c:	01813083          	ld	ra,24(sp)
    80003940:	01013403          	ld	s0,16(sp)
    80003944:	00813483          	ld	s1,8(sp)
    80003948:	02010113          	addi	sp,sp,32
    8000394c:	00008067          	ret
        sem -> blocked_threads -> remove(this);
    80003950:	06053783          	ld	a5,96(a0)
    80003954:	00050593          	mv	a1,a0
    80003958:	0087b503          	ld	a0,8(a5)
    8000395c:	00000097          	auipc	ra,0x0
    80003960:	944080e7          	jalr	-1724(ra) # 800032a0 <_ZN10ThreadList6removeEP3TCB>
        ++sem -> value;
    80003964:	0604b703          	ld	a4,96(s1)
    80003968:	01072783          	lw	a5,16(a4)
    8000396c:	0017879b          	addiw	a5,a5,1
    80003970:	00f72823          	sw	a5,16(a4)
    80003974:	fc1ff06f          	j	80003934 <_ZN3TCB21clear_from_timed_waitEb+0x1c>

0000000080003978 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80003978:	fe010113          	addi	sp,sp,-32
    8000397c:	00113c23          	sd	ra,24(sp)
    80003980:	00813823          	sd	s0,16(sp)
    80003984:	00913423          	sd	s1,8(sp)
    80003988:	01213023          	sd	s2,0(sp)
    8000398c:	02010413          	addi	s0,sp,32
    80003990:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80003994:	00000913          	li	s2,0
    80003998:	00c0006f          	j	800039a4 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    8000399c:	ffffe097          	auipc	ra,0xffffe
    800039a0:	a30080e7          	jalr	-1488(ra) # 800013cc <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    800039a4:	ffffe097          	auipc	ra,0xffffe
    800039a8:	c7c080e7          	jalr	-900(ra) # 80001620 <_Z4getcv>
    800039ac:	0005059b          	sext.w	a1,a0
    800039b0:	01b00793          	li	a5,27
    800039b4:	02f58a63          	beq	a1,a5,800039e8 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    800039b8:	0084b503          	ld	a0,8(s1)
    800039bc:	00001097          	auipc	ra,0x1
    800039c0:	66c080e7          	jalr	1644(ra) # 80005028 <_ZN6Buffer3putEi>
        i++;
    800039c4:	0019071b          	addiw	a4,s2,1
    800039c8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800039cc:	0004a683          	lw	a3,0(s1)
    800039d0:	0026979b          	slliw	a5,a3,0x2
    800039d4:	00d787bb          	addw	a5,a5,a3
    800039d8:	0017979b          	slliw	a5,a5,0x1
    800039dc:	02f767bb          	remw	a5,a4,a5
    800039e0:	fc0792e3          	bnez	a5,800039a4 <_ZL16producerKeyboardPv+0x2c>
    800039e4:	fb9ff06f          	j	8000399c <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    800039e8:	00100793          	li	a5,1
    800039ec:	00009717          	auipc	a4,0x9
    800039f0:	5cf72223          	sw	a5,1476(a4) # 8000cfb0 <_ZL9threadEnd>
    data->buffer->put('!');
    800039f4:	02100593          	li	a1,33
    800039f8:	0084b503          	ld	a0,8(s1)
    800039fc:	00001097          	auipc	ra,0x1
    80003a00:	62c080e7          	jalr	1580(ra) # 80005028 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80003a04:	0104b503          	ld	a0,16(s1)
    80003a08:	ffffe097          	auipc	ra,0xffffe
    80003a0c:	ae8080e7          	jalr	-1304(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    80003a10:	01813083          	ld	ra,24(sp)
    80003a14:	01013403          	ld	s0,16(sp)
    80003a18:	00813483          	ld	s1,8(sp)
    80003a1c:	00013903          	ld	s2,0(sp)
    80003a20:	02010113          	addi	sp,sp,32
    80003a24:	00008067          	ret

0000000080003a28 <_ZL8producerPv>:

static void producer(void *arg) {
    80003a28:	fe010113          	addi	sp,sp,-32
    80003a2c:	00113c23          	sd	ra,24(sp)
    80003a30:	00813823          	sd	s0,16(sp)
    80003a34:	00913423          	sd	s1,8(sp)
    80003a38:	01213023          	sd	s2,0(sp)
    80003a3c:	02010413          	addi	s0,sp,32
    80003a40:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003a44:	00000913          	li	s2,0
    80003a48:	00c0006f          	j	80003a54 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003a4c:	ffffe097          	auipc	ra,0xffffe
    80003a50:	980080e7          	jalr	-1664(ra) # 800013cc <_Z15thread_dispatchv>
    while (!threadEnd) {
    80003a54:	00009797          	auipc	a5,0x9
    80003a58:	55c7a783          	lw	a5,1372(a5) # 8000cfb0 <_ZL9threadEnd>
    80003a5c:	02079e63          	bnez	a5,80003a98 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80003a60:	0004a583          	lw	a1,0(s1)
    80003a64:	0305859b          	addiw	a1,a1,48
    80003a68:	0084b503          	ld	a0,8(s1)
    80003a6c:	00001097          	auipc	ra,0x1
    80003a70:	5bc080e7          	jalr	1468(ra) # 80005028 <_ZN6Buffer3putEi>
        i++;
    80003a74:	0019071b          	addiw	a4,s2,1
    80003a78:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003a7c:	0004a683          	lw	a3,0(s1)
    80003a80:	0026979b          	slliw	a5,a3,0x2
    80003a84:	00d787bb          	addw	a5,a5,a3
    80003a88:	0017979b          	slliw	a5,a5,0x1
    80003a8c:	02f767bb          	remw	a5,a4,a5
    80003a90:	fc0792e3          	bnez	a5,80003a54 <_ZL8producerPv+0x2c>
    80003a94:	fb9ff06f          	j	80003a4c <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80003a98:	0104b503          	ld	a0,16(s1)
    80003a9c:	ffffe097          	auipc	ra,0xffffe
    80003aa0:	a54080e7          	jalr	-1452(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    80003aa4:	01813083          	ld	ra,24(sp)
    80003aa8:	01013403          	ld	s0,16(sp)
    80003aac:	00813483          	ld	s1,8(sp)
    80003ab0:	00013903          	ld	s2,0(sp)
    80003ab4:	02010113          	addi	sp,sp,32
    80003ab8:	00008067          	ret

0000000080003abc <_ZL8consumerPv>:

static void consumer(void *arg) {
    80003abc:	fd010113          	addi	sp,sp,-48
    80003ac0:	02113423          	sd	ra,40(sp)
    80003ac4:	02813023          	sd	s0,32(sp)
    80003ac8:	00913c23          	sd	s1,24(sp)
    80003acc:	01213823          	sd	s2,16(sp)
    80003ad0:	01313423          	sd	s3,8(sp)
    80003ad4:	03010413          	addi	s0,sp,48
    80003ad8:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003adc:	00000993          	li	s3,0
    80003ae0:	01c0006f          	j	80003afc <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80003ae4:	ffffe097          	auipc	ra,0xffffe
    80003ae8:	8e8080e7          	jalr	-1816(ra) # 800013cc <_Z15thread_dispatchv>
    80003aec:	0500006f          	j	80003b3c <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80003af0:	00a00513          	li	a0,10
    80003af4:	ffffe097          	auipc	ra,0xffffe
    80003af8:	b78080e7          	jalr	-1160(ra) # 8000166c <_Z4putcc>
    while (!threadEnd) {
    80003afc:	00009797          	auipc	a5,0x9
    80003b00:	4b47a783          	lw	a5,1204(a5) # 8000cfb0 <_ZL9threadEnd>
    80003b04:	06079063          	bnez	a5,80003b64 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80003b08:	00893503          	ld	a0,8(s2)
    80003b0c:	00001097          	auipc	ra,0x1
    80003b10:	5ac080e7          	jalr	1452(ra) # 800050b8 <_ZN6Buffer3getEv>
        i++;
    80003b14:	0019849b          	addiw	s1,s3,1
    80003b18:	0004899b          	sext.w	s3,s1
        putc(key);
    80003b1c:	0ff57513          	andi	a0,a0,255
    80003b20:	ffffe097          	auipc	ra,0xffffe
    80003b24:	b4c080e7          	jalr	-1204(ra) # 8000166c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80003b28:	00092703          	lw	a4,0(s2)
    80003b2c:	0027179b          	slliw	a5,a4,0x2
    80003b30:	00e787bb          	addw	a5,a5,a4
    80003b34:	02f4e7bb          	remw	a5,s1,a5
    80003b38:	fa0786e3          	beqz	a5,80003ae4 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80003b3c:	05000793          	li	a5,80
    80003b40:	02f4e4bb          	remw	s1,s1,a5
    80003b44:	fa049ce3          	bnez	s1,80003afc <_ZL8consumerPv+0x40>
    80003b48:	fa9ff06f          	j	80003af0 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80003b4c:	00893503          	ld	a0,8(s2)
    80003b50:	00001097          	auipc	ra,0x1
    80003b54:	568080e7          	jalr	1384(ra) # 800050b8 <_ZN6Buffer3getEv>
        putc(key);
    80003b58:	0ff57513          	andi	a0,a0,255
    80003b5c:	ffffe097          	auipc	ra,0xffffe
    80003b60:	b10080e7          	jalr	-1264(ra) # 8000166c <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80003b64:	00893503          	ld	a0,8(s2)
    80003b68:	00001097          	auipc	ra,0x1
    80003b6c:	5dc080e7          	jalr	1500(ra) # 80005144 <_ZN6Buffer6getCntEv>
    80003b70:	fca04ee3          	bgtz	a0,80003b4c <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80003b74:	01093503          	ld	a0,16(s2)
    80003b78:	ffffe097          	auipc	ra,0xffffe
    80003b7c:	978080e7          	jalr	-1672(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    80003b80:	02813083          	ld	ra,40(sp)
    80003b84:	02013403          	ld	s0,32(sp)
    80003b88:	01813483          	ld	s1,24(sp)
    80003b8c:	01013903          	ld	s2,16(sp)
    80003b90:	00813983          	ld	s3,8(sp)
    80003b94:	03010113          	addi	sp,sp,48
    80003b98:	00008067          	ret

0000000080003b9c <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80003b9c:	f9010113          	addi	sp,sp,-112
    80003ba0:	06113423          	sd	ra,104(sp)
    80003ba4:	06813023          	sd	s0,96(sp)
    80003ba8:	04913c23          	sd	s1,88(sp)
    80003bac:	05213823          	sd	s2,80(sp)
    80003bb0:	05313423          	sd	s3,72(sp)
    80003bb4:	05413023          	sd	s4,64(sp)
    80003bb8:	03513c23          	sd	s5,56(sp)
    80003bbc:	03613823          	sd	s6,48(sp)
    80003bc0:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80003bc4:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003bc8:	00006517          	auipc	a0,0x6
    80003bcc:	56850513          	addi	a0,a0,1384 # 8000a130 <CONSOLE_STATUS+0x120>
    80003bd0:	00002097          	auipc	ra,0x2
    80003bd4:	540080e7          	jalr	1344(ra) # 80006110 <_Z11printStringPKc>
    getString(input, 30);
    80003bd8:	01e00593          	li	a1,30
    80003bdc:	fa040493          	addi	s1,s0,-96
    80003be0:	00048513          	mv	a0,s1
    80003be4:	00002097          	auipc	ra,0x2
    80003be8:	5b4080e7          	jalr	1460(ra) # 80006198 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003bec:	00048513          	mv	a0,s1
    80003bf0:	00002097          	auipc	ra,0x2
    80003bf4:	680080e7          	jalr	1664(ra) # 80006270 <_Z11stringToIntPKc>
    80003bf8:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003bfc:	00006517          	auipc	a0,0x6
    80003c00:	55450513          	addi	a0,a0,1364 # 8000a150 <CONSOLE_STATUS+0x140>
    80003c04:	00002097          	auipc	ra,0x2
    80003c08:	50c080e7          	jalr	1292(ra) # 80006110 <_Z11printStringPKc>
    getString(input, 30);
    80003c0c:	01e00593          	li	a1,30
    80003c10:	00048513          	mv	a0,s1
    80003c14:	00002097          	auipc	ra,0x2
    80003c18:	584080e7          	jalr	1412(ra) # 80006198 <_Z9getStringPci>
    n = stringToInt(input);
    80003c1c:	00048513          	mv	a0,s1
    80003c20:	00002097          	auipc	ra,0x2
    80003c24:	650080e7          	jalr	1616(ra) # 80006270 <_Z11stringToIntPKc>
    80003c28:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003c2c:	00006517          	auipc	a0,0x6
    80003c30:	54450513          	addi	a0,a0,1348 # 8000a170 <CONSOLE_STATUS+0x160>
    80003c34:	00002097          	auipc	ra,0x2
    80003c38:	4dc080e7          	jalr	1244(ra) # 80006110 <_Z11printStringPKc>
    80003c3c:	00000613          	li	a2,0
    80003c40:	00a00593          	li	a1,10
    80003c44:	00090513          	mv	a0,s2
    80003c48:	00002097          	auipc	ra,0x2
    80003c4c:	678080e7          	jalr	1656(ra) # 800062c0 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003c50:	00006517          	auipc	a0,0x6
    80003c54:	53850513          	addi	a0,a0,1336 # 8000a188 <CONSOLE_STATUS+0x178>
    80003c58:	00002097          	auipc	ra,0x2
    80003c5c:	4b8080e7          	jalr	1208(ra) # 80006110 <_Z11printStringPKc>
    80003c60:	00000613          	li	a2,0
    80003c64:	00a00593          	li	a1,10
    80003c68:	00048513          	mv	a0,s1
    80003c6c:	00002097          	auipc	ra,0x2
    80003c70:	654080e7          	jalr	1620(ra) # 800062c0 <_Z8printIntiii>
    printString(".\n");
    80003c74:	00006517          	auipc	a0,0x6
    80003c78:	52c50513          	addi	a0,a0,1324 # 8000a1a0 <CONSOLE_STATUS+0x190>
    80003c7c:	00002097          	auipc	ra,0x2
    80003c80:	494080e7          	jalr	1172(ra) # 80006110 <_Z11printStringPKc>
    if(threadNum > n) {
    80003c84:	0324c463          	blt	s1,s2,80003cac <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003c88:	03205c63          	blez	s2,80003cc0 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003c8c:	03800513          	li	a0,56
    80003c90:	ffffe097          	auipc	ra,0xffffe
    80003c94:	45c080e7          	jalr	1116(ra) # 800020ec <_Znwm>
    80003c98:	00050a13          	mv	s4,a0
    80003c9c:	00048593          	mv	a1,s1
    80003ca0:	00001097          	auipc	ra,0x1
    80003ca4:	2ec080e7          	jalr	748(ra) # 80004f8c <_ZN6BufferC1Ei>
    80003ca8:	0300006f          	j	80003cd8 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003cac:	00006517          	auipc	a0,0x6
    80003cb0:	4fc50513          	addi	a0,a0,1276 # 8000a1a8 <CONSOLE_STATUS+0x198>
    80003cb4:	00002097          	auipc	ra,0x2
    80003cb8:	45c080e7          	jalr	1116(ra) # 80006110 <_Z11printStringPKc>
        return;
    80003cbc:	0140006f          	j	80003cd0 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003cc0:	00006517          	auipc	a0,0x6
    80003cc4:	52850513          	addi	a0,a0,1320 # 8000a1e8 <CONSOLE_STATUS+0x1d8>
    80003cc8:	00002097          	auipc	ra,0x2
    80003ccc:	448080e7          	jalr	1096(ra) # 80006110 <_Z11printStringPKc>
        return;
    80003cd0:	000b0113          	mv	sp,s6
    80003cd4:	1500006f          	j	80003e24 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003cd8:	00000593          	li	a1,0
    80003cdc:	00009517          	auipc	a0,0x9
    80003ce0:	2dc50513          	addi	a0,a0,732 # 8000cfb8 <_ZL10waitForAll>
    80003ce4:	ffffd097          	auipc	ra,0xffffd
    80003ce8:	724080e7          	jalr	1828(ra) # 80001408 <_Z8sem_openPP3Semj>
    thread_t threads[threadNum];
    80003cec:	00391793          	slli	a5,s2,0x3
    80003cf0:	00f78793          	addi	a5,a5,15
    80003cf4:	ff07f793          	andi	a5,a5,-16
    80003cf8:	40f10133          	sub	sp,sp,a5
    80003cfc:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003d00:	0019071b          	addiw	a4,s2,1
    80003d04:	00171793          	slli	a5,a4,0x1
    80003d08:	00e787b3          	add	a5,a5,a4
    80003d0c:	00379793          	slli	a5,a5,0x3
    80003d10:	00f78793          	addi	a5,a5,15
    80003d14:	ff07f793          	andi	a5,a5,-16
    80003d18:	40f10133          	sub	sp,sp,a5
    80003d1c:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003d20:	00191613          	slli	a2,s2,0x1
    80003d24:	012607b3          	add	a5,a2,s2
    80003d28:	00379793          	slli	a5,a5,0x3
    80003d2c:	00f987b3          	add	a5,s3,a5
    80003d30:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003d34:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003d38:	00009717          	auipc	a4,0x9
    80003d3c:	28073703          	ld	a4,640(a4) # 8000cfb8 <_ZL10waitForAll>
    80003d40:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003d44:	00078613          	mv	a2,a5
    80003d48:	00000597          	auipc	a1,0x0
    80003d4c:	d7458593          	addi	a1,a1,-652 # 80003abc <_ZL8consumerPv>
    80003d50:	f9840513          	addi	a0,s0,-104
    80003d54:	ffffd097          	auipc	ra,0xffffd
    80003d58:	5a4080e7          	jalr	1444(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003d5c:	00000493          	li	s1,0
    80003d60:	0280006f          	j	80003d88 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003d64:	00000597          	auipc	a1,0x0
    80003d68:	c1458593          	addi	a1,a1,-1004 # 80003978 <_ZL16producerKeyboardPv>
                      data + i);
    80003d6c:	00179613          	slli	a2,a5,0x1
    80003d70:	00f60633          	add	a2,a2,a5
    80003d74:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003d78:	00c98633          	add	a2,s3,a2
    80003d7c:	ffffd097          	auipc	ra,0xffffd
    80003d80:	57c080e7          	jalr	1404(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003d84:	0014849b          	addiw	s1,s1,1
    80003d88:	0524d263          	bge	s1,s2,80003dcc <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003d8c:	00149793          	slli	a5,s1,0x1
    80003d90:	009787b3          	add	a5,a5,s1
    80003d94:	00379793          	slli	a5,a5,0x3
    80003d98:	00f987b3          	add	a5,s3,a5
    80003d9c:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003da0:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80003da4:	00009717          	auipc	a4,0x9
    80003da8:	21473703          	ld	a4,532(a4) # 8000cfb8 <_ZL10waitForAll>
    80003dac:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003db0:	00048793          	mv	a5,s1
    80003db4:	00349513          	slli	a0,s1,0x3
    80003db8:	00aa8533          	add	a0,s5,a0
    80003dbc:	fa9054e3          	blez	s1,80003d64 <_Z22producerConsumer_C_APIv+0x1c8>
    80003dc0:	00000597          	auipc	a1,0x0
    80003dc4:	c6858593          	addi	a1,a1,-920 # 80003a28 <_ZL8producerPv>
    80003dc8:	fa5ff06f          	j	80003d6c <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003dcc:	ffffd097          	auipc	ra,0xffffd
    80003dd0:	600080e7          	jalr	1536(ra) # 800013cc <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003dd4:	00000493          	li	s1,0
    80003dd8:	00994e63          	blt	s2,s1,80003df4 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003ddc:	00009517          	auipc	a0,0x9
    80003de0:	1dc53503          	ld	a0,476(a0) # 8000cfb8 <_ZL10waitForAll>
    80003de4:	ffffd097          	auipc	ra,0xffffd
    80003de8:	6c0080e7          	jalr	1728(ra) # 800014a4 <_Z8sem_waitP3Sem>
    for (int i = 0; i <= threadNum; i++) {
    80003dec:	0014849b          	addiw	s1,s1,1
    80003df0:	fe9ff06f          	j	80003dd8 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003df4:	00009517          	auipc	a0,0x9
    80003df8:	1c453503          	ld	a0,452(a0) # 8000cfb8 <_ZL10waitForAll>
    80003dfc:	ffffd097          	auipc	ra,0xffffd
    80003e00:	65c080e7          	jalr	1628(ra) # 80001458 <_Z9sem_closeP3Sem>
    delete buffer;
    80003e04:	000a0e63          	beqz	s4,80003e20 <_Z22producerConsumer_C_APIv+0x284>
    80003e08:	000a0513          	mv	a0,s4
    80003e0c:	00001097          	auipc	ra,0x1
    80003e10:	3c0080e7          	jalr	960(ra) # 800051cc <_ZN6BufferD1Ev>
    80003e14:	000a0513          	mv	a0,s4
    80003e18:	ffffe097          	auipc	ra,0xffffe
    80003e1c:	2fc080e7          	jalr	764(ra) # 80002114 <_ZdlPv>
    80003e20:	000b0113          	mv	sp,s6

}
    80003e24:	f9040113          	addi	sp,s0,-112
    80003e28:	06813083          	ld	ra,104(sp)
    80003e2c:	06013403          	ld	s0,96(sp)
    80003e30:	05813483          	ld	s1,88(sp)
    80003e34:	05013903          	ld	s2,80(sp)
    80003e38:	04813983          	ld	s3,72(sp)
    80003e3c:	04013a03          	ld	s4,64(sp)
    80003e40:	03813a83          	ld	s5,56(sp)
    80003e44:	03013b03          	ld	s6,48(sp)
    80003e48:	07010113          	addi	sp,sp,112
    80003e4c:	00008067          	ret
    80003e50:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003e54:	000a0513          	mv	a0,s4
    80003e58:	ffffe097          	auipc	ra,0xffffe
    80003e5c:	2bc080e7          	jalr	700(ra) # 80002114 <_ZdlPv>
    80003e60:	00048513          	mv	a0,s1
    80003e64:	0000a097          	auipc	ra,0xa
    80003e68:	264080e7          	jalr	612(ra) # 8000e0c8 <_Unwind_Resume>

0000000080003e6c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003e6c:	fe010113          	addi	sp,sp,-32
    80003e70:	00113c23          	sd	ra,24(sp)
    80003e74:	00813823          	sd	s0,16(sp)
    80003e78:	00913423          	sd	s1,8(sp)
    80003e7c:	01213023          	sd	s2,0(sp)
    80003e80:	02010413          	addi	s0,sp,32
    80003e84:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003e88:	00100793          	li	a5,1
    80003e8c:	02a7f863          	bgeu	a5,a0,80003ebc <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003e90:	00a00793          	li	a5,10
    80003e94:	02f577b3          	remu	a5,a0,a5
    80003e98:	02078e63          	beqz	a5,80003ed4 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003e9c:	fff48513          	addi	a0,s1,-1
    80003ea0:	00000097          	auipc	ra,0x0
    80003ea4:	fcc080e7          	jalr	-52(ra) # 80003e6c <_ZL9fibonaccim>
    80003ea8:	00050913          	mv	s2,a0
    80003eac:	ffe48513          	addi	a0,s1,-2
    80003eb0:	00000097          	auipc	ra,0x0
    80003eb4:	fbc080e7          	jalr	-68(ra) # 80003e6c <_ZL9fibonaccim>
    80003eb8:	00a90533          	add	a0,s2,a0
}
    80003ebc:	01813083          	ld	ra,24(sp)
    80003ec0:	01013403          	ld	s0,16(sp)
    80003ec4:	00813483          	ld	s1,8(sp)
    80003ec8:	00013903          	ld	s2,0(sp)
    80003ecc:	02010113          	addi	sp,sp,32
    80003ed0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003ed4:	ffffd097          	auipc	ra,0xffffd
    80003ed8:	4f8080e7          	jalr	1272(ra) # 800013cc <_Z15thread_dispatchv>
    80003edc:	fc1ff06f          	j	80003e9c <_ZL9fibonaccim+0x30>

0000000080003ee0 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003ee0:	fe010113          	addi	sp,sp,-32
    80003ee4:	00113c23          	sd	ra,24(sp)
    80003ee8:	00813823          	sd	s0,16(sp)
    80003eec:	00913423          	sd	s1,8(sp)
    80003ef0:	01213023          	sd	s2,0(sp)
    80003ef4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003ef8:	00000913          	li	s2,0
    80003efc:	0380006f          	j	80003f34 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003f00:	ffffd097          	auipc	ra,0xffffd
    80003f04:	4cc080e7          	jalr	1228(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003f08:	00148493          	addi	s1,s1,1
    80003f0c:	000027b7          	lui	a5,0x2
    80003f10:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003f14:	0097ee63          	bltu	a5,s1,80003f30 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003f18:	00000713          	li	a4,0
    80003f1c:	000077b7          	lui	a5,0x7
    80003f20:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003f24:	fce7eee3          	bltu	a5,a4,80003f00 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003f28:	00170713          	addi	a4,a4,1
    80003f2c:	ff1ff06f          	j	80003f1c <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003f30:	00190913          	addi	s2,s2,1
    80003f34:	00900793          	li	a5,9
    80003f38:	0527e063          	bltu	a5,s2,80003f78 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003f3c:	00006517          	auipc	a0,0x6
    80003f40:	2dc50513          	addi	a0,a0,732 # 8000a218 <CONSOLE_STATUS+0x208>
    80003f44:	00002097          	auipc	ra,0x2
    80003f48:	1cc080e7          	jalr	460(ra) # 80006110 <_Z11printStringPKc>
    80003f4c:	00000613          	li	a2,0
    80003f50:	00a00593          	li	a1,10
    80003f54:	0009051b          	sext.w	a0,s2
    80003f58:	00002097          	auipc	ra,0x2
    80003f5c:	368080e7          	jalr	872(ra) # 800062c0 <_Z8printIntiii>
    80003f60:	00006517          	auipc	a0,0x6
    80003f64:	51850513          	addi	a0,a0,1304 # 8000a478 <CONSOLE_STATUS+0x468>
    80003f68:	00002097          	auipc	ra,0x2
    80003f6c:	1a8080e7          	jalr	424(ra) # 80006110 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003f70:	00000493          	li	s1,0
    80003f74:	f99ff06f          	j	80003f0c <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003f78:	00006517          	auipc	a0,0x6
    80003f7c:	2a850513          	addi	a0,a0,680 # 8000a220 <CONSOLE_STATUS+0x210>
    80003f80:	00002097          	auipc	ra,0x2
    80003f84:	190080e7          	jalr	400(ra) # 80006110 <_Z11printStringPKc>
    finishedA = true;
    80003f88:	00100793          	li	a5,1
    80003f8c:	00009717          	auipc	a4,0x9
    80003f90:	02f70a23          	sb	a5,52(a4) # 8000cfc0 <_ZL9finishedA>
}
    80003f94:	01813083          	ld	ra,24(sp)
    80003f98:	01013403          	ld	s0,16(sp)
    80003f9c:	00813483          	ld	s1,8(sp)
    80003fa0:	00013903          	ld	s2,0(sp)
    80003fa4:	02010113          	addi	sp,sp,32
    80003fa8:	00008067          	ret

0000000080003fac <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003fac:	fe010113          	addi	sp,sp,-32
    80003fb0:	00113c23          	sd	ra,24(sp)
    80003fb4:	00813823          	sd	s0,16(sp)
    80003fb8:	00913423          	sd	s1,8(sp)
    80003fbc:	01213023          	sd	s2,0(sp)
    80003fc0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003fc4:	00000913          	li	s2,0
    80003fc8:	0380006f          	j	80004000 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003fcc:	ffffd097          	auipc	ra,0xffffd
    80003fd0:	400080e7          	jalr	1024(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003fd4:	00148493          	addi	s1,s1,1
    80003fd8:	000027b7          	lui	a5,0x2
    80003fdc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003fe0:	0097ee63          	bltu	a5,s1,80003ffc <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003fe4:	00000713          	li	a4,0
    80003fe8:	000077b7          	lui	a5,0x7
    80003fec:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003ff0:	fce7eee3          	bltu	a5,a4,80003fcc <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003ff4:	00170713          	addi	a4,a4,1
    80003ff8:	ff1ff06f          	j	80003fe8 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003ffc:	00190913          	addi	s2,s2,1
    80004000:	00f00793          	li	a5,15
    80004004:	0527e063          	bltu	a5,s2,80004044 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004008:	00006517          	auipc	a0,0x6
    8000400c:	22850513          	addi	a0,a0,552 # 8000a230 <CONSOLE_STATUS+0x220>
    80004010:	00002097          	auipc	ra,0x2
    80004014:	100080e7          	jalr	256(ra) # 80006110 <_Z11printStringPKc>
    80004018:	00000613          	li	a2,0
    8000401c:	00a00593          	li	a1,10
    80004020:	0009051b          	sext.w	a0,s2
    80004024:	00002097          	auipc	ra,0x2
    80004028:	29c080e7          	jalr	668(ra) # 800062c0 <_Z8printIntiii>
    8000402c:	00006517          	auipc	a0,0x6
    80004030:	44c50513          	addi	a0,a0,1100 # 8000a478 <CONSOLE_STATUS+0x468>
    80004034:	00002097          	auipc	ra,0x2
    80004038:	0dc080e7          	jalr	220(ra) # 80006110 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000403c:	00000493          	li	s1,0
    80004040:	f99ff06f          	j	80003fd8 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80004044:	00006517          	auipc	a0,0x6
    80004048:	1f450513          	addi	a0,a0,500 # 8000a238 <CONSOLE_STATUS+0x228>
    8000404c:	00002097          	auipc	ra,0x2
    80004050:	0c4080e7          	jalr	196(ra) # 80006110 <_Z11printStringPKc>
    finishedB = true;
    80004054:	00100793          	li	a5,1
    80004058:	00009717          	auipc	a4,0x9
    8000405c:	f6f704a3          	sb	a5,-151(a4) # 8000cfc1 <_ZL9finishedB>
    thread_dispatch();
    80004060:	ffffd097          	auipc	ra,0xffffd
    80004064:	36c080e7          	jalr	876(ra) # 800013cc <_Z15thread_dispatchv>
}
    80004068:	01813083          	ld	ra,24(sp)
    8000406c:	01013403          	ld	s0,16(sp)
    80004070:	00813483          	ld	s1,8(sp)
    80004074:	00013903          	ld	s2,0(sp)
    80004078:	02010113          	addi	sp,sp,32
    8000407c:	00008067          	ret

0000000080004080 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80004080:	fe010113          	addi	sp,sp,-32
    80004084:	00113c23          	sd	ra,24(sp)
    80004088:	00813823          	sd	s0,16(sp)
    8000408c:	00913423          	sd	s1,8(sp)
    80004090:	01213023          	sd	s2,0(sp)
    80004094:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004098:	00000493          	li	s1,0
    8000409c:	0400006f          	j	800040dc <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800040a0:	00006517          	auipc	a0,0x6
    800040a4:	1a850513          	addi	a0,a0,424 # 8000a248 <CONSOLE_STATUS+0x238>
    800040a8:	00002097          	auipc	ra,0x2
    800040ac:	068080e7          	jalr	104(ra) # 80006110 <_Z11printStringPKc>
    800040b0:	00000613          	li	a2,0
    800040b4:	00a00593          	li	a1,10
    800040b8:	00048513          	mv	a0,s1
    800040bc:	00002097          	auipc	ra,0x2
    800040c0:	204080e7          	jalr	516(ra) # 800062c0 <_Z8printIntiii>
    800040c4:	00006517          	auipc	a0,0x6
    800040c8:	3b450513          	addi	a0,a0,948 # 8000a478 <CONSOLE_STATUS+0x468>
    800040cc:	00002097          	auipc	ra,0x2
    800040d0:	044080e7          	jalr	68(ra) # 80006110 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800040d4:	0014849b          	addiw	s1,s1,1
    800040d8:	0ff4f493          	andi	s1,s1,255
    800040dc:	00200793          	li	a5,2
    800040e0:	fc97f0e3          	bgeu	a5,s1,800040a0 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    800040e4:	00006517          	auipc	a0,0x6
    800040e8:	16c50513          	addi	a0,a0,364 # 8000a250 <CONSOLE_STATUS+0x240>
    800040ec:	00002097          	auipc	ra,0x2
    800040f0:	024080e7          	jalr	36(ra) # 80006110 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800040f4:	00700313          	li	t1,7
    thread_dispatch();
    800040f8:	ffffd097          	auipc	ra,0xffffd
    800040fc:	2d4080e7          	jalr	724(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004100:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80004104:	00006517          	auipc	a0,0x6
    80004108:	15c50513          	addi	a0,a0,348 # 8000a260 <CONSOLE_STATUS+0x250>
    8000410c:	00002097          	auipc	ra,0x2
    80004110:	004080e7          	jalr	4(ra) # 80006110 <_Z11printStringPKc>
    80004114:	00000613          	li	a2,0
    80004118:	00a00593          	li	a1,10
    8000411c:	0009051b          	sext.w	a0,s2
    80004120:	00002097          	auipc	ra,0x2
    80004124:	1a0080e7          	jalr	416(ra) # 800062c0 <_Z8printIntiii>
    80004128:	00006517          	auipc	a0,0x6
    8000412c:	35050513          	addi	a0,a0,848 # 8000a478 <CONSOLE_STATUS+0x468>
    80004130:	00002097          	auipc	ra,0x2
    80004134:	fe0080e7          	jalr	-32(ra) # 80006110 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80004138:	00c00513          	li	a0,12
    8000413c:	00000097          	auipc	ra,0x0
    80004140:	d30080e7          	jalr	-720(ra) # 80003e6c <_ZL9fibonaccim>
    80004144:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004148:	00006517          	auipc	a0,0x6
    8000414c:	12050513          	addi	a0,a0,288 # 8000a268 <CONSOLE_STATUS+0x258>
    80004150:	00002097          	auipc	ra,0x2
    80004154:	fc0080e7          	jalr	-64(ra) # 80006110 <_Z11printStringPKc>
    80004158:	00000613          	li	a2,0
    8000415c:	00a00593          	li	a1,10
    80004160:	0009051b          	sext.w	a0,s2
    80004164:	00002097          	auipc	ra,0x2
    80004168:	15c080e7          	jalr	348(ra) # 800062c0 <_Z8printIntiii>
    8000416c:	00006517          	auipc	a0,0x6
    80004170:	30c50513          	addi	a0,a0,780 # 8000a478 <CONSOLE_STATUS+0x468>
    80004174:	00002097          	auipc	ra,0x2
    80004178:	f9c080e7          	jalr	-100(ra) # 80006110 <_Z11printStringPKc>
    8000417c:	0400006f          	j	800041bc <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004180:	00006517          	auipc	a0,0x6
    80004184:	0c850513          	addi	a0,a0,200 # 8000a248 <CONSOLE_STATUS+0x238>
    80004188:	00002097          	auipc	ra,0x2
    8000418c:	f88080e7          	jalr	-120(ra) # 80006110 <_Z11printStringPKc>
    80004190:	00000613          	li	a2,0
    80004194:	00a00593          	li	a1,10
    80004198:	00048513          	mv	a0,s1
    8000419c:	00002097          	auipc	ra,0x2
    800041a0:	124080e7          	jalr	292(ra) # 800062c0 <_Z8printIntiii>
    800041a4:	00006517          	auipc	a0,0x6
    800041a8:	2d450513          	addi	a0,a0,724 # 8000a478 <CONSOLE_STATUS+0x468>
    800041ac:	00002097          	auipc	ra,0x2
    800041b0:	f64080e7          	jalr	-156(ra) # 80006110 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800041b4:	0014849b          	addiw	s1,s1,1
    800041b8:	0ff4f493          	andi	s1,s1,255
    800041bc:	00500793          	li	a5,5
    800041c0:	fc97f0e3          	bgeu	a5,s1,80004180 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    800041c4:	00006517          	auipc	a0,0x6
    800041c8:	05c50513          	addi	a0,a0,92 # 8000a220 <CONSOLE_STATUS+0x210>
    800041cc:	00002097          	auipc	ra,0x2
    800041d0:	f44080e7          	jalr	-188(ra) # 80006110 <_Z11printStringPKc>
    finishedC = true;
    800041d4:	00100793          	li	a5,1
    800041d8:	00009717          	auipc	a4,0x9
    800041dc:	def70523          	sb	a5,-534(a4) # 8000cfc2 <_ZL9finishedC>
    thread_dispatch();
    800041e0:	ffffd097          	auipc	ra,0xffffd
    800041e4:	1ec080e7          	jalr	492(ra) # 800013cc <_Z15thread_dispatchv>
}
    800041e8:	01813083          	ld	ra,24(sp)
    800041ec:	01013403          	ld	s0,16(sp)
    800041f0:	00813483          	ld	s1,8(sp)
    800041f4:	00013903          	ld	s2,0(sp)
    800041f8:	02010113          	addi	sp,sp,32
    800041fc:	00008067          	ret

0000000080004200 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80004200:	fe010113          	addi	sp,sp,-32
    80004204:	00113c23          	sd	ra,24(sp)
    80004208:	00813823          	sd	s0,16(sp)
    8000420c:	00913423          	sd	s1,8(sp)
    80004210:	01213023          	sd	s2,0(sp)
    80004214:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004218:	00a00493          	li	s1,10
    8000421c:	0400006f          	j	8000425c <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004220:	00006517          	auipc	a0,0x6
    80004224:	05850513          	addi	a0,a0,88 # 8000a278 <CONSOLE_STATUS+0x268>
    80004228:	00002097          	auipc	ra,0x2
    8000422c:	ee8080e7          	jalr	-280(ra) # 80006110 <_Z11printStringPKc>
    80004230:	00000613          	li	a2,0
    80004234:	00a00593          	li	a1,10
    80004238:	00048513          	mv	a0,s1
    8000423c:	00002097          	auipc	ra,0x2
    80004240:	084080e7          	jalr	132(ra) # 800062c0 <_Z8printIntiii>
    80004244:	00006517          	auipc	a0,0x6
    80004248:	23450513          	addi	a0,a0,564 # 8000a478 <CONSOLE_STATUS+0x468>
    8000424c:	00002097          	auipc	ra,0x2
    80004250:	ec4080e7          	jalr	-316(ra) # 80006110 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004254:	0014849b          	addiw	s1,s1,1
    80004258:	0ff4f493          	andi	s1,s1,255
    8000425c:	00c00793          	li	a5,12
    80004260:	fc97f0e3          	bgeu	a5,s1,80004220 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80004264:	00006517          	auipc	a0,0x6
    80004268:	01c50513          	addi	a0,a0,28 # 8000a280 <CONSOLE_STATUS+0x270>
    8000426c:	00002097          	auipc	ra,0x2
    80004270:	ea4080e7          	jalr	-348(ra) # 80006110 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004274:	00500313          	li	t1,5
    thread_dispatch();
    80004278:	ffffd097          	auipc	ra,0xffffd
    8000427c:	154080e7          	jalr	340(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004280:	01000513          	li	a0,16
    80004284:	00000097          	auipc	ra,0x0
    80004288:	be8080e7          	jalr	-1048(ra) # 80003e6c <_ZL9fibonaccim>
    8000428c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004290:	00006517          	auipc	a0,0x6
    80004294:	00050513          	mv	a0,a0
    80004298:	00002097          	auipc	ra,0x2
    8000429c:	e78080e7          	jalr	-392(ra) # 80006110 <_Z11printStringPKc>
    800042a0:	00000613          	li	a2,0
    800042a4:	00a00593          	li	a1,10
    800042a8:	0009051b          	sext.w	a0,s2
    800042ac:	00002097          	auipc	ra,0x2
    800042b0:	014080e7          	jalr	20(ra) # 800062c0 <_Z8printIntiii>
    800042b4:	00006517          	auipc	a0,0x6
    800042b8:	1c450513          	addi	a0,a0,452 # 8000a478 <CONSOLE_STATUS+0x468>
    800042bc:	00002097          	auipc	ra,0x2
    800042c0:	e54080e7          	jalr	-428(ra) # 80006110 <_Z11printStringPKc>
    800042c4:	0400006f          	j	80004304 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800042c8:	00006517          	auipc	a0,0x6
    800042cc:	fb050513          	addi	a0,a0,-80 # 8000a278 <CONSOLE_STATUS+0x268>
    800042d0:	00002097          	auipc	ra,0x2
    800042d4:	e40080e7          	jalr	-448(ra) # 80006110 <_Z11printStringPKc>
    800042d8:	00000613          	li	a2,0
    800042dc:	00a00593          	li	a1,10
    800042e0:	00048513          	mv	a0,s1
    800042e4:	00002097          	auipc	ra,0x2
    800042e8:	fdc080e7          	jalr	-36(ra) # 800062c0 <_Z8printIntiii>
    800042ec:	00006517          	auipc	a0,0x6
    800042f0:	18c50513          	addi	a0,a0,396 # 8000a478 <CONSOLE_STATUS+0x468>
    800042f4:	00002097          	auipc	ra,0x2
    800042f8:	e1c080e7          	jalr	-484(ra) # 80006110 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800042fc:	0014849b          	addiw	s1,s1,1
    80004300:	0ff4f493          	andi	s1,s1,255
    80004304:	00f00793          	li	a5,15
    80004308:	fc97f0e3          	bgeu	a5,s1,800042c8 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    8000430c:	00006517          	auipc	a0,0x6
    80004310:	f9450513          	addi	a0,a0,-108 # 8000a2a0 <CONSOLE_STATUS+0x290>
    80004314:	00002097          	auipc	ra,0x2
    80004318:	dfc080e7          	jalr	-516(ra) # 80006110 <_Z11printStringPKc>
    finishedD = true;
    8000431c:	00100793          	li	a5,1
    80004320:	00009717          	auipc	a4,0x9
    80004324:	caf701a3          	sb	a5,-861(a4) # 8000cfc3 <_ZL9finishedD>
    thread_dispatch();
    80004328:	ffffd097          	auipc	ra,0xffffd
    8000432c:	0a4080e7          	jalr	164(ra) # 800013cc <_Z15thread_dispatchv>
}
    80004330:	01813083          	ld	ra,24(sp)
    80004334:	01013403          	ld	s0,16(sp)
    80004338:	00813483          	ld	s1,8(sp)
    8000433c:	00013903          	ld	s2,0(sp)
    80004340:	02010113          	addi	sp,sp,32
    80004344:	00008067          	ret

0000000080004348 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80004348:	fc010113          	addi	sp,sp,-64
    8000434c:	02113c23          	sd	ra,56(sp)
    80004350:	02813823          	sd	s0,48(sp)
    80004354:	02913423          	sd	s1,40(sp)
    80004358:	03213023          	sd	s2,32(sp)
    8000435c:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80004360:	02000513          	li	a0,32
    80004364:	ffffe097          	auipc	ra,0xffffe
    80004368:	d88080e7          	jalr	-632(ra) # 800020ec <_Znwm>
    8000436c:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80004370:	ffffe097          	auipc	ra,0xffffe
    80004374:	e7c080e7          	jalr	-388(ra) # 800021ec <_ZN6ThreadC1Ev>
    80004378:	00009797          	auipc	a5,0x9
    8000437c:	99878793          	addi	a5,a5,-1640 # 8000cd10 <_ZTV7WorkerA+0x10>
    80004380:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80004384:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80004388:	00006517          	auipc	a0,0x6
    8000438c:	f2850513          	addi	a0,a0,-216 # 8000a2b0 <CONSOLE_STATUS+0x2a0>
    80004390:	00002097          	auipc	ra,0x2
    80004394:	d80080e7          	jalr	-640(ra) # 80006110 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80004398:	02000513          	li	a0,32
    8000439c:	ffffe097          	auipc	ra,0xffffe
    800043a0:	d50080e7          	jalr	-688(ra) # 800020ec <_Znwm>
    800043a4:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    800043a8:	ffffe097          	auipc	ra,0xffffe
    800043ac:	e44080e7          	jalr	-444(ra) # 800021ec <_ZN6ThreadC1Ev>
    800043b0:	00009797          	auipc	a5,0x9
    800043b4:	98878793          	addi	a5,a5,-1656 # 8000cd38 <_ZTV7WorkerB+0x10>
    800043b8:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    800043bc:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    800043c0:	00006517          	auipc	a0,0x6
    800043c4:	f0850513          	addi	a0,a0,-248 # 8000a2c8 <CONSOLE_STATUS+0x2b8>
    800043c8:	00002097          	auipc	ra,0x2
    800043cc:	d48080e7          	jalr	-696(ra) # 80006110 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    800043d0:	02000513          	li	a0,32
    800043d4:	ffffe097          	auipc	ra,0xffffe
    800043d8:	d18080e7          	jalr	-744(ra) # 800020ec <_Znwm>
    800043dc:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    800043e0:	ffffe097          	auipc	ra,0xffffe
    800043e4:	e0c080e7          	jalr	-500(ra) # 800021ec <_ZN6ThreadC1Ev>
    800043e8:	00009797          	auipc	a5,0x9
    800043ec:	97878793          	addi	a5,a5,-1672 # 8000cd60 <_ZTV7WorkerC+0x10>
    800043f0:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    800043f4:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    800043f8:	00006517          	auipc	a0,0x6
    800043fc:	ee850513          	addi	a0,a0,-280 # 8000a2e0 <CONSOLE_STATUS+0x2d0>
    80004400:	00002097          	auipc	ra,0x2
    80004404:	d10080e7          	jalr	-752(ra) # 80006110 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80004408:	02000513          	li	a0,32
    8000440c:	ffffe097          	auipc	ra,0xffffe
    80004410:	ce0080e7          	jalr	-800(ra) # 800020ec <_Znwm>
    80004414:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80004418:	ffffe097          	auipc	ra,0xffffe
    8000441c:	dd4080e7          	jalr	-556(ra) # 800021ec <_ZN6ThreadC1Ev>
    80004420:	00009797          	auipc	a5,0x9
    80004424:	96878793          	addi	a5,a5,-1688 # 8000cd88 <_ZTV7WorkerD+0x10>
    80004428:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    8000442c:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80004430:	00006517          	auipc	a0,0x6
    80004434:	ec850513          	addi	a0,a0,-312 # 8000a2f8 <CONSOLE_STATUS+0x2e8>
    80004438:	00002097          	auipc	ra,0x2
    8000443c:	cd8080e7          	jalr	-808(ra) # 80006110 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80004440:	00000493          	li	s1,0
    80004444:	00300793          	li	a5,3
    80004448:	0297c663          	blt	a5,s1,80004474 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    8000444c:	00349793          	slli	a5,s1,0x3
    80004450:	fe040713          	addi	a4,s0,-32
    80004454:	00f707b3          	add	a5,a4,a5
    80004458:	fe07b503          	ld	a0,-32(a5)
    8000445c:	ffffe097          	auipc	ra,0xffffe
    80004460:	dc0080e7          	jalr	-576(ra) # 8000221c <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80004464:	0014849b          	addiw	s1,s1,1
    80004468:	fddff06f          	j	80004444 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    8000446c:	ffffe097          	auipc	ra,0xffffe
    80004470:	de8080e7          	jalr	-536(ra) # 80002254 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004474:	00009797          	auipc	a5,0x9
    80004478:	b4c7c783          	lbu	a5,-1204(a5) # 8000cfc0 <_ZL9finishedA>
    8000447c:	fe0788e3          	beqz	a5,8000446c <_Z20Threads_CPP_API_testv+0x124>
    80004480:	00009797          	auipc	a5,0x9
    80004484:	b417c783          	lbu	a5,-1215(a5) # 8000cfc1 <_ZL9finishedB>
    80004488:	fe0782e3          	beqz	a5,8000446c <_Z20Threads_CPP_API_testv+0x124>
    8000448c:	00009797          	auipc	a5,0x9
    80004490:	b367c783          	lbu	a5,-1226(a5) # 8000cfc2 <_ZL9finishedC>
    80004494:	fc078ce3          	beqz	a5,8000446c <_Z20Threads_CPP_API_testv+0x124>
    80004498:	00009797          	auipc	a5,0x9
    8000449c:	b2b7c783          	lbu	a5,-1237(a5) # 8000cfc3 <_ZL9finishedD>
    800044a0:	fc0786e3          	beqz	a5,8000446c <_Z20Threads_CPP_API_testv+0x124>
    800044a4:	fc040493          	addi	s1,s0,-64
    800044a8:	0080006f          	j	800044b0 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    800044ac:	00848493          	addi	s1,s1,8
    800044b0:	fe040793          	addi	a5,s0,-32
    800044b4:	08f48663          	beq	s1,a5,80004540 <_Z20Threads_CPP_API_testv+0x1f8>
    800044b8:	0004b503          	ld	a0,0(s1)
    800044bc:	fe0508e3          	beqz	a0,800044ac <_Z20Threads_CPP_API_testv+0x164>
    800044c0:	00053783          	ld	a5,0(a0)
    800044c4:	0087b783          	ld	a5,8(a5)
    800044c8:	000780e7          	jalr	a5
    800044cc:	fe1ff06f          	j	800044ac <_Z20Threads_CPP_API_testv+0x164>
    800044d0:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    800044d4:	00048513          	mv	a0,s1
    800044d8:	ffffe097          	auipc	ra,0xffffe
    800044dc:	c3c080e7          	jalr	-964(ra) # 80002114 <_ZdlPv>
    800044e0:	00090513          	mv	a0,s2
    800044e4:	0000a097          	auipc	ra,0xa
    800044e8:	be4080e7          	jalr	-1052(ra) # 8000e0c8 <_Unwind_Resume>
    800044ec:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    800044f0:	00048513          	mv	a0,s1
    800044f4:	ffffe097          	auipc	ra,0xffffe
    800044f8:	c20080e7          	jalr	-992(ra) # 80002114 <_ZdlPv>
    800044fc:	00090513          	mv	a0,s2
    80004500:	0000a097          	auipc	ra,0xa
    80004504:	bc8080e7          	jalr	-1080(ra) # 8000e0c8 <_Unwind_Resume>
    80004508:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    8000450c:	00048513          	mv	a0,s1
    80004510:	ffffe097          	auipc	ra,0xffffe
    80004514:	c04080e7          	jalr	-1020(ra) # 80002114 <_ZdlPv>
    80004518:	00090513          	mv	a0,s2
    8000451c:	0000a097          	auipc	ra,0xa
    80004520:	bac080e7          	jalr	-1108(ra) # 8000e0c8 <_Unwind_Resume>
    80004524:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80004528:	00048513          	mv	a0,s1
    8000452c:	ffffe097          	auipc	ra,0xffffe
    80004530:	be8080e7          	jalr	-1048(ra) # 80002114 <_ZdlPv>
    80004534:	00090513          	mv	a0,s2
    80004538:	0000a097          	auipc	ra,0xa
    8000453c:	b90080e7          	jalr	-1136(ra) # 8000e0c8 <_Unwind_Resume>
}
    80004540:	03813083          	ld	ra,56(sp)
    80004544:	03013403          	ld	s0,48(sp)
    80004548:	02813483          	ld	s1,40(sp)
    8000454c:	02013903          	ld	s2,32(sp)
    80004550:	04010113          	addi	sp,sp,64
    80004554:	00008067          	ret

0000000080004558 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80004558:	ff010113          	addi	sp,sp,-16
    8000455c:	00113423          	sd	ra,8(sp)
    80004560:	00813023          	sd	s0,0(sp)
    80004564:	01010413          	addi	s0,sp,16
    80004568:	00008797          	auipc	a5,0x8
    8000456c:	7a878793          	addi	a5,a5,1960 # 8000cd10 <_ZTV7WorkerA+0x10>
    80004570:	00f53023          	sd	a5,0(a0)
    80004574:	ffffe097          	auipc	ra,0xffffe
    80004578:	aa8080e7          	jalr	-1368(ra) # 8000201c <_ZN6ThreadD1Ev>
    8000457c:	00813083          	ld	ra,8(sp)
    80004580:	00013403          	ld	s0,0(sp)
    80004584:	01010113          	addi	sp,sp,16
    80004588:	00008067          	ret

000000008000458c <_ZN7WorkerAD0Ev>:
    8000458c:	fe010113          	addi	sp,sp,-32
    80004590:	00113c23          	sd	ra,24(sp)
    80004594:	00813823          	sd	s0,16(sp)
    80004598:	00913423          	sd	s1,8(sp)
    8000459c:	02010413          	addi	s0,sp,32
    800045a0:	00050493          	mv	s1,a0
    800045a4:	00008797          	auipc	a5,0x8
    800045a8:	76c78793          	addi	a5,a5,1900 # 8000cd10 <_ZTV7WorkerA+0x10>
    800045ac:	00f53023          	sd	a5,0(a0)
    800045b0:	ffffe097          	auipc	ra,0xffffe
    800045b4:	a6c080e7          	jalr	-1428(ra) # 8000201c <_ZN6ThreadD1Ev>
    800045b8:	00048513          	mv	a0,s1
    800045bc:	ffffe097          	auipc	ra,0xffffe
    800045c0:	b58080e7          	jalr	-1192(ra) # 80002114 <_ZdlPv>
    800045c4:	01813083          	ld	ra,24(sp)
    800045c8:	01013403          	ld	s0,16(sp)
    800045cc:	00813483          	ld	s1,8(sp)
    800045d0:	02010113          	addi	sp,sp,32
    800045d4:	00008067          	ret

00000000800045d8 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800045d8:	ff010113          	addi	sp,sp,-16
    800045dc:	00113423          	sd	ra,8(sp)
    800045e0:	00813023          	sd	s0,0(sp)
    800045e4:	01010413          	addi	s0,sp,16
    800045e8:	00008797          	auipc	a5,0x8
    800045ec:	75078793          	addi	a5,a5,1872 # 8000cd38 <_ZTV7WorkerB+0x10>
    800045f0:	00f53023          	sd	a5,0(a0)
    800045f4:	ffffe097          	auipc	ra,0xffffe
    800045f8:	a28080e7          	jalr	-1496(ra) # 8000201c <_ZN6ThreadD1Ev>
    800045fc:	00813083          	ld	ra,8(sp)
    80004600:	00013403          	ld	s0,0(sp)
    80004604:	01010113          	addi	sp,sp,16
    80004608:	00008067          	ret

000000008000460c <_ZN7WorkerBD0Ev>:
    8000460c:	fe010113          	addi	sp,sp,-32
    80004610:	00113c23          	sd	ra,24(sp)
    80004614:	00813823          	sd	s0,16(sp)
    80004618:	00913423          	sd	s1,8(sp)
    8000461c:	02010413          	addi	s0,sp,32
    80004620:	00050493          	mv	s1,a0
    80004624:	00008797          	auipc	a5,0x8
    80004628:	71478793          	addi	a5,a5,1812 # 8000cd38 <_ZTV7WorkerB+0x10>
    8000462c:	00f53023          	sd	a5,0(a0)
    80004630:	ffffe097          	auipc	ra,0xffffe
    80004634:	9ec080e7          	jalr	-1556(ra) # 8000201c <_ZN6ThreadD1Ev>
    80004638:	00048513          	mv	a0,s1
    8000463c:	ffffe097          	auipc	ra,0xffffe
    80004640:	ad8080e7          	jalr	-1320(ra) # 80002114 <_ZdlPv>
    80004644:	01813083          	ld	ra,24(sp)
    80004648:	01013403          	ld	s0,16(sp)
    8000464c:	00813483          	ld	s1,8(sp)
    80004650:	02010113          	addi	sp,sp,32
    80004654:	00008067          	ret

0000000080004658 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80004658:	ff010113          	addi	sp,sp,-16
    8000465c:	00113423          	sd	ra,8(sp)
    80004660:	00813023          	sd	s0,0(sp)
    80004664:	01010413          	addi	s0,sp,16
    80004668:	00008797          	auipc	a5,0x8
    8000466c:	6f878793          	addi	a5,a5,1784 # 8000cd60 <_ZTV7WorkerC+0x10>
    80004670:	00f53023          	sd	a5,0(a0)
    80004674:	ffffe097          	auipc	ra,0xffffe
    80004678:	9a8080e7          	jalr	-1624(ra) # 8000201c <_ZN6ThreadD1Ev>
    8000467c:	00813083          	ld	ra,8(sp)
    80004680:	00013403          	ld	s0,0(sp)
    80004684:	01010113          	addi	sp,sp,16
    80004688:	00008067          	ret

000000008000468c <_ZN7WorkerCD0Ev>:
    8000468c:	fe010113          	addi	sp,sp,-32
    80004690:	00113c23          	sd	ra,24(sp)
    80004694:	00813823          	sd	s0,16(sp)
    80004698:	00913423          	sd	s1,8(sp)
    8000469c:	02010413          	addi	s0,sp,32
    800046a0:	00050493          	mv	s1,a0
    800046a4:	00008797          	auipc	a5,0x8
    800046a8:	6bc78793          	addi	a5,a5,1724 # 8000cd60 <_ZTV7WorkerC+0x10>
    800046ac:	00f53023          	sd	a5,0(a0)
    800046b0:	ffffe097          	auipc	ra,0xffffe
    800046b4:	96c080e7          	jalr	-1684(ra) # 8000201c <_ZN6ThreadD1Ev>
    800046b8:	00048513          	mv	a0,s1
    800046bc:	ffffe097          	auipc	ra,0xffffe
    800046c0:	a58080e7          	jalr	-1448(ra) # 80002114 <_ZdlPv>
    800046c4:	01813083          	ld	ra,24(sp)
    800046c8:	01013403          	ld	s0,16(sp)
    800046cc:	00813483          	ld	s1,8(sp)
    800046d0:	02010113          	addi	sp,sp,32
    800046d4:	00008067          	ret

00000000800046d8 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800046d8:	ff010113          	addi	sp,sp,-16
    800046dc:	00113423          	sd	ra,8(sp)
    800046e0:	00813023          	sd	s0,0(sp)
    800046e4:	01010413          	addi	s0,sp,16
    800046e8:	00008797          	auipc	a5,0x8
    800046ec:	6a078793          	addi	a5,a5,1696 # 8000cd88 <_ZTV7WorkerD+0x10>
    800046f0:	00f53023          	sd	a5,0(a0)
    800046f4:	ffffe097          	auipc	ra,0xffffe
    800046f8:	928080e7          	jalr	-1752(ra) # 8000201c <_ZN6ThreadD1Ev>
    800046fc:	00813083          	ld	ra,8(sp)
    80004700:	00013403          	ld	s0,0(sp)
    80004704:	01010113          	addi	sp,sp,16
    80004708:	00008067          	ret

000000008000470c <_ZN7WorkerDD0Ev>:
    8000470c:	fe010113          	addi	sp,sp,-32
    80004710:	00113c23          	sd	ra,24(sp)
    80004714:	00813823          	sd	s0,16(sp)
    80004718:	00913423          	sd	s1,8(sp)
    8000471c:	02010413          	addi	s0,sp,32
    80004720:	00050493          	mv	s1,a0
    80004724:	00008797          	auipc	a5,0x8
    80004728:	66478793          	addi	a5,a5,1636 # 8000cd88 <_ZTV7WorkerD+0x10>
    8000472c:	00f53023          	sd	a5,0(a0)
    80004730:	ffffe097          	auipc	ra,0xffffe
    80004734:	8ec080e7          	jalr	-1812(ra) # 8000201c <_ZN6ThreadD1Ev>
    80004738:	00048513          	mv	a0,s1
    8000473c:	ffffe097          	auipc	ra,0xffffe
    80004740:	9d8080e7          	jalr	-1576(ra) # 80002114 <_ZdlPv>
    80004744:	01813083          	ld	ra,24(sp)
    80004748:	01013403          	ld	s0,16(sp)
    8000474c:	00813483          	ld	s1,8(sp)
    80004750:	02010113          	addi	sp,sp,32
    80004754:	00008067          	ret

0000000080004758 <_ZN7WorkerA3runEv>:
    void run() override {
    80004758:	ff010113          	addi	sp,sp,-16
    8000475c:	00113423          	sd	ra,8(sp)
    80004760:	00813023          	sd	s0,0(sp)
    80004764:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80004768:	00000593          	li	a1,0
    8000476c:	fffff097          	auipc	ra,0xfffff
    80004770:	774080e7          	jalr	1908(ra) # 80003ee0 <_ZN7WorkerA11workerBodyAEPv>
    }
    80004774:	00813083          	ld	ra,8(sp)
    80004778:	00013403          	ld	s0,0(sp)
    8000477c:	01010113          	addi	sp,sp,16
    80004780:	00008067          	ret

0000000080004784 <_ZN7WorkerB3runEv>:
    void run() override {
    80004784:	ff010113          	addi	sp,sp,-16
    80004788:	00113423          	sd	ra,8(sp)
    8000478c:	00813023          	sd	s0,0(sp)
    80004790:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80004794:	00000593          	li	a1,0
    80004798:	00000097          	auipc	ra,0x0
    8000479c:	814080e7          	jalr	-2028(ra) # 80003fac <_ZN7WorkerB11workerBodyBEPv>
    }
    800047a0:	00813083          	ld	ra,8(sp)
    800047a4:	00013403          	ld	s0,0(sp)
    800047a8:	01010113          	addi	sp,sp,16
    800047ac:	00008067          	ret

00000000800047b0 <_ZN7WorkerC3runEv>:
    void run() override {
    800047b0:	ff010113          	addi	sp,sp,-16
    800047b4:	00113423          	sd	ra,8(sp)
    800047b8:	00813023          	sd	s0,0(sp)
    800047bc:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800047c0:	00000593          	li	a1,0
    800047c4:	00000097          	auipc	ra,0x0
    800047c8:	8bc080e7          	jalr	-1860(ra) # 80004080 <_ZN7WorkerC11workerBodyCEPv>
    }
    800047cc:	00813083          	ld	ra,8(sp)
    800047d0:	00013403          	ld	s0,0(sp)
    800047d4:	01010113          	addi	sp,sp,16
    800047d8:	00008067          	ret

00000000800047dc <_ZN7WorkerD3runEv>:
    void run() override {
    800047dc:	ff010113          	addi	sp,sp,-16
    800047e0:	00113423          	sd	ra,8(sp)
    800047e4:	00813023          	sd	s0,0(sp)
    800047e8:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800047ec:	00000593          	li	a1,0
    800047f0:	00000097          	auipc	ra,0x0
    800047f4:	a10080e7          	jalr	-1520(ra) # 80004200 <_ZN7WorkerD11workerBodyDEPv>
    }
    800047f8:	00813083          	ld	ra,8(sp)
    800047fc:	00013403          	ld	s0,0(sp)
    80004800:	01010113          	addi	sp,sp,16
    80004804:	00008067          	ret

0000000080004808 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80004808:	f8010113          	addi	sp,sp,-128
    8000480c:	06113c23          	sd	ra,120(sp)
    80004810:	06813823          	sd	s0,112(sp)
    80004814:	06913423          	sd	s1,104(sp)
    80004818:	07213023          	sd	s2,96(sp)
    8000481c:	05313c23          	sd	s3,88(sp)
    80004820:	05413823          	sd	s4,80(sp)
    80004824:	05513423          	sd	s5,72(sp)
    80004828:	05613023          	sd	s6,64(sp)
    8000482c:	03713c23          	sd	s7,56(sp)
    80004830:	03813823          	sd	s8,48(sp)
    80004834:	03913423          	sd	s9,40(sp)
    80004838:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    8000483c:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80004840:	00006517          	auipc	a0,0x6
    80004844:	8f050513          	addi	a0,a0,-1808 # 8000a130 <CONSOLE_STATUS+0x120>
    80004848:	00002097          	auipc	ra,0x2
    8000484c:	8c8080e7          	jalr	-1848(ra) # 80006110 <_Z11printStringPKc>
    getString(input, 30);
    80004850:	01e00593          	li	a1,30
    80004854:	f8040493          	addi	s1,s0,-128
    80004858:	00048513          	mv	a0,s1
    8000485c:	00002097          	auipc	ra,0x2
    80004860:	93c080e7          	jalr	-1732(ra) # 80006198 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004864:	00048513          	mv	a0,s1
    80004868:	00002097          	auipc	ra,0x2
    8000486c:	a08080e7          	jalr	-1528(ra) # 80006270 <_Z11stringToIntPKc>
    80004870:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80004874:	00006517          	auipc	a0,0x6
    80004878:	8dc50513          	addi	a0,a0,-1828 # 8000a150 <CONSOLE_STATUS+0x140>
    8000487c:	00002097          	auipc	ra,0x2
    80004880:	894080e7          	jalr	-1900(ra) # 80006110 <_Z11printStringPKc>
    getString(input, 30);
    80004884:	01e00593          	li	a1,30
    80004888:	00048513          	mv	a0,s1
    8000488c:	00002097          	auipc	ra,0x2
    80004890:	90c080e7          	jalr	-1780(ra) # 80006198 <_Z9getStringPci>
    n = stringToInt(input);
    80004894:	00048513          	mv	a0,s1
    80004898:	00002097          	auipc	ra,0x2
    8000489c:	9d8080e7          	jalr	-1576(ra) # 80006270 <_Z11stringToIntPKc>
    800048a0:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    800048a4:	00006517          	auipc	a0,0x6
    800048a8:	8cc50513          	addi	a0,a0,-1844 # 8000a170 <CONSOLE_STATUS+0x160>
    800048ac:	00002097          	auipc	ra,0x2
    800048b0:	864080e7          	jalr	-1948(ra) # 80006110 <_Z11printStringPKc>
    printInt(threadNum);
    800048b4:	00000613          	li	a2,0
    800048b8:	00a00593          	li	a1,10
    800048bc:	00098513          	mv	a0,s3
    800048c0:	00002097          	auipc	ra,0x2
    800048c4:	a00080e7          	jalr	-1536(ra) # 800062c0 <_Z8printIntiii>
    printString(" i velicina bafera ");
    800048c8:	00006517          	auipc	a0,0x6
    800048cc:	8c050513          	addi	a0,a0,-1856 # 8000a188 <CONSOLE_STATUS+0x178>
    800048d0:	00002097          	auipc	ra,0x2
    800048d4:	840080e7          	jalr	-1984(ra) # 80006110 <_Z11printStringPKc>
    printInt(n);
    800048d8:	00000613          	li	a2,0
    800048dc:	00a00593          	li	a1,10
    800048e0:	00048513          	mv	a0,s1
    800048e4:	00002097          	auipc	ra,0x2
    800048e8:	9dc080e7          	jalr	-1572(ra) # 800062c0 <_Z8printIntiii>
    printString(".\n");
    800048ec:	00006517          	auipc	a0,0x6
    800048f0:	8b450513          	addi	a0,a0,-1868 # 8000a1a0 <CONSOLE_STATUS+0x190>
    800048f4:	00002097          	auipc	ra,0x2
    800048f8:	81c080e7          	jalr	-2020(ra) # 80006110 <_Z11printStringPKc>
    if (threadNum > n) {
    800048fc:	0334c463          	blt	s1,s3,80004924 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80004900:	03305c63          	blez	s3,80004938 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004904:	03800513          	li	a0,56
    80004908:	ffffd097          	auipc	ra,0xffffd
    8000490c:	7e4080e7          	jalr	2020(ra) # 800020ec <_Znwm>
    80004910:	00050a93          	mv	s5,a0
    80004914:	00048593          	mv	a1,s1
    80004918:	00002097          	auipc	ra,0x2
    8000491c:	ac8080e7          	jalr	-1336(ra) # 800063e0 <_ZN9BufferCPPC1Ei>
    80004920:	0300006f          	j	80004950 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004924:	00006517          	auipc	a0,0x6
    80004928:	88450513          	addi	a0,a0,-1916 # 8000a1a8 <CONSOLE_STATUS+0x198>
    8000492c:	00001097          	auipc	ra,0x1
    80004930:	7e4080e7          	jalr	2020(ra) # 80006110 <_Z11printStringPKc>
        return;
    80004934:	0140006f          	j	80004948 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004938:	00006517          	auipc	a0,0x6
    8000493c:	8b050513          	addi	a0,a0,-1872 # 8000a1e8 <CONSOLE_STATUS+0x1d8>
    80004940:	00001097          	auipc	ra,0x1
    80004944:	7d0080e7          	jalr	2000(ra) # 80006110 <_Z11printStringPKc>
        return;
    80004948:	000c0113          	mv	sp,s8
    8000494c:	2140006f          	j	80004b60 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80004950:	01000513          	li	a0,16
    80004954:	ffffd097          	auipc	ra,0xffffd
    80004958:	798080e7          	jalr	1944(ra) # 800020ec <_Znwm>
    8000495c:	00050913          	mv	s2,a0
    80004960:	00000593          	li	a1,0
    80004964:	ffffe097          	auipc	ra,0xffffe
    80004968:	940080e7          	jalr	-1728(ra) # 800022a4 <_ZN9SemaphoreC1Ej>
    8000496c:	00008797          	auipc	a5,0x8
    80004970:	6727b223          	sd	s2,1636(a5) # 8000cfd0 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80004974:	00399793          	slli	a5,s3,0x3
    80004978:	00f78793          	addi	a5,a5,15
    8000497c:	ff07f793          	andi	a5,a5,-16
    80004980:	40f10133          	sub	sp,sp,a5
    80004984:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80004988:	0019871b          	addiw	a4,s3,1
    8000498c:	00171793          	slli	a5,a4,0x1
    80004990:	00e787b3          	add	a5,a5,a4
    80004994:	00379793          	slli	a5,a5,0x3
    80004998:	00f78793          	addi	a5,a5,15
    8000499c:	ff07f793          	andi	a5,a5,-16
    800049a0:	40f10133          	sub	sp,sp,a5
    800049a4:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    800049a8:	00199493          	slli	s1,s3,0x1
    800049ac:	013484b3          	add	s1,s1,s3
    800049b0:	00349493          	slli	s1,s1,0x3
    800049b4:	009b04b3          	add	s1,s6,s1
    800049b8:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    800049bc:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    800049c0:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800049c4:	02800513          	li	a0,40
    800049c8:	ffffd097          	auipc	ra,0xffffd
    800049cc:	724080e7          	jalr	1828(ra) # 800020ec <_Znwm>
    800049d0:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    800049d4:	ffffe097          	auipc	ra,0xffffe
    800049d8:	818080e7          	jalr	-2024(ra) # 800021ec <_ZN6ThreadC1Ev>
    800049dc:	00008797          	auipc	a5,0x8
    800049e0:	42478793          	addi	a5,a5,1060 # 8000ce00 <_ZTV8Consumer+0x10>
    800049e4:	00fbb023          	sd	a5,0(s7)
    800049e8:	029bb023          	sd	s1,32(s7)
    consumer->start();
    800049ec:	000b8513          	mv	a0,s7
    800049f0:	ffffe097          	auipc	ra,0xffffe
    800049f4:	82c080e7          	jalr	-2004(ra) # 8000221c <_ZN6Thread5startEv>
    threadData[0].id = 0;
    800049f8:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    800049fc:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80004a00:	00008797          	auipc	a5,0x8
    80004a04:	5d07b783          	ld	a5,1488(a5) # 8000cfd0 <_ZL10waitForAll>
    80004a08:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004a0c:	02800513          	li	a0,40
    80004a10:	ffffd097          	auipc	ra,0xffffd
    80004a14:	6dc080e7          	jalr	1756(ra) # 800020ec <_Znwm>
    80004a18:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80004a1c:	ffffd097          	auipc	ra,0xffffd
    80004a20:	7d0080e7          	jalr	2000(ra) # 800021ec <_ZN6ThreadC1Ev>
    80004a24:	00008797          	auipc	a5,0x8
    80004a28:	38c78793          	addi	a5,a5,908 # 8000cdb0 <_ZTV16ProducerKeyborad+0x10>
    80004a2c:	00f4b023          	sd	a5,0(s1)
    80004a30:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004a34:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80004a38:	00048513          	mv	a0,s1
    80004a3c:	ffffd097          	auipc	ra,0xffffd
    80004a40:	7e0080e7          	jalr	2016(ra) # 8000221c <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004a44:	00100913          	li	s2,1
    80004a48:	0300006f          	j	80004a78 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004a4c:	00008797          	auipc	a5,0x8
    80004a50:	38c78793          	addi	a5,a5,908 # 8000cdd8 <_ZTV8Producer+0x10>
    80004a54:	00fcb023          	sd	a5,0(s9)
    80004a58:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80004a5c:	00391793          	slli	a5,s2,0x3
    80004a60:	00fa07b3          	add	a5,s4,a5
    80004a64:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80004a68:	000c8513          	mv	a0,s9
    80004a6c:	ffffd097          	auipc	ra,0xffffd
    80004a70:	7b0080e7          	jalr	1968(ra) # 8000221c <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004a74:	0019091b          	addiw	s2,s2,1
    80004a78:	05395263          	bge	s2,s3,80004abc <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80004a7c:	00191493          	slli	s1,s2,0x1
    80004a80:	012484b3          	add	s1,s1,s2
    80004a84:	00349493          	slli	s1,s1,0x3
    80004a88:	009b04b3          	add	s1,s6,s1
    80004a8c:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80004a90:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80004a94:	00008797          	auipc	a5,0x8
    80004a98:	53c7b783          	ld	a5,1340(a5) # 8000cfd0 <_ZL10waitForAll>
    80004a9c:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80004aa0:	02800513          	li	a0,40
    80004aa4:	ffffd097          	auipc	ra,0xffffd
    80004aa8:	648080e7          	jalr	1608(ra) # 800020ec <_Znwm>
    80004aac:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004ab0:	ffffd097          	auipc	ra,0xffffd
    80004ab4:	73c080e7          	jalr	1852(ra) # 800021ec <_ZN6ThreadC1Ev>
    80004ab8:	f95ff06f          	j	80004a4c <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80004abc:	ffffd097          	auipc	ra,0xffffd
    80004ac0:	798080e7          	jalr	1944(ra) # 80002254 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004ac4:	00000493          	li	s1,0
    80004ac8:	0099ce63          	blt	s3,s1,80004ae4 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80004acc:	00008517          	auipc	a0,0x8
    80004ad0:	50453503          	ld	a0,1284(a0) # 8000cfd0 <_ZL10waitForAll>
    80004ad4:	ffffe097          	auipc	ra,0xffffe
    80004ad8:	80c080e7          	jalr	-2036(ra) # 800022e0 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004adc:	0014849b          	addiw	s1,s1,1
    80004ae0:	fe9ff06f          	j	80004ac8 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80004ae4:	00008517          	auipc	a0,0x8
    80004ae8:	4ec53503          	ld	a0,1260(a0) # 8000cfd0 <_ZL10waitForAll>
    80004aec:	00050863          	beqz	a0,80004afc <_Z20testConsumerProducerv+0x2f4>
    80004af0:	00053783          	ld	a5,0(a0)
    80004af4:	0087b783          	ld	a5,8(a5)
    80004af8:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80004afc:	00000493          	li	s1,0
    80004b00:	0080006f          	j	80004b08 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80004b04:	0014849b          	addiw	s1,s1,1
    80004b08:	0334d263          	bge	s1,s3,80004b2c <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80004b0c:	00349793          	slli	a5,s1,0x3
    80004b10:	00fa07b3          	add	a5,s4,a5
    80004b14:	0007b503          	ld	a0,0(a5)
    80004b18:	fe0506e3          	beqz	a0,80004b04 <_Z20testConsumerProducerv+0x2fc>
    80004b1c:	00053783          	ld	a5,0(a0)
    80004b20:	0087b783          	ld	a5,8(a5)
    80004b24:	000780e7          	jalr	a5
    80004b28:	fddff06f          	j	80004b04 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80004b2c:	000b8a63          	beqz	s7,80004b40 <_Z20testConsumerProducerv+0x338>
    80004b30:	000bb783          	ld	a5,0(s7)
    80004b34:	0087b783          	ld	a5,8(a5)
    80004b38:	000b8513          	mv	a0,s7
    80004b3c:	000780e7          	jalr	a5
    delete buffer;
    80004b40:	000a8e63          	beqz	s5,80004b5c <_Z20testConsumerProducerv+0x354>
    80004b44:	000a8513          	mv	a0,s5
    80004b48:	00002097          	auipc	ra,0x2
    80004b4c:	b90080e7          	jalr	-1136(ra) # 800066d8 <_ZN9BufferCPPD1Ev>
    80004b50:	000a8513          	mv	a0,s5
    80004b54:	ffffd097          	auipc	ra,0xffffd
    80004b58:	5c0080e7          	jalr	1472(ra) # 80002114 <_ZdlPv>
    80004b5c:	000c0113          	mv	sp,s8
}
    80004b60:	f8040113          	addi	sp,s0,-128
    80004b64:	07813083          	ld	ra,120(sp)
    80004b68:	07013403          	ld	s0,112(sp)
    80004b6c:	06813483          	ld	s1,104(sp)
    80004b70:	06013903          	ld	s2,96(sp)
    80004b74:	05813983          	ld	s3,88(sp)
    80004b78:	05013a03          	ld	s4,80(sp)
    80004b7c:	04813a83          	ld	s5,72(sp)
    80004b80:	04013b03          	ld	s6,64(sp)
    80004b84:	03813b83          	ld	s7,56(sp)
    80004b88:	03013c03          	ld	s8,48(sp)
    80004b8c:	02813c83          	ld	s9,40(sp)
    80004b90:	08010113          	addi	sp,sp,128
    80004b94:	00008067          	ret
    80004b98:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004b9c:	000a8513          	mv	a0,s5
    80004ba0:	ffffd097          	auipc	ra,0xffffd
    80004ba4:	574080e7          	jalr	1396(ra) # 80002114 <_ZdlPv>
    80004ba8:	00048513          	mv	a0,s1
    80004bac:	00009097          	auipc	ra,0x9
    80004bb0:	51c080e7          	jalr	1308(ra) # 8000e0c8 <_Unwind_Resume>
    80004bb4:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80004bb8:	00090513          	mv	a0,s2
    80004bbc:	ffffd097          	auipc	ra,0xffffd
    80004bc0:	558080e7          	jalr	1368(ra) # 80002114 <_ZdlPv>
    80004bc4:	00048513          	mv	a0,s1
    80004bc8:	00009097          	auipc	ra,0x9
    80004bcc:	500080e7          	jalr	1280(ra) # 8000e0c8 <_Unwind_Resume>
    80004bd0:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004bd4:	000b8513          	mv	a0,s7
    80004bd8:	ffffd097          	auipc	ra,0xffffd
    80004bdc:	53c080e7          	jalr	1340(ra) # 80002114 <_ZdlPv>
    80004be0:	00048513          	mv	a0,s1
    80004be4:	00009097          	auipc	ra,0x9
    80004be8:	4e4080e7          	jalr	1252(ra) # 8000e0c8 <_Unwind_Resume>
    80004bec:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004bf0:	00048513          	mv	a0,s1
    80004bf4:	ffffd097          	auipc	ra,0xffffd
    80004bf8:	520080e7          	jalr	1312(ra) # 80002114 <_ZdlPv>
    80004bfc:	00090513          	mv	a0,s2
    80004c00:	00009097          	auipc	ra,0x9
    80004c04:	4c8080e7          	jalr	1224(ra) # 8000e0c8 <_Unwind_Resume>
    80004c08:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80004c0c:	000c8513          	mv	a0,s9
    80004c10:	ffffd097          	auipc	ra,0xffffd
    80004c14:	504080e7          	jalr	1284(ra) # 80002114 <_ZdlPv>
    80004c18:	00048513          	mv	a0,s1
    80004c1c:	00009097          	auipc	ra,0x9
    80004c20:	4ac080e7          	jalr	1196(ra) # 8000e0c8 <_Unwind_Resume>

0000000080004c24 <_ZN8Consumer3runEv>:
    void run() override {
    80004c24:	fd010113          	addi	sp,sp,-48
    80004c28:	02113423          	sd	ra,40(sp)
    80004c2c:	02813023          	sd	s0,32(sp)
    80004c30:	00913c23          	sd	s1,24(sp)
    80004c34:	01213823          	sd	s2,16(sp)
    80004c38:	01313423          	sd	s3,8(sp)
    80004c3c:	03010413          	addi	s0,sp,48
    80004c40:	00050913          	mv	s2,a0
        int i = 0;
    80004c44:	00000993          	li	s3,0
    80004c48:	0100006f          	j	80004c58 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80004c4c:	00a00513          	li	a0,10
    80004c50:	ffffd097          	auipc	ra,0xffffd
    80004c54:	7fc080e7          	jalr	2044(ra) # 8000244c <_ZN7Console4putcEc>
        while (!threadEnd) {
    80004c58:	00008797          	auipc	a5,0x8
    80004c5c:	3707a783          	lw	a5,880(a5) # 8000cfc8 <_ZL9threadEnd>
    80004c60:	04079a63          	bnez	a5,80004cb4 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80004c64:	02093783          	ld	a5,32(s2)
    80004c68:	0087b503          	ld	a0,8(a5)
    80004c6c:	00002097          	auipc	ra,0x2
    80004c70:	958080e7          	jalr	-1704(ra) # 800065c4 <_ZN9BufferCPP3getEv>
            i++;
    80004c74:	0019849b          	addiw	s1,s3,1
    80004c78:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80004c7c:	0ff57513          	andi	a0,a0,255
    80004c80:	ffffd097          	auipc	ra,0xffffd
    80004c84:	7cc080e7          	jalr	1996(ra) # 8000244c <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80004c88:	05000793          	li	a5,80
    80004c8c:	02f4e4bb          	remw	s1,s1,a5
    80004c90:	fc0494e3          	bnez	s1,80004c58 <_ZN8Consumer3runEv+0x34>
    80004c94:	fb9ff06f          	j	80004c4c <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80004c98:	02093783          	ld	a5,32(s2)
    80004c9c:	0087b503          	ld	a0,8(a5)
    80004ca0:	00002097          	auipc	ra,0x2
    80004ca4:	924080e7          	jalr	-1756(ra) # 800065c4 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80004ca8:	0ff57513          	andi	a0,a0,255
    80004cac:	ffffd097          	auipc	ra,0xffffd
    80004cb0:	7a0080e7          	jalr	1952(ra) # 8000244c <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80004cb4:	02093783          	ld	a5,32(s2)
    80004cb8:	0087b503          	ld	a0,8(a5)
    80004cbc:	00002097          	auipc	ra,0x2
    80004cc0:	994080e7          	jalr	-1644(ra) # 80006650 <_ZN9BufferCPP6getCntEv>
    80004cc4:	fca04ae3          	bgtz	a0,80004c98 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004cc8:	02093783          	ld	a5,32(s2)
    80004ccc:	0107b503          	ld	a0,16(a5)
    80004cd0:	ffffd097          	auipc	ra,0xffffd
    80004cd4:	648080e7          	jalr	1608(ra) # 80002318 <_ZN9Semaphore6signalEv>
    }
    80004cd8:	02813083          	ld	ra,40(sp)
    80004cdc:	02013403          	ld	s0,32(sp)
    80004ce0:	01813483          	ld	s1,24(sp)
    80004ce4:	01013903          	ld	s2,16(sp)
    80004ce8:	00813983          	ld	s3,8(sp)
    80004cec:	03010113          	addi	sp,sp,48
    80004cf0:	00008067          	ret

0000000080004cf4 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004cf4:	ff010113          	addi	sp,sp,-16
    80004cf8:	00113423          	sd	ra,8(sp)
    80004cfc:	00813023          	sd	s0,0(sp)
    80004d00:	01010413          	addi	s0,sp,16
    80004d04:	00008797          	auipc	a5,0x8
    80004d08:	0fc78793          	addi	a5,a5,252 # 8000ce00 <_ZTV8Consumer+0x10>
    80004d0c:	00f53023          	sd	a5,0(a0)
    80004d10:	ffffd097          	auipc	ra,0xffffd
    80004d14:	30c080e7          	jalr	780(ra) # 8000201c <_ZN6ThreadD1Ev>
    80004d18:	00813083          	ld	ra,8(sp)
    80004d1c:	00013403          	ld	s0,0(sp)
    80004d20:	01010113          	addi	sp,sp,16
    80004d24:	00008067          	ret

0000000080004d28 <_ZN8ConsumerD0Ev>:
    80004d28:	fe010113          	addi	sp,sp,-32
    80004d2c:	00113c23          	sd	ra,24(sp)
    80004d30:	00813823          	sd	s0,16(sp)
    80004d34:	00913423          	sd	s1,8(sp)
    80004d38:	02010413          	addi	s0,sp,32
    80004d3c:	00050493          	mv	s1,a0
    80004d40:	00008797          	auipc	a5,0x8
    80004d44:	0c078793          	addi	a5,a5,192 # 8000ce00 <_ZTV8Consumer+0x10>
    80004d48:	00f53023          	sd	a5,0(a0)
    80004d4c:	ffffd097          	auipc	ra,0xffffd
    80004d50:	2d0080e7          	jalr	720(ra) # 8000201c <_ZN6ThreadD1Ev>
    80004d54:	00048513          	mv	a0,s1
    80004d58:	ffffd097          	auipc	ra,0xffffd
    80004d5c:	3bc080e7          	jalr	956(ra) # 80002114 <_ZdlPv>
    80004d60:	01813083          	ld	ra,24(sp)
    80004d64:	01013403          	ld	s0,16(sp)
    80004d68:	00813483          	ld	s1,8(sp)
    80004d6c:	02010113          	addi	sp,sp,32
    80004d70:	00008067          	ret

0000000080004d74 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004d74:	ff010113          	addi	sp,sp,-16
    80004d78:	00113423          	sd	ra,8(sp)
    80004d7c:	00813023          	sd	s0,0(sp)
    80004d80:	01010413          	addi	s0,sp,16
    80004d84:	00008797          	auipc	a5,0x8
    80004d88:	02c78793          	addi	a5,a5,44 # 8000cdb0 <_ZTV16ProducerKeyborad+0x10>
    80004d8c:	00f53023          	sd	a5,0(a0)
    80004d90:	ffffd097          	auipc	ra,0xffffd
    80004d94:	28c080e7          	jalr	652(ra) # 8000201c <_ZN6ThreadD1Ev>
    80004d98:	00813083          	ld	ra,8(sp)
    80004d9c:	00013403          	ld	s0,0(sp)
    80004da0:	01010113          	addi	sp,sp,16
    80004da4:	00008067          	ret

0000000080004da8 <_ZN16ProducerKeyboradD0Ev>:
    80004da8:	fe010113          	addi	sp,sp,-32
    80004dac:	00113c23          	sd	ra,24(sp)
    80004db0:	00813823          	sd	s0,16(sp)
    80004db4:	00913423          	sd	s1,8(sp)
    80004db8:	02010413          	addi	s0,sp,32
    80004dbc:	00050493          	mv	s1,a0
    80004dc0:	00008797          	auipc	a5,0x8
    80004dc4:	ff078793          	addi	a5,a5,-16 # 8000cdb0 <_ZTV16ProducerKeyborad+0x10>
    80004dc8:	00f53023          	sd	a5,0(a0)
    80004dcc:	ffffd097          	auipc	ra,0xffffd
    80004dd0:	250080e7          	jalr	592(ra) # 8000201c <_ZN6ThreadD1Ev>
    80004dd4:	00048513          	mv	a0,s1
    80004dd8:	ffffd097          	auipc	ra,0xffffd
    80004ddc:	33c080e7          	jalr	828(ra) # 80002114 <_ZdlPv>
    80004de0:	01813083          	ld	ra,24(sp)
    80004de4:	01013403          	ld	s0,16(sp)
    80004de8:	00813483          	ld	s1,8(sp)
    80004dec:	02010113          	addi	sp,sp,32
    80004df0:	00008067          	ret

0000000080004df4 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004df4:	ff010113          	addi	sp,sp,-16
    80004df8:	00113423          	sd	ra,8(sp)
    80004dfc:	00813023          	sd	s0,0(sp)
    80004e00:	01010413          	addi	s0,sp,16
    80004e04:	00008797          	auipc	a5,0x8
    80004e08:	fd478793          	addi	a5,a5,-44 # 8000cdd8 <_ZTV8Producer+0x10>
    80004e0c:	00f53023          	sd	a5,0(a0)
    80004e10:	ffffd097          	auipc	ra,0xffffd
    80004e14:	20c080e7          	jalr	524(ra) # 8000201c <_ZN6ThreadD1Ev>
    80004e18:	00813083          	ld	ra,8(sp)
    80004e1c:	00013403          	ld	s0,0(sp)
    80004e20:	01010113          	addi	sp,sp,16
    80004e24:	00008067          	ret

0000000080004e28 <_ZN8ProducerD0Ev>:
    80004e28:	fe010113          	addi	sp,sp,-32
    80004e2c:	00113c23          	sd	ra,24(sp)
    80004e30:	00813823          	sd	s0,16(sp)
    80004e34:	00913423          	sd	s1,8(sp)
    80004e38:	02010413          	addi	s0,sp,32
    80004e3c:	00050493          	mv	s1,a0
    80004e40:	00008797          	auipc	a5,0x8
    80004e44:	f9878793          	addi	a5,a5,-104 # 8000cdd8 <_ZTV8Producer+0x10>
    80004e48:	00f53023          	sd	a5,0(a0)
    80004e4c:	ffffd097          	auipc	ra,0xffffd
    80004e50:	1d0080e7          	jalr	464(ra) # 8000201c <_ZN6ThreadD1Ev>
    80004e54:	00048513          	mv	a0,s1
    80004e58:	ffffd097          	auipc	ra,0xffffd
    80004e5c:	2bc080e7          	jalr	700(ra) # 80002114 <_ZdlPv>
    80004e60:	01813083          	ld	ra,24(sp)
    80004e64:	01013403          	ld	s0,16(sp)
    80004e68:	00813483          	ld	s1,8(sp)
    80004e6c:	02010113          	addi	sp,sp,32
    80004e70:	00008067          	ret

0000000080004e74 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004e74:	fe010113          	addi	sp,sp,-32
    80004e78:	00113c23          	sd	ra,24(sp)
    80004e7c:	00813823          	sd	s0,16(sp)
    80004e80:	00913423          	sd	s1,8(sp)
    80004e84:	02010413          	addi	s0,sp,32
    80004e88:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80004e8c:	ffffc097          	auipc	ra,0xffffc
    80004e90:	794080e7          	jalr	1940(ra) # 80001620 <_Z4getcv>
    80004e94:	0005059b          	sext.w	a1,a0
    80004e98:	01b00793          	li	a5,27
    80004e9c:	00f58c63          	beq	a1,a5,80004eb4 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80004ea0:	0204b783          	ld	a5,32(s1)
    80004ea4:	0087b503          	ld	a0,8(a5)
    80004ea8:	00001097          	auipc	ra,0x1
    80004eac:	68c080e7          	jalr	1676(ra) # 80006534 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80004eb0:	fddff06f          	j	80004e8c <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004eb4:	00100793          	li	a5,1
    80004eb8:	00008717          	auipc	a4,0x8
    80004ebc:	10f72823          	sw	a5,272(a4) # 8000cfc8 <_ZL9threadEnd>
        td->buffer->put('!');
    80004ec0:	0204b783          	ld	a5,32(s1)
    80004ec4:	02100593          	li	a1,33
    80004ec8:	0087b503          	ld	a0,8(a5)
    80004ecc:	00001097          	auipc	ra,0x1
    80004ed0:	668080e7          	jalr	1640(ra) # 80006534 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004ed4:	0204b783          	ld	a5,32(s1)
    80004ed8:	0107b503          	ld	a0,16(a5)
    80004edc:	ffffd097          	auipc	ra,0xffffd
    80004ee0:	43c080e7          	jalr	1084(ra) # 80002318 <_ZN9Semaphore6signalEv>
    }
    80004ee4:	01813083          	ld	ra,24(sp)
    80004ee8:	01013403          	ld	s0,16(sp)
    80004eec:	00813483          	ld	s1,8(sp)
    80004ef0:	02010113          	addi	sp,sp,32
    80004ef4:	00008067          	ret

0000000080004ef8 <_ZN8Producer3runEv>:
    void run() override {
    80004ef8:	fe010113          	addi	sp,sp,-32
    80004efc:	00113c23          	sd	ra,24(sp)
    80004f00:	00813823          	sd	s0,16(sp)
    80004f04:	00913423          	sd	s1,8(sp)
    80004f08:	01213023          	sd	s2,0(sp)
    80004f0c:	02010413          	addi	s0,sp,32
    80004f10:	00050493          	mv	s1,a0
        int i = 0;
    80004f14:	00000913          	li	s2,0
        while (!threadEnd) {
    80004f18:	00008797          	auipc	a5,0x8
    80004f1c:	0b07a783          	lw	a5,176(a5) # 8000cfc8 <_ZL9threadEnd>
    80004f20:	04079263          	bnez	a5,80004f64 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004f24:	0204b783          	ld	a5,32(s1)
    80004f28:	0007a583          	lw	a1,0(a5)
    80004f2c:	0305859b          	addiw	a1,a1,48
    80004f30:	0087b503          	ld	a0,8(a5)
    80004f34:	00001097          	auipc	ra,0x1
    80004f38:	600080e7          	jalr	1536(ra) # 80006534 <_ZN9BufferCPP3putEi>
            i++;
    80004f3c:	0019071b          	addiw	a4,s2,1
    80004f40:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004f44:	0204b783          	ld	a5,32(s1)
    80004f48:	0007a783          	lw	a5,0(a5)
    80004f4c:	00e787bb          	addw	a5,a5,a4
    80004f50:	00500513          	li	a0,5
    80004f54:	02a7e53b          	remw	a0,a5,a0
    80004f58:	ffffd097          	auipc	ra,0xffffd
    80004f5c:	324080e7          	jalr	804(ra) # 8000227c <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004f60:	fb9ff06f          	j	80004f18 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004f64:	0204b783          	ld	a5,32(s1)
    80004f68:	0107b503          	ld	a0,16(a5)
    80004f6c:	ffffd097          	auipc	ra,0xffffd
    80004f70:	3ac080e7          	jalr	940(ra) # 80002318 <_ZN9Semaphore6signalEv>
    }
    80004f74:	01813083          	ld	ra,24(sp)
    80004f78:	01013403          	ld	s0,16(sp)
    80004f7c:	00813483          	ld	s1,8(sp)
    80004f80:	00013903          	ld	s2,0(sp)
    80004f84:	02010113          	addi	sp,sp,32
    80004f88:	00008067          	ret

0000000080004f8c <_ZN6BufferC1Ei>:
#include "bounded_buffer.hpp"


Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004f8c:	fe010113          	addi	sp,sp,-32
    80004f90:	00113c23          	sd	ra,24(sp)
    80004f94:	00813823          	sd	s0,16(sp)
    80004f98:	00913423          	sd	s1,8(sp)
    80004f9c:	01213023          	sd	s2,0(sp)
    80004fa0:	02010413          	addi	s0,sp,32
    80004fa4:	00050493          	mv	s1,a0
    80004fa8:	00058913          	mv	s2,a1
    80004fac:	0015879b          	addiw	a5,a1,1
    80004fb0:	0007851b          	sext.w	a0,a5
    80004fb4:	00f4a023          	sw	a5,0(s1)
    80004fb8:	0004a823          	sw	zero,16(s1)
    80004fbc:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004fc0:	00251513          	slli	a0,a0,0x2
    80004fc4:	ffffc097          	auipc	ra,0xffffc
    80004fc8:	294080e7          	jalr	660(ra) # 80001258 <_Z9mem_allocm>
    80004fcc:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80004fd0:	00000593          	li	a1,0
    80004fd4:	02048513          	addi	a0,s1,32
    80004fd8:	ffffc097          	auipc	ra,0xffffc
    80004fdc:	430080e7          	jalr	1072(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&spaceAvailable, _cap);
    80004fe0:	00090593          	mv	a1,s2
    80004fe4:	01848513          	addi	a0,s1,24
    80004fe8:	ffffc097          	auipc	ra,0xffffc
    80004fec:	420080e7          	jalr	1056(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&mutexHead, 1);
    80004ff0:	00100593          	li	a1,1
    80004ff4:	02848513          	addi	a0,s1,40
    80004ff8:	ffffc097          	auipc	ra,0xffffc
    80004ffc:	410080e7          	jalr	1040(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&mutexTail, 1);
    80005000:	00100593          	li	a1,1
    80005004:	03048513          	addi	a0,s1,48
    80005008:	ffffc097          	auipc	ra,0xffffc
    8000500c:	400080e7          	jalr	1024(ra) # 80001408 <_Z8sem_openPP3Semj>
}
    80005010:	01813083          	ld	ra,24(sp)
    80005014:	01013403          	ld	s0,16(sp)
    80005018:	00813483          	ld	s1,8(sp)
    8000501c:	00013903          	ld	s2,0(sp)
    80005020:	02010113          	addi	sp,sp,32
    80005024:	00008067          	ret

0000000080005028 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80005028:	fe010113          	addi	sp,sp,-32
    8000502c:	00113c23          	sd	ra,24(sp)
    80005030:	00813823          	sd	s0,16(sp)
    80005034:	00913423          	sd	s1,8(sp)
    80005038:	01213023          	sd	s2,0(sp)
    8000503c:	02010413          	addi	s0,sp,32
    80005040:	00050493          	mv	s1,a0
    80005044:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80005048:	01853503          	ld	a0,24(a0)
    8000504c:	ffffc097          	auipc	ra,0xffffc
    80005050:	458080e7          	jalr	1112(ra) # 800014a4 <_Z8sem_waitP3Sem>

    sem_wait(mutexTail);
    80005054:	0304b503          	ld	a0,48(s1)
    80005058:	ffffc097          	auipc	ra,0xffffc
    8000505c:	44c080e7          	jalr	1100(ra) # 800014a4 <_Z8sem_waitP3Sem>
    buffer[tail] = val;
    80005060:	0084b783          	ld	a5,8(s1)
    80005064:	0144a703          	lw	a4,20(s1)
    80005068:	00271713          	slli	a4,a4,0x2
    8000506c:	00e787b3          	add	a5,a5,a4
    80005070:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005074:	0144a783          	lw	a5,20(s1)
    80005078:	0017879b          	addiw	a5,a5,1
    8000507c:	0004a703          	lw	a4,0(s1)
    80005080:	02e7e7bb          	remw	a5,a5,a4
    80005084:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80005088:	0304b503          	ld	a0,48(s1)
    8000508c:	ffffc097          	auipc	ra,0xffffc
    80005090:	464080e7          	jalr	1124(ra) # 800014f0 <_Z10sem_signalP3Sem>

    sem_signal(itemAvailable);
    80005094:	0204b503          	ld	a0,32(s1)
    80005098:	ffffc097          	auipc	ra,0xffffc
    8000509c:	458080e7          	jalr	1112(ra) # 800014f0 <_Z10sem_signalP3Sem>

}
    800050a0:	01813083          	ld	ra,24(sp)
    800050a4:	01013403          	ld	s0,16(sp)
    800050a8:	00813483          	ld	s1,8(sp)
    800050ac:	00013903          	ld	s2,0(sp)
    800050b0:	02010113          	addi	sp,sp,32
    800050b4:	00008067          	ret

00000000800050b8 <_ZN6Buffer3getEv>:

int Buffer::get() {
    800050b8:	fe010113          	addi	sp,sp,-32
    800050bc:	00113c23          	sd	ra,24(sp)
    800050c0:	00813823          	sd	s0,16(sp)
    800050c4:	00913423          	sd	s1,8(sp)
    800050c8:	01213023          	sd	s2,0(sp)
    800050cc:	02010413          	addi	s0,sp,32
    800050d0:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800050d4:	02053503          	ld	a0,32(a0)
    800050d8:	ffffc097          	auipc	ra,0xffffc
    800050dc:	3cc080e7          	jalr	972(ra) # 800014a4 <_Z8sem_waitP3Sem>

    sem_wait(mutexHead);
    800050e0:	0284b503          	ld	a0,40(s1)
    800050e4:	ffffc097          	auipc	ra,0xffffc
    800050e8:	3c0080e7          	jalr	960(ra) # 800014a4 <_Z8sem_waitP3Sem>

    int ret = buffer[head];
    800050ec:	0084b703          	ld	a4,8(s1)
    800050f0:	0104a783          	lw	a5,16(s1)
    800050f4:	00279693          	slli	a3,a5,0x2
    800050f8:	00d70733          	add	a4,a4,a3
    800050fc:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005100:	0017879b          	addiw	a5,a5,1
    80005104:	0004a703          	lw	a4,0(s1)
    80005108:	02e7e7bb          	remw	a5,a5,a4
    8000510c:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80005110:	0284b503          	ld	a0,40(s1)
    80005114:	ffffc097          	auipc	ra,0xffffc
    80005118:	3dc080e7          	jalr	988(ra) # 800014f0 <_Z10sem_signalP3Sem>

    sem_signal(spaceAvailable);
    8000511c:	0184b503          	ld	a0,24(s1)
    80005120:	ffffc097          	auipc	ra,0xffffc
    80005124:	3d0080e7          	jalr	976(ra) # 800014f0 <_Z10sem_signalP3Sem>

    return ret;
}
    80005128:	00090513          	mv	a0,s2
    8000512c:	01813083          	ld	ra,24(sp)
    80005130:	01013403          	ld	s0,16(sp)
    80005134:	00813483          	ld	s1,8(sp)
    80005138:	00013903          	ld	s2,0(sp)
    8000513c:	02010113          	addi	sp,sp,32
    80005140:	00008067          	ret

0000000080005144 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80005144:	fe010113          	addi	sp,sp,-32
    80005148:	00113c23          	sd	ra,24(sp)
    8000514c:	00813823          	sd	s0,16(sp)
    80005150:	00913423          	sd	s1,8(sp)
    80005154:	01213023          	sd	s2,0(sp)
    80005158:	02010413          	addi	s0,sp,32
    8000515c:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80005160:	02853503          	ld	a0,40(a0)
    80005164:	ffffc097          	auipc	ra,0xffffc
    80005168:	340080e7          	jalr	832(ra) # 800014a4 <_Z8sem_waitP3Sem>
    sem_wait(mutexTail);
    8000516c:	0304b503          	ld	a0,48(s1)
    80005170:	ffffc097          	auipc	ra,0xffffc
    80005174:	334080e7          	jalr	820(ra) # 800014a4 <_Z8sem_waitP3Sem>

    if (tail >= head) {
    80005178:	0144a783          	lw	a5,20(s1)
    8000517c:	0104a903          	lw	s2,16(s1)
    80005180:	0327ce63          	blt	a5,s2,800051bc <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80005184:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80005188:	0304b503          	ld	a0,48(s1)
    8000518c:	ffffc097          	auipc	ra,0xffffc
    80005190:	364080e7          	jalr	868(ra) # 800014f0 <_Z10sem_signalP3Sem>
    sem_signal(mutexHead);
    80005194:	0284b503          	ld	a0,40(s1)
    80005198:	ffffc097          	auipc	ra,0xffffc
    8000519c:	358080e7          	jalr	856(ra) # 800014f0 <_Z10sem_signalP3Sem>

    return ret;
}
    800051a0:	00090513          	mv	a0,s2
    800051a4:	01813083          	ld	ra,24(sp)
    800051a8:	01013403          	ld	s0,16(sp)
    800051ac:	00813483          	ld	s1,8(sp)
    800051b0:	00013903          	ld	s2,0(sp)
    800051b4:	02010113          	addi	sp,sp,32
    800051b8:	00008067          	ret
        ret = cap - head + tail;
    800051bc:	0004a703          	lw	a4,0(s1)
    800051c0:	4127093b          	subw	s2,a4,s2
    800051c4:	00f9093b          	addw	s2,s2,a5
    800051c8:	fc1ff06f          	j	80005188 <_ZN6Buffer6getCntEv+0x44>

00000000800051cc <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    800051cc:	fe010113          	addi	sp,sp,-32
    800051d0:	00113c23          	sd	ra,24(sp)
    800051d4:	00813823          	sd	s0,16(sp)
    800051d8:	00913423          	sd	s1,8(sp)
    800051dc:	02010413          	addi	s0,sp,32
    800051e0:	00050493          	mv	s1,a0
    putc('\n');
    800051e4:	00a00513          	li	a0,10
    800051e8:	ffffc097          	auipc	ra,0xffffc
    800051ec:	484080e7          	jalr	1156(ra) # 8000166c <_Z4putcc>
    printString("Buffer deleted!\n");
    800051f0:	00005517          	auipc	a0,0x5
    800051f4:	12050513          	addi	a0,a0,288 # 8000a310 <CONSOLE_STATUS+0x300>
    800051f8:	00001097          	auipc	ra,0x1
    800051fc:	f18080e7          	jalr	-232(ra) # 80006110 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80005200:	00048513          	mv	a0,s1
    80005204:	00000097          	auipc	ra,0x0
    80005208:	f40080e7          	jalr	-192(ra) # 80005144 <_ZN6Buffer6getCntEv>
    8000520c:	02a05c63          	blez	a0,80005244 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80005210:	0084b783          	ld	a5,8(s1)
    80005214:	0104a703          	lw	a4,16(s1)
    80005218:	00271713          	slli	a4,a4,0x2
    8000521c:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80005220:	0007c503          	lbu	a0,0(a5)
    80005224:	ffffc097          	auipc	ra,0xffffc
    80005228:	448080e7          	jalr	1096(ra) # 8000166c <_Z4putcc>
        head = (head + 1) % cap;
    8000522c:	0104a783          	lw	a5,16(s1)
    80005230:	0017879b          	addiw	a5,a5,1
    80005234:	0004a703          	lw	a4,0(s1)
    80005238:	02e7e7bb          	remw	a5,a5,a4
    8000523c:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80005240:	fc1ff06f          	j	80005200 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80005244:	02100513          	li	a0,33
    80005248:	ffffc097          	auipc	ra,0xffffc
    8000524c:	424080e7          	jalr	1060(ra) # 8000166c <_Z4putcc>
    putc('\n');
    80005250:	00a00513          	li	a0,10
    80005254:	ffffc097          	auipc	ra,0xffffc
    80005258:	418080e7          	jalr	1048(ra) # 8000166c <_Z4putcc>
    mem_free(buffer);
    8000525c:	0084b503          	ld	a0,8(s1)
    80005260:	ffffc097          	auipc	ra,0xffffc
    80005264:	04c080e7          	jalr	76(ra) # 800012ac <_Z8mem_freePv>
    sem_close(itemAvailable);
    80005268:	0204b503          	ld	a0,32(s1)
    8000526c:	ffffc097          	auipc	ra,0xffffc
    80005270:	1ec080e7          	jalr	492(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(spaceAvailable);
    80005274:	0184b503          	ld	a0,24(s1)
    80005278:	ffffc097          	auipc	ra,0xffffc
    8000527c:	1e0080e7          	jalr	480(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(mutexTail);
    80005280:	0304b503          	ld	a0,48(s1)
    80005284:	ffffc097          	auipc	ra,0xffffc
    80005288:	1d4080e7          	jalr	468(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(mutexHead);
    8000528c:	0284b503          	ld	a0,40(s1)
    80005290:	ffffc097          	auipc	ra,0xffffc
    80005294:	1c8080e7          	jalr	456(ra) # 80001458 <_Z9sem_closeP3Sem>
}
    80005298:	01813083          	ld	ra,24(sp)
    8000529c:	01013403          	ld	s0,16(sp)
    800052a0:	00813483          	ld	s1,8(sp)
    800052a4:	02010113          	addi	sp,sp,32
    800052a8:	00008067          	ret

00000000800052ac <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800052ac:	fe010113          	addi	sp,sp,-32
    800052b0:	00113c23          	sd	ra,24(sp)
    800052b4:	00813823          	sd	s0,16(sp)
    800052b8:	00913423          	sd	s1,8(sp)
    800052bc:	01213023          	sd	s2,0(sp)
    800052c0:	02010413          	addi	s0,sp,32
    800052c4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800052c8:	00100793          	li	a5,1
    800052cc:	02a7f863          	bgeu	a5,a0,800052fc <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800052d0:	00a00793          	li	a5,10
    800052d4:	02f577b3          	remu	a5,a0,a5
    800052d8:	02078e63          	beqz	a5,80005314 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800052dc:	fff48513          	addi	a0,s1,-1
    800052e0:	00000097          	auipc	ra,0x0
    800052e4:	fcc080e7          	jalr	-52(ra) # 800052ac <_ZL9fibonaccim>
    800052e8:	00050913          	mv	s2,a0
    800052ec:	ffe48513          	addi	a0,s1,-2
    800052f0:	00000097          	auipc	ra,0x0
    800052f4:	fbc080e7          	jalr	-68(ra) # 800052ac <_ZL9fibonaccim>
    800052f8:	00a90533          	add	a0,s2,a0
}
    800052fc:	01813083          	ld	ra,24(sp)
    80005300:	01013403          	ld	s0,16(sp)
    80005304:	00813483          	ld	s1,8(sp)
    80005308:	00013903          	ld	s2,0(sp)
    8000530c:	02010113          	addi	sp,sp,32
    80005310:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005314:	ffffc097          	auipc	ra,0xffffc
    80005318:	0b8080e7          	jalr	184(ra) # 800013cc <_Z15thread_dispatchv>
    8000531c:	fc1ff06f          	j	800052dc <_ZL9fibonaccim+0x30>

0000000080005320 <_ZL11workerBodyDPv>:
    printString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005320:	fe010113          	addi	sp,sp,-32
    80005324:	00113c23          	sd	ra,24(sp)
    80005328:	00813823          	sd	s0,16(sp)
    8000532c:	00913423          	sd	s1,8(sp)
    80005330:	01213023          	sd	s2,0(sp)
    80005334:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005338:	00a00493          	li	s1,10
    8000533c:	0400006f          	j	8000537c <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005340:	00005517          	auipc	a0,0x5
    80005344:	f3850513          	addi	a0,a0,-200 # 8000a278 <CONSOLE_STATUS+0x268>
    80005348:	00001097          	auipc	ra,0x1
    8000534c:	dc8080e7          	jalr	-568(ra) # 80006110 <_Z11printStringPKc>
    80005350:	00000613          	li	a2,0
    80005354:	00a00593          	li	a1,10
    80005358:	00048513          	mv	a0,s1
    8000535c:	00001097          	auipc	ra,0x1
    80005360:	f64080e7          	jalr	-156(ra) # 800062c0 <_Z8printIntiii>
    80005364:	00005517          	auipc	a0,0x5
    80005368:	11450513          	addi	a0,a0,276 # 8000a478 <CONSOLE_STATUS+0x468>
    8000536c:	00001097          	auipc	ra,0x1
    80005370:	da4080e7          	jalr	-604(ra) # 80006110 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005374:	0014849b          	addiw	s1,s1,1
    80005378:	0ff4f493          	andi	s1,s1,255
    8000537c:	00c00793          	li	a5,12
    80005380:	fc97f0e3          	bgeu	a5,s1,80005340 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005384:	00005517          	auipc	a0,0x5
    80005388:	efc50513          	addi	a0,a0,-260 # 8000a280 <CONSOLE_STATUS+0x270>
    8000538c:	00001097          	auipc	ra,0x1
    80005390:	d84080e7          	jalr	-636(ra) # 80006110 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005394:	00500313          	li	t1,5
    thread_dispatch();
    80005398:	ffffc097          	auipc	ra,0xffffc
    8000539c:	034080e7          	jalr	52(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800053a0:	01000513          	li	a0,16
    800053a4:	00000097          	auipc	ra,0x0
    800053a8:	f08080e7          	jalr	-248(ra) # 800052ac <_ZL9fibonaccim>
    800053ac:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800053b0:	00005517          	auipc	a0,0x5
    800053b4:	ee050513          	addi	a0,a0,-288 # 8000a290 <CONSOLE_STATUS+0x280>
    800053b8:	00001097          	auipc	ra,0x1
    800053bc:	d58080e7          	jalr	-680(ra) # 80006110 <_Z11printStringPKc>
    800053c0:	00000613          	li	a2,0
    800053c4:	00a00593          	li	a1,10
    800053c8:	0009051b          	sext.w	a0,s2
    800053cc:	00001097          	auipc	ra,0x1
    800053d0:	ef4080e7          	jalr	-268(ra) # 800062c0 <_Z8printIntiii>
    800053d4:	00005517          	auipc	a0,0x5
    800053d8:	0a450513          	addi	a0,a0,164 # 8000a478 <CONSOLE_STATUS+0x468>
    800053dc:	00001097          	auipc	ra,0x1
    800053e0:	d34080e7          	jalr	-716(ra) # 80006110 <_Z11printStringPKc>
    800053e4:	0400006f          	j	80005424 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800053e8:	00005517          	auipc	a0,0x5
    800053ec:	e9050513          	addi	a0,a0,-368 # 8000a278 <CONSOLE_STATUS+0x268>
    800053f0:	00001097          	auipc	ra,0x1
    800053f4:	d20080e7          	jalr	-736(ra) # 80006110 <_Z11printStringPKc>
    800053f8:	00000613          	li	a2,0
    800053fc:	00a00593          	li	a1,10
    80005400:	00048513          	mv	a0,s1
    80005404:	00001097          	auipc	ra,0x1
    80005408:	ebc080e7          	jalr	-324(ra) # 800062c0 <_Z8printIntiii>
    8000540c:	00005517          	auipc	a0,0x5
    80005410:	06c50513          	addi	a0,a0,108 # 8000a478 <CONSOLE_STATUS+0x468>
    80005414:	00001097          	auipc	ra,0x1
    80005418:	cfc080e7          	jalr	-772(ra) # 80006110 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000541c:	0014849b          	addiw	s1,s1,1
    80005420:	0ff4f493          	andi	s1,s1,255
    80005424:	00f00793          	li	a5,15
    80005428:	fc97f0e3          	bgeu	a5,s1,800053e8 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    8000542c:	00005517          	auipc	a0,0x5
    80005430:	e7450513          	addi	a0,a0,-396 # 8000a2a0 <CONSOLE_STATUS+0x290>
    80005434:	00001097          	auipc	ra,0x1
    80005438:	cdc080e7          	jalr	-804(ra) # 80006110 <_Z11printStringPKc>
    finishedD = true;
    8000543c:	00100793          	li	a5,1
    80005440:	00008717          	auipc	a4,0x8
    80005444:	b8f70c23          	sb	a5,-1128(a4) # 8000cfd8 <_ZL9finishedD>
    thread_dispatch();
    80005448:	ffffc097          	auipc	ra,0xffffc
    8000544c:	f84080e7          	jalr	-124(ra) # 800013cc <_Z15thread_dispatchv>
}
    80005450:	01813083          	ld	ra,24(sp)
    80005454:	01013403          	ld	s0,16(sp)
    80005458:	00813483          	ld	s1,8(sp)
    8000545c:	00013903          	ld	s2,0(sp)
    80005460:	02010113          	addi	sp,sp,32
    80005464:	00008067          	ret

0000000080005468 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005468:	fe010113          	addi	sp,sp,-32
    8000546c:	00113c23          	sd	ra,24(sp)
    80005470:	00813823          	sd	s0,16(sp)
    80005474:	00913423          	sd	s1,8(sp)
    80005478:	01213023          	sd	s2,0(sp)
    8000547c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005480:	00000493          	li	s1,0
    80005484:	0400006f          	j	800054c4 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005488:	00005517          	auipc	a0,0x5
    8000548c:	dc050513          	addi	a0,a0,-576 # 8000a248 <CONSOLE_STATUS+0x238>
    80005490:	00001097          	auipc	ra,0x1
    80005494:	c80080e7          	jalr	-896(ra) # 80006110 <_Z11printStringPKc>
    80005498:	00000613          	li	a2,0
    8000549c:	00a00593          	li	a1,10
    800054a0:	00048513          	mv	a0,s1
    800054a4:	00001097          	auipc	ra,0x1
    800054a8:	e1c080e7          	jalr	-484(ra) # 800062c0 <_Z8printIntiii>
    800054ac:	00005517          	auipc	a0,0x5
    800054b0:	fcc50513          	addi	a0,a0,-52 # 8000a478 <CONSOLE_STATUS+0x468>
    800054b4:	00001097          	auipc	ra,0x1
    800054b8:	c5c080e7          	jalr	-932(ra) # 80006110 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800054bc:	0014849b          	addiw	s1,s1,1
    800054c0:	0ff4f493          	andi	s1,s1,255
    800054c4:	00200793          	li	a5,2
    800054c8:	fc97f0e3          	bgeu	a5,s1,80005488 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800054cc:	00005517          	auipc	a0,0x5
    800054d0:	d8450513          	addi	a0,a0,-636 # 8000a250 <CONSOLE_STATUS+0x240>
    800054d4:	00001097          	auipc	ra,0x1
    800054d8:	c3c080e7          	jalr	-964(ra) # 80006110 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800054dc:	00700313          	li	t1,7
    thread_dispatch();
    800054e0:	ffffc097          	auipc	ra,0xffffc
    800054e4:	eec080e7          	jalr	-276(ra) # 800013cc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800054e8:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800054ec:	00005517          	auipc	a0,0x5
    800054f0:	d7450513          	addi	a0,a0,-652 # 8000a260 <CONSOLE_STATUS+0x250>
    800054f4:	00001097          	auipc	ra,0x1
    800054f8:	c1c080e7          	jalr	-996(ra) # 80006110 <_Z11printStringPKc>
    800054fc:	00000613          	li	a2,0
    80005500:	00a00593          	li	a1,10
    80005504:	0009051b          	sext.w	a0,s2
    80005508:	00001097          	auipc	ra,0x1
    8000550c:	db8080e7          	jalr	-584(ra) # 800062c0 <_Z8printIntiii>
    80005510:	00005517          	auipc	a0,0x5
    80005514:	f6850513          	addi	a0,a0,-152 # 8000a478 <CONSOLE_STATUS+0x468>
    80005518:	00001097          	auipc	ra,0x1
    8000551c:	bf8080e7          	jalr	-1032(ra) # 80006110 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005520:	00c00513          	li	a0,12
    80005524:	00000097          	auipc	ra,0x0
    80005528:	d88080e7          	jalr	-632(ra) # 800052ac <_ZL9fibonaccim>
    8000552c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005530:	00005517          	auipc	a0,0x5
    80005534:	d3850513          	addi	a0,a0,-712 # 8000a268 <CONSOLE_STATUS+0x258>
    80005538:	00001097          	auipc	ra,0x1
    8000553c:	bd8080e7          	jalr	-1064(ra) # 80006110 <_Z11printStringPKc>
    80005540:	00000613          	li	a2,0
    80005544:	00a00593          	li	a1,10
    80005548:	0009051b          	sext.w	a0,s2
    8000554c:	00001097          	auipc	ra,0x1
    80005550:	d74080e7          	jalr	-652(ra) # 800062c0 <_Z8printIntiii>
    80005554:	00005517          	auipc	a0,0x5
    80005558:	f2450513          	addi	a0,a0,-220 # 8000a478 <CONSOLE_STATUS+0x468>
    8000555c:	00001097          	auipc	ra,0x1
    80005560:	bb4080e7          	jalr	-1100(ra) # 80006110 <_Z11printStringPKc>
    80005564:	0400006f          	j	800055a4 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005568:	00005517          	auipc	a0,0x5
    8000556c:	ce050513          	addi	a0,a0,-800 # 8000a248 <CONSOLE_STATUS+0x238>
    80005570:	00001097          	auipc	ra,0x1
    80005574:	ba0080e7          	jalr	-1120(ra) # 80006110 <_Z11printStringPKc>
    80005578:	00000613          	li	a2,0
    8000557c:	00a00593          	li	a1,10
    80005580:	00048513          	mv	a0,s1
    80005584:	00001097          	auipc	ra,0x1
    80005588:	d3c080e7          	jalr	-708(ra) # 800062c0 <_Z8printIntiii>
    8000558c:	00005517          	auipc	a0,0x5
    80005590:	eec50513          	addi	a0,a0,-276 # 8000a478 <CONSOLE_STATUS+0x468>
    80005594:	00001097          	auipc	ra,0x1
    80005598:	b7c080e7          	jalr	-1156(ra) # 80006110 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000559c:	0014849b          	addiw	s1,s1,1
    800055a0:	0ff4f493          	andi	s1,s1,255
    800055a4:	00500793          	li	a5,5
    800055a8:	fc97f0e3          	bgeu	a5,s1,80005568 <_ZL11workerBodyCPv+0x100>
    printString("C finished!\n");
    800055ac:	00005517          	auipc	a0,0x5
    800055b0:	d7c50513          	addi	a0,a0,-644 # 8000a328 <CONSOLE_STATUS+0x318>
    800055b4:	00001097          	auipc	ra,0x1
    800055b8:	b5c080e7          	jalr	-1188(ra) # 80006110 <_Z11printStringPKc>
    finishedC = true;
    800055bc:	00100793          	li	a5,1
    800055c0:	00008717          	auipc	a4,0x8
    800055c4:	a0f70ca3          	sb	a5,-1511(a4) # 8000cfd9 <_ZL9finishedC>
    thread_dispatch();
    800055c8:	ffffc097          	auipc	ra,0xffffc
    800055cc:	e04080e7          	jalr	-508(ra) # 800013cc <_Z15thread_dispatchv>
}
    800055d0:	01813083          	ld	ra,24(sp)
    800055d4:	01013403          	ld	s0,16(sp)
    800055d8:	00813483          	ld	s1,8(sp)
    800055dc:	00013903          	ld	s2,0(sp)
    800055e0:	02010113          	addi	sp,sp,32
    800055e4:	00008067          	ret

00000000800055e8 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800055e8:	fe010113          	addi	sp,sp,-32
    800055ec:	00113c23          	sd	ra,24(sp)
    800055f0:	00813823          	sd	s0,16(sp)
    800055f4:	00913423          	sd	s1,8(sp)
    800055f8:	01213023          	sd	s2,0(sp)
    800055fc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005600:	00000913          	li	s2,0
    80005604:	0380006f          	j	8000563c <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80005608:	ffffc097          	auipc	ra,0xffffc
    8000560c:	dc4080e7          	jalr	-572(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005610:	00148493          	addi	s1,s1,1
    80005614:	000027b7          	lui	a5,0x2
    80005618:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000561c:	0097ee63          	bltu	a5,s1,80005638 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005620:	00000713          	li	a4,0
    80005624:	000077b7          	lui	a5,0x7
    80005628:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000562c:	fce7eee3          	bltu	a5,a4,80005608 <_ZL11workerBodyBPv+0x20>
    80005630:	00170713          	addi	a4,a4,1
    80005634:	ff1ff06f          	j	80005624 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80005638:	00190913          	addi	s2,s2,1
    8000563c:	00f00793          	li	a5,15
    80005640:	0527e063          	bltu	a5,s2,80005680 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80005644:	00005517          	auipc	a0,0x5
    80005648:	bec50513          	addi	a0,a0,-1044 # 8000a230 <CONSOLE_STATUS+0x220>
    8000564c:	00001097          	auipc	ra,0x1
    80005650:	ac4080e7          	jalr	-1340(ra) # 80006110 <_Z11printStringPKc>
    80005654:	00000613          	li	a2,0
    80005658:	00a00593          	li	a1,10
    8000565c:	0009051b          	sext.w	a0,s2
    80005660:	00001097          	auipc	ra,0x1
    80005664:	c60080e7          	jalr	-928(ra) # 800062c0 <_Z8printIntiii>
    80005668:	00005517          	auipc	a0,0x5
    8000566c:	e1050513          	addi	a0,a0,-496 # 8000a478 <CONSOLE_STATUS+0x468>
    80005670:	00001097          	auipc	ra,0x1
    80005674:	aa0080e7          	jalr	-1376(ra) # 80006110 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005678:	00000493          	li	s1,0
    8000567c:	f99ff06f          	j	80005614 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80005680:	00005517          	auipc	a0,0x5
    80005684:	bb850513          	addi	a0,a0,-1096 # 8000a238 <CONSOLE_STATUS+0x228>
    80005688:	00001097          	auipc	ra,0x1
    8000568c:	a88080e7          	jalr	-1400(ra) # 80006110 <_Z11printStringPKc>
    finishedB = true;
    80005690:	00100793          	li	a5,1
    80005694:	00008717          	auipc	a4,0x8
    80005698:	94f70323          	sb	a5,-1722(a4) # 8000cfda <_ZL9finishedB>
    thread_dispatch();
    8000569c:	ffffc097          	auipc	ra,0xffffc
    800056a0:	d30080e7          	jalr	-720(ra) # 800013cc <_Z15thread_dispatchv>
}
    800056a4:	01813083          	ld	ra,24(sp)
    800056a8:	01013403          	ld	s0,16(sp)
    800056ac:	00813483          	ld	s1,8(sp)
    800056b0:	00013903          	ld	s2,0(sp)
    800056b4:	02010113          	addi	sp,sp,32
    800056b8:	00008067          	ret

00000000800056bc <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800056bc:	fe010113          	addi	sp,sp,-32
    800056c0:	00113c23          	sd	ra,24(sp)
    800056c4:	00813823          	sd	s0,16(sp)
    800056c8:	00913423          	sd	s1,8(sp)
    800056cc:	01213023          	sd	s2,0(sp)
    800056d0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800056d4:	00000913          	li	s2,0
    800056d8:	0380006f          	j	80005710 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800056dc:	ffffc097          	auipc	ra,0xffffc
    800056e0:	cf0080e7          	jalr	-784(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800056e4:	00148493          	addi	s1,s1,1
    800056e8:	000027b7          	lui	a5,0x2
    800056ec:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800056f0:	0097ee63          	bltu	a5,s1,8000570c <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800056f4:	00000713          	li	a4,0
    800056f8:	000077b7          	lui	a5,0x7
    800056fc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005700:	fce7eee3          	bltu	a5,a4,800056dc <_ZL11workerBodyAPv+0x20>
    80005704:	00170713          	addi	a4,a4,1
    80005708:	ff1ff06f          	j	800056f8 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000570c:	00190913          	addi	s2,s2,1
    80005710:	00900793          	li	a5,9
    80005714:	0527e063          	bltu	a5,s2,80005754 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005718:	00005517          	auipc	a0,0x5
    8000571c:	b0050513          	addi	a0,a0,-1280 # 8000a218 <CONSOLE_STATUS+0x208>
    80005720:	00001097          	auipc	ra,0x1
    80005724:	9f0080e7          	jalr	-1552(ra) # 80006110 <_Z11printStringPKc>
    80005728:	00000613          	li	a2,0
    8000572c:	00a00593          	li	a1,10
    80005730:	0009051b          	sext.w	a0,s2
    80005734:	00001097          	auipc	ra,0x1
    80005738:	b8c080e7          	jalr	-1140(ra) # 800062c0 <_Z8printIntiii>
    8000573c:	00005517          	auipc	a0,0x5
    80005740:	d3c50513          	addi	a0,a0,-708 # 8000a478 <CONSOLE_STATUS+0x468>
    80005744:	00001097          	auipc	ra,0x1
    80005748:	9cc080e7          	jalr	-1588(ra) # 80006110 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000574c:	00000493          	li	s1,0
    80005750:	f99ff06f          	j	800056e8 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80005754:	00005517          	auipc	a0,0x5
    80005758:	acc50513          	addi	a0,a0,-1332 # 8000a220 <CONSOLE_STATUS+0x210>
    8000575c:	00001097          	auipc	ra,0x1
    80005760:	9b4080e7          	jalr	-1612(ra) # 80006110 <_Z11printStringPKc>
    finishedA = true;
    80005764:	00100793          	li	a5,1
    80005768:	00008717          	auipc	a4,0x8
    8000576c:	86f709a3          	sb	a5,-1933(a4) # 8000cfdb <_ZL9finishedA>
}
    80005770:	01813083          	ld	ra,24(sp)
    80005774:	01013403          	ld	s0,16(sp)
    80005778:	00813483          	ld	s1,8(sp)
    8000577c:	00013903          	ld	s2,0(sp)
    80005780:	02010113          	addi	sp,sp,32
    80005784:	00008067          	ret

0000000080005788 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80005788:	fd010113          	addi	sp,sp,-48
    8000578c:	02113423          	sd	ra,40(sp)
    80005790:	02813023          	sd	s0,32(sp)
    80005794:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005798:	00000613          	li	a2,0
    8000579c:	00000597          	auipc	a1,0x0
    800057a0:	f2058593          	addi	a1,a1,-224 # 800056bc <_ZL11workerBodyAPv>
    800057a4:	fd040513          	addi	a0,s0,-48
    800057a8:	ffffc097          	auipc	ra,0xffffc
    800057ac:	b50080e7          	jalr	-1200(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    800057b0:	00005517          	auipc	a0,0x5
    800057b4:	b0050513          	addi	a0,a0,-1280 # 8000a2b0 <CONSOLE_STATUS+0x2a0>
    800057b8:	00001097          	auipc	ra,0x1
    800057bc:	958080e7          	jalr	-1704(ra) # 80006110 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800057c0:	00000613          	li	a2,0
    800057c4:	00000597          	auipc	a1,0x0
    800057c8:	e2458593          	addi	a1,a1,-476 # 800055e8 <_ZL11workerBodyBPv>
    800057cc:	fd840513          	addi	a0,s0,-40
    800057d0:	ffffc097          	auipc	ra,0xffffc
    800057d4:	b28080e7          	jalr	-1240(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    800057d8:	00005517          	auipc	a0,0x5
    800057dc:	af050513          	addi	a0,a0,-1296 # 8000a2c8 <CONSOLE_STATUS+0x2b8>
    800057e0:	00001097          	auipc	ra,0x1
    800057e4:	930080e7          	jalr	-1744(ra) # 80006110 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800057e8:	00000613          	li	a2,0
    800057ec:	00000597          	auipc	a1,0x0
    800057f0:	c7c58593          	addi	a1,a1,-900 # 80005468 <_ZL11workerBodyCPv>
    800057f4:	fe040513          	addi	a0,s0,-32
    800057f8:	ffffc097          	auipc	ra,0xffffc
    800057fc:	b00080e7          	jalr	-1280(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80005800:	00005517          	auipc	a0,0x5
    80005804:	ae050513          	addi	a0,a0,-1312 # 8000a2e0 <CONSOLE_STATUS+0x2d0>
    80005808:	00001097          	auipc	ra,0x1
    8000580c:	908080e7          	jalr	-1784(ra) # 80006110 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005810:	00000613          	li	a2,0
    80005814:	00000597          	auipc	a1,0x0
    80005818:	b0c58593          	addi	a1,a1,-1268 # 80005320 <_ZL11workerBodyDPv>
    8000581c:	fe840513          	addi	a0,s0,-24
    80005820:	ffffc097          	auipc	ra,0xffffc
    80005824:	ad8080e7          	jalr	-1320(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80005828:	00005517          	auipc	a0,0x5
    8000582c:	ad050513          	addi	a0,a0,-1328 # 8000a2f8 <CONSOLE_STATUS+0x2e8>
    80005830:	00001097          	auipc	ra,0x1
    80005834:	8e0080e7          	jalr	-1824(ra) # 80006110 <_Z11printStringPKc>
    80005838:	00c0006f          	j	80005844 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    8000583c:	ffffc097          	auipc	ra,0xffffc
    80005840:	b90080e7          	jalr	-1136(ra) # 800013cc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005844:	00007797          	auipc	a5,0x7
    80005848:	7977c783          	lbu	a5,1943(a5) # 8000cfdb <_ZL9finishedA>
    8000584c:	fe0788e3          	beqz	a5,8000583c <_Z18Threads_C_API_testv+0xb4>
    80005850:	00007797          	auipc	a5,0x7
    80005854:	78a7c783          	lbu	a5,1930(a5) # 8000cfda <_ZL9finishedB>
    80005858:	fe0782e3          	beqz	a5,8000583c <_Z18Threads_C_API_testv+0xb4>
    8000585c:	00007797          	auipc	a5,0x7
    80005860:	77d7c783          	lbu	a5,1917(a5) # 8000cfd9 <_ZL9finishedC>
    80005864:	fc078ce3          	beqz	a5,8000583c <_Z18Threads_C_API_testv+0xb4>
    80005868:	00007797          	auipc	a5,0x7
    8000586c:	7707c783          	lbu	a5,1904(a5) # 8000cfd8 <_ZL9finishedD>
    80005870:	fc0786e3          	beqz	a5,8000583c <_Z18Threads_C_API_testv+0xb4>
    }

}
    80005874:	02813083          	ld	ra,40(sp)
    80005878:	02013403          	ld	s0,32(sp)
    8000587c:	03010113          	addi	sp,sp,48
    80005880:	00008067          	ret

0000000080005884 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80005884:	fd010113          	addi	sp,sp,-48
    80005888:	02113423          	sd	ra,40(sp)
    8000588c:	02813023          	sd	s0,32(sp)
    80005890:	00913c23          	sd	s1,24(sp)
    80005894:	01213823          	sd	s2,16(sp)
    80005898:	01313423          	sd	s3,8(sp)
    8000589c:	03010413          	addi	s0,sp,48
    800058a0:	00050993          	mv	s3,a0
    800058a4:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800058a8:	00000913          	li	s2,0
    800058ac:	00c0006f          	j	800058b8 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800058b0:	ffffd097          	auipc	ra,0xffffd
    800058b4:	9a4080e7          	jalr	-1628(ra) # 80002254 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    800058b8:	ffffc097          	auipc	ra,0xffffc
    800058bc:	d68080e7          	jalr	-664(ra) # 80001620 <_Z4getcv>
    800058c0:	0005059b          	sext.w	a1,a0
    800058c4:	01b00793          	li	a5,27
    800058c8:	02f58a63          	beq	a1,a5,800058fc <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    800058cc:	0084b503          	ld	a0,8(s1)
    800058d0:	00001097          	auipc	ra,0x1
    800058d4:	c64080e7          	jalr	-924(ra) # 80006534 <_ZN9BufferCPP3putEi>
        i++;
    800058d8:	0019071b          	addiw	a4,s2,1
    800058dc:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800058e0:	0004a683          	lw	a3,0(s1)
    800058e4:	0026979b          	slliw	a5,a3,0x2
    800058e8:	00d787bb          	addw	a5,a5,a3
    800058ec:	0017979b          	slliw	a5,a5,0x1
    800058f0:	02f767bb          	remw	a5,a4,a5
    800058f4:	fc0792e3          	bnez	a5,800058b8 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    800058f8:	fb9ff06f          	j	800058b0 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    800058fc:	00100793          	li	a5,1
    80005900:	00007717          	auipc	a4,0x7
    80005904:	6ef72023          	sw	a5,1760(a4) # 8000cfe0 <_ZL9threadEnd>
    td->buffer->put('!');
    80005908:	0209b783          	ld	a5,32(s3)
    8000590c:	02100593          	li	a1,33
    80005910:	0087b503          	ld	a0,8(a5)
    80005914:	00001097          	auipc	ra,0x1
    80005918:	c20080e7          	jalr	-992(ra) # 80006534 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    8000591c:	0104b503          	ld	a0,16(s1)
    80005920:	ffffd097          	auipc	ra,0xffffd
    80005924:	9f8080e7          	jalr	-1544(ra) # 80002318 <_ZN9Semaphore6signalEv>
}
    80005928:	02813083          	ld	ra,40(sp)
    8000592c:	02013403          	ld	s0,32(sp)
    80005930:	01813483          	ld	s1,24(sp)
    80005934:	01013903          	ld	s2,16(sp)
    80005938:	00813983          	ld	s3,8(sp)
    8000593c:	03010113          	addi	sp,sp,48
    80005940:	00008067          	ret

0000000080005944 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80005944:	fe010113          	addi	sp,sp,-32
    80005948:	00113c23          	sd	ra,24(sp)
    8000594c:	00813823          	sd	s0,16(sp)
    80005950:	00913423          	sd	s1,8(sp)
    80005954:	01213023          	sd	s2,0(sp)
    80005958:	02010413          	addi	s0,sp,32
    8000595c:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005960:	00000913          	li	s2,0
    80005964:	00c0006f          	j	80005970 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005968:	ffffd097          	auipc	ra,0xffffd
    8000596c:	8ec080e7          	jalr	-1812(ra) # 80002254 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80005970:	00007797          	auipc	a5,0x7
    80005974:	6707a783          	lw	a5,1648(a5) # 8000cfe0 <_ZL9threadEnd>
    80005978:	02079e63          	bnez	a5,800059b4 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    8000597c:	0004a583          	lw	a1,0(s1)
    80005980:	0305859b          	addiw	a1,a1,48
    80005984:	0084b503          	ld	a0,8(s1)
    80005988:	00001097          	auipc	ra,0x1
    8000598c:	bac080e7          	jalr	-1108(ra) # 80006534 <_ZN9BufferCPP3putEi>
        i++;
    80005990:	0019071b          	addiw	a4,s2,1
    80005994:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005998:	0004a683          	lw	a3,0(s1)
    8000599c:	0026979b          	slliw	a5,a3,0x2
    800059a0:	00d787bb          	addw	a5,a5,a3
    800059a4:	0017979b          	slliw	a5,a5,0x1
    800059a8:	02f767bb          	remw	a5,a4,a5
    800059ac:	fc0792e3          	bnez	a5,80005970 <_ZN12ProducerSync8producerEPv+0x2c>
    800059b0:	fb9ff06f          	j	80005968 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    800059b4:	0104b503          	ld	a0,16(s1)
    800059b8:	ffffd097          	auipc	ra,0xffffd
    800059bc:	960080e7          	jalr	-1696(ra) # 80002318 <_ZN9Semaphore6signalEv>
}
    800059c0:	01813083          	ld	ra,24(sp)
    800059c4:	01013403          	ld	s0,16(sp)
    800059c8:	00813483          	ld	s1,8(sp)
    800059cc:	00013903          	ld	s2,0(sp)
    800059d0:	02010113          	addi	sp,sp,32
    800059d4:	00008067          	ret

00000000800059d8 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    800059d8:	fd010113          	addi	sp,sp,-48
    800059dc:	02113423          	sd	ra,40(sp)
    800059e0:	02813023          	sd	s0,32(sp)
    800059e4:	00913c23          	sd	s1,24(sp)
    800059e8:	01213823          	sd	s2,16(sp)
    800059ec:	01313423          	sd	s3,8(sp)
    800059f0:	01413023          	sd	s4,0(sp)
    800059f4:	03010413          	addi	s0,sp,48
    800059f8:	00050993          	mv	s3,a0
    800059fc:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005a00:	00000a13          	li	s4,0
    80005a04:	01c0006f          	j	80005a20 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80005a08:	ffffd097          	auipc	ra,0xffffd
    80005a0c:	84c080e7          	jalr	-1972(ra) # 80002254 <_ZN6Thread8dispatchEv>
    80005a10:	0500006f          	j	80005a60 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80005a14:	00a00513          	li	a0,10
    80005a18:	ffffc097          	auipc	ra,0xffffc
    80005a1c:	c54080e7          	jalr	-940(ra) # 8000166c <_Z4putcc>
    while (!threadEnd) {
    80005a20:	00007797          	auipc	a5,0x7
    80005a24:	5c07a783          	lw	a5,1472(a5) # 8000cfe0 <_ZL9threadEnd>
    80005a28:	06079263          	bnez	a5,80005a8c <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80005a2c:	00893503          	ld	a0,8(s2)
    80005a30:	00001097          	auipc	ra,0x1
    80005a34:	b94080e7          	jalr	-1132(ra) # 800065c4 <_ZN9BufferCPP3getEv>
        i++;
    80005a38:	001a049b          	addiw	s1,s4,1
    80005a3c:	00048a1b          	sext.w	s4,s1
        putc(key);
    80005a40:	0ff57513          	andi	a0,a0,255
    80005a44:	ffffc097          	auipc	ra,0xffffc
    80005a48:	c28080e7          	jalr	-984(ra) # 8000166c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80005a4c:	00092703          	lw	a4,0(s2)
    80005a50:	0027179b          	slliw	a5,a4,0x2
    80005a54:	00e787bb          	addw	a5,a5,a4
    80005a58:	02f4e7bb          	remw	a5,s1,a5
    80005a5c:	fa0786e3          	beqz	a5,80005a08 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80005a60:	05000793          	li	a5,80
    80005a64:	02f4e4bb          	remw	s1,s1,a5
    80005a68:	fa049ce3          	bnez	s1,80005a20 <_ZN12ConsumerSync8consumerEPv+0x48>
    80005a6c:	fa9ff06f          	j	80005a14 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80005a70:	0209b783          	ld	a5,32(s3)
    80005a74:	0087b503          	ld	a0,8(a5)
    80005a78:	00001097          	auipc	ra,0x1
    80005a7c:	b4c080e7          	jalr	-1204(ra) # 800065c4 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80005a80:	0ff57513          	andi	a0,a0,255
    80005a84:	ffffd097          	auipc	ra,0xffffd
    80005a88:	9c8080e7          	jalr	-1592(ra) # 8000244c <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80005a8c:	0209b783          	ld	a5,32(s3)
    80005a90:	0087b503          	ld	a0,8(a5)
    80005a94:	00001097          	auipc	ra,0x1
    80005a98:	bbc080e7          	jalr	-1092(ra) # 80006650 <_ZN9BufferCPP6getCntEv>
    80005a9c:	fca04ae3          	bgtz	a0,80005a70 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80005aa0:	01093503          	ld	a0,16(s2)
    80005aa4:	ffffd097          	auipc	ra,0xffffd
    80005aa8:	874080e7          	jalr	-1932(ra) # 80002318 <_ZN9Semaphore6signalEv>
}
    80005aac:	02813083          	ld	ra,40(sp)
    80005ab0:	02013403          	ld	s0,32(sp)
    80005ab4:	01813483          	ld	s1,24(sp)
    80005ab8:	01013903          	ld	s2,16(sp)
    80005abc:	00813983          	ld	s3,8(sp)
    80005ac0:	00013a03          	ld	s4,0(sp)
    80005ac4:	03010113          	addi	sp,sp,48
    80005ac8:	00008067          	ret

0000000080005acc <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80005acc:	f8010113          	addi	sp,sp,-128
    80005ad0:	06113c23          	sd	ra,120(sp)
    80005ad4:	06813823          	sd	s0,112(sp)
    80005ad8:	06913423          	sd	s1,104(sp)
    80005adc:	07213023          	sd	s2,96(sp)
    80005ae0:	05313c23          	sd	s3,88(sp)
    80005ae4:	05413823          	sd	s4,80(sp)
    80005ae8:	05513423          	sd	s5,72(sp)
    80005aec:	05613023          	sd	s6,64(sp)
    80005af0:	03713c23          	sd	s7,56(sp)
    80005af4:	03813823          	sd	s8,48(sp)
    80005af8:	03913423          	sd	s9,40(sp)
    80005afc:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80005b00:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80005b04:	00004517          	auipc	a0,0x4
    80005b08:	62c50513          	addi	a0,a0,1580 # 8000a130 <CONSOLE_STATUS+0x120>
    80005b0c:	00000097          	auipc	ra,0x0
    80005b10:	604080e7          	jalr	1540(ra) # 80006110 <_Z11printStringPKc>
    getString(input, 30);
    80005b14:	01e00593          	li	a1,30
    80005b18:	f8040493          	addi	s1,s0,-128
    80005b1c:	00048513          	mv	a0,s1
    80005b20:	00000097          	auipc	ra,0x0
    80005b24:	678080e7          	jalr	1656(ra) # 80006198 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80005b28:	00048513          	mv	a0,s1
    80005b2c:	00000097          	auipc	ra,0x0
    80005b30:	744080e7          	jalr	1860(ra) # 80006270 <_Z11stringToIntPKc>
    80005b34:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80005b38:	00004517          	auipc	a0,0x4
    80005b3c:	61850513          	addi	a0,a0,1560 # 8000a150 <CONSOLE_STATUS+0x140>
    80005b40:	00000097          	auipc	ra,0x0
    80005b44:	5d0080e7          	jalr	1488(ra) # 80006110 <_Z11printStringPKc>
    getString(input, 30);
    80005b48:	01e00593          	li	a1,30
    80005b4c:	00048513          	mv	a0,s1
    80005b50:	00000097          	auipc	ra,0x0
    80005b54:	648080e7          	jalr	1608(ra) # 80006198 <_Z9getStringPci>
    n = stringToInt(input);
    80005b58:	00048513          	mv	a0,s1
    80005b5c:	00000097          	auipc	ra,0x0
    80005b60:	714080e7          	jalr	1812(ra) # 80006270 <_Z11stringToIntPKc>
    80005b64:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80005b68:	00004517          	auipc	a0,0x4
    80005b6c:	60850513          	addi	a0,a0,1544 # 8000a170 <CONSOLE_STATUS+0x160>
    80005b70:	00000097          	auipc	ra,0x0
    80005b74:	5a0080e7          	jalr	1440(ra) # 80006110 <_Z11printStringPKc>
    80005b78:	00000613          	li	a2,0
    80005b7c:	00a00593          	li	a1,10
    80005b80:	00090513          	mv	a0,s2
    80005b84:	00000097          	auipc	ra,0x0
    80005b88:	73c080e7          	jalr	1852(ra) # 800062c0 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80005b8c:	00004517          	auipc	a0,0x4
    80005b90:	5fc50513          	addi	a0,a0,1532 # 8000a188 <CONSOLE_STATUS+0x178>
    80005b94:	00000097          	auipc	ra,0x0
    80005b98:	57c080e7          	jalr	1404(ra) # 80006110 <_Z11printStringPKc>
    80005b9c:	00000613          	li	a2,0
    80005ba0:	00a00593          	li	a1,10
    80005ba4:	00048513          	mv	a0,s1
    80005ba8:	00000097          	auipc	ra,0x0
    80005bac:	718080e7          	jalr	1816(ra) # 800062c0 <_Z8printIntiii>
    printString(".\n");
    80005bb0:	00004517          	auipc	a0,0x4
    80005bb4:	5f050513          	addi	a0,a0,1520 # 8000a1a0 <CONSOLE_STATUS+0x190>
    80005bb8:	00000097          	auipc	ra,0x0
    80005bbc:	558080e7          	jalr	1368(ra) # 80006110 <_Z11printStringPKc>
    if(threadNum > n) {
    80005bc0:	0324c463          	blt	s1,s2,80005be8 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80005bc4:	03205c63          	blez	s2,80005bfc <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80005bc8:	03800513          	li	a0,56
    80005bcc:	ffffc097          	auipc	ra,0xffffc
    80005bd0:	520080e7          	jalr	1312(ra) # 800020ec <_Znwm>
    80005bd4:	00050a93          	mv	s5,a0
    80005bd8:	00048593          	mv	a1,s1
    80005bdc:	00001097          	auipc	ra,0x1
    80005be0:	804080e7          	jalr	-2044(ra) # 800063e0 <_ZN9BufferCPPC1Ei>
    80005be4:	0300006f          	j	80005c14 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005be8:	00004517          	auipc	a0,0x4
    80005bec:	5c050513          	addi	a0,a0,1472 # 8000a1a8 <CONSOLE_STATUS+0x198>
    80005bf0:	00000097          	auipc	ra,0x0
    80005bf4:	520080e7          	jalr	1312(ra) # 80006110 <_Z11printStringPKc>
        return;
    80005bf8:	0140006f          	j	80005c0c <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80005bfc:	00004517          	auipc	a0,0x4
    80005c00:	5ec50513          	addi	a0,a0,1516 # 8000a1e8 <CONSOLE_STATUS+0x1d8>
    80005c04:	00000097          	auipc	ra,0x0
    80005c08:	50c080e7          	jalr	1292(ra) # 80006110 <_Z11printStringPKc>
        return;
    80005c0c:	000b8113          	mv	sp,s7
    80005c10:	2380006f          	j	80005e48 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80005c14:	01000513          	li	a0,16
    80005c18:	ffffc097          	auipc	ra,0xffffc
    80005c1c:	4d4080e7          	jalr	1236(ra) # 800020ec <_Znwm>
    80005c20:	00050493          	mv	s1,a0
    80005c24:	00000593          	li	a1,0
    80005c28:	ffffc097          	auipc	ra,0xffffc
    80005c2c:	67c080e7          	jalr	1660(ra) # 800022a4 <_ZN9SemaphoreC1Ej>
    80005c30:	00007797          	auipc	a5,0x7
    80005c34:	3a97bc23          	sd	s1,952(a5) # 8000cfe8 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80005c38:	00391793          	slli	a5,s2,0x3
    80005c3c:	00f78793          	addi	a5,a5,15
    80005c40:	ff07f793          	andi	a5,a5,-16
    80005c44:	40f10133          	sub	sp,sp,a5
    80005c48:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80005c4c:	0019071b          	addiw	a4,s2,1
    80005c50:	00171793          	slli	a5,a4,0x1
    80005c54:	00e787b3          	add	a5,a5,a4
    80005c58:	00379793          	slli	a5,a5,0x3
    80005c5c:	00f78793          	addi	a5,a5,15
    80005c60:	ff07f793          	andi	a5,a5,-16
    80005c64:	40f10133          	sub	sp,sp,a5
    80005c68:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80005c6c:	00191c13          	slli	s8,s2,0x1
    80005c70:	012c07b3          	add	a5,s8,s2
    80005c74:	00379793          	slli	a5,a5,0x3
    80005c78:	00fa07b3          	add	a5,s4,a5
    80005c7c:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80005c80:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80005c84:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80005c88:	02800513          	li	a0,40
    80005c8c:	ffffc097          	auipc	ra,0xffffc
    80005c90:	460080e7          	jalr	1120(ra) # 800020ec <_Znwm>
    80005c94:	00050b13          	mv	s6,a0
    80005c98:	012c0c33          	add	s8,s8,s2
    80005c9c:	003c1c13          	slli	s8,s8,0x3
    80005ca0:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80005ca4:	ffffc097          	auipc	ra,0xffffc
    80005ca8:	548080e7          	jalr	1352(ra) # 800021ec <_ZN6ThreadC1Ev>
    80005cac:	00007797          	auipc	a5,0x7
    80005cb0:	1cc78793          	addi	a5,a5,460 # 8000ce78 <_ZTV12ConsumerSync+0x10>
    80005cb4:	00fb3023          	sd	a5,0(s6)
    80005cb8:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80005cbc:	000b0513          	mv	a0,s6
    80005cc0:	ffffc097          	auipc	ra,0xffffc
    80005cc4:	55c080e7          	jalr	1372(ra) # 8000221c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005cc8:	00000493          	li	s1,0
    80005ccc:	0380006f          	j	80005d04 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005cd0:	00007797          	auipc	a5,0x7
    80005cd4:	18078793          	addi	a5,a5,384 # 8000ce50 <_ZTV12ProducerSync+0x10>
    80005cd8:	00fcb023          	sd	a5,0(s9)
    80005cdc:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80005ce0:	00349793          	slli	a5,s1,0x3
    80005ce4:	00f987b3          	add	a5,s3,a5
    80005ce8:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80005cec:	00349793          	slli	a5,s1,0x3
    80005cf0:	00f987b3          	add	a5,s3,a5
    80005cf4:	0007b503          	ld	a0,0(a5)
    80005cf8:	ffffc097          	auipc	ra,0xffffc
    80005cfc:	524080e7          	jalr	1316(ra) # 8000221c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005d00:	0014849b          	addiw	s1,s1,1
    80005d04:	0b24d063          	bge	s1,s2,80005da4 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80005d08:	00149793          	slli	a5,s1,0x1
    80005d0c:	009787b3          	add	a5,a5,s1
    80005d10:	00379793          	slli	a5,a5,0x3
    80005d14:	00fa07b3          	add	a5,s4,a5
    80005d18:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005d1c:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80005d20:	00007717          	auipc	a4,0x7
    80005d24:	2c873703          	ld	a4,712(a4) # 8000cfe8 <_ZL10waitForAll>
    80005d28:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80005d2c:	02905863          	blez	s1,80005d5c <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80005d30:	02800513          	li	a0,40
    80005d34:	ffffc097          	auipc	ra,0xffffc
    80005d38:	3b8080e7          	jalr	952(ra) # 800020ec <_Znwm>
    80005d3c:	00050c93          	mv	s9,a0
    80005d40:	00149c13          	slli	s8,s1,0x1
    80005d44:	009c0c33          	add	s8,s8,s1
    80005d48:	003c1c13          	slli	s8,s8,0x3
    80005d4c:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005d50:	ffffc097          	auipc	ra,0xffffc
    80005d54:	49c080e7          	jalr	1180(ra) # 800021ec <_ZN6ThreadC1Ev>
    80005d58:	f79ff06f          	j	80005cd0 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80005d5c:	02800513          	li	a0,40
    80005d60:	ffffc097          	auipc	ra,0xffffc
    80005d64:	38c080e7          	jalr	908(ra) # 800020ec <_Znwm>
    80005d68:	00050c93          	mv	s9,a0
    80005d6c:	00149c13          	slli	s8,s1,0x1
    80005d70:	009c0c33          	add	s8,s8,s1
    80005d74:	003c1c13          	slli	s8,s8,0x3
    80005d78:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80005d7c:	ffffc097          	auipc	ra,0xffffc
    80005d80:	470080e7          	jalr	1136(ra) # 800021ec <_ZN6ThreadC1Ev>
    80005d84:	00007797          	auipc	a5,0x7
    80005d88:	0a478793          	addi	a5,a5,164 # 8000ce28 <_ZTV16ProducerKeyboard+0x10>
    80005d8c:	00fcb023          	sd	a5,0(s9)
    80005d90:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80005d94:	00349793          	slli	a5,s1,0x3
    80005d98:	00f987b3          	add	a5,s3,a5
    80005d9c:	0197b023          	sd	s9,0(a5)
    80005da0:	f4dff06f          	j	80005cec <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80005da4:	ffffc097          	auipc	ra,0xffffc
    80005da8:	4b0080e7          	jalr	1200(ra) # 80002254 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80005dac:	00000493          	li	s1,0
    80005db0:	00994e63          	blt	s2,s1,80005dcc <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80005db4:	00007517          	auipc	a0,0x7
    80005db8:	23453503          	ld	a0,564(a0) # 8000cfe8 <_ZL10waitForAll>
    80005dbc:	ffffc097          	auipc	ra,0xffffc
    80005dc0:	524080e7          	jalr	1316(ra) # 800022e0 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80005dc4:	0014849b          	addiw	s1,s1,1
    80005dc8:	fe9ff06f          	j	80005db0 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80005dcc:	00000493          	li	s1,0
    80005dd0:	0080006f          	j	80005dd8 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80005dd4:	0014849b          	addiw	s1,s1,1
    80005dd8:	0324d263          	bge	s1,s2,80005dfc <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80005ddc:	00349793          	slli	a5,s1,0x3
    80005de0:	00f987b3          	add	a5,s3,a5
    80005de4:	0007b503          	ld	a0,0(a5)
    80005de8:	fe0506e3          	beqz	a0,80005dd4 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80005dec:	00053783          	ld	a5,0(a0)
    80005df0:	0087b783          	ld	a5,8(a5)
    80005df4:	000780e7          	jalr	a5
    80005df8:	fddff06f          	j	80005dd4 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80005dfc:	000b0a63          	beqz	s6,80005e10 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80005e00:	000b3783          	ld	a5,0(s6)
    80005e04:	0087b783          	ld	a5,8(a5)
    80005e08:	000b0513          	mv	a0,s6
    80005e0c:	000780e7          	jalr	a5
    delete waitForAll;
    80005e10:	00007517          	auipc	a0,0x7
    80005e14:	1d853503          	ld	a0,472(a0) # 8000cfe8 <_ZL10waitForAll>
    80005e18:	00050863          	beqz	a0,80005e28 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80005e1c:	00053783          	ld	a5,0(a0)
    80005e20:	0087b783          	ld	a5,8(a5)
    80005e24:	000780e7          	jalr	a5
    delete buffer;
    80005e28:	000a8e63          	beqz	s5,80005e44 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80005e2c:	000a8513          	mv	a0,s5
    80005e30:	00001097          	auipc	ra,0x1
    80005e34:	8a8080e7          	jalr	-1880(ra) # 800066d8 <_ZN9BufferCPPD1Ev>
    80005e38:	000a8513          	mv	a0,s5
    80005e3c:	ffffc097          	auipc	ra,0xffffc
    80005e40:	2d8080e7          	jalr	728(ra) # 80002114 <_ZdlPv>
    80005e44:	000b8113          	mv	sp,s7

}
    80005e48:	f8040113          	addi	sp,s0,-128
    80005e4c:	07813083          	ld	ra,120(sp)
    80005e50:	07013403          	ld	s0,112(sp)
    80005e54:	06813483          	ld	s1,104(sp)
    80005e58:	06013903          	ld	s2,96(sp)
    80005e5c:	05813983          	ld	s3,88(sp)
    80005e60:	05013a03          	ld	s4,80(sp)
    80005e64:	04813a83          	ld	s5,72(sp)
    80005e68:	04013b03          	ld	s6,64(sp)
    80005e6c:	03813b83          	ld	s7,56(sp)
    80005e70:	03013c03          	ld	s8,48(sp)
    80005e74:	02813c83          	ld	s9,40(sp)
    80005e78:	08010113          	addi	sp,sp,128
    80005e7c:	00008067          	ret
    80005e80:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80005e84:	000a8513          	mv	a0,s5
    80005e88:	ffffc097          	auipc	ra,0xffffc
    80005e8c:	28c080e7          	jalr	652(ra) # 80002114 <_ZdlPv>
    80005e90:	00048513          	mv	a0,s1
    80005e94:	00008097          	auipc	ra,0x8
    80005e98:	234080e7          	jalr	564(ra) # 8000e0c8 <_Unwind_Resume>
    80005e9c:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80005ea0:	00048513          	mv	a0,s1
    80005ea4:	ffffc097          	auipc	ra,0xffffc
    80005ea8:	270080e7          	jalr	624(ra) # 80002114 <_ZdlPv>
    80005eac:	00090513          	mv	a0,s2
    80005eb0:	00008097          	auipc	ra,0x8
    80005eb4:	218080e7          	jalr	536(ra) # 8000e0c8 <_Unwind_Resume>
    80005eb8:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80005ebc:	000b0513          	mv	a0,s6
    80005ec0:	ffffc097          	auipc	ra,0xffffc
    80005ec4:	254080e7          	jalr	596(ra) # 80002114 <_ZdlPv>
    80005ec8:	00048513          	mv	a0,s1
    80005ecc:	00008097          	auipc	ra,0x8
    80005ed0:	1fc080e7          	jalr	508(ra) # 8000e0c8 <_Unwind_Resume>
    80005ed4:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005ed8:	000c8513          	mv	a0,s9
    80005edc:	ffffc097          	auipc	ra,0xffffc
    80005ee0:	238080e7          	jalr	568(ra) # 80002114 <_ZdlPv>
    80005ee4:	00048513          	mv	a0,s1
    80005ee8:	00008097          	auipc	ra,0x8
    80005eec:	1e0080e7          	jalr	480(ra) # 8000e0c8 <_Unwind_Resume>
    80005ef0:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005ef4:	000c8513          	mv	a0,s9
    80005ef8:	ffffc097          	auipc	ra,0xffffc
    80005efc:	21c080e7          	jalr	540(ra) # 80002114 <_ZdlPv>
    80005f00:	00048513          	mv	a0,s1
    80005f04:	00008097          	auipc	ra,0x8
    80005f08:	1c4080e7          	jalr	452(ra) # 8000e0c8 <_Unwind_Resume>

0000000080005f0c <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005f0c:	ff010113          	addi	sp,sp,-16
    80005f10:	00113423          	sd	ra,8(sp)
    80005f14:	00813023          	sd	s0,0(sp)
    80005f18:	01010413          	addi	s0,sp,16
    80005f1c:	00007797          	auipc	a5,0x7
    80005f20:	f5c78793          	addi	a5,a5,-164 # 8000ce78 <_ZTV12ConsumerSync+0x10>
    80005f24:	00f53023          	sd	a5,0(a0)
    80005f28:	ffffc097          	auipc	ra,0xffffc
    80005f2c:	0f4080e7          	jalr	244(ra) # 8000201c <_ZN6ThreadD1Ev>
    80005f30:	00813083          	ld	ra,8(sp)
    80005f34:	00013403          	ld	s0,0(sp)
    80005f38:	01010113          	addi	sp,sp,16
    80005f3c:	00008067          	ret

0000000080005f40 <_ZN12ConsumerSyncD0Ev>:
    80005f40:	fe010113          	addi	sp,sp,-32
    80005f44:	00113c23          	sd	ra,24(sp)
    80005f48:	00813823          	sd	s0,16(sp)
    80005f4c:	00913423          	sd	s1,8(sp)
    80005f50:	02010413          	addi	s0,sp,32
    80005f54:	00050493          	mv	s1,a0
    80005f58:	00007797          	auipc	a5,0x7
    80005f5c:	f2078793          	addi	a5,a5,-224 # 8000ce78 <_ZTV12ConsumerSync+0x10>
    80005f60:	00f53023          	sd	a5,0(a0)
    80005f64:	ffffc097          	auipc	ra,0xffffc
    80005f68:	0b8080e7          	jalr	184(ra) # 8000201c <_ZN6ThreadD1Ev>
    80005f6c:	00048513          	mv	a0,s1
    80005f70:	ffffc097          	auipc	ra,0xffffc
    80005f74:	1a4080e7          	jalr	420(ra) # 80002114 <_ZdlPv>
    80005f78:	01813083          	ld	ra,24(sp)
    80005f7c:	01013403          	ld	s0,16(sp)
    80005f80:	00813483          	ld	s1,8(sp)
    80005f84:	02010113          	addi	sp,sp,32
    80005f88:	00008067          	ret

0000000080005f8c <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80005f8c:	ff010113          	addi	sp,sp,-16
    80005f90:	00113423          	sd	ra,8(sp)
    80005f94:	00813023          	sd	s0,0(sp)
    80005f98:	01010413          	addi	s0,sp,16
    80005f9c:	00007797          	auipc	a5,0x7
    80005fa0:	eb478793          	addi	a5,a5,-332 # 8000ce50 <_ZTV12ProducerSync+0x10>
    80005fa4:	00f53023          	sd	a5,0(a0)
    80005fa8:	ffffc097          	auipc	ra,0xffffc
    80005fac:	074080e7          	jalr	116(ra) # 8000201c <_ZN6ThreadD1Ev>
    80005fb0:	00813083          	ld	ra,8(sp)
    80005fb4:	00013403          	ld	s0,0(sp)
    80005fb8:	01010113          	addi	sp,sp,16
    80005fbc:	00008067          	ret

0000000080005fc0 <_ZN12ProducerSyncD0Ev>:
    80005fc0:	fe010113          	addi	sp,sp,-32
    80005fc4:	00113c23          	sd	ra,24(sp)
    80005fc8:	00813823          	sd	s0,16(sp)
    80005fcc:	00913423          	sd	s1,8(sp)
    80005fd0:	02010413          	addi	s0,sp,32
    80005fd4:	00050493          	mv	s1,a0
    80005fd8:	00007797          	auipc	a5,0x7
    80005fdc:	e7878793          	addi	a5,a5,-392 # 8000ce50 <_ZTV12ProducerSync+0x10>
    80005fe0:	00f53023          	sd	a5,0(a0)
    80005fe4:	ffffc097          	auipc	ra,0xffffc
    80005fe8:	038080e7          	jalr	56(ra) # 8000201c <_ZN6ThreadD1Ev>
    80005fec:	00048513          	mv	a0,s1
    80005ff0:	ffffc097          	auipc	ra,0xffffc
    80005ff4:	124080e7          	jalr	292(ra) # 80002114 <_ZdlPv>
    80005ff8:	01813083          	ld	ra,24(sp)
    80005ffc:	01013403          	ld	s0,16(sp)
    80006000:	00813483          	ld	s1,8(sp)
    80006004:	02010113          	addi	sp,sp,32
    80006008:	00008067          	ret

000000008000600c <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    8000600c:	ff010113          	addi	sp,sp,-16
    80006010:	00113423          	sd	ra,8(sp)
    80006014:	00813023          	sd	s0,0(sp)
    80006018:	01010413          	addi	s0,sp,16
    8000601c:	00007797          	auipc	a5,0x7
    80006020:	e0c78793          	addi	a5,a5,-500 # 8000ce28 <_ZTV16ProducerKeyboard+0x10>
    80006024:	00f53023          	sd	a5,0(a0)
    80006028:	ffffc097          	auipc	ra,0xffffc
    8000602c:	ff4080e7          	jalr	-12(ra) # 8000201c <_ZN6ThreadD1Ev>
    80006030:	00813083          	ld	ra,8(sp)
    80006034:	00013403          	ld	s0,0(sp)
    80006038:	01010113          	addi	sp,sp,16
    8000603c:	00008067          	ret

0000000080006040 <_ZN16ProducerKeyboardD0Ev>:
    80006040:	fe010113          	addi	sp,sp,-32
    80006044:	00113c23          	sd	ra,24(sp)
    80006048:	00813823          	sd	s0,16(sp)
    8000604c:	00913423          	sd	s1,8(sp)
    80006050:	02010413          	addi	s0,sp,32
    80006054:	00050493          	mv	s1,a0
    80006058:	00007797          	auipc	a5,0x7
    8000605c:	dd078793          	addi	a5,a5,-560 # 8000ce28 <_ZTV16ProducerKeyboard+0x10>
    80006060:	00f53023          	sd	a5,0(a0)
    80006064:	ffffc097          	auipc	ra,0xffffc
    80006068:	fb8080e7          	jalr	-72(ra) # 8000201c <_ZN6ThreadD1Ev>
    8000606c:	00048513          	mv	a0,s1
    80006070:	ffffc097          	auipc	ra,0xffffc
    80006074:	0a4080e7          	jalr	164(ra) # 80002114 <_ZdlPv>
    80006078:	01813083          	ld	ra,24(sp)
    8000607c:	01013403          	ld	s0,16(sp)
    80006080:	00813483          	ld	s1,8(sp)
    80006084:	02010113          	addi	sp,sp,32
    80006088:	00008067          	ret

000000008000608c <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    8000608c:	ff010113          	addi	sp,sp,-16
    80006090:	00113423          	sd	ra,8(sp)
    80006094:	00813023          	sd	s0,0(sp)
    80006098:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    8000609c:	02053583          	ld	a1,32(a0)
    800060a0:	fffff097          	auipc	ra,0xfffff
    800060a4:	7e4080e7          	jalr	2020(ra) # 80005884 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    800060a8:	00813083          	ld	ra,8(sp)
    800060ac:	00013403          	ld	s0,0(sp)
    800060b0:	01010113          	addi	sp,sp,16
    800060b4:	00008067          	ret

00000000800060b8 <_ZN12ProducerSync3runEv>:
    void run() override {
    800060b8:	ff010113          	addi	sp,sp,-16
    800060bc:	00113423          	sd	ra,8(sp)
    800060c0:	00813023          	sd	s0,0(sp)
    800060c4:	01010413          	addi	s0,sp,16
        producer(td);
    800060c8:	02053583          	ld	a1,32(a0)
    800060cc:	00000097          	auipc	ra,0x0
    800060d0:	878080e7          	jalr	-1928(ra) # 80005944 <_ZN12ProducerSync8producerEPv>
    }
    800060d4:	00813083          	ld	ra,8(sp)
    800060d8:	00013403          	ld	s0,0(sp)
    800060dc:	01010113          	addi	sp,sp,16
    800060e0:	00008067          	ret

00000000800060e4 <_ZN12ConsumerSync3runEv>:
    void run() override {
    800060e4:	ff010113          	addi	sp,sp,-16
    800060e8:	00113423          	sd	ra,8(sp)
    800060ec:	00813023          	sd	s0,0(sp)
    800060f0:	01010413          	addi	s0,sp,16
        consumer(td);
    800060f4:	02053583          	ld	a1,32(a0)
    800060f8:	00000097          	auipc	ra,0x0
    800060fc:	8e0080e7          	jalr	-1824(ra) # 800059d8 <_ZN12ConsumerSync8consumerEPv>
    }
    80006100:	00813083          	ld	ra,8(sp)
    80006104:	00013403          	ld	s0,0(sp)
    80006108:	01010113          	addi	sp,sp,16
    8000610c:	00008067          	ret

0000000080006110 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80006110:	fe010113          	addi	sp,sp,-32
    80006114:	00113c23          	sd	ra,24(sp)
    80006118:	00813823          	sd	s0,16(sp)
    8000611c:	00913423          	sd	s1,8(sp)
    80006120:	02010413          	addi	s0,sp,32
    80006124:	00050493          	mv	s1,a0
    LOCK();
    80006128:	00100613          	li	a2,1
    8000612c:	00000593          	li	a1,0
    80006130:	00007517          	auipc	a0,0x7
    80006134:	ec050513          	addi	a0,a0,-320 # 8000cff0 <lockPrint>
    80006138:	ffffb097          	auipc	ra,0xffffb
    8000613c:	0e4080e7          	jalr	228(ra) # 8000121c <copy_and_swap>
    80006140:	00050863          	beqz	a0,80006150 <_Z11printStringPKc+0x40>
    80006144:	ffffb097          	auipc	ra,0xffffb
    80006148:	288080e7          	jalr	648(ra) # 800013cc <_Z15thread_dispatchv>
    8000614c:	fddff06f          	j	80006128 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80006150:	0004c503          	lbu	a0,0(s1)
    80006154:	00050a63          	beqz	a0,80006168 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80006158:	ffffb097          	auipc	ra,0xffffb
    8000615c:	514080e7          	jalr	1300(ra) # 8000166c <_Z4putcc>
        string++;
    80006160:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80006164:	fedff06f          	j	80006150 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80006168:	00000613          	li	a2,0
    8000616c:	00100593          	li	a1,1
    80006170:	00007517          	auipc	a0,0x7
    80006174:	e8050513          	addi	a0,a0,-384 # 8000cff0 <lockPrint>
    80006178:	ffffb097          	auipc	ra,0xffffb
    8000617c:	0a4080e7          	jalr	164(ra) # 8000121c <copy_and_swap>
    80006180:	fe0514e3          	bnez	a0,80006168 <_Z11printStringPKc+0x58>
}
    80006184:	01813083          	ld	ra,24(sp)
    80006188:	01013403          	ld	s0,16(sp)
    8000618c:	00813483          	ld	s1,8(sp)
    80006190:	02010113          	addi	sp,sp,32
    80006194:	00008067          	ret

0000000080006198 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80006198:	fd010113          	addi	sp,sp,-48
    8000619c:	02113423          	sd	ra,40(sp)
    800061a0:	02813023          	sd	s0,32(sp)
    800061a4:	00913c23          	sd	s1,24(sp)
    800061a8:	01213823          	sd	s2,16(sp)
    800061ac:	01313423          	sd	s3,8(sp)
    800061b0:	01413023          	sd	s4,0(sp)
    800061b4:	03010413          	addi	s0,sp,48
    800061b8:	00050993          	mv	s3,a0
    800061bc:	00058a13          	mv	s4,a1
    LOCK();
    800061c0:	00100613          	li	a2,1
    800061c4:	00000593          	li	a1,0
    800061c8:	00007517          	auipc	a0,0x7
    800061cc:	e2850513          	addi	a0,a0,-472 # 8000cff0 <lockPrint>
    800061d0:	ffffb097          	auipc	ra,0xffffb
    800061d4:	04c080e7          	jalr	76(ra) # 8000121c <copy_and_swap>
    800061d8:	00050863          	beqz	a0,800061e8 <_Z9getStringPci+0x50>
    800061dc:	ffffb097          	auipc	ra,0xffffb
    800061e0:	1f0080e7          	jalr	496(ra) # 800013cc <_Z15thread_dispatchv>
    800061e4:	fddff06f          	j	800061c0 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800061e8:	00000913          	li	s2,0
    800061ec:	00090493          	mv	s1,s2
    800061f0:	0019091b          	addiw	s2,s2,1
    800061f4:	03495a63          	bge	s2,s4,80006228 <_Z9getStringPci+0x90>
        cc = getc();
    800061f8:	ffffb097          	auipc	ra,0xffffb
    800061fc:	428080e7          	jalr	1064(ra) # 80001620 <_Z4getcv>
        if(cc < 1)
    80006200:	02050463          	beqz	a0,80006228 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80006204:	009984b3          	add	s1,s3,s1
    80006208:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    8000620c:	00a00793          	li	a5,10
    80006210:	00f50a63          	beq	a0,a5,80006224 <_Z9getStringPci+0x8c>
    80006214:	00d00793          	li	a5,13
    80006218:	fcf51ae3          	bne	a0,a5,800061ec <_Z9getStringPci+0x54>
        buf[i++] = c;
    8000621c:	00090493          	mv	s1,s2
    80006220:	0080006f          	j	80006228 <_Z9getStringPci+0x90>
    80006224:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80006228:	009984b3          	add	s1,s3,s1
    8000622c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80006230:	00000613          	li	a2,0
    80006234:	00100593          	li	a1,1
    80006238:	00007517          	auipc	a0,0x7
    8000623c:	db850513          	addi	a0,a0,-584 # 8000cff0 <lockPrint>
    80006240:	ffffb097          	auipc	ra,0xffffb
    80006244:	fdc080e7          	jalr	-36(ra) # 8000121c <copy_and_swap>
    80006248:	fe0514e3          	bnez	a0,80006230 <_Z9getStringPci+0x98>
    return buf;
}
    8000624c:	00098513          	mv	a0,s3
    80006250:	02813083          	ld	ra,40(sp)
    80006254:	02013403          	ld	s0,32(sp)
    80006258:	01813483          	ld	s1,24(sp)
    8000625c:	01013903          	ld	s2,16(sp)
    80006260:	00813983          	ld	s3,8(sp)
    80006264:	00013a03          	ld	s4,0(sp)
    80006268:	03010113          	addi	sp,sp,48
    8000626c:	00008067          	ret

0000000080006270 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80006270:	ff010113          	addi	sp,sp,-16
    80006274:	00813423          	sd	s0,8(sp)
    80006278:	01010413          	addi	s0,sp,16
    8000627c:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80006280:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80006284:	0006c603          	lbu	a2,0(a3)
    80006288:	fd06071b          	addiw	a4,a2,-48
    8000628c:	0ff77713          	andi	a4,a4,255
    80006290:	00900793          	li	a5,9
    80006294:	02e7e063          	bltu	a5,a4,800062b4 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80006298:	0025179b          	slliw	a5,a0,0x2
    8000629c:	00a787bb          	addw	a5,a5,a0
    800062a0:	0017979b          	slliw	a5,a5,0x1
    800062a4:	00168693          	addi	a3,a3,1
    800062a8:	00c787bb          	addw	a5,a5,a2
    800062ac:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800062b0:	fd5ff06f          	j	80006284 <_Z11stringToIntPKc+0x14>
    return n;
}
    800062b4:	00813403          	ld	s0,8(sp)
    800062b8:	01010113          	addi	sp,sp,16
    800062bc:	00008067          	ret

00000000800062c0 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800062c0:	fc010113          	addi	sp,sp,-64
    800062c4:	02113c23          	sd	ra,56(sp)
    800062c8:	02813823          	sd	s0,48(sp)
    800062cc:	02913423          	sd	s1,40(sp)
    800062d0:	03213023          	sd	s2,32(sp)
    800062d4:	01313c23          	sd	s3,24(sp)
    800062d8:	04010413          	addi	s0,sp,64
    800062dc:	00050493          	mv	s1,a0
    800062e0:	00058913          	mv	s2,a1
    800062e4:	00060993          	mv	s3,a2
    LOCK();
    800062e8:	00100613          	li	a2,1
    800062ec:	00000593          	li	a1,0
    800062f0:	00007517          	auipc	a0,0x7
    800062f4:	d0050513          	addi	a0,a0,-768 # 8000cff0 <lockPrint>
    800062f8:	ffffb097          	auipc	ra,0xffffb
    800062fc:	f24080e7          	jalr	-220(ra) # 8000121c <copy_and_swap>
    80006300:	00050863          	beqz	a0,80006310 <_Z8printIntiii+0x50>
    80006304:	ffffb097          	auipc	ra,0xffffb
    80006308:	0c8080e7          	jalr	200(ra) # 800013cc <_Z15thread_dispatchv>
    8000630c:	fddff06f          	j	800062e8 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80006310:	00098463          	beqz	s3,80006318 <_Z8printIntiii+0x58>
    80006314:	0804c463          	bltz	s1,8000639c <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80006318:	0004851b          	sext.w	a0,s1
    neg = 0;
    8000631c:	00000593          	li	a1,0
    }

    i = 0;
    80006320:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80006324:	0009079b          	sext.w	a5,s2
    80006328:	0325773b          	remuw	a4,a0,s2
    8000632c:	00048613          	mv	a2,s1
    80006330:	0014849b          	addiw	s1,s1,1
    80006334:	02071693          	slli	a3,a4,0x20
    80006338:	0206d693          	srli	a3,a3,0x20
    8000633c:	00007717          	auipc	a4,0x7
    80006340:	b5470713          	addi	a4,a4,-1196 # 8000ce90 <digits>
    80006344:	00d70733          	add	a4,a4,a3
    80006348:	00074683          	lbu	a3,0(a4)
    8000634c:	fd040713          	addi	a4,s0,-48
    80006350:	00c70733          	add	a4,a4,a2
    80006354:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80006358:	0005071b          	sext.w	a4,a0
    8000635c:	0325553b          	divuw	a0,a0,s2
    80006360:	fcf772e3          	bgeu	a4,a5,80006324 <_Z8printIntiii+0x64>
    if(neg)
    80006364:	00058c63          	beqz	a1,8000637c <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80006368:	fd040793          	addi	a5,s0,-48
    8000636c:	009784b3          	add	s1,a5,s1
    80006370:	02d00793          	li	a5,45
    80006374:	fef48823          	sb	a5,-16(s1)
    80006378:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    8000637c:	fff4849b          	addiw	s1,s1,-1
    80006380:	0204c463          	bltz	s1,800063a8 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80006384:	fd040793          	addi	a5,s0,-48
    80006388:	009787b3          	add	a5,a5,s1
    8000638c:	ff07c503          	lbu	a0,-16(a5)
    80006390:	ffffb097          	auipc	ra,0xffffb
    80006394:	2dc080e7          	jalr	732(ra) # 8000166c <_Z4putcc>
    80006398:	fe5ff06f          	j	8000637c <_Z8printIntiii+0xbc>
        x = -xx;
    8000639c:	4090053b          	negw	a0,s1
        neg = 1;
    800063a0:	00100593          	li	a1,1
        x = -xx;
    800063a4:	f7dff06f          	j	80006320 <_Z8printIntiii+0x60>

    UNLOCK();
    800063a8:	00000613          	li	a2,0
    800063ac:	00100593          	li	a1,1
    800063b0:	00007517          	auipc	a0,0x7
    800063b4:	c4050513          	addi	a0,a0,-960 # 8000cff0 <lockPrint>
    800063b8:	ffffb097          	auipc	ra,0xffffb
    800063bc:	e64080e7          	jalr	-412(ra) # 8000121c <copy_and_swap>
    800063c0:	fe0514e3          	bnez	a0,800063a8 <_Z8printIntiii+0xe8>
    800063c4:	03813083          	ld	ra,56(sp)
    800063c8:	03013403          	ld	s0,48(sp)
    800063cc:	02813483          	ld	s1,40(sp)
    800063d0:	02013903          	ld	s2,32(sp)
    800063d4:	01813983          	ld	s3,24(sp)
    800063d8:	04010113          	addi	sp,sp,64
    800063dc:	00008067          	ret

00000000800063e0 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800063e0:	fd010113          	addi	sp,sp,-48
    800063e4:	02113423          	sd	ra,40(sp)
    800063e8:	02813023          	sd	s0,32(sp)
    800063ec:	00913c23          	sd	s1,24(sp)
    800063f0:	01213823          	sd	s2,16(sp)
    800063f4:	01313423          	sd	s3,8(sp)
    800063f8:	03010413          	addi	s0,sp,48
    800063fc:	00050493          	mv	s1,a0
    80006400:	00058913          	mv	s2,a1
    80006404:	0015879b          	addiw	a5,a1,1
    80006408:	0007851b          	sext.w	a0,a5
    8000640c:	00f4a023          	sw	a5,0(s1)
    80006410:	0004a823          	sw	zero,16(s1)
    80006414:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006418:	00251513          	slli	a0,a0,0x2
    8000641c:	ffffb097          	auipc	ra,0xffffb
    80006420:	e3c080e7          	jalr	-452(ra) # 80001258 <_Z9mem_allocm>
    80006424:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80006428:	01000513          	li	a0,16
    8000642c:	ffffc097          	auipc	ra,0xffffc
    80006430:	cc0080e7          	jalr	-832(ra) # 800020ec <_Znwm>
    80006434:	00050993          	mv	s3,a0
    80006438:	00000593          	li	a1,0
    8000643c:	ffffc097          	auipc	ra,0xffffc
    80006440:	e68080e7          	jalr	-408(ra) # 800022a4 <_ZN9SemaphoreC1Ej>
    80006444:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80006448:	01000513          	li	a0,16
    8000644c:	ffffc097          	auipc	ra,0xffffc
    80006450:	ca0080e7          	jalr	-864(ra) # 800020ec <_Znwm>
    80006454:	00050993          	mv	s3,a0
    80006458:	00090593          	mv	a1,s2
    8000645c:	ffffc097          	auipc	ra,0xffffc
    80006460:	e48080e7          	jalr	-440(ra) # 800022a4 <_ZN9SemaphoreC1Ej>
    80006464:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80006468:	01000513          	li	a0,16
    8000646c:	ffffc097          	auipc	ra,0xffffc
    80006470:	c80080e7          	jalr	-896(ra) # 800020ec <_Znwm>
    80006474:	00050913          	mv	s2,a0
    80006478:	00100593          	li	a1,1
    8000647c:	ffffc097          	auipc	ra,0xffffc
    80006480:	e28080e7          	jalr	-472(ra) # 800022a4 <_ZN9SemaphoreC1Ej>
    80006484:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80006488:	01000513          	li	a0,16
    8000648c:	ffffc097          	auipc	ra,0xffffc
    80006490:	c60080e7          	jalr	-928(ra) # 800020ec <_Znwm>
    80006494:	00050913          	mv	s2,a0
    80006498:	00100593          	li	a1,1
    8000649c:	ffffc097          	auipc	ra,0xffffc
    800064a0:	e08080e7          	jalr	-504(ra) # 800022a4 <_ZN9SemaphoreC1Ej>
    800064a4:	0324b823          	sd	s2,48(s1)
}
    800064a8:	02813083          	ld	ra,40(sp)
    800064ac:	02013403          	ld	s0,32(sp)
    800064b0:	01813483          	ld	s1,24(sp)
    800064b4:	01013903          	ld	s2,16(sp)
    800064b8:	00813983          	ld	s3,8(sp)
    800064bc:	03010113          	addi	sp,sp,48
    800064c0:	00008067          	ret
    800064c4:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    800064c8:	00098513          	mv	a0,s3
    800064cc:	ffffc097          	auipc	ra,0xffffc
    800064d0:	c48080e7          	jalr	-952(ra) # 80002114 <_ZdlPv>
    800064d4:	00048513          	mv	a0,s1
    800064d8:	00008097          	auipc	ra,0x8
    800064dc:	bf0080e7          	jalr	-1040(ra) # 8000e0c8 <_Unwind_Resume>
    800064e0:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    800064e4:	00098513          	mv	a0,s3
    800064e8:	ffffc097          	auipc	ra,0xffffc
    800064ec:	c2c080e7          	jalr	-980(ra) # 80002114 <_ZdlPv>
    800064f0:	00048513          	mv	a0,s1
    800064f4:	00008097          	auipc	ra,0x8
    800064f8:	bd4080e7          	jalr	-1068(ra) # 8000e0c8 <_Unwind_Resume>
    800064fc:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80006500:	00090513          	mv	a0,s2
    80006504:	ffffc097          	auipc	ra,0xffffc
    80006508:	c10080e7          	jalr	-1008(ra) # 80002114 <_ZdlPv>
    8000650c:	00048513          	mv	a0,s1
    80006510:	00008097          	auipc	ra,0x8
    80006514:	bb8080e7          	jalr	-1096(ra) # 8000e0c8 <_Unwind_Resume>
    80006518:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    8000651c:	00090513          	mv	a0,s2
    80006520:	ffffc097          	auipc	ra,0xffffc
    80006524:	bf4080e7          	jalr	-1036(ra) # 80002114 <_ZdlPv>
    80006528:	00048513          	mv	a0,s1
    8000652c:	00008097          	auipc	ra,0x8
    80006530:	b9c080e7          	jalr	-1124(ra) # 8000e0c8 <_Unwind_Resume>

0000000080006534 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80006534:	fe010113          	addi	sp,sp,-32
    80006538:	00113c23          	sd	ra,24(sp)
    8000653c:	00813823          	sd	s0,16(sp)
    80006540:	00913423          	sd	s1,8(sp)
    80006544:	01213023          	sd	s2,0(sp)
    80006548:	02010413          	addi	s0,sp,32
    8000654c:	00050493          	mv	s1,a0
    80006550:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80006554:	01853503          	ld	a0,24(a0)
    80006558:	ffffc097          	auipc	ra,0xffffc
    8000655c:	d88080e7          	jalr	-632(ra) # 800022e0 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80006560:	0304b503          	ld	a0,48(s1)
    80006564:	ffffc097          	auipc	ra,0xffffc
    80006568:	d7c080e7          	jalr	-644(ra) # 800022e0 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    8000656c:	0084b783          	ld	a5,8(s1)
    80006570:	0144a703          	lw	a4,20(s1)
    80006574:	00271713          	slli	a4,a4,0x2
    80006578:	00e787b3          	add	a5,a5,a4
    8000657c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006580:	0144a783          	lw	a5,20(s1)
    80006584:	0017879b          	addiw	a5,a5,1
    80006588:	0004a703          	lw	a4,0(s1)
    8000658c:	02e7e7bb          	remw	a5,a5,a4
    80006590:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80006594:	0304b503          	ld	a0,48(s1)
    80006598:	ffffc097          	auipc	ra,0xffffc
    8000659c:	d80080e7          	jalr	-640(ra) # 80002318 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    800065a0:	0204b503          	ld	a0,32(s1)
    800065a4:	ffffc097          	auipc	ra,0xffffc
    800065a8:	d74080e7          	jalr	-652(ra) # 80002318 <_ZN9Semaphore6signalEv>

}
    800065ac:	01813083          	ld	ra,24(sp)
    800065b0:	01013403          	ld	s0,16(sp)
    800065b4:	00813483          	ld	s1,8(sp)
    800065b8:	00013903          	ld	s2,0(sp)
    800065bc:	02010113          	addi	sp,sp,32
    800065c0:	00008067          	ret

00000000800065c4 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    800065c4:	fe010113          	addi	sp,sp,-32
    800065c8:	00113c23          	sd	ra,24(sp)
    800065cc:	00813823          	sd	s0,16(sp)
    800065d0:	00913423          	sd	s1,8(sp)
    800065d4:	01213023          	sd	s2,0(sp)
    800065d8:	02010413          	addi	s0,sp,32
    800065dc:	00050493          	mv	s1,a0
    itemAvailable->wait();
    800065e0:	02053503          	ld	a0,32(a0)
    800065e4:	ffffc097          	auipc	ra,0xffffc
    800065e8:	cfc080e7          	jalr	-772(ra) # 800022e0 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    800065ec:	0284b503          	ld	a0,40(s1)
    800065f0:	ffffc097          	auipc	ra,0xffffc
    800065f4:	cf0080e7          	jalr	-784(ra) # 800022e0 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    800065f8:	0084b703          	ld	a4,8(s1)
    800065fc:	0104a783          	lw	a5,16(s1)
    80006600:	00279693          	slli	a3,a5,0x2
    80006604:	00d70733          	add	a4,a4,a3
    80006608:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000660c:	0017879b          	addiw	a5,a5,1
    80006610:	0004a703          	lw	a4,0(s1)
    80006614:	02e7e7bb          	remw	a5,a5,a4
    80006618:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    8000661c:	0284b503          	ld	a0,40(s1)
    80006620:	ffffc097          	auipc	ra,0xffffc
    80006624:	cf8080e7          	jalr	-776(ra) # 80002318 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80006628:	0184b503          	ld	a0,24(s1)
    8000662c:	ffffc097          	auipc	ra,0xffffc
    80006630:	cec080e7          	jalr	-788(ra) # 80002318 <_ZN9Semaphore6signalEv>

    return ret;
}
    80006634:	00090513          	mv	a0,s2
    80006638:	01813083          	ld	ra,24(sp)
    8000663c:	01013403          	ld	s0,16(sp)
    80006640:	00813483          	ld	s1,8(sp)
    80006644:	00013903          	ld	s2,0(sp)
    80006648:	02010113          	addi	sp,sp,32
    8000664c:	00008067          	ret

0000000080006650 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80006650:	fe010113          	addi	sp,sp,-32
    80006654:	00113c23          	sd	ra,24(sp)
    80006658:	00813823          	sd	s0,16(sp)
    8000665c:	00913423          	sd	s1,8(sp)
    80006660:	01213023          	sd	s2,0(sp)
    80006664:	02010413          	addi	s0,sp,32
    80006668:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    8000666c:	02853503          	ld	a0,40(a0)
    80006670:	ffffc097          	auipc	ra,0xffffc
    80006674:	c70080e7          	jalr	-912(ra) # 800022e0 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80006678:	0304b503          	ld	a0,48(s1)
    8000667c:	ffffc097          	auipc	ra,0xffffc
    80006680:	c64080e7          	jalr	-924(ra) # 800022e0 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80006684:	0144a783          	lw	a5,20(s1)
    80006688:	0104a903          	lw	s2,16(s1)
    8000668c:	0327ce63          	blt	a5,s2,800066c8 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80006690:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80006694:	0304b503          	ld	a0,48(s1)
    80006698:	ffffc097          	auipc	ra,0xffffc
    8000669c:	c80080e7          	jalr	-896(ra) # 80002318 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    800066a0:	0284b503          	ld	a0,40(s1)
    800066a4:	ffffc097          	auipc	ra,0xffffc
    800066a8:	c74080e7          	jalr	-908(ra) # 80002318 <_ZN9Semaphore6signalEv>

    return ret;
}
    800066ac:	00090513          	mv	a0,s2
    800066b0:	01813083          	ld	ra,24(sp)
    800066b4:	01013403          	ld	s0,16(sp)
    800066b8:	00813483          	ld	s1,8(sp)
    800066bc:	00013903          	ld	s2,0(sp)
    800066c0:	02010113          	addi	sp,sp,32
    800066c4:	00008067          	ret
        ret = cap - head + tail;
    800066c8:	0004a703          	lw	a4,0(s1)
    800066cc:	4127093b          	subw	s2,a4,s2
    800066d0:	00f9093b          	addw	s2,s2,a5
    800066d4:	fc1ff06f          	j	80006694 <_ZN9BufferCPP6getCntEv+0x44>

00000000800066d8 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    800066d8:	fe010113          	addi	sp,sp,-32
    800066dc:	00113c23          	sd	ra,24(sp)
    800066e0:	00813823          	sd	s0,16(sp)
    800066e4:	00913423          	sd	s1,8(sp)
    800066e8:	02010413          	addi	s0,sp,32
    800066ec:	00050493          	mv	s1,a0
    Console::putc('\n');
    800066f0:	00a00513          	li	a0,10
    800066f4:	ffffc097          	auipc	ra,0xffffc
    800066f8:	d58080e7          	jalr	-680(ra) # 8000244c <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    800066fc:	00004517          	auipc	a0,0x4
    80006700:	c1450513          	addi	a0,a0,-1004 # 8000a310 <CONSOLE_STATUS+0x300>
    80006704:	00000097          	auipc	ra,0x0
    80006708:	a0c080e7          	jalr	-1524(ra) # 80006110 <_Z11printStringPKc>
    while (getCnt()) {
    8000670c:	00048513          	mv	a0,s1
    80006710:	00000097          	auipc	ra,0x0
    80006714:	f40080e7          	jalr	-192(ra) # 80006650 <_ZN9BufferCPP6getCntEv>
    80006718:	02050c63          	beqz	a0,80006750 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    8000671c:	0084b783          	ld	a5,8(s1)
    80006720:	0104a703          	lw	a4,16(s1)
    80006724:	00271713          	slli	a4,a4,0x2
    80006728:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    8000672c:	0007c503          	lbu	a0,0(a5)
    80006730:	ffffc097          	auipc	ra,0xffffc
    80006734:	d1c080e7          	jalr	-740(ra) # 8000244c <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80006738:	0104a783          	lw	a5,16(s1)
    8000673c:	0017879b          	addiw	a5,a5,1
    80006740:	0004a703          	lw	a4,0(s1)
    80006744:	02e7e7bb          	remw	a5,a5,a4
    80006748:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    8000674c:	fc1ff06f          	j	8000670c <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80006750:	02100513          	li	a0,33
    80006754:	ffffc097          	auipc	ra,0xffffc
    80006758:	cf8080e7          	jalr	-776(ra) # 8000244c <_ZN7Console4putcEc>
    Console::putc('\n');
    8000675c:	00a00513          	li	a0,10
    80006760:	ffffc097          	auipc	ra,0xffffc
    80006764:	cec080e7          	jalr	-788(ra) # 8000244c <_ZN7Console4putcEc>
    mem_free(buffer);
    80006768:	0084b503          	ld	a0,8(s1)
    8000676c:	ffffb097          	auipc	ra,0xffffb
    80006770:	b40080e7          	jalr	-1216(ra) # 800012ac <_Z8mem_freePv>
    delete itemAvailable;
    80006774:	0204b503          	ld	a0,32(s1)
    80006778:	00050863          	beqz	a0,80006788 <_ZN9BufferCPPD1Ev+0xb0>
    8000677c:	00053783          	ld	a5,0(a0)
    80006780:	0087b783          	ld	a5,8(a5)
    80006784:	000780e7          	jalr	a5
    delete spaceAvailable;
    80006788:	0184b503          	ld	a0,24(s1)
    8000678c:	00050863          	beqz	a0,8000679c <_ZN9BufferCPPD1Ev+0xc4>
    80006790:	00053783          	ld	a5,0(a0)
    80006794:	0087b783          	ld	a5,8(a5)
    80006798:	000780e7          	jalr	a5
    delete mutexTail;
    8000679c:	0304b503          	ld	a0,48(s1)
    800067a0:	00050863          	beqz	a0,800067b0 <_ZN9BufferCPPD1Ev+0xd8>
    800067a4:	00053783          	ld	a5,0(a0)
    800067a8:	0087b783          	ld	a5,8(a5)
    800067ac:	000780e7          	jalr	a5
    delete mutexHead;
    800067b0:	0284b503          	ld	a0,40(s1)
    800067b4:	00050863          	beqz	a0,800067c4 <_ZN9BufferCPPD1Ev+0xec>
    800067b8:	00053783          	ld	a5,0(a0)
    800067bc:	0087b783          	ld	a5,8(a5)
    800067c0:	000780e7          	jalr	a5
}
    800067c4:	01813083          	ld	ra,24(sp)
    800067c8:	01013403          	ld	s0,16(sp)
    800067cc:	00813483          	ld	s1,8(sp)
    800067d0:	02010113          	addi	sp,sp,32
    800067d4:	00008067          	ret

00000000800067d8 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    800067d8:	fe010113          	addi	sp,sp,-32
    800067dc:	00113c23          	sd	ra,24(sp)
    800067e0:	00813823          	sd	s0,16(sp)
    800067e4:	00913423          	sd	s1,8(sp)
    800067e8:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    800067ec:	00004517          	auipc	a0,0x4
    800067f0:	b4c50513          	addi	a0,a0,-1204 # 8000a338 <CONSOLE_STATUS+0x328>
    800067f4:	00000097          	auipc	ra,0x0
    800067f8:	91c080e7          	jalr	-1764(ra) # 80006110 <_Z11printStringPKc>
    int test = getc() - '0';
    800067fc:	ffffb097          	auipc	ra,0xffffb
    80006800:	e24080e7          	jalr	-476(ra) # 80001620 <_Z4getcv>
    80006804:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80006808:	ffffb097          	auipc	ra,0xffffb
    8000680c:	e18080e7          	jalr	-488(ra) # 80001620 <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80006810:	00700793          	li	a5,7
    80006814:	1097e263          	bltu	a5,s1,80006918 <_Z8userMainv+0x140>
    80006818:	00249493          	slli	s1,s1,0x2
    8000681c:	00004717          	auipc	a4,0x4
    80006820:	d7470713          	addi	a4,a4,-652 # 8000a590 <CONSOLE_STATUS+0x580>
    80006824:	00e484b3          	add	s1,s1,a4
    80006828:	0004a783          	lw	a5,0(s1)
    8000682c:	00e787b3          	add	a5,a5,a4
    80006830:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80006834:	fffff097          	auipc	ra,0xfffff
    80006838:	f54080e7          	jalr	-172(ra) # 80005788 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    8000683c:	00004517          	auipc	a0,0x4
    80006840:	b1c50513          	addi	a0,a0,-1252 # 8000a358 <CONSOLE_STATUS+0x348>
    80006844:	00000097          	auipc	ra,0x0
    80006848:	8cc080e7          	jalr	-1844(ra) # 80006110 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    8000684c:	01813083          	ld	ra,24(sp)
    80006850:	01013403          	ld	s0,16(sp)
    80006854:	00813483          	ld	s1,8(sp)
    80006858:	02010113          	addi	sp,sp,32
    8000685c:	00008067          	ret
            Threads_CPP_API_test();
    80006860:	ffffe097          	auipc	ra,0xffffe
    80006864:	ae8080e7          	jalr	-1304(ra) # 80004348 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80006868:	00004517          	auipc	a0,0x4
    8000686c:	b3050513          	addi	a0,a0,-1232 # 8000a398 <CONSOLE_STATUS+0x388>
    80006870:	00000097          	auipc	ra,0x0
    80006874:	8a0080e7          	jalr	-1888(ra) # 80006110 <_Z11printStringPKc>
            break;
    80006878:	fd5ff06f          	j	8000684c <_Z8userMainv+0x74>
            producerConsumer_C_API();
    8000687c:	ffffd097          	auipc	ra,0xffffd
    80006880:	320080e7          	jalr	800(ra) # 80003b9c <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80006884:	00004517          	auipc	a0,0x4
    80006888:	b5450513          	addi	a0,a0,-1196 # 8000a3d8 <CONSOLE_STATUS+0x3c8>
    8000688c:	00000097          	auipc	ra,0x0
    80006890:	884080e7          	jalr	-1916(ra) # 80006110 <_Z11printStringPKc>
            break;
    80006894:	fb9ff06f          	j	8000684c <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    80006898:	fffff097          	auipc	ra,0xfffff
    8000689c:	234080e7          	jalr	564(ra) # 80005acc <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    800068a0:	00004517          	auipc	a0,0x4
    800068a4:	b8850513          	addi	a0,a0,-1144 # 8000a428 <CONSOLE_STATUS+0x418>
    800068a8:	00000097          	auipc	ra,0x0
    800068ac:	868080e7          	jalr	-1944(ra) # 80006110 <_Z11printStringPKc>
            break;
    800068b0:	f9dff06f          	j	8000684c <_Z8userMainv+0x74>
            testSleeping();
    800068b4:	00000097          	auipc	ra,0x0
    800068b8:	11c080e7          	jalr	284(ra) # 800069d0 <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    800068bc:	00004517          	auipc	a0,0x4
    800068c0:	bc450513          	addi	a0,a0,-1084 # 8000a480 <CONSOLE_STATUS+0x470>
    800068c4:	00000097          	auipc	ra,0x0
    800068c8:	84c080e7          	jalr	-1972(ra) # 80006110 <_Z11printStringPKc>
            break;
    800068cc:	f81ff06f          	j	8000684c <_Z8userMainv+0x74>
            testConsumerProducer();
    800068d0:	ffffe097          	auipc	ra,0xffffe
    800068d4:	f38080e7          	jalr	-200(ra) # 80004808 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    800068d8:	00004517          	auipc	a0,0x4
    800068dc:	bd850513          	addi	a0,a0,-1064 # 8000a4b0 <CONSOLE_STATUS+0x4a0>
    800068e0:	00000097          	auipc	ra,0x0
    800068e4:	830080e7          	jalr	-2000(ra) # 80006110 <_Z11printStringPKc>
            break;
    800068e8:	f65ff06f          	j	8000684c <_Z8userMainv+0x74>
            System_Mode_test();
    800068ec:	00000097          	auipc	ra,0x0
    800068f0:	658080e7          	jalr	1624(ra) # 80006f44 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    800068f4:	00004517          	auipc	a0,0x4
    800068f8:	bfc50513          	addi	a0,a0,-1028 # 8000a4f0 <CONSOLE_STATUS+0x4e0>
    800068fc:	00000097          	auipc	ra,0x0
    80006900:	814080e7          	jalr	-2028(ra) # 80006110 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80006904:	00004517          	auipc	a0,0x4
    80006908:	c0c50513          	addi	a0,a0,-1012 # 8000a510 <CONSOLE_STATUS+0x500>
    8000690c:	00000097          	auipc	ra,0x0
    80006910:	804080e7          	jalr	-2044(ra) # 80006110 <_Z11printStringPKc>
            break;
    80006914:	f39ff06f          	j	8000684c <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    80006918:	00004517          	auipc	a0,0x4
    8000691c:	c5050513          	addi	a0,a0,-944 # 8000a568 <CONSOLE_STATUS+0x558>
    80006920:	fffff097          	auipc	ra,0xfffff
    80006924:	7f0080e7          	jalr	2032(ra) # 80006110 <_Z11printStringPKc>
    80006928:	f25ff06f          	j	8000684c <_Z8userMainv+0x74>

000000008000692c <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    8000692c:	fe010113          	addi	sp,sp,-32
    80006930:	00113c23          	sd	ra,24(sp)
    80006934:	00813823          	sd	s0,16(sp)
    80006938:	00913423          	sd	s1,8(sp)
    8000693c:	01213023          	sd	s2,0(sp)
    80006940:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80006944:	00053903          	ld	s2,0(a0)
    int i = 6;
    80006948:	00600493          	li	s1,6
    while (--i > 0) {
    8000694c:	fff4849b          	addiw	s1,s1,-1
    80006950:	04905463          	blez	s1,80006998 <_ZL9sleepyRunPv+0x6c>
        printString("Hello ");
    80006954:	00004517          	auipc	a0,0x4
    80006958:	c5c50513          	addi	a0,a0,-932 # 8000a5b0 <CONSOLE_STATUS+0x5a0>
    8000695c:	fffff097          	auipc	ra,0xfffff
    80006960:	7b4080e7          	jalr	1972(ra) # 80006110 <_Z11printStringPKc>
        printInt(sleep_time);
    80006964:	00000613          	li	a2,0
    80006968:	00a00593          	li	a1,10
    8000696c:	0009051b          	sext.w	a0,s2
    80006970:	00000097          	auipc	ra,0x0
    80006974:	950080e7          	jalr	-1712(ra) # 800062c0 <_Z8printIntiii>
        printString(" !\n");
    80006978:	00004517          	auipc	a0,0x4
    8000697c:	c4050513          	addi	a0,a0,-960 # 8000a5b8 <CONSOLE_STATUS+0x5a8>
    80006980:	fffff097          	auipc	ra,0xfffff
    80006984:	790080e7          	jalr	1936(ra) # 80006110 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80006988:	00090513          	mv	a0,s2
    8000698c:	ffffb097          	auipc	ra,0xffffb
    80006990:	c48080e7          	jalr	-952(ra) # 800015d4 <_Z10time_sleepm>
    while (--i > 0) {
    80006994:	fb9ff06f          	j	8000694c <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80006998:	00a00793          	li	a5,10
    8000699c:	02f95933          	divu	s2,s2,a5
    800069a0:	fff90913          	addi	s2,s2,-1
    800069a4:	00006797          	auipc	a5,0x6
    800069a8:	65478793          	addi	a5,a5,1620 # 8000cff8 <_ZL8finished>
    800069ac:	01278933          	add	s2,a5,s2
    800069b0:	00100793          	li	a5,1
    800069b4:	00f90023          	sb	a5,0(s2)
}
    800069b8:	01813083          	ld	ra,24(sp)
    800069bc:	01013403          	ld	s0,16(sp)
    800069c0:	00813483          	ld	s1,8(sp)
    800069c4:	00013903          	ld	s2,0(sp)
    800069c8:	02010113          	addi	sp,sp,32
    800069cc:	00008067          	ret

00000000800069d0 <_Z12testSleepingv>:

void testSleeping() {
    800069d0:	fc010113          	addi	sp,sp,-64
    800069d4:	02113c23          	sd	ra,56(sp)
    800069d8:	02813823          	sd	s0,48(sp)
    800069dc:	02913423          	sd	s1,40(sp)
    800069e0:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    800069e4:	00a00793          	li	a5,10
    800069e8:	fcf43823          	sd	a5,-48(s0)
    800069ec:	01400793          	li	a5,20
    800069f0:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    800069f4:	00000493          	li	s1,0
    800069f8:	02c0006f          	j	80006a24 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    800069fc:	00349793          	slli	a5,s1,0x3
    80006a00:	fd040613          	addi	a2,s0,-48
    80006a04:	00f60633          	add	a2,a2,a5
    80006a08:	00000597          	auipc	a1,0x0
    80006a0c:	f2458593          	addi	a1,a1,-220 # 8000692c <_ZL9sleepyRunPv>
    80006a10:	fc040513          	addi	a0,s0,-64
    80006a14:	00f50533          	add	a0,a0,a5
    80006a18:	ffffb097          	auipc	ra,0xffffb
    80006a1c:	8e0080e7          	jalr	-1824(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80006a20:	0014849b          	addiw	s1,s1,1
    80006a24:	00100793          	li	a5,1
    80006a28:	fc97dae3          	bge	a5,s1,800069fc <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80006a2c:	00006797          	auipc	a5,0x6
    80006a30:	5cc7c783          	lbu	a5,1484(a5) # 8000cff8 <_ZL8finished>
    80006a34:	fe078ce3          	beqz	a5,80006a2c <_Z12testSleepingv+0x5c>
    80006a38:	00006797          	auipc	a5,0x6
    80006a3c:	5c17c783          	lbu	a5,1473(a5) # 8000cff9 <_ZL8finished+0x1>
    80006a40:	fe0786e3          	beqz	a5,80006a2c <_Z12testSleepingv+0x5c>
}
    80006a44:	03813083          	ld	ra,56(sp)
    80006a48:	03013403          	ld	s0,48(sp)
    80006a4c:	02813483          	ld	s1,40(sp)
    80006a50:	04010113          	addi	sp,sp,64
    80006a54:	00008067          	ret

0000000080006a58 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80006a58:	fe010113          	addi	sp,sp,-32
    80006a5c:	00113c23          	sd	ra,24(sp)
    80006a60:	00813823          	sd	s0,16(sp)
    80006a64:	00913423          	sd	s1,8(sp)
    80006a68:	01213023          	sd	s2,0(sp)
    80006a6c:	02010413          	addi	s0,sp,32
    80006a70:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80006a74:	00100793          	li	a5,1
    80006a78:	02a7f863          	bgeu	a5,a0,80006aa8 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80006a7c:	00a00793          	li	a5,10
    80006a80:	02f577b3          	remu	a5,a0,a5
    80006a84:	02078e63          	beqz	a5,80006ac0 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80006a88:	fff48513          	addi	a0,s1,-1
    80006a8c:	00000097          	auipc	ra,0x0
    80006a90:	fcc080e7          	jalr	-52(ra) # 80006a58 <_ZL9fibonaccim>
    80006a94:	00050913          	mv	s2,a0
    80006a98:	ffe48513          	addi	a0,s1,-2
    80006a9c:	00000097          	auipc	ra,0x0
    80006aa0:	fbc080e7          	jalr	-68(ra) # 80006a58 <_ZL9fibonaccim>
    80006aa4:	00a90533          	add	a0,s2,a0
}
    80006aa8:	01813083          	ld	ra,24(sp)
    80006aac:	01013403          	ld	s0,16(sp)
    80006ab0:	00813483          	ld	s1,8(sp)
    80006ab4:	00013903          	ld	s2,0(sp)
    80006ab8:	02010113          	addi	sp,sp,32
    80006abc:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80006ac0:	ffffb097          	auipc	ra,0xffffb
    80006ac4:	90c080e7          	jalr	-1780(ra) # 800013cc <_Z15thread_dispatchv>
    80006ac8:	fc1ff06f          	j	80006a88 <_ZL9fibonaccim+0x30>

0000000080006acc <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80006acc:	fe010113          	addi	sp,sp,-32
    80006ad0:	00113c23          	sd	ra,24(sp)
    80006ad4:	00813823          	sd	s0,16(sp)
    80006ad8:	00913423          	sd	s1,8(sp)
    80006adc:	01213023          	sd	s2,0(sp)
    80006ae0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80006ae4:	00a00493          	li	s1,10
    80006ae8:	0400006f          	j	80006b28 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006aec:	00003517          	auipc	a0,0x3
    80006af0:	78c50513          	addi	a0,a0,1932 # 8000a278 <CONSOLE_STATUS+0x268>
    80006af4:	fffff097          	auipc	ra,0xfffff
    80006af8:	61c080e7          	jalr	1564(ra) # 80006110 <_Z11printStringPKc>
    80006afc:	00000613          	li	a2,0
    80006b00:	00a00593          	li	a1,10
    80006b04:	00048513          	mv	a0,s1
    80006b08:	fffff097          	auipc	ra,0xfffff
    80006b0c:	7b8080e7          	jalr	1976(ra) # 800062c0 <_Z8printIntiii>
    80006b10:	00004517          	auipc	a0,0x4
    80006b14:	96850513          	addi	a0,a0,-1688 # 8000a478 <CONSOLE_STATUS+0x468>
    80006b18:	fffff097          	auipc	ra,0xfffff
    80006b1c:	5f8080e7          	jalr	1528(ra) # 80006110 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80006b20:	0014849b          	addiw	s1,s1,1
    80006b24:	0ff4f493          	andi	s1,s1,255
    80006b28:	00c00793          	li	a5,12
    80006b2c:	fc97f0e3          	bgeu	a5,s1,80006aec <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80006b30:	00003517          	auipc	a0,0x3
    80006b34:	75050513          	addi	a0,a0,1872 # 8000a280 <CONSOLE_STATUS+0x270>
    80006b38:	fffff097          	auipc	ra,0xfffff
    80006b3c:	5d8080e7          	jalr	1496(ra) # 80006110 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80006b40:	00500313          	li	t1,5
    thread_dispatch();
    80006b44:	ffffb097          	auipc	ra,0xffffb
    80006b48:	888080e7          	jalr	-1912(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80006b4c:	01000513          	li	a0,16
    80006b50:	00000097          	auipc	ra,0x0
    80006b54:	f08080e7          	jalr	-248(ra) # 80006a58 <_ZL9fibonaccim>
    80006b58:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80006b5c:	00003517          	auipc	a0,0x3
    80006b60:	73450513          	addi	a0,a0,1844 # 8000a290 <CONSOLE_STATUS+0x280>
    80006b64:	fffff097          	auipc	ra,0xfffff
    80006b68:	5ac080e7          	jalr	1452(ra) # 80006110 <_Z11printStringPKc>
    80006b6c:	00000613          	li	a2,0
    80006b70:	00a00593          	li	a1,10
    80006b74:	0009051b          	sext.w	a0,s2
    80006b78:	fffff097          	auipc	ra,0xfffff
    80006b7c:	748080e7          	jalr	1864(ra) # 800062c0 <_Z8printIntiii>
    80006b80:	00004517          	auipc	a0,0x4
    80006b84:	8f850513          	addi	a0,a0,-1800 # 8000a478 <CONSOLE_STATUS+0x468>
    80006b88:	fffff097          	auipc	ra,0xfffff
    80006b8c:	588080e7          	jalr	1416(ra) # 80006110 <_Z11printStringPKc>
    80006b90:	0400006f          	j	80006bd0 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006b94:	00003517          	auipc	a0,0x3
    80006b98:	6e450513          	addi	a0,a0,1764 # 8000a278 <CONSOLE_STATUS+0x268>
    80006b9c:	fffff097          	auipc	ra,0xfffff
    80006ba0:	574080e7          	jalr	1396(ra) # 80006110 <_Z11printStringPKc>
    80006ba4:	00000613          	li	a2,0
    80006ba8:	00a00593          	li	a1,10
    80006bac:	00048513          	mv	a0,s1
    80006bb0:	fffff097          	auipc	ra,0xfffff
    80006bb4:	710080e7          	jalr	1808(ra) # 800062c0 <_Z8printIntiii>
    80006bb8:	00004517          	auipc	a0,0x4
    80006bbc:	8c050513          	addi	a0,a0,-1856 # 8000a478 <CONSOLE_STATUS+0x468>
    80006bc0:	fffff097          	auipc	ra,0xfffff
    80006bc4:	550080e7          	jalr	1360(ra) # 80006110 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80006bc8:	0014849b          	addiw	s1,s1,1
    80006bcc:	0ff4f493          	andi	s1,s1,255
    80006bd0:	00f00793          	li	a5,15
    80006bd4:	fc97f0e3          	bgeu	a5,s1,80006b94 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80006bd8:	00003517          	auipc	a0,0x3
    80006bdc:	6c850513          	addi	a0,a0,1736 # 8000a2a0 <CONSOLE_STATUS+0x290>
    80006be0:	fffff097          	auipc	ra,0xfffff
    80006be4:	530080e7          	jalr	1328(ra) # 80006110 <_Z11printStringPKc>
    finishedD = true;
    80006be8:	00100793          	li	a5,1
    80006bec:	00006717          	auipc	a4,0x6
    80006bf0:	40f70723          	sb	a5,1038(a4) # 8000cffa <_ZL9finishedD>
    thread_dispatch();
    80006bf4:	ffffa097          	auipc	ra,0xffffa
    80006bf8:	7d8080e7          	jalr	2008(ra) # 800013cc <_Z15thread_dispatchv>
}
    80006bfc:	01813083          	ld	ra,24(sp)
    80006c00:	01013403          	ld	s0,16(sp)
    80006c04:	00813483          	ld	s1,8(sp)
    80006c08:	00013903          	ld	s2,0(sp)
    80006c0c:	02010113          	addi	sp,sp,32
    80006c10:	00008067          	ret

0000000080006c14 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80006c14:	fe010113          	addi	sp,sp,-32
    80006c18:	00113c23          	sd	ra,24(sp)
    80006c1c:	00813823          	sd	s0,16(sp)
    80006c20:	00913423          	sd	s1,8(sp)
    80006c24:	01213023          	sd	s2,0(sp)
    80006c28:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80006c2c:	00000493          	li	s1,0
    80006c30:	0400006f          	j	80006c70 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80006c34:	00003517          	auipc	a0,0x3
    80006c38:	61450513          	addi	a0,a0,1556 # 8000a248 <CONSOLE_STATUS+0x238>
    80006c3c:	fffff097          	auipc	ra,0xfffff
    80006c40:	4d4080e7          	jalr	1236(ra) # 80006110 <_Z11printStringPKc>
    80006c44:	00000613          	li	a2,0
    80006c48:	00a00593          	li	a1,10
    80006c4c:	00048513          	mv	a0,s1
    80006c50:	fffff097          	auipc	ra,0xfffff
    80006c54:	670080e7          	jalr	1648(ra) # 800062c0 <_Z8printIntiii>
    80006c58:	00004517          	auipc	a0,0x4
    80006c5c:	82050513          	addi	a0,a0,-2016 # 8000a478 <CONSOLE_STATUS+0x468>
    80006c60:	fffff097          	auipc	ra,0xfffff
    80006c64:	4b0080e7          	jalr	1200(ra) # 80006110 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80006c68:	0014849b          	addiw	s1,s1,1
    80006c6c:	0ff4f493          	andi	s1,s1,255
    80006c70:	00200793          	li	a5,2
    80006c74:	fc97f0e3          	bgeu	a5,s1,80006c34 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80006c78:	00003517          	auipc	a0,0x3
    80006c7c:	5d850513          	addi	a0,a0,1496 # 8000a250 <CONSOLE_STATUS+0x240>
    80006c80:	fffff097          	auipc	ra,0xfffff
    80006c84:	490080e7          	jalr	1168(ra) # 80006110 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80006c88:	00700313          	li	t1,7
    thread_dispatch();
    80006c8c:	ffffa097          	auipc	ra,0xffffa
    80006c90:	740080e7          	jalr	1856(ra) # 800013cc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80006c94:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80006c98:	00003517          	auipc	a0,0x3
    80006c9c:	5c850513          	addi	a0,a0,1480 # 8000a260 <CONSOLE_STATUS+0x250>
    80006ca0:	fffff097          	auipc	ra,0xfffff
    80006ca4:	470080e7          	jalr	1136(ra) # 80006110 <_Z11printStringPKc>
    80006ca8:	00000613          	li	a2,0
    80006cac:	00a00593          	li	a1,10
    80006cb0:	0009051b          	sext.w	a0,s2
    80006cb4:	fffff097          	auipc	ra,0xfffff
    80006cb8:	60c080e7          	jalr	1548(ra) # 800062c0 <_Z8printIntiii>
    80006cbc:	00003517          	auipc	a0,0x3
    80006cc0:	7bc50513          	addi	a0,a0,1980 # 8000a478 <CONSOLE_STATUS+0x468>
    80006cc4:	fffff097          	auipc	ra,0xfffff
    80006cc8:	44c080e7          	jalr	1100(ra) # 80006110 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80006ccc:	00c00513          	li	a0,12
    80006cd0:	00000097          	auipc	ra,0x0
    80006cd4:	d88080e7          	jalr	-632(ra) # 80006a58 <_ZL9fibonaccim>
    80006cd8:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80006cdc:	00003517          	auipc	a0,0x3
    80006ce0:	58c50513          	addi	a0,a0,1420 # 8000a268 <CONSOLE_STATUS+0x258>
    80006ce4:	fffff097          	auipc	ra,0xfffff
    80006ce8:	42c080e7          	jalr	1068(ra) # 80006110 <_Z11printStringPKc>
    80006cec:	00000613          	li	a2,0
    80006cf0:	00a00593          	li	a1,10
    80006cf4:	0009051b          	sext.w	a0,s2
    80006cf8:	fffff097          	auipc	ra,0xfffff
    80006cfc:	5c8080e7          	jalr	1480(ra) # 800062c0 <_Z8printIntiii>
    80006d00:	00003517          	auipc	a0,0x3
    80006d04:	77850513          	addi	a0,a0,1912 # 8000a478 <CONSOLE_STATUS+0x468>
    80006d08:	fffff097          	auipc	ra,0xfffff
    80006d0c:	408080e7          	jalr	1032(ra) # 80006110 <_Z11printStringPKc>
    80006d10:	0400006f          	j	80006d50 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80006d14:	00003517          	auipc	a0,0x3
    80006d18:	53450513          	addi	a0,a0,1332 # 8000a248 <CONSOLE_STATUS+0x238>
    80006d1c:	fffff097          	auipc	ra,0xfffff
    80006d20:	3f4080e7          	jalr	1012(ra) # 80006110 <_Z11printStringPKc>
    80006d24:	00000613          	li	a2,0
    80006d28:	00a00593          	li	a1,10
    80006d2c:	00048513          	mv	a0,s1
    80006d30:	fffff097          	auipc	ra,0xfffff
    80006d34:	590080e7          	jalr	1424(ra) # 800062c0 <_Z8printIntiii>
    80006d38:	00003517          	auipc	a0,0x3
    80006d3c:	74050513          	addi	a0,a0,1856 # 8000a478 <CONSOLE_STATUS+0x468>
    80006d40:	fffff097          	auipc	ra,0xfffff
    80006d44:	3d0080e7          	jalr	976(ra) # 80006110 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80006d48:	0014849b          	addiw	s1,s1,1
    80006d4c:	0ff4f493          	andi	s1,s1,255
    80006d50:	00500793          	li	a5,5
    80006d54:	fc97f0e3          	bgeu	a5,s1,80006d14 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80006d58:	00003517          	auipc	a0,0x3
    80006d5c:	4c850513          	addi	a0,a0,1224 # 8000a220 <CONSOLE_STATUS+0x210>
    80006d60:	fffff097          	auipc	ra,0xfffff
    80006d64:	3b0080e7          	jalr	944(ra) # 80006110 <_Z11printStringPKc>
    finishedC = true;
    80006d68:	00100793          	li	a5,1
    80006d6c:	00006717          	auipc	a4,0x6
    80006d70:	28f707a3          	sb	a5,655(a4) # 8000cffb <_ZL9finishedC>
    thread_dispatch();
    80006d74:	ffffa097          	auipc	ra,0xffffa
    80006d78:	658080e7          	jalr	1624(ra) # 800013cc <_Z15thread_dispatchv>
}
    80006d7c:	01813083          	ld	ra,24(sp)
    80006d80:	01013403          	ld	s0,16(sp)
    80006d84:	00813483          	ld	s1,8(sp)
    80006d88:	00013903          	ld	s2,0(sp)
    80006d8c:	02010113          	addi	sp,sp,32
    80006d90:	00008067          	ret

0000000080006d94 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80006d94:	fe010113          	addi	sp,sp,-32
    80006d98:	00113c23          	sd	ra,24(sp)
    80006d9c:	00813823          	sd	s0,16(sp)
    80006da0:	00913423          	sd	s1,8(sp)
    80006da4:	01213023          	sd	s2,0(sp)
    80006da8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80006dac:	00000913          	li	s2,0
    80006db0:	0400006f          	j	80006df0 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80006db4:	ffffa097          	auipc	ra,0xffffa
    80006db8:	618080e7          	jalr	1560(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006dbc:	00148493          	addi	s1,s1,1
    80006dc0:	000027b7          	lui	a5,0x2
    80006dc4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006dc8:	0097ee63          	bltu	a5,s1,80006de4 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006dcc:	00000713          	li	a4,0
    80006dd0:	000077b7          	lui	a5,0x7
    80006dd4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006dd8:	fce7eee3          	bltu	a5,a4,80006db4 <_ZL11workerBodyBPv+0x20>
    80006ddc:	00170713          	addi	a4,a4,1
    80006de0:	ff1ff06f          	j	80006dd0 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80006de4:	00a00793          	li	a5,10
    80006de8:	04f90663          	beq	s2,a5,80006e34 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80006dec:	00190913          	addi	s2,s2,1
    80006df0:	00f00793          	li	a5,15
    80006df4:	0527e463          	bltu	a5,s2,80006e3c <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80006df8:	00003517          	auipc	a0,0x3
    80006dfc:	43850513          	addi	a0,a0,1080 # 8000a230 <CONSOLE_STATUS+0x220>
    80006e00:	fffff097          	auipc	ra,0xfffff
    80006e04:	310080e7          	jalr	784(ra) # 80006110 <_Z11printStringPKc>
    80006e08:	00000613          	li	a2,0
    80006e0c:	00a00593          	li	a1,10
    80006e10:	0009051b          	sext.w	a0,s2
    80006e14:	fffff097          	auipc	ra,0xfffff
    80006e18:	4ac080e7          	jalr	1196(ra) # 800062c0 <_Z8printIntiii>
    80006e1c:	00003517          	auipc	a0,0x3
    80006e20:	65c50513          	addi	a0,a0,1628 # 8000a478 <CONSOLE_STATUS+0x468>
    80006e24:	fffff097          	auipc	ra,0xfffff
    80006e28:	2ec080e7          	jalr	748(ra) # 80006110 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006e2c:	00000493          	li	s1,0
    80006e30:	f91ff06f          	j	80006dc0 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80006e34:	14102ff3          	csrr	t6,sepc
    80006e38:	fb5ff06f          	j	80006dec <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80006e3c:	00003517          	auipc	a0,0x3
    80006e40:	3fc50513          	addi	a0,a0,1020 # 8000a238 <CONSOLE_STATUS+0x228>
    80006e44:	fffff097          	auipc	ra,0xfffff
    80006e48:	2cc080e7          	jalr	716(ra) # 80006110 <_Z11printStringPKc>
    finishedB = true;
    80006e4c:	00100793          	li	a5,1
    80006e50:	00006717          	auipc	a4,0x6
    80006e54:	1af70623          	sb	a5,428(a4) # 8000cffc <_ZL9finishedB>
    thread_dispatch();
    80006e58:	ffffa097          	auipc	ra,0xffffa
    80006e5c:	574080e7          	jalr	1396(ra) # 800013cc <_Z15thread_dispatchv>
}
    80006e60:	01813083          	ld	ra,24(sp)
    80006e64:	01013403          	ld	s0,16(sp)
    80006e68:	00813483          	ld	s1,8(sp)
    80006e6c:	00013903          	ld	s2,0(sp)
    80006e70:	02010113          	addi	sp,sp,32
    80006e74:	00008067          	ret

0000000080006e78 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80006e78:	fe010113          	addi	sp,sp,-32
    80006e7c:	00113c23          	sd	ra,24(sp)
    80006e80:	00813823          	sd	s0,16(sp)
    80006e84:	00913423          	sd	s1,8(sp)
    80006e88:	01213023          	sd	s2,0(sp)
    80006e8c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006e90:	00000913          	li	s2,0
    80006e94:	0380006f          	j	80006ecc <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80006e98:	ffffa097          	auipc	ra,0xffffa
    80006e9c:	534080e7          	jalr	1332(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006ea0:	00148493          	addi	s1,s1,1
    80006ea4:	000027b7          	lui	a5,0x2
    80006ea8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006eac:	0097ee63          	bltu	a5,s1,80006ec8 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006eb0:	00000713          	li	a4,0
    80006eb4:	000077b7          	lui	a5,0x7
    80006eb8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006ebc:	fce7eee3          	bltu	a5,a4,80006e98 <_ZL11workerBodyAPv+0x20>
    80006ec0:	00170713          	addi	a4,a4,1
    80006ec4:	ff1ff06f          	j	80006eb4 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80006ec8:	00190913          	addi	s2,s2,1
    80006ecc:	00900793          	li	a5,9
    80006ed0:	0527e063          	bltu	a5,s2,80006f10 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80006ed4:	00003517          	auipc	a0,0x3
    80006ed8:	34450513          	addi	a0,a0,836 # 8000a218 <CONSOLE_STATUS+0x208>
    80006edc:	fffff097          	auipc	ra,0xfffff
    80006ee0:	234080e7          	jalr	564(ra) # 80006110 <_Z11printStringPKc>
    80006ee4:	00000613          	li	a2,0
    80006ee8:	00a00593          	li	a1,10
    80006eec:	0009051b          	sext.w	a0,s2
    80006ef0:	fffff097          	auipc	ra,0xfffff
    80006ef4:	3d0080e7          	jalr	976(ra) # 800062c0 <_Z8printIntiii>
    80006ef8:	00003517          	auipc	a0,0x3
    80006efc:	58050513          	addi	a0,a0,1408 # 8000a478 <CONSOLE_STATUS+0x468>
    80006f00:	fffff097          	auipc	ra,0xfffff
    80006f04:	210080e7          	jalr	528(ra) # 80006110 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006f08:	00000493          	li	s1,0
    80006f0c:	f99ff06f          	j	80006ea4 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006f10:	00003517          	auipc	a0,0x3
    80006f14:	31050513          	addi	a0,a0,784 # 8000a220 <CONSOLE_STATUS+0x210>
    80006f18:	fffff097          	auipc	ra,0xfffff
    80006f1c:	1f8080e7          	jalr	504(ra) # 80006110 <_Z11printStringPKc>
    finishedA = true;
    80006f20:	00100793          	li	a5,1
    80006f24:	00006717          	auipc	a4,0x6
    80006f28:	0cf70ca3          	sb	a5,217(a4) # 8000cffd <_ZL9finishedA>
}
    80006f2c:	01813083          	ld	ra,24(sp)
    80006f30:	01013403          	ld	s0,16(sp)
    80006f34:	00813483          	ld	s1,8(sp)
    80006f38:	00013903          	ld	s2,0(sp)
    80006f3c:	02010113          	addi	sp,sp,32
    80006f40:	00008067          	ret

0000000080006f44 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006f44:	fd010113          	addi	sp,sp,-48
    80006f48:	02113423          	sd	ra,40(sp)
    80006f4c:	02813023          	sd	s0,32(sp)
    80006f50:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006f54:	00000613          	li	a2,0
    80006f58:	00000597          	auipc	a1,0x0
    80006f5c:	f2058593          	addi	a1,a1,-224 # 80006e78 <_ZL11workerBodyAPv>
    80006f60:	fd040513          	addi	a0,s0,-48
    80006f64:	ffffa097          	auipc	ra,0xffffa
    80006f68:	394080e7          	jalr	916(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80006f6c:	00003517          	auipc	a0,0x3
    80006f70:	34450513          	addi	a0,a0,836 # 8000a2b0 <CONSOLE_STATUS+0x2a0>
    80006f74:	fffff097          	auipc	ra,0xfffff
    80006f78:	19c080e7          	jalr	412(ra) # 80006110 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80006f7c:	00000613          	li	a2,0
    80006f80:	00000597          	auipc	a1,0x0
    80006f84:	e1458593          	addi	a1,a1,-492 # 80006d94 <_ZL11workerBodyBPv>
    80006f88:	fd840513          	addi	a0,s0,-40
    80006f8c:	ffffa097          	auipc	ra,0xffffa
    80006f90:	36c080e7          	jalr	876(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80006f94:	00003517          	auipc	a0,0x3
    80006f98:	33450513          	addi	a0,a0,820 # 8000a2c8 <CONSOLE_STATUS+0x2b8>
    80006f9c:	fffff097          	auipc	ra,0xfffff
    80006fa0:	174080e7          	jalr	372(ra) # 80006110 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006fa4:	00000613          	li	a2,0
    80006fa8:	00000597          	auipc	a1,0x0
    80006fac:	c6c58593          	addi	a1,a1,-916 # 80006c14 <_ZL11workerBodyCPv>
    80006fb0:	fe040513          	addi	a0,s0,-32
    80006fb4:	ffffa097          	auipc	ra,0xffffa
    80006fb8:	344080e7          	jalr	836(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80006fbc:	00003517          	auipc	a0,0x3
    80006fc0:	32450513          	addi	a0,a0,804 # 8000a2e0 <CONSOLE_STATUS+0x2d0>
    80006fc4:	fffff097          	auipc	ra,0xfffff
    80006fc8:	14c080e7          	jalr	332(ra) # 80006110 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80006fcc:	00000613          	li	a2,0
    80006fd0:	00000597          	auipc	a1,0x0
    80006fd4:	afc58593          	addi	a1,a1,-1284 # 80006acc <_ZL11workerBodyDPv>
    80006fd8:	fe840513          	addi	a0,s0,-24
    80006fdc:	ffffa097          	auipc	ra,0xffffa
    80006fe0:	31c080e7          	jalr	796(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80006fe4:	00003517          	auipc	a0,0x3
    80006fe8:	31450513          	addi	a0,a0,788 # 8000a2f8 <CONSOLE_STATUS+0x2e8>
    80006fec:	fffff097          	auipc	ra,0xfffff
    80006ff0:	124080e7          	jalr	292(ra) # 80006110 <_Z11printStringPKc>
    80006ff4:	00c0006f          	j	80007000 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006ff8:	ffffa097          	auipc	ra,0xffffa
    80006ffc:	3d4080e7          	jalr	980(ra) # 800013cc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80007000:	00006797          	auipc	a5,0x6
    80007004:	ffd7c783          	lbu	a5,-3(a5) # 8000cffd <_ZL9finishedA>
    80007008:	fe0788e3          	beqz	a5,80006ff8 <_Z16System_Mode_testv+0xb4>
    8000700c:	00006797          	auipc	a5,0x6
    80007010:	ff07c783          	lbu	a5,-16(a5) # 8000cffc <_ZL9finishedB>
    80007014:	fe0782e3          	beqz	a5,80006ff8 <_Z16System_Mode_testv+0xb4>
    80007018:	00006797          	auipc	a5,0x6
    8000701c:	fe37c783          	lbu	a5,-29(a5) # 8000cffb <_ZL9finishedC>
    80007020:	fc078ce3          	beqz	a5,80006ff8 <_Z16System_Mode_testv+0xb4>
    80007024:	00006797          	auipc	a5,0x6
    80007028:	fd67c783          	lbu	a5,-42(a5) # 8000cffa <_ZL9finishedD>
    8000702c:	fc0786e3          	beqz	a5,80006ff8 <_Z16System_Mode_testv+0xb4>
    }

}
    80007030:	02813083          	ld	ra,40(sp)
    80007034:	02013403          	ld	s0,32(sp)
    80007038:	03010113          	addi	sp,sp,48
    8000703c:	00008067          	ret

0000000080007040 <start>:
    80007040:	ff010113          	addi	sp,sp,-16
    80007044:	00813423          	sd	s0,8(sp)
    80007048:	01010413          	addi	s0,sp,16
    8000704c:	300027f3          	csrr	a5,mstatus
    80007050:	ffffe737          	lui	a4,0xffffe
    80007054:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff059f>
    80007058:	00e7f7b3          	and	a5,a5,a4
    8000705c:	00001737          	lui	a4,0x1
    80007060:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80007064:	00e7e7b3          	or	a5,a5,a4
    80007068:	30079073          	csrw	mstatus,a5
    8000706c:	00000797          	auipc	a5,0x0
    80007070:	16078793          	addi	a5,a5,352 # 800071cc <system_main>
    80007074:	34179073          	csrw	mepc,a5
    80007078:	00000793          	li	a5,0
    8000707c:	18079073          	csrw	satp,a5
    80007080:	000107b7          	lui	a5,0x10
    80007084:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80007088:	30279073          	csrw	medeleg,a5
    8000708c:	30379073          	csrw	mideleg,a5
    80007090:	104027f3          	csrr	a5,sie
    80007094:	2227e793          	ori	a5,a5,546
    80007098:	10479073          	csrw	sie,a5
    8000709c:	fff00793          	li	a5,-1
    800070a0:	00a7d793          	srli	a5,a5,0xa
    800070a4:	3b079073          	csrw	pmpaddr0,a5
    800070a8:	00f00793          	li	a5,15
    800070ac:	3a079073          	csrw	pmpcfg0,a5
    800070b0:	f14027f3          	csrr	a5,mhartid
    800070b4:	0200c737          	lui	a4,0x200c
    800070b8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800070bc:	0007869b          	sext.w	a3,a5
    800070c0:	00269713          	slli	a4,a3,0x2
    800070c4:	000f4637          	lui	a2,0xf4
    800070c8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800070cc:	00d70733          	add	a4,a4,a3
    800070d0:	0037979b          	slliw	a5,a5,0x3
    800070d4:	020046b7          	lui	a3,0x2004
    800070d8:	00d787b3          	add	a5,a5,a3
    800070dc:	00c585b3          	add	a1,a1,a2
    800070e0:	00371693          	slli	a3,a4,0x3
    800070e4:	00006717          	auipc	a4,0x6
    800070e8:	f1c70713          	addi	a4,a4,-228 # 8000d000 <timer_scratch>
    800070ec:	00b7b023          	sd	a1,0(a5)
    800070f0:	00d70733          	add	a4,a4,a3
    800070f4:	00f73c23          	sd	a5,24(a4)
    800070f8:	02c73023          	sd	a2,32(a4)
    800070fc:	34071073          	csrw	mscratch,a4
    80007100:	00000797          	auipc	a5,0x0
    80007104:	6e078793          	addi	a5,a5,1760 # 800077e0 <timervec>
    80007108:	30579073          	csrw	mtvec,a5
    8000710c:	300027f3          	csrr	a5,mstatus
    80007110:	0087e793          	ori	a5,a5,8
    80007114:	30079073          	csrw	mstatus,a5
    80007118:	304027f3          	csrr	a5,mie
    8000711c:	0807e793          	ori	a5,a5,128
    80007120:	30479073          	csrw	mie,a5
    80007124:	f14027f3          	csrr	a5,mhartid
    80007128:	0007879b          	sext.w	a5,a5
    8000712c:	00078213          	mv	tp,a5
    80007130:	30200073          	mret
    80007134:	00813403          	ld	s0,8(sp)
    80007138:	01010113          	addi	sp,sp,16
    8000713c:	00008067          	ret

0000000080007140 <timerinit>:
    80007140:	ff010113          	addi	sp,sp,-16
    80007144:	00813423          	sd	s0,8(sp)
    80007148:	01010413          	addi	s0,sp,16
    8000714c:	f14027f3          	csrr	a5,mhartid
    80007150:	0200c737          	lui	a4,0x200c
    80007154:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80007158:	0007869b          	sext.w	a3,a5
    8000715c:	00269713          	slli	a4,a3,0x2
    80007160:	000f4637          	lui	a2,0xf4
    80007164:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80007168:	00d70733          	add	a4,a4,a3
    8000716c:	0037979b          	slliw	a5,a5,0x3
    80007170:	020046b7          	lui	a3,0x2004
    80007174:	00d787b3          	add	a5,a5,a3
    80007178:	00c585b3          	add	a1,a1,a2
    8000717c:	00371693          	slli	a3,a4,0x3
    80007180:	00006717          	auipc	a4,0x6
    80007184:	e8070713          	addi	a4,a4,-384 # 8000d000 <timer_scratch>
    80007188:	00b7b023          	sd	a1,0(a5)
    8000718c:	00d70733          	add	a4,a4,a3
    80007190:	00f73c23          	sd	a5,24(a4)
    80007194:	02c73023          	sd	a2,32(a4)
    80007198:	34071073          	csrw	mscratch,a4
    8000719c:	00000797          	auipc	a5,0x0
    800071a0:	64478793          	addi	a5,a5,1604 # 800077e0 <timervec>
    800071a4:	30579073          	csrw	mtvec,a5
    800071a8:	300027f3          	csrr	a5,mstatus
    800071ac:	0087e793          	ori	a5,a5,8
    800071b0:	30079073          	csrw	mstatus,a5
    800071b4:	304027f3          	csrr	a5,mie
    800071b8:	0807e793          	ori	a5,a5,128
    800071bc:	30479073          	csrw	mie,a5
    800071c0:	00813403          	ld	s0,8(sp)
    800071c4:	01010113          	addi	sp,sp,16
    800071c8:	00008067          	ret

00000000800071cc <system_main>:
    800071cc:	fe010113          	addi	sp,sp,-32
    800071d0:	00813823          	sd	s0,16(sp)
    800071d4:	00913423          	sd	s1,8(sp)
    800071d8:	00113c23          	sd	ra,24(sp)
    800071dc:	02010413          	addi	s0,sp,32
    800071e0:	00000097          	auipc	ra,0x0
    800071e4:	0c4080e7          	jalr	196(ra) # 800072a4 <cpuid>
    800071e8:	00006497          	auipc	s1,0x6
    800071ec:	d3848493          	addi	s1,s1,-712 # 8000cf20 <started>
    800071f0:	02050263          	beqz	a0,80007214 <system_main+0x48>
    800071f4:	0004a783          	lw	a5,0(s1)
    800071f8:	0007879b          	sext.w	a5,a5
    800071fc:	fe078ce3          	beqz	a5,800071f4 <system_main+0x28>
    80007200:	0ff0000f          	fence
    80007204:	00003517          	auipc	a0,0x3
    80007208:	3ec50513          	addi	a0,a0,1004 # 8000a5f0 <CONSOLE_STATUS+0x5e0>
    8000720c:	00001097          	auipc	ra,0x1
    80007210:	a70080e7          	jalr	-1424(ra) # 80007c7c <panic>
    80007214:	00001097          	auipc	ra,0x1
    80007218:	9c4080e7          	jalr	-1596(ra) # 80007bd8 <consoleinit>
    8000721c:	00001097          	auipc	ra,0x1
    80007220:	150080e7          	jalr	336(ra) # 8000836c <printfinit>
    80007224:	00003517          	auipc	a0,0x3
    80007228:	25450513          	addi	a0,a0,596 # 8000a478 <CONSOLE_STATUS+0x468>
    8000722c:	00001097          	auipc	ra,0x1
    80007230:	aac080e7          	jalr	-1364(ra) # 80007cd8 <__printf>
    80007234:	00003517          	auipc	a0,0x3
    80007238:	38c50513          	addi	a0,a0,908 # 8000a5c0 <CONSOLE_STATUS+0x5b0>
    8000723c:	00001097          	auipc	ra,0x1
    80007240:	a9c080e7          	jalr	-1380(ra) # 80007cd8 <__printf>
    80007244:	00003517          	auipc	a0,0x3
    80007248:	23450513          	addi	a0,a0,564 # 8000a478 <CONSOLE_STATUS+0x468>
    8000724c:	00001097          	auipc	ra,0x1
    80007250:	a8c080e7          	jalr	-1396(ra) # 80007cd8 <__printf>
    80007254:	00001097          	auipc	ra,0x1
    80007258:	4a4080e7          	jalr	1188(ra) # 800086f8 <kinit>
    8000725c:	00000097          	auipc	ra,0x0
    80007260:	148080e7          	jalr	328(ra) # 800073a4 <trapinit>
    80007264:	00000097          	auipc	ra,0x0
    80007268:	16c080e7          	jalr	364(ra) # 800073d0 <trapinithart>
    8000726c:	00000097          	auipc	ra,0x0
    80007270:	5b4080e7          	jalr	1460(ra) # 80007820 <plicinit>
    80007274:	00000097          	auipc	ra,0x0
    80007278:	5d4080e7          	jalr	1492(ra) # 80007848 <plicinithart>
    8000727c:	00000097          	auipc	ra,0x0
    80007280:	078080e7          	jalr	120(ra) # 800072f4 <userinit>
    80007284:	0ff0000f          	fence
    80007288:	00100793          	li	a5,1
    8000728c:	00003517          	auipc	a0,0x3
    80007290:	34c50513          	addi	a0,a0,844 # 8000a5d8 <CONSOLE_STATUS+0x5c8>
    80007294:	00f4a023          	sw	a5,0(s1)
    80007298:	00001097          	auipc	ra,0x1
    8000729c:	a40080e7          	jalr	-1472(ra) # 80007cd8 <__printf>
    800072a0:	0000006f          	j	800072a0 <system_main+0xd4>

00000000800072a4 <cpuid>:
    800072a4:	ff010113          	addi	sp,sp,-16
    800072a8:	00813423          	sd	s0,8(sp)
    800072ac:	01010413          	addi	s0,sp,16
    800072b0:	00020513          	mv	a0,tp
    800072b4:	00813403          	ld	s0,8(sp)
    800072b8:	0005051b          	sext.w	a0,a0
    800072bc:	01010113          	addi	sp,sp,16
    800072c0:	00008067          	ret

00000000800072c4 <mycpu>:
    800072c4:	ff010113          	addi	sp,sp,-16
    800072c8:	00813423          	sd	s0,8(sp)
    800072cc:	01010413          	addi	s0,sp,16
    800072d0:	00020793          	mv	a5,tp
    800072d4:	00813403          	ld	s0,8(sp)
    800072d8:	0007879b          	sext.w	a5,a5
    800072dc:	00779793          	slli	a5,a5,0x7
    800072e0:	00007517          	auipc	a0,0x7
    800072e4:	d5050513          	addi	a0,a0,-688 # 8000e030 <cpus>
    800072e8:	00f50533          	add	a0,a0,a5
    800072ec:	01010113          	addi	sp,sp,16
    800072f0:	00008067          	ret

00000000800072f4 <userinit>:
    800072f4:	ff010113          	addi	sp,sp,-16
    800072f8:	00813423          	sd	s0,8(sp)
    800072fc:	01010413          	addi	s0,sp,16
    80007300:	00813403          	ld	s0,8(sp)
    80007304:	01010113          	addi	sp,sp,16
    80007308:	ffffb317          	auipc	t1,0xffffb
    8000730c:	98c30067          	jr	-1652(t1) # 80001c94 <main>

0000000080007310 <either_copyout>:
    80007310:	ff010113          	addi	sp,sp,-16
    80007314:	00813023          	sd	s0,0(sp)
    80007318:	00113423          	sd	ra,8(sp)
    8000731c:	01010413          	addi	s0,sp,16
    80007320:	02051663          	bnez	a0,8000734c <either_copyout+0x3c>
    80007324:	00058513          	mv	a0,a1
    80007328:	00060593          	mv	a1,a2
    8000732c:	0006861b          	sext.w	a2,a3
    80007330:	00002097          	auipc	ra,0x2
    80007334:	c54080e7          	jalr	-940(ra) # 80008f84 <__memmove>
    80007338:	00813083          	ld	ra,8(sp)
    8000733c:	00013403          	ld	s0,0(sp)
    80007340:	00000513          	li	a0,0
    80007344:	01010113          	addi	sp,sp,16
    80007348:	00008067          	ret
    8000734c:	00003517          	auipc	a0,0x3
    80007350:	2cc50513          	addi	a0,a0,716 # 8000a618 <CONSOLE_STATUS+0x608>
    80007354:	00001097          	auipc	ra,0x1
    80007358:	928080e7          	jalr	-1752(ra) # 80007c7c <panic>

000000008000735c <either_copyin>:
    8000735c:	ff010113          	addi	sp,sp,-16
    80007360:	00813023          	sd	s0,0(sp)
    80007364:	00113423          	sd	ra,8(sp)
    80007368:	01010413          	addi	s0,sp,16
    8000736c:	02059463          	bnez	a1,80007394 <either_copyin+0x38>
    80007370:	00060593          	mv	a1,a2
    80007374:	0006861b          	sext.w	a2,a3
    80007378:	00002097          	auipc	ra,0x2
    8000737c:	c0c080e7          	jalr	-1012(ra) # 80008f84 <__memmove>
    80007380:	00813083          	ld	ra,8(sp)
    80007384:	00013403          	ld	s0,0(sp)
    80007388:	00000513          	li	a0,0
    8000738c:	01010113          	addi	sp,sp,16
    80007390:	00008067          	ret
    80007394:	00003517          	auipc	a0,0x3
    80007398:	2ac50513          	addi	a0,a0,684 # 8000a640 <CONSOLE_STATUS+0x630>
    8000739c:	00001097          	auipc	ra,0x1
    800073a0:	8e0080e7          	jalr	-1824(ra) # 80007c7c <panic>

00000000800073a4 <trapinit>:
    800073a4:	ff010113          	addi	sp,sp,-16
    800073a8:	00813423          	sd	s0,8(sp)
    800073ac:	01010413          	addi	s0,sp,16
    800073b0:	00813403          	ld	s0,8(sp)
    800073b4:	00003597          	auipc	a1,0x3
    800073b8:	2b458593          	addi	a1,a1,692 # 8000a668 <CONSOLE_STATUS+0x658>
    800073bc:	00007517          	auipc	a0,0x7
    800073c0:	cf450513          	addi	a0,a0,-780 # 8000e0b0 <tickslock>
    800073c4:	01010113          	addi	sp,sp,16
    800073c8:	00001317          	auipc	t1,0x1
    800073cc:	5c030067          	jr	1472(t1) # 80008988 <initlock>

00000000800073d0 <trapinithart>:
    800073d0:	ff010113          	addi	sp,sp,-16
    800073d4:	00813423          	sd	s0,8(sp)
    800073d8:	01010413          	addi	s0,sp,16
    800073dc:	00000797          	auipc	a5,0x0
    800073e0:	2f478793          	addi	a5,a5,756 # 800076d0 <kernelvec>
    800073e4:	10579073          	csrw	stvec,a5
    800073e8:	00813403          	ld	s0,8(sp)
    800073ec:	01010113          	addi	sp,sp,16
    800073f0:	00008067          	ret

00000000800073f4 <usertrap>:
    800073f4:	ff010113          	addi	sp,sp,-16
    800073f8:	00813423          	sd	s0,8(sp)
    800073fc:	01010413          	addi	s0,sp,16
    80007400:	00813403          	ld	s0,8(sp)
    80007404:	01010113          	addi	sp,sp,16
    80007408:	00008067          	ret

000000008000740c <usertrapret>:
    8000740c:	ff010113          	addi	sp,sp,-16
    80007410:	00813423          	sd	s0,8(sp)
    80007414:	01010413          	addi	s0,sp,16
    80007418:	00813403          	ld	s0,8(sp)
    8000741c:	01010113          	addi	sp,sp,16
    80007420:	00008067          	ret

0000000080007424 <kerneltrap>:
    80007424:	fe010113          	addi	sp,sp,-32
    80007428:	00813823          	sd	s0,16(sp)
    8000742c:	00113c23          	sd	ra,24(sp)
    80007430:	00913423          	sd	s1,8(sp)
    80007434:	02010413          	addi	s0,sp,32
    80007438:	142025f3          	csrr	a1,scause
    8000743c:	100027f3          	csrr	a5,sstatus
    80007440:	0027f793          	andi	a5,a5,2
    80007444:	10079c63          	bnez	a5,8000755c <kerneltrap+0x138>
    80007448:	142027f3          	csrr	a5,scause
    8000744c:	0207ce63          	bltz	a5,80007488 <kerneltrap+0x64>
    80007450:	00003517          	auipc	a0,0x3
    80007454:	26050513          	addi	a0,a0,608 # 8000a6b0 <CONSOLE_STATUS+0x6a0>
    80007458:	00001097          	auipc	ra,0x1
    8000745c:	880080e7          	jalr	-1920(ra) # 80007cd8 <__printf>
    80007460:	141025f3          	csrr	a1,sepc
    80007464:	14302673          	csrr	a2,stval
    80007468:	00003517          	auipc	a0,0x3
    8000746c:	25850513          	addi	a0,a0,600 # 8000a6c0 <CONSOLE_STATUS+0x6b0>
    80007470:	00001097          	auipc	ra,0x1
    80007474:	868080e7          	jalr	-1944(ra) # 80007cd8 <__printf>
    80007478:	00003517          	auipc	a0,0x3
    8000747c:	26050513          	addi	a0,a0,608 # 8000a6d8 <CONSOLE_STATUS+0x6c8>
    80007480:	00000097          	auipc	ra,0x0
    80007484:	7fc080e7          	jalr	2044(ra) # 80007c7c <panic>
    80007488:	0ff7f713          	andi	a4,a5,255
    8000748c:	00900693          	li	a3,9
    80007490:	04d70063          	beq	a4,a3,800074d0 <kerneltrap+0xac>
    80007494:	fff00713          	li	a4,-1
    80007498:	03f71713          	slli	a4,a4,0x3f
    8000749c:	00170713          	addi	a4,a4,1
    800074a0:	fae798e3          	bne	a5,a4,80007450 <kerneltrap+0x2c>
    800074a4:	00000097          	auipc	ra,0x0
    800074a8:	e00080e7          	jalr	-512(ra) # 800072a4 <cpuid>
    800074ac:	06050663          	beqz	a0,80007518 <kerneltrap+0xf4>
    800074b0:	144027f3          	csrr	a5,sip
    800074b4:	ffd7f793          	andi	a5,a5,-3
    800074b8:	14479073          	csrw	sip,a5
    800074bc:	01813083          	ld	ra,24(sp)
    800074c0:	01013403          	ld	s0,16(sp)
    800074c4:	00813483          	ld	s1,8(sp)
    800074c8:	02010113          	addi	sp,sp,32
    800074cc:	00008067          	ret
    800074d0:	00000097          	auipc	ra,0x0
    800074d4:	3c4080e7          	jalr	964(ra) # 80007894 <plic_claim>
    800074d8:	00a00793          	li	a5,10
    800074dc:	00050493          	mv	s1,a0
    800074e0:	06f50863          	beq	a0,a5,80007550 <kerneltrap+0x12c>
    800074e4:	fc050ce3          	beqz	a0,800074bc <kerneltrap+0x98>
    800074e8:	00050593          	mv	a1,a0
    800074ec:	00003517          	auipc	a0,0x3
    800074f0:	1a450513          	addi	a0,a0,420 # 8000a690 <CONSOLE_STATUS+0x680>
    800074f4:	00000097          	auipc	ra,0x0
    800074f8:	7e4080e7          	jalr	2020(ra) # 80007cd8 <__printf>
    800074fc:	01013403          	ld	s0,16(sp)
    80007500:	01813083          	ld	ra,24(sp)
    80007504:	00048513          	mv	a0,s1
    80007508:	00813483          	ld	s1,8(sp)
    8000750c:	02010113          	addi	sp,sp,32
    80007510:	00000317          	auipc	t1,0x0
    80007514:	3bc30067          	jr	956(t1) # 800078cc <plic_complete>
    80007518:	00007517          	auipc	a0,0x7
    8000751c:	b9850513          	addi	a0,a0,-1128 # 8000e0b0 <tickslock>
    80007520:	00001097          	auipc	ra,0x1
    80007524:	48c080e7          	jalr	1164(ra) # 800089ac <acquire>
    80007528:	00006717          	auipc	a4,0x6
    8000752c:	9fc70713          	addi	a4,a4,-1540 # 8000cf24 <ticks>
    80007530:	00072783          	lw	a5,0(a4)
    80007534:	00007517          	auipc	a0,0x7
    80007538:	b7c50513          	addi	a0,a0,-1156 # 8000e0b0 <tickslock>
    8000753c:	0017879b          	addiw	a5,a5,1
    80007540:	00f72023          	sw	a5,0(a4)
    80007544:	00001097          	auipc	ra,0x1
    80007548:	534080e7          	jalr	1332(ra) # 80008a78 <release>
    8000754c:	f65ff06f          	j	800074b0 <kerneltrap+0x8c>
    80007550:	00001097          	auipc	ra,0x1
    80007554:	090080e7          	jalr	144(ra) # 800085e0 <uartintr>
    80007558:	fa5ff06f          	j	800074fc <kerneltrap+0xd8>
    8000755c:	00003517          	auipc	a0,0x3
    80007560:	11450513          	addi	a0,a0,276 # 8000a670 <CONSOLE_STATUS+0x660>
    80007564:	00000097          	auipc	ra,0x0
    80007568:	718080e7          	jalr	1816(ra) # 80007c7c <panic>

000000008000756c <clockintr>:
    8000756c:	fe010113          	addi	sp,sp,-32
    80007570:	00813823          	sd	s0,16(sp)
    80007574:	00913423          	sd	s1,8(sp)
    80007578:	00113c23          	sd	ra,24(sp)
    8000757c:	02010413          	addi	s0,sp,32
    80007580:	00007497          	auipc	s1,0x7
    80007584:	b3048493          	addi	s1,s1,-1232 # 8000e0b0 <tickslock>
    80007588:	00048513          	mv	a0,s1
    8000758c:	00001097          	auipc	ra,0x1
    80007590:	420080e7          	jalr	1056(ra) # 800089ac <acquire>
    80007594:	00006717          	auipc	a4,0x6
    80007598:	99070713          	addi	a4,a4,-1648 # 8000cf24 <ticks>
    8000759c:	00072783          	lw	a5,0(a4)
    800075a0:	01013403          	ld	s0,16(sp)
    800075a4:	01813083          	ld	ra,24(sp)
    800075a8:	00048513          	mv	a0,s1
    800075ac:	0017879b          	addiw	a5,a5,1
    800075b0:	00813483          	ld	s1,8(sp)
    800075b4:	00f72023          	sw	a5,0(a4)
    800075b8:	02010113          	addi	sp,sp,32
    800075bc:	00001317          	auipc	t1,0x1
    800075c0:	4bc30067          	jr	1212(t1) # 80008a78 <release>

00000000800075c4 <devintr>:
    800075c4:	142027f3          	csrr	a5,scause
    800075c8:	00000513          	li	a0,0
    800075cc:	0007c463          	bltz	a5,800075d4 <devintr+0x10>
    800075d0:	00008067          	ret
    800075d4:	fe010113          	addi	sp,sp,-32
    800075d8:	00813823          	sd	s0,16(sp)
    800075dc:	00113c23          	sd	ra,24(sp)
    800075e0:	00913423          	sd	s1,8(sp)
    800075e4:	02010413          	addi	s0,sp,32
    800075e8:	0ff7f713          	andi	a4,a5,255
    800075ec:	00900693          	li	a3,9
    800075f0:	04d70c63          	beq	a4,a3,80007648 <devintr+0x84>
    800075f4:	fff00713          	li	a4,-1
    800075f8:	03f71713          	slli	a4,a4,0x3f
    800075fc:	00170713          	addi	a4,a4,1
    80007600:	00e78c63          	beq	a5,a4,80007618 <devintr+0x54>
    80007604:	01813083          	ld	ra,24(sp)
    80007608:	01013403          	ld	s0,16(sp)
    8000760c:	00813483          	ld	s1,8(sp)
    80007610:	02010113          	addi	sp,sp,32
    80007614:	00008067          	ret
    80007618:	00000097          	auipc	ra,0x0
    8000761c:	c8c080e7          	jalr	-884(ra) # 800072a4 <cpuid>
    80007620:	06050663          	beqz	a0,8000768c <devintr+0xc8>
    80007624:	144027f3          	csrr	a5,sip
    80007628:	ffd7f793          	andi	a5,a5,-3
    8000762c:	14479073          	csrw	sip,a5
    80007630:	01813083          	ld	ra,24(sp)
    80007634:	01013403          	ld	s0,16(sp)
    80007638:	00813483          	ld	s1,8(sp)
    8000763c:	00200513          	li	a0,2
    80007640:	02010113          	addi	sp,sp,32
    80007644:	00008067          	ret
    80007648:	00000097          	auipc	ra,0x0
    8000764c:	24c080e7          	jalr	588(ra) # 80007894 <plic_claim>
    80007650:	00a00793          	li	a5,10
    80007654:	00050493          	mv	s1,a0
    80007658:	06f50663          	beq	a0,a5,800076c4 <devintr+0x100>
    8000765c:	00100513          	li	a0,1
    80007660:	fa0482e3          	beqz	s1,80007604 <devintr+0x40>
    80007664:	00048593          	mv	a1,s1
    80007668:	00003517          	auipc	a0,0x3
    8000766c:	02850513          	addi	a0,a0,40 # 8000a690 <CONSOLE_STATUS+0x680>
    80007670:	00000097          	auipc	ra,0x0
    80007674:	668080e7          	jalr	1640(ra) # 80007cd8 <__printf>
    80007678:	00048513          	mv	a0,s1
    8000767c:	00000097          	auipc	ra,0x0
    80007680:	250080e7          	jalr	592(ra) # 800078cc <plic_complete>
    80007684:	00100513          	li	a0,1
    80007688:	f7dff06f          	j	80007604 <devintr+0x40>
    8000768c:	00007517          	auipc	a0,0x7
    80007690:	a2450513          	addi	a0,a0,-1500 # 8000e0b0 <tickslock>
    80007694:	00001097          	auipc	ra,0x1
    80007698:	318080e7          	jalr	792(ra) # 800089ac <acquire>
    8000769c:	00006717          	auipc	a4,0x6
    800076a0:	88870713          	addi	a4,a4,-1912 # 8000cf24 <ticks>
    800076a4:	00072783          	lw	a5,0(a4)
    800076a8:	00007517          	auipc	a0,0x7
    800076ac:	a0850513          	addi	a0,a0,-1528 # 8000e0b0 <tickslock>
    800076b0:	0017879b          	addiw	a5,a5,1
    800076b4:	00f72023          	sw	a5,0(a4)
    800076b8:	00001097          	auipc	ra,0x1
    800076bc:	3c0080e7          	jalr	960(ra) # 80008a78 <release>
    800076c0:	f65ff06f          	j	80007624 <devintr+0x60>
    800076c4:	00001097          	auipc	ra,0x1
    800076c8:	f1c080e7          	jalr	-228(ra) # 800085e0 <uartintr>
    800076cc:	fadff06f          	j	80007678 <devintr+0xb4>

00000000800076d0 <kernelvec>:
    800076d0:	f0010113          	addi	sp,sp,-256
    800076d4:	00113023          	sd	ra,0(sp)
    800076d8:	00213423          	sd	sp,8(sp)
    800076dc:	00313823          	sd	gp,16(sp)
    800076e0:	00413c23          	sd	tp,24(sp)
    800076e4:	02513023          	sd	t0,32(sp)
    800076e8:	02613423          	sd	t1,40(sp)
    800076ec:	02713823          	sd	t2,48(sp)
    800076f0:	02813c23          	sd	s0,56(sp)
    800076f4:	04913023          	sd	s1,64(sp)
    800076f8:	04a13423          	sd	a0,72(sp)
    800076fc:	04b13823          	sd	a1,80(sp)
    80007700:	04c13c23          	sd	a2,88(sp)
    80007704:	06d13023          	sd	a3,96(sp)
    80007708:	06e13423          	sd	a4,104(sp)
    8000770c:	06f13823          	sd	a5,112(sp)
    80007710:	07013c23          	sd	a6,120(sp)
    80007714:	09113023          	sd	a7,128(sp)
    80007718:	09213423          	sd	s2,136(sp)
    8000771c:	09313823          	sd	s3,144(sp)
    80007720:	09413c23          	sd	s4,152(sp)
    80007724:	0b513023          	sd	s5,160(sp)
    80007728:	0b613423          	sd	s6,168(sp)
    8000772c:	0b713823          	sd	s7,176(sp)
    80007730:	0b813c23          	sd	s8,184(sp)
    80007734:	0d913023          	sd	s9,192(sp)
    80007738:	0da13423          	sd	s10,200(sp)
    8000773c:	0db13823          	sd	s11,208(sp)
    80007740:	0dc13c23          	sd	t3,216(sp)
    80007744:	0fd13023          	sd	t4,224(sp)
    80007748:	0fe13423          	sd	t5,232(sp)
    8000774c:	0ff13823          	sd	t6,240(sp)
    80007750:	cd5ff0ef          	jal	ra,80007424 <kerneltrap>
    80007754:	00013083          	ld	ra,0(sp)
    80007758:	00813103          	ld	sp,8(sp)
    8000775c:	01013183          	ld	gp,16(sp)
    80007760:	02013283          	ld	t0,32(sp)
    80007764:	02813303          	ld	t1,40(sp)
    80007768:	03013383          	ld	t2,48(sp)
    8000776c:	03813403          	ld	s0,56(sp)
    80007770:	04013483          	ld	s1,64(sp)
    80007774:	04813503          	ld	a0,72(sp)
    80007778:	05013583          	ld	a1,80(sp)
    8000777c:	05813603          	ld	a2,88(sp)
    80007780:	06013683          	ld	a3,96(sp)
    80007784:	06813703          	ld	a4,104(sp)
    80007788:	07013783          	ld	a5,112(sp)
    8000778c:	07813803          	ld	a6,120(sp)
    80007790:	08013883          	ld	a7,128(sp)
    80007794:	08813903          	ld	s2,136(sp)
    80007798:	09013983          	ld	s3,144(sp)
    8000779c:	09813a03          	ld	s4,152(sp)
    800077a0:	0a013a83          	ld	s5,160(sp)
    800077a4:	0a813b03          	ld	s6,168(sp)
    800077a8:	0b013b83          	ld	s7,176(sp)
    800077ac:	0b813c03          	ld	s8,184(sp)
    800077b0:	0c013c83          	ld	s9,192(sp)
    800077b4:	0c813d03          	ld	s10,200(sp)
    800077b8:	0d013d83          	ld	s11,208(sp)
    800077bc:	0d813e03          	ld	t3,216(sp)
    800077c0:	0e013e83          	ld	t4,224(sp)
    800077c4:	0e813f03          	ld	t5,232(sp)
    800077c8:	0f013f83          	ld	t6,240(sp)
    800077cc:	10010113          	addi	sp,sp,256
    800077d0:	10200073          	sret
    800077d4:	00000013          	nop
    800077d8:	00000013          	nop
    800077dc:	00000013          	nop

00000000800077e0 <timervec>:
    800077e0:	34051573          	csrrw	a0,mscratch,a0
    800077e4:	00b53023          	sd	a1,0(a0)
    800077e8:	00c53423          	sd	a2,8(a0)
    800077ec:	00d53823          	sd	a3,16(a0)
    800077f0:	01853583          	ld	a1,24(a0)
    800077f4:	02053603          	ld	a2,32(a0)
    800077f8:	0005b683          	ld	a3,0(a1)
    800077fc:	00c686b3          	add	a3,a3,a2
    80007800:	00d5b023          	sd	a3,0(a1)
    80007804:	00200593          	li	a1,2
    80007808:	14459073          	csrw	sip,a1
    8000780c:	01053683          	ld	a3,16(a0)
    80007810:	00853603          	ld	a2,8(a0)
    80007814:	00053583          	ld	a1,0(a0)
    80007818:	34051573          	csrrw	a0,mscratch,a0
    8000781c:	30200073          	mret

0000000080007820 <plicinit>:
    80007820:	ff010113          	addi	sp,sp,-16
    80007824:	00813423          	sd	s0,8(sp)
    80007828:	01010413          	addi	s0,sp,16
    8000782c:	00813403          	ld	s0,8(sp)
    80007830:	0c0007b7          	lui	a5,0xc000
    80007834:	00100713          	li	a4,1
    80007838:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000783c:	00e7a223          	sw	a4,4(a5)
    80007840:	01010113          	addi	sp,sp,16
    80007844:	00008067          	ret

0000000080007848 <plicinithart>:
    80007848:	ff010113          	addi	sp,sp,-16
    8000784c:	00813023          	sd	s0,0(sp)
    80007850:	00113423          	sd	ra,8(sp)
    80007854:	01010413          	addi	s0,sp,16
    80007858:	00000097          	auipc	ra,0x0
    8000785c:	a4c080e7          	jalr	-1460(ra) # 800072a4 <cpuid>
    80007860:	0085171b          	slliw	a4,a0,0x8
    80007864:	0c0027b7          	lui	a5,0xc002
    80007868:	00e787b3          	add	a5,a5,a4
    8000786c:	40200713          	li	a4,1026
    80007870:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80007874:	00813083          	ld	ra,8(sp)
    80007878:	00013403          	ld	s0,0(sp)
    8000787c:	00d5151b          	slliw	a0,a0,0xd
    80007880:	0c2017b7          	lui	a5,0xc201
    80007884:	00a78533          	add	a0,a5,a0
    80007888:	00052023          	sw	zero,0(a0)
    8000788c:	01010113          	addi	sp,sp,16
    80007890:	00008067          	ret

0000000080007894 <plic_claim>:
    80007894:	ff010113          	addi	sp,sp,-16
    80007898:	00813023          	sd	s0,0(sp)
    8000789c:	00113423          	sd	ra,8(sp)
    800078a0:	01010413          	addi	s0,sp,16
    800078a4:	00000097          	auipc	ra,0x0
    800078a8:	a00080e7          	jalr	-1536(ra) # 800072a4 <cpuid>
    800078ac:	00813083          	ld	ra,8(sp)
    800078b0:	00013403          	ld	s0,0(sp)
    800078b4:	00d5151b          	slliw	a0,a0,0xd
    800078b8:	0c2017b7          	lui	a5,0xc201
    800078bc:	00a78533          	add	a0,a5,a0
    800078c0:	00452503          	lw	a0,4(a0)
    800078c4:	01010113          	addi	sp,sp,16
    800078c8:	00008067          	ret

00000000800078cc <plic_complete>:
    800078cc:	fe010113          	addi	sp,sp,-32
    800078d0:	00813823          	sd	s0,16(sp)
    800078d4:	00913423          	sd	s1,8(sp)
    800078d8:	00113c23          	sd	ra,24(sp)
    800078dc:	02010413          	addi	s0,sp,32
    800078e0:	00050493          	mv	s1,a0
    800078e4:	00000097          	auipc	ra,0x0
    800078e8:	9c0080e7          	jalr	-1600(ra) # 800072a4 <cpuid>
    800078ec:	01813083          	ld	ra,24(sp)
    800078f0:	01013403          	ld	s0,16(sp)
    800078f4:	00d5179b          	slliw	a5,a0,0xd
    800078f8:	0c201737          	lui	a4,0xc201
    800078fc:	00f707b3          	add	a5,a4,a5
    80007900:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007904:	00813483          	ld	s1,8(sp)
    80007908:	02010113          	addi	sp,sp,32
    8000790c:	00008067          	ret

0000000080007910 <consolewrite>:
    80007910:	fb010113          	addi	sp,sp,-80
    80007914:	04813023          	sd	s0,64(sp)
    80007918:	04113423          	sd	ra,72(sp)
    8000791c:	02913c23          	sd	s1,56(sp)
    80007920:	03213823          	sd	s2,48(sp)
    80007924:	03313423          	sd	s3,40(sp)
    80007928:	03413023          	sd	s4,32(sp)
    8000792c:	01513c23          	sd	s5,24(sp)
    80007930:	05010413          	addi	s0,sp,80
    80007934:	06c05c63          	blez	a2,800079ac <consolewrite+0x9c>
    80007938:	00060993          	mv	s3,a2
    8000793c:	00050a13          	mv	s4,a0
    80007940:	00058493          	mv	s1,a1
    80007944:	00000913          	li	s2,0
    80007948:	fff00a93          	li	s5,-1
    8000794c:	01c0006f          	j	80007968 <consolewrite+0x58>
    80007950:	fbf44503          	lbu	a0,-65(s0)
    80007954:	0019091b          	addiw	s2,s2,1
    80007958:	00148493          	addi	s1,s1,1
    8000795c:	00001097          	auipc	ra,0x1
    80007960:	a9c080e7          	jalr	-1380(ra) # 800083f8 <uartputc>
    80007964:	03298063          	beq	s3,s2,80007984 <consolewrite+0x74>
    80007968:	00048613          	mv	a2,s1
    8000796c:	00100693          	li	a3,1
    80007970:	000a0593          	mv	a1,s4
    80007974:	fbf40513          	addi	a0,s0,-65
    80007978:	00000097          	auipc	ra,0x0
    8000797c:	9e4080e7          	jalr	-1564(ra) # 8000735c <either_copyin>
    80007980:	fd5518e3          	bne	a0,s5,80007950 <consolewrite+0x40>
    80007984:	04813083          	ld	ra,72(sp)
    80007988:	04013403          	ld	s0,64(sp)
    8000798c:	03813483          	ld	s1,56(sp)
    80007990:	02813983          	ld	s3,40(sp)
    80007994:	02013a03          	ld	s4,32(sp)
    80007998:	01813a83          	ld	s5,24(sp)
    8000799c:	00090513          	mv	a0,s2
    800079a0:	03013903          	ld	s2,48(sp)
    800079a4:	05010113          	addi	sp,sp,80
    800079a8:	00008067          	ret
    800079ac:	00000913          	li	s2,0
    800079b0:	fd5ff06f          	j	80007984 <consolewrite+0x74>

00000000800079b4 <consoleread>:
    800079b4:	f9010113          	addi	sp,sp,-112
    800079b8:	06813023          	sd	s0,96(sp)
    800079bc:	04913c23          	sd	s1,88(sp)
    800079c0:	05213823          	sd	s2,80(sp)
    800079c4:	05313423          	sd	s3,72(sp)
    800079c8:	05413023          	sd	s4,64(sp)
    800079cc:	03513c23          	sd	s5,56(sp)
    800079d0:	03613823          	sd	s6,48(sp)
    800079d4:	03713423          	sd	s7,40(sp)
    800079d8:	03813023          	sd	s8,32(sp)
    800079dc:	06113423          	sd	ra,104(sp)
    800079e0:	01913c23          	sd	s9,24(sp)
    800079e4:	07010413          	addi	s0,sp,112
    800079e8:	00060b93          	mv	s7,a2
    800079ec:	00050913          	mv	s2,a0
    800079f0:	00058c13          	mv	s8,a1
    800079f4:	00060b1b          	sext.w	s6,a2
    800079f8:	00006497          	auipc	s1,0x6
    800079fc:	6e048493          	addi	s1,s1,1760 # 8000e0d8 <cons>
    80007a00:	00400993          	li	s3,4
    80007a04:	fff00a13          	li	s4,-1
    80007a08:	00a00a93          	li	s5,10
    80007a0c:	05705e63          	blez	s7,80007a68 <consoleread+0xb4>
    80007a10:	09c4a703          	lw	a4,156(s1)
    80007a14:	0984a783          	lw	a5,152(s1)
    80007a18:	0007071b          	sext.w	a4,a4
    80007a1c:	08e78463          	beq	a5,a4,80007aa4 <consoleread+0xf0>
    80007a20:	07f7f713          	andi	a4,a5,127
    80007a24:	00e48733          	add	a4,s1,a4
    80007a28:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80007a2c:	0017869b          	addiw	a3,a5,1
    80007a30:	08d4ac23          	sw	a3,152(s1)
    80007a34:	00070c9b          	sext.w	s9,a4
    80007a38:	0b370663          	beq	a4,s3,80007ae4 <consoleread+0x130>
    80007a3c:	00100693          	li	a3,1
    80007a40:	f9f40613          	addi	a2,s0,-97
    80007a44:	000c0593          	mv	a1,s8
    80007a48:	00090513          	mv	a0,s2
    80007a4c:	f8e40fa3          	sb	a4,-97(s0)
    80007a50:	00000097          	auipc	ra,0x0
    80007a54:	8c0080e7          	jalr	-1856(ra) # 80007310 <either_copyout>
    80007a58:	01450863          	beq	a0,s4,80007a68 <consoleread+0xb4>
    80007a5c:	001c0c13          	addi	s8,s8,1
    80007a60:	fffb8b9b          	addiw	s7,s7,-1
    80007a64:	fb5c94e3          	bne	s9,s5,80007a0c <consoleread+0x58>
    80007a68:	000b851b          	sext.w	a0,s7
    80007a6c:	06813083          	ld	ra,104(sp)
    80007a70:	06013403          	ld	s0,96(sp)
    80007a74:	05813483          	ld	s1,88(sp)
    80007a78:	05013903          	ld	s2,80(sp)
    80007a7c:	04813983          	ld	s3,72(sp)
    80007a80:	04013a03          	ld	s4,64(sp)
    80007a84:	03813a83          	ld	s5,56(sp)
    80007a88:	02813b83          	ld	s7,40(sp)
    80007a8c:	02013c03          	ld	s8,32(sp)
    80007a90:	01813c83          	ld	s9,24(sp)
    80007a94:	40ab053b          	subw	a0,s6,a0
    80007a98:	03013b03          	ld	s6,48(sp)
    80007a9c:	07010113          	addi	sp,sp,112
    80007aa0:	00008067          	ret
    80007aa4:	00001097          	auipc	ra,0x1
    80007aa8:	1d8080e7          	jalr	472(ra) # 80008c7c <push_on>
    80007aac:	0984a703          	lw	a4,152(s1)
    80007ab0:	09c4a783          	lw	a5,156(s1)
    80007ab4:	0007879b          	sext.w	a5,a5
    80007ab8:	fef70ce3          	beq	a4,a5,80007ab0 <consoleread+0xfc>
    80007abc:	00001097          	auipc	ra,0x1
    80007ac0:	234080e7          	jalr	564(ra) # 80008cf0 <pop_on>
    80007ac4:	0984a783          	lw	a5,152(s1)
    80007ac8:	07f7f713          	andi	a4,a5,127
    80007acc:	00e48733          	add	a4,s1,a4
    80007ad0:	01874703          	lbu	a4,24(a4)
    80007ad4:	0017869b          	addiw	a3,a5,1
    80007ad8:	08d4ac23          	sw	a3,152(s1)
    80007adc:	00070c9b          	sext.w	s9,a4
    80007ae0:	f5371ee3          	bne	a4,s3,80007a3c <consoleread+0x88>
    80007ae4:	000b851b          	sext.w	a0,s7
    80007ae8:	f96bf2e3          	bgeu	s7,s6,80007a6c <consoleread+0xb8>
    80007aec:	08f4ac23          	sw	a5,152(s1)
    80007af0:	f7dff06f          	j	80007a6c <consoleread+0xb8>

0000000080007af4 <consputc>:
    80007af4:	10000793          	li	a5,256
    80007af8:	00f50663          	beq	a0,a5,80007b04 <consputc+0x10>
    80007afc:	00001317          	auipc	t1,0x1
    80007b00:	9f430067          	jr	-1548(t1) # 800084f0 <uartputc_sync>
    80007b04:	ff010113          	addi	sp,sp,-16
    80007b08:	00113423          	sd	ra,8(sp)
    80007b0c:	00813023          	sd	s0,0(sp)
    80007b10:	01010413          	addi	s0,sp,16
    80007b14:	00800513          	li	a0,8
    80007b18:	00001097          	auipc	ra,0x1
    80007b1c:	9d8080e7          	jalr	-1576(ra) # 800084f0 <uartputc_sync>
    80007b20:	02000513          	li	a0,32
    80007b24:	00001097          	auipc	ra,0x1
    80007b28:	9cc080e7          	jalr	-1588(ra) # 800084f0 <uartputc_sync>
    80007b2c:	00013403          	ld	s0,0(sp)
    80007b30:	00813083          	ld	ra,8(sp)
    80007b34:	00800513          	li	a0,8
    80007b38:	01010113          	addi	sp,sp,16
    80007b3c:	00001317          	auipc	t1,0x1
    80007b40:	9b430067          	jr	-1612(t1) # 800084f0 <uartputc_sync>

0000000080007b44 <consoleintr>:
    80007b44:	fe010113          	addi	sp,sp,-32
    80007b48:	00813823          	sd	s0,16(sp)
    80007b4c:	00913423          	sd	s1,8(sp)
    80007b50:	01213023          	sd	s2,0(sp)
    80007b54:	00113c23          	sd	ra,24(sp)
    80007b58:	02010413          	addi	s0,sp,32
    80007b5c:	00006917          	auipc	s2,0x6
    80007b60:	57c90913          	addi	s2,s2,1404 # 8000e0d8 <cons>
    80007b64:	00050493          	mv	s1,a0
    80007b68:	00090513          	mv	a0,s2
    80007b6c:	00001097          	auipc	ra,0x1
    80007b70:	e40080e7          	jalr	-448(ra) # 800089ac <acquire>
    80007b74:	02048c63          	beqz	s1,80007bac <consoleintr+0x68>
    80007b78:	0a092783          	lw	a5,160(s2)
    80007b7c:	09892703          	lw	a4,152(s2)
    80007b80:	07f00693          	li	a3,127
    80007b84:	40e7873b          	subw	a4,a5,a4
    80007b88:	02e6e263          	bltu	a3,a4,80007bac <consoleintr+0x68>
    80007b8c:	00d00713          	li	a4,13
    80007b90:	04e48063          	beq	s1,a4,80007bd0 <consoleintr+0x8c>
    80007b94:	07f7f713          	andi	a4,a5,127
    80007b98:	00e90733          	add	a4,s2,a4
    80007b9c:	0017879b          	addiw	a5,a5,1
    80007ba0:	0af92023          	sw	a5,160(s2)
    80007ba4:	00970c23          	sb	s1,24(a4)
    80007ba8:	08f92e23          	sw	a5,156(s2)
    80007bac:	01013403          	ld	s0,16(sp)
    80007bb0:	01813083          	ld	ra,24(sp)
    80007bb4:	00813483          	ld	s1,8(sp)
    80007bb8:	00013903          	ld	s2,0(sp)
    80007bbc:	00006517          	auipc	a0,0x6
    80007bc0:	51c50513          	addi	a0,a0,1308 # 8000e0d8 <cons>
    80007bc4:	02010113          	addi	sp,sp,32
    80007bc8:	00001317          	auipc	t1,0x1
    80007bcc:	eb030067          	jr	-336(t1) # 80008a78 <release>
    80007bd0:	00a00493          	li	s1,10
    80007bd4:	fc1ff06f          	j	80007b94 <consoleintr+0x50>

0000000080007bd8 <consoleinit>:
    80007bd8:	fe010113          	addi	sp,sp,-32
    80007bdc:	00113c23          	sd	ra,24(sp)
    80007be0:	00813823          	sd	s0,16(sp)
    80007be4:	00913423          	sd	s1,8(sp)
    80007be8:	02010413          	addi	s0,sp,32
    80007bec:	00006497          	auipc	s1,0x6
    80007bf0:	4ec48493          	addi	s1,s1,1260 # 8000e0d8 <cons>
    80007bf4:	00048513          	mv	a0,s1
    80007bf8:	00003597          	auipc	a1,0x3
    80007bfc:	af058593          	addi	a1,a1,-1296 # 8000a6e8 <CONSOLE_STATUS+0x6d8>
    80007c00:	00001097          	auipc	ra,0x1
    80007c04:	d88080e7          	jalr	-632(ra) # 80008988 <initlock>
    80007c08:	00000097          	auipc	ra,0x0
    80007c0c:	7ac080e7          	jalr	1964(ra) # 800083b4 <uartinit>
    80007c10:	01813083          	ld	ra,24(sp)
    80007c14:	01013403          	ld	s0,16(sp)
    80007c18:	00000797          	auipc	a5,0x0
    80007c1c:	d9c78793          	addi	a5,a5,-612 # 800079b4 <consoleread>
    80007c20:	0af4bc23          	sd	a5,184(s1)
    80007c24:	00000797          	auipc	a5,0x0
    80007c28:	cec78793          	addi	a5,a5,-788 # 80007910 <consolewrite>
    80007c2c:	0cf4b023          	sd	a5,192(s1)
    80007c30:	00813483          	ld	s1,8(sp)
    80007c34:	02010113          	addi	sp,sp,32
    80007c38:	00008067          	ret

0000000080007c3c <console_read>:
    80007c3c:	ff010113          	addi	sp,sp,-16
    80007c40:	00813423          	sd	s0,8(sp)
    80007c44:	01010413          	addi	s0,sp,16
    80007c48:	00813403          	ld	s0,8(sp)
    80007c4c:	00006317          	auipc	t1,0x6
    80007c50:	54433303          	ld	t1,1348(t1) # 8000e190 <devsw+0x10>
    80007c54:	01010113          	addi	sp,sp,16
    80007c58:	00030067          	jr	t1

0000000080007c5c <console_write>:
    80007c5c:	ff010113          	addi	sp,sp,-16
    80007c60:	00813423          	sd	s0,8(sp)
    80007c64:	01010413          	addi	s0,sp,16
    80007c68:	00813403          	ld	s0,8(sp)
    80007c6c:	00006317          	auipc	t1,0x6
    80007c70:	52c33303          	ld	t1,1324(t1) # 8000e198 <devsw+0x18>
    80007c74:	01010113          	addi	sp,sp,16
    80007c78:	00030067          	jr	t1

0000000080007c7c <panic>:
    80007c7c:	fe010113          	addi	sp,sp,-32
    80007c80:	00113c23          	sd	ra,24(sp)
    80007c84:	00813823          	sd	s0,16(sp)
    80007c88:	00913423          	sd	s1,8(sp)
    80007c8c:	02010413          	addi	s0,sp,32
    80007c90:	00050493          	mv	s1,a0
    80007c94:	00003517          	auipc	a0,0x3
    80007c98:	a5c50513          	addi	a0,a0,-1444 # 8000a6f0 <CONSOLE_STATUS+0x6e0>
    80007c9c:	00006797          	auipc	a5,0x6
    80007ca0:	5807ae23          	sw	zero,1436(a5) # 8000e238 <pr+0x18>
    80007ca4:	00000097          	auipc	ra,0x0
    80007ca8:	034080e7          	jalr	52(ra) # 80007cd8 <__printf>
    80007cac:	00048513          	mv	a0,s1
    80007cb0:	00000097          	auipc	ra,0x0
    80007cb4:	028080e7          	jalr	40(ra) # 80007cd8 <__printf>
    80007cb8:	00002517          	auipc	a0,0x2
    80007cbc:	7c050513          	addi	a0,a0,1984 # 8000a478 <CONSOLE_STATUS+0x468>
    80007cc0:	00000097          	auipc	ra,0x0
    80007cc4:	018080e7          	jalr	24(ra) # 80007cd8 <__printf>
    80007cc8:	00100793          	li	a5,1
    80007ccc:	00005717          	auipc	a4,0x5
    80007cd0:	24f72e23          	sw	a5,604(a4) # 8000cf28 <panicked>
    80007cd4:	0000006f          	j	80007cd4 <panic+0x58>

0000000080007cd8 <__printf>:
    80007cd8:	f3010113          	addi	sp,sp,-208
    80007cdc:	08813023          	sd	s0,128(sp)
    80007ce0:	07313423          	sd	s3,104(sp)
    80007ce4:	09010413          	addi	s0,sp,144
    80007ce8:	05813023          	sd	s8,64(sp)
    80007cec:	08113423          	sd	ra,136(sp)
    80007cf0:	06913c23          	sd	s1,120(sp)
    80007cf4:	07213823          	sd	s2,112(sp)
    80007cf8:	07413023          	sd	s4,96(sp)
    80007cfc:	05513c23          	sd	s5,88(sp)
    80007d00:	05613823          	sd	s6,80(sp)
    80007d04:	05713423          	sd	s7,72(sp)
    80007d08:	03913c23          	sd	s9,56(sp)
    80007d0c:	03a13823          	sd	s10,48(sp)
    80007d10:	03b13423          	sd	s11,40(sp)
    80007d14:	00006317          	auipc	t1,0x6
    80007d18:	50c30313          	addi	t1,t1,1292 # 8000e220 <pr>
    80007d1c:	01832c03          	lw	s8,24(t1)
    80007d20:	00b43423          	sd	a1,8(s0)
    80007d24:	00c43823          	sd	a2,16(s0)
    80007d28:	00d43c23          	sd	a3,24(s0)
    80007d2c:	02e43023          	sd	a4,32(s0)
    80007d30:	02f43423          	sd	a5,40(s0)
    80007d34:	03043823          	sd	a6,48(s0)
    80007d38:	03143c23          	sd	a7,56(s0)
    80007d3c:	00050993          	mv	s3,a0
    80007d40:	4a0c1663          	bnez	s8,800081ec <__printf+0x514>
    80007d44:	60098c63          	beqz	s3,8000835c <__printf+0x684>
    80007d48:	0009c503          	lbu	a0,0(s3)
    80007d4c:	00840793          	addi	a5,s0,8
    80007d50:	f6f43c23          	sd	a5,-136(s0)
    80007d54:	00000493          	li	s1,0
    80007d58:	22050063          	beqz	a0,80007f78 <__printf+0x2a0>
    80007d5c:	00002a37          	lui	s4,0x2
    80007d60:	00018ab7          	lui	s5,0x18
    80007d64:	000f4b37          	lui	s6,0xf4
    80007d68:	00989bb7          	lui	s7,0x989
    80007d6c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007d70:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007d74:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007d78:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80007d7c:	00148c9b          	addiw	s9,s1,1
    80007d80:	02500793          	li	a5,37
    80007d84:	01998933          	add	s2,s3,s9
    80007d88:	38f51263          	bne	a0,a5,8000810c <__printf+0x434>
    80007d8c:	00094783          	lbu	a5,0(s2)
    80007d90:	00078c9b          	sext.w	s9,a5
    80007d94:	1e078263          	beqz	a5,80007f78 <__printf+0x2a0>
    80007d98:	0024849b          	addiw	s1,s1,2
    80007d9c:	07000713          	li	a4,112
    80007da0:	00998933          	add	s2,s3,s1
    80007da4:	38e78a63          	beq	a5,a4,80008138 <__printf+0x460>
    80007da8:	20f76863          	bltu	a4,a5,80007fb8 <__printf+0x2e0>
    80007dac:	42a78863          	beq	a5,a0,800081dc <__printf+0x504>
    80007db0:	06400713          	li	a4,100
    80007db4:	40e79663          	bne	a5,a4,800081c0 <__printf+0x4e8>
    80007db8:	f7843783          	ld	a5,-136(s0)
    80007dbc:	0007a603          	lw	a2,0(a5)
    80007dc0:	00878793          	addi	a5,a5,8
    80007dc4:	f6f43c23          	sd	a5,-136(s0)
    80007dc8:	42064a63          	bltz	a2,800081fc <__printf+0x524>
    80007dcc:	00a00713          	li	a4,10
    80007dd0:	02e677bb          	remuw	a5,a2,a4
    80007dd4:	00003d97          	auipc	s11,0x3
    80007dd8:	944d8d93          	addi	s11,s11,-1724 # 8000a718 <digits>
    80007ddc:	00900593          	li	a1,9
    80007de0:	0006051b          	sext.w	a0,a2
    80007de4:	00000c93          	li	s9,0
    80007de8:	02079793          	slli	a5,a5,0x20
    80007dec:	0207d793          	srli	a5,a5,0x20
    80007df0:	00fd87b3          	add	a5,s11,a5
    80007df4:	0007c783          	lbu	a5,0(a5)
    80007df8:	02e656bb          	divuw	a3,a2,a4
    80007dfc:	f8f40023          	sb	a5,-128(s0)
    80007e00:	14c5d863          	bge	a1,a2,80007f50 <__printf+0x278>
    80007e04:	06300593          	li	a1,99
    80007e08:	00100c93          	li	s9,1
    80007e0c:	02e6f7bb          	remuw	a5,a3,a4
    80007e10:	02079793          	slli	a5,a5,0x20
    80007e14:	0207d793          	srli	a5,a5,0x20
    80007e18:	00fd87b3          	add	a5,s11,a5
    80007e1c:	0007c783          	lbu	a5,0(a5)
    80007e20:	02e6d73b          	divuw	a4,a3,a4
    80007e24:	f8f400a3          	sb	a5,-127(s0)
    80007e28:	12a5f463          	bgeu	a1,a0,80007f50 <__printf+0x278>
    80007e2c:	00a00693          	li	a3,10
    80007e30:	00900593          	li	a1,9
    80007e34:	02d777bb          	remuw	a5,a4,a3
    80007e38:	02079793          	slli	a5,a5,0x20
    80007e3c:	0207d793          	srli	a5,a5,0x20
    80007e40:	00fd87b3          	add	a5,s11,a5
    80007e44:	0007c503          	lbu	a0,0(a5)
    80007e48:	02d757bb          	divuw	a5,a4,a3
    80007e4c:	f8a40123          	sb	a0,-126(s0)
    80007e50:	48e5f263          	bgeu	a1,a4,800082d4 <__printf+0x5fc>
    80007e54:	06300513          	li	a0,99
    80007e58:	02d7f5bb          	remuw	a1,a5,a3
    80007e5c:	02059593          	slli	a1,a1,0x20
    80007e60:	0205d593          	srli	a1,a1,0x20
    80007e64:	00bd85b3          	add	a1,s11,a1
    80007e68:	0005c583          	lbu	a1,0(a1)
    80007e6c:	02d7d7bb          	divuw	a5,a5,a3
    80007e70:	f8b401a3          	sb	a1,-125(s0)
    80007e74:	48e57263          	bgeu	a0,a4,800082f8 <__printf+0x620>
    80007e78:	3e700513          	li	a0,999
    80007e7c:	02d7f5bb          	remuw	a1,a5,a3
    80007e80:	02059593          	slli	a1,a1,0x20
    80007e84:	0205d593          	srli	a1,a1,0x20
    80007e88:	00bd85b3          	add	a1,s11,a1
    80007e8c:	0005c583          	lbu	a1,0(a1)
    80007e90:	02d7d7bb          	divuw	a5,a5,a3
    80007e94:	f8b40223          	sb	a1,-124(s0)
    80007e98:	46e57663          	bgeu	a0,a4,80008304 <__printf+0x62c>
    80007e9c:	02d7f5bb          	remuw	a1,a5,a3
    80007ea0:	02059593          	slli	a1,a1,0x20
    80007ea4:	0205d593          	srli	a1,a1,0x20
    80007ea8:	00bd85b3          	add	a1,s11,a1
    80007eac:	0005c583          	lbu	a1,0(a1)
    80007eb0:	02d7d7bb          	divuw	a5,a5,a3
    80007eb4:	f8b402a3          	sb	a1,-123(s0)
    80007eb8:	46ea7863          	bgeu	s4,a4,80008328 <__printf+0x650>
    80007ebc:	02d7f5bb          	remuw	a1,a5,a3
    80007ec0:	02059593          	slli	a1,a1,0x20
    80007ec4:	0205d593          	srli	a1,a1,0x20
    80007ec8:	00bd85b3          	add	a1,s11,a1
    80007ecc:	0005c583          	lbu	a1,0(a1)
    80007ed0:	02d7d7bb          	divuw	a5,a5,a3
    80007ed4:	f8b40323          	sb	a1,-122(s0)
    80007ed8:	3eeaf863          	bgeu	s5,a4,800082c8 <__printf+0x5f0>
    80007edc:	02d7f5bb          	remuw	a1,a5,a3
    80007ee0:	02059593          	slli	a1,a1,0x20
    80007ee4:	0205d593          	srli	a1,a1,0x20
    80007ee8:	00bd85b3          	add	a1,s11,a1
    80007eec:	0005c583          	lbu	a1,0(a1)
    80007ef0:	02d7d7bb          	divuw	a5,a5,a3
    80007ef4:	f8b403a3          	sb	a1,-121(s0)
    80007ef8:	42eb7e63          	bgeu	s6,a4,80008334 <__printf+0x65c>
    80007efc:	02d7f5bb          	remuw	a1,a5,a3
    80007f00:	02059593          	slli	a1,a1,0x20
    80007f04:	0205d593          	srli	a1,a1,0x20
    80007f08:	00bd85b3          	add	a1,s11,a1
    80007f0c:	0005c583          	lbu	a1,0(a1)
    80007f10:	02d7d7bb          	divuw	a5,a5,a3
    80007f14:	f8b40423          	sb	a1,-120(s0)
    80007f18:	42ebfc63          	bgeu	s7,a4,80008350 <__printf+0x678>
    80007f1c:	02079793          	slli	a5,a5,0x20
    80007f20:	0207d793          	srli	a5,a5,0x20
    80007f24:	00fd8db3          	add	s11,s11,a5
    80007f28:	000dc703          	lbu	a4,0(s11)
    80007f2c:	00a00793          	li	a5,10
    80007f30:	00900c93          	li	s9,9
    80007f34:	f8e404a3          	sb	a4,-119(s0)
    80007f38:	00065c63          	bgez	a2,80007f50 <__printf+0x278>
    80007f3c:	f9040713          	addi	a4,s0,-112
    80007f40:	00f70733          	add	a4,a4,a5
    80007f44:	02d00693          	li	a3,45
    80007f48:	fed70823          	sb	a3,-16(a4)
    80007f4c:	00078c93          	mv	s9,a5
    80007f50:	f8040793          	addi	a5,s0,-128
    80007f54:	01978cb3          	add	s9,a5,s9
    80007f58:	f7f40d13          	addi	s10,s0,-129
    80007f5c:	000cc503          	lbu	a0,0(s9)
    80007f60:	fffc8c93          	addi	s9,s9,-1
    80007f64:	00000097          	auipc	ra,0x0
    80007f68:	b90080e7          	jalr	-1136(ra) # 80007af4 <consputc>
    80007f6c:	ffac98e3          	bne	s9,s10,80007f5c <__printf+0x284>
    80007f70:	00094503          	lbu	a0,0(s2)
    80007f74:	e00514e3          	bnez	a0,80007d7c <__printf+0xa4>
    80007f78:	1a0c1663          	bnez	s8,80008124 <__printf+0x44c>
    80007f7c:	08813083          	ld	ra,136(sp)
    80007f80:	08013403          	ld	s0,128(sp)
    80007f84:	07813483          	ld	s1,120(sp)
    80007f88:	07013903          	ld	s2,112(sp)
    80007f8c:	06813983          	ld	s3,104(sp)
    80007f90:	06013a03          	ld	s4,96(sp)
    80007f94:	05813a83          	ld	s5,88(sp)
    80007f98:	05013b03          	ld	s6,80(sp)
    80007f9c:	04813b83          	ld	s7,72(sp)
    80007fa0:	04013c03          	ld	s8,64(sp)
    80007fa4:	03813c83          	ld	s9,56(sp)
    80007fa8:	03013d03          	ld	s10,48(sp)
    80007fac:	02813d83          	ld	s11,40(sp)
    80007fb0:	0d010113          	addi	sp,sp,208
    80007fb4:	00008067          	ret
    80007fb8:	07300713          	li	a4,115
    80007fbc:	1ce78a63          	beq	a5,a4,80008190 <__printf+0x4b8>
    80007fc0:	07800713          	li	a4,120
    80007fc4:	1ee79e63          	bne	a5,a4,800081c0 <__printf+0x4e8>
    80007fc8:	f7843783          	ld	a5,-136(s0)
    80007fcc:	0007a703          	lw	a4,0(a5)
    80007fd0:	00878793          	addi	a5,a5,8
    80007fd4:	f6f43c23          	sd	a5,-136(s0)
    80007fd8:	28074263          	bltz	a4,8000825c <__printf+0x584>
    80007fdc:	00002d97          	auipc	s11,0x2
    80007fe0:	73cd8d93          	addi	s11,s11,1852 # 8000a718 <digits>
    80007fe4:	00f77793          	andi	a5,a4,15
    80007fe8:	00fd87b3          	add	a5,s11,a5
    80007fec:	0007c683          	lbu	a3,0(a5)
    80007ff0:	00f00613          	li	a2,15
    80007ff4:	0007079b          	sext.w	a5,a4
    80007ff8:	f8d40023          	sb	a3,-128(s0)
    80007ffc:	0047559b          	srliw	a1,a4,0x4
    80008000:	0047569b          	srliw	a3,a4,0x4
    80008004:	00000c93          	li	s9,0
    80008008:	0ee65063          	bge	a2,a4,800080e8 <__printf+0x410>
    8000800c:	00f6f693          	andi	a3,a3,15
    80008010:	00dd86b3          	add	a3,s11,a3
    80008014:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80008018:	0087d79b          	srliw	a5,a5,0x8
    8000801c:	00100c93          	li	s9,1
    80008020:	f8d400a3          	sb	a3,-127(s0)
    80008024:	0cb67263          	bgeu	a2,a1,800080e8 <__printf+0x410>
    80008028:	00f7f693          	andi	a3,a5,15
    8000802c:	00dd86b3          	add	a3,s11,a3
    80008030:	0006c583          	lbu	a1,0(a3)
    80008034:	00f00613          	li	a2,15
    80008038:	0047d69b          	srliw	a3,a5,0x4
    8000803c:	f8b40123          	sb	a1,-126(s0)
    80008040:	0047d593          	srli	a1,a5,0x4
    80008044:	28f67e63          	bgeu	a2,a5,800082e0 <__printf+0x608>
    80008048:	00f6f693          	andi	a3,a3,15
    8000804c:	00dd86b3          	add	a3,s11,a3
    80008050:	0006c503          	lbu	a0,0(a3)
    80008054:	0087d813          	srli	a6,a5,0x8
    80008058:	0087d69b          	srliw	a3,a5,0x8
    8000805c:	f8a401a3          	sb	a0,-125(s0)
    80008060:	28b67663          	bgeu	a2,a1,800082ec <__printf+0x614>
    80008064:	00f6f693          	andi	a3,a3,15
    80008068:	00dd86b3          	add	a3,s11,a3
    8000806c:	0006c583          	lbu	a1,0(a3)
    80008070:	00c7d513          	srli	a0,a5,0xc
    80008074:	00c7d69b          	srliw	a3,a5,0xc
    80008078:	f8b40223          	sb	a1,-124(s0)
    8000807c:	29067a63          	bgeu	a2,a6,80008310 <__printf+0x638>
    80008080:	00f6f693          	andi	a3,a3,15
    80008084:	00dd86b3          	add	a3,s11,a3
    80008088:	0006c583          	lbu	a1,0(a3)
    8000808c:	0107d813          	srli	a6,a5,0x10
    80008090:	0107d69b          	srliw	a3,a5,0x10
    80008094:	f8b402a3          	sb	a1,-123(s0)
    80008098:	28a67263          	bgeu	a2,a0,8000831c <__printf+0x644>
    8000809c:	00f6f693          	andi	a3,a3,15
    800080a0:	00dd86b3          	add	a3,s11,a3
    800080a4:	0006c683          	lbu	a3,0(a3)
    800080a8:	0147d79b          	srliw	a5,a5,0x14
    800080ac:	f8d40323          	sb	a3,-122(s0)
    800080b0:	21067663          	bgeu	a2,a6,800082bc <__printf+0x5e4>
    800080b4:	02079793          	slli	a5,a5,0x20
    800080b8:	0207d793          	srli	a5,a5,0x20
    800080bc:	00fd8db3          	add	s11,s11,a5
    800080c0:	000dc683          	lbu	a3,0(s11)
    800080c4:	00800793          	li	a5,8
    800080c8:	00700c93          	li	s9,7
    800080cc:	f8d403a3          	sb	a3,-121(s0)
    800080d0:	00075c63          	bgez	a4,800080e8 <__printf+0x410>
    800080d4:	f9040713          	addi	a4,s0,-112
    800080d8:	00f70733          	add	a4,a4,a5
    800080dc:	02d00693          	li	a3,45
    800080e0:	fed70823          	sb	a3,-16(a4)
    800080e4:	00078c93          	mv	s9,a5
    800080e8:	f8040793          	addi	a5,s0,-128
    800080ec:	01978cb3          	add	s9,a5,s9
    800080f0:	f7f40d13          	addi	s10,s0,-129
    800080f4:	000cc503          	lbu	a0,0(s9)
    800080f8:	fffc8c93          	addi	s9,s9,-1
    800080fc:	00000097          	auipc	ra,0x0
    80008100:	9f8080e7          	jalr	-1544(ra) # 80007af4 <consputc>
    80008104:	ff9d18e3          	bne	s10,s9,800080f4 <__printf+0x41c>
    80008108:	0100006f          	j	80008118 <__printf+0x440>
    8000810c:	00000097          	auipc	ra,0x0
    80008110:	9e8080e7          	jalr	-1560(ra) # 80007af4 <consputc>
    80008114:	000c8493          	mv	s1,s9
    80008118:	00094503          	lbu	a0,0(s2)
    8000811c:	c60510e3          	bnez	a0,80007d7c <__printf+0xa4>
    80008120:	e40c0ee3          	beqz	s8,80007f7c <__printf+0x2a4>
    80008124:	00006517          	auipc	a0,0x6
    80008128:	0fc50513          	addi	a0,a0,252 # 8000e220 <pr>
    8000812c:	00001097          	auipc	ra,0x1
    80008130:	94c080e7          	jalr	-1716(ra) # 80008a78 <release>
    80008134:	e49ff06f          	j	80007f7c <__printf+0x2a4>
    80008138:	f7843783          	ld	a5,-136(s0)
    8000813c:	03000513          	li	a0,48
    80008140:	01000d13          	li	s10,16
    80008144:	00878713          	addi	a4,a5,8
    80008148:	0007bc83          	ld	s9,0(a5)
    8000814c:	f6e43c23          	sd	a4,-136(s0)
    80008150:	00000097          	auipc	ra,0x0
    80008154:	9a4080e7          	jalr	-1628(ra) # 80007af4 <consputc>
    80008158:	07800513          	li	a0,120
    8000815c:	00000097          	auipc	ra,0x0
    80008160:	998080e7          	jalr	-1640(ra) # 80007af4 <consputc>
    80008164:	00002d97          	auipc	s11,0x2
    80008168:	5b4d8d93          	addi	s11,s11,1460 # 8000a718 <digits>
    8000816c:	03ccd793          	srli	a5,s9,0x3c
    80008170:	00fd87b3          	add	a5,s11,a5
    80008174:	0007c503          	lbu	a0,0(a5)
    80008178:	fffd0d1b          	addiw	s10,s10,-1
    8000817c:	004c9c93          	slli	s9,s9,0x4
    80008180:	00000097          	auipc	ra,0x0
    80008184:	974080e7          	jalr	-1676(ra) # 80007af4 <consputc>
    80008188:	fe0d12e3          	bnez	s10,8000816c <__printf+0x494>
    8000818c:	f8dff06f          	j	80008118 <__printf+0x440>
    80008190:	f7843783          	ld	a5,-136(s0)
    80008194:	0007bc83          	ld	s9,0(a5)
    80008198:	00878793          	addi	a5,a5,8
    8000819c:	f6f43c23          	sd	a5,-136(s0)
    800081a0:	000c9a63          	bnez	s9,800081b4 <__printf+0x4dc>
    800081a4:	1080006f          	j	800082ac <__printf+0x5d4>
    800081a8:	001c8c93          	addi	s9,s9,1
    800081ac:	00000097          	auipc	ra,0x0
    800081b0:	948080e7          	jalr	-1720(ra) # 80007af4 <consputc>
    800081b4:	000cc503          	lbu	a0,0(s9)
    800081b8:	fe0518e3          	bnez	a0,800081a8 <__printf+0x4d0>
    800081bc:	f5dff06f          	j	80008118 <__printf+0x440>
    800081c0:	02500513          	li	a0,37
    800081c4:	00000097          	auipc	ra,0x0
    800081c8:	930080e7          	jalr	-1744(ra) # 80007af4 <consputc>
    800081cc:	000c8513          	mv	a0,s9
    800081d0:	00000097          	auipc	ra,0x0
    800081d4:	924080e7          	jalr	-1756(ra) # 80007af4 <consputc>
    800081d8:	f41ff06f          	j	80008118 <__printf+0x440>
    800081dc:	02500513          	li	a0,37
    800081e0:	00000097          	auipc	ra,0x0
    800081e4:	914080e7          	jalr	-1772(ra) # 80007af4 <consputc>
    800081e8:	f31ff06f          	j	80008118 <__printf+0x440>
    800081ec:	00030513          	mv	a0,t1
    800081f0:	00000097          	auipc	ra,0x0
    800081f4:	7bc080e7          	jalr	1980(ra) # 800089ac <acquire>
    800081f8:	b4dff06f          	j	80007d44 <__printf+0x6c>
    800081fc:	40c0053b          	negw	a0,a2
    80008200:	00a00713          	li	a4,10
    80008204:	02e576bb          	remuw	a3,a0,a4
    80008208:	00002d97          	auipc	s11,0x2
    8000820c:	510d8d93          	addi	s11,s11,1296 # 8000a718 <digits>
    80008210:	ff700593          	li	a1,-9
    80008214:	02069693          	slli	a3,a3,0x20
    80008218:	0206d693          	srli	a3,a3,0x20
    8000821c:	00dd86b3          	add	a3,s11,a3
    80008220:	0006c683          	lbu	a3,0(a3)
    80008224:	02e557bb          	divuw	a5,a0,a4
    80008228:	f8d40023          	sb	a3,-128(s0)
    8000822c:	10b65e63          	bge	a2,a1,80008348 <__printf+0x670>
    80008230:	06300593          	li	a1,99
    80008234:	02e7f6bb          	remuw	a3,a5,a4
    80008238:	02069693          	slli	a3,a3,0x20
    8000823c:	0206d693          	srli	a3,a3,0x20
    80008240:	00dd86b3          	add	a3,s11,a3
    80008244:	0006c683          	lbu	a3,0(a3)
    80008248:	02e7d73b          	divuw	a4,a5,a4
    8000824c:	00200793          	li	a5,2
    80008250:	f8d400a3          	sb	a3,-127(s0)
    80008254:	bca5ece3          	bltu	a1,a0,80007e2c <__printf+0x154>
    80008258:	ce5ff06f          	j	80007f3c <__printf+0x264>
    8000825c:	40e007bb          	negw	a5,a4
    80008260:	00002d97          	auipc	s11,0x2
    80008264:	4b8d8d93          	addi	s11,s11,1208 # 8000a718 <digits>
    80008268:	00f7f693          	andi	a3,a5,15
    8000826c:	00dd86b3          	add	a3,s11,a3
    80008270:	0006c583          	lbu	a1,0(a3)
    80008274:	ff100613          	li	a2,-15
    80008278:	0047d69b          	srliw	a3,a5,0x4
    8000827c:	f8b40023          	sb	a1,-128(s0)
    80008280:	0047d59b          	srliw	a1,a5,0x4
    80008284:	0ac75e63          	bge	a4,a2,80008340 <__printf+0x668>
    80008288:	00f6f693          	andi	a3,a3,15
    8000828c:	00dd86b3          	add	a3,s11,a3
    80008290:	0006c603          	lbu	a2,0(a3)
    80008294:	00f00693          	li	a3,15
    80008298:	0087d79b          	srliw	a5,a5,0x8
    8000829c:	f8c400a3          	sb	a2,-127(s0)
    800082a0:	d8b6e4e3          	bltu	a3,a1,80008028 <__printf+0x350>
    800082a4:	00200793          	li	a5,2
    800082a8:	e2dff06f          	j	800080d4 <__printf+0x3fc>
    800082ac:	00002c97          	auipc	s9,0x2
    800082b0:	44cc8c93          	addi	s9,s9,1100 # 8000a6f8 <CONSOLE_STATUS+0x6e8>
    800082b4:	02800513          	li	a0,40
    800082b8:	ef1ff06f          	j	800081a8 <__printf+0x4d0>
    800082bc:	00700793          	li	a5,7
    800082c0:	00600c93          	li	s9,6
    800082c4:	e0dff06f          	j	800080d0 <__printf+0x3f8>
    800082c8:	00700793          	li	a5,7
    800082cc:	00600c93          	li	s9,6
    800082d0:	c69ff06f          	j	80007f38 <__printf+0x260>
    800082d4:	00300793          	li	a5,3
    800082d8:	00200c93          	li	s9,2
    800082dc:	c5dff06f          	j	80007f38 <__printf+0x260>
    800082e0:	00300793          	li	a5,3
    800082e4:	00200c93          	li	s9,2
    800082e8:	de9ff06f          	j	800080d0 <__printf+0x3f8>
    800082ec:	00400793          	li	a5,4
    800082f0:	00300c93          	li	s9,3
    800082f4:	dddff06f          	j	800080d0 <__printf+0x3f8>
    800082f8:	00400793          	li	a5,4
    800082fc:	00300c93          	li	s9,3
    80008300:	c39ff06f          	j	80007f38 <__printf+0x260>
    80008304:	00500793          	li	a5,5
    80008308:	00400c93          	li	s9,4
    8000830c:	c2dff06f          	j	80007f38 <__printf+0x260>
    80008310:	00500793          	li	a5,5
    80008314:	00400c93          	li	s9,4
    80008318:	db9ff06f          	j	800080d0 <__printf+0x3f8>
    8000831c:	00600793          	li	a5,6
    80008320:	00500c93          	li	s9,5
    80008324:	dadff06f          	j	800080d0 <__printf+0x3f8>
    80008328:	00600793          	li	a5,6
    8000832c:	00500c93          	li	s9,5
    80008330:	c09ff06f          	j	80007f38 <__printf+0x260>
    80008334:	00800793          	li	a5,8
    80008338:	00700c93          	li	s9,7
    8000833c:	bfdff06f          	j	80007f38 <__printf+0x260>
    80008340:	00100793          	li	a5,1
    80008344:	d91ff06f          	j	800080d4 <__printf+0x3fc>
    80008348:	00100793          	li	a5,1
    8000834c:	bf1ff06f          	j	80007f3c <__printf+0x264>
    80008350:	00900793          	li	a5,9
    80008354:	00800c93          	li	s9,8
    80008358:	be1ff06f          	j	80007f38 <__printf+0x260>
    8000835c:	00002517          	auipc	a0,0x2
    80008360:	3a450513          	addi	a0,a0,932 # 8000a700 <CONSOLE_STATUS+0x6f0>
    80008364:	00000097          	auipc	ra,0x0
    80008368:	918080e7          	jalr	-1768(ra) # 80007c7c <panic>

000000008000836c <printfinit>:
    8000836c:	fe010113          	addi	sp,sp,-32
    80008370:	00813823          	sd	s0,16(sp)
    80008374:	00913423          	sd	s1,8(sp)
    80008378:	00113c23          	sd	ra,24(sp)
    8000837c:	02010413          	addi	s0,sp,32
    80008380:	00006497          	auipc	s1,0x6
    80008384:	ea048493          	addi	s1,s1,-352 # 8000e220 <pr>
    80008388:	00048513          	mv	a0,s1
    8000838c:	00002597          	auipc	a1,0x2
    80008390:	38458593          	addi	a1,a1,900 # 8000a710 <CONSOLE_STATUS+0x700>
    80008394:	00000097          	auipc	ra,0x0
    80008398:	5f4080e7          	jalr	1524(ra) # 80008988 <initlock>
    8000839c:	01813083          	ld	ra,24(sp)
    800083a0:	01013403          	ld	s0,16(sp)
    800083a4:	0004ac23          	sw	zero,24(s1)
    800083a8:	00813483          	ld	s1,8(sp)
    800083ac:	02010113          	addi	sp,sp,32
    800083b0:	00008067          	ret

00000000800083b4 <uartinit>:
    800083b4:	ff010113          	addi	sp,sp,-16
    800083b8:	00813423          	sd	s0,8(sp)
    800083bc:	01010413          	addi	s0,sp,16
    800083c0:	100007b7          	lui	a5,0x10000
    800083c4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800083c8:	f8000713          	li	a4,-128
    800083cc:	00e781a3          	sb	a4,3(a5)
    800083d0:	00300713          	li	a4,3
    800083d4:	00e78023          	sb	a4,0(a5)
    800083d8:	000780a3          	sb	zero,1(a5)
    800083dc:	00e781a3          	sb	a4,3(a5)
    800083e0:	00700693          	li	a3,7
    800083e4:	00d78123          	sb	a3,2(a5)
    800083e8:	00e780a3          	sb	a4,1(a5)
    800083ec:	00813403          	ld	s0,8(sp)
    800083f0:	01010113          	addi	sp,sp,16
    800083f4:	00008067          	ret

00000000800083f8 <uartputc>:
    800083f8:	00005797          	auipc	a5,0x5
    800083fc:	b307a783          	lw	a5,-1232(a5) # 8000cf28 <panicked>
    80008400:	00078463          	beqz	a5,80008408 <uartputc+0x10>
    80008404:	0000006f          	j	80008404 <uartputc+0xc>
    80008408:	fd010113          	addi	sp,sp,-48
    8000840c:	02813023          	sd	s0,32(sp)
    80008410:	00913c23          	sd	s1,24(sp)
    80008414:	01213823          	sd	s2,16(sp)
    80008418:	01313423          	sd	s3,8(sp)
    8000841c:	02113423          	sd	ra,40(sp)
    80008420:	03010413          	addi	s0,sp,48
    80008424:	00005917          	auipc	s2,0x5
    80008428:	b0c90913          	addi	s2,s2,-1268 # 8000cf30 <uart_tx_r>
    8000842c:	00093783          	ld	a5,0(s2)
    80008430:	00005497          	auipc	s1,0x5
    80008434:	b0848493          	addi	s1,s1,-1272 # 8000cf38 <uart_tx_w>
    80008438:	0004b703          	ld	a4,0(s1)
    8000843c:	02078693          	addi	a3,a5,32
    80008440:	00050993          	mv	s3,a0
    80008444:	02e69c63          	bne	a3,a4,8000847c <uartputc+0x84>
    80008448:	00001097          	auipc	ra,0x1
    8000844c:	834080e7          	jalr	-1996(ra) # 80008c7c <push_on>
    80008450:	00093783          	ld	a5,0(s2)
    80008454:	0004b703          	ld	a4,0(s1)
    80008458:	02078793          	addi	a5,a5,32
    8000845c:	00e79463          	bne	a5,a4,80008464 <uartputc+0x6c>
    80008460:	0000006f          	j	80008460 <uartputc+0x68>
    80008464:	00001097          	auipc	ra,0x1
    80008468:	88c080e7          	jalr	-1908(ra) # 80008cf0 <pop_on>
    8000846c:	00093783          	ld	a5,0(s2)
    80008470:	0004b703          	ld	a4,0(s1)
    80008474:	02078693          	addi	a3,a5,32
    80008478:	fce688e3          	beq	a3,a4,80008448 <uartputc+0x50>
    8000847c:	01f77693          	andi	a3,a4,31
    80008480:	00006597          	auipc	a1,0x6
    80008484:	dc058593          	addi	a1,a1,-576 # 8000e240 <uart_tx_buf>
    80008488:	00d586b3          	add	a3,a1,a3
    8000848c:	00170713          	addi	a4,a4,1
    80008490:	01368023          	sb	s3,0(a3)
    80008494:	00e4b023          	sd	a4,0(s1)
    80008498:	10000637          	lui	a2,0x10000
    8000849c:	02f71063          	bne	a4,a5,800084bc <uartputc+0xc4>
    800084a0:	0340006f          	j	800084d4 <uartputc+0xdc>
    800084a4:	00074703          	lbu	a4,0(a4)
    800084a8:	00f93023          	sd	a5,0(s2)
    800084ac:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800084b0:	00093783          	ld	a5,0(s2)
    800084b4:	0004b703          	ld	a4,0(s1)
    800084b8:	00f70e63          	beq	a4,a5,800084d4 <uartputc+0xdc>
    800084bc:	00564683          	lbu	a3,5(a2)
    800084c0:	01f7f713          	andi	a4,a5,31
    800084c4:	00e58733          	add	a4,a1,a4
    800084c8:	0206f693          	andi	a3,a3,32
    800084cc:	00178793          	addi	a5,a5,1
    800084d0:	fc069ae3          	bnez	a3,800084a4 <uartputc+0xac>
    800084d4:	02813083          	ld	ra,40(sp)
    800084d8:	02013403          	ld	s0,32(sp)
    800084dc:	01813483          	ld	s1,24(sp)
    800084e0:	01013903          	ld	s2,16(sp)
    800084e4:	00813983          	ld	s3,8(sp)
    800084e8:	03010113          	addi	sp,sp,48
    800084ec:	00008067          	ret

00000000800084f0 <uartputc_sync>:
    800084f0:	ff010113          	addi	sp,sp,-16
    800084f4:	00813423          	sd	s0,8(sp)
    800084f8:	01010413          	addi	s0,sp,16
    800084fc:	00005717          	auipc	a4,0x5
    80008500:	a2c72703          	lw	a4,-1492(a4) # 8000cf28 <panicked>
    80008504:	02071663          	bnez	a4,80008530 <uartputc_sync+0x40>
    80008508:	00050793          	mv	a5,a0
    8000850c:	100006b7          	lui	a3,0x10000
    80008510:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80008514:	02077713          	andi	a4,a4,32
    80008518:	fe070ce3          	beqz	a4,80008510 <uartputc_sync+0x20>
    8000851c:	0ff7f793          	andi	a5,a5,255
    80008520:	00f68023          	sb	a5,0(a3)
    80008524:	00813403          	ld	s0,8(sp)
    80008528:	01010113          	addi	sp,sp,16
    8000852c:	00008067          	ret
    80008530:	0000006f          	j	80008530 <uartputc_sync+0x40>

0000000080008534 <uartstart>:
    80008534:	ff010113          	addi	sp,sp,-16
    80008538:	00813423          	sd	s0,8(sp)
    8000853c:	01010413          	addi	s0,sp,16
    80008540:	00005617          	auipc	a2,0x5
    80008544:	9f060613          	addi	a2,a2,-1552 # 8000cf30 <uart_tx_r>
    80008548:	00005517          	auipc	a0,0x5
    8000854c:	9f050513          	addi	a0,a0,-1552 # 8000cf38 <uart_tx_w>
    80008550:	00063783          	ld	a5,0(a2)
    80008554:	00053703          	ld	a4,0(a0)
    80008558:	04f70263          	beq	a4,a5,8000859c <uartstart+0x68>
    8000855c:	100005b7          	lui	a1,0x10000
    80008560:	00006817          	auipc	a6,0x6
    80008564:	ce080813          	addi	a6,a6,-800 # 8000e240 <uart_tx_buf>
    80008568:	01c0006f          	j	80008584 <uartstart+0x50>
    8000856c:	0006c703          	lbu	a4,0(a3)
    80008570:	00f63023          	sd	a5,0(a2)
    80008574:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80008578:	00063783          	ld	a5,0(a2)
    8000857c:	00053703          	ld	a4,0(a0)
    80008580:	00f70e63          	beq	a4,a5,8000859c <uartstart+0x68>
    80008584:	01f7f713          	andi	a4,a5,31
    80008588:	00e806b3          	add	a3,a6,a4
    8000858c:	0055c703          	lbu	a4,5(a1)
    80008590:	00178793          	addi	a5,a5,1
    80008594:	02077713          	andi	a4,a4,32
    80008598:	fc071ae3          	bnez	a4,8000856c <uartstart+0x38>
    8000859c:	00813403          	ld	s0,8(sp)
    800085a0:	01010113          	addi	sp,sp,16
    800085a4:	00008067          	ret

00000000800085a8 <uartgetc>:
    800085a8:	ff010113          	addi	sp,sp,-16
    800085ac:	00813423          	sd	s0,8(sp)
    800085b0:	01010413          	addi	s0,sp,16
    800085b4:	10000737          	lui	a4,0x10000
    800085b8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800085bc:	0017f793          	andi	a5,a5,1
    800085c0:	00078c63          	beqz	a5,800085d8 <uartgetc+0x30>
    800085c4:	00074503          	lbu	a0,0(a4)
    800085c8:	0ff57513          	andi	a0,a0,255
    800085cc:	00813403          	ld	s0,8(sp)
    800085d0:	01010113          	addi	sp,sp,16
    800085d4:	00008067          	ret
    800085d8:	fff00513          	li	a0,-1
    800085dc:	ff1ff06f          	j	800085cc <uartgetc+0x24>

00000000800085e0 <uartintr>:
    800085e0:	100007b7          	lui	a5,0x10000
    800085e4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800085e8:	0017f793          	andi	a5,a5,1
    800085ec:	0a078463          	beqz	a5,80008694 <uartintr+0xb4>
    800085f0:	fe010113          	addi	sp,sp,-32
    800085f4:	00813823          	sd	s0,16(sp)
    800085f8:	00913423          	sd	s1,8(sp)
    800085fc:	00113c23          	sd	ra,24(sp)
    80008600:	02010413          	addi	s0,sp,32
    80008604:	100004b7          	lui	s1,0x10000
    80008608:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000860c:	0ff57513          	andi	a0,a0,255
    80008610:	fffff097          	auipc	ra,0xfffff
    80008614:	534080e7          	jalr	1332(ra) # 80007b44 <consoleintr>
    80008618:	0054c783          	lbu	a5,5(s1)
    8000861c:	0017f793          	andi	a5,a5,1
    80008620:	fe0794e3          	bnez	a5,80008608 <uartintr+0x28>
    80008624:	00005617          	auipc	a2,0x5
    80008628:	90c60613          	addi	a2,a2,-1780 # 8000cf30 <uart_tx_r>
    8000862c:	00005517          	auipc	a0,0x5
    80008630:	90c50513          	addi	a0,a0,-1780 # 8000cf38 <uart_tx_w>
    80008634:	00063783          	ld	a5,0(a2)
    80008638:	00053703          	ld	a4,0(a0)
    8000863c:	04f70263          	beq	a4,a5,80008680 <uartintr+0xa0>
    80008640:	100005b7          	lui	a1,0x10000
    80008644:	00006817          	auipc	a6,0x6
    80008648:	bfc80813          	addi	a6,a6,-1028 # 8000e240 <uart_tx_buf>
    8000864c:	01c0006f          	j	80008668 <uartintr+0x88>
    80008650:	0006c703          	lbu	a4,0(a3)
    80008654:	00f63023          	sd	a5,0(a2)
    80008658:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000865c:	00063783          	ld	a5,0(a2)
    80008660:	00053703          	ld	a4,0(a0)
    80008664:	00f70e63          	beq	a4,a5,80008680 <uartintr+0xa0>
    80008668:	01f7f713          	andi	a4,a5,31
    8000866c:	00e806b3          	add	a3,a6,a4
    80008670:	0055c703          	lbu	a4,5(a1)
    80008674:	00178793          	addi	a5,a5,1
    80008678:	02077713          	andi	a4,a4,32
    8000867c:	fc071ae3          	bnez	a4,80008650 <uartintr+0x70>
    80008680:	01813083          	ld	ra,24(sp)
    80008684:	01013403          	ld	s0,16(sp)
    80008688:	00813483          	ld	s1,8(sp)
    8000868c:	02010113          	addi	sp,sp,32
    80008690:	00008067          	ret
    80008694:	00005617          	auipc	a2,0x5
    80008698:	89c60613          	addi	a2,a2,-1892 # 8000cf30 <uart_tx_r>
    8000869c:	00005517          	auipc	a0,0x5
    800086a0:	89c50513          	addi	a0,a0,-1892 # 8000cf38 <uart_tx_w>
    800086a4:	00063783          	ld	a5,0(a2)
    800086a8:	00053703          	ld	a4,0(a0)
    800086ac:	04f70263          	beq	a4,a5,800086f0 <uartintr+0x110>
    800086b0:	100005b7          	lui	a1,0x10000
    800086b4:	00006817          	auipc	a6,0x6
    800086b8:	b8c80813          	addi	a6,a6,-1140 # 8000e240 <uart_tx_buf>
    800086bc:	01c0006f          	j	800086d8 <uartintr+0xf8>
    800086c0:	0006c703          	lbu	a4,0(a3)
    800086c4:	00f63023          	sd	a5,0(a2)
    800086c8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800086cc:	00063783          	ld	a5,0(a2)
    800086d0:	00053703          	ld	a4,0(a0)
    800086d4:	02f70063          	beq	a4,a5,800086f4 <uartintr+0x114>
    800086d8:	01f7f713          	andi	a4,a5,31
    800086dc:	00e806b3          	add	a3,a6,a4
    800086e0:	0055c703          	lbu	a4,5(a1)
    800086e4:	00178793          	addi	a5,a5,1
    800086e8:	02077713          	andi	a4,a4,32
    800086ec:	fc071ae3          	bnez	a4,800086c0 <uartintr+0xe0>
    800086f0:	00008067          	ret
    800086f4:	00008067          	ret

00000000800086f8 <kinit>:
    800086f8:	fc010113          	addi	sp,sp,-64
    800086fc:	02913423          	sd	s1,40(sp)
    80008700:	fffff7b7          	lui	a5,0xfffff
    80008704:	00007497          	auipc	s1,0x7
    80008708:	b5b48493          	addi	s1,s1,-1189 # 8000f25f <end+0xfff>
    8000870c:	02813823          	sd	s0,48(sp)
    80008710:	01313c23          	sd	s3,24(sp)
    80008714:	00f4f4b3          	and	s1,s1,a5
    80008718:	02113c23          	sd	ra,56(sp)
    8000871c:	03213023          	sd	s2,32(sp)
    80008720:	01413823          	sd	s4,16(sp)
    80008724:	01513423          	sd	s5,8(sp)
    80008728:	04010413          	addi	s0,sp,64
    8000872c:	000017b7          	lui	a5,0x1
    80008730:	01100993          	li	s3,17
    80008734:	00f487b3          	add	a5,s1,a5
    80008738:	01b99993          	slli	s3,s3,0x1b
    8000873c:	06f9e063          	bltu	s3,a5,8000879c <kinit+0xa4>
    80008740:	00006a97          	auipc	s5,0x6
    80008744:	b20a8a93          	addi	s5,s5,-1248 # 8000e260 <end>
    80008748:	0754ec63          	bltu	s1,s5,800087c0 <kinit+0xc8>
    8000874c:	0734fa63          	bgeu	s1,s3,800087c0 <kinit+0xc8>
    80008750:	00088a37          	lui	s4,0x88
    80008754:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80008758:	00004917          	auipc	s2,0x4
    8000875c:	7e890913          	addi	s2,s2,2024 # 8000cf40 <kmem>
    80008760:	00ca1a13          	slli	s4,s4,0xc
    80008764:	0140006f          	j	80008778 <kinit+0x80>
    80008768:	000017b7          	lui	a5,0x1
    8000876c:	00f484b3          	add	s1,s1,a5
    80008770:	0554e863          	bltu	s1,s5,800087c0 <kinit+0xc8>
    80008774:	0534f663          	bgeu	s1,s3,800087c0 <kinit+0xc8>
    80008778:	00001637          	lui	a2,0x1
    8000877c:	00100593          	li	a1,1
    80008780:	00048513          	mv	a0,s1
    80008784:	00000097          	auipc	ra,0x0
    80008788:	5e4080e7          	jalr	1508(ra) # 80008d68 <__memset>
    8000878c:	00093783          	ld	a5,0(s2)
    80008790:	00f4b023          	sd	a5,0(s1)
    80008794:	00993023          	sd	s1,0(s2)
    80008798:	fd4498e3          	bne	s1,s4,80008768 <kinit+0x70>
    8000879c:	03813083          	ld	ra,56(sp)
    800087a0:	03013403          	ld	s0,48(sp)
    800087a4:	02813483          	ld	s1,40(sp)
    800087a8:	02013903          	ld	s2,32(sp)
    800087ac:	01813983          	ld	s3,24(sp)
    800087b0:	01013a03          	ld	s4,16(sp)
    800087b4:	00813a83          	ld	s5,8(sp)
    800087b8:	04010113          	addi	sp,sp,64
    800087bc:	00008067          	ret
    800087c0:	00002517          	auipc	a0,0x2
    800087c4:	f7050513          	addi	a0,a0,-144 # 8000a730 <digits+0x18>
    800087c8:	fffff097          	auipc	ra,0xfffff
    800087cc:	4b4080e7          	jalr	1204(ra) # 80007c7c <panic>

00000000800087d0 <freerange>:
    800087d0:	fc010113          	addi	sp,sp,-64
    800087d4:	000017b7          	lui	a5,0x1
    800087d8:	02913423          	sd	s1,40(sp)
    800087dc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800087e0:	009504b3          	add	s1,a0,s1
    800087e4:	fffff537          	lui	a0,0xfffff
    800087e8:	02813823          	sd	s0,48(sp)
    800087ec:	02113c23          	sd	ra,56(sp)
    800087f0:	03213023          	sd	s2,32(sp)
    800087f4:	01313c23          	sd	s3,24(sp)
    800087f8:	01413823          	sd	s4,16(sp)
    800087fc:	01513423          	sd	s5,8(sp)
    80008800:	01613023          	sd	s6,0(sp)
    80008804:	04010413          	addi	s0,sp,64
    80008808:	00a4f4b3          	and	s1,s1,a0
    8000880c:	00f487b3          	add	a5,s1,a5
    80008810:	06f5e463          	bltu	a1,a5,80008878 <freerange+0xa8>
    80008814:	00006a97          	auipc	s5,0x6
    80008818:	a4ca8a93          	addi	s5,s5,-1460 # 8000e260 <end>
    8000881c:	0954e263          	bltu	s1,s5,800088a0 <freerange+0xd0>
    80008820:	01100993          	li	s3,17
    80008824:	01b99993          	slli	s3,s3,0x1b
    80008828:	0734fc63          	bgeu	s1,s3,800088a0 <freerange+0xd0>
    8000882c:	00058a13          	mv	s4,a1
    80008830:	00004917          	auipc	s2,0x4
    80008834:	71090913          	addi	s2,s2,1808 # 8000cf40 <kmem>
    80008838:	00002b37          	lui	s6,0x2
    8000883c:	0140006f          	j	80008850 <freerange+0x80>
    80008840:	000017b7          	lui	a5,0x1
    80008844:	00f484b3          	add	s1,s1,a5
    80008848:	0554ec63          	bltu	s1,s5,800088a0 <freerange+0xd0>
    8000884c:	0534fa63          	bgeu	s1,s3,800088a0 <freerange+0xd0>
    80008850:	00001637          	lui	a2,0x1
    80008854:	00100593          	li	a1,1
    80008858:	00048513          	mv	a0,s1
    8000885c:	00000097          	auipc	ra,0x0
    80008860:	50c080e7          	jalr	1292(ra) # 80008d68 <__memset>
    80008864:	00093703          	ld	a4,0(s2)
    80008868:	016487b3          	add	a5,s1,s6
    8000886c:	00e4b023          	sd	a4,0(s1)
    80008870:	00993023          	sd	s1,0(s2)
    80008874:	fcfa76e3          	bgeu	s4,a5,80008840 <freerange+0x70>
    80008878:	03813083          	ld	ra,56(sp)
    8000887c:	03013403          	ld	s0,48(sp)
    80008880:	02813483          	ld	s1,40(sp)
    80008884:	02013903          	ld	s2,32(sp)
    80008888:	01813983          	ld	s3,24(sp)
    8000888c:	01013a03          	ld	s4,16(sp)
    80008890:	00813a83          	ld	s5,8(sp)
    80008894:	00013b03          	ld	s6,0(sp)
    80008898:	04010113          	addi	sp,sp,64
    8000889c:	00008067          	ret
    800088a0:	00002517          	auipc	a0,0x2
    800088a4:	e9050513          	addi	a0,a0,-368 # 8000a730 <digits+0x18>
    800088a8:	fffff097          	auipc	ra,0xfffff
    800088ac:	3d4080e7          	jalr	980(ra) # 80007c7c <panic>

00000000800088b0 <kfree>:
    800088b0:	fe010113          	addi	sp,sp,-32
    800088b4:	00813823          	sd	s0,16(sp)
    800088b8:	00113c23          	sd	ra,24(sp)
    800088bc:	00913423          	sd	s1,8(sp)
    800088c0:	02010413          	addi	s0,sp,32
    800088c4:	03451793          	slli	a5,a0,0x34
    800088c8:	04079c63          	bnez	a5,80008920 <kfree+0x70>
    800088cc:	00006797          	auipc	a5,0x6
    800088d0:	99478793          	addi	a5,a5,-1644 # 8000e260 <end>
    800088d4:	00050493          	mv	s1,a0
    800088d8:	04f56463          	bltu	a0,a5,80008920 <kfree+0x70>
    800088dc:	01100793          	li	a5,17
    800088e0:	01b79793          	slli	a5,a5,0x1b
    800088e4:	02f57e63          	bgeu	a0,a5,80008920 <kfree+0x70>
    800088e8:	00001637          	lui	a2,0x1
    800088ec:	00100593          	li	a1,1
    800088f0:	00000097          	auipc	ra,0x0
    800088f4:	478080e7          	jalr	1144(ra) # 80008d68 <__memset>
    800088f8:	00004797          	auipc	a5,0x4
    800088fc:	64878793          	addi	a5,a5,1608 # 8000cf40 <kmem>
    80008900:	0007b703          	ld	a4,0(a5)
    80008904:	01813083          	ld	ra,24(sp)
    80008908:	01013403          	ld	s0,16(sp)
    8000890c:	00e4b023          	sd	a4,0(s1)
    80008910:	0097b023          	sd	s1,0(a5)
    80008914:	00813483          	ld	s1,8(sp)
    80008918:	02010113          	addi	sp,sp,32
    8000891c:	00008067          	ret
    80008920:	00002517          	auipc	a0,0x2
    80008924:	e1050513          	addi	a0,a0,-496 # 8000a730 <digits+0x18>
    80008928:	fffff097          	auipc	ra,0xfffff
    8000892c:	354080e7          	jalr	852(ra) # 80007c7c <panic>

0000000080008930 <kalloc>:
    80008930:	fe010113          	addi	sp,sp,-32
    80008934:	00813823          	sd	s0,16(sp)
    80008938:	00913423          	sd	s1,8(sp)
    8000893c:	00113c23          	sd	ra,24(sp)
    80008940:	02010413          	addi	s0,sp,32
    80008944:	00004797          	auipc	a5,0x4
    80008948:	5fc78793          	addi	a5,a5,1532 # 8000cf40 <kmem>
    8000894c:	0007b483          	ld	s1,0(a5)
    80008950:	02048063          	beqz	s1,80008970 <kalloc+0x40>
    80008954:	0004b703          	ld	a4,0(s1)
    80008958:	00001637          	lui	a2,0x1
    8000895c:	00500593          	li	a1,5
    80008960:	00048513          	mv	a0,s1
    80008964:	00e7b023          	sd	a4,0(a5)
    80008968:	00000097          	auipc	ra,0x0
    8000896c:	400080e7          	jalr	1024(ra) # 80008d68 <__memset>
    80008970:	01813083          	ld	ra,24(sp)
    80008974:	01013403          	ld	s0,16(sp)
    80008978:	00048513          	mv	a0,s1
    8000897c:	00813483          	ld	s1,8(sp)
    80008980:	02010113          	addi	sp,sp,32
    80008984:	00008067          	ret

0000000080008988 <initlock>:
    80008988:	ff010113          	addi	sp,sp,-16
    8000898c:	00813423          	sd	s0,8(sp)
    80008990:	01010413          	addi	s0,sp,16
    80008994:	00813403          	ld	s0,8(sp)
    80008998:	00b53423          	sd	a1,8(a0)
    8000899c:	00052023          	sw	zero,0(a0)
    800089a0:	00053823          	sd	zero,16(a0)
    800089a4:	01010113          	addi	sp,sp,16
    800089a8:	00008067          	ret

00000000800089ac <acquire>:
    800089ac:	fe010113          	addi	sp,sp,-32
    800089b0:	00813823          	sd	s0,16(sp)
    800089b4:	00913423          	sd	s1,8(sp)
    800089b8:	00113c23          	sd	ra,24(sp)
    800089bc:	01213023          	sd	s2,0(sp)
    800089c0:	02010413          	addi	s0,sp,32
    800089c4:	00050493          	mv	s1,a0
    800089c8:	10002973          	csrr	s2,sstatus
    800089cc:	100027f3          	csrr	a5,sstatus
    800089d0:	ffd7f793          	andi	a5,a5,-3
    800089d4:	10079073          	csrw	sstatus,a5
    800089d8:	fffff097          	auipc	ra,0xfffff
    800089dc:	8ec080e7          	jalr	-1812(ra) # 800072c4 <mycpu>
    800089e0:	07852783          	lw	a5,120(a0)
    800089e4:	06078e63          	beqz	a5,80008a60 <acquire+0xb4>
    800089e8:	fffff097          	auipc	ra,0xfffff
    800089ec:	8dc080e7          	jalr	-1828(ra) # 800072c4 <mycpu>
    800089f0:	07852783          	lw	a5,120(a0)
    800089f4:	0004a703          	lw	a4,0(s1)
    800089f8:	0017879b          	addiw	a5,a5,1
    800089fc:	06f52c23          	sw	a5,120(a0)
    80008a00:	04071063          	bnez	a4,80008a40 <acquire+0x94>
    80008a04:	00100713          	li	a4,1
    80008a08:	00070793          	mv	a5,a4
    80008a0c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008a10:	0007879b          	sext.w	a5,a5
    80008a14:	fe079ae3          	bnez	a5,80008a08 <acquire+0x5c>
    80008a18:	0ff0000f          	fence
    80008a1c:	fffff097          	auipc	ra,0xfffff
    80008a20:	8a8080e7          	jalr	-1880(ra) # 800072c4 <mycpu>
    80008a24:	01813083          	ld	ra,24(sp)
    80008a28:	01013403          	ld	s0,16(sp)
    80008a2c:	00a4b823          	sd	a0,16(s1)
    80008a30:	00013903          	ld	s2,0(sp)
    80008a34:	00813483          	ld	s1,8(sp)
    80008a38:	02010113          	addi	sp,sp,32
    80008a3c:	00008067          	ret
    80008a40:	0104b903          	ld	s2,16(s1)
    80008a44:	fffff097          	auipc	ra,0xfffff
    80008a48:	880080e7          	jalr	-1920(ra) # 800072c4 <mycpu>
    80008a4c:	faa91ce3          	bne	s2,a0,80008a04 <acquire+0x58>
    80008a50:	00002517          	auipc	a0,0x2
    80008a54:	ce850513          	addi	a0,a0,-792 # 8000a738 <digits+0x20>
    80008a58:	fffff097          	auipc	ra,0xfffff
    80008a5c:	224080e7          	jalr	548(ra) # 80007c7c <panic>
    80008a60:	00195913          	srli	s2,s2,0x1
    80008a64:	fffff097          	auipc	ra,0xfffff
    80008a68:	860080e7          	jalr	-1952(ra) # 800072c4 <mycpu>
    80008a6c:	00197913          	andi	s2,s2,1
    80008a70:	07252e23          	sw	s2,124(a0)
    80008a74:	f75ff06f          	j	800089e8 <acquire+0x3c>

0000000080008a78 <release>:
    80008a78:	fe010113          	addi	sp,sp,-32
    80008a7c:	00813823          	sd	s0,16(sp)
    80008a80:	00113c23          	sd	ra,24(sp)
    80008a84:	00913423          	sd	s1,8(sp)
    80008a88:	01213023          	sd	s2,0(sp)
    80008a8c:	02010413          	addi	s0,sp,32
    80008a90:	00052783          	lw	a5,0(a0)
    80008a94:	00079a63          	bnez	a5,80008aa8 <release+0x30>
    80008a98:	00002517          	auipc	a0,0x2
    80008a9c:	ca850513          	addi	a0,a0,-856 # 8000a740 <digits+0x28>
    80008aa0:	fffff097          	auipc	ra,0xfffff
    80008aa4:	1dc080e7          	jalr	476(ra) # 80007c7c <panic>
    80008aa8:	01053903          	ld	s2,16(a0)
    80008aac:	00050493          	mv	s1,a0
    80008ab0:	fffff097          	auipc	ra,0xfffff
    80008ab4:	814080e7          	jalr	-2028(ra) # 800072c4 <mycpu>
    80008ab8:	fea910e3          	bne	s2,a0,80008a98 <release+0x20>
    80008abc:	0004b823          	sd	zero,16(s1)
    80008ac0:	0ff0000f          	fence
    80008ac4:	0f50000f          	fence	iorw,ow
    80008ac8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80008acc:	ffffe097          	auipc	ra,0xffffe
    80008ad0:	7f8080e7          	jalr	2040(ra) # 800072c4 <mycpu>
    80008ad4:	100027f3          	csrr	a5,sstatus
    80008ad8:	0027f793          	andi	a5,a5,2
    80008adc:	04079a63          	bnez	a5,80008b30 <release+0xb8>
    80008ae0:	07852783          	lw	a5,120(a0)
    80008ae4:	02f05e63          	blez	a5,80008b20 <release+0xa8>
    80008ae8:	fff7871b          	addiw	a4,a5,-1
    80008aec:	06e52c23          	sw	a4,120(a0)
    80008af0:	00071c63          	bnez	a4,80008b08 <release+0x90>
    80008af4:	07c52783          	lw	a5,124(a0)
    80008af8:	00078863          	beqz	a5,80008b08 <release+0x90>
    80008afc:	100027f3          	csrr	a5,sstatus
    80008b00:	0027e793          	ori	a5,a5,2
    80008b04:	10079073          	csrw	sstatus,a5
    80008b08:	01813083          	ld	ra,24(sp)
    80008b0c:	01013403          	ld	s0,16(sp)
    80008b10:	00813483          	ld	s1,8(sp)
    80008b14:	00013903          	ld	s2,0(sp)
    80008b18:	02010113          	addi	sp,sp,32
    80008b1c:	00008067          	ret
    80008b20:	00002517          	auipc	a0,0x2
    80008b24:	c4050513          	addi	a0,a0,-960 # 8000a760 <digits+0x48>
    80008b28:	fffff097          	auipc	ra,0xfffff
    80008b2c:	154080e7          	jalr	340(ra) # 80007c7c <panic>
    80008b30:	00002517          	auipc	a0,0x2
    80008b34:	c1850513          	addi	a0,a0,-1000 # 8000a748 <digits+0x30>
    80008b38:	fffff097          	auipc	ra,0xfffff
    80008b3c:	144080e7          	jalr	324(ra) # 80007c7c <panic>

0000000080008b40 <holding>:
    80008b40:	00052783          	lw	a5,0(a0)
    80008b44:	00079663          	bnez	a5,80008b50 <holding+0x10>
    80008b48:	00000513          	li	a0,0
    80008b4c:	00008067          	ret
    80008b50:	fe010113          	addi	sp,sp,-32
    80008b54:	00813823          	sd	s0,16(sp)
    80008b58:	00913423          	sd	s1,8(sp)
    80008b5c:	00113c23          	sd	ra,24(sp)
    80008b60:	02010413          	addi	s0,sp,32
    80008b64:	01053483          	ld	s1,16(a0)
    80008b68:	ffffe097          	auipc	ra,0xffffe
    80008b6c:	75c080e7          	jalr	1884(ra) # 800072c4 <mycpu>
    80008b70:	01813083          	ld	ra,24(sp)
    80008b74:	01013403          	ld	s0,16(sp)
    80008b78:	40a48533          	sub	a0,s1,a0
    80008b7c:	00153513          	seqz	a0,a0
    80008b80:	00813483          	ld	s1,8(sp)
    80008b84:	02010113          	addi	sp,sp,32
    80008b88:	00008067          	ret

0000000080008b8c <push_off>:
    80008b8c:	fe010113          	addi	sp,sp,-32
    80008b90:	00813823          	sd	s0,16(sp)
    80008b94:	00113c23          	sd	ra,24(sp)
    80008b98:	00913423          	sd	s1,8(sp)
    80008b9c:	02010413          	addi	s0,sp,32
    80008ba0:	100024f3          	csrr	s1,sstatus
    80008ba4:	100027f3          	csrr	a5,sstatus
    80008ba8:	ffd7f793          	andi	a5,a5,-3
    80008bac:	10079073          	csrw	sstatus,a5
    80008bb0:	ffffe097          	auipc	ra,0xffffe
    80008bb4:	714080e7          	jalr	1812(ra) # 800072c4 <mycpu>
    80008bb8:	07852783          	lw	a5,120(a0)
    80008bbc:	02078663          	beqz	a5,80008be8 <push_off+0x5c>
    80008bc0:	ffffe097          	auipc	ra,0xffffe
    80008bc4:	704080e7          	jalr	1796(ra) # 800072c4 <mycpu>
    80008bc8:	07852783          	lw	a5,120(a0)
    80008bcc:	01813083          	ld	ra,24(sp)
    80008bd0:	01013403          	ld	s0,16(sp)
    80008bd4:	0017879b          	addiw	a5,a5,1
    80008bd8:	06f52c23          	sw	a5,120(a0)
    80008bdc:	00813483          	ld	s1,8(sp)
    80008be0:	02010113          	addi	sp,sp,32
    80008be4:	00008067          	ret
    80008be8:	0014d493          	srli	s1,s1,0x1
    80008bec:	ffffe097          	auipc	ra,0xffffe
    80008bf0:	6d8080e7          	jalr	1752(ra) # 800072c4 <mycpu>
    80008bf4:	0014f493          	andi	s1,s1,1
    80008bf8:	06952e23          	sw	s1,124(a0)
    80008bfc:	fc5ff06f          	j	80008bc0 <push_off+0x34>

0000000080008c00 <pop_off>:
    80008c00:	ff010113          	addi	sp,sp,-16
    80008c04:	00813023          	sd	s0,0(sp)
    80008c08:	00113423          	sd	ra,8(sp)
    80008c0c:	01010413          	addi	s0,sp,16
    80008c10:	ffffe097          	auipc	ra,0xffffe
    80008c14:	6b4080e7          	jalr	1716(ra) # 800072c4 <mycpu>
    80008c18:	100027f3          	csrr	a5,sstatus
    80008c1c:	0027f793          	andi	a5,a5,2
    80008c20:	04079663          	bnez	a5,80008c6c <pop_off+0x6c>
    80008c24:	07852783          	lw	a5,120(a0)
    80008c28:	02f05a63          	blez	a5,80008c5c <pop_off+0x5c>
    80008c2c:	fff7871b          	addiw	a4,a5,-1
    80008c30:	06e52c23          	sw	a4,120(a0)
    80008c34:	00071c63          	bnez	a4,80008c4c <pop_off+0x4c>
    80008c38:	07c52783          	lw	a5,124(a0)
    80008c3c:	00078863          	beqz	a5,80008c4c <pop_off+0x4c>
    80008c40:	100027f3          	csrr	a5,sstatus
    80008c44:	0027e793          	ori	a5,a5,2
    80008c48:	10079073          	csrw	sstatus,a5
    80008c4c:	00813083          	ld	ra,8(sp)
    80008c50:	00013403          	ld	s0,0(sp)
    80008c54:	01010113          	addi	sp,sp,16
    80008c58:	00008067          	ret
    80008c5c:	00002517          	auipc	a0,0x2
    80008c60:	b0450513          	addi	a0,a0,-1276 # 8000a760 <digits+0x48>
    80008c64:	fffff097          	auipc	ra,0xfffff
    80008c68:	018080e7          	jalr	24(ra) # 80007c7c <panic>
    80008c6c:	00002517          	auipc	a0,0x2
    80008c70:	adc50513          	addi	a0,a0,-1316 # 8000a748 <digits+0x30>
    80008c74:	fffff097          	auipc	ra,0xfffff
    80008c78:	008080e7          	jalr	8(ra) # 80007c7c <panic>

0000000080008c7c <push_on>:
    80008c7c:	fe010113          	addi	sp,sp,-32
    80008c80:	00813823          	sd	s0,16(sp)
    80008c84:	00113c23          	sd	ra,24(sp)
    80008c88:	00913423          	sd	s1,8(sp)
    80008c8c:	02010413          	addi	s0,sp,32
    80008c90:	100024f3          	csrr	s1,sstatus
    80008c94:	100027f3          	csrr	a5,sstatus
    80008c98:	0027e793          	ori	a5,a5,2
    80008c9c:	10079073          	csrw	sstatus,a5
    80008ca0:	ffffe097          	auipc	ra,0xffffe
    80008ca4:	624080e7          	jalr	1572(ra) # 800072c4 <mycpu>
    80008ca8:	07852783          	lw	a5,120(a0)
    80008cac:	02078663          	beqz	a5,80008cd8 <push_on+0x5c>
    80008cb0:	ffffe097          	auipc	ra,0xffffe
    80008cb4:	614080e7          	jalr	1556(ra) # 800072c4 <mycpu>
    80008cb8:	07852783          	lw	a5,120(a0)
    80008cbc:	01813083          	ld	ra,24(sp)
    80008cc0:	01013403          	ld	s0,16(sp)
    80008cc4:	0017879b          	addiw	a5,a5,1
    80008cc8:	06f52c23          	sw	a5,120(a0)
    80008ccc:	00813483          	ld	s1,8(sp)
    80008cd0:	02010113          	addi	sp,sp,32
    80008cd4:	00008067          	ret
    80008cd8:	0014d493          	srli	s1,s1,0x1
    80008cdc:	ffffe097          	auipc	ra,0xffffe
    80008ce0:	5e8080e7          	jalr	1512(ra) # 800072c4 <mycpu>
    80008ce4:	0014f493          	andi	s1,s1,1
    80008ce8:	06952e23          	sw	s1,124(a0)
    80008cec:	fc5ff06f          	j	80008cb0 <push_on+0x34>

0000000080008cf0 <pop_on>:
    80008cf0:	ff010113          	addi	sp,sp,-16
    80008cf4:	00813023          	sd	s0,0(sp)
    80008cf8:	00113423          	sd	ra,8(sp)
    80008cfc:	01010413          	addi	s0,sp,16
    80008d00:	ffffe097          	auipc	ra,0xffffe
    80008d04:	5c4080e7          	jalr	1476(ra) # 800072c4 <mycpu>
    80008d08:	100027f3          	csrr	a5,sstatus
    80008d0c:	0027f793          	andi	a5,a5,2
    80008d10:	04078463          	beqz	a5,80008d58 <pop_on+0x68>
    80008d14:	07852783          	lw	a5,120(a0)
    80008d18:	02f05863          	blez	a5,80008d48 <pop_on+0x58>
    80008d1c:	fff7879b          	addiw	a5,a5,-1
    80008d20:	06f52c23          	sw	a5,120(a0)
    80008d24:	07853783          	ld	a5,120(a0)
    80008d28:	00079863          	bnez	a5,80008d38 <pop_on+0x48>
    80008d2c:	100027f3          	csrr	a5,sstatus
    80008d30:	ffd7f793          	andi	a5,a5,-3
    80008d34:	10079073          	csrw	sstatus,a5
    80008d38:	00813083          	ld	ra,8(sp)
    80008d3c:	00013403          	ld	s0,0(sp)
    80008d40:	01010113          	addi	sp,sp,16
    80008d44:	00008067          	ret
    80008d48:	00002517          	auipc	a0,0x2
    80008d4c:	a4050513          	addi	a0,a0,-1472 # 8000a788 <digits+0x70>
    80008d50:	fffff097          	auipc	ra,0xfffff
    80008d54:	f2c080e7          	jalr	-212(ra) # 80007c7c <panic>
    80008d58:	00002517          	auipc	a0,0x2
    80008d5c:	a1050513          	addi	a0,a0,-1520 # 8000a768 <digits+0x50>
    80008d60:	fffff097          	auipc	ra,0xfffff
    80008d64:	f1c080e7          	jalr	-228(ra) # 80007c7c <panic>

0000000080008d68 <__memset>:
    80008d68:	ff010113          	addi	sp,sp,-16
    80008d6c:	00813423          	sd	s0,8(sp)
    80008d70:	01010413          	addi	s0,sp,16
    80008d74:	1a060e63          	beqz	a2,80008f30 <__memset+0x1c8>
    80008d78:	40a007b3          	neg	a5,a0
    80008d7c:	0077f793          	andi	a5,a5,7
    80008d80:	00778693          	addi	a3,a5,7
    80008d84:	00b00813          	li	a6,11
    80008d88:	0ff5f593          	andi	a1,a1,255
    80008d8c:	fff6071b          	addiw	a4,a2,-1
    80008d90:	1b06e663          	bltu	a3,a6,80008f3c <__memset+0x1d4>
    80008d94:	1cd76463          	bltu	a4,a3,80008f5c <__memset+0x1f4>
    80008d98:	1a078e63          	beqz	a5,80008f54 <__memset+0x1ec>
    80008d9c:	00b50023          	sb	a1,0(a0)
    80008da0:	00100713          	li	a4,1
    80008da4:	1ae78463          	beq	a5,a4,80008f4c <__memset+0x1e4>
    80008da8:	00b500a3          	sb	a1,1(a0)
    80008dac:	00200713          	li	a4,2
    80008db0:	1ae78a63          	beq	a5,a4,80008f64 <__memset+0x1fc>
    80008db4:	00b50123          	sb	a1,2(a0)
    80008db8:	00300713          	li	a4,3
    80008dbc:	18e78463          	beq	a5,a4,80008f44 <__memset+0x1dc>
    80008dc0:	00b501a3          	sb	a1,3(a0)
    80008dc4:	00400713          	li	a4,4
    80008dc8:	1ae78263          	beq	a5,a4,80008f6c <__memset+0x204>
    80008dcc:	00b50223          	sb	a1,4(a0)
    80008dd0:	00500713          	li	a4,5
    80008dd4:	1ae78063          	beq	a5,a4,80008f74 <__memset+0x20c>
    80008dd8:	00b502a3          	sb	a1,5(a0)
    80008ddc:	00700713          	li	a4,7
    80008de0:	18e79e63          	bne	a5,a4,80008f7c <__memset+0x214>
    80008de4:	00b50323          	sb	a1,6(a0)
    80008de8:	00700e93          	li	t4,7
    80008dec:	00859713          	slli	a4,a1,0x8
    80008df0:	00e5e733          	or	a4,a1,a4
    80008df4:	01059e13          	slli	t3,a1,0x10
    80008df8:	01c76e33          	or	t3,a4,t3
    80008dfc:	01859313          	slli	t1,a1,0x18
    80008e00:	006e6333          	or	t1,t3,t1
    80008e04:	02059893          	slli	a7,a1,0x20
    80008e08:	40f60e3b          	subw	t3,a2,a5
    80008e0c:	011368b3          	or	a7,t1,a7
    80008e10:	02859813          	slli	a6,a1,0x28
    80008e14:	0108e833          	or	a6,a7,a6
    80008e18:	03059693          	slli	a3,a1,0x30
    80008e1c:	003e589b          	srliw	a7,t3,0x3
    80008e20:	00d866b3          	or	a3,a6,a3
    80008e24:	03859713          	slli	a4,a1,0x38
    80008e28:	00389813          	slli	a6,a7,0x3
    80008e2c:	00f507b3          	add	a5,a0,a5
    80008e30:	00e6e733          	or	a4,a3,a4
    80008e34:	000e089b          	sext.w	a7,t3
    80008e38:	00f806b3          	add	a3,a6,a5
    80008e3c:	00e7b023          	sd	a4,0(a5)
    80008e40:	00878793          	addi	a5,a5,8
    80008e44:	fed79ce3          	bne	a5,a3,80008e3c <__memset+0xd4>
    80008e48:	ff8e7793          	andi	a5,t3,-8
    80008e4c:	0007871b          	sext.w	a4,a5
    80008e50:	01d787bb          	addw	a5,a5,t4
    80008e54:	0ce88e63          	beq	a7,a4,80008f30 <__memset+0x1c8>
    80008e58:	00f50733          	add	a4,a0,a5
    80008e5c:	00b70023          	sb	a1,0(a4)
    80008e60:	0017871b          	addiw	a4,a5,1
    80008e64:	0cc77663          	bgeu	a4,a2,80008f30 <__memset+0x1c8>
    80008e68:	00e50733          	add	a4,a0,a4
    80008e6c:	00b70023          	sb	a1,0(a4)
    80008e70:	0027871b          	addiw	a4,a5,2
    80008e74:	0ac77e63          	bgeu	a4,a2,80008f30 <__memset+0x1c8>
    80008e78:	00e50733          	add	a4,a0,a4
    80008e7c:	00b70023          	sb	a1,0(a4)
    80008e80:	0037871b          	addiw	a4,a5,3
    80008e84:	0ac77663          	bgeu	a4,a2,80008f30 <__memset+0x1c8>
    80008e88:	00e50733          	add	a4,a0,a4
    80008e8c:	00b70023          	sb	a1,0(a4)
    80008e90:	0047871b          	addiw	a4,a5,4
    80008e94:	08c77e63          	bgeu	a4,a2,80008f30 <__memset+0x1c8>
    80008e98:	00e50733          	add	a4,a0,a4
    80008e9c:	00b70023          	sb	a1,0(a4)
    80008ea0:	0057871b          	addiw	a4,a5,5
    80008ea4:	08c77663          	bgeu	a4,a2,80008f30 <__memset+0x1c8>
    80008ea8:	00e50733          	add	a4,a0,a4
    80008eac:	00b70023          	sb	a1,0(a4)
    80008eb0:	0067871b          	addiw	a4,a5,6
    80008eb4:	06c77e63          	bgeu	a4,a2,80008f30 <__memset+0x1c8>
    80008eb8:	00e50733          	add	a4,a0,a4
    80008ebc:	00b70023          	sb	a1,0(a4)
    80008ec0:	0077871b          	addiw	a4,a5,7
    80008ec4:	06c77663          	bgeu	a4,a2,80008f30 <__memset+0x1c8>
    80008ec8:	00e50733          	add	a4,a0,a4
    80008ecc:	00b70023          	sb	a1,0(a4)
    80008ed0:	0087871b          	addiw	a4,a5,8
    80008ed4:	04c77e63          	bgeu	a4,a2,80008f30 <__memset+0x1c8>
    80008ed8:	00e50733          	add	a4,a0,a4
    80008edc:	00b70023          	sb	a1,0(a4)
    80008ee0:	0097871b          	addiw	a4,a5,9
    80008ee4:	04c77663          	bgeu	a4,a2,80008f30 <__memset+0x1c8>
    80008ee8:	00e50733          	add	a4,a0,a4
    80008eec:	00b70023          	sb	a1,0(a4)
    80008ef0:	00a7871b          	addiw	a4,a5,10
    80008ef4:	02c77e63          	bgeu	a4,a2,80008f30 <__memset+0x1c8>
    80008ef8:	00e50733          	add	a4,a0,a4
    80008efc:	00b70023          	sb	a1,0(a4)
    80008f00:	00b7871b          	addiw	a4,a5,11
    80008f04:	02c77663          	bgeu	a4,a2,80008f30 <__memset+0x1c8>
    80008f08:	00e50733          	add	a4,a0,a4
    80008f0c:	00b70023          	sb	a1,0(a4)
    80008f10:	00c7871b          	addiw	a4,a5,12
    80008f14:	00c77e63          	bgeu	a4,a2,80008f30 <__memset+0x1c8>
    80008f18:	00e50733          	add	a4,a0,a4
    80008f1c:	00b70023          	sb	a1,0(a4)
    80008f20:	00d7879b          	addiw	a5,a5,13
    80008f24:	00c7f663          	bgeu	a5,a2,80008f30 <__memset+0x1c8>
    80008f28:	00f507b3          	add	a5,a0,a5
    80008f2c:	00b78023          	sb	a1,0(a5)
    80008f30:	00813403          	ld	s0,8(sp)
    80008f34:	01010113          	addi	sp,sp,16
    80008f38:	00008067          	ret
    80008f3c:	00b00693          	li	a3,11
    80008f40:	e55ff06f          	j	80008d94 <__memset+0x2c>
    80008f44:	00300e93          	li	t4,3
    80008f48:	ea5ff06f          	j	80008dec <__memset+0x84>
    80008f4c:	00100e93          	li	t4,1
    80008f50:	e9dff06f          	j	80008dec <__memset+0x84>
    80008f54:	00000e93          	li	t4,0
    80008f58:	e95ff06f          	j	80008dec <__memset+0x84>
    80008f5c:	00000793          	li	a5,0
    80008f60:	ef9ff06f          	j	80008e58 <__memset+0xf0>
    80008f64:	00200e93          	li	t4,2
    80008f68:	e85ff06f          	j	80008dec <__memset+0x84>
    80008f6c:	00400e93          	li	t4,4
    80008f70:	e7dff06f          	j	80008dec <__memset+0x84>
    80008f74:	00500e93          	li	t4,5
    80008f78:	e75ff06f          	j	80008dec <__memset+0x84>
    80008f7c:	00600e93          	li	t4,6
    80008f80:	e6dff06f          	j	80008dec <__memset+0x84>

0000000080008f84 <__memmove>:
    80008f84:	ff010113          	addi	sp,sp,-16
    80008f88:	00813423          	sd	s0,8(sp)
    80008f8c:	01010413          	addi	s0,sp,16
    80008f90:	0e060863          	beqz	a2,80009080 <__memmove+0xfc>
    80008f94:	fff6069b          	addiw	a3,a2,-1
    80008f98:	0006881b          	sext.w	a6,a3
    80008f9c:	0ea5e863          	bltu	a1,a0,8000908c <__memmove+0x108>
    80008fa0:	00758713          	addi	a4,a1,7
    80008fa4:	00a5e7b3          	or	a5,a1,a0
    80008fa8:	40a70733          	sub	a4,a4,a0
    80008fac:	0077f793          	andi	a5,a5,7
    80008fb0:	00f73713          	sltiu	a4,a4,15
    80008fb4:	00174713          	xori	a4,a4,1
    80008fb8:	0017b793          	seqz	a5,a5
    80008fbc:	00e7f7b3          	and	a5,a5,a4
    80008fc0:	10078863          	beqz	a5,800090d0 <__memmove+0x14c>
    80008fc4:	00900793          	li	a5,9
    80008fc8:	1107f463          	bgeu	a5,a6,800090d0 <__memmove+0x14c>
    80008fcc:	0036581b          	srliw	a6,a2,0x3
    80008fd0:	fff8081b          	addiw	a6,a6,-1
    80008fd4:	02081813          	slli	a6,a6,0x20
    80008fd8:	01d85893          	srli	a7,a6,0x1d
    80008fdc:	00858813          	addi	a6,a1,8
    80008fe0:	00058793          	mv	a5,a1
    80008fe4:	00050713          	mv	a4,a0
    80008fe8:	01088833          	add	a6,a7,a6
    80008fec:	0007b883          	ld	a7,0(a5)
    80008ff0:	00878793          	addi	a5,a5,8
    80008ff4:	00870713          	addi	a4,a4,8
    80008ff8:	ff173c23          	sd	a7,-8(a4)
    80008ffc:	ff0798e3          	bne	a5,a6,80008fec <__memmove+0x68>
    80009000:	ff867713          	andi	a4,a2,-8
    80009004:	02071793          	slli	a5,a4,0x20
    80009008:	0207d793          	srli	a5,a5,0x20
    8000900c:	00f585b3          	add	a1,a1,a5
    80009010:	40e686bb          	subw	a3,a3,a4
    80009014:	00f507b3          	add	a5,a0,a5
    80009018:	06e60463          	beq	a2,a4,80009080 <__memmove+0xfc>
    8000901c:	0005c703          	lbu	a4,0(a1)
    80009020:	00e78023          	sb	a4,0(a5)
    80009024:	04068e63          	beqz	a3,80009080 <__memmove+0xfc>
    80009028:	0015c603          	lbu	a2,1(a1)
    8000902c:	00100713          	li	a4,1
    80009030:	00c780a3          	sb	a2,1(a5)
    80009034:	04e68663          	beq	a3,a4,80009080 <__memmove+0xfc>
    80009038:	0025c603          	lbu	a2,2(a1)
    8000903c:	00200713          	li	a4,2
    80009040:	00c78123          	sb	a2,2(a5)
    80009044:	02e68e63          	beq	a3,a4,80009080 <__memmove+0xfc>
    80009048:	0035c603          	lbu	a2,3(a1)
    8000904c:	00300713          	li	a4,3
    80009050:	00c781a3          	sb	a2,3(a5)
    80009054:	02e68663          	beq	a3,a4,80009080 <__memmove+0xfc>
    80009058:	0045c603          	lbu	a2,4(a1)
    8000905c:	00400713          	li	a4,4
    80009060:	00c78223          	sb	a2,4(a5)
    80009064:	00e68e63          	beq	a3,a4,80009080 <__memmove+0xfc>
    80009068:	0055c603          	lbu	a2,5(a1)
    8000906c:	00500713          	li	a4,5
    80009070:	00c782a3          	sb	a2,5(a5)
    80009074:	00e68663          	beq	a3,a4,80009080 <__memmove+0xfc>
    80009078:	0065c703          	lbu	a4,6(a1)
    8000907c:	00e78323          	sb	a4,6(a5)
    80009080:	00813403          	ld	s0,8(sp)
    80009084:	01010113          	addi	sp,sp,16
    80009088:	00008067          	ret
    8000908c:	02061713          	slli	a4,a2,0x20
    80009090:	02075713          	srli	a4,a4,0x20
    80009094:	00e587b3          	add	a5,a1,a4
    80009098:	f0f574e3          	bgeu	a0,a5,80008fa0 <__memmove+0x1c>
    8000909c:	02069613          	slli	a2,a3,0x20
    800090a0:	02065613          	srli	a2,a2,0x20
    800090a4:	fff64613          	not	a2,a2
    800090a8:	00e50733          	add	a4,a0,a4
    800090ac:	00c78633          	add	a2,a5,a2
    800090b0:	fff7c683          	lbu	a3,-1(a5)
    800090b4:	fff78793          	addi	a5,a5,-1
    800090b8:	fff70713          	addi	a4,a4,-1
    800090bc:	00d70023          	sb	a3,0(a4)
    800090c0:	fec798e3          	bne	a5,a2,800090b0 <__memmove+0x12c>
    800090c4:	00813403          	ld	s0,8(sp)
    800090c8:	01010113          	addi	sp,sp,16
    800090cc:	00008067          	ret
    800090d0:	02069713          	slli	a4,a3,0x20
    800090d4:	02075713          	srli	a4,a4,0x20
    800090d8:	00170713          	addi	a4,a4,1
    800090dc:	00e50733          	add	a4,a0,a4
    800090e0:	00050793          	mv	a5,a0
    800090e4:	0005c683          	lbu	a3,0(a1)
    800090e8:	00178793          	addi	a5,a5,1
    800090ec:	00158593          	addi	a1,a1,1
    800090f0:	fed78fa3          	sb	a3,-1(a5)
    800090f4:	fee798e3          	bne	a5,a4,800090e4 <__memmove+0x160>
    800090f8:	f89ff06f          	j	80009080 <__memmove+0xfc>

00000000800090fc <__putc>:
    800090fc:	fe010113          	addi	sp,sp,-32
    80009100:	00813823          	sd	s0,16(sp)
    80009104:	00113c23          	sd	ra,24(sp)
    80009108:	02010413          	addi	s0,sp,32
    8000910c:	00050793          	mv	a5,a0
    80009110:	fef40593          	addi	a1,s0,-17
    80009114:	00100613          	li	a2,1
    80009118:	00000513          	li	a0,0
    8000911c:	fef407a3          	sb	a5,-17(s0)
    80009120:	fffff097          	auipc	ra,0xfffff
    80009124:	b3c080e7          	jalr	-1220(ra) # 80007c5c <console_write>
    80009128:	01813083          	ld	ra,24(sp)
    8000912c:	01013403          	ld	s0,16(sp)
    80009130:	02010113          	addi	sp,sp,32
    80009134:	00008067          	ret

0000000080009138 <__getc>:
    80009138:	fe010113          	addi	sp,sp,-32
    8000913c:	00813823          	sd	s0,16(sp)
    80009140:	00113c23          	sd	ra,24(sp)
    80009144:	02010413          	addi	s0,sp,32
    80009148:	fe840593          	addi	a1,s0,-24
    8000914c:	00100613          	li	a2,1
    80009150:	00000513          	li	a0,0
    80009154:	fffff097          	auipc	ra,0xfffff
    80009158:	ae8080e7          	jalr	-1304(ra) # 80007c3c <console_read>
    8000915c:	fe844503          	lbu	a0,-24(s0)
    80009160:	01813083          	ld	ra,24(sp)
    80009164:	01013403          	ld	s0,16(sp)
    80009168:	02010113          	addi	sp,sp,32
    8000916c:	00008067          	ret

0000000080009170 <console_handler>:
    80009170:	fe010113          	addi	sp,sp,-32
    80009174:	00813823          	sd	s0,16(sp)
    80009178:	00113c23          	sd	ra,24(sp)
    8000917c:	00913423          	sd	s1,8(sp)
    80009180:	02010413          	addi	s0,sp,32
    80009184:	14202773          	csrr	a4,scause
    80009188:	100027f3          	csrr	a5,sstatus
    8000918c:	0027f793          	andi	a5,a5,2
    80009190:	06079e63          	bnez	a5,8000920c <console_handler+0x9c>
    80009194:	00074c63          	bltz	a4,800091ac <console_handler+0x3c>
    80009198:	01813083          	ld	ra,24(sp)
    8000919c:	01013403          	ld	s0,16(sp)
    800091a0:	00813483          	ld	s1,8(sp)
    800091a4:	02010113          	addi	sp,sp,32
    800091a8:	00008067          	ret
    800091ac:	0ff77713          	andi	a4,a4,255
    800091b0:	00900793          	li	a5,9
    800091b4:	fef712e3          	bne	a4,a5,80009198 <console_handler+0x28>
    800091b8:	ffffe097          	auipc	ra,0xffffe
    800091bc:	6dc080e7          	jalr	1756(ra) # 80007894 <plic_claim>
    800091c0:	00a00793          	li	a5,10
    800091c4:	00050493          	mv	s1,a0
    800091c8:	02f50c63          	beq	a0,a5,80009200 <console_handler+0x90>
    800091cc:	fc0506e3          	beqz	a0,80009198 <console_handler+0x28>
    800091d0:	00050593          	mv	a1,a0
    800091d4:	00001517          	auipc	a0,0x1
    800091d8:	4bc50513          	addi	a0,a0,1212 # 8000a690 <CONSOLE_STATUS+0x680>
    800091dc:	fffff097          	auipc	ra,0xfffff
    800091e0:	afc080e7          	jalr	-1284(ra) # 80007cd8 <__printf>
    800091e4:	01013403          	ld	s0,16(sp)
    800091e8:	01813083          	ld	ra,24(sp)
    800091ec:	00048513          	mv	a0,s1
    800091f0:	00813483          	ld	s1,8(sp)
    800091f4:	02010113          	addi	sp,sp,32
    800091f8:	ffffe317          	auipc	t1,0xffffe
    800091fc:	6d430067          	jr	1748(t1) # 800078cc <plic_complete>
    80009200:	fffff097          	auipc	ra,0xfffff
    80009204:	3e0080e7          	jalr	992(ra) # 800085e0 <uartintr>
    80009208:	fddff06f          	j	800091e4 <console_handler+0x74>
    8000920c:	00001517          	auipc	a0,0x1
    80009210:	58450513          	addi	a0,a0,1412 # 8000a790 <digits+0x78>
    80009214:	fffff097          	auipc	ra,0xfffff
    80009218:	a68080e7          	jalr	-1432(ra) # 80007c7c <panic>
	...
