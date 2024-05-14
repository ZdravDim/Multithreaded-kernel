
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	ce013103          	ld	sp,-800(sp) # 8000bce0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	3a9060ef          	jal	ra,80006bc4 <start>

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
    80001080:	43d010ef          	jal	ra,80002cbc <_ZN5RiscV22handle_supervisor_trapEv>

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
    80001270:	4d8080e7          	jalr	1240(ra) # 80002744 <_ZN15MemoryAllocator20get_number_of_blocksEm>
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
    800016bc:	3b878793          	addi	a5,a5,952 # 8000ba70 <_ZTV3Sem+0x10>
    800016c0:	00f53023          	sd	a5,0(a0) # 1000 <_entry-0x7ffff000>
    blocked_threads.free();
    800016c4:	00850513          	addi	a0,a0,8
    800016c8:	00002097          	auipc	ra,0x2
    800016cc:	9f8080e7          	jalr	-1544(ra) # 800030c0 <_ZN10ThreadList4freeEv>
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
    80001704:	5f89b983          	ld	s3,1528(s3) # 8000bcf8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001708:	0009b483          	ld	s1,0(s3)
    old -> set_status(TCB::BLOCKED);
    8000170c:	00200593          	li	a1,2
    80001710:	00048513          	mv	a0,s1
    80001714:	00002097          	auipc	ra,0x2
    80001718:	bfc080e7          	jalr	-1028(ra) # 80003310 <_ZN3TCB10set_statusENS_6StatusE>
    blocked_threads.push_back(old);
    8000171c:	00048593          	mv	a1,s1
    80001720:	00890513          	addi	a0,s2,8
    80001724:	00002097          	auipc	ra,0x2
    80001728:	8b8080e7          	jalr	-1864(ra) # 80002fdc <_ZN10ThreadList9push_backEP3TCB>
    TCB::running = Scheduler::get();
    8000172c:	00001097          	auipc	ra,0x1
    80001730:	2e8080e7          	jalr	744(ra) # 80002a14 <_ZN9Scheduler3getEv>
    80001734:	00050593          	mv	a1,a0
    80001738:	00a9b023          	sd	a0,0(s3)
    TCB::yield(old, TCB::running);
    8000173c:	00048513          	mv	a0,s1
    80001740:	00002097          	auipc	ra,0x2
    80001744:	a60080e7          	jalr	-1440(ra) # 800031a0 <_ZN3TCB5yieldEPS_S0_>
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
    80001780:	8f0080e7          	jalr	-1808(ra) # 8000306c <_ZN10ThreadList12remove_firstEv>
    80001784:	00050493          	mv	s1,a0
    thread -> set_status(TCB::RUNNABLE);
    80001788:	00000593          	li	a1,0
    8000178c:	00002097          	auipc	ra,0x2
    80001790:	b84080e7          	jalr	-1148(ra) # 80003310 <_ZN3TCB10set_statusENS_6StatusE>
    Scheduler::put(thread);
    80001794:	00048513          	mv	a0,s1
    80001798:	00001097          	auipc	ra,0x1
    8000179c:	21c080e7          	jalr	540(ra) # 800029b4 <_ZN9Scheduler3putEP3TCB>
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
    800017d8:	7b4080e7          	jalr	1972(ra) # 80002f88 <_ZN10ThreadList9get_firstEv>
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
    80001930:	e18080e7          	jalr	-488(ra) # 80002744 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80001934:	00001097          	auipc	ra,0x1
    80001938:	a64080e7          	jalr	-1436(ra) # 80002398 <_ZN15MemoryAllocator9mem_allocEm>
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
    8000197c:	0f878793          	addi	a5,a5,248 # 8000ba70 <_ZTV3Sem+0x10>
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
    800019d0:	b38080e7          	jalr	-1224(ra) # 80002504 <_ZN15MemoryAllocator8mem_freeEPv>
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
    80001a28:	2947b783          	ld	a5,660(a5) # 8000bcb8 <_GLOBAL_OFFSET_TABLE_+0x10>
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
    80001a58:	27c7b783          	ld	a5,636(a5) # 8000bcd0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001a5c:	0007b783          	ld	a5,0(a5)
    80001a60:	00a78023          	sb	a0,0(a5)
        while (*(char *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT) {
    80001a64:	0000a797          	auipc	a5,0xa
    80001a68:	2547b783          	ld	a5,596(a5) # 8000bcb8 <_GLOBAL_OFFSET_TABLE_+0x10>
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
    80001a94:	8cc080e7          	jalr	-1844(ra) # 8000635c <_Z8userMainv>
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
    80001ad0:	1c0080e7          	jalr	448(ra) # 80008c8c <__putc>
    __putc('N');
    80001ad4:	04e00513          	li	a0,78
    80001ad8:	00007097          	auipc	ra,0x7
    80001adc:	1b4080e7          	jalr	436(ra) # 80008c8c <__putc>
    __putc(':');
    80001ae0:	03a00513          	li	a0,58
    80001ae4:	00007097          	auipc	ra,0x7
    80001ae8:	1a8080e7          	jalr	424(ra) # 80008c8c <__putc>
    __putc(' ');
    80001aec:	02000513          	li	a0,32
    80001af0:	00007097          	auipc	ra,0x7
    80001af4:	19c080e7          	jalr	412(ra) # 80008c8c <__putc>
    if (!num) __putc('0');
    80001af8:	00090863          	beqz	s2,80001b08 <_Z11printNumberm+0x60>
    uint64 num2 = 0, zero_count = 0;
    80001afc:	00000993          	li	s3,0
    80001b00:	00000493          	li	s1,0
    80001b04:	01c0006f          	j	80001b20 <_Z11printNumberm+0x78>
    if (!num) __putc('0');
    80001b08:	03000513          	li	a0,48
    80001b0c:	00007097          	auipc	ra,0x7
    80001b10:	180080e7          	jalr	384(ra) # 80008c8c <__putc>
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
    80001b5c:	134080e7          	jalr	308(ra) # 80008c8c <__putc>
        num2 /= 10;
    80001b60:	0324d4b3          	divu	s1,s1,s2
    while (num2) {
    80001b64:	fe5ff06f          	j	80001b48 <_Z11printNumberm+0xa0>
    while (zero_count--) __putc('0');
    80001b68:	fff98493          	addi	s1,s3,-1
    80001b6c:	00098c63          	beqz	s3,80001b84 <_Z11printNumberm+0xdc>
    80001b70:	03000513          	li	a0,48
    80001b74:	00007097          	auipc	ra,0x7
    80001b78:	118080e7          	jalr	280(ra) # 80008c8c <__putc>
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
    80001bd4:	0bc080e7          	jalr	188(ra) # 80008c8c <__putc>
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
    80001c00:	090080e7          	jalr	144(ra) # 80008c8c <__putc>
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
    80001c80:	05c7b783          	ld	a5,92(a5) # 8000bcd8 <_GLOBAL_OFFSET_TABLE_+0x30>
    __asm__ volatile ("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void RiscV::write_stvec(uint64 val) {
    __asm__ volatile ("csrw stvec, %0" : : "r"(val));
    80001c84:	10579073          	csrw	stvec,a5
    /// Initialization
    MemoryAllocator::initialize();
    80001c88:	00001097          	auipc	ra,0x1
    80001c8c:	adc080e7          	jalr	-1316(ra) # 80002764 <_ZN15MemoryAllocator10initializeEv>
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
    80001cb4:	0487b783          	ld	a5,72(a5) # 8000bcf8 <_GLOBAL_OFFSET_TABLE_+0x50>
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
    80001cf8:	00001097          	auipc	ra,0x1
    80001cfc:	7d0080e7          	jalr	2000(ra) # 800034c8 <_ZNK3TCB11is_finishedEv>
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
    80001d14:	0407c783          	lbu	a5,64(a5) # 8000bd50 <_ZN3Con11initializedE>
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
    80001d40:	00f70a23          	sb	a5,20(a4) # 8000bd50 <_ZN3Con11initializedE>
        input_buffer = new BoundedBuffer();
    80001d44:	21000513          	li	a0,528
    80001d48:	00001097          	auipc	ra,0x1
    80001d4c:	b3c080e7          	jalr	-1220(ra) # 80002884 <_ZN13BoundedBuffernwEm>
    80001d50:	00050493          	mv	s1,a0
    80001d54:	00001097          	auipc	ra,0x1
    80001d58:	a98080e7          	jalr	-1384(ra) # 800027ec <_ZN13BoundedBufferC1Ev>
    80001d5c:	0000a797          	auipc	a5,0xa
    80001d60:	fe97be23          	sd	s1,-4(a5) # 8000bd58 <_ZN3Con12input_bufferE>
        output_buffer = new BoundedBuffer();
    80001d64:	21000513          	li	a0,528
    80001d68:	00001097          	auipc	ra,0x1
    80001d6c:	b1c080e7          	jalr	-1252(ra) # 80002884 <_ZN13BoundedBuffernwEm>
    80001d70:	00050493          	mv	s1,a0
    80001d74:	00001097          	auipc	ra,0x1
    80001d78:	a78080e7          	jalr	-1416(ra) # 800027ec <_ZN13BoundedBufferC1Ev>
    80001d7c:	0000a797          	auipc	a5,0xa
    80001d80:	fe97b223          	sd	s1,-28(a5) # 8000bd60 <_ZN3Con13output_bufferE>
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
    80001da8:	b10080e7          	jalr	-1264(ra) # 800028b4 <_ZN13BoundedBufferdlEPv>
    80001dac:	00090513          	mv	a0,s2
    80001db0:	0000b097          	auipc	ra,0xb
    80001db4:	138080e7          	jalr	312(ra) # 8000cee8 <_Unwind_Resume>
    80001db8:	00050913          	mv	s2,a0
        output_buffer = new BoundedBuffer();
    80001dbc:	00048513          	mv	a0,s1
    80001dc0:	00001097          	auipc	ra,0x1
    80001dc4:	af4080e7          	jalr	-1292(ra) # 800028b4 <_ZN13BoundedBufferdlEPv>
    80001dc8:	00090513          	mv	a0,s2
    80001dcc:	0000b097          	auipc	ra,0xb
    80001dd0:	11c080e7          	jalr	284(ra) # 8000cee8 <_Unwind_Resume>

0000000080001dd4 <_ZN3Con11putc_outputEc>:

void Con::putc_output(char c) {
    80001dd4:	ff010113          	addi	sp,sp,-16
    80001dd8:	00113423          	sd	ra,8(sp)
    80001ddc:	00813023          	sd	s0,0(sp)
    80001de0:	01010413          	addi	s0,sp,16
    80001de4:	00050593          	mv	a1,a0
    output_buffer -> putc(c);
    80001de8:	0000a517          	auipc	a0,0xa
    80001dec:	f7853503          	ld	a0,-136(a0) # 8000bd60 <_ZN3Con13output_bufferE>
    80001df0:	00001097          	auipc	ra,0x1
    80001df4:	aec080e7          	jalr	-1300(ra) # 800028dc <_ZN13BoundedBuffer4putcEc>
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
    80001e1c:	f4853503          	ld	a0,-184(a0) # 8000bd60 <_ZN3Con13output_bufferE>
    80001e20:	00001097          	auipc	ra,0x1
    80001e24:	b28080e7          	jalr	-1240(ra) # 80002948 <_ZN13BoundedBuffer4getcEv>
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
    80001e50:	f0c53503          	ld	a0,-244(a0) # 8000bd58 <_ZN3Con12input_bufferE>
    80001e54:	00001097          	auipc	ra,0x1
    80001e58:	a88080e7          	jalr	-1400(ra) # 800028dc <_ZN13BoundedBuffer4putcEc>
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
    80001e80:	edc53503          	ld	a0,-292(a0) # 8000bd58 <_ZN3Con12input_bufferE>
    80001e84:	00001097          	auipc	ra,0x1
    80001e88:	ac4080e7          	jalr	-1340(ra) # 80002948 <_ZN13BoundedBuffer4getcEv>
    80001e8c:	00813083          	ld	ra,8(sp)
    80001e90:	00013403          	ld	s0,0(sp)
    80001e94:	01010113          	addi	sp,sp,16
    80001e98:	00008067          	ret

0000000080001e9c <_ZN6ThreadD1Ev>:
    myHandle = nullptr;
    this -> body = body;
    this -> arg = arg;
}

Thread::~Thread() {
    80001e9c:	fe010113          	addi	sp,sp,-32
    80001ea0:	00113c23          	sd	ra,24(sp)
    80001ea4:	00813823          	sd	s0,16(sp)
    80001ea8:	00913423          	sd	s1,8(sp)
    80001eac:	02010413          	addi	s0,sp,32
    80001eb0:	00050493          	mv	s1,a0
    80001eb4:	0000a797          	auipc	a5,0xa
    80001eb8:	c1478793          	addi	a5,a5,-1004 # 8000bac8 <_ZTV6Thread+0x10>
    80001ebc:	00f53023          	sd	a5,0(a0)
    if (myHandle -> is_finished()) delete myHandle;
    80001ec0:	00853503          	ld	a0,8(a0)
    80001ec4:	00001097          	auipc	ra,0x1
    80001ec8:	604080e7          	jalr	1540(ra) # 800034c8 <_ZNK3TCB11is_finishedEv>
    80001ecc:	00050a63          	beqz	a0,80001ee0 <_ZN6ThreadD1Ev+0x44>
    80001ed0:	0084b503          	ld	a0,8(s1)
    80001ed4:	00050663          	beqz	a0,80001ee0 <_ZN6ThreadD1Ev+0x44>
    80001ed8:	00001097          	auipc	ra,0x1
    80001edc:	508080e7          	jalr	1288(ra) # 800033e0 <_ZN3TCBdlEPv>
}
    80001ee0:	01813083          	ld	ra,24(sp)
    80001ee4:	01013403          	ld	s0,16(sp)
    80001ee8:	00813483          	ld	s1,8(sp)
    80001eec:	02010113          	addi	sp,sp,32
    80001ef0:	00008067          	ret

0000000080001ef4 <_ZN9SemaphoreD1Ev>:
Semaphore::Semaphore(unsigned int init) {
    myHandle = nullptr;
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    80001ef4:	0000a797          	auipc	a5,0xa
    80001ef8:	bfc78793          	addi	a5,a5,-1028 # 8000baf0 <_ZTV9Semaphore+0x10>
    80001efc:	00f53023          	sd	a5,0(a0)
    if (myHandle) sem_close(myHandle);
    80001f00:	00853503          	ld	a0,8(a0)
    80001f04:	02050663          	beqz	a0,80001f30 <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    80001f08:	ff010113          	addi	sp,sp,-16
    80001f0c:	00113423          	sd	ra,8(sp)
    80001f10:	00813023          	sd	s0,0(sp)
    80001f14:	01010413          	addi	s0,sp,16
    if (myHandle) sem_close(myHandle);
    80001f18:	fffff097          	auipc	ra,0xfffff
    80001f1c:	540080e7          	jalr	1344(ra) # 80001458 <_Z9sem_closeP3Sem>
}
    80001f20:	00813083          	ld	ra,8(sp)
    80001f24:	00013403          	ld	s0,0(sp)
    80001f28:	01010113          	addi	sp,sp,16
    80001f2c:	00008067          	ret
    80001f30:	00008067          	ret

0000000080001f34 <_Znwm>:
void* operator new(size_t size){
    80001f34:	ff010113          	addi	sp,sp,-16
    80001f38:	00113423          	sd	ra,8(sp)
    80001f3c:	00813023          	sd	s0,0(sp)
    80001f40:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001f44:	fffff097          	auipc	ra,0xfffff
    80001f48:	314080e7          	jalr	788(ra) # 80001258 <_Z9mem_allocm>
}
    80001f4c:	00813083          	ld	ra,8(sp)
    80001f50:	00013403          	ld	s0,0(sp)
    80001f54:	01010113          	addi	sp,sp,16
    80001f58:	00008067          	ret

0000000080001f5c <_ZdlPv>:
void operator delete(void* p) noexcept {
    80001f5c:	ff010113          	addi	sp,sp,-16
    80001f60:	00113423          	sd	ra,8(sp)
    80001f64:	00813023          	sd	s0,0(sp)
    80001f68:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001f6c:	fffff097          	auipc	ra,0xfffff
    80001f70:	340080e7          	jalr	832(ra) # 800012ac <_Z8mem_freePv>
}
    80001f74:	00813083          	ld	ra,8(sp)
    80001f78:	00013403          	ld	s0,0(sp)
    80001f7c:	01010113          	addi	sp,sp,16
    80001f80:	00008067          	ret

0000000080001f84 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80001f84:	fe010113          	addi	sp,sp,-32
    80001f88:	00113c23          	sd	ra,24(sp)
    80001f8c:	00813823          	sd	s0,16(sp)
    80001f90:	00913423          	sd	s1,8(sp)
    80001f94:	02010413          	addi	s0,sp,32
    80001f98:	00050493          	mv	s1,a0
}
    80001f9c:	00000097          	auipc	ra,0x0
    80001fa0:	f00080e7          	jalr	-256(ra) # 80001e9c <_ZN6ThreadD1Ev>
    80001fa4:	00048513          	mv	a0,s1
    80001fa8:	00000097          	auipc	ra,0x0
    80001fac:	fb4080e7          	jalr	-76(ra) # 80001f5c <_ZdlPv>
    80001fb0:	01813083          	ld	ra,24(sp)
    80001fb4:	01013403          	ld	s0,16(sp)
    80001fb8:	00813483          	ld	s1,8(sp)
    80001fbc:	02010113          	addi	sp,sp,32
    80001fc0:	00008067          	ret

0000000080001fc4 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001fc4:	fe010113          	addi	sp,sp,-32
    80001fc8:	00113c23          	sd	ra,24(sp)
    80001fcc:	00813823          	sd	s0,16(sp)
    80001fd0:	00913423          	sd	s1,8(sp)
    80001fd4:	02010413          	addi	s0,sp,32
    80001fd8:	00050493          	mv	s1,a0
}
    80001fdc:	00000097          	auipc	ra,0x0
    80001fe0:	f18080e7          	jalr	-232(ra) # 80001ef4 <_ZN9SemaphoreD1Ev>
    80001fe4:	00048513          	mv	a0,s1
    80001fe8:	00000097          	auipc	ra,0x0
    80001fec:	f74080e7          	jalr	-140(ra) # 80001f5c <_ZdlPv>
    80001ff0:	01813083          	ld	ra,24(sp)
    80001ff4:	01013403          	ld	s0,16(sp)
    80001ff8:	00813483          	ld	s1,8(sp)
    80001ffc:	02010113          	addi	sp,sp,32
    80002000:	00008067          	ret

0000000080002004 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    80002004:	ff010113          	addi	sp,sp,-16
    80002008:	00813423          	sd	s0,8(sp)
    8000200c:	01010413          	addi	s0,sp,16
    80002010:	0000a797          	auipc	a5,0xa
    80002014:	ab878793          	addi	a5,a5,-1352 # 8000bac8 <_ZTV6Thread+0x10>
    80002018:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    8000201c:	00053423          	sd	zero,8(a0)
    this -> body = body;
    80002020:	00b53823          	sd	a1,16(a0)
    this -> arg = arg;
    80002024:	00c53c23          	sd	a2,24(a0)
}
    80002028:	00813403          	ld	s0,8(sp)
    8000202c:	01010113          	addi	sp,sp,16
    80002030:	00008067          	ret

0000000080002034 <_ZN6Thread5startEv>:
int Thread::start() {
    80002034:	ff010113          	addi	sp,sp,-16
    80002038:	00113423          	sd	ra,8(sp)
    8000203c:	00813023          	sd	s0,0(sp)
    80002040:	01010413          	addi	s0,sp,16
    return thread_create(&myHandle, body, arg);
    80002044:	01853603          	ld	a2,24(a0)
    80002048:	01053583          	ld	a1,16(a0)
    8000204c:	00850513          	addi	a0,a0,8
    80002050:	fffff097          	auipc	ra,0xfffff
    80002054:	2a8080e7          	jalr	680(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
}
    80002058:	00813083          	ld	ra,8(sp)
    8000205c:	00013403          	ld	s0,0(sp)
    80002060:	01010113          	addi	sp,sp,16
    80002064:	00008067          	ret

0000000080002068 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80002068:	ff010113          	addi	sp,sp,-16
    8000206c:	00113423          	sd	ra,8(sp)
    80002070:	00813023          	sd	s0,0(sp)
    80002074:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002078:	fffff097          	auipc	ra,0xfffff
    8000207c:	354080e7          	jalr	852(ra) # 800013cc <_Z15thread_dispatchv>
}
    80002080:	00813083          	ld	ra,8(sp)
    80002084:	00013403          	ld	s0,0(sp)
    80002088:	01010113          	addi	sp,sp,16
    8000208c:	00008067          	ret

0000000080002090 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    80002090:	ff010113          	addi	sp,sp,-16
    80002094:	00113423          	sd	ra,8(sp)
    80002098:	00813023          	sd	s0,0(sp)
    8000209c:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    800020a0:	fffff097          	auipc	ra,0xfffff
    800020a4:	534080e7          	jalr	1332(ra) # 800015d4 <_Z10time_sleepm>
}
    800020a8:	00813083          	ld	ra,8(sp)
    800020ac:	00013403          	ld	s0,0(sp)
    800020b0:	01010113          	addi	sp,sp,16
    800020b4:	00008067          	ret

00000000800020b8 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    800020b8:	ff010113          	addi	sp,sp,-16
    800020bc:	00813423          	sd	s0,8(sp)
    800020c0:	01010413          	addi	s0,sp,16
    800020c4:	0000a797          	auipc	a5,0xa
    800020c8:	a0478793          	addi	a5,a5,-1532 # 8000bac8 <_ZTV6Thread+0x10>
    800020cc:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    800020d0:	00053423          	sd	zero,8(a0)
    body = nullptr;
    800020d4:	00053823          	sd	zero,16(a0)
    arg = nullptr;
    800020d8:	00053c23          	sd	zero,24(a0)
}
    800020dc:	00813403          	ld	s0,8(sp)
    800020e0:	01010113          	addi	sp,sp,16
    800020e4:	00008067          	ret

00000000800020e8 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    800020e8:	ff010113          	addi	sp,sp,-16
    800020ec:	00113423          	sd	ra,8(sp)
    800020f0:	00813023          	sd	s0,0(sp)
    800020f4:	01010413          	addi	s0,sp,16
    800020f8:	0000a797          	auipc	a5,0xa
    800020fc:	9f878793          	addi	a5,a5,-1544 # 8000baf0 <_ZTV9Semaphore+0x10>
    80002100:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    80002104:	00053423          	sd	zero,8(a0)
    sem_open(&myHandle, init);
    80002108:	00850513          	addi	a0,a0,8
    8000210c:	fffff097          	auipc	ra,0xfffff
    80002110:	2fc080e7          	jalr	764(ra) # 80001408 <_Z8sem_openPP3Semj>
}
    80002114:	00813083          	ld	ra,8(sp)
    80002118:	00013403          	ld	s0,0(sp)
    8000211c:	01010113          	addi	sp,sp,16
    80002120:	00008067          	ret

0000000080002124 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    if (myHandle) return sem_wait(myHandle);
    80002124:	00853503          	ld	a0,8(a0)
    80002128:	02050663          	beqz	a0,80002154 <_ZN9Semaphore4waitEv+0x30>
int Semaphore::wait() {
    8000212c:	ff010113          	addi	sp,sp,-16
    80002130:	00113423          	sd	ra,8(sp)
    80002134:	00813023          	sd	s0,0(sp)
    80002138:	01010413          	addi	s0,sp,16
    if (myHandle) return sem_wait(myHandle);
    8000213c:	fffff097          	auipc	ra,0xfffff
    80002140:	368080e7          	jalr	872(ra) # 800014a4 <_Z8sem_waitP3Sem>
    return -1;
}
    80002144:	00813083          	ld	ra,8(sp)
    80002148:	00013403          	ld	s0,0(sp)
    8000214c:	01010113          	addi	sp,sp,16
    80002150:	00008067          	ret
    return -1;
    80002154:	fff00513          	li	a0,-1
}
    80002158:	00008067          	ret

000000008000215c <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    if (myHandle) return sem_signal(myHandle);
    8000215c:	00853503          	ld	a0,8(a0)
    80002160:	02050663          	beqz	a0,8000218c <_ZN9Semaphore6signalEv+0x30>
int Semaphore::signal() {
    80002164:	ff010113          	addi	sp,sp,-16
    80002168:	00113423          	sd	ra,8(sp)
    8000216c:	00813023          	sd	s0,0(sp)
    80002170:	01010413          	addi	s0,sp,16
    if (myHandle) return sem_signal(myHandle);
    80002174:	fffff097          	auipc	ra,0xfffff
    80002178:	37c080e7          	jalr	892(ra) # 800014f0 <_Z10sem_signalP3Sem>
    return -1;
}
    8000217c:	00813083          	ld	ra,8(sp)
    80002180:	00013403          	ld	s0,0(sp)
    80002184:	01010113          	addi	sp,sp,16
    80002188:	00008067          	ret
    return -1;
    8000218c:	fff00513          	li	a0,-1
}
    80002190:	00008067          	ret

0000000080002194 <_ZN9Semaphore9timedWaitEm>:

int Semaphore::timedWait(time_t time) {
    80002194:	ff010113          	addi	sp,sp,-16
    80002198:	00113423          	sd	ra,8(sp)
    8000219c:	00813023          	sd	s0,0(sp)
    800021a0:	01010413          	addi	s0,sp,16
    return sem_timedwait(myHandle, time);
    800021a4:	00853503          	ld	a0,8(a0)
    800021a8:	fffff097          	auipc	ra,0xfffff
    800021ac:	394080e7          	jalr	916(ra) # 8000153c <_Z13sem_timedwaitP3Semm>
}
    800021b0:	00813083          	ld	ra,8(sp)
    800021b4:	00013403          	ld	s0,0(sp)
    800021b8:	01010113          	addi	sp,sp,16
    800021bc:	00008067          	ret

00000000800021c0 <_ZN9Semaphore7tryWaitEv>:

int Semaphore::tryWait() {
    800021c0:	ff010113          	addi	sp,sp,-16
    800021c4:	00113423          	sd	ra,8(sp)
    800021c8:	00813023          	sd	s0,0(sp)
    800021cc:	01010413          	addi	s0,sp,16
    return sem_trywait(myHandle);
    800021d0:	00853503          	ld	a0,8(a0)
    800021d4:	fffff097          	auipc	ra,0xfffff
    800021d8:	3b4080e7          	jalr	948(ra) # 80001588 <_Z11sem_trywaitP3Sem>
}
    800021dc:	00813083          	ld	ra,8(sp)
    800021e0:	00013403          	ld	s0,0(sp)
    800021e4:	01010113          	addi	sp,sp,16
    800021e8:	00008067          	ret

00000000800021ec <_ZN14PeriodicThread9terminateEv>:

void PeriodicThread::terminate() {
    800021ec:	ff010113          	addi	sp,sp,-16
    800021f0:	00813423          	sd	s0,8(sp)
    800021f4:	01010413          	addi	s0,sp,16
    /// TODO terminate
}
    800021f8:	00813403          	ld	s0,8(sp)
    800021fc:	01010113          	addi	sp,sp,16
    80002200:	00008067          	ret

0000000080002204 <_ZN14PeriodicThreadC1Em>:

PeriodicThread::PeriodicThread(time_t period) {
    80002204:	fe010113          	addi	sp,sp,-32
    80002208:	00113c23          	sd	ra,24(sp)
    8000220c:	00813823          	sd	s0,16(sp)
    80002210:	00913423          	sd	s1,8(sp)
    80002214:	01213023          	sd	s2,0(sp)
    80002218:	02010413          	addi	s0,sp,32
    8000221c:	00050493          	mv	s1,a0
    80002220:	00058913          	mv	s2,a1
    80002224:	00000097          	auipc	ra,0x0
    80002228:	e94080e7          	jalr	-364(ra) # 800020b8 <_ZN6ThreadC1Ev>
    8000222c:	0000a797          	auipc	a5,0xa
    80002230:	86c78793          	addi	a5,a5,-1940 # 8000ba98 <_ZTV14PeriodicThread+0x10>
    80002234:	00f4b023          	sd	a5,0(s1)
    this -> period = period;
    80002238:	0324b023          	sd	s2,32(s1)
}
    8000223c:	01813083          	ld	ra,24(sp)
    80002240:	01013403          	ld	s0,16(sp)
    80002244:	00813483          	ld	s1,8(sp)
    80002248:	00013903          	ld	s2,0(sp)
    8000224c:	02010113          	addi	sp,sp,32
    80002250:	00008067          	ret

0000000080002254 <_ZN7Console4getcEv>:

char Console::getc() {
    80002254:	ff010113          	addi	sp,sp,-16
    80002258:	00113423          	sd	ra,8(sp)
    8000225c:	00813023          	sd	s0,0(sp)
    80002260:	01010413          	addi	s0,sp,16
    return ::getc();
    80002264:	fffff097          	auipc	ra,0xfffff
    80002268:	3bc080e7          	jalr	956(ra) # 80001620 <_Z4getcv>
}
    8000226c:	00813083          	ld	ra,8(sp)
    80002270:	00013403          	ld	s0,0(sp)
    80002274:	01010113          	addi	sp,sp,16
    80002278:	00008067          	ret

000000008000227c <_ZN7Console4putcEc>:

void Console::putc(char c) {
    8000227c:	ff010113          	addi	sp,sp,-16
    80002280:	00113423          	sd	ra,8(sp)
    80002284:	00813023          	sd	s0,0(sp)
    80002288:	01010413          	addi	s0,sp,16
    ::putc(c);
    8000228c:	fffff097          	auipc	ra,0xfffff
    80002290:	3e0080e7          	jalr	992(ra) # 8000166c <_Z4putcc>
}
    80002294:	00813083          	ld	ra,8(sp)
    80002298:	00013403          	ld	s0,0(sp)
    8000229c:	01010113          	addi	sp,sp,16
    800022a0:	00008067          	ret

00000000800022a4 <_ZN6Thread3runEv>:
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    800022a4:	ff010113          	addi	sp,sp,-16
    800022a8:	00813423          	sd	s0,8(sp)
    800022ac:	01010413          	addi	s0,sp,16
    800022b0:	00813403          	ld	s0,8(sp)
    800022b4:	01010113          	addi	sp,sp,16
    800022b8:	00008067          	ret

00000000800022bc <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    800022bc:	ff010113          	addi	sp,sp,-16
    800022c0:	00813423          	sd	s0,8(sp)
    800022c4:	01010413          	addi	s0,sp,16
    800022c8:	00813403          	ld	s0,8(sp)
    800022cc:	01010113          	addi	sp,sp,16
    800022d0:	00008067          	ret

00000000800022d4 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    800022d4:	ff010113          	addi	sp,sp,-16
    800022d8:	00113423          	sd	ra,8(sp)
    800022dc:	00813023          	sd	s0,0(sp)
    800022e0:	01010413          	addi	s0,sp,16
    800022e4:	00009797          	auipc	a5,0x9
    800022e8:	7b478793          	addi	a5,a5,1972 # 8000ba98 <_ZTV14PeriodicThread+0x10>
    800022ec:	00f53023          	sd	a5,0(a0)
    800022f0:	00000097          	auipc	ra,0x0
    800022f4:	bac080e7          	jalr	-1108(ra) # 80001e9c <_ZN6ThreadD1Ev>
    800022f8:	00813083          	ld	ra,8(sp)
    800022fc:	00013403          	ld	s0,0(sp)
    80002300:	01010113          	addi	sp,sp,16
    80002304:	00008067          	ret

0000000080002308 <_ZN14PeriodicThreadD0Ev>:
    80002308:	fe010113          	addi	sp,sp,-32
    8000230c:	00113c23          	sd	ra,24(sp)
    80002310:	00813823          	sd	s0,16(sp)
    80002314:	00913423          	sd	s1,8(sp)
    80002318:	02010413          	addi	s0,sp,32
    8000231c:	00050493          	mv	s1,a0
    80002320:	00009797          	auipc	a5,0x9
    80002324:	77878793          	addi	a5,a5,1912 # 8000ba98 <_ZTV14PeriodicThread+0x10>
    80002328:	00f53023          	sd	a5,0(a0)
    8000232c:	00000097          	auipc	ra,0x0
    80002330:	b70080e7          	jalr	-1168(ra) # 80001e9c <_ZN6ThreadD1Ev>
    80002334:	00048513          	mv	a0,s1
    80002338:	00000097          	auipc	ra,0x0
    8000233c:	c24080e7          	jalr	-988(ra) # 80001f5c <_ZdlPv>
    80002340:	01813083          	ld	ra,24(sp)
    80002344:	01013403          	ld	s0,16(sp)
    80002348:	00813483          	ld	s1,8(sp)
    8000234c:	02010113          	addi	sp,sp,32
    80002350:	00008067          	ret

0000000080002354 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>:
        instance = (MemoryAllocator*) MemoryAllocator::mem_alloc(get_number_of_blocks(sizeof(MemoryAllocator)));
    }
}

/// helper function for removing element from linked list
void MemoryAllocator::removeNode(MemSeg *toRemove, MemSeg *nextSeg, bool newIsCreated) {
    80002354:	ff010113          	addi	sp,sp,-16
    80002358:	00813423          	sd	s0,8(sp)
    8000235c:	01010413          	addi	s0,sp,16
    if (toRemove -> prev) toRemove -> prev -> next = nextSeg;
    80002360:	00853783          	ld	a5,8(a0)
    80002364:	02078463          	beqz	a5,8000238c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x38>
    80002368:	00b7b823          	sd	a1,16(a5)
    else freeSegHead = nextSeg;
    if (toRemove -> next) toRemove -> next -> prev = (newIsCreated) ? nextSeg : toRemove -> prev;
    8000236c:	01053783          	ld	a5,16(a0)
    80002370:	00078863          	beqz	a5,80002380 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x2c>
    80002374:	00061463          	bnez	a2,8000237c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x28>
    80002378:	00853583          	ld	a1,8(a0)
    8000237c:	00b7b423          	sd	a1,8(a5)
}
    80002380:	00813403          	ld	s0,8(sp)
    80002384:	01010113          	addi	sp,sp,16
    80002388:	00008067          	ret
    else freeSegHead = nextSeg;
    8000238c:	0000a797          	auipc	a5,0xa
    80002390:	9cb7be23          	sd	a1,-1572(a5) # 8000bd68 <_ZN15MemoryAllocator11freeSegHeadE>
    80002394:	fd9ff06f          	j	8000236c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x18>

0000000080002398 <_ZN15MemoryAllocator9mem_allocEm>:

/// allocate `size` blocks
void *MemoryAllocator::mem_alloc(size_t size) {
    80002398:	fe010113          	addi	sp,sp,-32
    8000239c:	00113c23          	sd	ra,24(sp)
    800023a0:	00813823          	sd	s0,16(sp)
    800023a4:	00913423          	sd	s1,8(sp)
    800023a8:	01213023          	sd	s2,0(sp)
    800023ac:	02010413          	addi	s0,sp,32
    if (size <= 0) return nullptr;
    800023b0:	0e050e63          	beqz	a0,800024ac <_ZN15MemoryAllocator9mem_allocEm+0x114>
    size_t bytesToAllocate = size * MEM_BLOCK_SIZE;
    800023b4:	00651913          	slli	s2,a0,0x6
    MemSeg *tmp = freeSegHead;
    800023b8:	0000a497          	auipc	s1,0xa
    800023bc:	9b04b483          	ld	s1,-1616(s1) # 8000bd68 <_ZN15MemoryAllocator11freeSegHeadE>
    while (tmp) {
    800023c0:	0a048e63          	beqz	s1,8000247c <_ZN15MemoryAllocator9mem_allocEm+0xe4>
        if (tmp -> size < bytesToAllocate) {
    800023c4:	0004b783          	ld	a5,0(s1)
    800023c8:	0527e463          	bltu	a5,s2,80002410 <_ZN15MemoryAllocator9mem_allocEm+0x78>
            tmp = tmp -> next;
            continue;
        }
        /// update free memory list
        size_t remaining = tmp -> size - bytesToAllocate;
    800023cc:	412787b3          	sub	a5,a5,s2
        if (remaining <= sizeof(MemSeg)) removeNode(tmp, tmp->next, false);
    800023d0:	01800713          	li	a4,24
    800023d4:	04f76263          	bltu	a4,a5,80002418 <_ZN15MemoryAllocator9mem_allocEm+0x80>
    800023d8:	00000613          	li	a2,0
    800023dc:	0104b583          	ld	a1,16(s1)
    800023e0:	00048513          	mv	a0,s1
    800023e4:	00000097          	auipc	ra,0x0
    800023e8:	f70080e7          	jalr	-144(ra) # 80002354 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
        }

        /// update used memory list
        /// insert segment after tmp2
        MemSeg* tmp2 = nullptr;
        if (usedSegHead && (char*) tmp > (char*) usedSegHead)
    800023ec:	0000a797          	auipc	a5,0xa
    800023f0:	9847b783          	ld	a5,-1660(a5) # 8000bd70 <_ZN15MemoryAllocator11usedSegHeadE>
    800023f4:	04078863          	beqz	a5,80002444 <_ZN15MemoryAllocator9mem_allocEm+0xac>
    800023f8:	0497fa63          	bgeu	a5,s1,8000244c <_ZN15MemoryAllocator9mem_allocEm+0xb4>
            for (tmp2 = usedSegHead; tmp2 -> next && (char*) tmp > (char*) (tmp2 -> next); tmp2 = tmp2 -> next);
    800023fc:	00078713          	mv	a4,a5
    80002400:	0107b783          	ld	a5,16(a5)
    80002404:	04078663          	beqz	a5,80002450 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
    80002408:	fe97eae3          	bltu	a5,s1,800023fc <_ZN15MemoryAllocator9mem_allocEm+0x64>
    8000240c:	0440006f          	j	80002450 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
            tmp = tmp -> next;
    80002410:	0104b483          	ld	s1,16(s1)
    while (tmp) {
    80002414:	fadff06f          	j	800023c0 <_ZN15MemoryAllocator9mem_allocEm+0x28>
            MemSeg* newFree = (MemSeg*) ((char*) tmp + bytesToAllocate);
    80002418:	012485b3          	add	a1,s1,s2
            newFree -> prev = tmp -> prev;
    8000241c:	0084b703          	ld	a4,8(s1)
    80002420:	00e5b423          	sd	a4,8(a1)
            newFree -> next = tmp -> next;
    80002424:	0104b703          	ld	a4,16(s1)
    80002428:	00e5b823          	sd	a4,16(a1)
            newFree -> size = remaining;
    8000242c:	00f5b023          	sd	a5,0(a1)
            removeNode(tmp, newFree, true);
    80002430:	00100613          	li	a2,1
    80002434:	00048513          	mv	a0,s1
    80002438:	00000097          	auipc	ra,0x0
    8000243c:	f1c080e7          	jalr	-228(ra) # 80002354 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
    80002440:	fadff06f          	j	800023ec <_ZN15MemoryAllocator9mem_allocEm+0x54>
        MemSeg* tmp2 = nullptr;
    80002444:	00078713          	mv	a4,a5
    80002448:	0080006f          	j	80002450 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
    8000244c:	00000713          	li	a4,0
        MemSeg* newUsed = (MemSeg*) tmp;
        newUsed -> size = bytesToAllocate;
    80002450:	0124b023          	sd	s2,0(s1)
        newUsed -> prev = tmp2;
    80002454:	00e4b423          	sd	a4,8(s1)
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    80002458:	04070063          	beqz	a4,80002498 <_ZN15MemoryAllocator9mem_allocEm+0x100>
    8000245c:	01073783          	ld	a5,16(a4)
    80002460:	00f4b823          	sd	a5,16(s1)
        if (tmp2) tmp2 -> next = newUsed;
    80002464:	02070e63          	beqz	a4,800024a0 <_ZN15MemoryAllocator9mem_allocEm+0x108>
    80002468:	00973823          	sd	s1,16(a4)
        else usedSegHead = newUsed;
        if (newUsed -> next) newUsed -> next -> prev = newUsed;
    8000246c:	0104b783          	ld	a5,16(s1)
    80002470:	00078463          	beqz	a5,80002478 <_ZN15MemoryAllocator9mem_allocEm+0xe0>
    80002474:	0097b423          	sd	s1,8(a5)
        return (void*) ((char*)tmp + sizeof(MemSeg));
    80002478:	01848493          	addi	s1,s1,24
    }
    return nullptr;
}
    8000247c:	00048513          	mv	a0,s1
    80002480:	01813083          	ld	ra,24(sp)
    80002484:	01013403          	ld	s0,16(sp)
    80002488:	00813483          	ld	s1,8(sp)
    8000248c:	00013903          	ld	s2,0(sp)
    80002490:	02010113          	addi	sp,sp,32
    80002494:	00008067          	ret
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    80002498:	00070793          	mv	a5,a4
    8000249c:	fc5ff06f          	j	80002460 <_ZN15MemoryAllocator9mem_allocEm+0xc8>
        else usedSegHead = newUsed;
    800024a0:	0000a797          	auipc	a5,0xa
    800024a4:	8c97b823          	sd	s1,-1840(a5) # 8000bd70 <_ZN15MemoryAllocator11usedSegHeadE>
    800024a8:	fc5ff06f          	j	8000246c <_ZN15MemoryAllocator9mem_allocEm+0xd4>
    if (size <= 0) return nullptr;
    800024ac:	00000493          	li	s1,0
    800024b0:	fcdff06f          	j	8000247c <_ZN15MemoryAllocator9mem_allocEm+0xe4>

00000000800024b4 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>:
    }
    return 0;
}

/// join free segment with next if possible
void MemoryAllocator::tryToJoin(MemSeg *seg) {
    800024b4:	ff010113          	addi	sp,sp,-16
    800024b8:	00813423          	sd	s0,8(sp)
    800024bc:	01010413          	addi	s0,sp,16
    if (seg -> next && (char*) seg + seg -> size == (char*) seg -> next) {
    800024c0:	01053783          	ld	a5,16(a0)
    800024c4:	00078863          	beqz	a5,800024d4 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    800024c8:	00053703          	ld	a4,0(a0)
    800024cc:	00e506b3          	add	a3,a0,a4
    800024d0:	00d78863          	beq	a5,a3,800024e0 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x2c>
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
        seg -> next = seg -> next -> next;
        if (seg -> next) seg -> next -> prev = seg;
    }
}
    800024d4:	00813403          	ld	s0,8(sp)
    800024d8:	01010113          	addi	sp,sp,16
    800024dc:	00008067          	ret
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
    800024e0:	0007b683          	ld	a3,0(a5)
    800024e4:	00d70733          	add	a4,a4,a3
    800024e8:	01870713          	addi	a4,a4,24
    800024ec:	00e53023          	sd	a4,0(a0)
        seg -> next = seg -> next -> next;
    800024f0:	0107b783          	ld	a5,16(a5)
    800024f4:	00f53823          	sd	a5,16(a0)
        if (seg -> next) seg -> next -> prev = seg;
    800024f8:	fc078ee3          	beqz	a5,800024d4 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    800024fc:	00a7b423          	sd	a0,8(a5)
}
    80002500:	fd5ff06f          	j	800024d4 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>

0000000080002504 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    80002504:	14050263          	beqz	a0,80002648 <_ZN15MemoryAllocator8mem_freeEPv+0x144>
int MemoryAllocator::mem_free(void *addr) {
    80002508:	fd010113          	addi	sp,sp,-48
    8000250c:	02113423          	sd	ra,40(sp)
    80002510:	02813023          	sd	s0,32(sp)
    80002514:	00913c23          	sd	s1,24(sp)
    80002518:	01213823          	sd	s2,16(sp)
    8000251c:	01313423          	sd	s3,8(sp)
    80002520:	03010413          	addi	s0,sp,48
    80002524:	00050913          	mv	s2,a0
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    80002528:	00009797          	auipc	a5,0x9
    8000252c:	7987b783          	ld	a5,1944(a5) # 8000bcc0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002530:	0007b783          	ld	a5,0(a5)
    80002534:	10f56e63          	bltu	a0,a5,80002650 <_ZN15MemoryAllocator8mem_freeEPv+0x14c>
    80002538:	00009797          	auipc	a5,0x9
    8000253c:	7c87b783          	ld	a5,1992(a5) # 8000bd00 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002540:	0007b783          	ld	a5,0(a5)
    80002544:	10a7ea63          	bltu	a5,a0,80002658 <_ZN15MemoryAllocator8mem_freeEPv+0x154>
    if (!usedSegHead) return -2;
    80002548:	0000a797          	auipc	a5,0xa
    8000254c:	8287b783          	ld	a5,-2008(a5) # 8000bd70 <_ZN15MemoryAllocator11usedSegHeadE>
    80002550:	10078863          	beqz	a5,80002660 <_ZN15MemoryAllocator8mem_freeEPv+0x15c>
    addr = (void*) ((char*) addr - sizeof(MemSeg));
    80002554:	fe850493          	addi	s1,a0,-24
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    80002558:	00078863          	beqz	a5,80002568 <_ZN15MemoryAllocator8mem_freeEPv+0x64>
        if (tmp == segToFree) {
    8000255c:	08978e63          	beq	a5,s1,800025f8 <_ZN15MemoryAllocator8mem_freeEPv+0xf4>
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    80002560:	0107b783          	ld	a5,16(a5)
    80002564:	ff5ff06f          	j	80002558 <_ZN15MemoryAllocator8mem_freeEPv+0x54>
    bool found = false;
    80002568:	00000793          	li	a5,0
    if (!found) return -3;
    8000256c:	0e078e63          	beqz	a5,80002668 <_ZN15MemoryAllocator8mem_freeEPv+0x164>
    removeNode(segToFree, segToFree -> next, false);
    80002570:	00000613          	li	a2,0
    80002574:	ff893583          	ld	a1,-8(s2)
    80002578:	00048513          	mv	a0,s1
    8000257c:	00000097          	auipc	ra,0x0
    80002580:	dd8080e7          	jalr	-552(ra) # 80002354 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
    if (!freeSegHead) {
    80002584:	00009797          	auipc	a5,0x9
    80002588:	7e47b783          	ld	a5,2020(a5) # 8000bd68 <_ZN15MemoryAllocator11freeSegHeadE>
    8000258c:	06078a63          	beqz	a5,80002600 <_ZN15MemoryAllocator8mem_freeEPv+0xfc>
    else if ((char*) addr < (char*) freeSegHead) {
    80002590:	08f4e463          	bltu	s1,a5,80002618 <_ZN15MemoryAllocator8mem_freeEPv+0x114>
        for (tmp = freeSegHead; tmp -> next && (char*) (tmp -> next) < (char*) segToFree; tmp = tmp -> next);
    80002594:	00078993          	mv	s3,a5
    80002598:	0107b783          	ld	a5,16(a5)
    8000259c:	00078463          	beqz	a5,800025a4 <_ZN15MemoryAllocator8mem_freeEPv+0xa0>
    800025a0:	fe97eae3          	bltu	a5,s1,80002594 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
        segToFree -> prev = tmp;
    800025a4:	ff393823          	sd	s3,-16(s2)
        segToFree -> next = tmp -> next;
    800025a8:	0109b783          	ld	a5,16(s3)
    800025ac:	fef93c23          	sd	a5,-8(s2)
        tmp -> next = segToFree;
    800025b0:	0099b823          	sd	s1,16(s3)
        if (segToFree -> next) segToFree -> next -> prev = segToFree;
    800025b4:	ff893783          	ld	a5,-8(s2)
    800025b8:	00078463          	beqz	a5,800025c0 <_ZN15MemoryAllocator8mem_freeEPv+0xbc>
    800025bc:	0097b423          	sd	s1,8(a5)
        tryToJoin(segToFree);
    800025c0:	00048513          	mv	a0,s1
    800025c4:	00000097          	auipc	ra,0x0
    800025c8:	ef0080e7          	jalr	-272(ra) # 800024b4 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
        tryToJoin(tmp);
    800025cc:	00098513          	mv	a0,s3
    800025d0:	00000097          	auipc	ra,0x0
    800025d4:	ee4080e7          	jalr	-284(ra) # 800024b4 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    800025d8:	00000513          	li	a0,0
}
    800025dc:	02813083          	ld	ra,40(sp)
    800025e0:	02013403          	ld	s0,32(sp)
    800025e4:	01813483          	ld	s1,24(sp)
    800025e8:	01013903          	ld	s2,16(sp)
    800025ec:	00813983          	ld	s3,8(sp)
    800025f0:	03010113          	addi	sp,sp,48
    800025f4:	00008067          	ret
            found = true;
    800025f8:	00100793          	li	a5,1
    800025fc:	f71ff06f          	j	8000256c <_ZN15MemoryAllocator8mem_freeEPv+0x68>
        freeSegHead = segToFree;
    80002600:	00009797          	auipc	a5,0x9
    80002604:	7697b423          	sd	s1,1896(a5) # 8000bd68 <_ZN15MemoryAllocator11freeSegHeadE>
        segToFree -> prev = segToFree -> next = nullptr;
    80002608:	fe093c23          	sd	zero,-8(s2)
    8000260c:	fe093823          	sd	zero,-16(s2)
    return 0;
    80002610:	00000513          	li	a0,0
    80002614:	fc9ff06f          	j	800025dc <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
        segToFree -> prev = nullptr;
    80002618:	fe093823          	sd	zero,-16(s2)
        segToFree -> next = freeSegHead;
    8000261c:	00009797          	auipc	a5,0x9
    80002620:	74c78793          	addi	a5,a5,1868 # 8000bd68 <_ZN15MemoryAllocator11freeSegHeadE>
    80002624:	0007b703          	ld	a4,0(a5)
    80002628:	fee93c23          	sd	a4,-8(s2)
        freeSegHead -> prev = segToFree;
    8000262c:	00973423          	sd	s1,8(a4)
        freeSegHead = segToFree;
    80002630:	0097b023          	sd	s1,0(a5)
        tryToJoin(segToFree);
    80002634:	00048513          	mv	a0,s1
    80002638:	00000097          	auipc	ra,0x0
    8000263c:	e7c080e7          	jalr	-388(ra) # 800024b4 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    80002640:	00000513          	li	a0,0
    80002644:	f99ff06f          	j	800025dc <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    80002648:	fff00513          	li	a0,-1
}
    8000264c:	00008067          	ret
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    80002650:	fff00513          	li	a0,-1
    80002654:	f89ff06f          	j	800025dc <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    80002658:	fff00513          	li	a0,-1
    8000265c:	f81ff06f          	j	800025dc <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!usedSegHead) return -2;
    80002660:	ffe00513          	li	a0,-2
    80002664:	f79ff06f          	j	800025dc <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!found) return -3;
    80002668:	ffd00513          	li	a0,-3
    8000266c:	f71ff06f          	j	800025dc <_ZN15MemoryAllocator8mem_freeEPv+0xd8>

0000000080002670 <_ZN15MemoryAllocator5printEv>:

void MemoryAllocator::print() {
    80002670:	fe010113          	addi	sp,sp,-32
    80002674:	00113c23          	sd	ra,24(sp)
    80002678:	00813823          	sd	s0,16(sp)
    8000267c:	00913423          	sd	s1,8(sp)
    80002680:	02010413          	addi	s0,sp,32
    __putc('\n');
    80002684:	00a00513          	li	a0,10
    80002688:	00006097          	auipc	ra,0x6
    8000268c:	604080e7          	jalr	1540(ra) # 80008c8c <__putc>
    __putc('M');
    80002690:	04d00513          	li	a0,77
    80002694:	00006097          	auipc	ra,0x6
    80002698:	5f8080e7          	jalr	1528(ra) # 80008c8c <__putc>
    __putc(':');
    8000269c:	03a00513          	li	a0,58
    800026a0:	00006097          	auipc	ra,0x6
    800026a4:	5ec080e7          	jalr	1516(ra) # 80008c8c <__putc>
    __putc(' ');
    800026a8:	02000513          	li	a0,32
    800026ac:	00006097          	auipc	ra,0x6
    800026b0:	5e0080e7          	jalr	1504(ra) # 80008c8c <__putc>
    for (MemSeg* tmp = freeSegHead; tmp; tmp = tmp -> next) {
    800026b4:	00009497          	auipc	s1,0x9
    800026b8:	6b44b483          	ld	s1,1716(s1) # 8000bd68 <_ZN15MemoryAllocator11freeSegHeadE>
    800026bc:	02048863          	beqz	s1,800026ec <_ZN15MemoryAllocator5printEv+0x7c>
        printNumber(tmp -> size);
    800026c0:	0004b503          	ld	a0,0(s1)
    800026c4:	fffff097          	auipc	ra,0xfffff
    800026c8:	3e4080e7          	jalr	996(ra) # 80001aa8 <_Z11printNumberm>
        __putc(' ');
    800026cc:	02000513          	li	a0,32
    800026d0:	00006097          	auipc	ra,0x6
    800026d4:	5bc080e7          	jalr	1468(ra) # 80008c8c <__putc>
        __putc('f');
    800026d8:	06600513          	li	a0,102
    800026dc:	00006097          	auipc	ra,0x6
    800026e0:	5b0080e7          	jalr	1456(ra) # 80008c8c <__putc>
    for (MemSeg* tmp = freeSegHead; tmp; tmp = tmp -> next) {
    800026e4:	0104b483          	ld	s1,16(s1)
    800026e8:	fd5ff06f          	j	800026bc <_ZN15MemoryAllocator5printEv+0x4c>
    }
    __putc('\t');
    800026ec:	00900513          	li	a0,9
    800026f0:	00006097          	auipc	ra,0x6
    800026f4:	59c080e7          	jalr	1436(ra) # 80008c8c <__putc>
    for (MemSeg* tmp = usedSegHead; tmp; tmp = tmp -> next) {
    800026f8:	00009497          	auipc	s1,0x9
    800026fc:	6784b483          	ld	s1,1656(s1) # 8000bd70 <_ZN15MemoryAllocator11usedSegHeadE>
    80002700:	02048863          	beqz	s1,80002730 <_ZN15MemoryAllocator5printEv+0xc0>
        printNumber(tmp -> size);
    80002704:	0004b503          	ld	a0,0(s1)
    80002708:	fffff097          	auipc	ra,0xfffff
    8000270c:	3a0080e7          	jalr	928(ra) # 80001aa8 <_Z11printNumberm>
        __putc(' ');
    80002710:	02000513          	li	a0,32
    80002714:	00006097          	auipc	ra,0x6
    80002718:	578080e7          	jalr	1400(ra) # 80008c8c <__putc>
        __putc('u');
    8000271c:	07500513          	li	a0,117
    80002720:	00006097          	auipc	ra,0x6
    80002724:	56c080e7          	jalr	1388(ra) # 80008c8c <__putc>
    for (MemSeg* tmp = usedSegHead; tmp; tmp = tmp -> next) {
    80002728:	0104b483          	ld	s1,16(s1)
    8000272c:	fd5ff06f          	j	80002700 <_ZN15MemoryAllocator5printEv+0x90>
    }
}
    80002730:	01813083          	ld	ra,24(sp)
    80002734:	01013403          	ld	s0,16(sp)
    80002738:	00813483          	ld	s1,8(sp)
    8000273c:	02010113          	addi	sp,sp,32
    80002740:	00008067          	ret

0000000080002744 <_ZN15MemoryAllocator20get_number_of_blocksEm>:

size_t MemoryAllocator::get_number_of_blocks(size_t size) {
    80002744:	ff010113          	addi	sp,sp,-16
    80002748:	00813423          	sd	s0,8(sp)
    8000274c:	01010413          	addi	s0,sp,16
    return (size + sizeof(MemoryAllocator::MemSeg) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80002750:	05750513          	addi	a0,a0,87
}
    80002754:	00655513          	srli	a0,a0,0x6
    80002758:	00813403          	ld	s0,8(sp)
    8000275c:	01010113          	addi	sp,sp,16
    80002760:	00008067          	ret

0000000080002764 <_ZN15MemoryAllocator10initializeEv>:
    if (!instance) {
    80002764:	00009797          	auipc	a5,0x9
    80002768:	6147b783          	ld	a5,1556(a5) # 8000bd78 <_ZN15MemoryAllocator8instanceE>
    8000276c:	00078463          	beqz	a5,80002774 <_ZN15MemoryAllocator10initializeEv+0x10>
    80002770:	00008067          	ret
void MemoryAllocator::initialize() {
    80002774:	fe010113          	addi	sp,sp,-32
    80002778:	00113c23          	sd	ra,24(sp)
    8000277c:	00813823          	sd	s0,16(sp)
    80002780:	00913423          	sd	s1,8(sp)
    80002784:	02010413          	addi	s0,sp,32
        freeSegHead = (MemSeg*) HEAP_START_ADDR;
    80002788:	00009797          	auipc	a5,0x9
    8000278c:	5387b783          	ld	a5,1336(a5) # 8000bcc0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002790:	0007b783          	ld	a5,0(a5)
    80002794:	00009497          	auipc	s1,0x9
    80002798:	5d448493          	addi	s1,s1,1492 # 8000bd68 <_ZN15MemoryAllocator11freeSegHeadE>
    8000279c:	00f4b023          	sd	a5,0(s1)
        freeSegHead -> size = (size_t) HEAP_END_ADDR - (size_t) HEAP_START_ADDR;
    800027a0:	00009717          	auipc	a4,0x9
    800027a4:	56073703          	ld	a4,1376(a4) # 8000bd00 <_GLOBAL_OFFSET_TABLE_+0x58>
    800027a8:	00073703          	ld	a4,0(a4)
    800027ac:	40f70733          	sub	a4,a4,a5
    800027b0:	00e7b023          	sd	a4,0(a5)
        freeSegHead -> prev = nullptr;
    800027b4:	0004b783          	ld	a5,0(s1)
    800027b8:	0007b423          	sd	zero,8(a5)
        freeSegHead -> next = nullptr;
    800027bc:	0007b823          	sd	zero,16(a5)
        instance = (MemoryAllocator*) MemoryAllocator::mem_alloc(get_number_of_blocks(sizeof(MemoryAllocator)));
    800027c0:	00100513          	li	a0,1
    800027c4:	00000097          	auipc	ra,0x0
    800027c8:	f80080e7          	jalr	-128(ra) # 80002744 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    800027cc:	00000097          	auipc	ra,0x0
    800027d0:	bcc080e7          	jalr	-1076(ra) # 80002398 <_ZN15MemoryAllocator9mem_allocEm>
    800027d4:	00a4b823          	sd	a0,16(s1)
}
    800027d8:	01813083          	ld	ra,24(sp)
    800027dc:	01013403          	ld	s0,16(sp)
    800027e0:	00813483          	ld	s1,8(sp)
    800027e4:	02010113          	addi	sp,sp,32
    800027e8:	00008067          	ret

00000000800027ec <_ZN13BoundedBufferC1Ev>:
#include "../h/bounded_bufffer.hpp"

BoundedBuffer::BoundedBuffer() {
    800027ec:	fe010113          	addi	sp,sp,-32
    800027f0:	00113c23          	sd	ra,24(sp)
    800027f4:	00813823          	sd	s0,16(sp)
    800027f8:	00913423          	sd	s1,8(sp)
    800027fc:	02010413          	addi	s0,sp,32
    80002800:	00050493          	mv	s1,a0
    80002804:	00052023          	sw	zero,0(a0)
    80002808:	00052223          	sw	zero,4(a0)
    Sem::open(&item_available, 0);
    8000280c:	00000593          	li	a1,0
    80002810:	01050513          	addi	a0,a0,16
    80002814:	fffff097          	auipc	ra,0xfffff
    80002818:	138080e7          	jalr	312(ra) # 8000194c <_ZN3Sem4openEPPS_j>
    Sem::open(&space_available, CAPACITY);
    8000281c:	1f400593          	li	a1,500
    80002820:	00848513          	addi	a0,s1,8
    80002824:	fffff097          	auipc	ra,0xfffff
    80002828:	128080e7          	jalr	296(ra) # 8000194c <_ZN3Sem4openEPPS_j>
}
    8000282c:	01813083          	ld	ra,24(sp)
    80002830:	01013403          	ld	s0,16(sp)
    80002834:	00813483          	ld	s1,8(sp)
    80002838:	02010113          	addi	sp,sp,32
    8000283c:	00008067          	ret

0000000080002840 <_ZN13BoundedBufferD1Ev>:

BoundedBuffer::~BoundedBuffer() {
    80002840:	fe010113          	addi	sp,sp,-32
    80002844:	00113c23          	sd	ra,24(sp)
    80002848:	00813823          	sd	s0,16(sp)
    8000284c:	00913423          	sd	s1,8(sp)
    80002850:	02010413          	addi	s0,sp,32
    80002854:	00050493          	mv	s1,a0
    Sem::close(item_available);
    80002858:	01053503          	ld	a0,16(a0)
    8000285c:	fffff097          	auipc	ra,0xfffff
    80002860:	f58080e7          	jalr	-168(ra) # 800017b4 <_ZN3Sem5closeEPS_>
    Sem::close(space_available);
    80002864:	0084b503          	ld	a0,8(s1)
    80002868:	fffff097          	auipc	ra,0xfffff
    8000286c:	f4c080e7          	jalr	-180(ra) # 800017b4 <_ZN3Sem5closeEPS_>
}
    80002870:	01813083          	ld	ra,24(sp)
    80002874:	01013403          	ld	s0,16(sp)
    80002878:	00813483          	ld	s1,8(sp)
    8000287c:	02010113          	addi	sp,sp,32
    80002880:	00008067          	ret

0000000080002884 <_ZN13BoundedBuffernwEm>:

void *BoundedBuffer::operator new(size_t size) {
    80002884:	ff010113          	addi	sp,sp,-16
    80002888:	00113423          	sd	ra,8(sp)
    8000288c:	00813023          	sd	s0,0(sp)
    80002890:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    80002894:	00000097          	auipc	ra,0x0
    80002898:	eb0080e7          	jalr	-336(ra) # 80002744 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    8000289c:	00000097          	auipc	ra,0x0
    800028a0:	afc080e7          	jalr	-1284(ra) # 80002398 <_ZN15MemoryAllocator9mem_allocEm>
}
    800028a4:	00813083          	ld	ra,8(sp)
    800028a8:	00013403          	ld	s0,0(sp)
    800028ac:	01010113          	addi	sp,sp,16
    800028b0:	00008067          	ret

00000000800028b4 <_ZN13BoundedBufferdlEPv>:

void BoundedBuffer::operator delete(void *addr) {
    800028b4:	ff010113          	addi	sp,sp,-16
    800028b8:	00113423          	sd	ra,8(sp)
    800028bc:	00813023          	sd	s0,0(sp)
    800028c0:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    800028c4:	00000097          	auipc	ra,0x0
    800028c8:	c40080e7          	jalr	-960(ra) # 80002504 <_ZN15MemoryAllocator8mem_freeEPv>
}
    800028cc:	00813083          	ld	ra,8(sp)
    800028d0:	00013403          	ld	s0,0(sp)
    800028d4:	01010113          	addi	sp,sp,16
    800028d8:	00008067          	ret

00000000800028dc <_ZN13BoundedBuffer4putcEc>:

void BoundedBuffer::putc(char c) {
    800028dc:	fe010113          	addi	sp,sp,-32
    800028e0:	00113c23          	sd	ra,24(sp)
    800028e4:	00813823          	sd	s0,16(sp)
    800028e8:	00913423          	sd	s1,8(sp)
    800028ec:	01213023          	sd	s2,0(sp)
    800028f0:	02010413          	addi	s0,sp,32
    800028f4:	00050493          	mv	s1,a0
    800028f8:	00058913          	mv	s2,a1
    Sem::wait(space_available);
    800028fc:	00853503          	ld	a0,8(a0)
    80002900:	fffff097          	auipc	ra,0xfffff
    80002904:	f20080e7          	jalr	-224(ra) # 80001820 <_ZN3Sem4waitEPS_>
    array[tail] = c;
    80002908:	0044a783          	lw	a5,4(s1)
    8000290c:	00f48733          	add	a4,s1,a5
    80002910:	01270c23          	sb	s2,24(a4)
    tail = (tail + 1) % CAPACITY;
    80002914:	0017879b          	addiw	a5,a5,1
    80002918:	1f400713          	li	a4,500
    8000291c:	02e7e7bb          	remw	a5,a5,a4
    80002920:	00f4a223          	sw	a5,4(s1)
    Sem::signal(item_available);
    80002924:	0104b503          	ld	a0,16(s1)
    80002928:	fffff097          	auipc	ra,0xfffff
    8000292c:	f4c080e7          	jalr	-180(ra) # 80001874 <_ZN3Sem6signalEPS_>
}
    80002930:	01813083          	ld	ra,24(sp)
    80002934:	01013403          	ld	s0,16(sp)
    80002938:	00813483          	ld	s1,8(sp)
    8000293c:	00013903          	ld	s2,0(sp)
    80002940:	02010113          	addi	sp,sp,32
    80002944:	00008067          	ret

0000000080002948 <_ZN13BoundedBuffer4getcEv>:

char BoundedBuffer::getc() {
    80002948:	fe010113          	addi	sp,sp,-32
    8000294c:	00113c23          	sd	ra,24(sp)
    80002950:	00813823          	sd	s0,16(sp)
    80002954:	00913423          	sd	s1,8(sp)
    80002958:	01213023          	sd	s2,0(sp)
    8000295c:	02010413          	addi	s0,sp,32
    80002960:	00050493          	mv	s1,a0
    Sem::wait(item_available);
    80002964:	01053503          	ld	a0,16(a0)
    80002968:	fffff097          	auipc	ra,0xfffff
    8000296c:	eb8080e7          	jalr	-328(ra) # 80001820 <_ZN3Sem4waitEPS_>
    char c = array[head];
    80002970:	0004a783          	lw	a5,0(s1)
    80002974:	00f48733          	add	a4,s1,a5
    80002978:	01874903          	lbu	s2,24(a4)
    head = (head + 1) % CAPACITY;
    8000297c:	0017879b          	addiw	a5,a5,1
    80002980:	1f400713          	li	a4,500
    80002984:	02e7e7bb          	remw	a5,a5,a4
    80002988:	00f4a023          	sw	a5,0(s1)
    Sem::signal(space_available);
    8000298c:	0084b503          	ld	a0,8(s1)
    80002990:	fffff097          	auipc	ra,0xfffff
    80002994:	ee4080e7          	jalr	-284(ra) # 80001874 <_ZN3Sem6signalEPS_>
    return c;
}
    80002998:	00090513          	mv	a0,s2
    8000299c:	01813083          	ld	ra,24(sp)
    800029a0:	01013403          	ld	s0,16(sp)
    800029a4:	00813483          	ld	s1,8(sp)
    800029a8:	00013903          	ld	s2,0(sp)
    800029ac:	02010113          	addi	sp,sp,32
    800029b0:	00008067          	ret

00000000800029b4 <_ZN9Scheduler3putEP3TCB>:

TCB* Scheduler::head_ready = nullptr;
TCB* Scheduler::tail_ready = nullptr;
TCB* Scheduler::head_sleeping = nullptr;

void Scheduler::put(TCB *thread) {
    800029b4:	fe010113          	addi	sp,sp,-32
    800029b8:	00113c23          	sd	ra,24(sp)
    800029bc:	00813823          	sd	s0,16(sp)
    800029c0:	00913423          	sd	s1,8(sp)
    800029c4:	02010413          	addi	s0,sp,32
    800029c8:	00050493          	mv	s1,a0
    if (tail_ready) {
    800029cc:	00009517          	auipc	a0,0x9
    800029d0:	3b453503          	ld	a0,948(a0) # 8000bd80 <_ZN9Scheduler10tail_readyE>
    800029d4:	02050663          	beqz	a0,80002a00 <_ZN9Scheduler3putEP3TCB+0x4c>
        tail_ready -> set_next_ready(thread);
    800029d8:	00048593          	mv	a1,s1
    800029dc:	00001097          	auipc	ra,0x1
    800029e0:	8a8080e7          	jalr	-1880(ra) # 80003284 <_ZN3TCB14set_next_readyEPS_>
        tail_ready = thread;
    800029e4:	00009797          	auipc	a5,0x9
    800029e8:	3897be23          	sd	s1,924(a5) # 8000bd80 <_ZN9Scheduler10tail_readyE>
    }
    else head_ready = tail_ready = thread;
}
    800029ec:	01813083          	ld	ra,24(sp)
    800029f0:	01013403          	ld	s0,16(sp)
    800029f4:	00813483          	ld	s1,8(sp)
    800029f8:	02010113          	addi	sp,sp,32
    800029fc:	00008067          	ret
    else head_ready = tail_ready = thread;
    80002a00:	00009797          	auipc	a5,0x9
    80002a04:	38078793          	addi	a5,a5,896 # 8000bd80 <_ZN9Scheduler10tail_readyE>
    80002a08:	0097b023          	sd	s1,0(a5)
    80002a0c:	0097b423          	sd	s1,8(a5)
}
    80002a10:	fddff06f          	j	800029ec <_ZN9Scheduler3putEP3TCB+0x38>

0000000080002a14 <_ZN9Scheduler3getEv>:

TCB* Scheduler::get() {
    80002a14:	fe010113          	addi	sp,sp,-32
    80002a18:	00113c23          	sd	ra,24(sp)
    80002a1c:	00813823          	sd	s0,16(sp)
    80002a20:	00913423          	sd	s1,8(sp)
    80002a24:	02010413          	addi	s0,sp,32
    if (!head_ready) return nullptr;
    80002a28:	00009497          	auipc	s1,0x9
    80002a2c:	3604b483          	ld	s1,864(s1) # 8000bd88 <_ZN9Scheduler10head_readyE>
    80002a30:	02048663          	beqz	s1,80002a5c <_ZN9Scheduler3getEv+0x48>
    TCB *tmp = head_ready;
    head_ready = head_ready -> get_next_ready();
    80002a34:	00048513          	mv	a0,s1
    80002a38:	00001097          	auipc	ra,0x1
    80002a3c:	830080e7          	jalr	-2000(ra) # 80003268 <_ZNK3TCB14get_next_readyEv>
    80002a40:	00009797          	auipc	a5,0x9
    80002a44:	34a7b423          	sd	a0,840(a5) # 8000bd88 <_ZN9Scheduler10head_readyE>
    if (!head_ready) tail_ready = nullptr;
    80002a48:	02050663          	beqz	a0,80002a74 <_ZN9Scheduler3getEv+0x60>
    tmp -> set_next_ready(nullptr);
    80002a4c:	00000593          	li	a1,0
    80002a50:	00048513          	mv	a0,s1
    80002a54:	00001097          	auipc	ra,0x1
    80002a58:	830080e7          	jalr	-2000(ra) # 80003284 <_ZN3TCB14set_next_readyEPS_>
    return tmp;
}
    80002a5c:	00048513          	mv	a0,s1
    80002a60:	01813083          	ld	ra,24(sp)
    80002a64:	01013403          	ld	s0,16(sp)
    80002a68:	00813483          	ld	s1,8(sp)
    80002a6c:	02010113          	addi	sp,sp,32
    80002a70:	00008067          	ret
    if (!head_ready) tail_ready = nullptr;
    80002a74:	00009797          	auipc	a5,0x9
    80002a78:	3007b623          	sd	zero,780(a5) # 8000bd80 <_ZN9Scheduler10tail_readyE>
    80002a7c:	fd1ff06f          	j	80002a4c <_ZN9Scheduler3getEv+0x38>

0000000080002a80 <_ZN9Scheduler13change_threadEv>:
    thread -> set_next_sleeping(nullptr);
    change_thread();
    return 0;
}

void Scheduler::change_thread() {
    80002a80:	fe010113          	addi	sp,sp,-32
    80002a84:	00113c23          	sd	ra,24(sp)
    80002a88:	00813823          	sd	s0,16(sp)
    80002a8c:	00913423          	sd	s1,8(sp)
    80002a90:	01213023          	sd	s2,0(sp)
    80002a94:	02010413          	addi	s0,sp,32
    TCB* old = TCB::running;
    80002a98:	00009917          	auipc	s2,0x9
    80002a9c:	26093903          	ld	s2,608(s2) # 8000bcf8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002aa0:	00093483          	ld	s1,0(s2)
    old -> set_status(TCB::SLEEPING);
    80002aa4:	00100593          	li	a1,1
    80002aa8:	00048513          	mv	a0,s1
    80002aac:	00001097          	auipc	ra,0x1
    80002ab0:	864080e7          	jalr	-1948(ra) # 80003310 <_ZN3TCB10set_statusENS_6StatusE>
    TCB::running = Scheduler::get();
    80002ab4:	00000097          	auipc	ra,0x0
    80002ab8:	f60080e7          	jalr	-160(ra) # 80002a14 <_ZN9Scheduler3getEv>
    80002abc:	00a93023          	sd	a0,0(s2)
    if (old != TCB::running) TCB::yield(old, TCB::running);
    80002ac0:	00a48a63          	beq	s1,a0,80002ad4 <_ZN9Scheduler13change_threadEv+0x54>
    80002ac4:	00050593          	mv	a1,a0
    80002ac8:	00048513          	mv	a0,s1
    80002acc:	00000097          	auipc	ra,0x0
    80002ad0:	6d4080e7          	jalr	1748(ra) # 800031a0 <_ZN3TCB5yieldEPS_S0_>
}
    80002ad4:	01813083          	ld	ra,24(sp)
    80002ad8:	01013403          	ld	s0,16(sp)
    80002adc:	00813483          	ld	s1,8(sp)
    80002ae0:	00013903          	ld	s2,0(sp)
    80002ae4:	02010113          	addi	sp,sp,32
    80002ae8:	00008067          	ret

0000000080002aec <_ZN9Scheduler12put_to_sleepEm>:
int Scheduler::put_to_sleep(time_t time) {
    80002aec:	fc010113          	addi	sp,sp,-64
    80002af0:	02113c23          	sd	ra,56(sp)
    80002af4:	02813823          	sd	s0,48(sp)
    80002af8:	02913423          	sd	s1,40(sp)
    80002afc:	03213023          	sd	s2,32(sp)
    80002b00:	01313c23          	sd	s3,24(sp)
    80002b04:	01413823          	sd	s4,16(sp)
    80002b08:	01513423          	sd	s5,8(sp)
    80002b0c:	04010413          	addi	s0,sp,64
    80002b10:	00050993          	mv	s3,a0
    TCB* thread = TCB::running;
    80002b14:	00009797          	auipc	a5,0x9
    80002b18:	1e47b783          	ld	a5,484(a5) # 8000bcf8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002b1c:	0007ba83          	ld	s5,0(a5)
    if (!head_sleeping) {
    80002b20:	00009497          	auipc	s1,0x9
    80002b24:	2704b483          	ld	s1,624(s1) # 8000bd90 <_ZN9Scheduler13head_sleepingE>
    80002b28:	02048e63          	beqz	s1,80002b64 <_ZN9Scheduler12put_to_sleepEm+0x78>
    time_t current_time = 0;
    80002b2c:	00000913          	li	s2,0
    TCB* tmp = head_sleeping, *prev = nullptr;
    80002b30:	00000a13          	li	s4,0
    while (tmp) {
    80002b34:	0e048063          	beqz	s1,80002c14 <_ZN9Scheduler12put_to_sleepEm+0x128>
        current_time += tmp -> get_time_to_sleep();
    80002b38:	00048513          	mv	a0,s1
    80002b3c:	00000097          	auipc	ra,0x0
    80002b40:	7b8080e7          	jalr	1976(ra) # 800032f4 <_ZNK3TCB17get_time_to_sleepEv>
    80002b44:	00a90933          	add	s2,s2,a0
        if (current_time > time) {
    80002b48:	0529e863          	bltu	s3,s2,80002b98 <_ZN9Scheduler12put_to_sleepEm+0xac>
        tmp = tmp -> get_next_sleeping();
    80002b4c:	00048513          	mv	a0,s1
    80002b50:	00000097          	auipc	ra,0x0
    80002b54:	76c080e7          	jalr	1900(ra) # 800032bc <_ZNK3TCB17get_next_sleepingEv>
        prev = tmp;
    80002b58:	00048a13          	mv	s4,s1
        tmp = tmp -> get_next_sleeping();
    80002b5c:	00050493          	mv	s1,a0
    while (tmp) {
    80002b60:	fd5ff06f          	j	80002b34 <_ZN9Scheduler12put_to_sleepEm+0x48>
        head_sleeping = thread;
    80002b64:	00009797          	auipc	a5,0x9
    80002b68:	2357b623          	sd	s5,556(a5) # 8000bd90 <_ZN9Scheduler13head_sleepingE>
        thread -> set_next_sleeping(nullptr);
    80002b6c:	00000593          	li	a1,0
    80002b70:	000a8513          	mv	a0,s5
    80002b74:	00000097          	auipc	ra,0x0
    80002b78:	72c080e7          	jalr	1836(ra) # 800032a0 <_ZN3TCB17set_next_sleepingEPS_>
        thread -> set_time_to_sleep(time);
    80002b7c:	00098593          	mv	a1,s3
    80002b80:	000a8513          	mv	a0,s5
    80002b84:	00000097          	auipc	ra,0x0
    80002b88:	754080e7          	jalr	1876(ra) # 800032d8 <_ZN3TCB17set_time_to_sleepEm>
        change_thread();
    80002b8c:	00000097          	auipc	ra,0x0
    80002b90:	ef4080e7          	jalr	-268(ra) # 80002a80 <_ZN9Scheduler13change_threadEv>
        return 0;
    80002b94:	0b80006f          	j	80002c4c <_ZN9Scheduler12put_to_sleepEm+0x160>
            time_t new_time = time - (current_time - tmp -> get_time_to_sleep());
    80002b98:	00048513          	mv	a0,s1
    80002b9c:	00000097          	auipc	ra,0x0
    80002ba0:	758080e7          	jalr	1880(ra) # 800032f4 <_ZNK3TCB17get_time_to_sleepEv>
    80002ba4:	41250933          	sub	s2,a0,s2
    80002ba8:	013909b3          	add	s3,s2,s3
            thread -> set_time_to_sleep(new_time);
    80002bac:	00098593          	mv	a1,s3
    80002bb0:	000a8513          	mv	a0,s5
    80002bb4:	00000097          	auipc	ra,0x0
    80002bb8:	724080e7          	jalr	1828(ra) # 800032d8 <_ZN3TCB17set_time_to_sleepEm>
            thread -> set_next_sleeping(tmp);
    80002bbc:	00048593          	mv	a1,s1
    80002bc0:	000a8513          	mv	a0,s5
    80002bc4:	00000097          	auipc	ra,0x0
    80002bc8:	6dc080e7          	jalr	1756(ra) # 800032a0 <_ZN3TCB17set_next_sleepingEPS_>
            if (prev) prev -> set_next_sleeping(thread);
    80002bcc:	020a0e63          	beqz	s4,80002c08 <_ZN9Scheduler12put_to_sleepEm+0x11c>
    80002bd0:	000a8593          	mv	a1,s5
    80002bd4:	000a0513          	mv	a0,s4
    80002bd8:	00000097          	auipc	ra,0x0
    80002bdc:	6c8080e7          	jalr	1736(ra) # 800032a0 <_ZN3TCB17set_next_sleepingEPS_>
            tmp -> set_time_to_sleep(tmp -> get_time_to_sleep() - new_time);
    80002be0:	00048513          	mv	a0,s1
    80002be4:	00000097          	auipc	ra,0x0
    80002be8:	710080e7          	jalr	1808(ra) # 800032f4 <_ZNK3TCB17get_time_to_sleepEv>
    80002bec:	413505b3          	sub	a1,a0,s3
    80002bf0:	00048513          	mv	a0,s1
    80002bf4:	00000097          	auipc	ra,0x0
    80002bf8:	6e4080e7          	jalr	1764(ra) # 800032d8 <_ZN3TCB17set_time_to_sleepEm>
            change_thread();
    80002bfc:	00000097          	auipc	ra,0x0
    80002c00:	e84080e7          	jalr	-380(ra) # 80002a80 <_ZN9Scheduler13change_threadEv>
            return 0;
    80002c04:	0480006f          	j	80002c4c <_ZN9Scheduler12put_to_sleepEm+0x160>
            else head_sleeping = thread;
    80002c08:	00009797          	auipc	a5,0x9
    80002c0c:	1957b423          	sd	s5,392(a5) # 8000bd90 <_ZN9Scheduler13head_sleepingE>
    80002c10:	fd1ff06f          	j	80002be0 <_ZN9Scheduler12put_to_sleepEm+0xf4>
    thread -> set_time_to_sleep(time - current_time);
    80002c14:	412985b3          	sub	a1,s3,s2
    80002c18:	000a8513          	mv	a0,s5
    80002c1c:	00000097          	auipc	ra,0x0
    80002c20:	6bc080e7          	jalr	1724(ra) # 800032d8 <_ZN3TCB17set_time_to_sleepEm>
    prev -> set_next_sleeping(thread);
    80002c24:	000a8593          	mv	a1,s5
    80002c28:	000a0513          	mv	a0,s4
    80002c2c:	00000097          	auipc	ra,0x0
    80002c30:	674080e7          	jalr	1652(ra) # 800032a0 <_ZN3TCB17set_next_sleepingEPS_>
    thread -> set_next_sleeping(nullptr);
    80002c34:	00000593          	li	a1,0
    80002c38:	000a8513          	mv	a0,s5
    80002c3c:	00000097          	auipc	ra,0x0
    80002c40:	664080e7          	jalr	1636(ra) # 800032a0 <_ZN3TCB17set_next_sleepingEPS_>
    change_thread();
    80002c44:	00000097          	auipc	ra,0x0
    80002c48:	e3c080e7          	jalr	-452(ra) # 80002a80 <_ZN9Scheduler13change_threadEv>
}
    80002c4c:	00000513          	li	a0,0
    80002c50:	03813083          	ld	ra,56(sp)
    80002c54:	03013403          	ld	s0,48(sp)
    80002c58:	02813483          	ld	s1,40(sp)
    80002c5c:	02013903          	ld	s2,32(sp)
    80002c60:	01813983          	ld	s3,24(sp)
    80002c64:	01013a03          	ld	s4,16(sp)
    80002c68:	00813a83          	ld	s5,8(sp)
    80002c6c:	04010113          	addi	sp,sp,64
    80002c70:	00008067          	ret

0000000080002c74 <_ZN5RiscV10popSppSpieEv>:
    SUPERVISOR_INTERRUPT = 0x0000000000000009UL,
};

/// used in thread wrapper function when initializing thread because thread stack is empty
/// pc = (sepc = ra)
void RiscV::popSppSpie() {
    80002c74:	ff010113          	addi	sp,sp,-16
    80002c78:	00813423          	sd	s0,8(sp)
    80002c7c:	01010413          	addi	s0,sp,16
    /// conditionally return to User mode
    if (TCB::running -> function_body && TCB::running->function_body != kernelConsoleOutput) mc_sstatus(SSTATUS_SPP);
    80002c80:	00009797          	auipc	a5,0x9
    80002c84:	0787b783          	ld	a5,120(a5) # 8000bcf8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002c88:	0007b783          	ld	a5,0(a5)
    80002c8c:	0207b783          	ld	a5,32(a5)
    80002c90:	00078c63          	beqz	a5,80002ca8 <_ZN5RiscV10popSppSpieEv+0x34>
    80002c94:	00009717          	auipc	a4,0x9
    80002c98:	05c73703          	ld	a4,92(a4) # 8000bcf0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002c9c:	00e78663          	beq	a5,a4,80002ca8 <_ZN5RiscV10popSppSpieEv+0x34>
}

inline void RiscV::mc_sstatus(uint64 mask) {
    __asm__ volatile ("csrc sstatus, %0" : : "r"(mask));
    80002ca0:	10000793          	li	a5,256
    80002ca4:	1007b073          	csrc	sstatus,a5
    __asm__ volatile("csrw sepc, ra");
    80002ca8:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80002cac:	10200073          	sret
}
    80002cb0:	00813403          	ld	s0,8(sp)
    80002cb4:	01010113          	addi	sp,sp,16
    80002cb8:	00008067          	ret

0000000080002cbc <_ZN5RiscV22handle_supervisor_trapEv>:

/// interrupt handler
void RiscV::handle_supervisor_trap() {
    80002cbc:	f9010113          	addi	sp,sp,-112
    80002cc0:	06113423          	sd	ra,104(sp)
    80002cc4:	06813023          	sd	s0,96(sp)
    80002cc8:	04913c23          	sd	s1,88(sp)
    80002ccc:	05213823          	sd	s2,80(sp)
    80002cd0:	05313423          	sd	s3,72(sp)
    80002cd4:	07010413          	addi	s0,sp,112
    /// read values from registers
    uint64 syscall_code, a1, a2, a3, a4;
    __asm__ volatile("mv %0, a0" : "=r"(syscall_code));
    80002cd8:	00050813          	mv	a6,a0
    __asm__ volatile("mv %0, a1" : "=r"(a1));
    80002cdc:	00058513          	mv	a0,a1
    __asm__ volatile("mv %0, a2" : "=r"(a2));
    80002ce0:	00060593          	mv	a1,a2
    __asm__ volatile("mv %0, a3" : "=r"(a3));
    80002ce4:	00068613          	mv	a2,a3
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    80002ce8:	00070693          	mv	a3,a4
    __asm__ volatile ("csrr %0, scause" : "=r"(scause));
    80002cec:	142027f3          	csrr	a5,scause
    80002cf0:	f8f43c23          	sd	a5,-104(s0)
    return scause;
    80002cf4:	f9843703          	ld	a4,-104(s0)

    uint64 scause = read_scause();

    /// interrupt caused by Timer
    if (scause == SOFTWARE_INTERRUPT) {
    80002cf8:	fff00793          	li	a5,-1
    80002cfc:	03f79793          	slli	a5,a5,0x3f
    80002d00:	00178793          	addi	a5,a5,1
    80002d04:	04f70263          	beq	a4,a5,80002d48 <_ZN5RiscV22handle_supervisor_trapEv+0x8c>
            write_sepc(sepc);
        }
    }

    /// External interrupt (Console)
    else if (scause == HARDWARE_INTERRUPT) {
    80002d08:	fff00793          	li	a5,-1
    80002d0c:	03f79793          	slli	a5,a5,0x3f
    80002d10:	00978793          	addi	a5,a5,9
    80002d14:	0ef70863          	beq	a4,a5,80002e04 <_ZN5RiscV22handle_supervisor_trapEv+0x148>
        write_sstatus(sstatus);
        mc_sip(SIP_SEIP);
    }

    /// illegal instruction
    else if (scause == INVALID_INTERRUPT) {
    80002d18:	00200793          	li	a5,2
    80002d1c:	16f70463          	beq	a4,a5,80002e84 <_ZN5RiscV22handle_supervisor_trapEv+0x1c8>
        __asm__ volatile("mv a0, %0" : : "r"(val));
        return;
    }

    /// interrupt from supervisor / user mode
    else if (scause == USER_INTERRUPT || scause == SUPERVISOR_INTERRUPT) {
    80002d20:	ff870713          	addi	a4,a4,-8
    80002d24:	00100793          	li	a5,1
    80002d28:	16e7f463          	bgeu	a5,a4,80002e90 <_ZN5RiscV22handle_supervisor_trapEv+0x1d4>
        }

        write_sepc(sepc);
        write_sstatus(sstatus);
    }
    80002d2c:	06813083          	ld	ra,104(sp)
    80002d30:	06013403          	ld	s0,96(sp)
    80002d34:	05813483          	ld	s1,88(sp)
    80002d38:	05013903          	ld	s2,80(sp)
    80002d3c:	04813983          	ld	s3,72(sp)
    80002d40:	07010113          	addi	sp,sp,112
    80002d44:	00008067          	ret
    __asm__ volatile ("csrc sip, %0" : : "r"(mask));
    80002d48:	00200793          	li	a5,2
    80002d4c:	1447b073          	csrc	sip,a5
        TCB* first_waiting = Scheduler::head_sleeping;
    80002d50:	00009797          	auipc	a5,0x9
    80002d54:	f787b783          	ld	a5,-136(a5) # 8000bcc8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002d58:	0007b483          	ld	s1,0(a5)
        if (first_waiting) {
    80002d5c:	04048463          	beqz	s1,80002da4 <_ZN5RiscV22handle_supervisor_trapEv+0xe8>
            --first_waiting -> time_to_sleep;
    80002d60:	0484b783          	ld	a5,72(s1)
    80002d64:	fff78793          	addi	a5,a5,-1
    80002d68:	04f4b423          	sd	a5,72(s1)
            while (first_waiting && first_waiting -> time_to_sleep <= 0) {
    80002d6c:	02048c63          	beqz	s1,80002da4 <_ZN5RiscV22handle_supervisor_trapEv+0xe8>
    80002d70:	0484b783          	ld	a5,72(s1)
    80002d74:	02079863          	bnez	a5,80002da4 <_ZN5RiscV22handle_supervisor_trapEv+0xe8>
                Scheduler::put(first_waiting);
    80002d78:	00048513          	mv	a0,s1
    80002d7c:	00000097          	auipc	ra,0x0
    80002d80:	c38080e7          	jalr	-968(ra) # 800029b4 <_ZN9Scheduler3putEP3TCB>
                first_waiting -> status = TCB::RUNNABLE;
    80002d84:	0004ac23          	sw	zero,24(s1)
                first_waiting = first_waiting -> next_sleeping;
    80002d88:	0504b783          	ld	a5,80(s1)
                tmp -> next_sleeping = nullptr;
    80002d8c:	0404b823          	sd	zero,80(s1)
                Scheduler::head_sleeping = first_waiting;
    80002d90:	00009717          	auipc	a4,0x9
    80002d94:	f3873703          	ld	a4,-200(a4) # 8000bcc8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002d98:	00f73023          	sd	a5,0(a4)
                first_waiting = first_waiting -> next_sleeping;
    80002d9c:	00078493          	mv	s1,a5
            while (first_waiting && first_waiting -> time_to_sleep <= 0) {
    80002da0:	fcdff06f          	j	80002d6c <_ZN5RiscV22handle_supervisor_trapEv+0xb0>
        ++TCB::time_slice_counter;
    80002da4:	00009717          	auipc	a4,0x9
    80002da8:	f4473703          	ld	a4,-188(a4) # 8000bce8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002dac:	00073783          	ld	a5,0(a4)
    80002db0:	00178793          	addi	a5,a5,1
    80002db4:	00f73023          	sd	a5,0(a4)
        if (TCB::time_slice_counter >= TCB::running -> time_slice) {
    80002db8:	00009717          	auipc	a4,0x9
    80002dbc:	f4073703          	ld	a4,-192(a4) # 8000bcf8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002dc0:	00073703          	ld	a4,0(a4)
    80002dc4:	03873703          	ld	a4,56(a4)
    80002dc8:	f6e7e2e3          	bltu	a5,a4,80002d2c <_ZN5RiscV22handle_supervisor_trapEv+0x70>
    __asm__ volatile ("csrr %0, sepc" : "=r"(sepc));
    80002dcc:	141027f3          	csrr	a5,sepc
    80002dd0:	faf43423          	sd	a5,-88(s0)
    return sepc;
    80002dd4:	fa843483          	ld	s1,-88(s0)
}

inline uint64 RiscV::read_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    80002dd8:	100027f3          	csrr	a5,sstatus
    80002ddc:	faf43023          	sd	a5,-96(s0)
    return sstatus;
    80002de0:	fa043903          	ld	s2,-96(s0)
            TCB::time_slice_counter = 0;
    80002de4:	00009797          	auipc	a5,0x9
    80002de8:	f047b783          	ld	a5,-252(a5) # 8000bce8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002dec:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80002df0:	00000097          	auipc	ra,0x0
    80002df4:	40c080e7          	jalr	1036(ra) # 800031fc <_ZN3TCB8dispatchEv>
}

inline void RiscV::write_sstatus(uint64 val) {
    __asm__ volatile ("csrw sstatus, %0" : : "r"(val));
    80002df8:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %0" : : "r"(val));
    80002dfc:	14149073          	csrw	sepc,s1
}
    80002e00:	f2dff06f          	j	80002d2c <_ZN5RiscV22handle_supervisor_trapEv+0x70>
    __asm__ volatile ("csrr %0, sepc" : "=r"(sepc));
    80002e04:	141027f3          	csrr	a5,sepc
    80002e08:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    80002e0c:	fb843983          	ld	s3,-72(s0)
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    80002e10:	100027f3          	csrr	a5,sstatus
    80002e14:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    80002e18:	fb043903          	ld	s2,-80(s0)
        int irq = plic_claim();
    80002e1c:	00004097          	auipc	ra,0x4
    80002e20:	608080e7          	jalr	1544(ra) # 80007424 <plic_claim>
    80002e24:	00050493          	mv	s1,a0
        if (irq == CONSOLE_IRQ) {
    80002e28:	00a00793          	li	a5,10
    80002e2c:	02f50263          	beq	a0,a5,80002e50 <_ZN5RiscV22handle_supervisor_trapEv+0x194>
        plic_complete(irq);
    80002e30:	00048513          	mv	a0,s1
    80002e34:	00004097          	auipc	ra,0x4
    80002e38:	628080e7          	jalr	1576(ra) # 8000745c <plic_complete>
    __asm__ volatile ("csrw sepc, %0" : : "r"(val));
    80002e3c:	14199073          	csrw	sepc,s3
    __asm__ volatile ("csrw sstatus, %0" : : "r"(val));
    80002e40:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrc sip, %0" : : "r"(mask));
    80002e44:	20000793          	li	a5,512
    80002e48:	1447b073          	csrc	sip,a5
}
    80002e4c:	ee1ff06f          	j	80002d2c <_ZN5RiscV22handle_supervisor_trapEv+0x70>
            while (*(char *) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT) {
    80002e50:	00009797          	auipc	a5,0x9
    80002e54:	e687b783          	ld	a5,-408(a5) # 8000bcb8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002e58:	0007b783          	ld	a5,0(a5)
    80002e5c:	0007c783          	lbu	a5,0(a5)
    80002e60:	0017f793          	andi	a5,a5,1
    80002e64:	fc0786e3          	beqz	a5,80002e30 <_ZN5RiscV22handle_supervisor_trapEv+0x174>
                char c = *(char *) CONSOLE_RX_DATA;
    80002e68:	00009797          	auipc	a5,0x9
    80002e6c:	e487b783          	ld	a5,-440(a5) # 8000bcb0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002e70:	0007b783          	ld	a5,0(a5)
                Con::putc_input(c);
    80002e74:	0007c503          	lbu	a0,0(a5)
    80002e78:	fffff097          	auipc	ra,0xfffff
    80002e7c:	fc0080e7          	jalr	-64(ra) # 80001e38 <_ZN3Con10putc_inputEc>
            while (*(char *) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT) {
    80002e80:	fd1ff06f          	j	80002e50 <_ZN5RiscV22handle_supervisor_trapEv+0x194>
        __asm__ volatile("mv a0, %0" : : "r"(val));
    80002e84:	00100793          	li	a5,1
    80002e88:	00078513          	mv	a0,a5
        return;
    80002e8c:	ea1ff06f          	j	80002d2c <_ZN5RiscV22handle_supervisor_trapEv+0x70>
    __asm__ volatile ("csrr %0, sepc" : "=r"(sepc));
    80002e90:	141027f3          	csrr	a5,sepc
    80002e94:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80002e98:	fc843483          	ld	s1,-56(s0)
        uint64 sepc = read_sepc() + 4;
    80002e9c:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    80002ea0:	100027f3          	csrr	a5,sstatus
    80002ea4:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80002ea8:	fc043903          	ld	s2,-64(s0)
        switch(syscall_code) {
    80002eac:	04200793          	li	a5,66
    80002eb0:	0307e463          	bltu	a5,a6,80002ed8 <_ZN5RiscV22handle_supervisor_trapEv+0x21c>
    80002eb4:	00281813          	slli	a6,a6,0x2
    80002eb8:	00006717          	auipc	a4,0x6
    80002ebc:	17870713          	addi	a4,a4,376 # 80009030 <CONSOLE_STATUS+0x20>
    80002ec0:	00e80833          	add	a6,a6,a4
    80002ec4:	00082783          	lw	a5,0(a6)
    80002ec8:	00e787b3          	add	a5,a5,a4
    80002ecc:	00078067          	jr	a5
                MemoryAllocator::mem_alloc((size_t) a1);
    80002ed0:	fffff097          	auipc	ra,0xfffff
    80002ed4:	4c8080e7          	jalr	1224(ra) # 80002398 <_ZN15MemoryAllocator9mem_allocEm>
    __asm__ volatile ("csrw sepc, %0" : : "r"(val));
    80002ed8:	14149073          	csrw	sepc,s1
    __asm__ volatile ("csrw sstatus, %0" : : "r"(val));
    80002edc:	10091073          	csrw	sstatus,s2
}
    80002ee0:	e4dff06f          	j	80002d2c <_ZN5RiscV22handle_supervisor_trapEv+0x70>
                MemoryAllocator::mem_free((void *) a1);
    80002ee4:	fffff097          	auipc	ra,0xfffff
    80002ee8:	620080e7          	jalr	1568(ra) # 80002504 <_ZN15MemoryAllocator8mem_freeEPv>
                break;
    80002eec:	fedff06f          	j	80002ed8 <_ZN5RiscV22handle_supervisor_trapEv+0x21c>
                TCB::thread_create((thread_t *) a1, (void (*)(void *)) a2, (void *) a3, (void *) a4);
    80002ef0:	00000097          	auipc	ra,0x0
    80002ef4:	518080e7          	jalr	1304(ra) # 80003408 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>
                break;
    80002ef8:	fe1ff06f          	j	80002ed8 <_ZN5RiscV22handle_supervisor_trapEv+0x21c>
                TCB::thread_exit();
    80002efc:	00000097          	auipc	ra,0x0
    80002f00:	430080e7          	jalr	1072(ra) # 8000332c <_ZN3TCB11thread_exitEv>
                break;
    80002f04:	fd5ff06f          	j	80002ed8 <_ZN5RiscV22handle_supervisor_trapEv+0x21c>
                TCB::dispatch();
    80002f08:	00000097          	auipc	ra,0x0
    80002f0c:	2f4080e7          	jalr	756(ra) # 800031fc <_ZN3TCB8dispatchEv>
                break;
    80002f10:	fc9ff06f          	j	80002ed8 <_ZN5RiscV22handle_supervisor_trapEv+0x21c>
                Sem::open((sem_t *) a1, a2);
    80002f14:	0005859b          	sext.w	a1,a1
    80002f18:	fffff097          	auipc	ra,0xfffff
    80002f1c:	a34080e7          	jalr	-1484(ra) # 8000194c <_ZN3Sem4openEPPS_j>
                break;
    80002f20:	fb9ff06f          	j	80002ed8 <_ZN5RiscV22handle_supervisor_trapEv+0x21c>
                Sem::close((sem_t) a1);
    80002f24:	fffff097          	auipc	ra,0xfffff
    80002f28:	890080e7          	jalr	-1904(ra) # 800017b4 <_ZN3Sem5closeEPS_>
                break;
    80002f2c:	fadff06f          	j	80002ed8 <_ZN5RiscV22handle_supervisor_trapEv+0x21c>
                Sem::wait((sem_t) a1);
    80002f30:	fffff097          	auipc	ra,0xfffff
    80002f34:	8f0080e7          	jalr	-1808(ra) # 80001820 <_ZN3Sem4waitEPS_>
                break;
    80002f38:	fa1ff06f          	j	80002ed8 <_ZN5RiscV22handle_supervisor_trapEv+0x21c>
                Sem::signal((sem_t) a1);
    80002f3c:	fffff097          	auipc	ra,0xfffff
    80002f40:	938080e7          	jalr	-1736(ra) # 80001874 <_ZN3Sem6signalEPS_>
                break;
    80002f44:	f95ff06f          	j	80002ed8 <_ZN5RiscV22handle_supervisor_trapEv+0x21c>
                Sem::timedWait((sem_t) a1, (time_t) a2);
    80002f48:	fffff097          	auipc	ra,0xfffff
    80002f4c:	980080e7          	jalr	-1664(ra) # 800018c8 <_ZN3Sem9timedWaitEPS_m>
                break;
    80002f50:	f89ff06f          	j	80002ed8 <_ZN5RiscV22handle_supervisor_trapEv+0x21c>
                Sem::tryWait((sem_t) a1);
    80002f54:	fffff097          	auipc	ra,0xfffff
    80002f58:	990080e7          	jalr	-1648(ra) # 800018e4 <_ZN3Sem7tryWaitEPS_>
                break;
    80002f5c:	f7dff06f          	j	80002ed8 <_ZN5RiscV22handle_supervisor_trapEv+0x21c>
                Scheduler::put_to_sleep((time_t) a1);
    80002f60:	00000097          	auipc	ra,0x0
    80002f64:	b8c080e7          	jalr	-1140(ra) # 80002aec <_ZN9Scheduler12put_to_sleepEm>
                break;
    80002f68:	f71ff06f          	j	80002ed8 <_ZN5RiscV22handle_supervisor_trapEv+0x21c>
                Con::getc_input();
    80002f6c:	fffff097          	auipc	ra,0xfffff
    80002f70:	f00080e7          	jalr	-256(ra) # 80001e6c <_ZN3Con10getc_inputEv>
                break;
    80002f74:	f65ff06f          	j	80002ed8 <_ZN5RiscV22handle_supervisor_trapEv+0x21c>
                Con::putc_output((char) a1);
    80002f78:	0ff57513          	andi	a0,a0,255
    80002f7c:	fffff097          	auipc	ra,0xfffff
    80002f80:	e58080e7          	jalr	-424(ra) # 80001dd4 <_ZN3Con11putc_outputEc>
                break;
    80002f84:	f55ff06f          	j	80002ed8 <_ZN5RiscV22handle_supervisor_trapEv+0x21c>

0000000080002f88 <_ZN10ThreadList9get_firstEv>:

void ThreadList::push_back(TCB *thread) {
    tail = (head ? tail -> next : head) = new Node(thread);
}

TCB *ThreadList::get_first() {
    80002f88:	ff010113          	addi	sp,sp,-16
    80002f8c:	00813423          	sd	s0,8(sp)
    80002f90:	01010413          	addi	s0,sp,16
    return (head ? head -> data : nullptr);
    80002f94:	00053503          	ld	a0,0(a0)
    80002f98:	00050463          	beqz	a0,80002fa0 <_ZN10ThreadList9get_firstEv+0x18>
    80002f9c:	00053503          	ld	a0,0(a0)
}
    80002fa0:	00813403          	ld	s0,8(sp)
    80002fa4:	01010113          	addi	sp,sp,16
    80002fa8:	00008067          	ret

0000000080002fac <_ZN10ThreadList4NodenwEm>:

void ThreadList::free() {
    while (get_first()) remove_first();
}

void *ThreadList::Node::operator new(size_t size) {
    80002fac:	ff010113          	addi	sp,sp,-16
    80002fb0:	00113423          	sd	ra,8(sp)
    80002fb4:	00813023          	sd	s0,0(sp)
    80002fb8:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    80002fbc:	fffff097          	auipc	ra,0xfffff
    80002fc0:	788080e7          	jalr	1928(ra) # 80002744 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80002fc4:	fffff097          	auipc	ra,0xfffff
    80002fc8:	3d4080e7          	jalr	980(ra) # 80002398 <_ZN15MemoryAllocator9mem_allocEm>
}
    80002fcc:	00813083          	ld	ra,8(sp)
    80002fd0:	00013403          	ld	s0,0(sp)
    80002fd4:	01010113          	addi	sp,sp,16
    80002fd8:	00008067          	ret

0000000080002fdc <_ZN10ThreadList9push_backEP3TCB>:
void ThreadList::push_back(TCB *thread) {
    80002fdc:	fe010113          	addi	sp,sp,-32
    80002fe0:	00113c23          	sd	ra,24(sp)
    80002fe4:	00813823          	sd	s0,16(sp)
    80002fe8:	00913423          	sd	s1,8(sp)
    80002fec:	01213023          	sd	s2,0(sp)
    80002ff0:	02010413          	addi	s0,sp,32
    80002ff4:	00050493          	mv	s1,a0
    80002ff8:	00058913          	mv	s2,a1
    tail = (head ? tail -> next : head) = new Node(thread);
    80002ffc:	01000513          	li	a0,16
    80003000:	00000097          	auipc	ra,0x0
    80003004:	fac080e7          	jalr	-84(ra) # 80002fac <_ZN10ThreadList4NodenwEm>
        struct Node *next;

        void* operator new(size_t size);
        void operator delete(void* addr);

        explicit Node(TCB* data) : data(data), next(nullptr) {}
    80003008:	01253023          	sd	s2,0(a0)
    8000300c:	00053423          	sd	zero,8(a0)
    80003010:	0004b783          	ld	a5,0(s1)
    80003014:	02078463          	beqz	a5,8000303c <_ZN10ThreadList9push_backEP3TCB+0x60>
    80003018:	0084b783          	ld	a5,8(s1)
    8000301c:	00a7b423          	sd	a0,8(a5)
    80003020:	00a4b423          	sd	a0,8(s1)
}
    80003024:	01813083          	ld	ra,24(sp)
    80003028:	01013403          	ld	s0,16(sp)
    8000302c:	00813483          	ld	s1,8(sp)
    80003030:	00013903          	ld	s2,0(sp)
    80003034:	02010113          	addi	sp,sp,32
    80003038:	00008067          	ret
    tail = (head ? tail -> next : head) = new Node(thread);
    8000303c:	00a4b023          	sd	a0,0(s1)
    80003040:	fe1ff06f          	j	80003020 <_ZN10ThreadList9push_backEP3TCB+0x44>

0000000080003044 <_ZN10ThreadList4NodedlEPv>:

void ThreadList::Node::operator delete(void *addr) {
    80003044:	ff010113          	addi	sp,sp,-16
    80003048:	00113423          	sd	ra,8(sp)
    8000304c:	00813023          	sd	s0,0(sp)
    80003050:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    80003054:	fffff097          	auipc	ra,0xfffff
    80003058:	4b0080e7          	jalr	1200(ra) # 80002504 <_ZN15MemoryAllocator8mem_freeEPv>
}
    8000305c:	00813083          	ld	ra,8(sp)
    80003060:	00013403          	ld	s0,0(sp)
    80003064:	01010113          	addi	sp,sp,16
    80003068:	00008067          	ret

000000008000306c <_ZN10ThreadList12remove_firstEv>:
TCB *ThreadList::remove_first() {
    8000306c:	fe010113          	addi	sp,sp,-32
    80003070:	00113c23          	sd	ra,24(sp)
    80003074:	00813823          	sd	s0,16(sp)
    80003078:	00913423          	sd	s1,8(sp)
    8000307c:	02010413          	addi	s0,sp,32
    80003080:	00050793          	mv	a5,a0
    if (!head) return nullptr;
    80003084:	00053503          	ld	a0,0(a0)
    80003088:	02050863          	beqz	a0,800030b8 <_ZN10ThreadList12remove_firstEv+0x4c>
    TCB* thread = tmp -> data;
    8000308c:	00053483          	ld	s1,0(a0)
    head = head -> next;
    80003090:	00853703          	ld	a4,8(a0)
    80003094:	00e7b023          	sd	a4,0(a5)
    delete tmp;
    80003098:	00000097          	auipc	ra,0x0
    8000309c:	fac080e7          	jalr	-84(ra) # 80003044 <_ZN10ThreadList4NodedlEPv>
}
    800030a0:	00048513          	mv	a0,s1
    800030a4:	01813083          	ld	ra,24(sp)
    800030a8:	01013403          	ld	s0,16(sp)
    800030ac:	00813483          	ld	s1,8(sp)
    800030b0:	02010113          	addi	sp,sp,32
    800030b4:	00008067          	ret
    if (!head) return nullptr;
    800030b8:	00050493          	mv	s1,a0
    800030bc:	fe5ff06f          	j	800030a0 <_ZN10ThreadList12remove_firstEv+0x34>

00000000800030c0 <_ZN10ThreadList4freeEv>:
void ThreadList::free() {
    800030c0:	fe010113          	addi	sp,sp,-32
    800030c4:	00113c23          	sd	ra,24(sp)
    800030c8:	00813823          	sd	s0,16(sp)
    800030cc:	00913423          	sd	s1,8(sp)
    800030d0:	02010413          	addi	s0,sp,32
    800030d4:	00050493          	mv	s1,a0
    while (get_first()) remove_first();
    800030d8:	00048513          	mv	a0,s1
    800030dc:	00000097          	auipc	ra,0x0
    800030e0:	eac080e7          	jalr	-340(ra) # 80002f88 <_ZN10ThreadList9get_firstEv>
    800030e4:	00050a63          	beqz	a0,800030f8 <_ZN10ThreadList4freeEv+0x38>
    800030e8:	00048513          	mv	a0,s1
    800030ec:	00000097          	auipc	ra,0x0
    800030f0:	f80080e7          	jalr	-128(ra) # 8000306c <_ZN10ThreadList12remove_firstEv>
    800030f4:	fe5ff06f          	j	800030d8 <_ZN10ThreadList4freeEv+0x18>
}
    800030f8:	01813083          	ld	ra,24(sp)
    800030fc:	01013403          	ld	s0,16(sp)
    80003100:	00813483          	ld	s1,8(sp)
    80003104:	02010113          	addi	sp,sp,32
    80003108:	00008067          	ret

000000008000310c <_ZN3TCBC1EPFvPvES0_S0_>:

TCB::TCB(void (*function_body)(void *), void *arg, void *stack) {
    context = {
            (uint64) wrapper_function,
            /// stack starts from max address, rises to lower locations
            (uint64) (stack ? (uint64) stack + DEFAULT_STACK_SIZE - 1 : 0)
    8000310c:	08068463          	beqz	a3,80003194 <_ZN3TCBC1EPFvPvES0_S0_+0x88>
    80003110:	000017b7          	lui	a5,0x1
    80003114:	fff78793          	addi	a5,a5,-1 # fff <_entry-0x7ffff001>
    80003118:	00f687b3          	add	a5,a3,a5
    context = {
    8000311c:	00000717          	auipc	a4,0x0
    80003120:	24c70713          	addi	a4,a4,588 # 80003368 <_ZN3TCB16wrapper_functionEv>
    80003124:	00e53423          	sd	a4,8(a0)
    80003128:	00f53823          	sd	a5,16(a0)
    };
    id = cnt++;
    8000312c:	00009717          	auipc	a4,0x9
    80003130:	c6c70713          	addi	a4,a4,-916 # 8000bd98 <_ZN3TCB3cntE>
    80003134:	00072783          	lw	a5,0(a4)
    80003138:	0017881b          	addiw	a6,a5,1
    8000313c:	01072023          	sw	a6,0(a4)
    80003140:	00f52023          	sw	a5,0(a0)
    status = RUNNABLE;
    80003144:	00052c23          	sw	zero,24(a0)
    this -> function_body = function_body;
    80003148:	02b53023          	sd	a1,32(a0)
    this -> arg = arg;
    8000314c:	02c53423          	sd	a2,40(a0)
    this -> stack = stack;
    80003150:	02d53823          	sd	a3,48(a0)
    time_slice = DEFAULT_TIME_SLICE;
    80003154:	00200793          	li	a5,2
    80003158:	02f53c23          	sd	a5,56(a0)
    time_to_sleep = 0;
    8000315c:	04053423          	sd	zero,72(a0)
    next_ready = nullptr;
    80003160:	04053023          	sd	zero,64(a0)
    next_sleeping = nullptr;
    80003164:	04053823          	sd	zero,80(a0)
    if (function_body) Scheduler::put(this);
    80003168:	02058a63          	beqz	a1,8000319c <_ZN3TCBC1EPFvPvES0_S0_+0x90>
TCB::TCB(void (*function_body)(void *), void *arg, void *stack) {
    8000316c:	ff010113          	addi	sp,sp,-16
    80003170:	00113423          	sd	ra,8(sp)
    80003174:	00813023          	sd	s0,0(sp)
    80003178:	01010413          	addi	s0,sp,16
    if (function_body) Scheduler::put(this);
    8000317c:	00000097          	auipc	ra,0x0
    80003180:	838080e7          	jalr	-1992(ra) # 800029b4 <_ZN9Scheduler3putEP3TCB>
}
    80003184:	00813083          	ld	ra,8(sp)
    80003188:	00013403          	ld	s0,0(sp)
    8000318c:	01010113          	addi	sp,sp,16
    80003190:	00008067          	ret
            (uint64) (stack ? (uint64) stack + DEFAULT_STACK_SIZE - 1 : 0)
    80003194:	00000793          	li	a5,0
    80003198:	f85ff06f          	j	8000311c <_ZN3TCBC1EPFvPvES0_S0_+0x10>
    8000319c:	00008067          	ret

00000000800031a0 <_ZN3TCB5yieldEPS_S0_>:
    RiscV::popSppSpie();
    if (running -> function_body) running -> function_body(running -> arg);
    thread_exit();
}

void TCB::yield(TCB *old_running, TCB *new_running) {
    800031a0:	fe010113          	addi	sp,sp,-32
    800031a4:	00113c23          	sd	ra,24(sp)
    800031a8:	00813823          	sd	s0,16(sp)
    800031ac:	00913423          	sd	s1,8(sp)
    800031b0:	01213023          	sd	s2,0(sp)
    800031b4:	02010413          	addi	s0,sp,32
    800031b8:	00050493          	mv	s1,a0
    800031bc:	00058913          	mv	s2,a1
    RiscV::push_registers();
    800031c0:	ffffe097          	auipc	ra,0xffffe
    800031c4:	f48080e7          	jalr	-184(ra) # 80001108 <_ZN5RiscV14push_registersEv>
    if (old_running != new_running) context_switch(&old_running -> context, &new_running -> context);
    800031c8:	01248a63          	beq	s1,s2,800031dc <_ZN3TCB5yieldEPS_S0_+0x3c>
    800031cc:	00890593          	addi	a1,s2,8
    800031d0:	00848513          	addi	a0,s1,8
    800031d4:	ffffe097          	auipc	ra,0xffffe
    800031d8:	034080e7          	jalr	52(ra) # 80001208 <_ZN3TCB14context_switchEPNS_7ContextES1_>
    RiscV::pop_registers();
    800031dc:	ffffe097          	auipc	ra,0xffffe
    800031e0:	fac080e7          	jalr	-84(ra) # 80001188 <_ZN5RiscV13pop_registersEv>
}
    800031e4:	01813083          	ld	ra,24(sp)
    800031e8:	01013403          	ld	s0,16(sp)
    800031ec:	00813483          	ld	s1,8(sp)
    800031f0:	00013903          	ld	s2,0(sp)
    800031f4:	02010113          	addi	sp,sp,32
    800031f8:	00008067          	ret

00000000800031fc <_ZN3TCB8dispatchEv>:

void TCB::dispatch() {
    800031fc:	fe010113          	addi	sp,sp,-32
    80003200:	00113c23          	sd	ra,24(sp)
    80003204:	00813823          	sd	s0,16(sp)
    80003208:	00913423          	sd	s1,8(sp)
    8000320c:	02010413          	addi	s0,sp,32
    TCB* old = running;
    80003210:	00009497          	auipc	s1,0x9
    80003214:	b904b483          	ld	s1,-1136(s1) # 8000bda0 <_ZN3TCB7runningE>
    if (old -> status == RUNNABLE) Scheduler::put(old);
    80003218:	0184a783          	lw	a5,24(s1)
    8000321c:	02078e63          	beqz	a5,80003258 <_ZN3TCB8dispatchEv+0x5c>
    running = Scheduler::get();
    80003220:	fffff097          	auipc	ra,0xfffff
    80003224:	7f4080e7          	jalr	2036(ra) # 80002a14 <_ZN9Scheduler3getEv>
    80003228:	00050593          	mv	a1,a0
    8000322c:	00009797          	auipc	a5,0x9
    80003230:	b6a7ba23          	sd	a0,-1164(a5) # 8000bda0 <_ZN3TCB7runningE>
    if (old != running) yield(old, running);
    80003234:	00a48863          	beq	s1,a0,80003244 <_ZN3TCB8dispatchEv+0x48>
    80003238:	00048513          	mv	a0,s1
    8000323c:	00000097          	auipc	ra,0x0
    80003240:	f64080e7          	jalr	-156(ra) # 800031a0 <_ZN3TCB5yieldEPS_S0_>
}
    80003244:	01813083          	ld	ra,24(sp)
    80003248:	01013403          	ld	s0,16(sp)
    8000324c:	00813483          	ld	s1,8(sp)
    80003250:	02010113          	addi	sp,sp,32
    80003254:	00008067          	ret
    if (old -> status == RUNNABLE) Scheduler::put(old);
    80003258:	00048513          	mv	a0,s1
    8000325c:	fffff097          	auipc	ra,0xfffff
    80003260:	758080e7          	jalr	1880(ra) # 800029b4 <_ZN9Scheduler3putEP3TCB>
    80003264:	fbdff06f          	j	80003220 <_ZN3TCB8dispatchEv+0x24>

0000000080003268 <_ZNK3TCB14get_next_readyEv>:

TCB *TCB::get_next_ready() const {
    80003268:	ff010113          	addi	sp,sp,-16
    8000326c:	00813423          	sd	s0,8(sp)
    80003270:	01010413          	addi	s0,sp,16
    return next_ready;
}
    80003274:	04053503          	ld	a0,64(a0)
    80003278:	00813403          	ld	s0,8(sp)
    8000327c:	01010113          	addi	sp,sp,16
    80003280:	00008067          	ret

0000000080003284 <_ZN3TCB14set_next_readyEPS_>:

void TCB::set_next_ready(TCB *next) {
    80003284:	ff010113          	addi	sp,sp,-16
    80003288:	00813423          	sd	s0,8(sp)
    8000328c:	01010413          	addi	s0,sp,16
    next_ready = next;
    80003290:	04b53023          	sd	a1,64(a0)
}
    80003294:	00813403          	ld	s0,8(sp)
    80003298:	01010113          	addi	sp,sp,16
    8000329c:	00008067          	ret

00000000800032a0 <_ZN3TCB17set_next_sleepingEPS_>:

void TCB::set_next_sleeping(TCB *next) {
    800032a0:	ff010113          	addi	sp,sp,-16
    800032a4:	00813423          	sd	s0,8(sp)
    800032a8:	01010413          	addi	s0,sp,16
    next_sleeping = next;
    800032ac:	04b53823          	sd	a1,80(a0)
}
    800032b0:	00813403          	ld	s0,8(sp)
    800032b4:	01010113          	addi	sp,sp,16
    800032b8:	00008067          	ret

00000000800032bc <_ZNK3TCB17get_next_sleepingEv>:

TCB* TCB::get_next_sleeping() const {
    800032bc:	ff010113          	addi	sp,sp,-16
    800032c0:	00813423          	sd	s0,8(sp)
    800032c4:	01010413          	addi	s0,sp,16
    return next_sleeping;
}
    800032c8:	05053503          	ld	a0,80(a0)
    800032cc:	00813403          	ld	s0,8(sp)
    800032d0:	01010113          	addi	sp,sp,16
    800032d4:	00008067          	ret

00000000800032d8 <_ZN3TCB17set_time_to_sleepEm>:

void TCB::set_time_to_sleep(time_t time) {
    800032d8:	ff010113          	addi	sp,sp,-16
    800032dc:	00813423          	sd	s0,8(sp)
    800032e0:	01010413          	addi	s0,sp,16
    time_to_sleep = time;
    800032e4:	04b53423          	sd	a1,72(a0)
}
    800032e8:	00813403          	ld	s0,8(sp)
    800032ec:	01010113          	addi	sp,sp,16
    800032f0:	00008067          	ret

00000000800032f4 <_ZNK3TCB17get_time_to_sleepEv>:

time_t TCB::get_time_to_sleep() const {
    800032f4:	ff010113          	addi	sp,sp,-16
    800032f8:	00813423          	sd	s0,8(sp)
    800032fc:	01010413          	addi	s0,sp,16
    return time_to_sleep;
}
    80003300:	04853503          	ld	a0,72(a0)
    80003304:	00813403          	ld	s0,8(sp)
    80003308:	01010113          	addi	sp,sp,16
    8000330c:	00008067          	ret

0000000080003310 <_ZN3TCB10set_statusENS_6StatusE>:

void TCB::set_status(TCB::Status stat) {
    80003310:	ff010113          	addi	sp,sp,-16
    80003314:	00813423          	sd	s0,8(sp)
    80003318:	01010413          	addi	s0,sp,16
    this -> status = stat;
    8000331c:	00b52c23          	sw	a1,24(a0)
}
    80003320:	00813403          	ld	s0,8(sp)
    80003324:	01010113          	addi	sp,sp,16
    80003328:	00008067          	ret

000000008000332c <_ZN3TCB11thread_exitEv>:
void TCB::thread_exit() {
    8000332c:	ff010113          	addi	sp,sp,-16
    80003330:	00113423          	sd	ra,8(sp)
    80003334:	00813023          	sd	s0,0(sp)
    80003338:	01010413          	addi	s0,sp,16
    running -> set_status(Status::FINISHED);
    8000333c:	00300593          	li	a1,3
    80003340:	00009517          	auipc	a0,0x9
    80003344:	a6053503          	ld	a0,-1440(a0) # 8000bda0 <_ZN3TCB7runningE>
    80003348:	00000097          	auipc	ra,0x0
    8000334c:	fc8080e7          	jalr	-56(ra) # 80003310 <_ZN3TCB10set_statusENS_6StatusE>
    dispatch();
    80003350:	00000097          	auipc	ra,0x0
    80003354:	eac080e7          	jalr	-340(ra) # 800031fc <_ZN3TCB8dispatchEv>
}
    80003358:	00813083          	ld	ra,8(sp)
    8000335c:	00013403          	ld	s0,0(sp)
    80003360:	01010113          	addi	sp,sp,16
    80003364:	00008067          	ret

0000000080003368 <_ZN3TCB16wrapper_functionEv>:
void TCB::wrapper_function() {
    80003368:	ff010113          	addi	sp,sp,-16
    8000336c:	00113423          	sd	ra,8(sp)
    80003370:	00813023          	sd	s0,0(sp)
    80003374:	01010413          	addi	s0,sp,16
    RiscV::popSppSpie();
    80003378:	00000097          	auipc	ra,0x0
    8000337c:	8fc080e7          	jalr	-1796(ra) # 80002c74 <_ZN5RiscV10popSppSpieEv>
    if (running -> function_body) running -> function_body(running -> arg);
    80003380:	00009717          	auipc	a4,0x9
    80003384:	a2073703          	ld	a4,-1504(a4) # 8000bda0 <_ZN3TCB7runningE>
    80003388:	02073783          	ld	a5,32(a4)
    8000338c:	00078663          	beqz	a5,80003398 <_ZN3TCB16wrapper_functionEv+0x30>
    80003390:	02873503          	ld	a0,40(a4)
    80003394:	000780e7          	jalr	a5
    thread_exit();
    80003398:	00000097          	auipc	ra,0x0
    8000339c:	f94080e7          	jalr	-108(ra) # 8000332c <_ZN3TCB11thread_exitEv>
}
    800033a0:	00813083          	ld	ra,8(sp)
    800033a4:	00013403          	ld	s0,0(sp)
    800033a8:	01010113          	addi	sp,sp,16
    800033ac:	00008067          	ret

00000000800033b0 <_ZN3TCBnwEm>:

void *TCB::operator new(size_t size) {
    800033b0:	ff010113          	addi	sp,sp,-16
    800033b4:	00113423          	sd	ra,8(sp)
    800033b8:	00813023          	sd	s0,0(sp)
    800033bc:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    800033c0:	fffff097          	auipc	ra,0xfffff
    800033c4:	384080e7          	jalr	900(ra) # 80002744 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    800033c8:	fffff097          	auipc	ra,0xfffff
    800033cc:	fd0080e7          	jalr	-48(ra) # 80002398 <_ZN15MemoryAllocator9mem_allocEm>
}
    800033d0:	00813083          	ld	ra,8(sp)
    800033d4:	00013403          	ld	s0,0(sp)
    800033d8:	01010113          	addi	sp,sp,16
    800033dc:	00008067          	ret

00000000800033e0 <_ZN3TCBdlEPv>:

void TCB::operator delete(void *addr) {
    800033e0:	ff010113          	addi	sp,sp,-16
    800033e4:	00113423          	sd	ra,8(sp)
    800033e8:	00813023          	sd	s0,0(sp)
    800033ec:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    800033f0:	fffff097          	auipc	ra,0xfffff
    800033f4:	114080e7          	jalr	276(ra) # 80002504 <_ZN15MemoryAllocator8mem_freeEPv>
}
    800033f8:	00813083          	ld	ra,8(sp)
    800033fc:	00013403          	ld	s0,0(sp)
    80003400:	01010113          	addi	sp,sp,16
    80003404:	00008067          	ret

0000000080003408 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>:
int TCB::thread_create(thread_t *handle, void(*start_routine)(void *), void *arg, void *stack_begin_address) {
    80003408:	fc010113          	addi	sp,sp,-64
    8000340c:	02113c23          	sd	ra,56(sp)
    80003410:	02813823          	sd	s0,48(sp)
    80003414:	02913423          	sd	s1,40(sp)
    80003418:	03213023          	sd	s2,32(sp)
    8000341c:	01313c23          	sd	s3,24(sp)
    80003420:	01413823          	sd	s4,16(sp)
    80003424:	01513423          	sd	s5,8(sp)
    80003428:	04010413          	addi	s0,sp,64
    8000342c:	00050913          	mv	s2,a0
    80003430:	00058993          	mv	s3,a1
    80003434:	00060a13          	mv	s4,a2
    80003438:	00068a93          	mv	s5,a3
    *handle = new TCB(start_routine, arg, stack_begin_address);
    8000343c:	05800513          	li	a0,88
    80003440:	00000097          	auipc	ra,0x0
    80003444:	f70080e7          	jalr	-144(ra) # 800033b0 <_ZN3TCBnwEm>
    80003448:	00050493          	mv	s1,a0
    8000344c:	000a8693          	mv	a3,s5
    80003450:	000a0613          	mv	a2,s4
    80003454:	00098593          	mv	a1,s3
    80003458:	00000097          	auipc	ra,0x0
    8000345c:	cb4080e7          	jalr	-844(ra) # 8000310c <_ZN3TCBC1EPFvPvES0_S0_>
    80003460:	0200006f          	j	80003480 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_+0x78>
    80003464:	00050913          	mv	s2,a0
    80003468:	00048513          	mv	a0,s1
    8000346c:	00000097          	auipc	ra,0x0
    80003470:	f74080e7          	jalr	-140(ra) # 800033e0 <_ZN3TCBdlEPv>
    80003474:	00090513          	mv	a0,s2
    80003478:	0000a097          	auipc	ra,0xa
    8000347c:	a70080e7          	jalr	-1424(ra) # 8000cee8 <_Unwind_Resume>
    80003480:	00993023          	sd	s1,0(s2)
}
    80003484:	00000513          	li	a0,0
    80003488:	03813083          	ld	ra,56(sp)
    8000348c:	03013403          	ld	s0,48(sp)
    80003490:	02813483          	ld	s1,40(sp)
    80003494:	02013903          	ld	s2,32(sp)
    80003498:	01813983          	ld	s3,24(sp)
    8000349c:	01013a03          	ld	s4,16(sp)
    800034a0:	00813a83          	ld	s5,8(sp)
    800034a4:	04010113          	addi	sp,sp,64
    800034a8:	00008067          	ret

00000000800034ac <_ZNK3TCB14get_time_sliceEv>:

time_t TCB::get_time_slice() const {
    800034ac:	ff010113          	addi	sp,sp,-16
    800034b0:	00813423          	sd	s0,8(sp)
    800034b4:	01010413          	addi	s0,sp,16
    return time_slice;
}
    800034b8:	03853503          	ld	a0,56(a0)
    800034bc:	00813403          	ld	s0,8(sp)
    800034c0:	01010113          	addi	sp,sp,16
    800034c4:	00008067          	ret

00000000800034c8 <_ZNK3TCB11is_finishedEv>:

bool TCB::is_finished() const {
    800034c8:	ff010113          	addi	sp,sp,-16
    800034cc:	00813423          	sd	s0,8(sp)
    800034d0:	01010413          	addi	s0,sp,16
    return status == FINISHED;
    800034d4:	01852503          	lw	a0,24(a0)
    800034d8:	ffd50513          	addi	a0,a0,-3
}
    800034dc:	00153513          	seqz	a0,a0
    800034e0:	00813403          	ld	s0,8(sp)
    800034e4:	01010113          	addi	sp,sp,16
    800034e8:	00008067          	ret

00000000800034ec <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    800034ec:	fe010113          	addi	sp,sp,-32
    800034f0:	00113c23          	sd	ra,24(sp)
    800034f4:	00813823          	sd	s0,16(sp)
    800034f8:	00913423          	sd	s1,8(sp)
    800034fc:	01213023          	sd	s2,0(sp)
    80003500:	02010413          	addi	s0,sp,32
    80003504:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80003508:	00000913          	li	s2,0
    8000350c:	00c0006f          	j	80003518 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003510:	ffffe097          	auipc	ra,0xffffe
    80003514:	ebc080e7          	jalr	-324(ra) # 800013cc <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80003518:	ffffe097          	auipc	ra,0xffffe
    8000351c:	108080e7          	jalr	264(ra) # 80001620 <_Z4getcv>
    80003520:	0005059b          	sext.w	a1,a0
    80003524:	01b00793          	li	a5,27
    80003528:	02f58a63          	beq	a1,a5,8000355c <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    8000352c:	0084b503          	ld	a0,8(s1)
    80003530:	00001097          	auipc	ra,0x1
    80003534:	66c080e7          	jalr	1644(ra) # 80004b9c <_ZN6Buffer3putEi>
        i++;
    80003538:	0019071b          	addiw	a4,s2,1
    8000353c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003540:	0004a683          	lw	a3,0(s1)
    80003544:	0026979b          	slliw	a5,a3,0x2
    80003548:	00d787bb          	addw	a5,a5,a3
    8000354c:	0017979b          	slliw	a5,a5,0x1
    80003550:	02f767bb          	remw	a5,a4,a5
    80003554:	fc0792e3          	bnez	a5,80003518 <_ZL16producerKeyboardPv+0x2c>
    80003558:	fb9ff06f          	j	80003510 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    8000355c:	00100793          	li	a5,1
    80003560:	00009717          	auipc	a4,0x9
    80003564:	84f72823          	sw	a5,-1968(a4) # 8000bdb0 <_ZL9threadEnd>
    data->buffer->put('!');
    80003568:	02100593          	li	a1,33
    8000356c:	0084b503          	ld	a0,8(s1)
    80003570:	00001097          	auipc	ra,0x1
    80003574:	62c080e7          	jalr	1580(ra) # 80004b9c <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80003578:	0104b503          	ld	a0,16(s1)
    8000357c:	ffffe097          	auipc	ra,0xffffe
    80003580:	f74080e7          	jalr	-140(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    80003584:	01813083          	ld	ra,24(sp)
    80003588:	01013403          	ld	s0,16(sp)
    8000358c:	00813483          	ld	s1,8(sp)
    80003590:	00013903          	ld	s2,0(sp)
    80003594:	02010113          	addi	sp,sp,32
    80003598:	00008067          	ret

000000008000359c <_ZL8producerPv>:

static void producer(void *arg) {
    8000359c:	fe010113          	addi	sp,sp,-32
    800035a0:	00113c23          	sd	ra,24(sp)
    800035a4:	00813823          	sd	s0,16(sp)
    800035a8:	00913423          	sd	s1,8(sp)
    800035ac:	01213023          	sd	s2,0(sp)
    800035b0:	02010413          	addi	s0,sp,32
    800035b4:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800035b8:	00000913          	li	s2,0
    800035bc:	00c0006f          	j	800035c8 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800035c0:	ffffe097          	auipc	ra,0xffffe
    800035c4:	e0c080e7          	jalr	-500(ra) # 800013cc <_Z15thread_dispatchv>
    while (!threadEnd) {
    800035c8:	00008797          	auipc	a5,0x8
    800035cc:	7e87a783          	lw	a5,2024(a5) # 8000bdb0 <_ZL9threadEnd>
    800035d0:	02079e63          	bnez	a5,8000360c <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    800035d4:	0004a583          	lw	a1,0(s1)
    800035d8:	0305859b          	addiw	a1,a1,48
    800035dc:	0084b503          	ld	a0,8(s1)
    800035e0:	00001097          	auipc	ra,0x1
    800035e4:	5bc080e7          	jalr	1468(ra) # 80004b9c <_ZN6Buffer3putEi>
        i++;
    800035e8:	0019071b          	addiw	a4,s2,1
    800035ec:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800035f0:	0004a683          	lw	a3,0(s1)
    800035f4:	0026979b          	slliw	a5,a3,0x2
    800035f8:	00d787bb          	addw	a5,a5,a3
    800035fc:	0017979b          	slliw	a5,a5,0x1
    80003600:	02f767bb          	remw	a5,a4,a5
    80003604:	fc0792e3          	bnez	a5,800035c8 <_ZL8producerPv+0x2c>
    80003608:	fb9ff06f          	j	800035c0 <_ZL8producerPv+0x24>
        }
    }

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

0000000080003630 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80003630:	fd010113          	addi	sp,sp,-48
    80003634:	02113423          	sd	ra,40(sp)
    80003638:	02813023          	sd	s0,32(sp)
    8000363c:	00913c23          	sd	s1,24(sp)
    80003640:	01213823          	sd	s2,16(sp)
    80003644:	01313423          	sd	s3,8(sp)
    80003648:	03010413          	addi	s0,sp,48
    8000364c:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003650:	00000993          	li	s3,0
    80003654:	01c0006f          	j	80003670 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80003658:	ffffe097          	auipc	ra,0xffffe
    8000365c:	d74080e7          	jalr	-652(ra) # 800013cc <_Z15thread_dispatchv>
    80003660:	0500006f          	j	800036b0 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80003664:	00a00513          	li	a0,10
    80003668:	ffffe097          	auipc	ra,0xffffe
    8000366c:	004080e7          	jalr	4(ra) # 8000166c <_Z4putcc>
    while (!threadEnd) {
    80003670:	00008797          	auipc	a5,0x8
    80003674:	7407a783          	lw	a5,1856(a5) # 8000bdb0 <_ZL9threadEnd>
    80003678:	06079063          	bnez	a5,800036d8 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    8000367c:	00893503          	ld	a0,8(s2)
    80003680:	00001097          	auipc	ra,0x1
    80003684:	5ac080e7          	jalr	1452(ra) # 80004c2c <_ZN6Buffer3getEv>
        i++;
    80003688:	0019849b          	addiw	s1,s3,1
    8000368c:	0004899b          	sext.w	s3,s1
        putc(key);
    80003690:	0ff57513          	andi	a0,a0,255
    80003694:	ffffe097          	auipc	ra,0xffffe
    80003698:	fd8080e7          	jalr	-40(ra) # 8000166c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    8000369c:	00092703          	lw	a4,0(s2)
    800036a0:	0027179b          	slliw	a5,a4,0x2
    800036a4:	00e787bb          	addw	a5,a5,a4
    800036a8:	02f4e7bb          	remw	a5,s1,a5
    800036ac:	fa0786e3          	beqz	a5,80003658 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    800036b0:	05000793          	li	a5,80
    800036b4:	02f4e4bb          	remw	s1,s1,a5
    800036b8:	fa049ce3          	bnez	s1,80003670 <_ZL8consumerPv+0x40>
    800036bc:	fa9ff06f          	j	80003664 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    800036c0:	00893503          	ld	a0,8(s2)
    800036c4:	00001097          	auipc	ra,0x1
    800036c8:	568080e7          	jalr	1384(ra) # 80004c2c <_ZN6Buffer3getEv>
        putc(key);
    800036cc:	0ff57513          	andi	a0,a0,255
    800036d0:	ffffe097          	auipc	ra,0xffffe
    800036d4:	f9c080e7          	jalr	-100(ra) # 8000166c <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    800036d8:	00893503          	ld	a0,8(s2)
    800036dc:	00001097          	auipc	ra,0x1
    800036e0:	5dc080e7          	jalr	1500(ra) # 80004cb8 <_ZN6Buffer6getCntEv>
    800036e4:	fca04ee3          	bgtz	a0,800036c0 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    800036e8:	01093503          	ld	a0,16(s2)
    800036ec:	ffffe097          	auipc	ra,0xffffe
    800036f0:	e04080e7          	jalr	-508(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    800036f4:	02813083          	ld	ra,40(sp)
    800036f8:	02013403          	ld	s0,32(sp)
    800036fc:	01813483          	ld	s1,24(sp)
    80003700:	01013903          	ld	s2,16(sp)
    80003704:	00813983          	ld	s3,8(sp)
    80003708:	03010113          	addi	sp,sp,48
    8000370c:	00008067          	ret

0000000080003710 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80003710:	f9010113          	addi	sp,sp,-112
    80003714:	06113423          	sd	ra,104(sp)
    80003718:	06813023          	sd	s0,96(sp)
    8000371c:	04913c23          	sd	s1,88(sp)
    80003720:	05213823          	sd	s2,80(sp)
    80003724:	05313423          	sd	s3,72(sp)
    80003728:	05413023          	sd	s4,64(sp)
    8000372c:	03513c23          	sd	s5,56(sp)
    80003730:	03613823          	sd	s6,48(sp)
    80003734:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80003738:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    8000373c:	00006517          	auipc	a0,0x6
    80003740:	a0450513          	addi	a0,a0,-1532 # 80009140 <CONSOLE_STATUS+0x130>
    80003744:	00002097          	auipc	ra,0x2
    80003748:	550080e7          	jalr	1360(ra) # 80005c94 <_Z11printStringPKc>
    getString(input, 30);
    8000374c:	01e00593          	li	a1,30
    80003750:	fa040493          	addi	s1,s0,-96
    80003754:	00048513          	mv	a0,s1
    80003758:	00002097          	auipc	ra,0x2
    8000375c:	5c4080e7          	jalr	1476(ra) # 80005d1c <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003760:	00048513          	mv	a0,s1
    80003764:	00002097          	auipc	ra,0x2
    80003768:	690080e7          	jalr	1680(ra) # 80005df4 <_Z11stringToIntPKc>
    8000376c:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003770:	00006517          	auipc	a0,0x6
    80003774:	9f050513          	addi	a0,a0,-1552 # 80009160 <CONSOLE_STATUS+0x150>
    80003778:	00002097          	auipc	ra,0x2
    8000377c:	51c080e7          	jalr	1308(ra) # 80005c94 <_Z11printStringPKc>
    getString(input, 30);
    80003780:	01e00593          	li	a1,30
    80003784:	00048513          	mv	a0,s1
    80003788:	00002097          	auipc	ra,0x2
    8000378c:	594080e7          	jalr	1428(ra) # 80005d1c <_Z9getStringPci>
    n = stringToInt(input);
    80003790:	00048513          	mv	a0,s1
    80003794:	00002097          	auipc	ra,0x2
    80003798:	660080e7          	jalr	1632(ra) # 80005df4 <_Z11stringToIntPKc>
    8000379c:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800037a0:	00006517          	auipc	a0,0x6
    800037a4:	9e050513          	addi	a0,a0,-1568 # 80009180 <CONSOLE_STATUS+0x170>
    800037a8:	00002097          	auipc	ra,0x2
    800037ac:	4ec080e7          	jalr	1260(ra) # 80005c94 <_Z11printStringPKc>
    800037b0:	00000613          	li	a2,0
    800037b4:	00a00593          	li	a1,10
    800037b8:	00090513          	mv	a0,s2
    800037bc:	00002097          	auipc	ra,0x2
    800037c0:	688080e7          	jalr	1672(ra) # 80005e44 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800037c4:	00006517          	auipc	a0,0x6
    800037c8:	9d450513          	addi	a0,a0,-1580 # 80009198 <CONSOLE_STATUS+0x188>
    800037cc:	00002097          	auipc	ra,0x2
    800037d0:	4c8080e7          	jalr	1224(ra) # 80005c94 <_Z11printStringPKc>
    800037d4:	00000613          	li	a2,0
    800037d8:	00a00593          	li	a1,10
    800037dc:	00048513          	mv	a0,s1
    800037e0:	00002097          	auipc	ra,0x2
    800037e4:	664080e7          	jalr	1636(ra) # 80005e44 <_Z8printIntiii>
    printString(".\n");
    800037e8:	00006517          	auipc	a0,0x6
    800037ec:	9c850513          	addi	a0,a0,-1592 # 800091b0 <CONSOLE_STATUS+0x1a0>
    800037f0:	00002097          	auipc	ra,0x2
    800037f4:	4a4080e7          	jalr	1188(ra) # 80005c94 <_Z11printStringPKc>
    if(threadNum > n) {
    800037f8:	0324c463          	blt	s1,s2,80003820 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    800037fc:	03205c63          	blez	s2,80003834 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003800:	03800513          	li	a0,56
    80003804:	ffffe097          	auipc	ra,0xffffe
    80003808:	730080e7          	jalr	1840(ra) # 80001f34 <_Znwm>
    8000380c:	00050a13          	mv	s4,a0
    80003810:	00048593          	mv	a1,s1
    80003814:	00001097          	auipc	ra,0x1
    80003818:	2ec080e7          	jalr	748(ra) # 80004b00 <_ZN6BufferC1Ei>
    8000381c:	0300006f          	j	8000384c <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003820:	00006517          	auipc	a0,0x6
    80003824:	99850513          	addi	a0,a0,-1640 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80003828:	00002097          	auipc	ra,0x2
    8000382c:	46c080e7          	jalr	1132(ra) # 80005c94 <_Z11printStringPKc>
        return;
    80003830:	0140006f          	j	80003844 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003834:	00006517          	auipc	a0,0x6
    80003838:	9c450513          	addi	a0,a0,-1596 # 800091f8 <CONSOLE_STATUS+0x1e8>
    8000383c:	00002097          	auipc	ra,0x2
    80003840:	458080e7          	jalr	1112(ra) # 80005c94 <_Z11printStringPKc>
        return;
    80003844:	000b0113          	mv	sp,s6
    80003848:	1500006f          	j	80003998 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    8000384c:	00000593          	li	a1,0
    80003850:	00008517          	auipc	a0,0x8
    80003854:	56850513          	addi	a0,a0,1384 # 8000bdb8 <_ZL10waitForAll>
    80003858:	ffffe097          	auipc	ra,0xffffe
    8000385c:	bb0080e7          	jalr	-1104(ra) # 80001408 <_Z8sem_openPP3Semj>
    thread_t threads[threadNum];
    80003860:	00391793          	slli	a5,s2,0x3
    80003864:	00f78793          	addi	a5,a5,15
    80003868:	ff07f793          	andi	a5,a5,-16
    8000386c:	40f10133          	sub	sp,sp,a5
    80003870:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003874:	0019071b          	addiw	a4,s2,1
    80003878:	00171793          	slli	a5,a4,0x1
    8000387c:	00e787b3          	add	a5,a5,a4
    80003880:	00379793          	slli	a5,a5,0x3
    80003884:	00f78793          	addi	a5,a5,15
    80003888:	ff07f793          	andi	a5,a5,-16
    8000388c:	40f10133          	sub	sp,sp,a5
    80003890:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003894:	00191613          	slli	a2,s2,0x1
    80003898:	012607b3          	add	a5,a2,s2
    8000389c:	00379793          	slli	a5,a5,0x3
    800038a0:	00f987b3          	add	a5,s3,a5
    800038a4:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800038a8:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    800038ac:	00008717          	auipc	a4,0x8
    800038b0:	50c73703          	ld	a4,1292(a4) # 8000bdb8 <_ZL10waitForAll>
    800038b4:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    800038b8:	00078613          	mv	a2,a5
    800038bc:	00000597          	auipc	a1,0x0
    800038c0:	d7458593          	addi	a1,a1,-652 # 80003630 <_ZL8consumerPv>
    800038c4:	f9840513          	addi	a0,s0,-104
    800038c8:	ffffe097          	auipc	ra,0xffffe
    800038cc:	a30080e7          	jalr	-1488(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800038d0:	00000493          	li	s1,0
    800038d4:	0280006f          	j	800038fc <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    800038d8:	00000597          	auipc	a1,0x0
    800038dc:	c1458593          	addi	a1,a1,-1004 # 800034ec <_ZL16producerKeyboardPv>
                      data + i);
    800038e0:	00179613          	slli	a2,a5,0x1
    800038e4:	00f60633          	add	a2,a2,a5
    800038e8:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    800038ec:	00c98633          	add	a2,s3,a2
    800038f0:	ffffe097          	auipc	ra,0xffffe
    800038f4:	a08080e7          	jalr	-1528(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800038f8:	0014849b          	addiw	s1,s1,1
    800038fc:	0524d263          	bge	s1,s2,80003940 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003900:	00149793          	slli	a5,s1,0x1
    80003904:	009787b3          	add	a5,a5,s1
    80003908:	00379793          	slli	a5,a5,0x3
    8000390c:	00f987b3          	add	a5,s3,a5
    80003910:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003914:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80003918:	00008717          	auipc	a4,0x8
    8000391c:	4a073703          	ld	a4,1184(a4) # 8000bdb8 <_ZL10waitForAll>
    80003920:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003924:	00048793          	mv	a5,s1
    80003928:	00349513          	slli	a0,s1,0x3
    8000392c:	00aa8533          	add	a0,s5,a0
    80003930:	fa9054e3          	blez	s1,800038d8 <_Z22producerConsumer_C_APIv+0x1c8>
    80003934:	00000597          	auipc	a1,0x0
    80003938:	c6858593          	addi	a1,a1,-920 # 8000359c <_ZL8producerPv>
    8000393c:	fa5ff06f          	j	800038e0 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003940:	ffffe097          	auipc	ra,0xffffe
    80003944:	a8c080e7          	jalr	-1396(ra) # 800013cc <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003948:	00000493          	li	s1,0
    8000394c:	00994e63          	blt	s2,s1,80003968 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003950:	00008517          	auipc	a0,0x8
    80003954:	46853503          	ld	a0,1128(a0) # 8000bdb8 <_ZL10waitForAll>
    80003958:	ffffe097          	auipc	ra,0xffffe
    8000395c:	b4c080e7          	jalr	-1204(ra) # 800014a4 <_Z8sem_waitP3Sem>
    for (int i = 0; i <= threadNum; i++) {
    80003960:	0014849b          	addiw	s1,s1,1
    80003964:	fe9ff06f          	j	8000394c <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003968:	00008517          	auipc	a0,0x8
    8000396c:	45053503          	ld	a0,1104(a0) # 8000bdb8 <_ZL10waitForAll>
    80003970:	ffffe097          	auipc	ra,0xffffe
    80003974:	ae8080e7          	jalr	-1304(ra) # 80001458 <_Z9sem_closeP3Sem>
    delete buffer;
    80003978:	000a0e63          	beqz	s4,80003994 <_Z22producerConsumer_C_APIv+0x284>
    8000397c:	000a0513          	mv	a0,s4
    80003980:	00001097          	auipc	ra,0x1
    80003984:	3c0080e7          	jalr	960(ra) # 80004d40 <_ZN6BufferD1Ev>
    80003988:	000a0513          	mv	a0,s4
    8000398c:	ffffe097          	auipc	ra,0xffffe
    80003990:	5d0080e7          	jalr	1488(ra) # 80001f5c <_ZdlPv>
    80003994:	000b0113          	mv	sp,s6

}
    80003998:	f9040113          	addi	sp,s0,-112
    8000399c:	06813083          	ld	ra,104(sp)
    800039a0:	06013403          	ld	s0,96(sp)
    800039a4:	05813483          	ld	s1,88(sp)
    800039a8:	05013903          	ld	s2,80(sp)
    800039ac:	04813983          	ld	s3,72(sp)
    800039b0:	04013a03          	ld	s4,64(sp)
    800039b4:	03813a83          	ld	s5,56(sp)
    800039b8:	03013b03          	ld	s6,48(sp)
    800039bc:	07010113          	addi	sp,sp,112
    800039c0:	00008067          	ret
    800039c4:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    800039c8:	000a0513          	mv	a0,s4
    800039cc:	ffffe097          	auipc	ra,0xffffe
    800039d0:	590080e7          	jalr	1424(ra) # 80001f5c <_ZdlPv>
    800039d4:	00048513          	mv	a0,s1
    800039d8:	00009097          	auipc	ra,0x9
    800039dc:	510080e7          	jalr	1296(ra) # 8000cee8 <_Unwind_Resume>

00000000800039e0 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800039e0:	fe010113          	addi	sp,sp,-32
    800039e4:	00113c23          	sd	ra,24(sp)
    800039e8:	00813823          	sd	s0,16(sp)
    800039ec:	00913423          	sd	s1,8(sp)
    800039f0:	01213023          	sd	s2,0(sp)
    800039f4:	02010413          	addi	s0,sp,32
    800039f8:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800039fc:	00100793          	li	a5,1
    80003a00:	02a7f863          	bgeu	a5,a0,80003a30 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003a04:	00a00793          	li	a5,10
    80003a08:	02f577b3          	remu	a5,a0,a5
    80003a0c:	02078e63          	beqz	a5,80003a48 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003a10:	fff48513          	addi	a0,s1,-1
    80003a14:	00000097          	auipc	ra,0x0
    80003a18:	fcc080e7          	jalr	-52(ra) # 800039e0 <_ZL9fibonaccim>
    80003a1c:	00050913          	mv	s2,a0
    80003a20:	ffe48513          	addi	a0,s1,-2
    80003a24:	00000097          	auipc	ra,0x0
    80003a28:	fbc080e7          	jalr	-68(ra) # 800039e0 <_ZL9fibonaccim>
    80003a2c:	00a90533          	add	a0,s2,a0
}
    80003a30:	01813083          	ld	ra,24(sp)
    80003a34:	01013403          	ld	s0,16(sp)
    80003a38:	00813483          	ld	s1,8(sp)
    80003a3c:	00013903          	ld	s2,0(sp)
    80003a40:	02010113          	addi	sp,sp,32
    80003a44:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003a48:	ffffe097          	auipc	ra,0xffffe
    80003a4c:	984080e7          	jalr	-1660(ra) # 800013cc <_Z15thread_dispatchv>
    80003a50:	fc1ff06f          	j	80003a10 <_ZL9fibonaccim+0x30>

0000000080003a54 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003a54:	fe010113          	addi	sp,sp,-32
    80003a58:	00113c23          	sd	ra,24(sp)
    80003a5c:	00813823          	sd	s0,16(sp)
    80003a60:	00913423          	sd	s1,8(sp)
    80003a64:	01213023          	sd	s2,0(sp)
    80003a68:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003a6c:	00000913          	li	s2,0
    80003a70:	0380006f          	j	80003aa8 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003a74:	ffffe097          	auipc	ra,0xffffe
    80003a78:	958080e7          	jalr	-1704(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003a7c:	00148493          	addi	s1,s1,1
    80003a80:	000027b7          	lui	a5,0x2
    80003a84:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003a88:	0097ee63          	bltu	a5,s1,80003aa4 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003a8c:	00000713          	li	a4,0
    80003a90:	000077b7          	lui	a5,0x7
    80003a94:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003a98:	fce7eee3          	bltu	a5,a4,80003a74 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003a9c:	00170713          	addi	a4,a4,1
    80003aa0:	ff1ff06f          	j	80003a90 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003aa4:	00190913          	addi	s2,s2,1
    80003aa8:	00900793          	li	a5,9
    80003aac:	0527e063          	bltu	a5,s2,80003aec <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003ab0:	00005517          	auipc	a0,0x5
    80003ab4:	77850513          	addi	a0,a0,1912 # 80009228 <CONSOLE_STATUS+0x218>
    80003ab8:	00002097          	auipc	ra,0x2
    80003abc:	1dc080e7          	jalr	476(ra) # 80005c94 <_Z11printStringPKc>
    80003ac0:	00000613          	li	a2,0
    80003ac4:	00a00593          	li	a1,10
    80003ac8:	0009051b          	sext.w	a0,s2
    80003acc:	00002097          	auipc	ra,0x2
    80003ad0:	378080e7          	jalr	888(ra) # 80005e44 <_Z8printIntiii>
    80003ad4:	00006517          	auipc	a0,0x6
    80003ad8:	9b450513          	addi	a0,a0,-1612 # 80009488 <CONSOLE_STATUS+0x478>
    80003adc:	00002097          	auipc	ra,0x2
    80003ae0:	1b8080e7          	jalr	440(ra) # 80005c94 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003ae4:	00000493          	li	s1,0
    80003ae8:	f99ff06f          	j	80003a80 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003aec:	00005517          	auipc	a0,0x5
    80003af0:	74450513          	addi	a0,a0,1860 # 80009230 <CONSOLE_STATUS+0x220>
    80003af4:	00002097          	auipc	ra,0x2
    80003af8:	1a0080e7          	jalr	416(ra) # 80005c94 <_Z11printStringPKc>
    finishedA = true;
    80003afc:	00100793          	li	a5,1
    80003b00:	00008717          	auipc	a4,0x8
    80003b04:	2cf70023          	sb	a5,704(a4) # 8000bdc0 <_ZL9finishedA>
}
    80003b08:	01813083          	ld	ra,24(sp)
    80003b0c:	01013403          	ld	s0,16(sp)
    80003b10:	00813483          	ld	s1,8(sp)
    80003b14:	00013903          	ld	s2,0(sp)
    80003b18:	02010113          	addi	sp,sp,32
    80003b1c:	00008067          	ret

0000000080003b20 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003b20:	fe010113          	addi	sp,sp,-32
    80003b24:	00113c23          	sd	ra,24(sp)
    80003b28:	00813823          	sd	s0,16(sp)
    80003b2c:	00913423          	sd	s1,8(sp)
    80003b30:	01213023          	sd	s2,0(sp)
    80003b34:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003b38:	00000913          	li	s2,0
    80003b3c:	0380006f          	j	80003b74 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003b40:	ffffe097          	auipc	ra,0xffffe
    80003b44:	88c080e7          	jalr	-1908(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003b48:	00148493          	addi	s1,s1,1
    80003b4c:	000027b7          	lui	a5,0x2
    80003b50:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003b54:	0097ee63          	bltu	a5,s1,80003b70 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003b58:	00000713          	li	a4,0
    80003b5c:	000077b7          	lui	a5,0x7
    80003b60:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003b64:	fce7eee3          	bltu	a5,a4,80003b40 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003b68:	00170713          	addi	a4,a4,1
    80003b6c:	ff1ff06f          	j	80003b5c <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003b70:	00190913          	addi	s2,s2,1
    80003b74:	00f00793          	li	a5,15
    80003b78:	0527e063          	bltu	a5,s2,80003bb8 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003b7c:	00005517          	auipc	a0,0x5
    80003b80:	6c450513          	addi	a0,a0,1732 # 80009240 <CONSOLE_STATUS+0x230>
    80003b84:	00002097          	auipc	ra,0x2
    80003b88:	110080e7          	jalr	272(ra) # 80005c94 <_Z11printStringPKc>
    80003b8c:	00000613          	li	a2,0
    80003b90:	00a00593          	li	a1,10
    80003b94:	0009051b          	sext.w	a0,s2
    80003b98:	00002097          	auipc	ra,0x2
    80003b9c:	2ac080e7          	jalr	684(ra) # 80005e44 <_Z8printIntiii>
    80003ba0:	00006517          	auipc	a0,0x6
    80003ba4:	8e850513          	addi	a0,a0,-1816 # 80009488 <CONSOLE_STATUS+0x478>
    80003ba8:	00002097          	auipc	ra,0x2
    80003bac:	0ec080e7          	jalr	236(ra) # 80005c94 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003bb0:	00000493          	li	s1,0
    80003bb4:	f99ff06f          	j	80003b4c <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003bb8:	00005517          	auipc	a0,0x5
    80003bbc:	69050513          	addi	a0,a0,1680 # 80009248 <CONSOLE_STATUS+0x238>
    80003bc0:	00002097          	auipc	ra,0x2
    80003bc4:	0d4080e7          	jalr	212(ra) # 80005c94 <_Z11printStringPKc>
    finishedB = true;
    80003bc8:	00100793          	li	a5,1
    80003bcc:	00008717          	auipc	a4,0x8
    80003bd0:	1ef70aa3          	sb	a5,501(a4) # 8000bdc1 <_ZL9finishedB>
    thread_dispatch();
    80003bd4:	ffffd097          	auipc	ra,0xffffd
    80003bd8:	7f8080e7          	jalr	2040(ra) # 800013cc <_Z15thread_dispatchv>
}
    80003bdc:	01813083          	ld	ra,24(sp)
    80003be0:	01013403          	ld	s0,16(sp)
    80003be4:	00813483          	ld	s1,8(sp)
    80003be8:	00013903          	ld	s2,0(sp)
    80003bec:	02010113          	addi	sp,sp,32
    80003bf0:	00008067          	ret

0000000080003bf4 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003bf4:	fe010113          	addi	sp,sp,-32
    80003bf8:	00113c23          	sd	ra,24(sp)
    80003bfc:	00813823          	sd	s0,16(sp)
    80003c00:	00913423          	sd	s1,8(sp)
    80003c04:	01213023          	sd	s2,0(sp)
    80003c08:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003c0c:	00000493          	li	s1,0
    80003c10:	0400006f          	j	80003c50 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003c14:	00005517          	auipc	a0,0x5
    80003c18:	64450513          	addi	a0,a0,1604 # 80009258 <CONSOLE_STATUS+0x248>
    80003c1c:	00002097          	auipc	ra,0x2
    80003c20:	078080e7          	jalr	120(ra) # 80005c94 <_Z11printStringPKc>
    80003c24:	00000613          	li	a2,0
    80003c28:	00a00593          	li	a1,10
    80003c2c:	00048513          	mv	a0,s1
    80003c30:	00002097          	auipc	ra,0x2
    80003c34:	214080e7          	jalr	532(ra) # 80005e44 <_Z8printIntiii>
    80003c38:	00006517          	auipc	a0,0x6
    80003c3c:	85050513          	addi	a0,a0,-1968 # 80009488 <CONSOLE_STATUS+0x478>
    80003c40:	00002097          	auipc	ra,0x2
    80003c44:	054080e7          	jalr	84(ra) # 80005c94 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003c48:	0014849b          	addiw	s1,s1,1
    80003c4c:	0ff4f493          	andi	s1,s1,255
    80003c50:	00200793          	li	a5,2
    80003c54:	fc97f0e3          	bgeu	a5,s1,80003c14 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003c58:	00005517          	auipc	a0,0x5
    80003c5c:	60850513          	addi	a0,a0,1544 # 80009260 <CONSOLE_STATUS+0x250>
    80003c60:	00002097          	auipc	ra,0x2
    80003c64:	034080e7          	jalr	52(ra) # 80005c94 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003c68:	00700313          	li	t1,7
    thread_dispatch();
    80003c6c:	ffffd097          	auipc	ra,0xffffd
    80003c70:	760080e7          	jalr	1888(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003c74:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003c78:	00005517          	auipc	a0,0x5
    80003c7c:	5f850513          	addi	a0,a0,1528 # 80009270 <CONSOLE_STATUS+0x260>
    80003c80:	00002097          	auipc	ra,0x2
    80003c84:	014080e7          	jalr	20(ra) # 80005c94 <_Z11printStringPKc>
    80003c88:	00000613          	li	a2,0
    80003c8c:	00a00593          	li	a1,10
    80003c90:	0009051b          	sext.w	a0,s2
    80003c94:	00002097          	auipc	ra,0x2
    80003c98:	1b0080e7          	jalr	432(ra) # 80005e44 <_Z8printIntiii>
    80003c9c:	00005517          	auipc	a0,0x5
    80003ca0:	7ec50513          	addi	a0,a0,2028 # 80009488 <CONSOLE_STATUS+0x478>
    80003ca4:	00002097          	auipc	ra,0x2
    80003ca8:	ff0080e7          	jalr	-16(ra) # 80005c94 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003cac:	00c00513          	li	a0,12
    80003cb0:	00000097          	auipc	ra,0x0
    80003cb4:	d30080e7          	jalr	-720(ra) # 800039e0 <_ZL9fibonaccim>
    80003cb8:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003cbc:	00005517          	auipc	a0,0x5
    80003cc0:	5bc50513          	addi	a0,a0,1468 # 80009278 <CONSOLE_STATUS+0x268>
    80003cc4:	00002097          	auipc	ra,0x2
    80003cc8:	fd0080e7          	jalr	-48(ra) # 80005c94 <_Z11printStringPKc>
    80003ccc:	00000613          	li	a2,0
    80003cd0:	00a00593          	li	a1,10
    80003cd4:	0009051b          	sext.w	a0,s2
    80003cd8:	00002097          	auipc	ra,0x2
    80003cdc:	16c080e7          	jalr	364(ra) # 80005e44 <_Z8printIntiii>
    80003ce0:	00005517          	auipc	a0,0x5
    80003ce4:	7a850513          	addi	a0,a0,1960 # 80009488 <CONSOLE_STATUS+0x478>
    80003ce8:	00002097          	auipc	ra,0x2
    80003cec:	fac080e7          	jalr	-84(ra) # 80005c94 <_Z11printStringPKc>
    80003cf0:	0400006f          	j	80003d30 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003cf4:	00005517          	auipc	a0,0x5
    80003cf8:	56450513          	addi	a0,a0,1380 # 80009258 <CONSOLE_STATUS+0x248>
    80003cfc:	00002097          	auipc	ra,0x2
    80003d00:	f98080e7          	jalr	-104(ra) # 80005c94 <_Z11printStringPKc>
    80003d04:	00000613          	li	a2,0
    80003d08:	00a00593          	li	a1,10
    80003d0c:	00048513          	mv	a0,s1
    80003d10:	00002097          	auipc	ra,0x2
    80003d14:	134080e7          	jalr	308(ra) # 80005e44 <_Z8printIntiii>
    80003d18:	00005517          	auipc	a0,0x5
    80003d1c:	77050513          	addi	a0,a0,1904 # 80009488 <CONSOLE_STATUS+0x478>
    80003d20:	00002097          	auipc	ra,0x2
    80003d24:	f74080e7          	jalr	-140(ra) # 80005c94 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003d28:	0014849b          	addiw	s1,s1,1
    80003d2c:	0ff4f493          	andi	s1,s1,255
    80003d30:	00500793          	li	a5,5
    80003d34:	fc97f0e3          	bgeu	a5,s1,80003cf4 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80003d38:	00005517          	auipc	a0,0x5
    80003d3c:	4f850513          	addi	a0,a0,1272 # 80009230 <CONSOLE_STATUS+0x220>
    80003d40:	00002097          	auipc	ra,0x2
    80003d44:	f54080e7          	jalr	-172(ra) # 80005c94 <_Z11printStringPKc>
    finishedC = true;
    80003d48:	00100793          	li	a5,1
    80003d4c:	00008717          	auipc	a4,0x8
    80003d50:	06f70b23          	sb	a5,118(a4) # 8000bdc2 <_ZL9finishedC>
    thread_dispatch();
    80003d54:	ffffd097          	auipc	ra,0xffffd
    80003d58:	678080e7          	jalr	1656(ra) # 800013cc <_Z15thread_dispatchv>
}
    80003d5c:	01813083          	ld	ra,24(sp)
    80003d60:	01013403          	ld	s0,16(sp)
    80003d64:	00813483          	ld	s1,8(sp)
    80003d68:	00013903          	ld	s2,0(sp)
    80003d6c:	02010113          	addi	sp,sp,32
    80003d70:	00008067          	ret

0000000080003d74 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003d74:	fe010113          	addi	sp,sp,-32
    80003d78:	00113c23          	sd	ra,24(sp)
    80003d7c:	00813823          	sd	s0,16(sp)
    80003d80:	00913423          	sd	s1,8(sp)
    80003d84:	01213023          	sd	s2,0(sp)
    80003d88:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003d8c:	00a00493          	li	s1,10
    80003d90:	0400006f          	j	80003dd0 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003d94:	00005517          	auipc	a0,0x5
    80003d98:	4f450513          	addi	a0,a0,1268 # 80009288 <CONSOLE_STATUS+0x278>
    80003d9c:	00002097          	auipc	ra,0x2
    80003da0:	ef8080e7          	jalr	-264(ra) # 80005c94 <_Z11printStringPKc>
    80003da4:	00000613          	li	a2,0
    80003da8:	00a00593          	li	a1,10
    80003dac:	00048513          	mv	a0,s1
    80003db0:	00002097          	auipc	ra,0x2
    80003db4:	094080e7          	jalr	148(ra) # 80005e44 <_Z8printIntiii>
    80003db8:	00005517          	auipc	a0,0x5
    80003dbc:	6d050513          	addi	a0,a0,1744 # 80009488 <CONSOLE_STATUS+0x478>
    80003dc0:	00002097          	auipc	ra,0x2
    80003dc4:	ed4080e7          	jalr	-300(ra) # 80005c94 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003dc8:	0014849b          	addiw	s1,s1,1
    80003dcc:	0ff4f493          	andi	s1,s1,255
    80003dd0:	00c00793          	li	a5,12
    80003dd4:	fc97f0e3          	bgeu	a5,s1,80003d94 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003dd8:	00005517          	auipc	a0,0x5
    80003ddc:	4b850513          	addi	a0,a0,1208 # 80009290 <CONSOLE_STATUS+0x280>
    80003de0:	00002097          	auipc	ra,0x2
    80003de4:	eb4080e7          	jalr	-332(ra) # 80005c94 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003de8:	00500313          	li	t1,5
    thread_dispatch();
    80003dec:	ffffd097          	auipc	ra,0xffffd
    80003df0:	5e0080e7          	jalr	1504(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003df4:	01000513          	li	a0,16
    80003df8:	00000097          	auipc	ra,0x0
    80003dfc:	be8080e7          	jalr	-1048(ra) # 800039e0 <_ZL9fibonaccim>
    80003e00:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003e04:	00005517          	auipc	a0,0x5
    80003e08:	49c50513          	addi	a0,a0,1180 # 800092a0 <CONSOLE_STATUS+0x290>
    80003e0c:	00002097          	auipc	ra,0x2
    80003e10:	e88080e7          	jalr	-376(ra) # 80005c94 <_Z11printStringPKc>
    80003e14:	00000613          	li	a2,0
    80003e18:	00a00593          	li	a1,10
    80003e1c:	0009051b          	sext.w	a0,s2
    80003e20:	00002097          	auipc	ra,0x2
    80003e24:	024080e7          	jalr	36(ra) # 80005e44 <_Z8printIntiii>
    80003e28:	00005517          	auipc	a0,0x5
    80003e2c:	66050513          	addi	a0,a0,1632 # 80009488 <CONSOLE_STATUS+0x478>
    80003e30:	00002097          	auipc	ra,0x2
    80003e34:	e64080e7          	jalr	-412(ra) # 80005c94 <_Z11printStringPKc>
    80003e38:	0400006f          	j	80003e78 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003e3c:	00005517          	auipc	a0,0x5
    80003e40:	44c50513          	addi	a0,a0,1100 # 80009288 <CONSOLE_STATUS+0x278>
    80003e44:	00002097          	auipc	ra,0x2
    80003e48:	e50080e7          	jalr	-432(ra) # 80005c94 <_Z11printStringPKc>
    80003e4c:	00000613          	li	a2,0
    80003e50:	00a00593          	li	a1,10
    80003e54:	00048513          	mv	a0,s1
    80003e58:	00002097          	auipc	ra,0x2
    80003e5c:	fec080e7          	jalr	-20(ra) # 80005e44 <_Z8printIntiii>
    80003e60:	00005517          	auipc	a0,0x5
    80003e64:	62850513          	addi	a0,a0,1576 # 80009488 <CONSOLE_STATUS+0x478>
    80003e68:	00002097          	auipc	ra,0x2
    80003e6c:	e2c080e7          	jalr	-468(ra) # 80005c94 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003e70:	0014849b          	addiw	s1,s1,1
    80003e74:	0ff4f493          	andi	s1,s1,255
    80003e78:	00f00793          	li	a5,15
    80003e7c:	fc97f0e3          	bgeu	a5,s1,80003e3c <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003e80:	00005517          	auipc	a0,0x5
    80003e84:	43050513          	addi	a0,a0,1072 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80003e88:	00002097          	auipc	ra,0x2
    80003e8c:	e0c080e7          	jalr	-500(ra) # 80005c94 <_Z11printStringPKc>
    finishedD = true;
    80003e90:	00100793          	li	a5,1
    80003e94:	00008717          	auipc	a4,0x8
    80003e98:	f2f707a3          	sb	a5,-209(a4) # 8000bdc3 <_ZL9finishedD>
    thread_dispatch();
    80003e9c:	ffffd097          	auipc	ra,0xffffd
    80003ea0:	530080e7          	jalr	1328(ra) # 800013cc <_Z15thread_dispatchv>
}
    80003ea4:	01813083          	ld	ra,24(sp)
    80003ea8:	01013403          	ld	s0,16(sp)
    80003eac:	00813483          	ld	s1,8(sp)
    80003eb0:	00013903          	ld	s2,0(sp)
    80003eb4:	02010113          	addi	sp,sp,32
    80003eb8:	00008067          	ret

0000000080003ebc <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003ebc:	fc010113          	addi	sp,sp,-64
    80003ec0:	02113c23          	sd	ra,56(sp)
    80003ec4:	02813823          	sd	s0,48(sp)
    80003ec8:	02913423          	sd	s1,40(sp)
    80003ecc:	03213023          	sd	s2,32(sp)
    80003ed0:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003ed4:	02000513          	li	a0,32
    80003ed8:	ffffe097          	auipc	ra,0xffffe
    80003edc:	05c080e7          	jalr	92(ra) # 80001f34 <_Znwm>
    80003ee0:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003ee4:	ffffe097          	auipc	ra,0xffffe
    80003ee8:	1d4080e7          	jalr	468(ra) # 800020b8 <_ZN6ThreadC1Ev>
    80003eec:	00008797          	auipc	a5,0x8
    80003ef0:	c2478793          	addi	a5,a5,-988 # 8000bb10 <_ZTV7WorkerA+0x10>
    80003ef4:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003ef8:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003efc:	00005517          	auipc	a0,0x5
    80003f00:	3c450513          	addi	a0,a0,964 # 800092c0 <CONSOLE_STATUS+0x2b0>
    80003f04:	00002097          	auipc	ra,0x2
    80003f08:	d90080e7          	jalr	-624(ra) # 80005c94 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003f0c:	02000513          	li	a0,32
    80003f10:	ffffe097          	auipc	ra,0xffffe
    80003f14:	024080e7          	jalr	36(ra) # 80001f34 <_Znwm>
    80003f18:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003f1c:	ffffe097          	auipc	ra,0xffffe
    80003f20:	19c080e7          	jalr	412(ra) # 800020b8 <_ZN6ThreadC1Ev>
    80003f24:	00008797          	auipc	a5,0x8
    80003f28:	c1478793          	addi	a5,a5,-1004 # 8000bb38 <_ZTV7WorkerB+0x10>
    80003f2c:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003f30:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003f34:	00005517          	auipc	a0,0x5
    80003f38:	3a450513          	addi	a0,a0,932 # 800092d8 <CONSOLE_STATUS+0x2c8>
    80003f3c:	00002097          	auipc	ra,0x2
    80003f40:	d58080e7          	jalr	-680(ra) # 80005c94 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003f44:	02000513          	li	a0,32
    80003f48:	ffffe097          	auipc	ra,0xffffe
    80003f4c:	fec080e7          	jalr	-20(ra) # 80001f34 <_Znwm>
    80003f50:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003f54:	ffffe097          	auipc	ra,0xffffe
    80003f58:	164080e7          	jalr	356(ra) # 800020b8 <_ZN6ThreadC1Ev>
    80003f5c:	00008797          	auipc	a5,0x8
    80003f60:	c0478793          	addi	a5,a5,-1020 # 8000bb60 <_ZTV7WorkerC+0x10>
    80003f64:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003f68:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003f6c:	00005517          	auipc	a0,0x5
    80003f70:	38450513          	addi	a0,a0,900 # 800092f0 <CONSOLE_STATUS+0x2e0>
    80003f74:	00002097          	auipc	ra,0x2
    80003f78:	d20080e7          	jalr	-736(ra) # 80005c94 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003f7c:	02000513          	li	a0,32
    80003f80:	ffffe097          	auipc	ra,0xffffe
    80003f84:	fb4080e7          	jalr	-76(ra) # 80001f34 <_Znwm>
    80003f88:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003f8c:	ffffe097          	auipc	ra,0xffffe
    80003f90:	12c080e7          	jalr	300(ra) # 800020b8 <_ZN6ThreadC1Ev>
    80003f94:	00008797          	auipc	a5,0x8
    80003f98:	bf478793          	addi	a5,a5,-1036 # 8000bb88 <_ZTV7WorkerD+0x10>
    80003f9c:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003fa0:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003fa4:	00005517          	auipc	a0,0x5
    80003fa8:	36450513          	addi	a0,a0,868 # 80009308 <CONSOLE_STATUS+0x2f8>
    80003fac:	00002097          	auipc	ra,0x2
    80003fb0:	ce8080e7          	jalr	-792(ra) # 80005c94 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003fb4:	00000493          	li	s1,0
    80003fb8:	00300793          	li	a5,3
    80003fbc:	0297c663          	blt	a5,s1,80003fe8 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003fc0:	00349793          	slli	a5,s1,0x3
    80003fc4:	fe040713          	addi	a4,s0,-32
    80003fc8:	00f707b3          	add	a5,a4,a5
    80003fcc:	fe07b503          	ld	a0,-32(a5)
    80003fd0:	ffffe097          	auipc	ra,0xffffe
    80003fd4:	064080e7          	jalr	100(ra) # 80002034 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003fd8:	0014849b          	addiw	s1,s1,1
    80003fdc:	fddff06f          	j	80003fb8 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003fe0:	ffffe097          	auipc	ra,0xffffe
    80003fe4:	088080e7          	jalr	136(ra) # 80002068 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003fe8:	00008797          	auipc	a5,0x8
    80003fec:	dd87c783          	lbu	a5,-552(a5) # 8000bdc0 <_ZL9finishedA>
    80003ff0:	fe0788e3          	beqz	a5,80003fe0 <_Z20Threads_CPP_API_testv+0x124>
    80003ff4:	00008797          	auipc	a5,0x8
    80003ff8:	dcd7c783          	lbu	a5,-563(a5) # 8000bdc1 <_ZL9finishedB>
    80003ffc:	fe0782e3          	beqz	a5,80003fe0 <_Z20Threads_CPP_API_testv+0x124>
    80004000:	00008797          	auipc	a5,0x8
    80004004:	dc27c783          	lbu	a5,-574(a5) # 8000bdc2 <_ZL9finishedC>
    80004008:	fc078ce3          	beqz	a5,80003fe0 <_Z20Threads_CPP_API_testv+0x124>
    8000400c:	00008797          	auipc	a5,0x8
    80004010:	db77c783          	lbu	a5,-585(a5) # 8000bdc3 <_ZL9finishedD>
    80004014:	fc0786e3          	beqz	a5,80003fe0 <_Z20Threads_CPP_API_testv+0x124>
    80004018:	fc040493          	addi	s1,s0,-64
    8000401c:	0080006f          	j	80004024 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80004020:	00848493          	addi	s1,s1,8
    80004024:	fe040793          	addi	a5,s0,-32
    80004028:	08f48663          	beq	s1,a5,800040b4 <_Z20Threads_CPP_API_testv+0x1f8>
    8000402c:	0004b503          	ld	a0,0(s1)
    80004030:	fe0508e3          	beqz	a0,80004020 <_Z20Threads_CPP_API_testv+0x164>
    80004034:	00053783          	ld	a5,0(a0)
    80004038:	0087b783          	ld	a5,8(a5)
    8000403c:	000780e7          	jalr	a5
    80004040:	fe1ff06f          	j	80004020 <_Z20Threads_CPP_API_testv+0x164>
    80004044:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80004048:	00048513          	mv	a0,s1
    8000404c:	ffffe097          	auipc	ra,0xffffe
    80004050:	f10080e7          	jalr	-240(ra) # 80001f5c <_ZdlPv>
    80004054:	00090513          	mv	a0,s2
    80004058:	00009097          	auipc	ra,0x9
    8000405c:	e90080e7          	jalr	-368(ra) # 8000cee8 <_Unwind_Resume>
    80004060:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80004064:	00048513          	mv	a0,s1
    80004068:	ffffe097          	auipc	ra,0xffffe
    8000406c:	ef4080e7          	jalr	-268(ra) # 80001f5c <_ZdlPv>
    80004070:	00090513          	mv	a0,s2
    80004074:	00009097          	auipc	ra,0x9
    80004078:	e74080e7          	jalr	-396(ra) # 8000cee8 <_Unwind_Resume>
    8000407c:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80004080:	00048513          	mv	a0,s1
    80004084:	ffffe097          	auipc	ra,0xffffe
    80004088:	ed8080e7          	jalr	-296(ra) # 80001f5c <_ZdlPv>
    8000408c:	00090513          	mv	a0,s2
    80004090:	00009097          	auipc	ra,0x9
    80004094:	e58080e7          	jalr	-424(ra) # 8000cee8 <_Unwind_Resume>
    80004098:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    8000409c:	00048513          	mv	a0,s1
    800040a0:	ffffe097          	auipc	ra,0xffffe
    800040a4:	ebc080e7          	jalr	-324(ra) # 80001f5c <_ZdlPv>
    800040a8:	00090513          	mv	a0,s2
    800040ac:	00009097          	auipc	ra,0x9
    800040b0:	e3c080e7          	jalr	-452(ra) # 8000cee8 <_Unwind_Resume>
}
    800040b4:	03813083          	ld	ra,56(sp)
    800040b8:	03013403          	ld	s0,48(sp)
    800040bc:	02813483          	ld	s1,40(sp)
    800040c0:	02013903          	ld	s2,32(sp)
    800040c4:	04010113          	addi	sp,sp,64
    800040c8:	00008067          	ret

00000000800040cc <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    800040cc:	ff010113          	addi	sp,sp,-16
    800040d0:	00113423          	sd	ra,8(sp)
    800040d4:	00813023          	sd	s0,0(sp)
    800040d8:	01010413          	addi	s0,sp,16
    800040dc:	00008797          	auipc	a5,0x8
    800040e0:	a3478793          	addi	a5,a5,-1484 # 8000bb10 <_ZTV7WorkerA+0x10>
    800040e4:	00f53023          	sd	a5,0(a0)
    800040e8:	ffffe097          	auipc	ra,0xffffe
    800040ec:	db4080e7          	jalr	-588(ra) # 80001e9c <_ZN6ThreadD1Ev>
    800040f0:	00813083          	ld	ra,8(sp)
    800040f4:	00013403          	ld	s0,0(sp)
    800040f8:	01010113          	addi	sp,sp,16
    800040fc:	00008067          	ret

0000000080004100 <_ZN7WorkerAD0Ev>:
    80004100:	fe010113          	addi	sp,sp,-32
    80004104:	00113c23          	sd	ra,24(sp)
    80004108:	00813823          	sd	s0,16(sp)
    8000410c:	00913423          	sd	s1,8(sp)
    80004110:	02010413          	addi	s0,sp,32
    80004114:	00050493          	mv	s1,a0
    80004118:	00008797          	auipc	a5,0x8
    8000411c:	9f878793          	addi	a5,a5,-1544 # 8000bb10 <_ZTV7WorkerA+0x10>
    80004120:	00f53023          	sd	a5,0(a0)
    80004124:	ffffe097          	auipc	ra,0xffffe
    80004128:	d78080e7          	jalr	-648(ra) # 80001e9c <_ZN6ThreadD1Ev>
    8000412c:	00048513          	mv	a0,s1
    80004130:	ffffe097          	auipc	ra,0xffffe
    80004134:	e2c080e7          	jalr	-468(ra) # 80001f5c <_ZdlPv>
    80004138:	01813083          	ld	ra,24(sp)
    8000413c:	01013403          	ld	s0,16(sp)
    80004140:	00813483          	ld	s1,8(sp)
    80004144:	02010113          	addi	sp,sp,32
    80004148:	00008067          	ret

000000008000414c <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    8000414c:	ff010113          	addi	sp,sp,-16
    80004150:	00113423          	sd	ra,8(sp)
    80004154:	00813023          	sd	s0,0(sp)
    80004158:	01010413          	addi	s0,sp,16
    8000415c:	00008797          	auipc	a5,0x8
    80004160:	9dc78793          	addi	a5,a5,-1572 # 8000bb38 <_ZTV7WorkerB+0x10>
    80004164:	00f53023          	sd	a5,0(a0)
    80004168:	ffffe097          	auipc	ra,0xffffe
    8000416c:	d34080e7          	jalr	-716(ra) # 80001e9c <_ZN6ThreadD1Ev>
    80004170:	00813083          	ld	ra,8(sp)
    80004174:	00013403          	ld	s0,0(sp)
    80004178:	01010113          	addi	sp,sp,16
    8000417c:	00008067          	ret

0000000080004180 <_ZN7WorkerBD0Ev>:
    80004180:	fe010113          	addi	sp,sp,-32
    80004184:	00113c23          	sd	ra,24(sp)
    80004188:	00813823          	sd	s0,16(sp)
    8000418c:	00913423          	sd	s1,8(sp)
    80004190:	02010413          	addi	s0,sp,32
    80004194:	00050493          	mv	s1,a0
    80004198:	00008797          	auipc	a5,0x8
    8000419c:	9a078793          	addi	a5,a5,-1632 # 8000bb38 <_ZTV7WorkerB+0x10>
    800041a0:	00f53023          	sd	a5,0(a0)
    800041a4:	ffffe097          	auipc	ra,0xffffe
    800041a8:	cf8080e7          	jalr	-776(ra) # 80001e9c <_ZN6ThreadD1Ev>
    800041ac:	00048513          	mv	a0,s1
    800041b0:	ffffe097          	auipc	ra,0xffffe
    800041b4:	dac080e7          	jalr	-596(ra) # 80001f5c <_ZdlPv>
    800041b8:	01813083          	ld	ra,24(sp)
    800041bc:	01013403          	ld	s0,16(sp)
    800041c0:	00813483          	ld	s1,8(sp)
    800041c4:	02010113          	addi	sp,sp,32
    800041c8:	00008067          	ret

00000000800041cc <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    800041cc:	ff010113          	addi	sp,sp,-16
    800041d0:	00113423          	sd	ra,8(sp)
    800041d4:	00813023          	sd	s0,0(sp)
    800041d8:	01010413          	addi	s0,sp,16
    800041dc:	00008797          	auipc	a5,0x8
    800041e0:	98478793          	addi	a5,a5,-1660 # 8000bb60 <_ZTV7WorkerC+0x10>
    800041e4:	00f53023          	sd	a5,0(a0)
    800041e8:	ffffe097          	auipc	ra,0xffffe
    800041ec:	cb4080e7          	jalr	-844(ra) # 80001e9c <_ZN6ThreadD1Ev>
    800041f0:	00813083          	ld	ra,8(sp)
    800041f4:	00013403          	ld	s0,0(sp)
    800041f8:	01010113          	addi	sp,sp,16
    800041fc:	00008067          	ret

0000000080004200 <_ZN7WorkerCD0Ev>:
    80004200:	fe010113          	addi	sp,sp,-32
    80004204:	00113c23          	sd	ra,24(sp)
    80004208:	00813823          	sd	s0,16(sp)
    8000420c:	00913423          	sd	s1,8(sp)
    80004210:	02010413          	addi	s0,sp,32
    80004214:	00050493          	mv	s1,a0
    80004218:	00008797          	auipc	a5,0x8
    8000421c:	94878793          	addi	a5,a5,-1720 # 8000bb60 <_ZTV7WorkerC+0x10>
    80004220:	00f53023          	sd	a5,0(a0)
    80004224:	ffffe097          	auipc	ra,0xffffe
    80004228:	c78080e7          	jalr	-904(ra) # 80001e9c <_ZN6ThreadD1Ev>
    8000422c:	00048513          	mv	a0,s1
    80004230:	ffffe097          	auipc	ra,0xffffe
    80004234:	d2c080e7          	jalr	-724(ra) # 80001f5c <_ZdlPv>
    80004238:	01813083          	ld	ra,24(sp)
    8000423c:	01013403          	ld	s0,16(sp)
    80004240:	00813483          	ld	s1,8(sp)
    80004244:	02010113          	addi	sp,sp,32
    80004248:	00008067          	ret

000000008000424c <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    8000424c:	ff010113          	addi	sp,sp,-16
    80004250:	00113423          	sd	ra,8(sp)
    80004254:	00813023          	sd	s0,0(sp)
    80004258:	01010413          	addi	s0,sp,16
    8000425c:	00008797          	auipc	a5,0x8
    80004260:	92c78793          	addi	a5,a5,-1748 # 8000bb88 <_ZTV7WorkerD+0x10>
    80004264:	00f53023          	sd	a5,0(a0)
    80004268:	ffffe097          	auipc	ra,0xffffe
    8000426c:	c34080e7          	jalr	-972(ra) # 80001e9c <_ZN6ThreadD1Ev>
    80004270:	00813083          	ld	ra,8(sp)
    80004274:	00013403          	ld	s0,0(sp)
    80004278:	01010113          	addi	sp,sp,16
    8000427c:	00008067          	ret

0000000080004280 <_ZN7WorkerDD0Ev>:
    80004280:	fe010113          	addi	sp,sp,-32
    80004284:	00113c23          	sd	ra,24(sp)
    80004288:	00813823          	sd	s0,16(sp)
    8000428c:	00913423          	sd	s1,8(sp)
    80004290:	02010413          	addi	s0,sp,32
    80004294:	00050493          	mv	s1,a0
    80004298:	00008797          	auipc	a5,0x8
    8000429c:	8f078793          	addi	a5,a5,-1808 # 8000bb88 <_ZTV7WorkerD+0x10>
    800042a0:	00f53023          	sd	a5,0(a0)
    800042a4:	ffffe097          	auipc	ra,0xffffe
    800042a8:	bf8080e7          	jalr	-1032(ra) # 80001e9c <_ZN6ThreadD1Ev>
    800042ac:	00048513          	mv	a0,s1
    800042b0:	ffffe097          	auipc	ra,0xffffe
    800042b4:	cac080e7          	jalr	-852(ra) # 80001f5c <_ZdlPv>
    800042b8:	01813083          	ld	ra,24(sp)
    800042bc:	01013403          	ld	s0,16(sp)
    800042c0:	00813483          	ld	s1,8(sp)
    800042c4:	02010113          	addi	sp,sp,32
    800042c8:	00008067          	ret

00000000800042cc <_ZN7WorkerA3runEv>:
    void run() override {
    800042cc:	ff010113          	addi	sp,sp,-16
    800042d0:	00113423          	sd	ra,8(sp)
    800042d4:	00813023          	sd	s0,0(sp)
    800042d8:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    800042dc:	00000593          	li	a1,0
    800042e0:	fffff097          	auipc	ra,0xfffff
    800042e4:	774080e7          	jalr	1908(ra) # 80003a54 <_ZN7WorkerA11workerBodyAEPv>
    }
    800042e8:	00813083          	ld	ra,8(sp)
    800042ec:	00013403          	ld	s0,0(sp)
    800042f0:	01010113          	addi	sp,sp,16
    800042f4:	00008067          	ret

00000000800042f8 <_ZN7WorkerB3runEv>:
    void run() override {
    800042f8:	ff010113          	addi	sp,sp,-16
    800042fc:	00113423          	sd	ra,8(sp)
    80004300:	00813023          	sd	s0,0(sp)
    80004304:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80004308:	00000593          	li	a1,0
    8000430c:	00000097          	auipc	ra,0x0
    80004310:	814080e7          	jalr	-2028(ra) # 80003b20 <_ZN7WorkerB11workerBodyBEPv>
    }
    80004314:	00813083          	ld	ra,8(sp)
    80004318:	00013403          	ld	s0,0(sp)
    8000431c:	01010113          	addi	sp,sp,16
    80004320:	00008067          	ret

0000000080004324 <_ZN7WorkerC3runEv>:
    void run() override {
    80004324:	ff010113          	addi	sp,sp,-16
    80004328:	00113423          	sd	ra,8(sp)
    8000432c:	00813023          	sd	s0,0(sp)
    80004330:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80004334:	00000593          	li	a1,0
    80004338:	00000097          	auipc	ra,0x0
    8000433c:	8bc080e7          	jalr	-1860(ra) # 80003bf4 <_ZN7WorkerC11workerBodyCEPv>
    }
    80004340:	00813083          	ld	ra,8(sp)
    80004344:	00013403          	ld	s0,0(sp)
    80004348:	01010113          	addi	sp,sp,16
    8000434c:	00008067          	ret

0000000080004350 <_ZN7WorkerD3runEv>:
    void run() override {
    80004350:	ff010113          	addi	sp,sp,-16
    80004354:	00113423          	sd	ra,8(sp)
    80004358:	00813023          	sd	s0,0(sp)
    8000435c:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80004360:	00000593          	li	a1,0
    80004364:	00000097          	auipc	ra,0x0
    80004368:	a10080e7          	jalr	-1520(ra) # 80003d74 <_ZN7WorkerD11workerBodyDEPv>
    }
    8000436c:	00813083          	ld	ra,8(sp)
    80004370:	00013403          	ld	s0,0(sp)
    80004374:	01010113          	addi	sp,sp,16
    80004378:	00008067          	ret

000000008000437c <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    8000437c:	f8010113          	addi	sp,sp,-128
    80004380:	06113c23          	sd	ra,120(sp)
    80004384:	06813823          	sd	s0,112(sp)
    80004388:	06913423          	sd	s1,104(sp)
    8000438c:	07213023          	sd	s2,96(sp)
    80004390:	05313c23          	sd	s3,88(sp)
    80004394:	05413823          	sd	s4,80(sp)
    80004398:	05513423          	sd	s5,72(sp)
    8000439c:	05613023          	sd	s6,64(sp)
    800043a0:	03713c23          	sd	s7,56(sp)
    800043a4:	03813823          	sd	s8,48(sp)
    800043a8:	03913423          	sd	s9,40(sp)
    800043ac:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    800043b0:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    800043b4:	00005517          	auipc	a0,0x5
    800043b8:	d8c50513          	addi	a0,a0,-628 # 80009140 <CONSOLE_STATUS+0x130>
    800043bc:	00002097          	auipc	ra,0x2
    800043c0:	8d8080e7          	jalr	-1832(ra) # 80005c94 <_Z11printStringPKc>
    getString(input, 30);
    800043c4:	01e00593          	li	a1,30
    800043c8:	f8040493          	addi	s1,s0,-128
    800043cc:	00048513          	mv	a0,s1
    800043d0:	00002097          	auipc	ra,0x2
    800043d4:	94c080e7          	jalr	-1716(ra) # 80005d1c <_Z9getStringPci>
    threadNum = stringToInt(input);
    800043d8:	00048513          	mv	a0,s1
    800043dc:	00002097          	auipc	ra,0x2
    800043e0:	a18080e7          	jalr	-1512(ra) # 80005df4 <_Z11stringToIntPKc>
    800043e4:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    800043e8:	00005517          	auipc	a0,0x5
    800043ec:	d7850513          	addi	a0,a0,-648 # 80009160 <CONSOLE_STATUS+0x150>
    800043f0:	00002097          	auipc	ra,0x2
    800043f4:	8a4080e7          	jalr	-1884(ra) # 80005c94 <_Z11printStringPKc>
    getString(input, 30);
    800043f8:	01e00593          	li	a1,30
    800043fc:	00048513          	mv	a0,s1
    80004400:	00002097          	auipc	ra,0x2
    80004404:	91c080e7          	jalr	-1764(ra) # 80005d1c <_Z9getStringPci>
    n = stringToInt(input);
    80004408:	00048513          	mv	a0,s1
    8000440c:	00002097          	auipc	ra,0x2
    80004410:	9e8080e7          	jalr	-1560(ra) # 80005df4 <_Z11stringToIntPKc>
    80004414:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80004418:	00005517          	auipc	a0,0x5
    8000441c:	d6850513          	addi	a0,a0,-664 # 80009180 <CONSOLE_STATUS+0x170>
    80004420:	00002097          	auipc	ra,0x2
    80004424:	874080e7          	jalr	-1932(ra) # 80005c94 <_Z11printStringPKc>
    printInt(threadNum);
    80004428:	00000613          	li	a2,0
    8000442c:	00a00593          	li	a1,10
    80004430:	00098513          	mv	a0,s3
    80004434:	00002097          	auipc	ra,0x2
    80004438:	a10080e7          	jalr	-1520(ra) # 80005e44 <_Z8printIntiii>
    printString(" i velicina bafera ");
    8000443c:	00005517          	auipc	a0,0x5
    80004440:	d5c50513          	addi	a0,a0,-676 # 80009198 <CONSOLE_STATUS+0x188>
    80004444:	00002097          	auipc	ra,0x2
    80004448:	850080e7          	jalr	-1968(ra) # 80005c94 <_Z11printStringPKc>
    printInt(n);
    8000444c:	00000613          	li	a2,0
    80004450:	00a00593          	li	a1,10
    80004454:	00048513          	mv	a0,s1
    80004458:	00002097          	auipc	ra,0x2
    8000445c:	9ec080e7          	jalr	-1556(ra) # 80005e44 <_Z8printIntiii>
    printString(".\n");
    80004460:	00005517          	auipc	a0,0x5
    80004464:	d5050513          	addi	a0,a0,-688 # 800091b0 <CONSOLE_STATUS+0x1a0>
    80004468:	00002097          	auipc	ra,0x2
    8000446c:	82c080e7          	jalr	-2004(ra) # 80005c94 <_Z11printStringPKc>
    if (threadNum > n) {
    80004470:	0334c463          	blt	s1,s3,80004498 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80004474:	03305c63          	blez	s3,800044ac <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004478:	03800513          	li	a0,56
    8000447c:	ffffe097          	auipc	ra,0xffffe
    80004480:	ab8080e7          	jalr	-1352(ra) # 80001f34 <_Znwm>
    80004484:	00050a93          	mv	s5,a0
    80004488:	00048593          	mv	a1,s1
    8000448c:	00002097          	auipc	ra,0x2
    80004490:	ad8080e7          	jalr	-1320(ra) # 80005f64 <_ZN9BufferCPPC1Ei>
    80004494:	0300006f          	j	800044c4 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004498:	00005517          	auipc	a0,0x5
    8000449c:	d2050513          	addi	a0,a0,-736 # 800091b8 <CONSOLE_STATUS+0x1a8>
    800044a0:	00001097          	auipc	ra,0x1
    800044a4:	7f4080e7          	jalr	2036(ra) # 80005c94 <_Z11printStringPKc>
        return;
    800044a8:	0140006f          	j	800044bc <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800044ac:	00005517          	auipc	a0,0x5
    800044b0:	d4c50513          	addi	a0,a0,-692 # 800091f8 <CONSOLE_STATUS+0x1e8>
    800044b4:	00001097          	auipc	ra,0x1
    800044b8:	7e0080e7          	jalr	2016(ra) # 80005c94 <_Z11printStringPKc>
        return;
    800044bc:	000c0113          	mv	sp,s8
    800044c0:	2140006f          	j	800046d4 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    800044c4:	01000513          	li	a0,16
    800044c8:	ffffe097          	auipc	ra,0xffffe
    800044cc:	a6c080e7          	jalr	-1428(ra) # 80001f34 <_Znwm>
    800044d0:	00050913          	mv	s2,a0
    800044d4:	00000593          	li	a1,0
    800044d8:	ffffe097          	auipc	ra,0xffffe
    800044dc:	c10080e7          	jalr	-1008(ra) # 800020e8 <_ZN9SemaphoreC1Ej>
    800044e0:	00008797          	auipc	a5,0x8
    800044e4:	8f27b823          	sd	s2,-1808(a5) # 8000bdd0 <_ZL10waitForAll>
    Thread *producers[threadNum];
    800044e8:	00399793          	slli	a5,s3,0x3
    800044ec:	00f78793          	addi	a5,a5,15
    800044f0:	ff07f793          	andi	a5,a5,-16
    800044f4:	40f10133          	sub	sp,sp,a5
    800044f8:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    800044fc:	0019871b          	addiw	a4,s3,1
    80004500:	00171793          	slli	a5,a4,0x1
    80004504:	00e787b3          	add	a5,a5,a4
    80004508:	00379793          	slli	a5,a5,0x3
    8000450c:	00f78793          	addi	a5,a5,15
    80004510:	ff07f793          	andi	a5,a5,-16
    80004514:	40f10133          	sub	sp,sp,a5
    80004518:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    8000451c:	00199493          	slli	s1,s3,0x1
    80004520:	013484b3          	add	s1,s1,s3
    80004524:	00349493          	slli	s1,s1,0x3
    80004528:	009b04b3          	add	s1,s6,s1
    8000452c:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80004530:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80004534:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004538:	02800513          	li	a0,40
    8000453c:	ffffe097          	auipc	ra,0xffffe
    80004540:	9f8080e7          	jalr	-1544(ra) # 80001f34 <_Znwm>
    80004544:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80004548:	ffffe097          	auipc	ra,0xffffe
    8000454c:	b70080e7          	jalr	-1168(ra) # 800020b8 <_ZN6ThreadC1Ev>
    80004550:	00007797          	auipc	a5,0x7
    80004554:	6b078793          	addi	a5,a5,1712 # 8000bc00 <_ZTV8Consumer+0x10>
    80004558:	00fbb023          	sd	a5,0(s7)
    8000455c:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80004560:	000b8513          	mv	a0,s7
    80004564:	ffffe097          	auipc	ra,0xffffe
    80004568:	ad0080e7          	jalr	-1328(ra) # 80002034 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    8000456c:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80004570:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80004574:	00008797          	auipc	a5,0x8
    80004578:	85c7b783          	ld	a5,-1956(a5) # 8000bdd0 <_ZL10waitForAll>
    8000457c:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004580:	02800513          	li	a0,40
    80004584:	ffffe097          	auipc	ra,0xffffe
    80004588:	9b0080e7          	jalr	-1616(ra) # 80001f34 <_Znwm>
    8000458c:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80004590:	ffffe097          	auipc	ra,0xffffe
    80004594:	b28080e7          	jalr	-1240(ra) # 800020b8 <_ZN6ThreadC1Ev>
    80004598:	00007797          	auipc	a5,0x7
    8000459c:	61878793          	addi	a5,a5,1560 # 8000bbb0 <_ZTV16ProducerKeyborad+0x10>
    800045a0:	00f4b023          	sd	a5,0(s1)
    800045a4:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800045a8:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    800045ac:	00048513          	mv	a0,s1
    800045b0:	ffffe097          	auipc	ra,0xffffe
    800045b4:	a84080e7          	jalr	-1404(ra) # 80002034 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800045b8:	00100913          	li	s2,1
    800045bc:	0300006f          	j	800045ec <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800045c0:	00007797          	auipc	a5,0x7
    800045c4:	61878793          	addi	a5,a5,1560 # 8000bbd8 <_ZTV8Producer+0x10>
    800045c8:	00fcb023          	sd	a5,0(s9)
    800045cc:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    800045d0:	00391793          	slli	a5,s2,0x3
    800045d4:	00fa07b3          	add	a5,s4,a5
    800045d8:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    800045dc:	000c8513          	mv	a0,s9
    800045e0:	ffffe097          	auipc	ra,0xffffe
    800045e4:	a54080e7          	jalr	-1452(ra) # 80002034 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800045e8:	0019091b          	addiw	s2,s2,1
    800045ec:	05395263          	bge	s2,s3,80004630 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    800045f0:	00191493          	slli	s1,s2,0x1
    800045f4:	012484b3          	add	s1,s1,s2
    800045f8:	00349493          	slli	s1,s1,0x3
    800045fc:	009b04b3          	add	s1,s6,s1
    80004600:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80004604:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80004608:	00007797          	auipc	a5,0x7
    8000460c:	7c87b783          	ld	a5,1992(a5) # 8000bdd0 <_ZL10waitForAll>
    80004610:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80004614:	02800513          	li	a0,40
    80004618:	ffffe097          	auipc	ra,0xffffe
    8000461c:	91c080e7          	jalr	-1764(ra) # 80001f34 <_Znwm>
    80004620:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004624:	ffffe097          	auipc	ra,0xffffe
    80004628:	a94080e7          	jalr	-1388(ra) # 800020b8 <_ZN6ThreadC1Ev>
    8000462c:	f95ff06f          	j	800045c0 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80004630:	ffffe097          	auipc	ra,0xffffe
    80004634:	a38080e7          	jalr	-1480(ra) # 80002068 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004638:	00000493          	li	s1,0
    8000463c:	0099ce63          	blt	s3,s1,80004658 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80004640:	00007517          	auipc	a0,0x7
    80004644:	79053503          	ld	a0,1936(a0) # 8000bdd0 <_ZL10waitForAll>
    80004648:	ffffe097          	auipc	ra,0xffffe
    8000464c:	adc080e7          	jalr	-1316(ra) # 80002124 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004650:	0014849b          	addiw	s1,s1,1
    80004654:	fe9ff06f          	j	8000463c <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80004658:	00007517          	auipc	a0,0x7
    8000465c:	77853503          	ld	a0,1912(a0) # 8000bdd0 <_ZL10waitForAll>
    80004660:	00050863          	beqz	a0,80004670 <_Z20testConsumerProducerv+0x2f4>
    80004664:	00053783          	ld	a5,0(a0)
    80004668:	0087b783          	ld	a5,8(a5)
    8000466c:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80004670:	00000493          	li	s1,0
    80004674:	0080006f          	j	8000467c <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80004678:	0014849b          	addiw	s1,s1,1
    8000467c:	0334d263          	bge	s1,s3,800046a0 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80004680:	00349793          	slli	a5,s1,0x3
    80004684:	00fa07b3          	add	a5,s4,a5
    80004688:	0007b503          	ld	a0,0(a5)
    8000468c:	fe0506e3          	beqz	a0,80004678 <_Z20testConsumerProducerv+0x2fc>
    80004690:	00053783          	ld	a5,0(a0)
    80004694:	0087b783          	ld	a5,8(a5)
    80004698:	000780e7          	jalr	a5
    8000469c:	fddff06f          	j	80004678 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    800046a0:	000b8a63          	beqz	s7,800046b4 <_Z20testConsumerProducerv+0x338>
    800046a4:	000bb783          	ld	a5,0(s7)
    800046a8:	0087b783          	ld	a5,8(a5)
    800046ac:	000b8513          	mv	a0,s7
    800046b0:	000780e7          	jalr	a5
    delete buffer;
    800046b4:	000a8e63          	beqz	s5,800046d0 <_Z20testConsumerProducerv+0x354>
    800046b8:	000a8513          	mv	a0,s5
    800046bc:	00002097          	auipc	ra,0x2
    800046c0:	ba0080e7          	jalr	-1120(ra) # 8000625c <_ZN9BufferCPPD1Ev>
    800046c4:	000a8513          	mv	a0,s5
    800046c8:	ffffe097          	auipc	ra,0xffffe
    800046cc:	894080e7          	jalr	-1900(ra) # 80001f5c <_ZdlPv>
    800046d0:	000c0113          	mv	sp,s8
}
    800046d4:	f8040113          	addi	sp,s0,-128
    800046d8:	07813083          	ld	ra,120(sp)
    800046dc:	07013403          	ld	s0,112(sp)
    800046e0:	06813483          	ld	s1,104(sp)
    800046e4:	06013903          	ld	s2,96(sp)
    800046e8:	05813983          	ld	s3,88(sp)
    800046ec:	05013a03          	ld	s4,80(sp)
    800046f0:	04813a83          	ld	s5,72(sp)
    800046f4:	04013b03          	ld	s6,64(sp)
    800046f8:	03813b83          	ld	s7,56(sp)
    800046fc:	03013c03          	ld	s8,48(sp)
    80004700:	02813c83          	ld	s9,40(sp)
    80004704:	08010113          	addi	sp,sp,128
    80004708:	00008067          	ret
    8000470c:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004710:	000a8513          	mv	a0,s5
    80004714:	ffffe097          	auipc	ra,0xffffe
    80004718:	848080e7          	jalr	-1976(ra) # 80001f5c <_ZdlPv>
    8000471c:	00048513          	mv	a0,s1
    80004720:	00008097          	auipc	ra,0x8
    80004724:	7c8080e7          	jalr	1992(ra) # 8000cee8 <_Unwind_Resume>
    80004728:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    8000472c:	00090513          	mv	a0,s2
    80004730:	ffffe097          	auipc	ra,0xffffe
    80004734:	82c080e7          	jalr	-2004(ra) # 80001f5c <_ZdlPv>
    80004738:	00048513          	mv	a0,s1
    8000473c:	00008097          	auipc	ra,0x8
    80004740:	7ac080e7          	jalr	1964(ra) # 8000cee8 <_Unwind_Resume>
    80004744:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004748:	000b8513          	mv	a0,s7
    8000474c:	ffffe097          	auipc	ra,0xffffe
    80004750:	810080e7          	jalr	-2032(ra) # 80001f5c <_ZdlPv>
    80004754:	00048513          	mv	a0,s1
    80004758:	00008097          	auipc	ra,0x8
    8000475c:	790080e7          	jalr	1936(ra) # 8000cee8 <_Unwind_Resume>
    80004760:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004764:	00048513          	mv	a0,s1
    80004768:	ffffd097          	auipc	ra,0xffffd
    8000476c:	7f4080e7          	jalr	2036(ra) # 80001f5c <_ZdlPv>
    80004770:	00090513          	mv	a0,s2
    80004774:	00008097          	auipc	ra,0x8
    80004778:	774080e7          	jalr	1908(ra) # 8000cee8 <_Unwind_Resume>
    8000477c:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80004780:	000c8513          	mv	a0,s9
    80004784:	ffffd097          	auipc	ra,0xffffd
    80004788:	7d8080e7          	jalr	2008(ra) # 80001f5c <_ZdlPv>
    8000478c:	00048513          	mv	a0,s1
    80004790:	00008097          	auipc	ra,0x8
    80004794:	758080e7          	jalr	1880(ra) # 8000cee8 <_Unwind_Resume>

0000000080004798 <_ZN8Consumer3runEv>:
    void run() override {
    80004798:	fd010113          	addi	sp,sp,-48
    8000479c:	02113423          	sd	ra,40(sp)
    800047a0:	02813023          	sd	s0,32(sp)
    800047a4:	00913c23          	sd	s1,24(sp)
    800047a8:	01213823          	sd	s2,16(sp)
    800047ac:	01313423          	sd	s3,8(sp)
    800047b0:	03010413          	addi	s0,sp,48
    800047b4:	00050913          	mv	s2,a0
        int i = 0;
    800047b8:	00000993          	li	s3,0
    800047bc:	0100006f          	j	800047cc <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    800047c0:	00a00513          	li	a0,10
    800047c4:	ffffe097          	auipc	ra,0xffffe
    800047c8:	ab8080e7          	jalr	-1352(ra) # 8000227c <_ZN7Console4putcEc>
        while (!threadEnd) {
    800047cc:	00007797          	auipc	a5,0x7
    800047d0:	5fc7a783          	lw	a5,1532(a5) # 8000bdc8 <_ZL9threadEnd>
    800047d4:	04079a63          	bnez	a5,80004828 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    800047d8:	02093783          	ld	a5,32(s2)
    800047dc:	0087b503          	ld	a0,8(a5)
    800047e0:	00002097          	auipc	ra,0x2
    800047e4:	968080e7          	jalr	-1688(ra) # 80006148 <_ZN9BufferCPP3getEv>
            i++;
    800047e8:	0019849b          	addiw	s1,s3,1
    800047ec:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    800047f0:	0ff57513          	andi	a0,a0,255
    800047f4:	ffffe097          	auipc	ra,0xffffe
    800047f8:	a88080e7          	jalr	-1400(ra) # 8000227c <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    800047fc:	05000793          	li	a5,80
    80004800:	02f4e4bb          	remw	s1,s1,a5
    80004804:	fc0494e3          	bnez	s1,800047cc <_ZN8Consumer3runEv+0x34>
    80004808:	fb9ff06f          	j	800047c0 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    8000480c:	02093783          	ld	a5,32(s2)
    80004810:	0087b503          	ld	a0,8(a5)
    80004814:	00002097          	auipc	ra,0x2
    80004818:	934080e7          	jalr	-1740(ra) # 80006148 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    8000481c:	0ff57513          	andi	a0,a0,255
    80004820:	ffffe097          	auipc	ra,0xffffe
    80004824:	a5c080e7          	jalr	-1444(ra) # 8000227c <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80004828:	02093783          	ld	a5,32(s2)
    8000482c:	0087b503          	ld	a0,8(a5)
    80004830:	00002097          	auipc	ra,0x2
    80004834:	9a4080e7          	jalr	-1628(ra) # 800061d4 <_ZN9BufferCPP6getCntEv>
    80004838:	fca04ae3          	bgtz	a0,8000480c <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    8000483c:	02093783          	ld	a5,32(s2)
    80004840:	0107b503          	ld	a0,16(a5)
    80004844:	ffffe097          	auipc	ra,0xffffe
    80004848:	918080e7          	jalr	-1768(ra) # 8000215c <_ZN9Semaphore6signalEv>
    }
    8000484c:	02813083          	ld	ra,40(sp)
    80004850:	02013403          	ld	s0,32(sp)
    80004854:	01813483          	ld	s1,24(sp)
    80004858:	01013903          	ld	s2,16(sp)
    8000485c:	00813983          	ld	s3,8(sp)
    80004860:	03010113          	addi	sp,sp,48
    80004864:	00008067          	ret

0000000080004868 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004868:	ff010113          	addi	sp,sp,-16
    8000486c:	00113423          	sd	ra,8(sp)
    80004870:	00813023          	sd	s0,0(sp)
    80004874:	01010413          	addi	s0,sp,16
    80004878:	00007797          	auipc	a5,0x7
    8000487c:	38878793          	addi	a5,a5,904 # 8000bc00 <_ZTV8Consumer+0x10>
    80004880:	00f53023          	sd	a5,0(a0)
    80004884:	ffffd097          	auipc	ra,0xffffd
    80004888:	618080e7          	jalr	1560(ra) # 80001e9c <_ZN6ThreadD1Ev>
    8000488c:	00813083          	ld	ra,8(sp)
    80004890:	00013403          	ld	s0,0(sp)
    80004894:	01010113          	addi	sp,sp,16
    80004898:	00008067          	ret

000000008000489c <_ZN8ConsumerD0Ev>:
    8000489c:	fe010113          	addi	sp,sp,-32
    800048a0:	00113c23          	sd	ra,24(sp)
    800048a4:	00813823          	sd	s0,16(sp)
    800048a8:	00913423          	sd	s1,8(sp)
    800048ac:	02010413          	addi	s0,sp,32
    800048b0:	00050493          	mv	s1,a0
    800048b4:	00007797          	auipc	a5,0x7
    800048b8:	34c78793          	addi	a5,a5,844 # 8000bc00 <_ZTV8Consumer+0x10>
    800048bc:	00f53023          	sd	a5,0(a0)
    800048c0:	ffffd097          	auipc	ra,0xffffd
    800048c4:	5dc080e7          	jalr	1500(ra) # 80001e9c <_ZN6ThreadD1Ev>
    800048c8:	00048513          	mv	a0,s1
    800048cc:	ffffd097          	auipc	ra,0xffffd
    800048d0:	690080e7          	jalr	1680(ra) # 80001f5c <_ZdlPv>
    800048d4:	01813083          	ld	ra,24(sp)
    800048d8:	01013403          	ld	s0,16(sp)
    800048dc:	00813483          	ld	s1,8(sp)
    800048e0:	02010113          	addi	sp,sp,32
    800048e4:	00008067          	ret

00000000800048e8 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    800048e8:	ff010113          	addi	sp,sp,-16
    800048ec:	00113423          	sd	ra,8(sp)
    800048f0:	00813023          	sd	s0,0(sp)
    800048f4:	01010413          	addi	s0,sp,16
    800048f8:	00007797          	auipc	a5,0x7
    800048fc:	2b878793          	addi	a5,a5,696 # 8000bbb0 <_ZTV16ProducerKeyborad+0x10>
    80004900:	00f53023          	sd	a5,0(a0)
    80004904:	ffffd097          	auipc	ra,0xffffd
    80004908:	598080e7          	jalr	1432(ra) # 80001e9c <_ZN6ThreadD1Ev>
    8000490c:	00813083          	ld	ra,8(sp)
    80004910:	00013403          	ld	s0,0(sp)
    80004914:	01010113          	addi	sp,sp,16
    80004918:	00008067          	ret

000000008000491c <_ZN16ProducerKeyboradD0Ev>:
    8000491c:	fe010113          	addi	sp,sp,-32
    80004920:	00113c23          	sd	ra,24(sp)
    80004924:	00813823          	sd	s0,16(sp)
    80004928:	00913423          	sd	s1,8(sp)
    8000492c:	02010413          	addi	s0,sp,32
    80004930:	00050493          	mv	s1,a0
    80004934:	00007797          	auipc	a5,0x7
    80004938:	27c78793          	addi	a5,a5,636 # 8000bbb0 <_ZTV16ProducerKeyborad+0x10>
    8000493c:	00f53023          	sd	a5,0(a0)
    80004940:	ffffd097          	auipc	ra,0xffffd
    80004944:	55c080e7          	jalr	1372(ra) # 80001e9c <_ZN6ThreadD1Ev>
    80004948:	00048513          	mv	a0,s1
    8000494c:	ffffd097          	auipc	ra,0xffffd
    80004950:	610080e7          	jalr	1552(ra) # 80001f5c <_ZdlPv>
    80004954:	01813083          	ld	ra,24(sp)
    80004958:	01013403          	ld	s0,16(sp)
    8000495c:	00813483          	ld	s1,8(sp)
    80004960:	02010113          	addi	sp,sp,32
    80004964:	00008067          	ret

0000000080004968 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004968:	ff010113          	addi	sp,sp,-16
    8000496c:	00113423          	sd	ra,8(sp)
    80004970:	00813023          	sd	s0,0(sp)
    80004974:	01010413          	addi	s0,sp,16
    80004978:	00007797          	auipc	a5,0x7
    8000497c:	26078793          	addi	a5,a5,608 # 8000bbd8 <_ZTV8Producer+0x10>
    80004980:	00f53023          	sd	a5,0(a0)
    80004984:	ffffd097          	auipc	ra,0xffffd
    80004988:	518080e7          	jalr	1304(ra) # 80001e9c <_ZN6ThreadD1Ev>
    8000498c:	00813083          	ld	ra,8(sp)
    80004990:	00013403          	ld	s0,0(sp)
    80004994:	01010113          	addi	sp,sp,16
    80004998:	00008067          	ret

000000008000499c <_ZN8ProducerD0Ev>:
    8000499c:	fe010113          	addi	sp,sp,-32
    800049a0:	00113c23          	sd	ra,24(sp)
    800049a4:	00813823          	sd	s0,16(sp)
    800049a8:	00913423          	sd	s1,8(sp)
    800049ac:	02010413          	addi	s0,sp,32
    800049b0:	00050493          	mv	s1,a0
    800049b4:	00007797          	auipc	a5,0x7
    800049b8:	22478793          	addi	a5,a5,548 # 8000bbd8 <_ZTV8Producer+0x10>
    800049bc:	00f53023          	sd	a5,0(a0)
    800049c0:	ffffd097          	auipc	ra,0xffffd
    800049c4:	4dc080e7          	jalr	1244(ra) # 80001e9c <_ZN6ThreadD1Ev>
    800049c8:	00048513          	mv	a0,s1
    800049cc:	ffffd097          	auipc	ra,0xffffd
    800049d0:	590080e7          	jalr	1424(ra) # 80001f5c <_ZdlPv>
    800049d4:	01813083          	ld	ra,24(sp)
    800049d8:	01013403          	ld	s0,16(sp)
    800049dc:	00813483          	ld	s1,8(sp)
    800049e0:	02010113          	addi	sp,sp,32
    800049e4:	00008067          	ret

00000000800049e8 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    800049e8:	fe010113          	addi	sp,sp,-32
    800049ec:	00113c23          	sd	ra,24(sp)
    800049f0:	00813823          	sd	s0,16(sp)
    800049f4:	00913423          	sd	s1,8(sp)
    800049f8:	02010413          	addi	s0,sp,32
    800049fc:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80004a00:	ffffd097          	auipc	ra,0xffffd
    80004a04:	c20080e7          	jalr	-992(ra) # 80001620 <_Z4getcv>
    80004a08:	0005059b          	sext.w	a1,a0
    80004a0c:	01b00793          	li	a5,27
    80004a10:	00f58c63          	beq	a1,a5,80004a28 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80004a14:	0204b783          	ld	a5,32(s1)
    80004a18:	0087b503          	ld	a0,8(a5)
    80004a1c:	00001097          	auipc	ra,0x1
    80004a20:	69c080e7          	jalr	1692(ra) # 800060b8 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80004a24:	fddff06f          	j	80004a00 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004a28:	00100793          	li	a5,1
    80004a2c:	00007717          	auipc	a4,0x7
    80004a30:	38f72e23          	sw	a5,924(a4) # 8000bdc8 <_ZL9threadEnd>
        td->buffer->put('!');
    80004a34:	0204b783          	ld	a5,32(s1)
    80004a38:	02100593          	li	a1,33
    80004a3c:	0087b503          	ld	a0,8(a5)
    80004a40:	00001097          	auipc	ra,0x1
    80004a44:	678080e7          	jalr	1656(ra) # 800060b8 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004a48:	0204b783          	ld	a5,32(s1)
    80004a4c:	0107b503          	ld	a0,16(a5)
    80004a50:	ffffd097          	auipc	ra,0xffffd
    80004a54:	70c080e7          	jalr	1804(ra) # 8000215c <_ZN9Semaphore6signalEv>
    }
    80004a58:	01813083          	ld	ra,24(sp)
    80004a5c:	01013403          	ld	s0,16(sp)
    80004a60:	00813483          	ld	s1,8(sp)
    80004a64:	02010113          	addi	sp,sp,32
    80004a68:	00008067          	ret

0000000080004a6c <_ZN8Producer3runEv>:
    void run() override {
    80004a6c:	fe010113          	addi	sp,sp,-32
    80004a70:	00113c23          	sd	ra,24(sp)
    80004a74:	00813823          	sd	s0,16(sp)
    80004a78:	00913423          	sd	s1,8(sp)
    80004a7c:	01213023          	sd	s2,0(sp)
    80004a80:	02010413          	addi	s0,sp,32
    80004a84:	00050493          	mv	s1,a0
        int i = 0;
    80004a88:	00000913          	li	s2,0
        while (!threadEnd) {
    80004a8c:	00007797          	auipc	a5,0x7
    80004a90:	33c7a783          	lw	a5,828(a5) # 8000bdc8 <_ZL9threadEnd>
    80004a94:	04079263          	bnez	a5,80004ad8 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004a98:	0204b783          	ld	a5,32(s1)
    80004a9c:	0007a583          	lw	a1,0(a5)
    80004aa0:	0305859b          	addiw	a1,a1,48
    80004aa4:	0087b503          	ld	a0,8(a5)
    80004aa8:	00001097          	auipc	ra,0x1
    80004aac:	610080e7          	jalr	1552(ra) # 800060b8 <_ZN9BufferCPP3putEi>
            i++;
    80004ab0:	0019071b          	addiw	a4,s2,1
    80004ab4:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004ab8:	0204b783          	ld	a5,32(s1)
    80004abc:	0007a783          	lw	a5,0(a5)
    80004ac0:	00e787bb          	addw	a5,a5,a4
    80004ac4:	00500513          	li	a0,5
    80004ac8:	02a7e53b          	remw	a0,a5,a0
    80004acc:	ffffd097          	auipc	ra,0xffffd
    80004ad0:	5c4080e7          	jalr	1476(ra) # 80002090 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004ad4:	fb9ff06f          	j	80004a8c <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004ad8:	0204b783          	ld	a5,32(s1)
    80004adc:	0107b503          	ld	a0,16(a5)
    80004ae0:	ffffd097          	auipc	ra,0xffffd
    80004ae4:	67c080e7          	jalr	1660(ra) # 8000215c <_ZN9Semaphore6signalEv>
    }
    80004ae8:	01813083          	ld	ra,24(sp)
    80004aec:	01013403          	ld	s0,16(sp)
    80004af0:	00813483          	ld	s1,8(sp)
    80004af4:	00013903          	ld	s2,0(sp)
    80004af8:	02010113          	addi	sp,sp,32
    80004afc:	00008067          	ret

0000000080004b00 <_ZN6BufferC1Ei>:
#include "bounded_buffer.hpp"


Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004b00:	fe010113          	addi	sp,sp,-32
    80004b04:	00113c23          	sd	ra,24(sp)
    80004b08:	00813823          	sd	s0,16(sp)
    80004b0c:	00913423          	sd	s1,8(sp)
    80004b10:	01213023          	sd	s2,0(sp)
    80004b14:	02010413          	addi	s0,sp,32
    80004b18:	00050493          	mv	s1,a0
    80004b1c:	00058913          	mv	s2,a1
    80004b20:	0015879b          	addiw	a5,a1,1
    80004b24:	0007851b          	sext.w	a0,a5
    80004b28:	00f4a023          	sw	a5,0(s1)
    80004b2c:	0004a823          	sw	zero,16(s1)
    80004b30:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004b34:	00251513          	slli	a0,a0,0x2
    80004b38:	ffffc097          	auipc	ra,0xffffc
    80004b3c:	720080e7          	jalr	1824(ra) # 80001258 <_Z9mem_allocm>
    80004b40:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80004b44:	00000593          	li	a1,0
    80004b48:	02048513          	addi	a0,s1,32
    80004b4c:	ffffd097          	auipc	ra,0xffffd
    80004b50:	8bc080e7          	jalr	-1860(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&spaceAvailable, _cap);
    80004b54:	00090593          	mv	a1,s2
    80004b58:	01848513          	addi	a0,s1,24
    80004b5c:	ffffd097          	auipc	ra,0xffffd
    80004b60:	8ac080e7          	jalr	-1876(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&mutexHead, 1);
    80004b64:	00100593          	li	a1,1
    80004b68:	02848513          	addi	a0,s1,40
    80004b6c:	ffffd097          	auipc	ra,0xffffd
    80004b70:	89c080e7          	jalr	-1892(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&mutexTail, 1);
    80004b74:	00100593          	li	a1,1
    80004b78:	03048513          	addi	a0,s1,48
    80004b7c:	ffffd097          	auipc	ra,0xffffd
    80004b80:	88c080e7          	jalr	-1908(ra) # 80001408 <_Z8sem_openPP3Semj>
}
    80004b84:	01813083          	ld	ra,24(sp)
    80004b88:	01013403          	ld	s0,16(sp)
    80004b8c:	00813483          	ld	s1,8(sp)
    80004b90:	00013903          	ld	s2,0(sp)
    80004b94:	02010113          	addi	sp,sp,32
    80004b98:	00008067          	ret

0000000080004b9c <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80004b9c:	fe010113          	addi	sp,sp,-32
    80004ba0:	00113c23          	sd	ra,24(sp)
    80004ba4:	00813823          	sd	s0,16(sp)
    80004ba8:	00913423          	sd	s1,8(sp)
    80004bac:	01213023          	sd	s2,0(sp)
    80004bb0:	02010413          	addi	s0,sp,32
    80004bb4:	00050493          	mv	s1,a0
    80004bb8:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80004bbc:	01853503          	ld	a0,24(a0)
    80004bc0:	ffffd097          	auipc	ra,0xffffd
    80004bc4:	8e4080e7          	jalr	-1820(ra) # 800014a4 <_Z8sem_waitP3Sem>

    sem_wait(mutexTail);
    80004bc8:	0304b503          	ld	a0,48(s1)
    80004bcc:	ffffd097          	auipc	ra,0xffffd
    80004bd0:	8d8080e7          	jalr	-1832(ra) # 800014a4 <_Z8sem_waitP3Sem>
    buffer[tail] = val;
    80004bd4:	0084b783          	ld	a5,8(s1)
    80004bd8:	0144a703          	lw	a4,20(s1)
    80004bdc:	00271713          	slli	a4,a4,0x2
    80004be0:	00e787b3          	add	a5,a5,a4
    80004be4:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80004be8:	0144a783          	lw	a5,20(s1)
    80004bec:	0017879b          	addiw	a5,a5,1
    80004bf0:	0004a703          	lw	a4,0(s1)
    80004bf4:	02e7e7bb          	remw	a5,a5,a4
    80004bf8:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80004bfc:	0304b503          	ld	a0,48(s1)
    80004c00:	ffffd097          	auipc	ra,0xffffd
    80004c04:	8f0080e7          	jalr	-1808(ra) # 800014f0 <_Z10sem_signalP3Sem>

    sem_signal(itemAvailable);
    80004c08:	0204b503          	ld	a0,32(s1)
    80004c0c:	ffffd097          	auipc	ra,0xffffd
    80004c10:	8e4080e7          	jalr	-1820(ra) # 800014f0 <_Z10sem_signalP3Sem>

}
    80004c14:	01813083          	ld	ra,24(sp)
    80004c18:	01013403          	ld	s0,16(sp)
    80004c1c:	00813483          	ld	s1,8(sp)
    80004c20:	00013903          	ld	s2,0(sp)
    80004c24:	02010113          	addi	sp,sp,32
    80004c28:	00008067          	ret

0000000080004c2c <_ZN6Buffer3getEv>:

int Buffer::get() {
    80004c2c:	fe010113          	addi	sp,sp,-32
    80004c30:	00113c23          	sd	ra,24(sp)
    80004c34:	00813823          	sd	s0,16(sp)
    80004c38:	00913423          	sd	s1,8(sp)
    80004c3c:	01213023          	sd	s2,0(sp)
    80004c40:	02010413          	addi	s0,sp,32
    80004c44:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80004c48:	02053503          	ld	a0,32(a0)
    80004c4c:	ffffd097          	auipc	ra,0xffffd
    80004c50:	858080e7          	jalr	-1960(ra) # 800014a4 <_Z8sem_waitP3Sem>

    sem_wait(mutexHead);
    80004c54:	0284b503          	ld	a0,40(s1)
    80004c58:	ffffd097          	auipc	ra,0xffffd
    80004c5c:	84c080e7          	jalr	-1972(ra) # 800014a4 <_Z8sem_waitP3Sem>

    int ret = buffer[head];
    80004c60:	0084b703          	ld	a4,8(s1)
    80004c64:	0104a783          	lw	a5,16(s1)
    80004c68:	00279693          	slli	a3,a5,0x2
    80004c6c:	00d70733          	add	a4,a4,a3
    80004c70:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80004c74:	0017879b          	addiw	a5,a5,1
    80004c78:	0004a703          	lw	a4,0(s1)
    80004c7c:	02e7e7bb          	remw	a5,a5,a4
    80004c80:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80004c84:	0284b503          	ld	a0,40(s1)
    80004c88:	ffffd097          	auipc	ra,0xffffd
    80004c8c:	868080e7          	jalr	-1944(ra) # 800014f0 <_Z10sem_signalP3Sem>

    sem_signal(spaceAvailable);
    80004c90:	0184b503          	ld	a0,24(s1)
    80004c94:	ffffd097          	auipc	ra,0xffffd
    80004c98:	85c080e7          	jalr	-1956(ra) # 800014f0 <_Z10sem_signalP3Sem>

    return ret;
}
    80004c9c:	00090513          	mv	a0,s2
    80004ca0:	01813083          	ld	ra,24(sp)
    80004ca4:	01013403          	ld	s0,16(sp)
    80004ca8:	00813483          	ld	s1,8(sp)
    80004cac:	00013903          	ld	s2,0(sp)
    80004cb0:	02010113          	addi	sp,sp,32
    80004cb4:	00008067          	ret

0000000080004cb8 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80004cb8:	fe010113          	addi	sp,sp,-32
    80004cbc:	00113c23          	sd	ra,24(sp)
    80004cc0:	00813823          	sd	s0,16(sp)
    80004cc4:	00913423          	sd	s1,8(sp)
    80004cc8:	01213023          	sd	s2,0(sp)
    80004ccc:	02010413          	addi	s0,sp,32
    80004cd0:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80004cd4:	02853503          	ld	a0,40(a0)
    80004cd8:	ffffc097          	auipc	ra,0xffffc
    80004cdc:	7cc080e7          	jalr	1996(ra) # 800014a4 <_Z8sem_waitP3Sem>
    sem_wait(mutexTail);
    80004ce0:	0304b503          	ld	a0,48(s1)
    80004ce4:	ffffc097          	auipc	ra,0xffffc
    80004ce8:	7c0080e7          	jalr	1984(ra) # 800014a4 <_Z8sem_waitP3Sem>

    if (tail >= head) {
    80004cec:	0144a783          	lw	a5,20(s1)
    80004cf0:	0104a903          	lw	s2,16(s1)
    80004cf4:	0327ce63          	blt	a5,s2,80004d30 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80004cf8:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80004cfc:	0304b503          	ld	a0,48(s1)
    80004d00:	ffffc097          	auipc	ra,0xffffc
    80004d04:	7f0080e7          	jalr	2032(ra) # 800014f0 <_Z10sem_signalP3Sem>
    sem_signal(mutexHead);
    80004d08:	0284b503          	ld	a0,40(s1)
    80004d0c:	ffffc097          	auipc	ra,0xffffc
    80004d10:	7e4080e7          	jalr	2020(ra) # 800014f0 <_Z10sem_signalP3Sem>

    return ret;
}
    80004d14:	00090513          	mv	a0,s2
    80004d18:	01813083          	ld	ra,24(sp)
    80004d1c:	01013403          	ld	s0,16(sp)
    80004d20:	00813483          	ld	s1,8(sp)
    80004d24:	00013903          	ld	s2,0(sp)
    80004d28:	02010113          	addi	sp,sp,32
    80004d2c:	00008067          	ret
        ret = cap - head + tail;
    80004d30:	0004a703          	lw	a4,0(s1)
    80004d34:	4127093b          	subw	s2,a4,s2
    80004d38:	00f9093b          	addw	s2,s2,a5
    80004d3c:	fc1ff06f          	j	80004cfc <_ZN6Buffer6getCntEv+0x44>

0000000080004d40 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80004d40:	fe010113          	addi	sp,sp,-32
    80004d44:	00113c23          	sd	ra,24(sp)
    80004d48:	00813823          	sd	s0,16(sp)
    80004d4c:	00913423          	sd	s1,8(sp)
    80004d50:	02010413          	addi	s0,sp,32
    80004d54:	00050493          	mv	s1,a0
    putc('\n');
    80004d58:	00a00513          	li	a0,10
    80004d5c:	ffffd097          	auipc	ra,0xffffd
    80004d60:	910080e7          	jalr	-1776(ra) # 8000166c <_Z4putcc>
    printString("Buffer deleted!\n");
    80004d64:	00004517          	auipc	a0,0x4
    80004d68:	5bc50513          	addi	a0,a0,1468 # 80009320 <CONSOLE_STATUS+0x310>
    80004d6c:	00001097          	auipc	ra,0x1
    80004d70:	f28080e7          	jalr	-216(ra) # 80005c94 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80004d74:	00048513          	mv	a0,s1
    80004d78:	00000097          	auipc	ra,0x0
    80004d7c:	f40080e7          	jalr	-192(ra) # 80004cb8 <_ZN6Buffer6getCntEv>
    80004d80:	02a05c63          	blez	a0,80004db8 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80004d84:	0084b783          	ld	a5,8(s1)
    80004d88:	0104a703          	lw	a4,16(s1)
    80004d8c:	00271713          	slli	a4,a4,0x2
    80004d90:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80004d94:	0007c503          	lbu	a0,0(a5)
    80004d98:	ffffd097          	auipc	ra,0xffffd
    80004d9c:	8d4080e7          	jalr	-1836(ra) # 8000166c <_Z4putcc>
        head = (head + 1) % cap;
    80004da0:	0104a783          	lw	a5,16(s1)
    80004da4:	0017879b          	addiw	a5,a5,1
    80004da8:	0004a703          	lw	a4,0(s1)
    80004dac:	02e7e7bb          	remw	a5,a5,a4
    80004db0:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80004db4:	fc1ff06f          	j	80004d74 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80004db8:	02100513          	li	a0,33
    80004dbc:	ffffd097          	auipc	ra,0xffffd
    80004dc0:	8b0080e7          	jalr	-1872(ra) # 8000166c <_Z4putcc>
    putc('\n');
    80004dc4:	00a00513          	li	a0,10
    80004dc8:	ffffd097          	auipc	ra,0xffffd
    80004dcc:	8a4080e7          	jalr	-1884(ra) # 8000166c <_Z4putcc>
    mem_free(buffer);
    80004dd0:	0084b503          	ld	a0,8(s1)
    80004dd4:	ffffc097          	auipc	ra,0xffffc
    80004dd8:	4d8080e7          	jalr	1240(ra) # 800012ac <_Z8mem_freePv>
    sem_close(itemAvailable);
    80004ddc:	0204b503          	ld	a0,32(s1)
    80004de0:	ffffc097          	auipc	ra,0xffffc
    80004de4:	678080e7          	jalr	1656(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(spaceAvailable);
    80004de8:	0184b503          	ld	a0,24(s1)
    80004dec:	ffffc097          	auipc	ra,0xffffc
    80004df0:	66c080e7          	jalr	1644(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(mutexTail);
    80004df4:	0304b503          	ld	a0,48(s1)
    80004df8:	ffffc097          	auipc	ra,0xffffc
    80004dfc:	660080e7          	jalr	1632(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(mutexHead);
    80004e00:	0284b503          	ld	a0,40(s1)
    80004e04:	ffffc097          	auipc	ra,0xffffc
    80004e08:	654080e7          	jalr	1620(ra) # 80001458 <_Z9sem_closeP3Sem>
}
    80004e0c:	01813083          	ld	ra,24(sp)
    80004e10:	01013403          	ld	s0,16(sp)
    80004e14:	00813483          	ld	s1,8(sp)
    80004e18:	02010113          	addi	sp,sp,32
    80004e1c:	00008067          	ret

0000000080004e20 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004e20:	fe010113          	addi	sp,sp,-32
    80004e24:	00113c23          	sd	ra,24(sp)
    80004e28:	00813823          	sd	s0,16(sp)
    80004e2c:	00913423          	sd	s1,8(sp)
    80004e30:	01213023          	sd	s2,0(sp)
    80004e34:	02010413          	addi	s0,sp,32
    80004e38:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004e3c:	00100793          	li	a5,1
    80004e40:	02a7f863          	bgeu	a5,a0,80004e70 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004e44:	00a00793          	li	a5,10
    80004e48:	02f577b3          	remu	a5,a0,a5
    80004e4c:	02078e63          	beqz	a5,80004e88 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004e50:	fff48513          	addi	a0,s1,-1
    80004e54:	00000097          	auipc	ra,0x0
    80004e58:	fcc080e7          	jalr	-52(ra) # 80004e20 <_ZL9fibonaccim>
    80004e5c:	00050913          	mv	s2,a0
    80004e60:	ffe48513          	addi	a0,s1,-2
    80004e64:	00000097          	auipc	ra,0x0
    80004e68:	fbc080e7          	jalr	-68(ra) # 80004e20 <_ZL9fibonaccim>
    80004e6c:	00a90533          	add	a0,s2,a0
}
    80004e70:	01813083          	ld	ra,24(sp)
    80004e74:	01013403          	ld	s0,16(sp)
    80004e78:	00813483          	ld	s1,8(sp)
    80004e7c:	00013903          	ld	s2,0(sp)
    80004e80:	02010113          	addi	sp,sp,32
    80004e84:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004e88:	ffffc097          	auipc	ra,0xffffc
    80004e8c:	544080e7          	jalr	1348(ra) # 800013cc <_Z15thread_dispatchv>
    80004e90:	fc1ff06f          	j	80004e50 <_ZL9fibonaccim+0x30>

0000000080004e94 <_ZL11workerBodyDPv>:
    printString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004e94:	fe010113          	addi	sp,sp,-32
    80004e98:	00113c23          	sd	ra,24(sp)
    80004e9c:	00813823          	sd	s0,16(sp)
    80004ea0:	00913423          	sd	s1,8(sp)
    80004ea4:	01213023          	sd	s2,0(sp)
    80004ea8:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004eac:	00a00493          	li	s1,10
    80004eb0:	0400006f          	j	80004ef0 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004eb4:	00004517          	auipc	a0,0x4
    80004eb8:	3d450513          	addi	a0,a0,980 # 80009288 <CONSOLE_STATUS+0x278>
    80004ebc:	00001097          	auipc	ra,0x1
    80004ec0:	dd8080e7          	jalr	-552(ra) # 80005c94 <_Z11printStringPKc>
    80004ec4:	00000613          	li	a2,0
    80004ec8:	00a00593          	li	a1,10
    80004ecc:	00048513          	mv	a0,s1
    80004ed0:	00001097          	auipc	ra,0x1
    80004ed4:	f74080e7          	jalr	-140(ra) # 80005e44 <_Z8printIntiii>
    80004ed8:	00004517          	auipc	a0,0x4
    80004edc:	5b050513          	addi	a0,a0,1456 # 80009488 <CONSOLE_STATUS+0x478>
    80004ee0:	00001097          	auipc	ra,0x1
    80004ee4:	db4080e7          	jalr	-588(ra) # 80005c94 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004ee8:	0014849b          	addiw	s1,s1,1
    80004eec:	0ff4f493          	andi	s1,s1,255
    80004ef0:	00c00793          	li	a5,12
    80004ef4:	fc97f0e3          	bgeu	a5,s1,80004eb4 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004ef8:	00004517          	auipc	a0,0x4
    80004efc:	39850513          	addi	a0,a0,920 # 80009290 <CONSOLE_STATUS+0x280>
    80004f00:	00001097          	auipc	ra,0x1
    80004f04:	d94080e7          	jalr	-620(ra) # 80005c94 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004f08:	00500313          	li	t1,5
    thread_dispatch();
    80004f0c:	ffffc097          	auipc	ra,0xffffc
    80004f10:	4c0080e7          	jalr	1216(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004f14:	01000513          	li	a0,16
    80004f18:	00000097          	auipc	ra,0x0
    80004f1c:	f08080e7          	jalr	-248(ra) # 80004e20 <_ZL9fibonaccim>
    80004f20:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004f24:	00004517          	auipc	a0,0x4
    80004f28:	37c50513          	addi	a0,a0,892 # 800092a0 <CONSOLE_STATUS+0x290>
    80004f2c:	00001097          	auipc	ra,0x1
    80004f30:	d68080e7          	jalr	-664(ra) # 80005c94 <_Z11printStringPKc>
    80004f34:	00000613          	li	a2,0
    80004f38:	00a00593          	li	a1,10
    80004f3c:	0009051b          	sext.w	a0,s2
    80004f40:	00001097          	auipc	ra,0x1
    80004f44:	f04080e7          	jalr	-252(ra) # 80005e44 <_Z8printIntiii>
    80004f48:	00004517          	auipc	a0,0x4
    80004f4c:	54050513          	addi	a0,a0,1344 # 80009488 <CONSOLE_STATUS+0x478>
    80004f50:	00001097          	auipc	ra,0x1
    80004f54:	d44080e7          	jalr	-700(ra) # 80005c94 <_Z11printStringPKc>
    80004f58:	0400006f          	j	80004f98 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004f5c:	00004517          	auipc	a0,0x4
    80004f60:	32c50513          	addi	a0,a0,812 # 80009288 <CONSOLE_STATUS+0x278>
    80004f64:	00001097          	auipc	ra,0x1
    80004f68:	d30080e7          	jalr	-720(ra) # 80005c94 <_Z11printStringPKc>
    80004f6c:	00000613          	li	a2,0
    80004f70:	00a00593          	li	a1,10
    80004f74:	00048513          	mv	a0,s1
    80004f78:	00001097          	auipc	ra,0x1
    80004f7c:	ecc080e7          	jalr	-308(ra) # 80005e44 <_Z8printIntiii>
    80004f80:	00004517          	auipc	a0,0x4
    80004f84:	50850513          	addi	a0,a0,1288 # 80009488 <CONSOLE_STATUS+0x478>
    80004f88:	00001097          	auipc	ra,0x1
    80004f8c:	d0c080e7          	jalr	-756(ra) # 80005c94 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004f90:	0014849b          	addiw	s1,s1,1
    80004f94:	0ff4f493          	andi	s1,s1,255
    80004f98:	00f00793          	li	a5,15
    80004f9c:	fc97f0e3          	bgeu	a5,s1,80004f5c <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004fa0:	00004517          	auipc	a0,0x4
    80004fa4:	31050513          	addi	a0,a0,784 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80004fa8:	00001097          	auipc	ra,0x1
    80004fac:	cec080e7          	jalr	-788(ra) # 80005c94 <_Z11printStringPKc>
    finishedD = true;
    80004fb0:	00100793          	li	a5,1
    80004fb4:	00007717          	auipc	a4,0x7
    80004fb8:	e2f70223          	sb	a5,-476(a4) # 8000bdd8 <_ZL9finishedD>
    thread_dispatch();
    80004fbc:	ffffc097          	auipc	ra,0xffffc
    80004fc0:	410080e7          	jalr	1040(ra) # 800013cc <_Z15thread_dispatchv>
}
    80004fc4:	01813083          	ld	ra,24(sp)
    80004fc8:	01013403          	ld	s0,16(sp)
    80004fcc:	00813483          	ld	s1,8(sp)
    80004fd0:	00013903          	ld	s2,0(sp)
    80004fd4:	02010113          	addi	sp,sp,32
    80004fd8:	00008067          	ret

0000000080004fdc <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004fdc:	fe010113          	addi	sp,sp,-32
    80004fe0:	00113c23          	sd	ra,24(sp)
    80004fe4:	00813823          	sd	s0,16(sp)
    80004fe8:	00913423          	sd	s1,8(sp)
    80004fec:	01213023          	sd	s2,0(sp)
    80004ff0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004ff4:	00000493          	li	s1,0
    80004ff8:	0400006f          	j	80005038 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004ffc:	00004517          	auipc	a0,0x4
    80005000:	25c50513          	addi	a0,a0,604 # 80009258 <CONSOLE_STATUS+0x248>
    80005004:	00001097          	auipc	ra,0x1
    80005008:	c90080e7          	jalr	-880(ra) # 80005c94 <_Z11printStringPKc>
    8000500c:	00000613          	li	a2,0
    80005010:	00a00593          	li	a1,10
    80005014:	00048513          	mv	a0,s1
    80005018:	00001097          	auipc	ra,0x1
    8000501c:	e2c080e7          	jalr	-468(ra) # 80005e44 <_Z8printIntiii>
    80005020:	00004517          	auipc	a0,0x4
    80005024:	46850513          	addi	a0,a0,1128 # 80009488 <CONSOLE_STATUS+0x478>
    80005028:	00001097          	auipc	ra,0x1
    8000502c:	c6c080e7          	jalr	-916(ra) # 80005c94 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005030:	0014849b          	addiw	s1,s1,1
    80005034:	0ff4f493          	andi	s1,s1,255
    80005038:	00200793          	li	a5,2
    8000503c:	fc97f0e3          	bgeu	a5,s1,80004ffc <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005040:	00004517          	auipc	a0,0x4
    80005044:	22050513          	addi	a0,a0,544 # 80009260 <CONSOLE_STATUS+0x250>
    80005048:	00001097          	auipc	ra,0x1
    8000504c:	c4c080e7          	jalr	-948(ra) # 80005c94 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005050:	00700313          	li	t1,7
    thread_dispatch();
    80005054:	ffffc097          	auipc	ra,0xffffc
    80005058:	378080e7          	jalr	888(ra) # 800013cc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000505c:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005060:	00004517          	auipc	a0,0x4
    80005064:	21050513          	addi	a0,a0,528 # 80009270 <CONSOLE_STATUS+0x260>
    80005068:	00001097          	auipc	ra,0x1
    8000506c:	c2c080e7          	jalr	-980(ra) # 80005c94 <_Z11printStringPKc>
    80005070:	00000613          	li	a2,0
    80005074:	00a00593          	li	a1,10
    80005078:	0009051b          	sext.w	a0,s2
    8000507c:	00001097          	auipc	ra,0x1
    80005080:	dc8080e7          	jalr	-568(ra) # 80005e44 <_Z8printIntiii>
    80005084:	00004517          	auipc	a0,0x4
    80005088:	40450513          	addi	a0,a0,1028 # 80009488 <CONSOLE_STATUS+0x478>
    8000508c:	00001097          	auipc	ra,0x1
    80005090:	c08080e7          	jalr	-1016(ra) # 80005c94 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005094:	00c00513          	li	a0,12
    80005098:	00000097          	auipc	ra,0x0
    8000509c:	d88080e7          	jalr	-632(ra) # 80004e20 <_ZL9fibonaccim>
    800050a0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800050a4:	00004517          	auipc	a0,0x4
    800050a8:	1d450513          	addi	a0,a0,468 # 80009278 <CONSOLE_STATUS+0x268>
    800050ac:	00001097          	auipc	ra,0x1
    800050b0:	be8080e7          	jalr	-1048(ra) # 80005c94 <_Z11printStringPKc>
    800050b4:	00000613          	li	a2,0
    800050b8:	00a00593          	li	a1,10
    800050bc:	0009051b          	sext.w	a0,s2
    800050c0:	00001097          	auipc	ra,0x1
    800050c4:	d84080e7          	jalr	-636(ra) # 80005e44 <_Z8printIntiii>
    800050c8:	00004517          	auipc	a0,0x4
    800050cc:	3c050513          	addi	a0,a0,960 # 80009488 <CONSOLE_STATUS+0x478>
    800050d0:	00001097          	auipc	ra,0x1
    800050d4:	bc4080e7          	jalr	-1084(ra) # 80005c94 <_Z11printStringPKc>
    800050d8:	0400006f          	j	80005118 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800050dc:	00004517          	auipc	a0,0x4
    800050e0:	17c50513          	addi	a0,a0,380 # 80009258 <CONSOLE_STATUS+0x248>
    800050e4:	00001097          	auipc	ra,0x1
    800050e8:	bb0080e7          	jalr	-1104(ra) # 80005c94 <_Z11printStringPKc>
    800050ec:	00000613          	li	a2,0
    800050f0:	00a00593          	li	a1,10
    800050f4:	00048513          	mv	a0,s1
    800050f8:	00001097          	auipc	ra,0x1
    800050fc:	d4c080e7          	jalr	-692(ra) # 80005e44 <_Z8printIntiii>
    80005100:	00004517          	auipc	a0,0x4
    80005104:	38850513          	addi	a0,a0,904 # 80009488 <CONSOLE_STATUS+0x478>
    80005108:	00001097          	auipc	ra,0x1
    8000510c:	b8c080e7          	jalr	-1140(ra) # 80005c94 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005110:	0014849b          	addiw	s1,s1,1
    80005114:	0ff4f493          	andi	s1,s1,255
    80005118:	00500793          	li	a5,5
    8000511c:	fc97f0e3          	bgeu	a5,s1,800050dc <_ZL11workerBodyCPv+0x100>
    printString("C finished!\n");
    80005120:	00004517          	auipc	a0,0x4
    80005124:	21850513          	addi	a0,a0,536 # 80009338 <CONSOLE_STATUS+0x328>
    80005128:	00001097          	auipc	ra,0x1
    8000512c:	b6c080e7          	jalr	-1172(ra) # 80005c94 <_Z11printStringPKc>
    finishedC = true;
    80005130:	00100793          	li	a5,1
    80005134:	00007717          	auipc	a4,0x7
    80005138:	caf702a3          	sb	a5,-859(a4) # 8000bdd9 <_ZL9finishedC>
    thread_dispatch();
    8000513c:	ffffc097          	auipc	ra,0xffffc
    80005140:	290080e7          	jalr	656(ra) # 800013cc <_Z15thread_dispatchv>
}
    80005144:	01813083          	ld	ra,24(sp)
    80005148:	01013403          	ld	s0,16(sp)
    8000514c:	00813483          	ld	s1,8(sp)
    80005150:	00013903          	ld	s2,0(sp)
    80005154:	02010113          	addi	sp,sp,32
    80005158:	00008067          	ret

000000008000515c <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    8000515c:	fe010113          	addi	sp,sp,-32
    80005160:	00113c23          	sd	ra,24(sp)
    80005164:	00813823          	sd	s0,16(sp)
    80005168:	00913423          	sd	s1,8(sp)
    8000516c:	01213023          	sd	s2,0(sp)
    80005170:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005174:	00000913          	li	s2,0
    80005178:	0380006f          	j	800051b0 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    8000517c:	ffffc097          	auipc	ra,0xffffc
    80005180:	250080e7          	jalr	592(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005184:	00148493          	addi	s1,s1,1
    80005188:	000027b7          	lui	a5,0x2
    8000518c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005190:	0097ee63          	bltu	a5,s1,800051ac <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005194:	00000713          	li	a4,0
    80005198:	000077b7          	lui	a5,0x7
    8000519c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800051a0:	fce7eee3          	bltu	a5,a4,8000517c <_ZL11workerBodyBPv+0x20>
    800051a4:	00170713          	addi	a4,a4,1
    800051a8:	ff1ff06f          	j	80005198 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800051ac:	00190913          	addi	s2,s2,1
    800051b0:	00f00793          	li	a5,15
    800051b4:	0527e063          	bltu	a5,s2,800051f4 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800051b8:	00004517          	auipc	a0,0x4
    800051bc:	08850513          	addi	a0,a0,136 # 80009240 <CONSOLE_STATUS+0x230>
    800051c0:	00001097          	auipc	ra,0x1
    800051c4:	ad4080e7          	jalr	-1324(ra) # 80005c94 <_Z11printStringPKc>
    800051c8:	00000613          	li	a2,0
    800051cc:	00a00593          	li	a1,10
    800051d0:	0009051b          	sext.w	a0,s2
    800051d4:	00001097          	auipc	ra,0x1
    800051d8:	c70080e7          	jalr	-912(ra) # 80005e44 <_Z8printIntiii>
    800051dc:	00004517          	auipc	a0,0x4
    800051e0:	2ac50513          	addi	a0,a0,684 # 80009488 <CONSOLE_STATUS+0x478>
    800051e4:	00001097          	auipc	ra,0x1
    800051e8:	ab0080e7          	jalr	-1360(ra) # 80005c94 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800051ec:	00000493          	li	s1,0
    800051f0:	f99ff06f          	j	80005188 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    800051f4:	00004517          	auipc	a0,0x4
    800051f8:	05450513          	addi	a0,a0,84 # 80009248 <CONSOLE_STATUS+0x238>
    800051fc:	00001097          	auipc	ra,0x1
    80005200:	a98080e7          	jalr	-1384(ra) # 80005c94 <_Z11printStringPKc>
    finishedB = true;
    80005204:	00100793          	li	a5,1
    80005208:	00007717          	auipc	a4,0x7
    8000520c:	bcf70923          	sb	a5,-1070(a4) # 8000bdda <_ZL9finishedB>
    thread_dispatch();
    80005210:	ffffc097          	auipc	ra,0xffffc
    80005214:	1bc080e7          	jalr	444(ra) # 800013cc <_Z15thread_dispatchv>
}
    80005218:	01813083          	ld	ra,24(sp)
    8000521c:	01013403          	ld	s0,16(sp)
    80005220:	00813483          	ld	s1,8(sp)
    80005224:	00013903          	ld	s2,0(sp)
    80005228:	02010113          	addi	sp,sp,32
    8000522c:	00008067          	ret

0000000080005230 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005230:	fe010113          	addi	sp,sp,-32
    80005234:	00113c23          	sd	ra,24(sp)
    80005238:	00813823          	sd	s0,16(sp)
    8000523c:	00913423          	sd	s1,8(sp)
    80005240:	01213023          	sd	s2,0(sp)
    80005244:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005248:	00000913          	li	s2,0
    8000524c:	0380006f          	j	80005284 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005250:	ffffc097          	auipc	ra,0xffffc
    80005254:	17c080e7          	jalr	380(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005258:	00148493          	addi	s1,s1,1
    8000525c:	000027b7          	lui	a5,0x2
    80005260:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005264:	0097ee63          	bltu	a5,s1,80005280 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005268:	00000713          	li	a4,0
    8000526c:	000077b7          	lui	a5,0x7
    80005270:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005274:	fce7eee3          	bltu	a5,a4,80005250 <_ZL11workerBodyAPv+0x20>
    80005278:	00170713          	addi	a4,a4,1
    8000527c:	ff1ff06f          	j	8000526c <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005280:	00190913          	addi	s2,s2,1
    80005284:	00900793          	li	a5,9
    80005288:	0527e063          	bltu	a5,s2,800052c8 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000528c:	00004517          	auipc	a0,0x4
    80005290:	f9c50513          	addi	a0,a0,-100 # 80009228 <CONSOLE_STATUS+0x218>
    80005294:	00001097          	auipc	ra,0x1
    80005298:	a00080e7          	jalr	-1536(ra) # 80005c94 <_Z11printStringPKc>
    8000529c:	00000613          	li	a2,0
    800052a0:	00a00593          	li	a1,10
    800052a4:	0009051b          	sext.w	a0,s2
    800052a8:	00001097          	auipc	ra,0x1
    800052ac:	b9c080e7          	jalr	-1124(ra) # 80005e44 <_Z8printIntiii>
    800052b0:	00004517          	auipc	a0,0x4
    800052b4:	1d850513          	addi	a0,a0,472 # 80009488 <CONSOLE_STATUS+0x478>
    800052b8:	00001097          	auipc	ra,0x1
    800052bc:	9dc080e7          	jalr	-1572(ra) # 80005c94 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800052c0:	00000493          	li	s1,0
    800052c4:	f99ff06f          	j	8000525c <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800052c8:	00004517          	auipc	a0,0x4
    800052cc:	f6850513          	addi	a0,a0,-152 # 80009230 <CONSOLE_STATUS+0x220>
    800052d0:	00001097          	auipc	ra,0x1
    800052d4:	9c4080e7          	jalr	-1596(ra) # 80005c94 <_Z11printStringPKc>
    finishedA = true;
    800052d8:	00100793          	li	a5,1
    800052dc:	00007717          	auipc	a4,0x7
    800052e0:	aef70fa3          	sb	a5,-1281(a4) # 8000bddb <_ZL9finishedA>
}
    800052e4:	01813083          	ld	ra,24(sp)
    800052e8:	01013403          	ld	s0,16(sp)
    800052ec:	00813483          	ld	s1,8(sp)
    800052f0:	00013903          	ld	s2,0(sp)
    800052f4:	02010113          	addi	sp,sp,32
    800052f8:	00008067          	ret

00000000800052fc <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    800052fc:	ff010113          	addi	sp,sp,-16
    80005300:	00113423          	sd	ra,8(sp)
    80005304:	00813023          	sd	s0,0(sp)
    80005308:	01010413          	addi	s0,sp,16
    static thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    8000530c:	00000613          	li	a2,0
    80005310:	00000597          	auipc	a1,0x0
    80005314:	f2058593          	addi	a1,a1,-224 # 80005230 <_ZL11workerBodyAPv>
    80005318:	00007517          	auipc	a0,0x7
    8000531c:	ac850513          	addi	a0,a0,-1336 # 8000bde0 <_ZZ18Threads_C_API_testvE7threads>
    80005320:	ffffc097          	auipc	ra,0xffffc
    80005324:	fd8080e7          	jalr	-40(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80005328:	00004517          	auipc	a0,0x4
    8000532c:	f9850513          	addi	a0,a0,-104 # 800092c0 <CONSOLE_STATUS+0x2b0>
    80005330:	00001097          	auipc	ra,0x1
    80005334:	964080e7          	jalr	-1692(ra) # 80005c94 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005338:	00000613          	li	a2,0
    8000533c:	00000597          	auipc	a1,0x0
    80005340:	e2058593          	addi	a1,a1,-480 # 8000515c <_ZL11workerBodyBPv>
    80005344:	00007517          	auipc	a0,0x7
    80005348:	aa450513          	addi	a0,a0,-1372 # 8000bde8 <_ZZ18Threads_C_API_testvE7threads+0x8>
    8000534c:	ffffc097          	auipc	ra,0xffffc
    80005350:	fac080e7          	jalr	-84(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80005354:	00004517          	auipc	a0,0x4
    80005358:	f8450513          	addi	a0,a0,-124 # 800092d8 <CONSOLE_STATUS+0x2c8>
    8000535c:	00001097          	auipc	ra,0x1
    80005360:	938080e7          	jalr	-1736(ra) # 80005c94 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005364:	00000613          	li	a2,0
    80005368:	00000597          	auipc	a1,0x0
    8000536c:	c7458593          	addi	a1,a1,-908 # 80004fdc <_ZL11workerBodyCPv>
    80005370:	00007517          	auipc	a0,0x7
    80005374:	a8050513          	addi	a0,a0,-1408 # 8000bdf0 <_ZZ18Threads_C_API_testvE7threads+0x10>
    80005378:	ffffc097          	auipc	ra,0xffffc
    8000537c:	f80080e7          	jalr	-128(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80005380:	00004517          	auipc	a0,0x4
    80005384:	f7050513          	addi	a0,a0,-144 # 800092f0 <CONSOLE_STATUS+0x2e0>
    80005388:	00001097          	auipc	ra,0x1
    8000538c:	90c080e7          	jalr	-1780(ra) # 80005c94 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005390:	00000613          	li	a2,0
    80005394:	00000597          	auipc	a1,0x0
    80005398:	b0058593          	addi	a1,a1,-1280 # 80004e94 <_ZL11workerBodyDPv>
    8000539c:	00007517          	auipc	a0,0x7
    800053a0:	a5c50513          	addi	a0,a0,-1444 # 8000bdf8 <_ZZ18Threads_C_API_testvE7threads+0x18>
    800053a4:	ffffc097          	auipc	ra,0xffffc
    800053a8:	f54080e7          	jalr	-172(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    800053ac:	00004517          	auipc	a0,0x4
    800053b0:	f5c50513          	addi	a0,a0,-164 # 80009308 <CONSOLE_STATUS+0x2f8>
    800053b4:	00001097          	auipc	ra,0x1
    800053b8:	8e0080e7          	jalr	-1824(ra) # 80005c94 <_Z11printStringPKc>
    800053bc:	00c0006f          	j	800053c8 <_Z18Threads_C_API_testv+0xcc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800053c0:	ffffc097          	auipc	ra,0xffffc
    800053c4:	00c080e7          	jalr	12(ra) # 800013cc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800053c8:	00007797          	auipc	a5,0x7
    800053cc:	a137c783          	lbu	a5,-1517(a5) # 8000bddb <_ZL9finishedA>
    800053d0:	fe0788e3          	beqz	a5,800053c0 <_Z18Threads_C_API_testv+0xc4>
    800053d4:	00007797          	auipc	a5,0x7
    800053d8:	a067c783          	lbu	a5,-1530(a5) # 8000bdda <_ZL9finishedB>
    800053dc:	fe0782e3          	beqz	a5,800053c0 <_Z18Threads_C_API_testv+0xc4>
    800053e0:	00007797          	auipc	a5,0x7
    800053e4:	9f97c783          	lbu	a5,-1543(a5) # 8000bdd9 <_ZL9finishedC>
    800053e8:	fc078ce3          	beqz	a5,800053c0 <_Z18Threads_C_API_testv+0xc4>
    800053ec:	00007797          	auipc	a5,0x7
    800053f0:	9ec7c783          	lbu	a5,-1556(a5) # 8000bdd8 <_ZL9finishedD>
    800053f4:	fc0786e3          	beqz	a5,800053c0 <_Z18Threads_C_API_testv+0xc4>
    }

}
    800053f8:	00813083          	ld	ra,8(sp)
    800053fc:	00013403          	ld	s0,0(sp)
    80005400:	01010113          	addi	sp,sp,16
    80005404:	00008067          	ret

0000000080005408 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80005408:	fd010113          	addi	sp,sp,-48
    8000540c:	02113423          	sd	ra,40(sp)
    80005410:	02813023          	sd	s0,32(sp)
    80005414:	00913c23          	sd	s1,24(sp)
    80005418:	01213823          	sd	s2,16(sp)
    8000541c:	01313423          	sd	s3,8(sp)
    80005420:	03010413          	addi	s0,sp,48
    80005424:	00050993          	mv	s3,a0
    80005428:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    8000542c:	00000913          	li	s2,0
    80005430:	00c0006f          	j	8000543c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005434:	ffffd097          	auipc	ra,0xffffd
    80005438:	c34080e7          	jalr	-972(ra) # 80002068 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    8000543c:	ffffc097          	auipc	ra,0xffffc
    80005440:	1e4080e7          	jalr	484(ra) # 80001620 <_Z4getcv>
    80005444:	0005059b          	sext.w	a1,a0
    80005448:	01b00793          	li	a5,27
    8000544c:	02f58a63          	beq	a1,a5,80005480 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80005450:	0084b503          	ld	a0,8(s1)
    80005454:	00001097          	auipc	ra,0x1
    80005458:	c64080e7          	jalr	-924(ra) # 800060b8 <_ZN9BufferCPP3putEi>
        i++;
    8000545c:	0019071b          	addiw	a4,s2,1
    80005460:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005464:	0004a683          	lw	a3,0(s1)
    80005468:	0026979b          	slliw	a5,a3,0x2
    8000546c:	00d787bb          	addw	a5,a5,a3
    80005470:	0017979b          	slliw	a5,a5,0x1
    80005474:	02f767bb          	remw	a5,a4,a5
    80005478:	fc0792e3          	bnez	a5,8000543c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    8000547c:	fb9ff06f          	j	80005434 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80005480:	00100793          	li	a5,1
    80005484:	00007717          	auipc	a4,0x7
    80005488:	96f72e23          	sw	a5,-1668(a4) # 8000be00 <_ZL9threadEnd>
    td->buffer->put('!');
    8000548c:	0209b783          	ld	a5,32(s3)
    80005490:	02100593          	li	a1,33
    80005494:	0087b503          	ld	a0,8(a5)
    80005498:	00001097          	auipc	ra,0x1
    8000549c:	c20080e7          	jalr	-992(ra) # 800060b8 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    800054a0:	0104b503          	ld	a0,16(s1)
    800054a4:	ffffd097          	auipc	ra,0xffffd
    800054a8:	cb8080e7          	jalr	-840(ra) # 8000215c <_ZN9Semaphore6signalEv>
}
    800054ac:	02813083          	ld	ra,40(sp)
    800054b0:	02013403          	ld	s0,32(sp)
    800054b4:	01813483          	ld	s1,24(sp)
    800054b8:	01013903          	ld	s2,16(sp)
    800054bc:	00813983          	ld	s3,8(sp)
    800054c0:	03010113          	addi	sp,sp,48
    800054c4:	00008067          	ret

00000000800054c8 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    800054c8:	fe010113          	addi	sp,sp,-32
    800054cc:	00113c23          	sd	ra,24(sp)
    800054d0:	00813823          	sd	s0,16(sp)
    800054d4:	00913423          	sd	s1,8(sp)
    800054d8:	01213023          	sd	s2,0(sp)
    800054dc:	02010413          	addi	s0,sp,32
    800054e0:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800054e4:	00000913          	li	s2,0
    800054e8:	00c0006f          	j	800054f4 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800054ec:	ffffd097          	auipc	ra,0xffffd
    800054f0:	b7c080e7          	jalr	-1156(ra) # 80002068 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    800054f4:	00007797          	auipc	a5,0x7
    800054f8:	90c7a783          	lw	a5,-1780(a5) # 8000be00 <_ZL9threadEnd>
    800054fc:	02079e63          	bnez	a5,80005538 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80005500:	0004a583          	lw	a1,0(s1)
    80005504:	0305859b          	addiw	a1,a1,48
    80005508:	0084b503          	ld	a0,8(s1)
    8000550c:	00001097          	auipc	ra,0x1
    80005510:	bac080e7          	jalr	-1108(ra) # 800060b8 <_ZN9BufferCPP3putEi>
        i++;
    80005514:	0019071b          	addiw	a4,s2,1
    80005518:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000551c:	0004a683          	lw	a3,0(s1)
    80005520:	0026979b          	slliw	a5,a3,0x2
    80005524:	00d787bb          	addw	a5,a5,a3
    80005528:	0017979b          	slliw	a5,a5,0x1
    8000552c:	02f767bb          	remw	a5,a4,a5
    80005530:	fc0792e3          	bnez	a5,800054f4 <_ZN12ProducerSync8producerEPv+0x2c>
    80005534:	fb9ff06f          	j	800054ec <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80005538:	0104b503          	ld	a0,16(s1)
    8000553c:	ffffd097          	auipc	ra,0xffffd
    80005540:	c20080e7          	jalr	-992(ra) # 8000215c <_ZN9Semaphore6signalEv>
}
    80005544:	01813083          	ld	ra,24(sp)
    80005548:	01013403          	ld	s0,16(sp)
    8000554c:	00813483          	ld	s1,8(sp)
    80005550:	00013903          	ld	s2,0(sp)
    80005554:	02010113          	addi	sp,sp,32
    80005558:	00008067          	ret

000000008000555c <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    8000555c:	fd010113          	addi	sp,sp,-48
    80005560:	02113423          	sd	ra,40(sp)
    80005564:	02813023          	sd	s0,32(sp)
    80005568:	00913c23          	sd	s1,24(sp)
    8000556c:	01213823          	sd	s2,16(sp)
    80005570:	01313423          	sd	s3,8(sp)
    80005574:	01413023          	sd	s4,0(sp)
    80005578:	03010413          	addi	s0,sp,48
    8000557c:	00050993          	mv	s3,a0
    80005580:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005584:	00000a13          	li	s4,0
    80005588:	01c0006f          	j	800055a4 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    8000558c:	ffffd097          	auipc	ra,0xffffd
    80005590:	adc080e7          	jalr	-1316(ra) # 80002068 <_ZN6Thread8dispatchEv>
    80005594:	0500006f          	j	800055e4 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80005598:	00a00513          	li	a0,10
    8000559c:	ffffc097          	auipc	ra,0xffffc
    800055a0:	0d0080e7          	jalr	208(ra) # 8000166c <_Z4putcc>
    while (!threadEnd) {
    800055a4:	00007797          	auipc	a5,0x7
    800055a8:	85c7a783          	lw	a5,-1956(a5) # 8000be00 <_ZL9threadEnd>
    800055ac:	06079263          	bnez	a5,80005610 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    800055b0:	00893503          	ld	a0,8(s2)
    800055b4:	00001097          	auipc	ra,0x1
    800055b8:	b94080e7          	jalr	-1132(ra) # 80006148 <_ZN9BufferCPP3getEv>
        i++;
    800055bc:	001a049b          	addiw	s1,s4,1
    800055c0:	00048a1b          	sext.w	s4,s1
        putc(key);
    800055c4:	0ff57513          	andi	a0,a0,255
    800055c8:	ffffc097          	auipc	ra,0xffffc
    800055cc:	0a4080e7          	jalr	164(ra) # 8000166c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800055d0:	00092703          	lw	a4,0(s2)
    800055d4:	0027179b          	slliw	a5,a4,0x2
    800055d8:	00e787bb          	addw	a5,a5,a4
    800055dc:	02f4e7bb          	remw	a5,s1,a5
    800055e0:	fa0786e3          	beqz	a5,8000558c <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    800055e4:	05000793          	li	a5,80
    800055e8:	02f4e4bb          	remw	s1,s1,a5
    800055ec:	fa049ce3          	bnez	s1,800055a4 <_ZN12ConsumerSync8consumerEPv+0x48>
    800055f0:	fa9ff06f          	j	80005598 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    800055f4:	0209b783          	ld	a5,32(s3)
    800055f8:	0087b503          	ld	a0,8(a5)
    800055fc:	00001097          	auipc	ra,0x1
    80005600:	b4c080e7          	jalr	-1204(ra) # 80006148 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80005604:	0ff57513          	andi	a0,a0,255
    80005608:	ffffd097          	auipc	ra,0xffffd
    8000560c:	c74080e7          	jalr	-908(ra) # 8000227c <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80005610:	0209b783          	ld	a5,32(s3)
    80005614:	0087b503          	ld	a0,8(a5)
    80005618:	00001097          	auipc	ra,0x1
    8000561c:	bbc080e7          	jalr	-1092(ra) # 800061d4 <_ZN9BufferCPP6getCntEv>
    80005620:	fca04ae3          	bgtz	a0,800055f4 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80005624:	01093503          	ld	a0,16(s2)
    80005628:	ffffd097          	auipc	ra,0xffffd
    8000562c:	b34080e7          	jalr	-1228(ra) # 8000215c <_ZN9Semaphore6signalEv>
}
    80005630:	02813083          	ld	ra,40(sp)
    80005634:	02013403          	ld	s0,32(sp)
    80005638:	01813483          	ld	s1,24(sp)
    8000563c:	01013903          	ld	s2,16(sp)
    80005640:	00813983          	ld	s3,8(sp)
    80005644:	00013a03          	ld	s4,0(sp)
    80005648:	03010113          	addi	sp,sp,48
    8000564c:	00008067          	ret

0000000080005650 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80005650:	f8010113          	addi	sp,sp,-128
    80005654:	06113c23          	sd	ra,120(sp)
    80005658:	06813823          	sd	s0,112(sp)
    8000565c:	06913423          	sd	s1,104(sp)
    80005660:	07213023          	sd	s2,96(sp)
    80005664:	05313c23          	sd	s3,88(sp)
    80005668:	05413823          	sd	s4,80(sp)
    8000566c:	05513423          	sd	s5,72(sp)
    80005670:	05613023          	sd	s6,64(sp)
    80005674:	03713c23          	sd	s7,56(sp)
    80005678:	03813823          	sd	s8,48(sp)
    8000567c:	03913423          	sd	s9,40(sp)
    80005680:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80005684:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80005688:	00004517          	auipc	a0,0x4
    8000568c:	ab850513          	addi	a0,a0,-1352 # 80009140 <CONSOLE_STATUS+0x130>
    80005690:	00000097          	auipc	ra,0x0
    80005694:	604080e7          	jalr	1540(ra) # 80005c94 <_Z11printStringPKc>
    getString(input, 30);
    80005698:	01e00593          	li	a1,30
    8000569c:	f8040493          	addi	s1,s0,-128
    800056a0:	00048513          	mv	a0,s1
    800056a4:	00000097          	auipc	ra,0x0
    800056a8:	678080e7          	jalr	1656(ra) # 80005d1c <_Z9getStringPci>
    threadNum = stringToInt(input);
    800056ac:	00048513          	mv	a0,s1
    800056b0:	00000097          	auipc	ra,0x0
    800056b4:	744080e7          	jalr	1860(ra) # 80005df4 <_Z11stringToIntPKc>
    800056b8:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800056bc:	00004517          	auipc	a0,0x4
    800056c0:	aa450513          	addi	a0,a0,-1372 # 80009160 <CONSOLE_STATUS+0x150>
    800056c4:	00000097          	auipc	ra,0x0
    800056c8:	5d0080e7          	jalr	1488(ra) # 80005c94 <_Z11printStringPKc>
    getString(input, 30);
    800056cc:	01e00593          	li	a1,30
    800056d0:	00048513          	mv	a0,s1
    800056d4:	00000097          	auipc	ra,0x0
    800056d8:	648080e7          	jalr	1608(ra) # 80005d1c <_Z9getStringPci>
    n = stringToInt(input);
    800056dc:	00048513          	mv	a0,s1
    800056e0:	00000097          	auipc	ra,0x0
    800056e4:	714080e7          	jalr	1812(ra) # 80005df4 <_Z11stringToIntPKc>
    800056e8:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800056ec:	00004517          	auipc	a0,0x4
    800056f0:	a9450513          	addi	a0,a0,-1388 # 80009180 <CONSOLE_STATUS+0x170>
    800056f4:	00000097          	auipc	ra,0x0
    800056f8:	5a0080e7          	jalr	1440(ra) # 80005c94 <_Z11printStringPKc>
    800056fc:	00000613          	li	a2,0
    80005700:	00a00593          	li	a1,10
    80005704:	00090513          	mv	a0,s2
    80005708:	00000097          	auipc	ra,0x0
    8000570c:	73c080e7          	jalr	1852(ra) # 80005e44 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80005710:	00004517          	auipc	a0,0x4
    80005714:	a8850513          	addi	a0,a0,-1400 # 80009198 <CONSOLE_STATUS+0x188>
    80005718:	00000097          	auipc	ra,0x0
    8000571c:	57c080e7          	jalr	1404(ra) # 80005c94 <_Z11printStringPKc>
    80005720:	00000613          	li	a2,0
    80005724:	00a00593          	li	a1,10
    80005728:	00048513          	mv	a0,s1
    8000572c:	00000097          	auipc	ra,0x0
    80005730:	718080e7          	jalr	1816(ra) # 80005e44 <_Z8printIntiii>
    printString(".\n");
    80005734:	00004517          	auipc	a0,0x4
    80005738:	a7c50513          	addi	a0,a0,-1412 # 800091b0 <CONSOLE_STATUS+0x1a0>
    8000573c:	00000097          	auipc	ra,0x0
    80005740:	558080e7          	jalr	1368(ra) # 80005c94 <_Z11printStringPKc>
    if(threadNum > n) {
    80005744:	0324c463          	blt	s1,s2,8000576c <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80005748:	03205c63          	blez	s2,80005780 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    8000574c:	03800513          	li	a0,56
    80005750:	ffffc097          	auipc	ra,0xffffc
    80005754:	7e4080e7          	jalr	2020(ra) # 80001f34 <_Znwm>
    80005758:	00050a93          	mv	s5,a0
    8000575c:	00048593          	mv	a1,s1
    80005760:	00001097          	auipc	ra,0x1
    80005764:	804080e7          	jalr	-2044(ra) # 80005f64 <_ZN9BufferCPPC1Ei>
    80005768:	0300006f          	j	80005798 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    8000576c:	00004517          	auipc	a0,0x4
    80005770:	a4c50513          	addi	a0,a0,-1460 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80005774:	00000097          	auipc	ra,0x0
    80005778:	520080e7          	jalr	1312(ra) # 80005c94 <_Z11printStringPKc>
        return;
    8000577c:	0140006f          	j	80005790 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80005780:	00004517          	auipc	a0,0x4
    80005784:	a7850513          	addi	a0,a0,-1416 # 800091f8 <CONSOLE_STATUS+0x1e8>
    80005788:	00000097          	auipc	ra,0x0
    8000578c:	50c080e7          	jalr	1292(ra) # 80005c94 <_Z11printStringPKc>
        return;
    80005790:	000b8113          	mv	sp,s7
    80005794:	2380006f          	j	800059cc <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80005798:	01000513          	li	a0,16
    8000579c:	ffffc097          	auipc	ra,0xffffc
    800057a0:	798080e7          	jalr	1944(ra) # 80001f34 <_Znwm>
    800057a4:	00050493          	mv	s1,a0
    800057a8:	00000593          	li	a1,0
    800057ac:	ffffd097          	auipc	ra,0xffffd
    800057b0:	93c080e7          	jalr	-1732(ra) # 800020e8 <_ZN9SemaphoreC1Ej>
    800057b4:	00006797          	auipc	a5,0x6
    800057b8:	6497ba23          	sd	s1,1620(a5) # 8000be08 <_ZL10waitForAll>
    Thread* threads[threadNum];
    800057bc:	00391793          	slli	a5,s2,0x3
    800057c0:	00f78793          	addi	a5,a5,15
    800057c4:	ff07f793          	andi	a5,a5,-16
    800057c8:	40f10133          	sub	sp,sp,a5
    800057cc:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    800057d0:	0019071b          	addiw	a4,s2,1
    800057d4:	00171793          	slli	a5,a4,0x1
    800057d8:	00e787b3          	add	a5,a5,a4
    800057dc:	00379793          	slli	a5,a5,0x3
    800057e0:	00f78793          	addi	a5,a5,15
    800057e4:	ff07f793          	andi	a5,a5,-16
    800057e8:	40f10133          	sub	sp,sp,a5
    800057ec:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    800057f0:	00191c13          	slli	s8,s2,0x1
    800057f4:	012c07b3          	add	a5,s8,s2
    800057f8:	00379793          	slli	a5,a5,0x3
    800057fc:	00fa07b3          	add	a5,s4,a5
    80005800:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80005804:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80005808:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    8000580c:	02800513          	li	a0,40
    80005810:	ffffc097          	auipc	ra,0xffffc
    80005814:	724080e7          	jalr	1828(ra) # 80001f34 <_Znwm>
    80005818:	00050b13          	mv	s6,a0
    8000581c:	012c0c33          	add	s8,s8,s2
    80005820:	003c1c13          	slli	s8,s8,0x3
    80005824:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80005828:	ffffd097          	auipc	ra,0xffffd
    8000582c:	890080e7          	jalr	-1904(ra) # 800020b8 <_ZN6ThreadC1Ev>
    80005830:	00006797          	auipc	a5,0x6
    80005834:	44878793          	addi	a5,a5,1096 # 8000bc78 <_ZTV12ConsumerSync+0x10>
    80005838:	00fb3023          	sd	a5,0(s6)
    8000583c:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80005840:	000b0513          	mv	a0,s6
    80005844:	ffffc097          	auipc	ra,0xffffc
    80005848:	7f0080e7          	jalr	2032(ra) # 80002034 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    8000584c:	00000493          	li	s1,0
    80005850:	0380006f          	j	80005888 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005854:	00006797          	auipc	a5,0x6
    80005858:	3fc78793          	addi	a5,a5,1020 # 8000bc50 <_ZTV12ProducerSync+0x10>
    8000585c:	00fcb023          	sd	a5,0(s9)
    80005860:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80005864:	00349793          	slli	a5,s1,0x3
    80005868:	00f987b3          	add	a5,s3,a5
    8000586c:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80005870:	00349793          	slli	a5,s1,0x3
    80005874:	00f987b3          	add	a5,s3,a5
    80005878:	0007b503          	ld	a0,0(a5)
    8000587c:	ffffc097          	auipc	ra,0xffffc
    80005880:	7b8080e7          	jalr	1976(ra) # 80002034 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005884:	0014849b          	addiw	s1,s1,1
    80005888:	0b24d063          	bge	s1,s2,80005928 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    8000588c:	00149793          	slli	a5,s1,0x1
    80005890:	009787b3          	add	a5,a5,s1
    80005894:	00379793          	slli	a5,a5,0x3
    80005898:	00fa07b3          	add	a5,s4,a5
    8000589c:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800058a0:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    800058a4:	00006717          	auipc	a4,0x6
    800058a8:	56473703          	ld	a4,1380(a4) # 8000be08 <_ZL10waitForAll>
    800058ac:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    800058b0:	02905863          	blez	s1,800058e0 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    800058b4:	02800513          	li	a0,40
    800058b8:	ffffc097          	auipc	ra,0xffffc
    800058bc:	67c080e7          	jalr	1660(ra) # 80001f34 <_Znwm>
    800058c0:	00050c93          	mv	s9,a0
    800058c4:	00149c13          	slli	s8,s1,0x1
    800058c8:	009c0c33          	add	s8,s8,s1
    800058cc:	003c1c13          	slli	s8,s8,0x3
    800058d0:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800058d4:	ffffc097          	auipc	ra,0xffffc
    800058d8:	7e4080e7          	jalr	2020(ra) # 800020b8 <_ZN6ThreadC1Ev>
    800058dc:	f79ff06f          	j	80005854 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    800058e0:	02800513          	li	a0,40
    800058e4:	ffffc097          	auipc	ra,0xffffc
    800058e8:	650080e7          	jalr	1616(ra) # 80001f34 <_Znwm>
    800058ec:	00050c93          	mv	s9,a0
    800058f0:	00149c13          	slli	s8,s1,0x1
    800058f4:	009c0c33          	add	s8,s8,s1
    800058f8:	003c1c13          	slli	s8,s8,0x3
    800058fc:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80005900:	ffffc097          	auipc	ra,0xffffc
    80005904:	7b8080e7          	jalr	1976(ra) # 800020b8 <_ZN6ThreadC1Ev>
    80005908:	00006797          	auipc	a5,0x6
    8000590c:	32078793          	addi	a5,a5,800 # 8000bc28 <_ZTV16ProducerKeyboard+0x10>
    80005910:	00fcb023          	sd	a5,0(s9)
    80005914:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80005918:	00349793          	slli	a5,s1,0x3
    8000591c:	00f987b3          	add	a5,s3,a5
    80005920:	0197b023          	sd	s9,0(a5)
    80005924:	f4dff06f          	j	80005870 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80005928:	ffffc097          	auipc	ra,0xffffc
    8000592c:	740080e7          	jalr	1856(ra) # 80002068 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80005930:	00000493          	li	s1,0
    80005934:	00994e63          	blt	s2,s1,80005950 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80005938:	00006517          	auipc	a0,0x6
    8000593c:	4d053503          	ld	a0,1232(a0) # 8000be08 <_ZL10waitForAll>
    80005940:	ffffc097          	auipc	ra,0xffffc
    80005944:	7e4080e7          	jalr	2020(ra) # 80002124 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80005948:	0014849b          	addiw	s1,s1,1
    8000594c:	fe9ff06f          	j	80005934 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80005950:	00000493          	li	s1,0
    80005954:	0080006f          	j	8000595c <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80005958:	0014849b          	addiw	s1,s1,1
    8000595c:	0324d263          	bge	s1,s2,80005980 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80005960:	00349793          	slli	a5,s1,0x3
    80005964:	00f987b3          	add	a5,s3,a5
    80005968:	0007b503          	ld	a0,0(a5)
    8000596c:	fe0506e3          	beqz	a0,80005958 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80005970:	00053783          	ld	a5,0(a0)
    80005974:	0087b783          	ld	a5,8(a5)
    80005978:	000780e7          	jalr	a5
    8000597c:	fddff06f          	j	80005958 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80005980:	000b0a63          	beqz	s6,80005994 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80005984:	000b3783          	ld	a5,0(s6)
    80005988:	0087b783          	ld	a5,8(a5)
    8000598c:	000b0513          	mv	a0,s6
    80005990:	000780e7          	jalr	a5
    delete waitForAll;
    80005994:	00006517          	auipc	a0,0x6
    80005998:	47453503          	ld	a0,1140(a0) # 8000be08 <_ZL10waitForAll>
    8000599c:	00050863          	beqz	a0,800059ac <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    800059a0:	00053783          	ld	a5,0(a0)
    800059a4:	0087b783          	ld	a5,8(a5)
    800059a8:	000780e7          	jalr	a5
    delete buffer;
    800059ac:	000a8e63          	beqz	s5,800059c8 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    800059b0:	000a8513          	mv	a0,s5
    800059b4:	00001097          	auipc	ra,0x1
    800059b8:	8a8080e7          	jalr	-1880(ra) # 8000625c <_ZN9BufferCPPD1Ev>
    800059bc:	000a8513          	mv	a0,s5
    800059c0:	ffffc097          	auipc	ra,0xffffc
    800059c4:	59c080e7          	jalr	1436(ra) # 80001f5c <_ZdlPv>
    800059c8:	000b8113          	mv	sp,s7

}
    800059cc:	f8040113          	addi	sp,s0,-128
    800059d0:	07813083          	ld	ra,120(sp)
    800059d4:	07013403          	ld	s0,112(sp)
    800059d8:	06813483          	ld	s1,104(sp)
    800059dc:	06013903          	ld	s2,96(sp)
    800059e0:	05813983          	ld	s3,88(sp)
    800059e4:	05013a03          	ld	s4,80(sp)
    800059e8:	04813a83          	ld	s5,72(sp)
    800059ec:	04013b03          	ld	s6,64(sp)
    800059f0:	03813b83          	ld	s7,56(sp)
    800059f4:	03013c03          	ld	s8,48(sp)
    800059f8:	02813c83          	ld	s9,40(sp)
    800059fc:	08010113          	addi	sp,sp,128
    80005a00:	00008067          	ret
    80005a04:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80005a08:	000a8513          	mv	a0,s5
    80005a0c:	ffffc097          	auipc	ra,0xffffc
    80005a10:	550080e7          	jalr	1360(ra) # 80001f5c <_ZdlPv>
    80005a14:	00048513          	mv	a0,s1
    80005a18:	00007097          	auipc	ra,0x7
    80005a1c:	4d0080e7          	jalr	1232(ra) # 8000cee8 <_Unwind_Resume>
    80005a20:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80005a24:	00048513          	mv	a0,s1
    80005a28:	ffffc097          	auipc	ra,0xffffc
    80005a2c:	534080e7          	jalr	1332(ra) # 80001f5c <_ZdlPv>
    80005a30:	00090513          	mv	a0,s2
    80005a34:	00007097          	auipc	ra,0x7
    80005a38:	4b4080e7          	jalr	1204(ra) # 8000cee8 <_Unwind_Resume>
    80005a3c:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80005a40:	000b0513          	mv	a0,s6
    80005a44:	ffffc097          	auipc	ra,0xffffc
    80005a48:	518080e7          	jalr	1304(ra) # 80001f5c <_ZdlPv>
    80005a4c:	00048513          	mv	a0,s1
    80005a50:	00007097          	auipc	ra,0x7
    80005a54:	498080e7          	jalr	1176(ra) # 8000cee8 <_Unwind_Resume>
    80005a58:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005a5c:	000c8513          	mv	a0,s9
    80005a60:	ffffc097          	auipc	ra,0xffffc
    80005a64:	4fc080e7          	jalr	1276(ra) # 80001f5c <_ZdlPv>
    80005a68:	00048513          	mv	a0,s1
    80005a6c:	00007097          	auipc	ra,0x7
    80005a70:	47c080e7          	jalr	1148(ra) # 8000cee8 <_Unwind_Resume>
    80005a74:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005a78:	000c8513          	mv	a0,s9
    80005a7c:	ffffc097          	auipc	ra,0xffffc
    80005a80:	4e0080e7          	jalr	1248(ra) # 80001f5c <_ZdlPv>
    80005a84:	00048513          	mv	a0,s1
    80005a88:	00007097          	auipc	ra,0x7
    80005a8c:	460080e7          	jalr	1120(ra) # 8000cee8 <_Unwind_Resume>

0000000080005a90 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005a90:	ff010113          	addi	sp,sp,-16
    80005a94:	00113423          	sd	ra,8(sp)
    80005a98:	00813023          	sd	s0,0(sp)
    80005a9c:	01010413          	addi	s0,sp,16
    80005aa0:	00006797          	auipc	a5,0x6
    80005aa4:	1d878793          	addi	a5,a5,472 # 8000bc78 <_ZTV12ConsumerSync+0x10>
    80005aa8:	00f53023          	sd	a5,0(a0)
    80005aac:	ffffc097          	auipc	ra,0xffffc
    80005ab0:	3f0080e7          	jalr	1008(ra) # 80001e9c <_ZN6ThreadD1Ev>
    80005ab4:	00813083          	ld	ra,8(sp)
    80005ab8:	00013403          	ld	s0,0(sp)
    80005abc:	01010113          	addi	sp,sp,16
    80005ac0:	00008067          	ret

0000000080005ac4 <_ZN12ConsumerSyncD0Ev>:
    80005ac4:	fe010113          	addi	sp,sp,-32
    80005ac8:	00113c23          	sd	ra,24(sp)
    80005acc:	00813823          	sd	s0,16(sp)
    80005ad0:	00913423          	sd	s1,8(sp)
    80005ad4:	02010413          	addi	s0,sp,32
    80005ad8:	00050493          	mv	s1,a0
    80005adc:	00006797          	auipc	a5,0x6
    80005ae0:	19c78793          	addi	a5,a5,412 # 8000bc78 <_ZTV12ConsumerSync+0x10>
    80005ae4:	00f53023          	sd	a5,0(a0)
    80005ae8:	ffffc097          	auipc	ra,0xffffc
    80005aec:	3b4080e7          	jalr	948(ra) # 80001e9c <_ZN6ThreadD1Ev>
    80005af0:	00048513          	mv	a0,s1
    80005af4:	ffffc097          	auipc	ra,0xffffc
    80005af8:	468080e7          	jalr	1128(ra) # 80001f5c <_ZdlPv>
    80005afc:	01813083          	ld	ra,24(sp)
    80005b00:	01013403          	ld	s0,16(sp)
    80005b04:	00813483          	ld	s1,8(sp)
    80005b08:	02010113          	addi	sp,sp,32
    80005b0c:	00008067          	ret

0000000080005b10 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80005b10:	ff010113          	addi	sp,sp,-16
    80005b14:	00113423          	sd	ra,8(sp)
    80005b18:	00813023          	sd	s0,0(sp)
    80005b1c:	01010413          	addi	s0,sp,16
    80005b20:	00006797          	auipc	a5,0x6
    80005b24:	13078793          	addi	a5,a5,304 # 8000bc50 <_ZTV12ProducerSync+0x10>
    80005b28:	00f53023          	sd	a5,0(a0)
    80005b2c:	ffffc097          	auipc	ra,0xffffc
    80005b30:	370080e7          	jalr	880(ra) # 80001e9c <_ZN6ThreadD1Ev>
    80005b34:	00813083          	ld	ra,8(sp)
    80005b38:	00013403          	ld	s0,0(sp)
    80005b3c:	01010113          	addi	sp,sp,16
    80005b40:	00008067          	ret

0000000080005b44 <_ZN12ProducerSyncD0Ev>:
    80005b44:	fe010113          	addi	sp,sp,-32
    80005b48:	00113c23          	sd	ra,24(sp)
    80005b4c:	00813823          	sd	s0,16(sp)
    80005b50:	00913423          	sd	s1,8(sp)
    80005b54:	02010413          	addi	s0,sp,32
    80005b58:	00050493          	mv	s1,a0
    80005b5c:	00006797          	auipc	a5,0x6
    80005b60:	0f478793          	addi	a5,a5,244 # 8000bc50 <_ZTV12ProducerSync+0x10>
    80005b64:	00f53023          	sd	a5,0(a0)
    80005b68:	ffffc097          	auipc	ra,0xffffc
    80005b6c:	334080e7          	jalr	820(ra) # 80001e9c <_ZN6ThreadD1Ev>
    80005b70:	00048513          	mv	a0,s1
    80005b74:	ffffc097          	auipc	ra,0xffffc
    80005b78:	3e8080e7          	jalr	1000(ra) # 80001f5c <_ZdlPv>
    80005b7c:	01813083          	ld	ra,24(sp)
    80005b80:	01013403          	ld	s0,16(sp)
    80005b84:	00813483          	ld	s1,8(sp)
    80005b88:	02010113          	addi	sp,sp,32
    80005b8c:	00008067          	ret

0000000080005b90 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005b90:	ff010113          	addi	sp,sp,-16
    80005b94:	00113423          	sd	ra,8(sp)
    80005b98:	00813023          	sd	s0,0(sp)
    80005b9c:	01010413          	addi	s0,sp,16
    80005ba0:	00006797          	auipc	a5,0x6
    80005ba4:	08878793          	addi	a5,a5,136 # 8000bc28 <_ZTV16ProducerKeyboard+0x10>
    80005ba8:	00f53023          	sd	a5,0(a0)
    80005bac:	ffffc097          	auipc	ra,0xffffc
    80005bb0:	2f0080e7          	jalr	752(ra) # 80001e9c <_ZN6ThreadD1Ev>
    80005bb4:	00813083          	ld	ra,8(sp)
    80005bb8:	00013403          	ld	s0,0(sp)
    80005bbc:	01010113          	addi	sp,sp,16
    80005bc0:	00008067          	ret

0000000080005bc4 <_ZN16ProducerKeyboardD0Ev>:
    80005bc4:	fe010113          	addi	sp,sp,-32
    80005bc8:	00113c23          	sd	ra,24(sp)
    80005bcc:	00813823          	sd	s0,16(sp)
    80005bd0:	00913423          	sd	s1,8(sp)
    80005bd4:	02010413          	addi	s0,sp,32
    80005bd8:	00050493          	mv	s1,a0
    80005bdc:	00006797          	auipc	a5,0x6
    80005be0:	04c78793          	addi	a5,a5,76 # 8000bc28 <_ZTV16ProducerKeyboard+0x10>
    80005be4:	00f53023          	sd	a5,0(a0)
    80005be8:	ffffc097          	auipc	ra,0xffffc
    80005bec:	2b4080e7          	jalr	692(ra) # 80001e9c <_ZN6ThreadD1Ev>
    80005bf0:	00048513          	mv	a0,s1
    80005bf4:	ffffc097          	auipc	ra,0xffffc
    80005bf8:	368080e7          	jalr	872(ra) # 80001f5c <_ZdlPv>
    80005bfc:	01813083          	ld	ra,24(sp)
    80005c00:	01013403          	ld	s0,16(sp)
    80005c04:	00813483          	ld	s1,8(sp)
    80005c08:	02010113          	addi	sp,sp,32
    80005c0c:	00008067          	ret

0000000080005c10 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80005c10:	ff010113          	addi	sp,sp,-16
    80005c14:	00113423          	sd	ra,8(sp)
    80005c18:	00813023          	sd	s0,0(sp)
    80005c1c:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80005c20:	02053583          	ld	a1,32(a0)
    80005c24:	fffff097          	auipc	ra,0xfffff
    80005c28:	7e4080e7          	jalr	2020(ra) # 80005408 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005c2c:	00813083          	ld	ra,8(sp)
    80005c30:	00013403          	ld	s0,0(sp)
    80005c34:	01010113          	addi	sp,sp,16
    80005c38:	00008067          	ret

0000000080005c3c <_ZN12ProducerSync3runEv>:
    void run() override {
    80005c3c:	ff010113          	addi	sp,sp,-16
    80005c40:	00113423          	sd	ra,8(sp)
    80005c44:	00813023          	sd	s0,0(sp)
    80005c48:	01010413          	addi	s0,sp,16
        producer(td);
    80005c4c:	02053583          	ld	a1,32(a0)
    80005c50:	00000097          	auipc	ra,0x0
    80005c54:	878080e7          	jalr	-1928(ra) # 800054c8 <_ZN12ProducerSync8producerEPv>
    }
    80005c58:	00813083          	ld	ra,8(sp)
    80005c5c:	00013403          	ld	s0,0(sp)
    80005c60:	01010113          	addi	sp,sp,16
    80005c64:	00008067          	ret

0000000080005c68 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005c68:	ff010113          	addi	sp,sp,-16
    80005c6c:	00113423          	sd	ra,8(sp)
    80005c70:	00813023          	sd	s0,0(sp)
    80005c74:	01010413          	addi	s0,sp,16
        consumer(td);
    80005c78:	02053583          	ld	a1,32(a0)
    80005c7c:	00000097          	auipc	ra,0x0
    80005c80:	8e0080e7          	jalr	-1824(ra) # 8000555c <_ZN12ConsumerSync8consumerEPv>
    }
    80005c84:	00813083          	ld	ra,8(sp)
    80005c88:	00013403          	ld	s0,0(sp)
    80005c8c:	01010113          	addi	sp,sp,16
    80005c90:	00008067          	ret

0000000080005c94 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005c94:	fe010113          	addi	sp,sp,-32
    80005c98:	00113c23          	sd	ra,24(sp)
    80005c9c:	00813823          	sd	s0,16(sp)
    80005ca0:	00913423          	sd	s1,8(sp)
    80005ca4:	02010413          	addi	s0,sp,32
    80005ca8:	00050493          	mv	s1,a0
    LOCK();
    80005cac:	00100613          	li	a2,1
    80005cb0:	00000593          	li	a1,0
    80005cb4:	00006517          	auipc	a0,0x6
    80005cb8:	15c50513          	addi	a0,a0,348 # 8000be10 <lockPrint>
    80005cbc:	ffffb097          	auipc	ra,0xffffb
    80005cc0:	560080e7          	jalr	1376(ra) # 8000121c <copy_and_swap>
    80005cc4:	00050863          	beqz	a0,80005cd4 <_Z11printStringPKc+0x40>
    80005cc8:	ffffb097          	auipc	ra,0xffffb
    80005ccc:	704080e7          	jalr	1796(ra) # 800013cc <_Z15thread_dispatchv>
    80005cd0:	fddff06f          	j	80005cac <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005cd4:	0004c503          	lbu	a0,0(s1)
    80005cd8:	00050a63          	beqz	a0,80005cec <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005cdc:	ffffc097          	auipc	ra,0xffffc
    80005ce0:	990080e7          	jalr	-1648(ra) # 8000166c <_Z4putcc>
        string++;
    80005ce4:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005ce8:	fedff06f          	j	80005cd4 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005cec:	00000613          	li	a2,0
    80005cf0:	00100593          	li	a1,1
    80005cf4:	00006517          	auipc	a0,0x6
    80005cf8:	11c50513          	addi	a0,a0,284 # 8000be10 <lockPrint>
    80005cfc:	ffffb097          	auipc	ra,0xffffb
    80005d00:	520080e7          	jalr	1312(ra) # 8000121c <copy_and_swap>
    80005d04:	fe0514e3          	bnez	a0,80005cec <_Z11printStringPKc+0x58>
}
    80005d08:	01813083          	ld	ra,24(sp)
    80005d0c:	01013403          	ld	s0,16(sp)
    80005d10:	00813483          	ld	s1,8(sp)
    80005d14:	02010113          	addi	sp,sp,32
    80005d18:	00008067          	ret

0000000080005d1c <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005d1c:	fd010113          	addi	sp,sp,-48
    80005d20:	02113423          	sd	ra,40(sp)
    80005d24:	02813023          	sd	s0,32(sp)
    80005d28:	00913c23          	sd	s1,24(sp)
    80005d2c:	01213823          	sd	s2,16(sp)
    80005d30:	01313423          	sd	s3,8(sp)
    80005d34:	01413023          	sd	s4,0(sp)
    80005d38:	03010413          	addi	s0,sp,48
    80005d3c:	00050993          	mv	s3,a0
    80005d40:	00058a13          	mv	s4,a1
    LOCK();
    80005d44:	00100613          	li	a2,1
    80005d48:	00000593          	li	a1,0
    80005d4c:	00006517          	auipc	a0,0x6
    80005d50:	0c450513          	addi	a0,a0,196 # 8000be10 <lockPrint>
    80005d54:	ffffb097          	auipc	ra,0xffffb
    80005d58:	4c8080e7          	jalr	1224(ra) # 8000121c <copy_and_swap>
    80005d5c:	00050863          	beqz	a0,80005d6c <_Z9getStringPci+0x50>
    80005d60:	ffffb097          	auipc	ra,0xffffb
    80005d64:	66c080e7          	jalr	1644(ra) # 800013cc <_Z15thread_dispatchv>
    80005d68:	fddff06f          	j	80005d44 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005d6c:	00000913          	li	s2,0
    80005d70:	00090493          	mv	s1,s2
    80005d74:	0019091b          	addiw	s2,s2,1
    80005d78:	03495a63          	bge	s2,s4,80005dac <_Z9getStringPci+0x90>
        cc = getc();
    80005d7c:	ffffc097          	auipc	ra,0xffffc
    80005d80:	8a4080e7          	jalr	-1884(ra) # 80001620 <_Z4getcv>
        if(cc < 1)
    80005d84:	02050463          	beqz	a0,80005dac <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005d88:	009984b3          	add	s1,s3,s1
    80005d8c:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005d90:	00a00793          	li	a5,10
    80005d94:	00f50a63          	beq	a0,a5,80005da8 <_Z9getStringPci+0x8c>
    80005d98:	00d00793          	li	a5,13
    80005d9c:	fcf51ae3          	bne	a0,a5,80005d70 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80005da0:	00090493          	mv	s1,s2
    80005da4:	0080006f          	j	80005dac <_Z9getStringPci+0x90>
    80005da8:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005dac:	009984b3          	add	s1,s3,s1
    80005db0:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005db4:	00000613          	li	a2,0
    80005db8:	00100593          	li	a1,1
    80005dbc:	00006517          	auipc	a0,0x6
    80005dc0:	05450513          	addi	a0,a0,84 # 8000be10 <lockPrint>
    80005dc4:	ffffb097          	auipc	ra,0xffffb
    80005dc8:	458080e7          	jalr	1112(ra) # 8000121c <copy_and_swap>
    80005dcc:	fe0514e3          	bnez	a0,80005db4 <_Z9getStringPci+0x98>
    return buf;
}
    80005dd0:	00098513          	mv	a0,s3
    80005dd4:	02813083          	ld	ra,40(sp)
    80005dd8:	02013403          	ld	s0,32(sp)
    80005ddc:	01813483          	ld	s1,24(sp)
    80005de0:	01013903          	ld	s2,16(sp)
    80005de4:	00813983          	ld	s3,8(sp)
    80005de8:	00013a03          	ld	s4,0(sp)
    80005dec:	03010113          	addi	sp,sp,48
    80005df0:	00008067          	ret

0000000080005df4 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005df4:	ff010113          	addi	sp,sp,-16
    80005df8:	00813423          	sd	s0,8(sp)
    80005dfc:	01010413          	addi	s0,sp,16
    80005e00:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005e04:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005e08:	0006c603          	lbu	a2,0(a3)
    80005e0c:	fd06071b          	addiw	a4,a2,-48
    80005e10:	0ff77713          	andi	a4,a4,255
    80005e14:	00900793          	li	a5,9
    80005e18:	02e7e063          	bltu	a5,a4,80005e38 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005e1c:	0025179b          	slliw	a5,a0,0x2
    80005e20:	00a787bb          	addw	a5,a5,a0
    80005e24:	0017979b          	slliw	a5,a5,0x1
    80005e28:	00168693          	addi	a3,a3,1
    80005e2c:	00c787bb          	addw	a5,a5,a2
    80005e30:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005e34:	fd5ff06f          	j	80005e08 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005e38:	00813403          	ld	s0,8(sp)
    80005e3c:	01010113          	addi	sp,sp,16
    80005e40:	00008067          	ret

0000000080005e44 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005e44:	fc010113          	addi	sp,sp,-64
    80005e48:	02113c23          	sd	ra,56(sp)
    80005e4c:	02813823          	sd	s0,48(sp)
    80005e50:	02913423          	sd	s1,40(sp)
    80005e54:	03213023          	sd	s2,32(sp)
    80005e58:	01313c23          	sd	s3,24(sp)
    80005e5c:	04010413          	addi	s0,sp,64
    80005e60:	00050493          	mv	s1,a0
    80005e64:	00058913          	mv	s2,a1
    80005e68:	00060993          	mv	s3,a2
    LOCK();
    80005e6c:	00100613          	li	a2,1
    80005e70:	00000593          	li	a1,0
    80005e74:	00006517          	auipc	a0,0x6
    80005e78:	f9c50513          	addi	a0,a0,-100 # 8000be10 <lockPrint>
    80005e7c:	ffffb097          	auipc	ra,0xffffb
    80005e80:	3a0080e7          	jalr	928(ra) # 8000121c <copy_and_swap>
    80005e84:	00050863          	beqz	a0,80005e94 <_Z8printIntiii+0x50>
    80005e88:	ffffb097          	auipc	ra,0xffffb
    80005e8c:	544080e7          	jalr	1348(ra) # 800013cc <_Z15thread_dispatchv>
    80005e90:	fddff06f          	j	80005e6c <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005e94:	00098463          	beqz	s3,80005e9c <_Z8printIntiii+0x58>
    80005e98:	0804c463          	bltz	s1,80005f20 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005e9c:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005ea0:	00000593          	li	a1,0
    }

    i = 0;
    80005ea4:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005ea8:	0009079b          	sext.w	a5,s2
    80005eac:	0325773b          	remuw	a4,a0,s2
    80005eb0:	00048613          	mv	a2,s1
    80005eb4:	0014849b          	addiw	s1,s1,1
    80005eb8:	02071693          	slli	a3,a4,0x20
    80005ebc:	0206d693          	srli	a3,a3,0x20
    80005ec0:	00006717          	auipc	a4,0x6
    80005ec4:	dd070713          	addi	a4,a4,-560 # 8000bc90 <digits>
    80005ec8:	00d70733          	add	a4,a4,a3
    80005ecc:	00074683          	lbu	a3,0(a4)
    80005ed0:	fd040713          	addi	a4,s0,-48
    80005ed4:	00c70733          	add	a4,a4,a2
    80005ed8:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005edc:	0005071b          	sext.w	a4,a0
    80005ee0:	0325553b          	divuw	a0,a0,s2
    80005ee4:	fcf772e3          	bgeu	a4,a5,80005ea8 <_Z8printIntiii+0x64>
    if(neg)
    80005ee8:	00058c63          	beqz	a1,80005f00 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005eec:	fd040793          	addi	a5,s0,-48
    80005ef0:	009784b3          	add	s1,a5,s1
    80005ef4:	02d00793          	li	a5,45
    80005ef8:	fef48823          	sb	a5,-16(s1)
    80005efc:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005f00:	fff4849b          	addiw	s1,s1,-1
    80005f04:	0204c463          	bltz	s1,80005f2c <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80005f08:	fd040793          	addi	a5,s0,-48
    80005f0c:	009787b3          	add	a5,a5,s1
    80005f10:	ff07c503          	lbu	a0,-16(a5)
    80005f14:	ffffb097          	auipc	ra,0xffffb
    80005f18:	758080e7          	jalr	1880(ra) # 8000166c <_Z4putcc>
    80005f1c:	fe5ff06f          	j	80005f00 <_Z8printIntiii+0xbc>
        x = -xx;
    80005f20:	4090053b          	negw	a0,s1
        neg = 1;
    80005f24:	00100593          	li	a1,1
        x = -xx;
    80005f28:	f7dff06f          	j	80005ea4 <_Z8printIntiii+0x60>

    UNLOCK();
    80005f2c:	00000613          	li	a2,0
    80005f30:	00100593          	li	a1,1
    80005f34:	00006517          	auipc	a0,0x6
    80005f38:	edc50513          	addi	a0,a0,-292 # 8000be10 <lockPrint>
    80005f3c:	ffffb097          	auipc	ra,0xffffb
    80005f40:	2e0080e7          	jalr	736(ra) # 8000121c <copy_and_swap>
    80005f44:	fe0514e3          	bnez	a0,80005f2c <_Z8printIntiii+0xe8>
    80005f48:	03813083          	ld	ra,56(sp)
    80005f4c:	03013403          	ld	s0,48(sp)
    80005f50:	02813483          	ld	s1,40(sp)
    80005f54:	02013903          	ld	s2,32(sp)
    80005f58:	01813983          	ld	s3,24(sp)
    80005f5c:	04010113          	addi	sp,sp,64
    80005f60:	00008067          	ret

0000000080005f64 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005f64:	fd010113          	addi	sp,sp,-48
    80005f68:	02113423          	sd	ra,40(sp)
    80005f6c:	02813023          	sd	s0,32(sp)
    80005f70:	00913c23          	sd	s1,24(sp)
    80005f74:	01213823          	sd	s2,16(sp)
    80005f78:	01313423          	sd	s3,8(sp)
    80005f7c:	03010413          	addi	s0,sp,48
    80005f80:	00050493          	mv	s1,a0
    80005f84:	00058913          	mv	s2,a1
    80005f88:	0015879b          	addiw	a5,a1,1
    80005f8c:	0007851b          	sext.w	a0,a5
    80005f90:	00f4a023          	sw	a5,0(s1)
    80005f94:	0004a823          	sw	zero,16(s1)
    80005f98:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005f9c:	00251513          	slli	a0,a0,0x2
    80005fa0:	ffffb097          	auipc	ra,0xffffb
    80005fa4:	2b8080e7          	jalr	696(ra) # 80001258 <_Z9mem_allocm>
    80005fa8:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005fac:	01000513          	li	a0,16
    80005fb0:	ffffc097          	auipc	ra,0xffffc
    80005fb4:	f84080e7          	jalr	-124(ra) # 80001f34 <_Znwm>
    80005fb8:	00050993          	mv	s3,a0
    80005fbc:	00000593          	li	a1,0
    80005fc0:	ffffc097          	auipc	ra,0xffffc
    80005fc4:	128080e7          	jalr	296(ra) # 800020e8 <_ZN9SemaphoreC1Ej>
    80005fc8:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005fcc:	01000513          	li	a0,16
    80005fd0:	ffffc097          	auipc	ra,0xffffc
    80005fd4:	f64080e7          	jalr	-156(ra) # 80001f34 <_Znwm>
    80005fd8:	00050993          	mv	s3,a0
    80005fdc:	00090593          	mv	a1,s2
    80005fe0:	ffffc097          	auipc	ra,0xffffc
    80005fe4:	108080e7          	jalr	264(ra) # 800020e8 <_ZN9SemaphoreC1Ej>
    80005fe8:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005fec:	01000513          	li	a0,16
    80005ff0:	ffffc097          	auipc	ra,0xffffc
    80005ff4:	f44080e7          	jalr	-188(ra) # 80001f34 <_Znwm>
    80005ff8:	00050913          	mv	s2,a0
    80005ffc:	00100593          	li	a1,1
    80006000:	ffffc097          	auipc	ra,0xffffc
    80006004:	0e8080e7          	jalr	232(ra) # 800020e8 <_ZN9SemaphoreC1Ej>
    80006008:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    8000600c:	01000513          	li	a0,16
    80006010:	ffffc097          	auipc	ra,0xffffc
    80006014:	f24080e7          	jalr	-220(ra) # 80001f34 <_Znwm>
    80006018:	00050913          	mv	s2,a0
    8000601c:	00100593          	li	a1,1
    80006020:	ffffc097          	auipc	ra,0xffffc
    80006024:	0c8080e7          	jalr	200(ra) # 800020e8 <_ZN9SemaphoreC1Ej>
    80006028:	0324b823          	sd	s2,48(s1)
}
    8000602c:	02813083          	ld	ra,40(sp)
    80006030:	02013403          	ld	s0,32(sp)
    80006034:	01813483          	ld	s1,24(sp)
    80006038:	01013903          	ld	s2,16(sp)
    8000603c:	00813983          	ld	s3,8(sp)
    80006040:	03010113          	addi	sp,sp,48
    80006044:	00008067          	ret
    80006048:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    8000604c:	00098513          	mv	a0,s3
    80006050:	ffffc097          	auipc	ra,0xffffc
    80006054:	f0c080e7          	jalr	-244(ra) # 80001f5c <_ZdlPv>
    80006058:	00048513          	mv	a0,s1
    8000605c:	00007097          	auipc	ra,0x7
    80006060:	e8c080e7          	jalr	-372(ra) # 8000cee8 <_Unwind_Resume>
    80006064:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80006068:	00098513          	mv	a0,s3
    8000606c:	ffffc097          	auipc	ra,0xffffc
    80006070:	ef0080e7          	jalr	-272(ra) # 80001f5c <_ZdlPv>
    80006074:	00048513          	mv	a0,s1
    80006078:	00007097          	auipc	ra,0x7
    8000607c:	e70080e7          	jalr	-400(ra) # 8000cee8 <_Unwind_Resume>
    80006080:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80006084:	00090513          	mv	a0,s2
    80006088:	ffffc097          	auipc	ra,0xffffc
    8000608c:	ed4080e7          	jalr	-300(ra) # 80001f5c <_ZdlPv>
    80006090:	00048513          	mv	a0,s1
    80006094:	00007097          	auipc	ra,0x7
    80006098:	e54080e7          	jalr	-428(ra) # 8000cee8 <_Unwind_Resume>
    8000609c:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800060a0:	00090513          	mv	a0,s2
    800060a4:	ffffc097          	auipc	ra,0xffffc
    800060a8:	eb8080e7          	jalr	-328(ra) # 80001f5c <_ZdlPv>
    800060ac:	00048513          	mv	a0,s1
    800060b0:	00007097          	auipc	ra,0x7
    800060b4:	e38080e7          	jalr	-456(ra) # 8000cee8 <_Unwind_Resume>

00000000800060b8 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    800060b8:	fe010113          	addi	sp,sp,-32
    800060bc:	00113c23          	sd	ra,24(sp)
    800060c0:	00813823          	sd	s0,16(sp)
    800060c4:	00913423          	sd	s1,8(sp)
    800060c8:	01213023          	sd	s2,0(sp)
    800060cc:	02010413          	addi	s0,sp,32
    800060d0:	00050493          	mv	s1,a0
    800060d4:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800060d8:	01853503          	ld	a0,24(a0)
    800060dc:	ffffc097          	auipc	ra,0xffffc
    800060e0:	048080e7          	jalr	72(ra) # 80002124 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800060e4:	0304b503          	ld	a0,48(s1)
    800060e8:	ffffc097          	auipc	ra,0xffffc
    800060ec:	03c080e7          	jalr	60(ra) # 80002124 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800060f0:	0084b783          	ld	a5,8(s1)
    800060f4:	0144a703          	lw	a4,20(s1)
    800060f8:	00271713          	slli	a4,a4,0x2
    800060fc:	00e787b3          	add	a5,a5,a4
    80006100:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006104:	0144a783          	lw	a5,20(s1)
    80006108:	0017879b          	addiw	a5,a5,1
    8000610c:	0004a703          	lw	a4,0(s1)
    80006110:	02e7e7bb          	remw	a5,a5,a4
    80006114:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80006118:	0304b503          	ld	a0,48(s1)
    8000611c:	ffffc097          	auipc	ra,0xffffc
    80006120:	040080e7          	jalr	64(ra) # 8000215c <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80006124:	0204b503          	ld	a0,32(s1)
    80006128:	ffffc097          	auipc	ra,0xffffc
    8000612c:	034080e7          	jalr	52(ra) # 8000215c <_ZN9Semaphore6signalEv>

}
    80006130:	01813083          	ld	ra,24(sp)
    80006134:	01013403          	ld	s0,16(sp)
    80006138:	00813483          	ld	s1,8(sp)
    8000613c:	00013903          	ld	s2,0(sp)
    80006140:	02010113          	addi	sp,sp,32
    80006144:	00008067          	ret

0000000080006148 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80006148:	fe010113          	addi	sp,sp,-32
    8000614c:	00113c23          	sd	ra,24(sp)
    80006150:	00813823          	sd	s0,16(sp)
    80006154:	00913423          	sd	s1,8(sp)
    80006158:	01213023          	sd	s2,0(sp)
    8000615c:	02010413          	addi	s0,sp,32
    80006160:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80006164:	02053503          	ld	a0,32(a0)
    80006168:	ffffc097          	auipc	ra,0xffffc
    8000616c:	fbc080e7          	jalr	-68(ra) # 80002124 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80006170:	0284b503          	ld	a0,40(s1)
    80006174:	ffffc097          	auipc	ra,0xffffc
    80006178:	fb0080e7          	jalr	-80(ra) # 80002124 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    8000617c:	0084b703          	ld	a4,8(s1)
    80006180:	0104a783          	lw	a5,16(s1)
    80006184:	00279693          	slli	a3,a5,0x2
    80006188:	00d70733          	add	a4,a4,a3
    8000618c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006190:	0017879b          	addiw	a5,a5,1
    80006194:	0004a703          	lw	a4,0(s1)
    80006198:	02e7e7bb          	remw	a5,a5,a4
    8000619c:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800061a0:	0284b503          	ld	a0,40(s1)
    800061a4:	ffffc097          	auipc	ra,0xffffc
    800061a8:	fb8080e7          	jalr	-72(ra) # 8000215c <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800061ac:	0184b503          	ld	a0,24(s1)
    800061b0:	ffffc097          	auipc	ra,0xffffc
    800061b4:	fac080e7          	jalr	-84(ra) # 8000215c <_ZN9Semaphore6signalEv>

    return ret;
}
    800061b8:	00090513          	mv	a0,s2
    800061bc:	01813083          	ld	ra,24(sp)
    800061c0:	01013403          	ld	s0,16(sp)
    800061c4:	00813483          	ld	s1,8(sp)
    800061c8:	00013903          	ld	s2,0(sp)
    800061cc:	02010113          	addi	sp,sp,32
    800061d0:	00008067          	ret

00000000800061d4 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800061d4:	fe010113          	addi	sp,sp,-32
    800061d8:	00113c23          	sd	ra,24(sp)
    800061dc:	00813823          	sd	s0,16(sp)
    800061e0:	00913423          	sd	s1,8(sp)
    800061e4:	01213023          	sd	s2,0(sp)
    800061e8:	02010413          	addi	s0,sp,32
    800061ec:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800061f0:	02853503          	ld	a0,40(a0)
    800061f4:	ffffc097          	auipc	ra,0xffffc
    800061f8:	f30080e7          	jalr	-208(ra) # 80002124 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    800061fc:	0304b503          	ld	a0,48(s1)
    80006200:	ffffc097          	auipc	ra,0xffffc
    80006204:	f24080e7          	jalr	-220(ra) # 80002124 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80006208:	0144a783          	lw	a5,20(s1)
    8000620c:	0104a903          	lw	s2,16(s1)
    80006210:	0327ce63          	blt	a5,s2,8000624c <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80006214:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80006218:	0304b503          	ld	a0,48(s1)
    8000621c:	ffffc097          	auipc	ra,0xffffc
    80006220:	f40080e7          	jalr	-192(ra) # 8000215c <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80006224:	0284b503          	ld	a0,40(s1)
    80006228:	ffffc097          	auipc	ra,0xffffc
    8000622c:	f34080e7          	jalr	-204(ra) # 8000215c <_ZN9Semaphore6signalEv>

    return ret;
}
    80006230:	00090513          	mv	a0,s2
    80006234:	01813083          	ld	ra,24(sp)
    80006238:	01013403          	ld	s0,16(sp)
    8000623c:	00813483          	ld	s1,8(sp)
    80006240:	00013903          	ld	s2,0(sp)
    80006244:	02010113          	addi	sp,sp,32
    80006248:	00008067          	ret
        ret = cap - head + tail;
    8000624c:	0004a703          	lw	a4,0(s1)
    80006250:	4127093b          	subw	s2,a4,s2
    80006254:	00f9093b          	addw	s2,s2,a5
    80006258:	fc1ff06f          	j	80006218 <_ZN9BufferCPP6getCntEv+0x44>

000000008000625c <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    8000625c:	fe010113          	addi	sp,sp,-32
    80006260:	00113c23          	sd	ra,24(sp)
    80006264:	00813823          	sd	s0,16(sp)
    80006268:	00913423          	sd	s1,8(sp)
    8000626c:	02010413          	addi	s0,sp,32
    80006270:	00050493          	mv	s1,a0
    Console::putc('\n');
    80006274:	00a00513          	li	a0,10
    80006278:	ffffc097          	auipc	ra,0xffffc
    8000627c:	004080e7          	jalr	4(ra) # 8000227c <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80006280:	00003517          	auipc	a0,0x3
    80006284:	0a050513          	addi	a0,a0,160 # 80009320 <CONSOLE_STATUS+0x310>
    80006288:	00000097          	auipc	ra,0x0
    8000628c:	a0c080e7          	jalr	-1524(ra) # 80005c94 <_Z11printStringPKc>
    while (getCnt()) {
    80006290:	00048513          	mv	a0,s1
    80006294:	00000097          	auipc	ra,0x0
    80006298:	f40080e7          	jalr	-192(ra) # 800061d4 <_ZN9BufferCPP6getCntEv>
    8000629c:	02050c63          	beqz	a0,800062d4 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    800062a0:	0084b783          	ld	a5,8(s1)
    800062a4:	0104a703          	lw	a4,16(s1)
    800062a8:	00271713          	slli	a4,a4,0x2
    800062ac:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    800062b0:	0007c503          	lbu	a0,0(a5)
    800062b4:	ffffc097          	auipc	ra,0xffffc
    800062b8:	fc8080e7          	jalr	-56(ra) # 8000227c <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    800062bc:	0104a783          	lw	a5,16(s1)
    800062c0:	0017879b          	addiw	a5,a5,1
    800062c4:	0004a703          	lw	a4,0(s1)
    800062c8:	02e7e7bb          	remw	a5,a5,a4
    800062cc:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800062d0:	fc1ff06f          	j	80006290 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800062d4:	02100513          	li	a0,33
    800062d8:	ffffc097          	auipc	ra,0xffffc
    800062dc:	fa4080e7          	jalr	-92(ra) # 8000227c <_ZN7Console4putcEc>
    Console::putc('\n');
    800062e0:	00a00513          	li	a0,10
    800062e4:	ffffc097          	auipc	ra,0xffffc
    800062e8:	f98080e7          	jalr	-104(ra) # 8000227c <_ZN7Console4putcEc>
    mem_free(buffer);
    800062ec:	0084b503          	ld	a0,8(s1)
    800062f0:	ffffb097          	auipc	ra,0xffffb
    800062f4:	fbc080e7          	jalr	-68(ra) # 800012ac <_Z8mem_freePv>
    delete itemAvailable;
    800062f8:	0204b503          	ld	a0,32(s1)
    800062fc:	00050863          	beqz	a0,8000630c <_ZN9BufferCPPD1Ev+0xb0>
    80006300:	00053783          	ld	a5,0(a0)
    80006304:	0087b783          	ld	a5,8(a5)
    80006308:	000780e7          	jalr	a5
    delete spaceAvailable;
    8000630c:	0184b503          	ld	a0,24(s1)
    80006310:	00050863          	beqz	a0,80006320 <_ZN9BufferCPPD1Ev+0xc4>
    80006314:	00053783          	ld	a5,0(a0)
    80006318:	0087b783          	ld	a5,8(a5)
    8000631c:	000780e7          	jalr	a5
    delete mutexTail;
    80006320:	0304b503          	ld	a0,48(s1)
    80006324:	00050863          	beqz	a0,80006334 <_ZN9BufferCPPD1Ev+0xd8>
    80006328:	00053783          	ld	a5,0(a0)
    8000632c:	0087b783          	ld	a5,8(a5)
    80006330:	000780e7          	jalr	a5
    delete mutexHead;
    80006334:	0284b503          	ld	a0,40(s1)
    80006338:	00050863          	beqz	a0,80006348 <_ZN9BufferCPPD1Ev+0xec>
    8000633c:	00053783          	ld	a5,0(a0)
    80006340:	0087b783          	ld	a5,8(a5)
    80006344:	000780e7          	jalr	a5
}
    80006348:	01813083          	ld	ra,24(sp)
    8000634c:	01013403          	ld	s0,16(sp)
    80006350:	00813483          	ld	s1,8(sp)
    80006354:	02010113          	addi	sp,sp,32
    80006358:	00008067          	ret

000000008000635c <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    8000635c:	fe010113          	addi	sp,sp,-32
    80006360:	00113c23          	sd	ra,24(sp)
    80006364:	00813823          	sd	s0,16(sp)
    80006368:	00913423          	sd	s1,8(sp)
    8000636c:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80006370:	00003517          	auipc	a0,0x3
    80006374:	fd850513          	addi	a0,a0,-40 # 80009348 <CONSOLE_STATUS+0x338>
    80006378:	00000097          	auipc	ra,0x0
    8000637c:	91c080e7          	jalr	-1764(ra) # 80005c94 <_Z11printStringPKc>
    int test = getc() - '0';
    80006380:	ffffb097          	auipc	ra,0xffffb
    80006384:	2a0080e7          	jalr	672(ra) # 80001620 <_Z4getcv>
    80006388:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    8000638c:	ffffb097          	auipc	ra,0xffffb
    80006390:	294080e7          	jalr	660(ra) # 80001620 <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80006394:	00700793          	li	a5,7
    80006398:	1097e263          	bltu	a5,s1,8000649c <_Z8userMainv+0x140>
    8000639c:	00249493          	slli	s1,s1,0x2
    800063a0:	00003717          	auipc	a4,0x3
    800063a4:	20070713          	addi	a4,a4,512 # 800095a0 <CONSOLE_STATUS+0x590>
    800063a8:	00e484b3          	add	s1,s1,a4
    800063ac:	0004a783          	lw	a5,0(s1)
    800063b0:	00e787b3          	add	a5,a5,a4
    800063b4:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    800063b8:	fffff097          	auipc	ra,0xfffff
    800063bc:	f44080e7          	jalr	-188(ra) # 800052fc <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    800063c0:	00003517          	auipc	a0,0x3
    800063c4:	fa850513          	addi	a0,a0,-88 # 80009368 <CONSOLE_STATUS+0x358>
    800063c8:	00000097          	auipc	ra,0x0
    800063cc:	8cc080e7          	jalr	-1844(ra) # 80005c94 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    800063d0:	01813083          	ld	ra,24(sp)
    800063d4:	01013403          	ld	s0,16(sp)
    800063d8:	00813483          	ld	s1,8(sp)
    800063dc:	02010113          	addi	sp,sp,32
    800063e0:	00008067          	ret
            Threads_CPP_API_test();
    800063e4:	ffffe097          	auipc	ra,0xffffe
    800063e8:	ad8080e7          	jalr	-1320(ra) # 80003ebc <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    800063ec:	00003517          	auipc	a0,0x3
    800063f0:	fbc50513          	addi	a0,a0,-68 # 800093a8 <CONSOLE_STATUS+0x398>
    800063f4:	00000097          	auipc	ra,0x0
    800063f8:	8a0080e7          	jalr	-1888(ra) # 80005c94 <_Z11printStringPKc>
            break;
    800063fc:	fd5ff06f          	j	800063d0 <_Z8userMainv+0x74>
            producerConsumer_C_API();
    80006400:	ffffd097          	auipc	ra,0xffffd
    80006404:	310080e7          	jalr	784(ra) # 80003710 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80006408:	00003517          	auipc	a0,0x3
    8000640c:	fe050513          	addi	a0,a0,-32 # 800093e8 <CONSOLE_STATUS+0x3d8>
    80006410:	00000097          	auipc	ra,0x0
    80006414:	884080e7          	jalr	-1916(ra) # 80005c94 <_Z11printStringPKc>
            break;
    80006418:	fb9ff06f          	j	800063d0 <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    8000641c:	fffff097          	auipc	ra,0xfffff
    80006420:	234080e7          	jalr	564(ra) # 80005650 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80006424:	00003517          	auipc	a0,0x3
    80006428:	01450513          	addi	a0,a0,20 # 80009438 <CONSOLE_STATUS+0x428>
    8000642c:	00000097          	auipc	ra,0x0
    80006430:	868080e7          	jalr	-1944(ra) # 80005c94 <_Z11printStringPKc>
            break;
    80006434:	f9dff06f          	j	800063d0 <_Z8userMainv+0x74>
            testSleeping();
    80006438:	00000097          	auipc	ra,0x0
    8000643c:	11c080e7          	jalr	284(ra) # 80006554 <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    80006440:	00003517          	auipc	a0,0x3
    80006444:	05050513          	addi	a0,a0,80 # 80009490 <CONSOLE_STATUS+0x480>
    80006448:	00000097          	auipc	ra,0x0
    8000644c:	84c080e7          	jalr	-1972(ra) # 80005c94 <_Z11printStringPKc>
            break;
    80006450:	f81ff06f          	j	800063d0 <_Z8userMainv+0x74>
            testConsumerProducer();
    80006454:	ffffe097          	auipc	ra,0xffffe
    80006458:	f28080e7          	jalr	-216(ra) # 8000437c <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    8000645c:	00003517          	auipc	a0,0x3
    80006460:	06450513          	addi	a0,a0,100 # 800094c0 <CONSOLE_STATUS+0x4b0>
    80006464:	00000097          	auipc	ra,0x0
    80006468:	830080e7          	jalr	-2000(ra) # 80005c94 <_Z11printStringPKc>
            break;
    8000646c:	f65ff06f          	j	800063d0 <_Z8userMainv+0x74>
            System_Mode_test();
    80006470:	00000097          	auipc	ra,0x0
    80006474:	658080e7          	jalr	1624(ra) # 80006ac8 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80006478:	00003517          	auipc	a0,0x3
    8000647c:	08850513          	addi	a0,a0,136 # 80009500 <CONSOLE_STATUS+0x4f0>
    80006480:	00000097          	auipc	ra,0x0
    80006484:	814080e7          	jalr	-2028(ra) # 80005c94 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80006488:	00003517          	auipc	a0,0x3
    8000648c:	09850513          	addi	a0,a0,152 # 80009520 <CONSOLE_STATUS+0x510>
    80006490:	00000097          	auipc	ra,0x0
    80006494:	804080e7          	jalr	-2044(ra) # 80005c94 <_Z11printStringPKc>
            break;
    80006498:	f39ff06f          	j	800063d0 <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    8000649c:	00003517          	auipc	a0,0x3
    800064a0:	0dc50513          	addi	a0,a0,220 # 80009578 <CONSOLE_STATUS+0x568>
    800064a4:	fffff097          	auipc	ra,0xfffff
    800064a8:	7f0080e7          	jalr	2032(ra) # 80005c94 <_Z11printStringPKc>
    800064ac:	f25ff06f          	j	800063d0 <_Z8userMainv+0x74>

00000000800064b0 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    800064b0:	fe010113          	addi	sp,sp,-32
    800064b4:	00113c23          	sd	ra,24(sp)
    800064b8:	00813823          	sd	s0,16(sp)
    800064bc:	00913423          	sd	s1,8(sp)
    800064c0:	01213023          	sd	s2,0(sp)
    800064c4:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    800064c8:	00053903          	ld	s2,0(a0)
    int i = 6;
    800064cc:	00600493          	li	s1,6
    while (--i > 0) {
    800064d0:	fff4849b          	addiw	s1,s1,-1
    800064d4:	04905463          	blez	s1,8000651c <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    800064d8:	00003517          	auipc	a0,0x3
    800064dc:	0e850513          	addi	a0,a0,232 # 800095c0 <CONSOLE_STATUS+0x5b0>
    800064e0:	fffff097          	auipc	ra,0xfffff
    800064e4:	7b4080e7          	jalr	1972(ra) # 80005c94 <_Z11printStringPKc>
        printInt(sleep_time);
    800064e8:	00000613          	li	a2,0
    800064ec:	00a00593          	li	a1,10
    800064f0:	0009051b          	sext.w	a0,s2
    800064f4:	00000097          	auipc	ra,0x0
    800064f8:	950080e7          	jalr	-1712(ra) # 80005e44 <_Z8printIntiii>
        printString(" !\n");
    800064fc:	00003517          	auipc	a0,0x3
    80006500:	0cc50513          	addi	a0,a0,204 # 800095c8 <CONSOLE_STATUS+0x5b8>
    80006504:	fffff097          	auipc	ra,0xfffff
    80006508:	790080e7          	jalr	1936(ra) # 80005c94 <_Z11printStringPKc>
        time_sleep(sleep_time);
    8000650c:	00090513          	mv	a0,s2
    80006510:	ffffb097          	auipc	ra,0xffffb
    80006514:	0c4080e7          	jalr	196(ra) # 800015d4 <_Z10time_sleepm>
    while (--i > 0) {
    80006518:	fb9ff06f          	j	800064d0 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    8000651c:	00a00793          	li	a5,10
    80006520:	02f95933          	divu	s2,s2,a5
    80006524:	fff90913          	addi	s2,s2,-1
    80006528:	00006797          	auipc	a5,0x6
    8000652c:	8f078793          	addi	a5,a5,-1808 # 8000be18 <_ZL8finished>
    80006530:	01278933          	add	s2,a5,s2
    80006534:	00100793          	li	a5,1
    80006538:	00f90023          	sb	a5,0(s2)
}
    8000653c:	01813083          	ld	ra,24(sp)
    80006540:	01013403          	ld	s0,16(sp)
    80006544:	00813483          	ld	s1,8(sp)
    80006548:	00013903          	ld	s2,0(sp)
    8000654c:	02010113          	addi	sp,sp,32
    80006550:	00008067          	ret

0000000080006554 <_Z12testSleepingv>:

void testSleeping() {
    80006554:	fc010113          	addi	sp,sp,-64
    80006558:	02113c23          	sd	ra,56(sp)
    8000655c:	02813823          	sd	s0,48(sp)
    80006560:	02913423          	sd	s1,40(sp)
    80006564:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80006568:	00a00793          	li	a5,10
    8000656c:	fcf43823          	sd	a5,-48(s0)
    80006570:	01400793          	li	a5,20
    80006574:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80006578:	00000493          	li	s1,0
    8000657c:	02c0006f          	j	800065a8 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80006580:	00349793          	slli	a5,s1,0x3
    80006584:	fd040613          	addi	a2,s0,-48
    80006588:	00f60633          	add	a2,a2,a5
    8000658c:	00000597          	auipc	a1,0x0
    80006590:	f2458593          	addi	a1,a1,-220 # 800064b0 <_ZL9sleepyRunPv>
    80006594:	fc040513          	addi	a0,s0,-64
    80006598:	00f50533          	add	a0,a0,a5
    8000659c:	ffffb097          	auipc	ra,0xffffb
    800065a0:	d5c080e7          	jalr	-676(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    800065a4:	0014849b          	addiw	s1,s1,1
    800065a8:	00100793          	li	a5,1
    800065ac:	fc97dae3          	bge	a5,s1,80006580 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    800065b0:	00006797          	auipc	a5,0x6
    800065b4:	8687c783          	lbu	a5,-1944(a5) # 8000be18 <_ZL8finished>
    800065b8:	fe078ce3          	beqz	a5,800065b0 <_Z12testSleepingv+0x5c>
    800065bc:	00006797          	auipc	a5,0x6
    800065c0:	85d7c783          	lbu	a5,-1955(a5) # 8000be19 <_ZL8finished+0x1>
    800065c4:	fe0786e3          	beqz	a5,800065b0 <_Z12testSleepingv+0x5c>
}
    800065c8:	03813083          	ld	ra,56(sp)
    800065cc:	03013403          	ld	s0,48(sp)
    800065d0:	02813483          	ld	s1,40(sp)
    800065d4:	04010113          	addi	sp,sp,64
    800065d8:	00008067          	ret

00000000800065dc <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800065dc:	fe010113          	addi	sp,sp,-32
    800065e0:	00113c23          	sd	ra,24(sp)
    800065e4:	00813823          	sd	s0,16(sp)
    800065e8:	00913423          	sd	s1,8(sp)
    800065ec:	01213023          	sd	s2,0(sp)
    800065f0:	02010413          	addi	s0,sp,32
    800065f4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800065f8:	00100793          	li	a5,1
    800065fc:	02a7f863          	bgeu	a5,a0,8000662c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80006600:	00a00793          	li	a5,10
    80006604:	02f577b3          	remu	a5,a0,a5
    80006608:	02078e63          	beqz	a5,80006644 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    8000660c:	fff48513          	addi	a0,s1,-1
    80006610:	00000097          	auipc	ra,0x0
    80006614:	fcc080e7          	jalr	-52(ra) # 800065dc <_ZL9fibonaccim>
    80006618:	00050913          	mv	s2,a0
    8000661c:	ffe48513          	addi	a0,s1,-2
    80006620:	00000097          	auipc	ra,0x0
    80006624:	fbc080e7          	jalr	-68(ra) # 800065dc <_ZL9fibonaccim>
    80006628:	00a90533          	add	a0,s2,a0
}
    8000662c:	01813083          	ld	ra,24(sp)
    80006630:	01013403          	ld	s0,16(sp)
    80006634:	00813483          	ld	s1,8(sp)
    80006638:	00013903          	ld	s2,0(sp)
    8000663c:	02010113          	addi	sp,sp,32
    80006640:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80006644:	ffffb097          	auipc	ra,0xffffb
    80006648:	d88080e7          	jalr	-632(ra) # 800013cc <_Z15thread_dispatchv>
    8000664c:	fc1ff06f          	j	8000660c <_ZL9fibonaccim+0x30>

0000000080006650 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80006650:	fe010113          	addi	sp,sp,-32
    80006654:	00113c23          	sd	ra,24(sp)
    80006658:	00813823          	sd	s0,16(sp)
    8000665c:	00913423          	sd	s1,8(sp)
    80006660:	01213023          	sd	s2,0(sp)
    80006664:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80006668:	00a00493          	li	s1,10
    8000666c:	0400006f          	j	800066ac <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006670:	00003517          	auipc	a0,0x3
    80006674:	c1850513          	addi	a0,a0,-1000 # 80009288 <CONSOLE_STATUS+0x278>
    80006678:	fffff097          	auipc	ra,0xfffff
    8000667c:	61c080e7          	jalr	1564(ra) # 80005c94 <_Z11printStringPKc>
    80006680:	00000613          	li	a2,0
    80006684:	00a00593          	li	a1,10
    80006688:	00048513          	mv	a0,s1
    8000668c:	fffff097          	auipc	ra,0xfffff
    80006690:	7b8080e7          	jalr	1976(ra) # 80005e44 <_Z8printIntiii>
    80006694:	00003517          	auipc	a0,0x3
    80006698:	df450513          	addi	a0,a0,-524 # 80009488 <CONSOLE_STATUS+0x478>
    8000669c:	fffff097          	auipc	ra,0xfffff
    800066a0:	5f8080e7          	jalr	1528(ra) # 80005c94 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800066a4:	0014849b          	addiw	s1,s1,1
    800066a8:	0ff4f493          	andi	s1,s1,255
    800066ac:	00c00793          	li	a5,12
    800066b0:	fc97f0e3          	bgeu	a5,s1,80006670 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800066b4:	00003517          	auipc	a0,0x3
    800066b8:	bdc50513          	addi	a0,a0,-1060 # 80009290 <CONSOLE_STATUS+0x280>
    800066bc:	fffff097          	auipc	ra,0xfffff
    800066c0:	5d8080e7          	jalr	1496(ra) # 80005c94 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800066c4:	00500313          	li	t1,5
    thread_dispatch();
    800066c8:	ffffb097          	auipc	ra,0xffffb
    800066cc:	d04080e7          	jalr	-764(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800066d0:	01000513          	li	a0,16
    800066d4:	00000097          	auipc	ra,0x0
    800066d8:	f08080e7          	jalr	-248(ra) # 800065dc <_ZL9fibonaccim>
    800066dc:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800066e0:	00003517          	auipc	a0,0x3
    800066e4:	bc050513          	addi	a0,a0,-1088 # 800092a0 <CONSOLE_STATUS+0x290>
    800066e8:	fffff097          	auipc	ra,0xfffff
    800066ec:	5ac080e7          	jalr	1452(ra) # 80005c94 <_Z11printStringPKc>
    800066f0:	00000613          	li	a2,0
    800066f4:	00a00593          	li	a1,10
    800066f8:	0009051b          	sext.w	a0,s2
    800066fc:	fffff097          	auipc	ra,0xfffff
    80006700:	748080e7          	jalr	1864(ra) # 80005e44 <_Z8printIntiii>
    80006704:	00003517          	auipc	a0,0x3
    80006708:	d8450513          	addi	a0,a0,-636 # 80009488 <CONSOLE_STATUS+0x478>
    8000670c:	fffff097          	auipc	ra,0xfffff
    80006710:	588080e7          	jalr	1416(ra) # 80005c94 <_Z11printStringPKc>
    80006714:	0400006f          	j	80006754 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006718:	00003517          	auipc	a0,0x3
    8000671c:	b7050513          	addi	a0,a0,-1168 # 80009288 <CONSOLE_STATUS+0x278>
    80006720:	fffff097          	auipc	ra,0xfffff
    80006724:	574080e7          	jalr	1396(ra) # 80005c94 <_Z11printStringPKc>
    80006728:	00000613          	li	a2,0
    8000672c:	00a00593          	li	a1,10
    80006730:	00048513          	mv	a0,s1
    80006734:	fffff097          	auipc	ra,0xfffff
    80006738:	710080e7          	jalr	1808(ra) # 80005e44 <_Z8printIntiii>
    8000673c:	00003517          	auipc	a0,0x3
    80006740:	d4c50513          	addi	a0,a0,-692 # 80009488 <CONSOLE_STATUS+0x478>
    80006744:	fffff097          	auipc	ra,0xfffff
    80006748:	550080e7          	jalr	1360(ra) # 80005c94 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000674c:	0014849b          	addiw	s1,s1,1
    80006750:	0ff4f493          	andi	s1,s1,255
    80006754:	00f00793          	li	a5,15
    80006758:	fc97f0e3          	bgeu	a5,s1,80006718 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    8000675c:	00003517          	auipc	a0,0x3
    80006760:	b5450513          	addi	a0,a0,-1196 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80006764:	fffff097          	auipc	ra,0xfffff
    80006768:	530080e7          	jalr	1328(ra) # 80005c94 <_Z11printStringPKc>
    finishedD = true;
    8000676c:	00100793          	li	a5,1
    80006770:	00005717          	auipc	a4,0x5
    80006774:	6af70523          	sb	a5,1706(a4) # 8000be1a <_ZL9finishedD>
    thread_dispatch();
    80006778:	ffffb097          	auipc	ra,0xffffb
    8000677c:	c54080e7          	jalr	-940(ra) # 800013cc <_Z15thread_dispatchv>
}
    80006780:	01813083          	ld	ra,24(sp)
    80006784:	01013403          	ld	s0,16(sp)
    80006788:	00813483          	ld	s1,8(sp)
    8000678c:	00013903          	ld	s2,0(sp)
    80006790:	02010113          	addi	sp,sp,32
    80006794:	00008067          	ret

0000000080006798 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80006798:	fe010113          	addi	sp,sp,-32
    8000679c:	00113c23          	sd	ra,24(sp)
    800067a0:	00813823          	sd	s0,16(sp)
    800067a4:	00913423          	sd	s1,8(sp)
    800067a8:	01213023          	sd	s2,0(sp)
    800067ac:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800067b0:	00000493          	li	s1,0
    800067b4:	0400006f          	j	800067f4 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800067b8:	00003517          	auipc	a0,0x3
    800067bc:	aa050513          	addi	a0,a0,-1376 # 80009258 <CONSOLE_STATUS+0x248>
    800067c0:	fffff097          	auipc	ra,0xfffff
    800067c4:	4d4080e7          	jalr	1236(ra) # 80005c94 <_Z11printStringPKc>
    800067c8:	00000613          	li	a2,0
    800067cc:	00a00593          	li	a1,10
    800067d0:	00048513          	mv	a0,s1
    800067d4:	fffff097          	auipc	ra,0xfffff
    800067d8:	670080e7          	jalr	1648(ra) # 80005e44 <_Z8printIntiii>
    800067dc:	00003517          	auipc	a0,0x3
    800067e0:	cac50513          	addi	a0,a0,-852 # 80009488 <CONSOLE_STATUS+0x478>
    800067e4:	fffff097          	auipc	ra,0xfffff
    800067e8:	4b0080e7          	jalr	1200(ra) # 80005c94 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800067ec:	0014849b          	addiw	s1,s1,1
    800067f0:	0ff4f493          	andi	s1,s1,255
    800067f4:	00200793          	li	a5,2
    800067f8:	fc97f0e3          	bgeu	a5,s1,800067b8 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800067fc:	00003517          	auipc	a0,0x3
    80006800:	a6450513          	addi	a0,a0,-1436 # 80009260 <CONSOLE_STATUS+0x250>
    80006804:	fffff097          	auipc	ra,0xfffff
    80006808:	490080e7          	jalr	1168(ra) # 80005c94 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000680c:	00700313          	li	t1,7
    thread_dispatch();
    80006810:	ffffb097          	auipc	ra,0xffffb
    80006814:	bbc080e7          	jalr	-1092(ra) # 800013cc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80006818:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    8000681c:	00003517          	auipc	a0,0x3
    80006820:	a5450513          	addi	a0,a0,-1452 # 80009270 <CONSOLE_STATUS+0x260>
    80006824:	fffff097          	auipc	ra,0xfffff
    80006828:	470080e7          	jalr	1136(ra) # 80005c94 <_Z11printStringPKc>
    8000682c:	00000613          	li	a2,0
    80006830:	00a00593          	li	a1,10
    80006834:	0009051b          	sext.w	a0,s2
    80006838:	fffff097          	auipc	ra,0xfffff
    8000683c:	60c080e7          	jalr	1548(ra) # 80005e44 <_Z8printIntiii>
    80006840:	00003517          	auipc	a0,0x3
    80006844:	c4850513          	addi	a0,a0,-952 # 80009488 <CONSOLE_STATUS+0x478>
    80006848:	fffff097          	auipc	ra,0xfffff
    8000684c:	44c080e7          	jalr	1100(ra) # 80005c94 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80006850:	00c00513          	li	a0,12
    80006854:	00000097          	auipc	ra,0x0
    80006858:	d88080e7          	jalr	-632(ra) # 800065dc <_ZL9fibonaccim>
    8000685c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80006860:	00003517          	auipc	a0,0x3
    80006864:	a1850513          	addi	a0,a0,-1512 # 80009278 <CONSOLE_STATUS+0x268>
    80006868:	fffff097          	auipc	ra,0xfffff
    8000686c:	42c080e7          	jalr	1068(ra) # 80005c94 <_Z11printStringPKc>
    80006870:	00000613          	li	a2,0
    80006874:	00a00593          	li	a1,10
    80006878:	0009051b          	sext.w	a0,s2
    8000687c:	fffff097          	auipc	ra,0xfffff
    80006880:	5c8080e7          	jalr	1480(ra) # 80005e44 <_Z8printIntiii>
    80006884:	00003517          	auipc	a0,0x3
    80006888:	c0450513          	addi	a0,a0,-1020 # 80009488 <CONSOLE_STATUS+0x478>
    8000688c:	fffff097          	auipc	ra,0xfffff
    80006890:	408080e7          	jalr	1032(ra) # 80005c94 <_Z11printStringPKc>
    80006894:	0400006f          	j	800068d4 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80006898:	00003517          	auipc	a0,0x3
    8000689c:	9c050513          	addi	a0,a0,-1600 # 80009258 <CONSOLE_STATUS+0x248>
    800068a0:	fffff097          	auipc	ra,0xfffff
    800068a4:	3f4080e7          	jalr	1012(ra) # 80005c94 <_Z11printStringPKc>
    800068a8:	00000613          	li	a2,0
    800068ac:	00a00593          	li	a1,10
    800068b0:	00048513          	mv	a0,s1
    800068b4:	fffff097          	auipc	ra,0xfffff
    800068b8:	590080e7          	jalr	1424(ra) # 80005e44 <_Z8printIntiii>
    800068bc:	00003517          	auipc	a0,0x3
    800068c0:	bcc50513          	addi	a0,a0,-1076 # 80009488 <CONSOLE_STATUS+0x478>
    800068c4:	fffff097          	auipc	ra,0xfffff
    800068c8:	3d0080e7          	jalr	976(ra) # 80005c94 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800068cc:	0014849b          	addiw	s1,s1,1
    800068d0:	0ff4f493          	andi	s1,s1,255
    800068d4:	00500793          	li	a5,5
    800068d8:	fc97f0e3          	bgeu	a5,s1,80006898 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800068dc:	00003517          	auipc	a0,0x3
    800068e0:	95450513          	addi	a0,a0,-1708 # 80009230 <CONSOLE_STATUS+0x220>
    800068e4:	fffff097          	auipc	ra,0xfffff
    800068e8:	3b0080e7          	jalr	944(ra) # 80005c94 <_Z11printStringPKc>
    finishedC = true;
    800068ec:	00100793          	li	a5,1
    800068f0:	00005717          	auipc	a4,0x5
    800068f4:	52f705a3          	sb	a5,1323(a4) # 8000be1b <_ZL9finishedC>
    thread_dispatch();
    800068f8:	ffffb097          	auipc	ra,0xffffb
    800068fc:	ad4080e7          	jalr	-1324(ra) # 800013cc <_Z15thread_dispatchv>
}
    80006900:	01813083          	ld	ra,24(sp)
    80006904:	01013403          	ld	s0,16(sp)
    80006908:	00813483          	ld	s1,8(sp)
    8000690c:	00013903          	ld	s2,0(sp)
    80006910:	02010113          	addi	sp,sp,32
    80006914:	00008067          	ret

0000000080006918 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80006918:	fe010113          	addi	sp,sp,-32
    8000691c:	00113c23          	sd	ra,24(sp)
    80006920:	00813823          	sd	s0,16(sp)
    80006924:	00913423          	sd	s1,8(sp)
    80006928:	01213023          	sd	s2,0(sp)
    8000692c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80006930:	00000913          	li	s2,0
    80006934:	0400006f          	j	80006974 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80006938:	ffffb097          	auipc	ra,0xffffb
    8000693c:	a94080e7          	jalr	-1388(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006940:	00148493          	addi	s1,s1,1
    80006944:	000027b7          	lui	a5,0x2
    80006948:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000694c:	0097ee63          	bltu	a5,s1,80006968 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006950:	00000713          	li	a4,0
    80006954:	000077b7          	lui	a5,0x7
    80006958:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000695c:	fce7eee3          	bltu	a5,a4,80006938 <_ZL11workerBodyBPv+0x20>
    80006960:	00170713          	addi	a4,a4,1
    80006964:	ff1ff06f          	j	80006954 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80006968:	00a00793          	li	a5,10
    8000696c:	04f90663          	beq	s2,a5,800069b8 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80006970:	00190913          	addi	s2,s2,1
    80006974:	00f00793          	li	a5,15
    80006978:	0527e463          	bltu	a5,s2,800069c0 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    8000697c:	00003517          	auipc	a0,0x3
    80006980:	8c450513          	addi	a0,a0,-1852 # 80009240 <CONSOLE_STATUS+0x230>
    80006984:	fffff097          	auipc	ra,0xfffff
    80006988:	310080e7          	jalr	784(ra) # 80005c94 <_Z11printStringPKc>
    8000698c:	00000613          	li	a2,0
    80006990:	00a00593          	li	a1,10
    80006994:	0009051b          	sext.w	a0,s2
    80006998:	fffff097          	auipc	ra,0xfffff
    8000699c:	4ac080e7          	jalr	1196(ra) # 80005e44 <_Z8printIntiii>
    800069a0:	00003517          	auipc	a0,0x3
    800069a4:	ae850513          	addi	a0,a0,-1304 # 80009488 <CONSOLE_STATUS+0x478>
    800069a8:	fffff097          	auipc	ra,0xfffff
    800069ac:	2ec080e7          	jalr	748(ra) # 80005c94 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800069b0:	00000493          	li	s1,0
    800069b4:	f91ff06f          	j	80006944 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    800069b8:	14102ff3          	csrr	t6,sepc
    800069bc:	fb5ff06f          	j	80006970 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    800069c0:	00003517          	auipc	a0,0x3
    800069c4:	88850513          	addi	a0,a0,-1912 # 80009248 <CONSOLE_STATUS+0x238>
    800069c8:	fffff097          	auipc	ra,0xfffff
    800069cc:	2cc080e7          	jalr	716(ra) # 80005c94 <_Z11printStringPKc>
    finishedB = true;
    800069d0:	00100793          	li	a5,1
    800069d4:	00005717          	auipc	a4,0x5
    800069d8:	44f70423          	sb	a5,1096(a4) # 8000be1c <_ZL9finishedB>
    thread_dispatch();
    800069dc:	ffffb097          	auipc	ra,0xffffb
    800069e0:	9f0080e7          	jalr	-1552(ra) # 800013cc <_Z15thread_dispatchv>
}
    800069e4:	01813083          	ld	ra,24(sp)
    800069e8:	01013403          	ld	s0,16(sp)
    800069ec:	00813483          	ld	s1,8(sp)
    800069f0:	00013903          	ld	s2,0(sp)
    800069f4:	02010113          	addi	sp,sp,32
    800069f8:	00008067          	ret

00000000800069fc <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800069fc:	fe010113          	addi	sp,sp,-32
    80006a00:	00113c23          	sd	ra,24(sp)
    80006a04:	00813823          	sd	s0,16(sp)
    80006a08:	00913423          	sd	s1,8(sp)
    80006a0c:	01213023          	sd	s2,0(sp)
    80006a10:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006a14:	00000913          	li	s2,0
    80006a18:	0380006f          	j	80006a50 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80006a1c:	ffffb097          	auipc	ra,0xffffb
    80006a20:	9b0080e7          	jalr	-1616(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006a24:	00148493          	addi	s1,s1,1
    80006a28:	000027b7          	lui	a5,0x2
    80006a2c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006a30:	0097ee63          	bltu	a5,s1,80006a4c <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006a34:	00000713          	li	a4,0
    80006a38:	000077b7          	lui	a5,0x7
    80006a3c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006a40:	fce7eee3          	bltu	a5,a4,80006a1c <_ZL11workerBodyAPv+0x20>
    80006a44:	00170713          	addi	a4,a4,1
    80006a48:	ff1ff06f          	j	80006a38 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80006a4c:	00190913          	addi	s2,s2,1
    80006a50:	00900793          	li	a5,9
    80006a54:	0527e063          	bltu	a5,s2,80006a94 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80006a58:	00002517          	auipc	a0,0x2
    80006a5c:	7d050513          	addi	a0,a0,2000 # 80009228 <CONSOLE_STATUS+0x218>
    80006a60:	fffff097          	auipc	ra,0xfffff
    80006a64:	234080e7          	jalr	564(ra) # 80005c94 <_Z11printStringPKc>
    80006a68:	00000613          	li	a2,0
    80006a6c:	00a00593          	li	a1,10
    80006a70:	0009051b          	sext.w	a0,s2
    80006a74:	fffff097          	auipc	ra,0xfffff
    80006a78:	3d0080e7          	jalr	976(ra) # 80005e44 <_Z8printIntiii>
    80006a7c:	00003517          	auipc	a0,0x3
    80006a80:	a0c50513          	addi	a0,a0,-1524 # 80009488 <CONSOLE_STATUS+0x478>
    80006a84:	fffff097          	auipc	ra,0xfffff
    80006a88:	210080e7          	jalr	528(ra) # 80005c94 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006a8c:	00000493          	li	s1,0
    80006a90:	f99ff06f          	j	80006a28 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006a94:	00002517          	auipc	a0,0x2
    80006a98:	79c50513          	addi	a0,a0,1948 # 80009230 <CONSOLE_STATUS+0x220>
    80006a9c:	fffff097          	auipc	ra,0xfffff
    80006aa0:	1f8080e7          	jalr	504(ra) # 80005c94 <_Z11printStringPKc>
    finishedA = true;
    80006aa4:	00100793          	li	a5,1
    80006aa8:	00005717          	auipc	a4,0x5
    80006aac:	36f70aa3          	sb	a5,885(a4) # 8000be1d <_ZL9finishedA>
}
    80006ab0:	01813083          	ld	ra,24(sp)
    80006ab4:	01013403          	ld	s0,16(sp)
    80006ab8:	00813483          	ld	s1,8(sp)
    80006abc:	00013903          	ld	s2,0(sp)
    80006ac0:	02010113          	addi	sp,sp,32
    80006ac4:	00008067          	ret

0000000080006ac8 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006ac8:	fd010113          	addi	sp,sp,-48
    80006acc:	02113423          	sd	ra,40(sp)
    80006ad0:	02813023          	sd	s0,32(sp)
    80006ad4:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006ad8:	00000613          	li	a2,0
    80006adc:	00000597          	auipc	a1,0x0
    80006ae0:	f2058593          	addi	a1,a1,-224 # 800069fc <_ZL11workerBodyAPv>
    80006ae4:	fd040513          	addi	a0,s0,-48
    80006ae8:	ffffb097          	auipc	ra,0xffffb
    80006aec:	810080e7          	jalr	-2032(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80006af0:	00002517          	auipc	a0,0x2
    80006af4:	7d050513          	addi	a0,a0,2000 # 800092c0 <CONSOLE_STATUS+0x2b0>
    80006af8:	fffff097          	auipc	ra,0xfffff
    80006afc:	19c080e7          	jalr	412(ra) # 80005c94 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80006b00:	00000613          	li	a2,0
    80006b04:	00000597          	auipc	a1,0x0
    80006b08:	e1458593          	addi	a1,a1,-492 # 80006918 <_ZL11workerBodyBPv>
    80006b0c:	fd840513          	addi	a0,s0,-40
    80006b10:	ffffa097          	auipc	ra,0xffffa
    80006b14:	7e8080e7          	jalr	2024(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80006b18:	00002517          	auipc	a0,0x2
    80006b1c:	7c050513          	addi	a0,a0,1984 # 800092d8 <CONSOLE_STATUS+0x2c8>
    80006b20:	fffff097          	auipc	ra,0xfffff
    80006b24:	174080e7          	jalr	372(ra) # 80005c94 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006b28:	00000613          	li	a2,0
    80006b2c:	00000597          	auipc	a1,0x0
    80006b30:	c6c58593          	addi	a1,a1,-916 # 80006798 <_ZL11workerBodyCPv>
    80006b34:	fe040513          	addi	a0,s0,-32
    80006b38:	ffffa097          	auipc	ra,0xffffa
    80006b3c:	7c0080e7          	jalr	1984(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80006b40:	00002517          	auipc	a0,0x2
    80006b44:	7b050513          	addi	a0,a0,1968 # 800092f0 <CONSOLE_STATUS+0x2e0>
    80006b48:	fffff097          	auipc	ra,0xfffff
    80006b4c:	14c080e7          	jalr	332(ra) # 80005c94 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80006b50:	00000613          	li	a2,0
    80006b54:	00000597          	auipc	a1,0x0
    80006b58:	afc58593          	addi	a1,a1,-1284 # 80006650 <_ZL11workerBodyDPv>
    80006b5c:	fe840513          	addi	a0,s0,-24
    80006b60:	ffffa097          	auipc	ra,0xffffa
    80006b64:	798080e7          	jalr	1944(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80006b68:	00002517          	auipc	a0,0x2
    80006b6c:	7a050513          	addi	a0,a0,1952 # 80009308 <CONSOLE_STATUS+0x2f8>
    80006b70:	fffff097          	auipc	ra,0xfffff
    80006b74:	124080e7          	jalr	292(ra) # 80005c94 <_Z11printStringPKc>
    80006b78:	00c0006f          	j	80006b84 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006b7c:	ffffb097          	auipc	ra,0xffffb
    80006b80:	850080e7          	jalr	-1968(ra) # 800013cc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006b84:	00005797          	auipc	a5,0x5
    80006b88:	2997c783          	lbu	a5,665(a5) # 8000be1d <_ZL9finishedA>
    80006b8c:	fe0788e3          	beqz	a5,80006b7c <_Z16System_Mode_testv+0xb4>
    80006b90:	00005797          	auipc	a5,0x5
    80006b94:	28c7c783          	lbu	a5,652(a5) # 8000be1c <_ZL9finishedB>
    80006b98:	fe0782e3          	beqz	a5,80006b7c <_Z16System_Mode_testv+0xb4>
    80006b9c:	00005797          	auipc	a5,0x5
    80006ba0:	27f7c783          	lbu	a5,639(a5) # 8000be1b <_ZL9finishedC>
    80006ba4:	fc078ce3          	beqz	a5,80006b7c <_Z16System_Mode_testv+0xb4>
    80006ba8:	00005797          	auipc	a5,0x5
    80006bac:	2727c783          	lbu	a5,626(a5) # 8000be1a <_ZL9finishedD>
    80006bb0:	fc0786e3          	beqz	a5,80006b7c <_Z16System_Mode_testv+0xb4>
    }

}
    80006bb4:	02813083          	ld	ra,40(sp)
    80006bb8:	02013403          	ld	s0,32(sp)
    80006bbc:	03010113          	addi	sp,sp,48
    80006bc0:	00008067          	ret

0000000080006bc4 <start>:
    80006bc4:	ff010113          	addi	sp,sp,-16
    80006bc8:	00813423          	sd	s0,8(sp)
    80006bcc:	01010413          	addi	s0,sp,16
    80006bd0:	300027f3          	csrr	a5,mstatus
    80006bd4:	ffffe737          	lui	a4,0xffffe
    80006bd8:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff177f>
    80006bdc:	00e7f7b3          	and	a5,a5,a4
    80006be0:	00001737          	lui	a4,0x1
    80006be4:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006be8:	00e7e7b3          	or	a5,a5,a4
    80006bec:	30079073          	csrw	mstatus,a5
    80006bf0:	00000797          	auipc	a5,0x0
    80006bf4:	16078793          	addi	a5,a5,352 # 80006d50 <system_main>
    80006bf8:	34179073          	csrw	mepc,a5
    80006bfc:	00000793          	li	a5,0
    80006c00:	18079073          	csrw	satp,a5
    80006c04:	000107b7          	lui	a5,0x10
    80006c08:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006c0c:	30279073          	csrw	medeleg,a5
    80006c10:	30379073          	csrw	mideleg,a5
    80006c14:	104027f3          	csrr	a5,sie
    80006c18:	2227e793          	ori	a5,a5,546
    80006c1c:	10479073          	csrw	sie,a5
    80006c20:	fff00793          	li	a5,-1
    80006c24:	00a7d793          	srli	a5,a5,0xa
    80006c28:	3b079073          	csrw	pmpaddr0,a5
    80006c2c:	00f00793          	li	a5,15
    80006c30:	3a079073          	csrw	pmpcfg0,a5
    80006c34:	f14027f3          	csrr	a5,mhartid
    80006c38:	0200c737          	lui	a4,0x200c
    80006c3c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006c40:	0007869b          	sext.w	a3,a5
    80006c44:	00269713          	slli	a4,a3,0x2
    80006c48:	000f4637          	lui	a2,0xf4
    80006c4c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006c50:	00d70733          	add	a4,a4,a3
    80006c54:	0037979b          	slliw	a5,a5,0x3
    80006c58:	020046b7          	lui	a3,0x2004
    80006c5c:	00d787b3          	add	a5,a5,a3
    80006c60:	00c585b3          	add	a1,a1,a2
    80006c64:	00371693          	slli	a3,a4,0x3
    80006c68:	00005717          	auipc	a4,0x5
    80006c6c:	1b870713          	addi	a4,a4,440 # 8000be20 <timer_scratch>
    80006c70:	00b7b023          	sd	a1,0(a5)
    80006c74:	00d70733          	add	a4,a4,a3
    80006c78:	00f73c23          	sd	a5,24(a4)
    80006c7c:	02c73023          	sd	a2,32(a4)
    80006c80:	34071073          	csrw	mscratch,a4
    80006c84:	00000797          	auipc	a5,0x0
    80006c88:	6ec78793          	addi	a5,a5,1772 # 80007370 <timervec>
    80006c8c:	30579073          	csrw	mtvec,a5
    80006c90:	300027f3          	csrr	a5,mstatus
    80006c94:	0087e793          	ori	a5,a5,8
    80006c98:	30079073          	csrw	mstatus,a5
    80006c9c:	304027f3          	csrr	a5,mie
    80006ca0:	0807e793          	ori	a5,a5,128
    80006ca4:	30479073          	csrw	mie,a5
    80006ca8:	f14027f3          	csrr	a5,mhartid
    80006cac:	0007879b          	sext.w	a5,a5
    80006cb0:	00078213          	mv	tp,a5
    80006cb4:	30200073          	mret
    80006cb8:	00813403          	ld	s0,8(sp)
    80006cbc:	01010113          	addi	sp,sp,16
    80006cc0:	00008067          	ret

0000000080006cc4 <timerinit>:
    80006cc4:	ff010113          	addi	sp,sp,-16
    80006cc8:	00813423          	sd	s0,8(sp)
    80006ccc:	01010413          	addi	s0,sp,16
    80006cd0:	f14027f3          	csrr	a5,mhartid
    80006cd4:	0200c737          	lui	a4,0x200c
    80006cd8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006cdc:	0007869b          	sext.w	a3,a5
    80006ce0:	00269713          	slli	a4,a3,0x2
    80006ce4:	000f4637          	lui	a2,0xf4
    80006ce8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006cec:	00d70733          	add	a4,a4,a3
    80006cf0:	0037979b          	slliw	a5,a5,0x3
    80006cf4:	020046b7          	lui	a3,0x2004
    80006cf8:	00d787b3          	add	a5,a5,a3
    80006cfc:	00c585b3          	add	a1,a1,a2
    80006d00:	00371693          	slli	a3,a4,0x3
    80006d04:	00005717          	auipc	a4,0x5
    80006d08:	11c70713          	addi	a4,a4,284 # 8000be20 <timer_scratch>
    80006d0c:	00b7b023          	sd	a1,0(a5)
    80006d10:	00d70733          	add	a4,a4,a3
    80006d14:	00f73c23          	sd	a5,24(a4)
    80006d18:	02c73023          	sd	a2,32(a4)
    80006d1c:	34071073          	csrw	mscratch,a4
    80006d20:	00000797          	auipc	a5,0x0
    80006d24:	65078793          	addi	a5,a5,1616 # 80007370 <timervec>
    80006d28:	30579073          	csrw	mtvec,a5
    80006d2c:	300027f3          	csrr	a5,mstatus
    80006d30:	0087e793          	ori	a5,a5,8
    80006d34:	30079073          	csrw	mstatus,a5
    80006d38:	304027f3          	csrr	a5,mie
    80006d3c:	0807e793          	ori	a5,a5,128
    80006d40:	30479073          	csrw	mie,a5
    80006d44:	00813403          	ld	s0,8(sp)
    80006d48:	01010113          	addi	sp,sp,16
    80006d4c:	00008067          	ret

0000000080006d50 <system_main>:
    80006d50:	fe010113          	addi	sp,sp,-32
    80006d54:	00813823          	sd	s0,16(sp)
    80006d58:	00913423          	sd	s1,8(sp)
    80006d5c:	00113c23          	sd	ra,24(sp)
    80006d60:	02010413          	addi	s0,sp,32
    80006d64:	00000097          	auipc	ra,0x0
    80006d68:	0c4080e7          	jalr	196(ra) # 80006e28 <cpuid>
    80006d6c:	00005497          	auipc	s1,0x5
    80006d70:	fb448493          	addi	s1,s1,-76 # 8000bd20 <started>
    80006d74:	02050263          	beqz	a0,80006d98 <system_main+0x48>
    80006d78:	0004a783          	lw	a5,0(s1)
    80006d7c:	0007879b          	sext.w	a5,a5
    80006d80:	fe078ce3          	beqz	a5,80006d78 <system_main+0x28>
    80006d84:	0ff0000f          	fence
    80006d88:	00003517          	auipc	a0,0x3
    80006d8c:	87850513          	addi	a0,a0,-1928 # 80009600 <CONSOLE_STATUS+0x5f0>
    80006d90:	00001097          	auipc	ra,0x1
    80006d94:	a7c080e7          	jalr	-1412(ra) # 8000780c <panic>
    80006d98:	00001097          	auipc	ra,0x1
    80006d9c:	9d0080e7          	jalr	-1584(ra) # 80007768 <consoleinit>
    80006da0:	00001097          	auipc	ra,0x1
    80006da4:	15c080e7          	jalr	348(ra) # 80007efc <printfinit>
    80006da8:	00002517          	auipc	a0,0x2
    80006dac:	6e050513          	addi	a0,a0,1760 # 80009488 <CONSOLE_STATUS+0x478>
    80006db0:	00001097          	auipc	ra,0x1
    80006db4:	ab8080e7          	jalr	-1352(ra) # 80007868 <__printf>
    80006db8:	00003517          	auipc	a0,0x3
    80006dbc:	81850513          	addi	a0,a0,-2024 # 800095d0 <CONSOLE_STATUS+0x5c0>
    80006dc0:	00001097          	auipc	ra,0x1
    80006dc4:	aa8080e7          	jalr	-1368(ra) # 80007868 <__printf>
    80006dc8:	00002517          	auipc	a0,0x2
    80006dcc:	6c050513          	addi	a0,a0,1728 # 80009488 <CONSOLE_STATUS+0x478>
    80006dd0:	00001097          	auipc	ra,0x1
    80006dd4:	a98080e7          	jalr	-1384(ra) # 80007868 <__printf>
    80006dd8:	00001097          	auipc	ra,0x1
    80006ddc:	4b0080e7          	jalr	1200(ra) # 80008288 <kinit>
    80006de0:	00000097          	auipc	ra,0x0
    80006de4:	148080e7          	jalr	328(ra) # 80006f28 <trapinit>
    80006de8:	00000097          	auipc	ra,0x0
    80006dec:	16c080e7          	jalr	364(ra) # 80006f54 <trapinithart>
    80006df0:	00000097          	auipc	ra,0x0
    80006df4:	5c0080e7          	jalr	1472(ra) # 800073b0 <plicinit>
    80006df8:	00000097          	auipc	ra,0x0
    80006dfc:	5e0080e7          	jalr	1504(ra) # 800073d8 <plicinithart>
    80006e00:	00000097          	auipc	ra,0x0
    80006e04:	078080e7          	jalr	120(ra) # 80006e78 <userinit>
    80006e08:	0ff0000f          	fence
    80006e0c:	00100793          	li	a5,1
    80006e10:	00002517          	auipc	a0,0x2
    80006e14:	7d850513          	addi	a0,a0,2008 # 800095e8 <CONSOLE_STATUS+0x5d8>
    80006e18:	00f4a023          	sw	a5,0(s1)
    80006e1c:	00001097          	auipc	ra,0x1
    80006e20:	a4c080e7          	jalr	-1460(ra) # 80007868 <__printf>
    80006e24:	0000006f          	j	80006e24 <system_main+0xd4>

0000000080006e28 <cpuid>:
    80006e28:	ff010113          	addi	sp,sp,-16
    80006e2c:	00813423          	sd	s0,8(sp)
    80006e30:	01010413          	addi	s0,sp,16
    80006e34:	00020513          	mv	a0,tp
    80006e38:	00813403          	ld	s0,8(sp)
    80006e3c:	0005051b          	sext.w	a0,a0
    80006e40:	01010113          	addi	sp,sp,16
    80006e44:	00008067          	ret

0000000080006e48 <mycpu>:
    80006e48:	ff010113          	addi	sp,sp,-16
    80006e4c:	00813423          	sd	s0,8(sp)
    80006e50:	01010413          	addi	s0,sp,16
    80006e54:	00020793          	mv	a5,tp
    80006e58:	00813403          	ld	s0,8(sp)
    80006e5c:	0007879b          	sext.w	a5,a5
    80006e60:	00779793          	slli	a5,a5,0x7
    80006e64:	00006517          	auipc	a0,0x6
    80006e68:	fec50513          	addi	a0,a0,-20 # 8000ce50 <cpus>
    80006e6c:	00f50533          	add	a0,a0,a5
    80006e70:	01010113          	addi	sp,sp,16
    80006e74:	00008067          	ret

0000000080006e78 <userinit>:
    80006e78:	ff010113          	addi	sp,sp,-16
    80006e7c:	00813423          	sd	s0,8(sp)
    80006e80:	01010413          	addi	s0,sp,16
    80006e84:	00813403          	ld	s0,8(sp)
    80006e88:	01010113          	addi	sp,sp,16
    80006e8c:	ffffb317          	auipc	t1,0xffffb
    80006e90:	de030067          	jr	-544(t1) # 80001c6c <main>

0000000080006e94 <either_copyout>:
    80006e94:	ff010113          	addi	sp,sp,-16
    80006e98:	00813023          	sd	s0,0(sp)
    80006e9c:	00113423          	sd	ra,8(sp)
    80006ea0:	01010413          	addi	s0,sp,16
    80006ea4:	02051663          	bnez	a0,80006ed0 <either_copyout+0x3c>
    80006ea8:	00058513          	mv	a0,a1
    80006eac:	00060593          	mv	a1,a2
    80006eb0:	0006861b          	sext.w	a2,a3
    80006eb4:	00002097          	auipc	ra,0x2
    80006eb8:	c60080e7          	jalr	-928(ra) # 80008b14 <__memmove>
    80006ebc:	00813083          	ld	ra,8(sp)
    80006ec0:	00013403          	ld	s0,0(sp)
    80006ec4:	00000513          	li	a0,0
    80006ec8:	01010113          	addi	sp,sp,16
    80006ecc:	00008067          	ret
    80006ed0:	00002517          	auipc	a0,0x2
    80006ed4:	75850513          	addi	a0,a0,1880 # 80009628 <CONSOLE_STATUS+0x618>
    80006ed8:	00001097          	auipc	ra,0x1
    80006edc:	934080e7          	jalr	-1740(ra) # 8000780c <panic>

0000000080006ee0 <either_copyin>:
    80006ee0:	ff010113          	addi	sp,sp,-16
    80006ee4:	00813023          	sd	s0,0(sp)
    80006ee8:	00113423          	sd	ra,8(sp)
    80006eec:	01010413          	addi	s0,sp,16
    80006ef0:	02059463          	bnez	a1,80006f18 <either_copyin+0x38>
    80006ef4:	00060593          	mv	a1,a2
    80006ef8:	0006861b          	sext.w	a2,a3
    80006efc:	00002097          	auipc	ra,0x2
    80006f00:	c18080e7          	jalr	-1000(ra) # 80008b14 <__memmove>
    80006f04:	00813083          	ld	ra,8(sp)
    80006f08:	00013403          	ld	s0,0(sp)
    80006f0c:	00000513          	li	a0,0
    80006f10:	01010113          	addi	sp,sp,16
    80006f14:	00008067          	ret
    80006f18:	00002517          	auipc	a0,0x2
    80006f1c:	73850513          	addi	a0,a0,1848 # 80009650 <CONSOLE_STATUS+0x640>
    80006f20:	00001097          	auipc	ra,0x1
    80006f24:	8ec080e7          	jalr	-1812(ra) # 8000780c <panic>

0000000080006f28 <trapinit>:
    80006f28:	ff010113          	addi	sp,sp,-16
    80006f2c:	00813423          	sd	s0,8(sp)
    80006f30:	01010413          	addi	s0,sp,16
    80006f34:	00813403          	ld	s0,8(sp)
    80006f38:	00002597          	auipc	a1,0x2
    80006f3c:	74058593          	addi	a1,a1,1856 # 80009678 <CONSOLE_STATUS+0x668>
    80006f40:	00006517          	auipc	a0,0x6
    80006f44:	f9050513          	addi	a0,a0,-112 # 8000ced0 <tickslock>
    80006f48:	01010113          	addi	sp,sp,16
    80006f4c:	00001317          	auipc	t1,0x1
    80006f50:	5cc30067          	jr	1484(t1) # 80008518 <initlock>

0000000080006f54 <trapinithart>:
    80006f54:	ff010113          	addi	sp,sp,-16
    80006f58:	00813423          	sd	s0,8(sp)
    80006f5c:	01010413          	addi	s0,sp,16
    80006f60:	00000797          	auipc	a5,0x0
    80006f64:	30078793          	addi	a5,a5,768 # 80007260 <kernelvec>
    80006f68:	10579073          	csrw	stvec,a5
    80006f6c:	00813403          	ld	s0,8(sp)
    80006f70:	01010113          	addi	sp,sp,16
    80006f74:	00008067          	ret

0000000080006f78 <usertrap>:
    80006f78:	ff010113          	addi	sp,sp,-16
    80006f7c:	00813423          	sd	s0,8(sp)
    80006f80:	01010413          	addi	s0,sp,16
    80006f84:	00813403          	ld	s0,8(sp)
    80006f88:	01010113          	addi	sp,sp,16
    80006f8c:	00008067          	ret

0000000080006f90 <usertrapret>:
    80006f90:	ff010113          	addi	sp,sp,-16
    80006f94:	00813423          	sd	s0,8(sp)
    80006f98:	01010413          	addi	s0,sp,16
    80006f9c:	00813403          	ld	s0,8(sp)
    80006fa0:	01010113          	addi	sp,sp,16
    80006fa4:	00008067          	ret

0000000080006fa8 <kerneltrap>:
    80006fa8:	fe010113          	addi	sp,sp,-32
    80006fac:	00813823          	sd	s0,16(sp)
    80006fb0:	00113c23          	sd	ra,24(sp)
    80006fb4:	00913423          	sd	s1,8(sp)
    80006fb8:	02010413          	addi	s0,sp,32
    80006fbc:	142025f3          	csrr	a1,scause
    80006fc0:	100027f3          	csrr	a5,sstatus
    80006fc4:	0027f793          	andi	a5,a5,2
    80006fc8:	10079c63          	bnez	a5,800070e0 <kerneltrap+0x138>
    80006fcc:	142027f3          	csrr	a5,scause
    80006fd0:	0207ce63          	bltz	a5,8000700c <kerneltrap+0x64>
    80006fd4:	00002517          	auipc	a0,0x2
    80006fd8:	6ec50513          	addi	a0,a0,1772 # 800096c0 <CONSOLE_STATUS+0x6b0>
    80006fdc:	00001097          	auipc	ra,0x1
    80006fe0:	88c080e7          	jalr	-1908(ra) # 80007868 <__printf>
    80006fe4:	141025f3          	csrr	a1,sepc
    80006fe8:	14302673          	csrr	a2,stval
    80006fec:	00002517          	auipc	a0,0x2
    80006ff0:	6e450513          	addi	a0,a0,1764 # 800096d0 <CONSOLE_STATUS+0x6c0>
    80006ff4:	00001097          	auipc	ra,0x1
    80006ff8:	874080e7          	jalr	-1932(ra) # 80007868 <__printf>
    80006ffc:	00002517          	auipc	a0,0x2
    80007000:	6ec50513          	addi	a0,a0,1772 # 800096e8 <CONSOLE_STATUS+0x6d8>
    80007004:	00001097          	auipc	ra,0x1
    80007008:	808080e7          	jalr	-2040(ra) # 8000780c <panic>
    8000700c:	0ff7f713          	andi	a4,a5,255
    80007010:	00900693          	li	a3,9
    80007014:	04d70063          	beq	a4,a3,80007054 <kerneltrap+0xac>
    80007018:	fff00713          	li	a4,-1
    8000701c:	03f71713          	slli	a4,a4,0x3f
    80007020:	00170713          	addi	a4,a4,1
    80007024:	fae798e3          	bne	a5,a4,80006fd4 <kerneltrap+0x2c>
    80007028:	00000097          	auipc	ra,0x0
    8000702c:	e00080e7          	jalr	-512(ra) # 80006e28 <cpuid>
    80007030:	06050663          	beqz	a0,8000709c <kerneltrap+0xf4>
    80007034:	144027f3          	csrr	a5,sip
    80007038:	ffd7f793          	andi	a5,a5,-3
    8000703c:	14479073          	csrw	sip,a5
    80007040:	01813083          	ld	ra,24(sp)
    80007044:	01013403          	ld	s0,16(sp)
    80007048:	00813483          	ld	s1,8(sp)
    8000704c:	02010113          	addi	sp,sp,32
    80007050:	00008067          	ret
    80007054:	00000097          	auipc	ra,0x0
    80007058:	3d0080e7          	jalr	976(ra) # 80007424 <plic_claim>
    8000705c:	00a00793          	li	a5,10
    80007060:	00050493          	mv	s1,a0
    80007064:	06f50863          	beq	a0,a5,800070d4 <kerneltrap+0x12c>
    80007068:	fc050ce3          	beqz	a0,80007040 <kerneltrap+0x98>
    8000706c:	00050593          	mv	a1,a0
    80007070:	00002517          	auipc	a0,0x2
    80007074:	63050513          	addi	a0,a0,1584 # 800096a0 <CONSOLE_STATUS+0x690>
    80007078:	00000097          	auipc	ra,0x0
    8000707c:	7f0080e7          	jalr	2032(ra) # 80007868 <__printf>
    80007080:	01013403          	ld	s0,16(sp)
    80007084:	01813083          	ld	ra,24(sp)
    80007088:	00048513          	mv	a0,s1
    8000708c:	00813483          	ld	s1,8(sp)
    80007090:	02010113          	addi	sp,sp,32
    80007094:	00000317          	auipc	t1,0x0
    80007098:	3c830067          	jr	968(t1) # 8000745c <plic_complete>
    8000709c:	00006517          	auipc	a0,0x6
    800070a0:	e3450513          	addi	a0,a0,-460 # 8000ced0 <tickslock>
    800070a4:	00001097          	auipc	ra,0x1
    800070a8:	498080e7          	jalr	1176(ra) # 8000853c <acquire>
    800070ac:	00005717          	auipc	a4,0x5
    800070b0:	c7870713          	addi	a4,a4,-904 # 8000bd24 <ticks>
    800070b4:	00072783          	lw	a5,0(a4)
    800070b8:	00006517          	auipc	a0,0x6
    800070bc:	e1850513          	addi	a0,a0,-488 # 8000ced0 <tickslock>
    800070c0:	0017879b          	addiw	a5,a5,1
    800070c4:	00f72023          	sw	a5,0(a4)
    800070c8:	00001097          	auipc	ra,0x1
    800070cc:	540080e7          	jalr	1344(ra) # 80008608 <release>
    800070d0:	f65ff06f          	j	80007034 <kerneltrap+0x8c>
    800070d4:	00001097          	auipc	ra,0x1
    800070d8:	09c080e7          	jalr	156(ra) # 80008170 <uartintr>
    800070dc:	fa5ff06f          	j	80007080 <kerneltrap+0xd8>
    800070e0:	00002517          	auipc	a0,0x2
    800070e4:	5a050513          	addi	a0,a0,1440 # 80009680 <CONSOLE_STATUS+0x670>
    800070e8:	00000097          	auipc	ra,0x0
    800070ec:	724080e7          	jalr	1828(ra) # 8000780c <panic>

00000000800070f0 <clockintr>:
    800070f0:	fe010113          	addi	sp,sp,-32
    800070f4:	00813823          	sd	s0,16(sp)
    800070f8:	00913423          	sd	s1,8(sp)
    800070fc:	00113c23          	sd	ra,24(sp)
    80007100:	02010413          	addi	s0,sp,32
    80007104:	00006497          	auipc	s1,0x6
    80007108:	dcc48493          	addi	s1,s1,-564 # 8000ced0 <tickslock>
    8000710c:	00048513          	mv	a0,s1
    80007110:	00001097          	auipc	ra,0x1
    80007114:	42c080e7          	jalr	1068(ra) # 8000853c <acquire>
    80007118:	00005717          	auipc	a4,0x5
    8000711c:	c0c70713          	addi	a4,a4,-1012 # 8000bd24 <ticks>
    80007120:	00072783          	lw	a5,0(a4)
    80007124:	01013403          	ld	s0,16(sp)
    80007128:	01813083          	ld	ra,24(sp)
    8000712c:	00048513          	mv	a0,s1
    80007130:	0017879b          	addiw	a5,a5,1
    80007134:	00813483          	ld	s1,8(sp)
    80007138:	00f72023          	sw	a5,0(a4)
    8000713c:	02010113          	addi	sp,sp,32
    80007140:	00001317          	auipc	t1,0x1
    80007144:	4c830067          	jr	1224(t1) # 80008608 <release>

0000000080007148 <devintr>:
    80007148:	142027f3          	csrr	a5,scause
    8000714c:	00000513          	li	a0,0
    80007150:	0007c463          	bltz	a5,80007158 <devintr+0x10>
    80007154:	00008067          	ret
    80007158:	fe010113          	addi	sp,sp,-32
    8000715c:	00813823          	sd	s0,16(sp)
    80007160:	00113c23          	sd	ra,24(sp)
    80007164:	00913423          	sd	s1,8(sp)
    80007168:	02010413          	addi	s0,sp,32
    8000716c:	0ff7f713          	andi	a4,a5,255
    80007170:	00900693          	li	a3,9
    80007174:	04d70c63          	beq	a4,a3,800071cc <devintr+0x84>
    80007178:	fff00713          	li	a4,-1
    8000717c:	03f71713          	slli	a4,a4,0x3f
    80007180:	00170713          	addi	a4,a4,1
    80007184:	00e78c63          	beq	a5,a4,8000719c <devintr+0x54>
    80007188:	01813083          	ld	ra,24(sp)
    8000718c:	01013403          	ld	s0,16(sp)
    80007190:	00813483          	ld	s1,8(sp)
    80007194:	02010113          	addi	sp,sp,32
    80007198:	00008067          	ret
    8000719c:	00000097          	auipc	ra,0x0
    800071a0:	c8c080e7          	jalr	-884(ra) # 80006e28 <cpuid>
    800071a4:	06050663          	beqz	a0,80007210 <devintr+0xc8>
    800071a8:	144027f3          	csrr	a5,sip
    800071ac:	ffd7f793          	andi	a5,a5,-3
    800071b0:	14479073          	csrw	sip,a5
    800071b4:	01813083          	ld	ra,24(sp)
    800071b8:	01013403          	ld	s0,16(sp)
    800071bc:	00813483          	ld	s1,8(sp)
    800071c0:	00200513          	li	a0,2
    800071c4:	02010113          	addi	sp,sp,32
    800071c8:	00008067          	ret
    800071cc:	00000097          	auipc	ra,0x0
    800071d0:	258080e7          	jalr	600(ra) # 80007424 <plic_claim>
    800071d4:	00a00793          	li	a5,10
    800071d8:	00050493          	mv	s1,a0
    800071dc:	06f50663          	beq	a0,a5,80007248 <devintr+0x100>
    800071e0:	00100513          	li	a0,1
    800071e4:	fa0482e3          	beqz	s1,80007188 <devintr+0x40>
    800071e8:	00048593          	mv	a1,s1
    800071ec:	00002517          	auipc	a0,0x2
    800071f0:	4b450513          	addi	a0,a0,1204 # 800096a0 <CONSOLE_STATUS+0x690>
    800071f4:	00000097          	auipc	ra,0x0
    800071f8:	674080e7          	jalr	1652(ra) # 80007868 <__printf>
    800071fc:	00048513          	mv	a0,s1
    80007200:	00000097          	auipc	ra,0x0
    80007204:	25c080e7          	jalr	604(ra) # 8000745c <plic_complete>
    80007208:	00100513          	li	a0,1
    8000720c:	f7dff06f          	j	80007188 <devintr+0x40>
    80007210:	00006517          	auipc	a0,0x6
    80007214:	cc050513          	addi	a0,a0,-832 # 8000ced0 <tickslock>
    80007218:	00001097          	auipc	ra,0x1
    8000721c:	324080e7          	jalr	804(ra) # 8000853c <acquire>
    80007220:	00005717          	auipc	a4,0x5
    80007224:	b0470713          	addi	a4,a4,-1276 # 8000bd24 <ticks>
    80007228:	00072783          	lw	a5,0(a4)
    8000722c:	00006517          	auipc	a0,0x6
    80007230:	ca450513          	addi	a0,a0,-860 # 8000ced0 <tickslock>
    80007234:	0017879b          	addiw	a5,a5,1
    80007238:	00f72023          	sw	a5,0(a4)
    8000723c:	00001097          	auipc	ra,0x1
    80007240:	3cc080e7          	jalr	972(ra) # 80008608 <release>
    80007244:	f65ff06f          	j	800071a8 <devintr+0x60>
    80007248:	00001097          	auipc	ra,0x1
    8000724c:	f28080e7          	jalr	-216(ra) # 80008170 <uartintr>
    80007250:	fadff06f          	j	800071fc <devintr+0xb4>
	...

0000000080007260 <kernelvec>:
    80007260:	f0010113          	addi	sp,sp,-256
    80007264:	00113023          	sd	ra,0(sp)
    80007268:	00213423          	sd	sp,8(sp)
    8000726c:	00313823          	sd	gp,16(sp)
    80007270:	00413c23          	sd	tp,24(sp)
    80007274:	02513023          	sd	t0,32(sp)
    80007278:	02613423          	sd	t1,40(sp)
    8000727c:	02713823          	sd	t2,48(sp)
    80007280:	02813c23          	sd	s0,56(sp)
    80007284:	04913023          	sd	s1,64(sp)
    80007288:	04a13423          	sd	a0,72(sp)
    8000728c:	04b13823          	sd	a1,80(sp)
    80007290:	04c13c23          	sd	a2,88(sp)
    80007294:	06d13023          	sd	a3,96(sp)
    80007298:	06e13423          	sd	a4,104(sp)
    8000729c:	06f13823          	sd	a5,112(sp)
    800072a0:	07013c23          	sd	a6,120(sp)
    800072a4:	09113023          	sd	a7,128(sp)
    800072a8:	09213423          	sd	s2,136(sp)
    800072ac:	09313823          	sd	s3,144(sp)
    800072b0:	09413c23          	sd	s4,152(sp)
    800072b4:	0b513023          	sd	s5,160(sp)
    800072b8:	0b613423          	sd	s6,168(sp)
    800072bc:	0b713823          	sd	s7,176(sp)
    800072c0:	0b813c23          	sd	s8,184(sp)
    800072c4:	0d913023          	sd	s9,192(sp)
    800072c8:	0da13423          	sd	s10,200(sp)
    800072cc:	0db13823          	sd	s11,208(sp)
    800072d0:	0dc13c23          	sd	t3,216(sp)
    800072d4:	0fd13023          	sd	t4,224(sp)
    800072d8:	0fe13423          	sd	t5,232(sp)
    800072dc:	0ff13823          	sd	t6,240(sp)
    800072e0:	cc9ff0ef          	jal	ra,80006fa8 <kerneltrap>
    800072e4:	00013083          	ld	ra,0(sp)
    800072e8:	00813103          	ld	sp,8(sp)
    800072ec:	01013183          	ld	gp,16(sp)
    800072f0:	02013283          	ld	t0,32(sp)
    800072f4:	02813303          	ld	t1,40(sp)
    800072f8:	03013383          	ld	t2,48(sp)
    800072fc:	03813403          	ld	s0,56(sp)
    80007300:	04013483          	ld	s1,64(sp)
    80007304:	04813503          	ld	a0,72(sp)
    80007308:	05013583          	ld	a1,80(sp)
    8000730c:	05813603          	ld	a2,88(sp)
    80007310:	06013683          	ld	a3,96(sp)
    80007314:	06813703          	ld	a4,104(sp)
    80007318:	07013783          	ld	a5,112(sp)
    8000731c:	07813803          	ld	a6,120(sp)
    80007320:	08013883          	ld	a7,128(sp)
    80007324:	08813903          	ld	s2,136(sp)
    80007328:	09013983          	ld	s3,144(sp)
    8000732c:	09813a03          	ld	s4,152(sp)
    80007330:	0a013a83          	ld	s5,160(sp)
    80007334:	0a813b03          	ld	s6,168(sp)
    80007338:	0b013b83          	ld	s7,176(sp)
    8000733c:	0b813c03          	ld	s8,184(sp)
    80007340:	0c013c83          	ld	s9,192(sp)
    80007344:	0c813d03          	ld	s10,200(sp)
    80007348:	0d013d83          	ld	s11,208(sp)
    8000734c:	0d813e03          	ld	t3,216(sp)
    80007350:	0e013e83          	ld	t4,224(sp)
    80007354:	0e813f03          	ld	t5,232(sp)
    80007358:	0f013f83          	ld	t6,240(sp)
    8000735c:	10010113          	addi	sp,sp,256
    80007360:	10200073          	sret
    80007364:	00000013          	nop
    80007368:	00000013          	nop
    8000736c:	00000013          	nop

0000000080007370 <timervec>:
    80007370:	34051573          	csrrw	a0,mscratch,a0
    80007374:	00b53023          	sd	a1,0(a0)
    80007378:	00c53423          	sd	a2,8(a0)
    8000737c:	00d53823          	sd	a3,16(a0)
    80007380:	01853583          	ld	a1,24(a0)
    80007384:	02053603          	ld	a2,32(a0)
    80007388:	0005b683          	ld	a3,0(a1)
    8000738c:	00c686b3          	add	a3,a3,a2
    80007390:	00d5b023          	sd	a3,0(a1)
    80007394:	00200593          	li	a1,2
    80007398:	14459073          	csrw	sip,a1
    8000739c:	01053683          	ld	a3,16(a0)
    800073a0:	00853603          	ld	a2,8(a0)
    800073a4:	00053583          	ld	a1,0(a0)
    800073a8:	34051573          	csrrw	a0,mscratch,a0
    800073ac:	30200073          	mret

00000000800073b0 <plicinit>:
    800073b0:	ff010113          	addi	sp,sp,-16
    800073b4:	00813423          	sd	s0,8(sp)
    800073b8:	01010413          	addi	s0,sp,16
    800073bc:	00813403          	ld	s0,8(sp)
    800073c0:	0c0007b7          	lui	a5,0xc000
    800073c4:	00100713          	li	a4,1
    800073c8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800073cc:	00e7a223          	sw	a4,4(a5)
    800073d0:	01010113          	addi	sp,sp,16
    800073d4:	00008067          	ret

00000000800073d8 <plicinithart>:
    800073d8:	ff010113          	addi	sp,sp,-16
    800073dc:	00813023          	sd	s0,0(sp)
    800073e0:	00113423          	sd	ra,8(sp)
    800073e4:	01010413          	addi	s0,sp,16
    800073e8:	00000097          	auipc	ra,0x0
    800073ec:	a40080e7          	jalr	-1472(ra) # 80006e28 <cpuid>
    800073f0:	0085171b          	slliw	a4,a0,0x8
    800073f4:	0c0027b7          	lui	a5,0xc002
    800073f8:	00e787b3          	add	a5,a5,a4
    800073fc:	40200713          	li	a4,1026
    80007400:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80007404:	00813083          	ld	ra,8(sp)
    80007408:	00013403          	ld	s0,0(sp)
    8000740c:	00d5151b          	slliw	a0,a0,0xd
    80007410:	0c2017b7          	lui	a5,0xc201
    80007414:	00a78533          	add	a0,a5,a0
    80007418:	00052023          	sw	zero,0(a0)
    8000741c:	01010113          	addi	sp,sp,16
    80007420:	00008067          	ret

0000000080007424 <plic_claim>:
    80007424:	ff010113          	addi	sp,sp,-16
    80007428:	00813023          	sd	s0,0(sp)
    8000742c:	00113423          	sd	ra,8(sp)
    80007430:	01010413          	addi	s0,sp,16
    80007434:	00000097          	auipc	ra,0x0
    80007438:	9f4080e7          	jalr	-1548(ra) # 80006e28 <cpuid>
    8000743c:	00813083          	ld	ra,8(sp)
    80007440:	00013403          	ld	s0,0(sp)
    80007444:	00d5151b          	slliw	a0,a0,0xd
    80007448:	0c2017b7          	lui	a5,0xc201
    8000744c:	00a78533          	add	a0,a5,a0
    80007450:	00452503          	lw	a0,4(a0)
    80007454:	01010113          	addi	sp,sp,16
    80007458:	00008067          	ret

000000008000745c <plic_complete>:
    8000745c:	fe010113          	addi	sp,sp,-32
    80007460:	00813823          	sd	s0,16(sp)
    80007464:	00913423          	sd	s1,8(sp)
    80007468:	00113c23          	sd	ra,24(sp)
    8000746c:	02010413          	addi	s0,sp,32
    80007470:	00050493          	mv	s1,a0
    80007474:	00000097          	auipc	ra,0x0
    80007478:	9b4080e7          	jalr	-1612(ra) # 80006e28 <cpuid>
    8000747c:	01813083          	ld	ra,24(sp)
    80007480:	01013403          	ld	s0,16(sp)
    80007484:	00d5179b          	slliw	a5,a0,0xd
    80007488:	0c201737          	lui	a4,0xc201
    8000748c:	00f707b3          	add	a5,a4,a5
    80007490:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007494:	00813483          	ld	s1,8(sp)
    80007498:	02010113          	addi	sp,sp,32
    8000749c:	00008067          	ret

00000000800074a0 <consolewrite>:
    800074a0:	fb010113          	addi	sp,sp,-80
    800074a4:	04813023          	sd	s0,64(sp)
    800074a8:	04113423          	sd	ra,72(sp)
    800074ac:	02913c23          	sd	s1,56(sp)
    800074b0:	03213823          	sd	s2,48(sp)
    800074b4:	03313423          	sd	s3,40(sp)
    800074b8:	03413023          	sd	s4,32(sp)
    800074bc:	01513c23          	sd	s5,24(sp)
    800074c0:	05010413          	addi	s0,sp,80
    800074c4:	06c05c63          	blez	a2,8000753c <consolewrite+0x9c>
    800074c8:	00060993          	mv	s3,a2
    800074cc:	00050a13          	mv	s4,a0
    800074d0:	00058493          	mv	s1,a1
    800074d4:	00000913          	li	s2,0
    800074d8:	fff00a93          	li	s5,-1
    800074dc:	01c0006f          	j	800074f8 <consolewrite+0x58>
    800074e0:	fbf44503          	lbu	a0,-65(s0)
    800074e4:	0019091b          	addiw	s2,s2,1
    800074e8:	00148493          	addi	s1,s1,1
    800074ec:	00001097          	auipc	ra,0x1
    800074f0:	a9c080e7          	jalr	-1380(ra) # 80007f88 <uartputc>
    800074f4:	03298063          	beq	s3,s2,80007514 <consolewrite+0x74>
    800074f8:	00048613          	mv	a2,s1
    800074fc:	00100693          	li	a3,1
    80007500:	000a0593          	mv	a1,s4
    80007504:	fbf40513          	addi	a0,s0,-65
    80007508:	00000097          	auipc	ra,0x0
    8000750c:	9d8080e7          	jalr	-1576(ra) # 80006ee0 <either_copyin>
    80007510:	fd5518e3          	bne	a0,s5,800074e0 <consolewrite+0x40>
    80007514:	04813083          	ld	ra,72(sp)
    80007518:	04013403          	ld	s0,64(sp)
    8000751c:	03813483          	ld	s1,56(sp)
    80007520:	02813983          	ld	s3,40(sp)
    80007524:	02013a03          	ld	s4,32(sp)
    80007528:	01813a83          	ld	s5,24(sp)
    8000752c:	00090513          	mv	a0,s2
    80007530:	03013903          	ld	s2,48(sp)
    80007534:	05010113          	addi	sp,sp,80
    80007538:	00008067          	ret
    8000753c:	00000913          	li	s2,0
    80007540:	fd5ff06f          	j	80007514 <consolewrite+0x74>

0000000080007544 <consoleread>:
    80007544:	f9010113          	addi	sp,sp,-112
    80007548:	06813023          	sd	s0,96(sp)
    8000754c:	04913c23          	sd	s1,88(sp)
    80007550:	05213823          	sd	s2,80(sp)
    80007554:	05313423          	sd	s3,72(sp)
    80007558:	05413023          	sd	s4,64(sp)
    8000755c:	03513c23          	sd	s5,56(sp)
    80007560:	03613823          	sd	s6,48(sp)
    80007564:	03713423          	sd	s7,40(sp)
    80007568:	03813023          	sd	s8,32(sp)
    8000756c:	06113423          	sd	ra,104(sp)
    80007570:	01913c23          	sd	s9,24(sp)
    80007574:	07010413          	addi	s0,sp,112
    80007578:	00060b93          	mv	s7,a2
    8000757c:	00050913          	mv	s2,a0
    80007580:	00058c13          	mv	s8,a1
    80007584:	00060b1b          	sext.w	s6,a2
    80007588:	00006497          	auipc	s1,0x6
    8000758c:	97048493          	addi	s1,s1,-1680 # 8000cef8 <cons>
    80007590:	00400993          	li	s3,4
    80007594:	fff00a13          	li	s4,-1
    80007598:	00a00a93          	li	s5,10
    8000759c:	05705e63          	blez	s7,800075f8 <consoleread+0xb4>
    800075a0:	09c4a703          	lw	a4,156(s1)
    800075a4:	0984a783          	lw	a5,152(s1)
    800075a8:	0007071b          	sext.w	a4,a4
    800075ac:	08e78463          	beq	a5,a4,80007634 <consoleread+0xf0>
    800075b0:	07f7f713          	andi	a4,a5,127
    800075b4:	00e48733          	add	a4,s1,a4
    800075b8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800075bc:	0017869b          	addiw	a3,a5,1
    800075c0:	08d4ac23          	sw	a3,152(s1)
    800075c4:	00070c9b          	sext.w	s9,a4
    800075c8:	0b370663          	beq	a4,s3,80007674 <consoleread+0x130>
    800075cc:	00100693          	li	a3,1
    800075d0:	f9f40613          	addi	a2,s0,-97
    800075d4:	000c0593          	mv	a1,s8
    800075d8:	00090513          	mv	a0,s2
    800075dc:	f8e40fa3          	sb	a4,-97(s0)
    800075e0:	00000097          	auipc	ra,0x0
    800075e4:	8b4080e7          	jalr	-1868(ra) # 80006e94 <either_copyout>
    800075e8:	01450863          	beq	a0,s4,800075f8 <consoleread+0xb4>
    800075ec:	001c0c13          	addi	s8,s8,1
    800075f0:	fffb8b9b          	addiw	s7,s7,-1
    800075f4:	fb5c94e3          	bne	s9,s5,8000759c <consoleread+0x58>
    800075f8:	000b851b          	sext.w	a0,s7
    800075fc:	06813083          	ld	ra,104(sp)
    80007600:	06013403          	ld	s0,96(sp)
    80007604:	05813483          	ld	s1,88(sp)
    80007608:	05013903          	ld	s2,80(sp)
    8000760c:	04813983          	ld	s3,72(sp)
    80007610:	04013a03          	ld	s4,64(sp)
    80007614:	03813a83          	ld	s5,56(sp)
    80007618:	02813b83          	ld	s7,40(sp)
    8000761c:	02013c03          	ld	s8,32(sp)
    80007620:	01813c83          	ld	s9,24(sp)
    80007624:	40ab053b          	subw	a0,s6,a0
    80007628:	03013b03          	ld	s6,48(sp)
    8000762c:	07010113          	addi	sp,sp,112
    80007630:	00008067          	ret
    80007634:	00001097          	auipc	ra,0x1
    80007638:	1d8080e7          	jalr	472(ra) # 8000880c <push_on>
    8000763c:	0984a703          	lw	a4,152(s1)
    80007640:	09c4a783          	lw	a5,156(s1)
    80007644:	0007879b          	sext.w	a5,a5
    80007648:	fef70ce3          	beq	a4,a5,80007640 <consoleread+0xfc>
    8000764c:	00001097          	auipc	ra,0x1
    80007650:	234080e7          	jalr	564(ra) # 80008880 <pop_on>
    80007654:	0984a783          	lw	a5,152(s1)
    80007658:	07f7f713          	andi	a4,a5,127
    8000765c:	00e48733          	add	a4,s1,a4
    80007660:	01874703          	lbu	a4,24(a4)
    80007664:	0017869b          	addiw	a3,a5,1
    80007668:	08d4ac23          	sw	a3,152(s1)
    8000766c:	00070c9b          	sext.w	s9,a4
    80007670:	f5371ee3          	bne	a4,s3,800075cc <consoleread+0x88>
    80007674:	000b851b          	sext.w	a0,s7
    80007678:	f96bf2e3          	bgeu	s7,s6,800075fc <consoleread+0xb8>
    8000767c:	08f4ac23          	sw	a5,152(s1)
    80007680:	f7dff06f          	j	800075fc <consoleread+0xb8>

0000000080007684 <consputc>:
    80007684:	10000793          	li	a5,256
    80007688:	00f50663          	beq	a0,a5,80007694 <consputc+0x10>
    8000768c:	00001317          	auipc	t1,0x1
    80007690:	9f430067          	jr	-1548(t1) # 80008080 <uartputc_sync>
    80007694:	ff010113          	addi	sp,sp,-16
    80007698:	00113423          	sd	ra,8(sp)
    8000769c:	00813023          	sd	s0,0(sp)
    800076a0:	01010413          	addi	s0,sp,16
    800076a4:	00800513          	li	a0,8
    800076a8:	00001097          	auipc	ra,0x1
    800076ac:	9d8080e7          	jalr	-1576(ra) # 80008080 <uartputc_sync>
    800076b0:	02000513          	li	a0,32
    800076b4:	00001097          	auipc	ra,0x1
    800076b8:	9cc080e7          	jalr	-1588(ra) # 80008080 <uartputc_sync>
    800076bc:	00013403          	ld	s0,0(sp)
    800076c0:	00813083          	ld	ra,8(sp)
    800076c4:	00800513          	li	a0,8
    800076c8:	01010113          	addi	sp,sp,16
    800076cc:	00001317          	auipc	t1,0x1
    800076d0:	9b430067          	jr	-1612(t1) # 80008080 <uartputc_sync>

00000000800076d4 <consoleintr>:
    800076d4:	fe010113          	addi	sp,sp,-32
    800076d8:	00813823          	sd	s0,16(sp)
    800076dc:	00913423          	sd	s1,8(sp)
    800076e0:	01213023          	sd	s2,0(sp)
    800076e4:	00113c23          	sd	ra,24(sp)
    800076e8:	02010413          	addi	s0,sp,32
    800076ec:	00006917          	auipc	s2,0x6
    800076f0:	80c90913          	addi	s2,s2,-2036 # 8000cef8 <cons>
    800076f4:	00050493          	mv	s1,a0
    800076f8:	00090513          	mv	a0,s2
    800076fc:	00001097          	auipc	ra,0x1
    80007700:	e40080e7          	jalr	-448(ra) # 8000853c <acquire>
    80007704:	02048c63          	beqz	s1,8000773c <consoleintr+0x68>
    80007708:	0a092783          	lw	a5,160(s2)
    8000770c:	09892703          	lw	a4,152(s2)
    80007710:	07f00693          	li	a3,127
    80007714:	40e7873b          	subw	a4,a5,a4
    80007718:	02e6e263          	bltu	a3,a4,8000773c <consoleintr+0x68>
    8000771c:	00d00713          	li	a4,13
    80007720:	04e48063          	beq	s1,a4,80007760 <consoleintr+0x8c>
    80007724:	07f7f713          	andi	a4,a5,127
    80007728:	00e90733          	add	a4,s2,a4
    8000772c:	0017879b          	addiw	a5,a5,1
    80007730:	0af92023          	sw	a5,160(s2)
    80007734:	00970c23          	sb	s1,24(a4)
    80007738:	08f92e23          	sw	a5,156(s2)
    8000773c:	01013403          	ld	s0,16(sp)
    80007740:	01813083          	ld	ra,24(sp)
    80007744:	00813483          	ld	s1,8(sp)
    80007748:	00013903          	ld	s2,0(sp)
    8000774c:	00005517          	auipc	a0,0x5
    80007750:	7ac50513          	addi	a0,a0,1964 # 8000cef8 <cons>
    80007754:	02010113          	addi	sp,sp,32
    80007758:	00001317          	auipc	t1,0x1
    8000775c:	eb030067          	jr	-336(t1) # 80008608 <release>
    80007760:	00a00493          	li	s1,10
    80007764:	fc1ff06f          	j	80007724 <consoleintr+0x50>

0000000080007768 <consoleinit>:
    80007768:	fe010113          	addi	sp,sp,-32
    8000776c:	00113c23          	sd	ra,24(sp)
    80007770:	00813823          	sd	s0,16(sp)
    80007774:	00913423          	sd	s1,8(sp)
    80007778:	02010413          	addi	s0,sp,32
    8000777c:	00005497          	auipc	s1,0x5
    80007780:	77c48493          	addi	s1,s1,1916 # 8000cef8 <cons>
    80007784:	00048513          	mv	a0,s1
    80007788:	00002597          	auipc	a1,0x2
    8000778c:	f7058593          	addi	a1,a1,-144 # 800096f8 <CONSOLE_STATUS+0x6e8>
    80007790:	00001097          	auipc	ra,0x1
    80007794:	d88080e7          	jalr	-632(ra) # 80008518 <initlock>
    80007798:	00000097          	auipc	ra,0x0
    8000779c:	7ac080e7          	jalr	1964(ra) # 80007f44 <uartinit>
    800077a0:	01813083          	ld	ra,24(sp)
    800077a4:	01013403          	ld	s0,16(sp)
    800077a8:	00000797          	auipc	a5,0x0
    800077ac:	d9c78793          	addi	a5,a5,-612 # 80007544 <consoleread>
    800077b0:	0af4bc23          	sd	a5,184(s1)
    800077b4:	00000797          	auipc	a5,0x0
    800077b8:	cec78793          	addi	a5,a5,-788 # 800074a0 <consolewrite>
    800077bc:	0cf4b023          	sd	a5,192(s1)
    800077c0:	00813483          	ld	s1,8(sp)
    800077c4:	02010113          	addi	sp,sp,32
    800077c8:	00008067          	ret

00000000800077cc <console_read>:
    800077cc:	ff010113          	addi	sp,sp,-16
    800077d0:	00813423          	sd	s0,8(sp)
    800077d4:	01010413          	addi	s0,sp,16
    800077d8:	00813403          	ld	s0,8(sp)
    800077dc:	00005317          	auipc	t1,0x5
    800077e0:	7d433303          	ld	t1,2004(t1) # 8000cfb0 <devsw+0x10>
    800077e4:	01010113          	addi	sp,sp,16
    800077e8:	00030067          	jr	t1

00000000800077ec <console_write>:
    800077ec:	ff010113          	addi	sp,sp,-16
    800077f0:	00813423          	sd	s0,8(sp)
    800077f4:	01010413          	addi	s0,sp,16
    800077f8:	00813403          	ld	s0,8(sp)
    800077fc:	00005317          	auipc	t1,0x5
    80007800:	7bc33303          	ld	t1,1980(t1) # 8000cfb8 <devsw+0x18>
    80007804:	01010113          	addi	sp,sp,16
    80007808:	00030067          	jr	t1

000000008000780c <panic>:
    8000780c:	fe010113          	addi	sp,sp,-32
    80007810:	00113c23          	sd	ra,24(sp)
    80007814:	00813823          	sd	s0,16(sp)
    80007818:	00913423          	sd	s1,8(sp)
    8000781c:	02010413          	addi	s0,sp,32
    80007820:	00050493          	mv	s1,a0
    80007824:	00002517          	auipc	a0,0x2
    80007828:	edc50513          	addi	a0,a0,-292 # 80009700 <CONSOLE_STATUS+0x6f0>
    8000782c:	00006797          	auipc	a5,0x6
    80007830:	8207a623          	sw	zero,-2004(a5) # 8000d058 <pr+0x18>
    80007834:	00000097          	auipc	ra,0x0
    80007838:	034080e7          	jalr	52(ra) # 80007868 <__printf>
    8000783c:	00048513          	mv	a0,s1
    80007840:	00000097          	auipc	ra,0x0
    80007844:	028080e7          	jalr	40(ra) # 80007868 <__printf>
    80007848:	00002517          	auipc	a0,0x2
    8000784c:	c4050513          	addi	a0,a0,-960 # 80009488 <CONSOLE_STATUS+0x478>
    80007850:	00000097          	auipc	ra,0x0
    80007854:	018080e7          	jalr	24(ra) # 80007868 <__printf>
    80007858:	00100793          	li	a5,1
    8000785c:	00004717          	auipc	a4,0x4
    80007860:	4cf72623          	sw	a5,1228(a4) # 8000bd28 <panicked>
    80007864:	0000006f          	j	80007864 <panic+0x58>

0000000080007868 <__printf>:
    80007868:	f3010113          	addi	sp,sp,-208
    8000786c:	08813023          	sd	s0,128(sp)
    80007870:	07313423          	sd	s3,104(sp)
    80007874:	09010413          	addi	s0,sp,144
    80007878:	05813023          	sd	s8,64(sp)
    8000787c:	08113423          	sd	ra,136(sp)
    80007880:	06913c23          	sd	s1,120(sp)
    80007884:	07213823          	sd	s2,112(sp)
    80007888:	07413023          	sd	s4,96(sp)
    8000788c:	05513c23          	sd	s5,88(sp)
    80007890:	05613823          	sd	s6,80(sp)
    80007894:	05713423          	sd	s7,72(sp)
    80007898:	03913c23          	sd	s9,56(sp)
    8000789c:	03a13823          	sd	s10,48(sp)
    800078a0:	03b13423          	sd	s11,40(sp)
    800078a4:	00005317          	auipc	t1,0x5
    800078a8:	79c30313          	addi	t1,t1,1948 # 8000d040 <pr>
    800078ac:	01832c03          	lw	s8,24(t1)
    800078b0:	00b43423          	sd	a1,8(s0)
    800078b4:	00c43823          	sd	a2,16(s0)
    800078b8:	00d43c23          	sd	a3,24(s0)
    800078bc:	02e43023          	sd	a4,32(s0)
    800078c0:	02f43423          	sd	a5,40(s0)
    800078c4:	03043823          	sd	a6,48(s0)
    800078c8:	03143c23          	sd	a7,56(s0)
    800078cc:	00050993          	mv	s3,a0
    800078d0:	4a0c1663          	bnez	s8,80007d7c <__printf+0x514>
    800078d4:	60098c63          	beqz	s3,80007eec <__printf+0x684>
    800078d8:	0009c503          	lbu	a0,0(s3)
    800078dc:	00840793          	addi	a5,s0,8
    800078e0:	f6f43c23          	sd	a5,-136(s0)
    800078e4:	00000493          	li	s1,0
    800078e8:	22050063          	beqz	a0,80007b08 <__printf+0x2a0>
    800078ec:	00002a37          	lui	s4,0x2
    800078f0:	00018ab7          	lui	s5,0x18
    800078f4:	000f4b37          	lui	s6,0xf4
    800078f8:	00989bb7          	lui	s7,0x989
    800078fc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007900:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007904:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007908:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000790c:	00148c9b          	addiw	s9,s1,1
    80007910:	02500793          	li	a5,37
    80007914:	01998933          	add	s2,s3,s9
    80007918:	38f51263          	bne	a0,a5,80007c9c <__printf+0x434>
    8000791c:	00094783          	lbu	a5,0(s2)
    80007920:	00078c9b          	sext.w	s9,a5
    80007924:	1e078263          	beqz	a5,80007b08 <__printf+0x2a0>
    80007928:	0024849b          	addiw	s1,s1,2
    8000792c:	07000713          	li	a4,112
    80007930:	00998933          	add	s2,s3,s1
    80007934:	38e78a63          	beq	a5,a4,80007cc8 <__printf+0x460>
    80007938:	20f76863          	bltu	a4,a5,80007b48 <__printf+0x2e0>
    8000793c:	42a78863          	beq	a5,a0,80007d6c <__printf+0x504>
    80007940:	06400713          	li	a4,100
    80007944:	40e79663          	bne	a5,a4,80007d50 <__printf+0x4e8>
    80007948:	f7843783          	ld	a5,-136(s0)
    8000794c:	0007a603          	lw	a2,0(a5)
    80007950:	00878793          	addi	a5,a5,8
    80007954:	f6f43c23          	sd	a5,-136(s0)
    80007958:	42064a63          	bltz	a2,80007d8c <__printf+0x524>
    8000795c:	00a00713          	li	a4,10
    80007960:	02e677bb          	remuw	a5,a2,a4
    80007964:	00002d97          	auipc	s11,0x2
    80007968:	dc4d8d93          	addi	s11,s11,-572 # 80009728 <digits>
    8000796c:	00900593          	li	a1,9
    80007970:	0006051b          	sext.w	a0,a2
    80007974:	00000c93          	li	s9,0
    80007978:	02079793          	slli	a5,a5,0x20
    8000797c:	0207d793          	srli	a5,a5,0x20
    80007980:	00fd87b3          	add	a5,s11,a5
    80007984:	0007c783          	lbu	a5,0(a5)
    80007988:	02e656bb          	divuw	a3,a2,a4
    8000798c:	f8f40023          	sb	a5,-128(s0)
    80007990:	14c5d863          	bge	a1,a2,80007ae0 <__printf+0x278>
    80007994:	06300593          	li	a1,99
    80007998:	00100c93          	li	s9,1
    8000799c:	02e6f7bb          	remuw	a5,a3,a4
    800079a0:	02079793          	slli	a5,a5,0x20
    800079a4:	0207d793          	srli	a5,a5,0x20
    800079a8:	00fd87b3          	add	a5,s11,a5
    800079ac:	0007c783          	lbu	a5,0(a5)
    800079b0:	02e6d73b          	divuw	a4,a3,a4
    800079b4:	f8f400a3          	sb	a5,-127(s0)
    800079b8:	12a5f463          	bgeu	a1,a0,80007ae0 <__printf+0x278>
    800079bc:	00a00693          	li	a3,10
    800079c0:	00900593          	li	a1,9
    800079c4:	02d777bb          	remuw	a5,a4,a3
    800079c8:	02079793          	slli	a5,a5,0x20
    800079cc:	0207d793          	srli	a5,a5,0x20
    800079d0:	00fd87b3          	add	a5,s11,a5
    800079d4:	0007c503          	lbu	a0,0(a5)
    800079d8:	02d757bb          	divuw	a5,a4,a3
    800079dc:	f8a40123          	sb	a0,-126(s0)
    800079e0:	48e5f263          	bgeu	a1,a4,80007e64 <__printf+0x5fc>
    800079e4:	06300513          	li	a0,99
    800079e8:	02d7f5bb          	remuw	a1,a5,a3
    800079ec:	02059593          	slli	a1,a1,0x20
    800079f0:	0205d593          	srli	a1,a1,0x20
    800079f4:	00bd85b3          	add	a1,s11,a1
    800079f8:	0005c583          	lbu	a1,0(a1)
    800079fc:	02d7d7bb          	divuw	a5,a5,a3
    80007a00:	f8b401a3          	sb	a1,-125(s0)
    80007a04:	48e57263          	bgeu	a0,a4,80007e88 <__printf+0x620>
    80007a08:	3e700513          	li	a0,999
    80007a0c:	02d7f5bb          	remuw	a1,a5,a3
    80007a10:	02059593          	slli	a1,a1,0x20
    80007a14:	0205d593          	srli	a1,a1,0x20
    80007a18:	00bd85b3          	add	a1,s11,a1
    80007a1c:	0005c583          	lbu	a1,0(a1)
    80007a20:	02d7d7bb          	divuw	a5,a5,a3
    80007a24:	f8b40223          	sb	a1,-124(s0)
    80007a28:	46e57663          	bgeu	a0,a4,80007e94 <__printf+0x62c>
    80007a2c:	02d7f5bb          	remuw	a1,a5,a3
    80007a30:	02059593          	slli	a1,a1,0x20
    80007a34:	0205d593          	srli	a1,a1,0x20
    80007a38:	00bd85b3          	add	a1,s11,a1
    80007a3c:	0005c583          	lbu	a1,0(a1)
    80007a40:	02d7d7bb          	divuw	a5,a5,a3
    80007a44:	f8b402a3          	sb	a1,-123(s0)
    80007a48:	46ea7863          	bgeu	s4,a4,80007eb8 <__printf+0x650>
    80007a4c:	02d7f5bb          	remuw	a1,a5,a3
    80007a50:	02059593          	slli	a1,a1,0x20
    80007a54:	0205d593          	srli	a1,a1,0x20
    80007a58:	00bd85b3          	add	a1,s11,a1
    80007a5c:	0005c583          	lbu	a1,0(a1)
    80007a60:	02d7d7bb          	divuw	a5,a5,a3
    80007a64:	f8b40323          	sb	a1,-122(s0)
    80007a68:	3eeaf863          	bgeu	s5,a4,80007e58 <__printf+0x5f0>
    80007a6c:	02d7f5bb          	remuw	a1,a5,a3
    80007a70:	02059593          	slli	a1,a1,0x20
    80007a74:	0205d593          	srli	a1,a1,0x20
    80007a78:	00bd85b3          	add	a1,s11,a1
    80007a7c:	0005c583          	lbu	a1,0(a1)
    80007a80:	02d7d7bb          	divuw	a5,a5,a3
    80007a84:	f8b403a3          	sb	a1,-121(s0)
    80007a88:	42eb7e63          	bgeu	s6,a4,80007ec4 <__printf+0x65c>
    80007a8c:	02d7f5bb          	remuw	a1,a5,a3
    80007a90:	02059593          	slli	a1,a1,0x20
    80007a94:	0205d593          	srli	a1,a1,0x20
    80007a98:	00bd85b3          	add	a1,s11,a1
    80007a9c:	0005c583          	lbu	a1,0(a1)
    80007aa0:	02d7d7bb          	divuw	a5,a5,a3
    80007aa4:	f8b40423          	sb	a1,-120(s0)
    80007aa8:	42ebfc63          	bgeu	s7,a4,80007ee0 <__printf+0x678>
    80007aac:	02079793          	slli	a5,a5,0x20
    80007ab0:	0207d793          	srli	a5,a5,0x20
    80007ab4:	00fd8db3          	add	s11,s11,a5
    80007ab8:	000dc703          	lbu	a4,0(s11)
    80007abc:	00a00793          	li	a5,10
    80007ac0:	00900c93          	li	s9,9
    80007ac4:	f8e404a3          	sb	a4,-119(s0)
    80007ac8:	00065c63          	bgez	a2,80007ae0 <__printf+0x278>
    80007acc:	f9040713          	addi	a4,s0,-112
    80007ad0:	00f70733          	add	a4,a4,a5
    80007ad4:	02d00693          	li	a3,45
    80007ad8:	fed70823          	sb	a3,-16(a4)
    80007adc:	00078c93          	mv	s9,a5
    80007ae0:	f8040793          	addi	a5,s0,-128
    80007ae4:	01978cb3          	add	s9,a5,s9
    80007ae8:	f7f40d13          	addi	s10,s0,-129
    80007aec:	000cc503          	lbu	a0,0(s9)
    80007af0:	fffc8c93          	addi	s9,s9,-1
    80007af4:	00000097          	auipc	ra,0x0
    80007af8:	b90080e7          	jalr	-1136(ra) # 80007684 <consputc>
    80007afc:	ffac98e3          	bne	s9,s10,80007aec <__printf+0x284>
    80007b00:	00094503          	lbu	a0,0(s2)
    80007b04:	e00514e3          	bnez	a0,8000790c <__printf+0xa4>
    80007b08:	1a0c1663          	bnez	s8,80007cb4 <__printf+0x44c>
    80007b0c:	08813083          	ld	ra,136(sp)
    80007b10:	08013403          	ld	s0,128(sp)
    80007b14:	07813483          	ld	s1,120(sp)
    80007b18:	07013903          	ld	s2,112(sp)
    80007b1c:	06813983          	ld	s3,104(sp)
    80007b20:	06013a03          	ld	s4,96(sp)
    80007b24:	05813a83          	ld	s5,88(sp)
    80007b28:	05013b03          	ld	s6,80(sp)
    80007b2c:	04813b83          	ld	s7,72(sp)
    80007b30:	04013c03          	ld	s8,64(sp)
    80007b34:	03813c83          	ld	s9,56(sp)
    80007b38:	03013d03          	ld	s10,48(sp)
    80007b3c:	02813d83          	ld	s11,40(sp)
    80007b40:	0d010113          	addi	sp,sp,208
    80007b44:	00008067          	ret
    80007b48:	07300713          	li	a4,115
    80007b4c:	1ce78a63          	beq	a5,a4,80007d20 <__printf+0x4b8>
    80007b50:	07800713          	li	a4,120
    80007b54:	1ee79e63          	bne	a5,a4,80007d50 <__printf+0x4e8>
    80007b58:	f7843783          	ld	a5,-136(s0)
    80007b5c:	0007a703          	lw	a4,0(a5)
    80007b60:	00878793          	addi	a5,a5,8
    80007b64:	f6f43c23          	sd	a5,-136(s0)
    80007b68:	28074263          	bltz	a4,80007dec <__printf+0x584>
    80007b6c:	00002d97          	auipc	s11,0x2
    80007b70:	bbcd8d93          	addi	s11,s11,-1092 # 80009728 <digits>
    80007b74:	00f77793          	andi	a5,a4,15
    80007b78:	00fd87b3          	add	a5,s11,a5
    80007b7c:	0007c683          	lbu	a3,0(a5)
    80007b80:	00f00613          	li	a2,15
    80007b84:	0007079b          	sext.w	a5,a4
    80007b88:	f8d40023          	sb	a3,-128(s0)
    80007b8c:	0047559b          	srliw	a1,a4,0x4
    80007b90:	0047569b          	srliw	a3,a4,0x4
    80007b94:	00000c93          	li	s9,0
    80007b98:	0ee65063          	bge	a2,a4,80007c78 <__printf+0x410>
    80007b9c:	00f6f693          	andi	a3,a3,15
    80007ba0:	00dd86b3          	add	a3,s11,a3
    80007ba4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007ba8:	0087d79b          	srliw	a5,a5,0x8
    80007bac:	00100c93          	li	s9,1
    80007bb0:	f8d400a3          	sb	a3,-127(s0)
    80007bb4:	0cb67263          	bgeu	a2,a1,80007c78 <__printf+0x410>
    80007bb8:	00f7f693          	andi	a3,a5,15
    80007bbc:	00dd86b3          	add	a3,s11,a3
    80007bc0:	0006c583          	lbu	a1,0(a3)
    80007bc4:	00f00613          	li	a2,15
    80007bc8:	0047d69b          	srliw	a3,a5,0x4
    80007bcc:	f8b40123          	sb	a1,-126(s0)
    80007bd0:	0047d593          	srli	a1,a5,0x4
    80007bd4:	28f67e63          	bgeu	a2,a5,80007e70 <__printf+0x608>
    80007bd8:	00f6f693          	andi	a3,a3,15
    80007bdc:	00dd86b3          	add	a3,s11,a3
    80007be0:	0006c503          	lbu	a0,0(a3)
    80007be4:	0087d813          	srli	a6,a5,0x8
    80007be8:	0087d69b          	srliw	a3,a5,0x8
    80007bec:	f8a401a3          	sb	a0,-125(s0)
    80007bf0:	28b67663          	bgeu	a2,a1,80007e7c <__printf+0x614>
    80007bf4:	00f6f693          	andi	a3,a3,15
    80007bf8:	00dd86b3          	add	a3,s11,a3
    80007bfc:	0006c583          	lbu	a1,0(a3)
    80007c00:	00c7d513          	srli	a0,a5,0xc
    80007c04:	00c7d69b          	srliw	a3,a5,0xc
    80007c08:	f8b40223          	sb	a1,-124(s0)
    80007c0c:	29067a63          	bgeu	a2,a6,80007ea0 <__printf+0x638>
    80007c10:	00f6f693          	andi	a3,a3,15
    80007c14:	00dd86b3          	add	a3,s11,a3
    80007c18:	0006c583          	lbu	a1,0(a3)
    80007c1c:	0107d813          	srli	a6,a5,0x10
    80007c20:	0107d69b          	srliw	a3,a5,0x10
    80007c24:	f8b402a3          	sb	a1,-123(s0)
    80007c28:	28a67263          	bgeu	a2,a0,80007eac <__printf+0x644>
    80007c2c:	00f6f693          	andi	a3,a3,15
    80007c30:	00dd86b3          	add	a3,s11,a3
    80007c34:	0006c683          	lbu	a3,0(a3)
    80007c38:	0147d79b          	srliw	a5,a5,0x14
    80007c3c:	f8d40323          	sb	a3,-122(s0)
    80007c40:	21067663          	bgeu	a2,a6,80007e4c <__printf+0x5e4>
    80007c44:	02079793          	slli	a5,a5,0x20
    80007c48:	0207d793          	srli	a5,a5,0x20
    80007c4c:	00fd8db3          	add	s11,s11,a5
    80007c50:	000dc683          	lbu	a3,0(s11)
    80007c54:	00800793          	li	a5,8
    80007c58:	00700c93          	li	s9,7
    80007c5c:	f8d403a3          	sb	a3,-121(s0)
    80007c60:	00075c63          	bgez	a4,80007c78 <__printf+0x410>
    80007c64:	f9040713          	addi	a4,s0,-112
    80007c68:	00f70733          	add	a4,a4,a5
    80007c6c:	02d00693          	li	a3,45
    80007c70:	fed70823          	sb	a3,-16(a4)
    80007c74:	00078c93          	mv	s9,a5
    80007c78:	f8040793          	addi	a5,s0,-128
    80007c7c:	01978cb3          	add	s9,a5,s9
    80007c80:	f7f40d13          	addi	s10,s0,-129
    80007c84:	000cc503          	lbu	a0,0(s9)
    80007c88:	fffc8c93          	addi	s9,s9,-1
    80007c8c:	00000097          	auipc	ra,0x0
    80007c90:	9f8080e7          	jalr	-1544(ra) # 80007684 <consputc>
    80007c94:	ff9d18e3          	bne	s10,s9,80007c84 <__printf+0x41c>
    80007c98:	0100006f          	j	80007ca8 <__printf+0x440>
    80007c9c:	00000097          	auipc	ra,0x0
    80007ca0:	9e8080e7          	jalr	-1560(ra) # 80007684 <consputc>
    80007ca4:	000c8493          	mv	s1,s9
    80007ca8:	00094503          	lbu	a0,0(s2)
    80007cac:	c60510e3          	bnez	a0,8000790c <__printf+0xa4>
    80007cb0:	e40c0ee3          	beqz	s8,80007b0c <__printf+0x2a4>
    80007cb4:	00005517          	auipc	a0,0x5
    80007cb8:	38c50513          	addi	a0,a0,908 # 8000d040 <pr>
    80007cbc:	00001097          	auipc	ra,0x1
    80007cc0:	94c080e7          	jalr	-1716(ra) # 80008608 <release>
    80007cc4:	e49ff06f          	j	80007b0c <__printf+0x2a4>
    80007cc8:	f7843783          	ld	a5,-136(s0)
    80007ccc:	03000513          	li	a0,48
    80007cd0:	01000d13          	li	s10,16
    80007cd4:	00878713          	addi	a4,a5,8
    80007cd8:	0007bc83          	ld	s9,0(a5)
    80007cdc:	f6e43c23          	sd	a4,-136(s0)
    80007ce0:	00000097          	auipc	ra,0x0
    80007ce4:	9a4080e7          	jalr	-1628(ra) # 80007684 <consputc>
    80007ce8:	07800513          	li	a0,120
    80007cec:	00000097          	auipc	ra,0x0
    80007cf0:	998080e7          	jalr	-1640(ra) # 80007684 <consputc>
    80007cf4:	00002d97          	auipc	s11,0x2
    80007cf8:	a34d8d93          	addi	s11,s11,-1484 # 80009728 <digits>
    80007cfc:	03ccd793          	srli	a5,s9,0x3c
    80007d00:	00fd87b3          	add	a5,s11,a5
    80007d04:	0007c503          	lbu	a0,0(a5)
    80007d08:	fffd0d1b          	addiw	s10,s10,-1
    80007d0c:	004c9c93          	slli	s9,s9,0x4
    80007d10:	00000097          	auipc	ra,0x0
    80007d14:	974080e7          	jalr	-1676(ra) # 80007684 <consputc>
    80007d18:	fe0d12e3          	bnez	s10,80007cfc <__printf+0x494>
    80007d1c:	f8dff06f          	j	80007ca8 <__printf+0x440>
    80007d20:	f7843783          	ld	a5,-136(s0)
    80007d24:	0007bc83          	ld	s9,0(a5)
    80007d28:	00878793          	addi	a5,a5,8
    80007d2c:	f6f43c23          	sd	a5,-136(s0)
    80007d30:	000c9a63          	bnez	s9,80007d44 <__printf+0x4dc>
    80007d34:	1080006f          	j	80007e3c <__printf+0x5d4>
    80007d38:	001c8c93          	addi	s9,s9,1
    80007d3c:	00000097          	auipc	ra,0x0
    80007d40:	948080e7          	jalr	-1720(ra) # 80007684 <consputc>
    80007d44:	000cc503          	lbu	a0,0(s9)
    80007d48:	fe0518e3          	bnez	a0,80007d38 <__printf+0x4d0>
    80007d4c:	f5dff06f          	j	80007ca8 <__printf+0x440>
    80007d50:	02500513          	li	a0,37
    80007d54:	00000097          	auipc	ra,0x0
    80007d58:	930080e7          	jalr	-1744(ra) # 80007684 <consputc>
    80007d5c:	000c8513          	mv	a0,s9
    80007d60:	00000097          	auipc	ra,0x0
    80007d64:	924080e7          	jalr	-1756(ra) # 80007684 <consputc>
    80007d68:	f41ff06f          	j	80007ca8 <__printf+0x440>
    80007d6c:	02500513          	li	a0,37
    80007d70:	00000097          	auipc	ra,0x0
    80007d74:	914080e7          	jalr	-1772(ra) # 80007684 <consputc>
    80007d78:	f31ff06f          	j	80007ca8 <__printf+0x440>
    80007d7c:	00030513          	mv	a0,t1
    80007d80:	00000097          	auipc	ra,0x0
    80007d84:	7bc080e7          	jalr	1980(ra) # 8000853c <acquire>
    80007d88:	b4dff06f          	j	800078d4 <__printf+0x6c>
    80007d8c:	40c0053b          	negw	a0,a2
    80007d90:	00a00713          	li	a4,10
    80007d94:	02e576bb          	remuw	a3,a0,a4
    80007d98:	00002d97          	auipc	s11,0x2
    80007d9c:	990d8d93          	addi	s11,s11,-1648 # 80009728 <digits>
    80007da0:	ff700593          	li	a1,-9
    80007da4:	02069693          	slli	a3,a3,0x20
    80007da8:	0206d693          	srli	a3,a3,0x20
    80007dac:	00dd86b3          	add	a3,s11,a3
    80007db0:	0006c683          	lbu	a3,0(a3)
    80007db4:	02e557bb          	divuw	a5,a0,a4
    80007db8:	f8d40023          	sb	a3,-128(s0)
    80007dbc:	10b65e63          	bge	a2,a1,80007ed8 <__printf+0x670>
    80007dc0:	06300593          	li	a1,99
    80007dc4:	02e7f6bb          	remuw	a3,a5,a4
    80007dc8:	02069693          	slli	a3,a3,0x20
    80007dcc:	0206d693          	srli	a3,a3,0x20
    80007dd0:	00dd86b3          	add	a3,s11,a3
    80007dd4:	0006c683          	lbu	a3,0(a3)
    80007dd8:	02e7d73b          	divuw	a4,a5,a4
    80007ddc:	00200793          	li	a5,2
    80007de0:	f8d400a3          	sb	a3,-127(s0)
    80007de4:	bca5ece3          	bltu	a1,a0,800079bc <__printf+0x154>
    80007de8:	ce5ff06f          	j	80007acc <__printf+0x264>
    80007dec:	40e007bb          	negw	a5,a4
    80007df0:	00002d97          	auipc	s11,0x2
    80007df4:	938d8d93          	addi	s11,s11,-1736 # 80009728 <digits>
    80007df8:	00f7f693          	andi	a3,a5,15
    80007dfc:	00dd86b3          	add	a3,s11,a3
    80007e00:	0006c583          	lbu	a1,0(a3)
    80007e04:	ff100613          	li	a2,-15
    80007e08:	0047d69b          	srliw	a3,a5,0x4
    80007e0c:	f8b40023          	sb	a1,-128(s0)
    80007e10:	0047d59b          	srliw	a1,a5,0x4
    80007e14:	0ac75e63          	bge	a4,a2,80007ed0 <__printf+0x668>
    80007e18:	00f6f693          	andi	a3,a3,15
    80007e1c:	00dd86b3          	add	a3,s11,a3
    80007e20:	0006c603          	lbu	a2,0(a3)
    80007e24:	00f00693          	li	a3,15
    80007e28:	0087d79b          	srliw	a5,a5,0x8
    80007e2c:	f8c400a3          	sb	a2,-127(s0)
    80007e30:	d8b6e4e3          	bltu	a3,a1,80007bb8 <__printf+0x350>
    80007e34:	00200793          	li	a5,2
    80007e38:	e2dff06f          	j	80007c64 <__printf+0x3fc>
    80007e3c:	00002c97          	auipc	s9,0x2
    80007e40:	8ccc8c93          	addi	s9,s9,-1844 # 80009708 <CONSOLE_STATUS+0x6f8>
    80007e44:	02800513          	li	a0,40
    80007e48:	ef1ff06f          	j	80007d38 <__printf+0x4d0>
    80007e4c:	00700793          	li	a5,7
    80007e50:	00600c93          	li	s9,6
    80007e54:	e0dff06f          	j	80007c60 <__printf+0x3f8>
    80007e58:	00700793          	li	a5,7
    80007e5c:	00600c93          	li	s9,6
    80007e60:	c69ff06f          	j	80007ac8 <__printf+0x260>
    80007e64:	00300793          	li	a5,3
    80007e68:	00200c93          	li	s9,2
    80007e6c:	c5dff06f          	j	80007ac8 <__printf+0x260>
    80007e70:	00300793          	li	a5,3
    80007e74:	00200c93          	li	s9,2
    80007e78:	de9ff06f          	j	80007c60 <__printf+0x3f8>
    80007e7c:	00400793          	li	a5,4
    80007e80:	00300c93          	li	s9,3
    80007e84:	dddff06f          	j	80007c60 <__printf+0x3f8>
    80007e88:	00400793          	li	a5,4
    80007e8c:	00300c93          	li	s9,3
    80007e90:	c39ff06f          	j	80007ac8 <__printf+0x260>
    80007e94:	00500793          	li	a5,5
    80007e98:	00400c93          	li	s9,4
    80007e9c:	c2dff06f          	j	80007ac8 <__printf+0x260>
    80007ea0:	00500793          	li	a5,5
    80007ea4:	00400c93          	li	s9,4
    80007ea8:	db9ff06f          	j	80007c60 <__printf+0x3f8>
    80007eac:	00600793          	li	a5,6
    80007eb0:	00500c93          	li	s9,5
    80007eb4:	dadff06f          	j	80007c60 <__printf+0x3f8>
    80007eb8:	00600793          	li	a5,6
    80007ebc:	00500c93          	li	s9,5
    80007ec0:	c09ff06f          	j	80007ac8 <__printf+0x260>
    80007ec4:	00800793          	li	a5,8
    80007ec8:	00700c93          	li	s9,7
    80007ecc:	bfdff06f          	j	80007ac8 <__printf+0x260>
    80007ed0:	00100793          	li	a5,1
    80007ed4:	d91ff06f          	j	80007c64 <__printf+0x3fc>
    80007ed8:	00100793          	li	a5,1
    80007edc:	bf1ff06f          	j	80007acc <__printf+0x264>
    80007ee0:	00900793          	li	a5,9
    80007ee4:	00800c93          	li	s9,8
    80007ee8:	be1ff06f          	j	80007ac8 <__printf+0x260>
    80007eec:	00002517          	auipc	a0,0x2
    80007ef0:	82450513          	addi	a0,a0,-2012 # 80009710 <CONSOLE_STATUS+0x700>
    80007ef4:	00000097          	auipc	ra,0x0
    80007ef8:	918080e7          	jalr	-1768(ra) # 8000780c <panic>

0000000080007efc <printfinit>:
    80007efc:	fe010113          	addi	sp,sp,-32
    80007f00:	00813823          	sd	s0,16(sp)
    80007f04:	00913423          	sd	s1,8(sp)
    80007f08:	00113c23          	sd	ra,24(sp)
    80007f0c:	02010413          	addi	s0,sp,32
    80007f10:	00005497          	auipc	s1,0x5
    80007f14:	13048493          	addi	s1,s1,304 # 8000d040 <pr>
    80007f18:	00048513          	mv	a0,s1
    80007f1c:	00002597          	auipc	a1,0x2
    80007f20:	80458593          	addi	a1,a1,-2044 # 80009720 <CONSOLE_STATUS+0x710>
    80007f24:	00000097          	auipc	ra,0x0
    80007f28:	5f4080e7          	jalr	1524(ra) # 80008518 <initlock>
    80007f2c:	01813083          	ld	ra,24(sp)
    80007f30:	01013403          	ld	s0,16(sp)
    80007f34:	0004ac23          	sw	zero,24(s1)
    80007f38:	00813483          	ld	s1,8(sp)
    80007f3c:	02010113          	addi	sp,sp,32
    80007f40:	00008067          	ret

0000000080007f44 <uartinit>:
    80007f44:	ff010113          	addi	sp,sp,-16
    80007f48:	00813423          	sd	s0,8(sp)
    80007f4c:	01010413          	addi	s0,sp,16
    80007f50:	100007b7          	lui	a5,0x10000
    80007f54:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007f58:	f8000713          	li	a4,-128
    80007f5c:	00e781a3          	sb	a4,3(a5)
    80007f60:	00300713          	li	a4,3
    80007f64:	00e78023          	sb	a4,0(a5)
    80007f68:	000780a3          	sb	zero,1(a5)
    80007f6c:	00e781a3          	sb	a4,3(a5)
    80007f70:	00700693          	li	a3,7
    80007f74:	00d78123          	sb	a3,2(a5)
    80007f78:	00e780a3          	sb	a4,1(a5)
    80007f7c:	00813403          	ld	s0,8(sp)
    80007f80:	01010113          	addi	sp,sp,16
    80007f84:	00008067          	ret

0000000080007f88 <uartputc>:
    80007f88:	00004797          	auipc	a5,0x4
    80007f8c:	da07a783          	lw	a5,-608(a5) # 8000bd28 <panicked>
    80007f90:	00078463          	beqz	a5,80007f98 <uartputc+0x10>
    80007f94:	0000006f          	j	80007f94 <uartputc+0xc>
    80007f98:	fd010113          	addi	sp,sp,-48
    80007f9c:	02813023          	sd	s0,32(sp)
    80007fa0:	00913c23          	sd	s1,24(sp)
    80007fa4:	01213823          	sd	s2,16(sp)
    80007fa8:	01313423          	sd	s3,8(sp)
    80007fac:	02113423          	sd	ra,40(sp)
    80007fb0:	03010413          	addi	s0,sp,48
    80007fb4:	00004917          	auipc	s2,0x4
    80007fb8:	d7c90913          	addi	s2,s2,-644 # 8000bd30 <uart_tx_r>
    80007fbc:	00093783          	ld	a5,0(s2)
    80007fc0:	00004497          	auipc	s1,0x4
    80007fc4:	d7848493          	addi	s1,s1,-648 # 8000bd38 <uart_tx_w>
    80007fc8:	0004b703          	ld	a4,0(s1)
    80007fcc:	02078693          	addi	a3,a5,32
    80007fd0:	00050993          	mv	s3,a0
    80007fd4:	02e69c63          	bne	a3,a4,8000800c <uartputc+0x84>
    80007fd8:	00001097          	auipc	ra,0x1
    80007fdc:	834080e7          	jalr	-1996(ra) # 8000880c <push_on>
    80007fe0:	00093783          	ld	a5,0(s2)
    80007fe4:	0004b703          	ld	a4,0(s1)
    80007fe8:	02078793          	addi	a5,a5,32
    80007fec:	00e79463          	bne	a5,a4,80007ff4 <uartputc+0x6c>
    80007ff0:	0000006f          	j	80007ff0 <uartputc+0x68>
    80007ff4:	00001097          	auipc	ra,0x1
    80007ff8:	88c080e7          	jalr	-1908(ra) # 80008880 <pop_on>
    80007ffc:	00093783          	ld	a5,0(s2)
    80008000:	0004b703          	ld	a4,0(s1)
    80008004:	02078693          	addi	a3,a5,32
    80008008:	fce688e3          	beq	a3,a4,80007fd8 <uartputc+0x50>
    8000800c:	01f77693          	andi	a3,a4,31
    80008010:	00005597          	auipc	a1,0x5
    80008014:	05058593          	addi	a1,a1,80 # 8000d060 <uart_tx_buf>
    80008018:	00d586b3          	add	a3,a1,a3
    8000801c:	00170713          	addi	a4,a4,1
    80008020:	01368023          	sb	s3,0(a3)
    80008024:	00e4b023          	sd	a4,0(s1)
    80008028:	10000637          	lui	a2,0x10000
    8000802c:	02f71063          	bne	a4,a5,8000804c <uartputc+0xc4>
    80008030:	0340006f          	j	80008064 <uartputc+0xdc>
    80008034:	00074703          	lbu	a4,0(a4)
    80008038:	00f93023          	sd	a5,0(s2)
    8000803c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80008040:	00093783          	ld	a5,0(s2)
    80008044:	0004b703          	ld	a4,0(s1)
    80008048:	00f70e63          	beq	a4,a5,80008064 <uartputc+0xdc>
    8000804c:	00564683          	lbu	a3,5(a2)
    80008050:	01f7f713          	andi	a4,a5,31
    80008054:	00e58733          	add	a4,a1,a4
    80008058:	0206f693          	andi	a3,a3,32
    8000805c:	00178793          	addi	a5,a5,1
    80008060:	fc069ae3          	bnez	a3,80008034 <uartputc+0xac>
    80008064:	02813083          	ld	ra,40(sp)
    80008068:	02013403          	ld	s0,32(sp)
    8000806c:	01813483          	ld	s1,24(sp)
    80008070:	01013903          	ld	s2,16(sp)
    80008074:	00813983          	ld	s3,8(sp)
    80008078:	03010113          	addi	sp,sp,48
    8000807c:	00008067          	ret

0000000080008080 <uartputc_sync>:
    80008080:	ff010113          	addi	sp,sp,-16
    80008084:	00813423          	sd	s0,8(sp)
    80008088:	01010413          	addi	s0,sp,16
    8000808c:	00004717          	auipc	a4,0x4
    80008090:	c9c72703          	lw	a4,-868(a4) # 8000bd28 <panicked>
    80008094:	02071663          	bnez	a4,800080c0 <uartputc_sync+0x40>
    80008098:	00050793          	mv	a5,a0
    8000809c:	100006b7          	lui	a3,0x10000
    800080a0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800080a4:	02077713          	andi	a4,a4,32
    800080a8:	fe070ce3          	beqz	a4,800080a0 <uartputc_sync+0x20>
    800080ac:	0ff7f793          	andi	a5,a5,255
    800080b0:	00f68023          	sb	a5,0(a3)
    800080b4:	00813403          	ld	s0,8(sp)
    800080b8:	01010113          	addi	sp,sp,16
    800080bc:	00008067          	ret
    800080c0:	0000006f          	j	800080c0 <uartputc_sync+0x40>

00000000800080c4 <uartstart>:
    800080c4:	ff010113          	addi	sp,sp,-16
    800080c8:	00813423          	sd	s0,8(sp)
    800080cc:	01010413          	addi	s0,sp,16
    800080d0:	00004617          	auipc	a2,0x4
    800080d4:	c6060613          	addi	a2,a2,-928 # 8000bd30 <uart_tx_r>
    800080d8:	00004517          	auipc	a0,0x4
    800080dc:	c6050513          	addi	a0,a0,-928 # 8000bd38 <uart_tx_w>
    800080e0:	00063783          	ld	a5,0(a2)
    800080e4:	00053703          	ld	a4,0(a0)
    800080e8:	04f70263          	beq	a4,a5,8000812c <uartstart+0x68>
    800080ec:	100005b7          	lui	a1,0x10000
    800080f0:	00005817          	auipc	a6,0x5
    800080f4:	f7080813          	addi	a6,a6,-144 # 8000d060 <uart_tx_buf>
    800080f8:	01c0006f          	j	80008114 <uartstart+0x50>
    800080fc:	0006c703          	lbu	a4,0(a3)
    80008100:	00f63023          	sd	a5,0(a2)
    80008104:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80008108:	00063783          	ld	a5,0(a2)
    8000810c:	00053703          	ld	a4,0(a0)
    80008110:	00f70e63          	beq	a4,a5,8000812c <uartstart+0x68>
    80008114:	01f7f713          	andi	a4,a5,31
    80008118:	00e806b3          	add	a3,a6,a4
    8000811c:	0055c703          	lbu	a4,5(a1)
    80008120:	00178793          	addi	a5,a5,1
    80008124:	02077713          	andi	a4,a4,32
    80008128:	fc071ae3          	bnez	a4,800080fc <uartstart+0x38>
    8000812c:	00813403          	ld	s0,8(sp)
    80008130:	01010113          	addi	sp,sp,16
    80008134:	00008067          	ret

0000000080008138 <uartgetc>:
    80008138:	ff010113          	addi	sp,sp,-16
    8000813c:	00813423          	sd	s0,8(sp)
    80008140:	01010413          	addi	s0,sp,16
    80008144:	10000737          	lui	a4,0x10000
    80008148:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000814c:	0017f793          	andi	a5,a5,1
    80008150:	00078c63          	beqz	a5,80008168 <uartgetc+0x30>
    80008154:	00074503          	lbu	a0,0(a4)
    80008158:	0ff57513          	andi	a0,a0,255
    8000815c:	00813403          	ld	s0,8(sp)
    80008160:	01010113          	addi	sp,sp,16
    80008164:	00008067          	ret
    80008168:	fff00513          	li	a0,-1
    8000816c:	ff1ff06f          	j	8000815c <uartgetc+0x24>

0000000080008170 <uartintr>:
    80008170:	100007b7          	lui	a5,0x10000
    80008174:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80008178:	0017f793          	andi	a5,a5,1
    8000817c:	0a078463          	beqz	a5,80008224 <uartintr+0xb4>
    80008180:	fe010113          	addi	sp,sp,-32
    80008184:	00813823          	sd	s0,16(sp)
    80008188:	00913423          	sd	s1,8(sp)
    8000818c:	00113c23          	sd	ra,24(sp)
    80008190:	02010413          	addi	s0,sp,32
    80008194:	100004b7          	lui	s1,0x10000
    80008198:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000819c:	0ff57513          	andi	a0,a0,255
    800081a0:	fffff097          	auipc	ra,0xfffff
    800081a4:	534080e7          	jalr	1332(ra) # 800076d4 <consoleintr>
    800081a8:	0054c783          	lbu	a5,5(s1)
    800081ac:	0017f793          	andi	a5,a5,1
    800081b0:	fe0794e3          	bnez	a5,80008198 <uartintr+0x28>
    800081b4:	00004617          	auipc	a2,0x4
    800081b8:	b7c60613          	addi	a2,a2,-1156 # 8000bd30 <uart_tx_r>
    800081bc:	00004517          	auipc	a0,0x4
    800081c0:	b7c50513          	addi	a0,a0,-1156 # 8000bd38 <uart_tx_w>
    800081c4:	00063783          	ld	a5,0(a2)
    800081c8:	00053703          	ld	a4,0(a0)
    800081cc:	04f70263          	beq	a4,a5,80008210 <uartintr+0xa0>
    800081d0:	100005b7          	lui	a1,0x10000
    800081d4:	00005817          	auipc	a6,0x5
    800081d8:	e8c80813          	addi	a6,a6,-372 # 8000d060 <uart_tx_buf>
    800081dc:	01c0006f          	j	800081f8 <uartintr+0x88>
    800081e0:	0006c703          	lbu	a4,0(a3)
    800081e4:	00f63023          	sd	a5,0(a2)
    800081e8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800081ec:	00063783          	ld	a5,0(a2)
    800081f0:	00053703          	ld	a4,0(a0)
    800081f4:	00f70e63          	beq	a4,a5,80008210 <uartintr+0xa0>
    800081f8:	01f7f713          	andi	a4,a5,31
    800081fc:	00e806b3          	add	a3,a6,a4
    80008200:	0055c703          	lbu	a4,5(a1)
    80008204:	00178793          	addi	a5,a5,1
    80008208:	02077713          	andi	a4,a4,32
    8000820c:	fc071ae3          	bnez	a4,800081e0 <uartintr+0x70>
    80008210:	01813083          	ld	ra,24(sp)
    80008214:	01013403          	ld	s0,16(sp)
    80008218:	00813483          	ld	s1,8(sp)
    8000821c:	02010113          	addi	sp,sp,32
    80008220:	00008067          	ret
    80008224:	00004617          	auipc	a2,0x4
    80008228:	b0c60613          	addi	a2,a2,-1268 # 8000bd30 <uart_tx_r>
    8000822c:	00004517          	auipc	a0,0x4
    80008230:	b0c50513          	addi	a0,a0,-1268 # 8000bd38 <uart_tx_w>
    80008234:	00063783          	ld	a5,0(a2)
    80008238:	00053703          	ld	a4,0(a0)
    8000823c:	04f70263          	beq	a4,a5,80008280 <uartintr+0x110>
    80008240:	100005b7          	lui	a1,0x10000
    80008244:	00005817          	auipc	a6,0x5
    80008248:	e1c80813          	addi	a6,a6,-484 # 8000d060 <uart_tx_buf>
    8000824c:	01c0006f          	j	80008268 <uartintr+0xf8>
    80008250:	0006c703          	lbu	a4,0(a3)
    80008254:	00f63023          	sd	a5,0(a2)
    80008258:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000825c:	00063783          	ld	a5,0(a2)
    80008260:	00053703          	ld	a4,0(a0)
    80008264:	02f70063          	beq	a4,a5,80008284 <uartintr+0x114>
    80008268:	01f7f713          	andi	a4,a5,31
    8000826c:	00e806b3          	add	a3,a6,a4
    80008270:	0055c703          	lbu	a4,5(a1)
    80008274:	00178793          	addi	a5,a5,1
    80008278:	02077713          	andi	a4,a4,32
    8000827c:	fc071ae3          	bnez	a4,80008250 <uartintr+0xe0>
    80008280:	00008067          	ret
    80008284:	00008067          	ret

0000000080008288 <kinit>:
    80008288:	fc010113          	addi	sp,sp,-64
    8000828c:	02913423          	sd	s1,40(sp)
    80008290:	fffff7b7          	lui	a5,0xfffff
    80008294:	00006497          	auipc	s1,0x6
    80008298:	deb48493          	addi	s1,s1,-533 # 8000e07f <end+0xfff>
    8000829c:	02813823          	sd	s0,48(sp)
    800082a0:	01313c23          	sd	s3,24(sp)
    800082a4:	00f4f4b3          	and	s1,s1,a5
    800082a8:	02113c23          	sd	ra,56(sp)
    800082ac:	03213023          	sd	s2,32(sp)
    800082b0:	01413823          	sd	s4,16(sp)
    800082b4:	01513423          	sd	s5,8(sp)
    800082b8:	04010413          	addi	s0,sp,64
    800082bc:	000017b7          	lui	a5,0x1
    800082c0:	01100993          	li	s3,17
    800082c4:	00f487b3          	add	a5,s1,a5
    800082c8:	01b99993          	slli	s3,s3,0x1b
    800082cc:	06f9e063          	bltu	s3,a5,8000832c <kinit+0xa4>
    800082d0:	00005a97          	auipc	s5,0x5
    800082d4:	db0a8a93          	addi	s5,s5,-592 # 8000d080 <end>
    800082d8:	0754ec63          	bltu	s1,s5,80008350 <kinit+0xc8>
    800082dc:	0734fa63          	bgeu	s1,s3,80008350 <kinit+0xc8>
    800082e0:	00088a37          	lui	s4,0x88
    800082e4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800082e8:	00004917          	auipc	s2,0x4
    800082ec:	a5890913          	addi	s2,s2,-1448 # 8000bd40 <kmem>
    800082f0:	00ca1a13          	slli	s4,s4,0xc
    800082f4:	0140006f          	j	80008308 <kinit+0x80>
    800082f8:	000017b7          	lui	a5,0x1
    800082fc:	00f484b3          	add	s1,s1,a5
    80008300:	0554e863          	bltu	s1,s5,80008350 <kinit+0xc8>
    80008304:	0534f663          	bgeu	s1,s3,80008350 <kinit+0xc8>
    80008308:	00001637          	lui	a2,0x1
    8000830c:	00100593          	li	a1,1
    80008310:	00048513          	mv	a0,s1
    80008314:	00000097          	auipc	ra,0x0
    80008318:	5e4080e7          	jalr	1508(ra) # 800088f8 <__memset>
    8000831c:	00093783          	ld	a5,0(s2)
    80008320:	00f4b023          	sd	a5,0(s1)
    80008324:	00993023          	sd	s1,0(s2)
    80008328:	fd4498e3          	bne	s1,s4,800082f8 <kinit+0x70>
    8000832c:	03813083          	ld	ra,56(sp)
    80008330:	03013403          	ld	s0,48(sp)
    80008334:	02813483          	ld	s1,40(sp)
    80008338:	02013903          	ld	s2,32(sp)
    8000833c:	01813983          	ld	s3,24(sp)
    80008340:	01013a03          	ld	s4,16(sp)
    80008344:	00813a83          	ld	s5,8(sp)
    80008348:	04010113          	addi	sp,sp,64
    8000834c:	00008067          	ret
    80008350:	00001517          	auipc	a0,0x1
    80008354:	3f050513          	addi	a0,a0,1008 # 80009740 <digits+0x18>
    80008358:	fffff097          	auipc	ra,0xfffff
    8000835c:	4b4080e7          	jalr	1204(ra) # 8000780c <panic>

0000000080008360 <freerange>:
    80008360:	fc010113          	addi	sp,sp,-64
    80008364:	000017b7          	lui	a5,0x1
    80008368:	02913423          	sd	s1,40(sp)
    8000836c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80008370:	009504b3          	add	s1,a0,s1
    80008374:	fffff537          	lui	a0,0xfffff
    80008378:	02813823          	sd	s0,48(sp)
    8000837c:	02113c23          	sd	ra,56(sp)
    80008380:	03213023          	sd	s2,32(sp)
    80008384:	01313c23          	sd	s3,24(sp)
    80008388:	01413823          	sd	s4,16(sp)
    8000838c:	01513423          	sd	s5,8(sp)
    80008390:	01613023          	sd	s6,0(sp)
    80008394:	04010413          	addi	s0,sp,64
    80008398:	00a4f4b3          	and	s1,s1,a0
    8000839c:	00f487b3          	add	a5,s1,a5
    800083a0:	06f5e463          	bltu	a1,a5,80008408 <freerange+0xa8>
    800083a4:	00005a97          	auipc	s5,0x5
    800083a8:	cdca8a93          	addi	s5,s5,-804 # 8000d080 <end>
    800083ac:	0954e263          	bltu	s1,s5,80008430 <freerange+0xd0>
    800083b0:	01100993          	li	s3,17
    800083b4:	01b99993          	slli	s3,s3,0x1b
    800083b8:	0734fc63          	bgeu	s1,s3,80008430 <freerange+0xd0>
    800083bc:	00058a13          	mv	s4,a1
    800083c0:	00004917          	auipc	s2,0x4
    800083c4:	98090913          	addi	s2,s2,-1664 # 8000bd40 <kmem>
    800083c8:	00002b37          	lui	s6,0x2
    800083cc:	0140006f          	j	800083e0 <freerange+0x80>
    800083d0:	000017b7          	lui	a5,0x1
    800083d4:	00f484b3          	add	s1,s1,a5
    800083d8:	0554ec63          	bltu	s1,s5,80008430 <freerange+0xd0>
    800083dc:	0534fa63          	bgeu	s1,s3,80008430 <freerange+0xd0>
    800083e0:	00001637          	lui	a2,0x1
    800083e4:	00100593          	li	a1,1
    800083e8:	00048513          	mv	a0,s1
    800083ec:	00000097          	auipc	ra,0x0
    800083f0:	50c080e7          	jalr	1292(ra) # 800088f8 <__memset>
    800083f4:	00093703          	ld	a4,0(s2)
    800083f8:	016487b3          	add	a5,s1,s6
    800083fc:	00e4b023          	sd	a4,0(s1)
    80008400:	00993023          	sd	s1,0(s2)
    80008404:	fcfa76e3          	bgeu	s4,a5,800083d0 <freerange+0x70>
    80008408:	03813083          	ld	ra,56(sp)
    8000840c:	03013403          	ld	s0,48(sp)
    80008410:	02813483          	ld	s1,40(sp)
    80008414:	02013903          	ld	s2,32(sp)
    80008418:	01813983          	ld	s3,24(sp)
    8000841c:	01013a03          	ld	s4,16(sp)
    80008420:	00813a83          	ld	s5,8(sp)
    80008424:	00013b03          	ld	s6,0(sp)
    80008428:	04010113          	addi	sp,sp,64
    8000842c:	00008067          	ret
    80008430:	00001517          	auipc	a0,0x1
    80008434:	31050513          	addi	a0,a0,784 # 80009740 <digits+0x18>
    80008438:	fffff097          	auipc	ra,0xfffff
    8000843c:	3d4080e7          	jalr	980(ra) # 8000780c <panic>

0000000080008440 <kfree>:
    80008440:	fe010113          	addi	sp,sp,-32
    80008444:	00813823          	sd	s0,16(sp)
    80008448:	00113c23          	sd	ra,24(sp)
    8000844c:	00913423          	sd	s1,8(sp)
    80008450:	02010413          	addi	s0,sp,32
    80008454:	03451793          	slli	a5,a0,0x34
    80008458:	04079c63          	bnez	a5,800084b0 <kfree+0x70>
    8000845c:	00005797          	auipc	a5,0x5
    80008460:	c2478793          	addi	a5,a5,-988 # 8000d080 <end>
    80008464:	00050493          	mv	s1,a0
    80008468:	04f56463          	bltu	a0,a5,800084b0 <kfree+0x70>
    8000846c:	01100793          	li	a5,17
    80008470:	01b79793          	slli	a5,a5,0x1b
    80008474:	02f57e63          	bgeu	a0,a5,800084b0 <kfree+0x70>
    80008478:	00001637          	lui	a2,0x1
    8000847c:	00100593          	li	a1,1
    80008480:	00000097          	auipc	ra,0x0
    80008484:	478080e7          	jalr	1144(ra) # 800088f8 <__memset>
    80008488:	00004797          	auipc	a5,0x4
    8000848c:	8b878793          	addi	a5,a5,-1864 # 8000bd40 <kmem>
    80008490:	0007b703          	ld	a4,0(a5)
    80008494:	01813083          	ld	ra,24(sp)
    80008498:	01013403          	ld	s0,16(sp)
    8000849c:	00e4b023          	sd	a4,0(s1)
    800084a0:	0097b023          	sd	s1,0(a5)
    800084a4:	00813483          	ld	s1,8(sp)
    800084a8:	02010113          	addi	sp,sp,32
    800084ac:	00008067          	ret
    800084b0:	00001517          	auipc	a0,0x1
    800084b4:	29050513          	addi	a0,a0,656 # 80009740 <digits+0x18>
    800084b8:	fffff097          	auipc	ra,0xfffff
    800084bc:	354080e7          	jalr	852(ra) # 8000780c <panic>

00000000800084c0 <kalloc>:
    800084c0:	fe010113          	addi	sp,sp,-32
    800084c4:	00813823          	sd	s0,16(sp)
    800084c8:	00913423          	sd	s1,8(sp)
    800084cc:	00113c23          	sd	ra,24(sp)
    800084d0:	02010413          	addi	s0,sp,32
    800084d4:	00004797          	auipc	a5,0x4
    800084d8:	86c78793          	addi	a5,a5,-1940 # 8000bd40 <kmem>
    800084dc:	0007b483          	ld	s1,0(a5)
    800084e0:	02048063          	beqz	s1,80008500 <kalloc+0x40>
    800084e4:	0004b703          	ld	a4,0(s1)
    800084e8:	00001637          	lui	a2,0x1
    800084ec:	00500593          	li	a1,5
    800084f0:	00048513          	mv	a0,s1
    800084f4:	00e7b023          	sd	a4,0(a5)
    800084f8:	00000097          	auipc	ra,0x0
    800084fc:	400080e7          	jalr	1024(ra) # 800088f8 <__memset>
    80008500:	01813083          	ld	ra,24(sp)
    80008504:	01013403          	ld	s0,16(sp)
    80008508:	00048513          	mv	a0,s1
    8000850c:	00813483          	ld	s1,8(sp)
    80008510:	02010113          	addi	sp,sp,32
    80008514:	00008067          	ret

0000000080008518 <initlock>:
    80008518:	ff010113          	addi	sp,sp,-16
    8000851c:	00813423          	sd	s0,8(sp)
    80008520:	01010413          	addi	s0,sp,16
    80008524:	00813403          	ld	s0,8(sp)
    80008528:	00b53423          	sd	a1,8(a0)
    8000852c:	00052023          	sw	zero,0(a0)
    80008530:	00053823          	sd	zero,16(a0)
    80008534:	01010113          	addi	sp,sp,16
    80008538:	00008067          	ret

000000008000853c <acquire>:
    8000853c:	fe010113          	addi	sp,sp,-32
    80008540:	00813823          	sd	s0,16(sp)
    80008544:	00913423          	sd	s1,8(sp)
    80008548:	00113c23          	sd	ra,24(sp)
    8000854c:	01213023          	sd	s2,0(sp)
    80008550:	02010413          	addi	s0,sp,32
    80008554:	00050493          	mv	s1,a0
    80008558:	10002973          	csrr	s2,sstatus
    8000855c:	100027f3          	csrr	a5,sstatus
    80008560:	ffd7f793          	andi	a5,a5,-3
    80008564:	10079073          	csrw	sstatus,a5
    80008568:	fffff097          	auipc	ra,0xfffff
    8000856c:	8e0080e7          	jalr	-1824(ra) # 80006e48 <mycpu>
    80008570:	07852783          	lw	a5,120(a0)
    80008574:	06078e63          	beqz	a5,800085f0 <acquire+0xb4>
    80008578:	fffff097          	auipc	ra,0xfffff
    8000857c:	8d0080e7          	jalr	-1840(ra) # 80006e48 <mycpu>
    80008580:	07852783          	lw	a5,120(a0)
    80008584:	0004a703          	lw	a4,0(s1)
    80008588:	0017879b          	addiw	a5,a5,1
    8000858c:	06f52c23          	sw	a5,120(a0)
    80008590:	04071063          	bnez	a4,800085d0 <acquire+0x94>
    80008594:	00100713          	li	a4,1
    80008598:	00070793          	mv	a5,a4
    8000859c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800085a0:	0007879b          	sext.w	a5,a5
    800085a4:	fe079ae3          	bnez	a5,80008598 <acquire+0x5c>
    800085a8:	0ff0000f          	fence
    800085ac:	fffff097          	auipc	ra,0xfffff
    800085b0:	89c080e7          	jalr	-1892(ra) # 80006e48 <mycpu>
    800085b4:	01813083          	ld	ra,24(sp)
    800085b8:	01013403          	ld	s0,16(sp)
    800085bc:	00a4b823          	sd	a0,16(s1)
    800085c0:	00013903          	ld	s2,0(sp)
    800085c4:	00813483          	ld	s1,8(sp)
    800085c8:	02010113          	addi	sp,sp,32
    800085cc:	00008067          	ret
    800085d0:	0104b903          	ld	s2,16(s1)
    800085d4:	fffff097          	auipc	ra,0xfffff
    800085d8:	874080e7          	jalr	-1932(ra) # 80006e48 <mycpu>
    800085dc:	faa91ce3          	bne	s2,a0,80008594 <acquire+0x58>
    800085e0:	00001517          	auipc	a0,0x1
    800085e4:	16850513          	addi	a0,a0,360 # 80009748 <digits+0x20>
    800085e8:	fffff097          	auipc	ra,0xfffff
    800085ec:	224080e7          	jalr	548(ra) # 8000780c <panic>
    800085f0:	00195913          	srli	s2,s2,0x1
    800085f4:	fffff097          	auipc	ra,0xfffff
    800085f8:	854080e7          	jalr	-1964(ra) # 80006e48 <mycpu>
    800085fc:	00197913          	andi	s2,s2,1
    80008600:	07252e23          	sw	s2,124(a0)
    80008604:	f75ff06f          	j	80008578 <acquire+0x3c>

0000000080008608 <release>:
    80008608:	fe010113          	addi	sp,sp,-32
    8000860c:	00813823          	sd	s0,16(sp)
    80008610:	00113c23          	sd	ra,24(sp)
    80008614:	00913423          	sd	s1,8(sp)
    80008618:	01213023          	sd	s2,0(sp)
    8000861c:	02010413          	addi	s0,sp,32
    80008620:	00052783          	lw	a5,0(a0)
    80008624:	00079a63          	bnez	a5,80008638 <release+0x30>
    80008628:	00001517          	auipc	a0,0x1
    8000862c:	12850513          	addi	a0,a0,296 # 80009750 <digits+0x28>
    80008630:	fffff097          	auipc	ra,0xfffff
    80008634:	1dc080e7          	jalr	476(ra) # 8000780c <panic>
    80008638:	01053903          	ld	s2,16(a0)
    8000863c:	00050493          	mv	s1,a0
    80008640:	fffff097          	auipc	ra,0xfffff
    80008644:	808080e7          	jalr	-2040(ra) # 80006e48 <mycpu>
    80008648:	fea910e3          	bne	s2,a0,80008628 <release+0x20>
    8000864c:	0004b823          	sd	zero,16(s1)
    80008650:	0ff0000f          	fence
    80008654:	0f50000f          	fence	iorw,ow
    80008658:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000865c:	ffffe097          	auipc	ra,0xffffe
    80008660:	7ec080e7          	jalr	2028(ra) # 80006e48 <mycpu>
    80008664:	100027f3          	csrr	a5,sstatus
    80008668:	0027f793          	andi	a5,a5,2
    8000866c:	04079a63          	bnez	a5,800086c0 <release+0xb8>
    80008670:	07852783          	lw	a5,120(a0)
    80008674:	02f05e63          	blez	a5,800086b0 <release+0xa8>
    80008678:	fff7871b          	addiw	a4,a5,-1
    8000867c:	06e52c23          	sw	a4,120(a0)
    80008680:	00071c63          	bnez	a4,80008698 <release+0x90>
    80008684:	07c52783          	lw	a5,124(a0)
    80008688:	00078863          	beqz	a5,80008698 <release+0x90>
    8000868c:	100027f3          	csrr	a5,sstatus
    80008690:	0027e793          	ori	a5,a5,2
    80008694:	10079073          	csrw	sstatus,a5
    80008698:	01813083          	ld	ra,24(sp)
    8000869c:	01013403          	ld	s0,16(sp)
    800086a0:	00813483          	ld	s1,8(sp)
    800086a4:	00013903          	ld	s2,0(sp)
    800086a8:	02010113          	addi	sp,sp,32
    800086ac:	00008067          	ret
    800086b0:	00001517          	auipc	a0,0x1
    800086b4:	0c050513          	addi	a0,a0,192 # 80009770 <digits+0x48>
    800086b8:	fffff097          	auipc	ra,0xfffff
    800086bc:	154080e7          	jalr	340(ra) # 8000780c <panic>
    800086c0:	00001517          	auipc	a0,0x1
    800086c4:	09850513          	addi	a0,a0,152 # 80009758 <digits+0x30>
    800086c8:	fffff097          	auipc	ra,0xfffff
    800086cc:	144080e7          	jalr	324(ra) # 8000780c <panic>

00000000800086d0 <holding>:
    800086d0:	00052783          	lw	a5,0(a0)
    800086d4:	00079663          	bnez	a5,800086e0 <holding+0x10>
    800086d8:	00000513          	li	a0,0
    800086dc:	00008067          	ret
    800086e0:	fe010113          	addi	sp,sp,-32
    800086e4:	00813823          	sd	s0,16(sp)
    800086e8:	00913423          	sd	s1,8(sp)
    800086ec:	00113c23          	sd	ra,24(sp)
    800086f0:	02010413          	addi	s0,sp,32
    800086f4:	01053483          	ld	s1,16(a0)
    800086f8:	ffffe097          	auipc	ra,0xffffe
    800086fc:	750080e7          	jalr	1872(ra) # 80006e48 <mycpu>
    80008700:	01813083          	ld	ra,24(sp)
    80008704:	01013403          	ld	s0,16(sp)
    80008708:	40a48533          	sub	a0,s1,a0
    8000870c:	00153513          	seqz	a0,a0
    80008710:	00813483          	ld	s1,8(sp)
    80008714:	02010113          	addi	sp,sp,32
    80008718:	00008067          	ret

000000008000871c <push_off>:
    8000871c:	fe010113          	addi	sp,sp,-32
    80008720:	00813823          	sd	s0,16(sp)
    80008724:	00113c23          	sd	ra,24(sp)
    80008728:	00913423          	sd	s1,8(sp)
    8000872c:	02010413          	addi	s0,sp,32
    80008730:	100024f3          	csrr	s1,sstatus
    80008734:	100027f3          	csrr	a5,sstatus
    80008738:	ffd7f793          	andi	a5,a5,-3
    8000873c:	10079073          	csrw	sstatus,a5
    80008740:	ffffe097          	auipc	ra,0xffffe
    80008744:	708080e7          	jalr	1800(ra) # 80006e48 <mycpu>
    80008748:	07852783          	lw	a5,120(a0)
    8000874c:	02078663          	beqz	a5,80008778 <push_off+0x5c>
    80008750:	ffffe097          	auipc	ra,0xffffe
    80008754:	6f8080e7          	jalr	1784(ra) # 80006e48 <mycpu>
    80008758:	07852783          	lw	a5,120(a0)
    8000875c:	01813083          	ld	ra,24(sp)
    80008760:	01013403          	ld	s0,16(sp)
    80008764:	0017879b          	addiw	a5,a5,1
    80008768:	06f52c23          	sw	a5,120(a0)
    8000876c:	00813483          	ld	s1,8(sp)
    80008770:	02010113          	addi	sp,sp,32
    80008774:	00008067          	ret
    80008778:	0014d493          	srli	s1,s1,0x1
    8000877c:	ffffe097          	auipc	ra,0xffffe
    80008780:	6cc080e7          	jalr	1740(ra) # 80006e48 <mycpu>
    80008784:	0014f493          	andi	s1,s1,1
    80008788:	06952e23          	sw	s1,124(a0)
    8000878c:	fc5ff06f          	j	80008750 <push_off+0x34>

0000000080008790 <pop_off>:
    80008790:	ff010113          	addi	sp,sp,-16
    80008794:	00813023          	sd	s0,0(sp)
    80008798:	00113423          	sd	ra,8(sp)
    8000879c:	01010413          	addi	s0,sp,16
    800087a0:	ffffe097          	auipc	ra,0xffffe
    800087a4:	6a8080e7          	jalr	1704(ra) # 80006e48 <mycpu>
    800087a8:	100027f3          	csrr	a5,sstatus
    800087ac:	0027f793          	andi	a5,a5,2
    800087b0:	04079663          	bnez	a5,800087fc <pop_off+0x6c>
    800087b4:	07852783          	lw	a5,120(a0)
    800087b8:	02f05a63          	blez	a5,800087ec <pop_off+0x5c>
    800087bc:	fff7871b          	addiw	a4,a5,-1
    800087c0:	06e52c23          	sw	a4,120(a0)
    800087c4:	00071c63          	bnez	a4,800087dc <pop_off+0x4c>
    800087c8:	07c52783          	lw	a5,124(a0)
    800087cc:	00078863          	beqz	a5,800087dc <pop_off+0x4c>
    800087d0:	100027f3          	csrr	a5,sstatus
    800087d4:	0027e793          	ori	a5,a5,2
    800087d8:	10079073          	csrw	sstatus,a5
    800087dc:	00813083          	ld	ra,8(sp)
    800087e0:	00013403          	ld	s0,0(sp)
    800087e4:	01010113          	addi	sp,sp,16
    800087e8:	00008067          	ret
    800087ec:	00001517          	auipc	a0,0x1
    800087f0:	f8450513          	addi	a0,a0,-124 # 80009770 <digits+0x48>
    800087f4:	fffff097          	auipc	ra,0xfffff
    800087f8:	018080e7          	jalr	24(ra) # 8000780c <panic>
    800087fc:	00001517          	auipc	a0,0x1
    80008800:	f5c50513          	addi	a0,a0,-164 # 80009758 <digits+0x30>
    80008804:	fffff097          	auipc	ra,0xfffff
    80008808:	008080e7          	jalr	8(ra) # 8000780c <panic>

000000008000880c <push_on>:
    8000880c:	fe010113          	addi	sp,sp,-32
    80008810:	00813823          	sd	s0,16(sp)
    80008814:	00113c23          	sd	ra,24(sp)
    80008818:	00913423          	sd	s1,8(sp)
    8000881c:	02010413          	addi	s0,sp,32
    80008820:	100024f3          	csrr	s1,sstatus
    80008824:	100027f3          	csrr	a5,sstatus
    80008828:	0027e793          	ori	a5,a5,2
    8000882c:	10079073          	csrw	sstatus,a5
    80008830:	ffffe097          	auipc	ra,0xffffe
    80008834:	618080e7          	jalr	1560(ra) # 80006e48 <mycpu>
    80008838:	07852783          	lw	a5,120(a0)
    8000883c:	02078663          	beqz	a5,80008868 <push_on+0x5c>
    80008840:	ffffe097          	auipc	ra,0xffffe
    80008844:	608080e7          	jalr	1544(ra) # 80006e48 <mycpu>
    80008848:	07852783          	lw	a5,120(a0)
    8000884c:	01813083          	ld	ra,24(sp)
    80008850:	01013403          	ld	s0,16(sp)
    80008854:	0017879b          	addiw	a5,a5,1
    80008858:	06f52c23          	sw	a5,120(a0)
    8000885c:	00813483          	ld	s1,8(sp)
    80008860:	02010113          	addi	sp,sp,32
    80008864:	00008067          	ret
    80008868:	0014d493          	srli	s1,s1,0x1
    8000886c:	ffffe097          	auipc	ra,0xffffe
    80008870:	5dc080e7          	jalr	1500(ra) # 80006e48 <mycpu>
    80008874:	0014f493          	andi	s1,s1,1
    80008878:	06952e23          	sw	s1,124(a0)
    8000887c:	fc5ff06f          	j	80008840 <push_on+0x34>

0000000080008880 <pop_on>:
    80008880:	ff010113          	addi	sp,sp,-16
    80008884:	00813023          	sd	s0,0(sp)
    80008888:	00113423          	sd	ra,8(sp)
    8000888c:	01010413          	addi	s0,sp,16
    80008890:	ffffe097          	auipc	ra,0xffffe
    80008894:	5b8080e7          	jalr	1464(ra) # 80006e48 <mycpu>
    80008898:	100027f3          	csrr	a5,sstatus
    8000889c:	0027f793          	andi	a5,a5,2
    800088a0:	04078463          	beqz	a5,800088e8 <pop_on+0x68>
    800088a4:	07852783          	lw	a5,120(a0)
    800088a8:	02f05863          	blez	a5,800088d8 <pop_on+0x58>
    800088ac:	fff7879b          	addiw	a5,a5,-1
    800088b0:	06f52c23          	sw	a5,120(a0)
    800088b4:	07853783          	ld	a5,120(a0)
    800088b8:	00079863          	bnez	a5,800088c8 <pop_on+0x48>
    800088bc:	100027f3          	csrr	a5,sstatus
    800088c0:	ffd7f793          	andi	a5,a5,-3
    800088c4:	10079073          	csrw	sstatus,a5
    800088c8:	00813083          	ld	ra,8(sp)
    800088cc:	00013403          	ld	s0,0(sp)
    800088d0:	01010113          	addi	sp,sp,16
    800088d4:	00008067          	ret
    800088d8:	00001517          	auipc	a0,0x1
    800088dc:	ec050513          	addi	a0,a0,-320 # 80009798 <digits+0x70>
    800088e0:	fffff097          	auipc	ra,0xfffff
    800088e4:	f2c080e7          	jalr	-212(ra) # 8000780c <panic>
    800088e8:	00001517          	auipc	a0,0x1
    800088ec:	e9050513          	addi	a0,a0,-368 # 80009778 <digits+0x50>
    800088f0:	fffff097          	auipc	ra,0xfffff
    800088f4:	f1c080e7          	jalr	-228(ra) # 8000780c <panic>

00000000800088f8 <__memset>:
    800088f8:	ff010113          	addi	sp,sp,-16
    800088fc:	00813423          	sd	s0,8(sp)
    80008900:	01010413          	addi	s0,sp,16
    80008904:	1a060e63          	beqz	a2,80008ac0 <__memset+0x1c8>
    80008908:	40a007b3          	neg	a5,a0
    8000890c:	0077f793          	andi	a5,a5,7
    80008910:	00778693          	addi	a3,a5,7
    80008914:	00b00813          	li	a6,11
    80008918:	0ff5f593          	andi	a1,a1,255
    8000891c:	fff6071b          	addiw	a4,a2,-1
    80008920:	1b06e663          	bltu	a3,a6,80008acc <__memset+0x1d4>
    80008924:	1cd76463          	bltu	a4,a3,80008aec <__memset+0x1f4>
    80008928:	1a078e63          	beqz	a5,80008ae4 <__memset+0x1ec>
    8000892c:	00b50023          	sb	a1,0(a0)
    80008930:	00100713          	li	a4,1
    80008934:	1ae78463          	beq	a5,a4,80008adc <__memset+0x1e4>
    80008938:	00b500a3          	sb	a1,1(a0)
    8000893c:	00200713          	li	a4,2
    80008940:	1ae78a63          	beq	a5,a4,80008af4 <__memset+0x1fc>
    80008944:	00b50123          	sb	a1,2(a0)
    80008948:	00300713          	li	a4,3
    8000894c:	18e78463          	beq	a5,a4,80008ad4 <__memset+0x1dc>
    80008950:	00b501a3          	sb	a1,3(a0)
    80008954:	00400713          	li	a4,4
    80008958:	1ae78263          	beq	a5,a4,80008afc <__memset+0x204>
    8000895c:	00b50223          	sb	a1,4(a0)
    80008960:	00500713          	li	a4,5
    80008964:	1ae78063          	beq	a5,a4,80008b04 <__memset+0x20c>
    80008968:	00b502a3          	sb	a1,5(a0)
    8000896c:	00700713          	li	a4,7
    80008970:	18e79e63          	bne	a5,a4,80008b0c <__memset+0x214>
    80008974:	00b50323          	sb	a1,6(a0)
    80008978:	00700e93          	li	t4,7
    8000897c:	00859713          	slli	a4,a1,0x8
    80008980:	00e5e733          	or	a4,a1,a4
    80008984:	01059e13          	slli	t3,a1,0x10
    80008988:	01c76e33          	or	t3,a4,t3
    8000898c:	01859313          	slli	t1,a1,0x18
    80008990:	006e6333          	or	t1,t3,t1
    80008994:	02059893          	slli	a7,a1,0x20
    80008998:	40f60e3b          	subw	t3,a2,a5
    8000899c:	011368b3          	or	a7,t1,a7
    800089a0:	02859813          	slli	a6,a1,0x28
    800089a4:	0108e833          	or	a6,a7,a6
    800089a8:	03059693          	slli	a3,a1,0x30
    800089ac:	003e589b          	srliw	a7,t3,0x3
    800089b0:	00d866b3          	or	a3,a6,a3
    800089b4:	03859713          	slli	a4,a1,0x38
    800089b8:	00389813          	slli	a6,a7,0x3
    800089bc:	00f507b3          	add	a5,a0,a5
    800089c0:	00e6e733          	or	a4,a3,a4
    800089c4:	000e089b          	sext.w	a7,t3
    800089c8:	00f806b3          	add	a3,a6,a5
    800089cc:	00e7b023          	sd	a4,0(a5)
    800089d0:	00878793          	addi	a5,a5,8
    800089d4:	fed79ce3          	bne	a5,a3,800089cc <__memset+0xd4>
    800089d8:	ff8e7793          	andi	a5,t3,-8
    800089dc:	0007871b          	sext.w	a4,a5
    800089e0:	01d787bb          	addw	a5,a5,t4
    800089e4:	0ce88e63          	beq	a7,a4,80008ac0 <__memset+0x1c8>
    800089e8:	00f50733          	add	a4,a0,a5
    800089ec:	00b70023          	sb	a1,0(a4)
    800089f0:	0017871b          	addiw	a4,a5,1
    800089f4:	0cc77663          	bgeu	a4,a2,80008ac0 <__memset+0x1c8>
    800089f8:	00e50733          	add	a4,a0,a4
    800089fc:	00b70023          	sb	a1,0(a4)
    80008a00:	0027871b          	addiw	a4,a5,2
    80008a04:	0ac77e63          	bgeu	a4,a2,80008ac0 <__memset+0x1c8>
    80008a08:	00e50733          	add	a4,a0,a4
    80008a0c:	00b70023          	sb	a1,0(a4)
    80008a10:	0037871b          	addiw	a4,a5,3
    80008a14:	0ac77663          	bgeu	a4,a2,80008ac0 <__memset+0x1c8>
    80008a18:	00e50733          	add	a4,a0,a4
    80008a1c:	00b70023          	sb	a1,0(a4)
    80008a20:	0047871b          	addiw	a4,a5,4
    80008a24:	08c77e63          	bgeu	a4,a2,80008ac0 <__memset+0x1c8>
    80008a28:	00e50733          	add	a4,a0,a4
    80008a2c:	00b70023          	sb	a1,0(a4)
    80008a30:	0057871b          	addiw	a4,a5,5
    80008a34:	08c77663          	bgeu	a4,a2,80008ac0 <__memset+0x1c8>
    80008a38:	00e50733          	add	a4,a0,a4
    80008a3c:	00b70023          	sb	a1,0(a4)
    80008a40:	0067871b          	addiw	a4,a5,6
    80008a44:	06c77e63          	bgeu	a4,a2,80008ac0 <__memset+0x1c8>
    80008a48:	00e50733          	add	a4,a0,a4
    80008a4c:	00b70023          	sb	a1,0(a4)
    80008a50:	0077871b          	addiw	a4,a5,7
    80008a54:	06c77663          	bgeu	a4,a2,80008ac0 <__memset+0x1c8>
    80008a58:	00e50733          	add	a4,a0,a4
    80008a5c:	00b70023          	sb	a1,0(a4)
    80008a60:	0087871b          	addiw	a4,a5,8
    80008a64:	04c77e63          	bgeu	a4,a2,80008ac0 <__memset+0x1c8>
    80008a68:	00e50733          	add	a4,a0,a4
    80008a6c:	00b70023          	sb	a1,0(a4)
    80008a70:	0097871b          	addiw	a4,a5,9
    80008a74:	04c77663          	bgeu	a4,a2,80008ac0 <__memset+0x1c8>
    80008a78:	00e50733          	add	a4,a0,a4
    80008a7c:	00b70023          	sb	a1,0(a4)
    80008a80:	00a7871b          	addiw	a4,a5,10
    80008a84:	02c77e63          	bgeu	a4,a2,80008ac0 <__memset+0x1c8>
    80008a88:	00e50733          	add	a4,a0,a4
    80008a8c:	00b70023          	sb	a1,0(a4)
    80008a90:	00b7871b          	addiw	a4,a5,11
    80008a94:	02c77663          	bgeu	a4,a2,80008ac0 <__memset+0x1c8>
    80008a98:	00e50733          	add	a4,a0,a4
    80008a9c:	00b70023          	sb	a1,0(a4)
    80008aa0:	00c7871b          	addiw	a4,a5,12
    80008aa4:	00c77e63          	bgeu	a4,a2,80008ac0 <__memset+0x1c8>
    80008aa8:	00e50733          	add	a4,a0,a4
    80008aac:	00b70023          	sb	a1,0(a4)
    80008ab0:	00d7879b          	addiw	a5,a5,13
    80008ab4:	00c7f663          	bgeu	a5,a2,80008ac0 <__memset+0x1c8>
    80008ab8:	00f507b3          	add	a5,a0,a5
    80008abc:	00b78023          	sb	a1,0(a5)
    80008ac0:	00813403          	ld	s0,8(sp)
    80008ac4:	01010113          	addi	sp,sp,16
    80008ac8:	00008067          	ret
    80008acc:	00b00693          	li	a3,11
    80008ad0:	e55ff06f          	j	80008924 <__memset+0x2c>
    80008ad4:	00300e93          	li	t4,3
    80008ad8:	ea5ff06f          	j	8000897c <__memset+0x84>
    80008adc:	00100e93          	li	t4,1
    80008ae0:	e9dff06f          	j	8000897c <__memset+0x84>
    80008ae4:	00000e93          	li	t4,0
    80008ae8:	e95ff06f          	j	8000897c <__memset+0x84>
    80008aec:	00000793          	li	a5,0
    80008af0:	ef9ff06f          	j	800089e8 <__memset+0xf0>
    80008af4:	00200e93          	li	t4,2
    80008af8:	e85ff06f          	j	8000897c <__memset+0x84>
    80008afc:	00400e93          	li	t4,4
    80008b00:	e7dff06f          	j	8000897c <__memset+0x84>
    80008b04:	00500e93          	li	t4,5
    80008b08:	e75ff06f          	j	8000897c <__memset+0x84>
    80008b0c:	00600e93          	li	t4,6
    80008b10:	e6dff06f          	j	8000897c <__memset+0x84>

0000000080008b14 <__memmove>:
    80008b14:	ff010113          	addi	sp,sp,-16
    80008b18:	00813423          	sd	s0,8(sp)
    80008b1c:	01010413          	addi	s0,sp,16
    80008b20:	0e060863          	beqz	a2,80008c10 <__memmove+0xfc>
    80008b24:	fff6069b          	addiw	a3,a2,-1
    80008b28:	0006881b          	sext.w	a6,a3
    80008b2c:	0ea5e863          	bltu	a1,a0,80008c1c <__memmove+0x108>
    80008b30:	00758713          	addi	a4,a1,7
    80008b34:	00a5e7b3          	or	a5,a1,a0
    80008b38:	40a70733          	sub	a4,a4,a0
    80008b3c:	0077f793          	andi	a5,a5,7
    80008b40:	00f73713          	sltiu	a4,a4,15
    80008b44:	00174713          	xori	a4,a4,1
    80008b48:	0017b793          	seqz	a5,a5
    80008b4c:	00e7f7b3          	and	a5,a5,a4
    80008b50:	10078863          	beqz	a5,80008c60 <__memmove+0x14c>
    80008b54:	00900793          	li	a5,9
    80008b58:	1107f463          	bgeu	a5,a6,80008c60 <__memmove+0x14c>
    80008b5c:	0036581b          	srliw	a6,a2,0x3
    80008b60:	fff8081b          	addiw	a6,a6,-1
    80008b64:	02081813          	slli	a6,a6,0x20
    80008b68:	01d85893          	srli	a7,a6,0x1d
    80008b6c:	00858813          	addi	a6,a1,8
    80008b70:	00058793          	mv	a5,a1
    80008b74:	00050713          	mv	a4,a0
    80008b78:	01088833          	add	a6,a7,a6
    80008b7c:	0007b883          	ld	a7,0(a5)
    80008b80:	00878793          	addi	a5,a5,8
    80008b84:	00870713          	addi	a4,a4,8
    80008b88:	ff173c23          	sd	a7,-8(a4)
    80008b8c:	ff0798e3          	bne	a5,a6,80008b7c <__memmove+0x68>
    80008b90:	ff867713          	andi	a4,a2,-8
    80008b94:	02071793          	slli	a5,a4,0x20
    80008b98:	0207d793          	srli	a5,a5,0x20
    80008b9c:	00f585b3          	add	a1,a1,a5
    80008ba0:	40e686bb          	subw	a3,a3,a4
    80008ba4:	00f507b3          	add	a5,a0,a5
    80008ba8:	06e60463          	beq	a2,a4,80008c10 <__memmove+0xfc>
    80008bac:	0005c703          	lbu	a4,0(a1)
    80008bb0:	00e78023          	sb	a4,0(a5)
    80008bb4:	04068e63          	beqz	a3,80008c10 <__memmove+0xfc>
    80008bb8:	0015c603          	lbu	a2,1(a1)
    80008bbc:	00100713          	li	a4,1
    80008bc0:	00c780a3          	sb	a2,1(a5)
    80008bc4:	04e68663          	beq	a3,a4,80008c10 <__memmove+0xfc>
    80008bc8:	0025c603          	lbu	a2,2(a1)
    80008bcc:	00200713          	li	a4,2
    80008bd0:	00c78123          	sb	a2,2(a5)
    80008bd4:	02e68e63          	beq	a3,a4,80008c10 <__memmove+0xfc>
    80008bd8:	0035c603          	lbu	a2,3(a1)
    80008bdc:	00300713          	li	a4,3
    80008be0:	00c781a3          	sb	a2,3(a5)
    80008be4:	02e68663          	beq	a3,a4,80008c10 <__memmove+0xfc>
    80008be8:	0045c603          	lbu	a2,4(a1)
    80008bec:	00400713          	li	a4,4
    80008bf0:	00c78223          	sb	a2,4(a5)
    80008bf4:	00e68e63          	beq	a3,a4,80008c10 <__memmove+0xfc>
    80008bf8:	0055c603          	lbu	a2,5(a1)
    80008bfc:	00500713          	li	a4,5
    80008c00:	00c782a3          	sb	a2,5(a5)
    80008c04:	00e68663          	beq	a3,a4,80008c10 <__memmove+0xfc>
    80008c08:	0065c703          	lbu	a4,6(a1)
    80008c0c:	00e78323          	sb	a4,6(a5)
    80008c10:	00813403          	ld	s0,8(sp)
    80008c14:	01010113          	addi	sp,sp,16
    80008c18:	00008067          	ret
    80008c1c:	02061713          	slli	a4,a2,0x20
    80008c20:	02075713          	srli	a4,a4,0x20
    80008c24:	00e587b3          	add	a5,a1,a4
    80008c28:	f0f574e3          	bgeu	a0,a5,80008b30 <__memmove+0x1c>
    80008c2c:	02069613          	slli	a2,a3,0x20
    80008c30:	02065613          	srli	a2,a2,0x20
    80008c34:	fff64613          	not	a2,a2
    80008c38:	00e50733          	add	a4,a0,a4
    80008c3c:	00c78633          	add	a2,a5,a2
    80008c40:	fff7c683          	lbu	a3,-1(a5)
    80008c44:	fff78793          	addi	a5,a5,-1
    80008c48:	fff70713          	addi	a4,a4,-1
    80008c4c:	00d70023          	sb	a3,0(a4)
    80008c50:	fec798e3          	bne	a5,a2,80008c40 <__memmove+0x12c>
    80008c54:	00813403          	ld	s0,8(sp)
    80008c58:	01010113          	addi	sp,sp,16
    80008c5c:	00008067          	ret
    80008c60:	02069713          	slli	a4,a3,0x20
    80008c64:	02075713          	srli	a4,a4,0x20
    80008c68:	00170713          	addi	a4,a4,1
    80008c6c:	00e50733          	add	a4,a0,a4
    80008c70:	00050793          	mv	a5,a0
    80008c74:	0005c683          	lbu	a3,0(a1)
    80008c78:	00178793          	addi	a5,a5,1
    80008c7c:	00158593          	addi	a1,a1,1
    80008c80:	fed78fa3          	sb	a3,-1(a5)
    80008c84:	fee798e3          	bne	a5,a4,80008c74 <__memmove+0x160>
    80008c88:	f89ff06f          	j	80008c10 <__memmove+0xfc>

0000000080008c8c <__putc>:
    80008c8c:	fe010113          	addi	sp,sp,-32
    80008c90:	00813823          	sd	s0,16(sp)
    80008c94:	00113c23          	sd	ra,24(sp)
    80008c98:	02010413          	addi	s0,sp,32
    80008c9c:	00050793          	mv	a5,a0
    80008ca0:	fef40593          	addi	a1,s0,-17
    80008ca4:	00100613          	li	a2,1
    80008ca8:	00000513          	li	a0,0
    80008cac:	fef407a3          	sb	a5,-17(s0)
    80008cb0:	fffff097          	auipc	ra,0xfffff
    80008cb4:	b3c080e7          	jalr	-1220(ra) # 800077ec <console_write>
    80008cb8:	01813083          	ld	ra,24(sp)
    80008cbc:	01013403          	ld	s0,16(sp)
    80008cc0:	02010113          	addi	sp,sp,32
    80008cc4:	00008067          	ret

0000000080008cc8 <__getc>:
    80008cc8:	fe010113          	addi	sp,sp,-32
    80008ccc:	00813823          	sd	s0,16(sp)
    80008cd0:	00113c23          	sd	ra,24(sp)
    80008cd4:	02010413          	addi	s0,sp,32
    80008cd8:	fe840593          	addi	a1,s0,-24
    80008cdc:	00100613          	li	a2,1
    80008ce0:	00000513          	li	a0,0
    80008ce4:	fffff097          	auipc	ra,0xfffff
    80008ce8:	ae8080e7          	jalr	-1304(ra) # 800077cc <console_read>
    80008cec:	fe844503          	lbu	a0,-24(s0)
    80008cf0:	01813083          	ld	ra,24(sp)
    80008cf4:	01013403          	ld	s0,16(sp)
    80008cf8:	02010113          	addi	sp,sp,32
    80008cfc:	00008067          	ret

0000000080008d00 <console_handler>:
    80008d00:	fe010113          	addi	sp,sp,-32
    80008d04:	00813823          	sd	s0,16(sp)
    80008d08:	00113c23          	sd	ra,24(sp)
    80008d0c:	00913423          	sd	s1,8(sp)
    80008d10:	02010413          	addi	s0,sp,32
    80008d14:	14202773          	csrr	a4,scause
    80008d18:	100027f3          	csrr	a5,sstatus
    80008d1c:	0027f793          	andi	a5,a5,2
    80008d20:	06079e63          	bnez	a5,80008d9c <console_handler+0x9c>
    80008d24:	00074c63          	bltz	a4,80008d3c <console_handler+0x3c>
    80008d28:	01813083          	ld	ra,24(sp)
    80008d2c:	01013403          	ld	s0,16(sp)
    80008d30:	00813483          	ld	s1,8(sp)
    80008d34:	02010113          	addi	sp,sp,32
    80008d38:	00008067          	ret
    80008d3c:	0ff77713          	andi	a4,a4,255
    80008d40:	00900793          	li	a5,9
    80008d44:	fef712e3          	bne	a4,a5,80008d28 <console_handler+0x28>
    80008d48:	ffffe097          	auipc	ra,0xffffe
    80008d4c:	6dc080e7          	jalr	1756(ra) # 80007424 <plic_claim>
    80008d50:	00a00793          	li	a5,10
    80008d54:	00050493          	mv	s1,a0
    80008d58:	02f50c63          	beq	a0,a5,80008d90 <console_handler+0x90>
    80008d5c:	fc0506e3          	beqz	a0,80008d28 <console_handler+0x28>
    80008d60:	00050593          	mv	a1,a0
    80008d64:	00001517          	auipc	a0,0x1
    80008d68:	93c50513          	addi	a0,a0,-1732 # 800096a0 <CONSOLE_STATUS+0x690>
    80008d6c:	fffff097          	auipc	ra,0xfffff
    80008d70:	afc080e7          	jalr	-1284(ra) # 80007868 <__printf>
    80008d74:	01013403          	ld	s0,16(sp)
    80008d78:	01813083          	ld	ra,24(sp)
    80008d7c:	00048513          	mv	a0,s1
    80008d80:	00813483          	ld	s1,8(sp)
    80008d84:	02010113          	addi	sp,sp,32
    80008d88:	ffffe317          	auipc	t1,0xffffe
    80008d8c:	6d430067          	jr	1748(t1) # 8000745c <plic_complete>
    80008d90:	fffff097          	auipc	ra,0xfffff
    80008d94:	3e0080e7          	jalr	992(ra) # 80008170 <uartintr>
    80008d98:	fddff06f          	j	80008d74 <console_handler+0x74>
    80008d9c:	00001517          	auipc	a0,0x1
    80008da0:	a0450513          	addi	a0,a0,-1532 # 800097a0 <digits+0x78>
    80008da4:	fffff097          	auipc	ra,0xfffff
    80008da8:	a68080e7          	jalr	-1432(ra) # 8000780c <panic>
	...
