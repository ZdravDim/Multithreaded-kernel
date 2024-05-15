
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	cf813103          	ld	sp,-776(sp) # 8000bcf8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	435060ef          	jal	ra,80006c50 <start>

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
    80001080:	509010ef          	jal	ra,80002d88 <_ZN5RiscV22handle_supervisor_trapEv>

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
    80001270:	594080e7          	jalr	1428(ra) # 80002800 <_ZN15MemoryAllocator20get_number_of_blocksEm>
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
    800016bc:	3d878793          	addi	a5,a5,984 # 8000ba90 <_ZTV3Sem+0x10>
    800016c0:	00f53023          	sd	a5,0(a0) # 1000 <_entry-0x7ffff000>
    blocked_threads.free();
    800016c4:	00850513          	addi	a0,a0,8
    800016c8:	00002097          	auipc	ra,0x2
    800016cc:	a40080e7          	jalr	-1472(ra) # 80003108 <_ZN10ThreadList4freeEv>
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
    80001704:	6089b983          	ld	s3,1544(s3) # 8000bd08 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001708:	0009b483          	ld	s1,0(s3)
    old -> set_status(TCB::BLOCKED);
    8000170c:	00200593          	li	a1,2
    80001710:	00048513          	mv	a0,s1
    80001714:	00002097          	auipc	ra,0x2
    80001718:	c4c080e7          	jalr	-948(ra) # 80003360 <_ZN3TCB10set_statusENS_6StatusE>
    blocked_threads.push_back(old);
    8000171c:	00048593          	mv	a1,s1
    80001720:	00890513          	addi	a0,s2,8
    80001724:	00002097          	auipc	ra,0x2
    80001728:	900080e7          	jalr	-1792(ra) # 80003024 <_ZN10ThreadList9push_backEP3TCB>
    TCB::running = Scheduler::get();
    8000172c:	00001097          	auipc	ra,0x1
    80001730:	3b4080e7          	jalr	948(ra) # 80002ae0 <_ZN9Scheduler3getEv>
    80001734:	00050593          	mv	a1,a0
    80001738:	00a9b023          	sd	a0,0(s3)
    TCB::yield(old, TCB::running);
    8000173c:	00048513          	mv	a0,s1
    80001740:	00002097          	auipc	ra,0x2
    80001744:	aa8080e7          	jalr	-1368(ra) # 800031e8 <_ZN3TCB5yieldEPS_S0_>
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
    80001780:	938080e7          	jalr	-1736(ra) # 800030b4 <_ZN10ThreadList12remove_firstEv>
    80001784:	00050493          	mv	s1,a0
    thread -> set_status(TCB::RUNNABLE);
    80001788:	00000593          	li	a1,0
    8000178c:	00002097          	auipc	ra,0x2
    80001790:	bd4080e7          	jalr	-1068(ra) # 80003360 <_ZN3TCB10set_statusENS_6StatusE>
    Scheduler::put(thread);
    80001794:	00048513          	mv	a0,s1
    80001798:	00001097          	auipc	ra,0x1
    8000179c:	2d8080e7          	jalr	728(ra) # 80002a70 <_ZN9Scheduler3putEP3TCB>
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
    800017d8:	7fc080e7          	jalr	2044(ra) # 80002fd0 <_ZN10ThreadList9get_firstEv>
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
    80001930:	ed4080e7          	jalr	-300(ra) # 80002800 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80001934:	00001097          	auipc	ra,0x1
    80001938:	b20080e7          	jalr	-1248(ra) # 80002454 <_ZN15MemoryAllocator9mem_allocEm>
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
    8000197c:	11878793          	addi	a5,a5,280 # 8000ba90 <_ZTV3Sem+0x10>
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
    800019d0:	bf4080e7          	jalr	-1036(ra) # 800025c0 <_ZN15MemoryAllocator8mem_freeEPv>
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
    while (true) {
        /// Send data to Console Controller if data is ready
        while (*(char *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT) {
    80001a24:	0000a797          	auipc	a5,0xa
    80001a28:	2b47b783          	ld	a5,692(a5) # 8000bcd8 <_GLOBAL_OFFSET_TABLE_+0x10>
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
    80001a50:	438080e7          	jalr	1080(ra) # 80001e84 <_ZN3Con11getc_outputEv>
            *(char *) CONSOLE_TX_DATA = c;
    80001a54:	0000a797          	auipc	a5,0xa
    80001a58:	2947b783          	ld	a5,660(a5) # 8000bce8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001a5c:	0007b783          	ld	a5,0(a5)
    80001a60:	00a78023          	sb	a0,0(a5)
        while (*(char *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT) {
    80001a64:	0000a797          	auipc	a5,0xa
    80001a68:	2747b783          	ld	a5,628(a5) # 8000bcd8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001a6c:	0007b783          	ld	a5,0(a5)
    80001a70:	0007c783          	lbu	a5,0(a5)
    80001a74:	0207f793          	andi	a5,a5,32
    80001a78:	fe0786e3          	beqz	a5,80001a64 <_Z19kernelConsoleOutputPv+0x40>
    80001a7c:	fd1ff06f          	j	80001a4c <_Z19kernelConsoleOutputPv+0x28>

0000000080001a80 <_Z15userMainWrapperPv>:
        }
    }
}

void userMain();
void userMainWrapper(void *args) {
    80001a80:	ff010113          	addi	sp,sp,-16
    80001a84:	00113423          	sd	ra,8(sp)
    80001a88:	00813023          	sd	s0,0(sp)
    80001a8c:	01010413          	addi	s0,sp,16
    userMain();
    80001a90:	00005097          	auipc	ra,0x5
    80001a94:	958080e7          	jalr	-1704(ra) # 800063e8 <_Z8userMainv>
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
    80001ad0:	240080e7          	jalr	576(ra) # 80008d0c <__putc>
    __putc('N');
    80001ad4:	04e00513          	li	a0,78
    80001ad8:	00007097          	auipc	ra,0x7
    80001adc:	234080e7          	jalr	564(ra) # 80008d0c <__putc>
    __putc(':');
    80001ae0:	03a00513          	li	a0,58
    80001ae4:	00007097          	auipc	ra,0x7
    80001ae8:	228080e7          	jalr	552(ra) # 80008d0c <__putc>
    __putc(' ');
    80001aec:	02000513          	li	a0,32
    80001af0:	00007097          	auipc	ra,0x7
    80001af4:	21c080e7          	jalr	540(ra) # 80008d0c <__putc>
    if (!num) __putc('0');
    80001af8:	00090863          	beqz	s2,80001b08 <_Z11printNumberm+0x60>
    uint64 num2 = 0, zero_count = 0;
    80001afc:	00000993          	li	s3,0
    80001b00:	00000493          	li	s1,0
    80001b04:	01c0006f          	j	80001b20 <_Z11printNumberm+0x78>
    if (!num) __putc('0');
    80001b08:	03000513          	li	a0,48
    80001b0c:	00007097          	auipc	ra,0x7
    80001b10:	200080e7          	jalr	512(ra) # 80008d0c <__putc>
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
    80001b5c:	1b4080e7          	jalr	436(ra) # 80008d0c <__putc>
        num2 /= 10;
    80001b60:	0324d4b3          	divu	s1,s1,s2
    while (num2) {
    80001b64:	fe5ff06f          	j	80001b48 <_Z11printNumberm+0xa0>
    while (zero_count--) __putc('0');
    80001b68:	fff98493          	addi	s1,s3,-1
    80001b6c:	00098c63          	beqz	s3,80001b84 <_Z11printNumberm+0xdc>
    80001b70:	03000513          	li	a0,48
    80001b74:	00007097          	auipc	ra,0x7
    80001b78:	198080e7          	jalr	408(ra) # 80008d0c <__putc>
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

0000000080001ba0 <_Z7workerAPv>:

void workerA(void*) {
    80001ba0:	fe010113          	addi	sp,sp,-32
    80001ba4:	00113c23          	sd	ra,24(sp)
    80001ba8:	00813823          	sd	s0,16(sp)
    80001bac:	00913423          	sd	s1,8(sp)
    80001bb0:	01213023          	sd	s2,0(sp)
    80001bb4:	02010413          	addi	s0,sp,32
    for (int i = 0; i < 4; ++i) {
    80001bb8:	00000913          	li	s2,0
    80001bbc:	0380006f          	j	80001bf4 <_Z7workerAPv+0x54>
        __putc('(');
        __putc('A');
        __putc(')');
        for (int j = 0; j < 10000; ++j) {
            for (int k = 0; k < 30000; ++k) {}
            thread_dispatch();
    80001bc0:	00000097          	auipc	ra,0x0
    80001bc4:	80c080e7          	jalr	-2036(ra) # 800013cc <_Z15thread_dispatchv>
        for (int j = 0; j < 10000; ++j) {
    80001bc8:	0014849b          	addiw	s1,s1,1
    80001bcc:	000027b7          	lui	a5,0x2
    80001bd0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001bd4:	0097ce63          	blt	a5,s1,80001bf0 <_Z7workerAPv+0x50>
            for (int k = 0; k < 30000; ++k) {}
    80001bd8:	00000713          	li	a4,0
    80001bdc:	000077b7          	lui	a5,0x7
    80001be0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001be4:	fce7cee3          	blt	a5,a4,80001bc0 <_Z7workerAPv+0x20>
    80001be8:	0017071b          	addiw	a4,a4,1
    80001bec:	ff1ff06f          	j	80001bdc <_Z7workerAPv+0x3c>
    for (int i = 0; i < 4; ++i) {
    80001bf0:	0019091b          	addiw	s2,s2,1
    80001bf4:	00300793          	li	a5,3
    80001bf8:	0327ce63          	blt	a5,s2,80001c34 <_Z7workerAPv+0x94>
        printNumber(i);
    80001bfc:	00090513          	mv	a0,s2
    80001c00:	00000097          	auipc	ra,0x0
    80001c04:	ea8080e7          	jalr	-344(ra) # 80001aa8 <_Z11printNumberm>
        __putc('(');
    80001c08:	02800513          	li	a0,40
    80001c0c:	00007097          	auipc	ra,0x7
    80001c10:	100080e7          	jalr	256(ra) # 80008d0c <__putc>
        __putc('A');
    80001c14:	04100513          	li	a0,65
    80001c18:	00007097          	auipc	ra,0x7
    80001c1c:	0f4080e7          	jalr	244(ra) # 80008d0c <__putc>
        __putc(')');
    80001c20:	02900513          	li	a0,41
    80001c24:	00007097          	auipc	ra,0x7
    80001c28:	0e8080e7          	jalr	232(ra) # 80008d0c <__putc>
        for (int j = 0; j < 10000; ++j) {
    80001c2c:	00000493          	li	s1,0
    80001c30:	f9dff06f          	j	80001bcc <_Z7workerAPv+0x2c>
        }
    }
}
    80001c34:	01813083          	ld	ra,24(sp)
    80001c38:	01013403          	ld	s0,16(sp)
    80001c3c:	00813483          	ld	s1,8(sp)
    80001c40:	00013903          	ld	s2,0(sp)
    80001c44:	02010113          	addi	sp,sp,32
    80001c48:	00008067          	ret

0000000080001c4c <_Z7workerBPv>:

void workerB(void*) {
    80001c4c:	fe010113          	addi	sp,sp,-32
    80001c50:	00113c23          	sd	ra,24(sp)
    80001c54:	00813823          	sd	s0,16(sp)
    80001c58:	00913423          	sd	s1,8(sp)
    80001c5c:	01213023          	sd	s2,0(sp)
    80001c60:	02010413          	addi	s0,sp,32
    for (int i = 0; i < 16; ++i) {
    80001c64:	00000913          	li	s2,0
    80001c68:	0380006f          	j	80001ca0 <_Z7workerBPv+0x54>
        __putc('(');
        __putc('B');
        __putc(')');
        for (int j = 0; j < 10000; ++j) {
            for (int k = 0; k < 30000; ++k) {}
            thread_dispatch();
    80001c6c:	fffff097          	auipc	ra,0xfffff
    80001c70:	760080e7          	jalr	1888(ra) # 800013cc <_Z15thread_dispatchv>
        for (int j = 0; j < 10000; ++j) {
    80001c74:	0014849b          	addiw	s1,s1,1
    80001c78:	000027b7          	lui	a5,0x2
    80001c7c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001c80:	0097ce63          	blt	a5,s1,80001c9c <_Z7workerBPv+0x50>
            for (int k = 0; k < 30000; ++k) {}
    80001c84:	00000713          	li	a4,0
    80001c88:	000077b7          	lui	a5,0x7
    80001c8c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001c90:	fce7cee3          	blt	a5,a4,80001c6c <_Z7workerBPv+0x20>
    80001c94:	0017071b          	addiw	a4,a4,1
    80001c98:	ff1ff06f          	j	80001c88 <_Z7workerBPv+0x3c>
    for (int i = 0; i < 16; ++i) {
    80001c9c:	0019091b          	addiw	s2,s2,1
    80001ca0:	00f00793          	li	a5,15
    80001ca4:	0327ce63          	blt	a5,s2,80001ce0 <_Z7workerBPv+0x94>
        printNumber(i);
    80001ca8:	00090513          	mv	a0,s2
    80001cac:	00000097          	auipc	ra,0x0
    80001cb0:	dfc080e7          	jalr	-516(ra) # 80001aa8 <_Z11printNumberm>
        __putc('(');
    80001cb4:	02800513          	li	a0,40
    80001cb8:	00007097          	auipc	ra,0x7
    80001cbc:	054080e7          	jalr	84(ra) # 80008d0c <__putc>
        __putc('B');
    80001cc0:	04200513          	li	a0,66
    80001cc4:	00007097          	auipc	ra,0x7
    80001cc8:	048080e7          	jalr	72(ra) # 80008d0c <__putc>
        __putc(')');
    80001ccc:	02900513          	li	a0,41
    80001cd0:	00007097          	auipc	ra,0x7
    80001cd4:	03c080e7          	jalr	60(ra) # 80008d0c <__putc>
        for (int j = 0; j < 10000; ++j) {
    80001cd8:	00000493          	li	s1,0
    80001cdc:	f9dff06f          	j	80001c78 <_Z7workerBPv+0x2c>
        }
    }
}
    80001ce0:	01813083          	ld	ra,24(sp)
    80001ce4:	01013403          	ld	s0,16(sp)
    80001ce8:	00813483          	ld	s1,8(sp)
    80001cec:	00013903          	ld	s2,0(sp)
    80001cf0:	02010113          	addi	sp,sp,32
    80001cf4:	00008067          	ret

0000000080001cf8 <main>:

int main() {
    80001cf8:	fd010113          	addi	sp,sp,-48
    80001cfc:	02113423          	sd	ra,40(sp)
    80001d00:	02813023          	sd	s0,32(sp)
    80001d04:	03010413          	addi	s0,sp,48
    /// Set interrupt routine handler
    RiscV::write_stvec((uint64) &RiscV::handle_interrupt);
    80001d08:	0000a797          	auipc	a5,0xa
    80001d0c:	fe87b783          	ld	a5,-24(a5) # 8000bcf0 <_GLOBAL_OFFSET_TABLE_+0x28>
    __asm__ volatile ("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void RiscV::write_stvec(uint64 val) {
    __asm__ volatile ("csrw stvec, %0" : : "r"(val));
    80001d10:	10579073          	csrw	stvec,a5
    /// Initialization
    MemoryAllocator::initialize();
    80001d14:	00001097          	auipc	ra,0x1
    80001d18:	b0c080e7          	jalr	-1268(ra) # 80002820 <_ZN15MemoryAllocator10initializeEv>
    Con::initialize();
    80001d1c:	00000097          	auipc	ra,0x0
    80001d20:	070080e7          	jalr	112(ra) # 80001d8c <_ZN3Con10initializeEv>

    thread_t threads[4];

    thread_create(&threads[0], nullptr, nullptr);
    80001d24:	00000613          	li	a2,0
    80001d28:	00000593          	li	a1,0
    80001d2c:	fd040513          	addi	a0,s0,-48
    80001d30:	fffff097          	auipc	ra,0xfffff
    80001d34:	5c8080e7          	jalr	1480(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running = threads[0];
    80001d38:	fd043703          	ld	a4,-48(s0)
    80001d3c:	0000a797          	auipc	a5,0xa
    80001d40:	fcc7b783          	ld	a5,-52(a5) # 8000bd08 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001d44:	00e7b023          	sd	a4,0(a5)
inline void RiscV::write_sip(uint64 val) {
    __asm__ volatile ("csrw sip, %0" : : "r"(val));
}

inline void RiscV::ms_sstatus(uint64 mask) {
    __asm__ volatile ("csrs sstatus, %0" : : "r"(mask));
    80001d48:	00200793          	li	a5,2
    80001d4c:	1007a073          	csrs	sstatus,a5

    /// Enable external interrupts
    RiscV::ms_sstatus(RiscV::SSTATUS_SIE);

    thread_create(&threads[1], kernelConsoleOutput, nullptr);
    80001d50:	00000613          	li	a2,0
    80001d54:	00000597          	auipc	a1,0x0
    80001d58:	cd058593          	addi	a1,a1,-816 # 80001a24 <_Z19kernelConsoleOutputPv>
    80001d5c:	fd840513          	addi	a0,s0,-40
    80001d60:	fffff097          	auipc	ra,0xfffff
    80001d64:	598080e7          	jalr	1432(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>

    /// Test Everything
    thread_create(&threads[2], userMainWrapper, nullptr);
    80001d68:	00000613          	li	a2,0
    80001d6c:	00000597          	auipc	a1,0x0
    80001d70:	d1458593          	addi	a1,a1,-748 # 80001a80 <_Z15userMainWrapperPv>
    80001d74:	fe040513          	addi	a0,s0,-32
    80001d78:	fffff097          	auipc	ra,0xfffff
    80001d7c:	580080e7          	jalr	1408(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    while (true) thread_dispatch();
    80001d80:	fffff097          	auipc	ra,0xfffff
    80001d84:	64c080e7          	jalr	1612(ra) # 800013cc <_Z15thread_dispatchv>
    80001d88:	ff9ff06f          	j	80001d80 <main+0x88>

0000000080001d8c <_ZN3Con10initializeEv>:
bool Con::initialized = false;
BoundedBuffer* Con::input_buffer = nullptr;
BoundedBuffer* Con::output_buffer = nullptr;

void Con::initialize() {
    if (!initialized) {
    80001d8c:	0000a797          	auipc	a5,0xa
    80001d90:	fd47c783          	lbu	a5,-44(a5) # 8000bd60 <_ZN3Con11initializedE>
    80001d94:	00078463          	beqz	a5,80001d9c <_ZN3Con10initializeEv+0x10>
    80001d98:	00008067          	ret
void Con::initialize() {
    80001d9c:	fe010113          	addi	sp,sp,-32
    80001da0:	00113c23          	sd	ra,24(sp)
    80001da4:	00813823          	sd	s0,16(sp)
    80001da8:	00913423          	sd	s1,8(sp)
    80001dac:	01213023          	sd	s2,0(sp)
    80001db0:	02010413          	addi	s0,sp,32
        initialized = true;
    80001db4:	00100793          	li	a5,1
    80001db8:	0000a717          	auipc	a4,0xa
    80001dbc:	faf70423          	sb	a5,-88(a4) # 8000bd60 <_ZN3Con11initializedE>
        input_buffer = new BoundedBuffer();
    80001dc0:	21000513          	li	a0,528
    80001dc4:	00001097          	auipc	ra,0x1
    80001dc8:	b7c080e7          	jalr	-1156(ra) # 80002940 <_ZN13BoundedBuffernwEm>
    80001dcc:	00050493          	mv	s1,a0
    80001dd0:	00001097          	auipc	ra,0x1
    80001dd4:	ad8080e7          	jalr	-1320(ra) # 800028a8 <_ZN13BoundedBufferC1Ev>
    80001dd8:	0000a797          	auipc	a5,0xa
    80001ddc:	f897b823          	sd	s1,-112(a5) # 8000bd68 <_ZN3Con12input_bufferE>
        output_buffer = new BoundedBuffer();
    80001de0:	21000513          	li	a0,528
    80001de4:	00001097          	auipc	ra,0x1
    80001de8:	b5c080e7          	jalr	-1188(ra) # 80002940 <_ZN13BoundedBuffernwEm>
    80001dec:	00050493          	mv	s1,a0
    80001df0:	00001097          	auipc	ra,0x1
    80001df4:	ab8080e7          	jalr	-1352(ra) # 800028a8 <_ZN13BoundedBufferC1Ev>
    80001df8:	0000a797          	auipc	a5,0xa
    80001dfc:	f697bc23          	sd	s1,-136(a5) # 8000bd70 <_ZN3Con13output_bufferE>
    }
}
    80001e00:	01813083          	ld	ra,24(sp)
    80001e04:	01013403          	ld	s0,16(sp)
    80001e08:	00813483          	ld	s1,8(sp)
    80001e0c:	00013903          	ld	s2,0(sp)
    80001e10:	02010113          	addi	sp,sp,32
    80001e14:	00008067          	ret
    80001e18:	00050913          	mv	s2,a0
        input_buffer = new BoundedBuffer();
    80001e1c:	00048513          	mv	a0,s1
    80001e20:	00001097          	auipc	ra,0x1
    80001e24:	b50080e7          	jalr	-1200(ra) # 80002970 <_ZN13BoundedBufferdlEPv>
    80001e28:	00090513          	mv	a0,s2
    80001e2c:	0000b097          	auipc	ra,0xb
    80001e30:	0cc080e7          	jalr	204(ra) # 8000cef8 <_Unwind_Resume>
    80001e34:	00050913          	mv	s2,a0
        output_buffer = new BoundedBuffer();
    80001e38:	00048513          	mv	a0,s1
    80001e3c:	00001097          	auipc	ra,0x1
    80001e40:	b34080e7          	jalr	-1228(ra) # 80002970 <_ZN13BoundedBufferdlEPv>
    80001e44:	00090513          	mv	a0,s2
    80001e48:	0000b097          	auipc	ra,0xb
    80001e4c:	0b0080e7          	jalr	176(ra) # 8000cef8 <_Unwind_Resume>

0000000080001e50 <_ZN3Con11putc_outputEc>:

void Con::putc_output(char c) {
    80001e50:	ff010113          	addi	sp,sp,-16
    80001e54:	00113423          	sd	ra,8(sp)
    80001e58:	00813023          	sd	s0,0(sp)
    80001e5c:	01010413          	addi	s0,sp,16
    80001e60:	00050593          	mv	a1,a0
    output_buffer -> putc(c);
    80001e64:	0000a517          	auipc	a0,0xa
    80001e68:	f0c53503          	ld	a0,-244(a0) # 8000bd70 <_ZN3Con13output_bufferE>
    80001e6c:	00001097          	auipc	ra,0x1
    80001e70:	b2c080e7          	jalr	-1236(ra) # 80002998 <_ZN13BoundedBuffer4putcEc>
}
    80001e74:	00813083          	ld	ra,8(sp)
    80001e78:	00013403          	ld	s0,0(sp)
    80001e7c:	01010113          	addi	sp,sp,16
    80001e80:	00008067          	ret

0000000080001e84 <_ZN3Con11getc_outputEv>:

char Con::getc_output() {
    80001e84:	ff010113          	addi	sp,sp,-16
    80001e88:	00113423          	sd	ra,8(sp)
    80001e8c:	00813023          	sd	s0,0(sp)
    80001e90:	01010413          	addi	s0,sp,16
    return output_buffer -> getc();
    80001e94:	0000a517          	auipc	a0,0xa
    80001e98:	edc53503          	ld	a0,-292(a0) # 8000bd70 <_ZN3Con13output_bufferE>
    80001e9c:	00001097          	auipc	ra,0x1
    80001ea0:	b68080e7          	jalr	-1176(ra) # 80002a04 <_ZN13BoundedBuffer4getcEv>
}
    80001ea4:	00813083          	ld	ra,8(sp)
    80001ea8:	00013403          	ld	s0,0(sp)
    80001eac:	01010113          	addi	sp,sp,16
    80001eb0:	00008067          	ret

0000000080001eb4 <_ZN3Con10putc_inputEc>:

void Con::putc_input(char c) {
    80001eb4:	ff010113          	addi	sp,sp,-16
    80001eb8:	00113423          	sd	ra,8(sp)
    80001ebc:	00813023          	sd	s0,0(sp)
    80001ec0:	01010413          	addi	s0,sp,16
    80001ec4:	00050593          	mv	a1,a0
    input_buffer -> putc(c);
    80001ec8:	0000a517          	auipc	a0,0xa
    80001ecc:	ea053503          	ld	a0,-352(a0) # 8000bd68 <_ZN3Con12input_bufferE>
    80001ed0:	00001097          	auipc	ra,0x1
    80001ed4:	ac8080e7          	jalr	-1336(ra) # 80002998 <_ZN13BoundedBuffer4putcEc>
}
    80001ed8:	00813083          	ld	ra,8(sp)
    80001edc:	00013403          	ld	s0,0(sp)
    80001ee0:	01010113          	addi	sp,sp,16
    80001ee4:	00008067          	ret

0000000080001ee8 <_ZN3Con10getc_inputEv>:

char Con::getc_input() {
    80001ee8:	ff010113          	addi	sp,sp,-16
    80001eec:	00113423          	sd	ra,8(sp)
    80001ef0:	00813023          	sd	s0,0(sp)
    80001ef4:	01010413          	addi	s0,sp,16
    return input_buffer -> getc();
    80001ef8:	0000a517          	auipc	a0,0xa
    80001efc:	e7053503          	ld	a0,-400(a0) # 8000bd68 <_ZN3Con12input_bufferE>
    80001f00:	00001097          	auipc	ra,0x1
    80001f04:	b04080e7          	jalr	-1276(ra) # 80002a04 <_ZN13BoundedBuffer4getcEv>
    80001f08:	00813083          	ld	ra,8(sp)
    80001f0c:	00013403          	ld	s0,0(sp)
    80001f10:	01010113          	addi	sp,sp,16
    80001f14:	00008067          	ret

0000000080001f18 <_ZN6Thread12start_helperEPv>:

Thread::~Thread() {
    if (myHandle -> is_finished()) delete myHandle;
}

void Thread::start_helper(void *args) {
    80001f18:	ff010113          	addi	sp,sp,-16
    80001f1c:	00113423          	sd	ra,8(sp)
    80001f20:	00813023          	sd	s0,0(sp)
    80001f24:	01010413          	addi	s0,sp,16
    auto* thread = (Thread*) args;
    if (!thread -> body) thread -> run();
    80001f28:	01053783          	ld	a5,16(a0)
    80001f2c:	00078c63          	beqz	a5,80001f44 <_ZN6Thread12start_helperEPv+0x2c>
    else thread -> body(args);
    80001f30:	000780e7          	jalr	a5
}
    80001f34:	00813083          	ld	ra,8(sp)
    80001f38:	00013403          	ld	s0,0(sp)
    80001f3c:	01010113          	addi	sp,sp,16
    80001f40:	00008067          	ret
    if (!thread -> body) thread -> run();
    80001f44:	00053783          	ld	a5,0(a0)
    80001f48:	0107b783          	ld	a5,16(a5)
    80001f4c:	000780e7          	jalr	a5
    80001f50:	fe5ff06f          	j	80001f34 <_ZN6Thread12start_helperEPv+0x1c>

0000000080001f54 <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    80001f54:	fe010113          	addi	sp,sp,-32
    80001f58:	00113c23          	sd	ra,24(sp)
    80001f5c:	00813823          	sd	s0,16(sp)
    80001f60:	00913423          	sd	s1,8(sp)
    80001f64:	02010413          	addi	s0,sp,32
    80001f68:	00050493          	mv	s1,a0
    80001f6c:	0000a797          	auipc	a5,0xa
    80001f70:	b7c78793          	addi	a5,a5,-1156 # 8000bae8 <_ZTV6Thread+0x10>
    80001f74:	00f53023          	sd	a5,0(a0)
    if (myHandle -> is_finished()) delete myHandle;
    80001f78:	00853503          	ld	a0,8(a0)
    80001f7c:	00001097          	auipc	ra,0x1
    80001f80:	5d8080e7          	jalr	1496(ra) # 80003554 <_ZNK3TCB11is_finishedEv>
    80001f84:	00050a63          	beqz	a0,80001f98 <_ZN6ThreadD1Ev+0x44>
    80001f88:	0084b503          	ld	a0,8(s1)
    80001f8c:	00050663          	beqz	a0,80001f98 <_ZN6ThreadD1Ev+0x44>
    80001f90:	00001097          	auipc	ra,0x1
    80001f94:	4a0080e7          	jalr	1184(ra) # 80003430 <_ZN3TCBdlEPv>
}
    80001f98:	01813083          	ld	ra,24(sp)
    80001f9c:	01013403          	ld	s0,16(sp)
    80001fa0:	00813483          	ld	s1,8(sp)
    80001fa4:	02010113          	addi	sp,sp,32
    80001fa8:	00008067          	ret

0000000080001fac <_ZN9SemaphoreD1Ev>:
Semaphore::Semaphore(unsigned int init) {
    myHandle = nullptr;
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    80001fac:	0000a797          	auipc	a5,0xa
    80001fb0:	b6478793          	addi	a5,a5,-1180 # 8000bb10 <_ZTV9Semaphore+0x10>
    80001fb4:	00f53023          	sd	a5,0(a0)
    if (myHandle) sem_close(myHandle);
    80001fb8:	00853503          	ld	a0,8(a0)
    80001fbc:	02050663          	beqz	a0,80001fe8 <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    80001fc0:	ff010113          	addi	sp,sp,-16
    80001fc4:	00113423          	sd	ra,8(sp)
    80001fc8:	00813023          	sd	s0,0(sp)
    80001fcc:	01010413          	addi	s0,sp,16
    if (myHandle) sem_close(myHandle);
    80001fd0:	fffff097          	auipc	ra,0xfffff
    80001fd4:	488080e7          	jalr	1160(ra) # 80001458 <_Z9sem_closeP3Sem>
}
    80001fd8:	00813083          	ld	ra,8(sp)
    80001fdc:	00013403          	ld	s0,0(sp)
    80001fe0:	01010113          	addi	sp,sp,16
    80001fe4:	00008067          	ret
    80001fe8:	00008067          	ret

0000000080001fec <_Znwm>:
void* operator new(size_t size){
    80001fec:	ff010113          	addi	sp,sp,-16
    80001ff0:	00113423          	sd	ra,8(sp)
    80001ff4:	00813023          	sd	s0,0(sp)
    80001ff8:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001ffc:	fffff097          	auipc	ra,0xfffff
    80002000:	25c080e7          	jalr	604(ra) # 80001258 <_Z9mem_allocm>
}
    80002004:	00813083          	ld	ra,8(sp)
    80002008:	00013403          	ld	s0,0(sp)
    8000200c:	01010113          	addi	sp,sp,16
    80002010:	00008067          	ret

0000000080002014 <_ZdlPv>:
void operator delete(void* p) noexcept {
    80002014:	ff010113          	addi	sp,sp,-16
    80002018:	00113423          	sd	ra,8(sp)
    8000201c:	00813023          	sd	s0,0(sp)
    80002020:	01010413          	addi	s0,sp,16
    mem_free(p);
    80002024:	fffff097          	auipc	ra,0xfffff
    80002028:	288080e7          	jalr	648(ra) # 800012ac <_Z8mem_freePv>
}
    8000202c:	00813083          	ld	ra,8(sp)
    80002030:	00013403          	ld	s0,0(sp)
    80002034:	01010113          	addi	sp,sp,16
    80002038:	00008067          	ret

000000008000203c <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    8000203c:	fe010113          	addi	sp,sp,-32
    80002040:	00113c23          	sd	ra,24(sp)
    80002044:	00813823          	sd	s0,16(sp)
    80002048:	00913423          	sd	s1,8(sp)
    8000204c:	02010413          	addi	s0,sp,32
    80002050:	00050493          	mv	s1,a0
}
    80002054:	00000097          	auipc	ra,0x0
    80002058:	f00080e7          	jalr	-256(ra) # 80001f54 <_ZN6ThreadD1Ev>
    8000205c:	00048513          	mv	a0,s1
    80002060:	00000097          	auipc	ra,0x0
    80002064:	fb4080e7          	jalr	-76(ra) # 80002014 <_ZdlPv>
    80002068:	01813083          	ld	ra,24(sp)
    8000206c:	01013403          	ld	s0,16(sp)
    80002070:	00813483          	ld	s1,8(sp)
    80002074:	02010113          	addi	sp,sp,32
    80002078:	00008067          	ret

000000008000207c <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    8000207c:	fe010113          	addi	sp,sp,-32
    80002080:	00113c23          	sd	ra,24(sp)
    80002084:	00813823          	sd	s0,16(sp)
    80002088:	00913423          	sd	s1,8(sp)
    8000208c:	02010413          	addi	s0,sp,32
    80002090:	00050493          	mv	s1,a0
}
    80002094:	00000097          	auipc	ra,0x0
    80002098:	f18080e7          	jalr	-232(ra) # 80001fac <_ZN9SemaphoreD1Ev>
    8000209c:	00048513          	mv	a0,s1
    800020a0:	00000097          	auipc	ra,0x0
    800020a4:	f74080e7          	jalr	-140(ra) # 80002014 <_ZdlPv>
    800020a8:	01813083          	ld	ra,24(sp)
    800020ac:	01013403          	ld	s0,16(sp)
    800020b0:	00813483          	ld	s1,8(sp)
    800020b4:	02010113          	addi	sp,sp,32
    800020b8:	00008067          	ret

00000000800020bc <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    800020bc:	ff010113          	addi	sp,sp,-16
    800020c0:	00813423          	sd	s0,8(sp)
    800020c4:	01010413          	addi	s0,sp,16
    800020c8:	0000a797          	auipc	a5,0xa
    800020cc:	a2078793          	addi	a5,a5,-1504 # 8000bae8 <_ZTV6Thread+0x10>
    800020d0:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    800020d4:	00053423          	sd	zero,8(a0)
    this -> body = body;
    800020d8:	00b53823          	sd	a1,16(a0)
    this -> arg = arg;
    800020dc:	00c53c23          	sd	a2,24(a0)
}
    800020e0:	00813403          	ld	s0,8(sp)
    800020e4:	01010113          	addi	sp,sp,16
    800020e8:	00008067          	ret

00000000800020ec <_ZN6ThreadC1Ev>:
Thread::Thread() {
    800020ec:	ff010113          	addi	sp,sp,-16
    800020f0:	00813423          	sd	s0,8(sp)
    800020f4:	01010413          	addi	s0,sp,16
    800020f8:	0000a797          	auipc	a5,0xa
    800020fc:	9f078793          	addi	a5,a5,-1552 # 8000bae8 <_ZTV6Thread+0x10>
    80002100:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    80002104:	00053423          	sd	zero,8(a0)
    body = nullptr;
    80002108:	00053823          	sd	zero,16(a0)
    arg = nullptr;
    8000210c:	00053c23          	sd	zero,24(a0)
}
    80002110:	00813403          	ld	s0,8(sp)
    80002114:	01010113          	addi	sp,sp,16
    80002118:	00008067          	ret

000000008000211c <_ZN6Thread5startEv>:
int Thread::start() {
    8000211c:	ff010113          	addi	sp,sp,-16
    80002120:	00113423          	sd	ra,8(sp)
    80002124:	00813023          	sd	s0,0(sp)
    80002128:	01010413          	addi	s0,sp,16
    return thread_create(&myHandle, start_helper, this);
    8000212c:	00050613          	mv	a2,a0
    80002130:	00000597          	auipc	a1,0x0
    80002134:	de858593          	addi	a1,a1,-536 # 80001f18 <_ZN6Thread12start_helperEPv>
    80002138:	00850513          	addi	a0,a0,8
    8000213c:	fffff097          	auipc	ra,0xfffff
    80002140:	1bc080e7          	jalr	444(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
}
    80002144:	00813083          	ld	ra,8(sp)
    80002148:	00013403          	ld	s0,0(sp)
    8000214c:	01010113          	addi	sp,sp,16
    80002150:	00008067          	ret

0000000080002154 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80002154:	ff010113          	addi	sp,sp,-16
    80002158:	00113423          	sd	ra,8(sp)
    8000215c:	00813023          	sd	s0,0(sp)
    80002160:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002164:	fffff097          	auipc	ra,0xfffff
    80002168:	268080e7          	jalr	616(ra) # 800013cc <_Z15thread_dispatchv>
}
    8000216c:	00813083          	ld	ra,8(sp)
    80002170:	00013403          	ld	s0,0(sp)
    80002174:	01010113          	addi	sp,sp,16
    80002178:	00008067          	ret

000000008000217c <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    8000217c:	ff010113          	addi	sp,sp,-16
    80002180:	00113423          	sd	ra,8(sp)
    80002184:	00813023          	sd	s0,0(sp)
    80002188:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    8000218c:	fffff097          	auipc	ra,0xfffff
    80002190:	448080e7          	jalr	1096(ra) # 800015d4 <_Z10time_sleepm>
}
    80002194:	00813083          	ld	ra,8(sp)
    80002198:	00013403          	ld	s0,0(sp)
    8000219c:	01010113          	addi	sp,sp,16
    800021a0:	00008067          	ret

00000000800021a4 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    800021a4:	ff010113          	addi	sp,sp,-16
    800021a8:	00113423          	sd	ra,8(sp)
    800021ac:	00813023          	sd	s0,0(sp)
    800021b0:	01010413          	addi	s0,sp,16
    800021b4:	0000a797          	auipc	a5,0xa
    800021b8:	95c78793          	addi	a5,a5,-1700 # 8000bb10 <_ZTV9Semaphore+0x10>
    800021bc:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    800021c0:	00053423          	sd	zero,8(a0)
    sem_open(&myHandle, init);
    800021c4:	00850513          	addi	a0,a0,8
    800021c8:	fffff097          	auipc	ra,0xfffff
    800021cc:	240080e7          	jalr	576(ra) # 80001408 <_Z8sem_openPP3Semj>
}
    800021d0:	00813083          	ld	ra,8(sp)
    800021d4:	00013403          	ld	s0,0(sp)
    800021d8:	01010113          	addi	sp,sp,16
    800021dc:	00008067          	ret

00000000800021e0 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    if (myHandle) return sem_wait(myHandle);
    800021e0:	00853503          	ld	a0,8(a0)
    800021e4:	02050663          	beqz	a0,80002210 <_ZN9Semaphore4waitEv+0x30>
int Semaphore::wait() {
    800021e8:	ff010113          	addi	sp,sp,-16
    800021ec:	00113423          	sd	ra,8(sp)
    800021f0:	00813023          	sd	s0,0(sp)
    800021f4:	01010413          	addi	s0,sp,16
    if (myHandle) return sem_wait(myHandle);
    800021f8:	fffff097          	auipc	ra,0xfffff
    800021fc:	2ac080e7          	jalr	684(ra) # 800014a4 <_Z8sem_waitP3Sem>
    return -1;
}
    80002200:	00813083          	ld	ra,8(sp)
    80002204:	00013403          	ld	s0,0(sp)
    80002208:	01010113          	addi	sp,sp,16
    8000220c:	00008067          	ret
    return -1;
    80002210:	fff00513          	li	a0,-1
}
    80002214:	00008067          	ret

0000000080002218 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    if (myHandle) return sem_signal(myHandle);
    80002218:	00853503          	ld	a0,8(a0)
    8000221c:	02050663          	beqz	a0,80002248 <_ZN9Semaphore6signalEv+0x30>
int Semaphore::signal() {
    80002220:	ff010113          	addi	sp,sp,-16
    80002224:	00113423          	sd	ra,8(sp)
    80002228:	00813023          	sd	s0,0(sp)
    8000222c:	01010413          	addi	s0,sp,16
    if (myHandle) return sem_signal(myHandle);
    80002230:	fffff097          	auipc	ra,0xfffff
    80002234:	2c0080e7          	jalr	704(ra) # 800014f0 <_Z10sem_signalP3Sem>
    return -1;
}
    80002238:	00813083          	ld	ra,8(sp)
    8000223c:	00013403          	ld	s0,0(sp)
    80002240:	01010113          	addi	sp,sp,16
    80002244:	00008067          	ret
    return -1;
    80002248:	fff00513          	li	a0,-1
}
    8000224c:	00008067          	ret

0000000080002250 <_ZN9Semaphore9timedWaitEm>:

int Semaphore::timedWait(time_t time) {
    80002250:	ff010113          	addi	sp,sp,-16
    80002254:	00113423          	sd	ra,8(sp)
    80002258:	00813023          	sd	s0,0(sp)
    8000225c:	01010413          	addi	s0,sp,16
    return sem_timedwait(myHandle, time);
    80002260:	00853503          	ld	a0,8(a0)
    80002264:	fffff097          	auipc	ra,0xfffff
    80002268:	2d8080e7          	jalr	728(ra) # 8000153c <_Z13sem_timedwaitP3Semm>
}
    8000226c:	00813083          	ld	ra,8(sp)
    80002270:	00013403          	ld	s0,0(sp)
    80002274:	01010113          	addi	sp,sp,16
    80002278:	00008067          	ret

000000008000227c <_ZN9Semaphore7tryWaitEv>:

int Semaphore::tryWait() {
    8000227c:	ff010113          	addi	sp,sp,-16
    80002280:	00113423          	sd	ra,8(sp)
    80002284:	00813023          	sd	s0,0(sp)
    80002288:	01010413          	addi	s0,sp,16
    return sem_trywait(myHandle);
    8000228c:	00853503          	ld	a0,8(a0)
    80002290:	fffff097          	auipc	ra,0xfffff
    80002294:	2f8080e7          	jalr	760(ra) # 80001588 <_Z11sem_trywaitP3Sem>
}
    80002298:	00813083          	ld	ra,8(sp)
    8000229c:	00013403          	ld	s0,0(sp)
    800022a0:	01010113          	addi	sp,sp,16
    800022a4:	00008067          	ret

00000000800022a8 <_ZN14PeriodicThread9terminateEv>:

void PeriodicThread::terminate() {
    800022a8:	ff010113          	addi	sp,sp,-16
    800022ac:	00813423          	sd	s0,8(sp)
    800022b0:	01010413          	addi	s0,sp,16
    /// TODO terminate
}
    800022b4:	00813403          	ld	s0,8(sp)
    800022b8:	01010113          	addi	sp,sp,16
    800022bc:	00008067          	ret

00000000800022c0 <_ZN14PeriodicThreadC1Em>:

PeriodicThread::PeriodicThread(time_t period) {
    800022c0:	fe010113          	addi	sp,sp,-32
    800022c4:	00113c23          	sd	ra,24(sp)
    800022c8:	00813823          	sd	s0,16(sp)
    800022cc:	00913423          	sd	s1,8(sp)
    800022d0:	01213023          	sd	s2,0(sp)
    800022d4:	02010413          	addi	s0,sp,32
    800022d8:	00050493          	mv	s1,a0
    800022dc:	00058913          	mv	s2,a1
    800022e0:	00000097          	auipc	ra,0x0
    800022e4:	e0c080e7          	jalr	-500(ra) # 800020ec <_ZN6ThreadC1Ev>
    800022e8:	00009797          	auipc	a5,0x9
    800022ec:	7d078793          	addi	a5,a5,2000 # 8000bab8 <_ZTV14PeriodicThread+0x10>
    800022f0:	00f4b023          	sd	a5,0(s1)
    this -> period = period;
    800022f4:	0324b023          	sd	s2,32(s1)
}
    800022f8:	01813083          	ld	ra,24(sp)
    800022fc:	01013403          	ld	s0,16(sp)
    80002300:	00813483          	ld	s1,8(sp)
    80002304:	00013903          	ld	s2,0(sp)
    80002308:	02010113          	addi	sp,sp,32
    8000230c:	00008067          	ret

0000000080002310 <_ZN7Console4getcEv>:

char Console::getc() {
    80002310:	ff010113          	addi	sp,sp,-16
    80002314:	00113423          	sd	ra,8(sp)
    80002318:	00813023          	sd	s0,0(sp)
    8000231c:	01010413          	addi	s0,sp,16
    return ::getc();
    80002320:	fffff097          	auipc	ra,0xfffff
    80002324:	300080e7          	jalr	768(ra) # 80001620 <_Z4getcv>
}
    80002328:	00813083          	ld	ra,8(sp)
    8000232c:	00013403          	ld	s0,0(sp)
    80002330:	01010113          	addi	sp,sp,16
    80002334:	00008067          	ret

0000000080002338 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80002338:	ff010113          	addi	sp,sp,-16
    8000233c:	00113423          	sd	ra,8(sp)
    80002340:	00813023          	sd	s0,0(sp)
    80002344:	01010413          	addi	s0,sp,16
    ::putc(c);
    80002348:	fffff097          	auipc	ra,0xfffff
    8000234c:	324080e7          	jalr	804(ra) # 8000166c <_Z4putcc>
}
    80002350:	00813083          	ld	ra,8(sp)
    80002354:	00013403          	ld	s0,0(sp)
    80002358:	01010113          	addi	sp,sp,16
    8000235c:	00008067          	ret

0000000080002360 <_ZN6Thread3runEv>:
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    80002360:	ff010113          	addi	sp,sp,-16
    80002364:	00813423          	sd	s0,8(sp)
    80002368:	01010413          	addi	s0,sp,16
    8000236c:	00813403          	ld	s0,8(sp)
    80002370:	01010113          	addi	sp,sp,16
    80002374:	00008067          	ret

0000000080002378 <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    80002378:	ff010113          	addi	sp,sp,-16
    8000237c:	00813423          	sd	s0,8(sp)
    80002380:	01010413          	addi	s0,sp,16
    80002384:	00813403          	ld	s0,8(sp)
    80002388:	01010113          	addi	sp,sp,16
    8000238c:	00008067          	ret

0000000080002390 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80002390:	ff010113          	addi	sp,sp,-16
    80002394:	00113423          	sd	ra,8(sp)
    80002398:	00813023          	sd	s0,0(sp)
    8000239c:	01010413          	addi	s0,sp,16
    800023a0:	00009797          	auipc	a5,0x9
    800023a4:	71878793          	addi	a5,a5,1816 # 8000bab8 <_ZTV14PeriodicThread+0x10>
    800023a8:	00f53023          	sd	a5,0(a0)
    800023ac:	00000097          	auipc	ra,0x0
    800023b0:	ba8080e7          	jalr	-1112(ra) # 80001f54 <_ZN6ThreadD1Ev>
    800023b4:	00813083          	ld	ra,8(sp)
    800023b8:	00013403          	ld	s0,0(sp)
    800023bc:	01010113          	addi	sp,sp,16
    800023c0:	00008067          	ret

00000000800023c4 <_ZN14PeriodicThreadD0Ev>:
    800023c4:	fe010113          	addi	sp,sp,-32
    800023c8:	00113c23          	sd	ra,24(sp)
    800023cc:	00813823          	sd	s0,16(sp)
    800023d0:	00913423          	sd	s1,8(sp)
    800023d4:	02010413          	addi	s0,sp,32
    800023d8:	00050493          	mv	s1,a0
    800023dc:	00009797          	auipc	a5,0x9
    800023e0:	6dc78793          	addi	a5,a5,1756 # 8000bab8 <_ZTV14PeriodicThread+0x10>
    800023e4:	00f53023          	sd	a5,0(a0)
    800023e8:	00000097          	auipc	ra,0x0
    800023ec:	b6c080e7          	jalr	-1172(ra) # 80001f54 <_ZN6ThreadD1Ev>
    800023f0:	00048513          	mv	a0,s1
    800023f4:	00000097          	auipc	ra,0x0
    800023f8:	c20080e7          	jalr	-992(ra) # 80002014 <_ZdlPv>
    800023fc:	01813083          	ld	ra,24(sp)
    80002400:	01013403          	ld	s0,16(sp)
    80002404:	00813483          	ld	s1,8(sp)
    80002408:	02010113          	addi	sp,sp,32
    8000240c:	00008067          	ret

0000000080002410 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>:
        instance = (MemoryAllocator*) MemoryAllocator::mem_alloc(get_number_of_blocks(sizeof(MemoryAllocator)));
    }
}

/// helper function for removing element from linked list
void MemoryAllocator::removeNode(MemSeg *toRemove, MemSeg *nextSeg, bool newIsCreated) {
    80002410:	ff010113          	addi	sp,sp,-16
    80002414:	00813423          	sd	s0,8(sp)
    80002418:	01010413          	addi	s0,sp,16
    if (toRemove -> prev) toRemove -> prev -> next = nextSeg;
    8000241c:	00853783          	ld	a5,8(a0)
    80002420:	02078463          	beqz	a5,80002448 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x38>
    80002424:	00b7b823          	sd	a1,16(a5)
    else freeSegHead = nextSeg;
    if (toRemove -> next) toRemove -> next -> prev = (newIsCreated) ? nextSeg : toRemove -> prev;
    80002428:	01053783          	ld	a5,16(a0)
    8000242c:	00078863          	beqz	a5,8000243c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x2c>
    80002430:	00061463          	bnez	a2,80002438 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x28>
    80002434:	00853583          	ld	a1,8(a0)
    80002438:	00b7b423          	sd	a1,8(a5)
}
    8000243c:	00813403          	ld	s0,8(sp)
    80002440:	01010113          	addi	sp,sp,16
    80002444:	00008067          	ret
    else freeSegHead = nextSeg;
    80002448:	0000a797          	auipc	a5,0xa
    8000244c:	92b7b823          	sd	a1,-1744(a5) # 8000bd78 <_ZN15MemoryAllocator11freeSegHeadE>
    80002450:	fd9ff06f          	j	80002428 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x18>

0000000080002454 <_ZN15MemoryAllocator9mem_allocEm>:

/// allocate `size` blocks
void *MemoryAllocator::mem_alloc(size_t size) {
    80002454:	fe010113          	addi	sp,sp,-32
    80002458:	00113c23          	sd	ra,24(sp)
    8000245c:	00813823          	sd	s0,16(sp)
    80002460:	00913423          	sd	s1,8(sp)
    80002464:	01213023          	sd	s2,0(sp)
    80002468:	02010413          	addi	s0,sp,32
    if (size <= 0) return nullptr;
    8000246c:	0e050e63          	beqz	a0,80002568 <_ZN15MemoryAllocator9mem_allocEm+0x114>
    size_t bytesToAllocate = size * MEM_BLOCK_SIZE;
    80002470:	00651913          	slli	s2,a0,0x6
    MemSeg *tmp = freeSegHead;
    80002474:	0000a497          	auipc	s1,0xa
    80002478:	9044b483          	ld	s1,-1788(s1) # 8000bd78 <_ZN15MemoryAllocator11freeSegHeadE>
    while (tmp) {
    8000247c:	0a048e63          	beqz	s1,80002538 <_ZN15MemoryAllocator9mem_allocEm+0xe4>
        if (tmp -> size < bytesToAllocate) {
    80002480:	0004b783          	ld	a5,0(s1)
    80002484:	0527e463          	bltu	a5,s2,800024cc <_ZN15MemoryAllocator9mem_allocEm+0x78>
            tmp = tmp -> next;
            continue;
        }
        /// update free memory list
        size_t remaining = tmp -> size - bytesToAllocate;
    80002488:	412787b3          	sub	a5,a5,s2
        if (remaining <= sizeof(MemSeg)) removeNode(tmp, tmp->next, false);
    8000248c:	01800713          	li	a4,24
    80002490:	04f76263          	bltu	a4,a5,800024d4 <_ZN15MemoryAllocator9mem_allocEm+0x80>
    80002494:	00000613          	li	a2,0
    80002498:	0104b583          	ld	a1,16(s1)
    8000249c:	00048513          	mv	a0,s1
    800024a0:	00000097          	auipc	ra,0x0
    800024a4:	f70080e7          	jalr	-144(ra) # 80002410 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
        }

        /// update used memory list
        /// insert segment after tmp2
        MemSeg* tmp2 = nullptr;
        if (usedSegHead && (char*) tmp > (char*) usedSegHead)
    800024a8:	0000a797          	auipc	a5,0xa
    800024ac:	8d87b783          	ld	a5,-1832(a5) # 8000bd80 <_ZN15MemoryAllocator11usedSegHeadE>
    800024b0:	04078863          	beqz	a5,80002500 <_ZN15MemoryAllocator9mem_allocEm+0xac>
    800024b4:	0497fa63          	bgeu	a5,s1,80002508 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
            for (tmp2 = usedSegHead; tmp2 -> next && (char*) tmp > (char*) (tmp2 -> next); tmp2 = tmp2 -> next);
    800024b8:	00078713          	mv	a4,a5
    800024bc:	0107b783          	ld	a5,16(a5)
    800024c0:	04078663          	beqz	a5,8000250c <_ZN15MemoryAllocator9mem_allocEm+0xb8>
    800024c4:	fe97eae3          	bltu	a5,s1,800024b8 <_ZN15MemoryAllocator9mem_allocEm+0x64>
    800024c8:	0440006f          	j	8000250c <_ZN15MemoryAllocator9mem_allocEm+0xb8>
            tmp = tmp -> next;
    800024cc:	0104b483          	ld	s1,16(s1)
    while (tmp) {
    800024d0:	fadff06f          	j	8000247c <_ZN15MemoryAllocator9mem_allocEm+0x28>
            MemSeg* newFree = (MemSeg*) ((char*) tmp + bytesToAllocate);
    800024d4:	012485b3          	add	a1,s1,s2
            newFree -> prev = tmp -> prev;
    800024d8:	0084b703          	ld	a4,8(s1)
    800024dc:	00e5b423          	sd	a4,8(a1)
            newFree -> next = tmp -> next;
    800024e0:	0104b703          	ld	a4,16(s1)
    800024e4:	00e5b823          	sd	a4,16(a1)
            newFree -> size = remaining;
    800024e8:	00f5b023          	sd	a5,0(a1)
            removeNode(tmp, newFree, true);
    800024ec:	00100613          	li	a2,1
    800024f0:	00048513          	mv	a0,s1
    800024f4:	00000097          	auipc	ra,0x0
    800024f8:	f1c080e7          	jalr	-228(ra) # 80002410 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
    800024fc:	fadff06f          	j	800024a8 <_ZN15MemoryAllocator9mem_allocEm+0x54>
        MemSeg* tmp2 = nullptr;
    80002500:	00078713          	mv	a4,a5
    80002504:	0080006f          	j	8000250c <_ZN15MemoryAllocator9mem_allocEm+0xb8>
    80002508:	00000713          	li	a4,0
        MemSeg* newUsed = (MemSeg*) tmp;
        newUsed -> size = bytesToAllocate;
    8000250c:	0124b023          	sd	s2,0(s1)
        newUsed -> prev = tmp2;
    80002510:	00e4b423          	sd	a4,8(s1)
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    80002514:	04070063          	beqz	a4,80002554 <_ZN15MemoryAllocator9mem_allocEm+0x100>
    80002518:	01073783          	ld	a5,16(a4)
    8000251c:	00f4b823          	sd	a5,16(s1)
        if (tmp2) tmp2 -> next = newUsed;
    80002520:	02070e63          	beqz	a4,8000255c <_ZN15MemoryAllocator9mem_allocEm+0x108>
    80002524:	00973823          	sd	s1,16(a4)
        else usedSegHead = newUsed;
        if (newUsed -> next) newUsed -> next -> prev = newUsed;
    80002528:	0104b783          	ld	a5,16(s1)
    8000252c:	00078463          	beqz	a5,80002534 <_ZN15MemoryAllocator9mem_allocEm+0xe0>
    80002530:	0097b423          	sd	s1,8(a5)
        return (void*) ((char*)tmp + sizeof(MemSeg));
    80002534:	01848493          	addi	s1,s1,24
    }
    return nullptr;
}
    80002538:	00048513          	mv	a0,s1
    8000253c:	01813083          	ld	ra,24(sp)
    80002540:	01013403          	ld	s0,16(sp)
    80002544:	00813483          	ld	s1,8(sp)
    80002548:	00013903          	ld	s2,0(sp)
    8000254c:	02010113          	addi	sp,sp,32
    80002550:	00008067          	ret
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    80002554:	00070793          	mv	a5,a4
    80002558:	fc5ff06f          	j	8000251c <_ZN15MemoryAllocator9mem_allocEm+0xc8>
        else usedSegHead = newUsed;
    8000255c:	0000a797          	auipc	a5,0xa
    80002560:	8297b223          	sd	s1,-2012(a5) # 8000bd80 <_ZN15MemoryAllocator11usedSegHeadE>
    80002564:	fc5ff06f          	j	80002528 <_ZN15MemoryAllocator9mem_allocEm+0xd4>
    if (size <= 0) return nullptr;
    80002568:	00000493          	li	s1,0
    8000256c:	fcdff06f          	j	80002538 <_ZN15MemoryAllocator9mem_allocEm+0xe4>

0000000080002570 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>:
    }
    return 0;
}

/// join free segment with next if possible
void MemoryAllocator::tryToJoin(MemSeg *seg) {
    80002570:	ff010113          	addi	sp,sp,-16
    80002574:	00813423          	sd	s0,8(sp)
    80002578:	01010413          	addi	s0,sp,16
    if (seg -> next && (char*) seg + seg -> size == (char*) seg -> next) {
    8000257c:	01053783          	ld	a5,16(a0)
    80002580:	00078863          	beqz	a5,80002590 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    80002584:	00053703          	ld	a4,0(a0)
    80002588:	00e506b3          	add	a3,a0,a4
    8000258c:	00d78863          	beq	a5,a3,8000259c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x2c>
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
        seg -> next = seg -> next -> next;
        if (seg -> next) seg -> next -> prev = seg;
    }
}
    80002590:	00813403          	ld	s0,8(sp)
    80002594:	01010113          	addi	sp,sp,16
    80002598:	00008067          	ret
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
    8000259c:	0007b683          	ld	a3,0(a5)
    800025a0:	00d70733          	add	a4,a4,a3
    800025a4:	01870713          	addi	a4,a4,24
    800025a8:	00e53023          	sd	a4,0(a0)
        seg -> next = seg -> next -> next;
    800025ac:	0107b783          	ld	a5,16(a5)
    800025b0:	00f53823          	sd	a5,16(a0)
        if (seg -> next) seg -> next -> prev = seg;
    800025b4:	fc078ee3          	beqz	a5,80002590 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    800025b8:	00a7b423          	sd	a0,8(a5)
}
    800025bc:	fd5ff06f          	j	80002590 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>

00000000800025c0 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    800025c0:	14050263          	beqz	a0,80002704 <_ZN15MemoryAllocator8mem_freeEPv+0x144>
int MemoryAllocator::mem_free(void *addr) {
    800025c4:	fd010113          	addi	sp,sp,-48
    800025c8:	02113423          	sd	ra,40(sp)
    800025cc:	02813023          	sd	s0,32(sp)
    800025d0:	00913c23          	sd	s1,24(sp)
    800025d4:	01213823          	sd	s2,16(sp)
    800025d8:	01313423          	sd	s3,8(sp)
    800025dc:	03010413          	addi	s0,sp,48
    800025e0:	00050913          	mv	s2,a0
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    800025e4:	00009797          	auipc	a5,0x9
    800025e8:	6fc7b783          	ld	a5,1788(a5) # 8000bce0 <_GLOBAL_OFFSET_TABLE_+0x18>
    800025ec:	0007b783          	ld	a5,0(a5)
    800025f0:	10f56e63          	bltu	a0,a5,8000270c <_ZN15MemoryAllocator8mem_freeEPv+0x14c>
    800025f4:	00009797          	auipc	a5,0x9
    800025f8:	71c7b783          	ld	a5,1820(a5) # 8000bd10 <_GLOBAL_OFFSET_TABLE_+0x48>
    800025fc:	0007b783          	ld	a5,0(a5)
    80002600:	10a7ea63          	bltu	a5,a0,80002714 <_ZN15MemoryAllocator8mem_freeEPv+0x154>
    if (!usedSegHead) return -2;
    80002604:	00009797          	auipc	a5,0x9
    80002608:	77c7b783          	ld	a5,1916(a5) # 8000bd80 <_ZN15MemoryAllocator11usedSegHeadE>
    8000260c:	10078863          	beqz	a5,8000271c <_ZN15MemoryAllocator8mem_freeEPv+0x15c>
    addr = (void*) ((char*) addr - sizeof(MemSeg));
    80002610:	fe850493          	addi	s1,a0,-24
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    80002614:	00078863          	beqz	a5,80002624 <_ZN15MemoryAllocator8mem_freeEPv+0x64>
        if (tmp == segToFree) {
    80002618:	08978e63          	beq	a5,s1,800026b4 <_ZN15MemoryAllocator8mem_freeEPv+0xf4>
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    8000261c:	0107b783          	ld	a5,16(a5)
    80002620:	ff5ff06f          	j	80002614 <_ZN15MemoryAllocator8mem_freeEPv+0x54>
    bool found = false;
    80002624:	00000793          	li	a5,0
    if (!found) return -3;
    80002628:	0e078e63          	beqz	a5,80002724 <_ZN15MemoryAllocator8mem_freeEPv+0x164>
    removeNode(segToFree, segToFree -> next, false);
    8000262c:	00000613          	li	a2,0
    80002630:	ff893583          	ld	a1,-8(s2)
    80002634:	00048513          	mv	a0,s1
    80002638:	00000097          	auipc	ra,0x0
    8000263c:	dd8080e7          	jalr	-552(ra) # 80002410 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
    if (!freeSegHead) {
    80002640:	00009797          	auipc	a5,0x9
    80002644:	7387b783          	ld	a5,1848(a5) # 8000bd78 <_ZN15MemoryAllocator11freeSegHeadE>
    80002648:	06078a63          	beqz	a5,800026bc <_ZN15MemoryAllocator8mem_freeEPv+0xfc>
    else if ((char*) addr < (char*) freeSegHead) {
    8000264c:	08f4e463          	bltu	s1,a5,800026d4 <_ZN15MemoryAllocator8mem_freeEPv+0x114>
        for (tmp = freeSegHead; tmp -> next && (char*) (tmp -> next) < (char*) segToFree; tmp = tmp -> next);
    80002650:	00078993          	mv	s3,a5
    80002654:	0107b783          	ld	a5,16(a5)
    80002658:	00078463          	beqz	a5,80002660 <_ZN15MemoryAllocator8mem_freeEPv+0xa0>
    8000265c:	fe97eae3          	bltu	a5,s1,80002650 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
        segToFree -> prev = tmp;
    80002660:	ff393823          	sd	s3,-16(s2)
        segToFree -> next = tmp -> next;
    80002664:	0109b783          	ld	a5,16(s3)
    80002668:	fef93c23          	sd	a5,-8(s2)
        tmp -> next = segToFree;
    8000266c:	0099b823          	sd	s1,16(s3)
        if (segToFree -> next) segToFree -> next -> prev = segToFree;
    80002670:	ff893783          	ld	a5,-8(s2)
    80002674:	00078463          	beqz	a5,8000267c <_ZN15MemoryAllocator8mem_freeEPv+0xbc>
    80002678:	0097b423          	sd	s1,8(a5)
        tryToJoin(segToFree);
    8000267c:	00048513          	mv	a0,s1
    80002680:	00000097          	auipc	ra,0x0
    80002684:	ef0080e7          	jalr	-272(ra) # 80002570 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
        tryToJoin(tmp);
    80002688:	00098513          	mv	a0,s3
    8000268c:	00000097          	auipc	ra,0x0
    80002690:	ee4080e7          	jalr	-284(ra) # 80002570 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    80002694:	00000513          	li	a0,0
}
    80002698:	02813083          	ld	ra,40(sp)
    8000269c:	02013403          	ld	s0,32(sp)
    800026a0:	01813483          	ld	s1,24(sp)
    800026a4:	01013903          	ld	s2,16(sp)
    800026a8:	00813983          	ld	s3,8(sp)
    800026ac:	03010113          	addi	sp,sp,48
    800026b0:	00008067          	ret
            found = true;
    800026b4:	00100793          	li	a5,1
    800026b8:	f71ff06f          	j	80002628 <_ZN15MemoryAllocator8mem_freeEPv+0x68>
        freeSegHead = segToFree;
    800026bc:	00009797          	auipc	a5,0x9
    800026c0:	6a97be23          	sd	s1,1724(a5) # 8000bd78 <_ZN15MemoryAllocator11freeSegHeadE>
        segToFree -> prev = segToFree -> next = nullptr;
    800026c4:	fe093c23          	sd	zero,-8(s2)
    800026c8:	fe093823          	sd	zero,-16(s2)
    return 0;
    800026cc:	00000513          	li	a0,0
    800026d0:	fc9ff06f          	j	80002698 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
        segToFree -> prev = nullptr;
    800026d4:	fe093823          	sd	zero,-16(s2)
        segToFree -> next = freeSegHead;
    800026d8:	00009797          	auipc	a5,0x9
    800026dc:	6a078793          	addi	a5,a5,1696 # 8000bd78 <_ZN15MemoryAllocator11freeSegHeadE>
    800026e0:	0007b703          	ld	a4,0(a5)
    800026e4:	fee93c23          	sd	a4,-8(s2)
        freeSegHead -> prev = segToFree;
    800026e8:	00973423          	sd	s1,8(a4)
        freeSegHead = segToFree;
    800026ec:	0097b023          	sd	s1,0(a5)
        tryToJoin(segToFree);
    800026f0:	00048513          	mv	a0,s1
    800026f4:	00000097          	auipc	ra,0x0
    800026f8:	e7c080e7          	jalr	-388(ra) # 80002570 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    800026fc:	00000513          	li	a0,0
    80002700:	f99ff06f          	j	80002698 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    80002704:	fff00513          	li	a0,-1
}
    80002708:	00008067          	ret
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    8000270c:	fff00513          	li	a0,-1
    80002710:	f89ff06f          	j	80002698 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    80002714:	fff00513          	li	a0,-1
    80002718:	f81ff06f          	j	80002698 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!usedSegHead) return -2;
    8000271c:	ffe00513          	li	a0,-2
    80002720:	f79ff06f          	j	80002698 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!found) return -3;
    80002724:	ffd00513          	li	a0,-3
    80002728:	f71ff06f          	j	80002698 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>

000000008000272c <_ZN15MemoryAllocator5printEv>:

void MemoryAllocator::print() {
    8000272c:	fe010113          	addi	sp,sp,-32
    80002730:	00113c23          	sd	ra,24(sp)
    80002734:	00813823          	sd	s0,16(sp)
    80002738:	00913423          	sd	s1,8(sp)
    8000273c:	02010413          	addi	s0,sp,32
    __putc('\n');
    80002740:	00a00513          	li	a0,10
    80002744:	00006097          	auipc	ra,0x6
    80002748:	5c8080e7          	jalr	1480(ra) # 80008d0c <__putc>
    __putc('M');
    8000274c:	04d00513          	li	a0,77
    80002750:	00006097          	auipc	ra,0x6
    80002754:	5bc080e7          	jalr	1468(ra) # 80008d0c <__putc>
    __putc(':');
    80002758:	03a00513          	li	a0,58
    8000275c:	00006097          	auipc	ra,0x6
    80002760:	5b0080e7          	jalr	1456(ra) # 80008d0c <__putc>
    __putc(' ');
    80002764:	02000513          	li	a0,32
    80002768:	00006097          	auipc	ra,0x6
    8000276c:	5a4080e7          	jalr	1444(ra) # 80008d0c <__putc>
    for (MemSeg* tmp = freeSegHead; tmp; tmp = tmp -> next) {
    80002770:	00009497          	auipc	s1,0x9
    80002774:	6084b483          	ld	s1,1544(s1) # 8000bd78 <_ZN15MemoryAllocator11freeSegHeadE>
    80002778:	02048863          	beqz	s1,800027a8 <_ZN15MemoryAllocator5printEv+0x7c>
        printNumber(tmp -> size);
    8000277c:	0004b503          	ld	a0,0(s1)
    80002780:	fffff097          	auipc	ra,0xfffff
    80002784:	328080e7          	jalr	808(ra) # 80001aa8 <_Z11printNumberm>
        __putc(' ');
    80002788:	02000513          	li	a0,32
    8000278c:	00006097          	auipc	ra,0x6
    80002790:	580080e7          	jalr	1408(ra) # 80008d0c <__putc>
        __putc('f');
    80002794:	06600513          	li	a0,102
    80002798:	00006097          	auipc	ra,0x6
    8000279c:	574080e7          	jalr	1396(ra) # 80008d0c <__putc>
    for (MemSeg* tmp = freeSegHead; tmp; tmp = tmp -> next) {
    800027a0:	0104b483          	ld	s1,16(s1)
    800027a4:	fd5ff06f          	j	80002778 <_ZN15MemoryAllocator5printEv+0x4c>
    }
    __putc('\t');
    800027a8:	00900513          	li	a0,9
    800027ac:	00006097          	auipc	ra,0x6
    800027b0:	560080e7          	jalr	1376(ra) # 80008d0c <__putc>
    for (MemSeg* tmp = usedSegHead; tmp; tmp = tmp -> next) {
    800027b4:	00009497          	auipc	s1,0x9
    800027b8:	5cc4b483          	ld	s1,1484(s1) # 8000bd80 <_ZN15MemoryAllocator11usedSegHeadE>
    800027bc:	02048863          	beqz	s1,800027ec <_ZN15MemoryAllocator5printEv+0xc0>
        printNumber(tmp -> size);
    800027c0:	0004b503          	ld	a0,0(s1)
    800027c4:	fffff097          	auipc	ra,0xfffff
    800027c8:	2e4080e7          	jalr	740(ra) # 80001aa8 <_Z11printNumberm>
        __putc(' ');
    800027cc:	02000513          	li	a0,32
    800027d0:	00006097          	auipc	ra,0x6
    800027d4:	53c080e7          	jalr	1340(ra) # 80008d0c <__putc>
        __putc('u');
    800027d8:	07500513          	li	a0,117
    800027dc:	00006097          	auipc	ra,0x6
    800027e0:	530080e7          	jalr	1328(ra) # 80008d0c <__putc>
    for (MemSeg* tmp = usedSegHead; tmp; tmp = tmp -> next) {
    800027e4:	0104b483          	ld	s1,16(s1)
    800027e8:	fd5ff06f          	j	800027bc <_ZN15MemoryAllocator5printEv+0x90>
    }
}
    800027ec:	01813083          	ld	ra,24(sp)
    800027f0:	01013403          	ld	s0,16(sp)
    800027f4:	00813483          	ld	s1,8(sp)
    800027f8:	02010113          	addi	sp,sp,32
    800027fc:	00008067          	ret

0000000080002800 <_ZN15MemoryAllocator20get_number_of_blocksEm>:

size_t MemoryAllocator::get_number_of_blocks(size_t size) {
    80002800:	ff010113          	addi	sp,sp,-16
    80002804:	00813423          	sd	s0,8(sp)
    80002808:	01010413          	addi	s0,sp,16
    return (size + sizeof(MemoryAllocator::MemSeg) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    8000280c:	05750513          	addi	a0,a0,87
}
    80002810:	00655513          	srli	a0,a0,0x6
    80002814:	00813403          	ld	s0,8(sp)
    80002818:	01010113          	addi	sp,sp,16
    8000281c:	00008067          	ret

0000000080002820 <_ZN15MemoryAllocator10initializeEv>:
    if (!instance) {
    80002820:	00009797          	auipc	a5,0x9
    80002824:	5687b783          	ld	a5,1384(a5) # 8000bd88 <_ZN15MemoryAllocator8instanceE>
    80002828:	00078463          	beqz	a5,80002830 <_ZN15MemoryAllocator10initializeEv+0x10>
    8000282c:	00008067          	ret
void MemoryAllocator::initialize() {
    80002830:	fe010113          	addi	sp,sp,-32
    80002834:	00113c23          	sd	ra,24(sp)
    80002838:	00813823          	sd	s0,16(sp)
    8000283c:	00913423          	sd	s1,8(sp)
    80002840:	02010413          	addi	s0,sp,32
        freeSegHead = (MemSeg*) HEAP_START_ADDR;
    80002844:	00009797          	auipc	a5,0x9
    80002848:	49c7b783          	ld	a5,1180(a5) # 8000bce0 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000284c:	0007b783          	ld	a5,0(a5)
    80002850:	00009497          	auipc	s1,0x9
    80002854:	52848493          	addi	s1,s1,1320 # 8000bd78 <_ZN15MemoryAllocator11freeSegHeadE>
    80002858:	00f4b023          	sd	a5,0(s1)
        freeSegHead -> size = (size_t) HEAP_END_ADDR - (size_t) HEAP_START_ADDR;
    8000285c:	00009717          	auipc	a4,0x9
    80002860:	4b473703          	ld	a4,1204(a4) # 8000bd10 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002864:	00073703          	ld	a4,0(a4)
    80002868:	40f70733          	sub	a4,a4,a5
    8000286c:	00e7b023          	sd	a4,0(a5)
        freeSegHead -> prev = nullptr;
    80002870:	0004b783          	ld	a5,0(s1)
    80002874:	0007b423          	sd	zero,8(a5)
        freeSegHead -> next = nullptr;
    80002878:	0007b823          	sd	zero,16(a5)
        instance = (MemoryAllocator*) MemoryAllocator::mem_alloc(get_number_of_blocks(sizeof(MemoryAllocator)));
    8000287c:	00100513          	li	a0,1
    80002880:	00000097          	auipc	ra,0x0
    80002884:	f80080e7          	jalr	-128(ra) # 80002800 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80002888:	00000097          	auipc	ra,0x0
    8000288c:	bcc080e7          	jalr	-1076(ra) # 80002454 <_ZN15MemoryAllocator9mem_allocEm>
    80002890:	00a4b823          	sd	a0,16(s1)
}
    80002894:	01813083          	ld	ra,24(sp)
    80002898:	01013403          	ld	s0,16(sp)
    8000289c:	00813483          	ld	s1,8(sp)
    800028a0:	02010113          	addi	sp,sp,32
    800028a4:	00008067          	ret

00000000800028a8 <_ZN13BoundedBufferC1Ev>:
#include "../h/bounded_bufffer.hpp"

BoundedBuffer::BoundedBuffer() {
    800028a8:	fe010113          	addi	sp,sp,-32
    800028ac:	00113c23          	sd	ra,24(sp)
    800028b0:	00813823          	sd	s0,16(sp)
    800028b4:	00913423          	sd	s1,8(sp)
    800028b8:	02010413          	addi	s0,sp,32
    800028bc:	00050493          	mv	s1,a0
    800028c0:	00052023          	sw	zero,0(a0)
    800028c4:	00052223          	sw	zero,4(a0)
    Sem::open(&item_available, 0);
    800028c8:	00000593          	li	a1,0
    800028cc:	01050513          	addi	a0,a0,16
    800028d0:	fffff097          	auipc	ra,0xfffff
    800028d4:	07c080e7          	jalr	124(ra) # 8000194c <_ZN3Sem4openEPPS_j>
    Sem::open(&space_available, CAPACITY);
    800028d8:	1f400593          	li	a1,500
    800028dc:	00848513          	addi	a0,s1,8
    800028e0:	fffff097          	auipc	ra,0xfffff
    800028e4:	06c080e7          	jalr	108(ra) # 8000194c <_ZN3Sem4openEPPS_j>
}
    800028e8:	01813083          	ld	ra,24(sp)
    800028ec:	01013403          	ld	s0,16(sp)
    800028f0:	00813483          	ld	s1,8(sp)
    800028f4:	02010113          	addi	sp,sp,32
    800028f8:	00008067          	ret

00000000800028fc <_ZN13BoundedBufferD1Ev>:

BoundedBuffer::~BoundedBuffer() {
    800028fc:	fe010113          	addi	sp,sp,-32
    80002900:	00113c23          	sd	ra,24(sp)
    80002904:	00813823          	sd	s0,16(sp)
    80002908:	00913423          	sd	s1,8(sp)
    8000290c:	02010413          	addi	s0,sp,32
    80002910:	00050493          	mv	s1,a0
    Sem::close(item_available);
    80002914:	01053503          	ld	a0,16(a0)
    80002918:	fffff097          	auipc	ra,0xfffff
    8000291c:	e9c080e7          	jalr	-356(ra) # 800017b4 <_ZN3Sem5closeEPS_>
    Sem::close(space_available);
    80002920:	0084b503          	ld	a0,8(s1)
    80002924:	fffff097          	auipc	ra,0xfffff
    80002928:	e90080e7          	jalr	-368(ra) # 800017b4 <_ZN3Sem5closeEPS_>
}
    8000292c:	01813083          	ld	ra,24(sp)
    80002930:	01013403          	ld	s0,16(sp)
    80002934:	00813483          	ld	s1,8(sp)
    80002938:	02010113          	addi	sp,sp,32
    8000293c:	00008067          	ret

0000000080002940 <_ZN13BoundedBuffernwEm>:

void *BoundedBuffer::operator new(size_t size) {
    80002940:	ff010113          	addi	sp,sp,-16
    80002944:	00113423          	sd	ra,8(sp)
    80002948:	00813023          	sd	s0,0(sp)
    8000294c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    80002950:	00000097          	auipc	ra,0x0
    80002954:	eb0080e7          	jalr	-336(ra) # 80002800 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80002958:	00000097          	auipc	ra,0x0
    8000295c:	afc080e7          	jalr	-1284(ra) # 80002454 <_ZN15MemoryAllocator9mem_allocEm>
}
    80002960:	00813083          	ld	ra,8(sp)
    80002964:	00013403          	ld	s0,0(sp)
    80002968:	01010113          	addi	sp,sp,16
    8000296c:	00008067          	ret

0000000080002970 <_ZN13BoundedBufferdlEPv>:

void BoundedBuffer::operator delete(void *addr) {
    80002970:	ff010113          	addi	sp,sp,-16
    80002974:	00113423          	sd	ra,8(sp)
    80002978:	00813023          	sd	s0,0(sp)
    8000297c:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    80002980:	00000097          	auipc	ra,0x0
    80002984:	c40080e7          	jalr	-960(ra) # 800025c0 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80002988:	00813083          	ld	ra,8(sp)
    8000298c:	00013403          	ld	s0,0(sp)
    80002990:	01010113          	addi	sp,sp,16
    80002994:	00008067          	ret

0000000080002998 <_ZN13BoundedBuffer4putcEc>:

void BoundedBuffer::putc(char c) {
    80002998:	fe010113          	addi	sp,sp,-32
    8000299c:	00113c23          	sd	ra,24(sp)
    800029a0:	00813823          	sd	s0,16(sp)
    800029a4:	00913423          	sd	s1,8(sp)
    800029a8:	01213023          	sd	s2,0(sp)
    800029ac:	02010413          	addi	s0,sp,32
    800029b0:	00050493          	mv	s1,a0
    800029b4:	00058913          	mv	s2,a1
    Sem::wait(space_available);
    800029b8:	00853503          	ld	a0,8(a0)
    800029bc:	fffff097          	auipc	ra,0xfffff
    800029c0:	e64080e7          	jalr	-412(ra) # 80001820 <_ZN3Sem4waitEPS_>
    array[tail] = c;
    800029c4:	0044a783          	lw	a5,4(s1)
    800029c8:	00f48733          	add	a4,s1,a5
    800029cc:	01270c23          	sb	s2,24(a4)
    tail = (tail + 1) % CAPACITY;
    800029d0:	0017879b          	addiw	a5,a5,1
    800029d4:	1f400713          	li	a4,500
    800029d8:	02e7e7bb          	remw	a5,a5,a4
    800029dc:	00f4a223          	sw	a5,4(s1)
    Sem::signal(item_available);
    800029e0:	0104b503          	ld	a0,16(s1)
    800029e4:	fffff097          	auipc	ra,0xfffff
    800029e8:	e90080e7          	jalr	-368(ra) # 80001874 <_ZN3Sem6signalEPS_>
}
    800029ec:	01813083          	ld	ra,24(sp)
    800029f0:	01013403          	ld	s0,16(sp)
    800029f4:	00813483          	ld	s1,8(sp)
    800029f8:	00013903          	ld	s2,0(sp)
    800029fc:	02010113          	addi	sp,sp,32
    80002a00:	00008067          	ret

0000000080002a04 <_ZN13BoundedBuffer4getcEv>:

char BoundedBuffer::getc() {
    80002a04:	fe010113          	addi	sp,sp,-32
    80002a08:	00113c23          	sd	ra,24(sp)
    80002a0c:	00813823          	sd	s0,16(sp)
    80002a10:	00913423          	sd	s1,8(sp)
    80002a14:	01213023          	sd	s2,0(sp)
    80002a18:	02010413          	addi	s0,sp,32
    80002a1c:	00050493          	mv	s1,a0
    Sem::wait(item_available);
    80002a20:	01053503          	ld	a0,16(a0)
    80002a24:	fffff097          	auipc	ra,0xfffff
    80002a28:	dfc080e7          	jalr	-516(ra) # 80001820 <_ZN3Sem4waitEPS_>
    char c = array[head];
    80002a2c:	0004a783          	lw	a5,0(s1)
    80002a30:	00f48733          	add	a4,s1,a5
    80002a34:	01874903          	lbu	s2,24(a4)
    head = (head + 1) % CAPACITY;
    80002a38:	0017879b          	addiw	a5,a5,1
    80002a3c:	1f400713          	li	a4,500
    80002a40:	02e7e7bb          	remw	a5,a5,a4
    80002a44:	00f4a023          	sw	a5,0(s1)
    Sem::signal(space_available);
    80002a48:	0084b503          	ld	a0,8(s1)
    80002a4c:	fffff097          	auipc	ra,0xfffff
    80002a50:	e28080e7          	jalr	-472(ra) # 80001874 <_ZN3Sem6signalEPS_>
    return c;
}
    80002a54:	00090513          	mv	a0,s2
    80002a58:	01813083          	ld	ra,24(sp)
    80002a5c:	01013403          	ld	s0,16(sp)
    80002a60:	00813483          	ld	s1,8(sp)
    80002a64:	00013903          	ld	s2,0(sp)
    80002a68:	02010113          	addi	sp,sp,32
    80002a6c:	00008067          	ret

0000000080002a70 <_ZN9Scheduler3putEP3TCB>:

TCB* Scheduler::head_ready = nullptr;
TCB* Scheduler::tail_ready = nullptr;
TCB* Scheduler::head_sleeping = nullptr;

void Scheduler::put(TCB *thread) {
    80002a70:	fe010113          	addi	sp,sp,-32
    80002a74:	00113c23          	sd	ra,24(sp)
    80002a78:	00813823          	sd	s0,16(sp)
    80002a7c:	00913423          	sd	s1,8(sp)
    80002a80:	02010413          	addi	s0,sp,32
    80002a84:	00050493          	mv	s1,a0
    if (tail_ready) {
    80002a88:	00009517          	auipc	a0,0x9
    80002a8c:	30853503          	ld	a0,776(a0) # 8000bd90 <_ZN9Scheduler10tail_readyE>
    80002a90:	02050e63          	beqz	a0,80002acc <_ZN9Scheduler3putEP3TCB+0x5c>
        tail_ready -> set_next_ready(thread);
    80002a94:	00048593          	mv	a1,s1
    80002a98:	00001097          	auipc	ra,0x1
    80002a9c:	83c080e7          	jalr	-1988(ra) # 800032d4 <_ZN3TCB14set_next_readyEPS_>
        tail_ready = thread;
    80002aa0:	00009797          	auipc	a5,0x9
    80002aa4:	2e97b823          	sd	s1,752(a5) # 8000bd90 <_ZN9Scheduler10tail_readyE>
    }
    else head_ready = tail_ready = thread;
    thread -> set_next_ready(nullptr);
    80002aa8:	00000593          	li	a1,0
    80002aac:	00048513          	mv	a0,s1
    80002ab0:	00001097          	auipc	ra,0x1
    80002ab4:	824080e7          	jalr	-2012(ra) # 800032d4 <_ZN3TCB14set_next_readyEPS_>
}
    80002ab8:	01813083          	ld	ra,24(sp)
    80002abc:	01013403          	ld	s0,16(sp)
    80002ac0:	00813483          	ld	s1,8(sp)
    80002ac4:	02010113          	addi	sp,sp,32
    80002ac8:	00008067          	ret
    else head_ready = tail_ready = thread;
    80002acc:	00009797          	auipc	a5,0x9
    80002ad0:	2c478793          	addi	a5,a5,708 # 8000bd90 <_ZN9Scheduler10tail_readyE>
    80002ad4:	0097b023          	sd	s1,0(a5)
    80002ad8:	0097b423          	sd	s1,8(a5)
    80002adc:	fcdff06f          	j	80002aa8 <_ZN9Scheduler3putEP3TCB+0x38>

0000000080002ae0 <_ZN9Scheduler3getEv>:

TCB* Scheduler::get() {
    80002ae0:	fe010113          	addi	sp,sp,-32
    80002ae4:	00113c23          	sd	ra,24(sp)
    80002ae8:	00813823          	sd	s0,16(sp)
    80002aec:	00913423          	sd	s1,8(sp)
    80002af0:	02010413          	addi	s0,sp,32
    if (!head_ready) return nullptr;
    80002af4:	00009497          	auipc	s1,0x9
    80002af8:	2a44b483          	ld	s1,676(s1) # 8000bd98 <_ZN9Scheduler10head_readyE>
    80002afc:	02048663          	beqz	s1,80002b28 <_ZN9Scheduler3getEv+0x48>
    TCB *tmp = head_ready;
    head_ready = head_ready -> get_next_ready();
    80002b00:	00048513          	mv	a0,s1
    80002b04:	00000097          	auipc	ra,0x0
    80002b08:	7b4080e7          	jalr	1972(ra) # 800032b8 <_ZNK3TCB14get_next_readyEv>
    80002b0c:	00009797          	auipc	a5,0x9
    80002b10:	28a7b623          	sd	a0,652(a5) # 8000bd98 <_ZN9Scheduler10head_readyE>
    if (!head_ready) tail_ready = nullptr;
    80002b14:	02050663          	beqz	a0,80002b40 <_ZN9Scheduler3getEv+0x60>
    tmp -> set_next_ready(nullptr);
    80002b18:	00000593          	li	a1,0
    80002b1c:	00048513          	mv	a0,s1
    80002b20:	00000097          	auipc	ra,0x0
    80002b24:	7b4080e7          	jalr	1972(ra) # 800032d4 <_ZN3TCB14set_next_readyEPS_>
    return tmp;
}
    80002b28:	00048513          	mv	a0,s1
    80002b2c:	01813083          	ld	ra,24(sp)
    80002b30:	01013403          	ld	s0,16(sp)
    80002b34:	00813483          	ld	s1,8(sp)
    80002b38:	02010113          	addi	sp,sp,32
    80002b3c:	00008067          	ret
    if (!head_ready) tail_ready = nullptr;
    80002b40:	00009797          	auipc	a5,0x9
    80002b44:	2407b823          	sd	zero,592(a5) # 8000bd90 <_ZN9Scheduler10tail_readyE>
    80002b48:	fd1ff06f          	j	80002b18 <_ZN9Scheduler3getEv+0x38>

0000000080002b4c <_ZN9Scheduler13change_threadEv>:
    thread -> set_next_sleeping(nullptr);
    change_thread();
    return 0;
}

void Scheduler::change_thread() {
    80002b4c:	fe010113          	addi	sp,sp,-32
    80002b50:	00113c23          	sd	ra,24(sp)
    80002b54:	00813823          	sd	s0,16(sp)
    80002b58:	00913423          	sd	s1,8(sp)
    80002b5c:	01213023          	sd	s2,0(sp)
    80002b60:	02010413          	addi	s0,sp,32
    TCB* old = TCB::running;
    80002b64:	00009917          	auipc	s2,0x9
    80002b68:	1a493903          	ld	s2,420(s2) # 8000bd08 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002b6c:	00093483          	ld	s1,0(s2)
    old -> set_status(TCB::SLEEPING);
    80002b70:	00100593          	li	a1,1
    80002b74:	00048513          	mv	a0,s1
    80002b78:	00000097          	auipc	ra,0x0
    80002b7c:	7e8080e7          	jalr	2024(ra) # 80003360 <_ZN3TCB10set_statusENS_6StatusE>
    TCB::running = Scheduler::get();
    80002b80:	00000097          	auipc	ra,0x0
    80002b84:	f60080e7          	jalr	-160(ra) # 80002ae0 <_ZN9Scheduler3getEv>
    80002b88:	00a93023          	sd	a0,0(s2)
    if (old != TCB::running) TCB::yield(old, TCB::running);
    80002b8c:	00a48a63          	beq	s1,a0,80002ba0 <_ZN9Scheduler13change_threadEv+0x54>
    80002b90:	00050593          	mv	a1,a0
    80002b94:	00048513          	mv	a0,s1
    80002b98:	00000097          	auipc	ra,0x0
    80002b9c:	650080e7          	jalr	1616(ra) # 800031e8 <_ZN3TCB5yieldEPS_S0_>
}
    80002ba0:	01813083          	ld	ra,24(sp)
    80002ba4:	01013403          	ld	s0,16(sp)
    80002ba8:	00813483          	ld	s1,8(sp)
    80002bac:	00013903          	ld	s2,0(sp)
    80002bb0:	02010113          	addi	sp,sp,32
    80002bb4:	00008067          	ret

0000000080002bb8 <_ZN9Scheduler12put_to_sleepEm>:
int Scheduler::put_to_sleep(time_t time) {
    80002bb8:	fc010113          	addi	sp,sp,-64
    80002bbc:	02113c23          	sd	ra,56(sp)
    80002bc0:	02813823          	sd	s0,48(sp)
    80002bc4:	02913423          	sd	s1,40(sp)
    80002bc8:	03213023          	sd	s2,32(sp)
    80002bcc:	01313c23          	sd	s3,24(sp)
    80002bd0:	01413823          	sd	s4,16(sp)
    80002bd4:	01513423          	sd	s5,8(sp)
    80002bd8:	04010413          	addi	s0,sp,64
    80002bdc:	00050993          	mv	s3,a0
    TCB* thread = TCB::running;
    80002be0:	00009797          	auipc	a5,0x9
    80002be4:	1287b783          	ld	a5,296(a5) # 8000bd08 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002be8:	0007ba83          	ld	s5,0(a5)
    if (!head_sleeping) {
    80002bec:	00009497          	auipc	s1,0x9
    80002bf0:	1b44b483          	ld	s1,436(s1) # 8000bda0 <_ZN9Scheduler13head_sleepingE>
    80002bf4:	02048e63          	beqz	s1,80002c30 <_ZN9Scheduler12put_to_sleepEm+0x78>
    time_t current_time = 0;
    80002bf8:	00000913          	li	s2,0
    TCB* tmp = head_sleeping, *prev = nullptr;
    80002bfc:	00000a13          	li	s4,0
    while (tmp) {
    80002c00:	0e048063          	beqz	s1,80002ce0 <_ZN9Scheduler12put_to_sleepEm+0x128>
        current_time += tmp -> get_time_to_sleep();
    80002c04:	00048513          	mv	a0,s1
    80002c08:	00000097          	auipc	ra,0x0
    80002c0c:	73c080e7          	jalr	1852(ra) # 80003344 <_ZNK3TCB17get_time_to_sleepEv>
    80002c10:	00a90933          	add	s2,s2,a0
        if (current_time > time) {
    80002c14:	0529e863          	bltu	s3,s2,80002c64 <_ZN9Scheduler12put_to_sleepEm+0xac>
        tmp = tmp -> get_next_sleeping();
    80002c18:	00048513          	mv	a0,s1
    80002c1c:	00000097          	auipc	ra,0x0
    80002c20:	6f0080e7          	jalr	1776(ra) # 8000330c <_ZNK3TCB17get_next_sleepingEv>
        prev = tmp;
    80002c24:	00048a13          	mv	s4,s1
        tmp = tmp -> get_next_sleeping();
    80002c28:	00050493          	mv	s1,a0
    while (tmp) {
    80002c2c:	fd5ff06f          	j	80002c00 <_ZN9Scheduler12put_to_sleepEm+0x48>
        head_sleeping = thread;
    80002c30:	00009797          	auipc	a5,0x9
    80002c34:	1757b823          	sd	s5,368(a5) # 8000bda0 <_ZN9Scheduler13head_sleepingE>
        thread -> set_next_sleeping(nullptr);
    80002c38:	00000593          	li	a1,0
    80002c3c:	000a8513          	mv	a0,s5
    80002c40:	00000097          	auipc	ra,0x0
    80002c44:	6b0080e7          	jalr	1712(ra) # 800032f0 <_ZN3TCB17set_next_sleepingEPS_>
        thread -> set_time_to_sleep(time);
    80002c48:	00098593          	mv	a1,s3
    80002c4c:	000a8513          	mv	a0,s5
    80002c50:	00000097          	auipc	ra,0x0
    80002c54:	6d8080e7          	jalr	1752(ra) # 80003328 <_ZN3TCB17set_time_to_sleepEm>
        change_thread();
    80002c58:	00000097          	auipc	ra,0x0
    80002c5c:	ef4080e7          	jalr	-268(ra) # 80002b4c <_ZN9Scheduler13change_threadEv>
        return 0;
    80002c60:	0b80006f          	j	80002d18 <_ZN9Scheduler12put_to_sleepEm+0x160>
            time_t new_time = time - (current_time - tmp -> get_time_to_sleep());
    80002c64:	00048513          	mv	a0,s1
    80002c68:	00000097          	auipc	ra,0x0
    80002c6c:	6dc080e7          	jalr	1756(ra) # 80003344 <_ZNK3TCB17get_time_to_sleepEv>
    80002c70:	41250933          	sub	s2,a0,s2
    80002c74:	013909b3          	add	s3,s2,s3
            thread -> set_time_to_sleep(new_time);
    80002c78:	00098593          	mv	a1,s3
    80002c7c:	000a8513          	mv	a0,s5
    80002c80:	00000097          	auipc	ra,0x0
    80002c84:	6a8080e7          	jalr	1704(ra) # 80003328 <_ZN3TCB17set_time_to_sleepEm>
            thread -> set_next_sleeping(tmp);
    80002c88:	00048593          	mv	a1,s1
    80002c8c:	000a8513          	mv	a0,s5
    80002c90:	00000097          	auipc	ra,0x0
    80002c94:	660080e7          	jalr	1632(ra) # 800032f0 <_ZN3TCB17set_next_sleepingEPS_>
            if (prev) prev -> set_next_sleeping(thread);
    80002c98:	020a0e63          	beqz	s4,80002cd4 <_ZN9Scheduler12put_to_sleepEm+0x11c>
    80002c9c:	000a8593          	mv	a1,s5
    80002ca0:	000a0513          	mv	a0,s4
    80002ca4:	00000097          	auipc	ra,0x0
    80002ca8:	64c080e7          	jalr	1612(ra) # 800032f0 <_ZN3TCB17set_next_sleepingEPS_>
            tmp -> set_time_to_sleep(tmp -> get_time_to_sleep() - new_time);
    80002cac:	00048513          	mv	a0,s1
    80002cb0:	00000097          	auipc	ra,0x0
    80002cb4:	694080e7          	jalr	1684(ra) # 80003344 <_ZNK3TCB17get_time_to_sleepEv>
    80002cb8:	413505b3          	sub	a1,a0,s3
    80002cbc:	00048513          	mv	a0,s1
    80002cc0:	00000097          	auipc	ra,0x0
    80002cc4:	668080e7          	jalr	1640(ra) # 80003328 <_ZN3TCB17set_time_to_sleepEm>
            change_thread();
    80002cc8:	00000097          	auipc	ra,0x0
    80002ccc:	e84080e7          	jalr	-380(ra) # 80002b4c <_ZN9Scheduler13change_threadEv>
            return 0;
    80002cd0:	0480006f          	j	80002d18 <_ZN9Scheduler12put_to_sleepEm+0x160>
            else head_sleeping = thread;
    80002cd4:	00009797          	auipc	a5,0x9
    80002cd8:	0d57b623          	sd	s5,204(a5) # 8000bda0 <_ZN9Scheduler13head_sleepingE>
    80002cdc:	fd1ff06f          	j	80002cac <_ZN9Scheduler12put_to_sleepEm+0xf4>
    thread -> set_time_to_sleep(time - current_time);
    80002ce0:	412985b3          	sub	a1,s3,s2
    80002ce4:	000a8513          	mv	a0,s5
    80002ce8:	00000097          	auipc	ra,0x0
    80002cec:	640080e7          	jalr	1600(ra) # 80003328 <_ZN3TCB17set_time_to_sleepEm>
    prev -> set_next_sleeping(thread);
    80002cf0:	000a8593          	mv	a1,s5
    80002cf4:	000a0513          	mv	a0,s4
    80002cf8:	00000097          	auipc	ra,0x0
    80002cfc:	5f8080e7          	jalr	1528(ra) # 800032f0 <_ZN3TCB17set_next_sleepingEPS_>
    thread -> set_next_sleeping(nullptr);
    80002d00:	00000593          	li	a1,0
    80002d04:	000a8513          	mv	a0,s5
    80002d08:	00000097          	auipc	ra,0x0
    80002d0c:	5e8080e7          	jalr	1512(ra) # 800032f0 <_ZN3TCB17set_next_sleepingEPS_>
    change_thread();
    80002d10:	00000097          	auipc	ra,0x0
    80002d14:	e3c080e7          	jalr	-452(ra) # 80002b4c <_ZN9Scheduler13change_threadEv>
}
    80002d18:	00000513          	li	a0,0
    80002d1c:	03813083          	ld	ra,56(sp)
    80002d20:	03013403          	ld	s0,48(sp)
    80002d24:	02813483          	ld	s1,40(sp)
    80002d28:	02013903          	ld	s2,32(sp)
    80002d2c:	01813983          	ld	s3,24(sp)
    80002d30:	01013a03          	ld	s4,16(sp)
    80002d34:	00813a83          	ld	s5,8(sp)
    80002d38:	04010113          	addi	sp,sp,64
    80002d3c:	00008067          	ret

0000000080002d40 <_ZN5RiscV10popSppSpieEv>:
    SUPERVISOR_INTERRUPT = 0x0000000000000009UL,
};

/// used in thread wrapper function when initializing thread because thread stack is empty
/// pc = (sepc = ra)
void RiscV::popSppSpie() {
    80002d40:	ff010113          	addi	sp,sp,-16
    80002d44:	00813423          	sd	s0,8(sp)
    80002d48:	01010413          	addi	s0,sp,16
    /// conditionally return to User mode
    if (TCB::running -> function_body && TCB::running->function_body != kernelConsoleOutput) mc_sstatus(SSTATUS_SPP);
    80002d4c:	00009797          	auipc	a5,0x9
    80002d50:	fbc7b783          	ld	a5,-68(a5) # 8000bd08 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002d54:	0007b783          	ld	a5,0(a5)
    80002d58:	0207b783          	ld	a5,32(a5)
    80002d5c:	00078c63          	beqz	a5,80002d74 <_ZN5RiscV10popSppSpieEv+0x34>
    80002d60:	00009717          	auipc	a4,0x9
    80002d64:	fa073703          	ld	a4,-96(a4) # 8000bd00 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002d68:	00e78663          	beq	a5,a4,80002d74 <_ZN5RiscV10popSppSpieEv+0x34>
}

inline void RiscV::mc_sstatus(uint64 mask) {
    __asm__ volatile ("csrc sstatus, %0" : : "r"(mask));
    80002d6c:	10000793          	li	a5,256
    80002d70:	1007b073          	csrc	sstatus,a5
    __asm__ volatile("csrw sepc, ra");
    80002d74:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80002d78:	10200073          	sret
}
    80002d7c:	00813403          	ld	s0,8(sp)
    80002d80:	01010113          	addi	sp,sp,16
    80002d84:	00008067          	ret

0000000080002d88 <_ZN5RiscV22handle_supervisor_trapEv>:

/// interrupt handler
void RiscV::handle_supervisor_trap() {
    80002d88:	fa010113          	addi	sp,sp,-96
    80002d8c:	04113c23          	sd	ra,88(sp)
    80002d90:	04813823          	sd	s0,80(sp)
    80002d94:	04913423          	sd	s1,72(sp)
    80002d98:	05213023          	sd	s2,64(sp)
    80002d9c:	03313c23          	sd	s3,56(sp)
    80002da0:	06010413          	addi	s0,sp,96
    /// read values from registers
    uint64 syscall_code, a1, a2, a3, a4;
    __asm__ volatile("mv %0, a0" : "=r"(syscall_code));
    80002da4:	00050793          	mv	a5,a0
    __asm__ volatile("mv %0, a1" : "=r"(a1));
    80002da8:	00058513          	mv	a0,a1
    __asm__ volatile("mv %0, a2" : "=r"(a2));
    80002dac:	00060593          	mv	a1,a2
    __asm__ volatile("mv %0, a3" : "=r"(a3));
    80002db0:	00068613          	mv	a2,a3
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    80002db4:	00070693          	mv	a3,a4
    __asm__ volatile ("csrr %0, scause" : "=r"(scause));
    80002db8:	14202773          	csrr	a4,scause
    80002dbc:	fae43423          	sd	a4,-88(s0)
    return scause;
    80002dc0:	fa843703          	ld	a4,-88(s0)

    uint64 scause = read_scause();

    /// interrupt from supervisor / user mode
    if (scause == USER_INTERRUPT || scause == SUPERVISOR_INTERRUPT) {
    80002dc4:	ff870893          	addi	a7,a4,-8
    80002dc8:	00100813          	li	a6,1
    80002dcc:	07187463          	bgeu	a6,a7,80002e34 <_ZN5RiscV22handle_supervisor_trapEv+0xac>
        write_sepc(sepc);
        write_sstatus(sstatus);
    }

    /// interrupt caused by Timer
    else if (scause == SOFTWARE_INTERRUPT) {
    80002dd0:	fff00793          	li	a5,-1
    80002dd4:	03f79793          	slli	a5,a5,0x3f
    80002dd8:	00178793          	addi	a5,a5,1
    80002ddc:	16f70463          	beq	a4,a5,80002f44 <_ZN5RiscV22handle_supervisor_trapEv+0x1bc>
//            write_sepc(sepc);
//        }
    }

    /// External interrupt (Console)
    else if (scause == HARDWARE_INTERRUPT) {
    80002de0:	fff00793          	li	a5,-1
    80002de4:	03f79793          	slli	a5,a5,0x3f
    80002de8:	00978793          	addi	a5,a5,9
    80002dec:	16f70263          	beq	a4,a5,80002f50 <_ZN5RiscV22handle_supervisor_trapEv+0x1c8>
        write_sstatus(sstatus);
        mc_sip(SIP_SEIP);
    }

    /// illegal instruction
    else if (scause == INVALID_INTERRUPT) {
    80002df0:	00200793          	li	a5,2
    80002df4:	08f71863          	bne	a4,a5,80002e84 <_ZN5RiscV22handle_supervisor_trapEv+0xfc>
        printNumber(scause);
    80002df8:	00070513          	mv	a0,a4
    80002dfc:	fffff097          	auipc	ra,0xfffff
    80002e00:	cac080e7          	jalr	-852(ra) # 80001aa8 <_Z11printNumberm>
        __putc('!');
    80002e04:	02100513          	li	a0,33
    80002e08:	00006097          	auipc	ra,0x6
    80002e0c:	f04080e7          	jalr	-252(ra) # 80008d0c <__putc>
        __putc('?');
    80002e10:	03f00513          	li	a0,63
    80002e14:	00006097          	auipc	ra,0x6
    80002e18:	ef8080e7          	jalr	-264(ra) # 80008d0c <__putc>
        __putc('!');
    80002e1c:	02100513          	li	a0,33
    80002e20:	00006097          	auipc	ra,0x6
    80002e24:	eec080e7          	jalr	-276(ra) # 80008d0c <__putc>
        uint64 val = 1;
        __asm__ volatile("mv a0, %0" : : "r"(val));
    80002e28:	00100793          	li	a5,1
    80002e2c:	00078513          	mv	a0,a5
        return;
    80002e30:	0540006f          	j	80002e84 <_ZN5RiscV22handle_supervisor_trapEv+0xfc>
    __asm__ volatile ("csrr %0, sepc" : "=r"(sepc));
    80002e34:	14102773          	csrr	a4,sepc
    80002e38:	fae43c23          	sd	a4,-72(s0)
    return sepc;
    80002e3c:	fb843483          	ld	s1,-72(s0)
        uint64 sepc = read_sepc() + 4;
    80002e40:	00448493          	addi	s1,s1,4
}

inline uint64 RiscV::read_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    80002e44:	10002773          	csrr	a4,sstatus
    80002e48:	fae43823          	sd	a4,-80(s0)
    return sstatus;
    80002e4c:	fb043903          	ld	s2,-80(s0)
        switch(syscall_code) {
    80002e50:	04200713          	li	a4,66
    80002e54:	02f76463          	bltu	a4,a5,80002e7c <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
    80002e58:	00279793          	slli	a5,a5,0x2
    80002e5c:	00006717          	auipc	a4,0x6
    80002e60:	1c470713          	addi	a4,a4,452 # 80009020 <CONSOLE_STATUS+0x10>
    80002e64:	00e787b3          	add	a5,a5,a4
    80002e68:	0007a783          	lw	a5,0(a5)
    80002e6c:	00e787b3          	add	a5,a5,a4
    80002e70:	00078067          	jr	a5
                MemoryAllocator::mem_alloc((size_t) a1);
    80002e74:	fffff097          	auipc	ra,0xfffff
    80002e78:	5e0080e7          	jalr	1504(ra) # 80002454 <_ZN15MemoryAllocator9mem_allocEm>
    __asm__ volatile ("csrw sepc, %0" : : "r"(val));
    80002e7c:	14149073          	csrw	sepc,s1
}

inline void RiscV::write_sstatus(uint64 val) {
    __asm__ volatile ("csrw sstatus, %0" : : "r"(val));
    80002e80:	10091073          	csrw	sstatus,s2
    }
    80002e84:	05813083          	ld	ra,88(sp)
    80002e88:	05013403          	ld	s0,80(sp)
    80002e8c:	04813483          	ld	s1,72(sp)
    80002e90:	04013903          	ld	s2,64(sp)
    80002e94:	03813983          	ld	s3,56(sp)
    80002e98:	06010113          	addi	sp,sp,96
    80002e9c:	00008067          	ret
                MemoryAllocator::mem_free((void *) a1);
    80002ea0:	fffff097          	auipc	ra,0xfffff
    80002ea4:	720080e7          	jalr	1824(ra) # 800025c0 <_ZN15MemoryAllocator8mem_freeEPv>
                break;
    80002ea8:	fd5ff06f          	j	80002e7c <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
                TCB::thread_create((thread_t *) a1, (void (*)(void *)) a2, (void *) a3, (void *) a4);
    80002eac:	00000097          	auipc	ra,0x0
    80002eb0:	5ac080e7          	jalr	1452(ra) # 80003458 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>
                break;
    80002eb4:	fc9ff06f          	j	80002e7c <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
                TCB::thread_exit();
    80002eb8:	00000097          	auipc	ra,0x0
    80002ebc:	4c4080e7          	jalr	1220(ra) # 8000337c <_ZN3TCB11thread_exitEv>
                break;
    80002ec0:	fbdff06f          	j	80002e7c <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
                TCB::dispatch();
    80002ec4:	00000097          	auipc	ra,0x0
    80002ec8:	380080e7          	jalr	896(ra) # 80003244 <_ZN3TCB8dispatchEv>
                break;
    80002ecc:	fb1ff06f          	j	80002e7c <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
                Sem::open((sem_t *) a1, a2);
    80002ed0:	0005859b          	sext.w	a1,a1
    80002ed4:	fffff097          	auipc	ra,0xfffff
    80002ed8:	a78080e7          	jalr	-1416(ra) # 8000194c <_ZN3Sem4openEPPS_j>
                break;
    80002edc:	fa1ff06f          	j	80002e7c <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
                Sem::close((sem_t) a1);
    80002ee0:	fffff097          	auipc	ra,0xfffff
    80002ee4:	8d4080e7          	jalr	-1836(ra) # 800017b4 <_ZN3Sem5closeEPS_>
                break;
    80002ee8:	f95ff06f          	j	80002e7c <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
                Sem::wait((sem_t) a1);
    80002eec:	fffff097          	auipc	ra,0xfffff
    80002ef0:	934080e7          	jalr	-1740(ra) # 80001820 <_ZN3Sem4waitEPS_>
                break;
    80002ef4:	f89ff06f          	j	80002e7c <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
                Sem::signal((sem_t) a1);
    80002ef8:	fffff097          	auipc	ra,0xfffff
    80002efc:	97c080e7          	jalr	-1668(ra) # 80001874 <_ZN3Sem6signalEPS_>
                break;
    80002f00:	f7dff06f          	j	80002e7c <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
                Sem::timedWait((sem_t) a1, (time_t) a2);
    80002f04:	fffff097          	auipc	ra,0xfffff
    80002f08:	9c4080e7          	jalr	-1596(ra) # 800018c8 <_ZN3Sem9timedWaitEPS_m>
                break;
    80002f0c:	f71ff06f          	j	80002e7c <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
                Sem::tryWait((sem_t) a1);
    80002f10:	fffff097          	auipc	ra,0xfffff
    80002f14:	9d4080e7          	jalr	-1580(ra) # 800018e4 <_ZN3Sem7tryWaitEPS_>
                break;
    80002f18:	f65ff06f          	j	80002e7c <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
                Scheduler::put_to_sleep((time_t) a1);
    80002f1c:	00000097          	auipc	ra,0x0
    80002f20:	c9c080e7          	jalr	-868(ra) # 80002bb8 <_ZN9Scheduler12put_to_sleepEm>
                break;
    80002f24:	f59ff06f          	j	80002e7c <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
                Con::getc_input();
    80002f28:	fffff097          	auipc	ra,0xfffff
    80002f2c:	fc0080e7          	jalr	-64(ra) # 80001ee8 <_ZN3Con10getc_inputEv>
                break;
    80002f30:	f4dff06f          	j	80002e7c <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
                Con::putc_output((char) a1);
    80002f34:	0ff57513          	andi	a0,a0,255
    80002f38:	fffff097          	auipc	ra,0xfffff
    80002f3c:	f18080e7          	jalr	-232(ra) # 80001e50 <_ZN3Con11putc_outputEc>
                break;
    80002f40:	f3dff06f          	j	80002e7c <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
    __asm__ volatile ("csrc sip, %0" : : "r"(mask));
    80002f44:	00200793          	li	a5,2
    80002f48:	1447b073          	csrc	sip,a5
}
    80002f4c:	f39ff06f          	j	80002e84 <_ZN5RiscV22handle_supervisor_trapEv+0xfc>
    __asm__ volatile ("csrr %0, sepc" : "=r"(sepc));
    80002f50:	141027f3          	csrr	a5,sepc
    80002f54:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80002f58:	fc843983          	ld	s3,-56(s0)
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    80002f5c:	100027f3          	csrr	a5,sstatus
    80002f60:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80002f64:	fc043903          	ld	s2,-64(s0)
        int irq = plic_claim();
    80002f68:	00004097          	auipc	ra,0x4
    80002f6c:	53c080e7          	jalr	1340(ra) # 800074a4 <plic_claim>
    80002f70:	00050493          	mv	s1,a0
        if (irq == CONSOLE_IRQ) {
    80002f74:	00a00793          	li	a5,10
    80002f78:	02f50263          	beq	a0,a5,80002f9c <_ZN5RiscV22handle_supervisor_trapEv+0x214>
        plic_complete(irq);
    80002f7c:	00048513          	mv	a0,s1
    80002f80:	00004097          	auipc	ra,0x4
    80002f84:	55c080e7          	jalr	1372(ra) # 800074dc <plic_complete>
    __asm__ volatile ("csrw sepc, %0" : : "r"(val));
    80002f88:	14199073          	csrw	sepc,s3
    __asm__ volatile ("csrw sstatus, %0" : : "r"(val));
    80002f8c:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrc sip, %0" : : "r"(mask));
    80002f90:	20000793          	li	a5,512
    80002f94:	1447b073          	csrc	sip,a5
}
    80002f98:	eedff06f          	j	80002e84 <_ZN5RiscV22handle_supervisor_trapEv+0xfc>
            while (*(char *) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT) {
    80002f9c:	00009797          	auipc	a5,0x9
    80002fa0:	d3c7b783          	ld	a5,-708(a5) # 8000bcd8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002fa4:	0007b783          	ld	a5,0(a5)
    80002fa8:	0007c783          	lbu	a5,0(a5)
    80002fac:	0017f793          	andi	a5,a5,1
    80002fb0:	fc0786e3          	beqz	a5,80002f7c <_ZN5RiscV22handle_supervisor_trapEv+0x1f4>
                char c = *(char *) CONSOLE_RX_DATA;
    80002fb4:	00009797          	auipc	a5,0x9
    80002fb8:	d1c7b783          	ld	a5,-740(a5) # 8000bcd0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002fbc:	0007b783          	ld	a5,0(a5)
                Con::putc_input(c);
    80002fc0:	0007c503          	lbu	a0,0(a5)
    80002fc4:	fffff097          	auipc	ra,0xfffff
    80002fc8:	ef0080e7          	jalr	-272(ra) # 80001eb4 <_ZN3Con10putc_inputEc>
            while (*(char *) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT) {
    80002fcc:	fd1ff06f          	j	80002f9c <_ZN5RiscV22handle_supervisor_trapEv+0x214>

0000000080002fd0 <_ZN10ThreadList9get_firstEv>:

void ThreadList::push_back(TCB *thread) {
    tail = (head ? tail -> next : head) = new Node(thread);
}

TCB *ThreadList::get_first() {
    80002fd0:	ff010113          	addi	sp,sp,-16
    80002fd4:	00813423          	sd	s0,8(sp)
    80002fd8:	01010413          	addi	s0,sp,16
    return (head ? head -> data : nullptr);
    80002fdc:	00053503          	ld	a0,0(a0)
    80002fe0:	00050463          	beqz	a0,80002fe8 <_ZN10ThreadList9get_firstEv+0x18>
    80002fe4:	00053503          	ld	a0,0(a0)
}
    80002fe8:	00813403          	ld	s0,8(sp)
    80002fec:	01010113          	addi	sp,sp,16
    80002ff0:	00008067          	ret

0000000080002ff4 <_ZN10ThreadList4NodenwEm>:

void ThreadList::free() {
    while (get_first()) remove_first();
}

void *ThreadList::Node::operator new(size_t size) {
    80002ff4:	ff010113          	addi	sp,sp,-16
    80002ff8:	00113423          	sd	ra,8(sp)
    80002ffc:	00813023          	sd	s0,0(sp)
    80003000:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    80003004:	fffff097          	auipc	ra,0xfffff
    80003008:	7fc080e7          	jalr	2044(ra) # 80002800 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    8000300c:	fffff097          	auipc	ra,0xfffff
    80003010:	448080e7          	jalr	1096(ra) # 80002454 <_ZN15MemoryAllocator9mem_allocEm>
}
    80003014:	00813083          	ld	ra,8(sp)
    80003018:	00013403          	ld	s0,0(sp)
    8000301c:	01010113          	addi	sp,sp,16
    80003020:	00008067          	ret

0000000080003024 <_ZN10ThreadList9push_backEP3TCB>:
void ThreadList::push_back(TCB *thread) {
    80003024:	fe010113          	addi	sp,sp,-32
    80003028:	00113c23          	sd	ra,24(sp)
    8000302c:	00813823          	sd	s0,16(sp)
    80003030:	00913423          	sd	s1,8(sp)
    80003034:	01213023          	sd	s2,0(sp)
    80003038:	02010413          	addi	s0,sp,32
    8000303c:	00050493          	mv	s1,a0
    80003040:	00058913          	mv	s2,a1
    tail = (head ? tail -> next : head) = new Node(thread);
    80003044:	01000513          	li	a0,16
    80003048:	00000097          	auipc	ra,0x0
    8000304c:	fac080e7          	jalr	-84(ra) # 80002ff4 <_ZN10ThreadList4NodenwEm>
        struct Node *next;

        void* operator new(size_t size);
        void operator delete(void* addr);

        explicit Node(TCB* data) : data(data), next(nullptr) {}
    80003050:	01253023          	sd	s2,0(a0)
    80003054:	00053423          	sd	zero,8(a0)
    80003058:	0004b783          	ld	a5,0(s1)
    8000305c:	02078463          	beqz	a5,80003084 <_ZN10ThreadList9push_backEP3TCB+0x60>
    80003060:	0084b783          	ld	a5,8(s1)
    80003064:	00a7b423          	sd	a0,8(a5)
    80003068:	00a4b423          	sd	a0,8(s1)
}
    8000306c:	01813083          	ld	ra,24(sp)
    80003070:	01013403          	ld	s0,16(sp)
    80003074:	00813483          	ld	s1,8(sp)
    80003078:	00013903          	ld	s2,0(sp)
    8000307c:	02010113          	addi	sp,sp,32
    80003080:	00008067          	ret
    tail = (head ? tail -> next : head) = new Node(thread);
    80003084:	00a4b023          	sd	a0,0(s1)
    80003088:	fe1ff06f          	j	80003068 <_ZN10ThreadList9push_backEP3TCB+0x44>

000000008000308c <_ZN10ThreadList4NodedlEPv>:

void ThreadList::Node::operator delete(void *addr) {
    8000308c:	ff010113          	addi	sp,sp,-16
    80003090:	00113423          	sd	ra,8(sp)
    80003094:	00813023          	sd	s0,0(sp)
    80003098:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    8000309c:	fffff097          	auipc	ra,0xfffff
    800030a0:	524080e7          	jalr	1316(ra) # 800025c0 <_ZN15MemoryAllocator8mem_freeEPv>
}
    800030a4:	00813083          	ld	ra,8(sp)
    800030a8:	00013403          	ld	s0,0(sp)
    800030ac:	01010113          	addi	sp,sp,16
    800030b0:	00008067          	ret

00000000800030b4 <_ZN10ThreadList12remove_firstEv>:
TCB *ThreadList::remove_first() {
    800030b4:	fe010113          	addi	sp,sp,-32
    800030b8:	00113c23          	sd	ra,24(sp)
    800030bc:	00813823          	sd	s0,16(sp)
    800030c0:	00913423          	sd	s1,8(sp)
    800030c4:	02010413          	addi	s0,sp,32
    800030c8:	00050793          	mv	a5,a0
    if (!head) return nullptr;
    800030cc:	00053503          	ld	a0,0(a0)
    800030d0:	02050863          	beqz	a0,80003100 <_ZN10ThreadList12remove_firstEv+0x4c>
    TCB* thread = tmp -> data;
    800030d4:	00053483          	ld	s1,0(a0)
    head = head -> next;
    800030d8:	00853703          	ld	a4,8(a0)
    800030dc:	00e7b023          	sd	a4,0(a5)
    delete tmp;
    800030e0:	00000097          	auipc	ra,0x0
    800030e4:	fac080e7          	jalr	-84(ra) # 8000308c <_ZN10ThreadList4NodedlEPv>
}
    800030e8:	00048513          	mv	a0,s1
    800030ec:	01813083          	ld	ra,24(sp)
    800030f0:	01013403          	ld	s0,16(sp)
    800030f4:	00813483          	ld	s1,8(sp)
    800030f8:	02010113          	addi	sp,sp,32
    800030fc:	00008067          	ret
    if (!head) return nullptr;
    80003100:	00050493          	mv	s1,a0
    80003104:	fe5ff06f          	j	800030e8 <_ZN10ThreadList12remove_firstEv+0x34>

0000000080003108 <_ZN10ThreadList4freeEv>:
void ThreadList::free() {
    80003108:	fe010113          	addi	sp,sp,-32
    8000310c:	00113c23          	sd	ra,24(sp)
    80003110:	00813823          	sd	s0,16(sp)
    80003114:	00913423          	sd	s1,8(sp)
    80003118:	02010413          	addi	s0,sp,32
    8000311c:	00050493          	mv	s1,a0
    while (get_first()) remove_first();
    80003120:	00048513          	mv	a0,s1
    80003124:	00000097          	auipc	ra,0x0
    80003128:	eac080e7          	jalr	-340(ra) # 80002fd0 <_ZN10ThreadList9get_firstEv>
    8000312c:	00050a63          	beqz	a0,80003140 <_ZN10ThreadList4freeEv+0x38>
    80003130:	00048513          	mv	a0,s1
    80003134:	00000097          	auipc	ra,0x0
    80003138:	f80080e7          	jalr	-128(ra) # 800030b4 <_ZN10ThreadList12remove_firstEv>
    8000313c:	fe5ff06f          	j	80003120 <_ZN10ThreadList4freeEv+0x18>
}
    80003140:	01813083          	ld	ra,24(sp)
    80003144:	01013403          	ld	s0,16(sp)
    80003148:	00813483          	ld	s1,8(sp)
    8000314c:	02010113          	addi	sp,sp,32
    80003150:	00008067          	ret

0000000080003154 <_ZN3TCBC1EPFvPvES0_S0_>:

TCB::TCB(void (*function_body)(void *), void *arg, void *stack) {
    context = {
            (uint64) wrapper_function,
            /// stack starts from max address, rises to lower locations
            (uint64) (stack ? (uint64) stack + DEFAULT_STACK_SIZE - 1 : 0)
    80003154:	08068463          	beqz	a3,800031dc <_ZN3TCBC1EPFvPvES0_S0_+0x88>
    80003158:	000017b7          	lui	a5,0x1
    8000315c:	fff78793          	addi	a5,a5,-1 # fff <_entry-0x7ffff001>
    80003160:	00f687b3          	add	a5,a3,a5
    context = {
    80003164:	00000717          	auipc	a4,0x0
    80003168:	25470713          	addi	a4,a4,596 # 800033b8 <_ZN3TCB16wrapper_functionEv>
    8000316c:	00e53423          	sd	a4,8(a0)
    80003170:	00f53823          	sd	a5,16(a0)
    };
    id = cnt++;
    80003174:	00009717          	auipc	a4,0x9
    80003178:	c3470713          	addi	a4,a4,-972 # 8000bda8 <_ZN3TCB3cntE>
    8000317c:	00072783          	lw	a5,0(a4)
    80003180:	0017881b          	addiw	a6,a5,1
    80003184:	01072023          	sw	a6,0(a4)
    80003188:	00f52023          	sw	a5,0(a0)
    status = RUNNABLE;
    8000318c:	00052c23          	sw	zero,24(a0)
    this -> function_body = function_body;
    80003190:	02b53023          	sd	a1,32(a0)
    this -> arg = arg;
    80003194:	02c53423          	sd	a2,40(a0)
    this -> stack = stack;
    80003198:	02d53823          	sd	a3,48(a0)
    time_slice = DEFAULT_TIME_SLICE;
    8000319c:	00200793          	li	a5,2
    800031a0:	02f53c23          	sd	a5,56(a0)
    time_to_sleep = 0;
    800031a4:	04053423          	sd	zero,72(a0)
    next_ready = nullptr;
    800031a8:	04053023          	sd	zero,64(a0)
    next_sleeping = nullptr;
    800031ac:	04053823          	sd	zero,80(a0)
    if (function_body) Scheduler::put(this);
    800031b0:	02058a63          	beqz	a1,800031e4 <_ZN3TCBC1EPFvPvES0_S0_+0x90>
TCB::TCB(void (*function_body)(void *), void *arg, void *stack) {
    800031b4:	ff010113          	addi	sp,sp,-16
    800031b8:	00113423          	sd	ra,8(sp)
    800031bc:	00813023          	sd	s0,0(sp)
    800031c0:	01010413          	addi	s0,sp,16
    if (function_body) Scheduler::put(this);
    800031c4:	00000097          	auipc	ra,0x0
    800031c8:	8ac080e7          	jalr	-1876(ra) # 80002a70 <_ZN9Scheduler3putEP3TCB>
}
    800031cc:	00813083          	ld	ra,8(sp)
    800031d0:	00013403          	ld	s0,0(sp)
    800031d4:	01010113          	addi	sp,sp,16
    800031d8:	00008067          	ret
            (uint64) (stack ? (uint64) stack + DEFAULT_STACK_SIZE - 1 : 0)
    800031dc:	00000793          	li	a5,0
    800031e0:	f85ff06f          	j	80003164 <_ZN3TCBC1EPFvPvES0_S0_+0x10>
    800031e4:	00008067          	ret

00000000800031e8 <_ZN3TCB5yieldEPS_S0_>:
    RiscV::popSppSpie();
    if (running -> function_body) running -> function_body(running -> arg);
    thread_exit();
}

void TCB::yield(TCB *old_running, TCB *new_running) {
    800031e8:	fe010113          	addi	sp,sp,-32
    800031ec:	00113c23          	sd	ra,24(sp)
    800031f0:	00813823          	sd	s0,16(sp)
    800031f4:	00913423          	sd	s1,8(sp)
    800031f8:	01213023          	sd	s2,0(sp)
    800031fc:	02010413          	addi	s0,sp,32
    80003200:	00050493          	mv	s1,a0
    80003204:	00058913          	mv	s2,a1
    RiscV::push_registers();
    80003208:	ffffe097          	auipc	ra,0xffffe
    8000320c:	f00080e7          	jalr	-256(ra) # 80001108 <_ZN5RiscV14push_registersEv>
    if (old_running != new_running) context_switch(&old_running -> context, &new_running -> context);
    80003210:	01248a63          	beq	s1,s2,80003224 <_ZN3TCB5yieldEPS_S0_+0x3c>
    80003214:	00890593          	addi	a1,s2,8
    80003218:	00848513          	addi	a0,s1,8
    8000321c:	ffffe097          	auipc	ra,0xffffe
    80003220:	fec080e7          	jalr	-20(ra) # 80001208 <_ZN3TCB14context_switchEPNS_7ContextES1_>
    RiscV::pop_registers();
    80003224:	ffffe097          	auipc	ra,0xffffe
    80003228:	f64080e7          	jalr	-156(ra) # 80001188 <_ZN5RiscV13pop_registersEv>
}
    8000322c:	01813083          	ld	ra,24(sp)
    80003230:	01013403          	ld	s0,16(sp)
    80003234:	00813483          	ld	s1,8(sp)
    80003238:	00013903          	ld	s2,0(sp)
    8000323c:	02010113          	addi	sp,sp,32
    80003240:	00008067          	ret

0000000080003244 <_ZN3TCB8dispatchEv>:

void TCB::dispatch() {
    80003244:	fe010113          	addi	sp,sp,-32
    80003248:	00113c23          	sd	ra,24(sp)
    8000324c:	00813823          	sd	s0,16(sp)
    80003250:	00913423          	sd	s1,8(sp)
    80003254:	02010413          	addi	s0,sp,32
    TCB* old = running;
    80003258:	00009497          	auipc	s1,0x9
    8000325c:	b584b483          	ld	s1,-1192(s1) # 8000bdb0 <_ZN3TCB7runningE>
    if (old -> status == RUNNABLE) Scheduler::put(old);
    80003260:	0184a783          	lw	a5,24(s1)
    80003264:	04078263          	beqz	a5,800032a8 <_ZN3TCB8dispatchEv+0x64>
//    else if (old -> status == FINISHED) MemoryAllocator::mem_free(old -> stack);
    running = Scheduler::get();
    80003268:	00000097          	auipc	ra,0x0
    8000326c:	878080e7          	jalr	-1928(ra) # 80002ae0 <_ZN9Scheduler3getEv>
    80003270:	00050593          	mv	a1,a0
    80003274:	00009797          	auipc	a5,0x9
    80003278:	b3478793          	addi	a5,a5,-1228 # 8000bda8 <_ZN3TCB3cntE>
    8000327c:	00a7b423          	sd	a0,8(a5)
    time_slice_counter = 0;
    80003280:	0007b823          	sd	zero,16(a5)
    if (old != running) yield(old, running);
    80003284:	00a48863          	beq	s1,a0,80003294 <_ZN3TCB8dispatchEv+0x50>
    80003288:	00048513          	mv	a0,s1
    8000328c:	00000097          	auipc	ra,0x0
    80003290:	f5c080e7          	jalr	-164(ra) # 800031e8 <_ZN3TCB5yieldEPS_S0_>
}
    80003294:	01813083          	ld	ra,24(sp)
    80003298:	01013403          	ld	s0,16(sp)
    8000329c:	00813483          	ld	s1,8(sp)
    800032a0:	02010113          	addi	sp,sp,32
    800032a4:	00008067          	ret
    if (old -> status == RUNNABLE) Scheduler::put(old);
    800032a8:	00048513          	mv	a0,s1
    800032ac:	fffff097          	auipc	ra,0xfffff
    800032b0:	7c4080e7          	jalr	1988(ra) # 80002a70 <_ZN9Scheduler3putEP3TCB>
    800032b4:	fb5ff06f          	j	80003268 <_ZN3TCB8dispatchEv+0x24>

00000000800032b8 <_ZNK3TCB14get_next_readyEv>:

TCB *TCB::get_next_ready() const {
    800032b8:	ff010113          	addi	sp,sp,-16
    800032bc:	00813423          	sd	s0,8(sp)
    800032c0:	01010413          	addi	s0,sp,16
    return next_ready;
}
    800032c4:	04053503          	ld	a0,64(a0)
    800032c8:	00813403          	ld	s0,8(sp)
    800032cc:	01010113          	addi	sp,sp,16
    800032d0:	00008067          	ret

00000000800032d4 <_ZN3TCB14set_next_readyEPS_>:

void TCB::set_next_ready(TCB *next) {
    800032d4:	ff010113          	addi	sp,sp,-16
    800032d8:	00813423          	sd	s0,8(sp)
    800032dc:	01010413          	addi	s0,sp,16
    next_ready = next;
    800032e0:	04b53023          	sd	a1,64(a0)
}
    800032e4:	00813403          	ld	s0,8(sp)
    800032e8:	01010113          	addi	sp,sp,16
    800032ec:	00008067          	ret

00000000800032f0 <_ZN3TCB17set_next_sleepingEPS_>:

void TCB::set_next_sleeping(TCB *next) {
    800032f0:	ff010113          	addi	sp,sp,-16
    800032f4:	00813423          	sd	s0,8(sp)
    800032f8:	01010413          	addi	s0,sp,16
    next_sleeping = next;
    800032fc:	04b53823          	sd	a1,80(a0)
}
    80003300:	00813403          	ld	s0,8(sp)
    80003304:	01010113          	addi	sp,sp,16
    80003308:	00008067          	ret

000000008000330c <_ZNK3TCB17get_next_sleepingEv>:

TCB* TCB::get_next_sleeping() const {
    8000330c:	ff010113          	addi	sp,sp,-16
    80003310:	00813423          	sd	s0,8(sp)
    80003314:	01010413          	addi	s0,sp,16
    return next_sleeping;
}
    80003318:	05053503          	ld	a0,80(a0)
    8000331c:	00813403          	ld	s0,8(sp)
    80003320:	01010113          	addi	sp,sp,16
    80003324:	00008067          	ret

0000000080003328 <_ZN3TCB17set_time_to_sleepEm>:

void TCB::set_time_to_sleep(time_t time) {
    80003328:	ff010113          	addi	sp,sp,-16
    8000332c:	00813423          	sd	s0,8(sp)
    80003330:	01010413          	addi	s0,sp,16
    time_to_sleep = time;
    80003334:	04b53423          	sd	a1,72(a0)
}
    80003338:	00813403          	ld	s0,8(sp)
    8000333c:	01010113          	addi	sp,sp,16
    80003340:	00008067          	ret

0000000080003344 <_ZNK3TCB17get_time_to_sleepEv>:

time_t TCB::get_time_to_sleep() const {
    80003344:	ff010113          	addi	sp,sp,-16
    80003348:	00813423          	sd	s0,8(sp)
    8000334c:	01010413          	addi	s0,sp,16
    return time_to_sleep;
}
    80003350:	04853503          	ld	a0,72(a0)
    80003354:	00813403          	ld	s0,8(sp)
    80003358:	01010113          	addi	sp,sp,16
    8000335c:	00008067          	ret

0000000080003360 <_ZN3TCB10set_statusENS_6StatusE>:

void TCB::set_status(TCB::Status stat) {
    80003360:	ff010113          	addi	sp,sp,-16
    80003364:	00813423          	sd	s0,8(sp)
    80003368:	01010413          	addi	s0,sp,16
    this -> status = stat;
    8000336c:	00b52c23          	sw	a1,24(a0)
}
    80003370:	00813403          	ld	s0,8(sp)
    80003374:	01010113          	addi	sp,sp,16
    80003378:	00008067          	ret

000000008000337c <_ZN3TCB11thread_exitEv>:
void TCB::thread_exit() {
    8000337c:	ff010113          	addi	sp,sp,-16
    80003380:	00113423          	sd	ra,8(sp)
    80003384:	00813023          	sd	s0,0(sp)
    80003388:	01010413          	addi	s0,sp,16
    running -> set_status(Status::FINISHED);
    8000338c:	00300593          	li	a1,3
    80003390:	00009517          	auipc	a0,0x9
    80003394:	a2053503          	ld	a0,-1504(a0) # 8000bdb0 <_ZN3TCB7runningE>
    80003398:	00000097          	auipc	ra,0x0
    8000339c:	fc8080e7          	jalr	-56(ra) # 80003360 <_ZN3TCB10set_statusENS_6StatusE>
    thread_dispatch();
    800033a0:	ffffe097          	auipc	ra,0xffffe
    800033a4:	02c080e7          	jalr	44(ra) # 800013cc <_Z15thread_dispatchv>
}
    800033a8:	00813083          	ld	ra,8(sp)
    800033ac:	00013403          	ld	s0,0(sp)
    800033b0:	01010113          	addi	sp,sp,16
    800033b4:	00008067          	ret

00000000800033b8 <_ZN3TCB16wrapper_functionEv>:
void TCB::wrapper_function() {
    800033b8:	ff010113          	addi	sp,sp,-16
    800033bc:	00113423          	sd	ra,8(sp)
    800033c0:	00813023          	sd	s0,0(sp)
    800033c4:	01010413          	addi	s0,sp,16
    RiscV::popSppSpie();
    800033c8:	00000097          	auipc	ra,0x0
    800033cc:	978080e7          	jalr	-1672(ra) # 80002d40 <_ZN5RiscV10popSppSpieEv>
    if (running -> function_body) running -> function_body(running -> arg);
    800033d0:	00009717          	auipc	a4,0x9
    800033d4:	9e073703          	ld	a4,-1568(a4) # 8000bdb0 <_ZN3TCB7runningE>
    800033d8:	02073783          	ld	a5,32(a4)
    800033dc:	00078663          	beqz	a5,800033e8 <_ZN3TCB16wrapper_functionEv+0x30>
    800033e0:	02873503          	ld	a0,40(a4)
    800033e4:	000780e7          	jalr	a5
    thread_exit();
    800033e8:	00000097          	auipc	ra,0x0
    800033ec:	f94080e7          	jalr	-108(ra) # 8000337c <_ZN3TCB11thread_exitEv>
}
    800033f0:	00813083          	ld	ra,8(sp)
    800033f4:	00013403          	ld	s0,0(sp)
    800033f8:	01010113          	addi	sp,sp,16
    800033fc:	00008067          	ret

0000000080003400 <_ZN3TCBnwEm>:

void *TCB::operator new(size_t size) {
    80003400:	ff010113          	addi	sp,sp,-16
    80003404:	00113423          	sd	ra,8(sp)
    80003408:	00813023          	sd	s0,0(sp)
    8000340c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    80003410:	fffff097          	auipc	ra,0xfffff
    80003414:	3f0080e7          	jalr	1008(ra) # 80002800 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80003418:	fffff097          	auipc	ra,0xfffff
    8000341c:	03c080e7          	jalr	60(ra) # 80002454 <_ZN15MemoryAllocator9mem_allocEm>
}
    80003420:	00813083          	ld	ra,8(sp)
    80003424:	00013403          	ld	s0,0(sp)
    80003428:	01010113          	addi	sp,sp,16
    8000342c:	00008067          	ret

0000000080003430 <_ZN3TCBdlEPv>:

void TCB::operator delete(void *addr) {
    80003430:	ff010113          	addi	sp,sp,-16
    80003434:	00113423          	sd	ra,8(sp)
    80003438:	00813023          	sd	s0,0(sp)
    8000343c:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    80003440:	fffff097          	auipc	ra,0xfffff
    80003444:	180080e7          	jalr	384(ra) # 800025c0 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80003448:	00813083          	ld	ra,8(sp)
    8000344c:	00013403          	ld	s0,0(sp)
    80003450:	01010113          	addi	sp,sp,16
    80003454:	00008067          	ret

0000000080003458 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>:
int TCB::thread_create(thread_t *handle, void(*start_routine)(void *), void *arg, void *stack_begin_address) {
    80003458:	fc010113          	addi	sp,sp,-64
    8000345c:	02113c23          	sd	ra,56(sp)
    80003460:	02813823          	sd	s0,48(sp)
    80003464:	02913423          	sd	s1,40(sp)
    80003468:	03213023          	sd	s2,32(sp)
    8000346c:	01313c23          	sd	s3,24(sp)
    80003470:	01413823          	sd	s4,16(sp)
    80003474:	01513423          	sd	s5,8(sp)
    80003478:	04010413          	addi	s0,sp,64
    8000347c:	00050913          	mv	s2,a0
    80003480:	00058993          	mv	s3,a1
    80003484:	00060a13          	mv	s4,a2
    80003488:	00068a93          	mv	s5,a3
    *handle = new TCB(start_routine, arg, stack_begin_address);
    8000348c:	05800513          	li	a0,88
    80003490:	00000097          	auipc	ra,0x0
    80003494:	f70080e7          	jalr	-144(ra) # 80003400 <_ZN3TCBnwEm>
    80003498:	00050493          	mv	s1,a0
    8000349c:	000a8693          	mv	a3,s5
    800034a0:	000a0613          	mv	a2,s4
    800034a4:	00098593          	mv	a1,s3
    800034a8:	00000097          	auipc	ra,0x0
    800034ac:	cac080e7          	jalr	-852(ra) # 80003154 <_ZN3TCBC1EPFvPvES0_S0_>
    800034b0:	0200006f          	j	800034d0 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_+0x78>
    800034b4:	00050913          	mv	s2,a0
    800034b8:	00048513          	mv	a0,s1
    800034bc:	00000097          	auipc	ra,0x0
    800034c0:	f74080e7          	jalr	-140(ra) # 80003430 <_ZN3TCBdlEPv>
    800034c4:	00090513          	mv	a0,s2
    800034c8:	0000a097          	auipc	ra,0xa
    800034cc:	a30080e7          	jalr	-1488(ra) # 8000cef8 <_Unwind_Resume>
    800034d0:	00993023          	sd	s1,0(s2)
}
    800034d4:	00000513          	li	a0,0
    800034d8:	03813083          	ld	ra,56(sp)
    800034dc:	03013403          	ld	s0,48(sp)
    800034e0:	02813483          	ld	s1,40(sp)
    800034e4:	02013903          	ld	s2,32(sp)
    800034e8:	01813983          	ld	s3,24(sp)
    800034ec:	01013a03          	ld	s4,16(sp)
    800034f0:	00813a83          	ld	s5,8(sp)
    800034f4:	04010113          	addi	sp,sp,64
    800034f8:	00008067          	ret

00000000800034fc <_ZN3TCBnaEm>:

void *TCB::operator new[](size_t size) {
    800034fc:	ff010113          	addi	sp,sp,-16
    80003500:	00113423          	sd	ra,8(sp)
    80003504:	00813023          	sd	s0,0(sp)
    80003508:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    8000350c:	fffff097          	auipc	ra,0xfffff
    80003510:	2f4080e7          	jalr	756(ra) # 80002800 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80003514:	fffff097          	auipc	ra,0xfffff
    80003518:	f40080e7          	jalr	-192(ra) # 80002454 <_ZN15MemoryAllocator9mem_allocEm>
}
    8000351c:	00813083          	ld	ra,8(sp)
    80003520:	00013403          	ld	s0,0(sp)
    80003524:	01010113          	addi	sp,sp,16
    80003528:	00008067          	ret

000000008000352c <_ZN3TCBdaEPv>:

void TCB::operator delete[](void *addr) {
    8000352c:	ff010113          	addi	sp,sp,-16
    80003530:	00113423          	sd	ra,8(sp)
    80003534:	00813023          	sd	s0,0(sp)
    80003538:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    8000353c:	fffff097          	auipc	ra,0xfffff
    80003540:	084080e7          	jalr	132(ra) # 800025c0 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80003544:	00813083          	ld	ra,8(sp)
    80003548:	00013403          	ld	s0,0(sp)
    8000354c:	01010113          	addi	sp,sp,16
    80003550:	00008067          	ret

0000000080003554 <_ZNK3TCB11is_finishedEv>:

bool TCB::is_finished() const {
    80003554:	ff010113          	addi	sp,sp,-16
    80003558:	00813423          	sd	s0,8(sp)
    8000355c:	01010413          	addi	s0,sp,16
    return status == FINISHED;
    80003560:	01852503          	lw	a0,24(a0)
    80003564:	ffd50513          	addi	a0,a0,-3
}
    80003568:	00153513          	seqz	a0,a0
    8000356c:	00813403          	ld	s0,8(sp)
    80003570:	01010113          	addi	sp,sp,16
    80003574:	00008067          	ret

0000000080003578 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80003578:	fe010113          	addi	sp,sp,-32
    8000357c:	00113c23          	sd	ra,24(sp)
    80003580:	00813823          	sd	s0,16(sp)
    80003584:	00913423          	sd	s1,8(sp)
    80003588:	01213023          	sd	s2,0(sp)
    8000358c:	02010413          	addi	s0,sp,32
    80003590:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80003594:	00000913          	li	s2,0
    80003598:	00c0006f          	j	800035a4 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    8000359c:	ffffe097          	auipc	ra,0xffffe
    800035a0:	e30080e7          	jalr	-464(ra) # 800013cc <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    800035a4:	ffffe097          	auipc	ra,0xffffe
    800035a8:	07c080e7          	jalr	124(ra) # 80001620 <_Z4getcv>
    800035ac:	0005059b          	sext.w	a1,a0
    800035b0:	01b00793          	li	a5,27
    800035b4:	02f58a63          	beq	a1,a5,800035e8 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    800035b8:	0084b503          	ld	a0,8(s1)
    800035bc:	00001097          	auipc	ra,0x1
    800035c0:	66c080e7          	jalr	1644(ra) # 80004c28 <_ZN6Buffer3putEi>
        i++;
    800035c4:	0019071b          	addiw	a4,s2,1
    800035c8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800035cc:	0004a683          	lw	a3,0(s1)
    800035d0:	0026979b          	slliw	a5,a3,0x2
    800035d4:	00d787bb          	addw	a5,a5,a3
    800035d8:	0017979b          	slliw	a5,a5,0x1
    800035dc:	02f767bb          	remw	a5,a4,a5
    800035e0:	fc0792e3          	bnez	a5,800035a4 <_ZL16producerKeyboardPv+0x2c>
    800035e4:	fb9ff06f          	j	8000359c <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    800035e8:	00100793          	li	a5,1
    800035ec:	00008717          	auipc	a4,0x8
    800035f0:	7cf72a23          	sw	a5,2004(a4) # 8000bdc0 <_ZL9threadEnd>
    data->buffer->put('!');
    800035f4:	02100593          	li	a1,33
    800035f8:	0084b503          	ld	a0,8(s1)
    800035fc:	00001097          	auipc	ra,0x1
    80003600:	62c080e7          	jalr	1580(ra) # 80004c28 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80003604:	0104b503          	ld	a0,16(s1)
    80003608:	ffffe097          	auipc	ra,0xffffe
    8000360c:	ee8080e7          	jalr	-280(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    80003610:	01813083          	ld	ra,24(sp)
    80003614:	01013403          	ld	s0,16(sp)
    80003618:	00813483          	ld	s1,8(sp)
    8000361c:	00013903          	ld	s2,0(sp)
    80003620:	02010113          	addi	sp,sp,32
    80003624:	00008067          	ret

0000000080003628 <_ZL8producerPv>:

static void producer(void *arg) {
    80003628:	fe010113          	addi	sp,sp,-32
    8000362c:	00113c23          	sd	ra,24(sp)
    80003630:	00813823          	sd	s0,16(sp)
    80003634:	00913423          	sd	s1,8(sp)
    80003638:	01213023          	sd	s2,0(sp)
    8000363c:	02010413          	addi	s0,sp,32
    80003640:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003644:	00000913          	li	s2,0
    80003648:	00c0006f          	j	80003654 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    8000364c:	ffffe097          	auipc	ra,0xffffe
    80003650:	d80080e7          	jalr	-640(ra) # 800013cc <_Z15thread_dispatchv>
    while (!threadEnd) {
    80003654:	00008797          	auipc	a5,0x8
    80003658:	76c7a783          	lw	a5,1900(a5) # 8000bdc0 <_ZL9threadEnd>
    8000365c:	02079e63          	bnez	a5,80003698 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80003660:	0004a583          	lw	a1,0(s1)
    80003664:	0305859b          	addiw	a1,a1,48
    80003668:	0084b503          	ld	a0,8(s1)
    8000366c:	00001097          	auipc	ra,0x1
    80003670:	5bc080e7          	jalr	1468(ra) # 80004c28 <_ZN6Buffer3putEi>
        i++;
    80003674:	0019071b          	addiw	a4,s2,1
    80003678:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000367c:	0004a683          	lw	a3,0(s1)
    80003680:	0026979b          	slliw	a5,a3,0x2
    80003684:	00d787bb          	addw	a5,a5,a3
    80003688:	0017979b          	slliw	a5,a5,0x1
    8000368c:	02f767bb          	remw	a5,a4,a5
    80003690:	fc0792e3          	bnez	a5,80003654 <_ZL8producerPv+0x2c>
    80003694:	fb9ff06f          	j	8000364c <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80003698:	0104b503          	ld	a0,16(s1)
    8000369c:	ffffe097          	auipc	ra,0xffffe
    800036a0:	e54080e7          	jalr	-428(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    800036a4:	01813083          	ld	ra,24(sp)
    800036a8:	01013403          	ld	s0,16(sp)
    800036ac:	00813483          	ld	s1,8(sp)
    800036b0:	00013903          	ld	s2,0(sp)
    800036b4:	02010113          	addi	sp,sp,32
    800036b8:	00008067          	ret

00000000800036bc <_ZL8consumerPv>:

static void consumer(void *arg) {
    800036bc:	fd010113          	addi	sp,sp,-48
    800036c0:	02113423          	sd	ra,40(sp)
    800036c4:	02813023          	sd	s0,32(sp)
    800036c8:	00913c23          	sd	s1,24(sp)
    800036cc:	01213823          	sd	s2,16(sp)
    800036d0:	01313423          	sd	s3,8(sp)
    800036d4:	03010413          	addi	s0,sp,48
    800036d8:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800036dc:	00000993          	li	s3,0
    800036e0:	01c0006f          	j	800036fc <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    800036e4:	ffffe097          	auipc	ra,0xffffe
    800036e8:	ce8080e7          	jalr	-792(ra) # 800013cc <_Z15thread_dispatchv>
    800036ec:	0500006f          	j	8000373c <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    800036f0:	00a00513          	li	a0,10
    800036f4:	ffffe097          	auipc	ra,0xffffe
    800036f8:	f78080e7          	jalr	-136(ra) # 8000166c <_Z4putcc>
    while (!threadEnd) {
    800036fc:	00008797          	auipc	a5,0x8
    80003700:	6c47a783          	lw	a5,1732(a5) # 8000bdc0 <_ZL9threadEnd>
    80003704:	06079063          	bnez	a5,80003764 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80003708:	00893503          	ld	a0,8(s2)
    8000370c:	00001097          	auipc	ra,0x1
    80003710:	5ac080e7          	jalr	1452(ra) # 80004cb8 <_ZN6Buffer3getEv>
        i++;
    80003714:	0019849b          	addiw	s1,s3,1
    80003718:	0004899b          	sext.w	s3,s1
        putc(key);
    8000371c:	0ff57513          	andi	a0,a0,255
    80003720:	ffffe097          	auipc	ra,0xffffe
    80003724:	f4c080e7          	jalr	-180(ra) # 8000166c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80003728:	00092703          	lw	a4,0(s2)
    8000372c:	0027179b          	slliw	a5,a4,0x2
    80003730:	00e787bb          	addw	a5,a5,a4
    80003734:	02f4e7bb          	remw	a5,s1,a5
    80003738:	fa0786e3          	beqz	a5,800036e4 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    8000373c:	05000793          	li	a5,80
    80003740:	02f4e4bb          	remw	s1,s1,a5
    80003744:	fa049ce3          	bnez	s1,800036fc <_ZL8consumerPv+0x40>
    80003748:	fa9ff06f          	j	800036f0 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    8000374c:	00893503          	ld	a0,8(s2)
    80003750:	00001097          	auipc	ra,0x1
    80003754:	568080e7          	jalr	1384(ra) # 80004cb8 <_ZN6Buffer3getEv>
        putc(key);
    80003758:	0ff57513          	andi	a0,a0,255
    8000375c:	ffffe097          	auipc	ra,0xffffe
    80003760:	f10080e7          	jalr	-240(ra) # 8000166c <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80003764:	00893503          	ld	a0,8(s2)
    80003768:	00001097          	auipc	ra,0x1
    8000376c:	5dc080e7          	jalr	1500(ra) # 80004d44 <_ZN6Buffer6getCntEv>
    80003770:	fca04ee3          	bgtz	a0,8000374c <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80003774:	01093503          	ld	a0,16(s2)
    80003778:	ffffe097          	auipc	ra,0xffffe
    8000377c:	d78080e7          	jalr	-648(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    80003780:	02813083          	ld	ra,40(sp)
    80003784:	02013403          	ld	s0,32(sp)
    80003788:	01813483          	ld	s1,24(sp)
    8000378c:	01013903          	ld	s2,16(sp)
    80003790:	00813983          	ld	s3,8(sp)
    80003794:	03010113          	addi	sp,sp,48
    80003798:	00008067          	ret

000000008000379c <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    8000379c:	f9010113          	addi	sp,sp,-112
    800037a0:	06113423          	sd	ra,104(sp)
    800037a4:	06813023          	sd	s0,96(sp)
    800037a8:	04913c23          	sd	s1,88(sp)
    800037ac:	05213823          	sd	s2,80(sp)
    800037b0:	05313423          	sd	s3,72(sp)
    800037b4:	05413023          	sd	s4,64(sp)
    800037b8:	03513c23          	sd	s5,56(sp)
    800037bc:	03613823          	sd	s6,48(sp)
    800037c0:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    800037c4:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    800037c8:	00006517          	auipc	a0,0x6
    800037cc:	96850513          	addi	a0,a0,-1688 # 80009130 <CONSOLE_STATUS+0x120>
    800037d0:	00002097          	auipc	ra,0x2
    800037d4:	550080e7          	jalr	1360(ra) # 80005d20 <_Z11printStringPKc>
    getString(input, 30);
    800037d8:	01e00593          	li	a1,30
    800037dc:	fa040493          	addi	s1,s0,-96
    800037e0:	00048513          	mv	a0,s1
    800037e4:	00002097          	auipc	ra,0x2
    800037e8:	5c4080e7          	jalr	1476(ra) # 80005da8 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800037ec:	00048513          	mv	a0,s1
    800037f0:	00002097          	auipc	ra,0x2
    800037f4:	690080e7          	jalr	1680(ra) # 80005e80 <_Z11stringToIntPKc>
    800037f8:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800037fc:	00006517          	auipc	a0,0x6
    80003800:	95450513          	addi	a0,a0,-1708 # 80009150 <CONSOLE_STATUS+0x140>
    80003804:	00002097          	auipc	ra,0x2
    80003808:	51c080e7          	jalr	1308(ra) # 80005d20 <_Z11printStringPKc>
    getString(input, 30);
    8000380c:	01e00593          	li	a1,30
    80003810:	00048513          	mv	a0,s1
    80003814:	00002097          	auipc	ra,0x2
    80003818:	594080e7          	jalr	1428(ra) # 80005da8 <_Z9getStringPci>
    n = stringToInt(input);
    8000381c:	00048513          	mv	a0,s1
    80003820:	00002097          	auipc	ra,0x2
    80003824:	660080e7          	jalr	1632(ra) # 80005e80 <_Z11stringToIntPKc>
    80003828:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    8000382c:	00006517          	auipc	a0,0x6
    80003830:	94450513          	addi	a0,a0,-1724 # 80009170 <CONSOLE_STATUS+0x160>
    80003834:	00002097          	auipc	ra,0x2
    80003838:	4ec080e7          	jalr	1260(ra) # 80005d20 <_Z11printStringPKc>
    8000383c:	00000613          	li	a2,0
    80003840:	00a00593          	li	a1,10
    80003844:	00090513          	mv	a0,s2
    80003848:	00002097          	auipc	ra,0x2
    8000384c:	688080e7          	jalr	1672(ra) # 80005ed0 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003850:	00006517          	auipc	a0,0x6
    80003854:	93850513          	addi	a0,a0,-1736 # 80009188 <CONSOLE_STATUS+0x178>
    80003858:	00002097          	auipc	ra,0x2
    8000385c:	4c8080e7          	jalr	1224(ra) # 80005d20 <_Z11printStringPKc>
    80003860:	00000613          	li	a2,0
    80003864:	00a00593          	li	a1,10
    80003868:	00048513          	mv	a0,s1
    8000386c:	00002097          	auipc	ra,0x2
    80003870:	664080e7          	jalr	1636(ra) # 80005ed0 <_Z8printIntiii>
    printString(".\n");
    80003874:	00006517          	auipc	a0,0x6
    80003878:	92c50513          	addi	a0,a0,-1748 # 800091a0 <CONSOLE_STATUS+0x190>
    8000387c:	00002097          	auipc	ra,0x2
    80003880:	4a4080e7          	jalr	1188(ra) # 80005d20 <_Z11printStringPKc>
    if(threadNum > n) {
    80003884:	0324c463          	blt	s1,s2,800038ac <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003888:	03205c63          	blez	s2,800038c0 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    8000388c:	03800513          	li	a0,56
    80003890:	ffffe097          	auipc	ra,0xffffe
    80003894:	75c080e7          	jalr	1884(ra) # 80001fec <_Znwm>
    80003898:	00050a13          	mv	s4,a0
    8000389c:	00048593          	mv	a1,s1
    800038a0:	00001097          	auipc	ra,0x1
    800038a4:	2ec080e7          	jalr	748(ra) # 80004b8c <_ZN6BufferC1Ei>
    800038a8:	0300006f          	j	800038d8 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800038ac:	00006517          	auipc	a0,0x6
    800038b0:	8fc50513          	addi	a0,a0,-1796 # 800091a8 <CONSOLE_STATUS+0x198>
    800038b4:	00002097          	auipc	ra,0x2
    800038b8:	46c080e7          	jalr	1132(ra) # 80005d20 <_Z11printStringPKc>
        return;
    800038bc:	0140006f          	j	800038d0 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800038c0:	00006517          	auipc	a0,0x6
    800038c4:	92850513          	addi	a0,a0,-1752 # 800091e8 <CONSOLE_STATUS+0x1d8>
    800038c8:	00002097          	auipc	ra,0x2
    800038cc:	458080e7          	jalr	1112(ra) # 80005d20 <_Z11printStringPKc>
        return;
    800038d0:	000b0113          	mv	sp,s6
    800038d4:	1500006f          	j	80003a24 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    800038d8:	00000593          	li	a1,0
    800038dc:	00008517          	auipc	a0,0x8
    800038e0:	4ec50513          	addi	a0,a0,1260 # 8000bdc8 <_ZL10waitForAll>
    800038e4:	ffffe097          	auipc	ra,0xffffe
    800038e8:	b24080e7          	jalr	-1244(ra) # 80001408 <_Z8sem_openPP3Semj>
    thread_t threads[threadNum];
    800038ec:	00391793          	slli	a5,s2,0x3
    800038f0:	00f78793          	addi	a5,a5,15
    800038f4:	ff07f793          	andi	a5,a5,-16
    800038f8:	40f10133          	sub	sp,sp,a5
    800038fc:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003900:	0019071b          	addiw	a4,s2,1
    80003904:	00171793          	slli	a5,a4,0x1
    80003908:	00e787b3          	add	a5,a5,a4
    8000390c:	00379793          	slli	a5,a5,0x3
    80003910:	00f78793          	addi	a5,a5,15
    80003914:	ff07f793          	andi	a5,a5,-16
    80003918:	40f10133          	sub	sp,sp,a5
    8000391c:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003920:	00191613          	slli	a2,s2,0x1
    80003924:	012607b3          	add	a5,a2,s2
    80003928:	00379793          	slli	a5,a5,0x3
    8000392c:	00f987b3          	add	a5,s3,a5
    80003930:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003934:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003938:	00008717          	auipc	a4,0x8
    8000393c:	49073703          	ld	a4,1168(a4) # 8000bdc8 <_ZL10waitForAll>
    80003940:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003944:	00078613          	mv	a2,a5
    80003948:	00000597          	auipc	a1,0x0
    8000394c:	d7458593          	addi	a1,a1,-652 # 800036bc <_ZL8consumerPv>
    80003950:	f9840513          	addi	a0,s0,-104
    80003954:	ffffe097          	auipc	ra,0xffffe
    80003958:	9a4080e7          	jalr	-1628(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    8000395c:	00000493          	li	s1,0
    80003960:	0280006f          	j	80003988 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003964:	00000597          	auipc	a1,0x0
    80003968:	c1458593          	addi	a1,a1,-1004 # 80003578 <_ZL16producerKeyboardPv>
                      data + i);
    8000396c:	00179613          	slli	a2,a5,0x1
    80003970:	00f60633          	add	a2,a2,a5
    80003974:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003978:	00c98633          	add	a2,s3,a2
    8000397c:	ffffe097          	auipc	ra,0xffffe
    80003980:	97c080e7          	jalr	-1668(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003984:	0014849b          	addiw	s1,s1,1
    80003988:	0524d263          	bge	s1,s2,800039cc <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    8000398c:	00149793          	slli	a5,s1,0x1
    80003990:	009787b3          	add	a5,a5,s1
    80003994:	00379793          	slli	a5,a5,0x3
    80003998:	00f987b3          	add	a5,s3,a5
    8000399c:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800039a0:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    800039a4:	00008717          	auipc	a4,0x8
    800039a8:	42473703          	ld	a4,1060(a4) # 8000bdc8 <_ZL10waitForAll>
    800039ac:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    800039b0:	00048793          	mv	a5,s1
    800039b4:	00349513          	slli	a0,s1,0x3
    800039b8:	00aa8533          	add	a0,s5,a0
    800039bc:	fa9054e3          	blez	s1,80003964 <_Z22producerConsumer_C_APIv+0x1c8>
    800039c0:	00000597          	auipc	a1,0x0
    800039c4:	c6858593          	addi	a1,a1,-920 # 80003628 <_ZL8producerPv>
    800039c8:	fa5ff06f          	j	8000396c <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    800039cc:	ffffe097          	auipc	ra,0xffffe
    800039d0:	a00080e7          	jalr	-1536(ra) # 800013cc <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    800039d4:	00000493          	li	s1,0
    800039d8:	00994e63          	blt	s2,s1,800039f4 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    800039dc:	00008517          	auipc	a0,0x8
    800039e0:	3ec53503          	ld	a0,1004(a0) # 8000bdc8 <_ZL10waitForAll>
    800039e4:	ffffe097          	auipc	ra,0xffffe
    800039e8:	ac0080e7          	jalr	-1344(ra) # 800014a4 <_Z8sem_waitP3Sem>
    for (int i = 0; i <= threadNum; i++) {
    800039ec:	0014849b          	addiw	s1,s1,1
    800039f0:	fe9ff06f          	j	800039d8 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    800039f4:	00008517          	auipc	a0,0x8
    800039f8:	3d453503          	ld	a0,980(a0) # 8000bdc8 <_ZL10waitForAll>
    800039fc:	ffffe097          	auipc	ra,0xffffe
    80003a00:	a5c080e7          	jalr	-1444(ra) # 80001458 <_Z9sem_closeP3Sem>
    delete buffer;
    80003a04:	000a0e63          	beqz	s4,80003a20 <_Z22producerConsumer_C_APIv+0x284>
    80003a08:	000a0513          	mv	a0,s4
    80003a0c:	00001097          	auipc	ra,0x1
    80003a10:	3c0080e7          	jalr	960(ra) # 80004dcc <_ZN6BufferD1Ev>
    80003a14:	000a0513          	mv	a0,s4
    80003a18:	ffffe097          	auipc	ra,0xffffe
    80003a1c:	5fc080e7          	jalr	1532(ra) # 80002014 <_ZdlPv>
    80003a20:	000b0113          	mv	sp,s6

}
    80003a24:	f9040113          	addi	sp,s0,-112
    80003a28:	06813083          	ld	ra,104(sp)
    80003a2c:	06013403          	ld	s0,96(sp)
    80003a30:	05813483          	ld	s1,88(sp)
    80003a34:	05013903          	ld	s2,80(sp)
    80003a38:	04813983          	ld	s3,72(sp)
    80003a3c:	04013a03          	ld	s4,64(sp)
    80003a40:	03813a83          	ld	s5,56(sp)
    80003a44:	03013b03          	ld	s6,48(sp)
    80003a48:	07010113          	addi	sp,sp,112
    80003a4c:	00008067          	ret
    80003a50:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003a54:	000a0513          	mv	a0,s4
    80003a58:	ffffe097          	auipc	ra,0xffffe
    80003a5c:	5bc080e7          	jalr	1468(ra) # 80002014 <_ZdlPv>
    80003a60:	00048513          	mv	a0,s1
    80003a64:	00009097          	auipc	ra,0x9
    80003a68:	494080e7          	jalr	1172(ra) # 8000cef8 <_Unwind_Resume>

0000000080003a6c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003a6c:	fe010113          	addi	sp,sp,-32
    80003a70:	00113c23          	sd	ra,24(sp)
    80003a74:	00813823          	sd	s0,16(sp)
    80003a78:	00913423          	sd	s1,8(sp)
    80003a7c:	01213023          	sd	s2,0(sp)
    80003a80:	02010413          	addi	s0,sp,32
    80003a84:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003a88:	00100793          	li	a5,1
    80003a8c:	02a7f863          	bgeu	a5,a0,80003abc <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003a90:	00a00793          	li	a5,10
    80003a94:	02f577b3          	remu	a5,a0,a5
    80003a98:	02078e63          	beqz	a5,80003ad4 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003a9c:	fff48513          	addi	a0,s1,-1
    80003aa0:	00000097          	auipc	ra,0x0
    80003aa4:	fcc080e7          	jalr	-52(ra) # 80003a6c <_ZL9fibonaccim>
    80003aa8:	00050913          	mv	s2,a0
    80003aac:	ffe48513          	addi	a0,s1,-2
    80003ab0:	00000097          	auipc	ra,0x0
    80003ab4:	fbc080e7          	jalr	-68(ra) # 80003a6c <_ZL9fibonaccim>
    80003ab8:	00a90533          	add	a0,s2,a0
}
    80003abc:	01813083          	ld	ra,24(sp)
    80003ac0:	01013403          	ld	s0,16(sp)
    80003ac4:	00813483          	ld	s1,8(sp)
    80003ac8:	00013903          	ld	s2,0(sp)
    80003acc:	02010113          	addi	sp,sp,32
    80003ad0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003ad4:	ffffe097          	auipc	ra,0xffffe
    80003ad8:	8f8080e7          	jalr	-1800(ra) # 800013cc <_Z15thread_dispatchv>
    80003adc:	fc1ff06f          	j	80003a9c <_ZL9fibonaccim+0x30>

0000000080003ae0 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003ae0:	fe010113          	addi	sp,sp,-32
    80003ae4:	00113c23          	sd	ra,24(sp)
    80003ae8:	00813823          	sd	s0,16(sp)
    80003aec:	00913423          	sd	s1,8(sp)
    80003af0:	01213023          	sd	s2,0(sp)
    80003af4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003af8:	00000913          	li	s2,0
    80003afc:	0380006f          	j	80003b34 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003b00:	ffffe097          	auipc	ra,0xffffe
    80003b04:	8cc080e7          	jalr	-1844(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003b08:	00148493          	addi	s1,s1,1
    80003b0c:	000027b7          	lui	a5,0x2
    80003b10:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003b14:	0097ee63          	bltu	a5,s1,80003b30 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003b18:	00000713          	li	a4,0
    80003b1c:	000077b7          	lui	a5,0x7
    80003b20:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003b24:	fce7eee3          	bltu	a5,a4,80003b00 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003b28:	00170713          	addi	a4,a4,1
    80003b2c:	ff1ff06f          	j	80003b1c <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003b30:	00190913          	addi	s2,s2,1
    80003b34:	00900793          	li	a5,9
    80003b38:	0527e063          	bltu	a5,s2,80003b78 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003b3c:	00005517          	auipc	a0,0x5
    80003b40:	6dc50513          	addi	a0,a0,1756 # 80009218 <CONSOLE_STATUS+0x208>
    80003b44:	00002097          	auipc	ra,0x2
    80003b48:	1dc080e7          	jalr	476(ra) # 80005d20 <_Z11printStringPKc>
    80003b4c:	00000613          	li	a2,0
    80003b50:	00a00593          	li	a1,10
    80003b54:	0009051b          	sext.w	a0,s2
    80003b58:	00002097          	auipc	ra,0x2
    80003b5c:	378080e7          	jalr	888(ra) # 80005ed0 <_Z8printIntiii>
    80003b60:	00006517          	auipc	a0,0x6
    80003b64:	91850513          	addi	a0,a0,-1768 # 80009478 <CONSOLE_STATUS+0x468>
    80003b68:	00002097          	auipc	ra,0x2
    80003b6c:	1b8080e7          	jalr	440(ra) # 80005d20 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003b70:	00000493          	li	s1,0
    80003b74:	f99ff06f          	j	80003b0c <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003b78:	00005517          	auipc	a0,0x5
    80003b7c:	6a850513          	addi	a0,a0,1704 # 80009220 <CONSOLE_STATUS+0x210>
    80003b80:	00002097          	auipc	ra,0x2
    80003b84:	1a0080e7          	jalr	416(ra) # 80005d20 <_Z11printStringPKc>
    finishedA = true;
    80003b88:	00100793          	li	a5,1
    80003b8c:	00008717          	auipc	a4,0x8
    80003b90:	24f70223          	sb	a5,580(a4) # 8000bdd0 <_ZL9finishedA>
}
    80003b94:	01813083          	ld	ra,24(sp)
    80003b98:	01013403          	ld	s0,16(sp)
    80003b9c:	00813483          	ld	s1,8(sp)
    80003ba0:	00013903          	ld	s2,0(sp)
    80003ba4:	02010113          	addi	sp,sp,32
    80003ba8:	00008067          	ret

0000000080003bac <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003bac:	fe010113          	addi	sp,sp,-32
    80003bb0:	00113c23          	sd	ra,24(sp)
    80003bb4:	00813823          	sd	s0,16(sp)
    80003bb8:	00913423          	sd	s1,8(sp)
    80003bbc:	01213023          	sd	s2,0(sp)
    80003bc0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003bc4:	00000913          	li	s2,0
    80003bc8:	0380006f          	j	80003c00 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003bcc:	ffffe097          	auipc	ra,0xffffe
    80003bd0:	800080e7          	jalr	-2048(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003bd4:	00148493          	addi	s1,s1,1
    80003bd8:	000027b7          	lui	a5,0x2
    80003bdc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003be0:	0097ee63          	bltu	a5,s1,80003bfc <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003be4:	00000713          	li	a4,0
    80003be8:	000077b7          	lui	a5,0x7
    80003bec:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003bf0:	fce7eee3          	bltu	a5,a4,80003bcc <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003bf4:	00170713          	addi	a4,a4,1
    80003bf8:	ff1ff06f          	j	80003be8 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003bfc:	00190913          	addi	s2,s2,1
    80003c00:	00f00793          	li	a5,15
    80003c04:	0527e063          	bltu	a5,s2,80003c44 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003c08:	00005517          	auipc	a0,0x5
    80003c0c:	62850513          	addi	a0,a0,1576 # 80009230 <CONSOLE_STATUS+0x220>
    80003c10:	00002097          	auipc	ra,0x2
    80003c14:	110080e7          	jalr	272(ra) # 80005d20 <_Z11printStringPKc>
    80003c18:	00000613          	li	a2,0
    80003c1c:	00a00593          	li	a1,10
    80003c20:	0009051b          	sext.w	a0,s2
    80003c24:	00002097          	auipc	ra,0x2
    80003c28:	2ac080e7          	jalr	684(ra) # 80005ed0 <_Z8printIntiii>
    80003c2c:	00006517          	auipc	a0,0x6
    80003c30:	84c50513          	addi	a0,a0,-1972 # 80009478 <CONSOLE_STATUS+0x468>
    80003c34:	00002097          	auipc	ra,0x2
    80003c38:	0ec080e7          	jalr	236(ra) # 80005d20 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003c3c:	00000493          	li	s1,0
    80003c40:	f99ff06f          	j	80003bd8 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003c44:	00005517          	auipc	a0,0x5
    80003c48:	5f450513          	addi	a0,a0,1524 # 80009238 <CONSOLE_STATUS+0x228>
    80003c4c:	00002097          	auipc	ra,0x2
    80003c50:	0d4080e7          	jalr	212(ra) # 80005d20 <_Z11printStringPKc>
    finishedB = true;
    80003c54:	00100793          	li	a5,1
    80003c58:	00008717          	auipc	a4,0x8
    80003c5c:	16f70ca3          	sb	a5,377(a4) # 8000bdd1 <_ZL9finishedB>
    thread_dispatch();
    80003c60:	ffffd097          	auipc	ra,0xffffd
    80003c64:	76c080e7          	jalr	1900(ra) # 800013cc <_Z15thread_dispatchv>
}
    80003c68:	01813083          	ld	ra,24(sp)
    80003c6c:	01013403          	ld	s0,16(sp)
    80003c70:	00813483          	ld	s1,8(sp)
    80003c74:	00013903          	ld	s2,0(sp)
    80003c78:	02010113          	addi	sp,sp,32
    80003c7c:	00008067          	ret

0000000080003c80 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003c80:	fe010113          	addi	sp,sp,-32
    80003c84:	00113c23          	sd	ra,24(sp)
    80003c88:	00813823          	sd	s0,16(sp)
    80003c8c:	00913423          	sd	s1,8(sp)
    80003c90:	01213023          	sd	s2,0(sp)
    80003c94:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003c98:	00000493          	li	s1,0
    80003c9c:	0400006f          	j	80003cdc <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003ca0:	00005517          	auipc	a0,0x5
    80003ca4:	5a850513          	addi	a0,a0,1448 # 80009248 <CONSOLE_STATUS+0x238>
    80003ca8:	00002097          	auipc	ra,0x2
    80003cac:	078080e7          	jalr	120(ra) # 80005d20 <_Z11printStringPKc>
    80003cb0:	00000613          	li	a2,0
    80003cb4:	00a00593          	li	a1,10
    80003cb8:	00048513          	mv	a0,s1
    80003cbc:	00002097          	auipc	ra,0x2
    80003cc0:	214080e7          	jalr	532(ra) # 80005ed0 <_Z8printIntiii>
    80003cc4:	00005517          	auipc	a0,0x5
    80003cc8:	7b450513          	addi	a0,a0,1972 # 80009478 <CONSOLE_STATUS+0x468>
    80003ccc:	00002097          	auipc	ra,0x2
    80003cd0:	054080e7          	jalr	84(ra) # 80005d20 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003cd4:	0014849b          	addiw	s1,s1,1
    80003cd8:	0ff4f493          	andi	s1,s1,255
    80003cdc:	00200793          	li	a5,2
    80003ce0:	fc97f0e3          	bgeu	a5,s1,80003ca0 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003ce4:	00005517          	auipc	a0,0x5
    80003ce8:	56c50513          	addi	a0,a0,1388 # 80009250 <CONSOLE_STATUS+0x240>
    80003cec:	00002097          	auipc	ra,0x2
    80003cf0:	034080e7          	jalr	52(ra) # 80005d20 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003cf4:	00700313          	li	t1,7
    thread_dispatch();
    80003cf8:	ffffd097          	auipc	ra,0xffffd
    80003cfc:	6d4080e7          	jalr	1748(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003d00:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003d04:	00005517          	auipc	a0,0x5
    80003d08:	55c50513          	addi	a0,a0,1372 # 80009260 <CONSOLE_STATUS+0x250>
    80003d0c:	00002097          	auipc	ra,0x2
    80003d10:	014080e7          	jalr	20(ra) # 80005d20 <_Z11printStringPKc>
    80003d14:	00000613          	li	a2,0
    80003d18:	00a00593          	li	a1,10
    80003d1c:	0009051b          	sext.w	a0,s2
    80003d20:	00002097          	auipc	ra,0x2
    80003d24:	1b0080e7          	jalr	432(ra) # 80005ed0 <_Z8printIntiii>
    80003d28:	00005517          	auipc	a0,0x5
    80003d2c:	75050513          	addi	a0,a0,1872 # 80009478 <CONSOLE_STATUS+0x468>
    80003d30:	00002097          	auipc	ra,0x2
    80003d34:	ff0080e7          	jalr	-16(ra) # 80005d20 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003d38:	00c00513          	li	a0,12
    80003d3c:	00000097          	auipc	ra,0x0
    80003d40:	d30080e7          	jalr	-720(ra) # 80003a6c <_ZL9fibonaccim>
    80003d44:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003d48:	00005517          	auipc	a0,0x5
    80003d4c:	52050513          	addi	a0,a0,1312 # 80009268 <CONSOLE_STATUS+0x258>
    80003d50:	00002097          	auipc	ra,0x2
    80003d54:	fd0080e7          	jalr	-48(ra) # 80005d20 <_Z11printStringPKc>
    80003d58:	00000613          	li	a2,0
    80003d5c:	00a00593          	li	a1,10
    80003d60:	0009051b          	sext.w	a0,s2
    80003d64:	00002097          	auipc	ra,0x2
    80003d68:	16c080e7          	jalr	364(ra) # 80005ed0 <_Z8printIntiii>
    80003d6c:	00005517          	auipc	a0,0x5
    80003d70:	70c50513          	addi	a0,a0,1804 # 80009478 <CONSOLE_STATUS+0x468>
    80003d74:	00002097          	auipc	ra,0x2
    80003d78:	fac080e7          	jalr	-84(ra) # 80005d20 <_Z11printStringPKc>
    80003d7c:	0400006f          	j	80003dbc <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003d80:	00005517          	auipc	a0,0x5
    80003d84:	4c850513          	addi	a0,a0,1224 # 80009248 <CONSOLE_STATUS+0x238>
    80003d88:	00002097          	auipc	ra,0x2
    80003d8c:	f98080e7          	jalr	-104(ra) # 80005d20 <_Z11printStringPKc>
    80003d90:	00000613          	li	a2,0
    80003d94:	00a00593          	li	a1,10
    80003d98:	00048513          	mv	a0,s1
    80003d9c:	00002097          	auipc	ra,0x2
    80003da0:	134080e7          	jalr	308(ra) # 80005ed0 <_Z8printIntiii>
    80003da4:	00005517          	auipc	a0,0x5
    80003da8:	6d450513          	addi	a0,a0,1748 # 80009478 <CONSOLE_STATUS+0x468>
    80003dac:	00002097          	auipc	ra,0x2
    80003db0:	f74080e7          	jalr	-140(ra) # 80005d20 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003db4:	0014849b          	addiw	s1,s1,1
    80003db8:	0ff4f493          	andi	s1,s1,255
    80003dbc:	00500793          	li	a5,5
    80003dc0:	fc97f0e3          	bgeu	a5,s1,80003d80 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80003dc4:	00005517          	auipc	a0,0x5
    80003dc8:	45c50513          	addi	a0,a0,1116 # 80009220 <CONSOLE_STATUS+0x210>
    80003dcc:	00002097          	auipc	ra,0x2
    80003dd0:	f54080e7          	jalr	-172(ra) # 80005d20 <_Z11printStringPKc>
    finishedC = true;
    80003dd4:	00100793          	li	a5,1
    80003dd8:	00008717          	auipc	a4,0x8
    80003ddc:	fef70d23          	sb	a5,-6(a4) # 8000bdd2 <_ZL9finishedC>
    thread_dispatch();
    80003de0:	ffffd097          	auipc	ra,0xffffd
    80003de4:	5ec080e7          	jalr	1516(ra) # 800013cc <_Z15thread_dispatchv>
}
    80003de8:	01813083          	ld	ra,24(sp)
    80003dec:	01013403          	ld	s0,16(sp)
    80003df0:	00813483          	ld	s1,8(sp)
    80003df4:	00013903          	ld	s2,0(sp)
    80003df8:	02010113          	addi	sp,sp,32
    80003dfc:	00008067          	ret

0000000080003e00 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003e00:	fe010113          	addi	sp,sp,-32
    80003e04:	00113c23          	sd	ra,24(sp)
    80003e08:	00813823          	sd	s0,16(sp)
    80003e0c:	00913423          	sd	s1,8(sp)
    80003e10:	01213023          	sd	s2,0(sp)
    80003e14:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003e18:	00a00493          	li	s1,10
    80003e1c:	0400006f          	j	80003e5c <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003e20:	00005517          	auipc	a0,0x5
    80003e24:	45850513          	addi	a0,a0,1112 # 80009278 <CONSOLE_STATUS+0x268>
    80003e28:	00002097          	auipc	ra,0x2
    80003e2c:	ef8080e7          	jalr	-264(ra) # 80005d20 <_Z11printStringPKc>
    80003e30:	00000613          	li	a2,0
    80003e34:	00a00593          	li	a1,10
    80003e38:	00048513          	mv	a0,s1
    80003e3c:	00002097          	auipc	ra,0x2
    80003e40:	094080e7          	jalr	148(ra) # 80005ed0 <_Z8printIntiii>
    80003e44:	00005517          	auipc	a0,0x5
    80003e48:	63450513          	addi	a0,a0,1588 # 80009478 <CONSOLE_STATUS+0x468>
    80003e4c:	00002097          	auipc	ra,0x2
    80003e50:	ed4080e7          	jalr	-300(ra) # 80005d20 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003e54:	0014849b          	addiw	s1,s1,1
    80003e58:	0ff4f493          	andi	s1,s1,255
    80003e5c:	00c00793          	li	a5,12
    80003e60:	fc97f0e3          	bgeu	a5,s1,80003e20 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003e64:	00005517          	auipc	a0,0x5
    80003e68:	41c50513          	addi	a0,a0,1052 # 80009280 <CONSOLE_STATUS+0x270>
    80003e6c:	00002097          	auipc	ra,0x2
    80003e70:	eb4080e7          	jalr	-332(ra) # 80005d20 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003e74:	00500313          	li	t1,5
    thread_dispatch();
    80003e78:	ffffd097          	auipc	ra,0xffffd
    80003e7c:	554080e7          	jalr	1364(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003e80:	01000513          	li	a0,16
    80003e84:	00000097          	auipc	ra,0x0
    80003e88:	be8080e7          	jalr	-1048(ra) # 80003a6c <_ZL9fibonaccim>
    80003e8c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003e90:	00005517          	auipc	a0,0x5
    80003e94:	40050513          	addi	a0,a0,1024 # 80009290 <CONSOLE_STATUS+0x280>
    80003e98:	00002097          	auipc	ra,0x2
    80003e9c:	e88080e7          	jalr	-376(ra) # 80005d20 <_Z11printStringPKc>
    80003ea0:	00000613          	li	a2,0
    80003ea4:	00a00593          	li	a1,10
    80003ea8:	0009051b          	sext.w	a0,s2
    80003eac:	00002097          	auipc	ra,0x2
    80003eb0:	024080e7          	jalr	36(ra) # 80005ed0 <_Z8printIntiii>
    80003eb4:	00005517          	auipc	a0,0x5
    80003eb8:	5c450513          	addi	a0,a0,1476 # 80009478 <CONSOLE_STATUS+0x468>
    80003ebc:	00002097          	auipc	ra,0x2
    80003ec0:	e64080e7          	jalr	-412(ra) # 80005d20 <_Z11printStringPKc>
    80003ec4:	0400006f          	j	80003f04 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003ec8:	00005517          	auipc	a0,0x5
    80003ecc:	3b050513          	addi	a0,a0,944 # 80009278 <CONSOLE_STATUS+0x268>
    80003ed0:	00002097          	auipc	ra,0x2
    80003ed4:	e50080e7          	jalr	-432(ra) # 80005d20 <_Z11printStringPKc>
    80003ed8:	00000613          	li	a2,0
    80003edc:	00a00593          	li	a1,10
    80003ee0:	00048513          	mv	a0,s1
    80003ee4:	00002097          	auipc	ra,0x2
    80003ee8:	fec080e7          	jalr	-20(ra) # 80005ed0 <_Z8printIntiii>
    80003eec:	00005517          	auipc	a0,0x5
    80003ef0:	58c50513          	addi	a0,a0,1420 # 80009478 <CONSOLE_STATUS+0x468>
    80003ef4:	00002097          	auipc	ra,0x2
    80003ef8:	e2c080e7          	jalr	-468(ra) # 80005d20 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003efc:	0014849b          	addiw	s1,s1,1
    80003f00:	0ff4f493          	andi	s1,s1,255
    80003f04:	00f00793          	li	a5,15
    80003f08:	fc97f0e3          	bgeu	a5,s1,80003ec8 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003f0c:	00005517          	auipc	a0,0x5
    80003f10:	39450513          	addi	a0,a0,916 # 800092a0 <CONSOLE_STATUS+0x290>
    80003f14:	00002097          	auipc	ra,0x2
    80003f18:	e0c080e7          	jalr	-500(ra) # 80005d20 <_Z11printStringPKc>
    finishedD = true;
    80003f1c:	00100793          	li	a5,1
    80003f20:	00008717          	auipc	a4,0x8
    80003f24:	eaf709a3          	sb	a5,-333(a4) # 8000bdd3 <_ZL9finishedD>
    thread_dispatch();
    80003f28:	ffffd097          	auipc	ra,0xffffd
    80003f2c:	4a4080e7          	jalr	1188(ra) # 800013cc <_Z15thread_dispatchv>
}
    80003f30:	01813083          	ld	ra,24(sp)
    80003f34:	01013403          	ld	s0,16(sp)
    80003f38:	00813483          	ld	s1,8(sp)
    80003f3c:	00013903          	ld	s2,0(sp)
    80003f40:	02010113          	addi	sp,sp,32
    80003f44:	00008067          	ret

0000000080003f48 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003f48:	fc010113          	addi	sp,sp,-64
    80003f4c:	02113c23          	sd	ra,56(sp)
    80003f50:	02813823          	sd	s0,48(sp)
    80003f54:	02913423          	sd	s1,40(sp)
    80003f58:	03213023          	sd	s2,32(sp)
    80003f5c:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003f60:	02000513          	li	a0,32
    80003f64:	ffffe097          	auipc	ra,0xffffe
    80003f68:	088080e7          	jalr	136(ra) # 80001fec <_Znwm>
    80003f6c:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003f70:	ffffe097          	auipc	ra,0xffffe
    80003f74:	17c080e7          	jalr	380(ra) # 800020ec <_ZN6ThreadC1Ev>
    80003f78:	00008797          	auipc	a5,0x8
    80003f7c:	bb878793          	addi	a5,a5,-1096 # 8000bb30 <_ZTV7WorkerA+0x10>
    80003f80:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003f84:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003f88:	00005517          	auipc	a0,0x5
    80003f8c:	32850513          	addi	a0,a0,808 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80003f90:	00002097          	auipc	ra,0x2
    80003f94:	d90080e7          	jalr	-624(ra) # 80005d20 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003f98:	02000513          	li	a0,32
    80003f9c:	ffffe097          	auipc	ra,0xffffe
    80003fa0:	050080e7          	jalr	80(ra) # 80001fec <_Znwm>
    80003fa4:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003fa8:	ffffe097          	auipc	ra,0xffffe
    80003fac:	144080e7          	jalr	324(ra) # 800020ec <_ZN6ThreadC1Ev>
    80003fb0:	00008797          	auipc	a5,0x8
    80003fb4:	ba878793          	addi	a5,a5,-1112 # 8000bb58 <_ZTV7WorkerB+0x10>
    80003fb8:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003fbc:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003fc0:	00005517          	auipc	a0,0x5
    80003fc4:	30850513          	addi	a0,a0,776 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80003fc8:	00002097          	auipc	ra,0x2
    80003fcc:	d58080e7          	jalr	-680(ra) # 80005d20 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003fd0:	02000513          	li	a0,32
    80003fd4:	ffffe097          	auipc	ra,0xffffe
    80003fd8:	018080e7          	jalr	24(ra) # 80001fec <_Znwm>
    80003fdc:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003fe0:	ffffe097          	auipc	ra,0xffffe
    80003fe4:	10c080e7          	jalr	268(ra) # 800020ec <_ZN6ThreadC1Ev>
    80003fe8:	00008797          	auipc	a5,0x8
    80003fec:	b9878793          	addi	a5,a5,-1128 # 8000bb80 <_ZTV7WorkerC+0x10>
    80003ff0:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003ff4:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003ff8:	00005517          	auipc	a0,0x5
    80003ffc:	2e850513          	addi	a0,a0,744 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80004000:	00002097          	auipc	ra,0x2
    80004004:	d20080e7          	jalr	-736(ra) # 80005d20 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80004008:	02000513          	li	a0,32
    8000400c:	ffffe097          	auipc	ra,0xffffe
    80004010:	fe0080e7          	jalr	-32(ra) # 80001fec <_Znwm>
    80004014:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80004018:	ffffe097          	auipc	ra,0xffffe
    8000401c:	0d4080e7          	jalr	212(ra) # 800020ec <_ZN6ThreadC1Ev>
    80004020:	00008797          	auipc	a5,0x8
    80004024:	b8878793          	addi	a5,a5,-1144 # 8000bba8 <_ZTV7WorkerD+0x10>
    80004028:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    8000402c:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80004030:	00005517          	auipc	a0,0x5
    80004034:	2c850513          	addi	a0,a0,712 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80004038:	00002097          	auipc	ra,0x2
    8000403c:	ce8080e7          	jalr	-792(ra) # 80005d20 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80004040:	00000493          	li	s1,0
    80004044:	00300793          	li	a5,3
    80004048:	0297c663          	blt	a5,s1,80004074 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    8000404c:	00349793          	slli	a5,s1,0x3
    80004050:	fe040713          	addi	a4,s0,-32
    80004054:	00f707b3          	add	a5,a4,a5
    80004058:	fe07b503          	ld	a0,-32(a5)
    8000405c:	ffffe097          	auipc	ra,0xffffe
    80004060:	0c0080e7          	jalr	192(ra) # 8000211c <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80004064:	0014849b          	addiw	s1,s1,1
    80004068:	fddff06f          	j	80004044 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    8000406c:	ffffe097          	auipc	ra,0xffffe
    80004070:	0e8080e7          	jalr	232(ra) # 80002154 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004074:	00008797          	auipc	a5,0x8
    80004078:	d5c7c783          	lbu	a5,-676(a5) # 8000bdd0 <_ZL9finishedA>
    8000407c:	fe0788e3          	beqz	a5,8000406c <_Z20Threads_CPP_API_testv+0x124>
    80004080:	00008797          	auipc	a5,0x8
    80004084:	d517c783          	lbu	a5,-687(a5) # 8000bdd1 <_ZL9finishedB>
    80004088:	fe0782e3          	beqz	a5,8000406c <_Z20Threads_CPP_API_testv+0x124>
    8000408c:	00008797          	auipc	a5,0x8
    80004090:	d467c783          	lbu	a5,-698(a5) # 8000bdd2 <_ZL9finishedC>
    80004094:	fc078ce3          	beqz	a5,8000406c <_Z20Threads_CPP_API_testv+0x124>
    80004098:	00008797          	auipc	a5,0x8
    8000409c:	d3b7c783          	lbu	a5,-709(a5) # 8000bdd3 <_ZL9finishedD>
    800040a0:	fc0786e3          	beqz	a5,8000406c <_Z20Threads_CPP_API_testv+0x124>
    800040a4:	fc040493          	addi	s1,s0,-64
    800040a8:	0080006f          	j	800040b0 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    800040ac:	00848493          	addi	s1,s1,8
    800040b0:	fe040793          	addi	a5,s0,-32
    800040b4:	08f48663          	beq	s1,a5,80004140 <_Z20Threads_CPP_API_testv+0x1f8>
    800040b8:	0004b503          	ld	a0,0(s1)
    800040bc:	fe0508e3          	beqz	a0,800040ac <_Z20Threads_CPP_API_testv+0x164>
    800040c0:	00053783          	ld	a5,0(a0)
    800040c4:	0087b783          	ld	a5,8(a5)
    800040c8:	000780e7          	jalr	a5
    800040cc:	fe1ff06f          	j	800040ac <_Z20Threads_CPP_API_testv+0x164>
    800040d0:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    800040d4:	00048513          	mv	a0,s1
    800040d8:	ffffe097          	auipc	ra,0xffffe
    800040dc:	f3c080e7          	jalr	-196(ra) # 80002014 <_ZdlPv>
    800040e0:	00090513          	mv	a0,s2
    800040e4:	00009097          	auipc	ra,0x9
    800040e8:	e14080e7          	jalr	-492(ra) # 8000cef8 <_Unwind_Resume>
    800040ec:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    800040f0:	00048513          	mv	a0,s1
    800040f4:	ffffe097          	auipc	ra,0xffffe
    800040f8:	f20080e7          	jalr	-224(ra) # 80002014 <_ZdlPv>
    800040fc:	00090513          	mv	a0,s2
    80004100:	00009097          	auipc	ra,0x9
    80004104:	df8080e7          	jalr	-520(ra) # 8000cef8 <_Unwind_Resume>
    80004108:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    8000410c:	00048513          	mv	a0,s1
    80004110:	ffffe097          	auipc	ra,0xffffe
    80004114:	f04080e7          	jalr	-252(ra) # 80002014 <_ZdlPv>
    80004118:	00090513          	mv	a0,s2
    8000411c:	00009097          	auipc	ra,0x9
    80004120:	ddc080e7          	jalr	-548(ra) # 8000cef8 <_Unwind_Resume>
    80004124:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80004128:	00048513          	mv	a0,s1
    8000412c:	ffffe097          	auipc	ra,0xffffe
    80004130:	ee8080e7          	jalr	-280(ra) # 80002014 <_ZdlPv>
    80004134:	00090513          	mv	a0,s2
    80004138:	00009097          	auipc	ra,0x9
    8000413c:	dc0080e7          	jalr	-576(ra) # 8000cef8 <_Unwind_Resume>
}
    80004140:	03813083          	ld	ra,56(sp)
    80004144:	03013403          	ld	s0,48(sp)
    80004148:	02813483          	ld	s1,40(sp)
    8000414c:	02013903          	ld	s2,32(sp)
    80004150:	04010113          	addi	sp,sp,64
    80004154:	00008067          	ret

0000000080004158 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80004158:	ff010113          	addi	sp,sp,-16
    8000415c:	00113423          	sd	ra,8(sp)
    80004160:	00813023          	sd	s0,0(sp)
    80004164:	01010413          	addi	s0,sp,16
    80004168:	00008797          	auipc	a5,0x8
    8000416c:	9c878793          	addi	a5,a5,-1592 # 8000bb30 <_ZTV7WorkerA+0x10>
    80004170:	00f53023          	sd	a5,0(a0)
    80004174:	ffffe097          	auipc	ra,0xffffe
    80004178:	de0080e7          	jalr	-544(ra) # 80001f54 <_ZN6ThreadD1Ev>
    8000417c:	00813083          	ld	ra,8(sp)
    80004180:	00013403          	ld	s0,0(sp)
    80004184:	01010113          	addi	sp,sp,16
    80004188:	00008067          	ret

000000008000418c <_ZN7WorkerAD0Ev>:
    8000418c:	fe010113          	addi	sp,sp,-32
    80004190:	00113c23          	sd	ra,24(sp)
    80004194:	00813823          	sd	s0,16(sp)
    80004198:	00913423          	sd	s1,8(sp)
    8000419c:	02010413          	addi	s0,sp,32
    800041a0:	00050493          	mv	s1,a0
    800041a4:	00008797          	auipc	a5,0x8
    800041a8:	98c78793          	addi	a5,a5,-1652 # 8000bb30 <_ZTV7WorkerA+0x10>
    800041ac:	00f53023          	sd	a5,0(a0)
    800041b0:	ffffe097          	auipc	ra,0xffffe
    800041b4:	da4080e7          	jalr	-604(ra) # 80001f54 <_ZN6ThreadD1Ev>
    800041b8:	00048513          	mv	a0,s1
    800041bc:	ffffe097          	auipc	ra,0xffffe
    800041c0:	e58080e7          	jalr	-424(ra) # 80002014 <_ZdlPv>
    800041c4:	01813083          	ld	ra,24(sp)
    800041c8:	01013403          	ld	s0,16(sp)
    800041cc:	00813483          	ld	s1,8(sp)
    800041d0:	02010113          	addi	sp,sp,32
    800041d4:	00008067          	ret

00000000800041d8 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800041d8:	ff010113          	addi	sp,sp,-16
    800041dc:	00113423          	sd	ra,8(sp)
    800041e0:	00813023          	sd	s0,0(sp)
    800041e4:	01010413          	addi	s0,sp,16
    800041e8:	00008797          	auipc	a5,0x8
    800041ec:	97078793          	addi	a5,a5,-1680 # 8000bb58 <_ZTV7WorkerB+0x10>
    800041f0:	00f53023          	sd	a5,0(a0)
    800041f4:	ffffe097          	auipc	ra,0xffffe
    800041f8:	d60080e7          	jalr	-672(ra) # 80001f54 <_ZN6ThreadD1Ev>
    800041fc:	00813083          	ld	ra,8(sp)
    80004200:	00013403          	ld	s0,0(sp)
    80004204:	01010113          	addi	sp,sp,16
    80004208:	00008067          	ret

000000008000420c <_ZN7WorkerBD0Ev>:
    8000420c:	fe010113          	addi	sp,sp,-32
    80004210:	00113c23          	sd	ra,24(sp)
    80004214:	00813823          	sd	s0,16(sp)
    80004218:	00913423          	sd	s1,8(sp)
    8000421c:	02010413          	addi	s0,sp,32
    80004220:	00050493          	mv	s1,a0
    80004224:	00008797          	auipc	a5,0x8
    80004228:	93478793          	addi	a5,a5,-1740 # 8000bb58 <_ZTV7WorkerB+0x10>
    8000422c:	00f53023          	sd	a5,0(a0)
    80004230:	ffffe097          	auipc	ra,0xffffe
    80004234:	d24080e7          	jalr	-732(ra) # 80001f54 <_ZN6ThreadD1Ev>
    80004238:	00048513          	mv	a0,s1
    8000423c:	ffffe097          	auipc	ra,0xffffe
    80004240:	dd8080e7          	jalr	-552(ra) # 80002014 <_ZdlPv>
    80004244:	01813083          	ld	ra,24(sp)
    80004248:	01013403          	ld	s0,16(sp)
    8000424c:	00813483          	ld	s1,8(sp)
    80004250:	02010113          	addi	sp,sp,32
    80004254:	00008067          	ret

0000000080004258 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80004258:	ff010113          	addi	sp,sp,-16
    8000425c:	00113423          	sd	ra,8(sp)
    80004260:	00813023          	sd	s0,0(sp)
    80004264:	01010413          	addi	s0,sp,16
    80004268:	00008797          	auipc	a5,0x8
    8000426c:	91878793          	addi	a5,a5,-1768 # 8000bb80 <_ZTV7WorkerC+0x10>
    80004270:	00f53023          	sd	a5,0(a0)
    80004274:	ffffe097          	auipc	ra,0xffffe
    80004278:	ce0080e7          	jalr	-800(ra) # 80001f54 <_ZN6ThreadD1Ev>
    8000427c:	00813083          	ld	ra,8(sp)
    80004280:	00013403          	ld	s0,0(sp)
    80004284:	01010113          	addi	sp,sp,16
    80004288:	00008067          	ret

000000008000428c <_ZN7WorkerCD0Ev>:
    8000428c:	fe010113          	addi	sp,sp,-32
    80004290:	00113c23          	sd	ra,24(sp)
    80004294:	00813823          	sd	s0,16(sp)
    80004298:	00913423          	sd	s1,8(sp)
    8000429c:	02010413          	addi	s0,sp,32
    800042a0:	00050493          	mv	s1,a0
    800042a4:	00008797          	auipc	a5,0x8
    800042a8:	8dc78793          	addi	a5,a5,-1828 # 8000bb80 <_ZTV7WorkerC+0x10>
    800042ac:	00f53023          	sd	a5,0(a0)
    800042b0:	ffffe097          	auipc	ra,0xffffe
    800042b4:	ca4080e7          	jalr	-860(ra) # 80001f54 <_ZN6ThreadD1Ev>
    800042b8:	00048513          	mv	a0,s1
    800042bc:	ffffe097          	auipc	ra,0xffffe
    800042c0:	d58080e7          	jalr	-680(ra) # 80002014 <_ZdlPv>
    800042c4:	01813083          	ld	ra,24(sp)
    800042c8:	01013403          	ld	s0,16(sp)
    800042cc:	00813483          	ld	s1,8(sp)
    800042d0:	02010113          	addi	sp,sp,32
    800042d4:	00008067          	ret

00000000800042d8 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800042d8:	ff010113          	addi	sp,sp,-16
    800042dc:	00113423          	sd	ra,8(sp)
    800042e0:	00813023          	sd	s0,0(sp)
    800042e4:	01010413          	addi	s0,sp,16
    800042e8:	00008797          	auipc	a5,0x8
    800042ec:	8c078793          	addi	a5,a5,-1856 # 8000bba8 <_ZTV7WorkerD+0x10>
    800042f0:	00f53023          	sd	a5,0(a0)
    800042f4:	ffffe097          	auipc	ra,0xffffe
    800042f8:	c60080e7          	jalr	-928(ra) # 80001f54 <_ZN6ThreadD1Ev>
    800042fc:	00813083          	ld	ra,8(sp)
    80004300:	00013403          	ld	s0,0(sp)
    80004304:	01010113          	addi	sp,sp,16
    80004308:	00008067          	ret

000000008000430c <_ZN7WorkerDD0Ev>:
    8000430c:	fe010113          	addi	sp,sp,-32
    80004310:	00113c23          	sd	ra,24(sp)
    80004314:	00813823          	sd	s0,16(sp)
    80004318:	00913423          	sd	s1,8(sp)
    8000431c:	02010413          	addi	s0,sp,32
    80004320:	00050493          	mv	s1,a0
    80004324:	00008797          	auipc	a5,0x8
    80004328:	88478793          	addi	a5,a5,-1916 # 8000bba8 <_ZTV7WorkerD+0x10>
    8000432c:	00f53023          	sd	a5,0(a0)
    80004330:	ffffe097          	auipc	ra,0xffffe
    80004334:	c24080e7          	jalr	-988(ra) # 80001f54 <_ZN6ThreadD1Ev>
    80004338:	00048513          	mv	a0,s1
    8000433c:	ffffe097          	auipc	ra,0xffffe
    80004340:	cd8080e7          	jalr	-808(ra) # 80002014 <_ZdlPv>
    80004344:	01813083          	ld	ra,24(sp)
    80004348:	01013403          	ld	s0,16(sp)
    8000434c:	00813483          	ld	s1,8(sp)
    80004350:	02010113          	addi	sp,sp,32
    80004354:	00008067          	ret

0000000080004358 <_ZN7WorkerA3runEv>:
    void run() override {
    80004358:	ff010113          	addi	sp,sp,-16
    8000435c:	00113423          	sd	ra,8(sp)
    80004360:	00813023          	sd	s0,0(sp)
    80004364:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80004368:	00000593          	li	a1,0
    8000436c:	fffff097          	auipc	ra,0xfffff
    80004370:	774080e7          	jalr	1908(ra) # 80003ae0 <_ZN7WorkerA11workerBodyAEPv>
    }
    80004374:	00813083          	ld	ra,8(sp)
    80004378:	00013403          	ld	s0,0(sp)
    8000437c:	01010113          	addi	sp,sp,16
    80004380:	00008067          	ret

0000000080004384 <_ZN7WorkerB3runEv>:
    void run() override {
    80004384:	ff010113          	addi	sp,sp,-16
    80004388:	00113423          	sd	ra,8(sp)
    8000438c:	00813023          	sd	s0,0(sp)
    80004390:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80004394:	00000593          	li	a1,0
    80004398:	00000097          	auipc	ra,0x0
    8000439c:	814080e7          	jalr	-2028(ra) # 80003bac <_ZN7WorkerB11workerBodyBEPv>
    }
    800043a0:	00813083          	ld	ra,8(sp)
    800043a4:	00013403          	ld	s0,0(sp)
    800043a8:	01010113          	addi	sp,sp,16
    800043ac:	00008067          	ret

00000000800043b0 <_ZN7WorkerC3runEv>:
    void run() override {
    800043b0:	ff010113          	addi	sp,sp,-16
    800043b4:	00113423          	sd	ra,8(sp)
    800043b8:	00813023          	sd	s0,0(sp)
    800043bc:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800043c0:	00000593          	li	a1,0
    800043c4:	00000097          	auipc	ra,0x0
    800043c8:	8bc080e7          	jalr	-1860(ra) # 80003c80 <_ZN7WorkerC11workerBodyCEPv>
    }
    800043cc:	00813083          	ld	ra,8(sp)
    800043d0:	00013403          	ld	s0,0(sp)
    800043d4:	01010113          	addi	sp,sp,16
    800043d8:	00008067          	ret

00000000800043dc <_ZN7WorkerD3runEv>:
    void run() override {
    800043dc:	ff010113          	addi	sp,sp,-16
    800043e0:	00113423          	sd	ra,8(sp)
    800043e4:	00813023          	sd	s0,0(sp)
    800043e8:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800043ec:	00000593          	li	a1,0
    800043f0:	00000097          	auipc	ra,0x0
    800043f4:	a10080e7          	jalr	-1520(ra) # 80003e00 <_ZN7WorkerD11workerBodyDEPv>
    }
    800043f8:	00813083          	ld	ra,8(sp)
    800043fc:	00013403          	ld	s0,0(sp)
    80004400:	01010113          	addi	sp,sp,16
    80004404:	00008067          	ret

0000000080004408 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80004408:	f8010113          	addi	sp,sp,-128
    8000440c:	06113c23          	sd	ra,120(sp)
    80004410:	06813823          	sd	s0,112(sp)
    80004414:	06913423          	sd	s1,104(sp)
    80004418:	07213023          	sd	s2,96(sp)
    8000441c:	05313c23          	sd	s3,88(sp)
    80004420:	05413823          	sd	s4,80(sp)
    80004424:	05513423          	sd	s5,72(sp)
    80004428:	05613023          	sd	s6,64(sp)
    8000442c:	03713c23          	sd	s7,56(sp)
    80004430:	03813823          	sd	s8,48(sp)
    80004434:	03913423          	sd	s9,40(sp)
    80004438:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    8000443c:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80004440:	00005517          	auipc	a0,0x5
    80004444:	cf050513          	addi	a0,a0,-784 # 80009130 <CONSOLE_STATUS+0x120>
    80004448:	00002097          	auipc	ra,0x2
    8000444c:	8d8080e7          	jalr	-1832(ra) # 80005d20 <_Z11printStringPKc>
    getString(input, 30);
    80004450:	01e00593          	li	a1,30
    80004454:	f8040493          	addi	s1,s0,-128
    80004458:	00048513          	mv	a0,s1
    8000445c:	00002097          	auipc	ra,0x2
    80004460:	94c080e7          	jalr	-1716(ra) # 80005da8 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004464:	00048513          	mv	a0,s1
    80004468:	00002097          	auipc	ra,0x2
    8000446c:	a18080e7          	jalr	-1512(ra) # 80005e80 <_Z11stringToIntPKc>
    80004470:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80004474:	00005517          	auipc	a0,0x5
    80004478:	cdc50513          	addi	a0,a0,-804 # 80009150 <CONSOLE_STATUS+0x140>
    8000447c:	00002097          	auipc	ra,0x2
    80004480:	8a4080e7          	jalr	-1884(ra) # 80005d20 <_Z11printStringPKc>
    getString(input, 30);
    80004484:	01e00593          	li	a1,30
    80004488:	00048513          	mv	a0,s1
    8000448c:	00002097          	auipc	ra,0x2
    80004490:	91c080e7          	jalr	-1764(ra) # 80005da8 <_Z9getStringPci>
    n = stringToInt(input);
    80004494:	00048513          	mv	a0,s1
    80004498:	00002097          	auipc	ra,0x2
    8000449c:	9e8080e7          	jalr	-1560(ra) # 80005e80 <_Z11stringToIntPKc>
    800044a0:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    800044a4:	00005517          	auipc	a0,0x5
    800044a8:	ccc50513          	addi	a0,a0,-820 # 80009170 <CONSOLE_STATUS+0x160>
    800044ac:	00002097          	auipc	ra,0x2
    800044b0:	874080e7          	jalr	-1932(ra) # 80005d20 <_Z11printStringPKc>
    printInt(threadNum);
    800044b4:	00000613          	li	a2,0
    800044b8:	00a00593          	li	a1,10
    800044bc:	00098513          	mv	a0,s3
    800044c0:	00002097          	auipc	ra,0x2
    800044c4:	a10080e7          	jalr	-1520(ra) # 80005ed0 <_Z8printIntiii>
    printString(" i velicina bafera ");
    800044c8:	00005517          	auipc	a0,0x5
    800044cc:	cc050513          	addi	a0,a0,-832 # 80009188 <CONSOLE_STATUS+0x178>
    800044d0:	00002097          	auipc	ra,0x2
    800044d4:	850080e7          	jalr	-1968(ra) # 80005d20 <_Z11printStringPKc>
    printInt(n);
    800044d8:	00000613          	li	a2,0
    800044dc:	00a00593          	li	a1,10
    800044e0:	00048513          	mv	a0,s1
    800044e4:	00002097          	auipc	ra,0x2
    800044e8:	9ec080e7          	jalr	-1556(ra) # 80005ed0 <_Z8printIntiii>
    printString(".\n");
    800044ec:	00005517          	auipc	a0,0x5
    800044f0:	cb450513          	addi	a0,a0,-844 # 800091a0 <CONSOLE_STATUS+0x190>
    800044f4:	00002097          	auipc	ra,0x2
    800044f8:	82c080e7          	jalr	-2004(ra) # 80005d20 <_Z11printStringPKc>
    if (threadNum > n) {
    800044fc:	0334c463          	blt	s1,s3,80004524 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80004500:	03305c63          	blez	s3,80004538 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004504:	03800513          	li	a0,56
    80004508:	ffffe097          	auipc	ra,0xffffe
    8000450c:	ae4080e7          	jalr	-1308(ra) # 80001fec <_Znwm>
    80004510:	00050a93          	mv	s5,a0
    80004514:	00048593          	mv	a1,s1
    80004518:	00002097          	auipc	ra,0x2
    8000451c:	ad8080e7          	jalr	-1320(ra) # 80005ff0 <_ZN9BufferCPPC1Ei>
    80004520:	0300006f          	j	80004550 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004524:	00005517          	auipc	a0,0x5
    80004528:	c8450513          	addi	a0,a0,-892 # 800091a8 <CONSOLE_STATUS+0x198>
    8000452c:	00001097          	auipc	ra,0x1
    80004530:	7f4080e7          	jalr	2036(ra) # 80005d20 <_Z11printStringPKc>
        return;
    80004534:	0140006f          	j	80004548 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004538:	00005517          	auipc	a0,0x5
    8000453c:	cb050513          	addi	a0,a0,-848 # 800091e8 <CONSOLE_STATUS+0x1d8>
    80004540:	00001097          	auipc	ra,0x1
    80004544:	7e0080e7          	jalr	2016(ra) # 80005d20 <_Z11printStringPKc>
        return;
    80004548:	000c0113          	mv	sp,s8
    8000454c:	2140006f          	j	80004760 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80004550:	01000513          	li	a0,16
    80004554:	ffffe097          	auipc	ra,0xffffe
    80004558:	a98080e7          	jalr	-1384(ra) # 80001fec <_Znwm>
    8000455c:	00050913          	mv	s2,a0
    80004560:	00000593          	li	a1,0
    80004564:	ffffe097          	auipc	ra,0xffffe
    80004568:	c40080e7          	jalr	-960(ra) # 800021a4 <_ZN9SemaphoreC1Ej>
    8000456c:	00008797          	auipc	a5,0x8
    80004570:	8727ba23          	sd	s2,-1932(a5) # 8000bde0 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80004574:	00399793          	slli	a5,s3,0x3
    80004578:	00f78793          	addi	a5,a5,15
    8000457c:	ff07f793          	andi	a5,a5,-16
    80004580:	40f10133          	sub	sp,sp,a5
    80004584:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80004588:	0019871b          	addiw	a4,s3,1
    8000458c:	00171793          	slli	a5,a4,0x1
    80004590:	00e787b3          	add	a5,a5,a4
    80004594:	00379793          	slli	a5,a5,0x3
    80004598:	00f78793          	addi	a5,a5,15
    8000459c:	ff07f793          	andi	a5,a5,-16
    800045a0:	40f10133          	sub	sp,sp,a5
    800045a4:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    800045a8:	00199493          	slli	s1,s3,0x1
    800045ac:	013484b3          	add	s1,s1,s3
    800045b0:	00349493          	slli	s1,s1,0x3
    800045b4:	009b04b3          	add	s1,s6,s1
    800045b8:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    800045bc:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    800045c0:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800045c4:	02800513          	li	a0,40
    800045c8:	ffffe097          	auipc	ra,0xffffe
    800045cc:	a24080e7          	jalr	-1500(ra) # 80001fec <_Znwm>
    800045d0:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    800045d4:	ffffe097          	auipc	ra,0xffffe
    800045d8:	b18080e7          	jalr	-1256(ra) # 800020ec <_ZN6ThreadC1Ev>
    800045dc:	00007797          	auipc	a5,0x7
    800045e0:	64478793          	addi	a5,a5,1604 # 8000bc20 <_ZTV8Consumer+0x10>
    800045e4:	00fbb023          	sd	a5,0(s7)
    800045e8:	029bb023          	sd	s1,32(s7)
    consumer->start();
    800045ec:	000b8513          	mv	a0,s7
    800045f0:	ffffe097          	auipc	ra,0xffffe
    800045f4:	b2c080e7          	jalr	-1236(ra) # 8000211c <_ZN6Thread5startEv>
    threadData[0].id = 0;
    800045f8:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    800045fc:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80004600:	00007797          	auipc	a5,0x7
    80004604:	7e07b783          	ld	a5,2016(a5) # 8000bde0 <_ZL10waitForAll>
    80004608:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    8000460c:	02800513          	li	a0,40
    80004610:	ffffe097          	auipc	ra,0xffffe
    80004614:	9dc080e7          	jalr	-1572(ra) # 80001fec <_Znwm>
    80004618:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    8000461c:	ffffe097          	auipc	ra,0xffffe
    80004620:	ad0080e7          	jalr	-1328(ra) # 800020ec <_ZN6ThreadC1Ev>
    80004624:	00007797          	auipc	a5,0x7
    80004628:	5ac78793          	addi	a5,a5,1452 # 8000bbd0 <_ZTV16ProducerKeyborad+0x10>
    8000462c:	00f4b023          	sd	a5,0(s1)
    80004630:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004634:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80004638:	00048513          	mv	a0,s1
    8000463c:	ffffe097          	auipc	ra,0xffffe
    80004640:	ae0080e7          	jalr	-1312(ra) # 8000211c <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004644:	00100913          	li	s2,1
    80004648:	0300006f          	j	80004678 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    8000464c:	00007797          	auipc	a5,0x7
    80004650:	5ac78793          	addi	a5,a5,1452 # 8000bbf8 <_ZTV8Producer+0x10>
    80004654:	00fcb023          	sd	a5,0(s9)
    80004658:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    8000465c:	00391793          	slli	a5,s2,0x3
    80004660:	00fa07b3          	add	a5,s4,a5
    80004664:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80004668:	000c8513          	mv	a0,s9
    8000466c:	ffffe097          	auipc	ra,0xffffe
    80004670:	ab0080e7          	jalr	-1360(ra) # 8000211c <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004674:	0019091b          	addiw	s2,s2,1
    80004678:	05395263          	bge	s2,s3,800046bc <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    8000467c:	00191493          	slli	s1,s2,0x1
    80004680:	012484b3          	add	s1,s1,s2
    80004684:	00349493          	slli	s1,s1,0x3
    80004688:	009b04b3          	add	s1,s6,s1
    8000468c:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80004690:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80004694:	00007797          	auipc	a5,0x7
    80004698:	74c7b783          	ld	a5,1868(a5) # 8000bde0 <_ZL10waitForAll>
    8000469c:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    800046a0:	02800513          	li	a0,40
    800046a4:	ffffe097          	auipc	ra,0xffffe
    800046a8:	948080e7          	jalr	-1720(ra) # 80001fec <_Znwm>
    800046ac:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800046b0:	ffffe097          	auipc	ra,0xffffe
    800046b4:	a3c080e7          	jalr	-1476(ra) # 800020ec <_ZN6ThreadC1Ev>
    800046b8:	f95ff06f          	j	8000464c <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    800046bc:	ffffe097          	auipc	ra,0xffffe
    800046c0:	a98080e7          	jalr	-1384(ra) # 80002154 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800046c4:	00000493          	li	s1,0
    800046c8:	0099ce63          	blt	s3,s1,800046e4 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    800046cc:	00007517          	auipc	a0,0x7
    800046d0:	71453503          	ld	a0,1812(a0) # 8000bde0 <_ZL10waitForAll>
    800046d4:	ffffe097          	auipc	ra,0xffffe
    800046d8:	b0c080e7          	jalr	-1268(ra) # 800021e0 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800046dc:	0014849b          	addiw	s1,s1,1
    800046e0:	fe9ff06f          	j	800046c8 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    800046e4:	00007517          	auipc	a0,0x7
    800046e8:	6fc53503          	ld	a0,1788(a0) # 8000bde0 <_ZL10waitForAll>
    800046ec:	00050863          	beqz	a0,800046fc <_Z20testConsumerProducerv+0x2f4>
    800046f0:	00053783          	ld	a5,0(a0)
    800046f4:	0087b783          	ld	a5,8(a5)
    800046f8:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    800046fc:	00000493          	li	s1,0
    80004700:	0080006f          	j	80004708 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80004704:	0014849b          	addiw	s1,s1,1
    80004708:	0334d263          	bge	s1,s3,8000472c <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    8000470c:	00349793          	slli	a5,s1,0x3
    80004710:	00fa07b3          	add	a5,s4,a5
    80004714:	0007b503          	ld	a0,0(a5)
    80004718:	fe0506e3          	beqz	a0,80004704 <_Z20testConsumerProducerv+0x2fc>
    8000471c:	00053783          	ld	a5,0(a0)
    80004720:	0087b783          	ld	a5,8(a5)
    80004724:	000780e7          	jalr	a5
    80004728:	fddff06f          	j	80004704 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    8000472c:	000b8a63          	beqz	s7,80004740 <_Z20testConsumerProducerv+0x338>
    80004730:	000bb783          	ld	a5,0(s7)
    80004734:	0087b783          	ld	a5,8(a5)
    80004738:	000b8513          	mv	a0,s7
    8000473c:	000780e7          	jalr	a5
    delete buffer;
    80004740:	000a8e63          	beqz	s5,8000475c <_Z20testConsumerProducerv+0x354>
    80004744:	000a8513          	mv	a0,s5
    80004748:	00002097          	auipc	ra,0x2
    8000474c:	ba0080e7          	jalr	-1120(ra) # 800062e8 <_ZN9BufferCPPD1Ev>
    80004750:	000a8513          	mv	a0,s5
    80004754:	ffffe097          	auipc	ra,0xffffe
    80004758:	8c0080e7          	jalr	-1856(ra) # 80002014 <_ZdlPv>
    8000475c:	000c0113          	mv	sp,s8
}
    80004760:	f8040113          	addi	sp,s0,-128
    80004764:	07813083          	ld	ra,120(sp)
    80004768:	07013403          	ld	s0,112(sp)
    8000476c:	06813483          	ld	s1,104(sp)
    80004770:	06013903          	ld	s2,96(sp)
    80004774:	05813983          	ld	s3,88(sp)
    80004778:	05013a03          	ld	s4,80(sp)
    8000477c:	04813a83          	ld	s5,72(sp)
    80004780:	04013b03          	ld	s6,64(sp)
    80004784:	03813b83          	ld	s7,56(sp)
    80004788:	03013c03          	ld	s8,48(sp)
    8000478c:	02813c83          	ld	s9,40(sp)
    80004790:	08010113          	addi	sp,sp,128
    80004794:	00008067          	ret
    80004798:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    8000479c:	000a8513          	mv	a0,s5
    800047a0:	ffffe097          	auipc	ra,0xffffe
    800047a4:	874080e7          	jalr	-1932(ra) # 80002014 <_ZdlPv>
    800047a8:	00048513          	mv	a0,s1
    800047ac:	00008097          	auipc	ra,0x8
    800047b0:	74c080e7          	jalr	1868(ra) # 8000cef8 <_Unwind_Resume>
    800047b4:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    800047b8:	00090513          	mv	a0,s2
    800047bc:	ffffe097          	auipc	ra,0xffffe
    800047c0:	858080e7          	jalr	-1960(ra) # 80002014 <_ZdlPv>
    800047c4:	00048513          	mv	a0,s1
    800047c8:	00008097          	auipc	ra,0x8
    800047cc:	730080e7          	jalr	1840(ra) # 8000cef8 <_Unwind_Resume>
    800047d0:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800047d4:	000b8513          	mv	a0,s7
    800047d8:	ffffe097          	auipc	ra,0xffffe
    800047dc:	83c080e7          	jalr	-1988(ra) # 80002014 <_ZdlPv>
    800047e0:	00048513          	mv	a0,s1
    800047e4:	00008097          	auipc	ra,0x8
    800047e8:	714080e7          	jalr	1812(ra) # 8000cef8 <_Unwind_Resume>
    800047ec:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800047f0:	00048513          	mv	a0,s1
    800047f4:	ffffe097          	auipc	ra,0xffffe
    800047f8:	820080e7          	jalr	-2016(ra) # 80002014 <_ZdlPv>
    800047fc:	00090513          	mv	a0,s2
    80004800:	00008097          	auipc	ra,0x8
    80004804:	6f8080e7          	jalr	1784(ra) # 8000cef8 <_Unwind_Resume>
    80004808:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    8000480c:	000c8513          	mv	a0,s9
    80004810:	ffffe097          	auipc	ra,0xffffe
    80004814:	804080e7          	jalr	-2044(ra) # 80002014 <_ZdlPv>
    80004818:	00048513          	mv	a0,s1
    8000481c:	00008097          	auipc	ra,0x8
    80004820:	6dc080e7          	jalr	1756(ra) # 8000cef8 <_Unwind_Resume>

0000000080004824 <_ZN8Consumer3runEv>:
    void run() override {
    80004824:	fd010113          	addi	sp,sp,-48
    80004828:	02113423          	sd	ra,40(sp)
    8000482c:	02813023          	sd	s0,32(sp)
    80004830:	00913c23          	sd	s1,24(sp)
    80004834:	01213823          	sd	s2,16(sp)
    80004838:	01313423          	sd	s3,8(sp)
    8000483c:	03010413          	addi	s0,sp,48
    80004840:	00050913          	mv	s2,a0
        int i = 0;
    80004844:	00000993          	li	s3,0
    80004848:	0100006f          	j	80004858 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    8000484c:	00a00513          	li	a0,10
    80004850:	ffffe097          	auipc	ra,0xffffe
    80004854:	ae8080e7          	jalr	-1304(ra) # 80002338 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80004858:	00007797          	auipc	a5,0x7
    8000485c:	5807a783          	lw	a5,1408(a5) # 8000bdd8 <_ZL9threadEnd>
    80004860:	04079a63          	bnez	a5,800048b4 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80004864:	02093783          	ld	a5,32(s2)
    80004868:	0087b503          	ld	a0,8(a5)
    8000486c:	00002097          	auipc	ra,0x2
    80004870:	968080e7          	jalr	-1688(ra) # 800061d4 <_ZN9BufferCPP3getEv>
            i++;
    80004874:	0019849b          	addiw	s1,s3,1
    80004878:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    8000487c:	0ff57513          	andi	a0,a0,255
    80004880:	ffffe097          	auipc	ra,0xffffe
    80004884:	ab8080e7          	jalr	-1352(ra) # 80002338 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80004888:	05000793          	li	a5,80
    8000488c:	02f4e4bb          	remw	s1,s1,a5
    80004890:	fc0494e3          	bnez	s1,80004858 <_ZN8Consumer3runEv+0x34>
    80004894:	fb9ff06f          	j	8000484c <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80004898:	02093783          	ld	a5,32(s2)
    8000489c:	0087b503          	ld	a0,8(a5)
    800048a0:	00002097          	auipc	ra,0x2
    800048a4:	934080e7          	jalr	-1740(ra) # 800061d4 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    800048a8:	0ff57513          	andi	a0,a0,255
    800048ac:	ffffe097          	auipc	ra,0xffffe
    800048b0:	a8c080e7          	jalr	-1396(ra) # 80002338 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    800048b4:	02093783          	ld	a5,32(s2)
    800048b8:	0087b503          	ld	a0,8(a5)
    800048bc:	00002097          	auipc	ra,0x2
    800048c0:	9a4080e7          	jalr	-1628(ra) # 80006260 <_ZN9BufferCPP6getCntEv>
    800048c4:	fca04ae3          	bgtz	a0,80004898 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    800048c8:	02093783          	ld	a5,32(s2)
    800048cc:	0107b503          	ld	a0,16(a5)
    800048d0:	ffffe097          	auipc	ra,0xffffe
    800048d4:	948080e7          	jalr	-1720(ra) # 80002218 <_ZN9Semaphore6signalEv>
    }
    800048d8:	02813083          	ld	ra,40(sp)
    800048dc:	02013403          	ld	s0,32(sp)
    800048e0:	01813483          	ld	s1,24(sp)
    800048e4:	01013903          	ld	s2,16(sp)
    800048e8:	00813983          	ld	s3,8(sp)
    800048ec:	03010113          	addi	sp,sp,48
    800048f0:	00008067          	ret

00000000800048f4 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    800048f4:	ff010113          	addi	sp,sp,-16
    800048f8:	00113423          	sd	ra,8(sp)
    800048fc:	00813023          	sd	s0,0(sp)
    80004900:	01010413          	addi	s0,sp,16
    80004904:	00007797          	auipc	a5,0x7
    80004908:	31c78793          	addi	a5,a5,796 # 8000bc20 <_ZTV8Consumer+0x10>
    8000490c:	00f53023          	sd	a5,0(a0)
    80004910:	ffffd097          	auipc	ra,0xffffd
    80004914:	644080e7          	jalr	1604(ra) # 80001f54 <_ZN6ThreadD1Ev>
    80004918:	00813083          	ld	ra,8(sp)
    8000491c:	00013403          	ld	s0,0(sp)
    80004920:	01010113          	addi	sp,sp,16
    80004924:	00008067          	ret

0000000080004928 <_ZN8ConsumerD0Ev>:
    80004928:	fe010113          	addi	sp,sp,-32
    8000492c:	00113c23          	sd	ra,24(sp)
    80004930:	00813823          	sd	s0,16(sp)
    80004934:	00913423          	sd	s1,8(sp)
    80004938:	02010413          	addi	s0,sp,32
    8000493c:	00050493          	mv	s1,a0
    80004940:	00007797          	auipc	a5,0x7
    80004944:	2e078793          	addi	a5,a5,736 # 8000bc20 <_ZTV8Consumer+0x10>
    80004948:	00f53023          	sd	a5,0(a0)
    8000494c:	ffffd097          	auipc	ra,0xffffd
    80004950:	608080e7          	jalr	1544(ra) # 80001f54 <_ZN6ThreadD1Ev>
    80004954:	00048513          	mv	a0,s1
    80004958:	ffffd097          	auipc	ra,0xffffd
    8000495c:	6bc080e7          	jalr	1724(ra) # 80002014 <_ZdlPv>
    80004960:	01813083          	ld	ra,24(sp)
    80004964:	01013403          	ld	s0,16(sp)
    80004968:	00813483          	ld	s1,8(sp)
    8000496c:	02010113          	addi	sp,sp,32
    80004970:	00008067          	ret

0000000080004974 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004974:	ff010113          	addi	sp,sp,-16
    80004978:	00113423          	sd	ra,8(sp)
    8000497c:	00813023          	sd	s0,0(sp)
    80004980:	01010413          	addi	s0,sp,16
    80004984:	00007797          	auipc	a5,0x7
    80004988:	24c78793          	addi	a5,a5,588 # 8000bbd0 <_ZTV16ProducerKeyborad+0x10>
    8000498c:	00f53023          	sd	a5,0(a0)
    80004990:	ffffd097          	auipc	ra,0xffffd
    80004994:	5c4080e7          	jalr	1476(ra) # 80001f54 <_ZN6ThreadD1Ev>
    80004998:	00813083          	ld	ra,8(sp)
    8000499c:	00013403          	ld	s0,0(sp)
    800049a0:	01010113          	addi	sp,sp,16
    800049a4:	00008067          	ret

00000000800049a8 <_ZN16ProducerKeyboradD0Ev>:
    800049a8:	fe010113          	addi	sp,sp,-32
    800049ac:	00113c23          	sd	ra,24(sp)
    800049b0:	00813823          	sd	s0,16(sp)
    800049b4:	00913423          	sd	s1,8(sp)
    800049b8:	02010413          	addi	s0,sp,32
    800049bc:	00050493          	mv	s1,a0
    800049c0:	00007797          	auipc	a5,0x7
    800049c4:	21078793          	addi	a5,a5,528 # 8000bbd0 <_ZTV16ProducerKeyborad+0x10>
    800049c8:	00f53023          	sd	a5,0(a0)
    800049cc:	ffffd097          	auipc	ra,0xffffd
    800049d0:	588080e7          	jalr	1416(ra) # 80001f54 <_ZN6ThreadD1Ev>
    800049d4:	00048513          	mv	a0,s1
    800049d8:	ffffd097          	auipc	ra,0xffffd
    800049dc:	63c080e7          	jalr	1596(ra) # 80002014 <_ZdlPv>
    800049e0:	01813083          	ld	ra,24(sp)
    800049e4:	01013403          	ld	s0,16(sp)
    800049e8:	00813483          	ld	s1,8(sp)
    800049ec:	02010113          	addi	sp,sp,32
    800049f0:	00008067          	ret

00000000800049f4 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    800049f4:	ff010113          	addi	sp,sp,-16
    800049f8:	00113423          	sd	ra,8(sp)
    800049fc:	00813023          	sd	s0,0(sp)
    80004a00:	01010413          	addi	s0,sp,16
    80004a04:	00007797          	auipc	a5,0x7
    80004a08:	1f478793          	addi	a5,a5,500 # 8000bbf8 <_ZTV8Producer+0x10>
    80004a0c:	00f53023          	sd	a5,0(a0)
    80004a10:	ffffd097          	auipc	ra,0xffffd
    80004a14:	544080e7          	jalr	1348(ra) # 80001f54 <_ZN6ThreadD1Ev>
    80004a18:	00813083          	ld	ra,8(sp)
    80004a1c:	00013403          	ld	s0,0(sp)
    80004a20:	01010113          	addi	sp,sp,16
    80004a24:	00008067          	ret

0000000080004a28 <_ZN8ProducerD0Ev>:
    80004a28:	fe010113          	addi	sp,sp,-32
    80004a2c:	00113c23          	sd	ra,24(sp)
    80004a30:	00813823          	sd	s0,16(sp)
    80004a34:	00913423          	sd	s1,8(sp)
    80004a38:	02010413          	addi	s0,sp,32
    80004a3c:	00050493          	mv	s1,a0
    80004a40:	00007797          	auipc	a5,0x7
    80004a44:	1b878793          	addi	a5,a5,440 # 8000bbf8 <_ZTV8Producer+0x10>
    80004a48:	00f53023          	sd	a5,0(a0)
    80004a4c:	ffffd097          	auipc	ra,0xffffd
    80004a50:	508080e7          	jalr	1288(ra) # 80001f54 <_ZN6ThreadD1Ev>
    80004a54:	00048513          	mv	a0,s1
    80004a58:	ffffd097          	auipc	ra,0xffffd
    80004a5c:	5bc080e7          	jalr	1468(ra) # 80002014 <_ZdlPv>
    80004a60:	01813083          	ld	ra,24(sp)
    80004a64:	01013403          	ld	s0,16(sp)
    80004a68:	00813483          	ld	s1,8(sp)
    80004a6c:	02010113          	addi	sp,sp,32
    80004a70:	00008067          	ret

0000000080004a74 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004a74:	fe010113          	addi	sp,sp,-32
    80004a78:	00113c23          	sd	ra,24(sp)
    80004a7c:	00813823          	sd	s0,16(sp)
    80004a80:	00913423          	sd	s1,8(sp)
    80004a84:	02010413          	addi	s0,sp,32
    80004a88:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80004a8c:	ffffd097          	auipc	ra,0xffffd
    80004a90:	b94080e7          	jalr	-1132(ra) # 80001620 <_Z4getcv>
    80004a94:	0005059b          	sext.w	a1,a0
    80004a98:	01b00793          	li	a5,27
    80004a9c:	00f58c63          	beq	a1,a5,80004ab4 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80004aa0:	0204b783          	ld	a5,32(s1)
    80004aa4:	0087b503          	ld	a0,8(a5)
    80004aa8:	00001097          	auipc	ra,0x1
    80004aac:	69c080e7          	jalr	1692(ra) # 80006144 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80004ab0:	fddff06f          	j	80004a8c <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004ab4:	00100793          	li	a5,1
    80004ab8:	00007717          	auipc	a4,0x7
    80004abc:	32f72023          	sw	a5,800(a4) # 8000bdd8 <_ZL9threadEnd>
        td->buffer->put('!');
    80004ac0:	0204b783          	ld	a5,32(s1)
    80004ac4:	02100593          	li	a1,33
    80004ac8:	0087b503          	ld	a0,8(a5)
    80004acc:	00001097          	auipc	ra,0x1
    80004ad0:	678080e7          	jalr	1656(ra) # 80006144 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004ad4:	0204b783          	ld	a5,32(s1)
    80004ad8:	0107b503          	ld	a0,16(a5)
    80004adc:	ffffd097          	auipc	ra,0xffffd
    80004ae0:	73c080e7          	jalr	1852(ra) # 80002218 <_ZN9Semaphore6signalEv>
    }
    80004ae4:	01813083          	ld	ra,24(sp)
    80004ae8:	01013403          	ld	s0,16(sp)
    80004aec:	00813483          	ld	s1,8(sp)
    80004af0:	02010113          	addi	sp,sp,32
    80004af4:	00008067          	ret

0000000080004af8 <_ZN8Producer3runEv>:
    void run() override {
    80004af8:	fe010113          	addi	sp,sp,-32
    80004afc:	00113c23          	sd	ra,24(sp)
    80004b00:	00813823          	sd	s0,16(sp)
    80004b04:	00913423          	sd	s1,8(sp)
    80004b08:	01213023          	sd	s2,0(sp)
    80004b0c:	02010413          	addi	s0,sp,32
    80004b10:	00050493          	mv	s1,a0
        int i = 0;
    80004b14:	00000913          	li	s2,0
        while (!threadEnd) {
    80004b18:	00007797          	auipc	a5,0x7
    80004b1c:	2c07a783          	lw	a5,704(a5) # 8000bdd8 <_ZL9threadEnd>
    80004b20:	04079263          	bnez	a5,80004b64 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004b24:	0204b783          	ld	a5,32(s1)
    80004b28:	0007a583          	lw	a1,0(a5)
    80004b2c:	0305859b          	addiw	a1,a1,48
    80004b30:	0087b503          	ld	a0,8(a5)
    80004b34:	00001097          	auipc	ra,0x1
    80004b38:	610080e7          	jalr	1552(ra) # 80006144 <_ZN9BufferCPP3putEi>
            i++;
    80004b3c:	0019071b          	addiw	a4,s2,1
    80004b40:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004b44:	0204b783          	ld	a5,32(s1)
    80004b48:	0007a783          	lw	a5,0(a5)
    80004b4c:	00e787bb          	addw	a5,a5,a4
    80004b50:	00500513          	li	a0,5
    80004b54:	02a7e53b          	remw	a0,a5,a0
    80004b58:	ffffd097          	auipc	ra,0xffffd
    80004b5c:	624080e7          	jalr	1572(ra) # 8000217c <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004b60:	fb9ff06f          	j	80004b18 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004b64:	0204b783          	ld	a5,32(s1)
    80004b68:	0107b503          	ld	a0,16(a5)
    80004b6c:	ffffd097          	auipc	ra,0xffffd
    80004b70:	6ac080e7          	jalr	1708(ra) # 80002218 <_ZN9Semaphore6signalEv>
    }
    80004b74:	01813083          	ld	ra,24(sp)
    80004b78:	01013403          	ld	s0,16(sp)
    80004b7c:	00813483          	ld	s1,8(sp)
    80004b80:	00013903          	ld	s2,0(sp)
    80004b84:	02010113          	addi	sp,sp,32
    80004b88:	00008067          	ret

0000000080004b8c <_ZN6BufferC1Ei>:
#include "bounded_buffer.hpp"


Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004b8c:	fe010113          	addi	sp,sp,-32
    80004b90:	00113c23          	sd	ra,24(sp)
    80004b94:	00813823          	sd	s0,16(sp)
    80004b98:	00913423          	sd	s1,8(sp)
    80004b9c:	01213023          	sd	s2,0(sp)
    80004ba0:	02010413          	addi	s0,sp,32
    80004ba4:	00050493          	mv	s1,a0
    80004ba8:	00058913          	mv	s2,a1
    80004bac:	0015879b          	addiw	a5,a1,1
    80004bb0:	0007851b          	sext.w	a0,a5
    80004bb4:	00f4a023          	sw	a5,0(s1)
    80004bb8:	0004a823          	sw	zero,16(s1)
    80004bbc:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004bc0:	00251513          	slli	a0,a0,0x2
    80004bc4:	ffffc097          	auipc	ra,0xffffc
    80004bc8:	694080e7          	jalr	1684(ra) # 80001258 <_Z9mem_allocm>
    80004bcc:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80004bd0:	00000593          	li	a1,0
    80004bd4:	02048513          	addi	a0,s1,32
    80004bd8:	ffffd097          	auipc	ra,0xffffd
    80004bdc:	830080e7          	jalr	-2000(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&spaceAvailable, _cap);
    80004be0:	00090593          	mv	a1,s2
    80004be4:	01848513          	addi	a0,s1,24
    80004be8:	ffffd097          	auipc	ra,0xffffd
    80004bec:	820080e7          	jalr	-2016(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&mutexHead, 1);
    80004bf0:	00100593          	li	a1,1
    80004bf4:	02848513          	addi	a0,s1,40
    80004bf8:	ffffd097          	auipc	ra,0xffffd
    80004bfc:	810080e7          	jalr	-2032(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&mutexTail, 1);
    80004c00:	00100593          	li	a1,1
    80004c04:	03048513          	addi	a0,s1,48
    80004c08:	ffffd097          	auipc	ra,0xffffd
    80004c0c:	800080e7          	jalr	-2048(ra) # 80001408 <_Z8sem_openPP3Semj>
}
    80004c10:	01813083          	ld	ra,24(sp)
    80004c14:	01013403          	ld	s0,16(sp)
    80004c18:	00813483          	ld	s1,8(sp)
    80004c1c:	00013903          	ld	s2,0(sp)
    80004c20:	02010113          	addi	sp,sp,32
    80004c24:	00008067          	ret

0000000080004c28 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80004c28:	fe010113          	addi	sp,sp,-32
    80004c2c:	00113c23          	sd	ra,24(sp)
    80004c30:	00813823          	sd	s0,16(sp)
    80004c34:	00913423          	sd	s1,8(sp)
    80004c38:	01213023          	sd	s2,0(sp)
    80004c3c:	02010413          	addi	s0,sp,32
    80004c40:	00050493          	mv	s1,a0
    80004c44:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80004c48:	01853503          	ld	a0,24(a0)
    80004c4c:	ffffd097          	auipc	ra,0xffffd
    80004c50:	858080e7          	jalr	-1960(ra) # 800014a4 <_Z8sem_waitP3Sem>

    sem_wait(mutexTail);
    80004c54:	0304b503          	ld	a0,48(s1)
    80004c58:	ffffd097          	auipc	ra,0xffffd
    80004c5c:	84c080e7          	jalr	-1972(ra) # 800014a4 <_Z8sem_waitP3Sem>
    buffer[tail] = val;
    80004c60:	0084b783          	ld	a5,8(s1)
    80004c64:	0144a703          	lw	a4,20(s1)
    80004c68:	00271713          	slli	a4,a4,0x2
    80004c6c:	00e787b3          	add	a5,a5,a4
    80004c70:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80004c74:	0144a783          	lw	a5,20(s1)
    80004c78:	0017879b          	addiw	a5,a5,1
    80004c7c:	0004a703          	lw	a4,0(s1)
    80004c80:	02e7e7bb          	remw	a5,a5,a4
    80004c84:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80004c88:	0304b503          	ld	a0,48(s1)
    80004c8c:	ffffd097          	auipc	ra,0xffffd
    80004c90:	864080e7          	jalr	-1948(ra) # 800014f0 <_Z10sem_signalP3Sem>

    sem_signal(itemAvailable);
    80004c94:	0204b503          	ld	a0,32(s1)
    80004c98:	ffffd097          	auipc	ra,0xffffd
    80004c9c:	858080e7          	jalr	-1960(ra) # 800014f0 <_Z10sem_signalP3Sem>

}
    80004ca0:	01813083          	ld	ra,24(sp)
    80004ca4:	01013403          	ld	s0,16(sp)
    80004ca8:	00813483          	ld	s1,8(sp)
    80004cac:	00013903          	ld	s2,0(sp)
    80004cb0:	02010113          	addi	sp,sp,32
    80004cb4:	00008067          	ret

0000000080004cb8 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80004cb8:	fe010113          	addi	sp,sp,-32
    80004cbc:	00113c23          	sd	ra,24(sp)
    80004cc0:	00813823          	sd	s0,16(sp)
    80004cc4:	00913423          	sd	s1,8(sp)
    80004cc8:	01213023          	sd	s2,0(sp)
    80004ccc:	02010413          	addi	s0,sp,32
    80004cd0:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80004cd4:	02053503          	ld	a0,32(a0)
    80004cd8:	ffffc097          	auipc	ra,0xffffc
    80004cdc:	7cc080e7          	jalr	1996(ra) # 800014a4 <_Z8sem_waitP3Sem>

    sem_wait(mutexHead);
    80004ce0:	0284b503          	ld	a0,40(s1)
    80004ce4:	ffffc097          	auipc	ra,0xffffc
    80004ce8:	7c0080e7          	jalr	1984(ra) # 800014a4 <_Z8sem_waitP3Sem>

    int ret = buffer[head];
    80004cec:	0084b703          	ld	a4,8(s1)
    80004cf0:	0104a783          	lw	a5,16(s1)
    80004cf4:	00279693          	slli	a3,a5,0x2
    80004cf8:	00d70733          	add	a4,a4,a3
    80004cfc:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80004d00:	0017879b          	addiw	a5,a5,1
    80004d04:	0004a703          	lw	a4,0(s1)
    80004d08:	02e7e7bb          	remw	a5,a5,a4
    80004d0c:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80004d10:	0284b503          	ld	a0,40(s1)
    80004d14:	ffffc097          	auipc	ra,0xffffc
    80004d18:	7dc080e7          	jalr	2012(ra) # 800014f0 <_Z10sem_signalP3Sem>

    sem_signal(spaceAvailable);
    80004d1c:	0184b503          	ld	a0,24(s1)
    80004d20:	ffffc097          	auipc	ra,0xffffc
    80004d24:	7d0080e7          	jalr	2000(ra) # 800014f0 <_Z10sem_signalP3Sem>

    return ret;
}
    80004d28:	00090513          	mv	a0,s2
    80004d2c:	01813083          	ld	ra,24(sp)
    80004d30:	01013403          	ld	s0,16(sp)
    80004d34:	00813483          	ld	s1,8(sp)
    80004d38:	00013903          	ld	s2,0(sp)
    80004d3c:	02010113          	addi	sp,sp,32
    80004d40:	00008067          	ret

0000000080004d44 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80004d44:	fe010113          	addi	sp,sp,-32
    80004d48:	00113c23          	sd	ra,24(sp)
    80004d4c:	00813823          	sd	s0,16(sp)
    80004d50:	00913423          	sd	s1,8(sp)
    80004d54:	01213023          	sd	s2,0(sp)
    80004d58:	02010413          	addi	s0,sp,32
    80004d5c:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80004d60:	02853503          	ld	a0,40(a0)
    80004d64:	ffffc097          	auipc	ra,0xffffc
    80004d68:	740080e7          	jalr	1856(ra) # 800014a4 <_Z8sem_waitP3Sem>
    sem_wait(mutexTail);
    80004d6c:	0304b503          	ld	a0,48(s1)
    80004d70:	ffffc097          	auipc	ra,0xffffc
    80004d74:	734080e7          	jalr	1844(ra) # 800014a4 <_Z8sem_waitP3Sem>

    if (tail >= head) {
    80004d78:	0144a783          	lw	a5,20(s1)
    80004d7c:	0104a903          	lw	s2,16(s1)
    80004d80:	0327ce63          	blt	a5,s2,80004dbc <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80004d84:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80004d88:	0304b503          	ld	a0,48(s1)
    80004d8c:	ffffc097          	auipc	ra,0xffffc
    80004d90:	764080e7          	jalr	1892(ra) # 800014f0 <_Z10sem_signalP3Sem>
    sem_signal(mutexHead);
    80004d94:	0284b503          	ld	a0,40(s1)
    80004d98:	ffffc097          	auipc	ra,0xffffc
    80004d9c:	758080e7          	jalr	1880(ra) # 800014f0 <_Z10sem_signalP3Sem>

    return ret;
}
    80004da0:	00090513          	mv	a0,s2
    80004da4:	01813083          	ld	ra,24(sp)
    80004da8:	01013403          	ld	s0,16(sp)
    80004dac:	00813483          	ld	s1,8(sp)
    80004db0:	00013903          	ld	s2,0(sp)
    80004db4:	02010113          	addi	sp,sp,32
    80004db8:	00008067          	ret
        ret = cap - head + tail;
    80004dbc:	0004a703          	lw	a4,0(s1)
    80004dc0:	4127093b          	subw	s2,a4,s2
    80004dc4:	00f9093b          	addw	s2,s2,a5
    80004dc8:	fc1ff06f          	j	80004d88 <_ZN6Buffer6getCntEv+0x44>

0000000080004dcc <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80004dcc:	fe010113          	addi	sp,sp,-32
    80004dd0:	00113c23          	sd	ra,24(sp)
    80004dd4:	00813823          	sd	s0,16(sp)
    80004dd8:	00913423          	sd	s1,8(sp)
    80004ddc:	02010413          	addi	s0,sp,32
    80004de0:	00050493          	mv	s1,a0
    putc('\n');
    80004de4:	00a00513          	li	a0,10
    80004de8:	ffffd097          	auipc	ra,0xffffd
    80004dec:	884080e7          	jalr	-1916(ra) # 8000166c <_Z4putcc>
    printString("Buffer deleted!\n");
    80004df0:	00004517          	auipc	a0,0x4
    80004df4:	52050513          	addi	a0,a0,1312 # 80009310 <CONSOLE_STATUS+0x300>
    80004df8:	00001097          	auipc	ra,0x1
    80004dfc:	f28080e7          	jalr	-216(ra) # 80005d20 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80004e00:	00048513          	mv	a0,s1
    80004e04:	00000097          	auipc	ra,0x0
    80004e08:	f40080e7          	jalr	-192(ra) # 80004d44 <_ZN6Buffer6getCntEv>
    80004e0c:	02a05c63          	blez	a0,80004e44 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80004e10:	0084b783          	ld	a5,8(s1)
    80004e14:	0104a703          	lw	a4,16(s1)
    80004e18:	00271713          	slli	a4,a4,0x2
    80004e1c:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80004e20:	0007c503          	lbu	a0,0(a5)
    80004e24:	ffffd097          	auipc	ra,0xffffd
    80004e28:	848080e7          	jalr	-1976(ra) # 8000166c <_Z4putcc>
        head = (head + 1) % cap;
    80004e2c:	0104a783          	lw	a5,16(s1)
    80004e30:	0017879b          	addiw	a5,a5,1
    80004e34:	0004a703          	lw	a4,0(s1)
    80004e38:	02e7e7bb          	remw	a5,a5,a4
    80004e3c:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80004e40:	fc1ff06f          	j	80004e00 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80004e44:	02100513          	li	a0,33
    80004e48:	ffffd097          	auipc	ra,0xffffd
    80004e4c:	824080e7          	jalr	-2012(ra) # 8000166c <_Z4putcc>
    putc('\n');
    80004e50:	00a00513          	li	a0,10
    80004e54:	ffffd097          	auipc	ra,0xffffd
    80004e58:	818080e7          	jalr	-2024(ra) # 8000166c <_Z4putcc>
    mem_free(buffer);
    80004e5c:	0084b503          	ld	a0,8(s1)
    80004e60:	ffffc097          	auipc	ra,0xffffc
    80004e64:	44c080e7          	jalr	1100(ra) # 800012ac <_Z8mem_freePv>
    sem_close(itemAvailable);
    80004e68:	0204b503          	ld	a0,32(s1)
    80004e6c:	ffffc097          	auipc	ra,0xffffc
    80004e70:	5ec080e7          	jalr	1516(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(spaceAvailable);
    80004e74:	0184b503          	ld	a0,24(s1)
    80004e78:	ffffc097          	auipc	ra,0xffffc
    80004e7c:	5e0080e7          	jalr	1504(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(mutexTail);
    80004e80:	0304b503          	ld	a0,48(s1)
    80004e84:	ffffc097          	auipc	ra,0xffffc
    80004e88:	5d4080e7          	jalr	1492(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(mutexHead);
    80004e8c:	0284b503          	ld	a0,40(s1)
    80004e90:	ffffc097          	auipc	ra,0xffffc
    80004e94:	5c8080e7          	jalr	1480(ra) # 80001458 <_Z9sem_closeP3Sem>
}
    80004e98:	01813083          	ld	ra,24(sp)
    80004e9c:	01013403          	ld	s0,16(sp)
    80004ea0:	00813483          	ld	s1,8(sp)
    80004ea4:	02010113          	addi	sp,sp,32
    80004ea8:	00008067          	ret

0000000080004eac <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004eac:	fe010113          	addi	sp,sp,-32
    80004eb0:	00113c23          	sd	ra,24(sp)
    80004eb4:	00813823          	sd	s0,16(sp)
    80004eb8:	00913423          	sd	s1,8(sp)
    80004ebc:	01213023          	sd	s2,0(sp)
    80004ec0:	02010413          	addi	s0,sp,32
    80004ec4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004ec8:	00100793          	li	a5,1
    80004ecc:	02a7f863          	bgeu	a5,a0,80004efc <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004ed0:	00a00793          	li	a5,10
    80004ed4:	02f577b3          	remu	a5,a0,a5
    80004ed8:	02078e63          	beqz	a5,80004f14 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004edc:	fff48513          	addi	a0,s1,-1
    80004ee0:	00000097          	auipc	ra,0x0
    80004ee4:	fcc080e7          	jalr	-52(ra) # 80004eac <_ZL9fibonaccim>
    80004ee8:	00050913          	mv	s2,a0
    80004eec:	ffe48513          	addi	a0,s1,-2
    80004ef0:	00000097          	auipc	ra,0x0
    80004ef4:	fbc080e7          	jalr	-68(ra) # 80004eac <_ZL9fibonaccim>
    80004ef8:	00a90533          	add	a0,s2,a0
}
    80004efc:	01813083          	ld	ra,24(sp)
    80004f00:	01013403          	ld	s0,16(sp)
    80004f04:	00813483          	ld	s1,8(sp)
    80004f08:	00013903          	ld	s2,0(sp)
    80004f0c:	02010113          	addi	sp,sp,32
    80004f10:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004f14:	ffffc097          	auipc	ra,0xffffc
    80004f18:	4b8080e7          	jalr	1208(ra) # 800013cc <_Z15thread_dispatchv>
    80004f1c:	fc1ff06f          	j	80004edc <_ZL9fibonaccim+0x30>

0000000080004f20 <_ZL11workerBodyDPv>:
    printString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004f20:	fe010113          	addi	sp,sp,-32
    80004f24:	00113c23          	sd	ra,24(sp)
    80004f28:	00813823          	sd	s0,16(sp)
    80004f2c:	00913423          	sd	s1,8(sp)
    80004f30:	01213023          	sd	s2,0(sp)
    80004f34:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004f38:	00a00493          	li	s1,10
    80004f3c:	0400006f          	j	80004f7c <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004f40:	00004517          	auipc	a0,0x4
    80004f44:	33850513          	addi	a0,a0,824 # 80009278 <CONSOLE_STATUS+0x268>
    80004f48:	00001097          	auipc	ra,0x1
    80004f4c:	dd8080e7          	jalr	-552(ra) # 80005d20 <_Z11printStringPKc>
    80004f50:	00000613          	li	a2,0
    80004f54:	00a00593          	li	a1,10
    80004f58:	00048513          	mv	a0,s1
    80004f5c:	00001097          	auipc	ra,0x1
    80004f60:	f74080e7          	jalr	-140(ra) # 80005ed0 <_Z8printIntiii>
    80004f64:	00004517          	auipc	a0,0x4
    80004f68:	51450513          	addi	a0,a0,1300 # 80009478 <CONSOLE_STATUS+0x468>
    80004f6c:	00001097          	auipc	ra,0x1
    80004f70:	db4080e7          	jalr	-588(ra) # 80005d20 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004f74:	0014849b          	addiw	s1,s1,1
    80004f78:	0ff4f493          	andi	s1,s1,255
    80004f7c:	00c00793          	li	a5,12
    80004f80:	fc97f0e3          	bgeu	a5,s1,80004f40 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004f84:	00004517          	auipc	a0,0x4
    80004f88:	2fc50513          	addi	a0,a0,764 # 80009280 <CONSOLE_STATUS+0x270>
    80004f8c:	00001097          	auipc	ra,0x1
    80004f90:	d94080e7          	jalr	-620(ra) # 80005d20 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004f94:	00500313          	li	t1,5
    thread_dispatch();
    80004f98:	ffffc097          	auipc	ra,0xffffc
    80004f9c:	434080e7          	jalr	1076(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004fa0:	01000513          	li	a0,16
    80004fa4:	00000097          	auipc	ra,0x0
    80004fa8:	f08080e7          	jalr	-248(ra) # 80004eac <_ZL9fibonaccim>
    80004fac:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004fb0:	00004517          	auipc	a0,0x4
    80004fb4:	2e050513          	addi	a0,a0,736 # 80009290 <CONSOLE_STATUS+0x280>
    80004fb8:	00001097          	auipc	ra,0x1
    80004fbc:	d68080e7          	jalr	-664(ra) # 80005d20 <_Z11printStringPKc>
    80004fc0:	00000613          	li	a2,0
    80004fc4:	00a00593          	li	a1,10
    80004fc8:	0009051b          	sext.w	a0,s2
    80004fcc:	00001097          	auipc	ra,0x1
    80004fd0:	f04080e7          	jalr	-252(ra) # 80005ed0 <_Z8printIntiii>
    80004fd4:	00004517          	auipc	a0,0x4
    80004fd8:	4a450513          	addi	a0,a0,1188 # 80009478 <CONSOLE_STATUS+0x468>
    80004fdc:	00001097          	auipc	ra,0x1
    80004fe0:	d44080e7          	jalr	-700(ra) # 80005d20 <_Z11printStringPKc>
    80004fe4:	0400006f          	j	80005024 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004fe8:	00004517          	auipc	a0,0x4
    80004fec:	29050513          	addi	a0,a0,656 # 80009278 <CONSOLE_STATUS+0x268>
    80004ff0:	00001097          	auipc	ra,0x1
    80004ff4:	d30080e7          	jalr	-720(ra) # 80005d20 <_Z11printStringPKc>
    80004ff8:	00000613          	li	a2,0
    80004ffc:	00a00593          	li	a1,10
    80005000:	00048513          	mv	a0,s1
    80005004:	00001097          	auipc	ra,0x1
    80005008:	ecc080e7          	jalr	-308(ra) # 80005ed0 <_Z8printIntiii>
    8000500c:	00004517          	auipc	a0,0x4
    80005010:	46c50513          	addi	a0,a0,1132 # 80009478 <CONSOLE_STATUS+0x468>
    80005014:	00001097          	auipc	ra,0x1
    80005018:	d0c080e7          	jalr	-756(ra) # 80005d20 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000501c:	0014849b          	addiw	s1,s1,1
    80005020:	0ff4f493          	andi	s1,s1,255
    80005024:	00f00793          	li	a5,15
    80005028:	fc97f0e3          	bgeu	a5,s1,80004fe8 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    8000502c:	00004517          	auipc	a0,0x4
    80005030:	27450513          	addi	a0,a0,628 # 800092a0 <CONSOLE_STATUS+0x290>
    80005034:	00001097          	auipc	ra,0x1
    80005038:	cec080e7          	jalr	-788(ra) # 80005d20 <_Z11printStringPKc>
    finishedD = true;
    8000503c:	00100793          	li	a5,1
    80005040:	00007717          	auipc	a4,0x7
    80005044:	daf70423          	sb	a5,-600(a4) # 8000bde8 <_ZL9finishedD>
    thread_dispatch();
    80005048:	ffffc097          	auipc	ra,0xffffc
    8000504c:	384080e7          	jalr	900(ra) # 800013cc <_Z15thread_dispatchv>
}
    80005050:	01813083          	ld	ra,24(sp)
    80005054:	01013403          	ld	s0,16(sp)
    80005058:	00813483          	ld	s1,8(sp)
    8000505c:	00013903          	ld	s2,0(sp)
    80005060:	02010113          	addi	sp,sp,32
    80005064:	00008067          	ret

0000000080005068 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005068:	fe010113          	addi	sp,sp,-32
    8000506c:	00113c23          	sd	ra,24(sp)
    80005070:	00813823          	sd	s0,16(sp)
    80005074:	00913423          	sd	s1,8(sp)
    80005078:	01213023          	sd	s2,0(sp)
    8000507c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005080:	00000493          	li	s1,0
    80005084:	0400006f          	j	800050c4 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005088:	00004517          	auipc	a0,0x4
    8000508c:	1c050513          	addi	a0,a0,448 # 80009248 <CONSOLE_STATUS+0x238>
    80005090:	00001097          	auipc	ra,0x1
    80005094:	c90080e7          	jalr	-880(ra) # 80005d20 <_Z11printStringPKc>
    80005098:	00000613          	li	a2,0
    8000509c:	00a00593          	li	a1,10
    800050a0:	00048513          	mv	a0,s1
    800050a4:	00001097          	auipc	ra,0x1
    800050a8:	e2c080e7          	jalr	-468(ra) # 80005ed0 <_Z8printIntiii>
    800050ac:	00004517          	auipc	a0,0x4
    800050b0:	3cc50513          	addi	a0,a0,972 # 80009478 <CONSOLE_STATUS+0x468>
    800050b4:	00001097          	auipc	ra,0x1
    800050b8:	c6c080e7          	jalr	-916(ra) # 80005d20 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800050bc:	0014849b          	addiw	s1,s1,1
    800050c0:	0ff4f493          	andi	s1,s1,255
    800050c4:	00200793          	li	a5,2
    800050c8:	fc97f0e3          	bgeu	a5,s1,80005088 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800050cc:	00004517          	auipc	a0,0x4
    800050d0:	18450513          	addi	a0,a0,388 # 80009250 <CONSOLE_STATUS+0x240>
    800050d4:	00001097          	auipc	ra,0x1
    800050d8:	c4c080e7          	jalr	-948(ra) # 80005d20 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800050dc:	00700313          	li	t1,7
    thread_dispatch();
    800050e0:	ffffc097          	auipc	ra,0xffffc
    800050e4:	2ec080e7          	jalr	748(ra) # 800013cc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800050e8:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800050ec:	00004517          	auipc	a0,0x4
    800050f0:	17450513          	addi	a0,a0,372 # 80009260 <CONSOLE_STATUS+0x250>
    800050f4:	00001097          	auipc	ra,0x1
    800050f8:	c2c080e7          	jalr	-980(ra) # 80005d20 <_Z11printStringPKc>
    800050fc:	00000613          	li	a2,0
    80005100:	00a00593          	li	a1,10
    80005104:	0009051b          	sext.w	a0,s2
    80005108:	00001097          	auipc	ra,0x1
    8000510c:	dc8080e7          	jalr	-568(ra) # 80005ed0 <_Z8printIntiii>
    80005110:	00004517          	auipc	a0,0x4
    80005114:	36850513          	addi	a0,a0,872 # 80009478 <CONSOLE_STATUS+0x468>
    80005118:	00001097          	auipc	ra,0x1
    8000511c:	c08080e7          	jalr	-1016(ra) # 80005d20 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005120:	00c00513          	li	a0,12
    80005124:	00000097          	auipc	ra,0x0
    80005128:	d88080e7          	jalr	-632(ra) # 80004eac <_ZL9fibonaccim>
    8000512c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005130:	00004517          	auipc	a0,0x4
    80005134:	13850513          	addi	a0,a0,312 # 80009268 <CONSOLE_STATUS+0x258>
    80005138:	00001097          	auipc	ra,0x1
    8000513c:	be8080e7          	jalr	-1048(ra) # 80005d20 <_Z11printStringPKc>
    80005140:	00000613          	li	a2,0
    80005144:	00a00593          	li	a1,10
    80005148:	0009051b          	sext.w	a0,s2
    8000514c:	00001097          	auipc	ra,0x1
    80005150:	d84080e7          	jalr	-636(ra) # 80005ed0 <_Z8printIntiii>
    80005154:	00004517          	auipc	a0,0x4
    80005158:	32450513          	addi	a0,a0,804 # 80009478 <CONSOLE_STATUS+0x468>
    8000515c:	00001097          	auipc	ra,0x1
    80005160:	bc4080e7          	jalr	-1084(ra) # 80005d20 <_Z11printStringPKc>
    80005164:	0400006f          	j	800051a4 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005168:	00004517          	auipc	a0,0x4
    8000516c:	0e050513          	addi	a0,a0,224 # 80009248 <CONSOLE_STATUS+0x238>
    80005170:	00001097          	auipc	ra,0x1
    80005174:	bb0080e7          	jalr	-1104(ra) # 80005d20 <_Z11printStringPKc>
    80005178:	00000613          	li	a2,0
    8000517c:	00a00593          	li	a1,10
    80005180:	00048513          	mv	a0,s1
    80005184:	00001097          	auipc	ra,0x1
    80005188:	d4c080e7          	jalr	-692(ra) # 80005ed0 <_Z8printIntiii>
    8000518c:	00004517          	auipc	a0,0x4
    80005190:	2ec50513          	addi	a0,a0,748 # 80009478 <CONSOLE_STATUS+0x468>
    80005194:	00001097          	auipc	ra,0x1
    80005198:	b8c080e7          	jalr	-1140(ra) # 80005d20 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000519c:	0014849b          	addiw	s1,s1,1
    800051a0:	0ff4f493          	andi	s1,s1,255
    800051a4:	00500793          	li	a5,5
    800051a8:	fc97f0e3          	bgeu	a5,s1,80005168 <_ZL11workerBodyCPv+0x100>
    printString("C finished!\n");
    800051ac:	00004517          	auipc	a0,0x4
    800051b0:	17c50513          	addi	a0,a0,380 # 80009328 <CONSOLE_STATUS+0x318>
    800051b4:	00001097          	auipc	ra,0x1
    800051b8:	b6c080e7          	jalr	-1172(ra) # 80005d20 <_Z11printStringPKc>
    finishedC = true;
    800051bc:	00100793          	li	a5,1
    800051c0:	00007717          	auipc	a4,0x7
    800051c4:	c2f704a3          	sb	a5,-983(a4) # 8000bde9 <_ZL9finishedC>
    thread_dispatch();
    800051c8:	ffffc097          	auipc	ra,0xffffc
    800051cc:	204080e7          	jalr	516(ra) # 800013cc <_Z15thread_dispatchv>
}
    800051d0:	01813083          	ld	ra,24(sp)
    800051d4:	01013403          	ld	s0,16(sp)
    800051d8:	00813483          	ld	s1,8(sp)
    800051dc:	00013903          	ld	s2,0(sp)
    800051e0:	02010113          	addi	sp,sp,32
    800051e4:	00008067          	ret

00000000800051e8 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800051e8:	fe010113          	addi	sp,sp,-32
    800051ec:	00113c23          	sd	ra,24(sp)
    800051f0:	00813823          	sd	s0,16(sp)
    800051f4:	00913423          	sd	s1,8(sp)
    800051f8:	01213023          	sd	s2,0(sp)
    800051fc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005200:	00000913          	li	s2,0
    80005204:	0380006f          	j	8000523c <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80005208:	ffffc097          	auipc	ra,0xffffc
    8000520c:	1c4080e7          	jalr	452(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005210:	00148493          	addi	s1,s1,1
    80005214:	000027b7          	lui	a5,0x2
    80005218:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000521c:	0097ee63          	bltu	a5,s1,80005238 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005220:	00000713          	li	a4,0
    80005224:	000077b7          	lui	a5,0x7
    80005228:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000522c:	fce7eee3          	bltu	a5,a4,80005208 <_ZL11workerBodyBPv+0x20>
    80005230:	00170713          	addi	a4,a4,1
    80005234:	ff1ff06f          	j	80005224 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80005238:	00190913          	addi	s2,s2,1
    8000523c:	00f00793          	li	a5,15
    80005240:	0527e063          	bltu	a5,s2,80005280 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80005244:	00004517          	auipc	a0,0x4
    80005248:	fec50513          	addi	a0,a0,-20 # 80009230 <CONSOLE_STATUS+0x220>
    8000524c:	00001097          	auipc	ra,0x1
    80005250:	ad4080e7          	jalr	-1324(ra) # 80005d20 <_Z11printStringPKc>
    80005254:	00000613          	li	a2,0
    80005258:	00a00593          	li	a1,10
    8000525c:	0009051b          	sext.w	a0,s2
    80005260:	00001097          	auipc	ra,0x1
    80005264:	c70080e7          	jalr	-912(ra) # 80005ed0 <_Z8printIntiii>
    80005268:	00004517          	auipc	a0,0x4
    8000526c:	21050513          	addi	a0,a0,528 # 80009478 <CONSOLE_STATUS+0x468>
    80005270:	00001097          	auipc	ra,0x1
    80005274:	ab0080e7          	jalr	-1360(ra) # 80005d20 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005278:	00000493          	li	s1,0
    8000527c:	f99ff06f          	j	80005214 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80005280:	00004517          	auipc	a0,0x4
    80005284:	fb850513          	addi	a0,a0,-72 # 80009238 <CONSOLE_STATUS+0x228>
    80005288:	00001097          	auipc	ra,0x1
    8000528c:	a98080e7          	jalr	-1384(ra) # 80005d20 <_Z11printStringPKc>
    finishedB = true;
    80005290:	00100793          	li	a5,1
    80005294:	00007717          	auipc	a4,0x7
    80005298:	b4f70b23          	sb	a5,-1194(a4) # 8000bdea <_ZL9finishedB>
    thread_dispatch();
    8000529c:	ffffc097          	auipc	ra,0xffffc
    800052a0:	130080e7          	jalr	304(ra) # 800013cc <_Z15thread_dispatchv>
}
    800052a4:	01813083          	ld	ra,24(sp)
    800052a8:	01013403          	ld	s0,16(sp)
    800052ac:	00813483          	ld	s1,8(sp)
    800052b0:	00013903          	ld	s2,0(sp)
    800052b4:	02010113          	addi	sp,sp,32
    800052b8:	00008067          	ret

00000000800052bc <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800052bc:	fe010113          	addi	sp,sp,-32
    800052c0:	00113c23          	sd	ra,24(sp)
    800052c4:	00813823          	sd	s0,16(sp)
    800052c8:	00913423          	sd	s1,8(sp)
    800052cc:	01213023          	sd	s2,0(sp)
    800052d0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800052d4:	00000913          	li	s2,0
    800052d8:	0380006f          	j	80005310 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800052dc:	ffffc097          	auipc	ra,0xffffc
    800052e0:	0f0080e7          	jalr	240(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800052e4:	00148493          	addi	s1,s1,1
    800052e8:	000027b7          	lui	a5,0x2
    800052ec:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800052f0:	0097ee63          	bltu	a5,s1,8000530c <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800052f4:	00000713          	li	a4,0
    800052f8:	000077b7          	lui	a5,0x7
    800052fc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005300:	fce7eee3          	bltu	a5,a4,800052dc <_ZL11workerBodyAPv+0x20>
    80005304:	00170713          	addi	a4,a4,1
    80005308:	ff1ff06f          	j	800052f8 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000530c:	00190913          	addi	s2,s2,1
    80005310:	00900793          	li	a5,9
    80005314:	0527e063          	bltu	a5,s2,80005354 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005318:	00004517          	auipc	a0,0x4
    8000531c:	f0050513          	addi	a0,a0,-256 # 80009218 <CONSOLE_STATUS+0x208>
    80005320:	00001097          	auipc	ra,0x1
    80005324:	a00080e7          	jalr	-1536(ra) # 80005d20 <_Z11printStringPKc>
    80005328:	00000613          	li	a2,0
    8000532c:	00a00593          	li	a1,10
    80005330:	0009051b          	sext.w	a0,s2
    80005334:	00001097          	auipc	ra,0x1
    80005338:	b9c080e7          	jalr	-1124(ra) # 80005ed0 <_Z8printIntiii>
    8000533c:	00004517          	auipc	a0,0x4
    80005340:	13c50513          	addi	a0,a0,316 # 80009478 <CONSOLE_STATUS+0x468>
    80005344:	00001097          	auipc	ra,0x1
    80005348:	9dc080e7          	jalr	-1572(ra) # 80005d20 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000534c:	00000493          	li	s1,0
    80005350:	f99ff06f          	j	800052e8 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80005354:	00004517          	auipc	a0,0x4
    80005358:	ecc50513          	addi	a0,a0,-308 # 80009220 <CONSOLE_STATUS+0x210>
    8000535c:	00001097          	auipc	ra,0x1
    80005360:	9c4080e7          	jalr	-1596(ra) # 80005d20 <_Z11printStringPKc>
    finishedA = true;
    80005364:	00100793          	li	a5,1
    80005368:	00007717          	auipc	a4,0x7
    8000536c:	a8f701a3          	sb	a5,-1405(a4) # 8000bdeb <_ZL9finishedA>
}
    80005370:	01813083          	ld	ra,24(sp)
    80005374:	01013403          	ld	s0,16(sp)
    80005378:	00813483          	ld	s1,8(sp)
    8000537c:	00013903          	ld	s2,0(sp)
    80005380:	02010113          	addi	sp,sp,32
    80005384:	00008067          	ret

0000000080005388 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80005388:	ff010113          	addi	sp,sp,-16
    8000538c:	00113423          	sd	ra,8(sp)
    80005390:	00813023          	sd	s0,0(sp)
    80005394:	01010413          	addi	s0,sp,16
    static thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005398:	00000613          	li	a2,0
    8000539c:	00000597          	auipc	a1,0x0
    800053a0:	f2058593          	addi	a1,a1,-224 # 800052bc <_ZL11workerBodyAPv>
    800053a4:	00007517          	auipc	a0,0x7
    800053a8:	a4c50513          	addi	a0,a0,-1460 # 8000bdf0 <_ZZ18Threads_C_API_testvE7threads>
    800053ac:	ffffc097          	auipc	ra,0xffffc
    800053b0:	f4c080e7          	jalr	-180(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    800053b4:	00004517          	auipc	a0,0x4
    800053b8:	efc50513          	addi	a0,a0,-260 # 800092b0 <CONSOLE_STATUS+0x2a0>
    800053bc:	00001097          	auipc	ra,0x1
    800053c0:	964080e7          	jalr	-1692(ra) # 80005d20 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800053c4:	00000613          	li	a2,0
    800053c8:	00000597          	auipc	a1,0x0
    800053cc:	e2058593          	addi	a1,a1,-480 # 800051e8 <_ZL11workerBodyBPv>
    800053d0:	00007517          	auipc	a0,0x7
    800053d4:	a2850513          	addi	a0,a0,-1496 # 8000bdf8 <_ZZ18Threads_C_API_testvE7threads+0x8>
    800053d8:	ffffc097          	auipc	ra,0xffffc
    800053dc:	f20080e7          	jalr	-224(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    800053e0:	00004517          	auipc	a0,0x4
    800053e4:	ee850513          	addi	a0,a0,-280 # 800092c8 <CONSOLE_STATUS+0x2b8>
    800053e8:	00001097          	auipc	ra,0x1
    800053ec:	938080e7          	jalr	-1736(ra) # 80005d20 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800053f0:	00000613          	li	a2,0
    800053f4:	00000597          	auipc	a1,0x0
    800053f8:	c7458593          	addi	a1,a1,-908 # 80005068 <_ZL11workerBodyCPv>
    800053fc:	00007517          	auipc	a0,0x7
    80005400:	a0450513          	addi	a0,a0,-1532 # 8000be00 <_ZZ18Threads_C_API_testvE7threads+0x10>
    80005404:	ffffc097          	auipc	ra,0xffffc
    80005408:	ef4080e7          	jalr	-268(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    8000540c:	00004517          	auipc	a0,0x4
    80005410:	ed450513          	addi	a0,a0,-300 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80005414:	00001097          	auipc	ra,0x1
    80005418:	90c080e7          	jalr	-1780(ra) # 80005d20 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    8000541c:	00000613          	li	a2,0
    80005420:	00000597          	auipc	a1,0x0
    80005424:	b0058593          	addi	a1,a1,-1280 # 80004f20 <_ZL11workerBodyDPv>
    80005428:	00007517          	auipc	a0,0x7
    8000542c:	9e050513          	addi	a0,a0,-1568 # 8000be08 <_ZZ18Threads_C_API_testvE7threads+0x18>
    80005430:	ffffc097          	auipc	ra,0xffffc
    80005434:	ec8080e7          	jalr	-312(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80005438:	00004517          	auipc	a0,0x4
    8000543c:	ec050513          	addi	a0,a0,-320 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80005440:	00001097          	auipc	ra,0x1
    80005444:	8e0080e7          	jalr	-1824(ra) # 80005d20 <_Z11printStringPKc>
    80005448:	00c0006f          	j	80005454 <_Z18Threads_C_API_testv+0xcc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    8000544c:	ffffc097          	auipc	ra,0xffffc
    80005450:	f80080e7          	jalr	-128(ra) # 800013cc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005454:	00007797          	auipc	a5,0x7
    80005458:	9977c783          	lbu	a5,-1641(a5) # 8000bdeb <_ZL9finishedA>
    8000545c:	fe0788e3          	beqz	a5,8000544c <_Z18Threads_C_API_testv+0xc4>
    80005460:	00007797          	auipc	a5,0x7
    80005464:	98a7c783          	lbu	a5,-1654(a5) # 8000bdea <_ZL9finishedB>
    80005468:	fe0782e3          	beqz	a5,8000544c <_Z18Threads_C_API_testv+0xc4>
    8000546c:	00007797          	auipc	a5,0x7
    80005470:	97d7c783          	lbu	a5,-1667(a5) # 8000bde9 <_ZL9finishedC>
    80005474:	fc078ce3          	beqz	a5,8000544c <_Z18Threads_C_API_testv+0xc4>
    80005478:	00007797          	auipc	a5,0x7
    8000547c:	9707c783          	lbu	a5,-1680(a5) # 8000bde8 <_ZL9finishedD>
    80005480:	fc0786e3          	beqz	a5,8000544c <_Z18Threads_C_API_testv+0xc4>
    }

}
    80005484:	00813083          	ld	ra,8(sp)
    80005488:	00013403          	ld	s0,0(sp)
    8000548c:	01010113          	addi	sp,sp,16
    80005490:	00008067          	ret

0000000080005494 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80005494:	fd010113          	addi	sp,sp,-48
    80005498:	02113423          	sd	ra,40(sp)
    8000549c:	02813023          	sd	s0,32(sp)
    800054a0:	00913c23          	sd	s1,24(sp)
    800054a4:	01213823          	sd	s2,16(sp)
    800054a8:	01313423          	sd	s3,8(sp)
    800054ac:	03010413          	addi	s0,sp,48
    800054b0:	00050993          	mv	s3,a0
    800054b4:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800054b8:	00000913          	li	s2,0
    800054bc:	00c0006f          	j	800054c8 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800054c0:	ffffd097          	auipc	ra,0xffffd
    800054c4:	c94080e7          	jalr	-876(ra) # 80002154 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    800054c8:	ffffc097          	auipc	ra,0xffffc
    800054cc:	158080e7          	jalr	344(ra) # 80001620 <_Z4getcv>
    800054d0:	0005059b          	sext.w	a1,a0
    800054d4:	01b00793          	li	a5,27
    800054d8:	02f58a63          	beq	a1,a5,8000550c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    800054dc:	0084b503          	ld	a0,8(s1)
    800054e0:	00001097          	auipc	ra,0x1
    800054e4:	c64080e7          	jalr	-924(ra) # 80006144 <_ZN9BufferCPP3putEi>
        i++;
    800054e8:	0019071b          	addiw	a4,s2,1
    800054ec:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800054f0:	0004a683          	lw	a3,0(s1)
    800054f4:	0026979b          	slliw	a5,a3,0x2
    800054f8:	00d787bb          	addw	a5,a5,a3
    800054fc:	0017979b          	slliw	a5,a5,0x1
    80005500:	02f767bb          	remw	a5,a4,a5
    80005504:	fc0792e3          	bnez	a5,800054c8 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80005508:	fb9ff06f          	j	800054c0 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    8000550c:	00100793          	li	a5,1
    80005510:	00007717          	auipc	a4,0x7
    80005514:	90f72023          	sw	a5,-1792(a4) # 8000be10 <_ZL9threadEnd>
    td->buffer->put('!');
    80005518:	0209b783          	ld	a5,32(s3)
    8000551c:	02100593          	li	a1,33
    80005520:	0087b503          	ld	a0,8(a5)
    80005524:	00001097          	auipc	ra,0x1
    80005528:	c20080e7          	jalr	-992(ra) # 80006144 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    8000552c:	0104b503          	ld	a0,16(s1)
    80005530:	ffffd097          	auipc	ra,0xffffd
    80005534:	ce8080e7          	jalr	-792(ra) # 80002218 <_ZN9Semaphore6signalEv>
}
    80005538:	02813083          	ld	ra,40(sp)
    8000553c:	02013403          	ld	s0,32(sp)
    80005540:	01813483          	ld	s1,24(sp)
    80005544:	01013903          	ld	s2,16(sp)
    80005548:	00813983          	ld	s3,8(sp)
    8000554c:	03010113          	addi	sp,sp,48
    80005550:	00008067          	ret

0000000080005554 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80005554:	fe010113          	addi	sp,sp,-32
    80005558:	00113c23          	sd	ra,24(sp)
    8000555c:	00813823          	sd	s0,16(sp)
    80005560:	00913423          	sd	s1,8(sp)
    80005564:	01213023          	sd	s2,0(sp)
    80005568:	02010413          	addi	s0,sp,32
    8000556c:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005570:	00000913          	li	s2,0
    80005574:	00c0006f          	j	80005580 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005578:	ffffd097          	auipc	ra,0xffffd
    8000557c:	bdc080e7          	jalr	-1060(ra) # 80002154 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80005580:	00007797          	auipc	a5,0x7
    80005584:	8907a783          	lw	a5,-1904(a5) # 8000be10 <_ZL9threadEnd>
    80005588:	02079e63          	bnez	a5,800055c4 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    8000558c:	0004a583          	lw	a1,0(s1)
    80005590:	0305859b          	addiw	a1,a1,48
    80005594:	0084b503          	ld	a0,8(s1)
    80005598:	00001097          	auipc	ra,0x1
    8000559c:	bac080e7          	jalr	-1108(ra) # 80006144 <_ZN9BufferCPP3putEi>
        i++;
    800055a0:	0019071b          	addiw	a4,s2,1
    800055a4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800055a8:	0004a683          	lw	a3,0(s1)
    800055ac:	0026979b          	slliw	a5,a3,0x2
    800055b0:	00d787bb          	addw	a5,a5,a3
    800055b4:	0017979b          	slliw	a5,a5,0x1
    800055b8:	02f767bb          	remw	a5,a4,a5
    800055bc:	fc0792e3          	bnez	a5,80005580 <_ZN12ProducerSync8producerEPv+0x2c>
    800055c0:	fb9ff06f          	j	80005578 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    800055c4:	0104b503          	ld	a0,16(s1)
    800055c8:	ffffd097          	auipc	ra,0xffffd
    800055cc:	c50080e7          	jalr	-944(ra) # 80002218 <_ZN9Semaphore6signalEv>
}
    800055d0:	01813083          	ld	ra,24(sp)
    800055d4:	01013403          	ld	s0,16(sp)
    800055d8:	00813483          	ld	s1,8(sp)
    800055dc:	00013903          	ld	s2,0(sp)
    800055e0:	02010113          	addi	sp,sp,32
    800055e4:	00008067          	ret

00000000800055e8 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    800055e8:	fd010113          	addi	sp,sp,-48
    800055ec:	02113423          	sd	ra,40(sp)
    800055f0:	02813023          	sd	s0,32(sp)
    800055f4:	00913c23          	sd	s1,24(sp)
    800055f8:	01213823          	sd	s2,16(sp)
    800055fc:	01313423          	sd	s3,8(sp)
    80005600:	01413023          	sd	s4,0(sp)
    80005604:	03010413          	addi	s0,sp,48
    80005608:	00050993          	mv	s3,a0
    8000560c:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005610:	00000a13          	li	s4,0
    80005614:	01c0006f          	j	80005630 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80005618:	ffffd097          	auipc	ra,0xffffd
    8000561c:	b3c080e7          	jalr	-1220(ra) # 80002154 <_ZN6Thread8dispatchEv>
    80005620:	0500006f          	j	80005670 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80005624:	00a00513          	li	a0,10
    80005628:	ffffc097          	auipc	ra,0xffffc
    8000562c:	044080e7          	jalr	68(ra) # 8000166c <_Z4putcc>
    while (!threadEnd) {
    80005630:	00006797          	auipc	a5,0x6
    80005634:	7e07a783          	lw	a5,2016(a5) # 8000be10 <_ZL9threadEnd>
    80005638:	06079263          	bnez	a5,8000569c <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    8000563c:	00893503          	ld	a0,8(s2)
    80005640:	00001097          	auipc	ra,0x1
    80005644:	b94080e7          	jalr	-1132(ra) # 800061d4 <_ZN9BufferCPP3getEv>
        i++;
    80005648:	001a049b          	addiw	s1,s4,1
    8000564c:	00048a1b          	sext.w	s4,s1
        putc(key);
    80005650:	0ff57513          	andi	a0,a0,255
    80005654:	ffffc097          	auipc	ra,0xffffc
    80005658:	018080e7          	jalr	24(ra) # 8000166c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    8000565c:	00092703          	lw	a4,0(s2)
    80005660:	0027179b          	slliw	a5,a4,0x2
    80005664:	00e787bb          	addw	a5,a5,a4
    80005668:	02f4e7bb          	remw	a5,s1,a5
    8000566c:	fa0786e3          	beqz	a5,80005618 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80005670:	05000793          	li	a5,80
    80005674:	02f4e4bb          	remw	s1,s1,a5
    80005678:	fa049ce3          	bnez	s1,80005630 <_ZN12ConsumerSync8consumerEPv+0x48>
    8000567c:	fa9ff06f          	j	80005624 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80005680:	0209b783          	ld	a5,32(s3)
    80005684:	0087b503          	ld	a0,8(a5)
    80005688:	00001097          	auipc	ra,0x1
    8000568c:	b4c080e7          	jalr	-1204(ra) # 800061d4 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80005690:	0ff57513          	andi	a0,a0,255
    80005694:	ffffd097          	auipc	ra,0xffffd
    80005698:	ca4080e7          	jalr	-860(ra) # 80002338 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    8000569c:	0209b783          	ld	a5,32(s3)
    800056a0:	0087b503          	ld	a0,8(a5)
    800056a4:	00001097          	auipc	ra,0x1
    800056a8:	bbc080e7          	jalr	-1092(ra) # 80006260 <_ZN9BufferCPP6getCntEv>
    800056ac:	fca04ae3          	bgtz	a0,80005680 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    800056b0:	01093503          	ld	a0,16(s2)
    800056b4:	ffffd097          	auipc	ra,0xffffd
    800056b8:	b64080e7          	jalr	-1180(ra) # 80002218 <_ZN9Semaphore6signalEv>
}
    800056bc:	02813083          	ld	ra,40(sp)
    800056c0:	02013403          	ld	s0,32(sp)
    800056c4:	01813483          	ld	s1,24(sp)
    800056c8:	01013903          	ld	s2,16(sp)
    800056cc:	00813983          	ld	s3,8(sp)
    800056d0:	00013a03          	ld	s4,0(sp)
    800056d4:	03010113          	addi	sp,sp,48
    800056d8:	00008067          	ret

00000000800056dc <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    800056dc:	f8010113          	addi	sp,sp,-128
    800056e0:	06113c23          	sd	ra,120(sp)
    800056e4:	06813823          	sd	s0,112(sp)
    800056e8:	06913423          	sd	s1,104(sp)
    800056ec:	07213023          	sd	s2,96(sp)
    800056f0:	05313c23          	sd	s3,88(sp)
    800056f4:	05413823          	sd	s4,80(sp)
    800056f8:	05513423          	sd	s5,72(sp)
    800056fc:	05613023          	sd	s6,64(sp)
    80005700:	03713c23          	sd	s7,56(sp)
    80005704:	03813823          	sd	s8,48(sp)
    80005708:	03913423          	sd	s9,40(sp)
    8000570c:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80005710:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80005714:	00004517          	auipc	a0,0x4
    80005718:	a1c50513          	addi	a0,a0,-1508 # 80009130 <CONSOLE_STATUS+0x120>
    8000571c:	00000097          	auipc	ra,0x0
    80005720:	604080e7          	jalr	1540(ra) # 80005d20 <_Z11printStringPKc>
    getString(input, 30);
    80005724:	01e00593          	li	a1,30
    80005728:	f8040493          	addi	s1,s0,-128
    8000572c:	00048513          	mv	a0,s1
    80005730:	00000097          	auipc	ra,0x0
    80005734:	678080e7          	jalr	1656(ra) # 80005da8 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80005738:	00048513          	mv	a0,s1
    8000573c:	00000097          	auipc	ra,0x0
    80005740:	744080e7          	jalr	1860(ra) # 80005e80 <_Z11stringToIntPKc>
    80005744:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80005748:	00004517          	auipc	a0,0x4
    8000574c:	a0850513          	addi	a0,a0,-1528 # 80009150 <CONSOLE_STATUS+0x140>
    80005750:	00000097          	auipc	ra,0x0
    80005754:	5d0080e7          	jalr	1488(ra) # 80005d20 <_Z11printStringPKc>
    getString(input, 30);
    80005758:	01e00593          	li	a1,30
    8000575c:	00048513          	mv	a0,s1
    80005760:	00000097          	auipc	ra,0x0
    80005764:	648080e7          	jalr	1608(ra) # 80005da8 <_Z9getStringPci>
    n = stringToInt(input);
    80005768:	00048513          	mv	a0,s1
    8000576c:	00000097          	auipc	ra,0x0
    80005770:	714080e7          	jalr	1812(ra) # 80005e80 <_Z11stringToIntPKc>
    80005774:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80005778:	00004517          	auipc	a0,0x4
    8000577c:	9f850513          	addi	a0,a0,-1544 # 80009170 <CONSOLE_STATUS+0x160>
    80005780:	00000097          	auipc	ra,0x0
    80005784:	5a0080e7          	jalr	1440(ra) # 80005d20 <_Z11printStringPKc>
    80005788:	00000613          	li	a2,0
    8000578c:	00a00593          	li	a1,10
    80005790:	00090513          	mv	a0,s2
    80005794:	00000097          	auipc	ra,0x0
    80005798:	73c080e7          	jalr	1852(ra) # 80005ed0 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    8000579c:	00004517          	auipc	a0,0x4
    800057a0:	9ec50513          	addi	a0,a0,-1556 # 80009188 <CONSOLE_STATUS+0x178>
    800057a4:	00000097          	auipc	ra,0x0
    800057a8:	57c080e7          	jalr	1404(ra) # 80005d20 <_Z11printStringPKc>
    800057ac:	00000613          	li	a2,0
    800057b0:	00a00593          	li	a1,10
    800057b4:	00048513          	mv	a0,s1
    800057b8:	00000097          	auipc	ra,0x0
    800057bc:	718080e7          	jalr	1816(ra) # 80005ed0 <_Z8printIntiii>
    printString(".\n");
    800057c0:	00004517          	auipc	a0,0x4
    800057c4:	9e050513          	addi	a0,a0,-1568 # 800091a0 <CONSOLE_STATUS+0x190>
    800057c8:	00000097          	auipc	ra,0x0
    800057cc:	558080e7          	jalr	1368(ra) # 80005d20 <_Z11printStringPKc>
    if(threadNum > n) {
    800057d0:	0324c463          	blt	s1,s2,800057f8 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    800057d4:	03205c63          	blez	s2,8000580c <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    800057d8:	03800513          	li	a0,56
    800057dc:	ffffd097          	auipc	ra,0xffffd
    800057e0:	810080e7          	jalr	-2032(ra) # 80001fec <_Znwm>
    800057e4:	00050a93          	mv	s5,a0
    800057e8:	00048593          	mv	a1,s1
    800057ec:	00001097          	auipc	ra,0x1
    800057f0:	804080e7          	jalr	-2044(ra) # 80005ff0 <_ZN9BufferCPPC1Ei>
    800057f4:	0300006f          	j	80005824 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800057f8:	00004517          	auipc	a0,0x4
    800057fc:	9b050513          	addi	a0,a0,-1616 # 800091a8 <CONSOLE_STATUS+0x198>
    80005800:	00000097          	auipc	ra,0x0
    80005804:	520080e7          	jalr	1312(ra) # 80005d20 <_Z11printStringPKc>
        return;
    80005808:	0140006f          	j	8000581c <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    8000580c:	00004517          	auipc	a0,0x4
    80005810:	9dc50513          	addi	a0,a0,-1572 # 800091e8 <CONSOLE_STATUS+0x1d8>
    80005814:	00000097          	auipc	ra,0x0
    80005818:	50c080e7          	jalr	1292(ra) # 80005d20 <_Z11printStringPKc>
        return;
    8000581c:	000b8113          	mv	sp,s7
    80005820:	2380006f          	j	80005a58 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80005824:	01000513          	li	a0,16
    80005828:	ffffc097          	auipc	ra,0xffffc
    8000582c:	7c4080e7          	jalr	1988(ra) # 80001fec <_Znwm>
    80005830:	00050493          	mv	s1,a0
    80005834:	00000593          	li	a1,0
    80005838:	ffffd097          	auipc	ra,0xffffd
    8000583c:	96c080e7          	jalr	-1684(ra) # 800021a4 <_ZN9SemaphoreC1Ej>
    80005840:	00006797          	auipc	a5,0x6
    80005844:	5c97bc23          	sd	s1,1496(a5) # 8000be18 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80005848:	00391793          	slli	a5,s2,0x3
    8000584c:	00f78793          	addi	a5,a5,15
    80005850:	ff07f793          	andi	a5,a5,-16
    80005854:	40f10133          	sub	sp,sp,a5
    80005858:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    8000585c:	0019071b          	addiw	a4,s2,1
    80005860:	00171793          	slli	a5,a4,0x1
    80005864:	00e787b3          	add	a5,a5,a4
    80005868:	00379793          	slli	a5,a5,0x3
    8000586c:	00f78793          	addi	a5,a5,15
    80005870:	ff07f793          	andi	a5,a5,-16
    80005874:	40f10133          	sub	sp,sp,a5
    80005878:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    8000587c:	00191c13          	slli	s8,s2,0x1
    80005880:	012c07b3          	add	a5,s8,s2
    80005884:	00379793          	slli	a5,a5,0x3
    80005888:	00fa07b3          	add	a5,s4,a5
    8000588c:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80005890:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80005894:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80005898:	02800513          	li	a0,40
    8000589c:	ffffc097          	auipc	ra,0xffffc
    800058a0:	750080e7          	jalr	1872(ra) # 80001fec <_Znwm>
    800058a4:	00050b13          	mv	s6,a0
    800058a8:	012c0c33          	add	s8,s8,s2
    800058ac:	003c1c13          	slli	s8,s8,0x3
    800058b0:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    800058b4:	ffffd097          	auipc	ra,0xffffd
    800058b8:	838080e7          	jalr	-1992(ra) # 800020ec <_ZN6ThreadC1Ev>
    800058bc:	00006797          	auipc	a5,0x6
    800058c0:	3dc78793          	addi	a5,a5,988 # 8000bc98 <_ZTV12ConsumerSync+0x10>
    800058c4:	00fb3023          	sd	a5,0(s6)
    800058c8:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    800058cc:	000b0513          	mv	a0,s6
    800058d0:	ffffd097          	auipc	ra,0xffffd
    800058d4:	84c080e7          	jalr	-1972(ra) # 8000211c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800058d8:	00000493          	li	s1,0
    800058dc:	0380006f          	j	80005914 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800058e0:	00006797          	auipc	a5,0x6
    800058e4:	39078793          	addi	a5,a5,912 # 8000bc70 <_ZTV12ProducerSync+0x10>
    800058e8:	00fcb023          	sd	a5,0(s9)
    800058ec:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    800058f0:	00349793          	slli	a5,s1,0x3
    800058f4:	00f987b3          	add	a5,s3,a5
    800058f8:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    800058fc:	00349793          	slli	a5,s1,0x3
    80005900:	00f987b3          	add	a5,s3,a5
    80005904:	0007b503          	ld	a0,0(a5)
    80005908:	ffffd097          	auipc	ra,0xffffd
    8000590c:	814080e7          	jalr	-2028(ra) # 8000211c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005910:	0014849b          	addiw	s1,s1,1
    80005914:	0b24d063          	bge	s1,s2,800059b4 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80005918:	00149793          	slli	a5,s1,0x1
    8000591c:	009787b3          	add	a5,a5,s1
    80005920:	00379793          	slli	a5,a5,0x3
    80005924:	00fa07b3          	add	a5,s4,a5
    80005928:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    8000592c:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80005930:	00006717          	auipc	a4,0x6
    80005934:	4e873703          	ld	a4,1256(a4) # 8000be18 <_ZL10waitForAll>
    80005938:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    8000593c:	02905863          	blez	s1,8000596c <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80005940:	02800513          	li	a0,40
    80005944:	ffffc097          	auipc	ra,0xffffc
    80005948:	6a8080e7          	jalr	1704(ra) # 80001fec <_Znwm>
    8000594c:	00050c93          	mv	s9,a0
    80005950:	00149c13          	slli	s8,s1,0x1
    80005954:	009c0c33          	add	s8,s8,s1
    80005958:	003c1c13          	slli	s8,s8,0x3
    8000595c:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005960:	ffffc097          	auipc	ra,0xffffc
    80005964:	78c080e7          	jalr	1932(ra) # 800020ec <_ZN6ThreadC1Ev>
    80005968:	f79ff06f          	j	800058e0 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    8000596c:	02800513          	li	a0,40
    80005970:	ffffc097          	auipc	ra,0xffffc
    80005974:	67c080e7          	jalr	1660(ra) # 80001fec <_Znwm>
    80005978:	00050c93          	mv	s9,a0
    8000597c:	00149c13          	slli	s8,s1,0x1
    80005980:	009c0c33          	add	s8,s8,s1
    80005984:	003c1c13          	slli	s8,s8,0x3
    80005988:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    8000598c:	ffffc097          	auipc	ra,0xffffc
    80005990:	760080e7          	jalr	1888(ra) # 800020ec <_ZN6ThreadC1Ev>
    80005994:	00006797          	auipc	a5,0x6
    80005998:	2b478793          	addi	a5,a5,692 # 8000bc48 <_ZTV16ProducerKeyboard+0x10>
    8000599c:	00fcb023          	sd	a5,0(s9)
    800059a0:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    800059a4:	00349793          	slli	a5,s1,0x3
    800059a8:	00f987b3          	add	a5,s3,a5
    800059ac:	0197b023          	sd	s9,0(a5)
    800059b0:	f4dff06f          	j	800058fc <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    800059b4:	ffffc097          	auipc	ra,0xffffc
    800059b8:	7a0080e7          	jalr	1952(ra) # 80002154 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800059bc:	00000493          	li	s1,0
    800059c0:	00994e63          	blt	s2,s1,800059dc <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    800059c4:	00006517          	auipc	a0,0x6
    800059c8:	45453503          	ld	a0,1108(a0) # 8000be18 <_ZL10waitForAll>
    800059cc:	ffffd097          	auipc	ra,0xffffd
    800059d0:	814080e7          	jalr	-2028(ra) # 800021e0 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800059d4:	0014849b          	addiw	s1,s1,1
    800059d8:	fe9ff06f          	j	800059c0 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    800059dc:	00000493          	li	s1,0
    800059e0:	0080006f          	j	800059e8 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    800059e4:	0014849b          	addiw	s1,s1,1
    800059e8:	0324d263          	bge	s1,s2,80005a0c <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    800059ec:	00349793          	slli	a5,s1,0x3
    800059f0:	00f987b3          	add	a5,s3,a5
    800059f4:	0007b503          	ld	a0,0(a5)
    800059f8:	fe0506e3          	beqz	a0,800059e4 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    800059fc:	00053783          	ld	a5,0(a0)
    80005a00:	0087b783          	ld	a5,8(a5)
    80005a04:	000780e7          	jalr	a5
    80005a08:	fddff06f          	j	800059e4 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80005a0c:	000b0a63          	beqz	s6,80005a20 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80005a10:	000b3783          	ld	a5,0(s6)
    80005a14:	0087b783          	ld	a5,8(a5)
    80005a18:	000b0513          	mv	a0,s6
    80005a1c:	000780e7          	jalr	a5
    delete waitForAll;
    80005a20:	00006517          	auipc	a0,0x6
    80005a24:	3f853503          	ld	a0,1016(a0) # 8000be18 <_ZL10waitForAll>
    80005a28:	00050863          	beqz	a0,80005a38 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80005a2c:	00053783          	ld	a5,0(a0)
    80005a30:	0087b783          	ld	a5,8(a5)
    80005a34:	000780e7          	jalr	a5
    delete buffer;
    80005a38:	000a8e63          	beqz	s5,80005a54 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80005a3c:	000a8513          	mv	a0,s5
    80005a40:	00001097          	auipc	ra,0x1
    80005a44:	8a8080e7          	jalr	-1880(ra) # 800062e8 <_ZN9BufferCPPD1Ev>
    80005a48:	000a8513          	mv	a0,s5
    80005a4c:	ffffc097          	auipc	ra,0xffffc
    80005a50:	5c8080e7          	jalr	1480(ra) # 80002014 <_ZdlPv>
    80005a54:	000b8113          	mv	sp,s7

}
    80005a58:	f8040113          	addi	sp,s0,-128
    80005a5c:	07813083          	ld	ra,120(sp)
    80005a60:	07013403          	ld	s0,112(sp)
    80005a64:	06813483          	ld	s1,104(sp)
    80005a68:	06013903          	ld	s2,96(sp)
    80005a6c:	05813983          	ld	s3,88(sp)
    80005a70:	05013a03          	ld	s4,80(sp)
    80005a74:	04813a83          	ld	s5,72(sp)
    80005a78:	04013b03          	ld	s6,64(sp)
    80005a7c:	03813b83          	ld	s7,56(sp)
    80005a80:	03013c03          	ld	s8,48(sp)
    80005a84:	02813c83          	ld	s9,40(sp)
    80005a88:	08010113          	addi	sp,sp,128
    80005a8c:	00008067          	ret
    80005a90:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80005a94:	000a8513          	mv	a0,s5
    80005a98:	ffffc097          	auipc	ra,0xffffc
    80005a9c:	57c080e7          	jalr	1404(ra) # 80002014 <_ZdlPv>
    80005aa0:	00048513          	mv	a0,s1
    80005aa4:	00007097          	auipc	ra,0x7
    80005aa8:	454080e7          	jalr	1108(ra) # 8000cef8 <_Unwind_Resume>
    80005aac:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80005ab0:	00048513          	mv	a0,s1
    80005ab4:	ffffc097          	auipc	ra,0xffffc
    80005ab8:	560080e7          	jalr	1376(ra) # 80002014 <_ZdlPv>
    80005abc:	00090513          	mv	a0,s2
    80005ac0:	00007097          	auipc	ra,0x7
    80005ac4:	438080e7          	jalr	1080(ra) # 8000cef8 <_Unwind_Resume>
    80005ac8:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80005acc:	000b0513          	mv	a0,s6
    80005ad0:	ffffc097          	auipc	ra,0xffffc
    80005ad4:	544080e7          	jalr	1348(ra) # 80002014 <_ZdlPv>
    80005ad8:	00048513          	mv	a0,s1
    80005adc:	00007097          	auipc	ra,0x7
    80005ae0:	41c080e7          	jalr	1052(ra) # 8000cef8 <_Unwind_Resume>
    80005ae4:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005ae8:	000c8513          	mv	a0,s9
    80005aec:	ffffc097          	auipc	ra,0xffffc
    80005af0:	528080e7          	jalr	1320(ra) # 80002014 <_ZdlPv>
    80005af4:	00048513          	mv	a0,s1
    80005af8:	00007097          	auipc	ra,0x7
    80005afc:	400080e7          	jalr	1024(ra) # 8000cef8 <_Unwind_Resume>
    80005b00:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005b04:	000c8513          	mv	a0,s9
    80005b08:	ffffc097          	auipc	ra,0xffffc
    80005b0c:	50c080e7          	jalr	1292(ra) # 80002014 <_ZdlPv>
    80005b10:	00048513          	mv	a0,s1
    80005b14:	00007097          	auipc	ra,0x7
    80005b18:	3e4080e7          	jalr	996(ra) # 8000cef8 <_Unwind_Resume>

0000000080005b1c <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005b1c:	ff010113          	addi	sp,sp,-16
    80005b20:	00113423          	sd	ra,8(sp)
    80005b24:	00813023          	sd	s0,0(sp)
    80005b28:	01010413          	addi	s0,sp,16
    80005b2c:	00006797          	auipc	a5,0x6
    80005b30:	16c78793          	addi	a5,a5,364 # 8000bc98 <_ZTV12ConsumerSync+0x10>
    80005b34:	00f53023          	sd	a5,0(a0)
    80005b38:	ffffc097          	auipc	ra,0xffffc
    80005b3c:	41c080e7          	jalr	1052(ra) # 80001f54 <_ZN6ThreadD1Ev>
    80005b40:	00813083          	ld	ra,8(sp)
    80005b44:	00013403          	ld	s0,0(sp)
    80005b48:	01010113          	addi	sp,sp,16
    80005b4c:	00008067          	ret

0000000080005b50 <_ZN12ConsumerSyncD0Ev>:
    80005b50:	fe010113          	addi	sp,sp,-32
    80005b54:	00113c23          	sd	ra,24(sp)
    80005b58:	00813823          	sd	s0,16(sp)
    80005b5c:	00913423          	sd	s1,8(sp)
    80005b60:	02010413          	addi	s0,sp,32
    80005b64:	00050493          	mv	s1,a0
    80005b68:	00006797          	auipc	a5,0x6
    80005b6c:	13078793          	addi	a5,a5,304 # 8000bc98 <_ZTV12ConsumerSync+0x10>
    80005b70:	00f53023          	sd	a5,0(a0)
    80005b74:	ffffc097          	auipc	ra,0xffffc
    80005b78:	3e0080e7          	jalr	992(ra) # 80001f54 <_ZN6ThreadD1Ev>
    80005b7c:	00048513          	mv	a0,s1
    80005b80:	ffffc097          	auipc	ra,0xffffc
    80005b84:	494080e7          	jalr	1172(ra) # 80002014 <_ZdlPv>
    80005b88:	01813083          	ld	ra,24(sp)
    80005b8c:	01013403          	ld	s0,16(sp)
    80005b90:	00813483          	ld	s1,8(sp)
    80005b94:	02010113          	addi	sp,sp,32
    80005b98:	00008067          	ret

0000000080005b9c <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80005b9c:	ff010113          	addi	sp,sp,-16
    80005ba0:	00113423          	sd	ra,8(sp)
    80005ba4:	00813023          	sd	s0,0(sp)
    80005ba8:	01010413          	addi	s0,sp,16
    80005bac:	00006797          	auipc	a5,0x6
    80005bb0:	0c478793          	addi	a5,a5,196 # 8000bc70 <_ZTV12ProducerSync+0x10>
    80005bb4:	00f53023          	sd	a5,0(a0)
    80005bb8:	ffffc097          	auipc	ra,0xffffc
    80005bbc:	39c080e7          	jalr	924(ra) # 80001f54 <_ZN6ThreadD1Ev>
    80005bc0:	00813083          	ld	ra,8(sp)
    80005bc4:	00013403          	ld	s0,0(sp)
    80005bc8:	01010113          	addi	sp,sp,16
    80005bcc:	00008067          	ret

0000000080005bd0 <_ZN12ProducerSyncD0Ev>:
    80005bd0:	fe010113          	addi	sp,sp,-32
    80005bd4:	00113c23          	sd	ra,24(sp)
    80005bd8:	00813823          	sd	s0,16(sp)
    80005bdc:	00913423          	sd	s1,8(sp)
    80005be0:	02010413          	addi	s0,sp,32
    80005be4:	00050493          	mv	s1,a0
    80005be8:	00006797          	auipc	a5,0x6
    80005bec:	08878793          	addi	a5,a5,136 # 8000bc70 <_ZTV12ProducerSync+0x10>
    80005bf0:	00f53023          	sd	a5,0(a0)
    80005bf4:	ffffc097          	auipc	ra,0xffffc
    80005bf8:	360080e7          	jalr	864(ra) # 80001f54 <_ZN6ThreadD1Ev>
    80005bfc:	00048513          	mv	a0,s1
    80005c00:	ffffc097          	auipc	ra,0xffffc
    80005c04:	414080e7          	jalr	1044(ra) # 80002014 <_ZdlPv>
    80005c08:	01813083          	ld	ra,24(sp)
    80005c0c:	01013403          	ld	s0,16(sp)
    80005c10:	00813483          	ld	s1,8(sp)
    80005c14:	02010113          	addi	sp,sp,32
    80005c18:	00008067          	ret

0000000080005c1c <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005c1c:	ff010113          	addi	sp,sp,-16
    80005c20:	00113423          	sd	ra,8(sp)
    80005c24:	00813023          	sd	s0,0(sp)
    80005c28:	01010413          	addi	s0,sp,16
    80005c2c:	00006797          	auipc	a5,0x6
    80005c30:	01c78793          	addi	a5,a5,28 # 8000bc48 <_ZTV16ProducerKeyboard+0x10>
    80005c34:	00f53023          	sd	a5,0(a0)
    80005c38:	ffffc097          	auipc	ra,0xffffc
    80005c3c:	31c080e7          	jalr	796(ra) # 80001f54 <_ZN6ThreadD1Ev>
    80005c40:	00813083          	ld	ra,8(sp)
    80005c44:	00013403          	ld	s0,0(sp)
    80005c48:	01010113          	addi	sp,sp,16
    80005c4c:	00008067          	ret

0000000080005c50 <_ZN16ProducerKeyboardD0Ev>:
    80005c50:	fe010113          	addi	sp,sp,-32
    80005c54:	00113c23          	sd	ra,24(sp)
    80005c58:	00813823          	sd	s0,16(sp)
    80005c5c:	00913423          	sd	s1,8(sp)
    80005c60:	02010413          	addi	s0,sp,32
    80005c64:	00050493          	mv	s1,a0
    80005c68:	00006797          	auipc	a5,0x6
    80005c6c:	fe078793          	addi	a5,a5,-32 # 8000bc48 <_ZTV16ProducerKeyboard+0x10>
    80005c70:	00f53023          	sd	a5,0(a0)
    80005c74:	ffffc097          	auipc	ra,0xffffc
    80005c78:	2e0080e7          	jalr	736(ra) # 80001f54 <_ZN6ThreadD1Ev>
    80005c7c:	00048513          	mv	a0,s1
    80005c80:	ffffc097          	auipc	ra,0xffffc
    80005c84:	394080e7          	jalr	916(ra) # 80002014 <_ZdlPv>
    80005c88:	01813083          	ld	ra,24(sp)
    80005c8c:	01013403          	ld	s0,16(sp)
    80005c90:	00813483          	ld	s1,8(sp)
    80005c94:	02010113          	addi	sp,sp,32
    80005c98:	00008067          	ret

0000000080005c9c <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80005c9c:	ff010113          	addi	sp,sp,-16
    80005ca0:	00113423          	sd	ra,8(sp)
    80005ca4:	00813023          	sd	s0,0(sp)
    80005ca8:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80005cac:	02053583          	ld	a1,32(a0)
    80005cb0:	fffff097          	auipc	ra,0xfffff
    80005cb4:	7e4080e7          	jalr	2020(ra) # 80005494 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005cb8:	00813083          	ld	ra,8(sp)
    80005cbc:	00013403          	ld	s0,0(sp)
    80005cc0:	01010113          	addi	sp,sp,16
    80005cc4:	00008067          	ret

0000000080005cc8 <_ZN12ProducerSync3runEv>:
    void run() override {
    80005cc8:	ff010113          	addi	sp,sp,-16
    80005ccc:	00113423          	sd	ra,8(sp)
    80005cd0:	00813023          	sd	s0,0(sp)
    80005cd4:	01010413          	addi	s0,sp,16
        producer(td);
    80005cd8:	02053583          	ld	a1,32(a0)
    80005cdc:	00000097          	auipc	ra,0x0
    80005ce0:	878080e7          	jalr	-1928(ra) # 80005554 <_ZN12ProducerSync8producerEPv>
    }
    80005ce4:	00813083          	ld	ra,8(sp)
    80005ce8:	00013403          	ld	s0,0(sp)
    80005cec:	01010113          	addi	sp,sp,16
    80005cf0:	00008067          	ret

0000000080005cf4 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005cf4:	ff010113          	addi	sp,sp,-16
    80005cf8:	00113423          	sd	ra,8(sp)
    80005cfc:	00813023          	sd	s0,0(sp)
    80005d00:	01010413          	addi	s0,sp,16
        consumer(td);
    80005d04:	02053583          	ld	a1,32(a0)
    80005d08:	00000097          	auipc	ra,0x0
    80005d0c:	8e0080e7          	jalr	-1824(ra) # 800055e8 <_ZN12ConsumerSync8consumerEPv>
    }
    80005d10:	00813083          	ld	ra,8(sp)
    80005d14:	00013403          	ld	s0,0(sp)
    80005d18:	01010113          	addi	sp,sp,16
    80005d1c:	00008067          	ret

0000000080005d20 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005d20:	fe010113          	addi	sp,sp,-32
    80005d24:	00113c23          	sd	ra,24(sp)
    80005d28:	00813823          	sd	s0,16(sp)
    80005d2c:	00913423          	sd	s1,8(sp)
    80005d30:	02010413          	addi	s0,sp,32
    80005d34:	00050493          	mv	s1,a0
    LOCK();
    80005d38:	00100613          	li	a2,1
    80005d3c:	00000593          	li	a1,0
    80005d40:	00006517          	auipc	a0,0x6
    80005d44:	0e050513          	addi	a0,a0,224 # 8000be20 <lockPrint>
    80005d48:	ffffb097          	auipc	ra,0xffffb
    80005d4c:	4d4080e7          	jalr	1236(ra) # 8000121c <copy_and_swap>
    80005d50:	00050863          	beqz	a0,80005d60 <_Z11printStringPKc+0x40>
    80005d54:	ffffb097          	auipc	ra,0xffffb
    80005d58:	678080e7          	jalr	1656(ra) # 800013cc <_Z15thread_dispatchv>
    80005d5c:	fddff06f          	j	80005d38 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005d60:	0004c503          	lbu	a0,0(s1)
    80005d64:	00050a63          	beqz	a0,80005d78 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005d68:	ffffc097          	auipc	ra,0xffffc
    80005d6c:	904080e7          	jalr	-1788(ra) # 8000166c <_Z4putcc>
        string++;
    80005d70:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005d74:	fedff06f          	j	80005d60 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005d78:	00000613          	li	a2,0
    80005d7c:	00100593          	li	a1,1
    80005d80:	00006517          	auipc	a0,0x6
    80005d84:	0a050513          	addi	a0,a0,160 # 8000be20 <lockPrint>
    80005d88:	ffffb097          	auipc	ra,0xffffb
    80005d8c:	494080e7          	jalr	1172(ra) # 8000121c <copy_and_swap>
    80005d90:	fe0514e3          	bnez	a0,80005d78 <_Z11printStringPKc+0x58>
}
    80005d94:	01813083          	ld	ra,24(sp)
    80005d98:	01013403          	ld	s0,16(sp)
    80005d9c:	00813483          	ld	s1,8(sp)
    80005da0:	02010113          	addi	sp,sp,32
    80005da4:	00008067          	ret

0000000080005da8 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005da8:	fd010113          	addi	sp,sp,-48
    80005dac:	02113423          	sd	ra,40(sp)
    80005db0:	02813023          	sd	s0,32(sp)
    80005db4:	00913c23          	sd	s1,24(sp)
    80005db8:	01213823          	sd	s2,16(sp)
    80005dbc:	01313423          	sd	s3,8(sp)
    80005dc0:	01413023          	sd	s4,0(sp)
    80005dc4:	03010413          	addi	s0,sp,48
    80005dc8:	00050993          	mv	s3,a0
    80005dcc:	00058a13          	mv	s4,a1
    LOCK();
    80005dd0:	00100613          	li	a2,1
    80005dd4:	00000593          	li	a1,0
    80005dd8:	00006517          	auipc	a0,0x6
    80005ddc:	04850513          	addi	a0,a0,72 # 8000be20 <lockPrint>
    80005de0:	ffffb097          	auipc	ra,0xffffb
    80005de4:	43c080e7          	jalr	1084(ra) # 8000121c <copy_and_swap>
    80005de8:	00050863          	beqz	a0,80005df8 <_Z9getStringPci+0x50>
    80005dec:	ffffb097          	auipc	ra,0xffffb
    80005df0:	5e0080e7          	jalr	1504(ra) # 800013cc <_Z15thread_dispatchv>
    80005df4:	fddff06f          	j	80005dd0 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005df8:	00000913          	li	s2,0
    80005dfc:	00090493          	mv	s1,s2
    80005e00:	0019091b          	addiw	s2,s2,1
    80005e04:	03495a63          	bge	s2,s4,80005e38 <_Z9getStringPci+0x90>
        cc = getc();
    80005e08:	ffffc097          	auipc	ra,0xffffc
    80005e0c:	818080e7          	jalr	-2024(ra) # 80001620 <_Z4getcv>
        if(cc < 1)
    80005e10:	02050463          	beqz	a0,80005e38 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005e14:	009984b3          	add	s1,s3,s1
    80005e18:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005e1c:	00a00793          	li	a5,10
    80005e20:	00f50a63          	beq	a0,a5,80005e34 <_Z9getStringPci+0x8c>
    80005e24:	00d00793          	li	a5,13
    80005e28:	fcf51ae3          	bne	a0,a5,80005dfc <_Z9getStringPci+0x54>
        buf[i++] = c;
    80005e2c:	00090493          	mv	s1,s2
    80005e30:	0080006f          	j	80005e38 <_Z9getStringPci+0x90>
    80005e34:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005e38:	009984b3          	add	s1,s3,s1
    80005e3c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005e40:	00000613          	li	a2,0
    80005e44:	00100593          	li	a1,1
    80005e48:	00006517          	auipc	a0,0x6
    80005e4c:	fd850513          	addi	a0,a0,-40 # 8000be20 <lockPrint>
    80005e50:	ffffb097          	auipc	ra,0xffffb
    80005e54:	3cc080e7          	jalr	972(ra) # 8000121c <copy_and_swap>
    80005e58:	fe0514e3          	bnez	a0,80005e40 <_Z9getStringPci+0x98>
    return buf;
}
    80005e5c:	00098513          	mv	a0,s3
    80005e60:	02813083          	ld	ra,40(sp)
    80005e64:	02013403          	ld	s0,32(sp)
    80005e68:	01813483          	ld	s1,24(sp)
    80005e6c:	01013903          	ld	s2,16(sp)
    80005e70:	00813983          	ld	s3,8(sp)
    80005e74:	00013a03          	ld	s4,0(sp)
    80005e78:	03010113          	addi	sp,sp,48
    80005e7c:	00008067          	ret

0000000080005e80 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005e80:	ff010113          	addi	sp,sp,-16
    80005e84:	00813423          	sd	s0,8(sp)
    80005e88:	01010413          	addi	s0,sp,16
    80005e8c:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005e90:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005e94:	0006c603          	lbu	a2,0(a3)
    80005e98:	fd06071b          	addiw	a4,a2,-48
    80005e9c:	0ff77713          	andi	a4,a4,255
    80005ea0:	00900793          	li	a5,9
    80005ea4:	02e7e063          	bltu	a5,a4,80005ec4 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005ea8:	0025179b          	slliw	a5,a0,0x2
    80005eac:	00a787bb          	addw	a5,a5,a0
    80005eb0:	0017979b          	slliw	a5,a5,0x1
    80005eb4:	00168693          	addi	a3,a3,1
    80005eb8:	00c787bb          	addw	a5,a5,a2
    80005ebc:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005ec0:	fd5ff06f          	j	80005e94 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005ec4:	00813403          	ld	s0,8(sp)
    80005ec8:	01010113          	addi	sp,sp,16
    80005ecc:	00008067          	ret

0000000080005ed0 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005ed0:	fc010113          	addi	sp,sp,-64
    80005ed4:	02113c23          	sd	ra,56(sp)
    80005ed8:	02813823          	sd	s0,48(sp)
    80005edc:	02913423          	sd	s1,40(sp)
    80005ee0:	03213023          	sd	s2,32(sp)
    80005ee4:	01313c23          	sd	s3,24(sp)
    80005ee8:	04010413          	addi	s0,sp,64
    80005eec:	00050493          	mv	s1,a0
    80005ef0:	00058913          	mv	s2,a1
    80005ef4:	00060993          	mv	s3,a2
    LOCK();
    80005ef8:	00100613          	li	a2,1
    80005efc:	00000593          	li	a1,0
    80005f00:	00006517          	auipc	a0,0x6
    80005f04:	f2050513          	addi	a0,a0,-224 # 8000be20 <lockPrint>
    80005f08:	ffffb097          	auipc	ra,0xffffb
    80005f0c:	314080e7          	jalr	788(ra) # 8000121c <copy_and_swap>
    80005f10:	00050863          	beqz	a0,80005f20 <_Z8printIntiii+0x50>
    80005f14:	ffffb097          	auipc	ra,0xffffb
    80005f18:	4b8080e7          	jalr	1208(ra) # 800013cc <_Z15thread_dispatchv>
    80005f1c:	fddff06f          	j	80005ef8 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005f20:	00098463          	beqz	s3,80005f28 <_Z8printIntiii+0x58>
    80005f24:	0804c463          	bltz	s1,80005fac <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005f28:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005f2c:	00000593          	li	a1,0
    }

    i = 0;
    80005f30:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005f34:	0009079b          	sext.w	a5,s2
    80005f38:	0325773b          	remuw	a4,a0,s2
    80005f3c:	00048613          	mv	a2,s1
    80005f40:	0014849b          	addiw	s1,s1,1
    80005f44:	02071693          	slli	a3,a4,0x20
    80005f48:	0206d693          	srli	a3,a3,0x20
    80005f4c:	00006717          	auipc	a4,0x6
    80005f50:	d6470713          	addi	a4,a4,-668 # 8000bcb0 <digits>
    80005f54:	00d70733          	add	a4,a4,a3
    80005f58:	00074683          	lbu	a3,0(a4)
    80005f5c:	fd040713          	addi	a4,s0,-48
    80005f60:	00c70733          	add	a4,a4,a2
    80005f64:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005f68:	0005071b          	sext.w	a4,a0
    80005f6c:	0325553b          	divuw	a0,a0,s2
    80005f70:	fcf772e3          	bgeu	a4,a5,80005f34 <_Z8printIntiii+0x64>
    if(neg)
    80005f74:	00058c63          	beqz	a1,80005f8c <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005f78:	fd040793          	addi	a5,s0,-48
    80005f7c:	009784b3          	add	s1,a5,s1
    80005f80:	02d00793          	li	a5,45
    80005f84:	fef48823          	sb	a5,-16(s1)
    80005f88:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005f8c:	fff4849b          	addiw	s1,s1,-1
    80005f90:	0204c463          	bltz	s1,80005fb8 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80005f94:	fd040793          	addi	a5,s0,-48
    80005f98:	009787b3          	add	a5,a5,s1
    80005f9c:	ff07c503          	lbu	a0,-16(a5)
    80005fa0:	ffffb097          	auipc	ra,0xffffb
    80005fa4:	6cc080e7          	jalr	1740(ra) # 8000166c <_Z4putcc>
    80005fa8:	fe5ff06f          	j	80005f8c <_Z8printIntiii+0xbc>
        x = -xx;
    80005fac:	4090053b          	negw	a0,s1
        neg = 1;
    80005fb0:	00100593          	li	a1,1
        x = -xx;
    80005fb4:	f7dff06f          	j	80005f30 <_Z8printIntiii+0x60>

    UNLOCK();
    80005fb8:	00000613          	li	a2,0
    80005fbc:	00100593          	li	a1,1
    80005fc0:	00006517          	auipc	a0,0x6
    80005fc4:	e6050513          	addi	a0,a0,-416 # 8000be20 <lockPrint>
    80005fc8:	ffffb097          	auipc	ra,0xffffb
    80005fcc:	254080e7          	jalr	596(ra) # 8000121c <copy_and_swap>
    80005fd0:	fe0514e3          	bnez	a0,80005fb8 <_Z8printIntiii+0xe8>
    80005fd4:	03813083          	ld	ra,56(sp)
    80005fd8:	03013403          	ld	s0,48(sp)
    80005fdc:	02813483          	ld	s1,40(sp)
    80005fe0:	02013903          	ld	s2,32(sp)
    80005fe4:	01813983          	ld	s3,24(sp)
    80005fe8:	04010113          	addi	sp,sp,64
    80005fec:	00008067          	ret

0000000080005ff0 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005ff0:	fd010113          	addi	sp,sp,-48
    80005ff4:	02113423          	sd	ra,40(sp)
    80005ff8:	02813023          	sd	s0,32(sp)
    80005ffc:	00913c23          	sd	s1,24(sp)
    80006000:	01213823          	sd	s2,16(sp)
    80006004:	01313423          	sd	s3,8(sp)
    80006008:	03010413          	addi	s0,sp,48
    8000600c:	00050493          	mv	s1,a0
    80006010:	00058913          	mv	s2,a1
    80006014:	0015879b          	addiw	a5,a1,1
    80006018:	0007851b          	sext.w	a0,a5
    8000601c:	00f4a023          	sw	a5,0(s1)
    80006020:	0004a823          	sw	zero,16(s1)
    80006024:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006028:	00251513          	slli	a0,a0,0x2
    8000602c:	ffffb097          	auipc	ra,0xffffb
    80006030:	22c080e7          	jalr	556(ra) # 80001258 <_Z9mem_allocm>
    80006034:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80006038:	01000513          	li	a0,16
    8000603c:	ffffc097          	auipc	ra,0xffffc
    80006040:	fb0080e7          	jalr	-80(ra) # 80001fec <_Znwm>
    80006044:	00050993          	mv	s3,a0
    80006048:	00000593          	li	a1,0
    8000604c:	ffffc097          	auipc	ra,0xffffc
    80006050:	158080e7          	jalr	344(ra) # 800021a4 <_ZN9SemaphoreC1Ej>
    80006054:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80006058:	01000513          	li	a0,16
    8000605c:	ffffc097          	auipc	ra,0xffffc
    80006060:	f90080e7          	jalr	-112(ra) # 80001fec <_Znwm>
    80006064:	00050993          	mv	s3,a0
    80006068:	00090593          	mv	a1,s2
    8000606c:	ffffc097          	auipc	ra,0xffffc
    80006070:	138080e7          	jalr	312(ra) # 800021a4 <_ZN9SemaphoreC1Ej>
    80006074:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80006078:	01000513          	li	a0,16
    8000607c:	ffffc097          	auipc	ra,0xffffc
    80006080:	f70080e7          	jalr	-144(ra) # 80001fec <_Znwm>
    80006084:	00050913          	mv	s2,a0
    80006088:	00100593          	li	a1,1
    8000608c:	ffffc097          	auipc	ra,0xffffc
    80006090:	118080e7          	jalr	280(ra) # 800021a4 <_ZN9SemaphoreC1Ej>
    80006094:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80006098:	01000513          	li	a0,16
    8000609c:	ffffc097          	auipc	ra,0xffffc
    800060a0:	f50080e7          	jalr	-176(ra) # 80001fec <_Znwm>
    800060a4:	00050913          	mv	s2,a0
    800060a8:	00100593          	li	a1,1
    800060ac:	ffffc097          	auipc	ra,0xffffc
    800060b0:	0f8080e7          	jalr	248(ra) # 800021a4 <_ZN9SemaphoreC1Ej>
    800060b4:	0324b823          	sd	s2,48(s1)
}
    800060b8:	02813083          	ld	ra,40(sp)
    800060bc:	02013403          	ld	s0,32(sp)
    800060c0:	01813483          	ld	s1,24(sp)
    800060c4:	01013903          	ld	s2,16(sp)
    800060c8:	00813983          	ld	s3,8(sp)
    800060cc:	03010113          	addi	sp,sp,48
    800060d0:	00008067          	ret
    800060d4:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    800060d8:	00098513          	mv	a0,s3
    800060dc:	ffffc097          	auipc	ra,0xffffc
    800060e0:	f38080e7          	jalr	-200(ra) # 80002014 <_ZdlPv>
    800060e4:	00048513          	mv	a0,s1
    800060e8:	00007097          	auipc	ra,0x7
    800060ec:	e10080e7          	jalr	-496(ra) # 8000cef8 <_Unwind_Resume>
    800060f0:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    800060f4:	00098513          	mv	a0,s3
    800060f8:	ffffc097          	auipc	ra,0xffffc
    800060fc:	f1c080e7          	jalr	-228(ra) # 80002014 <_ZdlPv>
    80006100:	00048513          	mv	a0,s1
    80006104:	00007097          	auipc	ra,0x7
    80006108:	df4080e7          	jalr	-524(ra) # 8000cef8 <_Unwind_Resume>
    8000610c:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80006110:	00090513          	mv	a0,s2
    80006114:	ffffc097          	auipc	ra,0xffffc
    80006118:	f00080e7          	jalr	-256(ra) # 80002014 <_ZdlPv>
    8000611c:	00048513          	mv	a0,s1
    80006120:	00007097          	auipc	ra,0x7
    80006124:	dd8080e7          	jalr	-552(ra) # 8000cef8 <_Unwind_Resume>
    80006128:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    8000612c:	00090513          	mv	a0,s2
    80006130:	ffffc097          	auipc	ra,0xffffc
    80006134:	ee4080e7          	jalr	-284(ra) # 80002014 <_ZdlPv>
    80006138:	00048513          	mv	a0,s1
    8000613c:	00007097          	auipc	ra,0x7
    80006140:	dbc080e7          	jalr	-580(ra) # 8000cef8 <_Unwind_Resume>

0000000080006144 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80006144:	fe010113          	addi	sp,sp,-32
    80006148:	00113c23          	sd	ra,24(sp)
    8000614c:	00813823          	sd	s0,16(sp)
    80006150:	00913423          	sd	s1,8(sp)
    80006154:	01213023          	sd	s2,0(sp)
    80006158:	02010413          	addi	s0,sp,32
    8000615c:	00050493          	mv	s1,a0
    80006160:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80006164:	01853503          	ld	a0,24(a0)
    80006168:	ffffc097          	auipc	ra,0xffffc
    8000616c:	078080e7          	jalr	120(ra) # 800021e0 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80006170:	0304b503          	ld	a0,48(s1)
    80006174:	ffffc097          	auipc	ra,0xffffc
    80006178:	06c080e7          	jalr	108(ra) # 800021e0 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    8000617c:	0084b783          	ld	a5,8(s1)
    80006180:	0144a703          	lw	a4,20(s1)
    80006184:	00271713          	slli	a4,a4,0x2
    80006188:	00e787b3          	add	a5,a5,a4
    8000618c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006190:	0144a783          	lw	a5,20(s1)
    80006194:	0017879b          	addiw	a5,a5,1
    80006198:	0004a703          	lw	a4,0(s1)
    8000619c:	02e7e7bb          	remw	a5,a5,a4
    800061a0:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800061a4:	0304b503          	ld	a0,48(s1)
    800061a8:	ffffc097          	auipc	ra,0xffffc
    800061ac:	070080e7          	jalr	112(ra) # 80002218 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    800061b0:	0204b503          	ld	a0,32(s1)
    800061b4:	ffffc097          	auipc	ra,0xffffc
    800061b8:	064080e7          	jalr	100(ra) # 80002218 <_ZN9Semaphore6signalEv>

}
    800061bc:	01813083          	ld	ra,24(sp)
    800061c0:	01013403          	ld	s0,16(sp)
    800061c4:	00813483          	ld	s1,8(sp)
    800061c8:	00013903          	ld	s2,0(sp)
    800061cc:	02010113          	addi	sp,sp,32
    800061d0:	00008067          	ret

00000000800061d4 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    800061d4:	fe010113          	addi	sp,sp,-32
    800061d8:	00113c23          	sd	ra,24(sp)
    800061dc:	00813823          	sd	s0,16(sp)
    800061e0:	00913423          	sd	s1,8(sp)
    800061e4:	01213023          	sd	s2,0(sp)
    800061e8:	02010413          	addi	s0,sp,32
    800061ec:	00050493          	mv	s1,a0
    itemAvailable->wait();
    800061f0:	02053503          	ld	a0,32(a0)
    800061f4:	ffffc097          	auipc	ra,0xffffc
    800061f8:	fec080e7          	jalr	-20(ra) # 800021e0 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    800061fc:	0284b503          	ld	a0,40(s1)
    80006200:	ffffc097          	auipc	ra,0xffffc
    80006204:	fe0080e7          	jalr	-32(ra) # 800021e0 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80006208:	0084b703          	ld	a4,8(s1)
    8000620c:	0104a783          	lw	a5,16(s1)
    80006210:	00279693          	slli	a3,a5,0x2
    80006214:	00d70733          	add	a4,a4,a3
    80006218:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000621c:	0017879b          	addiw	a5,a5,1
    80006220:	0004a703          	lw	a4,0(s1)
    80006224:	02e7e7bb          	remw	a5,a5,a4
    80006228:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    8000622c:	0284b503          	ld	a0,40(s1)
    80006230:	ffffc097          	auipc	ra,0xffffc
    80006234:	fe8080e7          	jalr	-24(ra) # 80002218 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80006238:	0184b503          	ld	a0,24(s1)
    8000623c:	ffffc097          	auipc	ra,0xffffc
    80006240:	fdc080e7          	jalr	-36(ra) # 80002218 <_ZN9Semaphore6signalEv>

    return ret;
}
    80006244:	00090513          	mv	a0,s2
    80006248:	01813083          	ld	ra,24(sp)
    8000624c:	01013403          	ld	s0,16(sp)
    80006250:	00813483          	ld	s1,8(sp)
    80006254:	00013903          	ld	s2,0(sp)
    80006258:	02010113          	addi	sp,sp,32
    8000625c:	00008067          	ret

0000000080006260 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80006260:	fe010113          	addi	sp,sp,-32
    80006264:	00113c23          	sd	ra,24(sp)
    80006268:	00813823          	sd	s0,16(sp)
    8000626c:	00913423          	sd	s1,8(sp)
    80006270:	01213023          	sd	s2,0(sp)
    80006274:	02010413          	addi	s0,sp,32
    80006278:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    8000627c:	02853503          	ld	a0,40(a0)
    80006280:	ffffc097          	auipc	ra,0xffffc
    80006284:	f60080e7          	jalr	-160(ra) # 800021e0 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80006288:	0304b503          	ld	a0,48(s1)
    8000628c:	ffffc097          	auipc	ra,0xffffc
    80006290:	f54080e7          	jalr	-172(ra) # 800021e0 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80006294:	0144a783          	lw	a5,20(s1)
    80006298:	0104a903          	lw	s2,16(s1)
    8000629c:	0327ce63          	blt	a5,s2,800062d8 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    800062a0:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800062a4:	0304b503          	ld	a0,48(s1)
    800062a8:	ffffc097          	auipc	ra,0xffffc
    800062ac:	f70080e7          	jalr	-144(ra) # 80002218 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    800062b0:	0284b503          	ld	a0,40(s1)
    800062b4:	ffffc097          	auipc	ra,0xffffc
    800062b8:	f64080e7          	jalr	-156(ra) # 80002218 <_ZN9Semaphore6signalEv>

    return ret;
}
    800062bc:	00090513          	mv	a0,s2
    800062c0:	01813083          	ld	ra,24(sp)
    800062c4:	01013403          	ld	s0,16(sp)
    800062c8:	00813483          	ld	s1,8(sp)
    800062cc:	00013903          	ld	s2,0(sp)
    800062d0:	02010113          	addi	sp,sp,32
    800062d4:	00008067          	ret
        ret = cap - head + tail;
    800062d8:	0004a703          	lw	a4,0(s1)
    800062dc:	4127093b          	subw	s2,a4,s2
    800062e0:	00f9093b          	addw	s2,s2,a5
    800062e4:	fc1ff06f          	j	800062a4 <_ZN9BufferCPP6getCntEv+0x44>

00000000800062e8 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    800062e8:	fe010113          	addi	sp,sp,-32
    800062ec:	00113c23          	sd	ra,24(sp)
    800062f0:	00813823          	sd	s0,16(sp)
    800062f4:	00913423          	sd	s1,8(sp)
    800062f8:	02010413          	addi	s0,sp,32
    800062fc:	00050493          	mv	s1,a0
    Console::putc('\n');
    80006300:	00a00513          	li	a0,10
    80006304:	ffffc097          	auipc	ra,0xffffc
    80006308:	034080e7          	jalr	52(ra) # 80002338 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    8000630c:	00003517          	auipc	a0,0x3
    80006310:	00450513          	addi	a0,a0,4 # 80009310 <CONSOLE_STATUS+0x300>
    80006314:	00000097          	auipc	ra,0x0
    80006318:	a0c080e7          	jalr	-1524(ra) # 80005d20 <_Z11printStringPKc>
    while (getCnt()) {
    8000631c:	00048513          	mv	a0,s1
    80006320:	00000097          	auipc	ra,0x0
    80006324:	f40080e7          	jalr	-192(ra) # 80006260 <_ZN9BufferCPP6getCntEv>
    80006328:	02050c63          	beqz	a0,80006360 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    8000632c:	0084b783          	ld	a5,8(s1)
    80006330:	0104a703          	lw	a4,16(s1)
    80006334:	00271713          	slli	a4,a4,0x2
    80006338:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    8000633c:	0007c503          	lbu	a0,0(a5)
    80006340:	ffffc097          	auipc	ra,0xffffc
    80006344:	ff8080e7          	jalr	-8(ra) # 80002338 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80006348:	0104a783          	lw	a5,16(s1)
    8000634c:	0017879b          	addiw	a5,a5,1
    80006350:	0004a703          	lw	a4,0(s1)
    80006354:	02e7e7bb          	remw	a5,a5,a4
    80006358:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    8000635c:	fc1ff06f          	j	8000631c <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80006360:	02100513          	li	a0,33
    80006364:	ffffc097          	auipc	ra,0xffffc
    80006368:	fd4080e7          	jalr	-44(ra) # 80002338 <_ZN7Console4putcEc>
    Console::putc('\n');
    8000636c:	00a00513          	li	a0,10
    80006370:	ffffc097          	auipc	ra,0xffffc
    80006374:	fc8080e7          	jalr	-56(ra) # 80002338 <_ZN7Console4putcEc>
    mem_free(buffer);
    80006378:	0084b503          	ld	a0,8(s1)
    8000637c:	ffffb097          	auipc	ra,0xffffb
    80006380:	f30080e7          	jalr	-208(ra) # 800012ac <_Z8mem_freePv>
    delete itemAvailable;
    80006384:	0204b503          	ld	a0,32(s1)
    80006388:	00050863          	beqz	a0,80006398 <_ZN9BufferCPPD1Ev+0xb0>
    8000638c:	00053783          	ld	a5,0(a0)
    80006390:	0087b783          	ld	a5,8(a5)
    80006394:	000780e7          	jalr	a5
    delete spaceAvailable;
    80006398:	0184b503          	ld	a0,24(s1)
    8000639c:	00050863          	beqz	a0,800063ac <_ZN9BufferCPPD1Ev+0xc4>
    800063a0:	00053783          	ld	a5,0(a0)
    800063a4:	0087b783          	ld	a5,8(a5)
    800063a8:	000780e7          	jalr	a5
    delete mutexTail;
    800063ac:	0304b503          	ld	a0,48(s1)
    800063b0:	00050863          	beqz	a0,800063c0 <_ZN9BufferCPPD1Ev+0xd8>
    800063b4:	00053783          	ld	a5,0(a0)
    800063b8:	0087b783          	ld	a5,8(a5)
    800063bc:	000780e7          	jalr	a5
    delete mutexHead;
    800063c0:	0284b503          	ld	a0,40(s1)
    800063c4:	00050863          	beqz	a0,800063d4 <_ZN9BufferCPPD1Ev+0xec>
    800063c8:	00053783          	ld	a5,0(a0)
    800063cc:	0087b783          	ld	a5,8(a5)
    800063d0:	000780e7          	jalr	a5
}
    800063d4:	01813083          	ld	ra,24(sp)
    800063d8:	01013403          	ld	s0,16(sp)
    800063dc:	00813483          	ld	s1,8(sp)
    800063e0:	02010113          	addi	sp,sp,32
    800063e4:	00008067          	ret

00000000800063e8 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    800063e8:	fe010113          	addi	sp,sp,-32
    800063ec:	00113c23          	sd	ra,24(sp)
    800063f0:	00813823          	sd	s0,16(sp)
    800063f4:	00913423          	sd	s1,8(sp)
    800063f8:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    800063fc:	00003517          	auipc	a0,0x3
    80006400:	f3c50513          	addi	a0,a0,-196 # 80009338 <CONSOLE_STATUS+0x328>
    80006404:	00000097          	auipc	ra,0x0
    80006408:	91c080e7          	jalr	-1764(ra) # 80005d20 <_Z11printStringPKc>
    int test = getc() - '0';
    8000640c:	ffffb097          	auipc	ra,0xffffb
    80006410:	214080e7          	jalr	532(ra) # 80001620 <_Z4getcv>
    80006414:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80006418:	ffffb097          	auipc	ra,0xffffb
    8000641c:	208080e7          	jalr	520(ra) # 80001620 <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80006420:	00700793          	li	a5,7
    80006424:	1097e263          	bltu	a5,s1,80006528 <_Z8userMainv+0x140>
    80006428:	00249493          	slli	s1,s1,0x2
    8000642c:	00003717          	auipc	a4,0x3
    80006430:	16470713          	addi	a4,a4,356 # 80009590 <CONSOLE_STATUS+0x580>
    80006434:	00e484b3          	add	s1,s1,a4
    80006438:	0004a783          	lw	a5,0(s1)
    8000643c:	00e787b3          	add	a5,a5,a4
    80006440:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80006444:	fffff097          	auipc	ra,0xfffff
    80006448:	f44080e7          	jalr	-188(ra) # 80005388 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    8000644c:	00003517          	auipc	a0,0x3
    80006450:	f0c50513          	addi	a0,a0,-244 # 80009358 <CONSOLE_STATUS+0x348>
    80006454:	00000097          	auipc	ra,0x0
    80006458:	8cc080e7          	jalr	-1844(ra) # 80005d20 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    8000645c:	01813083          	ld	ra,24(sp)
    80006460:	01013403          	ld	s0,16(sp)
    80006464:	00813483          	ld	s1,8(sp)
    80006468:	02010113          	addi	sp,sp,32
    8000646c:	00008067          	ret
            Threads_CPP_API_test();
    80006470:	ffffe097          	auipc	ra,0xffffe
    80006474:	ad8080e7          	jalr	-1320(ra) # 80003f48 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80006478:	00003517          	auipc	a0,0x3
    8000647c:	f2050513          	addi	a0,a0,-224 # 80009398 <CONSOLE_STATUS+0x388>
    80006480:	00000097          	auipc	ra,0x0
    80006484:	8a0080e7          	jalr	-1888(ra) # 80005d20 <_Z11printStringPKc>
            break;
    80006488:	fd5ff06f          	j	8000645c <_Z8userMainv+0x74>
            producerConsumer_C_API();
    8000648c:	ffffd097          	auipc	ra,0xffffd
    80006490:	310080e7          	jalr	784(ra) # 8000379c <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80006494:	00003517          	auipc	a0,0x3
    80006498:	f4450513          	addi	a0,a0,-188 # 800093d8 <CONSOLE_STATUS+0x3c8>
    8000649c:	00000097          	auipc	ra,0x0
    800064a0:	884080e7          	jalr	-1916(ra) # 80005d20 <_Z11printStringPKc>
            break;
    800064a4:	fb9ff06f          	j	8000645c <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    800064a8:	fffff097          	auipc	ra,0xfffff
    800064ac:	234080e7          	jalr	564(ra) # 800056dc <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    800064b0:	00003517          	auipc	a0,0x3
    800064b4:	f7850513          	addi	a0,a0,-136 # 80009428 <CONSOLE_STATUS+0x418>
    800064b8:	00000097          	auipc	ra,0x0
    800064bc:	868080e7          	jalr	-1944(ra) # 80005d20 <_Z11printStringPKc>
            break;
    800064c0:	f9dff06f          	j	8000645c <_Z8userMainv+0x74>
            testSleeping();
    800064c4:	00000097          	auipc	ra,0x0
    800064c8:	11c080e7          	jalr	284(ra) # 800065e0 <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    800064cc:	00003517          	auipc	a0,0x3
    800064d0:	fb450513          	addi	a0,a0,-76 # 80009480 <CONSOLE_STATUS+0x470>
    800064d4:	00000097          	auipc	ra,0x0
    800064d8:	84c080e7          	jalr	-1972(ra) # 80005d20 <_Z11printStringPKc>
            break;
    800064dc:	f81ff06f          	j	8000645c <_Z8userMainv+0x74>
            testConsumerProducer();
    800064e0:	ffffe097          	auipc	ra,0xffffe
    800064e4:	f28080e7          	jalr	-216(ra) # 80004408 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    800064e8:	00003517          	auipc	a0,0x3
    800064ec:	fc850513          	addi	a0,a0,-56 # 800094b0 <CONSOLE_STATUS+0x4a0>
    800064f0:	00000097          	auipc	ra,0x0
    800064f4:	830080e7          	jalr	-2000(ra) # 80005d20 <_Z11printStringPKc>
            break;
    800064f8:	f65ff06f          	j	8000645c <_Z8userMainv+0x74>
            System_Mode_test();
    800064fc:	00000097          	auipc	ra,0x0
    80006500:	658080e7          	jalr	1624(ra) # 80006b54 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80006504:	00003517          	auipc	a0,0x3
    80006508:	fec50513          	addi	a0,a0,-20 # 800094f0 <CONSOLE_STATUS+0x4e0>
    8000650c:	00000097          	auipc	ra,0x0
    80006510:	814080e7          	jalr	-2028(ra) # 80005d20 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80006514:	00003517          	auipc	a0,0x3
    80006518:	ffc50513          	addi	a0,a0,-4 # 80009510 <CONSOLE_STATUS+0x500>
    8000651c:	00000097          	auipc	ra,0x0
    80006520:	804080e7          	jalr	-2044(ra) # 80005d20 <_Z11printStringPKc>
            break;
    80006524:	f39ff06f          	j	8000645c <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    80006528:	00003517          	auipc	a0,0x3
    8000652c:	04050513          	addi	a0,a0,64 # 80009568 <CONSOLE_STATUS+0x558>
    80006530:	fffff097          	auipc	ra,0xfffff
    80006534:	7f0080e7          	jalr	2032(ra) # 80005d20 <_Z11printStringPKc>
    80006538:	f25ff06f          	j	8000645c <_Z8userMainv+0x74>

000000008000653c <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    8000653c:	fe010113          	addi	sp,sp,-32
    80006540:	00113c23          	sd	ra,24(sp)
    80006544:	00813823          	sd	s0,16(sp)
    80006548:	00913423          	sd	s1,8(sp)
    8000654c:	01213023          	sd	s2,0(sp)
    80006550:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80006554:	00053903          	ld	s2,0(a0)
    int i = 6;
    80006558:	00600493          	li	s1,6
    while (--i > 0) {
    8000655c:	fff4849b          	addiw	s1,s1,-1
    80006560:	04905463          	blez	s1,800065a8 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80006564:	00003517          	auipc	a0,0x3
    80006568:	04c50513          	addi	a0,a0,76 # 800095b0 <CONSOLE_STATUS+0x5a0>
    8000656c:	fffff097          	auipc	ra,0xfffff
    80006570:	7b4080e7          	jalr	1972(ra) # 80005d20 <_Z11printStringPKc>
        printInt(sleep_time);
    80006574:	00000613          	li	a2,0
    80006578:	00a00593          	li	a1,10
    8000657c:	0009051b          	sext.w	a0,s2
    80006580:	00000097          	auipc	ra,0x0
    80006584:	950080e7          	jalr	-1712(ra) # 80005ed0 <_Z8printIntiii>
        printString(" !\n");
    80006588:	00003517          	auipc	a0,0x3
    8000658c:	03050513          	addi	a0,a0,48 # 800095b8 <CONSOLE_STATUS+0x5a8>
    80006590:	fffff097          	auipc	ra,0xfffff
    80006594:	790080e7          	jalr	1936(ra) # 80005d20 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80006598:	00090513          	mv	a0,s2
    8000659c:	ffffb097          	auipc	ra,0xffffb
    800065a0:	038080e7          	jalr	56(ra) # 800015d4 <_Z10time_sleepm>
    while (--i > 0) {
    800065a4:	fb9ff06f          	j	8000655c <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    800065a8:	00a00793          	li	a5,10
    800065ac:	02f95933          	divu	s2,s2,a5
    800065b0:	fff90913          	addi	s2,s2,-1
    800065b4:	00006797          	auipc	a5,0x6
    800065b8:	87478793          	addi	a5,a5,-1932 # 8000be28 <_ZL8finished>
    800065bc:	01278933          	add	s2,a5,s2
    800065c0:	00100793          	li	a5,1
    800065c4:	00f90023          	sb	a5,0(s2)
}
    800065c8:	01813083          	ld	ra,24(sp)
    800065cc:	01013403          	ld	s0,16(sp)
    800065d0:	00813483          	ld	s1,8(sp)
    800065d4:	00013903          	ld	s2,0(sp)
    800065d8:	02010113          	addi	sp,sp,32
    800065dc:	00008067          	ret

00000000800065e0 <_Z12testSleepingv>:

void testSleeping() {
    800065e0:	fc010113          	addi	sp,sp,-64
    800065e4:	02113c23          	sd	ra,56(sp)
    800065e8:	02813823          	sd	s0,48(sp)
    800065ec:	02913423          	sd	s1,40(sp)
    800065f0:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    800065f4:	00a00793          	li	a5,10
    800065f8:	fcf43823          	sd	a5,-48(s0)
    800065fc:	01400793          	li	a5,20
    80006600:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80006604:	00000493          	li	s1,0
    80006608:	02c0006f          	j	80006634 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    8000660c:	00349793          	slli	a5,s1,0x3
    80006610:	fd040613          	addi	a2,s0,-48
    80006614:	00f60633          	add	a2,a2,a5
    80006618:	00000597          	auipc	a1,0x0
    8000661c:	f2458593          	addi	a1,a1,-220 # 8000653c <_ZL9sleepyRunPv>
    80006620:	fc040513          	addi	a0,s0,-64
    80006624:	00f50533          	add	a0,a0,a5
    80006628:	ffffb097          	auipc	ra,0xffffb
    8000662c:	cd0080e7          	jalr	-816(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80006630:	0014849b          	addiw	s1,s1,1
    80006634:	00100793          	li	a5,1
    80006638:	fc97dae3          	bge	a5,s1,8000660c <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    8000663c:	00005797          	auipc	a5,0x5
    80006640:	7ec7c783          	lbu	a5,2028(a5) # 8000be28 <_ZL8finished>
    80006644:	fe078ce3          	beqz	a5,8000663c <_Z12testSleepingv+0x5c>
    80006648:	00005797          	auipc	a5,0x5
    8000664c:	7e17c783          	lbu	a5,2017(a5) # 8000be29 <_ZL8finished+0x1>
    80006650:	fe0786e3          	beqz	a5,8000663c <_Z12testSleepingv+0x5c>
}
    80006654:	03813083          	ld	ra,56(sp)
    80006658:	03013403          	ld	s0,48(sp)
    8000665c:	02813483          	ld	s1,40(sp)
    80006660:	04010113          	addi	sp,sp,64
    80006664:	00008067          	ret

0000000080006668 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80006668:	fe010113          	addi	sp,sp,-32
    8000666c:	00113c23          	sd	ra,24(sp)
    80006670:	00813823          	sd	s0,16(sp)
    80006674:	00913423          	sd	s1,8(sp)
    80006678:	01213023          	sd	s2,0(sp)
    8000667c:	02010413          	addi	s0,sp,32
    80006680:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80006684:	00100793          	li	a5,1
    80006688:	02a7f863          	bgeu	a5,a0,800066b8 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000668c:	00a00793          	li	a5,10
    80006690:	02f577b3          	remu	a5,a0,a5
    80006694:	02078e63          	beqz	a5,800066d0 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80006698:	fff48513          	addi	a0,s1,-1
    8000669c:	00000097          	auipc	ra,0x0
    800066a0:	fcc080e7          	jalr	-52(ra) # 80006668 <_ZL9fibonaccim>
    800066a4:	00050913          	mv	s2,a0
    800066a8:	ffe48513          	addi	a0,s1,-2
    800066ac:	00000097          	auipc	ra,0x0
    800066b0:	fbc080e7          	jalr	-68(ra) # 80006668 <_ZL9fibonaccim>
    800066b4:	00a90533          	add	a0,s2,a0
}
    800066b8:	01813083          	ld	ra,24(sp)
    800066bc:	01013403          	ld	s0,16(sp)
    800066c0:	00813483          	ld	s1,8(sp)
    800066c4:	00013903          	ld	s2,0(sp)
    800066c8:	02010113          	addi	sp,sp,32
    800066cc:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800066d0:	ffffb097          	auipc	ra,0xffffb
    800066d4:	cfc080e7          	jalr	-772(ra) # 800013cc <_Z15thread_dispatchv>
    800066d8:	fc1ff06f          	j	80006698 <_ZL9fibonaccim+0x30>

00000000800066dc <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800066dc:	fe010113          	addi	sp,sp,-32
    800066e0:	00113c23          	sd	ra,24(sp)
    800066e4:	00813823          	sd	s0,16(sp)
    800066e8:	00913423          	sd	s1,8(sp)
    800066ec:	01213023          	sd	s2,0(sp)
    800066f0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800066f4:	00a00493          	li	s1,10
    800066f8:	0400006f          	j	80006738 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800066fc:	00003517          	auipc	a0,0x3
    80006700:	b7c50513          	addi	a0,a0,-1156 # 80009278 <CONSOLE_STATUS+0x268>
    80006704:	fffff097          	auipc	ra,0xfffff
    80006708:	61c080e7          	jalr	1564(ra) # 80005d20 <_Z11printStringPKc>
    8000670c:	00000613          	li	a2,0
    80006710:	00a00593          	li	a1,10
    80006714:	00048513          	mv	a0,s1
    80006718:	fffff097          	auipc	ra,0xfffff
    8000671c:	7b8080e7          	jalr	1976(ra) # 80005ed0 <_Z8printIntiii>
    80006720:	00003517          	auipc	a0,0x3
    80006724:	d5850513          	addi	a0,a0,-680 # 80009478 <CONSOLE_STATUS+0x468>
    80006728:	fffff097          	auipc	ra,0xfffff
    8000672c:	5f8080e7          	jalr	1528(ra) # 80005d20 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80006730:	0014849b          	addiw	s1,s1,1
    80006734:	0ff4f493          	andi	s1,s1,255
    80006738:	00c00793          	li	a5,12
    8000673c:	fc97f0e3          	bgeu	a5,s1,800066fc <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80006740:	00003517          	auipc	a0,0x3
    80006744:	b4050513          	addi	a0,a0,-1216 # 80009280 <CONSOLE_STATUS+0x270>
    80006748:	fffff097          	auipc	ra,0xfffff
    8000674c:	5d8080e7          	jalr	1496(ra) # 80005d20 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80006750:	00500313          	li	t1,5
    thread_dispatch();
    80006754:	ffffb097          	auipc	ra,0xffffb
    80006758:	c78080e7          	jalr	-904(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    8000675c:	01000513          	li	a0,16
    80006760:	00000097          	auipc	ra,0x0
    80006764:	f08080e7          	jalr	-248(ra) # 80006668 <_ZL9fibonaccim>
    80006768:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    8000676c:	00003517          	auipc	a0,0x3
    80006770:	b2450513          	addi	a0,a0,-1244 # 80009290 <CONSOLE_STATUS+0x280>
    80006774:	fffff097          	auipc	ra,0xfffff
    80006778:	5ac080e7          	jalr	1452(ra) # 80005d20 <_Z11printStringPKc>
    8000677c:	00000613          	li	a2,0
    80006780:	00a00593          	li	a1,10
    80006784:	0009051b          	sext.w	a0,s2
    80006788:	fffff097          	auipc	ra,0xfffff
    8000678c:	748080e7          	jalr	1864(ra) # 80005ed0 <_Z8printIntiii>
    80006790:	00003517          	auipc	a0,0x3
    80006794:	ce850513          	addi	a0,a0,-792 # 80009478 <CONSOLE_STATUS+0x468>
    80006798:	fffff097          	auipc	ra,0xfffff
    8000679c:	588080e7          	jalr	1416(ra) # 80005d20 <_Z11printStringPKc>
    800067a0:	0400006f          	j	800067e0 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800067a4:	00003517          	auipc	a0,0x3
    800067a8:	ad450513          	addi	a0,a0,-1324 # 80009278 <CONSOLE_STATUS+0x268>
    800067ac:	fffff097          	auipc	ra,0xfffff
    800067b0:	574080e7          	jalr	1396(ra) # 80005d20 <_Z11printStringPKc>
    800067b4:	00000613          	li	a2,0
    800067b8:	00a00593          	li	a1,10
    800067bc:	00048513          	mv	a0,s1
    800067c0:	fffff097          	auipc	ra,0xfffff
    800067c4:	710080e7          	jalr	1808(ra) # 80005ed0 <_Z8printIntiii>
    800067c8:	00003517          	auipc	a0,0x3
    800067cc:	cb050513          	addi	a0,a0,-848 # 80009478 <CONSOLE_STATUS+0x468>
    800067d0:	fffff097          	auipc	ra,0xfffff
    800067d4:	550080e7          	jalr	1360(ra) # 80005d20 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800067d8:	0014849b          	addiw	s1,s1,1
    800067dc:	0ff4f493          	andi	s1,s1,255
    800067e0:	00f00793          	li	a5,15
    800067e4:	fc97f0e3          	bgeu	a5,s1,800067a4 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800067e8:	00003517          	auipc	a0,0x3
    800067ec:	ab850513          	addi	a0,a0,-1352 # 800092a0 <CONSOLE_STATUS+0x290>
    800067f0:	fffff097          	auipc	ra,0xfffff
    800067f4:	530080e7          	jalr	1328(ra) # 80005d20 <_Z11printStringPKc>
    finishedD = true;
    800067f8:	00100793          	li	a5,1
    800067fc:	00005717          	auipc	a4,0x5
    80006800:	62f70723          	sb	a5,1582(a4) # 8000be2a <_ZL9finishedD>
    thread_dispatch();
    80006804:	ffffb097          	auipc	ra,0xffffb
    80006808:	bc8080e7          	jalr	-1080(ra) # 800013cc <_Z15thread_dispatchv>
}
    8000680c:	01813083          	ld	ra,24(sp)
    80006810:	01013403          	ld	s0,16(sp)
    80006814:	00813483          	ld	s1,8(sp)
    80006818:	00013903          	ld	s2,0(sp)
    8000681c:	02010113          	addi	sp,sp,32
    80006820:	00008067          	ret

0000000080006824 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80006824:	fe010113          	addi	sp,sp,-32
    80006828:	00113c23          	sd	ra,24(sp)
    8000682c:	00813823          	sd	s0,16(sp)
    80006830:	00913423          	sd	s1,8(sp)
    80006834:	01213023          	sd	s2,0(sp)
    80006838:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000683c:	00000493          	li	s1,0
    80006840:	0400006f          	j	80006880 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80006844:	00003517          	auipc	a0,0x3
    80006848:	a0450513          	addi	a0,a0,-1532 # 80009248 <CONSOLE_STATUS+0x238>
    8000684c:	fffff097          	auipc	ra,0xfffff
    80006850:	4d4080e7          	jalr	1236(ra) # 80005d20 <_Z11printStringPKc>
    80006854:	00000613          	li	a2,0
    80006858:	00a00593          	li	a1,10
    8000685c:	00048513          	mv	a0,s1
    80006860:	fffff097          	auipc	ra,0xfffff
    80006864:	670080e7          	jalr	1648(ra) # 80005ed0 <_Z8printIntiii>
    80006868:	00003517          	auipc	a0,0x3
    8000686c:	c1050513          	addi	a0,a0,-1008 # 80009478 <CONSOLE_STATUS+0x468>
    80006870:	fffff097          	auipc	ra,0xfffff
    80006874:	4b0080e7          	jalr	1200(ra) # 80005d20 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80006878:	0014849b          	addiw	s1,s1,1
    8000687c:	0ff4f493          	andi	s1,s1,255
    80006880:	00200793          	li	a5,2
    80006884:	fc97f0e3          	bgeu	a5,s1,80006844 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80006888:	00003517          	auipc	a0,0x3
    8000688c:	9c850513          	addi	a0,a0,-1592 # 80009250 <CONSOLE_STATUS+0x240>
    80006890:	fffff097          	auipc	ra,0xfffff
    80006894:	490080e7          	jalr	1168(ra) # 80005d20 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80006898:	00700313          	li	t1,7
    thread_dispatch();
    8000689c:	ffffb097          	auipc	ra,0xffffb
    800068a0:	b30080e7          	jalr	-1232(ra) # 800013cc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800068a4:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800068a8:	00003517          	auipc	a0,0x3
    800068ac:	9b850513          	addi	a0,a0,-1608 # 80009260 <CONSOLE_STATUS+0x250>
    800068b0:	fffff097          	auipc	ra,0xfffff
    800068b4:	470080e7          	jalr	1136(ra) # 80005d20 <_Z11printStringPKc>
    800068b8:	00000613          	li	a2,0
    800068bc:	00a00593          	li	a1,10
    800068c0:	0009051b          	sext.w	a0,s2
    800068c4:	fffff097          	auipc	ra,0xfffff
    800068c8:	60c080e7          	jalr	1548(ra) # 80005ed0 <_Z8printIntiii>
    800068cc:	00003517          	auipc	a0,0x3
    800068d0:	bac50513          	addi	a0,a0,-1108 # 80009478 <CONSOLE_STATUS+0x468>
    800068d4:	fffff097          	auipc	ra,0xfffff
    800068d8:	44c080e7          	jalr	1100(ra) # 80005d20 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800068dc:	00c00513          	li	a0,12
    800068e0:	00000097          	auipc	ra,0x0
    800068e4:	d88080e7          	jalr	-632(ra) # 80006668 <_ZL9fibonaccim>
    800068e8:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800068ec:	00003517          	auipc	a0,0x3
    800068f0:	97c50513          	addi	a0,a0,-1668 # 80009268 <CONSOLE_STATUS+0x258>
    800068f4:	fffff097          	auipc	ra,0xfffff
    800068f8:	42c080e7          	jalr	1068(ra) # 80005d20 <_Z11printStringPKc>
    800068fc:	00000613          	li	a2,0
    80006900:	00a00593          	li	a1,10
    80006904:	0009051b          	sext.w	a0,s2
    80006908:	fffff097          	auipc	ra,0xfffff
    8000690c:	5c8080e7          	jalr	1480(ra) # 80005ed0 <_Z8printIntiii>
    80006910:	00003517          	auipc	a0,0x3
    80006914:	b6850513          	addi	a0,a0,-1176 # 80009478 <CONSOLE_STATUS+0x468>
    80006918:	fffff097          	auipc	ra,0xfffff
    8000691c:	408080e7          	jalr	1032(ra) # 80005d20 <_Z11printStringPKc>
    80006920:	0400006f          	j	80006960 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80006924:	00003517          	auipc	a0,0x3
    80006928:	92450513          	addi	a0,a0,-1756 # 80009248 <CONSOLE_STATUS+0x238>
    8000692c:	fffff097          	auipc	ra,0xfffff
    80006930:	3f4080e7          	jalr	1012(ra) # 80005d20 <_Z11printStringPKc>
    80006934:	00000613          	li	a2,0
    80006938:	00a00593          	li	a1,10
    8000693c:	00048513          	mv	a0,s1
    80006940:	fffff097          	auipc	ra,0xfffff
    80006944:	590080e7          	jalr	1424(ra) # 80005ed0 <_Z8printIntiii>
    80006948:	00003517          	auipc	a0,0x3
    8000694c:	b3050513          	addi	a0,a0,-1232 # 80009478 <CONSOLE_STATUS+0x468>
    80006950:	fffff097          	auipc	ra,0xfffff
    80006954:	3d0080e7          	jalr	976(ra) # 80005d20 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80006958:	0014849b          	addiw	s1,s1,1
    8000695c:	0ff4f493          	andi	s1,s1,255
    80006960:	00500793          	li	a5,5
    80006964:	fc97f0e3          	bgeu	a5,s1,80006924 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80006968:	00003517          	auipc	a0,0x3
    8000696c:	8b850513          	addi	a0,a0,-1864 # 80009220 <CONSOLE_STATUS+0x210>
    80006970:	fffff097          	auipc	ra,0xfffff
    80006974:	3b0080e7          	jalr	944(ra) # 80005d20 <_Z11printStringPKc>
    finishedC = true;
    80006978:	00100793          	li	a5,1
    8000697c:	00005717          	auipc	a4,0x5
    80006980:	4af707a3          	sb	a5,1199(a4) # 8000be2b <_ZL9finishedC>
    thread_dispatch();
    80006984:	ffffb097          	auipc	ra,0xffffb
    80006988:	a48080e7          	jalr	-1464(ra) # 800013cc <_Z15thread_dispatchv>
}
    8000698c:	01813083          	ld	ra,24(sp)
    80006990:	01013403          	ld	s0,16(sp)
    80006994:	00813483          	ld	s1,8(sp)
    80006998:	00013903          	ld	s2,0(sp)
    8000699c:	02010113          	addi	sp,sp,32
    800069a0:	00008067          	ret

00000000800069a4 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800069a4:	fe010113          	addi	sp,sp,-32
    800069a8:	00113c23          	sd	ra,24(sp)
    800069ac:	00813823          	sd	s0,16(sp)
    800069b0:	00913423          	sd	s1,8(sp)
    800069b4:	01213023          	sd	s2,0(sp)
    800069b8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800069bc:	00000913          	li	s2,0
    800069c0:	0400006f          	j	80006a00 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    800069c4:	ffffb097          	auipc	ra,0xffffb
    800069c8:	a08080e7          	jalr	-1528(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800069cc:	00148493          	addi	s1,s1,1
    800069d0:	000027b7          	lui	a5,0x2
    800069d4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800069d8:	0097ee63          	bltu	a5,s1,800069f4 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800069dc:	00000713          	li	a4,0
    800069e0:	000077b7          	lui	a5,0x7
    800069e4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800069e8:	fce7eee3          	bltu	a5,a4,800069c4 <_ZL11workerBodyBPv+0x20>
    800069ec:	00170713          	addi	a4,a4,1
    800069f0:	ff1ff06f          	j	800069e0 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    800069f4:	00a00793          	li	a5,10
    800069f8:	04f90663          	beq	s2,a5,80006a44 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    800069fc:	00190913          	addi	s2,s2,1
    80006a00:	00f00793          	li	a5,15
    80006a04:	0527e463          	bltu	a5,s2,80006a4c <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80006a08:	00003517          	auipc	a0,0x3
    80006a0c:	82850513          	addi	a0,a0,-2008 # 80009230 <CONSOLE_STATUS+0x220>
    80006a10:	fffff097          	auipc	ra,0xfffff
    80006a14:	310080e7          	jalr	784(ra) # 80005d20 <_Z11printStringPKc>
    80006a18:	00000613          	li	a2,0
    80006a1c:	00a00593          	li	a1,10
    80006a20:	0009051b          	sext.w	a0,s2
    80006a24:	fffff097          	auipc	ra,0xfffff
    80006a28:	4ac080e7          	jalr	1196(ra) # 80005ed0 <_Z8printIntiii>
    80006a2c:	00003517          	auipc	a0,0x3
    80006a30:	a4c50513          	addi	a0,a0,-1460 # 80009478 <CONSOLE_STATUS+0x468>
    80006a34:	fffff097          	auipc	ra,0xfffff
    80006a38:	2ec080e7          	jalr	748(ra) # 80005d20 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006a3c:	00000493          	li	s1,0
    80006a40:	f91ff06f          	j	800069d0 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80006a44:	14102ff3          	csrr	t6,sepc
    80006a48:	fb5ff06f          	j	800069fc <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80006a4c:	00002517          	auipc	a0,0x2
    80006a50:	7ec50513          	addi	a0,a0,2028 # 80009238 <CONSOLE_STATUS+0x228>
    80006a54:	fffff097          	auipc	ra,0xfffff
    80006a58:	2cc080e7          	jalr	716(ra) # 80005d20 <_Z11printStringPKc>
    finishedB = true;
    80006a5c:	00100793          	li	a5,1
    80006a60:	00005717          	auipc	a4,0x5
    80006a64:	3cf70623          	sb	a5,972(a4) # 8000be2c <_ZL9finishedB>
    thread_dispatch();
    80006a68:	ffffb097          	auipc	ra,0xffffb
    80006a6c:	964080e7          	jalr	-1692(ra) # 800013cc <_Z15thread_dispatchv>
}
    80006a70:	01813083          	ld	ra,24(sp)
    80006a74:	01013403          	ld	s0,16(sp)
    80006a78:	00813483          	ld	s1,8(sp)
    80006a7c:	00013903          	ld	s2,0(sp)
    80006a80:	02010113          	addi	sp,sp,32
    80006a84:	00008067          	ret

0000000080006a88 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80006a88:	fe010113          	addi	sp,sp,-32
    80006a8c:	00113c23          	sd	ra,24(sp)
    80006a90:	00813823          	sd	s0,16(sp)
    80006a94:	00913423          	sd	s1,8(sp)
    80006a98:	01213023          	sd	s2,0(sp)
    80006a9c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006aa0:	00000913          	li	s2,0
    80006aa4:	0380006f          	j	80006adc <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80006aa8:	ffffb097          	auipc	ra,0xffffb
    80006aac:	924080e7          	jalr	-1756(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006ab0:	00148493          	addi	s1,s1,1
    80006ab4:	000027b7          	lui	a5,0x2
    80006ab8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006abc:	0097ee63          	bltu	a5,s1,80006ad8 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006ac0:	00000713          	li	a4,0
    80006ac4:	000077b7          	lui	a5,0x7
    80006ac8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006acc:	fce7eee3          	bltu	a5,a4,80006aa8 <_ZL11workerBodyAPv+0x20>
    80006ad0:	00170713          	addi	a4,a4,1
    80006ad4:	ff1ff06f          	j	80006ac4 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80006ad8:	00190913          	addi	s2,s2,1
    80006adc:	00900793          	li	a5,9
    80006ae0:	0527e063          	bltu	a5,s2,80006b20 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80006ae4:	00002517          	auipc	a0,0x2
    80006ae8:	73450513          	addi	a0,a0,1844 # 80009218 <CONSOLE_STATUS+0x208>
    80006aec:	fffff097          	auipc	ra,0xfffff
    80006af0:	234080e7          	jalr	564(ra) # 80005d20 <_Z11printStringPKc>
    80006af4:	00000613          	li	a2,0
    80006af8:	00a00593          	li	a1,10
    80006afc:	0009051b          	sext.w	a0,s2
    80006b00:	fffff097          	auipc	ra,0xfffff
    80006b04:	3d0080e7          	jalr	976(ra) # 80005ed0 <_Z8printIntiii>
    80006b08:	00003517          	auipc	a0,0x3
    80006b0c:	97050513          	addi	a0,a0,-1680 # 80009478 <CONSOLE_STATUS+0x468>
    80006b10:	fffff097          	auipc	ra,0xfffff
    80006b14:	210080e7          	jalr	528(ra) # 80005d20 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006b18:	00000493          	li	s1,0
    80006b1c:	f99ff06f          	j	80006ab4 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006b20:	00002517          	auipc	a0,0x2
    80006b24:	70050513          	addi	a0,a0,1792 # 80009220 <CONSOLE_STATUS+0x210>
    80006b28:	fffff097          	auipc	ra,0xfffff
    80006b2c:	1f8080e7          	jalr	504(ra) # 80005d20 <_Z11printStringPKc>
    finishedA = true;
    80006b30:	00100793          	li	a5,1
    80006b34:	00005717          	auipc	a4,0x5
    80006b38:	2ef70ca3          	sb	a5,761(a4) # 8000be2d <_ZL9finishedA>
}
    80006b3c:	01813083          	ld	ra,24(sp)
    80006b40:	01013403          	ld	s0,16(sp)
    80006b44:	00813483          	ld	s1,8(sp)
    80006b48:	00013903          	ld	s2,0(sp)
    80006b4c:	02010113          	addi	sp,sp,32
    80006b50:	00008067          	ret

0000000080006b54 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006b54:	fd010113          	addi	sp,sp,-48
    80006b58:	02113423          	sd	ra,40(sp)
    80006b5c:	02813023          	sd	s0,32(sp)
    80006b60:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006b64:	00000613          	li	a2,0
    80006b68:	00000597          	auipc	a1,0x0
    80006b6c:	f2058593          	addi	a1,a1,-224 # 80006a88 <_ZL11workerBodyAPv>
    80006b70:	fd040513          	addi	a0,s0,-48
    80006b74:	ffffa097          	auipc	ra,0xffffa
    80006b78:	784080e7          	jalr	1924(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80006b7c:	00002517          	auipc	a0,0x2
    80006b80:	73450513          	addi	a0,a0,1844 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80006b84:	fffff097          	auipc	ra,0xfffff
    80006b88:	19c080e7          	jalr	412(ra) # 80005d20 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80006b8c:	00000613          	li	a2,0
    80006b90:	00000597          	auipc	a1,0x0
    80006b94:	e1458593          	addi	a1,a1,-492 # 800069a4 <_ZL11workerBodyBPv>
    80006b98:	fd840513          	addi	a0,s0,-40
    80006b9c:	ffffa097          	auipc	ra,0xffffa
    80006ba0:	75c080e7          	jalr	1884(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80006ba4:	00002517          	auipc	a0,0x2
    80006ba8:	72450513          	addi	a0,a0,1828 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80006bac:	fffff097          	auipc	ra,0xfffff
    80006bb0:	174080e7          	jalr	372(ra) # 80005d20 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006bb4:	00000613          	li	a2,0
    80006bb8:	00000597          	auipc	a1,0x0
    80006bbc:	c6c58593          	addi	a1,a1,-916 # 80006824 <_ZL11workerBodyCPv>
    80006bc0:	fe040513          	addi	a0,s0,-32
    80006bc4:	ffffa097          	auipc	ra,0xffffa
    80006bc8:	734080e7          	jalr	1844(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80006bcc:	00002517          	auipc	a0,0x2
    80006bd0:	71450513          	addi	a0,a0,1812 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80006bd4:	fffff097          	auipc	ra,0xfffff
    80006bd8:	14c080e7          	jalr	332(ra) # 80005d20 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80006bdc:	00000613          	li	a2,0
    80006be0:	00000597          	auipc	a1,0x0
    80006be4:	afc58593          	addi	a1,a1,-1284 # 800066dc <_ZL11workerBodyDPv>
    80006be8:	fe840513          	addi	a0,s0,-24
    80006bec:	ffffa097          	auipc	ra,0xffffa
    80006bf0:	70c080e7          	jalr	1804(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80006bf4:	00002517          	auipc	a0,0x2
    80006bf8:	70450513          	addi	a0,a0,1796 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80006bfc:	fffff097          	auipc	ra,0xfffff
    80006c00:	124080e7          	jalr	292(ra) # 80005d20 <_Z11printStringPKc>
    80006c04:	00c0006f          	j	80006c10 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006c08:	ffffa097          	auipc	ra,0xffffa
    80006c0c:	7c4080e7          	jalr	1988(ra) # 800013cc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006c10:	00005797          	auipc	a5,0x5
    80006c14:	21d7c783          	lbu	a5,541(a5) # 8000be2d <_ZL9finishedA>
    80006c18:	fe0788e3          	beqz	a5,80006c08 <_Z16System_Mode_testv+0xb4>
    80006c1c:	00005797          	auipc	a5,0x5
    80006c20:	2107c783          	lbu	a5,528(a5) # 8000be2c <_ZL9finishedB>
    80006c24:	fe0782e3          	beqz	a5,80006c08 <_Z16System_Mode_testv+0xb4>
    80006c28:	00005797          	auipc	a5,0x5
    80006c2c:	2037c783          	lbu	a5,515(a5) # 8000be2b <_ZL9finishedC>
    80006c30:	fc078ce3          	beqz	a5,80006c08 <_Z16System_Mode_testv+0xb4>
    80006c34:	00005797          	auipc	a5,0x5
    80006c38:	1f67c783          	lbu	a5,502(a5) # 8000be2a <_ZL9finishedD>
    80006c3c:	fc0786e3          	beqz	a5,80006c08 <_Z16System_Mode_testv+0xb4>
    }

}
    80006c40:	02813083          	ld	ra,40(sp)
    80006c44:	02013403          	ld	s0,32(sp)
    80006c48:	03010113          	addi	sp,sp,48
    80006c4c:	00008067          	ret

0000000080006c50 <start>:
    80006c50:	ff010113          	addi	sp,sp,-16
    80006c54:	00813423          	sd	s0,8(sp)
    80006c58:	01010413          	addi	s0,sp,16
    80006c5c:	300027f3          	csrr	a5,mstatus
    80006c60:	ffffe737          	lui	a4,0xffffe
    80006c64:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff176f>
    80006c68:	00e7f7b3          	and	a5,a5,a4
    80006c6c:	00001737          	lui	a4,0x1
    80006c70:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006c74:	00e7e7b3          	or	a5,a5,a4
    80006c78:	30079073          	csrw	mstatus,a5
    80006c7c:	00000797          	auipc	a5,0x0
    80006c80:	16078793          	addi	a5,a5,352 # 80006ddc <system_main>
    80006c84:	34179073          	csrw	mepc,a5
    80006c88:	00000793          	li	a5,0
    80006c8c:	18079073          	csrw	satp,a5
    80006c90:	000107b7          	lui	a5,0x10
    80006c94:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006c98:	30279073          	csrw	medeleg,a5
    80006c9c:	30379073          	csrw	mideleg,a5
    80006ca0:	104027f3          	csrr	a5,sie
    80006ca4:	2227e793          	ori	a5,a5,546
    80006ca8:	10479073          	csrw	sie,a5
    80006cac:	fff00793          	li	a5,-1
    80006cb0:	00a7d793          	srli	a5,a5,0xa
    80006cb4:	3b079073          	csrw	pmpaddr0,a5
    80006cb8:	00f00793          	li	a5,15
    80006cbc:	3a079073          	csrw	pmpcfg0,a5
    80006cc0:	f14027f3          	csrr	a5,mhartid
    80006cc4:	0200c737          	lui	a4,0x200c
    80006cc8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006ccc:	0007869b          	sext.w	a3,a5
    80006cd0:	00269713          	slli	a4,a3,0x2
    80006cd4:	000f4637          	lui	a2,0xf4
    80006cd8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006cdc:	00d70733          	add	a4,a4,a3
    80006ce0:	0037979b          	slliw	a5,a5,0x3
    80006ce4:	020046b7          	lui	a3,0x2004
    80006ce8:	00d787b3          	add	a5,a5,a3
    80006cec:	00c585b3          	add	a1,a1,a2
    80006cf0:	00371693          	slli	a3,a4,0x3
    80006cf4:	00005717          	auipc	a4,0x5
    80006cf8:	13c70713          	addi	a4,a4,316 # 8000be30 <timer_scratch>
    80006cfc:	00b7b023          	sd	a1,0(a5)
    80006d00:	00d70733          	add	a4,a4,a3
    80006d04:	00f73c23          	sd	a5,24(a4)
    80006d08:	02c73023          	sd	a2,32(a4)
    80006d0c:	34071073          	csrw	mscratch,a4
    80006d10:	00000797          	auipc	a5,0x0
    80006d14:	6e078793          	addi	a5,a5,1760 # 800073f0 <timervec>
    80006d18:	30579073          	csrw	mtvec,a5
    80006d1c:	300027f3          	csrr	a5,mstatus
    80006d20:	0087e793          	ori	a5,a5,8
    80006d24:	30079073          	csrw	mstatus,a5
    80006d28:	304027f3          	csrr	a5,mie
    80006d2c:	0807e793          	ori	a5,a5,128
    80006d30:	30479073          	csrw	mie,a5
    80006d34:	f14027f3          	csrr	a5,mhartid
    80006d38:	0007879b          	sext.w	a5,a5
    80006d3c:	00078213          	mv	tp,a5
    80006d40:	30200073          	mret
    80006d44:	00813403          	ld	s0,8(sp)
    80006d48:	01010113          	addi	sp,sp,16
    80006d4c:	00008067          	ret

0000000080006d50 <timerinit>:
    80006d50:	ff010113          	addi	sp,sp,-16
    80006d54:	00813423          	sd	s0,8(sp)
    80006d58:	01010413          	addi	s0,sp,16
    80006d5c:	f14027f3          	csrr	a5,mhartid
    80006d60:	0200c737          	lui	a4,0x200c
    80006d64:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006d68:	0007869b          	sext.w	a3,a5
    80006d6c:	00269713          	slli	a4,a3,0x2
    80006d70:	000f4637          	lui	a2,0xf4
    80006d74:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006d78:	00d70733          	add	a4,a4,a3
    80006d7c:	0037979b          	slliw	a5,a5,0x3
    80006d80:	020046b7          	lui	a3,0x2004
    80006d84:	00d787b3          	add	a5,a5,a3
    80006d88:	00c585b3          	add	a1,a1,a2
    80006d8c:	00371693          	slli	a3,a4,0x3
    80006d90:	00005717          	auipc	a4,0x5
    80006d94:	0a070713          	addi	a4,a4,160 # 8000be30 <timer_scratch>
    80006d98:	00b7b023          	sd	a1,0(a5)
    80006d9c:	00d70733          	add	a4,a4,a3
    80006da0:	00f73c23          	sd	a5,24(a4)
    80006da4:	02c73023          	sd	a2,32(a4)
    80006da8:	34071073          	csrw	mscratch,a4
    80006dac:	00000797          	auipc	a5,0x0
    80006db0:	64478793          	addi	a5,a5,1604 # 800073f0 <timervec>
    80006db4:	30579073          	csrw	mtvec,a5
    80006db8:	300027f3          	csrr	a5,mstatus
    80006dbc:	0087e793          	ori	a5,a5,8
    80006dc0:	30079073          	csrw	mstatus,a5
    80006dc4:	304027f3          	csrr	a5,mie
    80006dc8:	0807e793          	ori	a5,a5,128
    80006dcc:	30479073          	csrw	mie,a5
    80006dd0:	00813403          	ld	s0,8(sp)
    80006dd4:	01010113          	addi	sp,sp,16
    80006dd8:	00008067          	ret

0000000080006ddc <system_main>:
    80006ddc:	fe010113          	addi	sp,sp,-32
    80006de0:	00813823          	sd	s0,16(sp)
    80006de4:	00913423          	sd	s1,8(sp)
    80006de8:	00113c23          	sd	ra,24(sp)
    80006dec:	02010413          	addi	s0,sp,32
    80006df0:	00000097          	auipc	ra,0x0
    80006df4:	0c4080e7          	jalr	196(ra) # 80006eb4 <cpuid>
    80006df8:	00005497          	auipc	s1,0x5
    80006dfc:	f3848493          	addi	s1,s1,-200 # 8000bd30 <started>
    80006e00:	02050263          	beqz	a0,80006e24 <system_main+0x48>
    80006e04:	0004a783          	lw	a5,0(s1)
    80006e08:	0007879b          	sext.w	a5,a5
    80006e0c:	fe078ce3          	beqz	a5,80006e04 <system_main+0x28>
    80006e10:	0ff0000f          	fence
    80006e14:	00002517          	auipc	a0,0x2
    80006e18:	7dc50513          	addi	a0,a0,2012 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80006e1c:	00001097          	auipc	ra,0x1
    80006e20:	a70080e7          	jalr	-1424(ra) # 8000788c <panic>
    80006e24:	00001097          	auipc	ra,0x1
    80006e28:	9c4080e7          	jalr	-1596(ra) # 800077e8 <consoleinit>
    80006e2c:	00001097          	auipc	ra,0x1
    80006e30:	150080e7          	jalr	336(ra) # 80007f7c <printfinit>
    80006e34:	00002517          	auipc	a0,0x2
    80006e38:	64450513          	addi	a0,a0,1604 # 80009478 <CONSOLE_STATUS+0x468>
    80006e3c:	00001097          	auipc	ra,0x1
    80006e40:	aac080e7          	jalr	-1364(ra) # 800078e8 <__printf>
    80006e44:	00002517          	auipc	a0,0x2
    80006e48:	77c50513          	addi	a0,a0,1916 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80006e4c:	00001097          	auipc	ra,0x1
    80006e50:	a9c080e7          	jalr	-1380(ra) # 800078e8 <__printf>
    80006e54:	00002517          	auipc	a0,0x2
    80006e58:	62450513          	addi	a0,a0,1572 # 80009478 <CONSOLE_STATUS+0x468>
    80006e5c:	00001097          	auipc	ra,0x1
    80006e60:	a8c080e7          	jalr	-1396(ra) # 800078e8 <__printf>
    80006e64:	00001097          	auipc	ra,0x1
    80006e68:	4a4080e7          	jalr	1188(ra) # 80008308 <kinit>
    80006e6c:	00000097          	auipc	ra,0x0
    80006e70:	148080e7          	jalr	328(ra) # 80006fb4 <trapinit>
    80006e74:	00000097          	auipc	ra,0x0
    80006e78:	16c080e7          	jalr	364(ra) # 80006fe0 <trapinithart>
    80006e7c:	00000097          	auipc	ra,0x0
    80006e80:	5b4080e7          	jalr	1460(ra) # 80007430 <plicinit>
    80006e84:	00000097          	auipc	ra,0x0
    80006e88:	5d4080e7          	jalr	1492(ra) # 80007458 <plicinithart>
    80006e8c:	00000097          	auipc	ra,0x0
    80006e90:	078080e7          	jalr	120(ra) # 80006f04 <userinit>
    80006e94:	0ff0000f          	fence
    80006e98:	00100793          	li	a5,1
    80006e9c:	00002517          	auipc	a0,0x2
    80006ea0:	73c50513          	addi	a0,a0,1852 # 800095d8 <CONSOLE_STATUS+0x5c8>
    80006ea4:	00f4a023          	sw	a5,0(s1)
    80006ea8:	00001097          	auipc	ra,0x1
    80006eac:	a40080e7          	jalr	-1472(ra) # 800078e8 <__printf>
    80006eb0:	0000006f          	j	80006eb0 <system_main+0xd4>

0000000080006eb4 <cpuid>:
    80006eb4:	ff010113          	addi	sp,sp,-16
    80006eb8:	00813423          	sd	s0,8(sp)
    80006ebc:	01010413          	addi	s0,sp,16
    80006ec0:	00020513          	mv	a0,tp
    80006ec4:	00813403          	ld	s0,8(sp)
    80006ec8:	0005051b          	sext.w	a0,a0
    80006ecc:	01010113          	addi	sp,sp,16
    80006ed0:	00008067          	ret

0000000080006ed4 <mycpu>:
    80006ed4:	ff010113          	addi	sp,sp,-16
    80006ed8:	00813423          	sd	s0,8(sp)
    80006edc:	01010413          	addi	s0,sp,16
    80006ee0:	00020793          	mv	a5,tp
    80006ee4:	00813403          	ld	s0,8(sp)
    80006ee8:	0007879b          	sext.w	a5,a5
    80006eec:	00779793          	slli	a5,a5,0x7
    80006ef0:	00006517          	auipc	a0,0x6
    80006ef4:	f7050513          	addi	a0,a0,-144 # 8000ce60 <cpus>
    80006ef8:	00f50533          	add	a0,a0,a5
    80006efc:	01010113          	addi	sp,sp,16
    80006f00:	00008067          	ret

0000000080006f04 <userinit>:
    80006f04:	ff010113          	addi	sp,sp,-16
    80006f08:	00813423          	sd	s0,8(sp)
    80006f0c:	01010413          	addi	s0,sp,16
    80006f10:	00813403          	ld	s0,8(sp)
    80006f14:	01010113          	addi	sp,sp,16
    80006f18:	ffffb317          	auipc	t1,0xffffb
    80006f1c:	de030067          	jr	-544(t1) # 80001cf8 <main>

0000000080006f20 <either_copyout>:
    80006f20:	ff010113          	addi	sp,sp,-16
    80006f24:	00813023          	sd	s0,0(sp)
    80006f28:	00113423          	sd	ra,8(sp)
    80006f2c:	01010413          	addi	s0,sp,16
    80006f30:	02051663          	bnez	a0,80006f5c <either_copyout+0x3c>
    80006f34:	00058513          	mv	a0,a1
    80006f38:	00060593          	mv	a1,a2
    80006f3c:	0006861b          	sext.w	a2,a3
    80006f40:	00002097          	auipc	ra,0x2
    80006f44:	c54080e7          	jalr	-940(ra) # 80008b94 <__memmove>
    80006f48:	00813083          	ld	ra,8(sp)
    80006f4c:	00013403          	ld	s0,0(sp)
    80006f50:	00000513          	li	a0,0
    80006f54:	01010113          	addi	sp,sp,16
    80006f58:	00008067          	ret
    80006f5c:	00002517          	auipc	a0,0x2
    80006f60:	6bc50513          	addi	a0,a0,1724 # 80009618 <CONSOLE_STATUS+0x608>
    80006f64:	00001097          	auipc	ra,0x1
    80006f68:	928080e7          	jalr	-1752(ra) # 8000788c <panic>

0000000080006f6c <either_copyin>:
    80006f6c:	ff010113          	addi	sp,sp,-16
    80006f70:	00813023          	sd	s0,0(sp)
    80006f74:	00113423          	sd	ra,8(sp)
    80006f78:	01010413          	addi	s0,sp,16
    80006f7c:	02059463          	bnez	a1,80006fa4 <either_copyin+0x38>
    80006f80:	00060593          	mv	a1,a2
    80006f84:	0006861b          	sext.w	a2,a3
    80006f88:	00002097          	auipc	ra,0x2
    80006f8c:	c0c080e7          	jalr	-1012(ra) # 80008b94 <__memmove>
    80006f90:	00813083          	ld	ra,8(sp)
    80006f94:	00013403          	ld	s0,0(sp)
    80006f98:	00000513          	li	a0,0
    80006f9c:	01010113          	addi	sp,sp,16
    80006fa0:	00008067          	ret
    80006fa4:	00002517          	auipc	a0,0x2
    80006fa8:	69c50513          	addi	a0,a0,1692 # 80009640 <CONSOLE_STATUS+0x630>
    80006fac:	00001097          	auipc	ra,0x1
    80006fb0:	8e0080e7          	jalr	-1824(ra) # 8000788c <panic>

0000000080006fb4 <trapinit>:
    80006fb4:	ff010113          	addi	sp,sp,-16
    80006fb8:	00813423          	sd	s0,8(sp)
    80006fbc:	01010413          	addi	s0,sp,16
    80006fc0:	00813403          	ld	s0,8(sp)
    80006fc4:	00002597          	auipc	a1,0x2
    80006fc8:	6a458593          	addi	a1,a1,1700 # 80009668 <CONSOLE_STATUS+0x658>
    80006fcc:	00006517          	auipc	a0,0x6
    80006fd0:	f1450513          	addi	a0,a0,-236 # 8000cee0 <tickslock>
    80006fd4:	01010113          	addi	sp,sp,16
    80006fd8:	00001317          	auipc	t1,0x1
    80006fdc:	5c030067          	jr	1472(t1) # 80008598 <initlock>

0000000080006fe0 <trapinithart>:
    80006fe0:	ff010113          	addi	sp,sp,-16
    80006fe4:	00813423          	sd	s0,8(sp)
    80006fe8:	01010413          	addi	s0,sp,16
    80006fec:	00000797          	auipc	a5,0x0
    80006ff0:	2f478793          	addi	a5,a5,756 # 800072e0 <kernelvec>
    80006ff4:	10579073          	csrw	stvec,a5
    80006ff8:	00813403          	ld	s0,8(sp)
    80006ffc:	01010113          	addi	sp,sp,16
    80007000:	00008067          	ret

0000000080007004 <usertrap>:
    80007004:	ff010113          	addi	sp,sp,-16
    80007008:	00813423          	sd	s0,8(sp)
    8000700c:	01010413          	addi	s0,sp,16
    80007010:	00813403          	ld	s0,8(sp)
    80007014:	01010113          	addi	sp,sp,16
    80007018:	00008067          	ret

000000008000701c <usertrapret>:
    8000701c:	ff010113          	addi	sp,sp,-16
    80007020:	00813423          	sd	s0,8(sp)
    80007024:	01010413          	addi	s0,sp,16
    80007028:	00813403          	ld	s0,8(sp)
    8000702c:	01010113          	addi	sp,sp,16
    80007030:	00008067          	ret

0000000080007034 <kerneltrap>:
    80007034:	fe010113          	addi	sp,sp,-32
    80007038:	00813823          	sd	s0,16(sp)
    8000703c:	00113c23          	sd	ra,24(sp)
    80007040:	00913423          	sd	s1,8(sp)
    80007044:	02010413          	addi	s0,sp,32
    80007048:	142025f3          	csrr	a1,scause
    8000704c:	100027f3          	csrr	a5,sstatus
    80007050:	0027f793          	andi	a5,a5,2
    80007054:	10079c63          	bnez	a5,8000716c <kerneltrap+0x138>
    80007058:	142027f3          	csrr	a5,scause
    8000705c:	0207ce63          	bltz	a5,80007098 <kerneltrap+0x64>
    80007060:	00002517          	auipc	a0,0x2
    80007064:	65050513          	addi	a0,a0,1616 # 800096b0 <CONSOLE_STATUS+0x6a0>
    80007068:	00001097          	auipc	ra,0x1
    8000706c:	880080e7          	jalr	-1920(ra) # 800078e8 <__printf>
    80007070:	141025f3          	csrr	a1,sepc
    80007074:	14302673          	csrr	a2,stval
    80007078:	00002517          	auipc	a0,0x2
    8000707c:	64850513          	addi	a0,a0,1608 # 800096c0 <CONSOLE_STATUS+0x6b0>
    80007080:	00001097          	auipc	ra,0x1
    80007084:	868080e7          	jalr	-1944(ra) # 800078e8 <__printf>
    80007088:	00002517          	auipc	a0,0x2
    8000708c:	65050513          	addi	a0,a0,1616 # 800096d8 <CONSOLE_STATUS+0x6c8>
    80007090:	00000097          	auipc	ra,0x0
    80007094:	7fc080e7          	jalr	2044(ra) # 8000788c <panic>
    80007098:	0ff7f713          	andi	a4,a5,255
    8000709c:	00900693          	li	a3,9
    800070a0:	04d70063          	beq	a4,a3,800070e0 <kerneltrap+0xac>
    800070a4:	fff00713          	li	a4,-1
    800070a8:	03f71713          	slli	a4,a4,0x3f
    800070ac:	00170713          	addi	a4,a4,1
    800070b0:	fae798e3          	bne	a5,a4,80007060 <kerneltrap+0x2c>
    800070b4:	00000097          	auipc	ra,0x0
    800070b8:	e00080e7          	jalr	-512(ra) # 80006eb4 <cpuid>
    800070bc:	06050663          	beqz	a0,80007128 <kerneltrap+0xf4>
    800070c0:	144027f3          	csrr	a5,sip
    800070c4:	ffd7f793          	andi	a5,a5,-3
    800070c8:	14479073          	csrw	sip,a5
    800070cc:	01813083          	ld	ra,24(sp)
    800070d0:	01013403          	ld	s0,16(sp)
    800070d4:	00813483          	ld	s1,8(sp)
    800070d8:	02010113          	addi	sp,sp,32
    800070dc:	00008067          	ret
    800070e0:	00000097          	auipc	ra,0x0
    800070e4:	3c4080e7          	jalr	964(ra) # 800074a4 <plic_claim>
    800070e8:	00a00793          	li	a5,10
    800070ec:	00050493          	mv	s1,a0
    800070f0:	06f50863          	beq	a0,a5,80007160 <kerneltrap+0x12c>
    800070f4:	fc050ce3          	beqz	a0,800070cc <kerneltrap+0x98>
    800070f8:	00050593          	mv	a1,a0
    800070fc:	00002517          	auipc	a0,0x2
    80007100:	59450513          	addi	a0,a0,1428 # 80009690 <CONSOLE_STATUS+0x680>
    80007104:	00000097          	auipc	ra,0x0
    80007108:	7e4080e7          	jalr	2020(ra) # 800078e8 <__printf>
    8000710c:	01013403          	ld	s0,16(sp)
    80007110:	01813083          	ld	ra,24(sp)
    80007114:	00048513          	mv	a0,s1
    80007118:	00813483          	ld	s1,8(sp)
    8000711c:	02010113          	addi	sp,sp,32
    80007120:	00000317          	auipc	t1,0x0
    80007124:	3bc30067          	jr	956(t1) # 800074dc <plic_complete>
    80007128:	00006517          	auipc	a0,0x6
    8000712c:	db850513          	addi	a0,a0,-584 # 8000cee0 <tickslock>
    80007130:	00001097          	auipc	ra,0x1
    80007134:	48c080e7          	jalr	1164(ra) # 800085bc <acquire>
    80007138:	00005717          	auipc	a4,0x5
    8000713c:	bfc70713          	addi	a4,a4,-1028 # 8000bd34 <ticks>
    80007140:	00072783          	lw	a5,0(a4)
    80007144:	00006517          	auipc	a0,0x6
    80007148:	d9c50513          	addi	a0,a0,-612 # 8000cee0 <tickslock>
    8000714c:	0017879b          	addiw	a5,a5,1
    80007150:	00f72023          	sw	a5,0(a4)
    80007154:	00001097          	auipc	ra,0x1
    80007158:	534080e7          	jalr	1332(ra) # 80008688 <release>
    8000715c:	f65ff06f          	j	800070c0 <kerneltrap+0x8c>
    80007160:	00001097          	auipc	ra,0x1
    80007164:	090080e7          	jalr	144(ra) # 800081f0 <uartintr>
    80007168:	fa5ff06f          	j	8000710c <kerneltrap+0xd8>
    8000716c:	00002517          	auipc	a0,0x2
    80007170:	50450513          	addi	a0,a0,1284 # 80009670 <CONSOLE_STATUS+0x660>
    80007174:	00000097          	auipc	ra,0x0
    80007178:	718080e7          	jalr	1816(ra) # 8000788c <panic>

000000008000717c <clockintr>:
    8000717c:	fe010113          	addi	sp,sp,-32
    80007180:	00813823          	sd	s0,16(sp)
    80007184:	00913423          	sd	s1,8(sp)
    80007188:	00113c23          	sd	ra,24(sp)
    8000718c:	02010413          	addi	s0,sp,32
    80007190:	00006497          	auipc	s1,0x6
    80007194:	d5048493          	addi	s1,s1,-688 # 8000cee0 <tickslock>
    80007198:	00048513          	mv	a0,s1
    8000719c:	00001097          	auipc	ra,0x1
    800071a0:	420080e7          	jalr	1056(ra) # 800085bc <acquire>
    800071a4:	00005717          	auipc	a4,0x5
    800071a8:	b9070713          	addi	a4,a4,-1136 # 8000bd34 <ticks>
    800071ac:	00072783          	lw	a5,0(a4)
    800071b0:	01013403          	ld	s0,16(sp)
    800071b4:	01813083          	ld	ra,24(sp)
    800071b8:	00048513          	mv	a0,s1
    800071bc:	0017879b          	addiw	a5,a5,1
    800071c0:	00813483          	ld	s1,8(sp)
    800071c4:	00f72023          	sw	a5,0(a4)
    800071c8:	02010113          	addi	sp,sp,32
    800071cc:	00001317          	auipc	t1,0x1
    800071d0:	4bc30067          	jr	1212(t1) # 80008688 <release>

00000000800071d4 <devintr>:
    800071d4:	142027f3          	csrr	a5,scause
    800071d8:	00000513          	li	a0,0
    800071dc:	0007c463          	bltz	a5,800071e4 <devintr+0x10>
    800071e0:	00008067          	ret
    800071e4:	fe010113          	addi	sp,sp,-32
    800071e8:	00813823          	sd	s0,16(sp)
    800071ec:	00113c23          	sd	ra,24(sp)
    800071f0:	00913423          	sd	s1,8(sp)
    800071f4:	02010413          	addi	s0,sp,32
    800071f8:	0ff7f713          	andi	a4,a5,255
    800071fc:	00900693          	li	a3,9
    80007200:	04d70c63          	beq	a4,a3,80007258 <devintr+0x84>
    80007204:	fff00713          	li	a4,-1
    80007208:	03f71713          	slli	a4,a4,0x3f
    8000720c:	00170713          	addi	a4,a4,1
    80007210:	00e78c63          	beq	a5,a4,80007228 <devintr+0x54>
    80007214:	01813083          	ld	ra,24(sp)
    80007218:	01013403          	ld	s0,16(sp)
    8000721c:	00813483          	ld	s1,8(sp)
    80007220:	02010113          	addi	sp,sp,32
    80007224:	00008067          	ret
    80007228:	00000097          	auipc	ra,0x0
    8000722c:	c8c080e7          	jalr	-884(ra) # 80006eb4 <cpuid>
    80007230:	06050663          	beqz	a0,8000729c <devintr+0xc8>
    80007234:	144027f3          	csrr	a5,sip
    80007238:	ffd7f793          	andi	a5,a5,-3
    8000723c:	14479073          	csrw	sip,a5
    80007240:	01813083          	ld	ra,24(sp)
    80007244:	01013403          	ld	s0,16(sp)
    80007248:	00813483          	ld	s1,8(sp)
    8000724c:	00200513          	li	a0,2
    80007250:	02010113          	addi	sp,sp,32
    80007254:	00008067          	ret
    80007258:	00000097          	auipc	ra,0x0
    8000725c:	24c080e7          	jalr	588(ra) # 800074a4 <plic_claim>
    80007260:	00a00793          	li	a5,10
    80007264:	00050493          	mv	s1,a0
    80007268:	06f50663          	beq	a0,a5,800072d4 <devintr+0x100>
    8000726c:	00100513          	li	a0,1
    80007270:	fa0482e3          	beqz	s1,80007214 <devintr+0x40>
    80007274:	00048593          	mv	a1,s1
    80007278:	00002517          	auipc	a0,0x2
    8000727c:	41850513          	addi	a0,a0,1048 # 80009690 <CONSOLE_STATUS+0x680>
    80007280:	00000097          	auipc	ra,0x0
    80007284:	668080e7          	jalr	1640(ra) # 800078e8 <__printf>
    80007288:	00048513          	mv	a0,s1
    8000728c:	00000097          	auipc	ra,0x0
    80007290:	250080e7          	jalr	592(ra) # 800074dc <plic_complete>
    80007294:	00100513          	li	a0,1
    80007298:	f7dff06f          	j	80007214 <devintr+0x40>
    8000729c:	00006517          	auipc	a0,0x6
    800072a0:	c4450513          	addi	a0,a0,-956 # 8000cee0 <tickslock>
    800072a4:	00001097          	auipc	ra,0x1
    800072a8:	318080e7          	jalr	792(ra) # 800085bc <acquire>
    800072ac:	00005717          	auipc	a4,0x5
    800072b0:	a8870713          	addi	a4,a4,-1400 # 8000bd34 <ticks>
    800072b4:	00072783          	lw	a5,0(a4)
    800072b8:	00006517          	auipc	a0,0x6
    800072bc:	c2850513          	addi	a0,a0,-984 # 8000cee0 <tickslock>
    800072c0:	0017879b          	addiw	a5,a5,1
    800072c4:	00f72023          	sw	a5,0(a4)
    800072c8:	00001097          	auipc	ra,0x1
    800072cc:	3c0080e7          	jalr	960(ra) # 80008688 <release>
    800072d0:	f65ff06f          	j	80007234 <devintr+0x60>
    800072d4:	00001097          	auipc	ra,0x1
    800072d8:	f1c080e7          	jalr	-228(ra) # 800081f0 <uartintr>
    800072dc:	fadff06f          	j	80007288 <devintr+0xb4>

00000000800072e0 <kernelvec>:
    800072e0:	f0010113          	addi	sp,sp,-256
    800072e4:	00113023          	sd	ra,0(sp)
    800072e8:	00213423          	sd	sp,8(sp)
    800072ec:	00313823          	sd	gp,16(sp)
    800072f0:	00413c23          	sd	tp,24(sp)
    800072f4:	02513023          	sd	t0,32(sp)
    800072f8:	02613423          	sd	t1,40(sp)
    800072fc:	02713823          	sd	t2,48(sp)
    80007300:	02813c23          	sd	s0,56(sp)
    80007304:	04913023          	sd	s1,64(sp)
    80007308:	04a13423          	sd	a0,72(sp)
    8000730c:	04b13823          	sd	a1,80(sp)
    80007310:	04c13c23          	sd	a2,88(sp)
    80007314:	06d13023          	sd	a3,96(sp)
    80007318:	06e13423          	sd	a4,104(sp)
    8000731c:	06f13823          	sd	a5,112(sp)
    80007320:	07013c23          	sd	a6,120(sp)
    80007324:	09113023          	sd	a7,128(sp)
    80007328:	09213423          	sd	s2,136(sp)
    8000732c:	09313823          	sd	s3,144(sp)
    80007330:	09413c23          	sd	s4,152(sp)
    80007334:	0b513023          	sd	s5,160(sp)
    80007338:	0b613423          	sd	s6,168(sp)
    8000733c:	0b713823          	sd	s7,176(sp)
    80007340:	0b813c23          	sd	s8,184(sp)
    80007344:	0d913023          	sd	s9,192(sp)
    80007348:	0da13423          	sd	s10,200(sp)
    8000734c:	0db13823          	sd	s11,208(sp)
    80007350:	0dc13c23          	sd	t3,216(sp)
    80007354:	0fd13023          	sd	t4,224(sp)
    80007358:	0fe13423          	sd	t5,232(sp)
    8000735c:	0ff13823          	sd	t6,240(sp)
    80007360:	cd5ff0ef          	jal	ra,80007034 <kerneltrap>
    80007364:	00013083          	ld	ra,0(sp)
    80007368:	00813103          	ld	sp,8(sp)
    8000736c:	01013183          	ld	gp,16(sp)
    80007370:	02013283          	ld	t0,32(sp)
    80007374:	02813303          	ld	t1,40(sp)
    80007378:	03013383          	ld	t2,48(sp)
    8000737c:	03813403          	ld	s0,56(sp)
    80007380:	04013483          	ld	s1,64(sp)
    80007384:	04813503          	ld	a0,72(sp)
    80007388:	05013583          	ld	a1,80(sp)
    8000738c:	05813603          	ld	a2,88(sp)
    80007390:	06013683          	ld	a3,96(sp)
    80007394:	06813703          	ld	a4,104(sp)
    80007398:	07013783          	ld	a5,112(sp)
    8000739c:	07813803          	ld	a6,120(sp)
    800073a0:	08013883          	ld	a7,128(sp)
    800073a4:	08813903          	ld	s2,136(sp)
    800073a8:	09013983          	ld	s3,144(sp)
    800073ac:	09813a03          	ld	s4,152(sp)
    800073b0:	0a013a83          	ld	s5,160(sp)
    800073b4:	0a813b03          	ld	s6,168(sp)
    800073b8:	0b013b83          	ld	s7,176(sp)
    800073bc:	0b813c03          	ld	s8,184(sp)
    800073c0:	0c013c83          	ld	s9,192(sp)
    800073c4:	0c813d03          	ld	s10,200(sp)
    800073c8:	0d013d83          	ld	s11,208(sp)
    800073cc:	0d813e03          	ld	t3,216(sp)
    800073d0:	0e013e83          	ld	t4,224(sp)
    800073d4:	0e813f03          	ld	t5,232(sp)
    800073d8:	0f013f83          	ld	t6,240(sp)
    800073dc:	10010113          	addi	sp,sp,256
    800073e0:	10200073          	sret
    800073e4:	00000013          	nop
    800073e8:	00000013          	nop
    800073ec:	00000013          	nop

00000000800073f0 <timervec>:
    800073f0:	34051573          	csrrw	a0,mscratch,a0
    800073f4:	00b53023          	sd	a1,0(a0)
    800073f8:	00c53423          	sd	a2,8(a0)
    800073fc:	00d53823          	sd	a3,16(a0)
    80007400:	01853583          	ld	a1,24(a0)
    80007404:	02053603          	ld	a2,32(a0)
    80007408:	0005b683          	ld	a3,0(a1)
    8000740c:	00c686b3          	add	a3,a3,a2
    80007410:	00d5b023          	sd	a3,0(a1)
    80007414:	00200593          	li	a1,2
    80007418:	14459073          	csrw	sip,a1
    8000741c:	01053683          	ld	a3,16(a0)
    80007420:	00853603          	ld	a2,8(a0)
    80007424:	00053583          	ld	a1,0(a0)
    80007428:	34051573          	csrrw	a0,mscratch,a0
    8000742c:	30200073          	mret

0000000080007430 <plicinit>:
    80007430:	ff010113          	addi	sp,sp,-16
    80007434:	00813423          	sd	s0,8(sp)
    80007438:	01010413          	addi	s0,sp,16
    8000743c:	00813403          	ld	s0,8(sp)
    80007440:	0c0007b7          	lui	a5,0xc000
    80007444:	00100713          	li	a4,1
    80007448:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000744c:	00e7a223          	sw	a4,4(a5)
    80007450:	01010113          	addi	sp,sp,16
    80007454:	00008067          	ret

0000000080007458 <plicinithart>:
    80007458:	ff010113          	addi	sp,sp,-16
    8000745c:	00813023          	sd	s0,0(sp)
    80007460:	00113423          	sd	ra,8(sp)
    80007464:	01010413          	addi	s0,sp,16
    80007468:	00000097          	auipc	ra,0x0
    8000746c:	a4c080e7          	jalr	-1460(ra) # 80006eb4 <cpuid>
    80007470:	0085171b          	slliw	a4,a0,0x8
    80007474:	0c0027b7          	lui	a5,0xc002
    80007478:	00e787b3          	add	a5,a5,a4
    8000747c:	40200713          	li	a4,1026
    80007480:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80007484:	00813083          	ld	ra,8(sp)
    80007488:	00013403          	ld	s0,0(sp)
    8000748c:	00d5151b          	slliw	a0,a0,0xd
    80007490:	0c2017b7          	lui	a5,0xc201
    80007494:	00a78533          	add	a0,a5,a0
    80007498:	00052023          	sw	zero,0(a0)
    8000749c:	01010113          	addi	sp,sp,16
    800074a0:	00008067          	ret

00000000800074a4 <plic_claim>:
    800074a4:	ff010113          	addi	sp,sp,-16
    800074a8:	00813023          	sd	s0,0(sp)
    800074ac:	00113423          	sd	ra,8(sp)
    800074b0:	01010413          	addi	s0,sp,16
    800074b4:	00000097          	auipc	ra,0x0
    800074b8:	a00080e7          	jalr	-1536(ra) # 80006eb4 <cpuid>
    800074bc:	00813083          	ld	ra,8(sp)
    800074c0:	00013403          	ld	s0,0(sp)
    800074c4:	00d5151b          	slliw	a0,a0,0xd
    800074c8:	0c2017b7          	lui	a5,0xc201
    800074cc:	00a78533          	add	a0,a5,a0
    800074d0:	00452503          	lw	a0,4(a0)
    800074d4:	01010113          	addi	sp,sp,16
    800074d8:	00008067          	ret

00000000800074dc <plic_complete>:
    800074dc:	fe010113          	addi	sp,sp,-32
    800074e0:	00813823          	sd	s0,16(sp)
    800074e4:	00913423          	sd	s1,8(sp)
    800074e8:	00113c23          	sd	ra,24(sp)
    800074ec:	02010413          	addi	s0,sp,32
    800074f0:	00050493          	mv	s1,a0
    800074f4:	00000097          	auipc	ra,0x0
    800074f8:	9c0080e7          	jalr	-1600(ra) # 80006eb4 <cpuid>
    800074fc:	01813083          	ld	ra,24(sp)
    80007500:	01013403          	ld	s0,16(sp)
    80007504:	00d5179b          	slliw	a5,a0,0xd
    80007508:	0c201737          	lui	a4,0xc201
    8000750c:	00f707b3          	add	a5,a4,a5
    80007510:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007514:	00813483          	ld	s1,8(sp)
    80007518:	02010113          	addi	sp,sp,32
    8000751c:	00008067          	ret

0000000080007520 <consolewrite>:
    80007520:	fb010113          	addi	sp,sp,-80
    80007524:	04813023          	sd	s0,64(sp)
    80007528:	04113423          	sd	ra,72(sp)
    8000752c:	02913c23          	sd	s1,56(sp)
    80007530:	03213823          	sd	s2,48(sp)
    80007534:	03313423          	sd	s3,40(sp)
    80007538:	03413023          	sd	s4,32(sp)
    8000753c:	01513c23          	sd	s5,24(sp)
    80007540:	05010413          	addi	s0,sp,80
    80007544:	06c05c63          	blez	a2,800075bc <consolewrite+0x9c>
    80007548:	00060993          	mv	s3,a2
    8000754c:	00050a13          	mv	s4,a0
    80007550:	00058493          	mv	s1,a1
    80007554:	00000913          	li	s2,0
    80007558:	fff00a93          	li	s5,-1
    8000755c:	01c0006f          	j	80007578 <consolewrite+0x58>
    80007560:	fbf44503          	lbu	a0,-65(s0)
    80007564:	0019091b          	addiw	s2,s2,1
    80007568:	00148493          	addi	s1,s1,1
    8000756c:	00001097          	auipc	ra,0x1
    80007570:	a9c080e7          	jalr	-1380(ra) # 80008008 <uartputc>
    80007574:	03298063          	beq	s3,s2,80007594 <consolewrite+0x74>
    80007578:	00048613          	mv	a2,s1
    8000757c:	00100693          	li	a3,1
    80007580:	000a0593          	mv	a1,s4
    80007584:	fbf40513          	addi	a0,s0,-65
    80007588:	00000097          	auipc	ra,0x0
    8000758c:	9e4080e7          	jalr	-1564(ra) # 80006f6c <either_copyin>
    80007590:	fd5518e3          	bne	a0,s5,80007560 <consolewrite+0x40>
    80007594:	04813083          	ld	ra,72(sp)
    80007598:	04013403          	ld	s0,64(sp)
    8000759c:	03813483          	ld	s1,56(sp)
    800075a0:	02813983          	ld	s3,40(sp)
    800075a4:	02013a03          	ld	s4,32(sp)
    800075a8:	01813a83          	ld	s5,24(sp)
    800075ac:	00090513          	mv	a0,s2
    800075b0:	03013903          	ld	s2,48(sp)
    800075b4:	05010113          	addi	sp,sp,80
    800075b8:	00008067          	ret
    800075bc:	00000913          	li	s2,0
    800075c0:	fd5ff06f          	j	80007594 <consolewrite+0x74>

00000000800075c4 <consoleread>:
    800075c4:	f9010113          	addi	sp,sp,-112
    800075c8:	06813023          	sd	s0,96(sp)
    800075cc:	04913c23          	sd	s1,88(sp)
    800075d0:	05213823          	sd	s2,80(sp)
    800075d4:	05313423          	sd	s3,72(sp)
    800075d8:	05413023          	sd	s4,64(sp)
    800075dc:	03513c23          	sd	s5,56(sp)
    800075e0:	03613823          	sd	s6,48(sp)
    800075e4:	03713423          	sd	s7,40(sp)
    800075e8:	03813023          	sd	s8,32(sp)
    800075ec:	06113423          	sd	ra,104(sp)
    800075f0:	01913c23          	sd	s9,24(sp)
    800075f4:	07010413          	addi	s0,sp,112
    800075f8:	00060b93          	mv	s7,a2
    800075fc:	00050913          	mv	s2,a0
    80007600:	00058c13          	mv	s8,a1
    80007604:	00060b1b          	sext.w	s6,a2
    80007608:	00006497          	auipc	s1,0x6
    8000760c:	90048493          	addi	s1,s1,-1792 # 8000cf08 <cons>
    80007610:	00400993          	li	s3,4
    80007614:	fff00a13          	li	s4,-1
    80007618:	00a00a93          	li	s5,10
    8000761c:	05705e63          	blez	s7,80007678 <consoleread+0xb4>
    80007620:	09c4a703          	lw	a4,156(s1)
    80007624:	0984a783          	lw	a5,152(s1)
    80007628:	0007071b          	sext.w	a4,a4
    8000762c:	08e78463          	beq	a5,a4,800076b4 <consoleread+0xf0>
    80007630:	07f7f713          	andi	a4,a5,127
    80007634:	00e48733          	add	a4,s1,a4
    80007638:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000763c:	0017869b          	addiw	a3,a5,1
    80007640:	08d4ac23          	sw	a3,152(s1)
    80007644:	00070c9b          	sext.w	s9,a4
    80007648:	0b370663          	beq	a4,s3,800076f4 <consoleread+0x130>
    8000764c:	00100693          	li	a3,1
    80007650:	f9f40613          	addi	a2,s0,-97
    80007654:	000c0593          	mv	a1,s8
    80007658:	00090513          	mv	a0,s2
    8000765c:	f8e40fa3          	sb	a4,-97(s0)
    80007660:	00000097          	auipc	ra,0x0
    80007664:	8c0080e7          	jalr	-1856(ra) # 80006f20 <either_copyout>
    80007668:	01450863          	beq	a0,s4,80007678 <consoleread+0xb4>
    8000766c:	001c0c13          	addi	s8,s8,1
    80007670:	fffb8b9b          	addiw	s7,s7,-1
    80007674:	fb5c94e3          	bne	s9,s5,8000761c <consoleread+0x58>
    80007678:	000b851b          	sext.w	a0,s7
    8000767c:	06813083          	ld	ra,104(sp)
    80007680:	06013403          	ld	s0,96(sp)
    80007684:	05813483          	ld	s1,88(sp)
    80007688:	05013903          	ld	s2,80(sp)
    8000768c:	04813983          	ld	s3,72(sp)
    80007690:	04013a03          	ld	s4,64(sp)
    80007694:	03813a83          	ld	s5,56(sp)
    80007698:	02813b83          	ld	s7,40(sp)
    8000769c:	02013c03          	ld	s8,32(sp)
    800076a0:	01813c83          	ld	s9,24(sp)
    800076a4:	40ab053b          	subw	a0,s6,a0
    800076a8:	03013b03          	ld	s6,48(sp)
    800076ac:	07010113          	addi	sp,sp,112
    800076b0:	00008067          	ret
    800076b4:	00001097          	auipc	ra,0x1
    800076b8:	1d8080e7          	jalr	472(ra) # 8000888c <push_on>
    800076bc:	0984a703          	lw	a4,152(s1)
    800076c0:	09c4a783          	lw	a5,156(s1)
    800076c4:	0007879b          	sext.w	a5,a5
    800076c8:	fef70ce3          	beq	a4,a5,800076c0 <consoleread+0xfc>
    800076cc:	00001097          	auipc	ra,0x1
    800076d0:	234080e7          	jalr	564(ra) # 80008900 <pop_on>
    800076d4:	0984a783          	lw	a5,152(s1)
    800076d8:	07f7f713          	andi	a4,a5,127
    800076dc:	00e48733          	add	a4,s1,a4
    800076e0:	01874703          	lbu	a4,24(a4)
    800076e4:	0017869b          	addiw	a3,a5,1
    800076e8:	08d4ac23          	sw	a3,152(s1)
    800076ec:	00070c9b          	sext.w	s9,a4
    800076f0:	f5371ee3          	bne	a4,s3,8000764c <consoleread+0x88>
    800076f4:	000b851b          	sext.w	a0,s7
    800076f8:	f96bf2e3          	bgeu	s7,s6,8000767c <consoleread+0xb8>
    800076fc:	08f4ac23          	sw	a5,152(s1)
    80007700:	f7dff06f          	j	8000767c <consoleread+0xb8>

0000000080007704 <consputc>:
    80007704:	10000793          	li	a5,256
    80007708:	00f50663          	beq	a0,a5,80007714 <consputc+0x10>
    8000770c:	00001317          	auipc	t1,0x1
    80007710:	9f430067          	jr	-1548(t1) # 80008100 <uartputc_sync>
    80007714:	ff010113          	addi	sp,sp,-16
    80007718:	00113423          	sd	ra,8(sp)
    8000771c:	00813023          	sd	s0,0(sp)
    80007720:	01010413          	addi	s0,sp,16
    80007724:	00800513          	li	a0,8
    80007728:	00001097          	auipc	ra,0x1
    8000772c:	9d8080e7          	jalr	-1576(ra) # 80008100 <uartputc_sync>
    80007730:	02000513          	li	a0,32
    80007734:	00001097          	auipc	ra,0x1
    80007738:	9cc080e7          	jalr	-1588(ra) # 80008100 <uartputc_sync>
    8000773c:	00013403          	ld	s0,0(sp)
    80007740:	00813083          	ld	ra,8(sp)
    80007744:	00800513          	li	a0,8
    80007748:	01010113          	addi	sp,sp,16
    8000774c:	00001317          	auipc	t1,0x1
    80007750:	9b430067          	jr	-1612(t1) # 80008100 <uartputc_sync>

0000000080007754 <consoleintr>:
    80007754:	fe010113          	addi	sp,sp,-32
    80007758:	00813823          	sd	s0,16(sp)
    8000775c:	00913423          	sd	s1,8(sp)
    80007760:	01213023          	sd	s2,0(sp)
    80007764:	00113c23          	sd	ra,24(sp)
    80007768:	02010413          	addi	s0,sp,32
    8000776c:	00005917          	auipc	s2,0x5
    80007770:	79c90913          	addi	s2,s2,1948 # 8000cf08 <cons>
    80007774:	00050493          	mv	s1,a0
    80007778:	00090513          	mv	a0,s2
    8000777c:	00001097          	auipc	ra,0x1
    80007780:	e40080e7          	jalr	-448(ra) # 800085bc <acquire>
    80007784:	02048c63          	beqz	s1,800077bc <consoleintr+0x68>
    80007788:	0a092783          	lw	a5,160(s2)
    8000778c:	09892703          	lw	a4,152(s2)
    80007790:	07f00693          	li	a3,127
    80007794:	40e7873b          	subw	a4,a5,a4
    80007798:	02e6e263          	bltu	a3,a4,800077bc <consoleintr+0x68>
    8000779c:	00d00713          	li	a4,13
    800077a0:	04e48063          	beq	s1,a4,800077e0 <consoleintr+0x8c>
    800077a4:	07f7f713          	andi	a4,a5,127
    800077a8:	00e90733          	add	a4,s2,a4
    800077ac:	0017879b          	addiw	a5,a5,1
    800077b0:	0af92023          	sw	a5,160(s2)
    800077b4:	00970c23          	sb	s1,24(a4)
    800077b8:	08f92e23          	sw	a5,156(s2)
    800077bc:	01013403          	ld	s0,16(sp)
    800077c0:	01813083          	ld	ra,24(sp)
    800077c4:	00813483          	ld	s1,8(sp)
    800077c8:	00013903          	ld	s2,0(sp)
    800077cc:	00005517          	auipc	a0,0x5
    800077d0:	73c50513          	addi	a0,a0,1852 # 8000cf08 <cons>
    800077d4:	02010113          	addi	sp,sp,32
    800077d8:	00001317          	auipc	t1,0x1
    800077dc:	eb030067          	jr	-336(t1) # 80008688 <release>
    800077e0:	00a00493          	li	s1,10
    800077e4:	fc1ff06f          	j	800077a4 <consoleintr+0x50>

00000000800077e8 <consoleinit>:
    800077e8:	fe010113          	addi	sp,sp,-32
    800077ec:	00113c23          	sd	ra,24(sp)
    800077f0:	00813823          	sd	s0,16(sp)
    800077f4:	00913423          	sd	s1,8(sp)
    800077f8:	02010413          	addi	s0,sp,32
    800077fc:	00005497          	auipc	s1,0x5
    80007800:	70c48493          	addi	s1,s1,1804 # 8000cf08 <cons>
    80007804:	00048513          	mv	a0,s1
    80007808:	00002597          	auipc	a1,0x2
    8000780c:	ee058593          	addi	a1,a1,-288 # 800096e8 <CONSOLE_STATUS+0x6d8>
    80007810:	00001097          	auipc	ra,0x1
    80007814:	d88080e7          	jalr	-632(ra) # 80008598 <initlock>
    80007818:	00000097          	auipc	ra,0x0
    8000781c:	7ac080e7          	jalr	1964(ra) # 80007fc4 <uartinit>
    80007820:	01813083          	ld	ra,24(sp)
    80007824:	01013403          	ld	s0,16(sp)
    80007828:	00000797          	auipc	a5,0x0
    8000782c:	d9c78793          	addi	a5,a5,-612 # 800075c4 <consoleread>
    80007830:	0af4bc23          	sd	a5,184(s1)
    80007834:	00000797          	auipc	a5,0x0
    80007838:	cec78793          	addi	a5,a5,-788 # 80007520 <consolewrite>
    8000783c:	0cf4b023          	sd	a5,192(s1)
    80007840:	00813483          	ld	s1,8(sp)
    80007844:	02010113          	addi	sp,sp,32
    80007848:	00008067          	ret

000000008000784c <console_read>:
    8000784c:	ff010113          	addi	sp,sp,-16
    80007850:	00813423          	sd	s0,8(sp)
    80007854:	01010413          	addi	s0,sp,16
    80007858:	00813403          	ld	s0,8(sp)
    8000785c:	00005317          	auipc	t1,0x5
    80007860:	76433303          	ld	t1,1892(t1) # 8000cfc0 <devsw+0x10>
    80007864:	01010113          	addi	sp,sp,16
    80007868:	00030067          	jr	t1

000000008000786c <console_write>:
    8000786c:	ff010113          	addi	sp,sp,-16
    80007870:	00813423          	sd	s0,8(sp)
    80007874:	01010413          	addi	s0,sp,16
    80007878:	00813403          	ld	s0,8(sp)
    8000787c:	00005317          	auipc	t1,0x5
    80007880:	74c33303          	ld	t1,1868(t1) # 8000cfc8 <devsw+0x18>
    80007884:	01010113          	addi	sp,sp,16
    80007888:	00030067          	jr	t1

000000008000788c <panic>:
    8000788c:	fe010113          	addi	sp,sp,-32
    80007890:	00113c23          	sd	ra,24(sp)
    80007894:	00813823          	sd	s0,16(sp)
    80007898:	00913423          	sd	s1,8(sp)
    8000789c:	02010413          	addi	s0,sp,32
    800078a0:	00050493          	mv	s1,a0
    800078a4:	00002517          	auipc	a0,0x2
    800078a8:	e4c50513          	addi	a0,a0,-436 # 800096f0 <CONSOLE_STATUS+0x6e0>
    800078ac:	00005797          	auipc	a5,0x5
    800078b0:	7a07ae23          	sw	zero,1980(a5) # 8000d068 <pr+0x18>
    800078b4:	00000097          	auipc	ra,0x0
    800078b8:	034080e7          	jalr	52(ra) # 800078e8 <__printf>
    800078bc:	00048513          	mv	a0,s1
    800078c0:	00000097          	auipc	ra,0x0
    800078c4:	028080e7          	jalr	40(ra) # 800078e8 <__printf>
    800078c8:	00002517          	auipc	a0,0x2
    800078cc:	bb050513          	addi	a0,a0,-1104 # 80009478 <CONSOLE_STATUS+0x468>
    800078d0:	00000097          	auipc	ra,0x0
    800078d4:	018080e7          	jalr	24(ra) # 800078e8 <__printf>
    800078d8:	00100793          	li	a5,1
    800078dc:	00004717          	auipc	a4,0x4
    800078e0:	44f72e23          	sw	a5,1116(a4) # 8000bd38 <panicked>
    800078e4:	0000006f          	j	800078e4 <panic+0x58>

00000000800078e8 <__printf>:
    800078e8:	f3010113          	addi	sp,sp,-208
    800078ec:	08813023          	sd	s0,128(sp)
    800078f0:	07313423          	sd	s3,104(sp)
    800078f4:	09010413          	addi	s0,sp,144
    800078f8:	05813023          	sd	s8,64(sp)
    800078fc:	08113423          	sd	ra,136(sp)
    80007900:	06913c23          	sd	s1,120(sp)
    80007904:	07213823          	sd	s2,112(sp)
    80007908:	07413023          	sd	s4,96(sp)
    8000790c:	05513c23          	sd	s5,88(sp)
    80007910:	05613823          	sd	s6,80(sp)
    80007914:	05713423          	sd	s7,72(sp)
    80007918:	03913c23          	sd	s9,56(sp)
    8000791c:	03a13823          	sd	s10,48(sp)
    80007920:	03b13423          	sd	s11,40(sp)
    80007924:	00005317          	auipc	t1,0x5
    80007928:	72c30313          	addi	t1,t1,1836 # 8000d050 <pr>
    8000792c:	01832c03          	lw	s8,24(t1)
    80007930:	00b43423          	sd	a1,8(s0)
    80007934:	00c43823          	sd	a2,16(s0)
    80007938:	00d43c23          	sd	a3,24(s0)
    8000793c:	02e43023          	sd	a4,32(s0)
    80007940:	02f43423          	sd	a5,40(s0)
    80007944:	03043823          	sd	a6,48(s0)
    80007948:	03143c23          	sd	a7,56(s0)
    8000794c:	00050993          	mv	s3,a0
    80007950:	4a0c1663          	bnez	s8,80007dfc <__printf+0x514>
    80007954:	60098c63          	beqz	s3,80007f6c <__printf+0x684>
    80007958:	0009c503          	lbu	a0,0(s3)
    8000795c:	00840793          	addi	a5,s0,8
    80007960:	f6f43c23          	sd	a5,-136(s0)
    80007964:	00000493          	li	s1,0
    80007968:	22050063          	beqz	a0,80007b88 <__printf+0x2a0>
    8000796c:	00002a37          	lui	s4,0x2
    80007970:	00018ab7          	lui	s5,0x18
    80007974:	000f4b37          	lui	s6,0xf4
    80007978:	00989bb7          	lui	s7,0x989
    8000797c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007980:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007984:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007988:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000798c:	00148c9b          	addiw	s9,s1,1
    80007990:	02500793          	li	a5,37
    80007994:	01998933          	add	s2,s3,s9
    80007998:	38f51263          	bne	a0,a5,80007d1c <__printf+0x434>
    8000799c:	00094783          	lbu	a5,0(s2)
    800079a0:	00078c9b          	sext.w	s9,a5
    800079a4:	1e078263          	beqz	a5,80007b88 <__printf+0x2a0>
    800079a8:	0024849b          	addiw	s1,s1,2
    800079ac:	07000713          	li	a4,112
    800079b0:	00998933          	add	s2,s3,s1
    800079b4:	38e78a63          	beq	a5,a4,80007d48 <__printf+0x460>
    800079b8:	20f76863          	bltu	a4,a5,80007bc8 <__printf+0x2e0>
    800079bc:	42a78863          	beq	a5,a0,80007dec <__printf+0x504>
    800079c0:	06400713          	li	a4,100
    800079c4:	40e79663          	bne	a5,a4,80007dd0 <__printf+0x4e8>
    800079c8:	f7843783          	ld	a5,-136(s0)
    800079cc:	0007a603          	lw	a2,0(a5)
    800079d0:	00878793          	addi	a5,a5,8
    800079d4:	f6f43c23          	sd	a5,-136(s0)
    800079d8:	42064a63          	bltz	a2,80007e0c <__printf+0x524>
    800079dc:	00a00713          	li	a4,10
    800079e0:	02e677bb          	remuw	a5,a2,a4
    800079e4:	00002d97          	auipc	s11,0x2
    800079e8:	d34d8d93          	addi	s11,s11,-716 # 80009718 <digits>
    800079ec:	00900593          	li	a1,9
    800079f0:	0006051b          	sext.w	a0,a2
    800079f4:	00000c93          	li	s9,0
    800079f8:	02079793          	slli	a5,a5,0x20
    800079fc:	0207d793          	srli	a5,a5,0x20
    80007a00:	00fd87b3          	add	a5,s11,a5
    80007a04:	0007c783          	lbu	a5,0(a5)
    80007a08:	02e656bb          	divuw	a3,a2,a4
    80007a0c:	f8f40023          	sb	a5,-128(s0)
    80007a10:	14c5d863          	bge	a1,a2,80007b60 <__printf+0x278>
    80007a14:	06300593          	li	a1,99
    80007a18:	00100c93          	li	s9,1
    80007a1c:	02e6f7bb          	remuw	a5,a3,a4
    80007a20:	02079793          	slli	a5,a5,0x20
    80007a24:	0207d793          	srli	a5,a5,0x20
    80007a28:	00fd87b3          	add	a5,s11,a5
    80007a2c:	0007c783          	lbu	a5,0(a5)
    80007a30:	02e6d73b          	divuw	a4,a3,a4
    80007a34:	f8f400a3          	sb	a5,-127(s0)
    80007a38:	12a5f463          	bgeu	a1,a0,80007b60 <__printf+0x278>
    80007a3c:	00a00693          	li	a3,10
    80007a40:	00900593          	li	a1,9
    80007a44:	02d777bb          	remuw	a5,a4,a3
    80007a48:	02079793          	slli	a5,a5,0x20
    80007a4c:	0207d793          	srli	a5,a5,0x20
    80007a50:	00fd87b3          	add	a5,s11,a5
    80007a54:	0007c503          	lbu	a0,0(a5)
    80007a58:	02d757bb          	divuw	a5,a4,a3
    80007a5c:	f8a40123          	sb	a0,-126(s0)
    80007a60:	48e5f263          	bgeu	a1,a4,80007ee4 <__printf+0x5fc>
    80007a64:	06300513          	li	a0,99
    80007a68:	02d7f5bb          	remuw	a1,a5,a3
    80007a6c:	02059593          	slli	a1,a1,0x20
    80007a70:	0205d593          	srli	a1,a1,0x20
    80007a74:	00bd85b3          	add	a1,s11,a1
    80007a78:	0005c583          	lbu	a1,0(a1)
    80007a7c:	02d7d7bb          	divuw	a5,a5,a3
    80007a80:	f8b401a3          	sb	a1,-125(s0)
    80007a84:	48e57263          	bgeu	a0,a4,80007f08 <__printf+0x620>
    80007a88:	3e700513          	li	a0,999
    80007a8c:	02d7f5bb          	remuw	a1,a5,a3
    80007a90:	02059593          	slli	a1,a1,0x20
    80007a94:	0205d593          	srli	a1,a1,0x20
    80007a98:	00bd85b3          	add	a1,s11,a1
    80007a9c:	0005c583          	lbu	a1,0(a1)
    80007aa0:	02d7d7bb          	divuw	a5,a5,a3
    80007aa4:	f8b40223          	sb	a1,-124(s0)
    80007aa8:	46e57663          	bgeu	a0,a4,80007f14 <__printf+0x62c>
    80007aac:	02d7f5bb          	remuw	a1,a5,a3
    80007ab0:	02059593          	slli	a1,a1,0x20
    80007ab4:	0205d593          	srli	a1,a1,0x20
    80007ab8:	00bd85b3          	add	a1,s11,a1
    80007abc:	0005c583          	lbu	a1,0(a1)
    80007ac0:	02d7d7bb          	divuw	a5,a5,a3
    80007ac4:	f8b402a3          	sb	a1,-123(s0)
    80007ac8:	46ea7863          	bgeu	s4,a4,80007f38 <__printf+0x650>
    80007acc:	02d7f5bb          	remuw	a1,a5,a3
    80007ad0:	02059593          	slli	a1,a1,0x20
    80007ad4:	0205d593          	srli	a1,a1,0x20
    80007ad8:	00bd85b3          	add	a1,s11,a1
    80007adc:	0005c583          	lbu	a1,0(a1)
    80007ae0:	02d7d7bb          	divuw	a5,a5,a3
    80007ae4:	f8b40323          	sb	a1,-122(s0)
    80007ae8:	3eeaf863          	bgeu	s5,a4,80007ed8 <__printf+0x5f0>
    80007aec:	02d7f5bb          	remuw	a1,a5,a3
    80007af0:	02059593          	slli	a1,a1,0x20
    80007af4:	0205d593          	srli	a1,a1,0x20
    80007af8:	00bd85b3          	add	a1,s11,a1
    80007afc:	0005c583          	lbu	a1,0(a1)
    80007b00:	02d7d7bb          	divuw	a5,a5,a3
    80007b04:	f8b403a3          	sb	a1,-121(s0)
    80007b08:	42eb7e63          	bgeu	s6,a4,80007f44 <__printf+0x65c>
    80007b0c:	02d7f5bb          	remuw	a1,a5,a3
    80007b10:	02059593          	slli	a1,a1,0x20
    80007b14:	0205d593          	srli	a1,a1,0x20
    80007b18:	00bd85b3          	add	a1,s11,a1
    80007b1c:	0005c583          	lbu	a1,0(a1)
    80007b20:	02d7d7bb          	divuw	a5,a5,a3
    80007b24:	f8b40423          	sb	a1,-120(s0)
    80007b28:	42ebfc63          	bgeu	s7,a4,80007f60 <__printf+0x678>
    80007b2c:	02079793          	slli	a5,a5,0x20
    80007b30:	0207d793          	srli	a5,a5,0x20
    80007b34:	00fd8db3          	add	s11,s11,a5
    80007b38:	000dc703          	lbu	a4,0(s11)
    80007b3c:	00a00793          	li	a5,10
    80007b40:	00900c93          	li	s9,9
    80007b44:	f8e404a3          	sb	a4,-119(s0)
    80007b48:	00065c63          	bgez	a2,80007b60 <__printf+0x278>
    80007b4c:	f9040713          	addi	a4,s0,-112
    80007b50:	00f70733          	add	a4,a4,a5
    80007b54:	02d00693          	li	a3,45
    80007b58:	fed70823          	sb	a3,-16(a4)
    80007b5c:	00078c93          	mv	s9,a5
    80007b60:	f8040793          	addi	a5,s0,-128
    80007b64:	01978cb3          	add	s9,a5,s9
    80007b68:	f7f40d13          	addi	s10,s0,-129
    80007b6c:	000cc503          	lbu	a0,0(s9)
    80007b70:	fffc8c93          	addi	s9,s9,-1
    80007b74:	00000097          	auipc	ra,0x0
    80007b78:	b90080e7          	jalr	-1136(ra) # 80007704 <consputc>
    80007b7c:	ffac98e3          	bne	s9,s10,80007b6c <__printf+0x284>
    80007b80:	00094503          	lbu	a0,0(s2)
    80007b84:	e00514e3          	bnez	a0,8000798c <__printf+0xa4>
    80007b88:	1a0c1663          	bnez	s8,80007d34 <__printf+0x44c>
    80007b8c:	08813083          	ld	ra,136(sp)
    80007b90:	08013403          	ld	s0,128(sp)
    80007b94:	07813483          	ld	s1,120(sp)
    80007b98:	07013903          	ld	s2,112(sp)
    80007b9c:	06813983          	ld	s3,104(sp)
    80007ba0:	06013a03          	ld	s4,96(sp)
    80007ba4:	05813a83          	ld	s5,88(sp)
    80007ba8:	05013b03          	ld	s6,80(sp)
    80007bac:	04813b83          	ld	s7,72(sp)
    80007bb0:	04013c03          	ld	s8,64(sp)
    80007bb4:	03813c83          	ld	s9,56(sp)
    80007bb8:	03013d03          	ld	s10,48(sp)
    80007bbc:	02813d83          	ld	s11,40(sp)
    80007bc0:	0d010113          	addi	sp,sp,208
    80007bc4:	00008067          	ret
    80007bc8:	07300713          	li	a4,115
    80007bcc:	1ce78a63          	beq	a5,a4,80007da0 <__printf+0x4b8>
    80007bd0:	07800713          	li	a4,120
    80007bd4:	1ee79e63          	bne	a5,a4,80007dd0 <__printf+0x4e8>
    80007bd8:	f7843783          	ld	a5,-136(s0)
    80007bdc:	0007a703          	lw	a4,0(a5)
    80007be0:	00878793          	addi	a5,a5,8
    80007be4:	f6f43c23          	sd	a5,-136(s0)
    80007be8:	28074263          	bltz	a4,80007e6c <__printf+0x584>
    80007bec:	00002d97          	auipc	s11,0x2
    80007bf0:	b2cd8d93          	addi	s11,s11,-1236 # 80009718 <digits>
    80007bf4:	00f77793          	andi	a5,a4,15
    80007bf8:	00fd87b3          	add	a5,s11,a5
    80007bfc:	0007c683          	lbu	a3,0(a5)
    80007c00:	00f00613          	li	a2,15
    80007c04:	0007079b          	sext.w	a5,a4
    80007c08:	f8d40023          	sb	a3,-128(s0)
    80007c0c:	0047559b          	srliw	a1,a4,0x4
    80007c10:	0047569b          	srliw	a3,a4,0x4
    80007c14:	00000c93          	li	s9,0
    80007c18:	0ee65063          	bge	a2,a4,80007cf8 <__printf+0x410>
    80007c1c:	00f6f693          	andi	a3,a3,15
    80007c20:	00dd86b3          	add	a3,s11,a3
    80007c24:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007c28:	0087d79b          	srliw	a5,a5,0x8
    80007c2c:	00100c93          	li	s9,1
    80007c30:	f8d400a3          	sb	a3,-127(s0)
    80007c34:	0cb67263          	bgeu	a2,a1,80007cf8 <__printf+0x410>
    80007c38:	00f7f693          	andi	a3,a5,15
    80007c3c:	00dd86b3          	add	a3,s11,a3
    80007c40:	0006c583          	lbu	a1,0(a3)
    80007c44:	00f00613          	li	a2,15
    80007c48:	0047d69b          	srliw	a3,a5,0x4
    80007c4c:	f8b40123          	sb	a1,-126(s0)
    80007c50:	0047d593          	srli	a1,a5,0x4
    80007c54:	28f67e63          	bgeu	a2,a5,80007ef0 <__printf+0x608>
    80007c58:	00f6f693          	andi	a3,a3,15
    80007c5c:	00dd86b3          	add	a3,s11,a3
    80007c60:	0006c503          	lbu	a0,0(a3)
    80007c64:	0087d813          	srli	a6,a5,0x8
    80007c68:	0087d69b          	srliw	a3,a5,0x8
    80007c6c:	f8a401a3          	sb	a0,-125(s0)
    80007c70:	28b67663          	bgeu	a2,a1,80007efc <__printf+0x614>
    80007c74:	00f6f693          	andi	a3,a3,15
    80007c78:	00dd86b3          	add	a3,s11,a3
    80007c7c:	0006c583          	lbu	a1,0(a3)
    80007c80:	00c7d513          	srli	a0,a5,0xc
    80007c84:	00c7d69b          	srliw	a3,a5,0xc
    80007c88:	f8b40223          	sb	a1,-124(s0)
    80007c8c:	29067a63          	bgeu	a2,a6,80007f20 <__printf+0x638>
    80007c90:	00f6f693          	andi	a3,a3,15
    80007c94:	00dd86b3          	add	a3,s11,a3
    80007c98:	0006c583          	lbu	a1,0(a3)
    80007c9c:	0107d813          	srli	a6,a5,0x10
    80007ca0:	0107d69b          	srliw	a3,a5,0x10
    80007ca4:	f8b402a3          	sb	a1,-123(s0)
    80007ca8:	28a67263          	bgeu	a2,a0,80007f2c <__printf+0x644>
    80007cac:	00f6f693          	andi	a3,a3,15
    80007cb0:	00dd86b3          	add	a3,s11,a3
    80007cb4:	0006c683          	lbu	a3,0(a3)
    80007cb8:	0147d79b          	srliw	a5,a5,0x14
    80007cbc:	f8d40323          	sb	a3,-122(s0)
    80007cc0:	21067663          	bgeu	a2,a6,80007ecc <__printf+0x5e4>
    80007cc4:	02079793          	slli	a5,a5,0x20
    80007cc8:	0207d793          	srli	a5,a5,0x20
    80007ccc:	00fd8db3          	add	s11,s11,a5
    80007cd0:	000dc683          	lbu	a3,0(s11)
    80007cd4:	00800793          	li	a5,8
    80007cd8:	00700c93          	li	s9,7
    80007cdc:	f8d403a3          	sb	a3,-121(s0)
    80007ce0:	00075c63          	bgez	a4,80007cf8 <__printf+0x410>
    80007ce4:	f9040713          	addi	a4,s0,-112
    80007ce8:	00f70733          	add	a4,a4,a5
    80007cec:	02d00693          	li	a3,45
    80007cf0:	fed70823          	sb	a3,-16(a4)
    80007cf4:	00078c93          	mv	s9,a5
    80007cf8:	f8040793          	addi	a5,s0,-128
    80007cfc:	01978cb3          	add	s9,a5,s9
    80007d00:	f7f40d13          	addi	s10,s0,-129
    80007d04:	000cc503          	lbu	a0,0(s9)
    80007d08:	fffc8c93          	addi	s9,s9,-1
    80007d0c:	00000097          	auipc	ra,0x0
    80007d10:	9f8080e7          	jalr	-1544(ra) # 80007704 <consputc>
    80007d14:	ff9d18e3          	bne	s10,s9,80007d04 <__printf+0x41c>
    80007d18:	0100006f          	j	80007d28 <__printf+0x440>
    80007d1c:	00000097          	auipc	ra,0x0
    80007d20:	9e8080e7          	jalr	-1560(ra) # 80007704 <consputc>
    80007d24:	000c8493          	mv	s1,s9
    80007d28:	00094503          	lbu	a0,0(s2)
    80007d2c:	c60510e3          	bnez	a0,8000798c <__printf+0xa4>
    80007d30:	e40c0ee3          	beqz	s8,80007b8c <__printf+0x2a4>
    80007d34:	00005517          	auipc	a0,0x5
    80007d38:	31c50513          	addi	a0,a0,796 # 8000d050 <pr>
    80007d3c:	00001097          	auipc	ra,0x1
    80007d40:	94c080e7          	jalr	-1716(ra) # 80008688 <release>
    80007d44:	e49ff06f          	j	80007b8c <__printf+0x2a4>
    80007d48:	f7843783          	ld	a5,-136(s0)
    80007d4c:	03000513          	li	a0,48
    80007d50:	01000d13          	li	s10,16
    80007d54:	00878713          	addi	a4,a5,8
    80007d58:	0007bc83          	ld	s9,0(a5)
    80007d5c:	f6e43c23          	sd	a4,-136(s0)
    80007d60:	00000097          	auipc	ra,0x0
    80007d64:	9a4080e7          	jalr	-1628(ra) # 80007704 <consputc>
    80007d68:	07800513          	li	a0,120
    80007d6c:	00000097          	auipc	ra,0x0
    80007d70:	998080e7          	jalr	-1640(ra) # 80007704 <consputc>
    80007d74:	00002d97          	auipc	s11,0x2
    80007d78:	9a4d8d93          	addi	s11,s11,-1628 # 80009718 <digits>
    80007d7c:	03ccd793          	srli	a5,s9,0x3c
    80007d80:	00fd87b3          	add	a5,s11,a5
    80007d84:	0007c503          	lbu	a0,0(a5)
    80007d88:	fffd0d1b          	addiw	s10,s10,-1
    80007d8c:	004c9c93          	slli	s9,s9,0x4
    80007d90:	00000097          	auipc	ra,0x0
    80007d94:	974080e7          	jalr	-1676(ra) # 80007704 <consputc>
    80007d98:	fe0d12e3          	bnez	s10,80007d7c <__printf+0x494>
    80007d9c:	f8dff06f          	j	80007d28 <__printf+0x440>
    80007da0:	f7843783          	ld	a5,-136(s0)
    80007da4:	0007bc83          	ld	s9,0(a5)
    80007da8:	00878793          	addi	a5,a5,8
    80007dac:	f6f43c23          	sd	a5,-136(s0)
    80007db0:	000c9a63          	bnez	s9,80007dc4 <__printf+0x4dc>
    80007db4:	1080006f          	j	80007ebc <__printf+0x5d4>
    80007db8:	001c8c93          	addi	s9,s9,1
    80007dbc:	00000097          	auipc	ra,0x0
    80007dc0:	948080e7          	jalr	-1720(ra) # 80007704 <consputc>
    80007dc4:	000cc503          	lbu	a0,0(s9)
    80007dc8:	fe0518e3          	bnez	a0,80007db8 <__printf+0x4d0>
    80007dcc:	f5dff06f          	j	80007d28 <__printf+0x440>
    80007dd0:	02500513          	li	a0,37
    80007dd4:	00000097          	auipc	ra,0x0
    80007dd8:	930080e7          	jalr	-1744(ra) # 80007704 <consputc>
    80007ddc:	000c8513          	mv	a0,s9
    80007de0:	00000097          	auipc	ra,0x0
    80007de4:	924080e7          	jalr	-1756(ra) # 80007704 <consputc>
    80007de8:	f41ff06f          	j	80007d28 <__printf+0x440>
    80007dec:	02500513          	li	a0,37
    80007df0:	00000097          	auipc	ra,0x0
    80007df4:	914080e7          	jalr	-1772(ra) # 80007704 <consputc>
    80007df8:	f31ff06f          	j	80007d28 <__printf+0x440>
    80007dfc:	00030513          	mv	a0,t1
    80007e00:	00000097          	auipc	ra,0x0
    80007e04:	7bc080e7          	jalr	1980(ra) # 800085bc <acquire>
    80007e08:	b4dff06f          	j	80007954 <__printf+0x6c>
    80007e0c:	40c0053b          	negw	a0,a2
    80007e10:	00a00713          	li	a4,10
    80007e14:	02e576bb          	remuw	a3,a0,a4
    80007e18:	00002d97          	auipc	s11,0x2
    80007e1c:	900d8d93          	addi	s11,s11,-1792 # 80009718 <digits>
    80007e20:	ff700593          	li	a1,-9
    80007e24:	02069693          	slli	a3,a3,0x20
    80007e28:	0206d693          	srli	a3,a3,0x20
    80007e2c:	00dd86b3          	add	a3,s11,a3
    80007e30:	0006c683          	lbu	a3,0(a3)
    80007e34:	02e557bb          	divuw	a5,a0,a4
    80007e38:	f8d40023          	sb	a3,-128(s0)
    80007e3c:	10b65e63          	bge	a2,a1,80007f58 <__printf+0x670>
    80007e40:	06300593          	li	a1,99
    80007e44:	02e7f6bb          	remuw	a3,a5,a4
    80007e48:	02069693          	slli	a3,a3,0x20
    80007e4c:	0206d693          	srli	a3,a3,0x20
    80007e50:	00dd86b3          	add	a3,s11,a3
    80007e54:	0006c683          	lbu	a3,0(a3)
    80007e58:	02e7d73b          	divuw	a4,a5,a4
    80007e5c:	00200793          	li	a5,2
    80007e60:	f8d400a3          	sb	a3,-127(s0)
    80007e64:	bca5ece3          	bltu	a1,a0,80007a3c <__printf+0x154>
    80007e68:	ce5ff06f          	j	80007b4c <__printf+0x264>
    80007e6c:	40e007bb          	negw	a5,a4
    80007e70:	00002d97          	auipc	s11,0x2
    80007e74:	8a8d8d93          	addi	s11,s11,-1880 # 80009718 <digits>
    80007e78:	00f7f693          	andi	a3,a5,15
    80007e7c:	00dd86b3          	add	a3,s11,a3
    80007e80:	0006c583          	lbu	a1,0(a3)
    80007e84:	ff100613          	li	a2,-15
    80007e88:	0047d69b          	srliw	a3,a5,0x4
    80007e8c:	f8b40023          	sb	a1,-128(s0)
    80007e90:	0047d59b          	srliw	a1,a5,0x4
    80007e94:	0ac75e63          	bge	a4,a2,80007f50 <__printf+0x668>
    80007e98:	00f6f693          	andi	a3,a3,15
    80007e9c:	00dd86b3          	add	a3,s11,a3
    80007ea0:	0006c603          	lbu	a2,0(a3)
    80007ea4:	00f00693          	li	a3,15
    80007ea8:	0087d79b          	srliw	a5,a5,0x8
    80007eac:	f8c400a3          	sb	a2,-127(s0)
    80007eb0:	d8b6e4e3          	bltu	a3,a1,80007c38 <__printf+0x350>
    80007eb4:	00200793          	li	a5,2
    80007eb8:	e2dff06f          	j	80007ce4 <__printf+0x3fc>
    80007ebc:	00002c97          	auipc	s9,0x2
    80007ec0:	83cc8c93          	addi	s9,s9,-1988 # 800096f8 <CONSOLE_STATUS+0x6e8>
    80007ec4:	02800513          	li	a0,40
    80007ec8:	ef1ff06f          	j	80007db8 <__printf+0x4d0>
    80007ecc:	00700793          	li	a5,7
    80007ed0:	00600c93          	li	s9,6
    80007ed4:	e0dff06f          	j	80007ce0 <__printf+0x3f8>
    80007ed8:	00700793          	li	a5,7
    80007edc:	00600c93          	li	s9,6
    80007ee0:	c69ff06f          	j	80007b48 <__printf+0x260>
    80007ee4:	00300793          	li	a5,3
    80007ee8:	00200c93          	li	s9,2
    80007eec:	c5dff06f          	j	80007b48 <__printf+0x260>
    80007ef0:	00300793          	li	a5,3
    80007ef4:	00200c93          	li	s9,2
    80007ef8:	de9ff06f          	j	80007ce0 <__printf+0x3f8>
    80007efc:	00400793          	li	a5,4
    80007f00:	00300c93          	li	s9,3
    80007f04:	dddff06f          	j	80007ce0 <__printf+0x3f8>
    80007f08:	00400793          	li	a5,4
    80007f0c:	00300c93          	li	s9,3
    80007f10:	c39ff06f          	j	80007b48 <__printf+0x260>
    80007f14:	00500793          	li	a5,5
    80007f18:	00400c93          	li	s9,4
    80007f1c:	c2dff06f          	j	80007b48 <__printf+0x260>
    80007f20:	00500793          	li	a5,5
    80007f24:	00400c93          	li	s9,4
    80007f28:	db9ff06f          	j	80007ce0 <__printf+0x3f8>
    80007f2c:	00600793          	li	a5,6
    80007f30:	00500c93          	li	s9,5
    80007f34:	dadff06f          	j	80007ce0 <__printf+0x3f8>
    80007f38:	00600793          	li	a5,6
    80007f3c:	00500c93          	li	s9,5
    80007f40:	c09ff06f          	j	80007b48 <__printf+0x260>
    80007f44:	00800793          	li	a5,8
    80007f48:	00700c93          	li	s9,7
    80007f4c:	bfdff06f          	j	80007b48 <__printf+0x260>
    80007f50:	00100793          	li	a5,1
    80007f54:	d91ff06f          	j	80007ce4 <__printf+0x3fc>
    80007f58:	00100793          	li	a5,1
    80007f5c:	bf1ff06f          	j	80007b4c <__printf+0x264>
    80007f60:	00900793          	li	a5,9
    80007f64:	00800c93          	li	s9,8
    80007f68:	be1ff06f          	j	80007b48 <__printf+0x260>
    80007f6c:	00001517          	auipc	a0,0x1
    80007f70:	79450513          	addi	a0,a0,1940 # 80009700 <CONSOLE_STATUS+0x6f0>
    80007f74:	00000097          	auipc	ra,0x0
    80007f78:	918080e7          	jalr	-1768(ra) # 8000788c <panic>

0000000080007f7c <printfinit>:
    80007f7c:	fe010113          	addi	sp,sp,-32
    80007f80:	00813823          	sd	s0,16(sp)
    80007f84:	00913423          	sd	s1,8(sp)
    80007f88:	00113c23          	sd	ra,24(sp)
    80007f8c:	02010413          	addi	s0,sp,32
    80007f90:	00005497          	auipc	s1,0x5
    80007f94:	0c048493          	addi	s1,s1,192 # 8000d050 <pr>
    80007f98:	00048513          	mv	a0,s1
    80007f9c:	00001597          	auipc	a1,0x1
    80007fa0:	77458593          	addi	a1,a1,1908 # 80009710 <CONSOLE_STATUS+0x700>
    80007fa4:	00000097          	auipc	ra,0x0
    80007fa8:	5f4080e7          	jalr	1524(ra) # 80008598 <initlock>
    80007fac:	01813083          	ld	ra,24(sp)
    80007fb0:	01013403          	ld	s0,16(sp)
    80007fb4:	0004ac23          	sw	zero,24(s1)
    80007fb8:	00813483          	ld	s1,8(sp)
    80007fbc:	02010113          	addi	sp,sp,32
    80007fc0:	00008067          	ret

0000000080007fc4 <uartinit>:
    80007fc4:	ff010113          	addi	sp,sp,-16
    80007fc8:	00813423          	sd	s0,8(sp)
    80007fcc:	01010413          	addi	s0,sp,16
    80007fd0:	100007b7          	lui	a5,0x10000
    80007fd4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007fd8:	f8000713          	li	a4,-128
    80007fdc:	00e781a3          	sb	a4,3(a5)
    80007fe0:	00300713          	li	a4,3
    80007fe4:	00e78023          	sb	a4,0(a5)
    80007fe8:	000780a3          	sb	zero,1(a5)
    80007fec:	00e781a3          	sb	a4,3(a5)
    80007ff0:	00700693          	li	a3,7
    80007ff4:	00d78123          	sb	a3,2(a5)
    80007ff8:	00e780a3          	sb	a4,1(a5)
    80007ffc:	00813403          	ld	s0,8(sp)
    80008000:	01010113          	addi	sp,sp,16
    80008004:	00008067          	ret

0000000080008008 <uartputc>:
    80008008:	00004797          	auipc	a5,0x4
    8000800c:	d307a783          	lw	a5,-720(a5) # 8000bd38 <panicked>
    80008010:	00078463          	beqz	a5,80008018 <uartputc+0x10>
    80008014:	0000006f          	j	80008014 <uartputc+0xc>
    80008018:	fd010113          	addi	sp,sp,-48
    8000801c:	02813023          	sd	s0,32(sp)
    80008020:	00913c23          	sd	s1,24(sp)
    80008024:	01213823          	sd	s2,16(sp)
    80008028:	01313423          	sd	s3,8(sp)
    8000802c:	02113423          	sd	ra,40(sp)
    80008030:	03010413          	addi	s0,sp,48
    80008034:	00004917          	auipc	s2,0x4
    80008038:	d0c90913          	addi	s2,s2,-756 # 8000bd40 <uart_tx_r>
    8000803c:	00093783          	ld	a5,0(s2)
    80008040:	00004497          	auipc	s1,0x4
    80008044:	d0848493          	addi	s1,s1,-760 # 8000bd48 <uart_tx_w>
    80008048:	0004b703          	ld	a4,0(s1)
    8000804c:	02078693          	addi	a3,a5,32
    80008050:	00050993          	mv	s3,a0
    80008054:	02e69c63          	bne	a3,a4,8000808c <uartputc+0x84>
    80008058:	00001097          	auipc	ra,0x1
    8000805c:	834080e7          	jalr	-1996(ra) # 8000888c <push_on>
    80008060:	00093783          	ld	a5,0(s2)
    80008064:	0004b703          	ld	a4,0(s1)
    80008068:	02078793          	addi	a5,a5,32
    8000806c:	00e79463          	bne	a5,a4,80008074 <uartputc+0x6c>
    80008070:	0000006f          	j	80008070 <uartputc+0x68>
    80008074:	00001097          	auipc	ra,0x1
    80008078:	88c080e7          	jalr	-1908(ra) # 80008900 <pop_on>
    8000807c:	00093783          	ld	a5,0(s2)
    80008080:	0004b703          	ld	a4,0(s1)
    80008084:	02078693          	addi	a3,a5,32
    80008088:	fce688e3          	beq	a3,a4,80008058 <uartputc+0x50>
    8000808c:	01f77693          	andi	a3,a4,31
    80008090:	00005597          	auipc	a1,0x5
    80008094:	fe058593          	addi	a1,a1,-32 # 8000d070 <uart_tx_buf>
    80008098:	00d586b3          	add	a3,a1,a3
    8000809c:	00170713          	addi	a4,a4,1
    800080a0:	01368023          	sb	s3,0(a3)
    800080a4:	00e4b023          	sd	a4,0(s1)
    800080a8:	10000637          	lui	a2,0x10000
    800080ac:	02f71063          	bne	a4,a5,800080cc <uartputc+0xc4>
    800080b0:	0340006f          	j	800080e4 <uartputc+0xdc>
    800080b4:	00074703          	lbu	a4,0(a4)
    800080b8:	00f93023          	sd	a5,0(s2)
    800080bc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800080c0:	00093783          	ld	a5,0(s2)
    800080c4:	0004b703          	ld	a4,0(s1)
    800080c8:	00f70e63          	beq	a4,a5,800080e4 <uartputc+0xdc>
    800080cc:	00564683          	lbu	a3,5(a2)
    800080d0:	01f7f713          	andi	a4,a5,31
    800080d4:	00e58733          	add	a4,a1,a4
    800080d8:	0206f693          	andi	a3,a3,32
    800080dc:	00178793          	addi	a5,a5,1
    800080e0:	fc069ae3          	bnez	a3,800080b4 <uartputc+0xac>
    800080e4:	02813083          	ld	ra,40(sp)
    800080e8:	02013403          	ld	s0,32(sp)
    800080ec:	01813483          	ld	s1,24(sp)
    800080f0:	01013903          	ld	s2,16(sp)
    800080f4:	00813983          	ld	s3,8(sp)
    800080f8:	03010113          	addi	sp,sp,48
    800080fc:	00008067          	ret

0000000080008100 <uartputc_sync>:
    80008100:	ff010113          	addi	sp,sp,-16
    80008104:	00813423          	sd	s0,8(sp)
    80008108:	01010413          	addi	s0,sp,16
    8000810c:	00004717          	auipc	a4,0x4
    80008110:	c2c72703          	lw	a4,-980(a4) # 8000bd38 <panicked>
    80008114:	02071663          	bnez	a4,80008140 <uartputc_sync+0x40>
    80008118:	00050793          	mv	a5,a0
    8000811c:	100006b7          	lui	a3,0x10000
    80008120:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80008124:	02077713          	andi	a4,a4,32
    80008128:	fe070ce3          	beqz	a4,80008120 <uartputc_sync+0x20>
    8000812c:	0ff7f793          	andi	a5,a5,255
    80008130:	00f68023          	sb	a5,0(a3)
    80008134:	00813403          	ld	s0,8(sp)
    80008138:	01010113          	addi	sp,sp,16
    8000813c:	00008067          	ret
    80008140:	0000006f          	j	80008140 <uartputc_sync+0x40>

0000000080008144 <uartstart>:
    80008144:	ff010113          	addi	sp,sp,-16
    80008148:	00813423          	sd	s0,8(sp)
    8000814c:	01010413          	addi	s0,sp,16
    80008150:	00004617          	auipc	a2,0x4
    80008154:	bf060613          	addi	a2,a2,-1040 # 8000bd40 <uart_tx_r>
    80008158:	00004517          	auipc	a0,0x4
    8000815c:	bf050513          	addi	a0,a0,-1040 # 8000bd48 <uart_tx_w>
    80008160:	00063783          	ld	a5,0(a2)
    80008164:	00053703          	ld	a4,0(a0)
    80008168:	04f70263          	beq	a4,a5,800081ac <uartstart+0x68>
    8000816c:	100005b7          	lui	a1,0x10000
    80008170:	00005817          	auipc	a6,0x5
    80008174:	f0080813          	addi	a6,a6,-256 # 8000d070 <uart_tx_buf>
    80008178:	01c0006f          	j	80008194 <uartstart+0x50>
    8000817c:	0006c703          	lbu	a4,0(a3)
    80008180:	00f63023          	sd	a5,0(a2)
    80008184:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80008188:	00063783          	ld	a5,0(a2)
    8000818c:	00053703          	ld	a4,0(a0)
    80008190:	00f70e63          	beq	a4,a5,800081ac <uartstart+0x68>
    80008194:	01f7f713          	andi	a4,a5,31
    80008198:	00e806b3          	add	a3,a6,a4
    8000819c:	0055c703          	lbu	a4,5(a1)
    800081a0:	00178793          	addi	a5,a5,1
    800081a4:	02077713          	andi	a4,a4,32
    800081a8:	fc071ae3          	bnez	a4,8000817c <uartstart+0x38>
    800081ac:	00813403          	ld	s0,8(sp)
    800081b0:	01010113          	addi	sp,sp,16
    800081b4:	00008067          	ret

00000000800081b8 <uartgetc>:
    800081b8:	ff010113          	addi	sp,sp,-16
    800081bc:	00813423          	sd	s0,8(sp)
    800081c0:	01010413          	addi	s0,sp,16
    800081c4:	10000737          	lui	a4,0x10000
    800081c8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800081cc:	0017f793          	andi	a5,a5,1
    800081d0:	00078c63          	beqz	a5,800081e8 <uartgetc+0x30>
    800081d4:	00074503          	lbu	a0,0(a4)
    800081d8:	0ff57513          	andi	a0,a0,255
    800081dc:	00813403          	ld	s0,8(sp)
    800081e0:	01010113          	addi	sp,sp,16
    800081e4:	00008067          	ret
    800081e8:	fff00513          	li	a0,-1
    800081ec:	ff1ff06f          	j	800081dc <uartgetc+0x24>

00000000800081f0 <uartintr>:
    800081f0:	100007b7          	lui	a5,0x10000
    800081f4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800081f8:	0017f793          	andi	a5,a5,1
    800081fc:	0a078463          	beqz	a5,800082a4 <uartintr+0xb4>
    80008200:	fe010113          	addi	sp,sp,-32
    80008204:	00813823          	sd	s0,16(sp)
    80008208:	00913423          	sd	s1,8(sp)
    8000820c:	00113c23          	sd	ra,24(sp)
    80008210:	02010413          	addi	s0,sp,32
    80008214:	100004b7          	lui	s1,0x10000
    80008218:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000821c:	0ff57513          	andi	a0,a0,255
    80008220:	fffff097          	auipc	ra,0xfffff
    80008224:	534080e7          	jalr	1332(ra) # 80007754 <consoleintr>
    80008228:	0054c783          	lbu	a5,5(s1)
    8000822c:	0017f793          	andi	a5,a5,1
    80008230:	fe0794e3          	bnez	a5,80008218 <uartintr+0x28>
    80008234:	00004617          	auipc	a2,0x4
    80008238:	b0c60613          	addi	a2,a2,-1268 # 8000bd40 <uart_tx_r>
    8000823c:	00004517          	auipc	a0,0x4
    80008240:	b0c50513          	addi	a0,a0,-1268 # 8000bd48 <uart_tx_w>
    80008244:	00063783          	ld	a5,0(a2)
    80008248:	00053703          	ld	a4,0(a0)
    8000824c:	04f70263          	beq	a4,a5,80008290 <uartintr+0xa0>
    80008250:	100005b7          	lui	a1,0x10000
    80008254:	00005817          	auipc	a6,0x5
    80008258:	e1c80813          	addi	a6,a6,-484 # 8000d070 <uart_tx_buf>
    8000825c:	01c0006f          	j	80008278 <uartintr+0x88>
    80008260:	0006c703          	lbu	a4,0(a3)
    80008264:	00f63023          	sd	a5,0(a2)
    80008268:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000826c:	00063783          	ld	a5,0(a2)
    80008270:	00053703          	ld	a4,0(a0)
    80008274:	00f70e63          	beq	a4,a5,80008290 <uartintr+0xa0>
    80008278:	01f7f713          	andi	a4,a5,31
    8000827c:	00e806b3          	add	a3,a6,a4
    80008280:	0055c703          	lbu	a4,5(a1)
    80008284:	00178793          	addi	a5,a5,1
    80008288:	02077713          	andi	a4,a4,32
    8000828c:	fc071ae3          	bnez	a4,80008260 <uartintr+0x70>
    80008290:	01813083          	ld	ra,24(sp)
    80008294:	01013403          	ld	s0,16(sp)
    80008298:	00813483          	ld	s1,8(sp)
    8000829c:	02010113          	addi	sp,sp,32
    800082a0:	00008067          	ret
    800082a4:	00004617          	auipc	a2,0x4
    800082a8:	a9c60613          	addi	a2,a2,-1380 # 8000bd40 <uart_tx_r>
    800082ac:	00004517          	auipc	a0,0x4
    800082b0:	a9c50513          	addi	a0,a0,-1380 # 8000bd48 <uart_tx_w>
    800082b4:	00063783          	ld	a5,0(a2)
    800082b8:	00053703          	ld	a4,0(a0)
    800082bc:	04f70263          	beq	a4,a5,80008300 <uartintr+0x110>
    800082c0:	100005b7          	lui	a1,0x10000
    800082c4:	00005817          	auipc	a6,0x5
    800082c8:	dac80813          	addi	a6,a6,-596 # 8000d070 <uart_tx_buf>
    800082cc:	01c0006f          	j	800082e8 <uartintr+0xf8>
    800082d0:	0006c703          	lbu	a4,0(a3)
    800082d4:	00f63023          	sd	a5,0(a2)
    800082d8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800082dc:	00063783          	ld	a5,0(a2)
    800082e0:	00053703          	ld	a4,0(a0)
    800082e4:	02f70063          	beq	a4,a5,80008304 <uartintr+0x114>
    800082e8:	01f7f713          	andi	a4,a5,31
    800082ec:	00e806b3          	add	a3,a6,a4
    800082f0:	0055c703          	lbu	a4,5(a1)
    800082f4:	00178793          	addi	a5,a5,1
    800082f8:	02077713          	andi	a4,a4,32
    800082fc:	fc071ae3          	bnez	a4,800082d0 <uartintr+0xe0>
    80008300:	00008067          	ret
    80008304:	00008067          	ret

0000000080008308 <kinit>:
    80008308:	fc010113          	addi	sp,sp,-64
    8000830c:	02913423          	sd	s1,40(sp)
    80008310:	fffff7b7          	lui	a5,0xfffff
    80008314:	00006497          	auipc	s1,0x6
    80008318:	d7b48493          	addi	s1,s1,-645 # 8000e08f <end+0xfff>
    8000831c:	02813823          	sd	s0,48(sp)
    80008320:	01313c23          	sd	s3,24(sp)
    80008324:	00f4f4b3          	and	s1,s1,a5
    80008328:	02113c23          	sd	ra,56(sp)
    8000832c:	03213023          	sd	s2,32(sp)
    80008330:	01413823          	sd	s4,16(sp)
    80008334:	01513423          	sd	s5,8(sp)
    80008338:	04010413          	addi	s0,sp,64
    8000833c:	000017b7          	lui	a5,0x1
    80008340:	01100993          	li	s3,17
    80008344:	00f487b3          	add	a5,s1,a5
    80008348:	01b99993          	slli	s3,s3,0x1b
    8000834c:	06f9e063          	bltu	s3,a5,800083ac <kinit+0xa4>
    80008350:	00005a97          	auipc	s5,0x5
    80008354:	d40a8a93          	addi	s5,s5,-704 # 8000d090 <end>
    80008358:	0754ec63          	bltu	s1,s5,800083d0 <kinit+0xc8>
    8000835c:	0734fa63          	bgeu	s1,s3,800083d0 <kinit+0xc8>
    80008360:	00088a37          	lui	s4,0x88
    80008364:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80008368:	00004917          	auipc	s2,0x4
    8000836c:	9e890913          	addi	s2,s2,-1560 # 8000bd50 <kmem>
    80008370:	00ca1a13          	slli	s4,s4,0xc
    80008374:	0140006f          	j	80008388 <kinit+0x80>
    80008378:	000017b7          	lui	a5,0x1
    8000837c:	00f484b3          	add	s1,s1,a5
    80008380:	0554e863          	bltu	s1,s5,800083d0 <kinit+0xc8>
    80008384:	0534f663          	bgeu	s1,s3,800083d0 <kinit+0xc8>
    80008388:	00001637          	lui	a2,0x1
    8000838c:	00100593          	li	a1,1
    80008390:	00048513          	mv	a0,s1
    80008394:	00000097          	auipc	ra,0x0
    80008398:	5e4080e7          	jalr	1508(ra) # 80008978 <__memset>
    8000839c:	00093783          	ld	a5,0(s2)
    800083a0:	00f4b023          	sd	a5,0(s1)
    800083a4:	00993023          	sd	s1,0(s2)
    800083a8:	fd4498e3          	bne	s1,s4,80008378 <kinit+0x70>
    800083ac:	03813083          	ld	ra,56(sp)
    800083b0:	03013403          	ld	s0,48(sp)
    800083b4:	02813483          	ld	s1,40(sp)
    800083b8:	02013903          	ld	s2,32(sp)
    800083bc:	01813983          	ld	s3,24(sp)
    800083c0:	01013a03          	ld	s4,16(sp)
    800083c4:	00813a83          	ld	s5,8(sp)
    800083c8:	04010113          	addi	sp,sp,64
    800083cc:	00008067          	ret
    800083d0:	00001517          	auipc	a0,0x1
    800083d4:	36050513          	addi	a0,a0,864 # 80009730 <digits+0x18>
    800083d8:	fffff097          	auipc	ra,0xfffff
    800083dc:	4b4080e7          	jalr	1204(ra) # 8000788c <panic>

00000000800083e0 <freerange>:
    800083e0:	fc010113          	addi	sp,sp,-64
    800083e4:	000017b7          	lui	a5,0x1
    800083e8:	02913423          	sd	s1,40(sp)
    800083ec:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800083f0:	009504b3          	add	s1,a0,s1
    800083f4:	fffff537          	lui	a0,0xfffff
    800083f8:	02813823          	sd	s0,48(sp)
    800083fc:	02113c23          	sd	ra,56(sp)
    80008400:	03213023          	sd	s2,32(sp)
    80008404:	01313c23          	sd	s3,24(sp)
    80008408:	01413823          	sd	s4,16(sp)
    8000840c:	01513423          	sd	s5,8(sp)
    80008410:	01613023          	sd	s6,0(sp)
    80008414:	04010413          	addi	s0,sp,64
    80008418:	00a4f4b3          	and	s1,s1,a0
    8000841c:	00f487b3          	add	a5,s1,a5
    80008420:	06f5e463          	bltu	a1,a5,80008488 <freerange+0xa8>
    80008424:	00005a97          	auipc	s5,0x5
    80008428:	c6ca8a93          	addi	s5,s5,-916 # 8000d090 <end>
    8000842c:	0954e263          	bltu	s1,s5,800084b0 <freerange+0xd0>
    80008430:	01100993          	li	s3,17
    80008434:	01b99993          	slli	s3,s3,0x1b
    80008438:	0734fc63          	bgeu	s1,s3,800084b0 <freerange+0xd0>
    8000843c:	00058a13          	mv	s4,a1
    80008440:	00004917          	auipc	s2,0x4
    80008444:	91090913          	addi	s2,s2,-1776 # 8000bd50 <kmem>
    80008448:	00002b37          	lui	s6,0x2
    8000844c:	0140006f          	j	80008460 <freerange+0x80>
    80008450:	000017b7          	lui	a5,0x1
    80008454:	00f484b3          	add	s1,s1,a5
    80008458:	0554ec63          	bltu	s1,s5,800084b0 <freerange+0xd0>
    8000845c:	0534fa63          	bgeu	s1,s3,800084b0 <freerange+0xd0>
    80008460:	00001637          	lui	a2,0x1
    80008464:	00100593          	li	a1,1
    80008468:	00048513          	mv	a0,s1
    8000846c:	00000097          	auipc	ra,0x0
    80008470:	50c080e7          	jalr	1292(ra) # 80008978 <__memset>
    80008474:	00093703          	ld	a4,0(s2)
    80008478:	016487b3          	add	a5,s1,s6
    8000847c:	00e4b023          	sd	a4,0(s1)
    80008480:	00993023          	sd	s1,0(s2)
    80008484:	fcfa76e3          	bgeu	s4,a5,80008450 <freerange+0x70>
    80008488:	03813083          	ld	ra,56(sp)
    8000848c:	03013403          	ld	s0,48(sp)
    80008490:	02813483          	ld	s1,40(sp)
    80008494:	02013903          	ld	s2,32(sp)
    80008498:	01813983          	ld	s3,24(sp)
    8000849c:	01013a03          	ld	s4,16(sp)
    800084a0:	00813a83          	ld	s5,8(sp)
    800084a4:	00013b03          	ld	s6,0(sp)
    800084a8:	04010113          	addi	sp,sp,64
    800084ac:	00008067          	ret
    800084b0:	00001517          	auipc	a0,0x1
    800084b4:	28050513          	addi	a0,a0,640 # 80009730 <digits+0x18>
    800084b8:	fffff097          	auipc	ra,0xfffff
    800084bc:	3d4080e7          	jalr	980(ra) # 8000788c <panic>

00000000800084c0 <kfree>:
    800084c0:	fe010113          	addi	sp,sp,-32
    800084c4:	00813823          	sd	s0,16(sp)
    800084c8:	00113c23          	sd	ra,24(sp)
    800084cc:	00913423          	sd	s1,8(sp)
    800084d0:	02010413          	addi	s0,sp,32
    800084d4:	03451793          	slli	a5,a0,0x34
    800084d8:	04079c63          	bnez	a5,80008530 <kfree+0x70>
    800084dc:	00005797          	auipc	a5,0x5
    800084e0:	bb478793          	addi	a5,a5,-1100 # 8000d090 <end>
    800084e4:	00050493          	mv	s1,a0
    800084e8:	04f56463          	bltu	a0,a5,80008530 <kfree+0x70>
    800084ec:	01100793          	li	a5,17
    800084f0:	01b79793          	slli	a5,a5,0x1b
    800084f4:	02f57e63          	bgeu	a0,a5,80008530 <kfree+0x70>
    800084f8:	00001637          	lui	a2,0x1
    800084fc:	00100593          	li	a1,1
    80008500:	00000097          	auipc	ra,0x0
    80008504:	478080e7          	jalr	1144(ra) # 80008978 <__memset>
    80008508:	00004797          	auipc	a5,0x4
    8000850c:	84878793          	addi	a5,a5,-1976 # 8000bd50 <kmem>
    80008510:	0007b703          	ld	a4,0(a5)
    80008514:	01813083          	ld	ra,24(sp)
    80008518:	01013403          	ld	s0,16(sp)
    8000851c:	00e4b023          	sd	a4,0(s1)
    80008520:	0097b023          	sd	s1,0(a5)
    80008524:	00813483          	ld	s1,8(sp)
    80008528:	02010113          	addi	sp,sp,32
    8000852c:	00008067          	ret
    80008530:	00001517          	auipc	a0,0x1
    80008534:	20050513          	addi	a0,a0,512 # 80009730 <digits+0x18>
    80008538:	fffff097          	auipc	ra,0xfffff
    8000853c:	354080e7          	jalr	852(ra) # 8000788c <panic>

0000000080008540 <kalloc>:
    80008540:	fe010113          	addi	sp,sp,-32
    80008544:	00813823          	sd	s0,16(sp)
    80008548:	00913423          	sd	s1,8(sp)
    8000854c:	00113c23          	sd	ra,24(sp)
    80008550:	02010413          	addi	s0,sp,32
    80008554:	00003797          	auipc	a5,0x3
    80008558:	7fc78793          	addi	a5,a5,2044 # 8000bd50 <kmem>
    8000855c:	0007b483          	ld	s1,0(a5)
    80008560:	02048063          	beqz	s1,80008580 <kalloc+0x40>
    80008564:	0004b703          	ld	a4,0(s1)
    80008568:	00001637          	lui	a2,0x1
    8000856c:	00500593          	li	a1,5
    80008570:	00048513          	mv	a0,s1
    80008574:	00e7b023          	sd	a4,0(a5)
    80008578:	00000097          	auipc	ra,0x0
    8000857c:	400080e7          	jalr	1024(ra) # 80008978 <__memset>
    80008580:	01813083          	ld	ra,24(sp)
    80008584:	01013403          	ld	s0,16(sp)
    80008588:	00048513          	mv	a0,s1
    8000858c:	00813483          	ld	s1,8(sp)
    80008590:	02010113          	addi	sp,sp,32
    80008594:	00008067          	ret

0000000080008598 <initlock>:
    80008598:	ff010113          	addi	sp,sp,-16
    8000859c:	00813423          	sd	s0,8(sp)
    800085a0:	01010413          	addi	s0,sp,16
    800085a4:	00813403          	ld	s0,8(sp)
    800085a8:	00b53423          	sd	a1,8(a0)
    800085ac:	00052023          	sw	zero,0(a0)
    800085b0:	00053823          	sd	zero,16(a0)
    800085b4:	01010113          	addi	sp,sp,16
    800085b8:	00008067          	ret

00000000800085bc <acquire>:
    800085bc:	fe010113          	addi	sp,sp,-32
    800085c0:	00813823          	sd	s0,16(sp)
    800085c4:	00913423          	sd	s1,8(sp)
    800085c8:	00113c23          	sd	ra,24(sp)
    800085cc:	01213023          	sd	s2,0(sp)
    800085d0:	02010413          	addi	s0,sp,32
    800085d4:	00050493          	mv	s1,a0
    800085d8:	10002973          	csrr	s2,sstatus
    800085dc:	100027f3          	csrr	a5,sstatus
    800085e0:	ffd7f793          	andi	a5,a5,-3
    800085e4:	10079073          	csrw	sstatus,a5
    800085e8:	fffff097          	auipc	ra,0xfffff
    800085ec:	8ec080e7          	jalr	-1812(ra) # 80006ed4 <mycpu>
    800085f0:	07852783          	lw	a5,120(a0)
    800085f4:	06078e63          	beqz	a5,80008670 <acquire+0xb4>
    800085f8:	fffff097          	auipc	ra,0xfffff
    800085fc:	8dc080e7          	jalr	-1828(ra) # 80006ed4 <mycpu>
    80008600:	07852783          	lw	a5,120(a0)
    80008604:	0004a703          	lw	a4,0(s1)
    80008608:	0017879b          	addiw	a5,a5,1
    8000860c:	06f52c23          	sw	a5,120(a0)
    80008610:	04071063          	bnez	a4,80008650 <acquire+0x94>
    80008614:	00100713          	li	a4,1
    80008618:	00070793          	mv	a5,a4
    8000861c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008620:	0007879b          	sext.w	a5,a5
    80008624:	fe079ae3          	bnez	a5,80008618 <acquire+0x5c>
    80008628:	0ff0000f          	fence
    8000862c:	fffff097          	auipc	ra,0xfffff
    80008630:	8a8080e7          	jalr	-1880(ra) # 80006ed4 <mycpu>
    80008634:	01813083          	ld	ra,24(sp)
    80008638:	01013403          	ld	s0,16(sp)
    8000863c:	00a4b823          	sd	a0,16(s1)
    80008640:	00013903          	ld	s2,0(sp)
    80008644:	00813483          	ld	s1,8(sp)
    80008648:	02010113          	addi	sp,sp,32
    8000864c:	00008067          	ret
    80008650:	0104b903          	ld	s2,16(s1)
    80008654:	fffff097          	auipc	ra,0xfffff
    80008658:	880080e7          	jalr	-1920(ra) # 80006ed4 <mycpu>
    8000865c:	faa91ce3          	bne	s2,a0,80008614 <acquire+0x58>
    80008660:	00001517          	auipc	a0,0x1
    80008664:	0d850513          	addi	a0,a0,216 # 80009738 <digits+0x20>
    80008668:	fffff097          	auipc	ra,0xfffff
    8000866c:	224080e7          	jalr	548(ra) # 8000788c <panic>
    80008670:	00195913          	srli	s2,s2,0x1
    80008674:	fffff097          	auipc	ra,0xfffff
    80008678:	860080e7          	jalr	-1952(ra) # 80006ed4 <mycpu>
    8000867c:	00197913          	andi	s2,s2,1
    80008680:	07252e23          	sw	s2,124(a0)
    80008684:	f75ff06f          	j	800085f8 <acquire+0x3c>

0000000080008688 <release>:
    80008688:	fe010113          	addi	sp,sp,-32
    8000868c:	00813823          	sd	s0,16(sp)
    80008690:	00113c23          	sd	ra,24(sp)
    80008694:	00913423          	sd	s1,8(sp)
    80008698:	01213023          	sd	s2,0(sp)
    8000869c:	02010413          	addi	s0,sp,32
    800086a0:	00052783          	lw	a5,0(a0)
    800086a4:	00079a63          	bnez	a5,800086b8 <release+0x30>
    800086a8:	00001517          	auipc	a0,0x1
    800086ac:	09850513          	addi	a0,a0,152 # 80009740 <digits+0x28>
    800086b0:	fffff097          	auipc	ra,0xfffff
    800086b4:	1dc080e7          	jalr	476(ra) # 8000788c <panic>
    800086b8:	01053903          	ld	s2,16(a0)
    800086bc:	00050493          	mv	s1,a0
    800086c0:	fffff097          	auipc	ra,0xfffff
    800086c4:	814080e7          	jalr	-2028(ra) # 80006ed4 <mycpu>
    800086c8:	fea910e3          	bne	s2,a0,800086a8 <release+0x20>
    800086cc:	0004b823          	sd	zero,16(s1)
    800086d0:	0ff0000f          	fence
    800086d4:	0f50000f          	fence	iorw,ow
    800086d8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800086dc:	ffffe097          	auipc	ra,0xffffe
    800086e0:	7f8080e7          	jalr	2040(ra) # 80006ed4 <mycpu>
    800086e4:	100027f3          	csrr	a5,sstatus
    800086e8:	0027f793          	andi	a5,a5,2
    800086ec:	04079a63          	bnez	a5,80008740 <release+0xb8>
    800086f0:	07852783          	lw	a5,120(a0)
    800086f4:	02f05e63          	blez	a5,80008730 <release+0xa8>
    800086f8:	fff7871b          	addiw	a4,a5,-1
    800086fc:	06e52c23          	sw	a4,120(a0)
    80008700:	00071c63          	bnez	a4,80008718 <release+0x90>
    80008704:	07c52783          	lw	a5,124(a0)
    80008708:	00078863          	beqz	a5,80008718 <release+0x90>
    8000870c:	100027f3          	csrr	a5,sstatus
    80008710:	0027e793          	ori	a5,a5,2
    80008714:	10079073          	csrw	sstatus,a5
    80008718:	01813083          	ld	ra,24(sp)
    8000871c:	01013403          	ld	s0,16(sp)
    80008720:	00813483          	ld	s1,8(sp)
    80008724:	00013903          	ld	s2,0(sp)
    80008728:	02010113          	addi	sp,sp,32
    8000872c:	00008067          	ret
    80008730:	00001517          	auipc	a0,0x1
    80008734:	03050513          	addi	a0,a0,48 # 80009760 <digits+0x48>
    80008738:	fffff097          	auipc	ra,0xfffff
    8000873c:	154080e7          	jalr	340(ra) # 8000788c <panic>
    80008740:	00001517          	auipc	a0,0x1
    80008744:	00850513          	addi	a0,a0,8 # 80009748 <digits+0x30>
    80008748:	fffff097          	auipc	ra,0xfffff
    8000874c:	144080e7          	jalr	324(ra) # 8000788c <panic>

0000000080008750 <holding>:
    80008750:	00052783          	lw	a5,0(a0)
    80008754:	00079663          	bnez	a5,80008760 <holding+0x10>
    80008758:	00000513          	li	a0,0
    8000875c:	00008067          	ret
    80008760:	fe010113          	addi	sp,sp,-32
    80008764:	00813823          	sd	s0,16(sp)
    80008768:	00913423          	sd	s1,8(sp)
    8000876c:	00113c23          	sd	ra,24(sp)
    80008770:	02010413          	addi	s0,sp,32
    80008774:	01053483          	ld	s1,16(a0)
    80008778:	ffffe097          	auipc	ra,0xffffe
    8000877c:	75c080e7          	jalr	1884(ra) # 80006ed4 <mycpu>
    80008780:	01813083          	ld	ra,24(sp)
    80008784:	01013403          	ld	s0,16(sp)
    80008788:	40a48533          	sub	a0,s1,a0
    8000878c:	00153513          	seqz	a0,a0
    80008790:	00813483          	ld	s1,8(sp)
    80008794:	02010113          	addi	sp,sp,32
    80008798:	00008067          	ret

000000008000879c <push_off>:
    8000879c:	fe010113          	addi	sp,sp,-32
    800087a0:	00813823          	sd	s0,16(sp)
    800087a4:	00113c23          	sd	ra,24(sp)
    800087a8:	00913423          	sd	s1,8(sp)
    800087ac:	02010413          	addi	s0,sp,32
    800087b0:	100024f3          	csrr	s1,sstatus
    800087b4:	100027f3          	csrr	a5,sstatus
    800087b8:	ffd7f793          	andi	a5,a5,-3
    800087bc:	10079073          	csrw	sstatus,a5
    800087c0:	ffffe097          	auipc	ra,0xffffe
    800087c4:	714080e7          	jalr	1812(ra) # 80006ed4 <mycpu>
    800087c8:	07852783          	lw	a5,120(a0)
    800087cc:	02078663          	beqz	a5,800087f8 <push_off+0x5c>
    800087d0:	ffffe097          	auipc	ra,0xffffe
    800087d4:	704080e7          	jalr	1796(ra) # 80006ed4 <mycpu>
    800087d8:	07852783          	lw	a5,120(a0)
    800087dc:	01813083          	ld	ra,24(sp)
    800087e0:	01013403          	ld	s0,16(sp)
    800087e4:	0017879b          	addiw	a5,a5,1
    800087e8:	06f52c23          	sw	a5,120(a0)
    800087ec:	00813483          	ld	s1,8(sp)
    800087f0:	02010113          	addi	sp,sp,32
    800087f4:	00008067          	ret
    800087f8:	0014d493          	srli	s1,s1,0x1
    800087fc:	ffffe097          	auipc	ra,0xffffe
    80008800:	6d8080e7          	jalr	1752(ra) # 80006ed4 <mycpu>
    80008804:	0014f493          	andi	s1,s1,1
    80008808:	06952e23          	sw	s1,124(a0)
    8000880c:	fc5ff06f          	j	800087d0 <push_off+0x34>

0000000080008810 <pop_off>:
    80008810:	ff010113          	addi	sp,sp,-16
    80008814:	00813023          	sd	s0,0(sp)
    80008818:	00113423          	sd	ra,8(sp)
    8000881c:	01010413          	addi	s0,sp,16
    80008820:	ffffe097          	auipc	ra,0xffffe
    80008824:	6b4080e7          	jalr	1716(ra) # 80006ed4 <mycpu>
    80008828:	100027f3          	csrr	a5,sstatus
    8000882c:	0027f793          	andi	a5,a5,2
    80008830:	04079663          	bnez	a5,8000887c <pop_off+0x6c>
    80008834:	07852783          	lw	a5,120(a0)
    80008838:	02f05a63          	blez	a5,8000886c <pop_off+0x5c>
    8000883c:	fff7871b          	addiw	a4,a5,-1
    80008840:	06e52c23          	sw	a4,120(a0)
    80008844:	00071c63          	bnez	a4,8000885c <pop_off+0x4c>
    80008848:	07c52783          	lw	a5,124(a0)
    8000884c:	00078863          	beqz	a5,8000885c <pop_off+0x4c>
    80008850:	100027f3          	csrr	a5,sstatus
    80008854:	0027e793          	ori	a5,a5,2
    80008858:	10079073          	csrw	sstatus,a5
    8000885c:	00813083          	ld	ra,8(sp)
    80008860:	00013403          	ld	s0,0(sp)
    80008864:	01010113          	addi	sp,sp,16
    80008868:	00008067          	ret
    8000886c:	00001517          	auipc	a0,0x1
    80008870:	ef450513          	addi	a0,a0,-268 # 80009760 <digits+0x48>
    80008874:	fffff097          	auipc	ra,0xfffff
    80008878:	018080e7          	jalr	24(ra) # 8000788c <panic>
    8000887c:	00001517          	auipc	a0,0x1
    80008880:	ecc50513          	addi	a0,a0,-308 # 80009748 <digits+0x30>
    80008884:	fffff097          	auipc	ra,0xfffff
    80008888:	008080e7          	jalr	8(ra) # 8000788c <panic>

000000008000888c <push_on>:
    8000888c:	fe010113          	addi	sp,sp,-32
    80008890:	00813823          	sd	s0,16(sp)
    80008894:	00113c23          	sd	ra,24(sp)
    80008898:	00913423          	sd	s1,8(sp)
    8000889c:	02010413          	addi	s0,sp,32
    800088a0:	100024f3          	csrr	s1,sstatus
    800088a4:	100027f3          	csrr	a5,sstatus
    800088a8:	0027e793          	ori	a5,a5,2
    800088ac:	10079073          	csrw	sstatus,a5
    800088b0:	ffffe097          	auipc	ra,0xffffe
    800088b4:	624080e7          	jalr	1572(ra) # 80006ed4 <mycpu>
    800088b8:	07852783          	lw	a5,120(a0)
    800088bc:	02078663          	beqz	a5,800088e8 <push_on+0x5c>
    800088c0:	ffffe097          	auipc	ra,0xffffe
    800088c4:	614080e7          	jalr	1556(ra) # 80006ed4 <mycpu>
    800088c8:	07852783          	lw	a5,120(a0)
    800088cc:	01813083          	ld	ra,24(sp)
    800088d0:	01013403          	ld	s0,16(sp)
    800088d4:	0017879b          	addiw	a5,a5,1
    800088d8:	06f52c23          	sw	a5,120(a0)
    800088dc:	00813483          	ld	s1,8(sp)
    800088e0:	02010113          	addi	sp,sp,32
    800088e4:	00008067          	ret
    800088e8:	0014d493          	srli	s1,s1,0x1
    800088ec:	ffffe097          	auipc	ra,0xffffe
    800088f0:	5e8080e7          	jalr	1512(ra) # 80006ed4 <mycpu>
    800088f4:	0014f493          	andi	s1,s1,1
    800088f8:	06952e23          	sw	s1,124(a0)
    800088fc:	fc5ff06f          	j	800088c0 <push_on+0x34>

0000000080008900 <pop_on>:
    80008900:	ff010113          	addi	sp,sp,-16
    80008904:	00813023          	sd	s0,0(sp)
    80008908:	00113423          	sd	ra,8(sp)
    8000890c:	01010413          	addi	s0,sp,16
    80008910:	ffffe097          	auipc	ra,0xffffe
    80008914:	5c4080e7          	jalr	1476(ra) # 80006ed4 <mycpu>
    80008918:	100027f3          	csrr	a5,sstatus
    8000891c:	0027f793          	andi	a5,a5,2
    80008920:	04078463          	beqz	a5,80008968 <pop_on+0x68>
    80008924:	07852783          	lw	a5,120(a0)
    80008928:	02f05863          	blez	a5,80008958 <pop_on+0x58>
    8000892c:	fff7879b          	addiw	a5,a5,-1
    80008930:	06f52c23          	sw	a5,120(a0)
    80008934:	07853783          	ld	a5,120(a0)
    80008938:	00079863          	bnez	a5,80008948 <pop_on+0x48>
    8000893c:	100027f3          	csrr	a5,sstatus
    80008940:	ffd7f793          	andi	a5,a5,-3
    80008944:	10079073          	csrw	sstatus,a5
    80008948:	00813083          	ld	ra,8(sp)
    8000894c:	00013403          	ld	s0,0(sp)
    80008950:	01010113          	addi	sp,sp,16
    80008954:	00008067          	ret
    80008958:	00001517          	auipc	a0,0x1
    8000895c:	e3050513          	addi	a0,a0,-464 # 80009788 <digits+0x70>
    80008960:	fffff097          	auipc	ra,0xfffff
    80008964:	f2c080e7          	jalr	-212(ra) # 8000788c <panic>
    80008968:	00001517          	auipc	a0,0x1
    8000896c:	e0050513          	addi	a0,a0,-512 # 80009768 <digits+0x50>
    80008970:	fffff097          	auipc	ra,0xfffff
    80008974:	f1c080e7          	jalr	-228(ra) # 8000788c <panic>

0000000080008978 <__memset>:
    80008978:	ff010113          	addi	sp,sp,-16
    8000897c:	00813423          	sd	s0,8(sp)
    80008980:	01010413          	addi	s0,sp,16
    80008984:	1a060e63          	beqz	a2,80008b40 <__memset+0x1c8>
    80008988:	40a007b3          	neg	a5,a0
    8000898c:	0077f793          	andi	a5,a5,7
    80008990:	00778693          	addi	a3,a5,7
    80008994:	00b00813          	li	a6,11
    80008998:	0ff5f593          	andi	a1,a1,255
    8000899c:	fff6071b          	addiw	a4,a2,-1
    800089a0:	1b06e663          	bltu	a3,a6,80008b4c <__memset+0x1d4>
    800089a4:	1cd76463          	bltu	a4,a3,80008b6c <__memset+0x1f4>
    800089a8:	1a078e63          	beqz	a5,80008b64 <__memset+0x1ec>
    800089ac:	00b50023          	sb	a1,0(a0)
    800089b0:	00100713          	li	a4,1
    800089b4:	1ae78463          	beq	a5,a4,80008b5c <__memset+0x1e4>
    800089b8:	00b500a3          	sb	a1,1(a0)
    800089bc:	00200713          	li	a4,2
    800089c0:	1ae78a63          	beq	a5,a4,80008b74 <__memset+0x1fc>
    800089c4:	00b50123          	sb	a1,2(a0)
    800089c8:	00300713          	li	a4,3
    800089cc:	18e78463          	beq	a5,a4,80008b54 <__memset+0x1dc>
    800089d0:	00b501a3          	sb	a1,3(a0)
    800089d4:	00400713          	li	a4,4
    800089d8:	1ae78263          	beq	a5,a4,80008b7c <__memset+0x204>
    800089dc:	00b50223          	sb	a1,4(a0)
    800089e0:	00500713          	li	a4,5
    800089e4:	1ae78063          	beq	a5,a4,80008b84 <__memset+0x20c>
    800089e8:	00b502a3          	sb	a1,5(a0)
    800089ec:	00700713          	li	a4,7
    800089f0:	18e79e63          	bne	a5,a4,80008b8c <__memset+0x214>
    800089f4:	00b50323          	sb	a1,6(a0)
    800089f8:	00700e93          	li	t4,7
    800089fc:	00859713          	slli	a4,a1,0x8
    80008a00:	00e5e733          	or	a4,a1,a4
    80008a04:	01059e13          	slli	t3,a1,0x10
    80008a08:	01c76e33          	or	t3,a4,t3
    80008a0c:	01859313          	slli	t1,a1,0x18
    80008a10:	006e6333          	or	t1,t3,t1
    80008a14:	02059893          	slli	a7,a1,0x20
    80008a18:	40f60e3b          	subw	t3,a2,a5
    80008a1c:	011368b3          	or	a7,t1,a7
    80008a20:	02859813          	slli	a6,a1,0x28
    80008a24:	0108e833          	or	a6,a7,a6
    80008a28:	03059693          	slli	a3,a1,0x30
    80008a2c:	003e589b          	srliw	a7,t3,0x3
    80008a30:	00d866b3          	or	a3,a6,a3
    80008a34:	03859713          	slli	a4,a1,0x38
    80008a38:	00389813          	slli	a6,a7,0x3
    80008a3c:	00f507b3          	add	a5,a0,a5
    80008a40:	00e6e733          	or	a4,a3,a4
    80008a44:	000e089b          	sext.w	a7,t3
    80008a48:	00f806b3          	add	a3,a6,a5
    80008a4c:	00e7b023          	sd	a4,0(a5)
    80008a50:	00878793          	addi	a5,a5,8
    80008a54:	fed79ce3          	bne	a5,a3,80008a4c <__memset+0xd4>
    80008a58:	ff8e7793          	andi	a5,t3,-8
    80008a5c:	0007871b          	sext.w	a4,a5
    80008a60:	01d787bb          	addw	a5,a5,t4
    80008a64:	0ce88e63          	beq	a7,a4,80008b40 <__memset+0x1c8>
    80008a68:	00f50733          	add	a4,a0,a5
    80008a6c:	00b70023          	sb	a1,0(a4)
    80008a70:	0017871b          	addiw	a4,a5,1
    80008a74:	0cc77663          	bgeu	a4,a2,80008b40 <__memset+0x1c8>
    80008a78:	00e50733          	add	a4,a0,a4
    80008a7c:	00b70023          	sb	a1,0(a4)
    80008a80:	0027871b          	addiw	a4,a5,2
    80008a84:	0ac77e63          	bgeu	a4,a2,80008b40 <__memset+0x1c8>
    80008a88:	00e50733          	add	a4,a0,a4
    80008a8c:	00b70023          	sb	a1,0(a4)
    80008a90:	0037871b          	addiw	a4,a5,3
    80008a94:	0ac77663          	bgeu	a4,a2,80008b40 <__memset+0x1c8>
    80008a98:	00e50733          	add	a4,a0,a4
    80008a9c:	00b70023          	sb	a1,0(a4)
    80008aa0:	0047871b          	addiw	a4,a5,4
    80008aa4:	08c77e63          	bgeu	a4,a2,80008b40 <__memset+0x1c8>
    80008aa8:	00e50733          	add	a4,a0,a4
    80008aac:	00b70023          	sb	a1,0(a4)
    80008ab0:	0057871b          	addiw	a4,a5,5
    80008ab4:	08c77663          	bgeu	a4,a2,80008b40 <__memset+0x1c8>
    80008ab8:	00e50733          	add	a4,a0,a4
    80008abc:	00b70023          	sb	a1,0(a4)
    80008ac0:	0067871b          	addiw	a4,a5,6
    80008ac4:	06c77e63          	bgeu	a4,a2,80008b40 <__memset+0x1c8>
    80008ac8:	00e50733          	add	a4,a0,a4
    80008acc:	00b70023          	sb	a1,0(a4)
    80008ad0:	0077871b          	addiw	a4,a5,7
    80008ad4:	06c77663          	bgeu	a4,a2,80008b40 <__memset+0x1c8>
    80008ad8:	00e50733          	add	a4,a0,a4
    80008adc:	00b70023          	sb	a1,0(a4)
    80008ae0:	0087871b          	addiw	a4,a5,8
    80008ae4:	04c77e63          	bgeu	a4,a2,80008b40 <__memset+0x1c8>
    80008ae8:	00e50733          	add	a4,a0,a4
    80008aec:	00b70023          	sb	a1,0(a4)
    80008af0:	0097871b          	addiw	a4,a5,9
    80008af4:	04c77663          	bgeu	a4,a2,80008b40 <__memset+0x1c8>
    80008af8:	00e50733          	add	a4,a0,a4
    80008afc:	00b70023          	sb	a1,0(a4)
    80008b00:	00a7871b          	addiw	a4,a5,10
    80008b04:	02c77e63          	bgeu	a4,a2,80008b40 <__memset+0x1c8>
    80008b08:	00e50733          	add	a4,a0,a4
    80008b0c:	00b70023          	sb	a1,0(a4)
    80008b10:	00b7871b          	addiw	a4,a5,11
    80008b14:	02c77663          	bgeu	a4,a2,80008b40 <__memset+0x1c8>
    80008b18:	00e50733          	add	a4,a0,a4
    80008b1c:	00b70023          	sb	a1,0(a4)
    80008b20:	00c7871b          	addiw	a4,a5,12
    80008b24:	00c77e63          	bgeu	a4,a2,80008b40 <__memset+0x1c8>
    80008b28:	00e50733          	add	a4,a0,a4
    80008b2c:	00b70023          	sb	a1,0(a4)
    80008b30:	00d7879b          	addiw	a5,a5,13
    80008b34:	00c7f663          	bgeu	a5,a2,80008b40 <__memset+0x1c8>
    80008b38:	00f507b3          	add	a5,a0,a5
    80008b3c:	00b78023          	sb	a1,0(a5)
    80008b40:	00813403          	ld	s0,8(sp)
    80008b44:	01010113          	addi	sp,sp,16
    80008b48:	00008067          	ret
    80008b4c:	00b00693          	li	a3,11
    80008b50:	e55ff06f          	j	800089a4 <__memset+0x2c>
    80008b54:	00300e93          	li	t4,3
    80008b58:	ea5ff06f          	j	800089fc <__memset+0x84>
    80008b5c:	00100e93          	li	t4,1
    80008b60:	e9dff06f          	j	800089fc <__memset+0x84>
    80008b64:	00000e93          	li	t4,0
    80008b68:	e95ff06f          	j	800089fc <__memset+0x84>
    80008b6c:	00000793          	li	a5,0
    80008b70:	ef9ff06f          	j	80008a68 <__memset+0xf0>
    80008b74:	00200e93          	li	t4,2
    80008b78:	e85ff06f          	j	800089fc <__memset+0x84>
    80008b7c:	00400e93          	li	t4,4
    80008b80:	e7dff06f          	j	800089fc <__memset+0x84>
    80008b84:	00500e93          	li	t4,5
    80008b88:	e75ff06f          	j	800089fc <__memset+0x84>
    80008b8c:	00600e93          	li	t4,6
    80008b90:	e6dff06f          	j	800089fc <__memset+0x84>

0000000080008b94 <__memmove>:
    80008b94:	ff010113          	addi	sp,sp,-16
    80008b98:	00813423          	sd	s0,8(sp)
    80008b9c:	01010413          	addi	s0,sp,16
    80008ba0:	0e060863          	beqz	a2,80008c90 <__memmove+0xfc>
    80008ba4:	fff6069b          	addiw	a3,a2,-1
    80008ba8:	0006881b          	sext.w	a6,a3
    80008bac:	0ea5e863          	bltu	a1,a0,80008c9c <__memmove+0x108>
    80008bb0:	00758713          	addi	a4,a1,7
    80008bb4:	00a5e7b3          	or	a5,a1,a0
    80008bb8:	40a70733          	sub	a4,a4,a0
    80008bbc:	0077f793          	andi	a5,a5,7
    80008bc0:	00f73713          	sltiu	a4,a4,15
    80008bc4:	00174713          	xori	a4,a4,1
    80008bc8:	0017b793          	seqz	a5,a5
    80008bcc:	00e7f7b3          	and	a5,a5,a4
    80008bd0:	10078863          	beqz	a5,80008ce0 <__memmove+0x14c>
    80008bd4:	00900793          	li	a5,9
    80008bd8:	1107f463          	bgeu	a5,a6,80008ce0 <__memmove+0x14c>
    80008bdc:	0036581b          	srliw	a6,a2,0x3
    80008be0:	fff8081b          	addiw	a6,a6,-1
    80008be4:	02081813          	slli	a6,a6,0x20
    80008be8:	01d85893          	srli	a7,a6,0x1d
    80008bec:	00858813          	addi	a6,a1,8
    80008bf0:	00058793          	mv	a5,a1
    80008bf4:	00050713          	mv	a4,a0
    80008bf8:	01088833          	add	a6,a7,a6
    80008bfc:	0007b883          	ld	a7,0(a5)
    80008c00:	00878793          	addi	a5,a5,8
    80008c04:	00870713          	addi	a4,a4,8
    80008c08:	ff173c23          	sd	a7,-8(a4)
    80008c0c:	ff0798e3          	bne	a5,a6,80008bfc <__memmove+0x68>
    80008c10:	ff867713          	andi	a4,a2,-8
    80008c14:	02071793          	slli	a5,a4,0x20
    80008c18:	0207d793          	srli	a5,a5,0x20
    80008c1c:	00f585b3          	add	a1,a1,a5
    80008c20:	40e686bb          	subw	a3,a3,a4
    80008c24:	00f507b3          	add	a5,a0,a5
    80008c28:	06e60463          	beq	a2,a4,80008c90 <__memmove+0xfc>
    80008c2c:	0005c703          	lbu	a4,0(a1)
    80008c30:	00e78023          	sb	a4,0(a5)
    80008c34:	04068e63          	beqz	a3,80008c90 <__memmove+0xfc>
    80008c38:	0015c603          	lbu	a2,1(a1)
    80008c3c:	00100713          	li	a4,1
    80008c40:	00c780a3          	sb	a2,1(a5)
    80008c44:	04e68663          	beq	a3,a4,80008c90 <__memmove+0xfc>
    80008c48:	0025c603          	lbu	a2,2(a1)
    80008c4c:	00200713          	li	a4,2
    80008c50:	00c78123          	sb	a2,2(a5)
    80008c54:	02e68e63          	beq	a3,a4,80008c90 <__memmove+0xfc>
    80008c58:	0035c603          	lbu	a2,3(a1)
    80008c5c:	00300713          	li	a4,3
    80008c60:	00c781a3          	sb	a2,3(a5)
    80008c64:	02e68663          	beq	a3,a4,80008c90 <__memmove+0xfc>
    80008c68:	0045c603          	lbu	a2,4(a1)
    80008c6c:	00400713          	li	a4,4
    80008c70:	00c78223          	sb	a2,4(a5)
    80008c74:	00e68e63          	beq	a3,a4,80008c90 <__memmove+0xfc>
    80008c78:	0055c603          	lbu	a2,5(a1)
    80008c7c:	00500713          	li	a4,5
    80008c80:	00c782a3          	sb	a2,5(a5)
    80008c84:	00e68663          	beq	a3,a4,80008c90 <__memmove+0xfc>
    80008c88:	0065c703          	lbu	a4,6(a1)
    80008c8c:	00e78323          	sb	a4,6(a5)
    80008c90:	00813403          	ld	s0,8(sp)
    80008c94:	01010113          	addi	sp,sp,16
    80008c98:	00008067          	ret
    80008c9c:	02061713          	slli	a4,a2,0x20
    80008ca0:	02075713          	srli	a4,a4,0x20
    80008ca4:	00e587b3          	add	a5,a1,a4
    80008ca8:	f0f574e3          	bgeu	a0,a5,80008bb0 <__memmove+0x1c>
    80008cac:	02069613          	slli	a2,a3,0x20
    80008cb0:	02065613          	srli	a2,a2,0x20
    80008cb4:	fff64613          	not	a2,a2
    80008cb8:	00e50733          	add	a4,a0,a4
    80008cbc:	00c78633          	add	a2,a5,a2
    80008cc0:	fff7c683          	lbu	a3,-1(a5)
    80008cc4:	fff78793          	addi	a5,a5,-1
    80008cc8:	fff70713          	addi	a4,a4,-1
    80008ccc:	00d70023          	sb	a3,0(a4)
    80008cd0:	fec798e3          	bne	a5,a2,80008cc0 <__memmove+0x12c>
    80008cd4:	00813403          	ld	s0,8(sp)
    80008cd8:	01010113          	addi	sp,sp,16
    80008cdc:	00008067          	ret
    80008ce0:	02069713          	slli	a4,a3,0x20
    80008ce4:	02075713          	srli	a4,a4,0x20
    80008ce8:	00170713          	addi	a4,a4,1
    80008cec:	00e50733          	add	a4,a0,a4
    80008cf0:	00050793          	mv	a5,a0
    80008cf4:	0005c683          	lbu	a3,0(a1)
    80008cf8:	00178793          	addi	a5,a5,1
    80008cfc:	00158593          	addi	a1,a1,1
    80008d00:	fed78fa3          	sb	a3,-1(a5)
    80008d04:	fee798e3          	bne	a5,a4,80008cf4 <__memmove+0x160>
    80008d08:	f89ff06f          	j	80008c90 <__memmove+0xfc>

0000000080008d0c <__putc>:
    80008d0c:	fe010113          	addi	sp,sp,-32
    80008d10:	00813823          	sd	s0,16(sp)
    80008d14:	00113c23          	sd	ra,24(sp)
    80008d18:	02010413          	addi	s0,sp,32
    80008d1c:	00050793          	mv	a5,a0
    80008d20:	fef40593          	addi	a1,s0,-17
    80008d24:	00100613          	li	a2,1
    80008d28:	00000513          	li	a0,0
    80008d2c:	fef407a3          	sb	a5,-17(s0)
    80008d30:	fffff097          	auipc	ra,0xfffff
    80008d34:	b3c080e7          	jalr	-1220(ra) # 8000786c <console_write>
    80008d38:	01813083          	ld	ra,24(sp)
    80008d3c:	01013403          	ld	s0,16(sp)
    80008d40:	02010113          	addi	sp,sp,32
    80008d44:	00008067          	ret

0000000080008d48 <__getc>:
    80008d48:	fe010113          	addi	sp,sp,-32
    80008d4c:	00813823          	sd	s0,16(sp)
    80008d50:	00113c23          	sd	ra,24(sp)
    80008d54:	02010413          	addi	s0,sp,32
    80008d58:	fe840593          	addi	a1,s0,-24
    80008d5c:	00100613          	li	a2,1
    80008d60:	00000513          	li	a0,0
    80008d64:	fffff097          	auipc	ra,0xfffff
    80008d68:	ae8080e7          	jalr	-1304(ra) # 8000784c <console_read>
    80008d6c:	fe844503          	lbu	a0,-24(s0)
    80008d70:	01813083          	ld	ra,24(sp)
    80008d74:	01013403          	ld	s0,16(sp)
    80008d78:	02010113          	addi	sp,sp,32
    80008d7c:	00008067          	ret

0000000080008d80 <console_handler>:
    80008d80:	fe010113          	addi	sp,sp,-32
    80008d84:	00813823          	sd	s0,16(sp)
    80008d88:	00113c23          	sd	ra,24(sp)
    80008d8c:	00913423          	sd	s1,8(sp)
    80008d90:	02010413          	addi	s0,sp,32
    80008d94:	14202773          	csrr	a4,scause
    80008d98:	100027f3          	csrr	a5,sstatus
    80008d9c:	0027f793          	andi	a5,a5,2
    80008da0:	06079e63          	bnez	a5,80008e1c <console_handler+0x9c>
    80008da4:	00074c63          	bltz	a4,80008dbc <console_handler+0x3c>
    80008da8:	01813083          	ld	ra,24(sp)
    80008dac:	01013403          	ld	s0,16(sp)
    80008db0:	00813483          	ld	s1,8(sp)
    80008db4:	02010113          	addi	sp,sp,32
    80008db8:	00008067          	ret
    80008dbc:	0ff77713          	andi	a4,a4,255
    80008dc0:	00900793          	li	a5,9
    80008dc4:	fef712e3          	bne	a4,a5,80008da8 <console_handler+0x28>
    80008dc8:	ffffe097          	auipc	ra,0xffffe
    80008dcc:	6dc080e7          	jalr	1756(ra) # 800074a4 <plic_claim>
    80008dd0:	00a00793          	li	a5,10
    80008dd4:	00050493          	mv	s1,a0
    80008dd8:	02f50c63          	beq	a0,a5,80008e10 <console_handler+0x90>
    80008ddc:	fc0506e3          	beqz	a0,80008da8 <console_handler+0x28>
    80008de0:	00050593          	mv	a1,a0
    80008de4:	00001517          	auipc	a0,0x1
    80008de8:	8ac50513          	addi	a0,a0,-1876 # 80009690 <CONSOLE_STATUS+0x680>
    80008dec:	fffff097          	auipc	ra,0xfffff
    80008df0:	afc080e7          	jalr	-1284(ra) # 800078e8 <__printf>
    80008df4:	01013403          	ld	s0,16(sp)
    80008df8:	01813083          	ld	ra,24(sp)
    80008dfc:	00048513          	mv	a0,s1
    80008e00:	00813483          	ld	s1,8(sp)
    80008e04:	02010113          	addi	sp,sp,32
    80008e08:	ffffe317          	auipc	t1,0xffffe
    80008e0c:	6d430067          	jr	1748(t1) # 800074dc <plic_complete>
    80008e10:	fffff097          	auipc	ra,0xfffff
    80008e14:	3e0080e7          	jalr	992(ra) # 800081f0 <uartintr>
    80008e18:	fddff06f          	j	80008df4 <console_handler+0x74>
    80008e1c:	00001517          	auipc	a0,0x1
    80008e20:	97450513          	addi	a0,a0,-1676 # 80009790 <digits+0x78>
    80008e24:	fffff097          	auipc	ra,0xfffff
    80008e28:	a68080e7          	jalr	-1432(ra) # 8000788c <panic>
	...
