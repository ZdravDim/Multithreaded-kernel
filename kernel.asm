
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	d0013103          	ld	sp,-768(sp) # 8000bd00 <_GLOBAL_OFFSET_TABLE_+0x38>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	4f5060ef          	jal	ra,80006d10 <start>

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
    80001080:	531010ef          	jal	ra,80002db0 <_ZN5RiscV22handle_supervisor_trapEv>

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
    80001270:	5bc080e7          	jalr	1468(ra) # 80002828 <_ZN15MemoryAllocator20get_number_of_blocksEm>
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
    800016cc:	b10080e7          	jalr	-1264(ra) # 800031d8 <_ZN10ThreadList4freeEv>
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
    80001704:	6189b983          	ld	s3,1560(s3) # 8000bd18 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001708:	0009b483          	ld	s1,0(s3)
    old -> set_status(TCB::BLOCKED);
    8000170c:	00200593          	li	a1,2
    80001710:	00048513          	mv	a0,s1
    80001714:	00002097          	auipc	ra,0x2
    80001718:	d1c080e7          	jalr	-740(ra) # 80003430 <_ZN3TCB10set_statusENS_6StatusE>
    blocked_threads.push_back(old);
    8000171c:	00048593          	mv	a1,s1
    80001720:	00890513          	addi	a0,s2,8
    80001724:	00002097          	auipc	ra,0x2
    80001728:	9d0080e7          	jalr	-1584(ra) # 800030f4 <_ZN10ThreadList9push_backEP3TCB>
    TCB::running = Scheduler::get();
    8000172c:	00001097          	auipc	ra,0x1
    80001730:	3dc080e7          	jalr	988(ra) # 80002b08 <_ZN9Scheduler3getEv>
    80001734:	00050593          	mv	a1,a0
    80001738:	00a9b023          	sd	a0,0(s3)
    TCB::yield(old, TCB::running);
    8000173c:	00048513          	mv	a0,s1
    80001740:	00002097          	auipc	ra,0x2
    80001744:	b78080e7          	jalr	-1160(ra) # 800032b8 <_ZN3TCB5yieldEPS_S0_>
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
    80001780:	a08080e7          	jalr	-1528(ra) # 80003184 <_ZN10ThreadList12remove_firstEv>
    80001784:	00050493          	mv	s1,a0
    thread -> set_status(TCB::RUNNABLE);
    80001788:	00000593          	li	a1,0
    8000178c:	00002097          	auipc	ra,0x2
    80001790:	ca4080e7          	jalr	-860(ra) # 80003430 <_ZN3TCB10set_statusENS_6StatusE>
    Scheduler::put(thread);
    80001794:	00048513          	mv	a0,s1
    80001798:	00001097          	auipc	ra,0x1
    8000179c:	300080e7          	jalr	768(ra) # 80002a98 <_ZN9Scheduler3putEP3TCB>
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
    800017d4:	00002097          	auipc	ra,0x2
    800017d8:	8cc080e7          	jalr	-1844(ra) # 800030a0 <_ZN10ThreadList9get_firstEv>
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
    80001930:	efc080e7          	jalr	-260(ra) # 80002828 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80001934:	00001097          	auipc	ra,0x1
    80001938:	b30080e7          	jalr	-1232(ra) # 80002464 <_ZN15MemoryAllocator9mem_allocEm>
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
    800019d0:	c0c080e7          	jalr	-1012(ra) # 800025d8 <_ZN15MemoryAllocator8mem_freeEPv>
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
    80001a58:	29c7b783          	ld	a5,668(a5) # 8000bcf0 <_GLOBAL_OFFSET_TABLE_+0x28>
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
    80001a94:	a18080e7          	jalr	-1512(ra) # 800064a8 <_Z8userMainv>
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
    80001ad0:	300080e7          	jalr	768(ra) # 80008dcc <__putc>
    __putc('N');
    80001ad4:	04e00513          	li	a0,78
    80001ad8:	00007097          	auipc	ra,0x7
    80001adc:	2f4080e7          	jalr	756(ra) # 80008dcc <__putc>
    __putc(':');
    80001ae0:	03a00513          	li	a0,58
    80001ae4:	00007097          	auipc	ra,0x7
    80001ae8:	2e8080e7          	jalr	744(ra) # 80008dcc <__putc>
    __putc(' ');
    80001aec:	02000513          	li	a0,32
    80001af0:	00007097          	auipc	ra,0x7
    80001af4:	2dc080e7          	jalr	732(ra) # 80008dcc <__putc>
    if (!num) __putc('0');
    80001af8:	00090863          	beqz	s2,80001b08 <_Z11printNumberm+0x60>
    uint64 num2 = 0, zero_count = 0;
    80001afc:	00000993          	li	s3,0
    80001b00:	00000493          	li	s1,0
    80001b04:	01c0006f          	j	80001b20 <_Z11printNumberm+0x78>
    if (!num) __putc('0');
    80001b08:	03000513          	li	a0,48
    80001b0c:	00007097          	auipc	ra,0x7
    80001b10:	2c0080e7          	jalr	704(ra) # 80008dcc <__putc>
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
    80001b5c:	274080e7          	jalr	628(ra) # 80008dcc <__putc>
        num2 /= 10;
    80001b60:	0324d4b3          	divu	s1,s1,s2
    while (num2) {
    80001b64:	fe5ff06f          	j	80001b48 <_Z11printNumberm+0xa0>
    while (zero_count--) __putc('0');
    80001b68:	fff98493          	addi	s1,s3,-1
    80001b6c:	00098c63          	beqz	s3,80001b84 <_Z11printNumberm+0xdc>
    80001b70:	03000513          	li	a0,48
    80001b74:	00007097          	auipc	ra,0x7
    80001b78:	258080e7          	jalr	600(ra) # 80008dcc <__putc>
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
    80001c10:	1c0080e7          	jalr	448(ra) # 80008dcc <__putc>
        __putc('A');
    80001c14:	04100513          	li	a0,65
    80001c18:	00007097          	auipc	ra,0x7
    80001c1c:	1b4080e7          	jalr	436(ra) # 80008dcc <__putc>
        __putc(')');
    80001c20:	02900513          	li	a0,41
    80001c24:	00007097          	auipc	ra,0x7
    80001c28:	1a8080e7          	jalr	424(ra) # 80008dcc <__putc>
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
    80001cbc:	114080e7          	jalr	276(ra) # 80008dcc <__putc>
        __putc('B');
    80001cc0:	04200513          	li	a0,66
    80001cc4:	00007097          	auipc	ra,0x7
    80001cc8:	108080e7          	jalr	264(ra) # 80008dcc <__putc>
        __putc(')');
    80001ccc:	02900513          	li	a0,41
    80001cd0:	00007097          	auipc	ra,0x7
    80001cd4:	0fc080e7          	jalr	252(ra) # 80008dcc <__putc>
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
    80001d0c:	ff07b783          	ld	a5,-16(a5) # 8000bcf8 <_GLOBAL_OFFSET_TABLE_+0x30>
    __asm__ volatile ("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void RiscV::write_stvec(uint64 val) {
    __asm__ volatile ("csrw stvec, %0" : : "r"(val));
    80001d10:	10579073          	csrw	stvec,a5
    /// Initialization
    MemoryAllocator::initialize();
    80001d14:	00001097          	auipc	ra,0x1
    80001d18:	b34080e7          	jalr	-1228(ra) # 80002848 <_ZN15MemoryAllocator10initializeEv>
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
    80001d40:	fdc7b783          	ld	a5,-36(a5) # 8000bd18 <_GLOBAL_OFFSET_TABLE_+0x50>
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
    80001d90:	fe47c783          	lbu	a5,-28(a5) # 8000bd70 <_ZN3Con11initializedE>
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
    80001dbc:	faf70c23          	sb	a5,-72(a4) # 8000bd70 <_ZN3Con11initializedE>
        input_buffer = new BoundedBuffer();
    80001dc0:	21000513          	li	a0,528
    80001dc4:	00001097          	auipc	ra,0x1
    80001dc8:	ba4080e7          	jalr	-1116(ra) # 80002968 <_ZN13BoundedBuffernwEm>
    80001dcc:	00050493          	mv	s1,a0
    80001dd0:	00001097          	auipc	ra,0x1
    80001dd4:	b00080e7          	jalr	-1280(ra) # 800028d0 <_ZN13BoundedBufferC1Ev>
    80001dd8:	0000a797          	auipc	a5,0xa
    80001ddc:	fa97b023          	sd	s1,-96(a5) # 8000bd78 <_ZN3Con12input_bufferE>
        output_buffer = new BoundedBuffer();
    80001de0:	21000513          	li	a0,528
    80001de4:	00001097          	auipc	ra,0x1
    80001de8:	b84080e7          	jalr	-1148(ra) # 80002968 <_ZN13BoundedBuffernwEm>
    80001dec:	00050493          	mv	s1,a0
    80001df0:	00001097          	auipc	ra,0x1
    80001df4:	ae0080e7          	jalr	-1312(ra) # 800028d0 <_ZN13BoundedBufferC1Ev>
    80001df8:	0000a797          	auipc	a5,0xa
    80001dfc:	f897b423          	sd	s1,-120(a5) # 8000bd80 <_ZN3Con13output_bufferE>
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
    80001e24:	b78080e7          	jalr	-1160(ra) # 80002998 <_ZN13BoundedBufferdlEPv>
    80001e28:	00090513          	mv	a0,s2
    80001e2c:	0000b097          	auipc	ra,0xb
    80001e30:	0bc080e7          	jalr	188(ra) # 8000cee8 <_Unwind_Resume>
    80001e34:	00050913          	mv	s2,a0
        output_buffer = new BoundedBuffer();
    80001e38:	00048513          	mv	a0,s1
    80001e3c:	00001097          	auipc	ra,0x1
    80001e40:	b5c080e7          	jalr	-1188(ra) # 80002998 <_ZN13BoundedBufferdlEPv>
    80001e44:	00090513          	mv	a0,s2
    80001e48:	0000b097          	auipc	ra,0xb
    80001e4c:	0a0080e7          	jalr	160(ra) # 8000cee8 <_Unwind_Resume>

0000000080001e50 <_ZN3Con11putc_outputEc>:

void Con::putc_output(char c) {
    80001e50:	ff010113          	addi	sp,sp,-16
    80001e54:	00113423          	sd	ra,8(sp)
    80001e58:	00813023          	sd	s0,0(sp)
    80001e5c:	01010413          	addi	s0,sp,16
    80001e60:	00050593          	mv	a1,a0
    output_buffer -> putc(c);
    80001e64:	0000a517          	auipc	a0,0xa
    80001e68:	f1c53503          	ld	a0,-228(a0) # 8000bd80 <_ZN3Con13output_bufferE>
    80001e6c:	00001097          	auipc	ra,0x1
    80001e70:	b54080e7          	jalr	-1196(ra) # 800029c0 <_ZN13BoundedBuffer4putcEc>
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
    80001e98:	eec53503          	ld	a0,-276(a0) # 8000bd80 <_ZN3Con13output_bufferE>
    80001e9c:	00001097          	auipc	ra,0x1
    80001ea0:	b90080e7          	jalr	-1136(ra) # 80002a2c <_ZN13BoundedBuffer4getcEv>
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
    80001ecc:	eb053503          	ld	a0,-336(a0) # 8000bd78 <_ZN3Con12input_bufferE>
    80001ed0:	00001097          	auipc	ra,0x1
    80001ed4:	af0080e7          	jalr	-1296(ra) # 800029c0 <_ZN13BoundedBuffer4putcEc>
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
    80001efc:	e8053503          	ld	a0,-384(a0) # 8000bd78 <_ZN3Con12input_bufferE>
    80001f00:	00001097          	auipc	ra,0x1
    80001f04:	b2c080e7          	jalr	-1236(ra) # 80002a2c <_ZN13BoundedBuffer4getcEv>
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
    80001f80:	6a8080e7          	jalr	1704(ra) # 80003624 <_ZNK3TCB11is_finishedEv>
    80001f84:	00050a63          	beqz	a0,80001f98 <_ZN6ThreadD1Ev+0x44>
    80001f88:	0084b503          	ld	a0,8(s1)
    80001f8c:	00050663          	beqz	a0,80001f98 <_ZN6ThreadD1Ev+0x44>
    80001f90:	00001097          	auipc	ra,0x1
    80001f94:	570080e7          	jalr	1392(ra) # 80003500 <_ZN3TCBdlEPv>
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

0000000080002410 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb>:
        instance = (MemoryAllocator*) MemoryAllocator::mem_alloc(get_number_of_blocks(sizeof(MemoryAllocator)));
    }
}

/// helper function for removing element from linked list
void MemoryAllocator::removeNode(MemSeg *toRemove, MemSeg *nextSeg, bool newIsCreated, bool free_list) {
    80002410:	ff010113          	addi	sp,sp,-16
    80002414:	00813423          	sd	s0,8(sp)
    80002418:	01010413          	addi	s0,sp,16
    if (toRemove -> prev) toRemove -> prev -> next = nextSeg;
    8000241c:	00853783          	ld	a5,8(a0)
    80002420:	02078463          	beqz	a5,80002448 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb+0x38>
    80002424:	00b7b823          	sd	a1,16(a5)
    else (free_list ? freeSegHead : usedSegHead) = nextSeg;
    if (toRemove -> next) toRemove -> next -> prev = (newIsCreated) ? nextSeg : toRemove -> prev;
    80002428:	01053783          	ld	a5,16(a0)
    8000242c:	00078863          	beqz	a5,8000243c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb+0x2c>
    80002430:	00061463          	bnez	a2,80002438 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb+0x28>
    80002434:	00853583          	ld	a1,8(a0)
    80002438:	00b7b423          	sd	a1,8(a5)
}
    8000243c:	00813403          	ld	s0,8(sp)
    80002440:	01010113          	addi	sp,sp,16
    80002444:	00008067          	ret
    else (free_list ? freeSegHead : usedSegHead) = nextSeg;
    80002448:	00068863          	beqz	a3,80002458 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb+0x48>
    8000244c:	0000a797          	auipc	a5,0xa
    80002450:	92b7be23          	sd	a1,-1732(a5) # 8000bd88 <_ZN15MemoryAllocator11freeSegHeadE>
    80002454:	fd5ff06f          	j	80002428 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb+0x18>
    80002458:	0000a797          	auipc	a5,0xa
    8000245c:	92b7bc23          	sd	a1,-1736(a5) # 8000bd90 <_ZN15MemoryAllocator11usedSegHeadE>
    80002460:	fc9ff06f          	j	80002428 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb+0x18>

0000000080002464 <_ZN15MemoryAllocator9mem_allocEm>:

/// allocate `size` blocks
void *MemoryAllocator::mem_alloc(size_t size) {
    80002464:	fe010113          	addi	sp,sp,-32
    80002468:	00113c23          	sd	ra,24(sp)
    8000246c:	00813823          	sd	s0,16(sp)
    80002470:	00913423          	sd	s1,8(sp)
    80002474:	01213023          	sd	s2,0(sp)
    80002478:	02010413          	addi	s0,sp,32
    if (size <= 0) return nullptr;
    8000247c:	10050263          	beqz	a0,80002580 <_ZN15MemoryAllocator9mem_allocEm+0x11c>
    size_t bytesToAllocate = size * MEM_BLOCK_SIZE;
    80002480:	00651913          	slli	s2,a0,0x6
    MemSeg *tmp = freeSegHead;
    80002484:	0000a497          	auipc	s1,0xa
    80002488:	9044b483          	ld	s1,-1788(s1) # 8000bd88 <_ZN15MemoryAllocator11freeSegHeadE>
    while (tmp) {
    8000248c:	0c048263          	beqz	s1,80002550 <_ZN15MemoryAllocator9mem_allocEm+0xec>
        if (tmp -> size < bytesToAllocate) {
    80002490:	0004b783          	ld	a5,0(s1)
    80002494:	0527e663          	bltu	a5,s2,800024e0 <_ZN15MemoryAllocator9mem_allocEm+0x7c>
            tmp = tmp -> next;
            continue;
        }
        /// update free memory list
        size_t remaining = tmp -> size - bytesToAllocate;
    80002498:	412787b3          	sub	a5,a5,s2
        if (remaining <= sizeof(MemSeg)) removeNode(tmp, tmp->next, false, true);
    8000249c:	01800713          	li	a4,24
    800024a0:	04f76463          	bltu	a4,a5,800024e8 <_ZN15MemoryAllocator9mem_allocEm+0x84>
    800024a4:	00100693          	li	a3,1
    800024a8:	00000613          	li	a2,0
    800024ac:	0104b583          	ld	a1,16(s1)
    800024b0:	00048513          	mv	a0,s1
    800024b4:	00000097          	auipc	ra,0x0
    800024b8:	f5c080e7          	jalr	-164(ra) # 80002410 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb>
        }

        /// update used memory list
        /// insert segment after tmp2
        MemSeg* tmp2 = nullptr;
        if (usedSegHead && (char*) tmp > (char*) usedSegHead)
    800024bc:	0000a797          	auipc	a5,0xa
    800024c0:	8d47b783          	ld	a5,-1836(a5) # 8000bd90 <_ZN15MemoryAllocator11usedSegHeadE>
    800024c4:	04078a63          	beqz	a5,80002518 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
    800024c8:	0497fc63          	bgeu	a5,s1,80002520 <_ZN15MemoryAllocator9mem_allocEm+0xbc>
            for (tmp2 = usedSegHead; tmp2 -> next && (char*) tmp > (char*) (tmp2 -> next); tmp2 = tmp2 -> next);
    800024cc:	00078713          	mv	a4,a5
    800024d0:	0107b783          	ld	a5,16(a5)
    800024d4:	04078863          	beqz	a5,80002524 <_ZN15MemoryAllocator9mem_allocEm+0xc0>
    800024d8:	fe97eae3          	bltu	a5,s1,800024cc <_ZN15MemoryAllocator9mem_allocEm+0x68>
    800024dc:	0480006f          	j	80002524 <_ZN15MemoryAllocator9mem_allocEm+0xc0>
            tmp = tmp -> next;
    800024e0:	0104b483          	ld	s1,16(s1)
    while (tmp) {
    800024e4:	fa9ff06f          	j	8000248c <_ZN15MemoryAllocator9mem_allocEm+0x28>
            MemSeg* newFree = (MemSeg*) ((char*) tmp + bytesToAllocate);
    800024e8:	012485b3          	add	a1,s1,s2
            newFree -> prev = tmp -> prev;
    800024ec:	0084b703          	ld	a4,8(s1)
    800024f0:	00e5b423          	sd	a4,8(a1)
            newFree -> next = tmp -> next;
    800024f4:	0104b703          	ld	a4,16(s1)
    800024f8:	00e5b823          	sd	a4,16(a1)
            newFree -> size = remaining;
    800024fc:	00f5b023          	sd	a5,0(a1)
            removeNode(tmp, newFree, true, true);
    80002500:	00100693          	li	a3,1
    80002504:	00100613          	li	a2,1
    80002508:	00048513          	mv	a0,s1
    8000250c:	00000097          	auipc	ra,0x0
    80002510:	f04080e7          	jalr	-252(ra) # 80002410 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb>
    80002514:	fa9ff06f          	j	800024bc <_ZN15MemoryAllocator9mem_allocEm+0x58>
        MemSeg* tmp2 = nullptr;
    80002518:	00078713          	mv	a4,a5
    8000251c:	0080006f          	j	80002524 <_ZN15MemoryAllocator9mem_allocEm+0xc0>
    80002520:	00000713          	li	a4,0
        MemSeg* newUsed = (MemSeg*) tmp;
        newUsed -> size = bytesToAllocate;
    80002524:	0124b023          	sd	s2,0(s1)
        newUsed -> prev = tmp2;
    80002528:	00e4b423          	sd	a4,8(s1)
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    8000252c:	04070063          	beqz	a4,8000256c <_ZN15MemoryAllocator9mem_allocEm+0x108>
    80002530:	01073783          	ld	a5,16(a4)
    80002534:	00f4b823          	sd	a5,16(s1)
        if (tmp2) tmp2 -> next = newUsed;
    80002538:	02070e63          	beqz	a4,80002574 <_ZN15MemoryAllocator9mem_allocEm+0x110>
    8000253c:	00973823          	sd	s1,16(a4)
        else usedSegHead = newUsed;
        if (newUsed -> next) newUsed -> next -> prev = newUsed;
    80002540:	0104b783          	ld	a5,16(s1)
    80002544:	00078463          	beqz	a5,8000254c <_ZN15MemoryAllocator9mem_allocEm+0xe8>
    80002548:	0097b423          	sd	s1,8(a5)
        return (void*) ((char*)tmp + sizeof(MemSeg));
    8000254c:	01848493          	addi	s1,s1,24
    }
    return nullptr;
}
    80002550:	00048513          	mv	a0,s1
    80002554:	01813083          	ld	ra,24(sp)
    80002558:	01013403          	ld	s0,16(sp)
    8000255c:	00813483          	ld	s1,8(sp)
    80002560:	00013903          	ld	s2,0(sp)
    80002564:	02010113          	addi	sp,sp,32
    80002568:	00008067          	ret
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    8000256c:	00070793          	mv	a5,a4
    80002570:	fc5ff06f          	j	80002534 <_ZN15MemoryAllocator9mem_allocEm+0xd0>
        else usedSegHead = newUsed;
    80002574:	0000a797          	auipc	a5,0xa
    80002578:	8097be23          	sd	s1,-2020(a5) # 8000bd90 <_ZN15MemoryAllocator11usedSegHeadE>
    8000257c:	fc5ff06f          	j	80002540 <_ZN15MemoryAllocator9mem_allocEm+0xdc>
    if (size <= 0) return nullptr;
    80002580:	00000493          	li	s1,0
    80002584:	fcdff06f          	j	80002550 <_ZN15MemoryAllocator9mem_allocEm+0xec>

0000000080002588 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>:
    }
    return 0;
}

/// join free segment with next if possible
void MemoryAllocator::tryToJoin(MemSeg *seg) {
    80002588:	ff010113          	addi	sp,sp,-16
    8000258c:	00813423          	sd	s0,8(sp)
    80002590:	01010413          	addi	s0,sp,16
    if (seg -> next && (char*) seg + seg -> size == (char*) seg -> next) {
    80002594:	01053783          	ld	a5,16(a0)
    80002598:	00078863          	beqz	a5,800025a8 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    8000259c:	00053703          	ld	a4,0(a0)
    800025a0:	00e506b3          	add	a3,a0,a4
    800025a4:	00d78863          	beq	a5,a3,800025b4 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x2c>
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
        seg -> next = seg -> next -> next;
        if (seg -> next) seg -> next -> prev = seg;
    }
}
    800025a8:	00813403          	ld	s0,8(sp)
    800025ac:	01010113          	addi	sp,sp,16
    800025b0:	00008067          	ret
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
    800025b4:	0007b683          	ld	a3,0(a5)
    800025b8:	00d70733          	add	a4,a4,a3
    800025bc:	01870713          	addi	a4,a4,24
    800025c0:	00e53023          	sd	a4,0(a0)
        seg -> next = seg -> next -> next;
    800025c4:	0107b783          	ld	a5,16(a5)
    800025c8:	00f53823          	sd	a5,16(a0)
        if (seg -> next) seg -> next -> prev = seg;
    800025cc:	fc078ee3          	beqz	a5,800025a8 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    800025d0:	00a7b423          	sd	a0,8(a5)
}
    800025d4:	fd5ff06f          	j	800025a8 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>

00000000800025d8 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    800025d8:	14050a63          	beqz	a0,8000272c <_ZN15MemoryAllocator8mem_freeEPv+0x154>
int MemoryAllocator::mem_free(void *addr) {
    800025dc:	fd010113          	addi	sp,sp,-48
    800025e0:	02113423          	sd	ra,40(sp)
    800025e4:	02813023          	sd	s0,32(sp)
    800025e8:	00913c23          	sd	s1,24(sp)
    800025ec:	01213823          	sd	s2,16(sp)
    800025f0:	01313423          	sd	s3,8(sp)
    800025f4:	03010413          	addi	s0,sp,48
    800025f8:	00050913          	mv	s2,a0
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    800025fc:	00009797          	auipc	a5,0x9
    80002600:	6e47b783          	ld	a5,1764(a5) # 8000bce0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002604:	0007b783          	ld	a5,0(a5)
    80002608:	12f56663          	bltu	a0,a5,80002734 <_ZN15MemoryAllocator8mem_freeEPv+0x15c>
    8000260c:	00009797          	auipc	a5,0x9
    80002610:	7147b783          	ld	a5,1812(a5) # 8000bd20 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002614:	0007b783          	ld	a5,0(a5)
    80002618:	12a7e263          	bltu	a5,a0,8000273c <_ZN15MemoryAllocator8mem_freeEPv+0x164>
    if (!usedSegHead) return -2;
    8000261c:	00009797          	auipc	a5,0x9
    80002620:	7747b783          	ld	a5,1908(a5) # 8000bd90 <_ZN15MemoryAllocator11usedSegHeadE>
    80002624:	12078063          	beqz	a5,80002744 <_ZN15MemoryAllocator8mem_freeEPv+0x16c>
    addr = (void*) ((char*) addr - sizeof(MemSeg));
    80002628:	fe850493          	addi	s1,a0,-24
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    8000262c:	00078863          	beqz	a5,8000263c <_ZN15MemoryAllocator8mem_freeEPv+0x64>
        if (tmp == segToFree) {
    80002630:	0a978663          	beq	a5,s1,800026dc <_ZN15MemoryAllocator8mem_freeEPv+0x104>
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    80002634:	0107b783          	ld	a5,16(a5)
    80002638:	ff5ff06f          	j	8000262c <_ZN15MemoryAllocator8mem_freeEPv+0x54>
    bool found = false;
    8000263c:	00000793          	li	a5,0
    if (!found) return -3;
    80002640:	10078663          	beqz	a5,8000274c <_ZN15MemoryAllocator8mem_freeEPv+0x174>
    removeNode(segToFree, segToFree -> next, false, false);
    80002644:	00000693          	li	a3,0
    80002648:	00000613          	li	a2,0
    8000264c:	ff893583          	ld	a1,-8(s2)
    80002650:	00048513          	mv	a0,s1
    80002654:	00000097          	auipc	ra,0x0
    80002658:	dbc080e7          	jalr	-580(ra) # 80002410 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb>
    segToFree -> size += sizeof(MemSeg);
    8000265c:	fe893783          	ld	a5,-24(s2)
    80002660:	01878793          	addi	a5,a5,24
    80002664:	fef93423          	sd	a5,-24(s2)
    if (!freeSegHead) {
    80002668:	00009797          	auipc	a5,0x9
    8000266c:	7207b783          	ld	a5,1824(a5) # 8000bd88 <_ZN15MemoryAllocator11freeSegHeadE>
    80002670:	06078a63          	beqz	a5,800026e4 <_ZN15MemoryAllocator8mem_freeEPv+0x10c>
    else if ((char*) addr < (char*) freeSegHead) {
    80002674:	08f4e463          	bltu	s1,a5,800026fc <_ZN15MemoryAllocator8mem_freeEPv+0x124>
        for (tmp = freeSegHead; tmp -> next && (char*) (tmp -> next) < (char*) segToFree; tmp = tmp -> next);
    80002678:	00078993          	mv	s3,a5
    8000267c:	0107b783          	ld	a5,16(a5)
    80002680:	00078463          	beqz	a5,80002688 <_ZN15MemoryAllocator8mem_freeEPv+0xb0>
    80002684:	fe97eae3          	bltu	a5,s1,80002678 <_ZN15MemoryAllocator8mem_freeEPv+0xa0>
        segToFree -> prev = tmp;
    80002688:	ff393823          	sd	s3,-16(s2)
        segToFree -> next = tmp -> next;
    8000268c:	0109b783          	ld	a5,16(s3)
    80002690:	fef93c23          	sd	a5,-8(s2)
        tmp -> next = segToFree;
    80002694:	0099b823          	sd	s1,16(s3)
        if (segToFree -> next) segToFree -> next -> prev = segToFree;
    80002698:	ff893783          	ld	a5,-8(s2)
    8000269c:	00078463          	beqz	a5,800026a4 <_ZN15MemoryAllocator8mem_freeEPv+0xcc>
    800026a0:	0097b423          	sd	s1,8(a5)
        tryToJoin(segToFree);
    800026a4:	00048513          	mv	a0,s1
    800026a8:	00000097          	auipc	ra,0x0
    800026ac:	ee0080e7          	jalr	-288(ra) # 80002588 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
        tryToJoin(tmp);
    800026b0:	00098513          	mv	a0,s3
    800026b4:	00000097          	auipc	ra,0x0
    800026b8:	ed4080e7          	jalr	-300(ra) # 80002588 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    800026bc:	00000513          	li	a0,0
}
    800026c0:	02813083          	ld	ra,40(sp)
    800026c4:	02013403          	ld	s0,32(sp)
    800026c8:	01813483          	ld	s1,24(sp)
    800026cc:	01013903          	ld	s2,16(sp)
    800026d0:	00813983          	ld	s3,8(sp)
    800026d4:	03010113          	addi	sp,sp,48
    800026d8:	00008067          	ret
            found = true;
    800026dc:	00100793          	li	a5,1
    800026e0:	f61ff06f          	j	80002640 <_ZN15MemoryAllocator8mem_freeEPv+0x68>
        freeSegHead = segToFree;
    800026e4:	00009797          	auipc	a5,0x9
    800026e8:	6a97b223          	sd	s1,1700(a5) # 8000bd88 <_ZN15MemoryAllocator11freeSegHeadE>
        segToFree -> prev = segToFree -> next = nullptr;
    800026ec:	fe093c23          	sd	zero,-8(s2)
    800026f0:	fe093823          	sd	zero,-16(s2)
    return 0;
    800026f4:	00000513          	li	a0,0
    800026f8:	fc9ff06f          	j	800026c0 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
        segToFree -> prev = nullptr;
    800026fc:	fe093823          	sd	zero,-16(s2)
        segToFree -> next = freeSegHead;
    80002700:	00009797          	auipc	a5,0x9
    80002704:	68878793          	addi	a5,a5,1672 # 8000bd88 <_ZN15MemoryAllocator11freeSegHeadE>
    80002708:	0007b703          	ld	a4,0(a5)
    8000270c:	fee93c23          	sd	a4,-8(s2)
        freeSegHead -> prev = segToFree;
    80002710:	00973423          	sd	s1,8(a4)
        freeSegHead = segToFree;
    80002714:	0097b023          	sd	s1,0(a5)
        tryToJoin(segToFree);
    80002718:	00048513          	mv	a0,s1
    8000271c:	00000097          	auipc	ra,0x0
    80002720:	e6c080e7          	jalr	-404(ra) # 80002588 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    80002724:	00000513          	li	a0,0
    80002728:	f99ff06f          	j	800026c0 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    8000272c:	fff00513          	li	a0,-1
}
    80002730:	00008067          	ret
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    80002734:	fff00513          	li	a0,-1
    80002738:	f89ff06f          	j	800026c0 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
    8000273c:	fff00513          	li	a0,-1
    80002740:	f81ff06f          	j	800026c0 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
    if (!usedSegHead) return -2;
    80002744:	ffe00513          	li	a0,-2
    80002748:	f79ff06f          	j	800026c0 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
    if (!found) return -3;
    8000274c:	ffd00513          	li	a0,-3
    80002750:	f71ff06f          	j	800026c0 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>

0000000080002754 <_ZN15MemoryAllocator5printEv>:

void MemoryAllocator::print() {
    80002754:	fe010113          	addi	sp,sp,-32
    80002758:	00113c23          	sd	ra,24(sp)
    8000275c:	00813823          	sd	s0,16(sp)
    80002760:	00913423          	sd	s1,8(sp)
    80002764:	02010413          	addi	s0,sp,32
    __putc('\n');
    80002768:	00a00513          	li	a0,10
    8000276c:	00006097          	auipc	ra,0x6
    80002770:	660080e7          	jalr	1632(ra) # 80008dcc <__putc>
    __putc('M');
    80002774:	04d00513          	li	a0,77
    80002778:	00006097          	auipc	ra,0x6
    8000277c:	654080e7          	jalr	1620(ra) # 80008dcc <__putc>
    __putc(':');
    80002780:	03a00513          	li	a0,58
    80002784:	00006097          	auipc	ra,0x6
    80002788:	648080e7          	jalr	1608(ra) # 80008dcc <__putc>
    __putc(' ');
    8000278c:	02000513          	li	a0,32
    80002790:	00006097          	auipc	ra,0x6
    80002794:	63c080e7          	jalr	1596(ra) # 80008dcc <__putc>
    for (MemSeg* tmp = freeSegHead; tmp; tmp = tmp -> next) {
    80002798:	00009497          	auipc	s1,0x9
    8000279c:	5f04b483          	ld	s1,1520(s1) # 8000bd88 <_ZN15MemoryAllocator11freeSegHeadE>
    800027a0:	02048863          	beqz	s1,800027d0 <_ZN15MemoryAllocator5printEv+0x7c>
        printNumber(tmp -> size);
    800027a4:	0004b503          	ld	a0,0(s1)
    800027a8:	fffff097          	auipc	ra,0xfffff
    800027ac:	300080e7          	jalr	768(ra) # 80001aa8 <_Z11printNumberm>
        __putc(' ');
    800027b0:	02000513          	li	a0,32
    800027b4:	00006097          	auipc	ra,0x6
    800027b8:	618080e7          	jalr	1560(ra) # 80008dcc <__putc>
        __putc('f');
    800027bc:	06600513          	li	a0,102
    800027c0:	00006097          	auipc	ra,0x6
    800027c4:	60c080e7          	jalr	1548(ra) # 80008dcc <__putc>
    for (MemSeg* tmp = freeSegHead; tmp; tmp = tmp -> next) {
    800027c8:	0104b483          	ld	s1,16(s1)
    800027cc:	fd5ff06f          	j	800027a0 <_ZN15MemoryAllocator5printEv+0x4c>
    }
    __putc('\t');
    800027d0:	00900513          	li	a0,9
    800027d4:	00006097          	auipc	ra,0x6
    800027d8:	5f8080e7          	jalr	1528(ra) # 80008dcc <__putc>
    for (MemSeg* tmp = usedSegHead; tmp; tmp = tmp -> next) {
    800027dc:	00009497          	auipc	s1,0x9
    800027e0:	5b44b483          	ld	s1,1460(s1) # 8000bd90 <_ZN15MemoryAllocator11usedSegHeadE>
    800027e4:	02048863          	beqz	s1,80002814 <_ZN15MemoryAllocator5printEv+0xc0>
        printNumber(tmp -> size);
    800027e8:	0004b503          	ld	a0,0(s1)
    800027ec:	fffff097          	auipc	ra,0xfffff
    800027f0:	2bc080e7          	jalr	700(ra) # 80001aa8 <_Z11printNumberm>
        __putc(' ');
    800027f4:	02000513          	li	a0,32
    800027f8:	00006097          	auipc	ra,0x6
    800027fc:	5d4080e7          	jalr	1492(ra) # 80008dcc <__putc>
        __putc('u');
    80002800:	07500513          	li	a0,117
    80002804:	00006097          	auipc	ra,0x6
    80002808:	5c8080e7          	jalr	1480(ra) # 80008dcc <__putc>
    for (MemSeg* tmp = usedSegHead; tmp; tmp = tmp -> next) {
    8000280c:	0104b483          	ld	s1,16(s1)
    80002810:	fd5ff06f          	j	800027e4 <_ZN15MemoryAllocator5printEv+0x90>
    }
}
    80002814:	01813083          	ld	ra,24(sp)
    80002818:	01013403          	ld	s0,16(sp)
    8000281c:	00813483          	ld	s1,8(sp)
    80002820:	02010113          	addi	sp,sp,32
    80002824:	00008067          	ret

0000000080002828 <_ZN15MemoryAllocator20get_number_of_blocksEm>:

size_t MemoryAllocator::get_number_of_blocks(size_t size) {
    80002828:	ff010113          	addi	sp,sp,-16
    8000282c:	00813423          	sd	s0,8(sp)
    80002830:	01010413          	addi	s0,sp,16
    return (size + sizeof(MemoryAllocator::MemSeg) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80002834:	05750513          	addi	a0,a0,87
}
    80002838:	00655513          	srli	a0,a0,0x6
    8000283c:	00813403          	ld	s0,8(sp)
    80002840:	01010113          	addi	sp,sp,16
    80002844:	00008067          	ret

0000000080002848 <_ZN15MemoryAllocator10initializeEv>:
    if (!instance) {
    80002848:	00009797          	auipc	a5,0x9
    8000284c:	5507b783          	ld	a5,1360(a5) # 8000bd98 <_ZN15MemoryAllocator8instanceE>
    80002850:	00078463          	beqz	a5,80002858 <_ZN15MemoryAllocator10initializeEv+0x10>
    80002854:	00008067          	ret
void MemoryAllocator::initialize() {
    80002858:	fe010113          	addi	sp,sp,-32
    8000285c:	00113c23          	sd	ra,24(sp)
    80002860:	00813823          	sd	s0,16(sp)
    80002864:	00913423          	sd	s1,8(sp)
    80002868:	02010413          	addi	s0,sp,32
        freeSegHead = (MemSeg*) HEAP_START_ADDR;
    8000286c:	00009797          	auipc	a5,0x9
    80002870:	4747b783          	ld	a5,1140(a5) # 8000bce0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002874:	0007b783          	ld	a5,0(a5)
    80002878:	00009497          	auipc	s1,0x9
    8000287c:	51048493          	addi	s1,s1,1296 # 8000bd88 <_ZN15MemoryAllocator11freeSegHeadE>
    80002880:	00f4b023          	sd	a5,0(s1)
        freeSegHead -> size = (size_t) HEAP_END_ADDR - (size_t) HEAP_START_ADDR;
    80002884:	00009717          	auipc	a4,0x9
    80002888:	49c73703          	ld	a4,1180(a4) # 8000bd20 <_GLOBAL_OFFSET_TABLE_+0x58>
    8000288c:	00073703          	ld	a4,0(a4)
    80002890:	40f70733          	sub	a4,a4,a5
    80002894:	00e7b023          	sd	a4,0(a5)
        freeSegHead -> prev = nullptr;
    80002898:	0004b783          	ld	a5,0(s1)
    8000289c:	0007b423          	sd	zero,8(a5)
        freeSegHead -> next = nullptr;
    800028a0:	0007b823          	sd	zero,16(a5)
        instance = (MemoryAllocator*) MemoryAllocator::mem_alloc(get_number_of_blocks(sizeof(MemoryAllocator)));
    800028a4:	00100513          	li	a0,1
    800028a8:	00000097          	auipc	ra,0x0
    800028ac:	f80080e7          	jalr	-128(ra) # 80002828 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    800028b0:	00000097          	auipc	ra,0x0
    800028b4:	bb4080e7          	jalr	-1100(ra) # 80002464 <_ZN15MemoryAllocator9mem_allocEm>
    800028b8:	00a4b823          	sd	a0,16(s1)
}
    800028bc:	01813083          	ld	ra,24(sp)
    800028c0:	01013403          	ld	s0,16(sp)
    800028c4:	00813483          	ld	s1,8(sp)
    800028c8:	02010113          	addi	sp,sp,32
    800028cc:	00008067          	ret

00000000800028d0 <_ZN13BoundedBufferC1Ev>:
#include "../h/bounded_bufffer.hpp"

BoundedBuffer::BoundedBuffer() {
    800028d0:	fe010113          	addi	sp,sp,-32
    800028d4:	00113c23          	sd	ra,24(sp)
    800028d8:	00813823          	sd	s0,16(sp)
    800028dc:	00913423          	sd	s1,8(sp)
    800028e0:	02010413          	addi	s0,sp,32
    800028e4:	00050493          	mv	s1,a0
    800028e8:	00052023          	sw	zero,0(a0)
    800028ec:	00052223          	sw	zero,4(a0)
    Sem::open(&item_available, 0);
    800028f0:	00000593          	li	a1,0
    800028f4:	01050513          	addi	a0,a0,16
    800028f8:	fffff097          	auipc	ra,0xfffff
    800028fc:	054080e7          	jalr	84(ra) # 8000194c <_ZN3Sem4openEPPS_j>
    Sem::open(&space_available, CAPACITY);
    80002900:	1f400593          	li	a1,500
    80002904:	00848513          	addi	a0,s1,8
    80002908:	fffff097          	auipc	ra,0xfffff
    8000290c:	044080e7          	jalr	68(ra) # 8000194c <_ZN3Sem4openEPPS_j>
}
    80002910:	01813083          	ld	ra,24(sp)
    80002914:	01013403          	ld	s0,16(sp)
    80002918:	00813483          	ld	s1,8(sp)
    8000291c:	02010113          	addi	sp,sp,32
    80002920:	00008067          	ret

0000000080002924 <_ZN13BoundedBufferD1Ev>:

BoundedBuffer::~BoundedBuffer() {
    80002924:	fe010113          	addi	sp,sp,-32
    80002928:	00113c23          	sd	ra,24(sp)
    8000292c:	00813823          	sd	s0,16(sp)
    80002930:	00913423          	sd	s1,8(sp)
    80002934:	02010413          	addi	s0,sp,32
    80002938:	00050493          	mv	s1,a0
    Sem::close(item_available);
    8000293c:	01053503          	ld	a0,16(a0)
    80002940:	fffff097          	auipc	ra,0xfffff
    80002944:	e74080e7          	jalr	-396(ra) # 800017b4 <_ZN3Sem5closeEPS_>
    Sem::close(space_available);
    80002948:	0084b503          	ld	a0,8(s1)
    8000294c:	fffff097          	auipc	ra,0xfffff
    80002950:	e68080e7          	jalr	-408(ra) # 800017b4 <_ZN3Sem5closeEPS_>
}
    80002954:	01813083          	ld	ra,24(sp)
    80002958:	01013403          	ld	s0,16(sp)
    8000295c:	00813483          	ld	s1,8(sp)
    80002960:	02010113          	addi	sp,sp,32
    80002964:	00008067          	ret

0000000080002968 <_ZN13BoundedBuffernwEm>:

void *BoundedBuffer::operator new(size_t size) {
    80002968:	ff010113          	addi	sp,sp,-16
    8000296c:	00113423          	sd	ra,8(sp)
    80002970:	00813023          	sd	s0,0(sp)
    80002974:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    80002978:	00000097          	auipc	ra,0x0
    8000297c:	eb0080e7          	jalr	-336(ra) # 80002828 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80002980:	00000097          	auipc	ra,0x0
    80002984:	ae4080e7          	jalr	-1308(ra) # 80002464 <_ZN15MemoryAllocator9mem_allocEm>
}
    80002988:	00813083          	ld	ra,8(sp)
    8000298c:	00013403          	ld	s0,0(sp)
    80002990:	01010113          	addi	sp,sp,16
    80002994:	00008067          	ret

0000000080002998 <_ZN13BoundedBufferdlEPv>:

void BoundedBuffer::operator delete(void *addr) {
    80002998:	ff010113          	addi	sp,sp,-16
    8000299c:	00113423          	sd	ra,8(sp)
    800029a0:	00813023          	sd	s0,0(sp)
    800029a4:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    800029a8:	00000097          	auipc	ra,0x0
    800029ac:	c30080e7          	jalr	-976(ra) # 800025d8 <_ZN15MemoryAllocator8mem_freeEPv>
}
    800029b0:	00813083          	ld	ra,8(sp)
    800029b4:	00013403          	ld	s0,0(sp)
    800029b8:	01010113          	addi	sp,sp,16
    800029bc:	00008067          	ret

00000000800029c0 <_ZN13BoundedBuffer4putcEc>:

void BoundedBuffer::putc(char c) {
    800029c0:	fe010113          	addi	sp,sp,-32
    800029c4:	00113c23          	sd	ra,24(sp)
    800029c8:	00813823          	sd	s0,16(sp)
    800029cc:	00913423          	sd	s1,8(sp)
    800029d0:	01213023          	sd	s2,0(sp)
    800029d4:	02010413          	addi	s0,sp,32
    800029d8:	00050493          	mv	s1,a0
    800029dc:	00058913          	mv	s2,a1
    Sem::wait(space_available);
    800029e0:	00853503          	ld	a0,8(a0)
    800029e4:	fffff097          	auipc	ra,0xfffff
    800029e8:	e3c080e7          	jalr	-452(ra) # 80001820 <_ZN3Sem4waitEPS_>
    array[tail] = c;
    800029ec:	0044a783          	lw	a5,4(s1)
    800029f0:	00f48733          	add	a4,s1,a5
    800029f4:	01270c23          	sb	s2,24(a4)
    tail = (tail + 1) % CAPACITY;
    800029f8:	0017879b          	addiw	a5,a5,1
    800029fc:	1f400713          	li	a4,500
    80002a00:	02e7e7bb          	remw	a5,a5,a4
    80002a04:	00f4a223          	sw	a5,4(s1)
    Sem::signal(item_available);
    80002a08:	0104b503          	ld	a0,16(s1)
    80002a0c:	fffff097          	auipc	ra,0xfffff
    80002a10:	e68080e7          	jalr	-408(ra) # 80001874 <_ZN3Sem6signalEPS_>
}
    80002a14:	01813083          	ld	ra,24(sp)
    80002a18:	01013403          	ld	s0,16(sp)
    80002a1c:	00813483          	ld	s1,8(sp)
    80002a20:	00013903          	ld	s2,0(sp)
    80002a24:	02010113          	addi	sp,sp,32
    80002a28:	00008067          	ret

0000000080002a2c <_ZN13BoundedBuffer4getcEv>:

char BoundedBuffer::getc() {
    80002a2c:	fe010113          	addi	sp,sp,-32
    80002a30:	00113c23          	sd	ra,24(sp)
    80002a34:	00813823          	sd	s0,16(sp)
    80002a38:	00913423          	sd	s1,8(sp)
    80002a3c:	01213023          	sd	s2,0(sp)
    80002a40:	02010413          	addi	s0,sp,32
    80002a44:	00050493          	mv	s1,a0
    Sem::wait(item_available);
    80002a48:	01053503          	ld	a0,16(a0)
    80002a4c:	fffff097          	auipc	ra,0xfffff
    80002a50:	dd4080e7          	jalr	-556(ra) # 80001820 <_ZN3Sem4waitEPS_>
    char c = array[head];
    80002a54:	0004a783          	lw	a5,0(s1)
    80002a58:	00f48733          	add	a4,s1,a5
    80002a5c:	01874903          	lbu	s2,24(a4)
    head = (head + 1) % CAPACITY;
    80002a60:	0017879b          	addiw	a5,a5,1
    80002a64:	1f400713          	li	a4,500
    80002a68:	02e7e7bb          	remw	a5,a5,a4
    80002a6c:	00f4a023          	sw	a5,0(s1)
    Sem::signal(space_available);
    80002a70:	0084b503          	ld	a0,8(s1)
    80002a74:	fffff097          	auipc	ra,0xfffff
    80002a78:	e00080e7          	jalr	-512(ra) # 80001874 <_ZN3Sem6signalEPS_>
    return c;
}
    80002a7c:	00090513          	mv	a0,s2
    80002a80:	01813083          	ld	ra,24(sp)
    80002a84:	01013403          	ld	s0,16(sp)
    80002a88:	00813483          	ld	s1,8(sp)
    80002a8c:	00013903          	ld	s2,0(sp)
    80002a90:	02010113          	addi	sp,sp,32
    80002a94:	00008067          	ret

0000000080002a98 <_ZN9Scheduler3putEP3TCB>:

TCB* Scheduler::head_ready = nullptr;
TCB* Scheduler::tail_ready = nullptr;
TCB* Scheduler::head_sleeping = nullptr;

void Scheduler::put(TCB *thread) {
    80002a98:	fe010113          	addi	sp,sp,-32
    80002a9c:	00113c23          	sd	ra,24(sp)
    80002aa0:	00813823          	sd	s0,16(sp)
    80002aa4:	00913423          	sd	s1,8(sp)
    80002aa8:	02010413          	addi	s0,sp,32
    80002aac:	00050493          	mv	s1,a0
    if (tail_ready) {
    80002ab0:	00009517          	auipc	a0,0x9
    80002ab4:	2f053503          	ld	a0,752(a0) # 8000bda0 <_ZN9Scheduler10tail_readyE>
    80002ab8:	02050e63          	beqz	a0,80002af4 <_ZN9Scheduler3putEP3TCB+0x5c>
        tail_ready -> set_next_ready(thread);
    80002abc:	00048593          	mv	a1,s1
    80002ac0:	00001097          	auipc	ra,0x1
    80002ac4:	8e4080e7          	jalr	-1820(ra) # 800033a4 <_ZN3TCB14set_next_readyEPS_>
        tail_ready = thread;
    80002ac8:	00009797          	auipc	a5,0x9
    80002acc:	2c97bc23          	sd	s1,728(a5) # 8000bda0 <_ZN9Scheduler10tail_readyE>
    }
    else head_ready = tail_ready = thread;
    thread -> set_next_ready(nullptr);
    80002ad0:	00000593          	li	a1,0
    80002ad4:	00048513          	mv	a0,s1
    80002ad8:	00001097          	auipc	ra,0x1
    80002adc:	8cc080e7          	jalr	-1844(ra) # 800033a4 <_ZN3TCB14set_next_readyEPS_>
}
    80002ae0:	01813083          	ld	ra,24(sp)
    80002ae4:	01013403          	ld	s0,16(sp)
    80002ae8:	00813483          	ld	s1,8(sp)
    80002aec:	02010113          	addi	sp,sp,32
    80002af0:	00008067          	ret
    else head_ready = tail_ready = thread;
    80002af4:	00009797          	auipc	a5,0x9
    80002af8:	2ac78793          	addi	a5,a5,684 # 8000bda0 <_ZN9Scheduler10tail_readyE>
    80002afc:	0097b023          	sd	s1,0(a5)
    80002b00:	0097b423          	sd	s1,8(a5)
    80002b04:	fcdff06f          	j	80002ad0 <_ZN9Scheduler3putEP3TCB+0x38>

0000000080002b08 <_ZN9Scheduler3getEv>:

TCB* Scheduler::get() {
    80002b08:	fe010113          	addi	sp,sp,-32
    80002b0c:	00113c23          	sd	ra,24(sp)
    80002b10:	00813823          	sd	s0,16(sp)
    80002b14:	00913423          	sd	s1,8(sp)
    80002b18:	02010413          	addi	s0,sp,32
    if (!head_ready) return nullptr;
    80002b1c:	00009497          	auipc	s1,0x9
    80002b20:	28c4b483          	ld	s1,652(s1) # 8000bda8 <_ZN9Scheduler10head_readyE>
    80002b24:	02048663          	beqz	s1,80002b50 <_ZN9Scheduler3getEv+0x48>
    TCB *tmp = head_ready;
    head_ready = head_ready -> get_next_ready();
    80002b28:	00048513          	mv	a0,s1
    80002b2c:	00001097          	auipc	ra,0x1
    80002b30:	85c080e7          	jalr	-1956(ra) # 80003388 <_ZNK3TCB14get_next_readyEv>
    80002b34:	00009797          	auipc	a5,0x9
    80002b38:	26a7ba23          	sd	a0,628(a5) # 8000bda8 <_ZN9Scheduler10head_readyE>
    if (!head_ready) tail_ready = nullptr;
    80002b3c:	02050663          	beqz	a0,80002b68 <_ZN9Scheduler3getEv+0x60>
    tmp -> set_next_ready(nullptr);
    80002b40:	00000593          	li	a1,0
    80002b44:	00048513          	mv	a0,s1
    80002b48:	00001097          	auipc	ra,0x1
    80002b4c:	85c080e7          	jalr	-1956(ra) # 800033a4 <_ZN3TCB14set_next_readyEPS_>
    return tmp;
}
    80002b50:	00048513          	mv	a0,s1
    80002b54:	01813083          	ld	ra,24(sp)
    80002b58:	01013403          	ld	s0,16(sp)
    80002b5c:	00813483          	ld	s1,8(sp)
    80002b60:	02010113          	addi	sp,sp,32
    80002b64:	00008067          	ret
    if (!head_ready) tail_ready = nullptr;
    80002b68:	00009797          	auipc	a5,0x9
    80002b6c:	2207bc23          	sd	zero,568(a5) # 8000bda0 <_ZN9Scheduler10tail_readyE>
    80002b70:	fd1ff06f          	j	80002b40 <_ZN9Scheduler3getEv+0x38>

0000000080002b74 <_ZN9Scheduler13change_threadEv>:
    thread -> set_next_sleeping(nullptr);
    change_thread();
    return 0;
}

void Scheduler::change_thread() {
    80002b74:	fe010113          	addi	sp,sp,-32
    80002b78:	00113c23          	sd	ra,24(sp)
    80002b7c:	00813823          	sd	s0,16(sp)
    80002b80:	00913423          	sd	s1,8(sp)
    80002b84:	01213023          	sd	s2,0(sp)
    80002b88:	02010413          	addi	s0,sp,32
    TCB* old = TCB::running;
    80002b8c:	00009917          	auipc	s2,0x9
    80002b90:	18c93903          	ld	s2,396(s2) # 8000bd18 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002b94:	00093483          	ld	s1,0(s2)
    old -> set_status(TCB::SLEEPING);
    80002b98:	00100593          	li	a1,1
    80002b9c:	00048513          	mv	a0,s1
    80002ba0:	00001097          	auipc	ra,0x1
    80002ba4:	890080e7          	jalr	-1904(ra) # 80003430 <_ZN3TCB10set_statusENS_6StatusE>
    TCB::running = Scheduler::get();
    80002ba8:	00000097          	auipc	ra,0x0
    80002bac:	f60080e7          	jalr	-160(ra) # 80002b08 <_ZN9Scheduler3getEv>
    80002bb0:	00a93023          	sd	a0,0(s2)
    if (old != TCB::running) TCB::yield(old, TCB::running);
    80002bb4:	00a48a63          	beq	s1,a0,80002bc8 <_ZN9Scheduler13change_threadEv+0x54>
    80002bb8:	00050593          	mv	a1,a0
    80002bbc:	00048513          	mv	a0,s1
    80002bc0:	00000097          	auipc	ra,0x0
    80002bc4:	6f8080e7          	jalr	1784(ra) # 800032b8 <_ZN3TCB5yieldEPS_S0_>
}
    80002bc8:	01813083          	ld	ra,24(sp)
    80002bcc:	01013403          	ld	s0,16(sp)
    80002bd0:	00813483          	ld	s1,8(sp)
    80002bd4:	00013903          	ld	s2,0(sp)
    80002bd8:	02010113          	addi	sp,sp,32
    80002bdc:	00008067          	ret

0000000080002be0 <_ZN9Scheduler12put_to_sleepEm>:
int Scheduler::put_to_sleep(time_t time) {
    80002be0:	fc010113          	addi	sp,sp,-64
    80002be4:	02113c23          	sd	ra,56(sp)
    80002be8:	02813823          	sd	s0,48(sp)
    80002bec:	02913423          	sd	s1,40(sp)
    80002bf0:	03213023          	sd	s2,32(sp)
    80002bf4:	01313c23          	sd	s3,24(sp)
    80002bf8:	01413823          	sd	s4,16(sp)
    80002bfc:	01513423          	sd	s5,8(sp)
    80002c00:	04010413          	addi	s0,sp,64
    80002c04:	00050993          	mv	s3,a0
    TCB* thread = TCB::running;
    80002c08:	00009797          	auipc	a5,0x9
    80002c0c:	1107b783          	ld	a5,272(a5) # 8000bd18 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002c10:	0007ba83          	ld	s5,0(a5)
    if (!head_sleeping) {
    80002c14:	00009497          	auipc	s1,0x9
    80002c18:	19c4b483          	ld	s1,412(s1) # 8000bdb0 <_ZN9Scheduler13head_sleepingE>
    80002c1c:	02048e63          	beqz	s1,80002c58 <_ZN9Scheduler12put_to_sleepEm+0x78>
    time_t current_time = 0;
    80002c20:	00000913          	li	s2,0
    TCB* tmp = head_sleeping, *prev = nullptr;
    80002c24:	00000a13          	li	s4,0
    while (tmp) {
    80002c28:	0e048063          	beqz	s1,80002d08 <_ZN9Scheduler12put_to_sleepEm+0x128>
        current_time += tmp -> get_time_to_sleep();
    80002c2c:	00048513          	mv	a0,s1
    80002c30:	00000097          	auipc	ra,0x0
    80002c34:	7e4080e7          	jalr	2020(ra) # 80003414 <_ZNK3TCB17get_time_to_sleepEv>
    80002c38:	00a90933          	add	s2,s2,a0
        if (current_time > time) {
    80002c3c:	0529e863          	bltu	s3,s2,80002c8c <_ZN9Scheduler12put_to_sleepEm+0xac>
        tmp = tmp -> get_next_sleeping();
    80002c40:	00048513          	mv	a0,s1
    80002c44:	00000097          	auipc	ra,0x0
    80002c48:	798080e7          	jalr	1944(ra) # 800033dc <_ZNK3TCB17get_next_sleepingEv>
        prev = tmp;
    80002c4c:	00048a13          	mv	s4,s1
        tmp = tmp -> get_next_sleeping();
    80002c50:	00050493          	mv	s1,a0
    while (tmp) {
    80002c54:	fd5ff06f          	j	80002c28 <_ZN9Scheduler12put_to_sleepEm+0x48>
        head_sleeping = thread;
    80002c58:	00009797          	auipc	a5,0x9
    80002c5c:	1557bc23          	sd	s5,344(a5) # 8000bdb0 <_ZN9Scheduler13head_sleepingE>
        thread -> set_next_sleeping(nullptr);
    80002c60:	00000593          	li	a1,0
    80002c64:	000a8513          	mv	a0,s5
    80002c68:	00000097          	auipc	ra,0x0
    80002c6c:	758080e7          	jalr	1880(ra) # 800033c0 <_ZN3TCB17set_next_sleepingEPS_>
        thread -> set_time_to_sleep(time);
    80002c70:	00098593          	mv	a1,s3
    80002c74:	000a8513          	mv	a0,s5
    80002c78:	00000097          	auipc	ra,0x0
    80002c7c:	780080e7          	jalr	1920(ra) # 800033f8 <_ZN3TCB17set_time_to_sleepEm>
        change_thread();
    80002c80:	00000097          	auipc	ra,0x0
    80002c84:	ef4080e7          	jalr	-268(ra) # 80002b74 <_ZN9Scheduler13change_threadEv>
        return 0;
    80002c88:	0b80006f          	j	80002d40 <_ZN9Scheduler12put_to_sleepEm+0x160>
            time_t new_time = time - (current_time - tmp -> get_time_to_sleep());
    80002c8c:	00048513          	mv	a0,s1
    80002c90:	00000097          	auipc	ra,0x0
    80002c94:	784080e7          	jalr	1924(ra) # 80003414 <_ZNK3TCB17get_time_to_sleepEv>
    80002c98:	41250933          	sub	s2,a0,s2
    80002c9c:	013909b3          	add	s3,s2,s3
            thread -> set_time_to_sleep(new_time);
    80002ca0:	00098593          	mv	a1,s3
    80002ca4:	000a8513          	mv	a0,s5
    80002ca8:	00000097          	auipc	ra,0x0
    80002cac:	750080e7          	jalr	1872(ra) # 800033f8 <_ZN3TCB17set_time_to_sleepEm>
            thread -> set_next_sleeping(tmp);
    80002cb0:	00048593          	mv	a1,s1
    80002cb4:	000a8513          	mv	a0,s5
    80002cb8:	00000097          	auipc	ra,0x0
    80002cbc:	708080e7          	jalr	1800(ra) # 800033c0 <_ZN3TCB17set_next_sleepingEPS_>
            if (prev) prev -> set_next_sleeping(thread);
    80002cc0:	020a0e63          	beqz	s4,80002cfc <_ZN9Scheduler12put_to_sleepEm+0x11c>
    80002cc4:	000a8593          	mv	a1,s5
    80002cc8:	000a0513          	mv	a0,s4
    80002ccc:	00000097          	auipc	ra,0x0
    80002cd0:	6f4080e7          	jalr	1780(ra) # 800033c0 <_ZN3TCB17set_next_sleepingEPS_>
            tmp -> set_time_to_sleep(tmp -> get_time_to_sleep() - new_time);
    80002cd4:	00048513          	mv	a0,s1
    80002cd8:	00000097          	auipc	ra,0x0
    80002cdc:	73c080e7          	jalr	1852(ra) # 80003414 <_ZNK3TCB17get_time_to_sleepEv>
    80002ce0:	413505b3          	sub	a1,a0,s3
    80002ce4:	00048513          	mv	a0,s1
    80002ce8:	00000097          	auipc	ra,0x0
    80002cec:	710080e7          	jalr	1808(ra) # 800033f8 <_ZN3TCB17set_time_to_sleepEm>
            change_thread();
    80002cf0:	00000097          	auipc	ra,0x0
    80002cf4:	e84080e7          	jalr	-380(ra) # 80002b74 <_ZN9Scheduler13change_threadEv>
            return 0;
    80002cf8:	0480006f          	j	80002d40 <_ZN9Scheduler12put_to_sleepEm+0x160>
            else head_sleeping = thread;
    80002cfc:	00009797          	auipc	a5,0x9
    80002d00:	0b57ba23          	sd	s5,180(a5) # 8000bdb0 <_ZN9Scheduler13head_sleepingE>
    80002d04:	fd1ff06f          	j	80002cd4 <_ZN9Scheduler12put_to_sleepEm+0xf4>
    thread -> set_time_to_sleep(time - current_time);
    80002d08:	412985b3          	sub	a1,s3,s2
    80002d0c:	000a8513          	mv	a0,s5
    80002d10:	00000097          	auipc	ra,0x0
    80002d14:	6e8080e7          	jalr	1768(ra) # 800033f8 <_ZN3TCB17set_time_to_sleepEm>
    prev -> set_next_sleeping(thread);
    80002d18:	000a8593          	mv	a1,s5
    80002d1c:	000a0513          	mv	a0,s4
    80002d20:	00000097          	auipc	ra,0x0
    80002d24:	6a0080e7          	jalr	1696(ra) # 800033c0 <_ZN3TCB17set_next_sleepingEPS_>
    thread -> set_next_sleeping(nullptr);
    80002d28:	00000593          	li	a1,0
    80002d2c:	000a8513          	mv	a0,s5
    80002d30:	00000097          	auipc	ra,0x0
    80002d34:	690080e7          	jalr	1680(ra) # 800033c0 <_ZN3TCB17set_next_sleepingEPS_>
    change_thread();
    80002d38:	00000097          	auipc	ra,0x0
    80002d3c:	e3c080e7          	jalr	-452(ra) # 80002b74 <_ZN9Scheduler13change_threadEv>
}
    80002d40:	00000513          	li	a0,0
    80002d44:	03813083          	ld	ra,56(sp)
    80002d48:	03013403          	ld	s0,48(sp)
    80002d4c:	02813483          	ld	s1,40(sp)
    80002d50:	02013903          	ld	s2,32(sp)
    80002d54:	01813983          	ld	s3,24(sp)
    80002d58:	01013a03          	ld	s4,16(sp)
    80002d5c:	00813a83          	ld	s5,8(sp)
    80002d60:	04010113          	addi	sp,sp,64
    80002d64:	00008067          	ret

0000000080002d68 <_ZN5RiscV10popSppSpieEv>:
    SUPERVISOR_INTERRUPT = 0x0000000000000009UL,
};

/// used in thread wrapper function when initializing thread because thread stack is empty
/// pc = (sepc = ra)
void RiscV::popSppSpie() {
    80002d68:	ff010113          	addi	sp,sp,-16
    80002d6c:	00813423          	sd	s0,8(sp)
    80002d70:	01010413          	addi	s0,sp,16
    /// conditionally return to User mode
    if (TCB::running -> function_body && TCB::running->function_body != kernelConsoleOutput) mc_sstatus(SSTATUS_SPP);
    80002d74:	00009797          	auipc	a5,0x9
    80002d78:	fa47b783          	ld	a5,-92(a5) # 8000bd18 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002d7c:	0007b783          	ld	a5,0(a5)
    80002d80:	0207b783          	ld	a5,32(a5)
    80002d84:	00078c63          	beqz	a5,80002d9c <_ZN5RiscV10popSppSpieEv+0x34>
    80002d88:	00009717          	auipc	a4,0x9
    80002d8c:	f8873703          	ld	a4,-120(a4) # 8000bd10 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002d90:	00e78663          	beq	a5,a4,80002d9c <_ZN5RiscV10popSppSpieEv+0x34>
}

inline void RiscV::mc_sstatus(uint64 mask) {
    __asm__ volatile ("csrc sstatus, %0" : : "r"(mask));
    80002d94:	10000793          	li	a5,256
    80002d98:	1007b073          	csrc	sstatus,a5
    __asm__ volatile("csrw sepc, ra");
    80002d9c:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80002da0:	10200073          	sret
}
    80002da4:	00813403          	ld	s0,8(sp)
    80002da8:	01010113          	addi	sp,sp,16
    80002dac:	00008067          	ret

0000000080002db0 <_ZN5RiscV22handle_supervisor_trapEv>:

/// interrupt handler
void RiscV::handle_supervisor_trap() {
    80002db0:	f9010113          	addi	sp,sp,-112
    80002db4:	06113423          	sd	ra,104(sp)
    80002db8:	06813023          	sd	s0,96(sp)
    80002dbc:	04913c23          	sd	s1,88(sp)
    80002dc0:	05213823          	sd	s2,80(sp)
    80002dc4:	05313423          	sd	s3,72(sp)
    80002dc8:	07010413          	addi	s0,sp,112
    /// read values from registers
    uint64 syscall_code, a1, a2, a3, a4;
    __asm__ volatile("mv %0, a0" : "=r"(syscall_code));
    80002dcc:	00050793          	mv	a5,a0
    __asm__ volatile("mv %0, a1" : "=r"(a1));
    80002dd0:	00058513          	mv	a0,a1
    __asm__ volatile("mv %0, a2" : "=r"(a2));
    80002dd4:	00060593          	mv	a1,a2
    __asm__ volatile("mv %0, a3" : "=r"(a3));
    80002dd8:	00068613          	mv	a2,a3
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    80002ddc:	00070693          	mv	a3,a4
    __asm__ volatile ("csrr %0, scause" : "=r"(scause));
    80002de0:	14202773          	csrr	a4,scause
    80002de4:	f8e43c23          	sd	a4,-104(s0)
    return scause;
    80002de8:	f9843703          	ld	a4,-104(s0)

    uint64 scause = read_scause();

    /// interrupt from supervisor / user mode
    if (scause == USER_INTERRUPT || scause == SUPERVISOR_INTERRUPT) {
    80002dec:	ff870893          	addi	a7,a4,-8
    80002df0:	00100813          	li	a6,1
    80002df4:	07187863          	bgeu	a6,a7,80002e64 <_ZN5RiscV22handle_supervisor_trapEv+0xb4>
        write_sepc(sepc);
        write_sstatus(sstatus);
    }

    /// interrupt caused by Timer
    else if (scause == SOFTWARE_INTERRUPT) {
    80002df8:	fff00793          	li	a5,-1
    80002dfc:	03f79793          	slli	a5,a5,0x3f
    80002e00:	00178793          	addi	a5,a5,1
    80002e04:	16f70863          	beq	a4,a5,80002f74 <_ZN5RiscV22handle_supervisor_trapEv+0x1c4>
            write_sepc(sepc);
        }
    }

    /// External interrupt (Console)
    else if (scause == HARDWARE_INTERRUPT) {
    80002e08:	fff00793          	li	a5,-1
    80002e0c:	03f79793          	slli	a5,a5,0x3f
    80002e10:	00978793          	addi	a5,a5,9
    80002e14:	24f71863          	bne	a4,a5,80003064 <_ZN5RiscV22handle_supervisor_trapEv+0x2b4>
    __asm__ volatile ("csrr %0, sepc" : "=r"(sepc));
    80002e18:	141027f3          	csrr	a5,sepc
    80002e1c:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80002e20:	fc843983          	ld	s3,-56(s0)
}

inline uint64 RiscV::read_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    80002e24:	100027f3          	csrr	a5,sstatus
    80002e28:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80002e2c:	fc043903          	ld	s2,-64(s0)
        uint64 sepc = read_sepc();
        uint64 sstatus = read_sstatus();
        int irq = plic_claim();
    80002e30:	00004097          	auipc	ra,0x4
    80002e34:	734080e7          	jalr	1844(ra) # 80007564 <plic_claim>
    80002e38:	00050493          	mv	s1,a0
        if (irq == CONSOLE_IRQ) {
    80002e3c:	00a00793          	li	a5,10
    80002e40:	1ef50863          	beq	a0,a5,80003030 <_ZN5RiscV22handle_supervisor_trapEv+0x280>
            while (*(char *) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT) {
                char c = *(char *) CONSOLE_RX_DATA;
                Con::putc_input(c);
            }
        }
        plic_complete(irq);
    80002e44:	00048513          	mv	a0,s1
    80002e48:	00004097          	auipc	ra,0x4
    80002e4c:	754080e7          	jalr	1876(ra) # 8000759c <plic_complete>
    __asm__ volatile ("csrw sepc, %0" : : "r"(val));
    80002e50:	14199073          	csrw	sepc,s3
}

inline void RiscV::write_sstatus(uint64 val) {
    __asm__ volatile ("csrw sstatus, %0" : : "r"(val));
    80002e54:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrc sip, %0" : : "r"(mask));
    80002e58:	20000793          	li	a5,512
    80002e5c:	1447b073          	csrc	sip,a5
}
    80002e60:	0540006f          	j	80002eb4 <_ZN5RiscV22handle_supervisor_trapEv+0x104>
    __asm__ volatile ("csrr %0, sepc" : "=r"(sepc));
    80002e64:	14102773          	csrr	a4,sepc
    80002e68:	fae43423          	sd	a4,-88(s0)
    return sepc;
    80002e6c:	fa843483          	ld	s1,-88(s0)
        uint64 sepc = read_sepc() + 4;
    80002e70:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    80002e74:	10002773          	csrr	a4,sstatus
    80002e78:	fae43023          	sd	a4,-96(s0)
    return sstatus;
    80002e7c:	fa043903          	ld	s2,-96(s0)
        switch(syscall_code) {
    80002e80:	04200713          	li	a4,66
    80002e84:	02f76463          	bltu	a4,a5,80002eac <_ZN5RiscV22handle_supervisor_trapEv+0xfc>
    80002e88:	00279793          	slli	a5,a5,0x2
    80002e8c:	00006717          	auipc	a4,0x6
    80002e90:	19470713          	addi	a4,a4,404 # 80009020 <CONSOLE_STATUS+0x10>
    80002e94:	00e787b3          	add	a5,a5,a4
    80002e98:	0007a783          	lw	a5,0(a5)
    80002e9c:	00e787b3          	add	a5,a5,a4
    80002ea0:	00078067          	jr	a5
                MemoryAllocator::mem_alloc((size_t) a1);
    80002ea4:	fffff097          	auipc	ra,0xfffff
    80002ea8:	5c0080e7          	jalr	1472(ra) # 80002464 <_ZN15MemoryAllocator9mem_allocEm>
    __asm__ volatile ("csrw sepc, %0" : : "r"(val));
    80002eac:	14149073          	csrw	sepc,s1
    __asm__ volatile ("csrw sstatus, %0" : : "r"(val));
    80002eb0:	10091073          	csrw	sstatus,s2
        __putc('!');
        uint64 val = 1;
        __asm__ volatile("mv a0, %0" : : "r"(val));
        return;
    }
    80002eb4:	06813083          	ld	ra,104(sp)
    80002eb8:	06013403          	ld	s0,96(sp)
    80002ebc:	05813483          	ld	s1,88(sp)
    80002ec0:	05013903          	ld	s2,80(sp)
    80002ec4:	04813983          	ld	s3,72(sp)
    80002ec8:	07010113          	addi	sp,sp,112
    80002ecc:	00008067          	ret
                MemoryAllocator::mem_free((void *) a1);
    80002ed0:	fffff097          	auipc	ra,0xfffff
    80002ed4:	708080e7          	jalr	1800(ra) # 800025d8 <_ZN15MemoryAllocator8mem_freeEPv>
                break;
    80002ed8:	fd5ff06f          	j	80002eac <_ZN5RiscV22handle_supervisor_trapEv+0xfc>
                TCB::thread_create((thread_t *) a1, (void (*)(void *)) a2, (void *) a3, (void *) a4);
    80002edc:	00000097          	auipc	ra,0x0
    80002ee0:	64c080e7          	jalr	1612(ra) # 80003528 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>
                break;
    80002ee4:	fc9ff06f          	j	80002eac <_ZN5RiscV22handle_supervisor_trapEv+0xfc>
                TCB::thread_exit();
    80002ee8:	00000097          	auipc	ra,0x0
    80002eec:	564080e7          	jalr	1380(ra) # 8000344c <_ZN3TCB11thread_exitEv>
                break;
    80002ef0:	fbdff06f          	j	80002eac <_ZN5RiscV22handle_supervisor_trapEv+0xfc>
                TCB::dispatch();
    80002ef4:	00000097          	auipc	ra,0x0
    80002ef8:	420080e7          	jalr	1056(ra) # 80003314 <_ZN3TCB8dispatchEv>
                break;
    80002efc:	fb1ff06f          	j	80002eac <_ZN5RiscV22handle_supervisor_trapEv+0xfc>
                Sem::open((sem_t *) a1, a2);
    80002f00:	0005859b          	sext.w	a1,a1
    80002f04:	fffff097          	auipc	ra,0xfffff
    80002f08:	a48080e7          	jalr	-1464(ra) # 8000194c <_ZN3Sem4openEPPS_j>
                break;
    80002f0c:	fa1ff06f          	j	80002eac <_ZN5RiscV22handle_supervisor_trapEv+0xfc>
                Sem::close((sem_t) a1);
    80002f10:	fffff097          	auipc	ra,0xfffff
    80002f14:	8a4080e7          	jalr	-1884(ra) # 800017b4 <_ZN3Sem5closeEPS_>
                break;
    80002f18:	f95ff06f          	j	80002eac <_ZN5RiscV22handle_supervisor_trapEv+0xfc>
                Sem::wait((sem_t) a1);
    80002f1c:	fffff097          	auipc	ra,0xfffff
    80002f20:	904080e7          	jalr	-1788(ra) # 80001820 <_ZN3Sem4waitEPS_>
                break;
    80002f24:	f89ff06f          	j	80002eac <_ZN5RiscV22handle_supervisor_trapEv+0xfc>
                Sem::signal((sem_t) a1);
    80002f28:	fffff097          	auipc	ra,0xfffff
    80002f2c:	94c080e7          	jalr	-1716(ra) # 80001874 <_ZN3Sem6signalEPS_>
                break;
    80002f30:	f7dff06f          	j	80002eac <_ZN5RiscV22handle_supervisor_trapEv+0xfc>
                Sem::timedWait((sem_t) a1, (time_t) a2);
    80002f34:	fffff097          	auipc	ra,0xfffff
    80002f38:	994080e7          	jalr	-1644(ra) # 800018c8 <_ZN3Sem9timedWaitEPS_m>
                break;
    80002f3c:	f71ff06f          	j	80002eac <_ZN5RiscV22handle_supervisor_trapEv+0xfc>
                Sem::tryWait((sem_t) a1);
    80002f40:	fffff097          	auipc	ra,0xfffff
    80002f44:	9a4080e7          	jalr	-1628(ra) # 800018e4 <_ZN3Sem7tryWaitEPS_>
                break;
    80002f48:	f65ff06f          	j	80002eac <_ZN5RiscV22handle_supervisor_trapEv+0xfc>
                Scheduler::put_to_sleep((time_t) a1);
    80002f4c:	00000097          	auipc	ra,0x0
    80002f50:	c94080e7          	jalr	-876(ra) # 80002be0 <_ZN9Scheduler12put_to_sleepEm>
                break;
    80002f54:	f59ff06f          	j	80002eac <_ZN5RiscV22handle_supervisor_trapEv+0xfc>
                Con::getc_input();
    80002f58:	fffff097          	auipc	ra,0xfffff
    80002f5c:	f90080e7          	jalr	-112(ra) # 80001ee8 <_ZN3Con10getc_inputEv>
                break;
    80002f60:	f4dff06f          	j	80002eac <_ZN5RiscV22handle_supervisor_trapEv+0xfc>
                Con::putc_output((char) a1);
    80002f64:	0ff57513          	andi	a0,a0,255
    80002f68:	fffff097          	auipc	ra,0xfffff
    80002f6c:	ee8080e7          	jalr	-280(ra) # 80001e50 <_ZN3Con11putc_outputEc>
                break;
    80002f70:	f3dff06f          	j	80002eac <_ZN5RiscV22handle_supervisor_trapEv+0xfc>
    __asm__ volatile ("csrc sip, %0" : : "r"(mask));
    80002f74:	00200793          	li	a5,2
    80002f78:	1447b073          	csrc	sip,a5
        TCB* first_waiting = Scheduler::head_sleeping;
    80002f7c:	00009797          	auipc	a5,0x9
    80002f80:	d6c7b783          	ld	a5,-660(a5) # 8000bce8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002f84:	0007b483          	ld	s1,0(a5)
        if (first_waiting) {
    80002f88:	04048463          	beqz	s1,80002fd0 <_ZN5RiscV22handle_supervisor_trapEv+0x220>
            --first_waiting -> time_to_sleep;
    80002f8c:	0484b783          	ld	a5,72(s1)
    80002f90:	fff78793          	addi	a5,a5,-1
    80002f94:	04f4b423          	sd	a5,72(s1)
            while (first_waiting && first_waiting -> time_to_sleep <= 0) {
    80002f98:	02048c63          	beqz	s1,80002fd0 <_ZN5RiscV22handle_supervisor_trapEv+0x220>
    80002f9c:	0484b783          	ld	a5,72(s1)
    80002fa0:	02079863          	bnez	a5,80002fd0 <_ZN5RiscV22handle_supervisor_trapEv+0x220>
                Scheduler::put(first_waiting);
    80002fa4:	00048513          	mv	a0,s1
    80002fa8:	00000097          	auipc	ra,0x0
    80002fac:	af0080e7          	jalr	-1296(ra) # 80002a98 <_ZN9Scheduler3putEP3TCB>
                first_waiting -> status = TCB::RUNNABLE;
    80002fb0:	0004ac23          	sw	zero,24(s1)
                first_waiting = first_waiting -> next_sleeping;
    80002fb4:	0504b783          	ld	a5,80(s1)
                tmp -> next_sleeping = nullptr;
    80002fb8:	0404b823          	sd	zero,80(s1)
                Scheduler::head_sleeping = first_waiting;
    80002fbc:	00009717          	auipc	a4,0x9
    80002fc0:	d2c73703          	ld	a4,-724(a4) # 8000bce8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002fc4:	00f73023          	sd	a5,0(a4)
                first_waiting = first_waiting -> next_sleeping;
    80002fc8:	00078493          	mv	s1,a5
            while (first_waiting && first_waiting -> time_to_sleep <= 0) {
    80002fcc:	fcdff06f          	j	80002f98 <_ZN5RiscV22handle_supervisor_trapEv+0x1e8>
        ++TCB::time_slice_counter;
    80002fd0:	00009717          	auipc	a4,0x9
    80002fd4:	d3873703          	ld	a4,-712(a4) # 8000bd08 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002fd8:	00073783          	ld	a5,0(a4)
    80002fdc:	00178793          	addi	a5,a5,1
    80002fe0:	00f73023          	sd	a5,0(a4)
        if (TCB::time_slice_counter >= TCB::running -> time_slice) {
    80002fe4:	00009717          	auipc	a4,0x9
    80002fe8:	d3473703          	ld	a4,-716(a4) # 8000bd18 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002fec:	00073703          	ld	a4,0(a4)
    80002ff0:	03873703          	ld	a4,56(a4)
    80002ff4:	ece7e0e3          	bltu	a5,a4,80002eb4 <_ZN5RiscV22handle_supervisor_trapEv+0x104>
    __asm__ volatile ("csrr %0, sepc" : "=r"(sepc));
    80002ff8:	141027f3          	csrr	a5,sepc
    80002ffc:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    80003000:	fb843483          	ld	s1,-72(s0)
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    80003004:	100027f3          	csrr	a5,sstatus
    80003008:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    8000300c:	fb043903          	ld	s2,-80(s0)
            TCB::time_slice_counter = 0;
    80003010:	00009797          	auipc	a5,0x9
    80003014:	cf87b783          	ld	a5,-776(a5) # 8000bd08 <_GLOBAL_OFFSET_TABLE_+0x40>
    80003018:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    8000301c:	00000097          	auipc	ra,0x0
    80003020:	2f8080e7          	jalr	760(ra) # 80003314 <_ZN3TCB8dispatchEv>
    __asm__ volatile ("csrw sstatus, %0" : : "r"(val));
    80003024:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %0" : : "r"(val));
    80003028:	14149073          	csrw	sepc,s1
}
    8000302c:	e89ff06f          	j	80002eb4 <_ZN5RiscV22handle_supervisor_trapEv+0x104>
            while (*(char *) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT) {
    80003030:	00009797          	auipc	a5,0x9
    80003034:	ca87b783          	ld	a5,-856(a5) # 8000bcd8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003038:	0007b783          	ld	a5,0(a5)
    8000303c:	0007c783          	lbu	a5,0(a5)
    80003040:	0017f793          	andi	a5,a5,1
    80003044:	e00780e3          	beqz	a5,80002e44 <_ZN5RiscV22handle_supervisor_trapEv+0x94>
                char c = *(char *) CONSOLE_RX_DATA;
    80003048:	00009797          	auipc	a5,0x9
    8000304c:	c887b783          	ld	a5,-888(a5) # 8000bcd0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80003050:	0007b783          	ld	a5,0(a5)
                Con::putc_input(c);
    80003054:	0007c503          	lbu	a0,0(a5)
    80003058:	fffff097          	auipc	ra,0xfffff
    8000305c:	e5c080e7          	jalr	-420(ra) # 80001eb4 <_ZN3Con10putc_inputEc>
            while (*(char *) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT) {
    80003060:	fd1ff06f          	j	80003030 <_ZN5RiscV22handle_supervisor_trapEv+0x280>
        printNumber(scause);
    80003064:	00070513          	mv	a0,a4
    80003068:	fffff097          	auipc	ra,0xfffff
    8000306c:	a40080e7          	jalr	-1472(ra) # 80001aa8 <_Z11printNumberm>
        __putc('!');
    80003070:	02100513          	li	a0,33
    80003074:	00006097          	auipc	ra,0x6
    80003078:	d58080e7          	jalr	-680(ra) # 80008dcc <__putc>
        __putc('?');
    8000307c:	03f00513          	li	a0,63
    80003080:	00006097          	auipc	ra,0x6
    80003084:	d4c080e7          	jalr	-692(ra) # 80008dcc <__putc>
        __putc('!');
    80003088:	02100513          	li	a0,33
    8000308c:	00006097          	auipc	ra,0x6
    80003090:	d40080e7          	jalr	-704(ra) # 80008dcc <__putc>
        __asm__ volatile("mv a0, %0" : : "r"(val));
    80003094:	00100793          	li	a5,1
    80003098:	00078513          	mv	a0,a5
        return;
    8000309c:	e19ff06f          	j	80002eb4 <_ZN5RiscV22handle_supervisor_trapEv+0x104>

00000000800030a0 <_ZN10ThreadList9get_firstEv>:

void ThreadList::push_back(TCB *thread) {
    tail = (head ? tail -> next : head) = new Node(thread);
}

TCB *ThreadList::get_first() {
    800030a0:	ff010113          	addi	sp,sp,-16
    800030a4:	00813423          	sd	s0,8(sp)
    800030a8:	01010413          	addi	s0,sp,16
    return (head ? head -> data : nullptr);
    800030ac:	00053503          	ld	a0,0(a0)
    800030b0:	00050463          	beqz	a0,800030b8 <_ZN10ThreadList9get_firstEv+0x18>
    800030b4:	00053503          	ld	a0,0(a0)
}
    800030b8:	00813403          	ld	s0,8(sp)
    800030bc:	01010113          	addi	sp,sp,16
    800030c0:	00008067          	ret

00000000800030c4 <_ZN10ThreadList4NodenwEm>:

void ThreadList::free() {
    while (get_first()) remove_first();
}

void *ThreadList::Node::operator new(size_t size) {
    800030c4:	ff010113          	addi	sp,sp,-16
    800030c8:	00113423          	sd	ra,8(sp)
    800030cc:	00813023          	sd	s0,0(sp)
    800030d0:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    800030d4:	fffff097          	auipc	ra,0xfffff
    800030d8:	754080e7          	jalr	1876(ra) # 80002828 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    800030dc:	fffff097          	auipc	ra,0xfffff
    800030e0:	388080e7          	jalr	904(ra) # 80002464 <_ZN15MemoryAllocator9mem_allocEm>
}
    800030e4:	00813083          	ld	ra,8(sp)
    800030e8:	00013403          	ld	s0,0(sp)
    800030ec:	01010113          	addi	sp,sp,16
    800030f0:	00008067          	ret

00000000800030f4 <_ZN10ThreadList9push_backEP3TCB>:
void ThreadList::push_back(TCB *thread) {
    800030f4:	fe010113          	addi	sp,sp,-32
    800030f8:	00113c23          	sd	ra,24(sp)
    800030fc:	00813823          	sd	s0,16(sp)
    80003100:	00913423          	sd	s1,8(sp)
    80003104:	01213023          	sd	s2,0(sp)
    80003108:	02010413          	addi	s0,sp,32
    8000310c:	00050493          	mv	s1,a0
    80003110:	00058913          	mv	s2,a1
    tail = (head ? tail -> next : head) = new Node(thread);
    80003114:	01000513          	li	a0,16
    80003118:	00000097          	auipc	ra,0x0
    8000311c:	fac080e7          	jalr	-84(ra) # 800030c4 <_ZN10ThreadList4NodenwEm>
        struct Node *next;

        void* operator new(size_t size);
        void operator delete(void* addr);

        explicit Node(TCB* data) : data(data), next(nullptr) {}
    80003120:	01253023          	sd	s2,0(a0)
    80003124:	00053423          	sd	zero,8(a0)
    80003128:	0004b783          	ld	a5,0(s1)
    8000312c:	02078463          	beqz	a5,80003154 <_ZN10ThreadList9push_backEP3TCB+0x60>
    80003130:	0084b783          	ld	a5,8(s1)
    80003134:	00a7b423          	sd	a0,8(a5)
    80003138:	00a4b423          	sd	a0,8(s1)
}
    8000313c:	01813083          	ld	ra,24(sp)
    80003140:	01013403          	ld	s0,16(sp)
    80003144:	00813483          	ld	s1,8(sp)
    80003148:	00013903          	ld	s2,0(sp)
    8000314c:	02010113          	addi	sp,sp,32
    80003150:	00008067          	ret
    tail = (head ? tail -> next : head) = new Node(thread);
    80003154:	00a4b023          	sd	a0,0(s1)
    80003158:	fe1ff06f          	j	80003138 <_ZN10ThreadList9push_backEP3TCB+0x44>

000000008000315c <_ZN10ThreadList4NodedlEPv>:

void ThreadList::Node::operator delete(void *addr) {
    8000315c:	ff010113          	addi	sp,sp,-16
    80003160:	00113423          	sd	ra,8(sp)
    80003164:	00813023          	sd	s0,0(sp)
    80003168:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    8000316c:	fffff097          	auipc	ra,0xfffff
    80003170:	46c080e7          	jalr	1132(ra) # 800025d8 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80003174:	00813083          	ld	ra,8(sp)
    80003178:	00013403          	ld	s0,0(sp)
    8000317c:	01010113          	addi	sp,sp,16
    80003180:	00008067          	ret

0000000080003184 <_ZN10ThreadList12remove_firstEv>:
TCB *ThreadList::remove_first() {
    80003184:	fe010113          	addi	sp,sp,-32
    80003188:	00113c23          	sd	ra,24(sp)
    8000318c:	00813823          	sd	s0,16(sp)
    80003190:	00913423          	sd	s1,8(sp)
    80003194:	02010413          	addi	s0,sp,32
    80003198:	00050793          	mv	a5,a0
    if (!head) return nullptr;
    8000319c:	00053503          	ld	a0,0(a0)
    800031a0:	02050863          	beqz	a0,800031d0 <_ZN10ThreadList12remove_firstEv+0x4c>
    TCB* thread = tmp -> data;
    800031a4:	00053483          	ld	s1,0(a0)
    head = head -> next;
    800031a8:	00853703          	ld	a4,8(a0)
    800031ac:	00e7b023          	sd	a4,0(a5)
    delete tmp;
    800031b0:	00000097          	auipc	ra,0x0
    800031b4:	fac080e7          	jalr	-84(ra) # 8000315c <_ZN10ThreadList4NodedlEPv>
}
    800031b8:	00048513          	mv	a0,s1
    800031bc:	01813083          	ld	ra,24(sp)
    800031c0:	01013403          	ld	s0,16(sp)
    800031c4:	00813483          	ld	s1,8(sp)
    800031c8:	02010113          	addi	sp,sp,32
    800031cc:	00008067          	ret
    if (!head) return nullptr;
    800031d0:	00050493          	mv	s1,a0
    800031d4:	fe5ff06f          	j	800031b8 <_ZN10ThreadList12remove_firstEv+0x34>

00000000800031d8 <_ZN10ThreadList4freeEv>:
void ThreadList::free() {
    800031d8:	fe010113          	addi	sp,sp,-32
    800031dc:	00113c23          	sd	ra,24(sp)
    800031e0:	00813823          	sd	s0,16(sp)
    800031e4:	00913423          	sd	s1,8(sp)
    800031e8:	02010413          	addi	s0,sp,32
    800031ec:	00050493          	mv	s1,a0
    while (get_first()) remove_first();
    800031f0:	00048513          	mv	a0,s1
    800031f4:	00000097          	auipc	ra,0x0
    800031f8:	eac080e7          	jalr	-340(ra) # 800030a0 <_ZN10ThreadList9get_firstEv>
    800031fc:	00050a63          	beqz	a0,80003210 <_ZN10ThreadList4freeEv+0x38>
    80003200:	00048513          	mv	a0,s1
    80003204:	00000097          	auipc	ra,0x0
    80003208:	f80080e7          	jalr	-128(ra) # 80003184 <_ZN10ThreadList12remove_firstEv>
    8000320c:	fe5ff06f          	j	800031f0 <_ZN10ThreadList4freeEv+0x18>
}
    80003210:	01813083          	ld	ra,24(sp)
    80003214:	01013403          	ld	s0,16(sp)
    80003218:	00813483          	ld	s1,8(sp)
    8000321c:	02010113          	addi	sp,sp,32
    80003220:	00008067          	ret

0000000080003224 <_ZN3TCBC1EPFvPvES0_S0_>:

TCB::TCB(void (*function_body)(void *), void *arg, void *stack) {
    context = {
            (uint64) wrapper_function,
            /// stack starts from max address, rises to lower locations
            (uint64) (stack ? (uint64) stack + DEFAULT_STACK_SIZE - 1 : 0)
    80003224:	08068463          	beqz	a3,800032ac <_ZN3TCBC1EPFvPvES0_S0_+0x88>
    80003228:	000017b7          	lui	a5,0x1
    8000322c:	fff78793          	addi	a5,a5,-1 # fff <_entry-0x7ffff001>
    80003230:	00f687b3          	add	a5,a3,a5
    context = {
    80003234:	00000717          	auipc	a4,0x0
    80003238:	25470713          	addi	a4,a4,596 # 80003488 <_ZN3TCB16wrapper_functionEv>
    8000323c:	00e53423          	sd	a4,8(a0)
    80003240:	00f53823          	sd	a5,16(a0)
    };
    id = cnt++;
    80003244:	00009717          	auipc	a4,0x9
    80003248:	b7470713          	addi	a4,a4,-1164 # 8000bdb8 <_ZN3TCB3cntE>
    8000324c:	00072783          	lw	a5,0(a4)
    80003250:	0017881b          	addiw	a6,a5,1
    80003254:	01072023          	sw	a6,0(a4)
    80003258:	00f52023          	sw	a5,0(a0)
    status = RUNNABLE;
    8000325c:	00052c23          	sw	zero,24(a0)
    this -> function_body = function_body;
    80003260:	02b53023          	sd	a1,32(a0)
    this -> arg = arg;
    80003264:	02c53423          	sd	a2,40(a0)
    this -> stack = stack;
    80003268:	02d53823          	sd	a3,48(a0)
    time_slice = DEFAULT_TIME_SLICE;
    8000326c:	00200793          	li	a5,2
    80003270:	02f53c23          	sd	a5,56(a0)
    time_to_sleep = 0;
    80003274:	04053423          	sd	zero,72(a0)
    next_ready = nullptr;
    80003278:	04053023          	sd	zero,64(a0)
    next_sleeping = nullptr;
    8000327c:	04053823          	sd	zero,80(a0)
    if (function_body) Scheduler::put(this);
    80003280:	02058a63          	beqz	a1,800032b4 <_ZN3TCBC1EPFvPvES0_S0_+0x90>
TCB::TCB(void (*function_body)(void *), void *arg, void *stack) {
    80003284:	ff010113          	addi	sp,sp,-16
    80003288:	00113423          	sd	ra,8(sp)
    8000328c:	00813023          	sd	s0,0(sp)
    80003290:	01010413          	addi	s0,sp,16
    if (function_body) Scheduler::put(this);
    80003294:	00000097          	auipc	ra,0x0
    80003298:	804080e7          	jalr	-2044(ra) # 80002a98 <_ZN9Scheduler3putEP3TCB>
}
    8000329c:	00813083          	ld	ra,8(sp)
    800032a0:	00013403          	ld	s0,0(sp)
    800032a4:	01010113          	addi	sp,sp,16
    800032a8:	00008067          	ret
            (uint64) (stack ? (uint64) stack + DEFAULT_STACK_SIZE - 1 : 0)
    800032ac:	00000793          	li	a5,0
    800032b0:	f85ff06f          	j	80003234 <_ZN3TCBC1EPFvPvES0_S0_+0x10>
    800032b4:	00008067          	ret

00000000800032b8 <_ZN3TCB5yieldEPS_S0_>:
    RiscV::popSppSpie();
    if (running -> function_body) running -> function_body(running -> arg);
    thread_exit();
}

void TCB::yield(TCB *old_running, TCB *new_running) {
    800032b8:	fe010113          	addi	sp,sp,-32
    800032bc:	00113c23          	sd	ra,24(sp)
    800032c0:	00813823          	sd	s0,16(sp)
    800032c4:	00913423          	sd	s1,8(sp)
    800032c8:	01213023          	sd	s2,0(sp)
    800032cc:	02010413          	addi	s0,sp,32
    800032d0:	00050493          	mv	s1,a0
    800032d4:	00058913          	mv	s2,a1
    RiscV::push_registers();
    800032d8:	ffffe097          	auipc	ra,0xffffe
    800032dc:	e30080e7          	jalr	-464(ra) # 80001108 <_ZN5RiscV14push_registersEv>
    if (old_running != new_running) context_switch(&old_running -> context, &new_running -> context);
    800032e0:	01248a63          	beq	s1,s2,800032f4 <_ZN3TCB5yieldEPS_S0_+0x3c>
    800032e4:	00890593          	addi	a1,s2,8
    800032e8:	00848513          	addi	a0,s1,8
    800032ec:	ffffe097          	auipc	ra,0xffffe
    800032f0:	f1c080e7          	jalr	-228(ra) # 80001208 <_ZN3TCB14context_switchEPNS_7ContextES1_>
    RiscV::pop_registers();
    800032f4:	ffffe097          	auipc	ra,0xffffe
    800032f8:	e94080e7          	jalr	-364(ra) # 80001188 <_ZN5RiscV13pop_registersEv>
}
    800032fc:	01813083          	ld	ra,24(sp)
    80003300:	01013403          	ld	s0,16(sp)
    80003304:	00813483          	ld	s1,8(sp)
    80003308:	00013903          	ld	s2,0(sp)
    8000330c:	02010113          	addi	sp,sp,32
    80003310:	00008067          	ret

0000000080003314 <_ZN3TCB8dispatchEv>:

void TCB::dispatch() {
    80003314:	fe010113          	addi	sp,sp,-32
    80003318:	00113c23          	sd	ra,24(sp)
    8000331c:	00813823          	sd	s0,16(sp)
    80003320:	00913423          	sd	s1,8(sp)
    80003324:	02010413          	addi	s0,sp,32
    TCB* old = running;
    80003328:	00009497          	auipc	s1,0x9
    8000332c:	a984b483          	ld	s1,-1384(s1) # 8000bdc0 <_ZN3TCB7runningE>
    if (old -> status == RUNNABLE) Scheduler::put(old);
    80003330:	0184a783          	lw	a5,24(s1)
    80003334:	04078263          	beqz	a5,80003378 <_ZN3TCB8dispatchEv+0x64>
//    else if (old -> status == FINISHED) MemoryAllocator::mem_free(old -> stack);
    running = Scheduler::get();
    80003338:	fffff097          	auipc	ra,0xfffff
    8000333c:	7d0080e7          	jalr	2000(ra) # 80002b08 <_ZN9Scheduler3getEv>
    80003340:	00050593          	mv	a1,a0
    80003344:	00009797          	auipc	a5,0x9
    80003348:	a7478793          	addi	a5,a5,-1420 # 8000bdb8 <_ZN3TCB3cntE>
    8000334c:	00a7b423          	sd	a0,8(a5)
    time_slice_counter = 0;
    80003350:	0007b823          	sd	zero,16(a5)
    if (old != running) yield(old, running);
    80003354:	00a48863          	beq	s1,a0,80003364 <_ZN3TCB8dispatchEv+0x50>
    80003358:	00048513          	mv	a0,s1
    8000335c:	00000097          	auipc	ra,0x0
    80003360:	f5c080e7          	jalr	-164(ra) # 800032b8 <_ZN3TCB5yieldEPS_S0_>
}
    80003364:	01813083          	ld	ra,24(sp)
    80003368:	01013403          	ld	s0,16(sp)
    8000336c:	00813483          	ld	s1,8(sp)
    80003370:	02010113          	addi	sp,sp,32
    80003374:	00008067          	ret
    if (old -> status == RUNNABLE) Scheduler::put(old);
    80003378:	00048513          	mv	a0,s1
    8000337c:	fffff097          	auipc	ra,0xfffff
    80003380:	71c080e7          	jalr	1820(ra) # 80002a98 <_ZN9Scheduler3putEP3TCB>
    80003384:	fb5ff06f          	j	80003338 <_ZN3TCB8dispatchEv+0x24>

0000000080003388 <_ZNK3TCB14get_next_readyEv>:

TCB *TCB::get_next_ready() const {
    80003388:	ff010113          	addi	sp,sp,-16
    8000338c:	00813423          	sd	s0,8(sp)
    80003390:	01010413          	addi	s0,sp,16
    return next_ready;
}
    80003394:	04053503          	ld	a0,64(a0)
    80003398:	00813403          	ld	s0,8(sp)
    8000339c:	01010113          	addi	sp,sp,16
    800033a0:	00008067          	ret

00000000800033a4 <_ZN3TCB14set_next_readyEPS_>:

void TCB::set_next_ready(TCB *next) {
    800033a4:	ff010113          	addi	sp,sp,-16
    800033a8:	00813423          	sd	s0,8(sp)
    800033ac:	01010413          	addi	s0,sp,16
    next_ready = next;
    800033b0:	04b53023          	sd	a1,64(a0)
}
    800033b4:	00813403          	ld	s0,8(sp)
    800033b8:	01010113          	addi	sp,sp,16
    800033bc:	00008067          	ret

00000000800033c0 <_ZN3TCB17set_next_sleepingEPS_>:

void TCB::set_next_sleeping(TCB *next) {
    800033c0:	ff010113          	addi	sp,sp,-16
    800033c4:	00813423          	sd	s0,8(sp)
    800033c8:	01010413          	addi	s0,sp,16
    next_sleeping = next;
    800033cc:	04b53823          	sd	a1,80(a0)
}
    800033d0:	00813403          	ld	s0,8(sp)
    800033d4:	01010113          	addi	sp,sp,16
    800033d8:	00008067          	ret

00000000800033dc <_ZNK3TCB17get_next_sleepingEv>:

TCB* TCB::get_next_sleeping() const {
    800033dc:	ff010113          	addi	sp,sp,-16
    800033e0:	00813423          	sd	s0,8(sp)
    800033e4:	01010413          	addi	s0,sp,16
    return next_sleeping;
}
    800033e8:	05053503          	ld	a0,80(a0)
    800033ec:	00813403          	ld	s0,8(sp)
    800033f0:	01010113          	addi	sp,sp,16
    800033f4:	00008067          	ret

00000000800033f8 <_ZN3TCB17set_time_to_sleepEm>:

void TCB::set_time_to_sleep(time_t time) {
    800033f8:	ff010113          	addi	sp,sp,-16
    800033fc:	00813423          	sd	s0,8(sp)
    80003400:	01010413          	addi	s0,sp,16
    time_to_sleep = time;
    80003404:	04b53423          	sd	a1,72(a0)
}
    80003408:	00813403          	ld	s0,8(sp)
    8000340c:	01010113          	addi	sp,sp,16
    80003410:	00008067          	ret

0000000080003414 <_ZNK3TCB17get_time_to_sleepEv>:

time_t TCB::get_time_to_sleep() const {
    80003414:	ff010113          	addi	sp,sp,-16
    80003418:	00813423          	sd	s0,8(sp)
    8000341c:	01010413          	addi	s0,sp,16
    return time_to_sleep;
}
    80003420:	04853503          	ld	a0,72(a0)
    80003424:	00813403          	ld	s0,8(sp)
    80003428:	01010113          	addi	sp,sp,16
    8000342c:	00008067          	ret

0000000080003430 <_ZN3TCB10set_statusENS_6StatusE>:

void TCB::set_status(TCB::Status stat) {
    80003430:	ff010113          	addi	sp,sp,-16
    80003434:	00813423          	sd	s0,8(sp)
    80003438:	01010413          	addi	s0,sp,16
    this -> status = stat;
    8000343c:	00b52c23          	sw	a1,24(a0)
}
    80003440:	00813403          	ld	s0,8(sp)
    80003444:	01010113          	addi	sp,sp,16
    80003448:	00008067          	ret

000000008000344c <_ZN3TCB11thread_exitEv>:
void TCB::thread_exit() {
    8000344c:	ff010113          	addi	sp,sp,-16
    80003450:	00113423          	sd	ra,8(sp)
    80003454:	00813023          	sd	s0,0(sp)
    80003458:	01010413          	addi	s0,sp,16
    running -> set_status(Status::FINISHED);
    8000345c:	00300593          	li	a1,3
    80003460:	00009517          	auipc	a0,0x9
    80003464:	96053503          	ld	a0,-1696(a0) # 8000bdc0 <_ZN3TCB7runningE>
    80003468:	00000097          	auipc	ra,0x0
    8000346c:	fc8080e7          	jalr	-56(ra) # 80003430 <_ZN3TCB10set_statusENS_6StatusE>
    thread_dispatch();
    80003470:	ffffe097          	auipc	ra,0xffffe
    80003474:	f5c080e7          	jalr	-164(ra) # 800013cc <_Z15thread_dispatchv>
}
    80003478:	00813083          	ld	ra,8(sp)
    8000347c:	00013403          	ld	s0,0(sp)
    80003480:	01010113          	addi	sp,sp,16
    80003484:	00008067          	ret

0000000080003488 <_ZN3TCB16wrapper_functionEv>:
void TCB::wrapper_function() {
    80003488:	ff010113          	addi	sp,sp,-16
    8000348c:	00113423          	sd	ra,8(sp)
    80003490:	00813023          	sd	s0,0(sp)
    80003494:	01010413          	addi	s0,sp,16
    RiscV::popSppSpie();
    80003498:	00000097          	auipc	ra,0x0
    8000349c:	8d0080e7          	jalr	-1840(ra) # 80002d68 <_ZN5RiscV10popSppSpieEv>
    if (running -> function_body) running -> function_body(running -> arg);
    800034a0:	00009717          	auipc	a4,0x9
    800034a4:	92073703          	ld	a4,-1760(a4) # 8000bdc0 <_ZN3TCB7runningE>
    800034a8:	02073783          	ld	a5,32(a4)
    800034ac:	00078663          	beqz	a5,800034b8 <_ZN3TCB16wrapper_functionEv+0x30>
    800034b0:	02873503          	ld	a0,40(a4)
    800034b4:	000780e7          	jalr	a5
    thread_exit();
    800034b8:	00000097          	auipc	ra,0x0
    800034bc:	f94080e7          	jalr	-108(ra) # 8000344c <_ZN3TCB11thread_exitEv>
}
    800034c0:	00813083          	ld	ra,8(sp)
    800034c4:	00013403          	ld	s0,0(sp)
    800034c8:	01010113          	addi	sp,sp,16
    800034cc:	00008067          	ret

00000000800034d0 <_ZN3TCBnwEm>:

void *TCB::operator new(size_t size) {
    800034d0:	ff010113          	addi	sp,sp,-16
    800034d4:	00113423          	sd	ra,8(sp)
    800034d8:	00813023          	sd	s0,0(sp)
    800034dc:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    800034e0:	fffff097          	auipc	ra,0xfffff
    800034e4:	348080e7          	jalr	840(ra) # 80002828 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    800034e8:	fffff097          	auipc	ra,0xfffff
    800034ec:	f7c080e7          	jalr	-132(ra) # 80002464 <_ZN15MemoryAllocator9mem_allocEm>
}
    800034f0:	00813083          	ld	ra,8(sp)
    800034f4:	00013403          	ld	s0,0(sp)
    800034f8:	01010113          	addi	sp,sp,16
    800034fc:	00008067          	ret

0000000080003500 <_ZN3TCBdlEPv>:

void TCB::operator delete(void *addr) {
    80003500:	ff010113          	addi	sp,sp,-16
    80003504:	00113423          	sd	ra,8(sp)
    80003508:	00813023          	sd	s0,0(sp)
    8000350c:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    80003510:	fffff097          	auipc	ra,0xfffff
    80003514:	0c8080e7          	jalr	200(ra) # 800025d8 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80003518:	00813083          	ld	ra,8(sp)
    8000351c:	00013403          	ld	s0,0(sp)
    80003520:	01010113          	addi	sp,sp,16
    80003524:	00008067          	ret

0000000080003528 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>:
int TCB::thread_create(thread_t *handle, void(*start_routine)(void *), void *arg, void *stack_begin_address) {
    80003528:	fc010113          	addi	sp,sp,-64
    8000352c:	02113c23          	sd	ra,56(sp)
    80003530:	02813823          	sd	s0,48(sp)
    80003534:	02913423          	sd	s1,40(sp)
    80003538:	03213023          	sd	s2,32(sp)
    8000353c:	01313c23          	sd	s3,24(sp)
    80003540:	01413823          	sd	s4,16(sp)
    80003544:	01513423          	sd	s5,8(sp)
    80003548:	04010413          	addi	s0,sp,64
    8000354c:	00050913          	mv	s2,a0
    80003550:	00058993          	mv	s3,a1
    80003554:	00060a13          	mv	s4,a2
    80003558:	00068a93          	mv	s5,a3
    *handle = new TCB(start_routine, arg, stack_begin_address);
    8000355c:	05800513          	li	a0,88
    80003560:	00000097          	auipc	ra,0x0
    80003564:	f70080e7          	jalr	-144(ra) # 800034d0 <_ZN3TCBnwEm>
    80003568:	00050493          	mv	s1,a0
    8000356c:	000a8693          	mv	a3,s5
    80003570:	000a0613          	mv	a2,s4
    80003574:	00098593          	mv	a1,s3
    80003578:	00000097          	auipc	ra,0x0
    8000357c:	cac080e7          	jalr	-852(ra) # 80003224 <_ZN3TCBC1EPFvPvES0_S0_>
    80003580:	0200006f          	j	800035a0 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_+0x78>
    80003584:	00050913          	mv	s2,a0
    80003588:	00048513          	mv	a0,s1
    8000358c:	00000097          	auipc	ra,0x0
    80003590:	f74080e7          	jalr	-140(ra) # 80003500 <_ZN3TCBdlEPv>
    80003594:	00090513          	mv	a0,s2
    80003598:	0000a097          	auipc	ra,0xa
    8000359c:	950080e7          	jalr	-1712(ra) # 8000cee8 <_Unwind_Resume>
    800035a0:	00993023          	sd	s1,0(s2)
}
    800035a4:	00000513          	li	a0,0
    800035a8:	03813083          	ld	ra,56(sp)
    800035ac:	03013403          	ld	s0,48(sp)
    800035b0:	02813483          	ld	s1,40(sp)
    800035b4:	02013903          	ld	s2,32(sp)
    800035b8:	01813983          	ld	s3,24(sp)
    800035bc:	01013a03          	ld	s4,16(sp)
    800035c0:	00813a83          	ld	s5,8(sp)
    800035c4:	04010113          	addi	sp,sp,64
    800035c8:	00008067          	ret

00000000800035cc <_ZN3TCBnaEm>:

void *TCB::operator new[](size_t size) {
    800035cc:	ff010113          	addi	sp,sp,-16
    800035d0:	00113423          	sd	ra,8(sp)
    800035d4:	00813023          	sd	s0,0(sp)
    800035d8:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    800035dc:	fffff097          	auipc	ra,0xfffff
    800035e0:	24c080e7          	jalr	588(ra) # 80002828 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    800035e4:	fffff097          	auipc	ra,0xfffff
    800035e8:	e80080e7          	jalr	-384(ra) # 80002464 <_ZN15MemoryAllocator9mem_allocEm>
}
    800035ec:	00813083          	ld	ra,8(sp)
    800035f0:	00013403          	ld	s0,0(sp)
    800035f4:	01010113          	addi	sp,sp,16
    800035f8:	00008067          	ret

00000000800035fc <_ZN3TCBdaEPv>:

void TCB::operator delete[](void *addr) {
    800035fc:	ff010113          	addi	sp,sp,-16
    80003600:	00113423          	sd	ra,8(sp)
    80003604:	00813023          	sd	s0,0(sp)
    80003608:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    8000360c:	fffff097          	auipc	ra,0xfffff
    80003610:	fcc080e7          	jalr	-52(ra) # 800025d8 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80003614:	00813083          	ld	ra,8(sp)
    80003618:	00013403          	ld	s0,0(sp)
    8000361c:	01010113          	addi	sp,sp,16
    80003620:	00008067          	ret

0000000080003624 <_ZNK3TCB11is_finishedEv>:

bool TCB::is_finished() const {
    80003624:	ff010113          	addi	sp,sp,-16
    80003628:	00813423          	sd	s0,8(sp)
    8000362c:	01010413          	addi	s0,sp,16
    return status == FINISHED;
    80003630:	01852503          	lw	a0,24(a0)
    80003634:	ffd50513          	addi	a0,a0,-3
}
    80003638:	00153513          	seqz	a0,a0
    8000363c:	00813403          	ld	s0,8(sp)
    80003640:	01010113          	addi	sp,sp,16
    80003644:	00008067          	ret

0000000080003648 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80003648:	fe010113          	addi	sp,sp,-32
    8000364c:	00113c23          	sd	ra,24(sp)
    80003650:	00813823          	sd	s0,16(sp)
    80003654:	00913423          	sd	s1,8(sp)
    80003658:	01213023          	sd	s2,0(sp)
    8000365c:	02010413          	addi	s0,sp,32
    80003660:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80003664:	00000913          	li	s2,0
    80003668:	00c0006f          	j	80003674 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    8000366c:	ffffe097          	auipc	ra,0xffffe
    80003670:	d60080e7          	jalr	-672(ra) # 800013cc <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80003674:	ffffe097          	auipc	ra,0xffffe
    80003678:	fac080e7          	jalr	-84(ra) # 80001620 <_Z4getcv>
    8000367c:	0005059b          	sext.w	a1,a0
    80003680:	01b00793          	li	a5,27
    80003684:	02f58a63          	beq	a1,a5,800036b8 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80003688:	0084b503          	ld	a0,8(s1)
    8000368c:	00001097          	auipc	ra,0x1
    80003690:	66c080e7          	jalr	1644(ra) # 80004cf8 <_ZN6Buffer3putEi>
        i++;
    80003694:	0019071b          	addiw	a4,s2,1
    80003698:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000369c:	0004a683          	lw	a3,0(s1)
    800036a0:	0026979b          	slliw	a5,a3,0x2
    800036a4:	00d787bb          	addw	a5,a5,a3
    800036a8:	0017979b          	slliw	a5,a5,0x1
    800036ac:	02f767bb          	remw	a5,a4,a5
    800036b0:	fc0792e3          	bnez	a5,80003674 <_ZL16producerKeyboardPv+0x2c>
    800036b4:	fb9ff06f          	j	8000366c <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    800036b8:	00100793          	li	a5,1
    800036bc:	00008717          	auipc	a4,0x8
    800036c0:	70f72a23          	sw	a5,1812(a4) # 8000bdd0 <_ZL9threadEnd>
    data->buffer->put('!');
    800036c4:	02100593          	li	a1,33
    800036c8:	0084b503          	ld	a0,8(s1)
    800036cc:	00001097          	auipc	ra,0x1
    800036d0:	62c080e7          	jalr	1580(ra) # 80004cf8 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    800036d4:	0104b503          	ld	a0,16(s1)
    800036d8:	ffffe097          	auipc	ra,0xffffe
    800036dc:	e18080e7          	jalr	-488(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    800036e0:	01813083          	ld	ra,24(sp)
    800036e4:	01013403          	ld	s0,16(sp)
    800036e8:	00813483          	ld	s1,8(sp)
    800036ec:	00013903          	ld	s2,0(sp)
    800036f0:	02010113          	addi	sp,sp,32
    800036f4:	00008067          	ret

00000000800036f8 <_ZL8producerPv>:

static void producer(void *arg) {
    800036f8:	fe010113          	addi	sp,sp,-32
    800036fc:	00113c23          	sd	ra,24(sp)
    80003700:	00813823          	sd	s0,16(sp)
    80003704:	00913423          	sd	s1,8(sp)
    80003708:	01213023          	sd	s2,0(sp)
    8000370c:	02010413          	addi	s0,sp,32
    80003710:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003714:	00000913          	li	s2,0
    80003718:	00c0006f          	j	80003724 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    8000371c:	ffffe097          	auipc	ra,0xffffe
    80003720:	cb0080e7          	jalr	-848(ra) # 800013cc <_Z15thread_dispatchv>
    while (!threadEnd) {
    80003724:	00008797          	auipc	a5,0x8
    80003728:	6ac7a783          	lw	a5,1708(a5) # 8000bdd0 <_ZL9threadEnd>
    8000372c:	02079e63          	bnez	a5,80003768 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80003730:	0004a583          	lw	a1,0(s1)
    80003734:	0305859b          	addiw	a1,a1,48
    80003738:	0084b503          	ld	a0,8(s1)
    8000373c:	00001097          	auipc	ra,0x1
    80003740:	5bc080e7          	jalr	1468(ra) # 80004cf8 <_ZN6Buffer3putEi>
        i++;
    80003744:	0019071b          	addiw	a4,s2,1
    80003748:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000374c:	0004a683          	lw	a3,0(s1)
    80003750:	0026979b          	slliw	a5,a3,0x2
    80003754:	00d787bb          	addw	a5,a5,a3
    80003758:	0017979b          	slliw	a5,a5,0x1
    8000375c:	02f767bb          	remw	a5,a4,a5
    80003760:	fc0792e3          	bnez	a5,80003724 <_ZL8producerPv+0x2c>
    80003764:	fb9ff06f          	j	8000371c <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80003768:	0104b503          	ld	a0,16(s1)
    8000376c:	ffffe097          	auipc	ra,0xffffe
    80003770:	d84080e7          	jalr	-636(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    80003774:	01813083          	ld	ra,24(sp)
    80003778:	01013403          	ld	s0,16(sp)
    8000377c:	00813483          	ld	s1,8(sp)
    80003780:	00013903          	ld	s2,0(sp)
    80003784:	02010113          	addi	sp,sp,32
    80003788:	00008067          	ret

000000008000378c <_ZL8consumerPv>:

static void consumer(void *arg) {
    8000378c:	fd010113          	addi	sp,sp,-48
    80003790:	02113423          	sd	ra,40(sp)
    80003794:	02813023          	sd	s0,32(sp)
    80003798:	00913c23          	sd	s1,24(sp)
    8000379c:	01213823          	sd	s2,16(sp)
    800037a0:	01313423          	sd	s3,8(sp)
    800037a4:	03010413          	addi	s0,sp,48
    800037a8:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800037ac:	00000993          	li	s3,0
    800037b0:	01c0006f          	j	800037cc <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    800037b4:	ffffe097          	auipc	ra,0xffffe
    800037b8:	c18080e7          	jalr	-1000(ra) # 800013cc <_Z15thread_dispatchv>
    800037bc:	0500006f          	j	8000380c <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    800037c0:	00a00513          	li	a0,10
    800037c4:	ffffe097          	auipc	ra,0xffffe
    800037c8:	ea8080e7          	jalr	-344(ra) # 8000166c <_Z4putcc>
    while (!threadEnd) {
    800037cc:	00008797          	auipc	a5,0x8
    800037d0:	6047a783          	lw	a5,1540(a5) # 8000bdd0 <_ZL9threadEnd>
    800037d4:	06079063          	bnez	a5,80003834 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    800037d8:	00893503          	ld	a0,8(s2)
    800037dc:	00001097          	auipc	ra,0x1
    800037e0:	5ac080e7          	jalr	1452(ra) # 80004d88 <_ZN6Buffer3getEv>
        i++;
    800037e4:	0019849b          	addiw	s1,s3,1
    800037e8:	0004899b          	sext.w	s3,s1
        putc(key);
    800037ec:	0ff57513          	andi	a0,a0,255
    800037f0:	ffffe097          	auipc	ra,0xffffe
    800037f4:	e7c080e7          	jalr	-388(ra) # 8000166c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800037f8:	00092703          	lw	a4,0(s2)
    800037fc:	0027179b          	slliw	a5,a4,0x2
    80003800:	00e787bb          	addw	a5,a5,a4
    80003804:	02f4e7bb          	remw	a5,s1,a5
    80003808:	fa0786e3          	beqz	a5,800037b4 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    8000380c:	05000793          	li	a5,80
    80003810:	02f4e4bb          	remw	s1,s1,a5
    80003814:	fa049ce3          	bnez	s1,800037cc <_ZL8consumerPv+0x40>
    80003818:	fa9ff06f          	j	800037c0 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    8000381c:	00893503          	ld	a0,8(s2)
    80003820:	00001097          	auipc	ra,0x1
    80003824:	568080e7          	jalr	1384(ra) # 80004d88 <_ZN6Buffer3getEv>
        putc(key);
    80003828:	0ff57513          	andi	a0,a0,255
    8000382c:	ffffe097          	auipc	ra,0xffffe
    80003830:	e40080e7          	jalr	-448(ra) # 8000166c <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80003834:	00893503          	ld	a0,8(s2)
    80003838:	00001097          	auipc	ra,0x1
    8000383c:	5dc080e7          	jalr	1500(ra) # 80004e14 <_ZN6Buffer6getCntEv>
    80003840:	fca04ee3          	bgtz	a0,8000381c <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80003844:	01093503          	ld	a0,16(s2)
    80003848:	ffffe097          	auipc	ra,0xffffe
    8000384c:	ca8080e7          	jalr	-856(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    80003850:	02813083          	ld	ra,40(sp)
    80003854:	02013403          	ld	s0,32(sp)
    80003858:	01813483          	ld	s1,24(sp)
    8000385c:	01013903          	ld	s2,16(sp)
    80003860:	00813983          	ld	s3,8(sp)
    80003864:	03010113          	addi	sp,sp,48
    80003868:	00008067          	ret

000000008000386c <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    8000386c:	f9010113          	addi	sp,sp,-112
    80003870:	06113423          	sd	ra,104(sp)
    80003874:	06813023          	sd	s0,96(sp)
    80003878:	04913c23          	sd	s1,88(sp)
    8000387c:	05213823          	sd	s2,80(sp)
    80003880:	05313423          	sd	s3,72(sp)
    80003884:	05413023          	sd	s4,64(sp)
    80003888:	03513c23          	sd	s5,56(sp)
    8000388c:	03613823          	sd	s6,48(sp)
    80003890:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80003894:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003898:	00006517          	auipc	a0,0x6
    8000389c:	89850513          	addi	a0,a0,-1896 # 80009130 <CONSOLE_STATUS+0x120>
    800038a0:	00002097          	auipc	ra,0x2
    800038a4:	540080e7          	jalr	1344(ra) # 80005de0 <_Z11printStringPKc>
    getString(input, 30);
    800038a8:	01e00593          	li	a1,30
    800038ac:	fa040493          	addi	s1,s0,-96
    800038b0:	00048513          	mv	a0,s1
    800038b4:	00002097          	auipc	ra,0x2
    800038b8:	5b4080e7          	jalr	1460(ra) # 80005e68 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800038bc:	00048513          	mv	a0,s1
    800038c0:	00002097          	auipc	ra,0x2
    800038c4:	680080e7          	jalr	1664(ra) # 80005f40 <_Z11stringToIntPKc>
    800038c8:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800038cc:	00006517          	auipc	a0,0x6
    800038d0:	88450513          	addi	a0,a0,-1916 # 80009150 <CONSOLE_STATUS+0x140>
    800038d4:	00002097          	auipc	ra,0x2
    800038d8:	50c080e7          	jalr	1292(ra) # 80005de0 <_Z11printStringPKc>
    getString(input, 30);
    800038dc:	01e00593          	li	a1,30
    800038e0:	00048513          	mv	a0,s1
    800038e4:	00002097          	auipc	ra,0x2
    800038e8:	584080e7          	jalr	1412(ra) # 80005e68 <_Z9getStringPci>
    n = stringToInt(input);
    800038ec:	00048513          	mv	a0,s1
    800038f0:	00002097          	auipc	ra,0x2
    800038f4:	650080e7          	jalr	1616(ra) # 80005f40 <_Z11stringToIntPKc>
    800038f8:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800038fc:	00006517          	auipc	a0,0x6
    80003900:	87450513          	addi	a0,a0,-1932 # 80009170 <CONSOLE_STATUS+0x160>
    80003904:	00002097          	auipc	ra,0x2
    80003908:	4dc080e7          	jalr	1244(ra) # 80005de0 <_Z11printStringPKc>
    8000390c:	00000613          	li	a2,0
    80003910:	00a00593          	li	a1,10
    80003914:	00090513          	mv	a0,s2
    80003918:	00002097          	auipc	ra,0x2
    8000391c:	678080e7          	jalr	1656(ra) # 80005f90 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003920:	00006517          	auipc	a0,0x6
    80003924:	86850513          	addi	a0,a0,-1944 # 80009188 <CONSOLE_STATUS+0x178>
    80003928:	00002097          	auipc	ra,0x2
    8000392c:	4b8080e7          	jalr	1208(ra) # 80005de0 <_Z11printStringPKc>
    80003930:	00000613          	li	a2,0
    80003934:	00a00593          	li	a1,10
    80003938:	00048513          	mv	a0,s1
    8000393c:	00002097          	auipc	ra,0x2
    80003940:	654080e7          	jalr	1620(ra) # 80005f90 <_Z8printIntiii>
    printString(".\n");
    80003944:	00006517          	auipc	a0,0x6
    80003948:	85c50513          	addi	a0,a0,-1956 # 800091a0 <CONSOLE_STATUS+0x190>
    8000394c:	00002097          	auipc	ra,0x2
    80003950:	494080e7          	jalr	1172(ra) # 80005de0 <_Z11printStringPKc>
    if(threadNum > n) {
    80003954:	0324c463          	blt	s1,s2,8000397c <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003958:	03205c63          	blez	s2,80003990 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    8000395c:	03800513          	li	a0,56
    80003960:	ffffe097          	auipc	ra,0xffffe
    80003964:	68c080e7          	jalr	1676(ra) # 80001fec <_Znwm>
    80003968:	00050a13          	mv	s4,a0
    8000396c:	00048593          	mv	a1,s1
    80003970:	00001097          	auipc	ra,0x1
    80003974:	2ec080e7          	jalr	748(ra) # 80004c5c <_ZN6BufferC1Ei>
    80003978:	0300006f          	j	800039a8 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    8000397c:	00006517          	auipc	a0,0x6
    80003980:	82c50513          	addi	a0,a0,-2004 # 800091a8 <CONSOLE_STATUS+0x198>
    80003984:	00002097          	auipc	ra,0x2
    80003988:	45c080e7          	jalr	1116(ra) # 80005de0 <_Z11printStringPKc>
        return;
    8000398c:	0140006f          	j	800039a0 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003990:	00006517          	auipc	a0,0x6
    80003994:	85850513          	addi	a0,a0,-1960 # 800091e8 <CONSOLE_STATUS+0x1d8>
    80003998:	00002097          	auipc	ra,0x2
    8000399c:	448080e7          	jalr	1096(ra) # 80005de0 <_Z11printStringPKc>
        return;
    800039a0:	000b0113          	mv	sp,s6
    800039a4:	1500006f          	j	80003af4 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    800039a8:	00000593          	li	a1,0
    800039ac:	00008517          	auipc	a0,0x8
    800039b0:	42c50513          	addi	a0,a0,1068 # 8000bdd8 <_ZL10waitForAll>
    800039b4:	ffffe097          	auipc	ra,0xffffe
    800039b8:	a54080e7          	jalr	-1452(ra) # 80001408 <_Z8sem_openPP3Semj>
    thread_t threads[threadNum];
    800039bc:	00391793          	slli	a5,s2,0x3
    800039c0:	00f78793          	addi	a5,a5,15
    800039c4:	ff07f793          	andi	a5,a5,-16
    800039c8:	40f10133          	sub	sp,sp,a5
    800039cc:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    800039d0:	0019071b          	addiw	a4,s2,1
    800039d4:	00171793          	slli	a5,a4,0x1
    800039d8:	00e787b3          	add	a5,a5,a4
    800039dc:	00379793          	slli	a5,a5,0x3
    800039e0:	00f78793          	addi	a5,a5,15
    800039e4:	ff07f793          	andi	a5,a5,-16
    800039e8:	40f10133          	sub	sp,sp,a5
    800039ec:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    800039f0:	00191613          	slli	a2,s2,0x1
    800039f4:	012607b3          	add	a5,a2,s2
    800039f8:	00379793          	slli	a5,a5,0x3
    800039fc:	00f987b3          	add	a5,s3,a5
    80003a00:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003a04:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003a08:	00008717          	auipc	a4,0x8
    80003a0c:	3d073703          	ld	a4,976(a4) # 8000bdd8 <_ZL10waitForAll>
    80003a10:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003a14:	00078613          	mv	a2,a5
    80003a18:	00000597          	auipc	a1,0x0
    80003a1c:	d7458593          	addi	a1,a1,-652 # 8000378c <_ZL8consumerPv>
    80003a20:	f9840513          	addi	a0,s0,-104
    80003a24:	ffffe097          	auipc	ra,0xffffe
    80003a28:	8d4080e7          	jalr	-1836(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003a2c:	00000493          	li	s1,0
    80003a30:	0280006f          	j	80003a58 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003a34:	00000597          	auipc	a1,0x0
    80003a38:	c1458593          	addi	a1,a1,-1004 # 80003648 <_ZL16producerKeyboardPv>
                      data + i);
    80003a3c:	00179613          	slli	a2,a5,0x1
    80003a40:	00f60633          	add	a2,a2,a5
    80003a44:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003a48:	00c98633          	add	a2,s3,a2
    80003a4c:	ffffe097          	auipc	ra,0xffffe
    80003a50:	8ac080e7          	jalr	-1876(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003a54:	0014849b          	addiw	s1,s1,1
    80003a58:	0524d263          	bge	s1,s2,80003a9c <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003a5c:	00149793          	slli	a5,s1,0x1
    80003a60:	009787b3          	add	a5,a5,s1
    80003a64:	00379793          	slli	a5,a5,0x3
    80003a68:	00f987b3          	add	a5,s3,a5
    80003a6c:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003a70:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80003a74:	00008717          	auipc	a4,0x8
    80003a78:	36473703          	ld	a4,868(a4) # 8000bdd8 <_ZL10waitForAll>
    80003a7c:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003a80:	00048793          	mv	a5,s1
    80003a84:	00349513          	slli	a0,s1,0x3
    80003a88:	00aa8533          	add	a0,s5,a0
    80003a8c:	fa9054e3          	blez	s1,80003a34 <_Z22producerConsumer_C_APIv+0x1c8>
    80003a90:	00000597          	auipc	a1,0x0
    80003a94:	c6858593          	addi	a1,a1,-920 # 800036f8 <_ZL8producerPv>
    80003a98:	fa5ff06f          	j	80003a3c <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003a9c:	ffffe097          	auipc	ra,0xffffe
    80003aa0:	930080e7          	jalr	-1744(ra) # 800013cc <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003aa4:	00000493          	li	s1,0
    80003aa8:	00994e63          	blt	s2,s1,80003ac4 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003aac:	00008517          	auipc	a0,0x8
    80003ab0:	32c53503          	ld	a0,812(a0) # 8000bdd8 <_ZL10waitForAll>
    80003ab4:	ffffe097          	auipc	ra,0xffffe
    80003ab8:	9f0080e7          	jalr	-1552(ra) # 800014a4 <_Z8sem_waitP3Sem>
    for (int i = 0; i <= threadNum; i++) {
    80003abc:	0014849b          	addiw	s1,s1,1
    80003ac0:	fe9ff06f          	j	80003aa8 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003ac4:	00008517          	auipc	a0,0x8
    80003ac8:	31453503          	ld	a0,788(a0) # 8000bdd8 <_ZL10waitForAll>
    80003acc:	ffffe097          	auipc	ra,0xffffe
    80003ad0:	98c080e7          	jalr	-1652(ra) # 80001458 <_Z9sem_closeP3Sem>
    delete buffer;
    80003ad4:	000a0e63          	beqz	s4,80003af0 <_Z22producerConsumer_C_APIv+0x284>
    80003ad8:	000a0513          	mv	a0,s4
    80003adc:	00001097          	auipc	ra,0x1
    80003ae0:	3c0080e7          	jalr	960(ra) # 80004e9c <_ZN6BufferD1Ev>
    80003ae4:	000a0513          	mv	a0,s4
    80003ae8:	ffffe097          	auipc	ra,0xffffe
    80003aec:	52c080e7          	jalr	1324(ra) # 80002014 <_ZdlPv>
    80003af0:	000b0113          	mv	sp,s6

}
    80003af4:	f9040113          	addi	sp,s0,-112
    80003af8:	06813083          	ld	ra,104(sp)
    80003afc:	06013403          	ld	s0,96(sp)
    80003b00:	05813483          	ld	s1,88(sp)
    80003b04:	05013903          	ld	s2,80(sp)
    80003b08:	04813983          	ld	s3,72(sp)
    80003b0c:	04013a03          	ld	s4,64(sp)
    80003b10:	03813a83          	ld	s5,56(sp)
    80003b14:	03013b03          	ld	s6,48(sp)
    80003b18:	07010113          	addi	sp,sp,112
    80003b1c:	00008067          	ret
    80003b20:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003b24:	000a0513          	mv	a0,s4
    80003b28:	ffffe097          	auipc	ra,0xffffe
    80003b2c:	4ec080e7          	jalr	1260(ra) # 80002014 <_ZdlPv>
    80003b30:	00048513          	mv	a0,s1
    80003b34:	00009097          	auipc	ra,0x9
    80003b38:	3b4080e7          	jalr	948(ra) # 8000cee8 <_Unwind_Resume>

0000000080003b3c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003b3c:	fe010113          	addi	sp,sp,-32
    80003b40:	00113c23          	sd	ra,24(sp)
    80003b44:	00813823          	sd	s0,16(sp)
    80003b48:	00913423          	sd	s1,8(sp)
    80003b4c:	01213023          	sd	s2,0(sp)
    80003b50:	02010413          	addi	s0,sp,32
    80003b54:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003b58:	00100793          	li	a5,1
    80003b5c:	02a7f863          	bgeu	a5,a0,80003b8c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003b60:	00a00793          	li	a5,10
    80003b64:	02f577b3          	remu	a5,a0,a5
    80003b68:	02078e63          	beqz	a5,80003ba4 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003b6c:	fff48513          	addi	a0,s1,-1
    80003b70:	00000097          	auipc	ra,0x0
    80003b74:	fcc080e7          	jalr	-52(ra) # 80003b3c <_ZL9fibonaccim>
    80003b78:	00050913          	mv	s2,a0
    80003b7c:	ffe48513          	addi	a0,s1,-2
    80003b80:	00000097          	auipc	ra,0x0
    80003b84:	fbc080e7          	jalr	-68(ra) # 80003b3c <_ZL9fibonaccim>
    80003b88:	00a90533          	add	a0,s2,a0
}
    80003b8c:	01813083          	ld	ra,24(sp)
    80003b90:	01013403          	ld	s0,16(sp)
    80003b94:	00813483          	ld	s1,8(sp)
    80003b98:	00013903          	ld	s2,0(sp)
    80003b9c:	02010113          	addi	sp,sp,32
    80003ba0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003ba4:	ffffe097          	auipc	ra,0xffffe
    80003ba8:	828080e7          	jalr	-2008(ra) # 800013cc <_Z15thread_dispatchv>
    80003bac:	fc1ff06f          	j	80003b6c <_ZL9fibonaccim+0x30>

0000000080003bb0 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003bb0:	fe010113          	addi	sp,sp,-32
    80003bb4:	00113c23          	sd	ra,24(sp)
    80003bb8:	00813823          	sd	s0,16(sp)
    80003bbc:	00913423          	sd	s1,8(sp)
    80003bc0:	01213023          	sd	s2,0(sp)
    80003bc4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003bc8:	00000913          	li	s2,0
    80003bcc:	0380006f          	j	80003c04 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003bd0:	ffffd097          	auipc	ra,0xffffd
    80003bd4:	7fc080e7          	jalr	2044(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003bd8:	00148493          	addi	s1,s1,1
    80003bdc:	000027b7          	lui	a5,0x2
    80003be0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003be4:	0097ee63          	bltu	a5,s1,80003c00 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003be8:	00000713          	li	a4,0
    80003bec:	000077b7          	lui	a5,0x7
    80003bf0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003bf4:	fce7eee3          	bltu	a5,a4,80003bd0 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003bf8:	00170713          	addi	a4,a4,1
    80003bfc:	ff1ff06f          	j	80003bec <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003c00:	00190913          	addi	s2,s2,1
    80003c04:	00900793          	li	a5,9
    80003c08:	0527e063          	bltu	a5,s2,80003c48 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003c0c:	00005517          	auipc	a0,0x5
    80003c10:	60c50513          	addi	a0,a0,1548 # 80009218 <CONSOLE_STATUS+0x208>
    80003c14:	00002097          	auipc	ra,0x2
    80003c18:	1cc080e7          	jalr	460(ra) # 80005de0 <_Z11printStringPKc>
    80003c1c:	00000613          	li	a2,0
    80003c20:	00a00593          	li	a1,10
    80003c24:	0009051b          	sext.w	a0,s2
    80003c28:	00002097          	auipc	ra,0x2
    80003c2c:	368080e7          	jalr	872(ra) # 80005f90 <_Z8printIntiii>
    80003c30:	00006517          	auipc	a0,0x6
    80003c34:	84850513          	addi	a0,a0,-1976 # 80009478 <CONSOLE_STATUS+0x468>
    80003c38:	00002097          	auipc	ra,0x2
    80003c3c:	1a8080e7          	jalr	424(ra) # 80005de0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003c40:	00000493          	li	s1,0
    80003c44:	f99ff06f          	j	80003bdc <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003c48:	00005517          	auipc	a0,0x5
    80003c4c:	5d850513          	addi	a0,a0,1496 # 80009220 <CONSOLE_STATUS+0x210>
    80003c50:	00002097          	auipc	ra,0x2
    80003c54:	190080e7          	jalr	400(ra) # 80005de0 <_Z11printStringPKc>
    finishedA = true;
    80003c58:	00100793          	li	a5,1
    80003c5c:	00008717          	auipc	a4,0x8
    80003c60:	18f70223          	sb	a5,388(a4) # 8000bde0 <_ZL9finishedA>
}
    80003c64:	01813083          	ld	ra,24(sp)
    80003c68:	01013403          	ld	s0,16(sp)
    80003c6c:	00813483          	ld	s1,8(sp)
    80003c70:	00013903          	ld	s2,0(sp)
    80003c74:	02010113          	addi	sp,sp,32
    80003c78:	00008067          	ret

0000000080003c7c <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003c7c:	fe010113          	addi	sp,sp,-32
    80003c80:	00113c23          	sd	ra,24(sp)
    80003c84:	00813823          	sd	s0,16(sp)
    80003c88:	00913423          	sd	s1,8(sp)
    80003c8c:	01213023          	sd	s2,0(sp)
    80003c90:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003c94:	00000913          	li	s2,0
    80003c98:	0380006f          	j	80003cd0 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003c9c:	ffffd097          	auipc	ra,0xffffd
    80003ca0:	730080e7          	jalr	1840(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003ca4:	00148493          	addi	s1,s1,1
    80003ca8:	000027b7          	lui	a5,0x2
    80003cac:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003cb0:	0097ee63          	bltu	a5,s1,80003ccc <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003cb4:	00000713          	li	a4,0
    80003cb8:	000077b7          	lui	a5,0x7
    80003cbc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003cc0:	fce7eee3          	bltu	a5,a4,80003c9c <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003cc4:	00170713          	addi	a4,a4,1
    80003cc8:	ff1ff06f          	j	80003cb8 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003ccc:	00190913          	addi	s2,s2,1
    80003cd0:	00f00793          	li	a5,15
    80003cd4:	0527e063          	bltu	a5,s2,80003d14 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003cd8:	00005517          	auipc	a0,0x5
    80003cdc:	55850513          	addi	a0,a0,1368 # 80009230 <CONSOLE_STATUS+0x220>
    80003ce0:	00002097          	auipc	ra,0x2
    80003ce4:	100080e7          	jalr	256(ra) # 80005de0 <_Z11printStringPKc>
    80003ce8:	00000613          	li	a2,0
    80003cec:	00a00593          	li	a1,10
    80003cf0:	0009051b          	sext.w	a0,s2
    80003cf4:	00002097          	auipc	ra,0x2
    80003cf8:	29c080e7          	jalr	668(ra) # 80005f90 <_Z8printIntiii>
    80003cfc:	00005517          	auipc	a0,0x5
    80003d00:	77c50513          	addi	a0,a0,1916 # 80009478 <CONSOLE_STATUS+0x468>
    80003d04:	00002097          	auipc	ra,0x2
    80003d08:	0dc080e7          	jalr	220(ra) # 80005de0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003d0c:	00000493          	li	s1,0
    80003d10:	f99ff06f          	j	80003ca8 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003d14:	00005517          	auipc	a0,0x5
    80003d18:	52450513          	addi	a0,a0,1316 # 80009238 <CONSOLE_STATUS+0x228>
    80003d1c:	00002097          	auipc	ra,0x2
    80003d20:	0c4080e7          	jalr	196(ra) # 80005de0 <_Z11printStringPKc>
    finishedB = true;
    80003d24:	00100793          	li	a5,1
    80003d28:	00008717          	auipc	a4,0x8
    80003d2c:	0af70ca3          	sb	a5,185(a4) # 8000bde1 <_ZL9finishedB>
    thread_dispatch();
    80003d30:	ffffd097          	auipc	ra,0xffffd
    80003d34:	69c080e7          	jalr	1692(ra) # 800013cc <_Z15thread_dispatchv>
}
    80003d38:	01813083          	ld	ra,24(sp)
    80003d3c:	01013403          	ld	s0,16(sp)
    80003d40:	00813483          	ld	s1,8(sp)
    80003d44:	00013903          	ld	s2,0(sp)
    80003d48:	02010113          	addi	sp,sp,32
    80003d4c:	00008067          	ret

0000000080003d50 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003d50:	fe010113          	addi	sp,sp,-32
    80003d54:	00113c23          	sd	ra,24(sp)
    80003d58:	00813823          	sd	s0,16(sp)
    80003d5c:	00913423          	sd	s1,8(sp)
    80003d60:	01213023          	sd	s2,0(sp)
    80003d64:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003d68:	00000493          	li	s1,0
    80003d6c:	0400006f          	j	80003dac <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003d70:	00005517          	auipc	a0,0x5
    80003d74:	4d850513          	addi	a0,a0,1240 # 80009248 <CONSOLE_STATUS+0x238>
    80003d78:	00002097          	auipc	ra,0x2
    80003d7c:	068080e7          	jalr	104(ra) # 80005de0 <_Z11printStringPKc>
    80003d80:	00000613          	li	a2,0
    80003d84:	00a00593          	li	a1,10
    80003d88:	00048513          	mv	a0,s1
    80003d8c:	00002097          	auipc	ra,0x2
    80003d90:	204080e7          	jalr	516(ra) # 80005f90 <_Z8printIntiii>
    80003d94:	00005517          	auipc	a0,0x5
    80003d98:	6e450513          	addi	a0,a0,1764 # 80009478 <CONSOLE_STATUS+0x468>
    80003d9c:	00002097          	auipc	ra,0x2
    80003da0:	044080e7          	jalr	68(ra) # 80005de0 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003da4:	0014849b          	addiw	s1,s1,1
    80003da8:	0ff4f493          	andi	s1,s1,255
    80003dac:	00200793          	li	a5,2
    80003db0:	fc97f0e3          	bgeu	a5,s1,80003d70 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003db4:	00005517          	auipc	a0,0x5
    80003db8:	49c50513          	addi	a0,a0,1180 # 80009250 <CONSOLE_STATUS+0x240>
    80003dbc:	00002097          	auipc	ra,0x2
    80003dc0:	024080e7          	jalr	36(ra) # 80005de0 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003dc4:	00700313          	li	t1,7
    thread_dispatch();
    80003dc8:	ffffd097          	auipc	ra,0xffffd
    80003dcc:	604080e7          	jalr	1540(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003dd0:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003dd4:	00005517          	auipc	a0,0x5
    80003dd8:	48c50513          	addi	a0,a0,1164 # 80009260 <CONSOLE_STATUS+0x250>
    80003ddc:	00002097          	auipc	ra,0x2
    80003de0:	004080e7          	jalr	4(ra) # 80005de0 <_Z11printStringPKc>
    80003de4:	00000613          	li	a2,0
    80003de8:	00a00593          	li	a1,10
    80003dec:	0009051b          	sext.w	a0,s2
    80003df0:	00002097          	auipc	ra,0x2
    80003df4:	1a0080e7          	jalr	416(ra) # 80005f90 <_Z8printIntiii>
    80003df8:	00005517          	auipc	a0,0x5
    80003dfc:	68050513          	addi	a0,a0,1664 # 80009478 <CONSOLE_STATUS+0x468>
    80003e00:	00002097          	auipc	ra,0x2
    80003e04:	fe0080e7          	jalr	-32(ra) # 80005de0 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003e08:	00c00513          	li	a0,12
    80003e0c:	00000097          	auipc	ra,0x0
    80003e10:	d30080e7          	jalr	-720(ra) # 80003b3c <_ZL9fibonaccim>
    80003e14:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003e18:	00005517          	auipc	a0,0x5
    80003e1c:	45050513          	addi	a0,a0,1104 # 80009268 <CONSOLE_STATUS+0x258>
    80003e20:	00002097          	auipc	ra,0x2
    80003e24:	fc0080e7          	jalr	-64(ra) # 80005de0 <_Z11printStringPKc>
    80003e28:	00000613          	li	a2,0
    80003e2c:	00a00593          	li	a1,10
    80003e30:	0009051b          	sext.w	a0,s2
    80003e34:	00002097          	auipc	ra,0x2
    80003e38:	15c080e7          	jalr	348(ra) # 80005f90 <_Z8printIntiii>
    80003e3c:	00005517          	auipc	a0,0x5
    80003e40:	63c50513          	addi	a0,a0,1596 # 80009478 <CONSOLE_STATUS+0x468>
    80003e44:	00002097          	auipc	ra,0x2
    80003e48:	f9c080e7          	jalr	-100(ra) # 80005de0 <_Z11printStringPKc>
    80003e4c:	0400006f          	j	80003e8c <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003e50:	00005517          	auipc	a0,0x5
    80003e54:	3f850513          	addi	a0,a0,1016 # 80009248 <CONSOLE_STATUS+0x238>
    80003e58:	00002097          	auipc	ra,0x2
    80003e5c:	f88080e7          	jalr	-120(ra) # 80005de0 <_Z11printStringPKc>
    80003e60:	00000613          	li	a2,0
    80003e64:	00a00593          	li	a1,10
    80003e68:	00048513          	mv	a0,s1
    80003e6c:	00002097          	auipc	ra,0x2
    80003e70:	124080e7          	jalr	292(ra) # 80005f90 <_Z8printIntiii>
    80003e74:	00005517          	auipc	a0,0x5
    80003e78:	60450513          	addi	a0,a0,1540 # 80009478 <CONSOLE_STATUS+0x468>
    80003e7c:	00002097          	auipc	ra,0x2
    80003e80:	f64080e7          	jalr	-156(ra) # 80005de0 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003e84:	0014849b          	addiw	s1,s1,1
    80003e88:	0ff4f493          	andi	s1,s1,255
    80003e8c:	00500793          	li	a5,5
    80003e90:	fc97f0e3          	bgeu	a5,s1,80003e50 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80003e94:	00005517          	auipc	a0,0x5
    80003e98:	38c50513          	addi	a0,a0,908 # 80009220 <CONSOLE_STATUS+0x210>
    80003e9c:	00002097          	auipc	ra,0x2
    80003ea0:	f44080e7          	jalr	-188(ra) # 80005de0 <_Z11printStringPKc>
    finishedC = true;
    80003ea4:	00100793          	li	a5,1
    80003ea8:	00008717          	auipc	a4,0x8
    80003eac:	f2f70d23          	sb	a5,-198(a4) # 8000bde2 <_ZL9finishedC>
    thread_dispatch();
    80003eb0:	ffffd097          	auipc	ra,0xffffd
    80003eb4:	51c080e7          	jalr	1308(ra) # 800013cc <_Z15thread_dispatchv>
}
    80003eb8:	01813083          	ld	ra,24(sp)
    80003ebc:	01013403          	ld	s0,16(sp)
    80003ec0:	00813483          	ld	s1,8(sp)
    80003ec4:	00013903          	ld	s2,0(sp)
    80003ec8:	02010113          	addi	sp,sp,32
    80003ecc:	00008067          	ret

0000000080003ed0 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003ed0:	fe010113          	addi	sp,sp,-32
    80003ed4:	00113c23          	sd	ra,24(sp)
    80003ed8:	00813823          	sd	s0,16(sp)
    80003edc:	00913423          	sd	s1,8(sp)
    80003ee0:	01213023          	sd	s2,0(sp)
    80003ee4:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003ee8:	00a00493          	li	s1,10
    80003eec:	0400006f          	j	80003f2c <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003ef0:	00005517          	auipc	a0,0x5
    80003ef4:	38850513          	addi	a0,a0,904 # 80009278 <CONSOLE_STATUS+0x268>
    80003ef8:	00002097          	auipc	ra,0x2
    80003efc:	ee8080e7          	jalr	-280(ra) # 80005de0 <_Z11printStringPKc>
    80003f00:	00000613          	li	a2,0
    80003f04:	00a00593          	li	a1,10
    80003f08:	00048513          	mv	a0,s1
    80003f0c:	00002097          	auipc	ra,0x2
    80003f10:	084080e7          	jalr	132(ra) # 80005f90 <_Z8printIntiii>
    80003f14:	00005517          	auipc	a0,0x5
    80003f18:	56450513          	addi	a0,a0,1380 # 80009478 <CONSOLE_STATUS+0x468>
    80003f1c:	00002097          	auipc	ra,0x2
    80003f20:	ec4080e7          	jalr	-316(ra) # 80005de0 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003f24:	0014849b          	addiw	s1,s1,1
    80003f28:	0ff4f493          	andi	s1,s1,255
    80003f2c:	00c00793          	li	a5,12
    80003f30:	fc97f0e3          	bgeu	a5,s1,80003ef0 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003f34:	00005517          	auipc	a0,0x5
    80003f38:	34c50513          	addi	a0,a0,844 # 80009280 <CONSOLE_STATUS+0x270>
    80003f3c:	00002097          	auipc	ra,0x2
    80003f40:	ea4080e7          	jalr	-348(ra) # 80005de0 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003f44:	00500313          	li	t1,5
    thread_dispatch();
    80003f48:	ffffd097          	auipc	ra,0xffffd
    80003f4c:	484080e7          	jalr	1156(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003f50:	01000513          	li	a0,16
    80003f54:	00000097          	auipc	ra,0x0
    80003f58:	be8080e7          	jalr	-1048(ra) # 80003b3c <_ZL9fibonaccim>
    80003f5c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003f60:	00005517          	auipc	a0,0x5
    80003f64:	33050513          	addi	a0,a0,816 # 80009290 <CONSOLE_STATUS+0x280>
    80003f68:	00002097          	auipc	ra,0x2
    80003f6c:	e78080e7          	jalr	-392(ra) # 80005de0 <_Z11printStringPKc>
    80003f70:	00000613          	li	a2,0
    80003f74:	00a00593          	li	a1,10
    80003f78:	0009051b          	sext.w	a0,s2
    80003f7c:	00002097          	auipc	ra,0x2
    80003f80:	014080e7          	jalr	20(ra) # 80005f90 <_Z8printIntiii>
    80003f84:	00005517          	auipc	a0,0x5
    80003f88:	4f450513          	addi	a0,a0,1268 # 80009478 <CONSOLE_STATUS+0x468>
    80003f8c:	00002097          	auipc	ra,0x2
    80003f90:	e54080e7          	jalr	-428(ra) # 80005de0 <_Z11printStringPKc>
    80003f94:	0400006f          	j	80003fd4 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003f98:	00005517          	auipc	a0,0x5
    80003f9c:	2e050513          	addi	a0,a0,736 # 80009278 <CONSOLE_STATUS+0x268>
    80003fa0:	00002097          	auipc	ra,0x2
    80003fa4:	e40080e7          	jalr	-448(ra) # 80005de0 <_Z11printStringPKc>
    80003fa8:	00000613          	li	a2,0
    80003fac:	00a00593          	li	a1,10
    80003fb0:	00048513          	mv	a0,s1
    80003fb4:	00002097          	auipc	ra,0x2
    80003fb8:	fdc080e7          	jalr	-36(ra) # 80005f90 <_Z8printIntiii>
    80003fbc:	00005517          	auipc	a0,0x5
    80003fc0:	4bc50513          	addi	a0,a0,1212 # 80009478 <CONSOLE_STATUS+0x468>
    80003fc4:	00002097          	auipc	ra,0x2
    80003fc8:	e1c080e7          	jalr	-484(ra) # 80005de0 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003fcc:	0014849b          	addiw	s1,s1,1
    80003fd0:	0ff4f493          	andi	s1,s1,255
    80003fd4:	00f00793          	li	a5,15
    80003fd8:	fc97f0e3          	bgeu	a5,s1,80003f98 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003fdc:	00005517          	auipc	a0,0x5
    80003fe0:	2c450513          	addi	a0,a0,708 # 800092a0 <CONSOLE_STATUS+0x290>
    80003fe4:	00002097          	auipc	ra,0x2
    80003fe8:	dfc080e7          	jalr	-516(ra) # 80005de0 <_Z11printStringPKc>
    finishedD = true;
    80003fec:	00100793          	li	a5,1
    80003ff0:	00008717          	auipc	a4,0x8
    80003ff4:	def709a3          	sb	a5,-525(a4) # 8000bde3 <_ZL9finishedD>
    thread_dispatch();
    80003ff8:	ffffd097          	auipc	ra,0xffffd
    80003ffc:	3d4080e7          	jalr	980(ra) # 800013cc <_Z15thread_dispatchv>
}
    80004000:	01813083          	ld	ra,24(sp)
    80004004:	01013403          	ld	s0,16(sp)
    80004008:	00813483          	ld	s1,8(sp)
    8000400c:	00013903          	ld	s2,0(sp)
    80004010:	02010113          	addi	sp,sp,32
    80004014:	00008067          	ret

0000000080004018 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80004018:	fc010113          	addi	sp,sp,-64
    8000401c:	02113c23          	sd	ra,56(sp)
    80004020:	02813823          	sd	s0,48(sp)
    80004024:	02913423          	sd	s1,40(sp)
    80004028:	03213023          	sd	s2,32(sp)
    8000402c:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80004030:	02000513          	li	a0,32
    80004034:	ffffe097          	auipc	ra,0xffffe
    80004038:	fb8080e7          	jalr	-72(ra) # 80001fec <_Znwm>
    8000403c:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80004040:	ffffe097          	auipc	ra,0xffffe
    80004044:	0ac080e7          	jalr	172(ra) # 800020ec <_ZN6ThreadC1Ev>
    80004048:	00008797          	auipc	a5,0x8
    8000404c:	ae878793          	addi	a5,a5,-1304 # 8000bb30 <_ZTV7WorkerA+0x10>
    80004050:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80004054:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80004058:	00005517          	auipc	a0,0x5
    8000405c:	25850513          	addi	a0,a0,600 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80004060:	00002097          	auipc	ra,0x2
    80004064:	d80080e7          	jalr	-640(ra) # 80005de0 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80004068:	02000513          	li	a0,32
    8000406c:	ffffe097          	auipc	ra,0xffffe
    80004070:	f80080e7          	jalr	-128(ra) # 80001fec <_Znwm>
    80004074:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80004078:	ffffe097          	auipc	ra,0xffffe
    8000407c:	074080e7          	jalr	116(ra) # 800020ec <_ZN6ThreadC1Ev>
    80004080:	00008797          	auipc	a5,0x8
    80004084:	ad878793          	addi	a5,a5,-1320 # 8000bb58 <_ZTV7WorkerB+0x10>
    80004088:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    8000408c:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80004090:	00005517          	auipc	a0,0x5
    80004094:	23850513          	addi	a0,a0,568 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80004098:	00002097          	auipc	ra,0x2
    8000409c:	d48080e7          	jalr	-696(ra) # 80005de0 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    800040a0:	02000513          	li	a0,32
    800040a4:	ffffe097          	auipc	ra,0xffffe
    800040a8:	f48080e7          	jalr	-184(ra) # 80001fec <_Znwm>
    800040ac:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    800040b0:	ffffe097          	auipc	ra,0xffffe
    800040b4:	03c080e7          	jalr	60(ra) # 800020ec <_ZN6ThreadC1Ev>
    800040b8:	00008797          	auipc	a5,0x8
    800040bc:	ac878793          	addi	a5,a5,-1336 # 8000bb80 <_ZTV7WorkerC+0x10>
    800040c0:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    800040c4:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    800040c8:	00005517          	auipc	a0,0x5
    800040cc:	21850513          	addi	a0,a0,536 # 800092e0 <CONSOLE_STATUS+0x2d0>
    800040d0:	00002097          	auipc	ra,0x2
    800040d4:	d10080e7          	jalr	-752(ra) # 80005de0 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    800040d8:	02000513          	li	a0,32
    800040dc:	ffffe097          	auipc	ra,0xffffe
    800040e0:	f10080e7          	jalr	-240(ra) # 80001fec <_Znwm>
    800040e4:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    800040e8:	ffffe097          	auipc	ra,0xffffe
    800040ec:	004080e7          	jalr	4(ra) # 800020ec <_ZN6ThreadC1Ev>
    800040f0:	00008797          	auipc	a5,0x8
    800040f4:	ab878793          	addi	a5,a5,-1352 # 8000bba8 <_ZTV7WorkerD+0x10>
    800040f8:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    800040fc:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80004100:	00005517          	auipc	a0,0x5
    80004104:	1f850513          	addi	a0,a0,504 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80004108:	00002097          	auipc	ra,0x2
    8000410c:	cd8080e7          	jalr	-808(ra) # 80005de0 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80004110:	00000493          	li	s1,0
    80004114:	00300793          	li	a5,3
    80004118:	0297c663          	blt	a5,s1,80004144 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    8000411c:	00349793          	slli	a5,s1,0x3
    80004120:	fe040713          	addi	a4,s0,-32
    80004124:	00f707b3          	add	a5,a4,a5
    80004128:	fe07b503          	ld	a0,-32(a5)
    8000412c:	ffffe097          	auipc	ra,0xffffe
    80004130:	ff0080e7          	jalr	-16(ra) # 8000211c <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80004134:	0014849b          	addiw	s1,s1,1
    80004138:	fddff06f          	j	80004114 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    8000413c:	ffffe097          	auipc	ra,0xffffe
    80004140:	018080e7          	jalr	24(ra) # 80002154 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004144:	00008797          	auipc	a5,0x8
    80004148:	c9c7c783          	lbu	a5,-868(a5) # 8000bde0 <_ZL9finishedA>
    8000414c:	fe0788e3          	beqz	a5,8000413c <_Z20Threads_CPP_API_testv+0x124>
    80004150:	00008797          	auipc	a5,0x8
    80004154:	c917c783          	lbu	a5,-879(a5) # 8000bde1 <_ZL9finishedB>
    80004158:	fe0782e3          	beqz	a5,8000413c <_Z20Threads_CPP_API_testv+0x124>
    8000415c:	00008797          	auipc	a5,0x8
    80004160:	c867c783          	lbu	a5,-890(a5) # 8000bde2 <_ZL9finishedC>
    80004164:	fc078ce3          	beqz	a5,8000413c <_Z20Threads_CPP_API_testv+0x124>
    80004168:	00008797          	auipc	a5,0x8
    8000416c:	c7b7c783          	lbu	a5,-901(a5) # 8000bde3 <_ZL9finishedD>
    80004170:	fc0786e3          	beqz	a5,8000413c <_Z20Threads_CPP_API_testv+0x124>
    80004174:	fc040493          	addi	s1,s0,-64
    80004178:	0080006f          	j	80004180 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    8000417c:	00848493          	addi	s1,s1,8
    80004180:	fe040793          	addi	a5,s0,-32
    80004184:	08f48663          	beq	s1,a5,80004210 <_Z20Threads_CPP_API_testv+0x1f8>
    80004188:	0004b503          	ld	a0,0(s1)
    8000418c:	fe0508e3          	beqz	a0,8000417c <_Z20Threads_CPP_API_testv+0x164>
    80004190:	00053783          	ld	a5,0(a0)
    80004194:	0087b783          	ld	a5,8(a5)
    80004198:	000780e7          	jalr	a5
    8000419c:	fe1ff06f          	j	8000417c <_Z20Threads_CPP_API_testv+0x164>
    800041a0:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    800041a4:	00048513          	mv	a0,s1
    800041a8:	ffffe097          	auipc	ra,0xffffe
    800041ac:	e6c080e7          	jalr	-404(ra) # 80002014 <_ZdlPv>
    800041b0:	00090513          	mv	a0,s2
    800041b4:	00009097          	auipc	ra,0x9
    800041b8:	d34080e7          	jalr	-716(ra) # 8000cee8 <_Unwind_Resume>
    800041bc:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    800041c0:	00048513          	mv	a0,s1
    800041c4:	ffffe097          	auipc	ra,0xffffe
    800041c8:	e50080e7          	jalr	-432(ra) # 80002014 <_ZdlPv>
    800041cc:	00090513          	mv	a0,s2
    800041d0:	00009097          	auipc	ra,0x9
    800041d4:	d18080e7          	jalr	-744(ra) # 8000cee8 <_Unwind_Resume>
    800041d8:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    800041dc:	00048513          	mv	a0,s1
    800041e0:	ffffe097          	auipc	ra,0xffffe
    800041e4:	e34080e7          	jalr	-460(ra) # 80002014 <_ZdlPv>
    800041e8:	00090513          	mv	a0,s2
    800041ec:	00009097          	auipc	ra,0x9
    800041f0:	cfc080e7          	jalr	-772(ra) # 8000cee8 <_Unwind_Resume>
    800041f4:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    800041f8:	00048513          	mv	a0,s1
    800041fc:	ffffe097          	auipc	ra,0xffffe
    80004200:	e18080e7          	jalr	-488(ra) # 80002014 <_ZdlPv>
    80004204:	00090513          	mv	a0,s2
    80004208:	00009097          	auipc	ra,0x9
    8000420c:	ce0080e7          	jalr	-800(ra) # 8000cee8 <_Unwind_Resume>
}
    80004210:	03813083          	ld	ra,56(sp)
    80004214:	03013403          	ld	s0,48(sp)
    80004218:	02813483          	ld	s1,40(sp)
    8000421c:	02013903          	ld	s2,32(sp)
    80004220:	04010113          	addi	sp,sp,64
    80004224:	00008067          	ret

0000000080004228 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80004228:	ff010113          	addi	sp,sp,-16
    8000422c:	00113423          	sd	ra,8(sp)
    80004230:	00813023          	sd	s0,0(sp)
    80004234:	01010413          	addi	s0,sp,16
    80004238:	00008797          	auipc	a5,0x8
    8000423c:	8f878793          	addi	a5,a5,-1800 # 8000bb30 <_ZTV7WorkerA+0x10>
    80004240:	00f53023          	sd	a5,0(a0)
    80004244:	ffffe097          	auipc	ra,0xffffe
    80004248:	d10080e7          	jalr	-752(ra) # 80001f54 <_ZN6ThreadD1Ev>
    8000424c:	00813083          	ld	ra,8(sp)
    80004250:	00013403          	ld	s0,0(sp)
    80004254:	01010113          	addi	sp,sp,16
    80004258:	00008067          	ret

000000008000425c <_ZN7WorkerAD0Ev>:
    8000425c:	fe010113          	addi	sp,sp,-32
    80004260:	00113c23          	sd	ra,24(sp)
    80004264:	00813823          	sd	s0,16(sp)
    80004268:	00913423          	sd	s1,8(sp)
    8000426c:	02010413          	addi	s0,sp,32
    80004270:	00050493          	mv	s1,a0
    80004274:	00008797          	auipc	a5,0x8
    80004278:	8bc78793          	addi	a5,a5,-1860 # 8000bb30 <_ZTV7WorkerA+0x10>
    8000427c:	00f53023          	sd	a5,0(a0)
    80004280:	ffffe097          	auipc	ra,0xffffe
    80004284:	cd4080e7          	jalr	-812(ra) # 80001f54 <_ZN6ThreadD1Ev>
    80004288:	00048513          	mv	a0,s1
    8000428c:	ffffe097          	auipc	ra,0xffffe
    80004290:	d88080e7          	jalr	-632(ra) # 80002014 <_ZdlPv>
    80004294:	01813083          	ld	ra,24(sp)
    80004298:	01013403          	ld	s0,16(sp)
    8000429c:	00813483          	ld	s1,8(sp)
    800042a0:	02010113          	addi	sp,sp,32
    800042a4:	00008067          	ret

00000000800042a8 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800042a8:	ff010113          	addi	sp,sp,-16
    800042ac:	00113423          	sd	ra,8(sp)
    800042b0:	00813023          	sd	s0,0(sp)
    800042b4:	01010413          	addi	s0,sp,16
    800042b8:	00008797          	auipc	a5,0x8
    800042bc:	8a078793          	addi	a5,a5,-1888 # 8000bb58 <_ZTV7WorkerB+0x10>
    800042c0:	00f53023          	sd	a5,0(a0)
    800042c4:	ffffe097          	auipc	ra,0xffffe
    800042c8:	c90080e7          	jalr	-880(ra) # 80001f54 <_ZN6ThreadD1Ev>
    800042cc:	00813083          	ld	ra,8(sp)
    800042d0:	00013403          	ld	s0,0(sp)
    800042d4:	01010113          	addi	sp,sp,16
    800042d8:	00008067          	ret

00000000800042dc <_ZN7WorkerBD0Ev>:
    800042dc:	fe010113          	addi	sp,sp,-32
    800042e0:	00113c23          	sd	ra,24(sp)
    800042e4:	00813823          	sd	s0,16(sp)
    800042e8:	00913423          	sd	s1,8(sp)
    800042ec:	02010413          	addi	s0,sp,32
    800042f0:	00050493          	mv	s1,a0
    800042f4:	00008797          	auipc	a5,0x8
    800042f8:	86478793          	addi	a5,a5,-1948 # 8000bb58 <_ZTV7WorkerB+0x10>
    800042fc:	00f53023          	sd	a5,0(a0)
    80004300:	ffffe097          	auipc	ra,0xffffe
    80004304:	c54080e7          	jalr	-940(ra) # 80001f54 <_ZN6ThreadD1Ev>
    80004308:	00048513          	mv	a0,s1
    8000430c:	ffffe097          	auipc	ra,0xffffe
    80004310:	d08080e7          	jalr	-760(ra) # 80002014 <_ZdlPv>
    80004314:	01813083          	ld	ra,24(sp)
    80004318:	01013403          	ld	s0,16(sp)
    8000431c:	00813483          	ld	s1,8(sp)
    80004320:	02010113          	addi	sp,sp,32
    80004324:	00008067          	ret

0000000080004328 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80004328:	ff010113          	addi	sp,sp,-16
    8000432c:	00113423          	sd	ra,8(sp)
    80004330:	00813023          	sd	s0,0(sp)
    80004334:	01010413          	addi	s0,sp,16
    80004338:	00008797          	auipc	a5,0x8
    8000433c:	84878793          	addi	a5,a5,-1976 # 8000bb80 <_ZTV7WorkerC+0x10>
    80004340:	00f53023          	sd	a5,0(a0)
    80004344:	ffffe097          	auipc	ra,0xffffe
    80004348:	c10080e7          	jalr	-1008(ra) # 80001f54 <_ZN6ThreadD1Ev>
    8000434c:	00813083          	ld	ra,8(sp)
    80004350:	00013403          	ld	s0,0(sp)
    80004354:	01010113          	addi	sp,sp,16
    80004358:	00008067          	ret

000000008000435c <_ZN7WorkerCD0Ev>:
    8000435c:	fe010113          	addi	sp,sp,-32
    80004360:	00113c23          	sd	ra,24(sp)
    80004364:	00813823          	sd	s0,16(sp)
    80004368:	00913423          	sd	s1,8(sp)
    8000436c:	02010413          	addi	s0,sp,32
    80004370:	00050493          	mv	s1,a0
    80004374:	00008797          	auipc	a5,0x8
    80004378:	80c78793          	addi	a5,a5,-2036 # 8000bb80 <_ZTV7WorkerC+0x10>
    8000437c:	00f53023          	sd	a5,0(a0)
    80004380:	ffffe097          	auipc	ra,0xffffe
    80004384:	bd4080e7          	jalr	-1068(ra) # 80001f54 <_ZN6ThreadD1Ev>
    80004388:	00048513          	mv	a0,s1
    8000438c:	ffffe097          	auipc	ra,0xffffe
    80004390:	c88080e7          	jalr	-888(ra) # 80002014 <_ZdlPv>
    80004394:	01813083          	ld	ra,24(sp)
    80004398:	01013403          	ld	s0,16(sp)
    8000439c:	00813483          	ld	s1,8(sp)
    800043a0:	02010113          	addi	sp,sp,32
    800043a4:	00008067          	ret

00000000800043a8 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800043a8:	ff010113          	addi	sp,sp,-16
    800043ac:	00113423          	sd	ra,8(sp)
    800043b0:	00813023          	sd	s0,0(sp)
    800043b4:	01010413          	addi	s0,sp,16
    800043b8:	00007797          	auipc	a5,0x7
    800043bc:	7f078793          	addi	a5,a5,2032 # 8000bba8 <_ZTV7WorkerD+0x10>
    800043c0:	00f53023          	sd	a5,0(a0)
    800043c4:	ffffe097          	auipc	ra,0xffffe
    800043c8:	b90080e7          	jalr	-1136(ra) # 80001f54 <_ZN6ThreadD1Ev>
    800043cc:	00813083          	ld	ra,8(sp)
    800043d0:	00013403          	ld	s0,0(sp)
    800043d4:	01010113          	addi	sp,sp,16
    800043d8:	00008067          	ret

00000000800043dc <_ZN7WorkerDD0Ev>:
    800043dc:	fe010113          	addi	sp,sp,-32
    800043e0:	00113c23          	sd	ra,24(sp)
    800043e4:	00813823          	sd	s0,16(sp)
    800043e8:	00913423          	sd	s1,8(sp)
    800043ec:	02010413          	addi	s0,sp,32
    800043f0:	00050493          	mv	s1,a0
    800043f4:	00007797          	auipc	a5,0x7
    800043f8:	7b478793          	addi	a5,a5,1972 # 8000bba8 <_ZTV7WorkerD+0x10>
    800043fc:	00f53023          	sd	a5,0(a0)
    80004400:	ffffe097          	auipc	ra,0xffffe
    80004404:	b54080e7          	jalr	-1196(ra) # 80001f54 <_ZN6ThreadD1Ev>
    80004408:	00048513          	mv	a0,s1
    8000440c:	ffffe097          	auipc	ra,0xffffe
    80004410:	c08080e7          	jalr	-1016(ra) # 80002014 <_ZdlPv>
    80004414:	01813083          	ld	ra,24(sp)
    80004418:	01013403          	ld	s0,16(sp)
    8000441c:	00813483          	ld	s1,8(sp)
    80004420:	02010113          	addi	sp,sp,32
    80004424:	00008067          	ret

0000000080004428 <_ZN7WorkerA3runEv>:
    void run() override {
    80004428:	ff010113          	addi	sp,sp,-16
    8000442c:	00113423          	sd	ra,8(sp)
    80004430:	00813023          	sd	s0,0(sp)
    80004434:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80004438:	00000593          	li	a1,0
    8000443c:	fffff097          	auipc	ra,0xfffff
    80004440:	774080e7          	jalr	1908(ra) # 80003bb0 <_ZN7WorkerA11workerBodyAEPv>
    }
    80004444:	00813083          	ld	ra,8(sp)
    80004448:	00013403          	ld	s0,0(sp)
    8000444c:	01010113          	addi	sp,sp,16
    80004450:	00008067          	ret

0000000080004454 <_ZN7WorkerB3runEv>:
    void run() override {
    80004454:	ff010113          	addi	sp,sp,-16
    80004458:	00113423          	sd	ra,8(sp)
    8000445c:	00813023          	sd	s0,0(sp)
    80004460:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80004464:	00000593          	li	a1,0
    80004468:	00000097          	auipc	ra,0x0
    8000446c:	814080e7          	jalr	-2028(ra) # 80003c7c <_ZN7WorkerB11workerBodyBEPv>
    }
    80004470:	00813083          	ld	ra,8(sp)
    80004474:	00013403          	ld	s0,0(sp)
    80004478:	01010113          	addi	sp,sp,16
    8000447c:	00008067          	ret

0000000080004480 <_ZN7WorkerC3runEv>:
    void run() override {
    80004480:	ff010113          	addi	sp,sp,-16
    80004484:	00113423          	sd	ra,8(sp)
    80004488:	00813023          	sd	s0,0(sp)
    8000448c:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80004490:	00000593          	li	a1,0
    80004494:	00000097          	auipc	ra,0x0
    80004498:	8bc080e7          	jalr	-1860(ra) # 80003d50 <_ZN7WorkerC11workerBodyCEPv>
    }
    8000449c:	00813083          	ld	ra,8(sp)
    800044a0:	00013403          	ld	s0,0(sp)
    800044a4:	01010113          	addi	sp,sp,16
    800044a8:	00008067          	ret

00000000800044ac <_ZN7WorkerD3runEv>:
    void run() override {
    800044ac:	ff010113          	addi	sp,sp,-16
    800044b0:	00113423          	sd	ra,8(sp)
    800044b4:	00813023          	sd	s0,0(sp)
    800044b8:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800044bc:	00000593          	li	a1,0
    800044c0:	00000097          	auipc	ra,0x0
    800044c4:	a10080e7          	jalr	-1520(ra) # 80003ed0 <_ZN7WorkerD11workerBodyDEPv>
    }
    800044c8:	00813083          	ld	ra,8(sp)
    800044cc:	00013403          	ld	s0,0(sp)
    800044d0:	01010113          	addi	sp,sp,16
    800044d4:	00008067          	ret

00000000800044d8 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    800044d8:	f8010113          	addi	sp,sp,-128
    800044dc:	06113c23          	sd	ra,120(sp)
    800044e0:	06813823          	sd	s0,112(sp)
    800044e4:	06913423          	sd	s1,104(sp)
    800044e8:	07213023          	sd	s2,96(sp)
    800044ec:	05313c23          	sd	s3,88(sp)
    800044f0:	05413823          	sd	s4,80(sp)
    800044f4:	05513423          	sd	s5,72(sp)
    800044f8:	05613023          	sd	s6,64(sp)
    800044fc:	03713c23          	sd	s7,56(sp)
    80004500:	03813823          	sd	s8,48(sp)
    80004504:	03913423          	sd	s9,40(sp)
    80004508:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    8000450c:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80004510:	00005517          	auipc	a0,0x5
    80004514:	c2050513          	addi	a0,a0,-992 # 80009130 <CONSOLE_STATUS+0x120>
    80004518:	00002097          	auipc	ra,0x2
    8000451c:	8c8080e7          	jalr	-1848(ra) # 80005de0 <_Z11printStringPKc>
    getString(input, 30);
    80004520:	01e00593          	li	a1,30
    80004524:	f8040493          	addi	s1,s0,-128
    80004528:	00048513          	mv	a0,s1
    8000452c:	00002097          	auipc	ra,0x2
    80004530:	93c080e7          	jalr	-1732(ra) # 80005e68 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004534:	00048513          	mv	a0,s1
    80004538:	00002097          	auipc	ra,0x2
    8000453c:	a08080e7          	jalr	-1528(ra) # 80005f40 <_Z11stringToIntPKc>
    80004540:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80004544:	00005517          	auipc	a0,0x5
    80004548:	c0c50513          	addi	a0,a0,-1012 # 80009150 <CONSOLE_STATUS+0x140>
    8000454c:	00002097          	auipc	ra,0x2
    80004550:	894080e7          	jalr	-1900(ra) # 80005de0 <_Z11printStringPKc>
    getString(input, 30);
    80004554:	01e00593          	li	a1,30
    80004558:	00048513          	mv	a0,s1
    8000455c:	00002097          	auipc	ra,0x2
    80004560:	90c080e7          	jalr	-1780(ra) # 80005e68 <_Z9getStringPci>
    n = stringToInt(input);
    80004564:	00048513          	mv	a0,s1
    80004568:	00002097          	auipc	ra,0x2
    8000456c:	9d8080e7          	jalr	-1576(ra) # 80005f40 <_Z11stringToIntPKc>
    80004570:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80004574:	00005517          	auipc	a0,0x5
    80004578:	bfc50513          	addi	a0,a0,-1028 # 80009170 <CONSOLE_STATUS+0x160>
    8000457c:	00002097          	auipc	ra,0x2
    80004580:	864080e7          	jalr	-1948(ra) # 80005de0 <_Z11printStringPKc>
    printInt(threadNum);
    80004584:	00000613          	li	a2,0
    80004588:	00a00593          	li	a1,10
    8000458c:	00098513          	mv	a0,s3
    80004590:	00002097          	auipc	ra,0x2
    80004594:	a00080e7          	jalr	-1536(ra) # 80005f90 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80004598:	00005517          	auipc	a0,0x5
    8000459c:	bf050513          	addi	a0,a0,-1040 # 80009188 <CONSOLE_STATUS+0x178>
    800045a0:	00002097          	auipc	ra,0x2
    800045a4:	840080e7          	jalr	-1984(ra) # 80005de0 <_Z11printStringPKc>
    printInt(n);
    800045a8:	00000613          	li	a2,0
    800045ac:	00a00593          	li	a1,10
    800045b0:	00048513          	mv	a0,s1
    800045b4:	00002097          	auipc	ra,0x2
    800045b8:	9dc080e7          	jalr	-1572(ra) # 80005f90 <_Z8printIntiii>
    printString(".\n");
    800045bc:	00005517          	auipc	a0,0x5
    800045c0:	be450513          	addi	a0,a0,-1052 # 800091a0 <CONSOLE_STATUS+0x190>
    800045c4:	00002097          	auipc	ra,0x2
    800045c8:	81c080e7          	jalr	-2020(ra) # 80005de0 <_Z11printStringPKc>
    if (threadNum > n) {
    800045cc:	0334c463          	blt	s1,s3,800045f4 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    800045d0:	03305c63          	blez	s3,80004608 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    800045d4:	03800513          	li	a0,56
    800045d8:	ffffe097          	auipc	ra,0xffffe
    800045dc:	a14080e7          	jalr	-1516(ra) # 80001fec <_Znwm>
    800045e0:	00050a93          	mv	s5,a0
    800045e4:	00048593          	mv	a1,s1
    800045e8:	00002097          	auipc	ra,0x2
    800045ec:	ac8080e7          	jalr	-1336(ra) # 800060b0 <_ZN9BufferCPPC1Ei>
    800045f0:	0300006f          	j	80004620 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800045f4:	00005517          	auipc	a0,0x5
    800045f8:	bb450513          	addi	a0,a0,-1100 # 800091a8 <CONSOLE_STATUS+0x198>
    800045fc:	00001097          	auipc	ra,0x1
    80004600:	7e4080e7          	jalr	2020(ra) # 80005de0 <_Z11printStringPKc>
        return;
    80004604:	0140006f          	j	80004618 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004608:	00005517          	auipc	a0,0x5
    8000460c:	be050513          	addi	a0,a0,-1056 # 800091e8 <CONSOLE_STATUS+0x1d8>
    80004610:	00001097          	auipc	ra,0x1
    80004614:	7d0080e7          	jalr	2000(ra) # 80005de0 <_Z11printStringPKc>
        return;
    80004618:	000c0113          	mv	sp,s8
    8000461c:	2140006f          	j	80004830 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80004620:	01000513          	li	a0,16
    80004624:	ffffe097          	auipc	ra,0xffffe
    80004628:	9c8080e7          	jalr	-1592(ra) # 80001fec <_Znwm>
    8000462c:	00050913          	mv	s2,a0
    80004630:	00000593          	li	a1,0
    80004634:	ffffe097          	auipc	ra,0xffffe
    80004638:	b70080e7          	jalr	-1168(ra) # 800021a4 <_ZN9SemaphoreC1Ej>
    8000463c:	00007797          	auipc	a5,0x7
    80004640:	7b27ba23          	sd	s2,1972(a5) # 8000bdf0 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80004644:	00399793          	slli	a5,s3,0x3
    80004648:	00f78793          	addi	a5,a5,15
    8000464c:	ff07f793          	andi	a5,a5,-16
    80004650:	40f10133          	sub	sp,sp,a5
    80004654:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80004658:	0019871b          	addiw	a4,s3,1
    8000465c:	00171793          	slli	a5,a4,0x1
    80004660:	00e787b3          	add	a5,a5,a4
    80004664:	00379793          	slli	a5,a5,0x3
    80004668:	00f78793          	addi	a5,a5,15
    8000466c:	ff07f793          	andi	a5,a5,-16
    80004670:	40f10133          	sub	sp,sp,a5
    80004674:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80004678:	00199493          	slli	s1,s3,0x1
    8000467c:	013484b3          	add	s1,s1,s3
    80004680:	00349493          	slli	s1,s1,0x3
    80004684:	009b04b3          	add	s1,s6,s1
    80004688:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    8000468c:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80004690:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004694:	02800513          	li	a0,40
    80004698:	ffffe097          	auipc	ra,0xffffe
    8000469c:	954080e7          	jalr	-1708(ra) # 80001fec <_Znwm>
    800046a0:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    800046a4:	ffffe097          	auipc	ra,0xffffe
    800046a8:	a48080e7          	jalr	-1464(ra) # 800020ec <_ZN6ThreadC1Ev>
    800046ac:	00007797          	auipc	a5,0x7
    800046b0:	57478793          	addi	a5,a5,1396 # 8000bc20 <_ZTV8Consumer+0x10>
    800046b4:	00fbb023          	sd	a5,0(s7)
    800046b8:	029bb023          	sd	s1,32(s7)
    consumer->start();
    800046bc:	000b8513          	mv	a0,s7
    800046c0:	ffffe097          	auipc	ra,0xffffe
    800046c4:	a5c080e7          	jalr	-1444(ra) # 8000211c <_ZN6Thread5startEv>
    threadData[0].id = 0;
    800046c8:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    800046cc:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    800046d0:	00007797          	auipc	a5,0x7
    800046d4:	7207b783          	ld	a5,1824(a5) # 8000bdf0 <_ZL10waitForAll>
    800046d8:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800046dc:	02800513          	li	a0,40
    800046e0:	ffffe097          	auipc	ra,0xffffe
    800046e4:	90c080e7          	jalr	-1780(ra) # 80001fec <_Znwm>
    800046e8:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    800046ec:	ffffe097          	auipc	ra,0xffffe
    800046f0:	a00080e7          	jalr	-1536(ra) # 800020ec <_ZN6ThreadC1Ev>
    800046f4:	00007797          	auipc	a5,0x7
    800046f8:	4dc78793          	addi	a5,a5,1244 # 8000bbd0 <_ZTV16ProducerKeyborad+0x10>
    800046fc:	00f4b023          	sd	a5,0(s1)
    80004700:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004704:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80004708:	00048513          	mv	a0,s1
    8000470c:	ffffe097          	auipc	ra,0xffffe
    80004710:	a10080e7          	jalr	-1520(ra) # 8000211c <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004714:	00100913          	li	s2,1
    80004718:	0300006f          	j	80004748 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    8000471c:	00007797          	auipc	a5,0x7
    80004720:	4dc78793          	addi	a5,a5,1244 # 8000bbf8 <_ZTV8Producer+0x10>
    80004724:	00fcb023          	sd	a5,0(s9)
    80004728:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    8000472c:	00391793          	slli	a5,s2,0x3
    80004730:	00fa07b3          	add	a5,s4,a5
    80004734:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80004738:	000c8513          	mv	a0,s9
    8000473c:	ffffe097          	auipc	ra,0xffffe
    80004740:	9e0080e7          	jalr	-1568(ra) # 8000211c <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004744:	0019091b          	addiw	s2,s2,1
    80004748:	05395263          	bge	s2,s3,8000478c <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    8000474c:	00191493          	slli	s1,s2,0x1
    80004750:	012484b3          	add	s1,s1,s2
    80004754:	00349493          	slli	s1,s1,0x3
    80004758:	009b04b3          	add	s1,s6,s1
    8000475c:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80004760:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80004764:	00007797          	auipc	a5,0x7
    80004768:	68c7b783          	ld	a5,1676(a5) # 8000bdf0 <_ZL10waitForAll>
    8000476c:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80004770:	02800513          	li	a0,40
    80004774:	ffffe097          	auipc	ra,0xffffe
    80004778:	878080e7          	jalr	-1928(ra) # 80001fec <_Znwm>
    8000477c:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004780:	ffffe097          	auipc	ra,0xffffe
    80004784:	96c080e7          	jalr	-1684(ra) # 800020ec <_ZN6ThreadC1Ev>
    80004788:	f95ff06f          	j	8000471c <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    8000478c:	ffffe097          	auipc	ra,0xffffe
    80004790:	9c8080e7          	jalr	-1592(ra) # 80002154 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004794:	00000493          	li	s1,0
    80004798:	0099ce63          	blt	s3,s1,800047b4 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    8000479c:	00007517          	auipc	a0,0x7
    800047a0:	65453503          	ld	a0,1620(a0) # 8000bdf0 <_ZL10waitForAll>
    800047a4:	ffffe097          	auipc	ra,0xffffe
    800047a8:	a3c080e7          	jalr	-1476(ra) # 800021e0 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800047ac:	0014849b          	addiw	s1,s1,1
    800047b0:	fe9ff06f          	j	80004798 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    800047b4:	00007517          	auipc	a0,0x7
    800047b8:	63c53503          	ld	a0,1596(a0) # 8000bdf0 <_ZL10waitForAll>
    800047bc:	00050863          	beqz	a0,800047cc <_Z20testConsumerProducerv+0x2f4>
    800047c0:	00053783          	ld	a5,0(a0)
    800047c4:	0087b783          	ld	a5,8(a5)
    800047c8:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    800047cc:	00000493          	li	s1,0
    800047d0:	0080006f          	j	800047d8 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    800047d4:	0014849b          	addiw	s1,s1,1
    800047d8:	0334d263          	bge	s1,s3,800047fc <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    800047dc:	00349793          	slli	a5,s1,0x3
    800047e0:	00fa07b3          	add	a5,s4,a5
    800047e4:	0007b503          	ld	a0,0(a5)
    800047e8:	fe0506e3          	beqz	a0,800047d4 <_Z20testConsumerProducerv+0x2fc>
    800047ec:	00053783          	ld	a5,0(a0)
    800047f0:	0087b783          	ld	a5,8(a5)
    800047f4:	000780e7          	jalr	a5
    800047f8:	fddff06f          	j	800047d4 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    800047fc:	000b8a63          	beqz	s7,80004810 <_Z20testConsumerProducerv+0x338>
    80004800:	000bb783          	ld	a5,0(s7)
    80004804:	0087b783          	ld	a5,8(a5)
    80004808:	000b8513          	mv	a0,s7
    8000480c:	000780e7          	jalr	a5
    delete buffer;
    80004810:	000a8e63          	beqz	s5,8000482c <_Z20testConsumerProducerv+0x354>
    80004814:	000a8513          	mv	a0,s5
    80004818:	00002097          	auipc	ra,0x2
    8000481c:	b90080e7          	jalr	-1136(ra) # 800063a8 <_ZN9BufferCPPD1Ev>
    80004820:	000a8513          	mv	a0,s5
    80004824:	ffffd097          	auipc	ra,0xffffd
    80004828:	7f0080e7          	jalr	2032(ra) # 80002014 <_ZdlPv>
    8000482c:	000c0113          	mv	sp,s8
}
    80004830:	f8040113          	addi	sp,s0,-128
    80004834:	07813083          	ld	ra,120(sp)
    80004838:	07013403          	ld	s0,112(sp)
    8000483c:	06813483          	ld	s1,104(sp)
    80004840:	06013903          	ld	s2,96(sp)
    80004844:	05813983          	ld	s3,88(sp)
    80004848:	05013a03          	ld	s4,80(sp)
    8000484c:	04813a83          	ld	s5,72(sp)
    80004850:	04013b03          	ld	s6,64(sp)
    80004854:	03813b83          	ld	s7,56(sp)
    80004858:	03013c03          	ld	s8,48(sp)
    8000485c:	02813c83          	ld	s9,40(sp)
    80004860:	08010113          	addi	sp,sp,128
    80004864:	00008067          	ret
    80004868:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    8000486c:	000a8513          	mv	a0,s5
    80004870:	ffffd097          	auipc	ra,0xffffd
    80004874:	7a4080e7          	jalr	1956(ra) # 80002014 <_ZdlPv>
    80004878:	00048513          	mv	a0,s1
    8000487c:	00008097          	auipc	ra,0x8
    80004880:	66c080e7          	jalr	1644(ra) # 8000cee8 <_Unwind_Resume>
    80004884:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80004888:	00090513          	mv	a0,s2
    8000488c:	ffffd097          	auipc	ra,0xffffd
    80004890:	788080e7          	jalr	1928(ra) # 80002014 <_ZdlPv>
    80004894:	00048513          	mv	a0,s1
    80004898:	00008097          	auipc	ra,0x8
    8000489c:	650080e7          	jalr	1616(ra) # 8000cee8 <_Unwind_Resume>
    800048a0:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800048a4:	000b8513          	mv	a0,s7
    800048a8:	ffffd097          	auipc	ra,0xffffd
    800048ac:	76c080e7          	jalr	1900(ra) # 80002014 <_ZdlPv>
    800048b0:	00048513          	mv	a0,s1
    800048b4:	00008097          	auipc	ra,0x8
    800048b8:	634080e7          	jalr	1588(ra) # 8000cee8 <_Unwind_Resume>
    800048bc:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800048c0:	00048513          	mv	a0,s1
    800048c4:	ffffd097          	auipc	ra,0xffffd
    800048c8:	750080e7          	jalr	1872(ra) # 80002014 <_ZdlPv>
    800048cc:	00090513          	mv	a0,s2
    800048d0:	00008097          	auipc	ra,0x8
    800048d4:	618080e7          	jalr	1560(ra) # 8000cee8 <_Unwind_Resume>
    800048d8:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    800048dc:	000c8513          	mv	a0,s9
    800048e0:	ffffd097          	auipc	ra,0xffffd
    800048e4:	734080e7          	jalr	1844(ra) # 80002014 <_ZdlPv>
    800048e8:	00048513          	mv	a0,s1
    800048ec:	00008097          	auipc	ra,0x8
    800048f0:	5fc080e7          	jalr	1532(ra) # 8000cee8 <_Unwind_Resume>

00000000800048f4 <_ZN8Consumer3runEv>:
    void run() override {
    800048f4:	fd010113          	addi	sp,sp,-48
    800048f8:	02113423          	sd	ra,40(sp)
    800048fc:	02813023          	sd	s0,32(sp)
    80004900:	00913c23          	sd	s1,24(sp)
    80004904:	01213823          	sd	s2,16(sp)
    80004908:	01313423          	sd	s3,8(sp)
    8000490c:	03010413          	addi	s0,sp,48
    80004910:	00050913          	mv	s2,a0
        int i = 0;
    80004914:	00000993          	li	s3,0
    80004918:	0100006f          	j	80004928 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    8000491c:	00a00513          	li	a0,10
    80004920:	ffffe097          	auipc	ra,0xffffe
    80004924:	a18080e7          	jalr	-1512(ra) # 80002338 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80004928:	00007797          	auipc	a5,0x7
    8000492c:	4c07a783          	lw	a5,1216(a5) # 8000bde8 <_ZL9threadEnd>
    80004930:	04079a63          	bnez	a5,80004984 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80004934:	02093783          	ld	a5,32(s2)
    80004938:	0087b503          	ld	a0,8(a5)
    8000493c:	00002097          	auipc	ra,0x2
    80004940:	958080e7          	jalr	-1704(ra) # 80006294 <_ZN9BufferCPP3getEv>
            i++;
    80004944:	0019849b          	addiw	s1,s3,1
    80004948:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    8000494c:	0ff57513          	andi	a0,a0,255
    80004950:	ffffe097          	auipc	ra,0xffffe
    80004954:	9e8080e7          	jalr	-1560(ra) # 80002338 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80004958:	05000793          	li	a5,80
    8000495c:	02f4e4bb          	remw	s1,s1,a5
    80004960:	fc0494e3          	bnez	s1,80004928 <_ZN8Consumer3runEv+0x34>
    80004964:	fb9ff06f          	j	8000491c <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80004968:	02093783          	ld	a5,32(s2)
    8000496c:	0087b503          	ld	a0,8(a5)
    80004970:	00002097          	auipc	ra,0x2
    80004974:	924080e7          	jalr	-1756(ra) # 80006294 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80004978:	0ff57513          	andi	a0,a0,255
    8000497c:	ffffe097          	auipc	ra,0xffffe
    80004980:	9bc080e7          	jalr	-1604(ra) # 80002338 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80004984:	02093783          	ld	a5,32(s2)
    80004988:	0087b503          	ld	a0,8(a5)
    8000498c:	00002097          	auipc	ra,0x2
    80004990:	994080e7          	jalr	-1644(ra) # 80006320 <_ZN9BufferCPP6getCntEv>
    80004994:	fca04ae3          	bgtz	a0,80004968 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004998:	02093783          	ld	a5,32(s2)
    8000499c:	0107b503          	ld	a0,16(a5)
    800049a0:	ffffe097          	auipc	ra,0xffffe
    800049a4:	878080e7          	jalr	-1928(ra) # 80002218 <_ZN9Semaphore6signalEv>
    }
    800049a8:	02813083          	ld	ra,40(sp)
    800049ac:	02013403          	ld	s0,32(sp)
    800049b0:	01813483          	ld	s1,24(sp)
    800049b4:	01013903          	ld	s2,16(sp)
    800049b8:	00813983          	ld	s3,8(sp)
    800049bc:	03010113          	addi	sp,sp,48
    800049c0:	00008067          	ret

00000000800049c4 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    800049c4:	ff010113          	addi	sp,sp,-16
    800049c8:	00113423          	sd	ra,8(sp)
    800049cc:	00813023          	sd	s0,0(sp)
    800049d0:	01010413          	addi	s0,sp,16
    800049d4:	00007797          	auipc	a5,0x7
    800049d8:	24c78793          	addi	a5,a5,588 # 8000bc20 <_ZTV8Consumer+0x10>
    800049dc:	00f53023          	sd	a5,0(a0)
    800049e0:	ffffd097          	auipc	ra,0xffffd
    800049e4:	574080e7          	jalr	1396(ra) # 80001f54 <_ZN6ThreadD1Ev>
    800049e8:	00813083          	ld	ra,8(sp)
    800049ec:	00013403          	ld	s0,0(sp)
    800049f0:	01010113          	addi	sp,sp,16
    800049f4:	00008067          	ret

00000000800049f8 <_ZN8ConsumerD0Ev>:
    800049f8:	fe010113          	addi	sp,sp,-32
    800049fc:	00113c23          	sd	ra,24(sp)
    80004a00:	00813823          	sd	s0,16(sp)
    80004a04:	00913423          	sd	s1,8(sp)
    80004a08:	02010413          	addi	s0,sp,32
    80004a0c:	00050493          	mv	s1,a0
    80004a10:	00007797          	auipc	a5,0x7
    80004a14:	21078793          	addi	a5,a5,528 # 8000bc20 <_ZTV8Consumer+0x10>
    80004a18:	00f53023          	sd	a5,0(a0)
    80004a1c:	ffffd097          	auipc	ra,0xffffd
    80004a20:	538080e7          	jalr	1336(ra) # 80001f54 <_ZN6ThreadD1Ev>
    80004a24:	00048513          	mv	a0,s1
    80004a28:	ffffd097          	auipc	ra,0xffffd
    80004a2c:	5ec080e7          	jalr	1516(ra) # 80002014 <_ZdlPv>
    80004a30:	01813083          	ld	ra,24(sp)
    80004a34:	01013403          	ld	s0,16(sp)
    80004a38:	00813483          	ld	s1,8(sp)
    80004a3c:	02010113          	addi	sp,sp,32
    80004a40:	00008067          	ret

0000000080004a44 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004a44:	ff010113          	addi	sp,sp,-16
    80004a48:	00113423          	sd	ra,8(sp)
    80004a4c:	00813023          	sd	s0,0(sp)
    80004a50:	01010413          	addi	s0,sp,16
    80004a54:	00007797          	auipc	a5,0x7
    80004a58:	17c78793          	addi	a5,a5,380 # 8000bbd0 <_ZTV16ProducerKeyborad+0x10>
    80004a5c:	00f53023          	sd	a5,0(a0)
    80004a60:	ffffd097          	auipc	ra,0xffffd
    80004a64:	4f4080e7          	jalr	1268(ra) # 80001f54 <_ZN6ThreadD1Ev>
    80004a68:	00813083          	ld	ra,8(sp)
    80004a6c:	00013403          	ld	s0,0(sp)
    80004a70:	01010113          	addi	sp,sp,16
    80004a74:	00008067          	ret

0000000080004a78 <_ZN16ProducerKeyboradD0Ev>:
    80004a78:	fe010113          	addi	sp,sp,-32
    80004a7c:	00113c23          	sd	ra,24(sp)
    80004a80:	00813823          	sd	s0,16(sp)
    80004a84:	00913423          	sd	s1,8(sp)
    80004a88:	02010413          	addi	s0,sp,32
    80004a8c:	00050493          	mv	s1,a0
    80004a90:	00007797          	auipc	a5,0x7
    80004a94:	14078793          	addi	a5,a5,320 # 8000bbd0 <_ZTV16ProducerKeyborad+0x10>
    80004a98:	00f53023          	sd	a5,0(a0)
    80004a9c:	ffffd097          	auipc	ra,0xffffd
    80004aa0:	4b8080e7          	jalr	1208(ra) # 80001f54 <_ZN6ThreadD1Ev>
    80004aa4:	00048513          	mv	a0,s1
    80004aa8:	ffffd097          	auipc	ra,0xffffd
    80004aac:	56c080e7          	jalr	1388(ra) # 80002014 <_ZdlPv>
    80004ab0:	01813083          	ld	ra,24(sp)
    80004ab4:	01013403          	ld	s0,16(sp)
    80004ab8:	00813483          	ld	s1,8(sp)
    80004abc:	02010113          	addi	sp,sp,32
    80004ac0:	00008067          	ret

0000000080004ac4 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004ac4:	ff010113          	addi	sp,sp,-16
    80004ac8:	00113423          	sd	ra,8(sp)
    80004acc:	00813023          	sd	s0,0(sp)
    80004ad0:	01010413          	addi	s0,sp,16
    80004ad4:	00007797          	auipc	a5,0x7
    80004ad8:	12478793          	addi	a5,a5,292 # 8000bbf8 <_ZTV8Producer+0x10>
    80004adc:	00f53023          	sd	a5,0(a0)
    80004ae0:	ffffd097          	auipc	ra,0xffffd
    80004ae4:	474080e7          	jalr	1140(ra) # 80001f54 <_ZN6ThreadD1Ev>
    80004ae8:	00813083          	ld	ra,8(sp)
    80004aec:	00013403          	ld	s0,0(sp)
    80004af0:	01010113          	addi	sp,sp,16
    80004af4:	00008067          	ret

0000000080004af8 <_ZN8ProducerD0Ev>:
    80004af8:	fe010113          	addi	sp,sp,-32
    80004afc:	00113c23          	sd	ra,24(sp)
    80004b00:	00813823          	sd	s0,16(sp)
    80004b04:	00913423          	sd	s1,8(sp)
    80004b08:	02010413          	addi	s0,sp,32
    80004b0c:	00050493          	mv	s1,a0
    80004b10:	00007797          	auipc	a5,0x7
    80004b14:	0e878793          	addi	a5,a5,232 # 8000bbf8 <_ZTV8Producer+0x10>
    80004b18:	00f53023          	sd	a5,0(a0)
    80004b1c:	ffffd097          	auipc	ra,0xffffd
    80004b20:	438080e7          	jalr	1080(ra) # 80001f54 <_ZN6ThreadD1Ev>
    80004b24:	00048513          	mv	a0,s1
    80004b28:	ffffd097          	auipc	ra,0xffffd
    80004b2c:	4ec080e7          	jalr	1260(ra) # 80002014 <_ZdlPv>
    80004b30:	01813083          	ld	ra,24(sp)
    80004b34:	01013403          	ld	s0,16(sp)
    80004b38:	00813483          	ld	s1,8(sp)
    80004b3c:	02010113          	addi	sp,sp,32
    80004b40:	00008067          	ret

0000000080004b44 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004b44:	fe010113          	addi	sp,sp,-32
    80004b48:	00113c23          	sd	ra,24(sp)
    80004b4c:	00813823          	sd	s0,16(sp)
    80004b50:	00913423          	sd	s1,8(sp)
    80004b54:	02010413          	addi	s0,sp,32
    80004b58:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80004b5c:	ffffd097          	auipc	ra,0xffffd
    80004b60:	ac4080e7          	jalr	-1340(ra) # 80001620 <_Z4getcv>
    80004b64:	0005059b          	sext.w	a1,a0
    80004b68:	01b00793          	li	a5,27
    80004b6c:	00f58c63          	beq	a1,a5,80004b84 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80004b70:	0204b783          	ld	a5,32(s1)
    80004b74:	0087b503          	ld	a0,8(a5)
    80004b78:	00001097          	auipc	ra,0x1
    80004b7c:	68c080e7          	jalr	1676(ra) # 80006204 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80004b80:	fddff06f          	j	80004b5c <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004b84:	00100793          	li	a5,1
    80004b88:	00007717          	auipc	a4,0x7
    80004b8c:	26f72023          	sw	a5,608(a4) # 8000bde8 <_ZL9threadEnd>
        td->buffer->put('!');
    80004b90:	0204b783          	ld	a5,32(s1)
    80004b94:	02100593          	li	a1,33
    80004b98:	0087b503          	ld	a0,8(a5)
    80004b9c:	00001097          	auipc	ra,0x1
    80004ba0:	668080e7          	jalr	1640(ra) # 80006204 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004ba4:	0204b783          	ld	a5,32(s1)
    80004ba8:	0107b503          	ld	a0,16(a5)
    80004bac:	ffffd097          	auipc	ra,0xffffd
    80004bb0:	66c080e7          	jalr	1644(ra) # 80002218 <_ZN9Semaphore6signalEv>
    }
    80004bb4:	01813083          	ld	ra,24(sp)
    80004bb8:	01013403          	ld	s0,16(sp)
    80004bbc:	00813483          	ld	s1,8(sp)
    80004bc0:	02010113          	addi	sp,sp,32
    80004bc4:	00008067          	ret

0000000080004bc8 <_ZN8Producer3runEv>:
    void run() override {
    80004bc8:	fe010113          	addi	sp,sp,-32
    80004bcc:	00113c23          	sd	ra,24(sp)
    80004bd0:	00813823          	sd	s0,16(sp)
    80004bd4:	00913423          	sd	s1,8(sp)
    80004bd8:	01213023          	sd	s2,0(sp)
    80004bdc:	02010413          	addi	s0,sp,32
    80004be0:	00050493          	mv	s1,a0
        int i = 0;
    80004be4:	00000913          	li	s2,0
        while (!threadEnd) {
    80004be8:	00007797          	auipc	a5,0x7
    80004bec:	2007a783          	lw	a5,512(a5) # 8000bde8 <_ZL9threadEnd>
    80004bf0:	04079263          	bnez	a5,80004c34 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004bf4:	0204b783          	ld	a5,32(s1)
    80004bf8:	0007a583          	lw	a1,0(a5)
    80004bfc:	0305859b          	addiw	a1,a1,48
    80004c00:	0087b503          	ld	a0,8(a5)
    80004c04:	00001097          	auipc	ra,0x1
    80004c08:	600080e7          	jalr	1536(ra) # 80006204 <_ZN9BufferCPP3putEi>
            i++;
    80004c0c:	0019071b          	addiw	a4,s2,1
    80004c10:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004c14:	0204b783          	ld	a5,32(s1)
    80004c18:	0007a783          	lw	a5,0(a5)
    80004c1c:	00e787bb          	addw	a5,a5,a4
    80004c20:	00500513          	li	a0,5
    80004c24:	02a7e53b          	remw	a0,a5,a0
    80004c28:	ffffd097          	auipc	ra,0xffffd
    80004c2c:	554080e7          	jalr	1364(ra) # 8000217c <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004c30:	fb9ff06f          	j	80004be8 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004c34:	0204b783          	ld	a5,32(s1)
    80004c38:	0107b503          	ld	a0,16(a5)
    80004c3c:	ffffd097          	auipc	ra,0xffffd
    80004c40:	5dc080e7          	jalr	1500(ra) # 80002218 <_ZN9Semaphore6signalEv>
    }
    80004c44:	01813083          	ld	ra,24(sp)
    80004c48:	01013403          	ld	s0,16(sp)
    80004c4c:	00813483          	ld	s1,8(sp)
    80004c50:	00013903          	ld	s2,0(sp)
    80004c54:	02010113          	addi	sp,sp,32
    80004c58:	00008067          	ret

0000000080004c5c <_ZN6BufferC1Ei>:
#include "bounded_buffer.hpp"


Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004c5c:	fe010113          	addi	sp,sp,-32
    80004c60:	00113c23          	sd	ra,24(sp)
    80004c64:	00813823          	sd	s0,16(sp)
    80004c68:	00913423          	sd	s1,8(sp)
    80004c6c:	01213023          	sd	s2,0(sp)
    80004c70:	02010413          	addi	s0,sp,32
    80004c74:	00050493          	mv	s1,a0
    80004c78:	00058913          	mv	s2,a1
    80004c7c:	0015879b          	addiw	a5,a1,1
    80004c80:	0007851b          	sext.w	a0,a5
    80004c84:	00f4a023          	sw	a5,0(s1)
    80004c88:	0004a823          	sw	zero,16(s1)
    80004c8c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004c90:	00251513          	slli	a0,a0,0x2
    80004c94:	ffffc097          	auipc	ra,0xffffc
    80004c98:	5c4080e7          	jalr	1476(ra) # 80001258 <_Z9mem_allocm>
    80004c9c:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80004ca0:	00000593          	li	a1,0
    80004ca4:	02048513          	addi	a0,s1,32
    80004ca8:	ffffc097          	auipc	ra,0xffffc
    80004cac:	760080e7          	jalr	1888(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&spaceAvailable, _cap);
    80004cb0:	00090593          	mv	a1,s2
    80004cb4:	01848513          	addi	a0,s1,24
    80004cb8:	ffffc097          	auipc	ra,0xffffc
    80004cbc:	750080e7          	jalr	1872(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&mutexHead, 1);
    80004cc0:	00100593          	li	a1,1
    80004cc4:	02848513          	addi	a0,s1,40
    80004cc8:	ffffc097          	auipc	ra,0xffffc
    80004ccc:	740080e7          	jalr	1856(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&mutexTail, 1);
    80004cd0:	00100593          	li	a1,1
    80004cd4:	03048513          	addi	a0,s1,48
    80004cd8:	ffffc097          	auipc	ra,0xffffc
    80004cdc:	730080e7          	jalr	1840(ra) # 80001408 <_Z8sem_openPP3Semj>
}
    80004ce0:	01813083          	ld	ra,24(sp)
    80004ce4:	01013403          	ld	s0,16(sp)
    80004ce8:	00813483          	ld	s1,8(sp)
    80004cec:	00013903          	ld	s2,0(sp)
    80004cf0:	02010113          	addi	sp,sp,32
    80004cf4:	00008067          	ret

0000000080004cf8 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80004cf8:	fe010113          	addi	sp,sp,-32
    80004cfc:	00113c23          	sd	ra,24(sp)
    80004d00:	00813823          	sd	s0,16(sp)
    80004d04:	00913423          	sd	s1,8(sp)
    80004d08:	01213023          	sd	s2,0(sp)
    80004d0c:	02010413          	addi	s0,sp,32
    80004d10:	00050493          	mv	s1,a0
    80004d14:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80004d18:	01853503          	ld	a0,24(a0)
    80004d1c:	ffffc097          	auipc	ra,0xffffc
    80004d20:	788080e7          	jalr	1928(ra) # 800014a4 <_Z8sem_waitP3Sem>

    sem_wait(mutexTail);
    80004d24:	0304b503          	ld	a0,48(s1)
    80004d28:	ffffc097          	auipc	ra,0xffffc
    80004d2c:	77c080e7          	jalr	1916(ra) # 800014a4 <_Z8sem_waitP3Sem>
    buffer[tail] = val;
    80004d30:	0084b783          	ld	a5,8(s1)
    80004d34:	0144a703          	lw	a4,20(s1)
    80004d38:	00271713          	slli	a4,a4,0x2
    80004d3c:	00e787b3          	add	a5,a5,a4
    80004d40:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80004d44:	0144a783          	lw	a5,20(s1)
    80004d48:	0017879b          	addiw	a5,a5,1
    80004d4c:	0004a703          	lw	a4,0(s1)
    80004d50:	02e7e7bb          	remw	a5,a5,a4
    80004d54:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80004d58:	0304b503          	ld	a0,48(s1)
    80004d5c:	ffffc097          	auipc	ra,0xffffc
    80004d60:	794080e7          	jalr	1940(ra) # 800014f0 <_Z10sem_signalP3Sem>

    sem_signal(itemAvailable);
    80004d64:	0204b503          	ld	a0,32(s1)
    80004d68:	ffffc097          	auipc	ra,0xffffc
    80004d6c:	788080e7          	jalr	1928(ra) # 800014f0 <_Z10sem_signalP3Sem>

}
    80004d70:	01813083          	ld	ra,24(sp)
    80004d74:	01013403          	ld	s0,16(sp)
    80004d78:	00813483          	ld	s1,8(sp)
    80004d7c:	00013903          	ld	s2,0(sp)
    80004d80:	02010113          	addi	sp,sp,32
    80004d84:	00008067          	ret

0000000080004d88 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80004d88:	fe010113          	addi	sp,sp,-32
    80004d8c:	00113c23          	sd	ra,24(sp)
    80004d90:	00813823          	sd	s0,16(sp)
    80004d94:	00913423          	sd	s1,8(sp)
    80004d98:	01213023          	sd	s2,0(sp)
    80004d9c:	02010413          	addi	s0,sp,32
    80004da0:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80004da4:	02053503          	ld	a0,32(a0)
    80004da8:	ffffc097          	auipc	ra,0xffffc
    80004dac:	6fc080e7          	jalr	1788(ra) # 800014a4 <_Z8sem_waitP3Sem>

    sem_wait(mutexHead);
    80004db0:	0284b503          	ld	a0,40(s1)
    80004db4:	ffffc097          	auipc	ra,0xffffc
    80004db8:	6f0080e7          	jalr	1776(ra) # 800014a4 <_Z8sem_waitP3Sem>

    int ret = buffer[head];
    80004dbc:	0084b703          	ld	a4,8(s1)
    80004dc0:	0104a783          	lw	a5,16(s1)
    80004dc4:	00279693          	slli	a3,a5,0x2
    80004dc8:	00d70733          	add	a4,a4,a3
    80004dcc:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80004dd0:	0017879b          	addiw	a5,a5,1
    80004dd4:	0004a703          	lw	a4,0(s1)
    80004dd8:	02e7e7bb          	remw	a5,a5,a4
    80004ddc:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80004de0:	0284b503          	ld	a0,40(s1)
    80004de4:	ffffc097          	auipc	ra,0xffffc
    80004de8:	70c080e7          	jalr	1804(ra) # 800014f0 <_Z10sem_signalP3Sem>

    sem_signal(spaceAvailable);
    80004dec:	0184b503          	ld	a0,24(s1)
    80004df0:	ffffc097          	auipc	ra,0xffffc
    80004df4:	700080e7          	jalr	1792(ra) # 800014f0 <_Z10sem_signalP3Sem>

    return ret;
}
    80004df8:	00090513          	mv	a0,s2
    80004dfc:	01813083          	ld	ra,24(sp)
    80004e00:	01013403          	ld	s0,16(sp)
    80004e04:	00813483          	ld	s1,8(sp)
    80004e08:	00013903          	ld	s2,0(sp)
    80004e0c:	02010113          	addi	sp,sp,32
    80004e10:	00008067          	ret

0000000080004e14 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80004e14:	fe010113          	addi	sp,sp,-32
    80004e18:	00113c23          	sd	ra,24(sp)
    80004e1c:	00813823          	sd	s0,16(sp)
    80004e20:	00913423          	sd	s1,8(sp)
    80004e24:	01213023          	sd	s2,0(sp)
    80004e28:	02010413          	addi	s0,sp,32
    80004e2c:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80004e30:	02853503          	ld	a0,40(a0)
    80004e34:	ffffc097          	auipc	ra,0xffffc
    80004e38:	670080e7          	jalr	1648(ra) # 800014a4 <_Z8sem_waitP3Sem>
    sem_wait(mutexTail);
    80004e3c:	0304b503          	ld	a0,48(s1)
    80004e40:	ffffc097          	auipc	ra,0xffffc
    80004e44:	664080e7          	jalr	1636(ra) # 800014a4 <_Z8sem_waitP3Sem>

    if (tail >= head) {
    80004e48:	0144a783          	lw	a5,20(s1)
    80004e4c:	0104a903          	lw	s2,16(s1)
    80004e50:	0327ce63          	blt	a5,s2,80004e8c <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80004e54:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80004e58:	0304b503          	ld	a0,48(s1)
    80004e5c:	ffffc097          	auipc	ra,0xffffc
    80004e60:	694080e7          	jalr	1684(ra) # 800014f0 <_Z10sem_signalP3Sem>
    sem_signal(mutexHead);
    80004e64:	0284b503          	ld	a0,40(s1)
    80004e68:	ffffc097          	auipc	ra,0xffffc
    80004e6c:	688080e7          	jalr	1672(ra) # 800014f0 <_Z10sem_signalP3Sem>

    return ret;
}
    80004e70:	00090513          	mv	a0,s2
    80004e74:	01813083          	ld	ra,24(sp)
    80004e78:	01013403          	ld	s0,16(sp)
    80004e7c:	00813483          	ld	s1,8(sp)
    80004e80:	00013903          	ld	s2,0(sp)
    80004e84:	02010113          	addi	sp,sp,32
    80004e88:	00008067          	ret
        ret = cap - head + tail;
    80004e8c:	0004a703          	lw	a4,0(s1)
    80004e90:	4127093b          	subw	s2,a4,s2
    80004e94:	00f9093b          	addw	s2,s2,a5
    80004e98:	fc1ff06f          	j	80004e58 <_ZN6Buffer6getCntEv+0x44>

0000000080004e9c <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80004e9c:	fe010113          	addi	sp,sp,-32
    80004ea0:	00113c23          	sd	ra,24(sp)
    80004ea4:	00813823          	sd	s0,16(sp)
    80004ea8:	00913423          	sd	s1,8(sp)
    80004eac:	02010413          	addi	s0,sp,32
    80004eb0:	00050493          	mv	s1,a0
    putc('\n');
    80004eb4:	00a00513          	li	a0,10
    80004eb8:	ffffc097          	auipc	ra,0xffffc
    80004ebc:	7b4080e7          	jalr	1972(ra) # 8000166c <_Z4putcc>
    printString("Buffer deleted!\n");
    80004ec0:	00004517          	auipc	a0,0x4
    80004ec4:	45050513          	addi	a0,a0,1104 # 80009310 <CONSOLE_STATUS+0x300>
    80004ec8:	00001097          	auipc	ra,0x1
    80004ecc:	f18080e7          	jalr	-232(ra) # 80005de0 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80004ed0:	00048513          	mv	a0,s1
    80004ed4:	00000097          	auipc	ra,0x0
    80004ed8:	f40080e7          	jalr	-192(ra) # 80004e14 <_ZN6Buffer6getCntEv>
    80004edc:	02a05c63          	blez	a0,80004f14 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80004ee0:	0084b783          	ld	a5,8(s1)
    80004ee4:	0104a703          	lw	a4,16(s1)
    80004ee8:	00271713          	slli	a4,a4,0x2
    80004eec:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80004ef0:	0007c503          	lbu	a0,0(a5)
    80004ef4:	ffffc097          	auipc	ra,0xffffc
    80004ef8:	778080e7          	jalr	1912(ra) # 8000166c <_Z4putcc>
        head = (head + 1) % cap;
    80004efc:	0104a783          	lw	a5,16(s1)
    80004f00:	0017879b          	addiw	a5,a5,1
    80004f04:	0004a703          	lw	a4,0(s1)
    80004f08:	02e7e7bb          	remw	a5,a5,a4
    80004f0c:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80004f10:	fc1ff06f          	j	80004ed0 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80004f14:	02100513          	li	a0,33
    80004f18:	ffffc097          	auipc	ra,0xffffc
    80004f1c:	754080e7          	jalr	1876(ra) # 8000166c <_Z4putcc>
    putc('\n');
    80004f20:	00a00513          	li	a0,10
    80004f24:	ffffc097          	auipc	ra,0xffffc
    80004f28:	748080e7          	jalr	1864(ra) # 8000166c <_Z4putcc>
    mem_free(buffer);
    80004f2c:	0084b503          	ld	a0,8(s1)
    80004f30:	ffffc097          	auipc	ra,0xffffc
    80004f34:	37c080e7          	jalr	892(ra) # 800012ac <_Z8mem_freePv>
    sem_close(itemAvailable);
    80004f38:	0204b503          	ld	a0,32(s1)
    80004f3c:	ffffc097          	auipc	ra,0xffffc
    80004f40:	51c080e7          	jalr	1308(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(spaceAvailable);
    80004f44:	0184b503          	ld	a0,24(s1)
    80004f48:	ffffc097          	auipc	ra,0xffffc
    80004f4c:	510080e7          	jalr	1296(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(mutexTail);
    80004f50:	0304b503          	ld	a0,48(s1)
    80004f54:	ffffc097          	auipc	ra,0xffffc
    80004f58:	504080e7          	jalr	1284(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(mutexHead);
    80004f5c:	0284b503          	ld	a0,40(s1)
    80004f60:	ffffc097          	auipc	ra,0xffffc
    80004f64:	4f8080e7          	jalr	1272(ra) # 80001458 <_Z9sem_closeP3Sem>
}
    80004f68:	01813083          	ld	ra,24(sp)
    80004f6c:	01013403          	ld	s0,16(sp)
    80004f70:	00813483          	ld	s1,8(sp)
    80004f74:	02010113          	addi	sp,sp,32
    80004f78:	00008067          	ret

0000000080004f7c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004f7c:	fe010113          	addi	sp,sp,-32
    80004f80:	00113c23          	sd	ra,24(sp)
    80004f84:	00813823          	sd	s0,16(sp)
    80004f88:	00913423          	sd	s1,8(sp)
    80004f8c:	01213023          	sd	s2,0(sp)
    80004f90:	02010413          	addi	s0,sp,32
    80004f94:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004f98:	00100793          	li	a5,1
    80004f9c:	02a7f863          	bgeu	a5,a0,80004fcc <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004fa0:	00a00793          	li	a5,10
    80004fa4:	02f577b3          	remu	a5,a0,a5
    80004fa8:	02078e63          	beqz	a5,80004fe4 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004fac:	fff48513          	addi	a0,s1,-1
    80004fb0:	00000097          	auipc	ra,0x0
    80004fb4:	fcc080e7          	jalr	-52(ra) # 80004f7c <_ZL9fibonaccim>
    80004fb8:	00050913          	mv	s2,a0
    80004fbc:	ffe48513          	addi	a0,s1,-2
    80004fc0:	00000097          	auipc	ra,0x0
    80004fc4:	fbc080e7          	jalr	-68(ra) # 80004f7c <_ZL9fibonaccim>
    80004fc8:	00a90533          	add	a0,s2,a0
}
    80004fcc:	01813083          	ld	ra,24(sp)
    80004fd0:	01013403          	ld	s0,16(sp)
    80004fd4:	00813483          	ld	s1,8(sp)
    80004fd8:	00013903          	ld	s2,0(sp)
    80004fdc:	02010113          	addi	sp,sp,32
    80004fe0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004fe4:	ffffc097          	auipc	ra,0xffffc
    80004fe8:	3e8080e7          	jalr	1000(ra) # 800013cc <_Z15thread_dispatchv>
    80004fec:	fc1ff06f          	j	80004fac <_ZL9fibonaccim+0x30>

0000000080004ff0 <_ZL11workerBodyDPv>:
    printString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004ff0:	fe010113          	addi	sp,sp,-32
    80004ff4:	00113c23          	sd	ra,24(sp)
    80004ff8:	00813823          	sd	s0,16(sp)
    80004ffc:	00913423          	sd	s1,8(sp)
    80005000:	01213023          	sd	s2,0(sp)
    80005004:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005008:	00a00493          	li	s1,10
    8000500c:	0400006f          	j	8000504c <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005010:	00004517          	auipc	a0,0x4
    80005014:	26850513          	addi	a0,a0,616 # 80009278 <CONSOLE_STATUS+0x268>
    80005018:	00001097          	auipc	ra,0x1
    8000501c:	dc8080e7          	jalr	-568(ra) # 80005de0 <_Z11printStringPKc>
    80005020:	00000613          	li	a2,0
    80005024:	00a00593          	li	a1,10
    80005028:	00048513          	mv	a0,s1
    8000502c:	00001097          	auipc	ra,0x1
    80005030:	f64080e7          	jalr	-156(ra) # 80005f90 <_Z8printIntiii>
    80005034:	00004517          	auipc	a0,0x4
    80005038:	44450513          	addi	a0,a0,1092 # 80009478 <CONSOLE_STATUS+0x468>
    8000503c:	00001097          	auipc	ra,0x1
    80005040:	da4080e7          	jalr	-604(ra) # 80005de0 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005044:	0014849b          	addiw	s1,s1,1
    80005048:	0ff4f493          	andi	s1,s1,255
    8000504c:	00c00793          	li	a5,12
    80005050:	fc97f0e3          	bgeu	a5,s1,80005010 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005054:	00004517          	auipc	a0,0x4
    80005058:	22c50513          	addi	a0,a0,556 # 80009280 <CONSOLE_STATUS+0x270>
    8000505c:	00001097          	auipc	ra,0x1
    80005060:	d84080e7          	jalr	-636(ra) # 80005de0 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005064:	00500313          	li	t1,5
    thread_dispatch();
    80005068:	ffffc097          	auipc	ra,0xffffc
    8000506c:	364080e7          	jalr	868(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005070:	01000513          	li	a0,16
    80005074:	00000097          	auipc	ra,0x0
    80005078:	f08080e7          	jalr	-248(ra) # 80004f7c <_ZL9fibonaccim>
    8000507c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005080:	00004517          	auipc	a0,0x4
    80005084:	21050513          	addi	a0,a0,528 # 80009290 <CONSOLE_STATUS+0x280>
    80005088:	00001097          	auipc	ra,0x1
    8000508c:	d58080e7          	jalr	-680(ra) # 80005de0 <_Z11printStringPKc>
    80005090:	00000613          	li	a2,0
    80005094:	00a00593          	li	a1,10
    80005098:	0009051b          	sext.w	a0,s2
    8000509c:	00001097          	auipc	ra,0x1
    800050a0:	ef4080e7          	jalr	-268(ra) # 80005f90 <_Z8printIntiii>
    800050a4:	00004517          	auipc	a0,0x4
    800050a8:	3d450513          	addi	a0,a0,980 # 80009478 <CONSOLE_STATUS+0x468>
    800050ac:	00001097          	auipc	ra,0x1
    800050b0:	d34080e7          	jalr	-716(ra) # 80005de0 <_Z11printStringPKc>
    800050b4:	0400006f          	j	800050f4 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800050b8:	00004517          	auipc	a0,0x4
    800050bc:	1c050513          	addi	a0,a0,448 # 80009278 <CONSOLE_STATUS+0x268>
    800050c0:	00001097          	auipc	ra,0x1
    800050c4:	d20080e7          	jalr	-736(ra) # 80005de0 <_Z11printStringPKc>
    800050c8:	00000613          	li	a2,0
    800050cc:	00a00593          	li	a1,10
    800050d0:	00048513          	mv	a0,s1
    800050d4:	00001097          	auipc	ra,0x1
    800050d8:	ebc080e7          	jalr	-324(ra) # 80005f90 <_Z8printIntiii>
    800050dc:	00004517          	auipc	a0,0x4
    800050e0:	39c50513          	addi	a0,a0,924 # 80009478 <CONSOLE_STATUS+0x468>
    800050e4:	00001097          	auipc	ra,0x1
    800050e8:	cfc080e7          	jalr	-772(ra) # 80005de0 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800050ec:	0014849b          	addiw	s1,s1,1
    800050f0:	0ff4f493          	andi	s1,s1,255
    800050f4:	00f00793          	li	a5,15
    800050f8:	fc97f0e3          	bgeu	a5,s1,800050b8 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800050fc:	00004517          	auipc	a0,0x4
    80005100:	1a450513          	addi	a0,a0,420 # 800092a0 <CONSOLE_STATUS+0x290>
    80005104:	00001097          	auipc	ra,0x1
    80005108:	cdc080e7          	jalr	-804(ra) # 80005de0 <_Z11printStringPKc>
    finishedD = true;
    8000510c:	00100793          	li	a5,1
    80005110:	00007717          	auipc	a4,0x7
    80005114:	cef70423          	sb	a5,-792(a4) # 8000bdf8 <_ZL9finishedD>
    thread_dispatch();
    80005118:	ffffc097          	auipc	ra,0xffffc
    8000511c:	2b4080e7          	jalr	692(ra) # 800013cc <_Z15thread_dispatchv>
}
    80005120:	01813083          	ld	ra,24(sp)
    80005124:	01013403          	ld	s0,16(sp)
    80005128:	00813483          	ld	s1,8(sp)
    8000512c:	00013903          	ld	s2,0(sp)
    80005130:	02010113          	addi	sp,sp,32
    80005134:	00008067          	ret

0000000080005138 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005138:	fe010113          	addi	sp,sp,-32
    8000513c:	00113c23          	sd	ra,24(sp)
    80005140:	00813823          	sd	s0,16(sp)
    80005144:	00913423          	sd	s1,8(sp)
    80005148:	01213023          	sd	s2,0(sp)
    8000514c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005150:	00000493          	li	s1,0
    80005154:	0400006f          	j	80005194 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005158:	00004517          	auipc	a0,0x4
    8000515c:	0f050513          	addi	a0,a0,240 # 80009248 <CONSOLE_STATUS+0x238>
    80005160:	00001097          	auipc	ra,0x1
    80005164:	c80080e7          	jalr	-896(ra) # 80005de0 <_Z11printStringPKc>
    80005168:	00000613          	li	a2,0
    8000516c:	00a00593          	li	a1,10
    80005170:	00048513          	mv	a0,s1
    80005174:	00001097          	auipc	ra,0x1
    80005178:	e1c080e7          	jalr	-484(ra) # 80005f90 <_Z8printIntiii>
    8000517c:	00004517          	auipc	a0,0x4
    80005180:	2fc50513          	addi	a0,a0,764 # 80009478 <CONSOLE_STATUS+0x468>
    80005184:	00001097          	auipc	ra,0x1
    80005188:	c5c080e7          	jalr	-932(ra) # 80005de0 <_Z11printStringPKc>
    for (; i < 3; i++) {
    8000518c:	0014849b          	addiw	s1,s1,1
    80005190:	0ff4f493          	andi	s1,s1,255
    80005194:	00200793          	li	a5,2
    80005198:	fc97f0e3          	bgeu	a5,s1,80005158 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    8000519c:	00004517          	auipc	a0,0x4
    800051a0:	0b450513          	addi	a0,a0,180 # 80009250 <CONSOLE_STATUS+0x240>
    800051a4:	00001097          	auipc	ra,0x1
    800051a8:	c3c080e7          	jalr	-964(ra) # 80005de0 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800051ac:	00700313          	li	t1,7
    thread_dispatch();
    800051b0:	ffffc097          	auipc	ra,0xffffc
    800051b4:	21c080e7          	jalr	540(ra) # 800013cc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800051b8:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800051bc:	00004517          	auipc	a0,0x4
    800051c0:	0a450513          	addi	a0,a0,164 # 80009260 <CONSOLE_STATUS+0x250>
    800051c4:	00001097          	auipc	ra,0x1
    800051c8:	c1c080e7          	jalr	-996(ra) # 80005de0 <_Z11printStringPKc>
    800051cc:	00000613          	li	a2,0
    800051d0:	00a00593          	li	a1,10
    800051d4:	0009051b          	sext.w	a0,s2
    800051d8:	00001097          	auipc	ra,0x1
    800051dc:	db8080e7          	jalr	-584(ra) # 80005f90 <_Z8printIntiii>
    800051e0:	00004517          	auipc	a0,0x4
    800051e4:	29850513          	addi	a0,a0,664 # 80009478 <CONSOLE_STATUS+0x468>
    800051e8:	00001097          	auipc	ra,0x1
    800051ec:	bf8080e7          	jalr	-1032(ra) # 80005de0 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800051f0:	00c00513          	li	a0,12
    800051f4:	00000097          	auipc	ra,0x0
    800051f8:	d88080e7          	jalr	-632(ra) # 80004f7c <_ZL9fibonaccim>
    800051fc:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005200:	00004517          	auipc	a0,0x4
    80005204:	06850513          	addi	a0,a0,104 # 80009268 <CONSOLE_STATUS+0x258>
    80005208:	00001097          	auipc	ra,0x1
    8000520c:	bd8080e7          	jalr	-1064(ra) # 80005de0 <_Z11printStringPKc>
    80005210:	00000613          	li	a2,0
    80005214:	00a00593          	li	a1,10
    80005218:	0009051b          	sext.w	a0,s2
    8000521c:	00001097          	auipc	ra,0x1
    80005220:	d74080e7          	jalr	-652(ra) # 80005f90 <_Z8printIntiii>
    80005224:	00004517          	auipc	a0,0x4
    80005228:	25450513          	addi	a0,a0,596 # 80009478 <CONSOLE_STATUS+0x468>
    8000522c:	00001097          	auipc	ra,0x1
    80005230:	bb4080e7          	jalr	-1100(ra) # 80005de0 <_Z11printStringPKc>
    80005234:	0400006f          	j	80005274 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005238:	00004517          	auipc	a0,0x4
    8000523c:	01050513          	addi	a0,a0,16 # 80009248 <CONSOLE_STATUS+0x238>
    80005240:	00001097          	auipc	ra,0x1
    80005244:	ba0080e7          	jalr	-1120(ra) # 80005de0 <_Z11printStringPKc>
    80005248:	00000613          	li	a2,0
    8000524c:	00a00593          	li	a1,10
    80005250:	00048513          	mv	a0,s1
    80005254:	00001097          	auipc	ra,0x1
    80005258:	d3c080e7          	jalr	-708(ra) # 80005f90 <_Z8printIntiii>
    8000525c:	00004517          	auipc	a0,0x4
    80005260:	21c50513          	addi	a0,a0,540 # 80009478 <CONSOLE_STATUS+0x468>
    80005264:	00001097          	auipc	ra,0x1
    80005268:	b7c080e7          	jalr	-1156(ra) # 80005de0 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000526c:	0014849b          	addiw	s1,s1,1
    80005270:	0ff4f493          	andi	s1,s1,255
    80005274:	00500793          	li	a5,5
    80005278:	fc97f0e3          	bgeu	a5,s1,80005238 <_ZL11workerBodyCPv+0x100>
    printString("C finished!\n");
    8000527c:	00004517          	auipc	a0,0x4
    80005280:	0ac50513          	addi	a0,a0,172 # 80009328 <CONSOLE_STATUS+0x318>
    80005284:	00001097          	auipc	ra,0x1
    80005288:	b5c080e7          	jalr	-1188(ra) # 80005de0 <_Z11printStringPKc>
    finishedC = true;
    8000528c:	00100793          	li	a5,1
    80005290:	00007717          	auipc	a4,0x7
    80005294:	b6f704a3          	sb	a5,-1175(a4) # 8000bdf9 <_ZL9finishedC>
    thread_dispatch();
    80005298:	ffffc097          	auipc	ra,0xffffc
    8000529c:	134080e7          	jalr	308(ra) # 800013cc <_Z15thread_dispatchv>
}
    800052a0:	01813083          	ld	ra,24(sp)
    800052a4:	01013403          	ld	s0,16(sp)
    800052a8:	00813483          	ld	s1,8(sp)
    800052ac:	00013903          	ld	s2,0(sp)
    800052b0:	02010113          	addi	sp,sp,32
    800052b4:	00008067          	ret

00000000800052b8 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800052b8:	fe010113          	addi	sp,sp,-32
    800052bc:	00113c23          	sd	ra,24(sp)
    800052c0:	00813823          	sd	s0,16(sp)
    800052c4:	00913423          	sd	s1,8(sp)
    800052c8:	01213023          	sd	s2,0(sp)
    800052cc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800052d0:	00000913          	li	s2,0
    800052d4:	0380006f          	j	8000530c <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    800052d8:	ffffc097          	auipc	ra,0xffffc
    800052dc:	0f4080e7          	jalr	244(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800052e0:	00148493          	addi	s1,s1,1
    800052e4:	000027b7          	lui	a5,0x2
    800052e8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800052ec:	0097ee63          	bltu	a5,s1,80005308 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800052f0:	00000713          	li	a4,0
    800052f4:	000077b7          	lui	a5,0x7
    800052f8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800052fc:	fce7eee3          	bltu	a5,a4,800052d8 <_ZL11workerBodyBPv+0x20>
    80005300:	00170713          	addi	a4,a4,1
    80005304:	ff1ff06f          	j	800052f4 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80005308:	00190913          	addi	s2,s2,1
    8000530c:	00f00793          	li	a5,15
    80005310:	0527e063          	bltu	a5,s2,80005350 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80005314:	00004517          	auipc	a0,0x4
    80005318:	f1c50513          	addi	a0,a0,-228 # 80009230 <CONSOLE_STATUS+0x220>
    8000531c:	00001097          	auipc	ra,0x1
    80005320:	ac4080e7          	jalr	-1340(ra) # 80005de0 <_Z11printStringPKc>
    80005324:	00000613          	li	a2,0
    80005328:	00a00593          	li	a1,10
    8000532c:	0009051b          	sext.w	a0,s2
    80005330:	00001097          	auipc	ra,0x1
    80005334:	c60080e7          	jalr	-928(ra) # 80005f90 <_Z8printIntiii>
    80005338:	00004517          	auipc	a0,0x4
    8000533c:	14050513          	addi	a0,a0,320 # 80009478 <CONSOLE_STATUS+0x468>
    80005340:	00001097          	auipc	ra,0x1
    80005344:	aa0080e7          	jalr	-1376(ra) # 80005de0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005348:	00000493          	li	s1,0
    8000534c:	f99ff06f          	j	800052e4 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80005350:	00004517          	auipc	a0,0x4
    80005354:	ee850513          	addi	a0,a0,-280 # 80009238 <CONSOLE_STATUS+0x228>
    80005358:	00001097          	auipc	ra,0x1
    8000535c:	a88080e7          	jalr	-1400(ra) # 80005de0 <_Z11printStringPKc>
    finishedB = true;
    80005360:	00100793          	li	a5,1
    80005364:	00007717          	auipc	a4,0x7
    80005368:	a8f70b23          	sb	a5,-1386(a4) # 8000bdfa <_ZL9finishedB>
    thread_dispatch();
    8000536c:	ffffc097          	auipc	ra,0xffffc
    80005370:	060080e7          	jalr	96(ra) # 800013cc <_Z15thread_dispatchv>
}
    80005374:	01813083          	ld	ra,24(sp)
    80005378:	01013403          	ld	s0,16(sp)
    8000537c:	00813483          	ld	s1,8(sp)
    80005380:	00013903          	ld	s2,0(sp)
    80005384:	02010113          	addi	sp,sp,32
    80005388:	00008067          	ret

000000008000538c <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    8000538c:	fe010113          	addi	sp,sp,-32
    80005390:	00113c23          	sd	ra,24(sp)
    80005394:	00813823          	sd	s0,16(sp)
    80005398:	00913423          	sd	s1,8(sp)
    8000539c:	01213023          	sd	s2,0(sp)
    800053a0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800053a4:	00000913          	li	s2,0
    800053a8:	0380006f          	j	800053e0 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800053ac:	ffffc097          	auipc	ra,0xffffc
    800053b0:	020080e7          	jalr	32(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800053b4:	00148493          	addi	s1,s1,1
    800053b8:	000027b7          	lui	a5,0x2
    800053bc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800053c0:	0097ee63          	bltu	a5,s1,800053dc <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800053c4:	00000713          	li	a4,0
    800053c8:	000077b7          	lui	a5,0x7
    800053cc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800053d0:	fce7eee3          	bltu	a5,a4,800053ac <_ZL11workerBodyAPv+0x20>
    800053d4:	00170713          	addi	a4,a4,1
    800053d8:	ff1ff06f          	j	800053c8 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800053dc:	00190913          	addi	s2,s2,1
    800053e0:	00900793          	li	a5,9
    800053e4:	0527e063          	bltu	a5,s2,80005424 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800053e8:	00004517          	auipc	a0,0x4
    800053ec:	e3050513          	addi	a0,a0,-464 # 80009218 <CONSOLE_STATUS+0x208>
    800053f0:	00001097          	auipc	ra,0x1
    800053f4:	9f0080e7          	jalr	-1552(ra) # 80005de0 <_Z11printStringPKc>
    800053f8:	00000613          	li	a2,0
    800053fc:	00a00593          	li	a1,10
    80005400:	0009051b          	sext.w	a0,s2
    80005404:	00001097          	auipc	ra,0x1
    80005408:	b8c080e7          	jalr	-1140(ra) # 80005f90 <_Z8printIntiii>
    8000540c:	00004517          	auipc	a0,0x4
    80005410:	06c50513          	addi	a0,a0,108 # 80009478 <CONSOLE_STATUS+0x468>
    80005414:	00001097          	auipc	ra,0x1
    80005418:	9cc080e7          	jalr	-1588(ra) # 80005de0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000541c:	00000493          	li	s1,0
    80005420:	f99ff06f          	j	800053b8 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80005424:	00004517          	auipc	a0,0x4
    80005428:	dfc50513          	addi	a0,a0,-516 # 80009220 <CONSOLE_STATUS+0x210>
    8000542c:	00001097          	auipc	ra,0x1
    80005430:	9b4080e7          	jalr	-1612(ra) # 80005de0 <_Z11printStringPKc>
    finishedA = true;
    80005434:	00100793          	li	a5,1
    80005438:	00007717          	auipc	a4,0x7
    8000543c:	9cf701a3          	sb	a5,-1597(a4) # 8000bdfb <_ZL9finishedA>
}
    80005440:	01813083          	ld	ra,24(sp)
    80005444:	01013403          	ld	s0,16(sp)
    80005448:	00813483          	ld	s1,8(sp)
    8000544c:	00013903          	ld	s2,0(sp)
    80005450:	02010113          	addi	sp,sp,32
    80005454:	00008067          	ret

0000000080005458 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80005458:	fd010113          	addi	sp,sp,-48
    8000545c:	02113423          	sd	ra,40(sp)
    80005460:	02813023          	sd	s0,32(sp)
    80005464:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005468:	00000613          	li	a2,0
    8000546c:	00000597          	auipc	a1,0x0
    80005470:	f2058593          	addi	a1,a1,-224 # 8000538c <_ZL11workerBodyAPv>
    80005474:	fd040513          	addi	a0,s0,-48
    80005478:	ffffc097          	auipc	ra,0xffffc
    8000547c:	e80080e7          	jalr	-384(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80005480:	00004517          	auipc	a0,0x4
    80005484:	e3050513          	addi	a0,a0,-464 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80005488:	00001097          	auipc	ra,0x1
    8000548c:	958080e7          	jalr	-1704(ra) # 80005de0 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005490:	00000613          	li	a2,0
    80005494:	00000597          	auipc	a1,0x0
    80005498:	e2458593          	addi	a1,a1,-476 # 800052b8 <_ZL11workerBodyBPv>
    8000549c:	fd840513          	addi	a0,s0,-40
    800054a0:	ffffc097          	auipc	ra,0xffffc
    800054a4:	e58080e7          	jalr	-424(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    800054a8:	00004517          	auipc	a0,0x4
    800054ac:	e2050513          	addi	a0,a0,-480 # 800092c8 <CONSOLE_STATUS+0x2b8>
    800054b0:	00001097          	auipc	ra,0x1
    800054b4:	930080e7          	jalr	-1744(ra) # 80005de0 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800054b8:	00000613          	li	a2,0
    800054bc:	00000597          	auipc	a1,0x0
    800054c0:	c7c58593          	addi	a1,a1,-900 # 80005138 <_ZL11workerBodyCPv>
    800054c4:	fe040513          	addi	a0,s0,-32
    800054c8:	ffffc097          	auipc	ra,0xffffc
    800054cc:	e30080e7          	jalr	-464(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    800054d0:	00004517          	auipc	a0,0x4
    800054d4:	e1050513          	addi	a0,a0,-496 # 800092e0 <CONSOLE_STATUS+0x2d0>
    800054d8:	00001097          	auipc	ra,0x1
    800054dc:	908080e7          	jalr	-1784(ra) # 80005de0 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800054e0:	00000613          	li	a2,0
    800054e4:	00000597          	auipc	a1,0x0
    800054e8:	b0c58593          	addi	a1,a1,-1268 # 80004ff0 <_ZL11workerBodyDPv>
    800054ec:	fe840513          	addi	a0,s0,-24
    800054f0:	ffffc097          	auipc	ra,0xffffc
    800054f4:	e08080e7          	jalr	-504(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    800054f8:	00004517          	auipc	a0,0x4
    800054fc:	e0050513          	addi	a0,a0,-512 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80005500:	00001097          	auipc	ra,0x1
    80005504:	8e0080e7          	jalr	-1824(ra) # 80005de0 <_Z11printStringPKc>
    80005508:	00c0006f          	j	80005514 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    8000550c:	ffffc097          	auipc	ra,0xffffc
    80005510:	ec0080e7          	jalr	-320(ra) # 800013cc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005514:	00007797          	auipc	a5,0x7
    80005518:	8e77c783          	lbu	a5,-1817(a5) # 8000bdfb <_ZL9finishedA>
    8000551c:	fe0788e3          	beqz	a5,8000550c <_Z18Threads_C_API_testv+0xb4>
    80005520:	00007797          	auipc	a5,0x7
    80005524:	8da7c783          	lbu	a5,-1830(a5) # 8000bdfa <_ZL9finishedB>
    80005528:	fe0782e3          	beqz	a5,8000550c <_Z18Threads_C_API_testv+0xb4>
    8000552c:	00007797          	auipc	a5,0x7
    80005530:	8cd7c783          	lbu	a5,-1843(a5) # 8000bdf9 <_ZL9finishedC>
    80005534:	fc078ce3          	beqz	a5,8000550c <_Z18Threads_C_API_testv+0xb4>
    80005538:	00007797          	auipc	a5,0x7
    8000553c:	8c07c783          	lbu	a5,-1856(a5) # 8000bdf8 <_ZL9finishedD>
    80005540:	fc0786e3          	beqz	a5,8000550c <_Z18Threads_C_API_testv+0xb4>
    }

}
    80005544:	02813083          	ld	ra,40(sp)
    80005548:	02013403          	ld	s0,32(sp)
    8000554c:	03010113          	addi	sp,sp,48
    80005550:	00008067          	ret

0000000080005554 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80005554:	fd010113          	addi	sp,sp,-48
    80005558:	02113423          	sd	ra,40(sp)
    8000555c:	02813023          	sd	s0,32(sp)
    80005560:	00913c23          	sd	s1,24(sp)
    80005564:	01213823          	sd	s2,16(sp)
    80005568:	01313423          	sd	s3,8(sp)
    8000556c:	03010413          	addi	s0,sp,48
    80005570:	00050993          	mv	s3,a0
    80005574:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80005578:	00000913          	li	s2,0
    8000557c:	00c0006f          	j	80005588 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005580:	ffffd097          	auipc	ra,0xffffd
    80005584:	bd4080e7          	jalr	-1068(ra) # 80002154 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80005588:	ffffc097          	auipc	ra,0xffffc
    8000558c:	098080e7          	jalr	152(ra) # 80001620 <_Z4getcv>
    80005590:	0005059b          	sext.w	a1,a0
    80005594:	01b00793          	li	a5,27
    80005598:	02f58a63          	beq	a1,a5,800055cc <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    8000559c:	0084b503          	ld	a0,8(s1)
    800055a0:	00001097          	auipc	ra,0x1
    800055a4:	c64080e7          	jalr	-924(ra) # 80006204 <_ZN9BufferCPP3putEi>
        i++;
    800055a8:	0019071b          	addiw	a4,s2,1
    800055ac:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800055b0:	0004a683          	lw	a3,0(s1)
    800055b4:	0026979b          	slliw	a5,a3,0x2
    800055b8:	00d787bb          	addw	a5,a5,a3
    800055bc:	0017979b          	slliw	a5,a5,0x1
    800055c0:	02f767bb          	remw	a5,a4,a5
    800055c4:	fc0792e3          	bnez	a5,80005588 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    800055c8:	fb9ff06f          	j	80005580 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    800055cc:	00100793          	li	a5,1
    800055d0:	00007717          	auipc	a4,0x7
    800055d4:	82f72823          	sw	a5,-2000(a4) # 8000be00 <_ZL9threadEnd>
    td->buffer->put('!');
    800055d8:	0209b783          	ld	a5,32(s3)
    800055dc:	02100593          	li	a1,33
    800055e0:	0087b503          	ld	a0,8(a5)
    800055e4:	00001097          	auipc	ra,0x1
    800055e8:	c20080e7          	jalr	-992(ra) # 80006204 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    800055ec:	0104b503          	ld	a0,16(s1)
    800055f0:	ffffd097          	auipc	ra,0xffffd
    800055f4:	c28080e7          	jalr	-984(ra) # 80002218 <_ZN9Semaphore6signalEv>
}
    800055f8:	02813083          	ld	ra,40(sp)
    800055fc:	02013403          	ld	s0,32(sp)
    80005600:	01813483          	ld	s1,24(sp)
    80005604:	01013903          	ld	s2,16(sp)
    80005608:	00813983          	ld	s3,8(sp)
    8000560c:	03010113          	addi	sp,sp,48
    80005610:	00008067          	ret

0000000080005614 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80005614:	fe010113          	addi	sp,sp,-32
    80005618:	00113c23          	sd	ra,24(sp)
    8000561c:	00813823          	sd	s0,16(sp)
    80005620:	00913423          	sd	s1,8(sp)
    80005624:	01213023          	sd	s2,0(sp)
    80005628:	02010413          	addi	s0,sp,32
    8000562c:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005630:	00000913          	li	s2,0
    80005634:	00c0006f          	j	80005640 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005638:	ffffd097          	auipc	ra,0xffffd
    8000563c:	b1c080e7          	jalr	-1252(ra) # 80002154 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80005640:	00006797          	auipc	a5,0x6
    80005644:	7c07a783          	lw	a5,1984(a5) # 8000be00 <_ZL9threadEnd>
    80005648:	02079e63          	bnez	a5,80005684 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    8000564c:	0004a583          	lw	a1,0(s1)
    80005650:	0305859b          	addiw	a1,a1,48
    80005654:	0084b503          	ld	a0,8(s1)
    80005658:	00001097          	auipc	ra,0x1
    8000565c:	bac080e7          	jalr	-1108(ra) # 80006204 <_ZN9BufferCPP3putEi>
        i++;
    80005660:	0019071b          	addiw	a4,s2,1
    80005664:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005668:	0004a683          	lw	a3,0(s1)
    8000566c:	0026979b          	slliw	a5,a3,0x2
    80005670:	00d787bb          	addw	a5,a5,a3
    80005674:	0017979b          	slliw	a5,a5,0x1
    80005678:	02f767bb          	remw	a5,a4,a5
    8000567c:	fc0792e3          	bnez	a5,80005640 <_ZN12ProducerSync8producerEPv+0x2c>
    80005680:	fb9ff06f          	j	80005638 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80005684:	0104b503          	ld	a0,16(s1)
    80005688:	ffffd097          	auipc	ra,0xffffd
    8000568c:	b90080e7          	jalr	-1136(ra) # 80002218 <_ZN9Semaphore6signalEv>
}
    80005690:	01813083          	ld	ra,24(sp)
    80005694:	01013403          	ld	s0,16(sp)
    80005698:	00813483          	ld	s1,8(sp)
    8000569c:	00013903          	ld	s2,0(sp)
    800056a0:	02010113          	addi	sp,sp,32
    800056a4:	00008067          	ret

00000000800056a8 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    800056a8:	fd010113          	addi	sp,sp,-48
    800056ac:	02113423          	sd	ra,40(sp)
    800056b0:	02813023          	sd	s0,32(sp)
    800056b4:	00913c23          	sd	s1,24(sp)
    800056b8:	01213823          	sd	s2,16(sp)
    800056bc:	01313423          	sd	s3,8(sp)
    800056c0:	01413023          	sd	s4,0(sp)
    800056c4:	03010413          	addi	s0,sp,48
    800056c8:	00050993          	mv	s3,a0
    800056cc:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800056d0:	00000a13          	li	s4,0
    800056d4:	01c0006f          	j	800056f0 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    800056d8:	ffffd097          	auipc	ra,0xffffd
    800056dc:	a7c080e7          	jalr	-1412(ra) # 80002154 <_ZN6Thread8dispatchEv>
    800056e0:	0500006f          	j	80005730 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    800056e4:	00a00513          	li	a0,10
    800056e8:	ffffc097          	auipc	ra,0xffffc
    800056ec:	f84080e7          	jalr	-124(ra) # 8000166c <_Z4putcc>
    while (!threadEnd) {
    800056f0:	00006797          	auipc	a5,0x6
    800056f4:	7107a783          	lw	a5,1808(a5) # 8000be00 <_ZL9threadEnd>
    800056f8:	06079263          	bnez	a5,8000575c <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    800056fc:	00893503          	ld	a0,8(s2)
    80005700:	00001097          	auipc	ra,0x1
    80005704:	b94080e7          	jalr	-1132(ra) # 80006294 <_ZN9BufferCPP3getEv>
        i++;
    80005708:	001a049b          	addiw	s1,s4,1
    8000570c:	00048a1b          	sext.w	s4,s1
        putc(key);
    80005710:	0ff57513          	andi	a0,a0,255
    80005714:	ffffc097          	auipc	ra,0xffffc
    80005718:	f58080e7          	jalr	-168(ra) # 8000166c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    8000571c:	00092703          	lw	a4,0(s2)
    80005720:	0027179b          	slliw	a5,a4,0x2
    80005724:	00e787bb          	addw	a5,a5,a4
    80005728:	02f4e7bb          	remw	a5,s1,a5
    8000572c:	fa0786e3          	beqz	a5,800056d8 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80005730:	05000793          	li	a5,80
    80005734:	02f4e4bb          	remw	s1,s1,a5
    80005738:	fa049ce3          	bnez	s1,800056f0 <_ZN12ConsumerSync8consumerEPv+0x48>
    8000573c:	fa9ff06f          	j	800056e4 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80005740:	0209b783          	ld	a5,32(s3)
    80005744:	0087b503          	ld	a0,8(a5)
    80005748:	00001097          	auipc	ra,0x1
    8000574c:	b4c080e7          	jalr	-1204(ra) # 80006294 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80005750:	0ff57513          	andi	a0,a0,255
    80005754:	ffffd097          	auipc	ra,0xffffd
    80005758:	be4080e7          	jalr	-1052(ra) # 80002338 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    8000575c:	0209b783          	ld	a5,32(s3)
    80005760:	0087b503          	ld	a0,8(a5)
    80005764:	00001097          	auipc	ra,0x1
    80005768:	bbc080e7          	jalr	-1092(ra) # 80006320 <_ZN9BufferCPP6getCntEv>
    8000576c:	fca04ae3          	bgtz	a0,80005740 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80005770:	01093503          	ld	a0,16(s2)
    80005774:	ffffd097          	auipc	ra,0xffffd
    80005778:	aa4080e7          	jalr	-1372(ra) # 80002218 <_ZN9Semaphore6signalEv>
}
    8000577c:	02813083          	ld	ra,40(sp)
    80005780:	02013403          	ld	s0,32(sp)
    80005784:	01813483          	ld	s1,24(sp)
    80005788:	01013903          	ld	s2,16(sp)
    8000578c:	00813983          	ld	s3,8(sp)
    80005790:	00013a03          	ld	s4,0(sp)
    80005794:	03010113          	addi	sp,sp,48
    80005798:	00008067          	ret

000000008000579c <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    8000579c:	f8010113          	addi	sp,sp,-128
    800057a0:	06113c23          	sd	ra,120(sp)
    800057a4:	06813823          	sd	s0,112(sp)
    800057a8:	06913423          	sd	s1,104(sp)
    800057ac:	07213023          	sd	s2,96(sp)
    800057b0:	05313c23          	sd	s3,88(sp)
    800057b4:	05413823          	sd	s4,80(sp)
    800057b8:	05513423          	sd	s5,72(sp)
    800057bc:	05613023          	sd	s6,64(sp)
    800057c0:	03713c23          	sd	s7,56(sp)
    800057c4:	03813823          	sd	s8,48(sp)
    800057c8:	03913423          	sd	s9,40(sp)
    800057cc:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    800057d0:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    800057d4:	00004517          	auipc	a0,0x4
    800057d8:	95c50513          	addi	a0,a0,-1700 # 80009130 <CONSOLE_STATUS+0x120>
    800057dc:	00000097          	auipc	ra,0x0
    800057e0:	604080e7          	jalr	1540(ra) # 80005de0 <_Z11printStringPKc>
    getString(input, 30);
    800057e4:	01e00593          	li	a1,30
    800057e8:	f8040493          	addi	s1,s0,-128
    800057ec:	00048513          	mv	a0,s1
    800057f0:	00000097          	auipc	ra,0x0
    800057f4:	678080e7          	jalr	1656(ra) # 80005e68 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800057f8:	00048513          	mv	a0,s1
    800057fc:	00000097          	auipc	ra,0x0
    80005800:	744080e7          	jalr	1860(ra) # 80005f40 <_Z11stringToIntPKc>
    80005804:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80005808:	00004517          	auipc	a0,0x4
    8000580c:	94850513          	addi	a0,a0,-1720 # 80009150 <CONSOLE_STATUS+0x140>
    80005810:	00000097          	auipc	ra,0x0
    80005814:	5d0080e7          	jalr	1488(ra) # 80005de0 <_Z11printStringPKc>
    getString(input, 30);
    80005818:	01e00593          	li	a1,30
    8000581c:	00048513          	mv	a0,s1
    80005820:	00000097          	auipc	ra,0x0
    80005824:	648080e7          	jalr	1608(ra) # 80005e68 <_Z9getStringPci>
    n = stringToInt(input);
    80005828:	00048513          	mv	a0,s1
    8000582c:	00000097          	auipc	ra,0x0
    80005830:	714080e7          	jalr	1812(ra) # 80005f40 <_Z11stringToIntPKc>
    80005834:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80005838:	00004517          	auipc	a0,0x4
    8000583c:	93850513          	addi	a0,a0,-1736 # 80009170 <CONSOLE_STATUS+0x160>
    80005840:	00000097          	auipc	ra,0x0
    80005844:	5a0080e7          	jalr	1440(ra) # 80005de0 <_Z11printStringPKc>
    80005848:	00000613          	li	a2,0
    8000584c:	00a00593          	li	a1,10
    80005850:	00090513          	mv	a0,s2
    80005854:	00000097          	auipc	ra,0x0
    80005858:	73c080e7          	jalr	1852(ra) # 80005f90 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    8000585c:	00004517          	auipc	a0,0x4
    80005860:	92c50513          	addi	a0,a0,-1748 # 80009188 <CONSOLE_STATUS+0x178>
    80005864:	00000097          	auipc	ra,0x0
    80005868:	57c080e7          	jalr	1404(ra) # 80005de0 <_Z11printStringPKc>
    8000586c:	00000613          	li	a2,0
    80005870:	00a00593          	li	a1,10
    80005874:	00048513          	mv	a0,s1
    80005878:	00000097          	auipc	ra,0x0
    8000587c:	718080e7          	jalr	1816(ra) # 80005f90 <_Z8printIntiii>
    printString(".\n");
    80005880:	00004517          	auipc	a0,0x4
    80005884:	92050513          	addi	a0,a0,-1760 # 800091a0 <CONSOLE_STATUS+0x190>
    80005888:	00000097          	auipc	ra,0x0
    8000588c:	558080e7          	jalr	1368(ra) # 80005de0 <_Z11printStringPKc>
    if(threadNum > n) {
    80005890:	0324c463          	blt	s1,s2,800058b8 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80005894:	03205c63          	blez	s2,800058cc <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80005898:	03800513          	li	a0,56
    8000589c:	ffffc097          	auipc	ra,0xffffc
    800058a0:	750080e7          	jalr	1872(ra) # 80001fec <_Znwm>
    800058a4:	00050a93          	mv	s5,a0
    800058a8:	00048593          	mv	a1,s1
    800058ac:	00001097          	auipc	ra,0x1
    800058b0:	804080e7          	jalr	-2044(ra) # 800060b0 <_ZN9BufferCPPC1Ei>
    800058b4:	0300006f          	j	800058e4 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800058b8:	00004517          	auipc	a0,0x4
    800058bc:	8f050513          	addi	a0,a0,-1808 # 800091a8 <CONSOLE_STATUS+0x198>
    800058c0:	00000097          	auipc	ra,0x0
    800058c4:	520080e7          	jalr	1312(ra) # 80005de0 <_Z11printStringPKc>
        return;
    800058c8:	0140006f          	j	800058dc <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800058cc:	00004517          	auipc	a0,0x4
    800058d0:	91c50513          	addi	a0,a0,-1764 # 800091e8 <CONSOLE_STATUS+0x1d8>
    800058d4:	00000097          	auipc	ra,0x0
    800058d8:	50c080e7          	jalr	1292(ra) # 80005de0 <_Z11printStringPKc>
        return;
    800058dc:	000b8113          	mv	sp,s7
    800058e0:	2380006f          	j	80005b18 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    800058e4:	01000513          	li	a0,16
    800058e8:	ffffc097          	auipc	ra,0xffffc
    800058ec:	704080e7          	jalr	1796(ra) # 80001fec <_Znwm>
    800058f0:	00050493          	mv	s1,a0
    800058f4:	00000593          	li	a1,0
    800058f8:	ffffd097          	auipc	ra,0xffffd
    800058fc:	8ac080e7          	jalr	-1876(ra) # 800021a4 <_ZN9SemaphoreC1Ej>
    80005900:	00006797          	auipc	a5,0x6
    80005904:	5097b423          	sd	s1,1288(a5) # 8000be08 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80005908:	00391793          	slli	a5,s2,0x3
    8000590c:	00f78793          	addi	a5,a5,15
    80005910:	ff07f793          	andi	a5,a5,-16
    80005914:	40f10133          	sub	sp,sp,a5
    80005918:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    8000591c:	0019071b          	addiw	a4,s2,1
    80005920:	00171793          	slli	a5,a4,0x1
    80005924:	00e787b3          	add	a5,a5,a4
    80005928:	00379793          	slli	a5,a5,0x3
    8000592c:	00f78793          	addi	a5,a5,15
    80005930:	ff07f793          	andi	a5,a5,-16
    80005934:	40f10133          	sub	sp,sp,a5
    80005938:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    8000593c:	00191c13          	slli	s8,s2,0x1
    80005940:	012c07b3          	add	a5,s8,s2
    80005944:	00379793          	slli	a5,a5,0x3
    80005948:	00fa07b3          	add	a5,s4,a5
    8000594c:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80005950:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80005954:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80005958:	02800513          	li	a0,40
    8000595c:	ffffc097          	auipc	ra,0xffffc
    80005960:	690080e7          	jalr	1680(ra) # 80001fec <_Znwm>
    80005964:	00050b13          	mv	s6,a0
    80005968:	012c0c33          	add	s8,s8,s2
    8000596c:	003c1c13          	slli	s8,s8,0x3
    80005970:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80005974:	ffffc097          	auipc	ra,0xffffc
    80005978:	778080e7          	jalr	1912(ra) # 800020ec <_ZN6ThreadC1Ev>
    8000597c:	00006797          	auipc	a5,0x6
    80005980:	31c78793          	addi	a5,a5,796 # 8000bc98 <_ZTV12ConsumerSync+0x10>
    80005984:	00fb3023          	sd	a5,0(s6)
    80005988:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    8000598c:	000b0513          	mv	a0,s6
    80005990:	ffffc097          	auipc	ra,0xffffc
    80005994:	78c080e7          	jalr	1932(ra) # 8000211c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005998:	00000493          	li	s1,0
    8000599c:	0380006f          	j	800059d4 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800059a0:	00006797          	auipc	a5,0x6
    800059a4:	2d078793          	addi	a5,a5,720 # 8000bc70 <_ZTV12ProducerSync+0x10>
    800059a8:	00fcb023          	sd	a5,0(s9)
    800059ac:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    800059b0:	00349793          	slli	a5,s1,0x3
    800059b4:	00f987b3          	add	a5,s3,a5
    800059b8:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    800059bc:	00349793          	slli	a5,s1,0x3
    800059c0:	00f987b3          	add	a5,s3,a5
    800059c4:	0007b503          	ld	a0,0(a5)
    800059c8:	ffffc097          	auipc	ra,0xffffc
    800059cc:	754080e7          	jalr	1876(ra) # 8000211c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800059d0:	0014849b          	addiw	s1,s1,1
    800059d4:	0b24d063          	bge	s1,s2,80005a74 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    800059d8:	00149793          	slli	a5,s1,0x1
    800059dc:	009787b3          	add	a5,a5,s1
    800059e0:	00379793          	slli	a5,a5,0x3
    800059e4:	00fa07b3          	add	a5,s4,a5
    800059e8:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800059ec:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    800059f0:	00006717          	auipc	a4,0x6
    800059f4:	41873703          	ld	a4,1048(a4) # 8000be08 <_ZL10waitForAll>
    800059f8:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    800059fc:	02905863          	blez	s1,80005a2c <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80005a00:	02800513          	li	a0,40
    80005a04:	ffffc097          	auipc	ra,0xffffc
    80005a08:	5e8080e7          	jalr	1512(ra) # 80001fec <_Znwm>
    80005a0c:	00050c93          	mv	s9,a0
    80005a10:	00149c13          	slli	s8,s1,0x1
    80005a14:	009c0c33          	add	s8,s8,s1
    80005a18:	003c1c13          	slli	s8,s8,0x3
    80005a1c:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005a20:	ffffc097          	auipc	ra,0xffffc
    80005a24:	6cc080e7          	jalr	1740(ra) # 800020ec <_ZN6ThreadC1Ev>
    80005a28:	f79ff06f          	j	800059a0 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80005a2c:	02800513          	li	a0,40
    80005a30:	ffffc097          	auipc	ra,0xffffc
    80005a34:	5bc080e7          	jalr	1468(ra) # 80001fec <_Znwm>
    80005a38:	00050c93          	mv	s9,a0
    80005a3c:	00149c13          	slli	s8,s1,0x1
    80005a40:	009c0c33          	add	s8,s8,s1
    80005a44:	003c1c13          	slli	s8,s8,0x3
    80005a48:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80005a4c:	ffffc097          	auipc	ra,0xffffc
    80005a50:	6a0080e7          	jalr	1696(ra) # 800020ec <_ZN6ThreadC1Ev>
    80005a54:	00006797          	auipc	a5,0x6
    80005a58:	1f478793          	addi	a5,a5,500 # 8000bc48 <_ZTV16ProducerKeyboard+0x10>
    80005a5c:	00fcb023          	sd	a5,0(s9)
    80005a60:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80005a64:	00349793          	slli	a5,s1,0x3
    80005a68:	00f987b3          	add	a5,s3,a5
    80005a6c:	0197b023          	sd	s9,0(a5)
    80005a70:	f4dff06f          	j	800059bc <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80005a74:	ffffc097          	auipc	ra,0xffffc
    80005a78:	6e0080e7          	jalr	1760(ra) # 80002154 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80005a7c:	00000493          	li	s1,0
    80005a80:	00994e63          	blt	s2,s1,80005a9c <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80005a84:	00006517          	auipc	a0,0x6
    80005a88:	38453503          	ld	a0,900(a0) # 8000be08 <_ZL10waitForAll>
    80005a8c:	ffffc097          	auipc	ra,0xffffc
    80005a90:	754080e7          	jalr	1876(ra) # 800021e0 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80005a94:	0014849b          	addiw	s1,s1,1
    80005a98:	fe9ff06f          	j	80005a80 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80005a9c:	00000493          	li	s1,0
    80005aa0:	0080006f          	j	80005aa8 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80005aa4:	0014849b          	addiw	s1,s1,1
    80005aa8:	0324d263          	bge	s1,s2,80005acc <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80005aac:	00349793          	slli	a5,s1,0x3
    80005ab0:	00f987b3          	add	a5,s3,a5
    80005ab4:	0007b503          	ld	a0,0(a5)
    80005ab8:	fe0506e3          	beqz	a0,80005aa4 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80005abc:	00053783          	ld	a5,0(a0)
    80005ac0:	0087b783          	ld	a5,8(a5)
    80005ac4:	000780e7          	jalr	a5
    80005ac8:	fddff06f          	j	80005aa4 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80005acc:	000b0a63          	beqz	s6,80005ae0 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80005ad0:	000b3783          	ld	a5,0(s6)
    80005ad4:	0087b783          	ld	a5,8(a5)
    80005ad8:	000b0513          	mv	a0,s6
    80005adc:	000780e7          	jalr	a5
    delete waitForAll;
    80005ae0:	00006517          	auipc	a0,0x6
    80005ae4:	32853503          	ld	a0,808(a0) # 8000be08 <_ZL10waitForAll>
    80005ae8:	00050863          	beqz	a0,80005af8 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80005aec:	00053783          	ld	a5,0(a0)
    80005af0:	0087b783          	ld	a5,8(a5)
    80005af4:	000780e7          	jalr	a5
    delete buffer;
    80005af8:	000a8e63          	beqz	s5,80005b14 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80005afc:	000a8513          	mv	a0,s5
    80005b00:	00001097          	auipc	ra,0x1
    80005b04:	8a8080e7          	jalr	-1880(ra) # 800063a8 <_ZN9BufferCPPD1Ev>
    80005b08:	000a8513          	mv	a0,s5
    80005b0c:	ffffc097          	auipc	ra,0xffffc
    80005b10:	508080e7          	jalr	1288(ra) # 80002014 <_ZdlPv>
    80005b14:	000b8113          	mv	sp,s7

}
    80005b18:	f8040113          	addi	sp,s0,-128
    80005b1c:	07813083          	ld	ra,120(sp)
    80005b20:	07013403          	ld	s0,112(sp)
    80005b24:	06813483          	ld	s1,104(sp)
    80005b28:	06013903          	ld	s2,96(sp)
    80005b2c:	05813983          	ld	s3,88(sp)
    80005b30:	05013a03          	ld	s4,80(sp)
    80005b34:	04813a83          	ld	s5,72(sp)
    80005b38:	04013b03          	ld	s6,64(sp)
    80005b3c:	03813b83          	ld	s7,56(sp)
    80005b40:	03013c03          	ld	s8,48(sp)
    80005b44:	02813c83          	ld	s9,40(sp)
    80005b48:	08010113          	addi	sp,sp,128
    80005b4c:	00008067          	ret
    80005b50:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80005b54:	000a8513          	mv	a0,s5
    80005b58:	ffffc097          	auipc	ra,0xffffc
    80005b5c:	4bc080e7          	jalr	1212(ra) # 80002014 <_ZdlPv>
    80005b60:	00048513          	mv	a0,s1
    80005b64:	00007097          	auipc	ra,0x7
    80005b68:	384080e7          	jalr	900(ra) # 8000cee8 <_Unwind_Resume>
    80005b6c:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80005b70:	00048513          	mv	a0,s1
    80005b74:	ffffc097          	auipc	ra,0xffffc
    80005b78:	4a0080e7          	jalr	1184(ra) # 80002014 <_ZdlPv>
    80005b7c:	00090513          	mv	a0,s2
    80005b80:	00007097          	auipc	ra,0x7
    80005b84:	368080e7          	jalr	872(ra) # 8000cee8 <_Unwind_Resume>
    80005b88:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80005b8c:	000b0513          	mv	a0,s6
    80005b90:	ffffc097          	auipc	ra,0xffffc
    80005b94:	484080e7          	jalr	1156(ra) # 80002014 <_ZdlPv>
    80005b98:	00048513          	mv	a0,s1
    80005b9c:	00007097          	auipc	ra,0x7
    80005ba0:	34c080e7          	jalr	844(ra) # 8000cee8 <_Unwind_Resume>
    80005ba4:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005ba8:	000c8513          	mv	a0,s9
    80005bac:	ffffc097          	auipc	ra,0xffffc
    80005bb0:	468080e7          	jalr	1128(ra) # 80002014 <_ZdlPv>
    80005bb4:	00048513          	mv	a0,s1
    80005bb8:	00007097          	auipc	ra,0x7
    80005bbc:	330080e7          	jalr	816(ra) # 8000cee8 <_Unwind_Resume>
    80005bc0:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005bc4:	000c8513          	mv	a0,s9
    80005bc8:	ffffc097          	auipc	ra,0xffffc
    80005bcc:	44c080e7          	jalr	1100(ra) # 80002014 <_ZdlPv>
    80005bd0:	00048513          	mv	a0,s1
    80005bd4:	00007097          	auipc	ra,0x7
    80005bd8:	314080e7          	jalr	788(ra) # 8000cee8 <_Unwind_Resume>

0000000080005bdc <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005bdc:	ff010113          	addi	sp,sp,-16
    80005be0:	00113423          	sd	ra,8(sp)
    80005be4:	00813023          	sd	s0,0(sp)
    80005be8:	01010413          	addi	s0,sp,16
    80005bec:	00006797          	auipc	a5,0x6
    80005bf0:	0ac78793          	addi	a5,a5,172 # 8000bc98 <_ZTV12ConsumerSync+0x10>
    80005bf4:	00f53023          	sd	a5,0(a0)
    80005bf8:	ffffc097          	auipc	ra,0xffffc
    80005bfc:	35c080e7          	jalr	860(ra) # 80001f54 <_ZN6ThreadD1Ev>
    80005c00:	00813083          	ld	ra,8(sp)
    80005c04:	00013403          	ld	s0,0(sp)
    80005c08:	01010113          	addi	sp,sp,16
    80005c0c:	00008067          	ret

0000000080005c10 <_ZN12ConsumerSyncD0Ev>:
    80005c10:	fe010113          	addi	sp,sp,-32
    80005c14:	00113c23          	sd	ra,24(sp)
    80005c18:	00813823          	sd	s0,16(sp)
    80005c1c:	00913423          	sd	s1,8(sp)
    80005c20:	02010413          	addi	s0,sp,32
    80005c24:	00050493          	mv	s1,a0
    80005c28:	00006797          	auipc	a5,0x6
    80005c2c:	07078793          	addi	a5,a5,112 # 8000bc98 <_ZTV12ConsumerSync+0x10>
    80005c30:	00f53023          	sd	a5,0(a0)
    80005c34:	ffffc097          	auipc	ra,0xffffc
    80005c38:	320080e7          	jalr	800(ra) # 80001f54 <_ZN6ThreadD1Ev>
    80005c3c:	00048513          	mv	a0,s1
    80005c40:	ffffc097          	auipc	ra,0xffffc
    80005c44:	3d4080e7          	jalr	980(ra) # 80002014 <_ZdlPv>
    80005c48:	01813083          	ld	ra,24(sp)
    80005c4c:	01013403          	ld	s0,16(sp)
    80005c50:	00813483          	ld	s1,8(sp)
    80005c54:	02010113          	addi	sp,sp,32
    80005c58:	00008067          	ret

0000000080005c5c <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80005c5c:	ff010113          	addi	sp,sp,-16
    80005c60:	00113423          	sd	ra,8(sp)
    80005c64:	00813023          	sd	s0,0(sp)
    80005c68:	01010413          	addi	s0,sp,16
    80005c6c:	00006797          	auipc	a5,0x6
    80005c70:	00478793          	addi	a5,a5,4 # 8000bc70 <_ZTV12ProducerSync+0x10>
    80005c74:	00f53023          	sd	a5,0(a0)
    80005c78:	ffffc097          	auipc	ra,0xffffc
    80005c7c:	2dc080e7          	jalr	732(ra) # 80001f54 <_ZN6ThreadD1Ev>
    80005c80:	00813083          	ld	ra,8(sp)
    80005c84:	00013403          	ld	s0,0(sp)
    80005c88:	01010113          	addi	sp,sp,16
    80005c8c:	00008067          	ret

0000000080005c90 <_ZN12ProducerSyncD0Ev>:
    80005c90:	fe010113          	addi	sp,sp,-32
    80005c94:	00113c23          	sd	ra,24(sp)
    80005c98:	00813823          	sd	s0,16(sp)
    80005c9c:	00913423          	sd	s1,8(sp)
    80005ca0:	02010413          	addi	s0,sp,32
    80005ca4:	00050493          	mv	s1,a0
    80005ca8:	00006797          	auipc	a5,0x6
    80005cac:	fc878793          	addi	a5,a5,-56 # 8000bc70 <_ZTV12ProducerSync+0x10>
    80005cb0:	00f53023          	sd	a5,0(a0)
    80005cb4:	ffffc097          	auipc	ra,0xffffc
    80005cb8:	2a0080e7          	jalr	672(ra) # 80001f54 <_ZN6ThreadD1Ev>
    80005cbc:	00048513          	mv	a0,s1
    80005cc0:	ffffc097          	auipc	ra,0xffffc
    80005cc4:	354080e7          	jalr	852(ra) # 80002014 <_ZdlPv>
    80005cc8:	01813083          	ld	ra,24(sp)
    80005ccc:	01013403          	ld	s0,16(sp)
    80005cd0:	00813483          	ld	s1,8(sp)
    80005cd4:	02010113          	addi	sp,sp,32
    80005cd8:	00008067          	ret

0000000080005cdc <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005cdc:	ff010113          	addi	sp,sp,-16
    80005ce0:	00113423          	sd	ra,8(sp)
    80005ce4:	00813023          	sd	s0,0(sp)
    80005ce8:	01010413          	addi	s0,sp,16
    80005cec:	00006797          	auipc	a5,0x6
    80005cf0:	f5c78793          	addi	a5,a5,-164 # 8000bc48 <_ZTV16ProducerKeyboard+0x10>
    80005cf4:	00f53023          	sd	a5,0(a0)
    80005cf8:	ffffc097          	auipc	ra,0xffffc
    80005cfc:	25c080e7          	jalr	604(ra) # 80001f54 <_ZN6ThreadD1Ev>
    80005d00:	00813083          	ld	ra,8(sp)
    80005d04:	00013403          	ld	s0,0(sp)
    80005d08:	01010113          	addi	sp,sp,16
    80005d0c:	00008067          	ret

0000000080005d10 <_ZN16ProducerKeyboardD0Ev>:
    80005d10:	fe010113          	addi	sp,sp,-32
    80005d14:	00113c23          	sd	ra,24(sp)
    80005d18:	00813823          	sd	s0,16(sp)
    80005d1c:	00913423          	sd	s1,8(sp)
    80005d20:	02010413          	addi	s0,sp,32
    80005d24:	00050493          	mv	s1,a0
    80005d28:	00006797          	auipc	a5,0x6
    80005d2c:	f2078793          	addi	a5,a5,-224 # 8000bc48 <_ZTV16ProducerKeyboard+0x10>
    80005d30:	00f53023          	sd	a5,0(a0)
    80005d34:	ffffc097          	auipc	ra,0xffffc
    80005d38:	220080e7          	jalr	544(ra) # 80001f54 <_ZN6ThreadD1Ev>
    80005d3c:	00048513          	mv	a0,s1
    80005d40:	ffffc097          	auipc	ra,0xffffc
    80005d44:	2d4080e7          	jalr	724(ra) # 80002014 <_ZdlPv>
    80005d48:	01813083          	ld	ra,24(sp)
    80005d4c:	01013403          	ld	s0,16(sp)
    80005d50:	00813483          	ld	s1,8(sp)
    80005d54:	02010113          	addi	sp,sp,32
    80005d58:	00008067          	ret

0000000080005d5c <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80005d5c:	ff010113          	addi	sp,sp,-16
    80005d60:	00113423          	sd	ra,8(sp)
    80005d64:	00813023          	sd	s0,0(sp)
    80005d68:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80005d6c:	02053583          	ld	a1,32(a0)
    80005d70:	fffff097          	auipc	ra,0xfffff
    80005d74:	7e4080e7          	jalr	2020(ra) # 80005554 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005d78:	00813083          	ld	ra,8(sp)
    80005d7c:	00013403          	ld	s0,0(sp)
    80005d80:	01010113          	addi	sp,sp,16
    80005d84:	00008067          	ret

0000000080005d88 <_ZN12ProducerSync3runEv>:
    void run() override {
    80005d88:	ff010113          	addi	sp,sp,-16
    80005d8c:	00113423          	sd	ra,8(sp)
    80005d90:	00813023          	sd	s0,0(sp)
    80005d94:	01010413          	addi	s0,sp,16
        producer(td);
    80005d98:	02053583          	ld	a1,32(a0)
    80005d9c:	00000097          	auipc	ra,0x0
    80005da0:	878080e7          	jalr	-1928(ra) # 80005614 <_ZN12ProducerSync8producerEPv>
    }
    80005da4:	00813083          	ld	ra,8(sp)
    80005da8:	00013403          	ld	s0,0(sp)
    80005dac:	01010113          	addi	sp,sp,16
    80005db0:	00008067          	ret

0000000080005db4 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005db4:	ff010113          	addi	sp,sp,-16
    80005db8:	00113423          	sd	ra,8(sp)
    80005dbc:	00813023          	sd	s0,0(sp)
    80005dc0:	01010413          	addi	s0,sp,16
        consumer(td);
    80005dc4:	02053583          	ld	a1,32(a0)
    80005dc8:	00000097          	auipc	ra,0x0
    80005dcc:	8e0080e7          	jalr	-1824(ra) # 800056a8 <_ZN12ConsumerSync8consumerEPv>
    }
    80005dd0:	00813083          	ld	ra,8(sp)
    80005dd4:	00013403          	ld	s0,0(sp)
    80005dd8:	01010113          	addi	sp,sp,16
    80005ddc:	00008067          	ret

0000000080005de0 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005de0:	fe010113          	addi	sp,sp,-32
    80005de4:	00113c23          	sd	ra,24(sp)
    80005de8:	00813823          	sd	s0,16(sp)
    80005dec:	00913423          	sd	s1,8(sp)
    80005df0:	02010413          	addi	s0,sp,32
    80005df4:	00050493          	mv	s1,a0
    LOCK();
    80005df8:	00100613          	li	a2,1
    80005dfc:	00000593          	li	a1,0
    80005e00:	00006517          	auipc	a0,0x6
    80005e04:	01050513          	addi	a0,a0,16 # 8000be10 <lockPrint>
    80005e08:	ffffb097          	auipc	ra,0xffffb
    80005e0c:	414080e7          	jalr	1044(ra) # 8000121c <copy_and_swap>
    80005e10:	00050863          	beqz	a0,80005e20 <_Z11printStringPKc+0x40>
    80005e14:	ffffb097          	auipc	ra,0xffffb
    80005e18:	5b8080e7          	jalr	1464(ra) # 800013cc <_Z15thread_dispatchv>
    80005e1c:	fddff06f          	j	80005df8 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005e20:	0004c503          	lbu	a0,0(s1)
    80005e24:	00050a63          	beqz	a0,80005e38 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005e28:	ffffc097          	auipc	ra,0xffffc
    80005e2c:	844080e7          	jalr	-1980(ra) # 8000166c <_Z4putcc>
        string++;
    80005e30:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005e34:	fedff06f          	j	80005e20 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005e38:	00000613          	li	a2,0
    80005e3c:	00100593          	li	a1,1
    80005e40:	00006517          	auipc	a0,0x6
    80005e44:	fd050513          	addi	a0,a0,-48 # 8000be10 <lockPrint>
    80005e48:	ffffb097          	auipc	ra,0xffffb
    80005e4c:	3d4080e7          	jalr	980(ra) # 8000121c <copy_and_swap>
    80005e50:	fe0514e3          	bnez	a0,80005e38 <_Z11printStringPKc+0x58>
}
    80005e54:	01813083          	ld	ra,24(sp)
    80005e58:	01013403          	ld	s0,16(sp)
    80005e5c:	00813483          	ld	s1,8(sp)
    80005e60:	02010113          	addi	sp,sp,32
    80005e64:	00008067          	ret

0000000080005e68 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005e68:	fd010113          	addi	sp,sp,-48
    80005e6c:	02113423          	sd	ra,40(sp)
    80005e70:	02813023          	sd	s0,32(sp)
    80005e74:	00913c23          	sd	s1,24(sp)
    80005e78:	01213823          	sd	s2,16(sp)
    80005e7c:	01313423          	sd	s3,8(sp)
    80005e80:	01413023          	sd	s4,0(sp)
    80005e84:	03010413          	addi	s0,sp,48
    80005e88:	00050993          	mv	s3,a0
    80005e8c:	00058a13          	mv	s4,a1
    LOCK();
    80005e90:	00100613          	li	a2,1
    80005e94:	00000593          	li	a1,0
    80005e98:	00006517          	auipc	a0,0x6
    80005e9c:	f7850513          	addi	a0,a0,-136 # 8000be10 <lockPrint>
    80005ea0:	ffffb097          	auipc	ra,0xffffb
    80005ea4:	37c080e7          	jalr	892(ra) # 8000121c <copy_and_swap>
    80005ea8:	00050863          	beqz	a0,80005eb8 <_Z9getStringPci+0x50>
    80005eac:	ffffb097          	auipc	ra,0xffffb
    80005eb0:	520080e7          	jalr	1312(ra) # 800013cc <_Z15thread_dispatchv>
    80005eb4:	fddff06f          	j	80005e90 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005eb8:	00000913          	li	s2,0
    80005ebc:	00090493          	mv	s1,s2
    80005ec0:	0019091b          	addiw	s2,s2,1
    80005ec4:	03495a63          	bge	s2,s4,80005ef8 <_Z9getStringPci+0x90>
        cc = getc();
    80005ec8:	ffffb097          	auipc	ra,0xffffb
    80005ecc:	758080e7          	jalr	1880(ra) # 80001620 <_Z4getcv>
        if(cc < 1)
    80005ed0:	02050463          	beqz	a0,80005ef8 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005ed4:	009984b3          	add	s1,s3,s1
    80005ed8:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005edc:	00a00793          	li	a5,10
    80005ee0:	00f50a63          	beq	a0,a5,80005ef4 <_Z9getStringPci+0x8c>
    80005ee4:	00d00793          	li	a5,13
    80005ee8:	fcf51ae3          	bne	a0,a5,80005ebc <_Z9getStringPci+0x54>
        buf[i++] = c;
    80005eec:	00090493          	mv	s1,s2
    80005ef0:	0080006f          	j	80005ef8 <_Z9getStringPci+0x90>
    80005ef4:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005ef8:	009984b3          	add	s1,s3,s1
    80005efc:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005f00:	00000613          	li	a2,0
    80005f04:	00100593          	li	a1,1
    80005f08:	00006517          	auipc	a0,0x6
    80005f0c:	f0850513          	addi	a0,a0,-248 # 8000be10 <lockPrint>
    80005f10:	ffffb097          	auipc	ra,0xffffb
    80005f14:	30c080e7          	jalr	780(ra) # 8000121c <copy_and_swap>
    80005f18:	fe0514e3          	bnez	a0,80005f00 <_Z9getStringPci+0x98>
    return buf;
}
    80005f1c:	00098513          	mv	a0,s3
    80005f20:	02813083          	ld	ra,40(sp)
    80005f24:	02013403          	ld	s0,32(sp)
    80005f28:	01813483          	ld	s1,24(sp)
    80005f2c:	01013903          	ld	s2,16(sp)
    80005f30:	00813983          	ld	s3,8(sp)
    80005f34:	00013a03          	ld	s4,0(sp)
    80005f38:	03010113          	addi	sp,sp,48
    80005f3c:	00008067          	ret

0000000080005f40 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005f40:	ff010113          	addi	sp,sp,-16
    80005f44:	00813423          	sd	s0,8(sp)
    80005f48:	01010413          	addi	s0,sp,16
    80005f4c:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005f50:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005f54:	0006c603          	lbu	a2,0(a3)
    80005f58:	fd06071b          	addiw	a4,a2,-48
    80005f5c:	0ff77713          	andi	a4,a4,255
    80005f60:	00900793          	li	a5,9
    80005f64:	02e7e063          	bltu	a5,a4,80005f84 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005f68:	0025179b          	slliw	a5,a0,0x2
    80005f6c:	00a787bb          	addw	a5,a5,a0
    80005f70:	0017979b          	slliw	a5,a5,0x1
    80005f74:	00168693          	addi	a3,a3,1
    80005f78:	00c787bb          	addw	a5,a5,a2
    80005f7c:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005f80:	fd5ff06f          	j	80005f54 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005f84:	00813403          	ld	s0,8(sp)
    80005f88:	01010113          	addi	sp,sp,16
    80005f8c:	00008067          	ret

0000000080005f90 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005f90:	fc010113          	addi	sp,sp,-64
    80005f94:	02113c23          	sd	ra,56(sp)
    80005f98:	02813823          	sd	s0,48(sp)
    80005f9c:	02913423          	sd	s1,40(sp)
    80005fa0:	03213023          	sd	s2,32(sp)
    80005fa4:	01313c23          	sd	s3,24(sp)
    80005fa8:	04010413          	addi	s0,sp,64
    80005fac:	00050493          	mv	s1,a0
    80005fb0:	00058913          	mv	s2,a1
    80005fb4:	00060993          	mv	s3,a2
    LOCK();
    80005fb8:	00100613          	li	a2,1
    80005fbc:	00000593          	li	a1,0
    80005fc0:	00006517          	auipc	a0,0x6
    80005fc4:	e5050513          	addi	a0,a0,-432 # 8000be10 <lockPrint>
    80005fc8:	ffffb097          	auipc	ra,0xffffb
    80005fcc:	254080e7          	jalr	596(ra) # 8000121c <copy_and_swap>
    80005fd0:	00050863          	beqz	a0,80005fe0 <_Z8printIntiii+0x50>
    80005fd4:	ffffb097          	auipc	ra,0xffffb
    80005fd8:	3f8080e7          	jalr	1016(ra) # 800013cc <_Z15thread_dispatchv>
    80005fdc:	fddff06f          	j	80005fb8 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005fe0:	00098463          	beqz	s3,80005fe8 <_Z8printIntiii+0x58>
    80005fe4:	0804c463          	bltz	s1,8000606c <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005fe8:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005fec:	00000593          	li	a1,0
    }

    i = 0;
    80005ff0:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005ff4:	0009079b          	sext.w	a5,s2
    80005ff8:	0325773b          	remuw	a4,a0,s2
    80005ffc:	00048613          	mv	a2,s1
    80006000:	0014849b          	addiw	s1,s1,1
    80006004:	02071693          	slli	a3,a4,0x20
    80006008:	0206d693          	srli	a3,a3,0x20
    8000600c:	00006717          	auipc	a4,0x6
    80006010:	ca470713          	addi	a4,a4,-860 # 8000bcb0 <digits>
    80006014:	00d70733          	add	a4,a4,a3
    80006018:	00074683          	lbu	a3,0(a4)
    8000601c:	fd040713          	addi	a4,s0,-48
    80006020:	00c70733          	add	a4,a4,a2
    80006024:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80006028:	0005071b          	sext.w	a4,a0
    8000602c:	0325553b          	divuw	a0,a0,s2
    80006030:	fcf772e3          	bgeu	a4,a5,80005ff4 <_Z8printIntiii+0x64>
    if(neg)
    80006034:	00058c63          	beqz	a1,8000604c <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80006038:	fd040793          	addi	a5,s0,-48
    8000603c:	009784b3          	add	s1,a5,s1
    80006040:	02d00793          	li	a5,45
    80006044:	fef48823          	sb	a5,-16(s1)
    80006048:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    8000604c:	fff4849b          	addiw	s1,s1,-1
    80006050:	0204c463          	bltz	s1,80006078 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80006054:	fd040793          	addi	a5,s0,-48
    80006058:	009787b3          	add	a5,a5,s1
    8000605c:	ff07c503          	lbu	a0,-16(a5)
    80006060:	ffffb097          	auipc	ra,0xffffb
    80006064:	60c080e7          	jalr	1548(ra) # 8000166c <_Z4putcc>
    80006068:	fe5ff06f          	j	8000604c <_Z8printIntiii+0xbc>
        x = -xx;
    8000606c:	4090053b          	negw	a0,s1
        neg = 1;
    80006070:	00100593          	li	a1,1
        x = -xx;
    80006074:	f7dff06f          	j	80005ff0 <_Z8printIntiii+0x60>

    UNLOCK();
    80006078:	00000613          	li	a2,0
    8000607c:	00100593          	li	a1,1
    80006080:	00006517          	auipc	a0,0x6
    80006084:	d9050513          	addi	a0,a0,-624 # 8000be10 <lockPrint>
    80006088:	ffffb097          	auipc	ra,0xffffb
    8000608c:	194080e7          	jalr	404(ra) # 8000121c <copy_and_swap>
    80006090:	fe0514e3          	bnez	a0,80006078 <_Z8printIntiii+0xe8>
    80006094:	03813083          	ld	ra,56(sp)
    80006098:	03013403          	ld	s0,48(sp)
    8000609c:	02813483          	ld	s1,40(sp)
    800060a0:	02013903          	ld	s2,32(sp)
    800060a4:	01813983          	ld	s3,24(sp)
    800060a8:	04010113          	addi	sp,sp,64
    800060ac:	00008067          	ret

00000000800060b0 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800060b0:	fd010113          	addi	sp,sp,-48
    800060b4:	02113423          	sd	ra,40(sp)
    800060b8:	02813023          	sd	s0,32(sp)
    800060bc:	00913c23          	sd	s1,24(sp)
    800060c0:	01213823          	sd	s2,16(sp)
    800060c4:	01313423          	sd	s3,8(sp)
    800060c8:	03010413          	addi	s0,sp,48
    800060cc:	00050493          	mv	s1,a0
    800060d0:	00058913          	mv	s2,a1
    800060d4:	0015879b          	addiw	a5,a1,1
    800060d8:	0007851b          	sext.w	a0,a5
    800060dc:	00f4a023          	sw	a5,0(s1)
    800060e0:	0004a823          	sw	zero,16(s1)
    800060e4:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800060e8:	00251513          	slli	a0,a0,0x2
    800060ec:	ffffb097          	auipc	ra,0xffffb
    800060f0:	16c080e7          	jalr	364(ra) # 80001258 <_Z9mem_allocm>
    800060f4:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    800060f8:	01000513          	li	a0,16
    800060fc:	ffffc097          	auipc	ra,0xffffc
    80006100:	ef0080e7          	jalr	-272(ra) # 80001fec <_Znwm>
    80006104:	00050993          	mv	s3,a0
    80006108:	00000593          	li	a1,0
    8000610c:	ffffc097          	auipc	ra,0xffffc
    80006110:	098080e7          	jalr	152(ra) # 800021a4 <_ZN9SemaphoreC1Ej>
    80006114:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80006118:	01000513          	li	a0,16
    8000611c:	ffffc097          	auipc	ra,0xffffc
    80006120:	ed0080e7          	jalr	-304(ra) # 80001fec <_Znwm>
    80006124:	00050993          	mv	s3,a0
    80006128:	00090593          	mv	a1,s2
    8000612c:	ffffc097          	auipc	ra,0xffffc
    80006130:	078080e7          	jalr	120(ra) # 800021a4 <_ZN9SemaphoreC1Ej>
    80006134:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80006138:	01000513          	li	a0,16
    8000613c:	ffffc097          	auipc	ra,0xffffc
    80006140:	eb0080e7          	jalr	-336(ra) # 80001fec <_Znwm>
    80006144:	00050913          	mv	s2,a0
    80006148:	00100593          	li	a1,1
    8000614c:	ffffc097          	auipc	ra,0xffffc
    80006150:	058080e7          	jalr	88(ra) # 800021a4 <_ZN9SemaphoreC1Ej>
    80006154:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80006158:	01000513          	li	a0,16
    8000615c:	ffffc097          	auipc	ra,0xffffc
    80006160:	e90080e7          	jalr	-368(ra) # 80001fec <_Znwm>
    80006164:	00050913          	mv	s2,a0
    80006168:	00100593          	li	a1,1
    8000616c:	ffffc097          	auipc	ra,0xffffc
    80006170:	038080e7          	jalr	56(ra) # 800021a4 <_ZN9SemaphoreC1Ej>
    80006174:	0324b823          	sd	s2,48(s1)
}
    80006178:	02813083          	ld	ra,40(sp)
    8000617c:	02013403          	ld	s0,32(sp)
    80006180:	01813483          	ld	s1,24(sp)
    80006184:	01013903          	ld	s2,16(sp)
    80006188:	00813983          	ld	s3,8(sp)
    8000618c:	03010113          	addi	sp,sp,48
    80006190:	00008067          	ret
    80006194:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80006198:	00098513          	mv	a0,s3
    8000619c:	ffffc097          	auipc	ra,0xffffc
    800061a0:	e78080e7          	jalr	-392(ra) # 80002014 <_ZdlPv>
    800061a4:	00048513          	mv	a0,s1
    800061a8:	00007097          	auipc	ra,0x7
    800061ac:	d40080e7          	jalr	-704(ra) # 8000cee8 <_Unwind_Resume>
    800061b0:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    800061b4:	00098513          	mv	a0,s3
    800061b8:	ffffc097          	auipc	ra,0xffffc
    800061bc:	e5c080e7          	jalr	-420(ra) # 80002014 <_ZdlPv>
    800061c0:	00048513          	mv	a0,s1
    800061c4:	00007097          	auipc	ra,0x7
    800061c8:	d24080e7          	jalr	-732(ra) # 8000cee8 <_Unwind_Resume>
    800061cc:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    800061d0:	00090513          	mv	a0,s2
    800061d4:	ffffc097          	auipc	ra,0xffffc
    800061d8:	e40080e7          	jalr	-448(ra) # 80002014 <_ZdlPv>
    800061dc:	00048513          	mv	a0,s1
    800061e0:	00007097          	auipc	ra,0x7
    800061e4:	d08080e7          	jalr	-760(ra) # 8000cee8 <_Unwind_Resume>
    800061e8:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800061ec:	00090513          	mv	a0,s2
    800061f0:	ffffc097          	auipc	ra,0xffffc
    800061f4:	e24080e7          	jalr	-476(ra) # 80002014 <_ZdlPv>
    800061f8:	00048513          	mv	a0,s1
    800061fc:	00007097          	auipc	ra,0x7
    80006200:	cec080e7          	jalr	-788(ra) # 8000cee8 <_Unwind_Resume>

0000000080006204 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80006204:	fe010113          	addi	sp,sp,-32
    80006208:	00113c23          	sd	ra,24(sp)
    8000620c:	00813823          	sd	s0,16(sp)
    80006210:	00913423          	sd	s1,8(sp)
    80006214:	01213023          	sd	s2,0(sp)
    80006218:	02010413          	addi	s0,sp,32
    8000621c:	00050493          	mv	s1,a0
    80006220:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80006224:	01853503          	ld	a0,24(a0)
    80006228:	ffffc097          	auipc	ra,0xffffc
    8000622c:	fb8080e7          	jalr	-72(ra) # 800021e0 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80006230:	0304b503          	ld	a0,48(s1)
    80006234:	ffffc097          	auipc	ra,0xffffc
    80006238:	fac080e7          	jalr	-84(ra) # 800021e0 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    8000623c:	0084b783          	ld	a5,8(s1)
    80006240:	0144a703          	lw	a4,20(s1)
    80006244:	00271713          	slli	a4,a4,0x2
    80006248:	00e787b3          	add	a5,a5,a4
    8000624c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006250:	0144a783          	lw	a5,20(s1)
    80006254:	0017879b          	addiw	a5,a5,1
    80006258:	0004a703          	lw	a4,0(s1)
    8000625c:	02e7e7bb          	remw	a5,a5,a4
    80006260:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80006264:	0304b503          	ld	a0,48(s1)
    80006268:	ffffc097          	auipc	ra,0xffffc
    8000626c:	fb0080e7          	jalr	-80(ra) # 80002218 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80006270:	0204b503          	ld	a0,32(s1)
    80006274:	ffffc097          	auipc	ra,0xffffc
    80006278:	fa4080e7          	jalr	-92(ra) # 80002218 <_ZN9Semaphore6signalEv>

}
    8000627c:	01813083          	ld	ra,24(sp)
    80006280:	01013403          	ld	s0,16(sp)
    80006284:	00813483          	ld	s1,8(sp)
    80006288:	00013903          	ld	s2,0(sp)
    8000628c:	02010113          	addi	sp,sp,32
    80006290:	00008067          	ret

0000000080006294 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80006294:	fe010113          	addi	sp,sp,-32
    80006298:	00113c23          	sd	ra,24(sp)
    8000629c:	00813823          	sd	s0,16(sp)
    800062a0:	00913423          	sd	s1,8(sp)
    800062a4:	01213023          	sd	s2,0(sp)
    800062a8:	02010413          	addi	s0,sp,32
    800062ac:	00050493          	mv	s1,a0
    itemAvailable->wait();
    800062b0:	02053503          	ld	a0,32(a0)
    800062b4:	ffffc097          	auipc	ra,0xffffc
    800062b8:	f2c080e7          	jalr	-212(ra) # 800021e0 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    800062bc:	0284b503          	ld	a0,40(s1)
    800062c0:	ffffc097          	auipc	ra,0xffffc
    800062c4:	f20080e7          	jalr	-224(ra) # 800021e0 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    800062c8:	0084b703          	ld	a4,8(s1)
    800062cc:	0104a783          	lw	a5,16(s1)
    800062d0:	00279693          	slli	a3,a5,0x2
    800062d4:	00d70733          	add	a4,a4,a3
    800062d8:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800062dc:	0017879b          	addiw	a5,a5,1
    800062e0:	0004a703          	lw	a4,0(s1)
    800062e4:	02e7e7bb          	remw	a5,a5,a4
    800062e8:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800062ec:	0284b503          	ld	a0,40(s1)
    800062f0:	ffffc097          	auipc	ra,0xffffc
    800062f4:	f28080e7          	jalr	-216(ra) # 80002218 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800062f8:	0184b503          	ld	a0,24(s1)
    800062fc:	ffffc097          	auipc	ra,0xffffc
    80006300:	f1c080e7          	jalr	-228(ra) # 80002218 <_ZN9Semaphore6signalEv>

    return ret;
}
    80006304:	00090513          	mv	a0,s2
    80006308:	01813083          	ld	ra,24(sp)
    8000630c:	01013403          	ld	s0,16(sp)
    80006310:	00813483          	ld	s1,8(sp)
    80006314:	00013903          	ld	s2,0(sp)
    80006318:	02010113          	addi	sp,sp,32
    8000631c:	00008067          	ret

0000000080006320 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80006320:	fe010113          	addi	sp,sp,-32
    80006324:	00113c23          	sd	ra,24(sp)
    80006328:	00813823          	sd	s0,16(sp)
    8000632c:	00913423          	sd	s1,8(sp)
    80006330:	01213023          	sd	s2,0(sp)
    80006334:	02010413          	addi	s0,sp,32
    80006338:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    8000633c:	02853503          	ld	a0,40(a0)
    80006340:	ffffc097          	auipc	ra,0xffffc
    80006344:	ea0080e7          	jalr	-352(ra) # 800021e0 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80006348:	0304b503          	ld	a0,48(s1)
    8000634c:	ffffc097          	auipc	ra,0xffffc
    80006350:	e94080e7          	jalr	-364(ra) # 800021e0 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80006354:	0144a783          	lw	a5,20(s1)
    80006358:	0104a903          	lw	s2,16(s1)
    8000635c:	0327ce63          	blt	a5,s2,80006398 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80006360:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80006364:	0304b503          	ld	a0,48(s1)
    80006368:	ffffc097          	auipc	ra,0xffffc
    8000636c:	eb0080e7          	jalr	-336(ra) # 80002218 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80006370:	0284b503          	ld	a0,40(s1)
    80006374:	ffffc097          	auipc	ra,0xffffc
    80006378:	ea4080e7          	jalr	-348(ra) # 80002218 <_ZN9Semaphore6signalEv>

    return ret;
}
    8000637c:	00090513          	mv	a0,s2
    80006380:	01813083          	ld	ra,24(sp)
    80006384:	01013403          	ld	s0,16(sp)
    80006388:	00813483          	ld	s1,8(sp)
    8000638c:	00013903          	ld	s2,0(sp)
    80006390:	02010113          	addi	sp,sp,32
    80006394:	00008067          	ret
        ret = cap - head + tail;
    80006398:	0004a703          	lw	a4,0(s1)
    8000639c:	4127093b          	subw	s2,a4,s2
    800063a0:	00f9093b          	addw	s2,s2,a5
    800063a4:	fc1ff06f          	j	80006364 <_ZN9BufferCPP6getCntEv+0x44>

00000000800063a8 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    800063a8:	fe010113          	addi	sp,sp,-32
    800063ac:	00113c23          	sd	ra,24(sp)
    800063b0:	00813823          	sd	s0,16(sp)
    800063b4:	00913423          	sd	s1,8(sp)
    800063b8:	02010413          	addi	s0,sp,32
    800063bc:	00050493          	mv	s1,a0
    Console::putc('\n');
    800063c0:	00a00513          	li	a0,10
    800063c4:	ffffc097          	auipc	ra,0xffffc
    800063c8:	f74080e7          	jalr	-140(ra) # 80002338 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    800063cc:	00003517          	auipc	a0,0x3
    800063d0:	f4450513          	addi	a0,a0,-188 # 80009310 <CONSOLE_STATUS+0x300>
    800063d4:	00000097          	auipc	ra,0x0
    800063d8:	a0c080e7          	jalr	-1524(ra) # 80005de0 <_Z11printStringPKc>
    while (getCnt()) {
    800063dc:	00048513          	mv	a0,s1
    800063e0:	00000097          	auipc	ra,0x0
    800063e4:	f40080e7          	jalr	-192(ra) # 80006320 <_ZN9BufferCPP6getCntEv>
    800063e8:	02050c63          	beqz	a0,80006420 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    800063ec:	0084b783          	ld	a5,8(s1)
    800063f0:	0104a703          	lw	a4,16(s1)
    800063f4:	00271713          	slli	a4,a4,0x2
    800063f8:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    800063fc:	0007c503          	lbu	a0,0(a5)
    80006400:	ffffc097          	auipc	ra,0xffffc
    80006404:	f38080e7          	jalr	-200(ra) # 80002338 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80006408:	0104a783          	lw	a5,16(s1)
    8000640c:	0017879b          	addiw	a5,a5,1
    80006410:	0004a703          	lw	a4,0(s1)
    80006414:	02e7e7bb          	remw	a5,a5,a4
    80006418:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    8000641c:	fc1ff06f          	j	800063dc <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80006420:	02100513          	li	a0,33
    80006424:	ffffc097          	auipc	ra,0xffffc
    80006428:	f14080e7          	jalr	-236(ra) # 80002338 <_ZN7Console4putcEc>
    Console::putc('\n');
    8000642c:	00a00513          	li	a0,10
    80006430:	ffffc097          	auipc	ra,0xffffc
    80006434:	f08080e7          	jalr	-248(ra) # 80002338 <_ZN7Console4putcEc>
    mem_free(buffer);
    80006438:	0084b503          	ld	a0,8(s1)
    8000643c:	ffffb097          	auipc	ra,0xffffb
    80006440:	e70080e7          	jalr	-400(ra) # 800012ac <_Z8mem_freePv>
    delete itemAvailable;
    80006444:	0204b503          	ld	a0,32(s1)
    80006448:	00050863          	beqz	a0,80006458 <_ZN9BufferCPPD1Ev+0xb0>
    8000644c:	00053783          	ld	a5,0(a0)
    80006450:	0087b783          	ld	a5,8(a5)
    80006454:	000780e7          	jalr	a5
    delete spaceAvailable;
    80006458:	0184b503          	ld	a0,24(s1)
    8000645c:	00050863          	beqz	a0,8000646c <_ZN9BufferCPPD1Ev+0xc4>
    80006460:	00053783          	ld	a5,0(a0)
    80006464:	0087b783          	ld	a5,8(a5)
    80006468:	000780e7          	jalr	a5
    delete mutexTail;
    8000646c:	0304b503          	ld	a0,48(s1)
    80006470:	00050863          	beqz	a0,80006480 <_ZN9BufferCPPD1Ev+0xd8>
    80006474:	00053783          	ld	a5,0(a0)
    80006478:	0087b783          	ld	a5,8(a5)
    8000647c:	000780e7          	jalr	a5
    delete mutexHead;
    80006480:	0284b503          	ld	a0,40(s1)
    80006484:	00050863          	beqz	a0,80006494 <_ZN9BufferCPPD1Ev+0xec>
    80006488:	00053783          	ld	a5,0(a0)
    8000648c:	0087b783          	ld	a5,8(a5)
    80006490:	000780e7          	jalr	a5
}
    80006494:	01813083          	ld	ra,24(sp)
    80006498:	01013403          	ld	s0,16(sp)
    8000649c:	00813483          	ld	s1,8(sp)
    800064a0:	02010113          	addi	sp,sp,32
    800064a4:	00008067          	ret

00000000800064a8 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    800064a8:	fe010113          	addi	sp,sp,-32
    800064ac:	00113c23          	sd	ra,24(sp)
    800064b0:	00813823          	sd	s0,16(sp)
    800064b4:	00913423          	sd	s1,8(sp)
    800064b8:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    800064bc:	00003517          	auipc	a0,0x3
    800064c0:	e7c50513          	addi	a0,a0,-388 # 80009338 <CONSOLE_STATUS+0x328>
    800064c4:	00000097          	auipc	ra,0x0
    800064c8:	91c080e7          	jalr	-1764(ra) # 80005de0 <_Z11printStringPKc>
    int test = getc() - '0';
    800064cc:	ffffb097          	auipc	ra,0xffffb
    800064d0:	154080e7          	jalr	340(ra) # 80001620 <_Z4getcv>
    800064d4:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    800064d8:	ffffb097          	auipc	ra,0xffffb
    800064dc:	148080e7          	jalr	328(ra) # 80001620 <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    800064e0:	00700793          	li	a5,7
    800064e4:	1097e263          	bltu	a5,s1,800065e8 <_Z8userMainv+0x140>
    800064e8:	00249493          	slli	s1,s1,0x2
    800064ec:	00003717          	auipc	a4,0x3
    800064f0:	0a470713          	addi	a4,a4,164 # 80009590 <CONSOLE_STATUS+0x580>
    800064f4:	00e484b3          	add	s1,s1,a4
    800064f8:	0004a783          	lw	a5,0(s1)
    800064fc:	00e787b3          	add	a5,a5,a4
    80006500:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80006504:	fffff097          	auipc	ra,0xfffff
    80006508:	f54080e7          	jalr	-172(ra) # 80005458 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    8000650c:	00003517          	auipc	a0,0x3
    80006510:	e4c50513          	addi	a0,a0,-436 # 80009358 <CONSOLE_STATUS+0x348>
    80006514:	00000097          	auipc	ra,0x0
    80006518:	8cc080e7          	jalr	-1844(ra) # 80005de0 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    8000651c:	01813083          	ld	ra,24(sp)
    80006520:	01013403          	ld	s0,16(sp)
    80006524:	00813483          	ld	s1,8(sp)
    80006528:	02010113          	addi	sp,sp,32
    8000652c:	00008067          	ret
            Threads_CPP_API_test();
    80006530:	ffffe097          	auipc	ra,0xffffe
    80006534:	ae8080e7          	jalr	-1304(ra) # 80004018 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80006538:	00003517          	auipc	a0,0x3
    8000653c:	e6050513          	addi	a0,a0,-416 # 80009398 <CONSOLE_STATUS+0x388>
    80006540:	00000097          	auipc	ra,0x0
    80006544:	8a0080e7          	jalr	-1888(ra) # 80005de0 <_Z11printStringPKc>
            break;
    80006548:	fd5ff06f          	j	8000651c <_Z8userMainv+0x74>
            producerConsumer_C_API();
    8000654c:	ffffd097          	auipc	ra,0xffffd
    80006550:	320080e7          	jalr	800(ra) # 8000386c <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80006554:	00003517          	auipc	a0,0x3
    80006558:	e8450513          	addi	a0,a0,-380 # 800093d8 <CONSOLE_STATUS+0x3c8>
    8000655c:	00000097          	auipc	ra,0x0
    80006560:	884080e7          	jalr	-1916(ra) # 80005de0 <_Z11printStringPKc>
            break;
    80006564:	fb9ff06f          	j	8000651c <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    80006568:	fffff097          	auipc	ra,0xfffff
    8000656c:	234080e7          	jalr	564(ra) # 8000579c <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80006570:	00003517          	auipc	a0,0x3
    80006574:	eb850513          	addi	a0,a0,-328 # 80009428 <CONSOLE_STATUS+0x418>
    80006578:	00000097          	auipc	ra,0x0
    8000657c:	868080e7          	jalr	-1944(ra) # 80005de0 <_Z11printStringPKc>
            break;
    80006580:	f9dff06f          	j	8000651c <_Z8userMainv+0x74>
            testSleeping();
    80006584:	00000097          	auipc	ra,0x0
    80006588:	11c080e7          	jalr	284(ra) # 800066a0 <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    8000658c:	00003517          	auipc	a0,0x3
    80006590:	ef450513          	addi	a0,a0,-268 # 80009480 <CONSOLE_STATUS+0x470>
    80006594:	00000097          	auipc	ra,0x0
    80006598:	84c080e7          	jalr	-1972(ra) # 80005de0 <_Z11printStringPKc>
            break;
    8000659c:	f81ff06f          	j	8000651c <_Z8userMainv+0x74>
            testConsumerProducer();
    800065a0:	ffffe097          	auipc	ra,0xffffe
    800065a4:	f38080e7          	jalr	-200(ra) # 800044d8 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    800065a8:	00003517          	auipc	a0,0x3
    800065ac:	f0850513          	addi	a0,a0,-248 # 800094b0 <CONSOLE_STATUS+0x4a0>
    800065b0:	00000097          	auipc	ra,0x0
    800065b4:	830080e7          	jalr	-2000(ra) # 80005de0 <_Z11printStringPKc>
            break;
    800065b8:	f65ff06f          	j	8000651c <_Z8userMainv+0x74>
            System_Mode_test();
    800065bc:	00000097          	auipc	ra,0x0
    800065c0:	658080e7          	jalr	1624(ra) # 80006c14 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    800065c4:	00003517          	auipc	a0,0x3
    800065c8:	f2c50513          	addi	a0,a0,-212 # 800094f0 <CONSOLE_STATUS+0x4e0>
    800065cc:	00000097          	auipc	ra,0x0
    800065d0:	814080e7          	jalr	-2028(ra) # 80005de0 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    800065d4:	00003517          	auipc	a0,0x3
    800065d8:	f3c50513          	addi	a0,a0,-196 # 80009510 <CONSOLE_STATUS+0x500>
    800065dc:	00000097          	auipc	ra,0x0
    800065e0:	804080e7          	jalr	-2044(ra) # 80005de0 <_Z11printStringPKc>
            break;
    800065e4:	f39ff06f          	j	8000651c <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    800065e8:	00003517          	auipc	a0,0x3
    800065ec:	f8050513          	addi	a0,a0,-128 # 80009568 <CONSOLE_STATUS+0x558>
    800065f0:	fffff097          	auipc	ra,0xfffff
    800065f4:	7f0080e7          	jalr	2032(ra) # 80005de0 <_Z11printStringPKc>
    800065f8:	f25ff06f          	j	8000651c <_Z8userMainv+0x74>

00000000800065fc <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    800065fc:	fe010113          	addi	sp,sp,-32
    80006600:	00113c23          	sd	ra,24(sp)
    80006604:	00813823          	sd	s0,16(sp)
    80006608:	00913423          	sd	s1,8(sp)
    8000660c:	01213023          	sd	s2,0(sp)
    80006610:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80006614:	00053903          	ld	s2,0(a0)
    int i = 6;
    80006618:	00600493          	li	s1,6
    while (--i > 0) {
    8000661c:	fff4849b          	addiw	s1,s1,-1
    80006620:	04905463          	blez	s1,80006668 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80006624:	00003517          	auipc	a0,0x3
    80006628:	f8c50513          	addi	a0,a0,-116 # 800095b0 <CONSOLE_STATUS+0x5a0>
    8000662c:	fffff097          	auipc	ra,0xfffff
    80006630:	7b4080e7          	jalr	1972(ra) # 80005de0 <_Z11printStringPKc>
        printInt(sleep_time);
    80006634:	00000613          	li	a2,0
    80006638:	00a00593          	li	a1,10
    8000663c:	0009051b          	sext.w	a0,s2
    80006640:	00000097          	auipc	ra,0x0
    80006644:	950080e7          	jalr	-1712(ra) # 80005f90 <_Z8printIntiii>
        printString(" !\n");
    80006648:	00003517          	auipc	a0,0x3
    8000664c:	f7050513          	addi	a0,a0,-144 # 800095b8 <CONSOLE_STATUS+0x5a8>
    80006650:	fffff097          	auipc	ra,0xfffff
    80006654:	790080e7          	jalr	1936(ra) # 80005de0 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80006658:	00090513          	mv	a0,s2
    8000665c:	ffffb097          	auipc	ra,0xffffb
    80006660:	f78080e7          	jalr	-136(ra) # 800015d4 <_Z10time_sleepm>
    while (--i > 0) {
    80006664:	fb9ff06f          	j	8000661c <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80006668:	00a00793          	li	a5,10
    8000666c:	02f95933          	divu	s2,s2,a5
    80006670:	fff90913          	addi	s2,s2,-1
    80006674:	00005797          	auipc	a5,0x5
    80006678:	7a478793          	addi	a5,a5,1956 # 8000be18 <_ZL8finished>
    8000667c:	01278933          	add	s2,a5,s2
    80006680:	00100793          	li	a5,1
    80006684:	00f90023          	sb	a5,0(s2)
}
    80006688:	01813083          	ld	ra,24(sp)
    8000668c:	01013403          	ld	s0,16(sp)
    80006690:	00813483          	ld	s1,8(sp)
    80006694:	00013903          	ld	s2,0(sp)
    80006698:	02010113          	addi	sp,sp,32
    8000669c:	00008067          	ret

00000000800066a0 <_Z12testSleepingv>:

void testSleeping() {
    800066a0:	fc010113          	addi	sp,sp,-64
    800066a4:	02113c23          	sd	ra,56(sp)
    800066a8:	02813823          	sd	s0,48(sp)
    800066ac:	02913423          	sd	s1,40(sp)
    800066b0:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    800066b4:	00a00793          	li	a5,10
    800066b8:	fcf43823          	sd	a5,-48(s0)
    800066bc:	01400793          	li	a5,20
    800066c0:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    800066c4:	00000493          	li	s1,0
    800066c8:	02c0006f          	j	800066f4 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    800066cc:	00349793          	slli	a5,s1,0x3
    800066d0:	fd040613          	addi	a2,s0,-48
    800066d4:	00f60633          	add	a2,a2,a5
    800066d8:	00000597          	auipc	a1,0x0
    800066dc:	f2458593          	addi	a1,a1,-220 # 800065fc <_ZL9sleepyRunPv>
    800066e0:	fc040513          	addi	a0,s0,-64
    800066e4:	00f50533          	add	a0,a0,a5
    800066e8:	ffffb097          	auipc	ra,0xffffb
    800066ec:	c10080e7          	jalr	-1008(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    800066f0:	0014849b          	addiw	s1,s1,1
    800066f4:	00100793          	li	a5,1
    800066f8:	fc97dae3          	bge	a5,s1,800066cc <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    800066fc:	00005797          	auipc	a5,0x5
    80006700:	71c7c783          	lbu	a5,1820(a5) # 8000be18 <_ZL8finished>
    80006704:	fe078ce3          	beqz	a5,800066fc <_Z12testSleepingv+0x5c>
    80006708:	00005797          	auipc	a5,0x5
    8000670c:	7117c783          	lbu	a5,1809(a5) # 8000be19 <_ZL8finished+0x1>
    80006710:	fe0786e3          	beqz	a5,800066fc <_Z12testSleepingv+0x5c>
}
    80006714:	03813083          	ld	ra,56(sp)
    80006718:	03013403          	ld	s0,48(sp)
    8000671c:	02813483          	ld	s1,40(sp)
    80006720:	04010113          	addi	sp,sp,64
    80006724:	00008067          	ret

0000000080006728 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80006728:	fe010113          	addi	sp,sp,-32
    8000672c:	00113c23          	sd	ra,24(sp)
    80006730:	00813823          	sd	s0,16(sp)
    80006734:	00913423          	sd	s1,8(sp)
    80006738:	01213023          	sd	s2,0(sp)
    8000673c:	02010413          	addi	s0,sp,32
    80006740:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80006744:	00100793          	li	a5,1
    80006748:	02a7f863          	bgeu	a5,a0,80006778 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000674c:	00a00793          	li	a5,10
    80006750:	02f577b3          	remu	a5,a0,a5
    80006754:	02078e63          	beqz	a5,80006790 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80006758:	fff48513          	addi	a0,s1,-1
    8000675c:	00000097          	auipc	ra,0x0
    80006760:	fcc080e7          	jalr	-52(ra) # 80006728 <_ZL9fibonaccim>
    80006764:	00050913          	mv	s2,a0
    80006768:	ffe48513          	addi	a0,s1,-2
    8000676c:	00000097          	auipc	ra,0x0
    80006770:	fbc080e7          	jalr	-68(ra) # 80006728 <_ZL9fibonaccim>
    80006774:	00a90533          	add	a0,s2,a0
}
    80006778:	01813083          	ld	ra,24(sp)
    8000677c:	01013403          	ld	s0,16(sp)
    80006780:	00813483          	ld	s1,8(sp)
    80006784:	00013903          	ld	s2,0(sp)
    80006788:	02010113          	addi	sp,sp,32
    8000678c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80006790:	ffffb097          	auipc	ra,0xffffb
    80006794:	c3c080e7          	jalr	-964(ra) # 800013cc <_Z15thread_dispatchv>
    80006798:	fc1ff06f          	j	80006758 <_ZL9fibonaccim+0x30>

000000008000679c <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    8000679c:	fe010113          	addi	sp,sp,-32
    800067a0:	00113c23          	sd	ra,24(sp)
    800067a4:	00813823          	sd	s0,16(sp)
    800067a8:	00913423          	sd	s1,8(sp)
    800067ac:	01213023          	sd	s2,0(sp)
    800067b0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800067b4:	00a00493          	li	s1,10
    800067b8:	0400006f          	j	800067f8 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800067bc:	00003517          	auipc	a0,0x3
    800067c0:	abc50513          	addi	a0,a0,-1348 # 80009278 <CONSOLE_STATUS+0x268>
    800067c4:	fffff097          	auipc	ra,0xfffff
    800067c8:	61c080e7          	jalr	1564(ra) # 80005de0 <_Z11printStringPKc>
    800067cc:	00000613          	li	a2,0
    800067d0:	00a00593          	li	a1,10
    800067d4:	00048513          	mv	a0,s1
    800067d8:	fffff097          	auipc	ra,0xfffff
    800067dc:	7b8080e7          	jalr	1976(ra) # 80005f90 <_Z8printIntiii>
    800067e0:	00003517          	auipc	a0,0x3
    800067e4:	c9850513          	addi	a0,a0,-872 # 80009478 <CONSOLE_STATUS+0x468>
    800067e8:	fffff097          	auipc	ra,0xfffff
    800067ec:	5f8080e7          	jalr	1528(ra) # 80005de0 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800067f0:	0014849b          	addiw	s1,s1,1
    800067f4:	0ff4f493          	andi	s1,s1,255
    800067f8:	00c00793          	li	a5,12
    800067fc:	fc97f0e3          	bgeu	a5,s1,800067bc <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80006800:	00003517          	auipc	a0,0x3
    80006804:	a8050513          	addi	a0,a0,-1408 # 80009280 <CONSOLE_STATUS+0x270>
    80006808:	fffff097          	auipc	ra,0xfffff
    8000680c:	5d8080e7          	jalr	1496(ra) # 80005de0 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80006810:	00500313          	li	t1,5
    thread_dispatch();
    80006814:	ffffb097          	auipc	ra,0xffffb
    80006818:	bb8080e7          	jalr	-1096(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    8000681c:	01000513          	li	a0,16
    80006820:	00000097          	auipc	ra,0x0
    80006824:	f08080e7          	jalr	-248(ra) # 80006728 <_ZL9fibonaccim>
    80006828:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    8000682c:	00003517          	auipc	a0,0x3
    80006830:	a6450513          	addi	a0,a0,-1436 # 80009290 <CONSOLE_STATUS+0x280>
    80006834:	fffff097          	auipc	ra,0xfffff
    80006838:	5ac080e7          	jalr	1452(ra) # 80005de0 <_Z11printStringPKc>
    8000683c:	00000613          	li	a2,0
    80006840:	00a00593          	li	a1,10
    80006844:	0009051b          	sext.w	a0,s2
    80006848:	fffff097          	auipc	ra,0xfffff
    8000684c:	748080e7          	jalr	1864(ra) # 80005f90 <_Z8printIntiii>
    80006850:	00003517          	auipc	a0,0x3
    80006854:	c2850513          	addi	a0,a0,-984 # 80009478 <CONSOLE_STATUS+0x468>
    80006858:	fffff097          	auipc	ra,0xfffff
    8000685c:	588080e7          	jalr	1416(ra) # 80005de0 <_Z11printStringPKc>
    80006860:	0400006f          	j	800068a0 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006864:	00003517          	auipc	a0,0x3
    80006868:	a1450513          	addi	a0,a0,-1516 # 80009278 <CONSOLE_STATUS+0x268>
    8000686c:	fffff097          	auipc	ra,0xfffff
    80006870:	574080e7          	jalr	1396(ra) # 80005de0 <_Z11printStringPKc>
    80006874:	00000613          	li	a2,0
    80006878:	00a00593          	li	a1,10
    8000687c:	00048513          	mv	a0,s1
    80006880:	fffff097          	auipc	ra,0xfffff
    80006884:	710080e7          	jalr	1808(ra) # 80005f90 <_Z8printIntiii>
    80006888:	00003517          	auipc	a0,0x3
    8000688c:	bf050513          	addi	a0,a0,-1040 # 80009478 <CONSOLE_STATUS+0x468>
    80006890:	fffff097          	auipc	ra,0xfffff
    80006894:	550080e7          	jalr	1360(ra) # 80005de0 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80006898:	0014849b          	addiw	s1,s1,1
    8000689c:	0ff4f493          	andi	s1,s1,255
    800068a0:	00f00793          	li	a5,15
    800068a4:	fc97f0e3          	bgeu	a5,s1,80006864 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800068a8:	00003517          	auipc	a0,0x3
    800068ac:	9f850513          	addi	a0,a0,-1544 # 800092a0 <CONSOLE_STATUS+0x290>
    800068b0:	fffff097          	auipc	ra,0xfffff
    800068b4:	530080e7          	jalr	1328(ra) # 80005de0 <_Z11printStringPKc>
    finishedD = true;
    800068b8:	00100793          	li	a5,1
    800068bc:	00005717          	auipc	a4,0x5
    800068c0:	54f70f23          	sb	a5,1374(a4) # 8000be1a <_ZL9finishedD>
    thread_dispatch();
    800068c4:	ffffb097          	auipc	ra,0xffffb
    800068c8:	b08080e7          	jalr	-1272(ra) # 800013cc <_Z15thread_dispatchv>
}
    800068cc:	01813083          	ld	ra,24(sp)
    800068d0:	01013403          	ld	s0,16(sp)
    800068d4:	00813483          	ld	s1,8(sp)
    800068d8:	00013903          	ld	s2,0(sp)
    800068dc:	02010113          	addi	sp,sp,32
    800068e0:	00008067          	ret

00000000800068e4 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800068e4:	fe010113          	addi	sp,sp,-32
    800068e8:	00113c23          	sd	ra,24(sp)
    800068ec:	00813823          	sd	s0,16(sp)
    800068f0:	00913423          	sd	s1,8(sp)
    800068f4:	01213023          	sd	s2,0(sp)
    800068f8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800068fc:	00000493          	li	s1,0
    80006900:	0400006f          	j	80006940 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80006904:	00003517          	auipc	a0,0x3
    80006908:	94450513          	addi	a0,a0,-1724 # 80009248 <CONSOLE_STATUS+0x238>
    8000690c:	fffff097          	auipc	ra,0xfffff
    80006910:	4d4080e7          	jalr	1236(ra) # 80005de0 <_Z11printStringPKc>
    80006914:	00000613          	li	a2,0
    80006918:	00a00593          	li	a1,10
    8000691c:	00048513          	mv	a0,s1
    80006920:	fffff097          	auipc	ra,0xfffff
    80006924:	670080e7          	jalr	1648(ra) # 80005f90 <_Z8printIntiii>
    80006928:	00003517          	auipc	a0,0x3
    8000692c:	b5050513          	addi	a0,a0,-1200 # 80009478 <CONSOLE_STATUS+0x468>
    80006930:	fffff097          	auipc	ra,0xfffff
    80006934:	4b0080e7          	jalr	1200(ra) # 80005de0 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80006938:	0014849b          	addiw	s1,s1,1
    8000693c:	0ff4f493          	andi	s1,s1,255
    80006940:	00200793          	li	a5,2
    80006944:	fc97f0e3          	bgeu	a5,s1,80006904 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80006948:	00003517          	auipc	a0,0x3
    8000694c:	90850513          	addi	a0,a0,-1784 # 80009250 <CONSOLE_STATUS+0x240>
    80006950:	fffff097          	auipc	ra,0xfffff
    80006954:	490080e7          	jalr	1168(ra) # 80005de0 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80006958:	00700313          	li	t1,7
    thread_dispatch();
    8000695c:	ffffb097          	auipc	ra,0xffffb
    80006960:	a70080e7          	jalr	-1424(ra) # 800013cc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80006964:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80006968:	00003517          	auipc	a0,0x3
    8000696c:	8f850513          	addi	a0,a0,-1800 # 80009260 <CONSOLE_STATUS+0x250>
    80006970:	fffff097          	auipc	ra,0xfffff
    80006974:	470080e7          	jalr	1136(ra) # 80005de0 <_Z11printStringPKc>
    80006978:	00000613          	li	a2,0
    8000697c:	00a00593          	li	a1,10
    80006980:	0009051b          	sext.w	a0,s2
    80006984:	fffff097          	auipc	ra,0xfffff
    80006988:	60c080e7          	jalr	1548(ra) # 80005f90 <_Z8printIntiii>
    8000698c:	00003517          	auipc	a0,0x3
    80006990:	aec50513          	addi	a0,a0,-1300 # 80009478 <CONSOLE_STATUS+0x468>
    80006994:	fffff097          	auipc	ra,0xfffff
    80006998:	44c080e7          	jalr	1100(ra) # 80005de0 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    8000699c:	00c00513          	li	a0,12
    800069a0:	00000097          	auipc	ra,0x0
    800069a4:	d88080e7          	jalr	-632(ra) # 80006728 <_ZL9fibonaccim>
    800069a8:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800069ac:	00003517          	auipc	a0,0x3
    800069b0:	8bc50513          	addi	a0,a0,-1860 # 80009268 <CONSOLE_STATUS+0x258>
    800069b4:	fffff097          	auipc	ra,0xfffff
    800069b8:	42c080e7          	jalr	1068(ra) # 80005de0 <_Z11printStringPKc>
    800069bc:	00000613          	li	a2,0
    800069c0:	00a00593          	li	a1,10
    800069c4:	0009051b          	sext.w	a0,s2
    800069c8:	fffff097          	auipc	ra,0xfffff
    800069cc:	5c8080e7          	jalr	1480(ra) # 80005f90 <_Z8printIntiii>
    800069d0:	00003517          	auipc	a0,0x3
    800069d4:	aa850513          	addi	a0,a0,-1368 # 80009478 <CONSOLE_STATUS+0x468>
    800069d8:	fffff097          	auipc	ra,0xfffff
    800069dc:	408080e7          	jalr	1032(ra) # 80005de0 <_Z11printStringPKc>
    800069e0:	0400006f          	j	80006a20 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800069e4:	00003517          	auipc	a0,0x3
    800069e8:	86450513          	addi	a0,a0,-1948 # 80009248 <CONSOLE_STATUS+0x238>
    800069ec:	fffff097          	auipc	ra,0xfffff
    800069f0:	3f4080e7          	jalr	1012(ra) # 80005de0 <_Z11printStringPKc>
    800069f4:	00000613          	li	a2,0
    800069f8:	00a00593          	li	a1,10
    800069fc:	00048513          	mv	a0,s1
    80006a00:	fffff097          	auipc	ra,0xfffff
    80006a04:	590080e7          	jalr	1424(ra) # 80005f90 <_Z8printIntiii>
    80006a08:	00003517          	auipc	a0,0x3
    80006a0c:	a7050513          	addi	a0,a0,-1424 # 80009478 <CONSOLE_STATUS+0x468>
    80006a10:	fffff097          	auipc	ra,0xfffff
    80006a14:	3d0080e7          	jalr	976(ra) # 80005de0 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80006a18:	0014849b          	addiw	s1,s1,1
    80006a1c:	0ff4f493          	andi	s1,s1,255
    80006a20:	00500793          	li	a5,5
    80006a24:	fc97f0e3          	bgeu	a5,s1,800069e4 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80006a28:	00002517          	auipc	a0,0x2
    80006a2c:	7f850513          	addi	a0,a0,2040 # 80009220 <CONSOLE_STATUS+0x210>
    80006a30:	fffff097          	auipc	ra,0xfffff
    80006a34:	3b0080e7          	jalr	944(ra) # 80005de0 <_Z11printStringPKc>
    finishedC = true;
    80006a38:	00100793          	li	a5,1
    80006a3c:	00005717          	auipc	a4,0x5
    80006a40:	3cf70fa3          	sb	a5,991(a4) # 8000be1b <_ZL9finishedC>
    thread_dispatch();
    80006a44:	ffffb097          	auipc	ra,0xffffb
    80006a48:	988080e7          	jalr	-1656(ra) # 800013cc <_Z15thread_dispatchv>
}
    80006a4c:	01813083          	ld	ra,24(sp)
    80006a50:	01013403          	ld	s0,16(sp)
    80006a54:	00813483          	ld	s1,8(sp)
    80006a58:	00013903          	ld	s2,0(sp)
    80006a5c:	02010113          	addi	sp,sp,32
    80006a60:	00008067          	ret

0000000080006a64 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80006a64:	fe010113          	addi	sp,sp,-32
    80006a68:	00113c23          	sd	ra,24(sp)
    80006a6c:	00813823          	sd	s0,16(sp)
    80006a70:	00913423          	sd	s1,8(sp)
    80006a74:	01213023          	sd	s2,0(sp)
    80006a78:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80006a7c:	00000913          	li	s2,0
    80006a80:	0400006f          	j	80006ac0 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80006a84:	ffffb097          	auipc	ra,0xffffb
    80006a88:	948080e7          	jalr	-1720(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006a8c:	00148493          	addi	s1,s1,1
    80006a90:	000027b7          	lui	a5,0x2
    80006a94:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006a98:	0097ee63          	bltu	a5,s1,80006ab4 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006a9c:	00000713          	li	a4,0
    80006aa0:	000077b7          	lui	a5,0x7
    80006aa4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006aa8:	fce7eee3          	bltu	a5,a4,80006a84 <_ZL11workerBodyBPv+0x20>
    80006aac:	00170713          	addi	a4,a4,1
    80006ab0:	ff1ff06f          	j	80006aa0 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80006ab4:	00a00793          	li	a5,10
    80006ab8:	04f90663          	beq	s2,a5,80006b04 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80006abc:	00190913          	addi	s2,s2,1
    80006ac0:	00f00793          	li	a5,15
    80006ac4:	0527e463          	bltu	a5,s2,80006b0c <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80006ac8:	00002517          	auipc	a0,0x2
    80006acc:	76850513          	addi	a0,a0,1896 # 80009230 <CONSOLE_STATUS+0x220>
    80006ad0:	fffff097          	auipc	ra,0xfffff
    80006ad4:	310080e7          	jalr	784(ra) # 80005de0 <_Z11printStringPKc>
    80006ad8:	00000613          	li	a2,0
    80006adc:	00a00593          	li	a1,10
    80006ae0:	0009051b          	sext.w	a0,s2
    80006ae4:	fffff097          	auipc	ra,0xfffff
    80006ae8:	4ac080e7          	jalr	1196(ra) # 80005f90 <_Z8printIntiii>
    80006aec:	00003517          	auipc	a0,0x3
    80006af0:	98c50513          	addi	a0,a0,-1652 # 80009478 <CONSOLE_STATUS+0x468>
    80006af4:	fffff097          	auipc	ra,0xfffff
    80006af8:	2ec080e7          	jalr	748(ra) # 80005de0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006afc:	00000493          	li	s1,0
    80006b00:	f91ff06f          	j	80006a90 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80006b04:	14102ff3          	csrr	t6,sepc
    80006b08:	fb5ff06f          	j	80006abc <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80006b0c:	00002517          	auipc	a0,0x2
    80006b10:	72c50513          	addi	a0,a0,1836 # 80009238 <CONSOLE_STATUS+0x228>
    80006b14:	fffff097          	auipc	ra,0xfffff
    80006b18:	2cc080e7          	jalr	716(ra) # 80005de0 <_Z11printStringPKc>
    finishedB = true;
    80006b1c:	00100793          	li	a5,1
    80006b20:	00005717          	auipc	a4,0x5
    80006b24:	2ef70e23          	sb	a5,764(a4) # 8000be1c <_ZL9finishedB>
    thread_dispatch();
    80006b28:	ffffb097          	auipc	ra,0xffffb
    80006b2c:	8a4080e7          	jalr	-1884(ra) # 800013cc <_Z15thread_dispatchv>
}
    80006b30:	01813083          	ld	ra,24(sp)
    80006b34:	01013403          	ld	s0,16(sp)
    80006b38:	00813483          	ld	s1,8(sp)
    80006b3c:	00013903          	ld	s2,0(sp)
    80006b40:	02010113          	addi	sp,sp,32
    80006b44:	00008067          	ret

0000000080006b48 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80006b48:	fe010113          	addi	sp,sp,-32
    80006b4c:	00113c23          	sd	ra,24(sp)
    80006b50:	00813823          	sd	s0,16(sp)
    80006b54:	00913423          	sd	s1,8(sp)
    80006b58:	01213023          	sd	s2,0(sp)
    80006b5c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006b60:	00000913          	li	s2,0
    80006b64:	0380006f          	j	80006b9c <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80006b68:	ffffb097          	auipc	ra,0xffffb
    80006b6c:	864080e7          	jalr	-1948(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006b70:	00148493          	addi	s1,s1,1
    80006b74:	000027b7          	lui	a5,0x2
    80006b78:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006b7c:	0097ee63          	bltu	a5,s1,80006b98 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006b80:	00000713          	li	a4,0
    80006b84:	000077b7          	lui	a5,0x7
    80006b88:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006b8c:	fce7eee3          	bltu	a5,a4,80006b68 <_ZL11workerBodyAPv+0x20>
    80006b90:	00170713          	addi	a4,a4,1
    80006b94:	ff1ff06f          	j	80006b84 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80006b98:	00190913          	addi	s2,s2,1
    80006b9c:	00900793          	li	a5,9
    80006ba0:	0527e063          	bltu	a5,s2,80006be0 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80006ba4:	00002517          	auipc	a0,0x2
    80006ba8:	67450513          	addi	a0,a0,1652 # 80009218 <CONSOLE_STATUS+0x208>
    80006bac:	fffff097          	auipc	ra,0xfffff
    80006bb0:	234080e7          	jalr	564(ra) # 80005de0 <_Z11printStringPKc>
    80006bb4:	00000613          	li	a2,0
    80006bb8:	00a00593          	li	a1,10
    80006bbc:	0009051b          	sext.w	a0,s2
    80006bc0:	fffff097          	auipc	ra,0xfffff
    80006bc4:	3d0080e7          	jalr	976(ra) # 80005f90 <_Z8printIntiii>
    80006bc8:	00003517          	auipc	a0,0x3
    80006bcc:	8b050513          	addi	a0,a0,-1872 # 80009478 <CONSOLE_STATUS+0x468>
    80006bd0:	fffff097          	auipc	ra,0xfffff
    80006bd4:	210080e7          	jalr	528(ra) # 80005de0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006bd8:	00000493          	li	s1,0
    80006bdc:	f99ff06f          	j	80006b74 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006be0:	00002517          	auipc	a0,0x2
    80006be4:	64050513          	addi	a0,a0,1600 # 80009220 <CONSOLE_STATUS+0x210>
    80006be8:	fffff097          	auipc	ra,0xfffff
    80006bec:	1f8080e7          	jalr	504(ra) # 80005de0 <_Z11printStringPKc>
    finishedA = true;
    80006bf0:	00100793          	li	a5,1
    80006bf4:	00005717          	auipc	a4,0x5
    80006bf8:	22f704a3          	sb	a5,553(a4) # 8000be1d <_ZL9finishedA>
}
    80006bfc:	01813083          	ld	ra,24(sp)
    80006c00:	01013403          	ld	s0,16(sp)
    80006c04:	00813483          	ld	s1,8(sp)
    80006c08:	00013903          	ld	s2,0(sp)
    80006c0c:	02010113          	addi	sp,sp,32
    80006c10:	00008067          	ret

0000000080006c14 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006c14:	fd010113          	addi	sp,sp,-48
    80006c18:	02113423          	sd	ra,40(sp)
    80006c1c:	02813023          	sd	s0,32(sp)
    80006c20:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006c24:	00000613          	li	a2,0
    80006c28:	00000597          	auipc	a1,0x0
    80006c2c:	f2058593          	addi	a1,a1,-224 # 80006b48 <_ZL11workerBodyAPv>
    80006c30:	fd040513          	addi	a0,s0,-48
    80006c34:	ffffa097          	auipc	ra,0xffffa
    80006c38:	6c4080e7          	jalr	1732(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80006c3c:	00002517          	auipc	a0,0x2
    80006c40:	67450513          	addi	a0,a0,1652 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80006c44:	fffff097          	auipc	ra,0xfffff
    80006c48:	19c080e7          	jalr	412(ra) # 80005de0 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80006c4c:	00000613          	li	a2,0
    80006c50:	00000597          	auipc	a1,0x0
    80006c54:	e1458593          	addi	a1,a1,-492 # 80006a64 <_ZL11workerBodyBPv>
    80006c58:	fd840513          	addi	a0,s0,-40
    80006c5c:	ffffa097          	auipc	ra,0xffffa
    80006c60:	69c080e7          	jalr	1692(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80006c64:	00002517          	auipc	a0,0x2
    80006c68:	66450513          	addi	a0,a0,1636 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80006c6c:	fffff097          	auipc	ra,0xfffff
    80006c70:	174080e7          	jalr	372(ra) # 80005de0 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006c74:	00000613          	li	a2,0
    80006c78:	00000597          	auipc	a1,0x0
    80006c7c:	c6c58593          	addi	a1,a1,-916 # 800068e4 <_ZL11workerBodyCPv>
    80006c80:	fe040513          	addi	a0,s0,-32
    80006c84:	ffffa097          	auipc	ra,0xffffa
    80006c88:	674080e7          	jalr	1652(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80006c8c:	00002517          	auipc	a0,0x2
    80006c90:	65450513          	addi	a0,a0,1620 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80006c94:	fffff097          	auipc	ra,0xfffff
    80006c98:	14c080e7          	jalr	332(ra) # 80005de0 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80006c9c:	00000613          	li	a2,0
    80006ca0:	00000597          	auipc	a1,0x0
    80006ca4:	afc58593          	addi	a1,a1,-1284 # 8000679c <_ZL11workerBodyDPv>
    80006ca8:	fe840513          	addi	a0,s0,-24
    80006cac:	ffffa097          	auipc	ra,0xffffa
    80006cb0:	64c080e7          	jalr	1612(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80006cb4:	00002517          	auipc	a0,0x2
    80006cb8:	64450513          	addi	a0,a0,1604 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80006cbc:	fffff097          	auipc	ra,0xfffff
    80006cc0:	124080e7          	jalr	292(ra) # 80005de0 <_Z11printStringPKc>
    80006cc4:	00c0006f          	j	80006cd0 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006cc8:	ffffa097          	auipc	ra,0xffffa
    80006ccc:	704080e7          	jalr	1796(ra) # 800013cc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006cd0:	00005797          	auipc	a5,0x5
    80006cd4:	14d7c783          	lbu	a5,333(a5) # 8000be1d <_ZL9finishedA>
    80006cd8:	fe0788e3          	beqz	a5,80006cc8 <_Z16System_Mode_testv+0xb4>
    80006cdc:	00005797          	auipc	a5,0x5
    80006ce0:	1407c783          	lbu	a5,320(a5) # 8000be1c <_ZL9finishedB>
    80006ce4:	fe0782e3          	beqz	a5,80006cc8 <_Z16System_Mode_testv+0xb4>
    80006ce8:	00005797          	auipc	a5,0x5
    80006cec:	1337c783          	lbu	a5,307(a5) # 8000be1b <_ZL9finishedC>
    80006cf0:	fc078ce3          	beqz	a5,80006cc8 <_Z16System_Mode_testv+0xb4>
    80006cf4:	00005797          	auipc	a5,0x5
    80006cf8:	1267c783          	lbu	a5,294(a5) # 8000be1a <_ZL9finishedD>
    80006cfc:	fc0786e3          	beqz	a5,80006cc8 <_Z16System_Mode_testv+0xb4>
    }

}
    80006d00:	02813083          	ld	ra,40(sp)
    80006d04:	02013403          	ld	s0,32(sp)
    80006d08:	03010113          	addi	sp,sp,48
    80006d0c:	00008067          	ret

0000000080006d10 <start>:
    80006d10:	ff010113          	addi	sp,sp,-16
    80006d14:	00813423          	sd	s0,8(sp)
    80006d18:	01010413          	addi	s0,sp,16
    80006d1c:	300027f3          	csrr	a5,mstatus
    80006d20:	ffffe737          	lui	a4,0xffffe
    80006d24:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff177f>
    80006d28:	00e7f7b3          	and	a5,a5,a4
    80006d2c:	00001737          	lui	a4,0x1
    80006d30:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006d34:	00e7e7b3          	or	a5,a5,a4
    80006d38:	30079073          	csrw	mstatus,a5
    80006d3c:	00000797          	auipc	a5,0x0
    80006d40:	16078793          	addi	a5,a5,352 # 80006e9c <system_main>
    80006d44:	34179073          	csrw	mepc,a5
    80006d48:	00000793          	li	a5,0
    80006d4c:	18079073          	csrw	satp,a5
    80006d50:	000107b7          	lui	a5,0x10
    80006d54:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006d58:	30279073          	csrw	medeleg,a5
    80006d5c:	30379073          	csrw	mideleg,a5
    80006d60:	104027f3          	csrr	a5,sie
    80006d64:	2227e793          	ori	a5,a5,546
    80006d68:	10479073          	csrw	sie,a5
    80006d6c:	fff00793          	li	a5,-1
    80006d70:	00a7d793          	srli	a5,a5,0xa
    80006d74:	3b079073          	csrw	pmpaddr0,a5
    80006d78:	00f00793          	li	a5,15
    80006d7c:	3a079073          	csrw	pmpcfg0,a5
    80006d80:	f14027f3          	csrr	a5,mhartid
    80006d84:	0200c737          	lui	a4,0x200c
    80006d88:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006d8c:	0007869b          	sext.w	a3,a5
    80006d90:	00269713          	slli	a4,a3,0x2
    80006d94:	000f4637          	lui	a2,0xf4
    80006d98:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006d9c:	00d70733          	add	a4,a4,a3
    80006da0:	0037979b          	slliw	a5,a5,0x3
    80006da4:	020046b7          	lui	a3,0x2004
    80006da8:	00d787b3          	add	a5,a5,a3
    80006dac:	00c585b3          	add	a1,a1,a2
    80006db0:	00371693          	slli	a3,a4,0x3
    80006db4:	00005717          	auipc	a4,0x5
    80006db8:	06c70713          	addi	a4,a4,108 # 8000be20 <timer_scratch>
    80006dbc:	00b7b023          	sd	a1,0(a5)
    80006dc0:	00d70733          	add	a4,a4,a3
    80006dc4:	00f73c23          	sd	a5,24(a4)
    80006dc8:	02c73023          	sd	a2,32(a4)
    80006dcc:	34071073          	csrw	mscratch,a4
    80006dd0:	00000797          	auipc	a5,0x0
    80006dd4:	6e078793          	addi	a5,a5,1760 # 800074b0 <timervec>
    80006dd8:	30579073          	csrw	mtvec,a5
    80006ddc:	300027f3          	csrr	a5,mstatus
    80006de0:	0087e793          	ori	a5,a5,8
    80006de4:	30079073          	csrw	mstatus,a5
    80006de8:	304027f3          	csrr	a5,mie
    80006dec:	0807e793          	ori	a5,a5,128
    80006df0:	30479073          	csrw	mie,a5
    80006df4:	f14027f3          	csrr	a5,mhartid
    80006df8:	0007879b          	sext.w	a5,a5
    80006dfc:	00078213          	mv	tp,a5
    80006e00:	30200073          	mret
    80006e04:	00813403          	ld	s0,8(sp)
    80006e08:	01010113          	addi	sp,sp,16
    80006e0c:	00008067          	ret

0000000080006e10 <timerinit>:
    80006e10:	ff010113          	addi	sp,sp,-16
    80006e14:	00813423          	sd	s0,8(sp)
    80006e18:	01010413          	addi	s0,sp,16
    80006e1c:	f14027f3          	csrr	a5,mhartid
    80006e20:	0200c737          	lui	a4,0x200c
    80006e24:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006e28:	0007869b          	sext.w	a3,a5
    80006e2c:	00269713          	slli	a4,a3,0x2
    80006e30:	000f4637          	lui	a2,0xf4
    80006e34:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006e38:	00d70733          	add	a4,a4,a3
    80006e3c:	0037979b          	slliw	a5,a5,0x3
    80006e40:	020046b7          	lui	a3,0x2004
    80006e44:	00d787b3          	add	a5,a5,a3
    80006e48:	00c585b3          	add	a1,a1,a2
    80006e4c:	00371693          	slli	a3,a4,0x3
    80006e50:	00005717          	auipc	a4,0x5
    80006e54:	fd070713          	addi	a4,a4,-48 # 8000be20 <timer_scratch>
    80006e58:	00b7b023          	sd	a1,0(a5)
    80006e5c:	00d70733          	add	a4,a4,a3
    80006e60:	00f73c23          	sd	a5,24(a4)
    80006e64:	02c73023          	sd	a2,32(a4)
    80006e68:	34071073          	csrw	mscratch,a4
    80006e6c:	00000797          	auipc	a5,0x0
    80006e70:	64478793          	addi	a5,a5,1604 # 800074b0 <timervec>
    80006e74:	30579073          	csrw	mtvec,a5
    80006e78:	300027f3          	csrr	a5,mstatus
    80006e7c:	0087e793          	ori	a5,a5,8
    80006e80:	30079073          	csrw	mstatus,a5
    80006e84:	304027f3          	csrr	a5,mie
    80006e88:	0807e793          	ori	a5,a5,128
    80006e8c:	30479073          	csrw	mie,a5
    80006e90:	00813403          	ld	s0,8(sp)
    80006e94:	01010113          	addi	sp,sp,16
    80006e98:	00008067          	ret

0000000080006e9c <system_main>:
    80006e9c:	fe010113          	addi	sp,sp,-32
    80006ea0:	00813823          	sd	s0,16(sp)
    80006ea4:	00913423          	sd	s1,8(sp)
    80006ea8:	00113c23          	sd	ra,24(sp)
    80006eac:	02010413          	addi	s0,sp,32
    80006eb0:	00000097          	auipc	ra,0x0
    80006eb4:	0c4080e7          	jalr	196(ra) # 80006f74 <cpuid>
    80006eb8:	00005497          	auipc	s1,0x5
    80006ebc:	e8848493          	addi	s1,s1,-376 # 8000bd40 <started>
    80006ec0:	02050263          	beqz	a0,80006ee4 <system_main+0x48>
    80006ec4:	0004a783          	lw	a5,0(s1)
    80006ec8:	0007879b          	sext.w	a5,a5
    80006ecc:	fe078ce3          	beqz	a5,80006ec4 <system_main+0x28>
    80006ed0:	0ff0000f          	fence
    80006ed4:	00002517          	auipc	a0,0x2
    80006ed8:	71c50513          	addi	a0,a0,1820 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80006edc:	00001097          	auipc	ra,0x1
    80006ee0:	a70080e7          	jalr	-1424(ra) # 8000794c <panic>
    80006ee4:	00001097          	auipc	ra,0x1
    80006ee8:	9c4080e7          	jalr	-1596(ra) # 800078a8 <consoleinit>
    80006eec:	00001097          	auipc	ra,0x1
    80006ef0:	150080e7          	jalr	336(ra) # 8000803c <printfinit>
    80006ef4:	00002517          	auipc	a0,0x2
    80006ef8:	58450513          	addi	a0,a0,1412 # 80009478 <CONSOLE_STATUS+0x468>
    80006efc:	00001097          	auipc	ra,0x1
    80006f00:	aac080e7          	jalr	-1364(ra) # 800079a8 <__printf>
    80006f04:	00002517          	auipc	a0,0x2
    80006f08:	6bc50513          	addi	a0,a0,1724 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80006f0c:	00001097          	auipc	ra,0x1
    80006f10:	a9c080e7          	jalr	-1380(ra) # 800079a8 <__printf>
    80006f14:	00002517          	auipc	a0,0x2
    80006f18:	56450513          	addi	a0,a0,1380 # 80009478 <CONSOLE_STATUS+0x468>
    80006f1c:	00001097          	auipc	ra,0x1
    80006f20:	a8c080e7          	jalr	-1396(ra) # 800079a8 <__printf>
    80006f24:	00001097          	auipc	ra,0x1
    80006f28:	4a4080e7          	jalr	1188(ra) # 800083c8 <kinit>
    80006f2c:	00000097          	auipc	ra,0x0
    80006f30:	148080e7          	jalr	328(ra) # 80007074 <trapinit>
    80006f34:	00000097          	auipc	ra,0x0
    80006f38:	16c080e7          	jalr	364(ra) # 800070a0 <trapinithart>
    80006f3c:	00000097          	auipc	ra,0x0
    80006f40:	5b4080e7          	jalr	1460(ra) # 800074f0 <plicinit>
    80006f44:	00000097          	auipc	ra,0x0
    80006f48:	5d4080e7          	jalr	1492(ra) # 80007518 <plicinithart>
    80006f4c:	00000097          	auipc	ra,0x0
    80006f50:	078080e7          	jalr	120(ra) # 80006fc4 <userinit>
    80006f54:	0ff0000f          	fence
    80006f58:	00100793          	li	a5,1
    80006f5c:	00002517          	auipc	a0,0x2
    80006f60:	67c50513          	addi	a0,a0,1660 # 800095d8 <CONSOLE_STATUS+0x5c8>
    80006f64:	00f4a023          	sw	a5,0(s1)
    80006f68:	00001097          	auipc	ra,0x1
    80006f6c:	a40080e7          	jalr	-1472(ra) # 800079a8 <__printf>
    80006f70:	0000006f          	j	80006f70 <system_main+0xd4>

0000000080006f74 <cpuid>:
    80006f74:	ff010113          	addi	sp,sp,-16
    80006f78:	00813423          	sd	s0,8(sp)
    80006f7c:	01010413          	addi	s0,sp,16
    80006f80:	00020513          	mv	a0,tp
    80006f84:	00813403          	ld	s0,8(sp)
    80006f88:	0005051b          	sext.w	a0,a0
    80006f8c:	01010113          	addi	sp,sp,16
    80006f90:	00008067          	ret

0000000080006f94 <mycpu>:
    80006f94:	ff010113          	addi	sp,sp,-16
    80006f98:	00813423          	sd	s0,8(sp)
    80006f9c:	01010413          	addi	s0,sp,16
    80006fa0:	00020793          	mv	a5,tp
    80006fa4:	00813403          	ld	s0,8(sp)
    80006fa8:	0007879b          	sext.w	a5,a5
    80006fac:	00779793          	slli	a5,a5,0x7
    80006fb0:	00006517          	auipc	a0,0x6
    80006fb4:	ea050513          	addi	a0,a0,-352 # 8000ce50 <cpus>
    80006fb8:	00f50533          	add	a0,a0,a5
    80006fbc:	01010113          	addi	sp,sp,16
    80006fc0:	00008067          	ret

0000000080006fc4 <userinit>:
    80006fc4:	ff010113          	addi	sp,sp,-16
    80006fc8:	00813423          	sd	s0,8(sp)
    80006fcc:	01010413          	addi	s0,sp,16
    80006fd0:	00813403          	ld	s0,8(sp)
    80006fd4:	01010113          	addi	sp,sp,16
    80006fd8:	ffffb317          	auipc	t1,0xffffb
    80006fdc:	d2030067          	jr	-736(t1) # 80001cf8 <main>

0000000080006fe0 <either_copyout>:
    80006fe0:	ff010113          	addi	sp,sp,-16
    80006fe4:	00813023          	sd	s0,0(sp)
    80006fe8:	00113423          	sd	ra,8(sp)
    80006fec:	01010413          	addi	s0,sp,16
    80006ff0:	02051663          	bnez	a0,8000701c <either_copyout+0x3c>
    80006ff4:	00058513          	mv	a0,a1
    80006ff8:	00060593          	mv	a1,a2
    80006ffc:	0006861b          	sext.w	a2,a3
    80007000:	00002097          	auipc	ra,0x2
    80007004:	c54080e7          	jalr	-940(ra) # 80008c54 <__memmove>
    80007008:	00813083          	ld	ra,8(sp)
    8000700c:	00013403          	ld	s0,0(sp)
    80007010:	00000513          	li	a0,0
    80007014:	01010113          	addi	sp,sp,16
    80007018:	00008067          	ret
    8000701c:	00002517          	auipc	a0,0x2
    80007020:	5fc50513          	addi	a0,a0,1532 # 80009618 <CONSOLE_STATUS+0x608>
    80007024:	00001097          	auipc	ra,0x1
    80007028:	928080e7          	jalr	-1752(ra) # 8000794c <panic>

000000008000702c <either_copyin>:
    8000702c:	ff010113          	addi	sp,sp,-16
    80007030:	00813023          	sd	s0,0(sp)
    80007034:	00113423          	sd	ra,8(sp)
    80007038:	01010413          	addi	s0,sp,16
    8000703c:	02059463          	bnez	a1,80007064 <either_copyin+0x38>
    80007040:	00060593          	mv	a1,a2
    80007044:	0006861b          	sext.w	a2,a3
    80007048:	00002097          	auipc	ra,0x2
    8000704c:	c0c080e7          	jalr	-1012(ra) # 80008c54 <__memmove>
    80007050:	00813083          	ld	ra,8(sp)
    80007054:	00013403          	ld	s0,0(sp)
    80007058:	00000513          	li	a0,0
    8000705c:	01010113          	addi	sp,sp,16
    80007060:	00008067          	ret
    80007064:	00002517          	auipc	a0,0x2
    80007068:	5dc50513          	addi	a0,a0,1500 # 80009640 <CONSOLE_STATUS+0x630>
    8000706c:	00001097          	auipc	ra,0x1
    80007070:	8e0080e7          	jalr	-1824(ra) # 8000794c <panic>

0000000080007074 <trapinit>:
    80007074:	ff010113          	addi	sp,sp,-16
    80007078:	00813423          	sd	s0,8(sp)
    8000707c:	01010413          	addi	s0,sp,16
    80007080:	00813403          	ld	s0,8(sp)
    80007084:	00002597          	auipc	a1,0x2
    80007088:	5e458593          	addi	a1,a1,1508 # 80009668 <CONSOLE_STATUS+0x658>
    8000708c:	00006517          	auipc	a0,0x6
    80007090:	e4450513          	addi	a0,a0,-444 # 8000ced0 <tickslock>
    80007094:	01010113          	addi	sp,sp,16
    80007098:	00001317          	auipc	t1,0x1
    8000709c:	5c030067          	jr	1472(t1) # 80008658 <initlock>

00000000800070a0 <trapinithart>:
    800070a0:	ff010113          	addi	sp,sp,-16
    800070a4:	00813423          	sd	s0,8(sp)
    800070a8:	01010413          	addi	s0,sp,16
    800070ac:	00000797          	auipc	a5,0x0
    800070b0:	2f478793          	addi	a5,a5,756 # 800073a0 <kernelvec>
    800070b4:	10579073          	csrw	stvec,a5
    800070b8:	00813403          	ld	s0,8(sp)
    800070bc:	01010113          	addi	sp,sp,16
    800070c0:	00008067          	ret

00000000800070c4 <usertrap>:
    800070c4:	ff010113          	addi	sp,sp,-16
    800070c8:	00813423          	sd	s0,8(sp)
    800070cc:	01010413          	addi	s0,sp,16
    800070d0:	00813403          	ld	s0,8(sp)
    800070d4:	01010113          	addi	sp,sp,16
    800070d8:	00008067          	ret

00000000800070dc <usertrapret>:
    800070dc:	ff010113          	addi	sp,sp,-16
    800070e0:	00813423          	sd	s0,8(sp)
    800070e4:	01010413          	addi	s0,sp,16
    800070e8:	00813403          	ld	s0,8(sp)
    800070ec:	01010113          	addi	sp,sp,16
    800070f0:	00008067          	ret

00000000800070f4 <kerneltrap>:
    800070f4:	fe010113          	addi	sp,sp,-32
    800070f8:	00813823          	sd	s0,16(sp)
    800070fc:	00113c23          	sd	ra,24(sp)
    80007100:	00913423          	sd	s1,8(sp)
    80007104:	02010413          	addi	s0,sp,32
    80007108:	142025f3          	csrr	a1,scause
    8000710c:	100027f3          	csrr	a5,sstatus
    80007110:	0027f793          	andi	a5,a5,2
    80007114:	10079c63          	bnez	a5,8000722c <kerneltrap+0x138>
    80007118:	142027f3          	csrr	a5,scause
    8000711c:	0207ce63          	bltz	a5,80007158 <kerneltrap+0x64>
    80007120:	00002517          	auipc	a0,0x2
    80007124:	59050513          	addi	a0,a0,1424 # 800096b0 <CONSOLE_STATUS+0x6a0>
    80007128:	00001097          	auipc	ra,0x1
    8000712c:	880080e7          	jalr	-1920(ra) # 800079a8 <__printf>
    80007130:	141025f3          	csrr	a1,sepc
    80007134:	14302673          	csrr	a2,stval
    80007138:	00002517          	auipc	a0,0x2
    8000713c:	58850513          	addi	a0,a0,1416 # 800096c0 <CONSOLE_STATUS+0x6b0>
    80007140:	00001097          	auipc	ra,0x1
    80007144:	868080e7          	jalr	-1944(ra) # 800079a8 <__printf>
    80007148:	00002517          	auipc	a0,0x2
    8000714c:	59050513          	addi	a0,a0,1424 # 800096d8 <CONSOLE_STATUS+0x6c8>
    80007150:	00000097          	auipc	ra,0x0
    80007154:	7fc080e7          	jalr	2044(ra) # 8000794c <panic>
    80007158:	0ff7f713          	andi	a4,a5,255
    8000715c:	00900693          	li	a3,9
    80007160:	04d70063          	beq	a4,a3,800071a0 <kerneltrap+0xac>
    80007164:	fff00713          	li	a4,-1
    80007168:	03f71713          	slli	a4,a4,0x3f
    8000716c:	00170713          	addi	a4,a4,1
    80007170:	fae798e3          	bne	a5,a4,80007120 <kerneltrap+0x2c>
    80007174:	00000097          	auipc	ra,0x0
    80007178:	e00080e7          	jalr	-512(ra) # 80006f74 <cpuid>
    8000717c:	06050663          	beqz	a0,800071e8 <kerneltrap+0xf4>
    80007180:	144027f3          	csrr	a5,sip
    80007184:	ffd7f793          	andi	a5,a5,-3
    80007188:	14479073          	csrw	sip,a5
    8000718c:	01813083          	ld	ra,24(sp)
    80007190:	01013403          	ld	s0,16(sp)
    80007194:	00813483          	ld	s1,8(sp)
    80007198:	02010113          	addi	sp,sp,32
    8000719c:	00008067          	ret
    800071a0:	00000097          	auipc	ra,0x0
    800071a4:	3c4080e7          	jalr	964(ra) # 80007564 <plic_claim>
    800071a8:	00a00793          	li	a5,10
    800071ac:	00050493          	mv	s1,a0
    800071b0:	06f50863          	beq	a0,a5,80007220 <kerneltrap+0x12c>
    800071b4:	fc050ce3          	beqz	a0,8000718c <kerneltrap+0x98>
    800071b8:	00050593          	mv	a1,a0
    800071bc:	00002517          	auipc	a0,0x2
    800071c0:	4d450513          	addi	a0,a0,1236 # 80009690 <CONSOLE_STATUS+0x680>
    800071c4:	00000097          	auipc	ra,0x0
    800071c8:	7e4080e7          	jalr	2020(ra) # 800079a8 <__printf>
    800071cc:	01013403          	ld	s0,16(sp)
    800071d0:	01813083          	ld	ra,24(sp)
    800071d4:	00048513          	mv	a0,s1
    800071d8:	00813483          	ld	s1,8(sp)
    800071dc:	02010113          	addi	sp,sp,32
    800071e0:	00000317          	auipc	t1,0x0
    800071e4:	3bc30067          	jr	956(t1) # 8000759c <plic_complete>
    800071e8:	00006517          	auipc	a0,0x6
    800071ec:	ce850513          	addi	a0,a0,-792 # 8000ced0 <tickslock>
    800071f0:	00001097          	auipc	ra,0x1
    800071f4:	48c080e7          	jalr	1164(ra) # 8000867c <acquire>
    800071f8:	00005717          	auipc	a4,0x5
    800071fc:	b4c70713          	addi	a4,a4,-1204 # 8000bd44 <ticks>
    80007200:	00072783          	lw	a5,0(a4)
    80007204:	00006517          	auipc	a0,0x6
    80007208:	ccc50513          	addi	a0,a0,-820 # 8000ced0 <tickslock>
    8000720c:	0017879b          	addiw	a5,a5,1
    80007210:	00f72023          	sw	a5,0(a4)
    80007214:	00001097          	auipc	ra,0x1
    80007218:	534080e7          	jalr	1332(ra) # 80008748 <release>
    8000721c:	f65ff06f          	j	80007180 <kerneltrap+0x8c>
    80007220:	00001097          	auipc	ra,0x1
    80007224:	090080e7          	jalr	144(ra) # 800082b0 <uartintr>
    80007228:	fa5ff06f          	j	800071cc <kerneltrap+0xd8>
    8000722c:	00002517          	auipc	a0,0x2
    80007230:	44450513          	addi	a0,a0,1092 # 80009670 <CONSOLE_STATUS+0x660>
    80007234:	00000097          	auipc	ra,0x0
    80007238:	718080e7          	jalr	1816(ra) # 8000794c <panic>

000000008000723c <clockintr>:
    8000723c:	fe010113          	addi	sp,sp,-32
    80007240:	00813823          	sd	s0,16(sp)
    80007244:	00913423          	sd	s1,8(sp)
    80007248:	00113c23          	sd	ra,24(sp)
    8000724c:	02010413          	addi	s0,sp,32
    80007250:	00006497          	auipc	s1,0x6
    80007254:	c8048493          	addi	s1,s1,-896 # 8000ced0 <tickslock>
    80007258:	00048513          	mv	a0,s1
    8000725c:	00001097          	auipc	ra,0x1
    80007260:	420080e7          	jalr	1056(ra) # 8000867c <acquire>
    80007264:	00005717          	auipc	a4,0x5
    80007268:	ae070713          	addi	a4,a4,-1312 # 8000bd44 <ticks>
    8000726c:	00072783          	lw	a5,0(a4)
    80007270:	01013403          	ld	s0,16(sp)
    80007274:	01813083          	ld	ra,24(sp)
    80007278:	00048513          	mv	a0,s1
    8000727c:	0017879b          	addiw	a5,a5,1
    80007280:	00813483          	ld	s1,8(sp)
    80007284:	00f72023          	sw	a5,0(a4)
    80007288:	02010113          	addi	sp,sp,32
    8000728c:	00001317          	auipc	t1,0x1
    80007290:	4bc30067          	jr	1212(t1) # 80008748 <release>

0000000080007294 <devintr>:
    80007294:	142027f3          	csrr	a5,scause
    80007298:	00000513          	li	a0,0
    8000729c:	0007c463          	bltz	a5,800072a4 <devintr+0x10>
    800072a0:	00008067          	ret
    800072a4:	fe010113          	addi	sp,sp,-32
    800072a8:	00813823          	sd	s0,16(sp)
    800072ac:	00113c23          	sd	ra,24(sp)
    800072b0:	00913423          	sd	s1,8(sp)
    800072b4:	02010413          	addi	s0,sp,32
    800072b8:	0ff7f713          	andi	a4,a5,255
    800072bc:	00900693          	li	a3,9
    800072c0:	04d70c63          	beq	a4,a3,80007318 <devintr+0x84>
    800072c4:	fff00713          	li	a4,-1
    800072c8:	03f71713          	slli	a4,a4,0x3f
    800072cc:	00170713          	addi	a4,a4,1
    800072d0:	00e78c63          	beq	a5,a4,800072e8 <devintr+0x54>
    800072d4:	01813083          	ld	ra,24(sp)
    800072d8:	01013403          	ld	s0,16(sp)
    800072dc:	00813483          	ld	s1,8(sp)
    800072e0:	02010113          	addi	sp,sp,32
    800072e4:	00008067          	ret
    800072e8:	00000097          	auipc	ra,0x0
    800072ec:	c8c080e7          	jalr	-884(ra) # 80006f74 <cpuid>
    800072f0:	06050663          	beqz	a0,8000735c <devintr+0xc8>
    800072f4:	144027f3          	csrr	a5,sip
    800072f8:	ffd7f793          	andi	a5,a5,-3
    800072fc:	14479073          	csrw	sip,a5
    80007300:	01813083          	ld	ra,24(sp)
    80007304:	01013403          	ld	s0,16(sp)
    80007308:	00813483          	ld	s1,8(sp)
    8000730c:	00200513          	li	a0,2
    80007310:	02010113          	addi	sp,sp,32
    80007314:	00008067          	ret
    80007318:	00000097          	auipc	ra,0x0
    8000731c:	24c080e7          	jalr	588(ra) # 80007564 <plic_claim>
    80007320:	00a00793          	li	a5,10
    80007324:	00050493          	mv	s1,a0
    80007328:	06f50663          	beq	a0,a5,80007394 <devintr+0x100>
    8000732c:	00100513          	li	a0,1
    80007330:	fa0482e3          	beqz	s1,800072d4 <devintr+0x40>
    80007334:	00048593          	mv	a1,s1
    80007338:	00002517          	auipc	a0,0x2
    8000733c:	35850513          	addi	a0,a0,856 # 80009690 <CONSOLE_STATUS+0x680>
    80007340:	00000097          	auipc	ra,0x0
    80007344:	668080e7          	jalr	1640(ra) # 800079a8 <__printf>
    80007348:	00048513          	mv	a0,s1
    8000734c:	00000097          	auipc	ra,0x0
    80007350:	250080e7          	jalr	592(ra) # 8000759c <plic_complete>
    80007354:	00100513          	li	a0,1
    80007358:	f7dff06f          	j	800072d4 <devintr+0x40>
    8000735c:	00006517          	auipc	a0,0x6
    80007360:	b7450513          	addi	a0,a0,-1164 # 8000ced0 <tickslock>
    80007364:	00001097          	auipc	ra,0x1
    80007368:	318080e7          	jalr	792(ra) # 8000867c <acquire>
    8000736c:	00005717          	auipc	a4,0x5
    80007370:	9d870713          	addi	a4,a4,-1576 # 8000bd44 <ticks>
    80007374:	00072783          	lw	a5,0(a4)
    80007378:	00006517          	auipc	a0,0x6
    8000737c:	b5850513          	addi	a0,a0,-1192 # 8000ced0 <tickslock>
    80007380:	0017879b          	addiw	a5,a5,1
    80007384:	00f72023          	sw	a5,0(a4)
    80007388:	00001097          	auipc	ra,0x1
    8000738c:	3c0080e7          	jalr	960(ra) # 80008748 <release>
    80007390:	f65ff06f          	j	800072f4 <devintr+0x60>
    80007394:	00001097          	auipc	ra,0x1
    80007398:	f1c080e7          	jalr	-228(ra) # 800082b0 <uartintr>
    8000739c:	fadff06f          	j	80007348 <devintr+0xb4>

00000000800073a0 <kernelvec>:
    800073a0:	f0010113          	addi	sp,sp,-256
    800073a4:	00113023          	sd	ra,0(sp)
    800073a8:	00213423          	sd	sp,8(sp)
    800073ac:	00313823          	sd	gp,16(sp)
    800073b0:	00413c23          	sd	tp,24(sp)
    800073b4:	02513023          	sd	t0,32(sp)
    800073b8:	02613423          	sd	t1,40(sp)
    800073bc:	02713823          	sd	t2,48(sp)
    800073c0:	02813c23          	sd	s0,56(sp)
    800073c4:	04913023          	sd	s1,64(sp)
    800073c8:	04a13423          	sd	a0,72(sp)
    800073cc:	04b13823          	sd	a1,80(sp)
    800073d0:	04c13c23          	sd	a2,88(sp)
    800073d4:	06d13023          	sd	a3,96(sp)
    800073d8:	06e13423          	sd	a4,104(sp)
    800073dc:	06f13823          	sd	a5,112(sp)
    800073e0:	07013c23          	sd	a6,120(sp)
    800073e4:	09113023          	sd	a7,128(sp)
    800073e8:	09213423          	sd	s2,136(sp)
    800073ec:	09313823          	sd	s3,144(sp)
    800073f0:	09413c23          	sd	s4,152(sp)
    800073f4:	0b513023          	sd	s5,160(sp)
    800073f8:	0b613423          	sd	s6,168(sp)
    800073fc:	0b713823          	sd	s7,176(sp)
    80007400:	0b813c23          	sd	s8,184(sp)
    80007404:	0d913023          	sd	s9,192(sp)
    80007408:	0da13423          	sd	s10,200(sp)
    8000740c:	0db13823          	sd	s11,208(sp)
    80007410:	0dc13c23          	sd	t3,216(sp)
    80007414:	0fd13023          	sd	t4,224(sp)
    80007418:	0fe13423          	sd	t5,232(sp)
    8000741c:	0ff13823          	sd	t6,240(sp)
    80007420:	cd5ff0ef          	jal	ra,800070f4 <kerneltrap>
    80007424:	00013083          	ld	ra,0(sp)
    80007428:	00813103          	ld	sp,8(sp)
    8000742c:	01013183          	ld	gp,16(sp)
    80007430:	02013283          	ld	t0,32(sp)
    80007434:	02813303          	ld	t1,40(sp)
    80007438:	03013383          	ld	t2,48(sp)
    8000743c:	03813403          	ld	s0,56(sp)
    80007440:	04013483          	ld	s1,64(sp)
    80007444:	04813503          	ld	a0,72(sp)
    80007448:	05013583          	ld	a1,80(sp)
    8000744c:	05813603          	ld	a2,88(sp)
    80007450:	06013683          	ld	a3,96(sp)
    80007454:	06813703          	ld	a4,104(sp)
    80007458:	07013783          	ld	a5,112(sp)
    8000745c:	07813803          	ld	a6,120(sp)
    80007460:	08013883          	ld	a7,128(sp)
    80007464:	08813903          	ld	s2,136(sp)
    80007468:	09013983          	ld	s3,144(sp)
    8000746c:	09813a03          	ld	s4,152(sp)
    80007470:	0a013a83          	ld	s5,160(sp)
    80007474:	0a813b03          	ld	s6,168(sp)
    80007478:	0b013b83          	ld	s7,176(sp)
    8000747c:	0b813c03          	ld	s8,184(sp)
    80007480:	0c013c83          	ld	s9,192(sp)
    80007484:	0c813d03          	ld	s10,200(sp)
    80007488:	0d013d83          	ld	s11,208(sp)
    8000748c:	0d813e03          	ld	t3,216(sp)
    80007490:	0e013e83          	ld	t4,224(sp)
    80007494:	0e813f03          	ld	t5,232(sp)
    80007498:	0f013f83          	ld	t6,240(sp)
    8000749c:	10010113          	addi	sp,sp,256
    800074a0:	10200073          	sret
    800074a4:	00000013          	nop
    800074a8:	00000013          	nop
    800074ac:	00000013          	nop

00000000800074b0 <timervec>:
    800074b0:	34051573          	csrrw	a0,mscratch,a0
    800074b4:	00b53023          	sd	a1,0(a0)
    800074b8:	00c53423          	sd	a2,8(a0)
    800074bc:	00d53823          	sd	a3,16(a0)
    800074c0:	01853583          	ld	a1,24(a0)
    800074c4:	02053603          	ld	a2,32(a0)
    800074c8:	0005b683          	ld	a3,0(a1)
    800074cc:	00c686b3          	add	a3,a3,a2
    800074d0:	00d5b023          	sd	a3,0(a1)
    800074d4:	00200593          	li	a1,2
    800074d8:	14459073          	csrw	sip,a1
    800074dc:	01053683          	ld	a3,16(a0)
    800074e0:	00853603          	ld	a2,8(a0)
    800074e4:	00053583          	ld	a1,0(a0)
    800074e8:	34051573          	csrrw	a0,mscratch,a0
    800074ec:	30200073          	mret

00000000800074f0 <plicinit>:
    800074f0:	ff010113          	addi	sp,sp,-16
    800074f4:	00813423          	sd	s0,8(sp)
    800074f8:	01010413          	addi	s0,sp,16
    800074fc:	00813403          	ld	s0,8(sp)
    80007500:	0c0007b7          	lui	a5,0xc000
    80007504:	00100713          	li	a4,1
    80007508:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000750c:	00e7a223          	sw	a4,4(a5)
    80007510:	01010113          	addi	sp,sp,16
    80007514:	00008067          	ret

0000000080007518 <plicinithart>:
    80007518:	ff010113          	addi	sp,sp,-16
    8000751c:	00813023          	sd	s0,0(sp)
    80007520:	00113423          	sd	ra,8(sp)
    80007524:	01010413          	addi	s0,sp,16
    80007528:	00000097          	auipc	ra,0x0
    8000752c:	a4c080e7          	jalr	-1460(ra) # 80006f74 <cpuid>
    80007530:	0085171b          	slliw	a4,a0,0x8
    80007534:	0c0027b7          	lui	a5,0xc002
    80007538:	00e787b3          	add	a5,a5,a4
    8000753c:	40200713          	li	a4,1026
    80007540:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80007544:	00813083          	ld	ra,8(sp)
    80007548:	00013403          	ld	s0,0(sp)
    8000754c:	00d5151b          	slliw	a0,a0,0xd
    80007550:	0c2017b7          	lui	a5,0xc201
    80007554:	00a78533          	add	a0,a5,a0
    80007558:	00052023          	sw	zero,0(a0)
    8000755c:	01010113          	addi	sp,sp,16
    80007560:	00008067          	ret

0000000080007564 <plic_claim>:
    80007564:	ff010113          	addi	sp,sp,-16
    80007568:	00813023          	sd	s0,0(sp)
    8000756c:	00113423          	sd	ra,8(sp)
    80007570:	01010413          	addi	s0,sp,16
    80007574:	00000097          	auipc	ra,0x0
    80007578:	a00080e7          	jalr	-1536(ra) # 80006f74 <cpuid>
    8000757c:	00813083          	ld	ra,8(sp)
    80007580:	00013403          	ld	s0,0(sp)
    80007584:	00d5151b          	slliw	a0,a0,0xd
    80007588:	0c2017b7          	lui	a5,0xc201
    8000758c:	00a78533          	add	a0,a5,a0
    80007590:	00452503          	lw	a0,4(a0)
    80007594:	01010113          	addi	sp,sp,16
    80007598:	00008067          	ret

000000008000759c <plic_complete>:
    8000759c:	fe010113          	addi	sp,sp,-32
    800075a0:	00813823          	sd	s0,16(sp)
    800075a4:	00913423          	sd	s1,8(sp)
    800075a8:	00113c23          	sd	ra,24(sp)
    800075ac:	02010413          	addi	s0,sp,32
    800075b0:	00050493          	mv	s1,a0
    800075b4:	00000097          	auipc	ra,0x0
    800075b8:	9c0080e7          	jalr	-1600(ra) # 80006f74 <cpuid>
    800075bc:	01813083          	ld	ra,24(sp)
    800075c0:	01013403          	ld	s0,16(sp)
    800075c4:	00d5179b          	slliw	a5,a0,0xd
    800075c8:	0c201737          	lui	a4,0xc201
    800075cc:	00f707b3          	add	a5,a4,a5
    800075d0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800075d4:	00813483          	ld	s1,8(sp)
    800075d8:	02010113          	addi	sp,sp,32
    800075dc:	00008067          	ret

00000000800075e0 <consolewrite>:
    800075e0:	fb010113          	addi	sp,sp,-80
    800075e4:	04813023          	sd	s0,64(sp)
    800075e8:	04113423          	sd	ra,72(sp)
    800075ec:	02913c23          	sd	s1,56(sp)
    800075f0:	03213823          	sd	s2,48(sp)
    800075f4:	03313423          	sd	s3,40(sp)
    800075f8:	03413023          	sd	s4,32(sp)
    800075fc:	01513c23          	sd	s5,24(sp)
    80007600:	05010413          	addi	s0,sp,80
    80007604:	06c05c63          	blez	a2,8000767c <consolewrite+0x9c>
    80007608:	00060993          	mv	s3,a2
    8000760c:	00050a13          	mv	s4,a0
    80007610:	00058493          	mv	s1,a1
    80007614:	00000913          	li	s2,0
    80007618:	fff00a93          	li	s5,-1
    8000761c:	01c0006f          	j	80007638 <consolewrite+0x58>
    80007620:	fbf44503          	lbu	a0,-65(s0)
    80007624:	0019091b          	addiw	s2,s2,1
    80007628:	00148493          	addi	s1,s1,1
    8000762c:	00001097          	auipc	ra,0x1
    80007630:	a9c080e7          	jalr	-1380(ra) # 800080c8 <uartputc>
    80007634:	03298063          	beq	s3,s2,80007654 <consolewrite+0x74>
    80007638:	00048613          	mv	a2,s1
    8000763c:	00100693          	li	a3,1
    80007640:	000a0593          	mv	a1,s4
    80007644:	fbf40513          	addi	a0,s0,-65
    80007648:	00000097          	auipc	ra,0x0
    8000764c:	9e4080e7          	jalr	-1564(ra) # 8000702c <either_copyin>
    80007650:	fd5518e3          	bne	a0,s5,80007620 <consolewrite+0x40>
    80007654:	04813083          	ld	ra,72(sp)
    80007658:	04013403          	ld	s0,64(sp)
    8000765c:	03813483          	ld	s1,56(sp)
    80007660:	02813983          	ld	s3,40(sp)
    80007664:	02013a03          	ld	s4,32(sp)
    80007668:	01813a83          	ld	s5,24(sp)
    8000766c:	00090513          	mv	a0,s2
    80007670:	03013903          	ld	s2,48(sp)
    80007674:	05010113          	addi	sp,sp,80
    80007678:	00008067          	ret
    8000767c:	00000913          	li	s2,0
    80007680:	fd5ff06f          	j	80007654 <consolewrite+0x74>

0000000080007684 <consoleread>:
    80007684:	f9010113          	addi	sp,sp,-112
    80007688:	06813023          	sd	s0,96(sp)
    8000768c:	04913c23          	sd	s1,88(sp)
    80007690:	05213823          	sd	s2,80(sp)
    80007694:	05313423          	sd	s3,72(sp)
    80007698:	05413023          	sd	s4,64(sp)
    8000769c:	03513c23          	sd	s5,56(sp)
    800076a0:	03613823          	sd	s6,48(sp)
    800076a4:	03713423          	sd	s7,40(sp)
    800076a8:	03813023          	sd	s8,32(sp)
    800076ac:	06113423          	sd	ra,104(sp)
    800076b0:	01913c23          	sd	s9,24(sp)
    800076b4:	07010413          	addi	s0,sp,112
    800076b8:	00060b93          	mv	s7,a2
    800076bc:	00050913          	mv	s2,a0
    800076c0:	00058c13          	mv	s8,a1
    800076c4:	00060b1b          	sext.w	s6,a2
    800076c8:	00006497          	auipc	s1,0x6
    800076cc:	83048493          	addi	s1,s1,-2000 # 8000cef8 <cons>
    800076d0:	00400993          	li	s3,4
    800076d4:	fff00a13          	li	s4,-1
    800076d8:	00a00a93          	li	s5,10
    800076dc:	05705e63          	blez	s7,80007738 <consoleread+0xb4>
    800076e0:	09c4a703          	lw	a4,156(s1)
    800076e4:	0984a783          	lw	a5,152(s1)
    800076e8:	0007071b          	sext.w	a4,a4
    800076ec:	08e78463          	beq	a5,a4,80007774 <consoleread+0xf0>
    800076f0:	07f7f713          	andi	a4,a5,127
    800076f4:	00e48733          	add	a4,s1,a4
    800076f8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800076fc:	0017869b          	addiw	a3,a5,1
    80007700:	08d4ac23          	sw	a3,152(s1)
    80007704:	00070c9b          	sext.w	s9,a4
    80007708:	0b370663          	beq	a4,s3,800077b4 <consoleread+0x130>
    8000770c:	00100693          	li	a3,1
    80007710:	f9f40613          	addi	a2,s0,-97
    80007714:	000c0593          	mv	a1,s8
    80007718:	00090513          	mv	a0,s2
    8000771c:	f8e40fa3          	sb	a4,-97(s0)
    80007720:	00000097          	auipc	ra,0x0
    80007724:	8c0080e7          	jalr	-1856(ra) # 80006fe0 <either_copyout>
    80007728:	01450863          	beq	a0,s4,80007738 <consoleread+0xb4>
    8000772c:	001c0c13          	addi	s8,s8,1
    80007730:	fffb8b9b          	addiw	s7,s7,-1
    80007734:	fb5c94e3          	bne	s9,s5,800076dc <consoleread+0x58>
    80007738:	000b851b          	sext.w	a0,s7
    8000773c:	06813083          	ld	ra,104(sp)
    80007740:	06013403          	ld	s0,96(sp)
    80007744:	05813483          	ld	s1,88(sp)
    80007748:	05013903          	ld	s2,80(sp)
    8000774c:	04813983          	ld	s3,72(sp)
    80007750:	04013a03          	ld	s4,64(sp)
    80007754:	03813a83          	ld	s5,56(sp)
    80007758:	02813b83          	ld	s7,40(sp)
    8000775c:	02013c03          	ld	s8,32(sp)
    80007760:	01813c83          	ld	s9,24(sp)
    80007764:	40ab053b          	subw	a0,s6,a0
    80007768:	03013b03          	ld	s6,48(sp)
    8000776c:	07010113          	addi	sp,sp,112
    80007770:	00008067          	ret
    80007774:	00001097          	auipc	ra,0x1
    80007778:	1d8080e7          	jalr	472(ra) # 8000894c <push_on>
    8000777c:	0984a703          	lw	a4,152(s1)
    80007780:	09c4a783          	lw	a5,156(s1)
    80007784:	0007879b          	sext.w	a5,a5
    80007788:	fef70ce3          	beq	a4,a5,80007780 <consoleread+0xfc>
    8000778c:	00001097          	auipc	ra,0x1
    80007790:	234080e7          	jalr	564(ra) # 800089c0 <pop_on>
    80007794:	0984a783          	lw	a5,152(s1)
    80007798:	07f7f713          	andi	a4,a5,127
    8000779c:	00e48733          	add	a4,s1,a4
    800077a0:	01874703          	lbu	a4,24(a4)
    800077a4:	0017869b          	addiw	a3,a5,1
    800077a8:	08d4ac23          	sw	a3,152(s1)
    800077ac:	00070c9b          	sext.w	s9,a4
    800077b0:	f5371ee3          	bne	a4,s3,8000770c <consoleread+0x88>
    800077b4:	000b851b          	sext.w	a0,s7
    800077b8:	f96bf2e3          	bgeu	s7,s6,8000773c <consoleread+0xb8>
    800077bc:	08f4ac23          	sw	a5,152(s1)
    800077c0:	f7dff06f          	j	8000773c <consoleread+0xb8>

00000000800077c4 <consputc>:
    800077c4:	10000793          	li	a5,256
    800077c8:	00f50663          	beq	a0,a5,800077d4 <consputc+0x10>
    800077cc:	00001317          	auipc	t1,0x1
    800077d0:	9f430067          	jr	-1548(t1) # 800081c0 <uartputc_sync>
    800077d4:	ff010113          	addi	sp,sp,-16
    800077d8:	00113423          	sd	ra,8(sp)
    800077dc:	00813023          	sd	s0,0(sp)
    800077e0:	01010413          	addi	s0,sp,16
    800077e4:	00800513          	li	a0,8
    800077e8:	00001097          	auipc	ra,0x1
    800077ec:	9d8080e7          	jalr	-1576(ra) # 800081c0 <uartputc_sync>
    800077f0:	02000513          	li	a0,32
    800077f4:	00001097          	auipc	ra,0x1
    800077f8:	9cc080e7          	jalr	-1588(ra) # 800081c0 <uartputc_sync>
    800077fc:	00013403          	ld	s0,0(sp)
    80007800:	00813083          	ld	ra,8(sp)
    80007804:	00800513          	li	a0,8
    80007808:	01010113          	addi	sp,sp,16
    8000780c:	00001317          	auipc	t1,0x1
    80007810:	9b430067          	jr	-1612(t1) # 800081c0 <uartputc_sync>

0000000080007814 <consoleintr>:
    80007814:	fe010113          	addi	sp,sp,-32
    80007818:	00813823          	sd	s0,16(sp)
    8000781c:	00913423          	sd	s1,8(sp)
    80007820:	01213023          	sd	s2,0(sp)
    80007824:	00113c23          	sd	ra,24(sp)
    80007828:	02010413          	addi	s0,sp,32
    8000782c:	00005917          	auipc	s2,0x5
    80007830:	6cc90913          	addi	s2,s2,1740 # 8000cef8 <cons>
    80007834:	00050493          	mv	s1,a0
    80007838:	00090513          	mv	a0,s2
    8000783c:	00001097          	auipc	ra,0x1
    80007840:	e40080e7          	jalr	-448(ra) # 8000867c <acquire>
    80007844:	02048c63          	beqz	s1,8000787c <consoleintr+0x68>
    80007848:	0a092783          	lw	a5,160(s2)
    8000784c:	09892703          	lw	a4,152(s2)
    80007850:	07f00693          	li	a3,127
    80007854:	40e7873b          	subw	a4,a5,a4
    80007858:	02e6e263          	bltu	a3,a4,8000787c <consoleintr+0x68>
    8000785c:	00d00713          	li	a4,13
    80007860:	04e48063          	beq	s1,a4,800078a0 <consoleintr+0x8c>
    80007864:	07f7f713          	andi	a4,a5,127
    80007868:	00e90733          	add	a4,s2,a4
    8000786c:	0017879b          	addiw	a5,a5,1
    80007870:	0af92023          	sw	a5,160(s2)
    80007874:	00970c23          	sb	s1,24(a4)
    80007878:	08f92e23          	sw	a5,156(s2)
    8000787c:	01013403          	ld	s0,16(sp)
    80007880:	01813083          	ld	ra,24(sp)
    80007884:	00813483          	ld	s1,8(sp)
    80007888:	00013903          	ld	s2,0(sp)
    8000788c:	00005517          	auipc	a0,0x5
    80007890:	66c50513          	addi	a0,a0,1644 # 8000cef8 <cons>
    80007894:	02010113          	addi	sp,sp,32
    80007898:	00001317          	auipc	t1,0x1
    8000789c:	eb030067          	jr	-336(t1) # 80008748 <release>
    800078a0:	00a00493          	li	s1,10
    800078a4:	fc1ff06f          	j	80007864 <consoleintr+0x50>

00000000800078a8 <consoleinit>:
    800078a8:	fe010113          	addi	sp,sp,-32
    800078ac:	00113c23          	sd	ra,24(sp)
    800078b0:	00813823          	sd	s0,16(sp)
    800078b4:	00913423          	sd	s1,8(sp)
    800078b8:	02010413          	addi	s0,sp,32
    800078bc:	00005497          	auipc	s1,0x5
    800078c0:	63c48493          	addi	s1,s1,1596 # 8000cef8 <cons>
    800078c4:	00048513          	mv	a0,s1
    800078c8:	00002597          	auipc	a1,0x2
    800078cc:	e2058593          	addi	a1,a1,-480 # 800096e8 <CONSOLE_STATUS+0x6d8>
    800078d0:	00001097          	auipc	ra,0x1
    800078d4:	d88080e7          	jalr	-632(ra) # 80008658 <initlock>
    800078d8:	00000097          	auipc	ra,0x0
    800078dc:	7ac080e7          	jalr	1964(ra) # 80008084 <uartinit>
    800078e0:	01813083          	ld	ra,24(sp)
    800078e4:	01013403          	ld	s0,16(sp)
    800078e8:	00000797          	auipc	a5,0x0
    800078ec:	d9c78793          	addi	a5,a5,-612 # 80007684 <consoleread>
    800078f0:	0af4bc23          	sd	a5,184(s1)
    800078f4:	00000797          	auipc	a5,0x0
    800078f8:	cec78793          	addi	a5,a5,-788 # 800075e0 <consolewrite>
    800078fc:	0cf4b023          	sd	a5,192(s1)
    80007900:	00813483          	ld	s1,8(sp)
    80007904:	02010113          	addi	sp,sp,32
    80007908:	00008067          	ret

000000008000790c <console_read>:
    8000790c:	ff010113          	addi	sp,sp,-16
    80007910:	00813423          	sd	s0,8(sp)
    80007914:	01010413          	addi	s0,sp,16
    80007918:	00813403          	ld	s0,8(sp)
    8000791c:	00005317          	auipc	t1,0x5
    80007920:	69433303          	ld	t1,1684(t1) # 8000cfb0 <devsw+0x10>
    80007924:	01010113          	addi	sp,sp,16
    80007928:	00030067          	jr	t1

000000008000792c <console_write>:
    8000792c:	ff010113          	addi	sp,sp,-16
    80007930:	00813423          	sd	s0,8(sp)
    80007934:	01010413          	addi	s0,sp,16
    80007938:	00813403          	ld	s0,8(sp)
    8000793c:	00005317          	auipc	t1,0x5
    80007940:	67c33303          	ld	t1,1660(t1) # 8000cfb8 <devsw+0x18>
    80007944:	01010113          	addi	sp,sp,16
    80007948:	00030067          	jr	t1

000000008000794c <panic>:
    8000794c:	fe010113          	addi	sp,sp,-32
    80007950:	00113c23          	sd	ra,24(sp)
    80007954:	00813823          	sd	s0,16(sp)
    80007958:	00913423          	sd	s1,8(sp)
    8000795c:	02010413          	addi	s0,sp,32
    80007960:	00050493          	mv	s1,a0
    80007964:	00002517          	auipc	a0,0x2
    80007968:	d8c50513          	addi	a0,a0,-628 # 800096f0 <CONSOLE_STATUS+0x6e0>
    8000796c:	00005797          	auipc	a5,0x5
    80007970:	6e07a623          	sw	zero,1772(a5) # 8000d058 <pr+0x18>
    80007974:	00000097          	auipc	ra,0x0
    80007978:	034080e7          	jalr	52(ra) # 800079a8 <__printf>
    8000797c:	00048513          	mv	a0,s1
    80007980:	00000097          	auipc	ra,0x0
    80007984:	028080e7          	jalr	40(ra) # 800079a8 <__printf>
    80007988:	00002517          	auipc	a0,0x2
    8000798c:	af050513          	addi	a0,a0,-1296 # 80009478 <CONSOLE_STATUS+0x468>
    80007990:	00000097          	auipc	ra,0x0
    80007994:	018080e7          	jalr	24(ra) # 800079a8 <__printf>
    80007998:	00100793          	li	a5,1
    8000799c:	00004717          	auipc	a4,0x4
    800079a0:	3af72623          	sw	a5,940(a4) # 8000bd48 <panicked>
    800079a4:	0000006f          	j	800079a4 <panic+0x58>

00000000800079a8 <__printf>:
    800079a8:	f3010113          	addi	sp,sp,-208
    800079ac:	08813023          	sd	s0,128(sp)
    800079b0:	07313423          	sd	s3,104(sp)
    800079b4:	09010413          	addi	s0,sp,144
    800079b8:	05813023          	sd	s8,64(sp)
    800079bc:	08113423          	sd	ra,136(sp)
    800079c0:	06913c23          	sd	s1,120(sp)
    800079c4:	07213823          	sd	s2,112(sp)
    800079c8:	07413023          	sd	s4,96(sp)
    800079cc:	05513c23          	sd	s5,88(sp)
    800079d0:	05613823          	sd	s6,80(sp)
    800079d4:	05713423          	sd	s7,72(sp)
    800079d8:	03913c23          	sd	s9,56(sp)
    800079dc:	03a13823          	sd	s10,48(sp)
    800079e0:	03b13423          	sd	s11,40(sp)
    800079e4:	00005317          	auipc	t1,0x5
    800079e8:	65c30313          	addi	t1,t1,1628 # 8000d040 <pr>
    800079ec:	01832c03          	lw	s8,24(t1)
    800079f0:	00b43423          	sd	a1,8(s0)
    800079f4:	00c43823          	sd	a2,16(s0)
    800079f8:	00d43c23          	sd	a3,24(s0)
    800079fc:	02e43023          	sd	a4,32(s0)
    80007a00:	02f43423          	sd	a5,40(s0)
    80007a04:	03043823          	sd	a6,48(s0)
    80007a08:	03143c23          	sd	a7,56(s0)
    80007a0c:	00050993          	mv	s3,a0
    80007a10:	4a0c1663          	bnez	s8,80007ebc <__printf+0x514>
    80007a14:	60098c63          	beqz	s3,8000802c <__printf+0x684>
    80007a18:	0009c503          	lbu	a0,0(s3)
    80007a1c:	00840793          	addi	a5,s0,8
    80007a20:	f6f43c23          	sd	a5,-136(s0)
    80007a24:	00000493          	li	s1,0
    80007a28:	22050063          	beqz	a0,80007c48 <__printf+0x2a0>
    80007a2c:	00002a37          	lui	s4,0x2
    80007a30:	00018ab7          	lui	s5,0x18
    80007a34:	000f4b37          	lui	s6,0xf4
    80007a38:	00989bb7          	lui	s7,0x989
    80007a3c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007a40:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007a44:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007a48:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80007a4c:	00148c9b          	addiw	s9,s1,1
    80007a50:	02500793          	li	a5,37
    80007a54:	01998933          	add	s2,s3,s9
    80007a58:	38f51263          	bne	a0,a5,80007ddc <__printf+0x434>
    80007a5c:	00094783          	lbu	a5,0(s2)
    80007a60:	00078c9b          	sext.w	s9,a5
    80007a64:	1e078263          	beqz	a5,80007c48 <__printf+0x2a0>
    80007a68:	0024849b          	addiw	s1,s1,2
    80007a6c:	07000713          	li	a4,112
    80007a70:	00998933          	add	s2,s3,s1
    80007a74:	38e78a63          	beq	a5,a4,80007e08 <__printf+0x460>
    80007a78:	20f76863          	bltu	a4,a5,80007c88 <__printf+0x2e0>
    80007a7c:	42a78863          	beq	a5,a0,80007eac <__printf+0x504>
    80007a80:	06400713          	li	a4,100
    80007a84:	40e79663          	bne	a5,a4,80007e90 <__printf+0x4e8>
    80007a88:	f7843783          	ld	a5,-136(s0)
    80007a8c:	0007a603          	lw	a2,0(a5)
    80007a90:	00878793          	addi	a5,a5,8
    80007a94:	f6f43c23          	sd	a5,-136(s0)
    80007a98:	42064a63          	bltz	a2,80007ecc <__printf+0x524>
    80007a9c:	00a00713          	li	a4,10
    80007aa0:	02e677bb          	remuw	a5,a2,a4
    80007aa4:	00002d97          	auipc	s11,0x2
    80007aa8:	c74d8d93          	addi	s11,s11,-908 # 80009718 <digits>
    80007aac:	00900593          	li	a1,9
    80007ab0:	0006051b          	sext.w	a0,a2
    80007ab4:	00000c93          	li	s9,0
    80007ab8:	02079793          	slli	a5,a5,0x20
    80007abc:	0207d793          	srli	a5,a5,0x20
    80007ac0:	00fd87b3          	add	a5,s11,a5
    80007ac4:	0007c783          	lbu	a5,0(a5)
    80007ac8:	02e656bb          	divuw	a3,a2,a4
    80007acc:	f8f40023          	sb	a5,-128(s0)
    80007ad0:	14c5d863          	bge	a1,a2,80007c20 <__printf+0x278>
    80007ad4:	06300593          	li	a1,99
    80007ad8:	00100c93          	li	s9,1
    80007adc:	02e6f7bb          	remuw	a5,a3,a4
    80007ae0:	02079793          	slli	a5,a5,0x20
    80007ae4:	0207d793          	srli	a5,a5,0x20
    80007ae8:	00fd87b3          	add	a5,s11,a5
    80007aec:	0007c783          	lbu	a5,0(a5)
    80007af0:	02e6d73b          	divuw	a4,a3,a4
    80007af4:	f8f400a3          	sb	a5,-127(s0)
    80007af8:	12a5f463          	bgeu	a1,a0,80007c20 <__printf+0x278>
    80007afc:	00a00693          	li	a3,10
    80007b00:	00900593          	li	a1,9
    80007b04:	02d777bb          	remuw	a5,a4,a3
    80007b08:	02079793          	slli	a5,a5,0x20
    80007b0c:	0207d793          	srli	a5,a5,0x20
    80007b10:	00fd87b3          	add	a5,s11,a5
    80007b14:	0007c503          	lbu	a0,0(a5)
    80007b18:	02d757bb          	divuw	a5,a4,a3
    80007b1c:	f8a40123          	sb	a0,-126(s0)
    80007b20:	48e5f263          	bgeu	a1,a4,80007fa4 <__printf+0x5fc>
    80007b24:	06300513          	li	a0,99
    80007b28:	02d7f5bb          	remuw	a1,a5,a3
    80007b2c:	02059593          	slli	a1,a1,0x20
    80007b30:	0205d593          	srli	a1,a1,0x20
    80007b34:	00bd85b3          	add	a1,s11,a1
    80007b38:	0005c583          	lbu	a1,0(a1)
    80007b3c:	02d7d7bb          	divuw	a5,a5,a3
    80007b40:	f8b401a3          	sb	a1,-125(s0)
    80007b44:	48e57263          	bgeu	a0,a4,80007fc8 <__printf+0x620>
    80007b48:	3e700513          	li	a0,999
    80007b4c:	02d7f5bb          	remuw	a1,a5,a3
    80007b50:	02059593          	slli	a1,a1,0x20
    80007b54:	0205d593          	srli	a1,a1,0x20
    80007b58:	00bd85b3          	add	a1,s11,a1
    80007b5c:	0005c583          	lbu	a1,0(a1)
    80007b60:	02d7d7bb          	divuw	a5,a5,a3
    80007b64:	f8b40223          	sb	a1,-124(s0)
    80007b68:	46e57663          	bgeu	a0,a4,80007fd4 <__printf+0x62c>
    80007b6c:	02d7f5bb          	remuw	a1,a5,a3
    80007b70:	02059593          	slli	a1,a1,0x20
    80007b74:	0205d593          	srli	a1,a1,0x20
    80007b78:	00bd85b3          	add	a1,s11,a1
    80007b7c:	0005c583          	lbu	a1,0(a1)
    80007b80:	02d7d7bb          	divuw	a5,a5,a3
    80007b84:	f8b402a3          	sb	a1,-123(s0)
    80007b88:	46ea7863          	bgeu	s4,a4,80007ff8 <__printf+0x650>
    80007b8c:	02d7f5bb          	remuw	a1,a5,a3
    80007b90:	02059593          	slli	a1,a1,0x20
    80007b94:	0205d593          	srli	a1,a1,0x20
    80007b98:	00bd85b3          	add	a1,s11,a1
    80007b9c:	0005c583          	lbu	a1,0(a1)
    80007ba0:	02d7d7bb          	divuw	a5,a5,a3
    80007ba4:	f8b40323          	sb	a1,-122(s0)
    80007ba8:	3eeaf863          	bgeu	s5,a4,80007f98 <__printf+0x5f0>
    80007bac:	02d7f5bb          	remuw	a1,a5,a3
    80007bb0:	02059593          	slli	a1,a1,0x20
    80007bb4:	0205d593          	srli	a1,a1,0x20
    80007bb8:	00bd85b3          	add	a1,s11,a1
    80007bbc:	0005c583          	lbu	a1,0(a1)
    80007bc0:	02d7d7bb          	divuw	a5,a5,a3
    80007bc4:	f8b403a3          	sb	a1,-121(s0)
    80007bc8:	42eb7e63          	bgeu	s6,a4,80008004 <__printf+0x65c>
    80007bcc:	02d7f5bb          	remuw	a1,a5,a3
    80007bd0:	02059593          	slli	a1,a1,0x20
    80007bd4:	0205d593          	srli	a1,a1,0x20
    80007bd8:	00bd85b3          	add	a1,s11,a1
    80007bdc:	0005c583          	lbu	a1,0(a1)
    80007be0:	02d7d7bb          	divuw	a5,a5,a3
    80007be4:	f8b40423          	sb	a1,-120(s0)
    80007be8:	42ebfc63          	bgeu	s7,a4,80008020 <__printf+0x678>
    80007bec:	02079793          	slli	a5,a5,0x20
    80007bf0:	0207d793          	srli	a5,a5,0x20
    80007bf4:	00fd8db3          	add	s11,s11,a5
    80007bf8:	000dc703          	lbu	a4,0(s11)
    80007bfc:	00a00793          	li	a5,10
    80007c00:	00900c93          	li	s9,9
    80007c04:	f8e404a3          	sb	a4,-119(s0)
    80007c08:	00065c63          	bgez	a2,80007c20 <__printf+0x278>
    80007c0c:	f9040713          	addi	a4,s0,-112
    80007c10:	00f70733          	add	a4,a4,a5
    80007c14:	02d00693          	li	a3,45
    80007c18:	fed70823          	sb	a3,-16(a4)
    80007c1c:	00078c93          	mv	s9,a5
    80007c20:	f8040793          	addi	a5,s0,-128
    80007c24:	01978cb3          	add	s9,a5,s9
    80007c28:	f7f40d13          	addi	s10,s0,-129
    80007c2c:	000cc503          	lbu	a0,0(s9)
    80007c30:	fffc8c93          	addi	s9,s9,-1
    80007c34:	00000097          	auipc	ra,0x0
    80007c38:	b90080e7          	jalr	-1136(ra) # 800077c4 <consputc>
    80007c3c:	ffac98e3          	bne	s9,s10,80007c2c <__printf+0x284>
    80007c40:	00094503          	lbu	a0,0(s2)
    80007c44:	e00514e3          	bnez	a0,80007a4c <__printf+0xa4>
    80007c48:	1a0c1663          	bnez	s8,80007df4 <__printf+0x44c>
    80007c4c:	08813083          	ld	ra,136(sp)
    80007c50:	08013403          	ld	s0,128(sp)
    80007c54:	07813483          	ld	s1,120(sp)
    80007c58:	07013903          	ld	s2,112(sp)
    80007c5c:	06813983          	ld	s3,104(sp)
    80007c60:	06013a03          	ld	s4,96(sp)
    80007c64:	05813a83          	ld	s5,88(sp)
    80007c68:	05013b03          	ld	s6,80(sp)
    80007c6c:	04813b83          	ld	s7,72(sp)
    80007c70:	04013c03          	ld	s8,64(sp)
    80007c74:	03813c83          	ld	s9,56(sp)
    80007c78:	03013d03          	ld	s10,48(sp)
    80007c7c:	02813d83          	ld	s11,40(sp)
    80007c80:	0d010113          	addi	sp,sp,208
    80007c84:	00008067          	ret
    80007c88:	07300713          	li	a4,115
    80007c8c:	1ce78a63          	beq	a5,a4,80007e60 <__printf+0x4b8>
    80007c90:	07800713          	li	a4,120
    80007c94:	1ee79e63          	bne	a5,a4,80007e90 <__printf+0x4e8>
    80007c98:	f7843783          	ld	a5,-136(s0)
    80007c9c:	0007a703          	lw	a4,0(a5)
    80007ca0:	00878793          	addi	a5,a5,8
    80007ca4:	f6f43c23          	sd	a5,-136(s0)
    80007ca8:	28074263          	bltz	a4,80007f2c <__printf+0x584>
    80007cac:	00002d97          	auipc	s11,0x2
    80007cb0:	a6cd8d93          	addi	s11,s11,-1428 # 80009718 <digits>
    80007cb4:	00f77793          	andi	a5,a4,15
    80007cb8:	00fd87b3          	add	a5,s11,a5
    80007cbc:	0007c683          	lbu	a3,0(a5)
    80007cc0:	00f00613          	li	a2,15
    80007cc4:	0007079b          	sext.w	a5,a4
    80007cc8:	f8d40023          	sb	a3,-128(s0)
    80007ccc:	0047559b          	srliw	a1,a4,0x4
    80007cd0:	0047569b          	srliw	a3,a4,0x4
    80007cd4:	00000c93          	li	s9,0
    80007cd8:	0ee65063          	bge	a2,a4,80007db8 <__printf+0x410>
    80007cdc:	00f6f693          	andi	a3,a3,15
    80007ce0:	00dd86b3          	add	a3,s11,a3
    80007ce4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007ce8:	0087d79b          	srliw	a5,a5,0x8
    80007cec:	00100c93          	li	s9,1
    80007cf0:	f8d400a3          	sb	a3,-127(s0)
    80007cf4:	0cb67263          	bgeu	a2,a1,80007db8 <__printf+0x410>
    80007cf8:	00f7f693          	andi	a3,a5,15
    80007cfc:	00dd86b3          	add	a3,s11,a3
    80007d00:	0006c583          	lbu	a1,0(a3)
    80007d04:	00f00613          	li	a2,15
    80007d08:	0047d69b          	srliw	a3,a5,0x4
    80007d0c:	f8b40123          	sb	a1,-126(s0)
    80007d10:	0047d593          	srli	a1,a5,0x4
    80007d14:	28f67e63          	bgeu	a2,a5,80007fb0 <__printf+0x608>
    80007d18:	00f6f693          	andi	a3,a3,15
    80007d1c:	00dd86b3          	add	a3,s11,a3
    80007d20:	0006c503          	lbu	a0,0(a3)
    80007d24:	0087d813          	srli	a6,a5,0x8
    80007d28:	0087d69b          	srliw	a3,a5,0x8
    80007d2c:	f8a401a3          	sb	a0,-125(s0)
    80007d30:	28b67663          	bgeu	a2,a1,80007fbc <__printf+0x614>
    80007d34:	00f6f693          	andi	a3,a3,15
    80007d38:	00dd86b3          	add	a3,s11,a3
    80007d3c:	0006c583          	lbu	a1,0(a3)
    80007d40:	00c7d513          	srli	a0,a5,0xc
    80007d44:	00c7d69b          	srliw	a3,a5,0xc
    80007d48:	f8b40223          	sb	a1,-124(s0)
    80007d4c:	29067a63          	bgeu	a2,a6,80007fe0 <__printf+0x638>
    80007d50:	00f6f693          	andi	a3,a3,15
    80007d54:	00dd86b3          	add	a3,s11,a3
    80007d58:	0006c583          	lbu	a1,0(a3)
    80007d5c:	0107d813          	srli	a6,a5,0x10
    80007d60:	0107d69b          	srliw	a3,a5,0x10
    80007d64:	f8b402a3          	sb	a1,-123(s0)
    80007d68:	28a67263          	bgeu	a2,a0,80007fec <__printf+0x644>
    80007d6c:	00f6f693          	andi	a3,a3,15
    80007d70:	00dd86b3          	add	a3,s11,a3
    80007d74:	0006c683          	lbu	a3,0(a3)
    80007d78:	0147d79b          	srliw	a5,a5,0x14
    80007d7c:	f8d40323          	sb	a3,-122(s0)
    80007d80:	21067663          	bgeu	a2,a6,80007f8c <__printf+0x5e4>
    80007d84:	02079793          	slli	a5,a5,0x20
    80007d88:	0207d793          	srli	a5,a5,0x20
    80007d8c:	00fd8db3          	add	s11,s11,a5
    80007d90:	000dc683          	lbu	a3,0(s11)
    80007d94:	00800793          	li	a5,8
    80007d98:	00700c93          	li	s9,7
    80007d9c:	f8d403a3          	sb	a3,-121(s0)
    80007da0:	00075c63          	bgez	a4,80007db8 <__printf+0x410>
    80007da4:	f9040713          	addi	a4,s0,-112
    80007da8:	00f70733          	add	a4,a4,a5
    80007dac:	02d00693          	li	a3,45
    80007db0:	fed70823          	sb	a3,-16(a4)
    80007db4:	00078c93          	mv	s9,a5
    80007db8:	f8040793          	addi	a5,s0,-128
    80007dbc:	01978cb3          	add	s9,a5,s9
    80007dc0:	f7f40d13          	addi	s10,s0,-129
    80007dc4:	000cc503          	lbu	a0,0(s9)
    80007dc8:	fffc8c93          	addi	s9,s9,-1
    80007dcc:	00000097          	auipc	ra,0x0
    80007dd0:	9f8080e7          	jalr	-1544(ra) # 800077c4 <consputc>
    80007dd4:	ff9d18e3          	bne	s10,s9,80007dc4 <__printf+0x41c>
    80007dd8:	0100006f          	j	80007de8 <__printf+0x440>
    80007ddc:	00000097          	auipc	ra,0x0
    80007de0:	9e8080e7          	jalr	-1560(ra) # 800077c4 <consputc>
    80007de4:	000c8493          	mv	s1,s9
    80007de8:	00094503          	lbu	a0,0(s2)
    80007dec:	c60510e3          	bnez	a0,80007a4c <__printf+0xa4>
    80007df0:	e40c0ee3          	beqz	s8,80007c4c <__printf+0x2a4>
    80007df4:	00005517          	auipc	a0,0x5
    80007df8:	24c50513          	addi	a0,a0,588 # 8000d040 <pr>
    80007dfc:	00001097          	auipc	ra,0x1
    80007e00:	94c080e7          	jalr	-1716(ra) # 80008748 <release>
    80007e04:	e49ff06f          	j	80007c4c <__printf+0x2a4>
    80007e08:	f7843783          	ld	a5,-136(s0)
    80007e0c:	03000513          	li	a0,48
    80007e10:	01000d13          	li	s10,16
    80007e14:	00878713          	addi	a4,a5,8
    80007e18:	0007bc83          	ld	s9,0(a5)
    80007e1c:	f6e43c23          	sd	a4,-136(s0)
    80007e20:	00000097          	auipc	ra,0x0
    80007e24:	9a4080e7          	jalr	-1628(ra) # 800077c4 <consputc>
    80007e28:	07800513          	li	a0,120
    80007e2c:	00000097          	auipc	ra,0x0
    80007e30:	998080e7          	jalr	-1640(ra) # 800077c4 <consputc>
    80007e34:	00002d97          	auipc	s11,0x2
    80007e38:	8e4d8d93          	addi	s11,s11,-1820 # 80009718 <digits>
    80007e3c:	03ccd793          	srli	a5,s9,0x3c
    80007e40:	00fd87b3          	add	a5,s11,a5
    80007e44:	0007c503          	lbu	a0,0(a5)
    80007e48:	fffd0d1b          	addiw	s10,s10,-1
    80007e4c:	004c9c93          	slli	s9,s9,0x4
    80007e50:	00000097          	auipc	ra,0x0
    80007e54:	974080e7          	jalr	-1676(ra) # 800077c4 <consputc>
    80007e58:	fe0d12e3          	bnez	s10,80007e3c <__printf+0x494>
    80007e5c:	f8dff06f          	j	80007de8 <__printf+0x440>
    80007e60:	f7843783          	ld	a5,-136(s0)
    80007e64:	0007bc83          	ld	s9,0(a5)
    80007e68:	00878793          	addi	a5,a5,8
    80007e6c:	f6f43c23          	sd	a5,-136(s0)
    80007e70:	000c9a63          	bnez	s9,80007e84 <__printf+0x4dc>
    80007e74:	1080006f          	j	80007f7c <__printf+0x5d4>
    80007e78:	001c8c93          	addi	s9,s9,1
    80007e7c:	00000097          	auipc	ra,0x0
    80007e80:	948080e7          	jalr	-1720(ra) # 800077c4 <consputc>
    80007e84:	000cc503          	lbu	a0,0(s9)
    80007e88:	fe0518e3          	bnez	a0,80007e78 <__printf+0x4d0>
    80007e8c:	f5dff06f          	j	80007de8 <__printf+0x440>
    80007e90:	02500513          	li	a0,37
    80007e94:	00000097          	auipc	ra,0x0
    80007e98:	930080e7          	jalr	-1744(ra) # 800077c4 <consputc>
    80007e9c:	000c8513          	mv	a0,s9
    80007ea0:	00000097          	auipc	ra,0x0
    80007ea4:	924080e7          	jalr	-1756(ra) # 800077c4 <consputc>
    80007ea8:	f41ff06f          	j	80007de8 <__printf+0x440>
    80007eac:	02500513          	li	a0,37
    80007eb0:	00000097          	auipc	ra,0x0
    80007eb4:	914080e7          	jalr	-1772(ra) # 800077c4 <consputc>
    80007eb8:	f31ff06f          	j	80007de8 <__printf+0x440>
    80007ebc:	00030513          	mv	a0,t1
    80007ec0:	00000097          	auipc	ra,0x0
    80007ec4:	7bc080e7          	jalr	1980(ra) # 8000867c <acquire>
    80007ec8:	b4dff06f          	j	80007a14 <__printf+0x6c>
    80007ecc:	40c0053b          	negw	a0,a2
    80007ed0:	00a00713          	li	a4,10
    80007ed4:	02e576bb          	remuw	a3,a0,a4
    80007ed8:	00002d97          	auipc	s11,0x2
    80007edc:	840d8d93          	addi	s11,s11,-1984 # 80009718 <digits>
    80007ee0:	ff700593          	li	a1,-9
    80007ee4:	02069693          	slli	a3,a3,0x20
    80007ee8:	0206d693          	srli	a3,a3,0x20
    80007eec:	00dd86b3          	add	a3,s11,a3
    80007ef0:	0006c683          	lbu	a3,0(a3)
    80007ef4:	02e557bb          	divuw	a5,a0,a4
    80007ef8:	f8d40023          	sb	a3,-128(s0)
    80007efc:	10b65e63          	bge	a2,a1,80008018 <__printf+0x670>
    80007f00:	06300593          	li	a1,99
    80007f04:	02e7f6bb          	remuw	a3,a5,a4
    80007f08:	02069693          	slli	a3,a3,0x20
    80007f0c:	0206d693          	srli	a3,a3,0x20
    80007f10:	00dd86b3          	add	a3,s11,a3
    80007f14:	0006c683          	lbu	a3,0(a3)
    80007f18:	02e7d73b          	divuw	a4,a5,a4
    80007f1c:	00200793          	li	a5,2
    80007f20:	f8d400a3          	sb	a3,-127(s0)
    80007f24:	bca5ece3          	bltu	a1,a0,80007afc <__printf+0x154>
    80007f28:	ce5ff06f          	j	80007c0c <__printf+0x264>
    80007f2c:	40e007bb          	negw	a5,a4
    80007f30:	00001d97          	auipc	s11,0x1
    80007f34:	7e8d8d93          	addi	s11,s11,2024 # 80009718 <digits>
    80007f38:	00f7f693          	andi	a3,a5,15
    80007f3c:	00dd86b3          	add	a3,s11,a3
    80007f40:	0006c583          	lbu	a1,0(a3)
    80007f44:	ff100613          	li	a2,-15
    80007f48:	0047d69b          	srliw	a3,a5,0x4
    80007f4c:	f8b40023          	sb	a1,-128(s0)
    80007f50:	0047d59b          	srliw	a1,a5,0x4
    80007f54:	0ac75e63          	bge	a4,a2,80008010 <__printf+0x668>
    80007f58:	00f6f693          	andi	a3,a3,15
    80007f5c:	00dd86b3          	add	a3,s11,a3
    80007f60:	0006c603          	lbu	a2,0(a3)
    80007f64:	00f00693          	li	a3,15
    80007f68:	0087d79b          	srliw	a5,a5,0x8
    80007f6c:	f8c400a3          	sb	a2,-127(s0)
    80007f70:	d8b6e4e3          	bltu	a3,a1,80007cf8 <__printf+0x350>
    80007f74:	00200793          	li	a5,2
    80007f78:	e2dff06f          	j	80007da4 <__printf+0x3fc>
    80007f7c:	00001c97          	auipc	s9,0x1
    80007f80:	77cc8c93          	addi	s9,s9,1916 # 800096f8 <CONSOLE_STATUS+0x6e8>
    80007f84:	02800513          	li	a0,40
    80007f88:	ef1ff06f          	j	80007e78 <__printf+0x4d0>
    80007f8c:	00700793          	li	a5,7
    80007f90:	00600c93          	li	s9,6
    80007f94:	e0dff06f          	j	80007da0 <__printf+0x3f8>
    80007f98:	00700793          	li	a5,7
    80007f9c:	00600c93          	li	s9,6
    80007fa0:	c69ff06f          	j	80007c08 <__printf+0x260>
    80007fa4:	00300793          	li	a5,3
    80007fa8:	00200c93          	li	s9,2
    80007fac:	c5dff06f          	j	80007c08 <__printf+0x260>
    80007fb0:	00300793          	li	a5,3
    80007fb4:	00200c93          	li	s9,2
    80007fb8:	de9ff06f          	j	80007da0 <__printf+0x3f8>
    80007fbc:	00400793          	li	a5,4
    80007fc0:	00300c93          	li	s9,3
    80007fc4:	dddff06f          	j	80007da0 <__printf+0x3f8>
    80007fc8:	00400793          	li	a5,4
    80007fcc:	00300c93          	li	s9,3
    80007fd0:	c39ff06f          	j	80007c08 <__printf+0x260>
    80007fd4:	00500793          	li	a5,5
    80007fd8:	00400c93          	li	s9,4
    80007fdc:	c2dff06f          	j	80007c08 <__printf+0x260>
    80007fe0:	00500793          	li	a5,5
    80007fe4:	00400c93          	li	s9,4
    80007fe8:	db9ff06f          	j	80007da0 <__printf+0x3f8>
    80007fec:	00600793          	li	a5,6
    80007ff0:	00500c93          	li	s9,5
    80007ff4:	dadff06f          	j	80007da0 <__printf+0x3f8>
    80007ff8:	00600793          	li	a5,6
    80007ffc:	00500c93          	li	s9,5
    80008000:	c09ff06f          	j	80007c08 <__printf+0x260>
    80008004:	00800793          	li	a5,8
    80008008:	00700c93          	li	s9,7
    8000800c:	bfdff06f          	j	80007c08 <__printf+0x260>
    80008010:	00100793          	li	a5,1
    80008014:	d91ff06f          	j	80007da4 <__printf+0x3fc>
    80008018:	00100793          	li	a5,1
    8000801c:	bf1ff06f          	j	80007c0c <__printf+0x264>
    80008020:	00900793          	li	a5,9
    80008024:	00800c93          	li	s9,8
    80008028:	be1ff06f          	j	80007c08 <__printf+0x260>
    8000802c:	00001517          	auipc	a0,0x1
    80008030:	6d450513          	addi	a0,a0,1748 # 80009700 <CONSOLE_STATUS+0x6f0>
    80008034:	00000097          	auipc	ra,0x0
    80008038:	918080e7          	jalr	-1768(ra) # 8000794c <panic>

000000008000803c <printfinit>:
    8000803c:	fe010113          	addi	sp,sp,-32
    80008040:	00813823          	sd	s0,16(sp)
    80008044:	00913423          	sd	s1,8(sp)
    80008048:	00113c23          	sd	ra,24(sp)
    8000804c:	02010413          	addi	s0,sp,32
    80008050:	00005497          	auipc	s1,0x5
    80008054:	ff048493          	addi	s1,s1,-16 # 8000d040 <pr>
    80008058:	00048513          	mv	a0,s1
    8000805c:	00001597          	auipc	a1,0x1
    80008060:	6b458593          	addi	a1,a1,1716 # 80009710 <CONSOLE_STATUS+0x700>
    80008064:	00000097          	auipc	ra,0x0
    80008068:	5f4080e7          	jalr	1524(ra) # 80008658 <initlock>
    8000806c:	01813083          	ld	ra,24(sp)
    80008070:	01013403          	ld	s0,16(sp)
    80008074:	0004ac23          	sw	zero,24(s1)
    80008078:	00813483          	ld	s1,8(sp)
    8000807c:	02010113          	addi	sp,sp,32
    80008080:	00008067          	ret

0000000080008084 <uartinit>:
    80008084:	ff010113          	addi	sp,sp,-16
    80008088:	00813423          	sd	s0,8(sp)
    8000808c:	01010413          	addi	s0,sp,16
    80008090:	100007b7          	lui	a5,0x10000
    80008094:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80008098:	f8000713          	li	a4,-128
    8000809c:	00e781a3          	sb	a4,3(a5)
    800080a0:	00300713          	li	a4,3
    800080a4:	00e78023          	sb	a4,0(a5)
    800080a8:	000780a3          	sb	zero,1(a5)
    800080ac:	00e781a3          	sb	a4,3(a5)
    800080b0:	00700693          	li	a3,7
    800080b4:	00d78123          	sb	a3,2(a5)
    800080b8:	00e780a3          	sb	a4,1(a5)
    800080bc:	00813403          	ld	s0,8(sp)
    800080c0:	01010113          	addi	sp,sp,16
    800080c4:	00008067          	ret

00000000800080c8 <uartputc>:
    800080c8:	00004797          	auipc	a5,0x4
    800080cc:	c807a783          	lw	a5,-896(a5) # 8000bd48 <panicked>
    800080d0:	00078463          	beqz	a5,800080d8 <uartputc+0x10>
    800080d4:	0000006f          	j	800080d4 <uartputc+0xc>
    800080d8:	fd010113          	addi	sp,sp,-48
    800080dc:	02813023          	sd	s0,32(sp)
    800080e0:	00913c23          	sd	s1,24(sp)
    800080e4:	01213823          	sd	s2,16(sp)
    800080e8:	01313423          	sd	s3,8(sp)
    800080ec:	02113423          	sd	ra,40(sp)
    800080f0:	03010413          	addi	s0,sp,48
    800080f4:	00004917          	auipc	s2,0x4
    800080f8:	c5c90913          	addi	s2,s2,-932 # 8000bd50 <uart_tx_r>
    800080fc:	00093783          	ld	a5,0(s2)
    80008100:	00004497          	auipc	s1,0x4
    80008104:	c5848493          	addi	s1,s1,-936 # 8000bd58 <uart_tx_w>
    80008108:	0004b703          	ld	a4,0(s1)
    8000810c:	02078693          	addi	a3,a5,32
    80008110:	00050993          	mv	s3,a0
    80008114:	02e69c63          	bne	a3,a4,8000814c <uartputc+0x84>
    80008118:	00001097          	auipc	ra,0x1
    8000811c:	834080e7          	jalr	-1996(ra) # 8000894c <push_on>
    80008120:	00093783          	ld	a5,0(s2)
    80008124:	0004b703          	ld	a4,0(s1)
    80008128:	02078793          	addi	a5,a5,32
    8000812c:	00e79463          	bne	a5,a4,80008134 <uartputc+0x6c>
    80008130:	0000006f          	j	80008130 <uartputc+0x68>
    80008134:	00001097          	auipc	ra,0x1
    80008138:	88c080e7          	jalr	-1908(ra) # 800089c0 <pop_on>
    8000813c:	00093783          	ld	a5,0(s2)
    80008140:	0004b703          	ld	a4,0(s1)
    80008144:	02078693          	addi	a3,a5,32
    80008148:	fce688e3          	beq	a3,a4,80008118 <uartputc+0x50>
    8000814c:	01f77693          	andi	a3,a4,31
    80008150:	00005597          	auipc	a1,0x5
    80008154:	f1058593          	addi	a1,a1,-240 # 8000d060 <uart_tx_buf>
    80008158:	00d586b3          	add	a3,a1,a3
    8000815c:	00170713          	addi	a4,a4,1
    80008160:	01368023          	sb	s3,0(a3)
    80008164:	00e4b023          	sd	a4,0(s1)
    80008168:	10000637          	lui	a2,0x10000
    8000816c:	02f71063          	bne	a4,a5,8000818c <uartputc+0xc4>
    80008170:	0340006f          	j	800081a4 <uartputc+0xdc>
    80008174:	00074703          	lbu	a4,0(a4)
    80008178:	00f93023          	sd	a5,0(s2)
    8000817c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80008180:	00093783          	ld	a5,0(s2)
    80008184:	0004b703          	ld	a4,0(s1)
    80008188:	00f70e63          	beq	a4,a5,800081a4 <uartputc+0xdc>
    8000818c:	00564683          	lbu	a3,5(a2)
    80008190:	01f7f713          	andi	a4,a5,31
    80008194:	00e58733          	add	a4,a1,a4
    80008198:	0206f693          	andi	a3,a3,32
    8000819c:	00178793          	addi	a5,a5,1
    800081a0:	fc069ae3          	bnez	a3,80008174 <uartputc+0xac>
    800081a4:	02813083          	ld	ra,40(sp)
    800081a8:	02013403          	ld	s0,32(sp)
    800081ac:	01813483          	ld	s1,24(sp)
    800081b0:	01013903          	ld	s2,16(sp)
    800081b4:	00813983          	ld	s3,8(sp)
    800081b8:	03010113          	addi	sp,sp,48
    800081bc:	00008067          	ret

00000000800081c0 <uartputc_sync>:
    800081c0:	ff010113          	addi	sp,sp,-16
    800081c4:	00813423          	sd	s0,8(sp)
    800081c8:	01010413          	addi	s0,sp,16
    800081cc:	00004717          	auipc	a4,0x4
    800081d0:	b7c72703          	lw	a4,-1156(a4) # 8000bd48 <panicked>
    800081d4:	02071663          	bnez	a4,80008200 <uartputc_sync+0x40>
    800081d8:	00050793          	mv	a5,a0
    800081dc:	100006b7          	lui	a3,0x10000
    800081e0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800081e4:	02077713          	andi	a4,a4,32
    800081e8:	fe070ce3          	beqz	a4,800081e0 <uartputc_sync+0x20>
    800081ec:	0ff7f793          	andi	a5,a5,255
    800081f0:	00f68023          	sb	a5,0(a3)
    800081f4:	00813403          	ld	s0,8(sp)
    800081f8:	01010113          	addi	sp,sp,16
    800081fc:	00008067          	ret
    80008200:	0000006f          	j	80008200 <uartputc_sync+0x40>

0000000080008204 <uartstart>:
    80008204:	ff010113          	addi	sp,sp,-16
    80008208:	00813423          	sd	s0,8(sp)
    8000820c:	01010413          	addi	s0,sp,16
    80008210:	00004617          	auipc	a2,0x4
    80008214:	b4060613          	addi	a2,a2,-1216 # 8000bd50 <uart_tx_r>
    80008218:	00004517          	auipc	a0,0x4
    8000821c:	b4050513          	addi	a0,a0,-1216 # 8000bd58 <uart_tx_w>
    80008220:	00063783          	ld	a5,0(a2)
    80008224:	00053703          	ld	a4,0(a0)
    80008228:	04f70263          	beq	a4,a5,8000826c <uartstart+0x68>
    8000822c:	100005b7          	lui	a1,0x10000
    80008230:	00005817          	auipc	a6,0x5
    80008234:	e3080813          	addi	a6,a6,-464 # 8000d060 <uart_tx_buf>
    80008238:	01c0006f          	j	80008254 <uartstart+0x50>
    8000823c:	0006c703          	lbu	a4,0(a3)
    80008240:	00f63023          	sd	a5,0(a2)
    80008244:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80008248:	00063783          	ld	a5,0(a2)
    8000824c:	00053703          	ld	a4,0(a0)
    80008250:	00f70e63          	beq	a4,a5,8000826c <uartstart+0x68>
    80008254:	01f7f713          	andi	a4,a5,31
    80008258:	00e806b3          	add	a3,a6,a4
    8000825c:	0055c703          	lbu	a4,5(a1)
    80008260:	00178793          	addi	a5,a5,1
    80008264:	02077713          	andi	a4,a4,32
    80008268:	fc071ae3          	bnez	a4,8000823c <uartstart+0x38>
    8000826c:	00813403          	ld	s0,8(sp)
    80008270:	01010113          	addi	sp,sp,16
    80008274:	00008067          	ret

0000000080008278 <uartgetc>:
    80008278:	ff010113          	addi	sp,sp,-16
    8000827c:	00813423          	sd	s0,8(sp)
    80008280:	01010413          	addi	s0,sp,16
    80008284:	10000737          	lui	a4,0x10000
    80008288:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000828c:	0017f793          	andi	a5,a5,1
    80008290:	00078c63          	beqz	a5,800082a8 <uartgetc+0x30>
    80008294:	00074503          	lbu	a0,0(a4)
    80008298:	0ff57513          	andi	a0,a0,255
    8000829c:	00813403          	ld	s0,8(sp)
    800082a0:	01010113          	addi	sp,sp,16
    800082a4:	00008067          	ret
    800082a8:	fff00513          	li	a0,-1
    800082ac:	ff1ff06f          	j	8000829c <uartgetc+0x24>

00000000800082b0 <uartintr>:
    800082b0:	100007b7          	lui	a5,0x10000
    800082b4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800082b8:	0017f793          	andi	a5,a5,1
    800082bc:	0a078463          	beqz	a5,80008364 <uartintr+0xb4>
    800082c0:	fe010113          	addi	sp,sp,-32
    800082c4:	00813823          	sd	s0,16(sp)
    800082c8:	00913423          	sd	s1,8(sp)
    800082cc:	00113c23          	sd	ra,24(sp)
    800082d0:	02010413          	addi	s0,sp,32
    800082d4:	100004b7          	lui	s1,0x10000
    800082d8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800082dc:	0ff57513          	andi	a0,a0,255
    800082e0:	fffff097          	auipc	ra,0xfffff
    800082e4:	534080e7          	jalr	1332(ra) # 80007814 <consoleintr>
    800082e8:	0054c783          	lbu	a5,5(s1)
    800082ec:	0017f793          	andi	a5,a5,1
    800082f0:	fe0794e3          	bnez	a5,800082d8 <uartintr+0x28>
    800082f4:	00004617          	auipc	a2,0x4
    800082f8:	a5c60613          	addi	a2,a2,-1444 # 8000bd50 <uart_tx_r>
    800082fc:	00004517          	auipc	a0,0x4
    80008300:	a5c50513          	addi	a0,a0,-1444 # 8000bd58 <uart_tx_w>
    80008304:	00063783          	ld	a5,0(a2)
    80008308:	00053703          	ld	a4,0(a0)
    8000830c:	04f70263          	beq	a4,a5,80008350 <uartintr+0xa0>
    80008310:	100005b7          	lui	a1,0x10000
    80008314:	00005817          	auipc	a6,0x5
    80008318:	d4c80813          	addi	a6,a6,-692 # 8000d060 <uart_tx_buf>
    8000831c:	01c0006f          	j	80008338 <uartintr+0x88>
    80008320:	0006c703          	lbu	a4,0(a3)
    80008324:	00f63023          	sd	a5,0(a2)
    80008328:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000832c:	00063783          	ld	a5,0(a2)
    80008330:	00053703          	ld	a4,0(a0)
    80008334:	00f70e63          	beq	a4,a5,80008350 <uartintr+0xa0>
    80008338:	01f7f713          	andi	a4,a5,31
    8000833c:	00e806b3          	add	a3,a6,a4
    80008340:	0055c703          	lbu	a4,5(a1)
    80008344:	00178793          	addi	a5,a5,1
    80008348:	02077713          	andi	a4,a4,32
    8000834c:	fc071ae3          	bnez	a4,80008320 <uartintr+0x70>
    80008350:	01813083          	ld	ra,24(sp)
    80008354:	01013403          	ld	s0,16(sp)
    80008358:	00813483          	ld	s1,8(sp)
    8000835c:	02010113          	addi	sp,sp,32
    80008360:	00008067          	ret
    80008364:	00004617          	auipc	a2,0x4
    80008368:	9ec60613          	addi	a2,a2,-1556 # 8000bd50 <uart_tx_r>
    8000836c:	00004517          	auipc	a0,0x4
    80008370:	9ec50513          	addi	a0,a0,-1556 # 8000bd58 <uart_tx_w>
    80008374:	00063783          	ld	a5,0(a2)
    80008378:	00053703          	ld	a4,0(a0)
    8000837c:	04f70263          	beq	a4,a5,800083c0 <uartintr+0x110>
    80008380:	100005b7          	lui	a1,0x10000
    80008384:	00005817          	auipc	a6,0x5
    80008388:	cdc80813          	addi	a6,a6,-804 # 8000d060 <uart_tx_buf>
    8000838c:	01c0006f          	j	800083a8 <uartintr+0xf8>
    80008390:	0006c703          	lbu	a4,0(a3)
    80008394:	00f63023          	sd	a5,0(a2)
    80008398:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000839c:	00063783          	ld	a5,0(a2)
    800083a0:	00053703          	ld	a4,0(a0)
    800083a4:	02f70063          	beq	a4,a5,800083c4 <uartintr+0x114>
    800083a8:	01f7f713          	andi	a4,a5,31
    800083ac:	00e806b3          	add	a3,a6,a4
    800083b0:	0055c703          	lbu	a4,5(a1)
    800083b4:	00178793          	addi	a5,a5,1
    800083b8:	02077713          	andi	a4,a4,32
    800083bc:	fc071ae3          	bnez	a4,80008390 <uartintr+0xe0>
    800083c0:	00008067          	ret
    800083c4:	00008067          	ret

00000000800083c8 <kinit>:
    800083c8:	fc010113          	addi	sp,sp,-64
    800083cc:	02913423          	sd	s1,40(sp)
    800083d0:	fffff7b7          	lui	a5,0xfffff
    800083d4:	00006497          	auipc	s1,0x6
    800083d8:	cab48493          	addi	s1,s1,-853 # 8000e07f <end+0xfff>
    800083dc:	02813823          	sd	s0,48(sp)
    800083e0:	01313c23          	sd	s3,24(sp)
    800083e4:	00f4f4b3          	and	s1,s1,a5
    800083e8:	02113c23          	sd	ra,56(sp)
    800083ec:	03213023          	sd	s2,32(sp)
    800083f0:	01413823          	sd	s4,16(sp)
    800083f4:	01513423          	sd	s5,8(sp)
    800083f8:	04010413          	addi	s0,sp,64
    800083fc:	000017b7          	lui	a5,0x1
    80008400:	01100993          	li	s3,17
    80008404:	00f487b3          	add	a5,s1,a5
    80008408:	01b99993          	slli	s3,s3,0x1b
    8000840c:	06f9e063          	bltu	s3,a5,8000846c <kinit+0xa4>
    80008410:	00005a97          	auipc	s5,0x5
    80008414:	c70a8a93          	addi	s5,s5,-912 # 8000d080 <end>
    80008418:	0754ec63          	bltu	s1,s5,80008490 <kinit+0xc8>
    8000841c:	0734fa63          	bgeu	s1,s3,80008490 <kinit+0xc8>
    80008420:	00088a37          	lui	s4,0x88
    80008424:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80008428:	00004917          	auipc	s2,0x4
    8000842c:	93890913          	addi	s2,s2,-1736 # 8000bd60 <kmem>
    80008430:	00ca1a13          	slli	s4,s4,0xc
    80008434:	0140006f          	j	80008448 <kinit+0x80>
    80008438:	000017b7          	lui	a5,0x1
    8000843c:	00f484b3          	add	s1,s1,a5
    80008440:	0554e863          	bltu	s1,s5,80008490 <kinit+0xc8>
    80008444:	0534f663          	bgeu	s1,s3,80008490 <kinit+0xc8>
    80008448:	00001637          	lui	a2,0x1
    8000844c:	00100593          	li	a1,1
    80008450:	00048513          	mv	a0,s1
    80008454:	00000097          	auipc	ra,0x0
    80008458:	5e4080e7          	jalr	1508(ra) # 80008a38 <__memset>
    8000845c:	00093783          	ld	a5,0(s2)
    80008460:	00f4b023          	sd	a5,0(s1)
    80008464:	00993023          	sd	s1,0(s2)
    80008468:	fd4498e3          	bne	s1,s4,80008438 <kinit+0x70>
    8000846c:	03813083          	ld	ra,56(sp)
    80008470:	03013403          	ld	s0,48(sp)
    80008474:	02813483          	ld	s1,40(sp)
    80008478:	02013903          	ld	s2,32(sp)
    8000847c:	01813983          	ld	s3,24(sp)
    80008480:	01013a03          	ld	s4,16(sp)
    80008484:	00813a83          	ld	s5,8(sp)
    80008488:	04010113          	addi	sp,sp,64
    8000848c:	00008067          	ret
    80008490:	00001517          	auipc	a0,0x1
    80008494:	2a050513          	addi	a0,a0,672 # 80009730 <digits+0x18>
    80008498:	fffff097          	auipc	ra,0xfffff
    8000849c:	4b4080e7          	jalr	1204(ra) # 8000794c <panic>

00000000800084a0 <freerange>:
    800084a0:	fc010113          	addi	sp,sp,-64
    800084a4:	000017b7          	lui	a5,0x1
    800084a8:	02913423          	sd	s1,40(sp)
    800084ac:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800084b0:	009504b3          	add	s1,a0,s1
    800084b4:	fffff537          	lui	a0,0xfffff
    800084b8:	02813823          	sd	s0,48(sp)
    800084bc:	02113c23          	sd	ra,56(sp)
    800084c0:	03213023          	sd	s2,32(sp)
    800084c4:	01313c23          	sd	s3,24(sp)
    800084c8:	01413823          	sd	s4,16(sp)
    800084cc:	01513423          	sd	s5,8(sp)
    800084d0:	01613023          	sd	s6,0(sp)
    800084d4:	04010413          	addi	s0,sp,64
    800084d8:	00a4f4b3          	and	s1,s1,a0
    800084dc:	00f487b3          	add	a5,s1,a5
    800084e0:	06f5e463          	bltu	a1,a5,80008548 <freerange+0xa8>
    800084e4:	00005a97          	auipc	s5,0x5
    800084e8:	b9ca8a93          	addi	s5,s5,-1124 # 8000d080 <end>
    800084ec:	0954e263          	bltu	s1,s5,80008570 <freerange+0xd0>
    800084f0:	01100993          	li	s3,17
    800084f4:	01b99993          	slli	s3,s3,0x1b
    800084f8:	0734fc63          	bgeu	s1,s3,80008570 <freerange+0xd0>
    800084fc:	00058a13          	mv	s4,a1
    80008500:	00004917          	auipc	s2,0x4
    80008504:	86090913          	addi	s2,s2,-1952 # 8000bd60 <kmem>
    80008508:	00002b37          	lui	s6,0x2
    8000850c:	0140006f          	j	80008520 <freerange+0x80>
    80008510:	000017b7          	lui	a5,0x1
    80008514:	00f484b3          	add	s1,s1,a5
    80008518:	0554ec63          	bltu	s1,s5,80008570 <freerange+0xd0>
    8000851c:	0534fa63          	bgeu	s1,s3,80008570 <freerange+0xd0>
    80008520:	00001637          	lui	a2,0x1
    80008524:	00100593          	li	a1,1
    80008528:	00048513          	mv	a0,s1
    8000852c:	00000097          	auipc	ra,0x0
    80008530:	50c080e7          	jalr	1292(ra) # 80008a38 <__memset>
    80008534:	00093703          	ld	a4,0(s2)
    80008538:	016487b3          	add	a5,s1,s6
    8000853c:	00e4b023          	sd	a4,0(s1)
    80008540:	00993023          	sd	s1,0(s2)
    80008544:	fcfa76e3          	bgeu	s4,a5,80008510 <freerange+0x70>
    80008548:	03813083          	ld	ra,56(sp)
    8000854c:	03013403          	ld	s0,48(sp)
    80008550:	02813483          	ld	s1,40(sp)
    80008554:	02013903          	ld	s2,32(sp)
    80008558:	01813983          	ld	s3,24(sp)
    8000855c:	01013a03          	ld	s4,16(sp)
    80008560:	00813a83          	ld	s5,8(sp)
    80008564:	00013b03          	ld	s6,0(sp)
    80008568:	04010113          	addi	sp,sp,64
    8000856c:	00008067          	ret
    80008570:	00001517          	auipc	a0,0x1
    80008574:	1c050513          	addi	a0,a0,448 # 80009730 <digits+0x18>
    80008578:	fffff097          	auipc	ra,0xfffff
    8000857c:	3d4080e7          	jalr	980(ra) # 8000794c <panic>

0000000080008580 <kfree>:
    80008580:	fe010113          	addi	sp,sp,-32
    80008584:	00813823          	sd	s0,16(sp)
    80008588:	00113c23          	sd	ra,24(sp)
    8000858c:	00913423          	sd	s1,8(sp)
    80008590:	02010413          	addi	s0,sp,32
    80008594:	03451793          	slli	a5,a0,0x34
    80008598:	04079c63          	bnez	a5,800085f0 <kfree+0x70>
    8000859c:	00005797          	auipc	a5,0x5
    800085a0:	ae478793          	addi	a5,a5,-1308 # 8000d080 <end>
    800085a4:	00050493          	mv	s1,a0
    800085a8:	04f56463          	bltu	a0,a5,800085f0 <kfree+0x70>
    800085ac:	01100793          	li	a5,17
    800085b0:	01b79793          	slli	a5,a5,0x1b
    800085b4:	02f57e63          	bgeu	a0,a5,800085f0 <kfree+0x70>
    800085b8:	00001637          	lui	a2,0x1
    800085bc:	00100593          	li	a1,1
    800085c0:	00000097          	auipc	ra,0x0
    800085c4:	478080e7          	jalr	1144(ra) # 80008a38 <__memset>
    800085c8:	00003797          	auipc	a5,0x3
    800085cc:	79878793          	addi	a5,a5,1944 # 8000bd60 <kmem>
    800085d0:	0007b703          	ld	a4,0(a5)
    800085d4:	01813083          	ld	ra,24(sp)
    800085d8:	01013403          	ld	s0,16(sp)
    800085dc:	00e4b023          	sd	a4,0(s1)
    800085e0:	0097b023          	sd	s1,0(a5)
    800085e4:	00813483          	ld	s1,8(sp)
    800085e8:	02010113          	addi	sp,sp,32
    800085ec:	00008067          	ret
    800085f0:	00001517          	auipc	a0,0x1
    800085f4:	14050513          	addi	a0,a0,320 # 80009730 <digits+0x18>
    800085f8:	fffff097          	auipc	ra,0xfffff
    800085fc:	354080e7          	jalr	852(ra) # 8000794c <panic>

0000000080008600 <kalloc>:
    80008600:	fe010113          	addi	sp,sp,-32
    80008604:	00813823          	sd	s0,16(sp)
    80008608:	00913423          	sd	s1,8(sp)
    8000860c:	00113c23          	sd	ra,24(sp)
    80008610:	02010413          	addi	s0,sp,32
    80008614:	00003797          	auipc	a5,0x3
    80008618:	74c78793          	addi	a5,a5,1868 # 8000bd60 <kmem>
    8000861c:	0007b483          	ld	s1,0(a5)
    80008620:	02048063          	beqz	s1,80008640 <kalloc+0x40>
    80008624:	0004b703          	ld	a4,0(s1)
    80008628:	00001637          	lui	a2,0x1
    8000862c:	00500593          	li	a1,5
    80008630:	00048513          	mv	a0,s1
    80008634:	00e7b023          	sd	a4,0(a5)
    80008638:	00000097          	auipc	ra,0x0
    8000863c:	400080e7          	jalr	1024(ra) # 80008a38 <__memset>
    80008640:	01813083          	ld	ra,24(sp)
    80008644:	01013403          	ld	s0,16(sp)
    80008648:	00048513          	mv	a0,s1
    8000864c:	00813483          	ld	s1,8(sp)
    80008650:	02010113          	addi	sp,sp,32
    80008654:	00008067          	ret

0000000080008658 <initlock>:
    80008658:	ff010113          	addi	sp,sp,-16
    8000865c:	00813423          	sd	s0,8(sp)
    80008660:	01010413          	addi	s0,sp,16
    80008664:	00813403          	ld	s0,8(sp)
    80008668:	00b53423          	sd	a1,8(a0)
    8000866c:	00052023          	sw	zero,0(a0)
    80008670:	00053823          	sd	zero,16(a0)
    80008674:	01010113          	addi	sp,sp,16
    80008678:	00008067          	ret

000000008000867c <acquire>:
    8000867c:	fe010113          	addi	sp,sp,-32
    80008680:	00813823          	sd	s0,16(sp)
    80008684:	00913423          	sd	s1,8(sp)
    80008688:	00113c23          	sd	ra,24(sp)
    8000868c:	01213023          	sd	s2,0(sp)
    80008690:	02010413          	addi	s0,sp,32
    80008694:	00050493          	mv	s1,a0
    80008698:	10002973          	csrr	s2,sstatus
    8000869c:	100027f3          	csrr	a5,sstatus
    800086a0:	ffd7f793          	andi	a5,a5,-3
    800086a4:	10079073          	csrw	sstatus,a5
    800086a8:	fffff097          	auipc	ra,0xfffff
    800086ac:	8ec080e7          	jalr	-1812(ra) # 80006f94 <mycpu>
    800086b0:	07852783          	lw	a5,120(a0)
    800086b4:	06078e63          	beqz	a5,80008730 <acquire+0xb4>
    800086b8:	fffff097          	auipc	ra,0xfffff
    800086bc:	8dc080e7          	jalr	-1828(ra) # 80006f94 <mycpu>
    800086c0:	07852783          	lw	a5,120(a0)
    800086c4:	0004a703          	lw	a4,0(s1)
    800086c8:	0017879b          	addiw	a5,a5,1
    800086cc:	06f52c23          	sw	a5,120(a0)
    800086d0:	04071063          	bnez	a4,80008710 <acquire+0x94>
    800086d4:	00100713          	li	a4,1
    800086d8:	00070793          	mv	a5,a4
    800086dc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800086e0:	0007879b          	sext.w	a5,a5
    800086e4:	fe079ae3          	bnez	a5,800086d8 <acquire+0x5c>
    800086e8:	0ff0000f          	fence
    800086ec:	fffff097          	auipc	ra,0xfffff
    800086f0:	8a8080e7          	jalr	-1880(ra) # 80006f94 <mycpu>
    800086f4:	01813083          	ld	ra,24(sp)
    800086f8:	01013403          	ld	s0,16(sp)
    800086fc:	00a4b823          	sd	a0,16(s1)
    80008700:	00013903          	ld	s2,0(sp)
    80008704:	00813483          	ld	s1,8(sp)
    80008708:	02010113          	addi	sp,sp,32
    8000870c:	00008067          	ret
    80008710:	0104b903          	ld	s2,16(s1)
    80008714:	fffff097          	auipc	ra,0xfffff
    80008718:	880080e7          	jalr	-1920(ra) # 80006f94 <mycpu>
    8000871c:	faa91ce3          	bne	s2,a0,800086d4 <acquire+0x58>
    80008720:	00001517          	auipc	a0,0x1
    80008724:	01850513          	addi	a0,a0,24 # 80009738 <digits+0x20>
    80008728:	fffff097          	auipc	ra,0xfffff
    8000872c:	224080e7          	jalr	548(ra) # 8000794c <panic>
    80008730:	00195913          	srli	s2,s2,0x1
    80008734:	fffff097          	auipc	ra,0xfffff
    80008738:	860080e7          	jalr	-1952(ra) # 80006f94 <mycpu>
    8000873c:	00197913          	andi	s2,s2,1
    80008740:	07252e23          	sw	s2,124(a0)
    80008744:	f75ff06f          	j	800086b8 <acquire+0x3c>

0000000080008748 <release>:
    80008748:	fe010113          	addi	sp,sp,-32
    8000874c:	00813823          	sd	s0,16(sp)
    80008750:	00113c23          	sd	ra,24(sp)
    80008754:	00913423          	sd	s1,8(sp)
    80008758:	01213023          	sd	s2,0(sp)
    8000875c:	02010413          	addi	s0,sp,32
    80008760:	00052783          	lw	a5,0(a0)
    80008764:	00079a63          	bnez	a5,80008778 <release+0x30>
    80008768:	00001517          	auipc	a0,0x1
    8000876c:	fd850513          	addi	a0,a0,-40 # 80009740 <digits+0x28>
    80008770:	fffff097          	auipc	ra,0xfffff
    80008774:	1dc080e7          	jalr	476(ra) # 8000794c <panic>
    80008778:	01053903          	ld	s2,16(a0)
    8000877c:	00050493          	mv	s1,a0
    80008780:	fffff097          	auipc	ra,0xfffff
    80008784:	814080e7          	jalr	-2028(ra) # 80006f94 <mycpu>
    80008788:	fea910e3          	bne	s2,a0,80008768 <release+0x20>
    8000878c:	0004b823          	sd	zero,16(s1)
    80008790:	0ff0000f          	fence
    80008794:	0f50000f          	fence	iorw,ow
    80008798:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000879c:	ffffe097          	auipc	ra,0xffffe
    800087a0:	7f8080e7          	jalr	2040(ra) # 80006f94 <mycpu>
    800087a4:	100027f3          	csrr	a5,sstatus
    800087a8:	0027f793          	andi	a5,a5,2
    800087ac:	04079a63          	bnez	a5,80008800 <release+0xb8>
    800087b0:	07852783          	lw	a5,120(a0)
    800087b4:	02f05e63          	blez	a5,800087f0 <release+0xa8>
    800087b8:	fff7871b          	addiw	a4,a5,-1
    800087bc:	06e52c23          	sw	a4,120(a0)
    800087c0:	00071c63          	bnez	a4,800087d8 <release+0x90>
    800087c4:	07c52783          	lw	a5,124(a0)
    800087c8:	00078863          	beqz	a5,800087d8 <release+0x90>
    800087cc:	100027f3          	csrr	a5,sstatus
    800087d0:	0027e793          	ori	a5,a5,2
    800087d4:	10079073          	csrw	sstatus,a5
    800087d8:	01813083          	ld	ra,24(sp)
    800087dc:	01013403          	ld	s0,16(sp)
    800087e0:	00813483          	ld	s1,8(sp)
    800087e4:	00013903          	ld	s2,0(sp)
    800087e8:	02010113          	addi	sp,sp,32
    800087ec:	00008067          	ret
    800087f0:	00001517          	auipc	a0,0x1
    800087f4:	f7050513          	addi	a0,a0,-144 # 80009760 <digits+0x48>
    800087f8:	fffff097          	auipc	ra,0xfffff
    800087fc:	154080e7          	jalr	340(ra) # 8000794c <panic>
    80008800:	00001517          	auipc	a0,0x1
    80008804:	f4850513          	addi	a0,a0,-184 # 80009748 <digits+0x30>
    80008808:	fffff097          	auipc	ra,0xfffff
    8000880c:	144080e7          	jalr	324(ra) # 8000794c <panic>

0000000080008810 <holding>:
    80008810:	00052783          	lw	a5,0(a0)
    80008814:	00079663          	bnez	a5,80008820 <holding+0x10>
    80008818:	00000513          	li	a0,0
    8000881c:	00008067          	ret
    80008820:	fe010113          	addi	sp,sp,-32
    80008824:	00813823          	sd	s0,16(sp)
    80008828:	00913423          	sd	s1,8(sp)
    8000882c:	00113c23          	sd	ra,24(sp)
    80008830:	02010413          	addi	s0,sp,32
    80008834:	01053483          	ld	s1,16(a0)
    80008838:	ffffe097          	auipc	ra,0xffffe
    8000883c:	75c080e7          	jalr	1884(ra) # 80006f94 <mycpu>
    80008840:	01813083          	ld	ra,24(sp)
    80008844:	01013403          	ld	s0,16(sp)
    80008848:	40a48533          	sub	a0,s1,a0
    8000884c:	00153513          	seqz	a0,a0
    80008850:	00813483          	ld	s1,8(sp)
    80008854:	02010113          	addi	sp,sp,32
    80008858:	00008067          	ret

000000008000885c <push_off>:
    8000885c:	fe010113          	addi	sp,sp,-32
    80008860:	00813823          	sd	s0,16(sp)
    80008864:	00113c23          	sd	ra,24(sp)
    80008868:	00913423          	sd	s1,8(sp)
    8000886c:	02010413          	addi	s0,sp,32
    80008870:	100024f3          	csrr	s1,sstatus
    80008874:	100027f3          	csrr	a5,sstatus
    80008878:	ffd7f793          	andi	a5,a5,-3
    8000887c:	10079073          	csrw	sstatus,a5
    80008880:	ffffe097          	auipc	ra,0xffffe
    80008884:	714080e7          	jalr	1812(ra) # 80006f94 <mycpu>
    80008888:	07852783          	lw	a5,120(a0)
    8000888c:	02078663          	beqz	a5,800088b8 <push_off+0x5c>
    80008890:	ffffe097          	auipc	ra,0xffffe
    80008894:	704080e7          	jalr	1796(ra) # 80006f94 <mycpu>
    80008898:	07852783          	lw	a5,120(a0)
    8000889c:	01813083          	ld	ra,24(sp)
    800088a0:	01013403          	ld	s0,16(sp)
    800088a4:	0017879b          	addiw	a5,a5,1
    800088a8:	06f52c23          	sw	a5,120(a0)
    800088ac:	00813483          	ld	s1,8(sp)
    800088b0:	02010113          	addi	sp,sp,32
    800088b4:	00008067          	ret
    800088b8:	0014d493          	srli	s1,s1,0x1
    800088bc:	ffffe097          	auipc	ra,0xffffe
    800088c0:	6d8080e7          	jalr	1752(ra) # 80006f94 <mycpu>
    800088c4:	0014f493          	andi	s1,s1,1
    800088c8:	06952e23          	sw	s1,124(a0)
    800088cc:	fc5ff06f          	j	80008890 <push_off+0x34>

00000000800088d0 <pop_off>:
    800088d0:	ff010113          	addi	sp,sp,-16
    800088d4:	00813023          	sd	s0,0(sp)
    800088d8:	00113423          	sd	ra,8(sp)
    800088dc:	01010413          	addi	s0,sp,16
    800088e0:	ffffe097          	auipc	ra,0xffffe
    800088e4:	6b4080e7          	jalr	1716(ra) # 80006f94 <mycpu>
    800088e8:	100027f3          	csrr	a5,sstatus
    800088ec:	0027f793          	andi	a5,a5,2
    800088f0:	04079663          	bnez	a5,8000893c <pop_off+0x6c>
    800088f4:	07852783          	lw	a5,120(a0)
    800088f8:	02f05a63          	blez	a5,8000892c <pop_off+0x5c>
    800088fc:	fff7871b          	addiw	a4,a5,-1
    80008900:	06e52c23          	sw	a4,120(a0)
    80008904:	00071c63          	bnez	a4,8000891c <pop_off+0x4c>
    80008908:	07c52783          	lw	a5,124(a0)
    8000890c:	00078863          	beqz	a5,8000891c <pop_off+0x4c>
    80008910:	100027f3          	csrr	a5,sstatus
    80008914:	0027e793          	ori	a5,a5,2
    80008918:	10079073          	csrw	sstatus,a5
    8000891c:	00813083          	ld	ra,8(sp)
    80008920:	00013403          	ld	s0,0(sp)
    80008924:	01010113          	addi	sp,sp,16
    80008928:	00008067          	ret
    8000892c:	00001517          	auipc	a0,0x1
    80008930:	e3450513          	addi	a0,a0,-460 # 80009760 <digits+0x48>
    80008934:	fffff097          	auipc	ra,0xfffff
    80008938:	018080e7          	jalr	24(ra) # 8000794c <panic>
    8000893c:	00001517          	auipc	a0,0x1
    80008940:	e0c50513          	addi	a0,a0,-500 # 80009748 <digits+0x30>
    80008944:	fffff097          	auipc	ra,0xfffff
    80008948:	008080e7          	jalr	8(ra) # 8000794c <panic>

000000008000894c <push_on>:
    8000894c:	fe010113          	addi	sp,sp,-32
    80008950:	00813823          	sd	s0,16(sp)
    80008954:	00113c23          	sd	ra,24(sp)
    80008958:	00913423          	sd	s1,8(sp)
    8000895c:	02010413          	addi	s0,sp,32
    80008960:	100024f3          	csrr	s1,sstatus
    80008964:	100027f3          	csrr	a5,sstatus
    80008968:	0027e793          	ori	a5,a5,2
    8000896c:	10079073          	csrw	sstatus,a5
    80008970:	ffffe097          	auipc	ra,0xffffe
    80008974:	624080e7          	jalr	1572(ra) # 80006f94 <mycpu>
    80008978:	07852783          	lw	a5,120(a0)
    8000897c:	02078663          	beqz	a5,800089a8 <push_on+0x5c>
    80008980:	ffffe097          	auipc	ra,0xffffe
    80008984:	614080e7          	jalr	1556(ra) # 80006f94 <mycpu>
    80008988:	07852783          	lw	a5,120(a0)
    8000898c:	01813083          	ld	ra,24(sp)
    80008990:	01013403          	ld	s0,16(sp)
    80008994:	0017879b          	addiw	a5,a5,1
    80008998:	06f52c23          	sw	a5,120(a0)
    8000899c:	00813483          	ld	s1,8(sp)
    800089a0:	02010113          	addi	sp,sp,32
    800089a4:	00008067          	ret
    800089a8:	0014d493          	srli	s1,s1,0x1
    800089ac:	ffffe097          	auipc	ra,0xffffe
    800089b0:	5e8080e7          	jalr	1512(ra) # 80006f94 <mycpu>
    800089b4:	0014f493          	andi	s1,s1,1
    800089b8:	06952e23          	sw	s1,124(a0)
    800089bc:	fc5ff06f          	j	80008980 <push_on+0x34>

00000000800089c0 <pop_on>:
    800089c0:	ff010113          	addi	sp,sp,-16
    800089c4:	00813023          	sd	s0,0(sp)
    800089c8:	00113423          	sd	ra,8(sp)
    800089cc:	01010413          	addi	s0,sp,16
    800089d0:	ffffe097          	auipc	ra,0xffffe
    800089d4:	5c4080e7          	jalr	1476(ra) # 80006f94 <mycpu>
    800089d8:	100027f3          	csrr	a5,sstatus
    800089dc:	0027f793          	andi	a5,a5,2
    800089e0:	04078463          	beqz	a5,80008a28 <pop_on+0x68>
    800089e4:	07852783          	lw	a5,120(a0)
    800089e8:	02f05863          	blez	a5,80008a18 <pop_on+0x58>
    800089ec:	fff7879b          	addiw	a5,a5,-1
    800089f0:	06f52c23          	sw	a5,120(a0)
    800089f4:	07853783          	ld	a5,120(a0)
    800089f8:	00079863          	bnez	a5,80008a08 <pop_on+0x48>
    800089fc:	100027f3          	csrr	a5,sstatus
    80008a00:	ffd7f793          	andi	a5,a5,-3
    80008a04:	10079073          	csrw	sstatus,a5
    80008a08:	00813083          	ld	ra,8(sp)
    80008a0c:	00013403          	ld	s0,0(sp)
    80008a10:	01010113          	addi	sp,sp,16
    80008a14:	00008067          	ret
    80008a18:	00001517          	auipc	a0,0x1
    80008a1c:	d7050513          	addi	a0,a0,-656 # 80009788 <digits+0x70>
    80008a20:	fffff097          	auipc	ra,0xfffff
    80008a24:	f2c080e7          	jalr	-212(ra) # 8000794c <panic>
    80008a28:	00001517          	auipc	a0,0x1
    80008a2c:	d4050513          	addi	a0,a0,-704 # 80009768 <digits+0x50>
    80008a30:	fffff097          	auipc	ra,0xfffff
    80008a34:	f1c080e7          	jalr	-228(ra) # 8000794c <panic>

0000000080008a38 <__memset>:
    80008a38:	ff010113          	addi	sp,sp,-16
    80008a3c:	00813423          	sd	s0,8(sp)
    80008a40:	01010413          	addi	s0,sp,16
    80008a44:	1a060e63          	beqz	a2,80008c00 <__memset+0x1c8>
    80008a48:	40a007b3          	neg	a5,a0
    80008a4c:	0077f793          	andi	a5,a5,7
    80008a50:	00778693          	addi	a3,a5,7
    80008a54:	00b00813          	li	a6,11
    80008a58:	0ff5f593          	andi	a1,a1,255
    80008a5c:	fff6071b          	addiw	a4,a2,-1
    80008a60:	1b06e663          	bltu	a3,a6,80008c0c <__memset+0x1d4>
    80008a64:	1cd76463          	bltu	a4,a3,80008c2c <__memset+0x1f4>
    80008a68:	1a078e63          	beqz	a5,80008c24 <__memset+0x1ec>
    80008a6c:	00b50023          	sb	a1,0(a0)
    80008a70:	00100713          	li	a4,1
    80008a74:	1ae78463          	beq	a5,a4,80008c1c <__memset+0x1e4>
    80008a78:	00b500a3          	sb	a1,1(a0)
    80008a7c:	00200713          	li	a4,2
    80008a80:	1ae78a63          	beq	a5,a4,80008c34 <__memset+0x1fc>
    80008a84:	00b50123          	sb	a1,2(a0)
    80008a88:	00300713          	li	a4,3
    80008a8c:	18e78463          	beq	a5,a4,80008c14 <__memset+0x1dc>
    80008a90:	00b501a3          	sb	a1,3(a0)
    80008a94:	00400713          	li	a4,4
    80008a98:	1ae78263          	beq	a5,a4,80008c3c <__memset+0x204>
    80008a9c:	00b50223          	sb	a1,4(a0)
    80008aa0:	00500713          	li	a4,5
    80008aa4:	1ae78063          	beq	a5,a4,80008c44 <__memset+0x20c>
    80008aa8:	00b502a3          	sb	a1,5(a0)
    80008aac:	00700713          	li	a4,7
    80008ab0:	18e79e63          	bne	a5,a4,80008c4c <__memset+0x214>
    80008ab4:	00b50323          	sb	a1,6(a0)
    80008ab8:	00700e93          	li	t4,7
    80008abc:	00859713          	slli	a4,a1,0x8
    80008ac0:	00e5e733          	or	a4,a1,a4
    80008ac4:	01059e13          	slli	t3,a1,0x10
    80008ac8:	01c76e33          	or	t3,a4,t3
    80008acc:	01859313          	slli	t1,a1,0x18
    80008ad0:	006e6333          	or	t1,t3,t1
    80008ad4:	02059893          	slli	a7,a1,0x20
    80008ad8:	40f60e3b          	subw	t3,a2,a5
    80008adc:	011368b3          	or	a7,t1,a7
    80008ae0:	02859813          	slli	a6,a1,0x28
    80008ae4:	0108e833          	or	a6,a7,a6
    80008ae8:	03059693          	slli	a3,a1,0x30
    80008aec:	003e589b          	srliw	a7,t3,0x3
    80008af0:	00d866b3          	or	a3,a6,a3
    80008af4:	03859713          	slli	a4,a1,0x38
    80008af8:	00389813          	slli	a6,a7,0x3
    80008afc:	00f507b3          	add	a5,a0,a5
    80008b00:	00e6e733          	or	a4,a3,a4
    80008b04:	000e089b          	sext.w	a7,t3
    80008b08:	00f806b3          	add	a3,a6,a5
    80008b0c:	00e7b023          	sd	a4,0(a5)
    80008b10:	00878793          	addi	a5,a5,8
    80008b14:	fed79ce3          	bne	a5,a3,80008b0c <__memset+0xd4>
    80008b18:	ff8e7793          	andi	a5,t3,-8
    80008b1c:	0007871b          	sext.w	a4,a5
    80008b20:	01d787bb          	addw	a5,a5,t4
    80008b24:	0ce88e63          	beq	a7,a4,80008c00 <__memset+0x1c8>
    80008b28:	00f50733          	add	a4,a0,a5
    80008b2c:	00b70023          	sb	a1,0(a4)
    80008b30:	0017871b          	addiw	a4,a5,1
    80008b34:	0cc77663          	bgeu	a4,a2,80008c00 <__memset+0x1c8>
    80008b38:	00e50733          	add	a4,a0,a4
    80008b3c:	00b70023          	sb	a1,0(a4)
    80008b40:	0027871b          	addiw	a4,a5,2
    80008b44:	0ac77e63          	bgeu	a4,a2,80008c00 <__memset+0x1c8>
    80008b48:	00e50733          	add	a4,a0,a4
    80008b4c:	00b70023          	sb	a1,0(a4)
    80008b50:	0037871b          	addiw	a4,a5,3
    80008b54:	0ac77663          	bgeu	a4,a2,80008c00 <__memset+0x1c8>
    80008b58:	00e50733          	add	a4,a0,a4
    80008b5c:	00b70023          	sb	a1,0(a4)
    80008b60:	0047871b          	addiw	a4,a5,4
    80008b64:	08c77e63          	bgeu	a4,a2,80008c00 <__memset+0x1c8>
    80008b68:	00e50733          	add	a4,a0,a4
    80008b6c:	00b70023          	sb	a1,0(a4)
    80008b70:	0057871b          	addiw	a4,a5,5
    80008b74:	08c77663          	bgeu	a4,a2,80008c00 <__memset+0x1c8>
    80008b78:	00e50733          	add	a4,a0,a4
    80008b7c:	00b70023          	sb	a1,0(a4)
    80008b80:	0067871b          	addiw	a4,a5,6
    80008b84:	06c77e63          	bgeu	a4,a2,80008c00 <__memset+0x1c8>
    80008b88:	00e50733          	add	a4,a0,a4
    80008b8c:	00b70023          	sb	a1,0(a4)
    80008b90:	0077871b          	addiw	a4,a5,7
    80008b94:	06c77663          	bgeu	a4,a2,80008c00 <__memset+0x1c8>
    80008b98:	00e50733          	add	a4,a0,a4
    80008b9c:	00b70023          	sb	a1,0(a4)
    80008ba0:	0087871b          	addiw	a4,a5,8
    80008ba4:	04c77e63          	bgeu	a4,a2,80008c00 <__memset+0x1c8>
    80008ba8:	00e50733          	add	a4,a0,a4
    80008bac:	00b70023          	sb	a1,0(a4)
    80008bb0:	0097871b          	addiw	a4,a5,9
    80008bb4:	04c77663          	bgeu	a4,a2,80008c00 <__memset+0x1c8>
    80008bb8:	00e50733          	add	a4,a0,a4
    80008bbc:	00b70023          	sb	a1,0(a4)
    80008bc0:	00a7871b          	addiw	a4,a5,10
    80008bc4:	02c77e63          	bgeu	a4,a2,80008c00 <__memset+0x1c8>
    80008bc8:	00e50733          	add	a4,a0,a4
    80008bcc:	00b70023          	sb	a1,0(a4)
    80008bd0:	00b7871b          	addiw	a4,a5,11
    80008bd4:	02c77663          	bgeu	a4,a2,80008c00 <__memset+0x1c8>
    80008bd8:	00e50733          	add	a4,a0,a4
    80008bdc:	00b70023          	sb	a1,0(a4)
    80008be0:	00c7871b          	addiw	a4,a5,12
    80008be4:	00c77e63          	bgeu	a4,a2,80008c00 <__memset+0x1c8>
    80008be8:	00e50733          	add	a4,a0,a4
    80008bec:	00b70023          	sb	a1,0(a4)
    80008bf0:	00d7879b          	addiw	a5,a5,13
    80008bf4:	00c7f663          	bgeu	a5,a2,80008c00 <__memset+0x1c8>
    80008bf8:	00f507b3          	add	a5,a0,a5
    80008bfc:	00b78023          	sb	a1,0(a5)
    80008c00:	00813403          	ld	s0,8(sp)
    80008c04:	01010113          	addi	sp,sp,16
    80008c08:	00008067          	ret
    80008c0c:	00b00693          	li	a3,11
    80008c10:	e55ff06f          	j	80008a64 <__memset+0x2c>
    80008c14:	00300e93          	li	t4,3
    80008c18:	ea5ff06f          	j	80008abc <__memset+0x84>
    80008c1c:	00100e93          	li	t4,1
    80008c20:	e9dff06f          	j	80008abc <__memset+0x84>
    80008c24:	00000e93          	li	t4,0
    80008c28:	e95ff06f          	j	80008abc <__memset+0x84>
    80008c2c:	00000793          	li	a5,0
    80008c30:	ef9ff06f          	j	80008b28 <__memset+0xf0>
    80008c34:	00200e93          	li	t4,2
    80008c38:	e85ff06f          	j	80008abc <__memset+0x84>
    80008c3c:	00400e93          	li	t4,4
    80008c40:	e7dff06f          	j	80008abc <__memset+0x84>
    80008c44:	00500e93          	li	t4,5
    80008c48:	e75ff06f          	j	80008abc <__memset+0x84>
    80008c4c:	00600e93          	li	t4,6
    80008c50:	e6dff06f          	j	80008abc <__memset+0x84>

0000000080008c54 <__memmove>:
    80008c54:	ff010113          	addi	sp,sp,-16
    80008c58:	00813423          	sd	s0,8(sp)
    80008c5c:	01010413          	addi	s0,sp,16
    80008c60:	0e060863          	beqz	a2,80008d50 <__memmove+0xfc>
    80008c64:	fff6069b          	addiw	a3,a2,-1
    80008c68:	0006881b          	sext.w	a6,a3
    80008c6c:	0ea5e863          	bltu	a1,a0,80008d5c <__memmove+0x108>
    80008c70:	00758713          	addi	a4,a1,7
    80008c74:	00a5e7b3          	or	a5,a1,a0
    80008c78:	40a70733          	sub	a4,a4,a0
    80008c7c:	0077f793          	andi	a5,a5,7
    80008c80:	00f73713          	sltiu	a4,a4,15
    80008c84:	00174713          	xori	a4,a4,1
    80008c88:	0017b793          	seqz	a5,a5
    80008c8c:	00e7f7b3          	and	a5,a5,a4
    80008c90:	10078863          	beqz	a5,80008da0 <__memmove+0x14c>
    80008c94:	00900793          	li	a5,9
    80008c98:	1107f463          	bgeu	a5,a6,80008da0 <__memmove+0x14c>
    80008c9c:	0036581b          	srliw	a6,a2,0x3
    80008ca0:	fff8081b          	addiw	a6,a6,-1
    80008ca4:	02081813          	slli	a6,a6,0x20
    80008ca8:	01d85893          	srli	a7,a6,0x1d
    80008cac:	00858813          	addi	a6,a1,8
    80008cb0:	00058793          	mv	a5,a1
    80008cb4:	00050713          	mv	a4,a0
    80008cb8:	01088833          	add	a6,a7,a6
    80008cbc:	0007b883          	ld	a7,0(a5)
    80008cc0:	00878793          	addi	a5,a5,8
    80008cc4:	00870713          	addi	a4,a4,8
    80008cc8:	ff173c23          	sd	a7,-8(a4)
    80008ccc:	ff0798e3          	bne	a5,a6,80008cbc <__memmove+0x68>
    80008cd0:	ff867713          	andi	a4,a2,-8
    80008cd4:	02071793          	slli	a5,a4,0x20
    80008cd8:	0207d793          	srli	a5,a5,0x20
    80008cdc:	00f585b3          	add	a1,a1,a5
    80008ce0:	40e686bb          	subw	a3,a3,a4
    80008ce4:	00f507b3          	add	a5,a0,a5
    80008ce8:	06e60463          	beq	a2,a4,80008d50 <__memmove+0xfc>
    80008cec:	0005c703          	lbu	a4,0(a1)
    80008cf0:	00e78023          	sb	a4,0(a5)
    80008cf4:	04068e63          	beqz	a3,80008d50 <__memmove+0xfc>
    80008cf8:	0015c603          	lbu	a2,1(a1)
    80008cfc:	00100713          	li	a4,1
    80008d00:	00c780a3          	sb	a2,1(a5)
    80008d04:	04e68663          	beq	a3,a4,80008d50 <__memmove+0xfc>
    80008d08:	0025c603          	lbu	a2,2(a1)
    80008d0c:	00200713          	li	a4,2
    80008d10:	00c78123          	sb	a2,2(a5)
    80008d14:	02e68e63          	beq	a3,a4,80008d50 <__memmove+0xfc>
    80008d18:	0035c603          	lbu	a2,3(a1)
    80008d1c:	00300713          	li	a4,3
    80008d20:	00c781a3          	sb	a2,3(a5)
    80008d24:	02e68663          	beq	a3,a4,80008d50 <__memmove+0xfc>
    80008d28:	0045c603          	lbu	a2,4(a1)
    80008d2c:	00400713          	li	a4,4
    80008d30:	00c78223          	sb	a2,4(a5)
    80008d34:	00e68e63          	beq	a3,a4,80008d50 <__memmove+0xfc>
    80008d38:	0055c603          	lbu	a2,5(a1)
    80008d3c:	00500713          	li	a4,5
    80008d40:	00c782a3          	sb	a2,5(a5)
    80008d44:	00e68663          	beq	a3,a4,80008d50 <__memmove+0xfc>
    80008d48:	0065c703          	lbu	a4,6(a1)
    80008d4c:	00e78323          	sb	a4,6(a5)
    80008d50:	00813403          	ld	s0,8(sp)
    80008d54:	01010113          	addi	sp,sp,16
    80008d58:	00008067          	ret
    80008d5c:	02061713          	slli	a4,a2,0x20
    80008d60:	02075713          	srli	a4,a4,0x20
    80008d64:	00e587b3          	add	a5,a1,a4
    80008d68:	f0f574e3          	bgeu	a0,a5,80008c70 <__memmove+0x1c>
    80008d6c:	02069613          	slli	a2,a3,0x20
    80008d70:	02065613          	srli	a2,a2,0x20
    80008d74:	fff64613          	not	a2,a2
    80008d78:	00e50733          	add	a4,a0,a4
    80008d7c:	00c78633          	add	a2,a5,a2
    80008d80:	fff7c683          	lbu	a3,-1(a5)
    80008d84:	fff78793          	addi	a5,a5,-1
    80008d88:	fff70713          	addi	a4,a4,-1
    80008d8c:	00d70023          	sb	a3,0(a4)
    80008d90:	fec798e3          	bne	a5,a2,80008d80 <__memmove+0x12c>
    80008d94:	00813403          	ld	s0,8(sp)
    80008d98:	01010113          	addi	sp,sp,16
    80008d9c:	00008067          	ret
    80008da0:	02069713          	slli	a4,a3,0x20
    80008da4:	02075713          	srli	a4,a4,0x20
    80008da8:	00170713          	addi	a4,a4,1
    80008dac:	00e50733          	add	a4,a0,a4
    80008db0:	00050793          	mv	a5,a0
    80008db4:	0005c683          	lbu	a3,0(a1)
    80008db8:	00178793          	addi	a5,a5,1
    80008dbc:	00158593          	addi	a1,a1,1
    80008dc0:	fed78fa3          	sb	a3,-1(a5)
    80008dc4:	fee798e3          	bne	a5,a4,80008db4 <__memmove+0x160>
    80008dc8:	f89ff06f          	j	80008d50 <__memmove+0xfc>

0000000080008dcc <__putc>:
    80008dcc:	fe010113          	addi	sp,sp,-32
    80008dd0:	00813823          	sd	s0,16(sp)
    80008dd4:	00113c23          	sd	ra,24(sp)
    80008dd8:	02010413          	addi	s0,sp,32
    80008ddc:	00050793          	mv	a5,a0
    80008de0:	fef40593          	addi	a1,s0,-17
    80008de4:	00100613          	li	a2,1
    80008de8:	00000513          	li	a0,0
    80008dec:	fef407a3          	sb	a5,-17(s0)
    80008df0:	fffff097          	auipc	ra,0xfffff
    80008df4:	b3c080e7          	jalr	-1220(ra) # 8000792c <console_write>
    80008df8:	01813083          	ld	ra,24(sp)
    80008dfc:	01013403          	ld	s0,16(sp)
    80008e00:	02010113          	addi	sp,sp,32
    80008e04:	00008067          	ret

0000000080008e08 <__getc>:
    80008e08:	fe010113          	addi	sp,sp,-32
    80008e0c:	00813823          	sd	s0,16(sp)
    80008e10:	00113c23          	sd	ra,24(sp)
    80008e14:	02010413          	addi	s0,sp,32
    80008e18:	fe840593          	addi	a1,s0,-24
    80008e1c:	00100613          	li	a2,1
    80008e20:	00000513          	li	a0,0
    80008e24:	fffff097          	auipc	ra,0xfffff
    80008e28:	ae8080e7          	jalr	-1304(ra) # 8000790c <console_read>
    80008e2c:	fe844503          	lbu	a0,-24(s0)
    80008e30:	01813083          	ld	ra,24(sp)
    80008e34:	01013403          	ld	s0,16(sp)
    80008e38:	02010113          	addi	sp,sp,32
    80008e3c:	00008067          	ret

0000000080008e40 <console_handler>:
    80008e40:	fe010113          	addi	sp,sp,-32
    80008e44:	00813823          	sd	s0,16(sp)
    80008e48:	00113c23          	sd	ra,24(sp)
    80008e4c:	00913423          	sd	s1,8(sp)
    80008e50:	02010413          	addi	s0,sp,32
    80008e54:	14202773          	csrr	a4,scause
    80008e58:	100027f3          	csrr	a5,sstatus
    80008e5c:	0027f793          	andi	a5,a5,2
    80008e60:	06079e63          	bnez	a5,80008edc <console_handler+0x9c>
    80008e64:	00074c63          	bltz	a4,80008e7c <console_handler+0x3c>
    80008e68:	01813083          	ld	ra,24(sp)
    80008e6c:	01013403          	ld	s0,16(sp)
    80008e70:	00813483          	ld	s1,8(sp)
    80008e74:	02010113          	addi	sp,sp,32
    80008e78:	00008067          	ret
    80008e7c:	0ff77713          	andi	a4,a4,255
    80008e80:	00900793          	li	a5,9
    80008e84:	fef712e3          	bne	a4,a5,80008e68 <console_handler+0x28>
    80008e88:	ffffe097          	auipc	ra,0xffffe
    80008e8c:	6dc080e7          	jalr	1756(ra) # 80007564 <plic_claim>
    80008e90:	00a00793          	li	a5,10
    80008e94:	00050493          	mv	s1,a0
    80008e98:	02f50c63          	beq	a0,a5,80008ed0 <console_handler+0x90>
    80008e9c:	fc0506e3          	beqz	a0,80008e68 <console_handler+0x28>
    80008ea0:	00050593          	mv	a1,a0
    80008ea4:	00000517          	auipc	a0,0x0
    80008ea8:	7ec50513          	addi	a0,a0,2028 # 80009690 <CONSOLE_STATUS+0x680>
    80008eac:	fffff097          	auipc	ra,0xfffff
    80008eb0:	afc080e7          	jalr	-1284(ra) # 800079a8 <__printf>
    80008eb4:	01013403          	ld	s0,16(sp)
    80008eb8:	01813083          	ld	ra,24(sp)
    80008ebc:	00048513          	mv	a0,s1
    80008ec0:	00813483          	ld	s1,8(sp)
    80008ec4:	02010113          	addi	sp,sp,32
    80008ec8:	ffffe317          	auipc	t1,0xffffe
    80008ecc:	6d430067          	jr	1748(t1) # 8000759c <plic_complete>
    80008ed0:	fffff097          	auipc	ra,0xfffff
    80008ed4:	3e0080e7          	jalr	992(ra) # 800082b0 <uartintr>
    80008ed8:	fddff06f          	j	80008eb4 <console_handler+0x74>
    80008edc:	00001517          	auipc	a0,0x1
    80008ee0:	8b450513          	addi	a0,a0,-1868 # 80009790 <digits+0x78>
    80008ee4:	fffff097          	auipc	ra,0xfffff
    80008ee8:	a68080e7          	jalr	-1432(ra) # 8000794c <panic>
	...
