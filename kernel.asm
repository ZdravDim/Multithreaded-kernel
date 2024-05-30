
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	de013103          	ld	sp,-544(sp) # 8000bde0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	719060ef          	jal	ra,80006f34 <start>

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
    80001080:	5dd010ef          	jal	ra,80002e5c <_ZN5RiscV22handle_supervisor_trapEv>

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
    800016a8:	fe010113          	addi	sp,sp,-32
    800016ac:	00113c23          	sd	ra,24(sp)
    800016b0:	00813823          	sd	s0,16(sp)
    800016b4:	00913423          	sd	s1,8(sp)
    800016b8:	02010413          	addi	s0,sp,32
    800016bc:	00050493          	mv	s1,a0
    800016c0:	0000a797          	auipc	a5,0xa
    800016c4:	4b078793          	addi	a5,a5,1200 # 8000bb70 <_ZTV3Sem+0x10>
    800016c8:	00f53023          	sd	a5,0(a0) # 1000 <_entry-0x7ffff000>
    blocked_threads -> free();
    800016cc:	00853503          	ld	a0,8(a0)
    800016d0:	00002097          	auipc	ra,0x2
    800016d4:	c94080e7          	jalr	-876(ra) # 80003364 <_ZN10ThreadList4freeEv>
    delete blocked_threads;
    800016d8:	0084b503          	ld	a0,8(s1)
    800016dc:	00050663          	beqz	a0,800016e8 <_ZN3SemD1Ev+0x40>
    800016e0:	00002097          	auipc	ra,0x2
    800016e4:	b48080e7          	jalr	-1208(ra) # 80003228 <_ZN10ThreadListdlEPv>
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
    80001714:	0000a797          	auipc	a5,0xa
    80001718:	45c78793          	addi	a5,a5,1116 # 8000bb70 <_ZTV3Sem+0x10>
    8000171c:	00f53023          	sd	a5,0(a0)
    80001720:	00b52823          	sw	a1,16(a0)
    blocked_threads = new ThreadList();
    80001724:	01000513          	li	a0,16
    80001728:	00002097          	auipc	ra,0x2
    8000172c:	ad0080e7          	jalr	-1328(ra) # 800031f8 <_ZN10ThreadListnwEm>
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
    80001768:	0000a917          	auipc	s2,0xa
    8000176c:	69093903          	ld	s2,1680(s2) # 8000bdf8 <_GLOBAL_OFFSET_TABLE_+0x50>
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
    8000178c:	af8080e7          	jalr	-1288(ra) # 80003280 <_ZN10ThreadList9push_backEP3TCB>
    TCB::running = Scheduler::get();
    80001790:	00001097          	auipc	ra,0x1
    80001794:	378080e7          	jalr	888(ra) # 80002b08 <_ZN9Scheduler3getEv>
    80001798:	00050593          	mv	a1,a0
    8000179c:	00a93023          	sd	a0,0(s2)
    TCB::yield(old, TCB::running);
    800017a0:	00048513          	mv	a0,s1
    800017a4:	00002097          	auipc	ra,0x2
    800017a8:	cf0080e7          	jalr	-784(ra) # 80003494 <_ZN3TCB5yieldEPS_S0_>
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
    800017e0:	b34080e7          	jalr	-1228(ra) # 80003310 <_ZN10ThreadList12remove_firstEv>
    800017e4:	00050493          	mv	s1,a0
    if (thread -> timed_wait) Scheduler::remove_from_sleep(thread);
    800017e8:	04854783          	lbu	a5,72(a0)
    800017ec:	02079c63          	bnez	a5,80001824 <_ZN3Sem7unblockEv+0x60>
    thread -> clear_from_timed_wait(false);
    800017f0:	00000593          	li	a1,0
    800017f4:	00048513          	mv	a0,s1
    800017f8:	00002097          	auipc	ra,0x2
    800017fc:	014080e7          	jalr	20(ra) # 8000380c <_ZN3TCB21clear_from_timed_waitEb>
    thread -> status = TCB::RUNNABLE;
    80001800:	0204a023          	sw	zero,32(s1)
    Scheduler::put(thread);
    80001804:	00048513          	mv	a0,s1
    80001808:	00001097          	auipc	ra,0x1
    8000180c:	290080e7          	jalr	656(ra) # 80002a98 <_ZN9Scheduler3putEP3TCB>
}
    80001810:	01813083          	ld	ra,24(sp)
    80001814:	01013403          	ld	s0,16(sp)
    80001818:	00813483          	ld	s1,8(sp)
    8000181c:	02010113          	addi	sp,sp,32
    80001820:	00008067          	ret
    if (thread -> timed_wait) Scheduler::remove_from_sleep(thread);
    80001824:	00001097          	auipc	ra,0x1
    80001828:	350080e7          	jalr	848(ra) # 80002b74 <_ZN9Scheduler17remove_from_sleepEP3TCB>
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
    80001854:	918080e7          	jalr	-1768(ra) # 80003168 <_ZN10ThreadList9get_firstEv>
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
    80001960:	0000a797          	auipc	a5,0xa
    80001964:	4987b783          	ld	a5,1176(a5) # 8000bdf8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001968:	0007b903          	ld	s2,0(a5)
    thread -> timed_wait = true;
    8000196c:	00100793          	li	a5,1
    80001970:	04f90423          	sb	a5,72(s2)
    Scheduler::put_to_sleep(time);
    80001974:	00058513          	mv	a0,a1
    80001978:	00001097          	auipc	ra,0x1
    8000197c:	300080e7          	jalr	768(ra) # 80002c78 <_ZN9Scheduler12put_to_sleepEm>
    int status = wait(handle);
    80001980:	00048513          	mv	a0,s1
    80001984:	00000097          	auipc	ra,0x0
    80001988:	f18080e7          	jalr	-232(ra) # 8000189c <_ZN3Sem4waitEPS_>
    8000198c:	00050493          	mv	s1,a0
    Scheduler::remove_from_sleep(thread);
    80001990:	00090513          	mv	a0,s2
    80001994:	00001097          	auipc	ra,0x1
    80001998:	1e0080e7          	jalr	480(ra) # 80002b74 <_ZN9Scheduler17remove_from_sleepEP3TCB>
    thread -> clear_from_timed_wait(false);
    8000199c:	00000593          	li	a1,0
    800019a0:	00090513          	mv	a0,s2
    800019a4:	00002097          	auipc	ra,0x2
    800019a8:	e68080e7          	jalr	-408(ra) # 8000380c <_ZN3TCB21clear_from_timed_waitEb>
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
    80001a14:	e18080e7          	jalr	-488(ra) # 80002828 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80001a18:	00001097          	auipc	ra,0x1
    80001a1c:	a4c080e7          	jalr	-1460(ra) # 80002464 <_ZN15MemoryAllocator9mem_allocEm>
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
    80001a44:	b98080e7          	jalr	-1128(ra) # 800025d8 <_ZN15MemoryAllocator8mem_freeEPv>
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
    80001adc:	0000b097          	auipc	ra,0xb
    80001ae0:	4ec080e7          	jalr	1260(ra) # 8000cfc8 <_Unwind_Resume>

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
    while (zero_count--) putc('0');
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
    80001b3c:	2e8080e7          	jalr	744(ra) # 80001e20 <_ZN3Con11getc_outputEv>
            *(char *) CONSOLE_TX_DATA = c;
    80001b40:	0000a797          	auipc	a5,0xa
    80001b44:	2907b783          	ld	a5,656(a5) # 8000bdd0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001b48:	0007b783          	ld	a5,0(a5)
    80001b4c:	00a78023          	sb	a0,0(a5)
        while (*(char *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT) {
    80001b50:	0000a797          	auipc	a5,0xa
    80001b54:	2687b783          	ld	a5,616(a5) # 8000bdb8 <_GLOBAL_OFFSET_TABLE_+0x10>
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

0000000080001b74 <_Z15userMainWrapperPv>:
}

void userMain();
void userMainWrapper(void *args) {
    80001b74:	ff010113          	addi	sp,sp,-16
    80001b78:	00113423          	sd	ra,8(sp)
    80001b7c:	00813023          	sd	s0,0(sp)
    80001b80:	01010413          	addi	s0,sp,16
    userMain();
    80001b84:	00005097          	auipc	ra,0x5
    80001b88:	b48080e7          	jalr	-1208(ra) # 800066cc <_Z8userMainv>
}
    80001b8c:	00813083          	ld	ra,8(sp)
    80001b90:	00013403          	ld	s0,0(sp)
    80001b94:	01010113          	addi	sp,sp,16
    80001b98:	00008067          	ret

0000000080001b9c <_Z11printNumberm>:
void printNumber(uint64 num) {
    80001b9c:	fd010113          	addi	sp,sp,-48
    80001ba0:	02113423          	sd	ra,40(sp)
    80001ba4:	02813023          	sd	s0,32(sp)
    80001ba8:	00913c23          	sd	s1,24(sp)
    80001bac:	01213823          	sd	s2,16(sp)
    80001bb0:	01313423          	sd	s3,8(sp)
    80001bb4:	03010413          	addi	s0,sp,48
    80001bb8:	00050913          	mv	s2,a0
    putc('\n');
    80001bbc:	00a00513          	li	a0,10
    80001bc0:	00000097          	auipc	ra,0x0
    80001bc4:	aac080e7          	jalr	-1364(ra) # 8000166c <_Z4putcc>
    putc('N');
    80001bc8:	04e00513          	li	a0,78
    80001bcc:	00000097          	auipc	ra,0x0
    80001bd0:	aa0080e7          	jalr	-1376(ra) # 8000166c <_Z4putcc>
    putc(':');
    80001bd4:	03a00513          	li	a0,58
    80001bd8:	00000097          	auipc	ra,0x0
    80001bdc:	a94080e7          	jalr	-1388(ra) # 8000166c <_Z4putcc>
    putc(' ');
    80001be0:	02000513          	li	a0,32
    80001be4:	00000097          	auipc	ra,0x0
    80001be8:	a88080e7          	jalr	-1400(ra) # 8000166c <_Z4putcc>
    if (!num) putc('0');
    80001bec:	00090863          	beqz	s2,80001bfc <_Z11printNumberm+0x60>
    uint64 num2 = 0, zero_count = 0;
    80001bf0:	00000993          	li	s3,0
    80001bf4:	00000493          	li	s1,0
    80001bf8:	01c0006f          	j	80001c14 <_Z11printNumberm+0x78>
    if (!num) putc('0');
    80001bfc:	03000513          	li	a0,48
    80001c00:	00000097          	auipc	ra,0x0
    80001c04:	a6c080e7          	jalr	-1428(ra) # 8000166c <_Z4putcc>
    80001c08:	fe9ff06f          	j	80001bf0 <_Z11printNumberm+0x54>
        num /= 10;
    80001c0c:	00a00793          	li	a5,10
    80001c10:	02f95933          	divu	s2,s2,a5
    while (num) {
    80001c14:	02090463          	beqz	s2,80001c3c <_Z11printNumberm+0xa0>
        num2 *= 10;
    80001c18:	00249793          	slli	a5,s1,0x2
    80001c1c:	009784b3          	add	s1,a5,s1
    80001c20:	00149793          	slli	a5,s1,0x1
        num2 += num % 10;
    80001c24:	00a00493          	li	s1,10
    80001c28:	029974b3          	remu	s1,s2,s1
    80001c2c:	00f484b3          	add	s1,s1,a5
        if (!num2) ++zero_count;
    80001c30:	fc049ee3          	bnez	s1,80001c0c <_Z11printNumberm+0x70>
    80001c34:	00198993          	addi	s3,s3,1
    80001c38:	fd5ff06f          	j	80001c0c <_Z11printNumberm+0x70>
    while (num2) {
    80001c3c:	02048063          	beqz	s1,80001c5c <_Z11printNumberm+0xc0>
        putc(num2 % 10 + '0');
    80001c40:	00a00913          	li	s2,10
    80001c44:	0324f533          	remu	a0,s1,s2
    80001c48:	03050513          	addi	a0,a0,48
    80001c4c:	00000097          	auipc	ra,0x0
    80001c50:	a20080e7          	jalr	-1504(ra) # 8000166c <_Z4putcc>
        num2 /= 10;
    80001c54:	0324d4b3          	divu	s1,s1,s2
    while (num2) {
    80001c58:	fe5ff06f          	j	80001c3c <_Z11printNumberm+0xa0>
    while (zero_count--) putc('0');
    80001c5c:	fff98493          	addi	s1,s3,-1
    80001c60:	00098c63          	beqz	s3,80001c78 <_Z11printNumberm+0xdc>
    80001c64:	03000513          	li	a0,48
    80001c68:	00000097          	auipc	ra,0x0
    80001c6c:	a04080e7          	jalr	-1532(ra) # 8000166c <_Z4putcc>
    80001c70:	00048993          	mv	s3,s1
    80001c74:	fe9ff06f          	j	80001c5c <_Z11printNumberm+0xc0>
}
    80001c78:	02813083          	ld	ra,40(sp)
    80001c7c:	02013403          	ld	s0,32(sp)
    80001c80:	01813483          	ld	s1,24(sp)
    80001c84:	01013903          	ld	s2,16(sp)
    80001c88:	00813983          	ld	s3,8(sp)
    80001c8c:	03010113          	addi	sp,sp,48
    80001c90:	00008067          	ret

0000000080001c94 <main>:
        printNumber(value--);
        if (value < 0) terminate();
    }
};

int main() {
    80001c94:	fd010113          	addi	sp,sp,-48
    80001c98:	02113423          	sd	ra,40(sp)
    80001c9c:	02813023          	sd	s0,32(sp)
    80001ca0:	03010413          	addi	s0,sp,48
    /// Set interrupt routine handler
    RiscV::write_stvec((uint64) &RiscV::handle_interrupt);
    80001ca4:	0000a797          	auipc	a5,0xa
    80001ca8:	1347b783          	ld	a5,308(a5) # 8000bdd8 <_GLOBAL_OFFSET_TABLE_+0x30>
    __asm__ volatile ("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void RiscV::write_stvec(uint64 val) {
    __asm__ volatile ("csrw stvec, %0" : : "r"(val));
    80001cac:	10579073          	csrw	stvec,a5

    /// Initialization
    MemoryAllocator::initialize();
    80001cb0:	00001097          	auipc	ra,0x1
    80001cb4:	b98080e7          	jalr	-1128(ra) # 80002848 <_ZN15MemoryAllocator10initializeEv>
    Con::initialize();
    80001cb8:	00000097          	auipc	ra,0x0
    80001cbc:	070080e7          	jalr	112(ra) # 80001d28 <_ZN3Con10initializeEv>

    thread_t threads[3];

    /// Main Thread
    thread_create(&threads[0], nullptr, nullptr);
    80001cc0:	00000613          	li	a2,0
    80001cc4:	00000593          	li	a1,0
    80001cc8:	fd840513          	addi	a0,s0,-40
    80001ccc:	fffff097          	auipc	ra,0xfffff
    80001cd0:	62c080e7          	jalr	1580(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running = threads[0];
    80001cd4:	fd843703          	ld	a4,-40(s0)
    80001cd8:	0000a797          	auipc	a5,0xa
    80001cdc:	1207b783          	ld	a5,288(a5) # 8000bdf8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001ce0:	00e7b023          	sd	a4,0(a5)
inline void RiscV::write_sip(uint64 val) {
    __asm__ volatile ("csrw sip, %0" : : "r"(val));
}

inline void RiscV::ms_sstatus(uint64 mask) {
    __asm__ volatile ("csrs sstatus, %0" : : "r"(mask));
    80001ce4:	00200793          	li	a5,2
    80001ce8:	1007a073          	csrs	sstatus,a5

    /// Enable external interrupts
    RiscV::ms_sstatus(RiscV::SSTATUS_SIE);

    /// Kernel Thread for console output
    thread_create(&threads[1], kernelConsoleOutput, nullptr);
    80001cec:	00000613          	li	a2,0
    80001cf0:	00000597          	auipc	a1,0x0
    80001cf4:	e3458593          	addi	a1,a1,-460 # 80001b24 <_Z19kernelConsoleOutputPv>
    80001cf8:	fe040513          	addi	a0,s0,-32
    80001cfc:	fffff097          	auipc	ra,0xfffff
    80001d00:	5fc080e7          	jalr	1532(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    /// Test Periodic Thread
//    PeriodicThread *periodic = new PeriodicWorker();
//    periodic -> start();

    /// Test Everything
    thread_create(&threads[2], userMainWrapper, nullptr);
    80001d04:	00000613          	li	a2,0
    80001d08:	00000597          	auipc	a1,0x0
    80001d0c:	e6c58593          	addi	a1,a1,-404 # 80001b74 <_Z15userMainWrapperPv>
    80001d10:	fe840513          	addi	a0,s0,-24
    80001d14:	fffff097          	auipc	ra,0xfffff
    80001d18:	5e4080e7          	jalr	1508(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    while (true) thread_dispatch();
    80001d1c:	fffff097          	auipc	ra,0xfffff
    80001d20:	6b0080e7          	jalr	1712(ra) # 800013cc <_Z15thread_dispatchv>
    80001d24:	ff9ff06f          	j	80001d1c <main+0x88>

0000000080001d28 <_ZN3Con10initializeEv>:
bool Con::initialized = false;
BoundedBuffer* Con::input_buffer = nullptr;
BoundedBuffer* Con::output_buffer = nullptr;

void Con::initialize() {
    if (!initialized) {
    80001d28:	0000a797          	auipc	a5,0xa
    80001d2c:	1287c783          	lbu	a5,296(a5) # 8000be50 <_ZN3Con11initializedE>
    80001d30:	00078463          	beqz	a5,80001d38 <_ZN3Con10initializeEv+0x10>
    80001d34:	00008067          	ret
void Con::initialize() {
    80001d38:	fe010113          	addi	sp,sp,-32
    80001d3c:	00113c23          	sd	ra,24(sp)
    80001d40:	00813823          	sd	s0,16(sp)
    80001d44:	00913423          	sd	s1,8(sp)
    80001d48:	01213023          	sd	s2,0(sp)
    80001d4c:	02010413          	addi	s0,sp,32
        initialized = true;
    80001d50:	00100793          	li	a5,1
    80001d54:	0000a717          	auipc	a4,0xa
    80001d58:	0ef70e23          	sb	a5,252(a4) # 8000be50 <_ZN3Con11initializedE>
        input_buffer = new BoundedBuffer();
    80001d5c:	21000513          	li	a0,528
    80001d60:	00001097          	auipc	ra,0x1
    80001d64:	c08080e7          	jalr	-1016(ra) # 80002968 <_ZN13BoundedBuffernwEm>
    80001d68:	00050493          	mv	s1,a0
    80001d6c:	00001097          	auipc	ra,0x1
    80001d70:	b64080e7          	jalr	-1180(ra) # 800028d0 <_ZN13BoundedBufferC1Ev>
    80001d74:	0000a797          	auipc	a5,0xa
    80001d78:	0e97b223          	sd	s1,228(a5) # 8000be58 <_ZN3Con12input_bufferE>
        output_buffer = new BoundedBuffer();
    80001d7c:	21000513          	li	a0,528
    80001d80:	00001097          	auipc	ra,0x1
    80001d84:	be8080e7          	jalr	-1048(ra) # 80002968 <_ZN13BoundedBuffernwEm>
    80001d88:	00050493          	mv	s1,a0
    80001d8c:	00001097          	auipc	ra,0x1
    80001d90:	b44080e7          	jalr	-1212(ra) # 800028d0 <_ZN13BoundedBufferC1Ev>
    80001d94:	0000a797          	auipc	a5,0xa
    80001d98:	0c97b623          	sd	s1,204(a5) # 8000be60 <_ZN3Con13output_bufferE>
    }
}
    80001d9c:	01813083          	ld	ra,24(sp)
    80001da0:	01013403          	ld	s0,16(sp)
    80001da4:	00813483          	ld	s1,8(sp)
    80001da8:	00013903          	ld	s2,0(sp)
    80001dac:	02010113          	addi	sp,sp,32
    80001db0:	00008067          	ret
    80001db4:	00050913          	mv	s2,a0
        input_buffer = new BoundedBuffer();
    80001db8:	00048513          	mv	a0,s1
    80001dbc:	00001097          	auipc	ra,0x1
    80001dc0:	bdc080e7          	jalr	-1060(ra) # 80002998 <_ZN13BoundedBufferdlEPv>
    80001dc4:	00090513          	mv	a0,s2
    80001dc8:	0000b097          	auipc	ra,0xb
    80001dcc:	200080e7          	jalr	512(ra) # 8000cfc8 <_Unwind_Resume>
    80001dd0:	00050913          	mv	s2,a0
        output_buffer = new BoundedBuffer();
    80001dd4:	00048513          	mv	a0,s1
    80001dd8:	00001097          	auipc	ra,0x1
    80001ddc:	bc0080e7          	jalr	-1088(ra) # 80002998 <_ZN13BoundedBufferdlEPv>
    80001de0:	00090513          	mv	a0,s2
    80001de4:	0000b097          	auipc	ra,0xb
    80001de8:	1e4080e7          	jalr	484(ra) # 8000cfc8 <_Unwind_Resume>

0000000080001dec <_ZN3Con11putc_outputEc>:

void Con::putc_output(char c) {
    80001dec:	ff010113          	addi	sp,sp,-16
    80001df0:	00113423          	sd	ra,8(sp)
    80001df4:	00813023          	sd	s0,0(sp)
    80001df8:	01010413          	addi	s0,sp,16
    80001dfc:	00050593          	mv	a1,a0
    output_buffer -> putc(c);
    80001e00:	0000a517          	auipc	a0,0xa
    80001e04:	06053503          	ld	a0,96(a0) # 8000be60 <_ZN3Con13output_bufferE>
    80001e08:	00001097          	auipc	ra,0x1
    80001e0c:	bb8080e7          	jalr	-1096(ra) # 800029c0 <_ZN13BoundedBuffer4putcEc>
}
    80001e10:	00813083          	ld	ra,8(sp)
    80001e14:	00013403          	ld	s0,0(sp)
    80001e18:	01010113          	addi	sp,sp,16
    80001e1c:	00008067          	ret

0000000080001e20 <_ZN3Con11getc_outputEv>:

char Con::getc_output() {
    80001e20:	ff010113          	addi	sp,sp,-16
    80001e24:	00113423          	sd	ra,8(sp)
    80001e28:	00813023          	sd	s0,0(sp)
    80001e2c:	01010413          	addi	s0,sp,16
    return output_buffer -> getc();
    80001e30:	0000a517          	auipc	a0,0xa
    80001e34:	03053503          	ld	a0,48(a0) # 8000be60 <_ZN3Con13output_bufferE>
    80001e38:	00001097          	auipc	ra,0x1
    80001e3c:	bf4080e7          	jalr	-1036(ra) # 80002a2c <_ZN13BoundedBuffer4getcEv>
}
    80001e40:	00813083          	ld	ra,8(sp)
    80001e44:	00013403          	ld	s0,0(sp)
    80001e48:	01010113          	addi	sp,sp,16
    80001e4c:	00008067          	ret

0000000080001e50 <_ZN3Con10putc_inputEc>:

void Con::putc_input(char c) {
    80001e50:	ff010113          	addi	sp,sp,-16
    80001e54:	00113423          	sd	ra,8(sp)
    80001e58:	00813023          	sd	s0,0(sp)
    80001e5c:	01010413          	addi	s0,sp,16
    80001e60:	00050593          	mv	a1,a0
    input_buffer -> putc(c);
    80001e64:	0000a517          	auipc	a0,0xa
    80001e68:	ff453503          	ld	a0,-12(a0) # 8000be58 <_ZN3Con12input_bufferE>
    80001e6c:	00001097          	auipc	ra,0x1
    80001e70:	b54080e7          	jalr	-1196(ra) # 800029c0 <_ZN13BoundedBuffer4putcEc>
}
    80001e74:	00813083          	ld	ra,8(sp)
    80001e78:	00013403          	ld	s0,0(sp)
    80001e7c:	01010113          	addi	sp,sp,16
    80001e80:	00008067          	ret

0000000080001e84 <_ZN3Con10getc_inputEv>:

char Con::getc_input() {
    80001e84:	ff010113          	addi	sp,sp,-16
    80001e88:	00113423          	sd	ra,8(sp)
    80001e8c:	00813023          	sd	s0,0(sp)
    80001e90:	01010413          	addi	s0,sp,16
    return input_buffer -> getc();
    80001e94:	0000a517          	auipc	a0,0xa
    80001e98:	fc453503          	ld	a0,-60(a0) # 8000be58 <_ZN3Con12input_bufferE>
    80001e9c:	00001097          	auipc	ra,0x1
    80001ea0:	b90080e7          	jalr	-1136(ra) # 80002a2c <_ZN13BoundedBuffer4getcEv>
    80001ea4:	00813083          	ld	ra,8(sp)
    80001ea8:	00013403          	ld	s0,0(sp)
    80001eac:	01010113          	addi	sp,sp,16
    80001eb0:	00008067          	ret

0000000080001eb4 <_ZN6Thread12start_helperEPv>:

Thread::~Thread() {
    if (myHandle -> is_finished()) delete myHandle;
}

void Thread::start_helper(void *args) {
    80001eb4:	ff010113          	addi	sp,sp,-16
    80001eb8:	00113423          	sd	ra,8(sp)
    80001ebc:	00813023          	sd	s0,0(sp)
    80001ec0:	01010413          	addi	s0,sp,16
    auto* thread = (Thread*) args;
    if (!thread -> body) thread -> run();
    80001ec4:	01053783          	ld	a5,16(a0)
    80001ec8:	00078e63          	beqz	a5,80001ee4 <_ZN6Thread12start_helperEPv+0x30>
    else thread -> body(thread -> arg);
    80001ecc:	01853503          	ld	a0,24(a0)
    80001ed0:	000780e7          	jalr	a5
}
    80001ed4:	00813083          	ld	ra,8(sp)
    80001ed8:	00013403          	ld	s0,0(sp)
    80001edc:	01010113          	addi	sp,sp,16
    80001ee0:	00008067          	ret
    if (!thread -> body) thread -> run();
    80001ee4:	00053783          	ld	a5,0(a0)
    80001ee8:	0107b783          	ld	a5,16(a5)
    80001eec:	000780e7          	jalr	a5
    80001ef0:	fe5ff06f          	j	80001ed4 <_ZN6Thread12start_helperEPv+0x20>

0000000080001ef4 <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    80001ef4:	fe010113          	addi	sp,sp,-32
    80001ef8:	00113c23          	sd	ra,24(sp)
    80001efc:	00813823          	sd	s0,16(sp)
    80001f00:	00913423          	sd	s1,8(sp)
    80001f04:	02010413          	addi	s0,sp,32
    80001f08:	00050493          	mv	s1,a0
    80001f0c:	0000a797          	auipc	a5,0xa
    80001f10:	c8c78793          	addi	a5,a5,-884 # 8000bb98 <_ZTV6Thread+0x10>
    80001f14:	00f53023          	sd	a5,0(a0)
    if (myHandle -> is_finished()) delete myHandle;
    80001f18:	00853503          	ld	a0,8(a0)
    80001f1c:	00002097          	auipc	ra,0x2
    80001f20:	8cc080e7          	jalr	-1844(ra) # 800037e8 <_ZNK3TCB11is_finishedEv>
    80001f24:	00050a63          	beqz	a0,80001f38 <_ZN6ThreadD1Ev+0x44>
    80001f28:	0084b503          	ld	a0,8(s1)
    80001f2c:	00050663          	beqz	a0,80001f38 <_ZN6ThreadD1Ev+0x44>
    80001f30:	00001097          	auipc	ra,0x1
    80001f34:	78c080e7          	jalr	1932(ra) # 800036bc <_ZN3TCBdlEPv>
}
    80001f38:	01813083          	ld	ra,24(sp)
    80001f3c:	01013403          	ld	s0,16(sp)
    80001f40:	00813483          	ld	s1,8(sp)
    80001f44:	02010113          	addi	sp,sp,32
    80001f48:	00008067          	ret

0000000080001f4c <_ZN14PeriodicThread3runEv>:

PeriodicThread::PeriodicThread(time_t period) : Thread() {
    this -> period = (period <= 0) ? DEFAULT_TIME_SLICE : period;
}

void PeriodicThread::run() {
    80001f4c:	fe010113          	addi	sp,sp,-32
    80001f50:	00113c23          	sd	ra,24(sp)
    80001f54:	00813823          	sd	s0,16(sp)
    80001f58:	00913423          	sd	s1,8(sp)
    80001f5c:	02010413          	addi	s0,sp,32
    80001f60:	00050493          	mv	s1,a0
    while (period) {
    80001f64:	0204b783          	ld	a5,32(s1)
    80001f68:	02078263          	beqz	a5,80001f8c <_ZN14PeriodicThread3runEv+0x40>
        periodicActivation();
    80001f6c:	0004b783          	ld	a5,0(s1)
    80001f70:	0187b783          	ld	a5,24(a5)
    80001f74:	00048513          	mv	a0,s1
    80001f78:	000780e7          	jalr	a5
        time_sleep(period);
    80001f7c:	0204b503          	ld	a0,32(s1)
    80001f80:	fffff097          	auipc	ra,0xfffff
    80001f84:	654080e7          	jalr	1620(ra) # 800015d4 <_Z10time_sleepm>
    while (period) {
    80001f88:	fddff06f          	j	80001f64 <_ZN14PeriodicThread3runEv+0x18>
    }
}
    80001f8c:	01813083          	ld	ra,24(sp)
    80001f90:	01013403          	ld	s0,16(sp)
    80001f94:	00813483          	ld	s1,8(sp)
    80001f98:	02010113          	addi	sp,sp,32
    80001f9c:	00008067          	ret

0000000080001fa0 <_ZN9SemaphoreD1Ev>:
Semaphore::~Semaphore() {
    80001fa0:	0000a797          	auipc	a5,0xa
    80001fa4:	c2078793          	addi	a5,a5,-992 # 8000bbc0 <_ZTV9Semaphore+0x10>
    80001fa8:	00f53023          	sd	a5,0(a0)
    if (myHandle) sem_close(myHandle);
    80001fac:	00853503          	ld	a0,8(a0)
    80001fb0:	02050663          	beqz	a0,80001fdc <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    80001fb4:	ff010113          	addi	sp,sp,-16
    80001fb8:	00113423          	sd	ra,8(sp)
    80001fbc:	00813023          	sd	s0,0(sp)
    80001fc0:	01010413          	addi	s0,sp,16
    if (myHandle) sem_close(myHandle);
    80001fc4:	fffff097          	auipc	ra,0xfffff
    80001fc8:	494080e7          	jalr	1172(ra) # 80001458 <_Z9sem_closeP3Sem>
}
    80001fcc:	00813083          	ld	ra,8(sp)
    80001fd0:	00013403          	ld	s0,0(sp)
    80001fd4:	01010113          	addi	sp,sp,16
    80001fd8:	00008067          	ret
    80001fdc:	00008067          	ret

0000000080001fe0 <_Znwm>:
void* operator new(size_t size){
    80001fe0:	ff010113          	addi	sp,sp,-16
    80001fe4:	00113423          	sd	ra,8(sp)
    80001fe8:	00813023          	sd	s0,0(sp)
    80001fec:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001ff0:	fffff097          	auipc	ra,0xfffff
    80001ff4:	268080e7          	jalr	616(ra) # 80001258 <_Z9mem_allocm>
}
    80001ff8:	00813083          	ld	ra,8(sp)
    80001ffc:	00013403          	ld	s0,0(sp)
    80002000:	01010113          	addi	sp,sp,16
    80002004:	00008067          	ret

0000000080002008 <_ZdlPv>:
void operator delete(void* p) noexcept {
    80002008:	ff010113          	addi	sp,sp,-16
    8000200c:	00113423          	sd	ra,8(sp)
    80002010:	00813023          	sd	s0,0(sp)
    80002014:	01010413          	addi	s0,sp,16
    mem_free(p);
    80002018:	fffff097          	auipc	ra,0xfffff
    8000201c:	294080e7          	jalr	660(ra) # 800012ac <_Z8mem_freePv>
}
    80002020:	00813083          	ld	ra,8(sp)
    80002024:	00013403          	ld	s0,0(sp)
    80002028:	01010113          	addi	sp,sp,16
    8000202c:	00008067          	ret

0000000080002030 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80002030:	fe010113          	addi	sp,sp,-32
    80002034:	00113c23          	sd	ra,24(sp)
    80002038:	00813823          	sd	s0,16(sp)
    8000203c:	00913423          	sd	s1,8(sp)
    80002040:	02010413          	addi	s0,sp,32
    80002044:	00050493          	mv	s1,a0
}
    80002048:	00000097          	auipc	ra,0x0
    8000204c:	eac080e7          	jalr	-340(ra) # 80001ef4 <_ZN6ThreadD1Ev>
    80002050:	00048513          	mv	a0,s1
    80002054:	00000097          	auipc	ra,0x0
    80002058:	fb4080e7          	jalr	-76(ra) # 80002008 <_ZdlPv>
    8000205c:	01813083          	ld	ra,24(sp)
    80002060:	01013403          	ld	s0,16(sp)
    80002064:	00813483          	ld	s1,8(sp)
    80002068:	02010113          	addi	sp,sp,32
    8000206c:	00008067          	ret

0000000080002070 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80002070:	fe010113          	addi	sp,sp,-32
    80002074:	00113c23          	sd	ra,24(sp)
    80002078:	00813823          	sd	s0,16(sp)
    8000207c:	00913423          	sd	s1,8(sp)
    80002080:	02010413          	addi	s0,sp,32
    80002084:	00050493          	mv	s1,a0
}
    80002088:	00000097          	auipc	ra,0x0
    8000208c:	f18080e7          	jalr	-232(ra) # 80001fa0 <_ZN9SemaphoreD1Ev>
    80002090:	00048513          	mv	a0,s1
    80002094:	00000097          	auipc	ra,0x0
    80002098:	f74080e7          	jalr	-140(ra) # 80002008 <_ZdlPv>
    8000209c:	01813083          	ld	ra,24(sp)
    800020a0:	01013403          	ld	s0,16(sp)
    800020a4:	00813483          	ld	s1,8(sp)
    800020a8:	02010113          	addi	sp,sp,32
    800020ac:	00008067          	ret

00000000800020b0 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    800020b0:	ff010113          	addi	sp,sp,-16
    800020b4:	00813423          	sd	s0,8(sp)
    800020b8:	01010413          	addi	s0,sp,16
    800020bc:	0000a797          	auipc	a5,0xa
    800020c0:	adc78793          	addi	a5,a5,-1316 # 8000bb98 <_ZTV6Thread+0x10>
    800020c4:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    800020c8:	00053423          	sd	zero,8(a0)
    this -> body = body;
    800020cc:	00b53823          	sd	a1,16(a0)
    this -> arg = arg;
    800020d0:	00c53c23          	sd	a2,24(a0)
}
    800020d4:	00813403          	ld	s0,8(sp)
    800020d8:	01010113          	addi	sp,sp,16
    800020dc:	00008067          	ret

00000000800020e0 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    800020e0:	ff010113          	addi	sp,sp,-16
    800020e4:	00813423          	sd	s0,8(sp)
    800020e8:	01010413          	addi	s0,sp,16
    800020ec:	0000a797          	auipc	a5,0xa
    800020f0:	aac78793          	addi	a5,a5,-1364 # 8000bb98 <_ZTV6Thread+0x10>
    800020f4:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    800020f8:	00053423          	sd	zero,8(a0)
    body = nullptr;
    800020fc:	00053823          	sd	zero,16(a0)
    arg = nullptr;
    80002100:	00053c23          	sd	zero,24(a0)
}
    80002104:	00813403          	ld	s0,8(sp)
    80002108:	01010113          	addi	sp,sp,16
    8000210c:	00008067          	ret

0000000080002110 <_ZN6Thread5startEv>:
int Thread::start() {
    80002110:	ff010113          	addi	sp,sp,-16
    80002114:	00113423          	sd	ra,8(sp)
    80002118:	00813023          	sd	s0,0(sp)
    8000211c:	01010413          	addi	s0,sp,16
    return thread_create(&myHandle, start_helper, this);
    80002120:	00050613          	mv	a2,a0
    80002124:	00000597          	auipc	a1,0x0
    80002128:	d9058593          	addi	a1,a1,-624 # 80001eb4 <_ZN6Thread12start_helperEPv>
    8000212c:	00850513          	addi	a0,a0,8
    80002130:	fffff097          	auipc	ra,0xfffff
    80002134:	1c8080e7          	jalr	456(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
}
    80002138:	00813083          	ld	ra,8(sp)
    8000213c:	00013403          	ld	s0,0(sp)
    80002140:	01010113          	addi	sp,sp,16
    80002144:	00008067          	ret

0000000080002148 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80002148:	ff010113          	addi	sp,sp,-16
    8000214c:	00113423          	sd	ra,8(sp)
    80002150:	00813023          	sd	s0,0(sp)
    80002154:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002158:	fffff097          	auipc	ra,0xfffff
    8000215c:	274080e7          	jalr	628(ra) # 800013cc <_Z15thread_dispatchv>
}
    80002160:	00813083          	ld	ra,8(sp)
    80002164:	00013403          	ld	s0,0(sp)
    80002168:	01010113          	addi	sp,sp,16
    8000216c:	00008067          	ret

0000000080002170 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    80002170:	ff010113          	addi	sp,sp,-16
    80002174:	00113423          	sd	ra,8(sp)
    80002178:	00813023          	sd	s0,0(sp)
    8000217c:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    80002180:	fffff097          	auipc	ra,0xfffff
    80002184:	454080e7          	jalr	1108(ra) # 800015d4 <_Z10time_sleepm>
}
    80002188:	00813083          	ld	ra,8(sp)
    8000218c:	00013403          	ld	s0,0(sp)
    80002190:	01010113          	addi	sp,sp,16
    80002194:	00008067          	ret

0000000080002198 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80002198:	ff010113          	addi	sp,sp,-16
    8000219c:	00113423          	sd	ra,8(sp)
    800021a0:	00813023          	sd	s0,0(sp)
    800021a4:	01010413          	addi	s0,sp,16
    800021a8:	0000a797          	auipc	a5,0xa
    800021ac:	a1878793          	addi	a5,a5,-1512 # 8000bbc0 <_ZTV9Semaphore+0x10>
    800021b0:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    800021b4:	00053423          	sd	zero,8(a0)
    sem_open(&myHandle, init);
    800021b8:	00850513          	addi	a0,a0,8
    800021bc:	fffff097          	auipc	ra,0xfffff
    800021c0:	24c080e7          	jalr	588(ra) # 80001408 <_Z8sem_openPP3Semj>
}
    800021c4:	00813083          	ld	ra,8(sp)
    800021c8:	00013403          	ld	s0,0(sp)
    800021cc:	01010113          	addi	sp,sp,16
    800021d0:	00008067          	ret

00000000800021d4 <_ZN9Semaphore4waitEv>:
    if (myHandle) return sem_wait(myHandle);
    800021d4:	00853503          	ld	a0,8(a0)
    800021d8:	02050663          	beqz	a0,80002204 <_ZN9Semaphore4waitEv+0x30>
int Semaphore::wait() {
    800021dc:	ff010113          	addi	sp,sp,-16
    800021e0:	00113423          	sd	ra,8(sp)
    800021e4:	00813023          	sd	s0,0(sp)
    800021e8:	01010413          	addi	s0,sp,16
    if (myHandle) return sem_wait(myHandle);
    800021ec:	fffff097          	auipc	ra,0xfffff
    800021f0:	2b8080e7          	jalr	696(ra) # 800014a4 <_Z8sem_waitP3Sem>
}
    800021f4:	00813083          	ld	ra,8(sp)
    800021f8:	00013403          	ld	s0,0(sp)
    800021fc:	01010113          	addi	sp,sp,16
    80002200:	00008067          	ret
    return -1;
    80002204:	fff00513          	li	a0,-1
}
    80002208:	00008067          	ret

000000008000220c <_ZN9Semaphore6signalEv>:
    if (myHandle) return sem_signal(myHandle);
    8000220c:	00853503          	ld	a0,8(a0)
    80002210:	02050663          	beqz	a0,8000223c <_ZN9Semaphore6signalEv+0x30>
int Semaphore::signal() {
    80002214:	ff010113          	addi	sp,sp,-16
    80002218:	00113423          	sd	ra,8(sp)
    8000221c:	00813023          	sd	s0,0(sp)
    80002220:	01010413          	addi	s0,sp,16
    if (myHandle) return sem_signal(myHandle);
    80002224:	fffff097          	auipc	ra,0xfffff
    80002228:	2cc080e7          	jalr	716(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    8000222c:	00813083          	ld	ra,8(sp)
    80002230:	00013403          	ld	s0,0(sp)
    80002234:	01010113          	addi	sp,sp,16
    80002238:	00008067          	ret
    return -1;
    8000223c:	fff00513          	li	a0,-1
}
    80002240:	00008067          	ret

0000000080002244 <_ZN9Semaphore9timedWaitEm>:
int Semaphore::timedWait(time_t time) {
    80002244:	ff010113          	addi	sp,sp,-16
    80002248:	00113423          	sd	ra,8(sp)
    8000224c:	00813023          	sd	s0,0(sp)
    80002250:	01010413          	addi	s0,sp,16
    return sem_timedwait(myHandle, time);
    80002254:	00853503          	ld	a0,8(a0)
    80002258:	fffff097          	auipc	ra,0xfffff
    8000225c:	2e4080e7          	jalr	740(ra) # 8000153c <_Z13sem_timedwaitP3Semm>
}
    80002260:	00813083          	ld	ra,8(sp)
    80002264:	00013403          	ld	s0,0(sp)
    80002268:	01010113          	addi	sp,sp,16
    8000226c:	00008067          	ret

0000000080002270 <_ZN9Semaphore7tryWaitEv>:
int Semaphore::tryWait() {
    80002270:	ff010113          	addi	sp,sp,-16
    80002274:	00113423          	sd	ra,8(sp)
    80002278:	00813023          	sd	s0,0(sp)
    8000227c:	01010413          	addi	s0,sp,16
    return sem_trywait(myHandle);
    80002280:	00853503          	ld	a0,8(a0)
    80002284:	fffff097          	auipc	ra,0xfffff
    80002288:	304080e7          	jalr	772(ra) # 80001588 <_Z11sem_trywaitP3Sem>
}
    8000228c:	00813083          	ld	ra,8(sp)
    80002290:	00013403          	ld	s0,0(sp)
    80002294:	01010113          	addi	sp,sp,16
    80002298:	00008067          	ret

000000008000229c <_ZN14PeriodicThread9terminateEv>:
void PeriodicThread::terminate() {
    8000229c:	ff010113          	addi	sp,sp,-16
    800022a0:	00813423          	sd	s0,8(sp)
    800022a4:	01010413          	addi	s0,sp,16
    period = 0;
    800022a8:	02053023          	sd	zero,32(a0)
}
    800022ac:	00813403          	ld	s0,8(sp)
    800022b0:	01010113          	addi	sp,sp,16
    800022b4:	00008067          	ret

00000000800022b8 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread() {
    800022b8:	fe010113          	addi	sp,sp,-32
    800022bc:	00113c23          	sd	ra,24(sp)
    800022c0:	00813823          	sd	s0,16(sp)
    800022c4:	00913423          	sd	s1,8(sp)
    800022c8:	01213023          	sd	s2,0(sp)
    800022cc:	02010413          	addi	s0,sp,32
    800022d0:	00050913          	mv	s2,a0
    800022d4:	00058493          	mv	s1,a1
    800022d8:	00000097          	auipc	ra,0x0
    800022dc:	e08080e7          	jalr	-504(ra) # 800020e0 <_ZN6ThreadC1Ev>
    800022e0:	0000a797          	auipc	a5,0xa
    800022e4:	90078793          	addi	a5,a5,-1792 # 8000bbe0 <_ZTV14PeriodicThread+0x10>
    800022e8:	00f93023          	sd	a5,0(s2)
    this -> period = (period <= 0) ? DEFAULT_TIME_SLICE : period;
    800022ec:	00049463          	bnez	s1,800022f4 <_ZN14PeriodicThreadC1Em+0x3c>
    800022f0:	00200493          	li	s1,2
    800022f4:	02993023          	sd	s1,32(s2)
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
    void terminate ();
protected:
    PeriodicThread (time_t period);

    virtual void run() override;
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
    800023a0:	0000a797          	auipc	a5,0xa
    800023a4:	84078793          	addi	a5,a5,-1984 # 8000bbe0 <_ZTV14PeriodicThread+0x10>
    800023a8:	00f53023          	sd	a5,0(a0)
    800023ac:	00000097          	auipc	ra,0x0
    800023b0:	b48080e7          	jalr	-1208(ra) # 80001ef4 <_ZN6ThreadD1Ev>
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
    800023dc:	0000a797          	auipc	a5,0xa
    800023e0:	80478793          	addi	a5,a5,-2044 # 8000bbe0 <_ZTV14PeriodicThread+0x10>
    800023e4:	00f53023          	sd	a5,0(a0)
    800023e8:	00000097          	auipc	ra,0x0
    800023ec:	b0c080e7          	jalr	-1268(ra) # 80001ef4 <_ZN6ThreadD1Ev>
    800023f0:	00048513          	mv	a0,s1
    800023f4:	00000097          	auipc	ra,0x0
    800023f8:	c14080e7          	jalr	-1004(ra) # 80002008 <_ZdlPv>
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
    80002450:	a0b7be23          	sd	a1,-1508(a5) # 8000be68 <_ZN15MemoryAllocator11freeSegHeadE>
    80002454:	fd5ff06f          	j	80002428 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb+0x18>
    80002458:	0000a797          	auipc	a5,0xa
    8000245c:	a0b7bc23          	sd	a1,-1512(a5) # 8000be70 <_ZN15MemoryAllocator11usedSegHeadE>
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
    80002488:	9e44b483          	ld	s1,-1564(s1) # 8000be68 <_ZN15MemoryAllocator11freeSegHeadE>
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
    800024c0:	9b47b783          	ld	a5,-1612(a5) # 8000be70 <_ZN15MemoryAllocator11usedSegHeadE>
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
    80002578:	8e97be23          	sd	s1,-1796(a5) # 8000be70 <_ZN15MemoryAllocator11usedSegHeadE>
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
    80002600:	7c47b783          	ld	a5,1988(a5) # 8000bdc0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002604:	0007b783          	ld	a5,0(a5)
    80002608:	12f56663          	bltu	a0,a5,80002734 <_ZN15MemoryAllocator8mem_freeEPv+0x15c>
    8000260c:	00009797          	auipc	a5,0x9
    80002610:	7f47b783          	ld	a5,2036(a5) # 8000be00 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002614:	0007b783          	ld	a5,0(a5)
    80002618:	12a7e263          	bltu	a5,a0,8000273c <_ZN15MemoryAllocator8mem_freeEPv+0x164>
    if (!usedSegHead) return -2;
    8000261c:	0000a797          	auipc	a5,0xa
    80002620:	8547b783          	ld	a5,-1964(a5) # 8000be70 <_ZN15MemoryAllocator11usedSegHeadE>
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
    80002668:	0000a797          	auipc	a5,0xa
    8000266c:	8007b783          	ld	a5,-2048(a5) # 8000be68 <_ZN15MemoryAllocator11freeSegHeadE>
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
    800026e8:	7897b223          	sd	s1,1924(a5) # 8000be68 <_ZN15MemoryAllocator11freeSegHeadE>
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
    80002704:	76878793          	addi	a5,a5,1896 # 8000be68 <_ZN15MemoryAllocator11freeSegHeadE>
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
    putc('\n');
    80002768:	00a00513          	li	a0,10
    8000276c:	fffff097          	auipc	ra,0xfffff
    80002770:	f00080e7          	jalr	-256(ra) # 8000166c <_Z4putcc>
    putc('M');
    80002774:	04d00513          	li	a0,77
    80002778:	fffff097          	auipc	ra,0xfffff
    8000277c:	ef4080e7          	jalr	-268(ra) # 8000166c <_Z4putcc>
    putc(':');
    80002780:	03a00513          	li	a0,58
    80002784:	fffff097          	auipc	ra,0xfffff
    80002788:	ee8080e7          	jalr	-280(ra) # 8000166c <_Z4putcc>
    putc(' ');
    8000278c:	02000513          	li	a0,32
    80002790:	fffff097          	auipc	ra,0xfffff
    80002794:	edc080e7          	jalr	-292(ra) # 8000166c <_Z4putcc>
    for (MemSeg* tmp = freeSegHead; tmp; tmp = tmp -> next) {
    80002798:	00009497          	auipc	s1,0x9
    8000279c:	6d04b483          	ld	s1,1744(s1) # 8000be68 <_ZN15MemoryAllocator11freeSegHeadE>
    800027a0:	02048863          	beqz	s1,800027d0 <_ZN15MemoryAllocator5printEv+0x7c>
        printNumber(tmp -> size);
    800027a4:	0004b503          	ld	a0,0(s1)
    800027a8:	fffff097          	auipc	ra,0xfffff
    800027ac:	3f4080e7          	jalr	1012(ra) # 80001b9c <_Z11printNumberm>
        putc(' ');
    800027b0:	02000513          	li	a0,32
    800027b4:	fffff097          	auipc	ra,0xfffff
    800027b8:	eb8080e7          	jalr	-328(ra) # 8000166c <_Z4putcc>
        putc('f');
    800027bc:	06600513          	li	a0,102
    800027c0:	fffff097          	auipc	ra,0xfffff
    800027c4:	eac080e7          	jalr	-340(ra) # 8000166c <_Z4putcc>
    for (MemSeg* tmp = freeSegHead; tmp; tmp = tmp -> next) {
    800027c8:	0104b483          	ld	s1,16(s1)
    800027cc:	fd5ff06f          	j	800027a0 <_ZN15MemoryAllocator5printEv+0x4c>
    }
    putc('\t');
    800027d0:	00900513          	li	a0,9
    800027d4:	fffff097          	auipc	ra,0xfffff
    800027d8:	e98080e7          	jalr	-360(ra) # 8000166c <_Z4putcc>
    for (MemSeg* tmp = usedSegHead; tmp; tmp = tmp -> next) {
    800027dc:	00009497          	auipc	s1,0x9
    800027e0:	6944b483          	ld	s1,1684(s1) # 8000be70 <_ZN15MemoryAllocator11usedSegHeadE>
    800027e4:	02048863          	beqz	s1,80002814 <_ZN15MemoryAllocator5printEv+0xc0>
        printNumber(tmp -> size);
    800027e8:	0004b503          	ld	a0,0(s1)
    800027ec:	fffff097          	auipc	ra,0xfffff
    800027f0:	3b0080e7          	jalr	944(ra) # 80001b9c <_Z11printNumberm>
        putc(' ');
    800027f4:	02000513          	li	a0,32
    800027f8:	fffff097          	auipc	ra,0xfffff
    800027fc:	e74080e7          	jalr	-396(ra) # 8000166c <_Z4putcc>
        putc('u');
    80002800:	07500513          	li	a0,117
    80002804:	fffff097          	auipc	ra,0xfffff
    80002808:	e68080e7          	jalr	-408(ra) # 8000166c <_Z4putcc>
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
    8000284c:	6307b783          	ld	a5,1584(a5) # 8000be78 <_ZN15MemoryAllocator8instanceE>
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
    80002870:	5547b783          	ld	a5,1364(a5) # 8000bdc0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002874:	0007b783          	ld	a5,0(a5)
    80002878:	00009497          	auipc	s1,0x9
    8000287c:	5f048493          	addi	s1,s1,1520 # 8000be68 <_ZN15MemoryAllocator11freeSegHeadE>
    80002880:	00f4b023          	sd	a5,0(s1)
        freeSegHead -> size = (size_t) HEAP_END_ADDR - (size_t) HEAP_START_ADDR;
    80002884:	00009717          	auipc	a4,0x9
    80002888:	57c73703          	ld	a4,1404(a4) # 8000be00 <_GLOBAL_OFFSET_TABLE_+0x58>
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
    800028fc:	160080e7          	jalr	352(ra) # 80001a58 <_ZN3Sem4openEPPS_j>
    Sem::open(&space_available, CAPACITY);
    80002900:	1f400593          	li	a1,500
    80002904:	00848513          	addi	a0,s1,8
    80002908:	fffff097          	auipc	ra,0xfffff
    8000290c:	150080e7          	jalr	336(ra) # 80001a58 <_ZN3Sem4openEPPS_j>
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
    80002944:	ef0080e7          	jalr	-272(ra) # 80001830 <_ZN3Sem5closeEPS_>
    Sem::close(space_available);
    80002948:	0084b503          	ld	a0,8(s1)
    8000294c:	fffff097          	auipc	ra,0xfffff
    80002950:	ee4080e7          	jalr	-284(ra) # 80001830 <_ZN3Sem5closeEPS_>
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
    800029e8:	eb8080e7          	jalr	-328(ra) # 8000189c <_ZN3Sem4waitEPS_>
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
    80002a10:	ee4080e7          	jalr	-284(ra) # 800018f0 <_ZN3Sem6signalEPS_>
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
    80002a50:	e50080e7          	jalr	-432(ra) # 8000189c <_ZN3Sem4waitEPS_>
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
    80002a78:	e7c080e7          	jalr	-388(ra) # 800018f0 <_ZN3Sem6signalEPS_>
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

/// place thread in scheduler
void Scheduler::put(TCB *thread) {
    80002a98:	fe010113          	addi	sp,sp,-32
    80002a9c:	00113c23          	sd	ra,24(sp)
    80002aa0:	00813823          	sd	s0,16(sp)
    80002aa4:	00913423          	sd	s1,8(sp)
    80002aa8:	02010413          	addi	s0,sp,32
    80002aac:	00050493          	mv	s1,a0
    if (tail_ready) {
    80002ab0:	00009517          	auipc	a0,0x9
    80002ab4:	3d053503          	ld	a0,976(a0) # 8000be80 <_ZN9Scheduler10tail_readyE>
    80002ab8:	02050e63          	beqz	a0,80002af4 <_ZN9Scheduler3putEP3TCB+0x5c>
        tail_ready -> set_next_ready(thread);
    80002abc:	00048593          	mv	a1,s1
    80002ac0:	00001097          	auipc	ra,0x1
    80002ac4:	ad8080e7          	jalr	-1320(ra) # 80003598 <_ZN3TCB14set_next_readyEPS_>
        tail_ready = thread;
    80002ac8:	00009797          	auipc	a5,0x9
    80002acc:	3a97bc23          	sd	s1,952(a5) # 8000be80 <_ZN9Scheduler10tail_readyE>
    }
    else head_ready = tail_ready = thread;
    thread -> set_next_ready(nullptr);
    80002ad0:	00000593          	li	a1,0
    80002ad4:	00048513          	mv	a0,s1
    80002ad8:	00001097          	auipc	ra,0x1
    80002adc:	ac0080e7          	jalr	-1344(ra) # 80003598 <_ZN3TCB14set_next_readyEPS_>
}
    80002ae0:	01813083          	ld	ra,24(sp)
    80002ae4:	01013403          	ld	s0,16(sp)
    80002ae8:	00813483          	ld	s1,8(sp)
    80002aec:	02010113          	addi	sp,sp,32
    80002af0:	00008067          	ret
    else head_ready = tail_ready = thread;
    80002af4:	00009797          	auipc	a5,0x9
    80002af8:	38c78793          	addi	a5,a5,908 # 8000be80 <_ZN9Scheduler10tail_readyE>
    80002afc:	0097b023          	sd	s1,0(a5)
    80002b00:	0097b423          	sd	s1,8(a5)
    80002b04:	fcdff06f          	j	80002ad0 <_ZN9Scheduler3putEP3TCB+0x38>

0000000080002b08 <_ZN9Scheduler3getEv>:

/// retrieve thread from scheduler
TCB* Scheduler::get() {
    80002b08:	fe010113          	addi	sp,sp,-32
    80002b0c:	00113c23          	sd	ra,24(sp)
    80002b10:	00813823          	sd	s0,16(sp)
    80002b14:	00913423          	sd	s1,8(sp)
    80002b18:	02010413          	addi	s0,sp,32
    if (!head_ready) return nullptr;
    80002b1c:	00009497          	auipc	s1,0x9
    80002b20:	36c4b483          	ld	s1,876(s1) # 8000be88 <_ZN9Scheduler10head_readyE>
    80002b24:	02048663          	beqz	s1,80002b50 <_ZN9Scheduler3getEv+0x48>
    TCB *tmp = head_ready;
    head_ready = head_ready -> get_next_ready();
    80002b28:	00048513          	mv	a0,s1
    80002b2c:	00001097          	auipc	ra,0x1
    80002b30:	a50080e7          	jalr	-1456(ra) # 8000357c <_ZNK3TCB14get_next_readyEv>
    80002b34:	00009797          	auipc	a5,0x9
    80002b38:	34a7ba23          	sd	a0,852(a5) # 8000be88 <_ZN9Scheduler10head_readyE>
    if (!head_ready) tail_ready = nullptr;
    80002b3c:	02050663          	beqz	a0,80002b68 <_ZN9Scheduler3getEv+0x60>
    tmp -> set_next_ready(nullptr);
    80002b40:	00000593          	li	a1,0
    80002b44:	00048513          	mv	a0,s1
    80002b48:	00001097          	auipc	ra,0x1
    80002b4c:	a50080e7          	jalr	-1456(ra) # 80003598 <_ZN3TCB14set_next_readyEPS_>
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
    80002b6c:	3007bc23          	sd	zero,792(a5) # 8000be80 <_ZN9Scheduler10tail_readyE>
    80002b70:	fd1ff06f          	j	80002b40 <_ZN9Scheduler3getEv+0x38>

0000000080002b74 <_ZN9Scheduler17remove_from_sleepEP3TCB>:
    change_thread();
    return 0;
}

/// remove thread from sleeping list (used for timed wait)
int Scheduler::remove_from_sleep(TCB *thread) {
    80002b74:	ff010113          	addi	sp,sp,-16
    80002b78:	00813423          	sd	s0,8(sp)
    80002b7c:	01010413          	addi	s0,sp,16
    if (!thread) return -1;
    80002b80:	06050863          	beqz	a0,80002bf0 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x7c>
    TCB *prev = nullptr, *tmp = head_sleeping;
    80002b84:	00009797          	auipc	a5,0x9
    80002b88:	30c7b783          	ld	a5,780(a5) # 8000be90 <_ZN9Scheduler13head_sleepingE>
    80002b8c:	00000713          	li	a4,0
    while (tmp && tmp != thread) {
    80002b90:	00078a63          	beqz	a5,80002ba4 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x30>
    80002b94:	00a78863          	beq	a5,a0,80002ba4 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x30>
        prev = tmp;
    80002b98:	00078713          	mv	a4,a5
        tmp = tmp -> next_sleeping;
    80002b9c:	0587b783          	ld	a5,88(a5)
    while (tmp && tmp != thread) {
    80002ba0:	ff1ff06f          	j	80002b90 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x1c>
    }
    if (!tmp) return -2;
    80002ba4:	04078a63          	beqz	a5,80002bf8 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x84>
    if (prev) prev -> next_sleeping = tmp -> next_sleeping;
    80002ba8:	02070c63          	beqz	a4,80002be0 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x6c>
    80002bac:	0587b683          	ld	a3,88(a5)
    80002bb0:	04d73c23          	sd	a3,88(a4)
    else head_sleeping = tmp -> next_sleeping;
    if (tmp -> next_sleeping) tmp -> next_sleeping -> time_to_sleep += tmp -> time_to_sleep;
    80002bb4:	0587b703          	ld	a4,88(a5)
    80002bb8:	00070a63          	beqz	a4,80002bcc <_ZN9Scheduler17remove_from_sleepEP3TCB+0x58>
    80002bbc:	0507b603          	ld	a2,80(a5)
    80002bc0:	05073683          	ld	a3,80(a4)
    80002bc4:	00c686b3          	add	a3,a3,a2
    80002bc8:	04d73823          	sd	a3,80(a4)
    tmp -> next_sleeping = nullptr;
    80002bcc:	0407bc23          	sd	zero,88(a5)
    return 0;
    80002bd0:	00000513          	li	a0,0
}
    80002bd4:	00813403          	ld	s0,8(sp)
    80002bd8:	01010113          	addi	sp,sp,16
    80002bdc:	00008067          	ret
    else head_sleeping = tmp -> next_sleeping;
    80002be0:	0587b703          	ld	a4,88(a5)
    80002be4:	00009697          	auipc	a3,0x9
    80002be8:	2ae6b623          	sd	a4,684(a3) # 8000be90 <_ZN9Scheduler13head_sleepingE>
    80002bec:	fc9ff06f          	j	80002bb4 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x40>
    if (!thread) return -1;
    80002bf0:	fff00513          	li	a0,-1
    80002bf4:	fe1ff06f          	j	80002bd4 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x60>
    if (!tmp) return -2;
    80002bf8:	ffe00513          	li	a0,-2
    80002bfc:	fd9ff06f          	j	80002bd4 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x60>

0000000080002c00 <_ZN9Scheduler13change_threadEv>:

/// dispatch, without putting running back in scheduler
void Scheduler::change_thread() {
    80002c00:	fe010113          	addi	sp,sp,-32
    80002c04:	00113c23          	sd	ra,24(sp)
    80002c08:	00813823          	sd	s0,16(sp)
    80002c0c:	00913423          	sd	s1,8(sp)
    80002c10:	02010413          	addi	s0,sp,32
    TCB* old = TCB::running;
    80002c14:	00009797          	auipc	a5,0x9
    80002c18:	1e47b783          	ld	a5,484(a5) # 8000bdf8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002c1c:	0007b483          	ld	s1,0(a5)
    old -> set_status(TCB::SLEEPING);
    80002c20:	00100593          	li	a1,1
    80002c24:	00048513          	mv	a0,s1
    80002c28:	00001097          	auipc	ra,0x1
    80002c2c:	9fc080e7          	jalr	-1540(ra) # 80003624 <_ZN3TCB10set_statusENS_6StatusE>
    if (!old-> timed_wait) {
    80002c30:	0484c783          	lbu	a5,72(s1)
    80002c34:	00078c63          	beqz	a5,80002c4c <_ZN9Scheduler13change_threadEv+0x4c>
        TCB::running = Scheduler::get();
        if (old != TCB::running) TCB::yield(old, TCB::running);
    }
}
    80002c38:	01813083          	ld	ra,24(sp)
    80002c3c:	01013403          	ld	s0,16(sp)
    80002c40:	00813483          	ld	s1,8(sp)
    80002c44:	02010113          	addi	sp,sp,32
    80002c48:	00008067          	ret
        TCB::running = Scheduler::get();
    80002c4c:	00000097          	auipc	ra,0x0
    80002c50:	ebc080e7          	jalr	-324(ra) # 80002b08 <_ZN9Scheduler3getEv>
    80002c54:	00050593          	mv	a1,a0
    80002c58:	00009797          	auipc	a5,0x9
    80002c5c:	1a07b783          	ld	a5,416(a5) # 8000bdf8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002c60:	00a7b023          	sd	a0,0(a5)
        if (old != TCB::running) TCB::yield(old, TCB::running);
    80002c64:	fca48ae3          	beq	s1,a0,80002c38 <_ZN9Scheduler13change_threadEv+0x38>
    80002c68:	00048513          	mv	a0,s1
    80002c6c:	00001097          	auipc	ra,0x1
    80002c70:	828080e7          	jalr	-2008(ra) # 80003494 <_ZN3TCB5yieldEPS_S0_>
}
    80002c74:	fc5ff06f          	j	80002c38 <_ZN9Scheduler13change_threadEv+0x38>

0000000080002c78 <_ZN9Scheduler12put_to_sleepEm>:
    if (!time) return -1;
    80002c78:	18050a63          	beqz	a0,80002e0c <_ZN9Scheduler12put_to_sleepEm+0x194>
int Scheduler::put_to_sleep(time_t time) {
    80002c7c:	fc010113          	addi	sp,sp,-64
    80002c80:	02113c23          	sd	ra,56(sp)
    80002c84:	02813823          	sd	s0,48(sp)
    80002c88:	02913423          	sd	s1,40(sp)
    80002c8c:	03213023          	sd	s2,32(sp)
    80002c90:	01313c23          	sd	s3,24(sp)
    80002c94:	01413823          	sd	s4,16(sp)
    80002c98:	01513423          	sd	s5,8(sp)
    80002c9c:	04010413          	addi	s0,sp,64
    80002ca0:	00050993          	mv	s3,a0
    TCB* thread = TCB::running;
    80002ca4:	00009797          	auipc	a5,0x9
    80002ca8:	1547b783          	ld	a5,340(a5) # 8000bdf8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002cac:	0007ba83          	ld	s5,0(a5)
    if (!head_sleeping) {
    80002cb0:	00009497          	auipc	s1,0x9
    80002cb4:	1e04b483          	ld	s1,480(s1) # 8000be90 <_ZN9Scheduler13head_sleepingE>
    80002cb8:	02048e63          	beqz	s1,80002cf4 <_ZN9Scheduler12put_to_sleepEm+0x7c>
    time_t current_time = 0;
    80002cbc:	00000913          	li	s2,0
    TCB* tmp = head_sleeping, *prev = nullptr;
    80002cc0:	00000a13          	li	s4,0
    while (tmp) {
    80002cc4:	0e048463          	beqz	s1,80002dac <_ZN9Scheduler12put_to_sleepEm+0x134>
        current_time += tmp -> get_time_to_sleep();
    80002cc8:	00048513          	mv	a0,s1
    80002ccc:	00001097          	auipc	ra,0x1
    80002cd0:	93c080e7          	jalr	-1732(ra) # 80003608 <_ZNK3TCB17get_time_to_sleepEv>
    80002cd4:	00a90933          	add	s2,s2,a0
        if (current_time > time) {
    80002cd8:	0529ea63          	bltu	s3,s2,80002d2c <_ZN9Scheduler12put_to_sleepEm+0xb4>
        tmp = tmp -> get_next_sleeping();
    80002cdc:	00048513          	mv	a0,s1
    80002ce0:	00001097          	auipc	ra,0x1
    80002ce4:	8f0080e7          	jalr	-1808(ra) # 800035d0 <_ZNK3TCB17get_next_sleepingEv>
        prev = tmp;
    80002ce8:	00048a13          	mv	s4,s1
        tmp = tmp -> get_next_sleeping();
    80002cec:	00050493          	mv	s1,a0
    while (tmp) {
    80002cf0:	fd5ff06f          	j	80002cc4 <_ZN9Scheduler12put_to_sleepEm+0x4c>
        head_sleeping = thread;
    80002cf4:	00009797          	auipc	a5,0x9
    80002cf8:	1957be23          	sd	s5,412(a5) # 8000be90 <_ZN9Scheduler13head_sleepingE>
        thread -> set_next_sleeping(nullptr);
    80002cfc:	00000593          	li	a1,0
    80002d00:	000a8513          	mv	a0,s5
    80002d04:	00001097          	auipc	ra,0x1
    80002d08:	8b0080e7          	jalr	-1872(ra) # 800035b4 <_ZN3TCB17set_next_sleepingEPS_>
        thread -> set_time_to_sleep(time);
    80002d0c:	00098593          	mv	a1,s3
    80002d10:	000a8513          	mv	a0,s5
    80002d14:	00001097          	auipc	ra,0x1
    80002d18:	8d8080e7          	jalr	-1832(ra) # 800035ec <_ZN3TCB17set_time_to_sleepEm>
        change_thread();
    80002d1c:	00000097          	auipc	ra,0x0
    80002d20:	ee4080e7          	jalr	-284(ra) # 80002c00 <_ZN9Scheduler13change_threadEv>
        return 0;
    80002d24:	00000513          	li	a0,0
    80002d28:	0c00006f          	j	80002de8 <_ZN9Scheduler12put_to_sleepEm+0x170>
            time_t new_time = time - (current_time - tmp -> get_time_to_sleep());
    80002d2c:	00048513          	mv	a0,s1
    80002d30:	00001097          	auipc	ra,0x1
    80002d34:	8d8080e7          	jalr	-1832(ra) # 80003608 <_ZNK3TCB17get_time_to_sleepEv>
    80002d38:	41250933          	sub	s2,a0,s2
    80002d3c:	013909b3          	add	s3,s2,s3
            thread -> set_time_to_sleep(new_time);
    80002d40:	00098593          	mv	a1,s3
    80002d44:	000a8513          	mv	a0,s5
    80002d48:	00001097          	auipc	ra,0x1
    80002d4c:	8a4080e7          	jalr	-1884(ra) # 800035ec <_ZN3TCB17set_time_to_sleepEm>
            thread -> set_next_sleeping(tmp);
    80002d50:	00048593          	mv	a1,s1
    80002d54:	000a8513          	mv	a0,s5
    80002d58:	00001097          	auipc	ra,0x1
    80002d5c:	85c080e7          	jalr	-1956(ra) # 800035b4 <_ZN3TCB17set_next_sleepingEPS_>
            if (prev) prev -> set_next_sleeping(thread);
    80002d60:	040a0063          	beqz	s4,80002da0 <_ZN9Scheduler12put_to_sleepEm+0x128>
    80002d64:	000a8593          	mv	a1,s5
    80002d68:	000a0513          	mv	a0,s4
    80002d6c:	00001097          	auipc	ra,0x1
    80002d70:	848080e7          	jalr	-1976(ra) # 800035b4 <_ZN3TCB17set_next_sleepingEPS_>
            tmp -> set_time_to_sleep(tmp -> get_time_to_sleep() - new_time);
    80002d74:	00048513          	mv	a0,s1
    80002d78:	00001097          	auipc	ra,0x1
    80002d7c:	890080e7          	jalr	-1904(ra) # 80003608 <_ZNK3TCB17get_time_to_sleepEv>
    80002d80:	413505b3          	sub	a1,a0,s3
    80002d84:	00048513          	mv	a0,s1
    80002d88:	00001097          	auipc	ra,0x1
    80002d8c:	864080e7          	jalr	-1948(ra) # 800035ec <_ZN3TCB17set_time_to_sleepEm>
            change_thread();
    80002d90:	00000097          	auipc	ra,0x0
    80002d94:	e70080e7          	jalr	-400(ra) # 80002c00 <_ZN9Scheduler13change_threadEv>
            return 0;
    80002d98:	00000513          	li	a0,0
    80002d9c:	04c0006f          	j	80002de8 <_ZN9Scheduler12put_to_sleepEm+0x170>
            else head_sleeping = thread;
    80002da0:	00009797          	auipc	a5,0x9
    80002da4:	0f57b823          	sd	s5,240(a5) # 8000be90 <_ZN9Scheduler13head_sleepingE>
    80002da8:	fcdff06f          	j	80002d74 <_ZN9Scheduler12put_to_sleepEm+0xfc>
    thread -> set_time_to_sleep(time - current_time);
    80002dac:	412985b3          	sub	a1,s3,s2
    80002db0:	000a8513          	mv	a0,s5
    80002db4:	00001097          	auipc	ra,0x1
    80002db8:	838080e7          	jalr	-1992(ra) # 800035ec <_ZN3TCB17set_time_to_sleepEm>
    prev -> set_next_sleeping(thread);
    80002dbc:	000a8593          	mv	a1,s5
    80002dc0:	000a0513          	mv	a0,s4
    80002dc4:	00000097          	auipc	ra,0x0
    80002dc8:	7f0080e7          	jalr	2032(ra) # 800035b4 <_ZN3TCB17set_next_sleepingEPS_>
    thread -> set_next_sleeping(nullptr);
    80002dcc:	00000593          	li	a1,0
    80002dd0:	000a8513          	mv	a0,s5
    80002dd4:	00000097          	auipc	ra,0x0
    80002dd8:	7e0080e7          	jalr	2016(ra) # 800035b4 <_ZN3TCB17set_next_sleepingEPS_>
    change_thread();
    80002ddc:	00000097          	auipc	ra,0x0
    80002de0:	e24080e7          	jalr	-476(ra) # 80002c00 <_ZN9Scheduler13change_threadEv>
    return 0;
    80002de4:	00000513          	li	a0,0
}
    80002de8:	03813083          	ld	ra,56(sp)
    80002dec:	03013403          	ld	s0,48(sp)
    80002df0:	02813483          	ld	s1,40(sp)
    80002df4:	02013903          	ld	s2,32(sp)
    80002df8:	01813983          	ld	s3,24(sp)
    80002dfc:	01013a03          	ld	s4,16(sp)
    80002e00:	00813a83          	ld	s5,8(sp)
    80002e04:	04010113          	addi	sp,sp,64
    80002e08:	00008067          	ret
    if (!time) return -1;
    80002e0c:	fff00513          	li	a0,-1
}
    80002e10:	00008067          	ret

0000000080002e14 <_ZN5RiscV10popSppSpieEv>:
    SUPERVISOR_INTERRUPT = 0x0000000000000009UL,
};

/// used in thread wrapper function when initializing thread because thread stack is empty
/// pc = (sepc = ra)
void RiscV::popSppSpie() {
    80002e14:	ff010113          	addi	sp,sp,-16
    80002e18:	00813423          	sd	s0,8(sp)
    80002e1c:	01010413          	addi	s0,sp,16
    /// conditionally return to User mode
    if (TCB::running -> function_body && TCB::running->function_body != kernelConsoleOutput) mc_sstatus(SSTATUS_SPP);
    80002e20:	00009797          	auipc	a5,0x9
    80002e24:	fd87b783          	ld	a5,-40(a5) # 8000bdf8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002e28:	0007b783          	ld	a5,0(a5)
    80002e2c:	0287b783          	ld	a5,40(a5)
    80002e30:	00078c63          	beqz	a5,80002e48 <_ZN5RiscV10popSppSpieEv+0x34>
    80002e34:	00009717          	auipc	a4,0x9
    80002e38:	fbc73703          	ld	a4,-68(a4) # 8000bdf0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002e3c:	00e78663          	beq	a5,a4,80002e48 <_ZN5RiscV10popSppSpieEv+0x34>
}

inline void RiscV::mc_sstatus(uint64 mask) {
    __asm__ volatile ("csrc sstatus, %0" : : "r"(mask));
}
    80002e40:	10000793          	li	a5,256
    80002e44:	1007b073          	csrc	sstatus,a5
    __asm__ volatile("csrw sepc, ra");
    80002e48:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80002e4c:	10200073          	sret
}
    80002e50:	00813403          	ld	s0,8(sp)
    80002e54:	01010113          	addi	sp,sp,16
    80002e58:	00008067          	ret

0000000080002e5c <_ZN5RiscV22handle_supervisor_trapEv>:

/// interrupt handler
void RiscV::handle_supervisor_trap() {
    80002e5c:	f9010113          	addi	sp,sp,-112
    80002e60:	06113423          	sd	ra,104(sp)
    80002e64:	06813023          	sd	s0,96(sp)
    80002e68:	04913c23          	sd	s1,88(sp)
    80002e6c:	05213823          	sd	s2,80(sp)
    80002e70:	05313423          	sd	s3,72(sp)
    80002e74:	07010413          	addi	s0,sp,112
    /// read values from registers
    uint64 syscall_code, a1, a2, a3, a4;
    __asm__ volatile("mv %0, a0" : "=r"(syscall_code));
    80002e78:	00050793          	mv	a5,a0
    __asm__ volatile("mv %0, a1" : "=r"(a1));
    80002e7c:	00058513          	mv	a0,a1
    __asm__ volatile("mv %0, a2" : "=r"(a2));
    80002e80:	00060593          	mv	a1,a2
    __asm__ volatile("mv %0, a3" : "=r"(a3));
    80002e84:	00068613          	mv	a2,a3
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    80002e88:	00070693          	mv	a3,a4
    return scause;
    80002e8c:	14202773          	csrr	a4,scause
    80002e90:	f8e43c23          	sd	a4,-104(s0)
}
    80002e94:	f9843703          	ld	a4,-104(s0)

    /// read scause register value
    uint64 scause = read_scause();

    /// interrupt from supervisor / user mode
    if (scause == USER_INTERRUPT || scause == SUPERVISOR_INTERRUPT) {
    80002e98:	ff870893          	addi	a7,a4,-8
    80002e9c:	00100813          	li	a6,1
    80002ea0:	07187063          	bgeu	a6,a7,80002f00 <_ZN5RiscV22handle_supervisor_trapEv+0xa4>
        write_sepc(sepc);
        write_sstatus(sstatus);
    }

    /// interrupt caused by Timer
    else if (scause == SOFTWARE_INTERRUPT) {
    80002ea4:	fff00793          	li	a5,-1
    80002ea8:	03f79793          	slli	a5,a5,0x3f
    80002eac:	00178793          	addi	a5,a5,1
    80002eb0:	16f70063          	beq	a4,a5,80003010 <_ZN5RiscV22handle_supervisor_trapEv+0x1b4>
            write_sepc(sepc);
        }
    }

    /// External interrupt (Console)
    else if (scause == HARDWARE_INTERRUPT) {
    80002eb4:	fff00793          	li	a5,-1
    80002eb8:	03f79793          	slli	a5,a5,0x3f
    80002ebc:	00978793          	addi	a5,a5,9
    80002ec0:	22f70463          	beq	a4,a5,800030e8 <_ZN5RiscV22handle_supervisor_trapEv+0x28c>
        mc_sip(SIP_SEIP);
    }

    /// Illegal instruction / Bad memory access
    else {
        printNumber(scause);
    80002ec4:	00070513          	mv	a0,a4
    80002ec8:	fffff097          	auipc	ra,0xfffff
    80002ecc:	cd4080e7          	jalr	-812(ra) # 80001b9c <_Z11printNumberm>
        putc('!');
    80002ed0:	02100513          	li	a0,33
    80002ed4:	ffffe097          	auipc	ra,0xffffe
    80002ed8:	798080e7          	jalr	1944(ra) # 8000166c <_Z4putcc>
        putc('?');
    80002edc:	03f00513          	li	a0,63
    80002ee0:	ffffe097          	auipc	ra,0xffffe
    80002ee4:	78c080e7          	jalr	1932(ra) # 8000166c <_Z4putcc>
        putc('!');
    80002ee8:	02100513          	li	a0,33
    80002eec:	ffffe097          	auipc	ra,0xffffe
    80002ef0:	780080e7          	jalr	1920(ra) # 8000166c <_Z4putcc>
        uint64 val = 1;
        __asm__ volatile("mv a0, %0" : : "r"(val));
    80002ef4:	00100793          	li	a5,1
    80002ef8:	00078513          	mv	a0,a5
    }
    80002efc:	0540006f          	j	80002f50 <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
    return sepc;
    80002f00:	14102773          	csrr	a4,sepc
    80002f04:	fae43423          	sd	a4,-88(s0)
}
    80002f08:	fa843483          	ld	s1,-88(s0)
        uint64 sepc = read_sepc() + 4;
    80002f0c:	00448493          	addi	s1,s1,4

inline uint64 RiscV::read_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    return sstatus;
    80002f10:	10002773          	csrr	a4,sstatus
    80002f14:	fae43023          	sd	a4,-96(s0)
}
    80002f18:	fa043903          	ld	s2,-96(s0)
        switch(syscall_code) {
    80002f1c:	04200713          	li	a4,66
    80002f20:	02f76463          	bltu	a4,a5,80002f48 <_ZN5RiscV22handle_supervisor_trapEv+0xec>
    80002f24:	00279793          	slli	a5,a5,0x2
    80002f28:	00006717          	auipc	a4,0x6
    80002f2c:	0f870713          	addi	a4,a4,248 # 80009020 <CONSOLE_STATUS+0x10>
    80002f30:	00e787b3          	add	a5,a5,a4
    80002f34:	0007a783          	lw	a5,0(a5)
    80002f38:	00e787b3          	add	a5,a5,a4
    80002f3c:	00078067          	jr	a5
                MemoryAllocator::mem_alloc((size_t) a1);
    80002f40:	fffff097          	auipc	ra,0xfffff
    80002f44:	524080e7          	jalr	1316(ra) # 80002464 <_ZN15MemoryAllocator9mem_allocEm>
}
    80002f48:	14149073          	csrw	sepc,s1

inline void RiscV::write_sstatus(uint64 val) {
    __asm__ volatile ("csrw sstatus, %0" : : "r"(val));
}
    80002f4c:	10091073          	csrw	sstatus,s2
    80002f50:	06813083          	ld	ra,104(sp)
    80002f54:	06013403          	ld	s0,96(sp)
    80002f58:	05813483          	ld	s1,88(sp)
    80002f5c:	05013903          	ld	s2,80(sp)
    80002f60:	04813983          	ld	s3,72(sp)
    80002f64:	07010113          	addi	sp,sp,112
    80002f68:	00008067          	ret
                MemoryAllocator::mem_free((void *) a1);
    80002f6c:	fffff097          	auipc	ra,0xfffff
    80002f70:	66c080e7          	jalr	1644(ra) # 800025d8 <_ZN15MemoryAllocator8mem_freeEPv>
                break;
    80002f74:	fd5ff06f          	j	80002f48 <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                TCB::thread_create((thread_t *) a1, (void (*)(void *)) a2, (void *) a3, (void *) a4);
    80002f78:	00000097          	auipc	ra,0x0
    80002f7c:	76c080e7          	jalr	1900(ra) # 800036e4 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>
                break;
    80002f80:	fc9ff06f          	j	80002f48 <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                TCB::thread_exit();
    80002f84:	00000097          	auipc	ra,0x0
    80002f88:	6bc080e7          	jalr	1724(ra) # 80003640 <_ZN3TCB11thread_exitEv>
                break;
    80002f8c:	fbdff06f          	j	80002f48 <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                TCB::dispatch();
    80002f90:	00000097          	auipc	ra,0x0
    80002f94:	560080e7          	jalr	1376(ra) # 800034f0 <_ZN3TCB8dispatchEv>
                break;
    80002f98:	fb1ff06f          	j	80002f48 <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Sem::open((sem_t *) a1, a2);
    80002f9c:	0005859b          	sext.w	a1,a1
    80002fa0:	fffff097          	auipc	ra,0xfffff
    80002fa4:	ab8080e7          	jalr	-1352(ra) # 80001a58 <_ZN3Sem4openEPPS_j>
                break;
    80002fa8:	fa1ff06f          	j	80002f48 <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Sem::close((sem_t) a1);
    80002fac:	fffff097          	auipc	ra,0xfffff
    80002fb0:	884080e7          	jalr	-1916(ra) # 80001830 <_ZN3Sem5closeEPS_>
                break;
    80002fb4:	f95ff06f          	j	80002f48 <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Sem::wait((sem_t) a1);
    80002fb8:	fffff097          	auipc	ra,0xfffff
    80002fbc:	8e4080e7          	jalr	-1820(ra) # 8000189c <_ZN3Sem4waitEPS_>
                break;
    80002fc0:	f89ff06f          	j	80002f48 <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Sem::signal((sem_t) a1);
    80002fc4:	fffff097          	auipc	ra,0xfffff
    80002fc8:	92c080e7          	jalr	-1748(ra) # 800018f0 <_ZN3Sem6signalEPS_>
                break;
    80002fcc:	f7dff06f          	j	80002f48 <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Sem::timedWait((sem_t) a1, (time_t) a2);
    80002fd0:	fffff097          	auipc	ra,0xfffff
    80002fd4:	974080e7          	jalr	-1676(ra) # 80001944 <_ZN3Sem9timedWaitEPS_m>
                break;
    80002fd8:	f71ff06f          	j	80002f48 <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Sem::tryWait((sem_t) a1);
    80002fdc:	fffff097          	auipc	ra,0xfffff
    80002fe0:	9ec080e7          	jalr	-1556(ra) # 800019c8 <_ZN3Sem7tryWaitEPS_>
                break;
    80002fe4:	f65ff06f          	j	80002f48 <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Scheduler::put_to_sleep((time_t) a1);
    80002fe8:	00000097          	auipc	ra,0x0
    80002fec:	c90080e7          	jalr	-880(ra) # 80002c78 <_ZN9Scheduler12put_to_sleepEm>
                break;
    80002ff0:	f59ff06f          	j	80002f48 <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Con::getc_input();
    80002ff4:	fffff097          	auipc	ra,0xfffff
    80002ff8:	e90080e7          	jalr	-368(ra) # 80001e84 <_ZN3Con10getc_inputEv>
                break;
    80002ffc:	f4dff06f          	j	80002f48 <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Con::putc_output((char) a1);
    80003000:	0ff57513          	andi	a0,a0,255
    80003004:	fffff097          	auipc	ra,0xfffff
    80003008:	de8080e7          	jalr	-536(ra) # 80001dec <_ZN3Con11putc_outputEc>
                break;
    8000300c:	f3dff06f          	j	80002f48 <_ZN5RiscV22handle_supervisor_trapEv+0xec>
}
    80003010:	00200793          	li	a5,2
    80003014:	1447b073          	csrc	sip,a5
        TCB* first_waiting = Scheduler::head_sleeping;
    80003018:	00009797          	auipc	a5,0x9
    8000301c:	db07b783          	ld	a5,-592(a5) # 8000bdc8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80003020:	0007b483          	ld	s1,0(a5)
        if (first_waiting) {
    80003024:	06048263          	beqz	s1,80003088 <_ZN5RiscV22handle_supervisor_trapEv+0x22c>
            --first_waiting -> time_to_sleep;
    80003028:	0504b783          	ld	a5,80(s1)
    8000302c:	fff78793          	addi	a5,a5,-1
    80003030:	04f4b823          	sd	a5,80(s1)
    80003034:	03c0006f          	j	80003070 <_ZN5RiscV22handle_supervisor_trapEv+0x214>
                if (first_waiting -> timed_wait) first_waiting -> clear_from_timed_wait(true);
    80003038:	00100593          	li	a1,1
    8000303c:	00048513          	mv	a0,s1
    80003040:	00000097          	auipc	ra,0x0
    80003044:	7cc080e7          	jalr	1996(ra) # 8000380c <_ZN3TCB21clear_from_timed_waitEb>
                Scheduler::put(first_waiting);
    80003048:	00048513          	mv	a0,s1
    8000304c:	00000097          	auipc	ra,0x0
    80003050:	a4c080e7          	jalr	-1460(ra) # 80002a98 <_ZN9Scheduler3putEP3TCB>
                first_waiting -> status = TCB::RUNNABLE;
    80003054:	0204a023          	sw	zero,32(s1)
                first_waiting = first_waiting -> next_sleeping;
    80003058:	0584b783          	ld	a5,88(s1)
                tmp -> next_sleeping = nullptr;
    8000305c:	0404bc23          	sd	zero,88(s1)
                Scheduler::head_sleeping = first_waiting;
    80003060:	00009717          	auipc	a4,0x9
    80003064:	d6873703          	ld	a4,-664(a4) # 8000bdc8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80003068:	00f73023          	sd	a5,0(a4)
                first_waiting = first_waiting -> next_sleeping;
    8000306c:	00078493          	mv	s1,a5
            while (first_waiting && first_waiting -> time_to_sleep == 0) {
    80003070:	00048c63          	beqz	s1,80003088 <_ZN5RiscV22handle_supervisor_trapEv+0x22c>
    80003074:	0504b783          	ld	a5,80(s1)
    80003078:	00079863          	bnez	a5,80003088 <_ZN5RiscV22handle_supervisor_trapEv+0x22c>
                if (first_waiting -> timed_wait) first_waiting -> clear_from_timed_wait(true);
    8000307c:	0484c783          	lbu	a5,72(s1)
    80003080:	fc0784e3          	beqz	a5,80003048 <_ZN5RiscV22handle_supervisor_trapEv+0x1ec>
    80003084:	fb5ff06f          	j	80003038 <_ZN5RiscV22handle_supervisor_trapEv+0x1dc>
        ++TCB::time_slice_counter;
    80003088:	00009717          	auipc	a4,0x9
    8000308c:	d6073703          	ld	a4,-672(a4) # 8000bde8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80003090:	00073783          	ld	a5,0(a4)
    80003094:	00178793          	addi	a5,a5,1
    80003098:	00f73023          	sd	a5,0(a4)
        if (TCB::time_slice_counter >= TCB::running -> time_slice) {
    8000309c:	00009717          	auipc	a4,0x9
    800030a0:	d5c73703          	ld	a4,-676(a4) # 8000bdf8 <_GLOBAL_OFFSET_TABLE_+0x50>
    800030a4:	00073703          	ld	a4,0(a4)
    800030a8:	00073703          	ld	a4,0(a4)
    800030ac:	eae7e2e3          	bltu	a5,a4,80002f50 <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
    return sepc;
    800030b0:	141027f3          	csrr	a5,sepc
    800030b4:	faf43c23          	sd	a5,-72(s0)
}
    800030b8:	fb843483          	ld	s1,-72(s0)
    return sstatus;
    800030bc:	100027f3          	csrr	a5,sstatus
    800030c0:	faf43823          	sd	a5,-80(s0)
}
    800030c4:	fb043903          	ld	s2,-80(s0)
            TCB::time_slice_counter = 0;
    800030c8:	00009797          	auipc	a5,0x9
    800030cc:	d207b783          	ld	a5,-736(a5) # 8000bde8 <_GLOBAL_OFFSET_TABLE_+0x40>
    800030d0:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    800030d4:	00000097          	auipc	ra,0x0
    800030d8:	41c080e7          	jalr	1052(ra) # 800034f0 <_ZN3TCB8dispatchEv>
}
    800030dc:	10091073          	csrw	sstatus,s2
}
    800030e0:	14149073          	csrw	sepc,s1

    800030e4:	e6dff06f          	j	80002f50 <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
    return sepc;
    800030e8:	141027f3          	csrr	a5,sepc
    800030ec:	fcf43423          	sd	a5,-56(s0)
}
    800030f0:	fc843983          	ld	s3,-56(s0)
    return sstatus;
    800030f4:	100027f3          	csrr	a5,sstatus
    800030f8:	fcf43023          	sd	a5,-64(s0)
}
    800030fc:	fc043903          	ld	s2,-64(s0)
        int irq = plic_claim();
    80003100:	00004097          	auipc	ra,0x4
    80003104:	694080e7          	jalr	1684(ra) # 80007794 <plic_claim>
    80003108:	00050493          	mv	s1,a0
        if (irq == CONSOLE_IRQ) {
    8000310c:	00a00793          	li	a5,10
    80003110:	02f50263          	beq	a0,a5,80003134 <_ZN5RiscV22handle_supervisor_trapEv+0x2d8>
        plic_complete(irq);
    80003114:	00048513          	mv	a0,s1
    80003118:	00004097          	auipc	ra,0x4
    8000311c:	6b4080e7          	jalr	1716(ra) # 800077cc <plic_complete>
}
    80003120:	14199073          	csrw	sepc,s3
}
    80003124:	10091073          	csrw	sstatus,s2
}
    80003128:	20000793          	li	a5,512
    8000312c:	1447b073          	csrc	sip,a5

    80003130:	e21ff06f          	j	80002f50 <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
            while (*(char *) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT) {
    80003134:	00009797          	auipc	a5,0x9
    80003138:	c847b783          	ld	a5,-892(a5) # 8000bdb8 <_GLOBAL_OFFSET_TABLE_+0x10>
    8000313c:	0007b783          	ld	a5,0(a5)
    80003140:	0007c783          	lbu	a5,0(a5)
    80003144:	0017f793          	andi	a5,a5,1
    80003148:	fc0786e3          	beqz	a5,80003114 <_ZN5RiscV22handle_supervisor_trapEv+0x2b8>
                char c = *(char *) CONSOLE_RX_DATA;
    8000314c:	00009797          	auipc	a5,0x9
    80003150:	c647b783          	ld	a5,-924(a5) # 8000bdb0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80003154:	0007b783          	ld	a5,0(a5)
                Con::putc_input(c);
    80003158:	0007c503          	lbu	a0,0(a5)
    8000315c:	fffff097          	auipc	ra,0xfffff
    80003160:	cf4080e7          	jalr	-780(ra) # 80001e50 <_ZN3Con10putc_inputEc>
            while (*(char *) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT) {
    80003164:	fd1ff06f          	j	80003134 <_ZN5RiscV22handle_supervisor_trapEv+0x2d8>

0000000080003168 <_ZN10ThreadList9get_firstEv>:
void ThreadList::push_back(TCB *thread) {
    tail = (head ? tail -> next : head) = new Node(thread);
}

/// get first element
TCB *ThreadList::get_first() {
    80003168:	ff010113          	addi	sp,sp,-16
    8000316c:	00813423          	sd	s0,8(sp)
    80003170:	01010413          	addi	s0,sp,16
    return (head ? head -> data : nullptr);
    80003174:	00053503          	ld	a0,0(a0)
    80003178:	00050463          	beqz	a0,80003180 <_ZN10ThreadList9get_firstEv+0x18>
    8000317c:	00053503          	ld	a0,0(a0)
}
    80003180:	00813403          	ld	s0,8(sp)
    80003184:	01010113          	addi	sp,sp,16
    80003188:	00008067          	ret

000000008000318c <_ZN10ThreadList6removeEP3TCB>:
    delete tmp;
    return thread;
}

/// remove element `thread` is pointing to
int ThreadList::remove(TCB *thread) {
    8000318c:	ff010113          	addi	sp,sp,-16
    80003190:	00813423          	sd	s0,8(sp)
    80003194:	01010413          	addi	s0,sp,16
    if (!thread) return -1;
    80003198:	04058863          	beqz	a1,800031e8 <_ZN10ThreadList6removeEP3TCB+0x5c>
    Node *tmp = head, *prev = nullptr;
    8000319c:	00053783          	ld	a5,0(a0)
    800031a0:	00000693          	li	a3,0
    while (tmp && tmp -> data != thread) {
    800031a4:	00078c63          	beqz	a5,800031bc <_ZN10ThreadList6removeEP3TCB+0x30>
    800031a8:	0007b703          	ld	a4,0(a5)
    800031ac:	00b70863          	beq	a4,a1,800031bc <_ZN10ThreadList6removeEP3TCB+0x30>
        prev = tmp;
    800031b0:	00078693          	mv	a3,a5
        tmp = tmp -> next;
    800031b4:	0087b783          	ld	a5,8(a5)
    while (tmp && tmp -> data != thread) {
    800031b8:	fedff06f          	j	800031a4 <_ZN10ThreadList6removeEP3TCB+0x18>
    }
    if (!tmp) return -2;
    800031bc:	02078a63          	beqz	a5,800031f0 <_ZN10ThreadList6removeEP3TCB+0x64>
    if (prev) prev -> next = tmp -> next;
    800031c0:	00068e63          	beqz	a3,800031dc <_ZN10ThreadList6removeEP3TCB+0x50>
    800031c4:	0087b783          	ld	a5,8(a5)
    800031c8:	00f6b423          	sd	a5,8(a3)
    else head = tmp;
    return 0;
    800031cc:	00000513          	li	a0,0
}
    800031d0:	00813403          	ld	s0,8(sp)
    800031d4:	01010113          	addi	sp,sp,16
    800031d8:	00008067          	ret
    else head = tmp;
    800031dc:	00f53023          	sd	a5,0(a0)
    return 0;
    800031e0:	00000513          	li	a0,0
    800031e4:	fedff06f          	j	800031d0 <_ZN10ThreadList6removeEP3TCB+0x44>
    if (!thread) return -1;
    800031e8:	fff00513          	li	a0,-1
    800031ec:	fe5ff06f          	j	800031d0 <_ZN10ThreadList6removeEP3TCB+0x44>
    if (!tmp) return -2;
    800031f0:	ffe00513          	li	a0,-2
    800031f4:	fddff06f          	j	800031d0 <_ZN10ThreadList6removeEP3TCB+0x44>

00000000800031f8 <_ZN10ThreadListnwEm>:
/// free the list
void ThreadList::free() {
    while (get_first()) remove_first();
}

void *ThreadList::operator new(size_t size) {
    800031f8:	ff010113          	addi	sp,sp,-16
    800031fc:	00113423          	sd	ra,8(sp)
    80003200:	00813023          	sd	s0,0(sp)
    80003204:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    80003208:	fffff097          	auipc	ra,0xfffff
    8000320c:	620080e7          	jalr	1568(ra) # 80002828 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80003210:	fffff097          	auipc	ra,0xfffff
    80003214:	254080e7          	jalr	596(ra) # 80002464 <_ZN15MemoryAllocator9mem_allocEm>
}
    80003218:	00813083          	ld	ra,8(sp)
    8000321c:	00013403          	ld	s0,0(sp)
    80003220:	01010113          	addi	sp,sp,16
    80003224:	00008067          	ret

0000000080003228 <_ZN10ThreadListdlEPv>:

void ThreadList::operator delete(void *addr) {
    80003228:	ff010113          	addi	sp,sp,-16
    8000322c:	00113423          	sd	ra,8(sp)
    80003230:	00813023          	sd	s0,0(sp)
    80003234:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    80003238:	fffff097          	auipc	ra,0xfffff
    8000323c:	3a0080e7          	jalr	928(ra) # 800025d8 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80003240:	00813083          	ld	ra,8(sp)
    80003244:	00013403          	ld	s0,0(sp)
    80003248:	01010113          	addi	sp,sp,16
    8000324c:	00008067          	ret

0000000080003250 <_ZN10ThreadList4NodenwEm>:

void *ThreadList::Node::operator new(size_t size) {
    80003250:	ff010113          	addi	sp,sp,-16
    80003254:	00113423          	sd	ra,8(sp)
    80003258:	00813023          	sd	s0,0(sp)
    8000325c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    80003260:	fffff097          	auipc	ra,0xfffff
    80003264:	5c8080e7          	jalr	1480(ra) # 80002828 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80003268:	fffff097          	auipc	ra,0xfffff
    8000326c:	1fc080e7          	jalr	508(ra) # 80002464 <_ZN15MemoryAllocator9mem_allocEm>
}
    80003270:	00813083          	ld	ra,8(sp)
    80003274:	00013403          	ld	s0,0(sp)
    80003278:	01010113          	addi	sp,sp,16
    8000327c:	00008067          	ret

0000000080003280 <_ZN10ThreadList9push_backEP3TCB>:
void ThreadList::push_back(TCB *thread) {
    80003280:	fe010113          	addi	sp,sp,-32
    80003284:	00113c23          	sd	ra,24(sp)
    80003288:	00813823          	sd	s0,16(sp)
    8000328c:	00913423          	sd	s1,8(sp)
    80003290:	01213023          	sd	s2,0(sp)
    80003294:	02010413          	addi	s0,sp,32
    80003298:	00050493          	mv	s1,a0
    8000329c:	00058913          	mv	s2,a1
    tail = (head ? tail -> next : head) = new Node(thread);
    800032a0:	01000513          	li	a0,16
    800032a4:	00000097          	auipc	ra,0x0
    800032a8:	fac080e7          	jalr	-84(ra) # 80003250 <_ZN10ThreadList4NodenwEm>
        struct Node *next;

        void* operator new(size_t size);
        void operator delete(void* addr);

        explicit Node(TCB* data) : data(data), next(nullptr) {}
    800032ac:	01253023          	sd	s2,0(a0)
    800032b0:	00053423          	sd	zero,8(a0)
    800032b4:	0004b783          	ld	a5,0(s1)
    800032b8:	02078463          	beqz	a5,800032e0 <_ZN10ThreadList9push_backEP3TCB+0x60>
    800032bc:	0084b783          	ld	a5,8(s1)
    800032c0:	00a7b423          	sd	a0,8(a5)
    800032c4:	00a4b423          	sd	a0,8(s1)
}
    800032c8:	01813083          	ld	ra,24(sp)
    800032cc:	01013403          	ld	s0,16(sp)
    800032d0:	00813483          	ld	s1,8(sp)
    800032d4:	00013903          	ld	s2,0(sp)
    800032d8:	02010113          	addi	sp,sp,32
    800032dc:	00008067          	ret
    tail = (head ? tail -> next : head) = new Node(thread);
    800032e0:	00a4b023          	sd	a0,0(s1)
    800032e4:	fe1ff06f          	j	800032c4 <_ZN10ThreadList9push_backEP3TCB+0x44>

00000000800032e8 <_ZN10ThreadList4NodedlEPv>:

void ThreadList::Node::operator delete(void *addr) {
    800032e8:	ff010113          	addi	sp,sp,-16
    800032ec:	00113423          	sd	ra,8(sp)
    800032f0:	00813023          	sd	s0,0(sp)
    800032f4:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    800032f8:	fffff097          	auipc	ra,0xfffff
    800032fc:	2e0080e7          	jalr	736(ra) # 800025d8 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80003300:	00813083          	ld	ra,8(sp)
    80003304:	00013403          	ld	s0,0(sp)
    80003308:	01010113          	addi	sp,sp,16
    8000330c:	00008067          	ret

0000000080003310 <_ZN10ThreadList12remove_firstEv>:
TCB *ThreadList::remove_first() {
    80003310:	fe010113          	addi	sp,sp,-32
    80003314:	00113c23          	sd	ra,24(sp)
    80003318:	00813823          	sd	s0,16(sp)
    8000331c:	00913423          	sd	s1,8(sp)
    80003320:	02010413          	addi	s0,sp,32
    80003324:	00050793          	mv	a5,a0
    if (!head) return nullptr;
    80003328:	00053503          	ld	a0,0(a0)
    8000332c:	02050863          	beqz	a0,8000335c <_ZN10ThreadList12remove_firstEv+0x4c>
    TCB* thread = tmp -> data;
    80003330:	00053483          	ld	s1,0(a0)
    head = head -> next;
    80003334:	00853703          	ld	a4,8(a0)
    80003338:	00e7b023          	sd	a4,0(a5)
    delete tmp;
    8000333c:	00000097          	auipc	ra,0x0
    80003340:	fac080e7          	jalr	-84(ra) # 800032e8 <_ZN10ThreadList4NodedlEPv>
}
    80003344:	00048513          	mv	a0,s1
    80003348:	01813083          	ld	ra,24(sp)
    8000334c:	01013403          	ld	s0,16(sp)
    80003350:	00813483          	ld	s1,8(sp)
    80003354:	02010113          	addi	sp,sp,32
    80003358:	00008067          	ret
    if (!head) return nullptr;
    8000335c:	00050493          	mv	s1,a0
    80003360:	fe5ff06f          	j	80003344 <_ZN10ThreadList12remove_firstEv+0x34>

0000000080003364 <_ZN10ThreadList4freeEv>:
void ThreadList::free() {
    80003364:	fe010113          	addi	sp,sp,-32
    80003368:	00113c23          	sd	ra,24(sp)
    8000336c:	00813823          	sd	s0,16(sp)
    80003370:	00913423          	sd	s1,8(sp)
    80003374:	02010413          	addi	s0,sp,32
    80003378:	00050493          	mv	s1,a0
    while (get_first()) remove_first();
    8000337c:	00048513          	mv	a0,s1
    80003380:	00000097          	auipc	ra,0x0
    80003384:	de8080e7          	jalr	-536(ra) # 80003168 <_ZN10ThreadList9get_firstEv>
    80003388:	00050a63          	beqz	a0,8000339c <_ZN10ThreadList4freeEv+0x38>
    8000338c:	00048513          	mv	a0,s1
    80003390:	00000097          	auipc	ra,0x0
    80003394:	f80080e7          	jalr	-128(ra) # 80003310 <_ZN10ThreadList12remove_firstEv>
    80003398:	fe5ff06f          	j	8000337c <_ZN10ThreadList4freeEv+0x18>
}
    8000339c:	01813083          	ld	ra,24(sp)
    800033a0:	01013403          	ld	s0,16(sp)
    800033a4:	00813483          	ld	s1,8(sp)
    800033a8:	02010113          	addi	sp,sp,32
    800033ac:	00008067          	ret

00000000800033b0 <_ZN3TCB16wrapper_functionEv>:
    running -> set_status(Status::FINISHED);
    dispatch();
    return 0;
}

void TCB::wrapper_function() {
    800033b0:	ff010113          	addi	sp,sp,-16
    800033b4:	00113423          	sd	ra,8(sp)
    800033b8:	00813023          	sd	s0,0(sp)
    800033bc:	01010413          	addi	s0,sp,16
    RiscV::popSppSpie();
    800033c0:	00000097          	auipc	ra,0x0
    800033c4:	a54080e7          	jalr	-1452(ra) # 80002e14 <_ZN5RiscV10popSppSpieEv>
    if (running -> function_body) running -> function_body(running -> arg);
    800033c8:	00009717          	auipc	a4,0x9
    800033cc:	ad073703          	ld	a4,-1328(a4) # 8000be98 <_ZN3TCB7runningE>
    800033d0:	02873783          	ld	a5,40(a4)
    800033d4:	00078663          	beqz	a5,800033e0 <_ZN3TCB16wrapper_functionEv+0x30>
    800033d8:	03073503          	ld	a0,48(a4)
    800033dc:	000780e7          	jalr	a5
    ::thread_exit();
    800033e0:	ffffe097          	auipc	ra,0xffffe
    800033e4:	fa0080e7          	jalr	-96(ra) # 80001380 <_Z11thread_exitv>
}
    800033e8:	00813083          	ld	ra,8(sp)
    800033ec:	00013403          	ld	s0,0(sp)
    800033f0:	01010113          	addi	sp,sp,16
    800033f4:	00008067          	ret

00000000800033f8 <_ZN3TCBC1EPFvPvES0_S0_>:
            (uint64) (stack ? (uint64) stack + DEFAULT_STACK_SIZE - 1 : 0)
    800033f8:	08068863          	beqz	a3,80003488 <_ZN3TCBC1EPFvPvES0_S0_+0x90>
    800033fc:	000017b7          	lui	a5,0x1
    80003400:	fff78793          	addi	a5,a5,-1 # fff <_entry-0x7ffff001>
    80003404:	00f687b3          	add	a5,a3,a5
    context = {
    80003408:	00000717          	auipc	a4,0x0
    8000340c:	fa870713          	addi	a4,a4,-88 # 800033b0 <_ZN3TCB16wrapper_functionEv>
    80003410:	00e53823          	sd	a4,16(a0)
    80003414:	00f53c23          	sd	a5,24(a0)
    id = cnt++;
    80003418:	00009717          	auipc	a4,0x9
    8000341c:	a8070713          	addi	a4,a4,-1408 # 8000be98 <_ZN3TCB7runningE>
    80003420:	00872783          	lw	a5,8(a4)
    80003424:	0017881b          	addiw	a6,a5,1
    80003428:	01072423          	sw	a6,8(a4)
    8000342c:	00f52423          	sw	a5,8(a0)
    time_slice = DEFAULT_TIME_SLICE;
    80003430:	00200793          	li	a5,2
    80003434:	00f53023          	sd	a5,0(a0)
    status = RUNNABLE;
    80003438:	02052023          	sw	zero,32(a0)
    this -> function_body = function_body;
    8000343c:	02b53423          	sd	a1,40(a0)
    this -> arg = arg;
    80003440:	02c53823          	sd	a2,48(a0)
    this -> stack = stack;
    80003444:	02d53c23          	sd	a3,56(a0)
    timed_wait = false;
    80003448:	04050423          	sb	zero,72(a0)
    time_to_sleep = 0;
    8000344c:	04053823          	sd	zero,80(a0)
    next_ready = nullptr;
    80003450:	04053023          	sd	zero,64(a0)
    next_sleeping = nullptr;
    80003454:	04053c23          	sd	zero,88(a0)
    sem = nullptr;
    80003458:	06053023          	sd	zero,96(a0)
    if (function_body) Scheduler::put(this);
    8000345c:	02058a63          	beqz	a1,80003490 <_ZN3TCBC1EPFvPvES0_S0_+0x98>
TCB::TCB(void (*function_body)(void *), void *arg, void *stack) {
    80003460:	ff010113          	addi	sp,sp,-16
    80003464:	00113423          	sd	ra,8(sp)
    80003468:	00813023          	sd	s0,0(sp)
    8000346c:	01010413          	addi	s0,sp,16
    if (function_body) Scheduler::put(this);
    80003470:	fffff097          	auipc	ra,0xfffff
    80003474:	628080e7          	jalr	1576(ra) # 80002a98 <_ZN9Scheduler3putEP3TCB>
}
    80003478:	00813083          	ld	ra,8(sp)
    8000347c:	00013403          	ld	s0,0(sp)
    80003480:	01010113          	addi	sp,sp,16
    80003484:	00008067          	ret
            (uint64) (stack ? (uint64) stack + DEFAULT_STACK_SIZE - 1 : 0)
    80003488:	00000793          	li	a5,0
    8000348c:	f7dff06f          	j	80003408 <_ZN3TCBC1EPFvPvES0_S0_+0x10>
    80003490:	00008067          	ret

0000000080003494 <_ZN3TCB5yieldEPS_S0_>:

void TCB::yield(TCB *old_running, TCB *new_running) {
    80003494:	fe010113          	addi	sp,sp,-32
    80003498:	00113c23          	sd	ra,24(sp)
    8000349c:	00813823          	sd	s0,16(sp)
    800034a0:	00913423          	sd	s1,8(sp)
    800034a4:	01213023          	sd	s2,0(sp)
    800034a8:	02010413          	addi	s0,sp,32
    800034ac:	00050493          	mv	s1,a0
    800034b0:	00058913          	mv	s2,a1
    RiscV::push_registers();
    800034b4:	ffffe097          	auipc	ra,0xffffe
    800034b8:	c54080e7          	jalr	-940(ra) # 80001108 <_ZN5RiscV14push_registersEv>
    if (old_running != new_running) context_switch(&old_running -> context, &new_running -> context);
    800034bc:	01248a63          	beq	s1,s2,800034d0 <_ZN3TCB5yieldEPS_S0_+0x3c>
    800034c0:	01090593          	addi	a1,s2,16
    800034c4:	01048513          	addi	a0,s1,16
    800034c8:	ffffe097          	auipc	ra,0xffffe
    800034cc:	d40080e7          	jalr	-704(ra) # 80001208 <_ZN3TCB14context_switchEPNS_7ContextES1_>
    RiscV::pop_registers();
    800034d0:	ffffe097          	auipc	ra,0xffffe
    800034d4:	cb8080e7          	jalr	-840(ra) # 80001188 <_ZN5RiscV13pop_registersEv>
}
    800034d8:	01813083          	ld	ra,24(sp)
    800034dc:	01013403          	ld	s0,16(sp)
    800034e0:	00813483          	ld	s1,8(sp)
    800034e4:	00013903          	ld	s2,0(sp)
    800034e8:	02010113          	addi	sp,sp,32
    800034ec:	00008067          	ret

00000000800034f0 <_ZN3TCB8dispatchEv>:

void TCB::dispatch() {
    800034f0:	fe010113          	addi	sp,sp,-32
    800034f4:	00113c23          	sd	ra,24(sp)
    800034f8:	00813823          	sd	s0,16(sp)
    800034fc:	00913423          	sd	s1,8(sp)
    80003500:	02010413          	addi	s0,sp,32
    TCB* old = running;
    80003504:	00009497          	auipc	s1,0x9
    80003508:	9944b483          	ld	s1,-1644(s1) # 8000be98 <_ZN3TCB7runningE>
    if (old -> status == RUNNABLE) Scheduler::put(old);
    8000350c:	0204a783          	lw	a5,32(s1)
    80003510:	04078663          	beqz	a5,8000355c <_ZN3TCB8dispatchEv+0x6c>
    else if (old -> status == FINISHED) MemoryAllocator::mem_free(old -> stack);
    80003514:	00300713          	li	a4,3
    80003518:	04e78a63          	beq	a5,a4,8000356c <_ZN3TCB8dispatchEv+0x7c>
    running = Scheduler::get();
    8000351c:	fffff097          	auipc	ra,0xfffff
    80003520:	5ec080e7          	jalr	1516(ra) # 80002b08 <_ZN9Scheduler3getEv>
    80003524:	00050593          	mv	a1,a0
    80003528:	00009797          	auipc	a5,0x9
    8000352c:	97078793          	addi	a5,a5,-1680 # 8000be98 <_ZN3TCB7runningE>
    80003530:	00a7b023          	sd	a0,0(a5)
    time_slice_counter = 0;
    80003534:	0007b823          	sd	zero,16(a5)
    if (old != running) yield(old, running);
    80003538:	00a48863          	beq	s1,a0,80003548 <_ZN3TCB8dispatchEv+0x58>
    8000353c:	00048513          	mv	a0,s1
    80003540:	00000097          	auipc	ra,0x0
    80003544:	f54080e7          	jalr	-172(ra) # 80003494 <_ZN3TCB5yieldEPS_S0_>
}
    80003548:	01813083          	ld	ra,24(sp)
    8000354c:	01013403          	ld	s0,16(sp)
    80003550:	00813483          	ld	s1,8(sp)
    80003554:	02010113          	addi	sp,sp,32
    80003558:	00008067          	ret
    if (old -> status == RUNNABLE) Scheduler::put(old);
    8000355c:	00048513          	mv	a0,s1
    80003560:	fffff097          	auipc	ra,0xfffff
    80003564:	538080e7          	jalr	1336(ra) # 80002a98 <_ZN9Scheduler3putEP3TCB>
    80003568:	fb5ff06f          	j	8000351c <_ZN3TCB8dispatchEv+0x2c>
    else if (old -> status == FINISHED) MemoryAllocator::mem_free(old -> stack);
    8000356c:	0384b503          	ld	a0,56(s1)
    80003570:	fffff097          	auipc	ra,0xfffff
    80003574:	068080e7          	jalr	104(ra) # 800025d8 <_ZN15MemoryAllocator8mem_freeEPv>
    80003578:	fa5ff06f          	j	8000351c <_ZN3TCB8dispatchEv+0x2c>

000000008000357c <_ZNK3TCB14get_next_readyEv>:

TCB *TCB::get_next_ready() const {
    8000357c:	ff010113          	addi	sp,sp,-16
    80003580:	00813423          	sd	s0,8(sp)
    80003584:	01010413          	addi	s0,sp,16
    return next_ready;
}
    80003588:	04053503          	ld	a0,64(a0)
    8000358c:	00813403          	ld	s0,8(sp)
    80003590:	01010113          	addi	sp,sp,16
    80003594:	00008067          	ret

0000000080003598 <_ZN3TCB14set_next_readyEPS_>:

void TCB::set_next_ready(TCB *next) {
    80003598:	ff010113          	addi	sp,sp,-16
    8000359c:	00813423          	sd	s0,8(sp)
    800035a0:	01010413          	addi	s0,sp,16
    next_ready = next;
    800035a4:	04b53023          	sd	a1,64(a0)
}
    800035a8:	00813403          	ld	s0,8(sp)
    800035ac:	01010113          	addi	sp,sp,16
    800035b0:	00008067          	ret

00000000800035b4 <_ZN3TCB17set_next_sleepingEPS_>:

void TCB::set_next_sleeping(TCB *next) {
    800035b4:	ff010113          	addi	sp,sp,-16
    800035b8:	00813423          	sd	s0,8(sp)
    800035bc:	01010413          	addi	s0,sp,16
    next_sleeping = next;
    800035c0:	04b53c23          	sd	a1,88(a0)
}
    800035c4:	00813403          	ld	s0,8(sp)
    800035c8:	01010113          	addi	sp,sp,16
    800035cc:	00008067          	ret

00000000800035d0 <_ZNK3TCB17get_next_sleepingEv>:

TCB* TCB::get_next_sleeping() const {
    800035d0:	ff010113          	addi	sp,sp,-16
    800035d4:	00813423          	sd	s0,8(sp)
    800035d8:	01010413          	addi	s0,sp,16
    return next_sleeping;
}
    800035dc:	05853503          	ld	a0,88(a0)
    800035e0:	00813403          	ld	s0,8(sp)
    800035e4:	01010113          	addi	sp,sp,16
    800035e8:	00008067          	ret

00000000800035ec <_ZN3TCB17set_time_to_sleepEm>:

void TCB::set_time_to_sleep(time_t time) {
    800035ec:	ff010113          	addi	sp,sp,-16
    800035f0:	00813423          	sd	s0,8(sp)
    800035f4:	01010413          	addi	s0,sp,16
    time_to_sleep = time;
    800035f8:	04b53823          	sd	a1,80(a0)
}
    800035fc:	00813403          	ld	s0,8(sp)
    80003600:	01010113          	addi	sp,sp,16
    80003604:	00008067          	ret

0000000080003608 <_ZNK3TCB17get_time_to_sleepEv>:

time_t TCB::get_time_to_sleep() const {
    80003608:	ff010113          	addi	sp,sp,-16
    8000360c:	00813423          	sd	s0,8(sp)
    80003610:	01010413          	addi	s0,sp,16
    return time_to_sleep;
}
    80003614:	05053503          	ld	a0,80(a0)
    80003618:	00813403          	ld	s0,8(sp)
    8000361c:	01010113          	addi	sp,sp,16
    80003620:	00008067          	ret

0000000080003624 <_ZN3TCB10set_statusENS_6StatusE>:

void TCB::set_status(TCB::Status stat) {
    80003624:	ff010113          	addi	sp,sp,-16
    80003628:	00813423          	sd	s0,8(sp)
    8000362c:	01010413          	addi	s0,sp,16
    this -> status = stat;
    80003630:	02b52023          	sw	a1,32(a0)
}
    80003634:	00813403          	ld	s0,8(sp)
    80003638:	01010113          	addi	sp,sp,16
    8000363c:	00008067          	ret

0000000080003640 <_ZN3TCB11thread_exitEv>:
    if (!running) return -1;
    80003640:	00009517          	auipc	a0,0x9
    80003644:	85853503          	ld	a0,-1960(a0) # 8000be98 <_ZN3TCB7runningE>
    80003648:	02050e63          	beqz	a0,80003684 <_ZN3TCB11thread_exitEv+0x44>
int TCB::thread_exit() {
    8000364c:	ff010113          	addi	sp,sp,-16
    80003650:	00113423          	sd	ra,8(sp)
    80003654:	00813023          	sd	s0,0(sp)
    80003658:	01010413          	addi	s0,sp,16
    running -> set_status(Status::FINISHED);
    8000365c:	00300593          	li	a1,3
    80003660:	00000097          	auipc	ra,0x0
    80003664:	fc4080e7          	jalr	-60(ra) # 80003624 <_ZN3TCB10set_statusENS_6StatusE>
    dispatch();
    80003668:	00000097          	auipc	ra,0x0
    8000366c:	e88080e7          	jalr	-376(ra) # 800034f0 <_ZN3TCB8dispatchEv>
    return 0;
    80003670:	00000513          	li	a0,0
}
    80003674:	00813083          	ld	ra,8(sp)
    80003678:	00013403          	ld	s0,0(sp)
    8000367c:	01010113          	addi	sp,sp,16
    80003680:	00008067          	ret
    if (!running) return -1;
    80003684:	fff00513          	li	a0,-1
}
    80003688:	00008067          	ret

000000008000368c <_ZN3TCBnwEm>:

void *TCB::operator new(size_t size) {
    8000368c:	ff010113          	addi	sp,sp,-16
    80003690:	00113423          	sd	ra,8(sp)
    80003694:	00813023          	sd	s0,0(sp)
    80003698:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    8000369c:	fffff097          	auipc	ra,0xfffff
    800036a0:	18c080e7          	jalr	396(ra) # 80002828 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    800036a4:	fffff097          	auipc	ra,0xfffff
    800036a8:	dc0080e7          	jalr	-576(ra) # 80002464 <_ZN15MemoryAllocator9mem_allocEm>
}
    800036ac:	00813083          	ld	ra,8(sp)
    800036b0:	00013403          	ld	s0,0(sp)
    800036b4:	01010113          	addi	sp,sp,16
    800036b8:	00008067          	ret

00000000800036bc <_ZN3TCBdlEPv>:

void TCB::operator delete(void *addr) {
    800036bc:	ff010113          	addi	sp,sp,-16
    800036c0:	00113423          	sd	ra,8(sp)
    800036c4:	00813023          	sd	s0,0(sp)
    800036c8:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    800036cc:	fffff097          	auipc	ra,0xfffff
    800036d0:	f0c080e7          	jalr	-244(ra) # 800025d8 <_ZN15MemoryAllocator8mem_freeEPv>
}
    800036d4:	00813083          	ld	ra,8(sp)
    800036d8:	00013403          	ld	s0,0(sp)
    800036dc:	01010113          	addi	sp,sp,16
    800036e0:	00008067          	ret

00000000800036e4 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>:
int TCB::thread_create(thread_t *handle, void(*start_routine)(void *), void *arg, void *stack_begin_address) {
    800036e4:	fc010113          	addi	sp,sp,-64
    800036e8:	02113c23          	sd	ra,56(sp)
    800036ec:	02813823          	sd	s0,48(sp)
    800036f0:	02913423          	sd	s1,40(sp)
    800036f4:	03213023          	sd	s2,32(sp)
    800036f8:	01313c23          	sd	s3,24(sp)
    800036fc:	01413823          	sd	s4,16(sp)
    80003700:	01513423          	sd	s5,8(sp)
    80003704:	04010413          	addi	s0,sp,64
    80003708:	00050913          	mv	s2,a0
    8000370c:	00058993          	mv	s3,a1
    80003710:	00060a13          	mv	s4,a2
    80003714:	00068a93          	mv	s5,a3
    *handle = new TCB(start_routine, arg, stack_begin_address);
    80003718:	06800513          	li	a0,104
    8000371c:	00000097          	auipc	ra,0x0
    80003720:	f70080e7          	jalr	-144(ra) # 8000368c <_ZN3TCBnwEm>
    80003724:	00050493          	mv	s1,a0
    80003728:	000a8693          	mv	a3,s5
    8000372c:	000a0613          	mv	a2,s4
    80003730:	00098593          	mv	a1,s3
    80003734:	00000097          	auipc	ra,0x0
    80003738:	cc4080e7          	jalr	-828(ra) # 800033f8 <_ZN3TCBC1EPFvPvES0_S0_>
    8000373c:	00993023          	sd	s1,0(s2)
    if (!*handle) return -1;
    80003740:	02048663          	beqz	s1,8000376c <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_+0x88>
    return 0;
    80003744:	00000513          	li	a0,0
}
    80003748:	03813083          	ld	ra,56(sp)
    8000374c:	03013403          	ld	s0,48(sp)
    80003750:	02813483          	ld	s1,40(sp)
    80003754:	02013903          	ld	s2,32(sp)
    80003758:	01813983          	ld	s3,24(sp)
    8000375c:	01013a03          	ld	s4,16(sp)
    80003760:	00813a83          	ld	s5,8(sp)
    80003764:	04010113          	addi	sp,sp,64
    80003768:	00008067          	ret
    if (!*handle) return -1;
    8000376c:	fff00513          	li	a0,-1
    80003770:	fd9ff06f          	j	80003748 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_+0x64>
    80003774:	00050913          	mv	s2,a0
    *handle = new TCB(start_routine, arg, stack_begin_address);
    80003778:	00048513          	mv	a0,s1
    8000377c:	00000097          	auipc	ra,0x0
    80003780:	f40080e7          	jalr	-192(ra) # 800036bc <_ZN3TCBdlEPv>
    80003784:	00090513          	mv	a0,s2
    80003788:	0000a097          	auipc	ra,0xa
    8000378c:	840080e7          	jalr	-1984(ra) # 8000cfc8 <_Unwind_Resume>

0000000080003790 <_ZN3TCBnaEm>:

void *TCB::operator new[](size_t size) {
    80003790:	ff010113          	addi	sp,sp,-16
    80003794:	00113423          	sd	ra,8(sp)
    80003798:	00813023          	sd	s0,0(sp)
    8000379c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    800037a0:	fffff097          	auipc	ra,0xfffff
    800037a4:	088080e7          	jalr	136(ra) # 80002828 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    800037a8:	fffff097          	auipc	ra,0xfffff
    800037ac:	cbc080e7          	jalr	-836(ra) # 80002464 <_ZN15MemoryAllocator9mem_allocEm>
}
    800037b0:	00813083          	ld	ra,8(sp)
    800037b4:	00013403          	ld	s0,0(sp)
    800037b8:	01010113          	addi	sp,sp,16
    800037bc:	00008067          	ret

00000000800037c0 <_ZN3TCBdaEPv>:

void TCB::operator delete[](void *addr) {
    800037c0:	ff010113          	addi	sp,sp,-16
    800037c4:	00113423          	sd	ra,8(sp)
    800037c8:	00813023          	sd	s0,0(sp)
    800037cc:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    800037d0:	fffff097          	auipc	ra,0xfffff
    800037d4:	e08080e7          	jalr	-504(ra) # 800025d8 <_ZN15MemoryAllocator8mem_freeEPv>
}
    800037d8:	00813083          	ld	ra,8(sp)
    800037dc:	00013403          	ld	s0,0(sp)
    800037e0:	01010113          	addi	sp,sp,16
    800037e4:	00008067          	ret

00000000800037e8 <_ZNK3TCB11is_finishedEv>:

bool TCB::is_finished() const {
    800037e8:	ff010113          	addi	sp,sp,-16
    800037ec:	00813423          	sd	s0,8(sp)
    800037f0:	01010413          	addi	s0,sp,16
    return status == FINISHED;
    800037f4:	02052503          	lw	a0,32(a0)
    800037f8:	ffd50513          	addi	a0,a0,-3
}
    800037fc:	00153513          	seqz	a0,a0
    80003800:	00813403          	ld	s0,8(sp)
    80003804:	01010113          	addi	sp,sp,16
    80003808:	00008067          	ret

000000008000380c <_ZN3TCB21clear_from_timed_waitEb>:

/// reset state after timed wait
void TCB::clear_from_timed_wait(bool removed_from_timer) {
    8000380c:	fe010113          	addi	sp,sp,-32
    80003810:	00113c23          	sd	ra,24(sp)
    80003814:	00813823          	sd	s0,16(sp)
    80003818:	00913423          	sd	s1,8(sp)
    8000381c:	02010413          	addi	s0,sp,32
    80003820:	00050493          	mv	s1,a0
    if (removed_from_timer) {
    80003824:	02059063          	bnez	a1,80003844 <_ZN3TCB21clear_from_timed_waitEb+0x38>
        sem -> blocked_threads -> remove(this);
        ++sem -> value;
    }
    timed_wait = false;
    80003828:	04048423          	sb	zero,72(s1)
    sem = nullptr;
    8000382c:	0604b023          	sd	zero,96(s1)
}
    80003830:	01813083          	ld	ra,24(sp)
    80003834:	01013403          	ld	s0,16(sp)
    80003838:	00813483          	ld	s1,8(sp)
    8000383c:	02010113          	addi	sp,sp,32
    80003840:	00008067          	ret
        sem -> blocked_threads -> remove(this);
    80003844:	06053783          	ld	a5,96(a0)
    80003848:	00050593          	mv	a1,a0
    8000384c:	0087b503          	ld	a0,8(a5)
    80003850:	00000097          	auipc	ra,0x0
    80003854:	93c080e7          	jalr	-1732(ra) # 8000318c <_ZN10ThreadList6removeEP3TCB>
        ++sem -> value;
    80003858:	0604b703          	ld	a4,96(s1)
    8000385c:	01072783          	lw	a5,16(a4)
    80003860:	0017879b          	addiw	a5,a5,1
    80003864:	00f72823          	sw	a5,16(a4)
    80003868:	fc1ff06f          	j	80003828 <_ZN3TCB21clear_from_timed_waitEb+0x1c>

000000008000386c <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    8000386c:	fe010113          	addi	sp,sp,-32
    80003870:	00113c23          	sd	ra,24(sp)
    80003874:	00813823          	sd	s0,16(sp)
    80003878:	00913423          	sd	s1,8(sp)
    8000387c:	01213023          	sd	s2,0(sp)
    80003880:	02010413          	addi	s0,sp,32
    80003884:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80003888:	00000913          	li	s2,0
    8000388c:	00c0006f          	j	80003898 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x31) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003890:	ffffe097          	auipc	ra,0xffffe
    80003894:	b3c080e7          	jalr	-1220(ra) # 800013cc <_Z15thread_dispatchv>
    while ((key = getc()) != 0x31) {
    80003898:	ffffe097          	auipc	ra,0xffffe
    8000389c:	d88080e7          	jalr	-632(ra) # 80001620 <_Z4getcv>
    800038a0:	0005059b          	sext.w	a1,a0
    800038a4:	03100793          	li	a5,49
    800038a8:	02f58a63          	beq	a1,a5,800038dc <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    800038ac:	0084b503          	ld	a0,8(s1)
    800038b0:	00001097          	auipc	ra,0x1
    800038b4:	66c080e7          	jalr	1644(ra) # 80004f1c <_ZN6Buffer3putEi>
        i++;
    800038b8:	0019071b          	addiw	a4,s2,1
    800038bc:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800038c0:	0004a683          	lw	a3,0(s1)
    800038c4:	0026979b          	slliw	a5,a3,0x2
    800038c8:	00d787bb          	addw	a5,a5,a3
    800038cc:	0017979b          	slliw	a5,a5,0x1
    800038d0:	02f767bb          	remw	a5,a4,a5
    800038d4:	fc0792e3          	bnez	a5,80003898 <_ZL16producerKeyboardPv+0x2c>
    800038d8:	fb9ff06f          	j	80003890 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    800038dc:	00100793          	li	a5,1
    800038e0:	00008717          	auipc	a4,0x8
    800038e4:	5cf72823          	sw	a5,1488(a4) # 8000beb0 <_ZL9threadEnd>
    data->buffer->put('!');
    800038e8:	02100593          	li	a1,33
    800038ec:	0084b503          	ld	a0,8(s1)
    800038f0:	00001097          	auipc	ra,0x1
    800038f4:	62c080e7          	jalr	1580(ra) # 80004f1c <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    800038f8:	0104b503          	ld	a0,16(s1)
    800038fc:	ffffe097          	auipc	ra,0xffffe
    80003900:	bf4080e7          	jalr	-1036(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    80003904:	01813083          	ld	ra,24(sp)
    80003908:	01013403          	ld	s0,16(sp)
    8000390c:	00813483          	ld	s1,8(sp)
    80003910:	00013903          	ld	s2,0(sp)
    80003914:	02010113          	addi	sp,sp,32
    80003918:	00008067          	ret

000000008000391c <_ZL8producerPv>:

static void producer(void *arg) {
    8000391c:	fe010113          	addi	sp,sp,-32
    80003920:	00113c23          	sd	ra,24(sp)
    80003924:	00813823          	sd	s0,16(sp)
    80003928:	00913423          	sd	s1,8(sp)
    8000392c:	01213023          	sd	s2,0(sp)
    80003930:	02010413          	addi	s0,sp,32
    80003934:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003938:	00000913          	li	s2,0
    8000393c:	00c0006f          	j	80003948 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003940:	ffffe097          	auipc	ra,0xffffe
    80003944:	a8c080e7          	jalr	-1396(ra) # 800013cc <_Z15thread_dispatchv>
    while (!threadEnd) {
    80003948:	00008797          	auipc	a5,0x8
    8000394c:	5687a783          	lw	a5,1384(a5) # 8000beb0 <_ZL9threadEnd>
    80003950:	02079e63          	bnez	a5,8000398c <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80003954:	0004a583          	lw	a1,0(s1)
    80003958:	0305859b          	addiw	a1,a1,48
    8000395c:	0084b503          	ld	a0,8(s1)
    80003960:	00001097          	auipc	ra,0x1
    80003964:	5bc080e7          	jalr	1468(ra) # 80004f1c <_ZN6Buffer3putEi>
        i++;
    80003968:	0019071b          	addiw	a4,s2,1
    8000396c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003970:	0004a683          	lw	a3,0(s1)
    80003974:	0026979b          	slliw	a5,a3,0x2
    80003978:	00d787bb          	addw	a5,a5,a3
    8000397c:	0017979b          	slliw	a5,a5,0x1
    80003980:	02f767bb          	remw	a5,a4,a5
    80003984:	fc0792e3          	bnez	a5,80003948 <_ZL8producerPv+0x2c>
    80003988:	fb9ff06f          	j	80003940 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    8000398c:	0104b503          	ld	a0,16(s1)
    80003990:	ffffe097          	auipc	ra,0xffffe
    80003994:	b60080e7          	jalr	-1184(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    80003998:	01813083          	ld	ra,24(sp)
    8000399c:	01013403          	ld	s0,16(sp)
    800039a0:	00813483          	ld	s1,8(sp)
    800039a4:	00013903          	ld	s2,0(sp)
    800039a8:	02010113          	addi	sp,sp,32
    800039ac:	00008067          	ret

00000000800039b0 <_ZL8consumerPv>:

static void consumer(void *arg) {
    800039b0:	fd010113          	addi	sp,sp,-48
    800039b4:	02113423          	sd	ra,40(sp)
    800039b8:	02813023          	sd	s0,32(sp)
    800039bc:	00913c23          	sd	s1,24(sp)
    800039c0:	01213823          	sd	s2,16(sp)
    800039c4:	01313423          	sd	s3,8(sp)
    800039c8:	03010413          	addi	s0,sp,48
    800039cc:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800039d0:	00000993          	li	s3,0
    800039d4:	01c0006f          	j	800039f0 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    800039d8:	ffffe097          	auipc	ra,0xffffe
    800039dc:	9f4080e7          	jalr	-1548(ra) # 800013cc <_Z15thread_dispatchv>
    800039e0:	0500006f          	j	80003a30 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    800039e4:	00a00513          	li	a0,10
    800039e8:	ffffe097          	auipc	ra,0xffffe
    800039ec:	c84080e7          	jalr	-892(ra) # 8000166c <_Z4putcc>
    while (!threadEnd) {
    800039f0:	00008797          	auipc	a5,0x8
    800039f4:	4c07a783          	lw	a5,1216(a5) # 8000beb0 <_ZL9threadEnd>
    800039f8:	06079063          	bnez	a5,80003a58 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    800039fc:	00893503          	ld	a0,8(s2)
    80003a00:	00001097          	auipc	ra,0x1
    80003a04:	5ac080e7          	jalr	1452(ra) # 80004fac <_ZN6Buffer3getEv>
        i++;
    80003a08:	0019849b          	addiw	s1,s3,1
    80003a0c:	0004899b          	sext.w	s3,s1
        putc(key);
    80003a10:	0ff57513          	andi	a0,a0,255
    80003a14:	ffffe097          	auipc	ra,0xffffe
    80003a18:	c58080e7          	jalr	-936(ra) # 8000166c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80003a1c:	00092703          	lw	a4,0(s2)
    80003a20:	0027179b          	slliw	a5,a4,0x2
    80003a24:	00e787bb          	addw	a5,a5,a4
    80003a28:	02f4e7bb          	remw	a5,s1,a5
    80003a2c:	fa0786e3          	beqz	a5,800039d8 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80003a30:	05000793          	li	a5,80
    80003a34:	02f4e4bb          	remw	s1,s1,a5
    80003a38:	fa049ce3          	bnez	s1,800039f0 <_ZL8consumerPv+0x40>
    80003a3c:	fa9ff06f          	j	800039e4 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80003a40:	00893503          	ld	a0,8(s2)
    80003a44:	00001097          	auipc	ra,0x1
    80003a48:	568080e7          	jalr	1384(ra) # 80004fac <_ZN6Buffer3getEv>
        putc(key);
    80003a4c:	0ff57513          	andi	a0,a0,255
    80003a50:	ffffe097          	auipc	ra,0xffffe
    80003a54:	c1c080e7          	jalr	-996(ra) # 8000166c <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80003a58:	00893503          	ld	a0,8(s2)
    80003a5c:	00001097          	auipc	ra,0x1
    80003a60:	5dc080e7          	jalr	1500(ra) # 80005038 <_ZN6Buffer6getCntEv>
    80003a64:	fca04ee3          	bgtz	a0,80003a40 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80003a68:	01093503          	ld	a0,16(s2)
    80003a6c:	ffffe097          	auipc	ra,0xffffe
    80003a70:	a84080e7          	jalr	-1404(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    80003a74:	02813083          	ld	ra,40(sp)
    80003a78:	02013403          	ld	s0,32(sp)
    80003a7c:	01813483          	ld	s1,24(sp)
    80003a80:	01013903          	ld	s2,16(sp)
    80003a84:	00813983          	ld	s3,8(sp)
    80003a88:	03010113          	addi	sp,sp,48
    80003a8c:	00008067          	ret

0000000080003a90 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80003a90:	f9010113          	addi	sp,sp,-112
    80003a94:	06113423          	sd	ra,104(sp)
    80003a98:	06813023          	sd	s0,96(sp)
    80003a9c:	04913c23          	sd	s1,88(sp)
    80003aa0:	05213823          	sd	s2,80(sp)
    80003aa4:	05313423          	sd	s3,72(sp)
    80003aa8:	05413023          	sd	s4,64(sp)
    80003aac:	03513c23          	sd	s5,56(sp)
    80003ab0:	03613823          	sd	s6,48(sp)
    80003ab4:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80003ab8:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003abc:	00005517          	auipc	a0,0x5
    80003ac0:	67450513          	addi	a0,a0,1652 # 80009130 <CONSOLE_STATUS+0x120>
    80003ac4:	00002097          	auipc	ra,0x2
    80003ac8:	540080e7          	jalr	1344(ra) # 80006004 <_Z11printStringPKc>
    getString(input, 30);
    80003acc:	01e00593          	li	a1,30
    80003ad0:	fa040493          	addi	s1,s0,-96
    80003ad4:	00048513          	mv	a0,s1
    80003ad8:	00002097          	auipc	ra,0x2
    80003adc:	5b4080e7          	jalr	1460(ra) # 8000608c <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003ae0:	00048513          	mv	a0,s1
    80003ae4:	00002097          	auipc	ra,0x2
    80003ae8:	680080e7          	jalr	1664(ra) # 80006164 <_Z11stringToIntPKc>
    80003aec:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003af0:	00005517          	auipc	a0,0x5
    80003af4:	66050513          	addi	a0,a0,1632 # 80009150 <CONSOLE_STATUS+0x140>
    80003af8:	00002097          	auipc	ra,0x2
    80003afc:	50c080e7          	jalr	1292(ra) # 80006004 <_Z11printStringPKc>
    getString(input, 30);
    80003b00:	01e00593          	li	a1,30
    80003b04:	00048513          	mv	a0,s1
    80003b08:	00002097          	auipc	ra,0x2
    80003b0c:	584080e7          	jalr	1412(ra) # 8000608c <_Z9getStringPci>
    n = stringToInt(input);
    80003b10:	00048513          	mv	a0,s1
    80003b14:	00002097          	auipc	ra,0x2
    80003b18:	650080e7          	jalr	1616(ra) # 80006164 <_Z11stringToIntPKc>
    80003b1c:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003b20:	00005517          	auipc	a0,0x5
    80003b24:	65050513          	addi	a0,a0,1616 # 80009170 <CONSOLE_STATUS+0x160>
    80003b28:	00002097          	auipc	ra,0x2
    80003b2c:	4dc080e7          	jalr	1244(ra) # 80006004 <_Z11printStringPKc>
    80003b30:	00000613          	li	a2,0
    80003b34:	00a00593          	li	a1,10
    80003b38:	00090513          	mv	a0,s2
    80003b3c:	00002097          	auipc	ra,0x2
    80003b40:	678080e7          	jalr	1656(ra) # 800061b4 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003b44:	00005517          	auipc	a0,0x5
    80003b48:	64450513          	addi	a0,a0,1604 # 80009188 <CONSOLE_STATUS+0x178>
    80003b4c:	00002097          	auipc	ra,0x2
    80003b50:	4b8080e7          	jalr	1208(ra) # 80006004 <_Z11printStringPKc>
    80003b54:	00000613          	li	a2,0
    80003b58:	00a00593          	li	a1,10
    80003b5c:	00048513          	mv	a0,s1
    80003b60:	00002097          	auipc	ra,0x2
    80003b64:	654080e7          	jalr	1620(ra) # 800061b4 <_Z8printIntiii>
    printString(".\n");
    80003b68:	00005517          	auipc	a0,0x5
    80003b6c:	63850513          	addi	a0,a0,1592 # 800091a0 <CONSOLE_STATUS+0x190>
    80003b70:	00002097          	auipc	ra,0x2
    80003b74:	494080e7          	jalr	1172(ra) # 80006004 <_Z11printStringPKc>
    if(threadNum > n) {
    80003b78:	0324c463          	blt	s1,s2,80003ba0 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003b7c:	03205c63          	blez	s2,80003bb4 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003b80:	03800513          	li	a0,56
    80003b84:	ffffe097          	auipc	ra,0xffffe
    80003b88:	45c080e7          	jalr	1116(ra) # 80001fe0 <_Znwm>
    80003b8c:	00050a13          	mv	s4,a0
    80003b90:	00048593          	mv	a1,s1
    80003b94:	00001097          	auipc	ra,0x1
    80003b98:	2ec080e7          	jalr	748(ra) # 80004e80 <_ZN6BufferC1Ei>
    80003b9c:	0300006f          	j	80003bcc <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003ba0:	00005517          	auipc	a0,0x5
    80003ba4:	60850513          	addi	a0,a0,1544 # 800091a8 <CONSOLE_STATUS+0x198>
    80003ba8:	00002097          	auipc	ra,0x2
    80003bac:	45c080e7          	jalr	1116(ra) # 80006004 <_Z11printStringPKc>
        return;
    80003bb0:	0140006f          	j	80003bc4 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003bb4:	00005517          	auipc	a0,0x5
    80003bb8:	63450513          	addi	a0,a0,1588 # 800091e8 <CONSOLE_STATUS+0x1d8>
    80003bbc:	00002097          	auipc	ra,0x2
    80003bc0:	448080e7          	jalr	1096(ra) # 80006004 <_Z11printStringPKc>
        return;
    80003bc4:	000b0113          	mv	sp,s6
    80003bc8:	1500006f          	j	80003d18 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003bcc:	00000593          	li	a1,0
    80003bd0:	00008517          	auipc	a0,0x8
    80003bd4:	2e850513          	addi	a0,a0,744 # 8000beb8 <_ZL10waitForAll>
    80003bd8:	ffffe097          	auipc	ra,0xffffe
    80003bdc:	830080e7          	jalr	-2000(ra) # 80001408 <_Z8sem_openPP3Semj>
    thread_t threads[threadNum];
    80003be0:	00391793          	slli	a5,s2,0x3
    80003be4:	00f78793          	addi	a5,a5,15
    80003be8:	ff07f793          	andi	a5,a5,-16
    80003bec:	40f10133          	sub	sp,sp,a5
    80003bf0:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003bf4:	0019071b          	addiw	a4,s2,1
    80003bf8:	00171793          	slli	a5,a4,0x1
    80003bfc:	00e787b3          	add	a5,a5,a4
    80003c00:	00379793          	slli	a5,a5,0x3
    80003c04:	00f78793          	addi	a5,a5,15
    80003c08:	ff07f793          	andi	a5,a5,-16
    80003c0c:	40f10133          	sub	sp,sp,a5
    80003c10:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003c14:	00191613          	slli	a2,s2,0x1
    80003c18:	012607b3          	add	a5,a2,s2
    80003c1c:	00379793          	slli	a5,a5,0x3
    80003c20:	00f987b3          	add	a5,s3,a5
    80003c24:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003c28:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003c2c:	00008717          	auipc	a4,0x8
    80003c30:	28c73703          	ld	a4,652(a4) # 8000beb8 <_ZL10waitForAll>
    80003c34:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003c38:	00078613          	mv	a2,a5
    80003c3c:	00000597          	auipc	a1,0x0
    80003c40:	d7458593          	addi	a1,a1,-652 # 800039b0 <_ZL8consumerPv>
    80003c44:	f9840513          	addi	a0,s0,-104
    80003c48:	ffffd097          	auipc	ra,0xffffd
    80003c4c:	6b0080e7          	jalr	1712(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003c50:	00000493          	li	s1,0
    80003c54:	0280006f          	j	80003c7c <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003c58:	00000597          	auipc	a1,0x0
    80003c5c:	c1458593          	addi	a1,a1,-1004 # 8000386c <_ZL16producerKeyboardPv>
                      data + i);
    80003c60:	00179613          	slli	a2,a5,0x1
    80003c64:	00f60633          	add	a2,a2,a5
    80003c68:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003c6c:	00c98633          	add	a2,s3,a2
    80003c70:	ffffd097          	auipc	ra,0xffffd
    80003c74:	688080e7          	jalr	1672(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003c78:	0014849b          	addiw	s1,s1,1
    80003c7c:	0524d263          	bge	s1,s2,80003cc0 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003c80:	00149793          	slli	a5,s1,0x1
    80003c84:	009787b3          	add	a5,a5,s1
    80003c88:	00379793          	slli	a5,a5,0x3
    80003c8c:	00f987b3          	add	a5,s3,a5
    80003c90:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003c94:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80003c98:	00008717          	auipc	a4,0x8
    80003c9c:	22073703          	ld	a4,544(a4) # 8000beb8 <_ZL10waitForAll>
    80003ca0:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003ca4:	00048793          	mv	a5,s1
    80003ca8:	00349513          	slli	a0,s1,0x3
    80003cac:	00aa8533          	add	a0,s5,a0
    80003cb0:	fa9054e3          	blez	s1,80003c58 <_Z22producerConsumer_C_APIv+0x1c8>
    80003cb4:	00000597          	auipc	a1,0x0
    80003cb8:	c6858593          	addi	a1,a1,-920 # 8000391c <_ZL8producerPv>
    80003cbc:	fa5ff06f          	j	80003c60 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003cc0:	ffffd097          	auipc	ra,0xffffd
    80003cc4:	70c080e7          	jalr	1804(ra) # 800013cc <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003cc8:	00000493          	li	s1,0
    80003ccc:	00994e63          	blt	s2,s1,80003ce8 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003cd0:	00008517          	auipc	a0,0x8
    80003cd4:	1e853503          	ld	a0,488(a0) # 8000beb8 <_ZL10waitForAll>
    80003cd8:	ffffd097          	auipc	ra,0xffffd
    80003cdc:	7cc080e7          	jalr	1996(ra) # 800014a4 <_Z8sem_waitP3Sem>
    for (int i = 0; i <= threadNum; i++) {
    80003ce0:	0014849b          	addiw	s1,s1,1
    80003ce4:	fe9ff06f          	j	80003ccc <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003ce8:	00008517          	auipc	a0,0x8
    80003cec:	1d053503          	ld	a0,464(a0) # 8000beb8 <_ZL10waitForAll>
    80003cf0:	ffffd097          	auipc	ra,0xffffd
    80003cf4:	768080e7          	jalr	1896(ra) # 80001458 <_Z9sem_closeP3Sem>
    delete buffer;
    80003cf8:	000a0e63          	beqz	s4,80003d14 <_Z22producerConsumer_C_APIv+0x284>
    80003cfc:	000a0513          	mv	a0,s4
    80003d00:	00001097          	auipc	ra,0x1
    80003d04:	3c0080e7          	jalr	960(ra) # 800050c0 <_ZN6BufferD1Ev>
    80003d08:	000a0513          	mv	a0,s4
    80003d0c:	ffffe097          	auipc	ra,0xffffe
    80003d10:	2fc080e7          	jalr	764(ra) # 80002008 <_ZdlPv>
    80003d14:	000b0113          	mv	sp,s6

}
    80003d18:	f9040113          	addi	sp,s0,-112
    80003d1c:	06813083          	ld	ra,104(sp)
    80003d20:	06013403          	ld	s0,96(sp)
    80003d24:	05813483          	ld	s1,88(sp)
    80003d28:	05013903          	ld	s2,80(sp)
    80003d2c:	04813983          	ld	s3,72(sp)
    80003d30:	04013a03          	ld	s4,64(sp)
    80003d34:	03813a83          	ld	s5,56(sp)
    80003d38:	03013b03          	ld	s6,48(sp)
    80003d3c:	07010113          	addi	sp,sp,112
    80003d40:	00008067          	ret
    80003d44:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003d48:	000a0513          	mv	a0,s4
    80003d4c:	ffffe097          	auipc	ra,0xffffe
    80003d50:	2bc080e7          	jalr	700(ra) # 80002008 <_ZdlPv>
    80003d54:	00048513          	mv	a0,s1
    80003d58:	00009097          	auipc	ra,0x9
    80003d5c:	270080e7          	jalr	624(ra) # 8000cfc8 <_Unwind_Resume>

0000000080003d60 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003d60:	fe010113          	addi	sp,sp,-32
    80003d64:	00113c23          	sd	ra,24(sp)
    80003d68:	00813823          	sd	s0,16(sp)
    80003d6c:	00913423          	sd	s1,8(sp)
    80003d70:	01213023          	sd	s2,0(sp)
    80003d74:	02010413          	addi	s0,sp,32
    80003d78:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003d7c:	00100793          	li	a5,1
    80003d80:	02a7f863          	bgeu	a5,a0,80003db0 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003d84:	00a00793          	li	a5,10
    80003d88:	02f577b3          	remu	a5,a0,a5
    80003d8c:	02078e63          	beqz	a5,80003dc8 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003d90:	fff48513          	addi	a0,s1,-1
    80003d94:	00000097          	auipc	ra,0x0
    80003d98:	fcc080e7          	jalr	-52(ra) # 80003d60 <_ZL9fibonaccim>
    80003d9c:	00050913          	mv	s2,a0
    80003da0:	ffe48513          	addi	a0,s1,-2
    80003da4:	00000097          	auipc	ra,0x0
    80003da8:	fbc080e7          	jalr	-68(ra) # 80003d60 <_ZL9fibonaccim>
    80003dac:	00a90533          	add	a0,s2,a0
}
    80003db0:	01813083          	ld	ra,24(sp)
    80003db4:	01013403          	ld	s0,16(sp)
    80003db8:	00813483          	ld	s1,8(sp)
    80003dbc:	00013903          	ld	s2,0(sp)
    80003dc0:	02010113          	addi	sp,sp,32
    80003dc4:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003dc8:	ffffd097          	auipc	ra,0xffffd
    80003dcc:	604080e7          	jalr	1540(ra) # 800013cc <_Z15thread_dispatchv>
    80003dd0:	fc1ff06f          	j	80003d90 <_ZL9fibonaccim+0x30>

0000000080003dd4 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003dd4:	fe010113          	addi	sp,sp,-32
    80003dd8:	00113c23          	sd	ra,24(sp)
    80003ddc:	00813823          	sd	s0,16(sp)
    80003de0:	00913423          	sd	s1,8(sp)
    80003de4:	01213023          	sd	s2,0(sp)
    80003de8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003dec:	00000913          	li	s2,0
    80003df0:	0380006f          	j	80003e28 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003df4:	ffffd097          	auipc	ra,0xffffd
    80003df8:	5d8080e7          	jalr	1496(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003dfc:	00148493          	addi	s1,s1,1
    80003e00:	000027b7          	lui	a5,0x2
    80003e04:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003e08:	0097ee63          	bltu	a5,s1,80003e24 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003e0c:	00000713          	li	a4,0
    80003e10:	000077b7          	lui	a5,0x7
    80003e14:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003e18:	fce7eee3          	bltu	a5,a4,80003df4 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003e1c:	00170713          	addi	a4,a4,1
    80003e20:	ff1ff06f          	j	80003e10 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003e24:	00190913          	addi	s2,s2,1
    80003e28:	00900793          	li	a5,9
    80003e2c:	0527e063          	bltu	a5,s2,80003e6c <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003e30:	00005517          	auipc	a0,0x5
    80003e34:	3e850513          	addi	a0,a0,1000 # 80009218 <CONSOLE_STATUS+0x208>
    80003e38:	00002097          	auipc	ra,0x2
    80003e3c:	1cc080e7          	jalr	460(ra) # 80006004 <_Z11printStringPKc>
    80003e40:	00000613          	li	a2,0
    80003e44:	00a00593          	li	a1,10
    80003e48:	0009051b          	sext.w	a0,s2
    80003e4c:	00002097          	auipc	ra,0x2
    80003e50:	368080e7          	jalr	872(ra) # 800061b4 <_Z8printIntiii>
    80003e54:	00005517          	auipc	a0,0x5
    80003e58:	62450513          	addi	a0,a0,1572 # 80009478 <CONSOLE_STATUS+0x468>
    80003e5c:	00002097          	auipc	ra,0x2
    80003e60:	1a8080e7          	jalr	424(ra) # 80006004 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003e64:	00000493          	li	s1,0
    80003e68:	f99ff06f          	j	80003e00 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003e6c:	00005517          	auipc	a0,0x5
    80003e70:	3b450513          	addi	a0,a0,948 # 80009220 <CONSOLE_STATUS+0x210>
    80003e74:	00002097          	auipc	ra,0x2
    80003e78:	190080e7          	jalr	400(ra) # 80006004 <_Z11printStringPKc>
    finishedA = true;
    80003e7c:	00100793          	li	a5,1
    80003e80:	00008717          	auipc	a4,0x8
    80003e84:	04f70023          	sb	a5,64(a4) # 8000bec0 <_ZL9finishedA>
}
    80003e88:	01813083          	ld	ra,24(sp)
    80003e8c:	01013403          	ld	s0,16(sp)
    80003e90:	00813483          	ld	s1,8(sp)
    80003e94:	00013903          	ld	s2,0(sp)
    80003e98:	02010113          	addi	sp,sp,32
    80003e9c:	00008067          	ret

0000000080003ea0 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003ea0:	fe010113          	addi	sp,sp,-32
    80003ea4:	00113c23          	sd	ra,24(sp)
    80003ea8:	00813823          	sd	s0,16(sp)
    80003eac:	00913423          	sd	s1,8(sp)
    80003eb0:	01213023          	sd	s2,0(sp)
    80003eb4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003eb8:	00000913          	li	s2,0
    80003ebc:	0380006f          	j	80003ef4 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003ec0:	ffffd097          	auipc	ra,0xffffd
    80003ec4:	50c080e7          	jalr	1292(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003ec8:	00148493          	addi	s1,s1,1
    80003ecc:	000027b7          	lui	a5,0x2
    80003ed0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003ed4:	0097ee63          	bltu	a5,s1,80003ef0 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003ed8:	00000713          	li	a4,0
    80003edc:	000077b7          	lui	a5,0x7
    80003ee0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003ee4:	fce7eee3          	bltu	a5,a4,80003ec0 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003ee8:	00170713          	addi	a4,a4,1
    80003eec:	ff1ff06f          	j	80003edc <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003ef0:	00190913          	addi	s2,s2,1
    80003ef4:	00f00793          	li	a5,15
    80003ef8:	0527e063          	bltu	a5,s2,80003f38 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003efc:	00005517          	auipc	a0,0x5
    80003f00:	33450513          	addi	a0,a0,820 # 80009230 <CONSOLE_STATUS+0x220>
    80003f04:	00002097          	auipc	ra,0x2
    80003f08:	100080e7          	jalr	256(ra) # 80006004 <_Z11printStringPKc>
    80003f0c:	00000613          	li	a2,0
    80003f10:	00a00593          	li	a1,10
    80003f14:	0009051b          	sext.w	a0,s2
    80003f18:	00002097          	auipc	ra,0x2
    80003f1c:	29c080e7          	jalr	668(ra) # 800061b4 <_Z8printIntiii>
    80003f20:	00005517          	auipc	a0,0x5
    80003f24:	55850513          	addi	a0,a0,1368 # 80009478 <CONSOLE_STATUS+0x468>
    80003f28:	00002097          	auipc	ra,0x2
    80003f2c:	0dc080e7          	jalr	220(ra) # 80006004 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003f30:	00000493          	li	s1,0
    80003f34:	f99ff06f          	j	80003ecc <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003f38:	00005517          	auipc	a0,0x5
    80003f3c:	30050513          	addi	a0,a0,768 # 80009238 <CONSOLE_STATUS+0x228>
    80003f40:	00002097          	auipc	ra,0x2
    80003f44:	0c4080e7          	jalr	196(ra) # 80006004 <_Z11printStringPKc>
    finishedB = true;
    80003f48:	00100793          	li	a5,1
    80003f4c:	00008717          	auipc	a4,0x8
    80003f50:	f6f70aa3          	sb	a5,-139(a4) # 8000bec1 <_ZL9finishedB>
    thread_dispatch();
    80003f54:	ffffd097          	auipc	ra,0xffffd
    80003f58:	478080e7          	jalr	1144(ra) # 800013cc <_Z15thread_dispatchv>
}
    80003f5c:	01813083          	ld	ra,24(sp)
    80003f60:	01013403          	ld	s0,16(sp)
    80003f64:	00813483          	ld	s1,8(sp)
    80003f68:	00013903          	ld	s2,0(sp)
    80003f6c:	02010113          	addi	sp,sp,32
    80003f70:	00008067          	ret

0000000080003f74 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003f74:	fe010113          	addi	sp,sp,-32
    80003f78:	00113c23          	sd	ra,24(sp)
    80003f7c:	00813823          	sd	s0,16(sp)
    80003f80:	00913423          	sd	s1,8(sp)
    80003f84:	01213023          	sd	s2,0(sp)
    80003f88:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003f8c:	00000493          	li	s1,0
    80003f90:	0400006f          	j	80003fd0 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003f94:	00005517          	auipc	a0,0x5
    80003f98:	2b450513          	addi	a0,a0,692 # 80009248 <CONSOLE_STATUS+0x238>
    80003f9c:	00002097          	auipc	ra,0x2
    80003fa0:	068080e7          	jalr	104(ra) # 80006004 <_Z11printStringPKc>
    80003fa4:	00000613          	li	a2,0
    80003fa8:	00a00593          	li	a1,10
    80003fac:	00048513          	mv	a0,s1
    80003fb0:	00002097          	auipc	ra,0x2
    80003fb4:	204080e7          	jalr	516(ra) # 800061b4 <_Z8printIntiii>
    80003fb8:	00005517          	auipc	a0,0x5
    80003fbc:	4c050513          	addi	a0,a0,1216 # 80009478 <CONSOLE_STATUS+0x468>
    80003fc0:	00002097          	auipc	ra,0x2
    80003fc4:	044080e7          	jalr	68(ra) # 80006004 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003fc8:	0014849b          	addiw	s1,s1,1
    80003fcc:	0ff4f493          	andi	s1,s1,255
    80003fd0:	00200793          	li	a5,2
    80003fd4:	fc97f0e3          	bgeu	a5,s1,80003f94 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003fd8:	00005517          	auipc	a0,0x5
    80003fdc:	27850513          	addi	a0,a0,632 # 80009250 <CONSOLE_STATUS+0x240>
    80003fe0:	00002097          	auipc	ra,0x2
    80003fe4:	024080e7          	jalr	36(ra) # 80006004 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003fe8:	00700313          	li	t1,7
    thread_dispatch();
    80003fec:	ffffd097          	auipc	ra,0xffffd
    80003ff0:	3e0080e7          	jalr	992(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003ff4:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003ff8:	00005517          	auipc	a0,0x5
    80003ffc:	26850513          	addi	a0,a0,616 # 80009260 <CONSOLE_STATUS+0x250>
    80004000:	00002097          	auipc	ra,0x2
    80004004:	004080e7          	jalr	4(ra) # 80006004 <_Z11printStringPKc>
    80004008:	00000613          	li	a2,0
    8000400c:	00a00593          	li	a1,10
    80004010:	0009051b          	sext.w	a0,s2
    80004014:	00002097          	auipc	ra,0x2
    80004018:	1a0080e7          	jalr	416(ra) # 800061b4 <_Z8printIntiii>
    8000401c:	00005517          	auipc	a0,0x5
    80004020:	45c50513          	addi	a0,a0,1116 # 80009478 <CONSOLE_STATUS+0x468>
    80004024:	00002097          	auipc	ra,0x2
    80004028:	fe0080e7          	jalr	-32(ra) # 80006004 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    8000402c:	00c00513          	li	a0,12
    80004030:	00000097          	auipc	ra,0x0
    80004034:	d30080e7          	jalr	-720(ra) # 80003d60 <_ZL9fibonaccim>
    80004038:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    8000403c:	00005517          	auipc	a0,0x5
    80004040:	22c50513          	addi	a0,a0,556 # 80009268 <CONSOLE_STATUS+0x258>
    80004044:	00002097          	auipc	ra,0x2
    80004048:	fc0080e7          	jalr	-64(ra) # 80006004 <_Z11printStringPKc>
    8000404c:	00000613          	li	a2,0
    80004050:	00a00593          	li	a1,10
    80004054:	0009051b          	sext.w	a0,s2
    80004058:	00002097          	auipc	ra,0x2
    8000405c:	15c080e7          	jalr	348(ra) # 800061b4 <_Z8printIntiii>
    80004060:	00005517          	auipc	a0,0x5
    80004064:	41850513          	addi	a0,a0,1048 # 80009478 <CONSOLE_STATUS+0x468>
    80004068:	00002097          	auipc	ra,0x2
    8000406c:	f9c080e7          	jalr	-100(ra) # 80006004 <_Z11printStringPKc>
    80004070:	0400006f          	j	800040b0 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004074:	00005517          	auipc	a0,0x5
    80004078:	1d450513          	addi	a0,a0,468 # 80009248 <CONSOLE_STATUS+0x238>
    8000407c:	00002097          	auipc	ra,0x2
    80004080:	f88080e7          	jalr	-120(ra) # 80006004 <_Z11printStringPKc>
    80004084:	00000613          	li	a2,0
    80004088:	00a00593          	li	a1,10
    8000408c:	00048513          	mv	a0,s1
    80004090:	00002097          	auipc	ra,0x2
    80004094:	124080e7          	jalr	292(ra) # 800061b4 <_Z8printIntiii>
    80004098:	00005517          	auipc	a0,0x5
    8000409c:	3e050513          	addi	a0,a0,992 # 80009478 <CONSOLE_STATUS+0x468>
    800040a0:	00002097          	auipc	ra,0x2
    800040a4:	f64080e7          	jalr	-156(ra) # 80006004 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800040a8:	0014849b          	addiw	s1,s1,1
    800040ac:	0ff4f493          	andi	s1,s1,255
    800040b0:	00500793          	li	a5,5
    800040b4:	fc97f0e3          	bgeu	a5,s1,80004074 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    800040b8:	00005517          	auipc	a0,0x5
    800040bc:	16850513          	addi	a0,a0,360 # 80009220 <CONSOLE_STATUS+0x210>
    800040c0:	00002097          	auipc	ra,0x2
    800040c4:	f44080e7          	jalr	-188(ra) # 80006004 <_Z11printStringPKc>
    finishedC = true;
    800040c8:	00100793          	li	a5,1
    800040cc:	00008717          	auipc	a4,0x8
    800040d0:	def70b23          	sb	a5,-522(a4) # 8000bec2 <_ZL9finishedC>
    thread_dispatch();
    800040d4:	ffffd097          	auipc	ra,0xffffd
    800040d8:	2f8080e7          	jalr	760(ra) # 800013cc <_Z15thread_dispatchv>
}
    800040dc:	01813083          	ld	ra,24(sp)
    800040e0:	01013403          	ld	s0,16(sp)
    800040e4:	00813483          	ld	s1,8(sp)
    800040e8:	00013903          	ld	s2,0(sp)
    800040ec:	02010113          	addi	sp,sp,32
    800040f0:	00008067          	ret

00000000800040f4 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    800040f4:	fe010113          	addi	sp,sp,-32
    800040f8:	00113c23          	sd	ra,24(sp)
    800040fc:	00813823          	sd	s0,16(sp)
    80004100:	00913423          	sd	s1,8(sp)
    80004104:	01213023          	sd	s2,0(sp)
    80004108:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000410c:	00a00493          	li	s1,10
    80004110:	0400006f          	j	80004150 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004114:	00005517          	auipc	a0,0x5
    80004118:	16450513          	addi	a0,a0,356 # 80009278 <CONSOLE_STATUS+0x268>
    8000411c:	00002097          	auipc	ra,0x2
    80004120:	ee8080e7          	jalr	-280(ra) # 80006004 <_Z11printStringPKc>
    80004124:	00000613          	li	a2,0
    80004128:	00a00593          	li	a1,10
    8000412c:	00048513          	mv	a0,s1
    80004130:	00002097          	auipc	ra,0x2
    80004134:	084080e7          	jalr	132(ra) # 800061b4 <_Z8printIntiii>
    80004138:	00005517          	auipc	a0,0x5
    8000413c:	34050513          	addi	a0,a0,832 # 80009478 <CONSOLE_STATUS+0x468>
    80004140:	00002097          	auipc	ra,0x2
    80004144:	ec4080e7          	jalr	-316(ra) # 80006004 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004148:	0014849b          	addiw	s1,s1,1
    8000414c:	0ff4f493          	andi	s1,s1,255
    80004150:	00c00793          	li	a5,12
    80004154:	fc97f0e3          	bgeu	a5,s1,80004114 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80004158:	00005517          	auipc	a0,0x5
    8000415c:	12850513          	addi	a0,a0,296 # 80009280 <CONSOLE_STATUS+0x270>
    80004160:	00002097          	auipc	ra,0x2
    80004164:	ea4080e7          	jalr	-348(ra) # 80006004 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004168:	00500313          	li	t1,5
    thread_dispatch();
    8000416c:	ffffd097          	auipc	ra,0xffffd
    80004170:	260080e7          	jalr	608(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004174:	01000513          	li	a0,16
    80004178:	00000097          	auipc	ra,0x0
    8000417c:	be8080e7          	jalr	-1048(ra) # 80003d60 <_ZL9fibonaccim>
    80004180:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004184:	00005517          	auipc	a0,0x5
    80004188:	10c50513          	addi	a0,a0,268 # 80009290 <CONSOLE_STATUS+0x280>
    8000418c:	00002097          	auipc	ra,0x2
    80004190:	e78080e7          	jalr	-392(ra) # 80006004 <_Z11printStringPKc>
    80004194:	00000613          	li	a2,0
    80004198:	00a00593          	li	a1,10
    8000419c:	0009051b          	sext.w	a0,s2
    800041a0:	00002097          	auipc	ra,0x2
    800041a4:	014080e7          	jalr	20(ra) # 800061b4 <_Z8printIntiii>
    800041a8:	00005517          	auipc	a0,0x5
    800041ac:	2d050513          	addi	a0,a0,720 # 80009478 <CONSOLE_STATUS+0x468>
    800041b0:	00002097          	auipc	ra,0x2
    800041b4:	e54080e7          	jalr	-428(ra) # 80006004 <_Z11printStringPKc>
    800041b8:	0400006f          	j	800041f8 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800041bc:	00005517          	auipc	a0,0x5
    800041c0:	0bc50513          	addi	a0,a0,188 # 80009278 <CONSOLE_STATUS+0x268>
    800041c4:	00002097          	auipc	ra,0x2
    800041c8:	e40080e7          	jalr	-448(ra) # 80006004 <_Z11printStringPKc>
    800041cc:	00000613          	li	a2,0
    800041d0:	00a00593          	li	a1,10
    800041d4:	00048513          	mv	a0,s1
    800041d8:	00002097          	auipc	ra,0x2
    800041dc:	fdc080e7          	jalr	-36(ra) # 800061b4 <_Z8printIntiii>
    800041e0:	00005517          	auipc	a0,0x5
    800041e4:	29850513          	addi	a0,a0,664 # 80009478 <CONSOLE_STATUS+0x468>
    800041e8:	00002097          	auipc	ra,0x2
    800041ec:	e1c080e7          	jalr	-484(ra) # 80006004 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800041f0:	0014849b          	addiw	s1,s1,1
    800041f4:	0ff4f493          	andi	s1,s1,255
    800041f8:	00f00793          	li	a5,15
    800041fc:	fc97f0e3          	bgeu	a5,s1,800041bc <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80004200:	00005517          	auipc	a0,0x5
    80004204:	0a050513          	addi	a0,a0,160 # 800092a0 <CONSOLE_STATUS+0x290>
    80004208:	00002097          	auipc	ra,0x2
    8000420c:	dfc080e7          	jalr	-516(ra) # 80006004 <_Z11printStringPKc>
    finishedD = true;
    80004210:	00100793          	li	a5,1
    80004214:	00008717          	auipc	a4,0x8
    80004218:	caf707a3          	sb	a5,-849(a4) # 8000bec3 <_ZL9finishedD>
    thread_dispatch();
    8000421c:	ffffd097          	auipc	ra,0xffffd
    80004220:	1b0080e7          	jalr	432(ra) # 800013cc <_Z15thread_dispatchv>
}
    80004224:	01813083          	ld	ra,24(sp)
    80004228:	01013403          	ld	s0,16(sp)
    8000422c:	00813483          	ld	s1,8(sp)
    80004230:	00013903          	ld	s2,0(sp)
    80004234:	02010113          	addi	sp,sp,32
    80004238:	00008067          	ret

000000008000423c <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    8000423c:	fc010113          	addi	sp,sp,-64
    80004240:	02113c23          	sd	ra,56(sp)
    80004244:	02813823          	sd	s0,48(sp)
    80004248:	02913423          	sd	s1,40(sp)
    8000424c:	03213023          	sd	s2,32(sp)
    80004250:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80004254:	02000513          	li	a0,32
    80004258:	ffffe097          	auipc	ra,0xffffe
    8000425c:	d88080e7          	jalr	-632(ra) # 80001fe0 <_Znwm>
    80004260:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80004264:	ffffe097          	auipc	ra,0xffffe
    80004268:	e7c080e7          	jalr	-388(ra) # 800020e0 <_ZN6ThreadC1Ev>
    8000426c:	00008797          	auipc	a5,0x8
    80004270:	9a478793          	addi	a5,a5,-1628 # 8000bc10 <_ZTV7WorkerA+0x10>
    80004274:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80004278:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    8000427c:	00005517          	auipc	a0,0x5
    80004280:	03450513          	addi	a0,a0,52 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80004284:	00002097          	auipc	ra,0x2
    80004288:	d80080e7          	jalr	-640(ra) # 80006004 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    8000428c:	02000513          	li	a0,32
    80004290:	ffffe097          	auipc	ra,0xffffe
    80004294:	d50080e7          	jalr	-688(ra) # 80001fe0 <_Znwm>
    80004298:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    8000429c:	ffffe097          	auipc	ra,0xffffe
    800042a0:	e44080e7          	jalr	-444(ra) # 800020e0 <_ZN6ThreadC1Ev>
    800042a4:	00008797          	auipc	a5,0x8
    800042a8:	99478793          	addi	a5,a5,-1644 # 8000bc38 <_ZTV7WorkerB+0x10>
    800042ac:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    800042b0:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    800042b4:	00005517          	auipc	a0,0x5
    800042b8:	01450513          	addi	a0,a0,20 # 800092c8 <CONSOLE_STATUS+0x2b8>
    800042bc:	00002097          	auipc	ra,0x2
    800042c0:	d48080e7          	jalr	-696(ra) # 80006004 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    800042c4:	02000513          	li	a0,32
    800042c8:	ffffe097          	auipc	ra,0xffffe
    800042cc:	d18080e7          	jalr	-744(ra) # 80001fe0 <_Znwm>
    800042d0:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    800042d4:	ffffe097          	auipc	ra,0xffffe
    800042d8:	e0c080e7          	jalr	-500(ra) # 800020e0 <_ZN6ThreadC1Ev>
    800042dc:	00008797          	auipc	a5,0x8
    800042e0:	98478793          	addi	a5,a5,-1660 # 8000bc60 <_ZTV7WorkerC+0x10>
    800042e4:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    800042e8:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    800042ec:	00005517          	auipc	a0,0x5
    800042f0:	ff450513          	addi	a0,a0,-12 # 800092e0 <CONSOLE_STATUS+0x2d0>
    800042f4:	00002097          	auipc	ra,0x2
    800042f8:	d10080e7          	jalr	-752(ra) # 80006004 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    800042fc:	02000513          	li	a0,32
    80004300:	ffffe097          	auipc	ra,0xffffe
    80004304:	ce0080e7          	jalr	-800(ra) # 80001fe0 <_Znwm>
    80004308:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    8000430c:	ffffe097          	auipc	ra,0xffffe
    80004310:	dd4080e7          	jalr	-556(ra) # 800020e0 <_ZN6ThreadC1Ev>
    80004314:	00008797          	auipc	a5,0x8
    80004318:	97478793          	addi	a5,a5,-1676 # 8000bc88 <_ZTV7WorkerD+0x10>
    8000431c:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80004320:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80004324:	00005517          	auipc	a0,0x5
    80004328:	fd450513          	addi	a0,a0,-44 # 800092f8 <CONSOLE_STATUS+0x2e8>
    8000432c:	00002097          	auipc	ra,0x2
    80004330:	cd8080e7          	jalr	-808(ra) # 80006004 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80004334:	00000493          	li	s1,0
    80004338:	00300793          	li	a5,3
    8000433c:	0297c663          	blt	a5,s1,80004368 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80004340:	00349793          	slli	a5,s1,0x3
    80004344:	fe040713          	addi	a4,s0,-32
    80004348:	00f707b3          	add	a5,a4,a5
    8000434c:	fe07b503          	ld	a0,-32(a5)
    80004350:	ffffe097          	auipc	ra,0xffffe
    80004354:	dc0080e7          	jalr	-576(ra) # 80002110 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80004358:	0014849b          	addiw	s1,s1,1
    8000435c:	fddff06f          	j	80004338 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80004360:	ffffe097          	auipc	ra,0xffffe
    80004364:	de8080e7          	jalr	-536(ra) # 80002148 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004368:	00008797          	auipc	a5,0x8
    8000436c:	b587c783          	lbu	a5,-1192(a5) # 8000bec0 <_ZL9finishedA>
    80004370:	fe0788e3          	beqz	a5,80004360 <_Z20Threads_CPP_API_testv+0x124>
    80004374:	00008797          	auipc	a5,0x8
    80004378:	b4d7c783          	lbu	a5,-1203(a5) # 8000bec1 <_ZL9finishedB>
    8000437c:	fe0782e3          	beqz	a5,80004360 <_Z20Threads_CPP_API_testv+0x124>
    80004380:	00008797          	auipc	a5,0x8
    80004384:	b427c783          	lbu	a5,-1214(a5) # 8000bec2 <_ZL9finishedC>
    80004388:	fc078ce3          	beqz	a5,80004360 <_Z20Threads_CPP_API_testv+0x124>
    8000438c:	00008797          	auipc	a5,0x8
    80004390:	b377c783          	lbu	a5,-1225(a5) # 8000bec3 <_ZL9finishedD>
    80004394:	fc0786e3          	beqz	a5,80004360 <_Z20Threads_CPP_API_testv+0x124>
    80004398:	fc040493          	addi	s1,s0,-64
    8000439c:	0080006f          	j	800043a4 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    800043a0:	00848493          	addi	s1,s1,8
    800043a4:	fe040793          	addi	a5,s0,-32
    800043a8:	08f48663          	beq	s1,a5,80004434 <_Z20Threads_CPP_API_testv+0x1f8>
    800043ac:	0004b503          	ld	a0,0(s1)
    800043b0:	fe0508e3          	beqz	a0,800043a0 <_Z20Threads_CPP_API_testv+0x164>
    800043b4:	00053783          	ld	a5,0(a0)
    800043b8:	0087b783          	ld	a5,8(a5)
    800043bc:	000780e7          	jalr	a5
    800043c0:	fe1ff06f          	j	800043a0 <_Z20Threads_CPP_API_testv+0x164>
    800043c4:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    800043c8:	00048513          	mv	a0,s1
    800043cc:	ffffe097          	auipc	ra,0xffffe
    800043d0:	c3c080e7          	jalr	-964(ra) # 80002008 <_ZdlPv>
    800043d4:	00090513          	mv	a0,s2
    800043d8:	00009097          	auipc	ra,0x9
    800043dc:	bf0080e7          	jalr	-1040(ra) # 8000cfc8 <_Unwind_Resume>
    800043e0:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    800043e4:	00048513          	mv	a0,s1
    800043e8:	ffffe097          	auipc	ra,0xffffe
    800043ec:	c20080e7          	jalr	-992(ra) # 80002008 <_ZdlPv>
    800043f0:	00090513          	mv	a0,s2
    800043f4:	00009097          	auipc	ra,0x9
    800043f8:	bd4080e7          	jalr	-1068(ra) # 8000cfc8 <_Unwind_Resume>
    800043fc:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80004400:	00048513          	mv	a0,s1
    80004404:	ffffe097          	auipc	ra,0xffffe
    80004408:	c04080e7          	jalr	-1020(ra) # 80002008 <_ZdlPv>
    8000440c:	00090513          	mv	a0,s2
    80004410:	00009097          	auipc	ra,0x9
    80004414:	bb8080e7          	jalr	-1096(ra) # 8000cfc8 <_Unwind_Resume>
    80004418:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    8000441c:	00048513          	mv	a0,s1
    80004420:	ffffe097          	auipc	ra,0xffffe
    80004424:	be8080e7          	jalr	-1048(ra) # 80002008 <_ZdlPv>
    80004428:	00090513          	mv	a0,s2
    8000442c:	00009097          	auipc	ra,0x9
    80004430:	b9c080e7          	jalr	-1124(ra) # 8000cfc8 <_Unwind_Resume>
}
    80004434:	03813083          	ld	ra,56(sp)
    80004438:	03013403          	ld	s0,48(sp)
    8000443c:	02813483          	ld	s1,40(sp)
    80004440:	02013903          	ld	s2,32(sp)
    80004444:	04010113          	addi	sp,sp,64
    80004448:	00008067          	ret

000000008000444c <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    8000444c:	ff010113          	addi	sp,sp,-16
    80004450:	00113423          	sd	ra,8(sp)
    80004454:	00813023          	sd	s0,0(sp)
    80004458:	01010413          	addi	s0,sp,16
    8000445c:	00007797          	auipc	a5,0x7
    80004460:	7b478793          	addi	a5,a5,1972 # 8000bc10 <_ZTV7WorkerA+0x10>
    80004464:	00f53023          	sd	a5,0(a0)
    80004468:	ffffe097          	auipc	ra,0xffffe
    8000446c:	a8c080e7          	jalr	-1396(ra) # 80001ef4 <_ZN6ThreadD1Ev>
    80004470:	00813083          	ld	ra,8(sp)
    80004474:	00013403          	ld	s0,0(sp)
    80004478:	01010113          	addi	sp,sp,16
    8000447c:	00008067          	ret

0000000080004480 <_ZN7WorkerAD0Ev>:
    80004480:	fe010113          	addi	sp,sp,-32
    80004484:	00113c23          	sd	ra,24(sp)
    80004488:	00813823          	sd	s0,16(sp)
    8000448c:	00913423          	sd	s1,8(sp)
    80004490:	02010413          	addi	s0,sp,32
    80004494:	00050493          	mv	s1,a0
    80004498:	00007797          	auipc	a5,0x7
    8000449c:	77878793          	addi	a5,a5,1912 # 8000bc10 <_ZTV7WorkerA+0x10>
    800044a0:	00f53023          	sd	a5,0(a0)
    800044a4:	ffffe097          	auipc	ra,0xffffe
    800044a8:	a50080e7          	jalr	-1456(ra) # 80001ef4 <_ZN6ThreadD1Ev>
    800044ac:	00048513          	mv	a0,s1
    800044b0:	ffffe097          	auipc	ra,0xffffe
    800044b4:	b58080e7          	jalr	-1192(ra) # 80002008 <_ZdlPv>
    800044b8:	01813083          	ld	ra,24(sp)
    800044bc:	01013403          	ld	s0,16(sp)
    800044c0:	00813483          	ld	s1,8(sp)
    800044c4:	02010113          	addi	sp,sp,32
    800044c8:	00008067          	ret

00000000800044cc <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800044cc:	ff010113          	addi	sp,sp,-16
    800044d0:	00113423          	sd	ra,8(sp)
    800044d4:	00813023          	sd	s0,0(sp)
    800044d8:	01010413          	addi	s0,sp,16
    800044dc:	00007797          	auipc	a5,0x7
    800044e0:	75c78793          	addi	a5,a5,1884 # 8000bc38 <_ZTV7WorkerB+0x10>
    800044e4:	00f53023          	sd	a5,0(a0)
    800044e8:	ffffe097          	auipc	ra,0xffffe
    800044ec:	a0c080e7          	jalr	-1524(ra) # 80001ef4 <_ZN6ThreadD1Ev>
    800044f0:	00813083          	ld	ra,8(sp)
    800044f4:	00013403          	ld	s0,0(sp)
    800044f8:	01010113          	addi	sp,sp,16
    800044fc:	00008067          	ret

0000000080004500 <_ZN7WorkerBD0Ev>:
    80004500:	fe010113          	addi	sp,sp,-32
    80004504:	00113c23          	sd	ra,24(sp)
    80004508:	00813823          	sd	s0,16(sp)
    8000450c:	00913423          	sd	s1,8(sp)
    80004510:	02010413          	addi	s0,sp,32
    80004514:	00050493          	mv	s1,a0
    80004518:	00007797          	auipc	a5,0x7
    8000451c:	72078793          	addi	a5,a5,1824 # 8000bc38 <_ZTV7WorkerB+0x10>
    80004520:	00f53023          	sd	a5,0(a0)
    80004524:	ffffe097          	auipc	ra,0xffffe
    80004528:	9d0080e7          	jalr	-1584(ra) # 80001ef4 <_ZN6ThreadD1Ev>
    8000452c:	00048513          	mv	a0,s1
    80004530:	ffffe097          	auipc	ra,0xffffe
    80004534:	ad8080e7          	jalr	-1320(ra) # 80002008 <_ZdlPv>
    80004538:	01813083          	ld	ra,24(sp)
    8000453c:	01013403          	ld	s0,16(sp)
    80004540:	00813483          	ld	s1,8(sp)
    80004544:	02010113          	addi	sp,sp,32
    80004548:	00008067          	ret

000000008000454c <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    8000454c:	ff010113          	addi	sp,sp,-16
    80004550:	00113423          	sd	ra,8(sp)
    80004554:	00813023          	sd	s0,0(sp)
    80004558:	01010413          	addi	s0,sp,16
    8000455c:	00007797          	auipc	a5,0x7
    80004560:	70478793          	addi	a5,a5,1796 # 8000bc60 <_ZTV7WorkerC+0x10>
    80004564:	00f53023          	sd	a5,0(a0)
    80004568:	ffffe097          	auipc	ra,0xffffe
    8000456c:	98c080e7          	jalr	-1652(ra) # 80001ef4 <_ZN6ThreadD1Ev>
    80004570:	00813083          	ld	ra,8(sp)
    80004574:	00013403          	ld	s0,0(sp)
    80004578:	01010113          	addi	sp,sp,16
    8000457c:	00008067          	ret

0000000080004580 <_ZN7WorkerCD0Ev>:
    80004580:	fe010113          	addi	sp,sp,-32
    80004584:	00113c23          	sd	ra,24(sp)
    80004588:	00813823          	sd	s0,16(sp)
    8000458c:	00913423          	sd	s1,8(sp)
    80004590:	02010413          	addi	s0,sp,32
    80004594:	00050493          	mv	s1,a0
    80004598:	00007797          	auipc	a5,0x7
    8000459c:	6c878793          	addi	a5,a5,1736 # 8000bc60 <_ZTV7WorkerC+0x10>
    800045a0:	00f53023          	sd	a5,0(a0)
    800045a4:	ffffe097          	auipc	ra,0xffffe
    800045a8:	950080e7          	jalr	-1712(ra) # 80001ef4 <_ZN6ThreadD1Ev>
    800045ac:	00048513          	mv	a0,s1
    800045b0:	ffffe097          	auipc	ra,0xffffe
    800045b4:	a58080e7          	jalr	-1448(ra) # 80002008 <_ZdlPv>
    800045b8:	01813083          	ld	ra,24(sp)
    800045bc:	01013403          	ld	s0,16(sp)
    800045c0:	00813483          	ld	s1,8(sp)
    800045c4:	02010113          	addi	sp,sp,32
    800045c8:	00008067          	ret

00000000800045cc <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800045cc:	ff010113          	addi	sp,sp,-16
    800045d0:	00113423          	sd	ra,8(sp)
    800045d4:	00813023          	sd	s0,0(sp)
    800045d8:	01010413          	addi	s0,sp,16
    800045dc:	00007797          	auipc	a5,0x7
    800045e0:	6ac78793          	addi	a5,a5,1708 # 8000bc88 <_ZTV7WorkerD+0x10>
    800045e4:	00f53023          	sd	a5,0(a0)
    800045e8:	ffffe097          	auipc	ra,0xffffe
    800045ec:	90c080e7          	jalr	-1780(ra) # 80001ef4 <_ZN6ThreadD1Ev>
    800045f0:	00813083          	ld	ra,8(sp)
    800045f4:	00013403          	ld	s0,0(sp)
    800045f8:	01010113          	addi	sp,sp,16
    800045fc:	00008067          	ret

0000000080004600 <_ZN7WorkerDD0Ev>:
    80004600:	fe010113          	addi	sp,sp,-32
    80004604:	00113c23          	sd	ra,24(sp)
    80004608:	00813823          	sd	s0,16(sp)
    8000460c:	00913423          	sd	s1,8(sp)
    80004610:	02010413          	addi	s0,sp,32
    80004614:	00050493          	mv	s1,a0
    80004618:	00007797          	auipc	a5,0x7
    8000461c:	67078793          	addi	a5,a5,1648 # 8000bc88 <_ZTV7WorkerD+0x10>
    80004620:	00f53023          	sd	a5,0(a0)
    80004624:	ffffe097          	auipc	ra,0xffffe
    80004628:	8d0080e7          	jalr	-1840(ra) # 80001ef4 <_ZN6ThreadD1Ev>
    8000462c:	00048513          	mv	a0,s1
    80004630:	ffffe097          	auipc	ra,0xffffe
    80004634:	9d8080e7          	jalr	-1576(ra) # 80002008 <_ZdlPv>
    80004638:	01813083          	ld	ra,24(sp)
    8000463c:	01013403          	ld	s0,16(sp)
    80004640:	00813483          	ld	s1,8(sp)
    80004644:	02010113          	addi	sp,sp,32
    80004648:	00008067          	ret

000000008000464c <_ZN7WorkerA3runEv>:
    void run() override {
    8000464c:	ff010113          	addi	sp,sp,-16
    80004650:	00113423          	sd	ra,8(sp)
    80004654:	00813023          	sd	s0,0(sp)
    80004658:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    8000465c:	00000593          	li	a1,0
    80004660:	fffff097          	auipc	ra,0xfffff
    80004664:	774080e7          	jalr	1908(ra) # 80003dd4 <_ZN7WorkerA11workerBodyAEPv>
    }
    80004668:	00813083          	ld	ra,8(sp)
    8000466c:	00013403          	ld	s0,0(sp)
    80004670:	01010113          	addi	sp,sp,16
    80004674:	00008067          	ret

0000000080004678 <_ZN7WorkerB3runEv>:
    void run() override {
    80004678:	ff010113          	addi	sp,sp,-16
    8000467c:	00113423          	sd	ra,8(sp)
    80004680:	00813023          	sd	s0,0(sp)
    80004684:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80004688:	00000593          	li	a1,0
    8000468c:	00000097          	auipc	ra,0x0
    80004690:	814080e7          	jalr	-2028(ra) # 80003ea0 <_ZN7WorkerB11workerBodyBEPv>
    }
    80004694:	00813083          	ld	ra,8(sp)
    80004698:	00013403          	ld	s0,0(sp)
    8000469c:	01010113          	addi	sp,sp,16
    800046a0:	00008067          	ret

00000000800046a4 <_ZN7WorkerC3runEv>:
    void run() override {
    800046a4:	ff010113          	addi	sp,sp,-16
    800046a8:	00113423          	sd	ra,8(sp)
    800046ac:	00813023          	sd	s0,0(sp)
    800046b0:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800046b4:	00000593          	li	a1,0
    800046b8:	00000097          	auipc	ra,0x0
    800046bc:	8bc080e7          	jalr	-1860(ra) # 80003f74 <_ZN7WorkerC11workerBodyCEPv>
    }
    800046c0:	00813083          	ld	ra,8(sp)
    800046c4:	00013403          	ld	s0,0(sp)
    800046c8:	01010113          	addi	sp,sp,16
    800046cc:	00008067          	ret

00000000800046d0 <_ZN7WorkerD3runEv>:
    void run() override {
    800046d0:	ff010113          	addi	sp,sp,-16
    800046d4:	00113423          	sd	ra,8(sp)
    800046d8:	00813023          	sd	s0,0(sp)
    800046dc:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800046e0:	00000593          	li	a1,0
    800046e4:	00000097          	auipc	ra,0x0
    800046e8:	a10080e7          	jalr	-1520(ra) # 800040f4 <_ZN7WorkerD11workerBodyDEPv>
    }
    800046ec:	00813083          	ld	ra,8(sp)
    800046f0:	00013403          	ld	s0,0(sp)
    800046f4:	01010113          	addi	sp,sp,16
    800046f8:	00008067          	ret

00000000800046fc <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    800046fc:	f8010113          	addi	sp,sp,-128
    80004700:	06113c23          	sd	ra,120(sp)
    80004704:	06813823          	sd	s0,112(sp)
    80004708:	06913423          	sd	s1,104(sp)
    8000470c:	07213023          	sd	s2,96(sp)
    80004710:	05313c23          	sd	s3,88(sp)
    80004714:	05413823          	sd	s4,80(sp)
    80004718:	05513423          	sd	s5,72(sp)
    8000471c:	05613023          	sd	s6,64(sp)
    80004720:	03713c23          	sd	s7,56(sp)
    80004724:	03813823          	sd	s8,48(sp)
    80004728:	03913423          	sd	s9,40(sp)
    8000472c:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80004730:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80004734:	00005517          	auipc	a0,0x5
    80004738:	9fc50513          	addi	a0,a0,-1540 # 80009130 <CONSOLE_STATUS+0x120>
    8000473c:	00002097          	auipc	ra,0x2
    80004740:	8c8080e7          	jalr	-1848(ra) # 80006004 <_Z11printStringPKc>
    getString(input, 30);
    80004744:	01e00593          	li	a1,30
    80004748:	f8040493          	addi	s1,s0,-128
    8000474c:	00048513          	mv	a0,s1
    80004750:	00002097          	auipc	ra,0x2
    80004754:	93c080e7          	jalr	-1732(ra) # 8000608c <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004758:	00048513          	mv	a0,s1
    8000475c:	00002097          	auipc	ra,0x2
    80004760:	a08080e7          	jalr	-1528(ra) # 80006164 <_Z11stringToIntPKc>
    80004764:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80004768:	00005517          	auipc	a0,0x5
    8000476c:	9e850513          	addi	a0,a0,-1560 # 80009150 <CONSOLE_STATUS+0x140>
    80004770:	00002097          	auipc	ra,0x2
    80004774:	894080e7          	jalr	-1900(ra) # 80006004 <_Z11printStringPKc>
    getString(input, 30);
    80004778:	01e00593          	li	a1,30
    8000477c:	00048513          	mv	a0,s1
    80004780:	00002097          	auipc	ra,0x2
    80004784:	90c080e7          	jalr	-1780(ra) # 8000608c <_Z9getStringPci>
    n = stringToInt(input);
    80004788:	00048513          	mv	a0,s1
    8000478c:	00002097          	auipc	ra,0x2
    80004790:	9d8080e7          	jalr	-1576(ra) # 80006164 <_Z11stringToIntPKc>
    80004794:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80004798:	00005517          	auipc	a0,0x5
    8000479c:	9d850513          	addi	a0,a0,-1576 # 80009170 <CONSOLE_STATUS+0x160>
    800047a0:	00002097          	auipc	ra,0x2
    800047a4:	864080e7          	jalr	-1948(ra) # 80006004 <_Z11printStringPKc>
    printInt(threadNum);
    800047a8:	00000613          	li	a2,0
    800047ac:	00a00593          	li	a1,10
    800047b0:	00098513          	mv	a0,s3
    800047b4:	00002097          	auipc	ra,0x2
    800047b8:	a00080e7          	jalr	-1536(ra) # 800061b4 <_Z8printIntiii>
    printString(" i velicina bafera ");
    800047bc:	00005517          	auipc	a0,0x5
    800047c0:	9cc50513          	addi	a0,a0,-1588 # 80009188 <CONSOLE_STATUS+0x178>
    800047c4:	00002097          	auipc	ra,0x2
    800047c8:	840080e7          	jalr	-1984(ra) # 80006004 <_Z11printStringPKc>
    printInt(n);
    800047cc:	00000613          	li	a2,0
    800047d0:	00a00593          	li	a1,10
    800047d4:	00048513          	mv	a0,s1
    800047d8:	00002097          	auipc	ra,0x2
    800047dc:	9dc080e7          	jalr	-1572(ra) # 800061b4 <_Z8printIntiii>
    printString(".\n");
    800047e0:	00005517          	auipc	a0,0x5
    800047e4:	9c050513          	addi	a0,a0,-1600 # 800091a0 <CONSOLE_STATUS+0x190>
    800047e8:	00002097          	auipc	ra,0x2
    800047ec:	81c080e7          	jalr	-2020(ra) # 80006004 <_Z11printStringPKc>
    if (threadNum > n) {
    800047f0:	0334c463          	blt	s1,s3,80004818 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    800047f4:	03305c63          	blez	s3,8000482c <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    800047f8:	03800513          	li	a0,56
    800047fc:	ffffd097          	auipc	ra,0xffffd
    80004800:	7e4080e7          	jalr	2020(ra) # 80001fe0 <_Znwm>
    80004804:	00050a93          	mv	s5,a0
    80004808:	00048593          	mv	a1,s1
    8000480c:	00002097          	auipc	ra,0x2
    80004810:	ac8080e7          	jalr	-1336(ra) # 800062d4 <_ZN9BufferCPPC1Ei>
    80004814:	0300006f          	j	80004844 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004818:	00005517          	auipc	a0,0x5
    8000481c:	99050513          	addi	a0,a0,-1648 # 800091a8 <CONSOLE_STATUS+0x198>
    80004820:	00001097          	auipc	ra,0x1
    80004824:	7e4080e7          	jalr	2020(ra) # 80006004 <_Z11printStringPKc>
        return;
    80004828:	0140006f          	j	8000483c <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    8000482c:	00005517          	auipc	a0,0x5
    80004830:	9bc50513          	addi	a0,a0,-1604 # 800091e8 <CONSOLE_STATUS+0x1d8>
    80004834:	00001097          	auipc	ra,0x1
    80004838:	7d0080e7          	jalr	2000(ra) # 80006004 <_Z11printStringPKc>
        return;
    8000483c:	000c0113          	mv	sp,s8
    80004840:	2140006f          	j	80004a54 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80004844:	01000513          	li	a0,16
    80004848:	ffffd097          	auipc	ra,0xffffd
    8000484c:	798080e7          	jalr	1944(ra) # 80001fe0 <_Znwm>
    80004850:	00050913          	mv	s2,a0
    80004854:	00000593          	li	a1,0
    80004858:	ffffe097          	auipc	ra,0xffffe
    8000485c:	940080e7          	jalr	-1728(ra) # 80002198 <_ZN9SemaphoreC1Ej>
    80004860:	00007797          	auipc	a5,0x7
    80004864:	6727b823          	sd	s2,1648(a5) # 8000bed0 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80004868:	00399793          	slli	a5,s3,0x3
    8000486c:	00f78793          	addi	a5,a5,15
    80004870:	ff07f793          	andi	a5,a5,-16
    80004874:	40f10133          	sub	sp,sp,a5
    80004878:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    8000487c:	0019871b          	addiw	a4,s3,1
    80004880:	00171793          	slli	a5,a4,0x1
    80004884:	00e787b3          	add	a5,a5,a4
    80004888:	00379793          	slli	a5,a5,0x3
    8000488c:	00f78793          	addi	a5,a5,15
    80004890:	ff07f793          	andi	a5,a5,-16
    80004894:	40f10133          	sub	sp,sp,a5
    80004898:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    8000489c:	00199493          	slli	s1,s3,0x1
    800048a0:	013484b3          	add	s1,s1,s3
    800048a4:	00349493          	slli	s1,s1,0x3
    800048a8:	009b04b3          	add	s1,s6,s1
    800048ac:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    800048b0:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    800048b4:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800048b8:	02800513          	li	a0,40
    800048bc:	ffffd097          	auipc	ra,0xffffd
    800048c0:	724080e7          	jalr	1828(ra) # 80001fe0 <_Znwm>
    800048c4:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    800048c8:	ffffe097          	auipc	ra,0xffffe
    800048cc:	818080e7          	jalr	-2024(ra) # 800020e0 <_ZN6ThreadC1Ev>
    800048d0:	00007797          	auipc	a5,0x7
    800048d4:	43078793          	addi	a5,a5,1072 # 8000bd00 <_ZTV8Consumer+0x10>
    800048d8:	00fbb023          	sd	a5,0(s7)
    800048dc:	029bb023          	sd	s1,32(s7)
    consumer->start();
    800048e0:	000b8513          	mv	a0,s7
    800048e4:	ffffe097          	auipc	ra,0xffffe
    800048e8:	82c080e7          	jalr	-2004(ra) # 80002110 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    800048ec:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    800048f0:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    800048f4:	00007797          	auipc	a5,0x7
    800048f8:	5dc7b783          	ld	a5,1500(a5) # 8000bed0 <_ZL10waitForAll>
    800048fc:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004900:	02800513          	li	a0,40
    80004904:	ffffd097          	auipc	ra,0xffffd
    80004908:	6dc080e7          	jalr	1756(ra) # 80001fe0 <_Znwm>
    8000490c:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80004910:	ffffd097          	auipc	ra,0xffffd
    80004914:	7d0080e7          	jalr	2000(ra) # 800020e0 <_ZN6ThreadC1Ev>
    80004918:	00007797          	auipc	a5,0x7
    8000491c:	39878793          	addi	a5,a5,920 # 8000bcb0 <_ZTV16ProducerKeyborad+0x10>
    80004920:	00f4b023          	sd	a5,0(s1)
    80004924:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004928:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    8000492c:	00048513          	mv	a0,s1
    80004930:	ffffd097          	auipc	ra,0xffffd
    80004934:	7e0080e7          	jalr	2016(ra) # 80002110 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004938:	00100913          	li	s2,1
    8000493c:	0300006f          	j	8000496c <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004940:	00007797          	auipc	a5,0x7
    80004944:	39878793          	addi	a5,a5,920 # 8000bcd8 <_ZTV8Producer+0x10>
    80004948:	00fcb023          	sd	a5,0(s9)
    8000494c:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80004950:	00391793          	slli	a5,s2,0x3
    80004954:	00fa07b3          	add	a5,s4,a5
    80004958:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    8000495c:	000c8513          	mv	a0,s9
    80004960:	ffffd097          	auipc	ra,0xffffd
    80004964:	7b0080e7          	jalr	1968(ra) # 80002110 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004968:	0019091b          	addiw	s2,s2,1
    8000496c:	05395263          	bge	s2,s3,800049b0 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80004970:	00191493          	slli	s1,s2,0x1
    80004974:	012484b3          	add	s1,s1,s2
    80004978:	00349493          	slli	s1,s1,0x3
    8000497c:	009b04b3          	add	s1,s6,s1
    80004980:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80004984:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80004988:	00007797          	auipc	a5,0x7
    8000498c:	5487b783          	ld	a5,1352(a5) # 8000bed0 <_ZL10waitForAll>
    80004990:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80004994:	02800513          	li	a0,40
    80004998:	ffffd097          	auipc	ra,0xffffd
    8000499c:	648080e7          	jalr	1608(ra) # 80001fe0 <_Znwm>
    800049a0:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800049a4:	ffffd097          	auipc	ra,0xffffd
    800049a8:	73c080e7          	jalr	1852(ra) # 800020e0 <_ZN6ThreadC1Ev>
    800049ac:	f95ff06f          	j	80004940 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    800049b0:	ffffd097          	auipc	ra,0xffffd
    800049b4:	798080e7          	jalr	1944(ra) # 80002148 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800049b8:	00000493          	li	s1,0
    800049bc:	0099ce63          	blt	s3,s1,800049d8 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    800049c0:	00007517          	auipc	a0,0x7
    800049c4:	51053503          	ld	a0,1296(a0) # 8000bed0 <_ZL10waitForAll>
    800049c8:	ffffe097          	auipc	ra,0xffffe
    800049cc:	80c080e7          	jalr	-2036(ra) # 800021d4 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800049d0:	0014849b          	addiw	s1,s1,1
    800049d4:	fe9ff06f          	j	800049bc <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    800049d8:	00007517          	auipc	a0,0x7
    800049dc:	4f853503          	ld	a0,1272(a0) # 8000bed0 <_ZL10waitForAll>
    800049e0:	00050863          	beqz	a0,800049f0 <_Z20testConsumerProducerv+0x2f4>
    800049e4:	00053783          	ld	a5,0(a0)
    800049e8:	0087b783          	ld	a5,8(a5)
    800049ec:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    800049f0:	00000493          	li	s1,0
    800049f4:	0080006f          	j	800049fc <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    800049f8:	0014849b          	addiw	s1,s1,1
    800049fc:	0334d263          	bge	s1,s3,80004a20 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80004a00:	00349793          	slli	a5,s1,0x3
    80004a04:	00fa07b3          	add	a5,s4,a5
    80004a08:	0007b503          	ld	a0,0(a5)
    80004a0c:	fe0506e3          	beqz	a0,800049f8 <_Z20testConsumerProducerv+0x2fc>
    80004a10:	00053783          	ld	a5,0(a0)
    80004a14:	0087b783          	ld	a5,8(a5)
    80004a18:	000780e7          	jalr	a5
    80004a1c:	fddff06f          	j	800049f8 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80004a20:	000b8a63          	beqz	s7,80004a34 <_Z20testConsumerProducerv+0x338>
    80004a24:	000bb783          	ld	a5,0(s7)
    80004a28:	0087b783          	ld	a5,8(a5)
    80004a2c:	000b8513          	mv	a0,s7
    80004a30:	000780e7          	jalr	a5
    delete buffer;
    80004a34:	000a8e63          	beqz	s5,80004a50 <_Z20testConsumerProducerv+0x354>
    80004a38:	000a8513          	mv	a0,s5
    80004a3c:	00002097          	auipc	ra,0x2
    80004a40:	b90080e7          	jalr	-1136(ra) # 800065cc <_ZN9BufferCPPD1Ev>
    80004a44:	000a8513          	mv	a0,s5
    80004a48:	ffffd097          	auipc	ra,0xffffd
    80004a4c:	5c0080e7          	jalr	1472(ra) # 80002008 <_ZdlPv>
    80004a50:	000c0113          	mv	sp,s8
}
    80004a54:	f8040113          	addi	sp,s0,-128
    80004a58:	07813083          	ld	ra,120(sp)
    80004a5c:	07013403          	ld	s0,112(sp)
    80004a60:	06813483          	ld	s1,104(sp)
    80004a64:	06013903          	ld	s2,96(sp)
    80004a68:	05813983          	ld	s3,88(sp)
    80004a6c:	05013a03          	ld	s4,80(sp)
    80004a70:	04813a83          	ld	s5,72(sp)
    80004a74:	04013b03          	ld	s6,64(sp)
    80004a78:	03813b83          	ld	s7,56(sp)
    80004a7c:	03013c03          	ld	s8,48(sp)
    80004a80:	02813c83          	ld	s9,40(sp)
    80004a84:	08010113          	addi	sp,sp,128
    80004a88:	00008067          	ret
    80004a8c:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004a90:	000a8513          	mv	a0,s5
    80004a94:	ffffd097          	auipc	ra,0xffffd
    80004a98:	574080e7          	jalr	1396(ra) # 80002008 <_ZdlPv>
    80004a9c:	00048513          	mv	a0,s1
    80004aa0:	00008097          	auipc	ra,0x8
    80004aa4:	528080e7          	jalr	1320(ra) # 8000cfc8 <_Unwind_Resume>
    80004aa8:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80004aac:	00090513          	mv	a0,s2
    80004ab0:	ffffd097          	auipc	ra,0xffffd
    80004ab4:	558080e7          	jalr	1368(ra) # 80002008 <_ZdlPv>
    80004ab8:	00048513          	mv	a0,s1
    80004abc:	00008097          	auipc	ra,0x8
    80004ac0:	50c080e7          	jalr	1292(ra) # 8000cfc8 <_Unwind_Resume>
    80004ac4:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004ac8:	000b8513          	mv	a0,s7
    80004acc:	ffffd097          	auipc	ra,0xffffd
    80004ad0:	53c080e7          	jalr	1340(ra) # 80002008 <_ZdlPv>
    80004ad4:	00048513          	mv	a0,s1
    80004ad8:	00008097          	auipc	ra,0x8
    80004adc:	4f0080e7          	jalr	1264(ra) # 8000cfc8 <_Unwind_Resume>
    80004ae0:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004ae4:	00048513          	mv	a0,s1
    80004ae8:	ffffd097          	auipc	ra,0xffffd
    80004aec:	520080e7          	jalr	1312(ra) # 80002008 <_ZdlPv>
    80004af0:	00090513          	mv	a0,s2
    80004af4:	00008097          	auipc	ra,0x8
    80004af8:	4d4080e7          	jalr	1236(ra) # 8000cfc8 <_Unwind_Resume>
    80004afc:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80004b00:	000c8513          	mv	a0,s9
    80004b04:	ffffd097          	auipc	ra,0xffffd
    80004b08:	504080e7          	jalr	1284(ra) # 80002008 <_ZdlPv>
    80004b0c:	00048513          	mv	a0,s1
    80004b10:	00008097          	auipc	ra,0x8
    80004b14:	4b8080e7          	jalr	1208(ra) # 8000cfc8 <_Unwind_Resume>

0000000080004b18 <_ZN8Consumer3runEv>:
    void run() override {
    80004b18:	fd010113          	addi	sp,sp,-48
    80004b1c:	02113423          	sd	ra,40(sp)
    80004b20:	02813023          	sd	s0,32(sp)
    80004b24:	00913c23          	sd	s1,24(sp)
    80004b28:	01213823          	sd	s2,16(sp)
    80004b2c:	01313423          	sd	s3,8(sp)
    80004b30:	03010413          	addi	s0,sp,48
    80004b34:	00050913          	mv	s2,a0
        int i = 0;
    80004b38:	00000993          	li	s3,0
    80004b3c:	0100006f          	j	80004b4c <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80004b40:	00a00513          	li	a0,10
    80004b44:	ffffd097          	auipc	ra,0xffffd
    80004b48:	7f4080e7          	jalr	2036(ra) # 80002338 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80004b4c:	00007797          	auipc	a5,0x7
    80004b50:	37c7a783          	lw	a5,892(a5) # 8000bec8 <_ZL9threadEnd>
    80004b54:	04079a63          	bnez	a5,80004ba8 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80004b58:	02093783          	ld	a5,32(s2)
    80004b5c:	0087b503          	ld	a0,8(a5)
    80004b60:	00002097          	auipc	ra,0x2
    80004b64:	958080e7          	jalr	-1704(ra) # 800064b8 <_ZN9BufferCPP3getEv>
            i++;
    80004b68:	0019849b          	addiw	s1,s3,1
    80004b6c:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80004b70:	0ff57513          	andi	a0,a0,255
    80004b74:	ffffd097          	auipc	ra,0xffffd
    80004b78:	7c4080e7          	jalr	1988(ra) # 80002338 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80004b7c:	05000793          	li	a5,80
    80004b80:	02f4e4bb          	remw	s1,s1,a5
    80004b84:	fc0494e3          	bnez	s1,80004b4c <_ZN8Consumer3runEv+0x34>
    80004b88:	fb9ff06f          	j	80004b40 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80004b8c:	02093783          	ld	a5,32(s2)
    80004b90:	0087b503          	ld	a0,8(a5)
    80004b94:	00002097          	auipc	ra,0x2
    80004b98:	924080e7          	jalr	-1756(ra) # 800064b8 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80004b9c:	0ff57513          	andi	a0,a0,255
    80004ba0:	ffffd097          	auipc	ra,0xffffd
    80004ba4:	798080e7          	jalr	1944(ra) # 80002338 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80004ba8:	02093783          	ld	a5,32(s2)
    80004bac:	0087b503          	ld	a0,8(a5)
    80004bb0:	00002097          	auipc	ra,0x2
    80004bb4:	994080e7          	jalr	-1644(ra) # 80006544 <_ZN9BufferCPP6getCntEv>
    80004bb8:	fca04ae3          	bgtz	a0,80004b8c <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004bbc:	02093783          	ld	a5,32(s2)
    80004bc0:	0107b503          	ld	a0,16(a5)
    80004bc4:	ffffd097          	auipc	ra,0xffffd
    80004bc8:	648080e7          	jalr	1608(ra) # 8000220c <_ZN9Semaphore6signalEv>
    }
    80004bcc:	02813083          	ld	ra,40(sp)
    80004bd0:	02013403          	ld	s0,32(sp)
    80004bd4:	01813483          	ld	s1,24(sp)
    80004bd8:	01013903          	ld	s2,16(sp)
    80004bdc:	00813983          	ld	s3,8(sp)
    80004be0:	03010113          	addi	sp,sp,48
    80004be4:	00008067          	ret

0000000080004be8 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004be8:	ff010113          	addi	sp,sp,-16
    80004bec:	00113423          	sd	ra,8(sp)
    80004bf0:	00813023          	sd	s0,0(sp)
    80004bf4:	01010413          	addi	s0,sp,16
    80004bf8:	00007797          	auipc	a5,0x7
    80004bfc:	10878793          	addi	a5,a5,264 # 8000bd00 <_ZTV8Consumer+0x10>
    80004c00:	00f53023          	sd	a5,0(a0)
    80004c04:	ffffd097          	auipc	ra,0xffffd
    80004c08:	2f0080e7          	jalr	752(ra) # 80001ef4 <_ZN6ThreadD1Ev>
    80004c0c:	00813083          	ld	ra,8(sp)
    80004c10:	00013403          	ld	s0,0(sp)
    80004c14:	01010113          	addi	sp,sp,16
    80004c18:	00008067          	ret

0000000080004c1c <_ZN8ConsumerD0Ev>:
    80004c1c:	fe010113          	addi	sp,sp,-32
    80004c20:	00113c23          	sd	ra,24(sp)
    80004c24:	00813823          	sd	s0,16(sp)
    80004c28:	00913423          	sd	s1,8(sp)
    80004c2c:	02010413          	addi	s0,sp,32
    80004c30:	00050493          	mv	s1,a0
    80004c34:	00007797          	auipc	a5,0x7
    80004c38:	0cc78793          	addi	a5,a5,204 # 8000bd00 <_ZTV8Consumer+0x10>
    80004c3c:	00f53023          	sd	a5,0(a0)
    80004c40:	ffffd097          	auipc	ra,0xffffd
    80004c44:	2b4080e7          	jalr	692(ra) # 80001ef4 <_ZN6ThreadD1Ev>
    80004c48:	00048513          	mv	a0,s1
    80004c4c:	ffffd097          	auipc	ra,0xffffd
    80004c50:	3bc080e7          	jalr	956(ra) # 80002008 <_ZdlPv>
    80004c54:	01813083          	ld	ra,24(sp)
    80004c58:	01013403          	ld	s0,16(sp)
    80004c5c:	00813483          	ld	s1,8(sp)
    80004c60:	02010113          	addi	sp,sp,32
    80004c64:	00008067          	ret

0000000080004c68 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004c68:	ff010113          	addi	sp,sp,-16
    80004c6c:	00113423          	sd	ra,8(sp)
    80004c70:	00813023          	sd	s0,0(sp)
    80004c74:	01010413          	addi	s0,sp,16
    80004c78:	00007797          	auipc	a5,0x7
    80004c7c:	03878793          	addi	a5,a5,56 # 8000bcb0 <_ZTV16ProducerKeyborad+0x10>
    80004c80:	00f53023          	sd	a5,0(a0)
    80004c84:	ffffd097          	auipc	ra,0xffffd
    80004c88:	270080e7          	jalr	624(ra) # 80001ef4 <_ZN6ThreadD1Ev>
    80004c8c:	00813083          	ld	ra,8(sp)
    80004c90:	00013403          	ld	s0,0(sp)
    80004c94:	01010113          	addi	sp,sp,16
    80004c98:	00008067          	ret

0000000080004c9c <_ZN16ProducerKeyboradD0Ev>:
    80004c9c:	fe010113          	addi	sp,sp,-32
    80004ca0:	00113c23          	sd	ra,24(sp)
    80004ca4:	00813823          	sd	s0,16(sp)
    80004ca8:	00913423          	sd	s1,8(sp)
    80004cac:	02010413          	addi	s0,sp,32
    80004cb0:	00050493          	mv	s1,a0
    80004cb4:	00007797          	auipc	a5,0x7
    80004cb8:	ffc78793          	addi	a5,a5,-4 # 8000bcb0 <_ZTV16ProducerKeyborad+0x10>
    80004cbc:	00f53023          	sd	a5,0(a0)
    80004cc0:	ffffd097          	auipc	ra,0xffffd
    80004cc4:	234080e7          	jalr	564(ra) # 80001ef4 <_ZN6ThreadD1Ev>
    80004cc8:	00048513          	mv	a0,s1
    80004ccc:	ffffd097          	auipc	ra,0xffffd
    80004cd0:	33c080e7          	jalr	828(ra) # 80002008 <_ZdlPv>
    80004cd4:	01813083          	ld	ra,24(sp)
    80004cd8:	01013403          	ld	s0,16(sp)
    80004cdc:	00813483          	ld	s1,8(sp)
    80004ce0:	02010113          	addi	sp,sp,32
    80004ce4:	00008067          	ret

0000000080004ce8 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004ce8:	ff010113          	addi	sp,sp,-16
    80004cec:	00113423          	sd	ra,8(sp)
    80004cf0:	00813023          	sd	s0,0(sp)
    80004cf4:	01010413          	addi	s0,sp,16
    80004cf8:	00007797          	auipc	a5,0x7
    80004cfc:	fe078793          	addi	a5,a5,-32 # 8000bcd8 <_ZTV8Producer+0x10>
    80004d00:	00f53023          	sd	a5,0(a0)
    80004d04:	ffffd097          	auipc	ra,0xffffd
    80004d08:	1f0080e7          	jalr	496(ra) # 80001ef4 <_ZN6ThreadD1Ev>
    80004d0c:	00813083          	ld	ra,8(sp)
    80004d10:	00013403          	ld	s0,0(sp)
    80004d14:	01010113          	addi	sp,sp,16
    80004d18:	00008067          	ret

0000000080004d1c <_ZN8ProducerD0Ev>:
    80004d1c:	fe010113          	addi	sp,sp,-32
    80004d20:	00113c23          	sd	ra,24(sp)
    80004d24:	00813823          	sd	s0,16(sp)
    80004d28:	00913423          	sd	s1,8(sp)
    80004d2c:	02010413          	addi	s0,sp,32
    80004d30:	00050493          	mv	s1,a0
    80004d34:	00007797          	auipc	a5,0x7
    80004d38:	fa478793          	addi	a5,a5,-92 # 8000bcd8 <_ZTV8Producer+0x10>
    80004d3c:	00f53023          	sd	a5,0(a0)
    80004d40:	ffffd097          	auipc	ra,0xffffd
    80004d44:	1b4080e7          	jalr	436(ra) # 80001ef4 <_ZN6ThreadD1Ev>
    80004d48:	00048513          	mv	a0,s1
    80004d4c:	ffffd097          	auipc	ra,0xffffd
    80004d50:	2bc080e7          	jalr	700(ra) # 80002008 <_ZdlPv>
    80004d54:	01813083          	ld	ra,24(sp)
    80004d58:	01013403          	ld	s0,16(sp)
    80004d5c:	00813483          	ld	s1,8(sp)
    80004d60:	02010113          	addi	sp,sp,32
    80004d64:	00008067          	ret

0000000080004d68 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004d68:	fe010113          	addi	sp,sp,-32
    80004d6c:	00113c23          	sd	ra,24(sp)
    80004d70:	00813823          	sd	s0,16(sp)
    80004d74:	00913423          	sd	s1,8(sp)
    80004d78:	02010413          	addi	s0,sp,32
    80004d7c:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x31) {
    80004d80:	ffffd097          	auipc	ra,0xffffd
    80004d84:	8a0080e7          	jalr	-1888(ra) # 80001620 <_Z4getcv>
    80004d88:	0005059b          	sext.w	a1,a0
    80004d8c:	03100793          	li	a5,49
    80004d90:	00f58c63          	beq	a1,a5,80004da8 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80004d94:	0204b783          	ld	a5,32(s1)
    80004d98:	0087b503          	ld	a0,8(a5)
    80004d9c:	00001097          	auipc	ra,0x1
    80004da0:	68c080e7          	jalr	1676(ra) # 80006428 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x31) {
    80004da4:	fddff06f          	j	80004d80 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004da8:	00100793          	li	a5,1
    80004dac:	00007717          	auipc	a4,0x7
    80004db0:	10f72e23          	sw	a5,284(a4) # 8000bec8 <_ZL9threadEnd>
        td->buffer->put('!');
    80004db4:	0204b783          	ld	a5,32(s1)
    80004db8:	02100593          	li	a1,33
    80004dbc:	0087b503          	ld	a0,8(a5)
    80004dc0:	00001097          	auipc	ra,0x1
    80004dc4:	668080e7          	jalr	1640(ra) # 80006428 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004dc8:	0204b783          	ld	a5,32(s1)
    80004dcc:	0107b503          	ld	a0,16(a5)
    80004dd0:	ffffd097          	auipc	ra,0xffffd
    80004dd4:	43c080e7          	jalr	1084(ra) # 8000220c <_ZN9Semaphore6signalEv>
    }
    80004dd8:	01813083          	ld	ra,24(sp)
    80004ddc:	01013403          	ld	s0,16(sp)
    80004de0:	00813483          	ld	s1,8(sp)
    80004de4:	02010113          	addi	sp,sp,32
    80004de8:	00008067          	ret

0000000080004dec <_ZN8Producer3runEv>:
    void run() override {
    80004dec:	fe010113          	addi	sp,sp,-32
    80004df0:	00113c23          	sd	ra,24(sp)
    80004df4:	00813823          	sd	s0,16(sp)
    80004df8:	00913423          	sd	s1,8(sp)
    80004dfc:	01213023          	sd	s2,0(sp)
    80004e00:	02010413          	addi	s0,sp,32
    80004e04:	00050493          	mv	s1,a0
        int i = 0;
    80004e08:	00000913          	li	s2,0
        while (!threadEnd) {
    80004e0c:	00007797          	auipc	a5,0x7
    80004e10:	0bc7a783          	lw	a5,188(a5) # 8000bec8 <_ZL9threadEnd>
    80004e14:	04079263          	bnez	a5,80004e58 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004e18:	0204b783          	ld	a5,32(s1)
    80004e1c:	0007a583          	lw	a1,0(a5)
    80004e20:	0305859b          	addiw	a1,a1,48
    80004e24:	0087b503          	ld	a0,8(a5)
    80004e28:	00001097          	auipc	ra,0x1
    80004e2c:	600080e7          	jalr	1536(ra) # 80006428 <_ZN9BufferCPP3putEi>
            i++;
    80004e30:	0019071b          	addiw	a4,s2,1
    80004e34:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004e38:	0204b783          	ld	a5,32(s1)
    80004e3c:	0007a783          	lw	a5,0(a5)
    80004e40:	00e787bb          	addw	a5,a5,a4
    80004e44:	00500513          	li	a0,5
    80004e48:	02a7e53b          	remw	a0,a5,a0
    80004e4c:	ffffd097          	auipc	ra,0xffffd
    80004e50:	324080e7          	jalr	804(ra) # 80002170 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004e54:	fb9ff06f          	j	80004e0c <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004e58:	0204b783          	ld	a5,32(s1)
    80004e5c:	0107b503          	ld	a0,16(a5)
    80004e60:	ffffd097          	auipc	ra,0xffffd
    80004e64:	3ac080e7          	jalr	940(ra) # 8000220c <_ZN9Semaphore6signalEv>
    }
    80004e68:	01813083          	ld	ra,24(sp)
    80004e6c:	01013403          	ld	s0,16(sp)
    80004e70:	00813483          	ld	s1,8(sp)
    80004e74:	00013903          	ld	s2,0(sp)
    80004e78:	02010113          	addi	sp,sp,32
    80004e7c:	00008067          	ret

0000000080004e80 <_ZN6BufferC1Ei>:
#include "bounded_buffer.hpp"


Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004e80:	fe010113          	addi	sp,sp,-32
    80004e84:	00113c23          	sd	ra,24(sp)
    80004e88:	00813823          	sd	s0,16(sp)
    80004e8c:	00913423          	sd	s1,8(sp)
    80004e90:	01213023          	sd	s2,0(sp)
    80004e94:	02010413          	addi	s0,sp,32
    80004e98:	00050493          	mv	s1,a0
    80004e9c:	00058913          	mv	s2,a1
    80004ea0:	0015879b          	addiw	a5,a1,1
    80004ea4:	0007851b          	sext.w	a0,a5
    80004ea8:	00f4a023          	sw	a5,0(s1)
    80004eac:	0004a823          	sw	zero,16(s1)
    80004eb0:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004eb4:	00251513          	slli	a0,a0,0x2
    80004eb8:	ffffc097          	auipc	ra,0xffffc
    80004ebc:	3a0080e7          	jalr	928(ra) # 80001258 <_Z9mem_allocm>
    80004ec0:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80004ec4:	00000593          	li	a1,0
    80004ec8:	02048513          	addi	a0,s1,32
    80004ecc:	ffffc097          	auipc	ra,0xffffc
    80004ed0:	53c080e7          	jalr	1340(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&spaceAvailable, _cap);
    80004ed4:	00090593          	mv	a1,s2
    80004ed8:	01848513          	addi	a0,s1,24
    80004edc:	ffffc097          	auipc	ra,0xffffc
    80004ee0:	52c080e7          	jalr	1324(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&mutexHead, 1);
    80004ee4:	00100593          	li	a1,1
    80004ee8:	02848513          	addi	a0,s1,40
    80004eec:	ffffc097          	auipc	ra,0xffffc
    80004ef0:	51c080e7          	jalr	1308(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&mutexTail, 1);
    80004ef4:	00100593          	li	a1,1
    80004ef8:	03048513          	addi	a0,s1,48
    80004efc:	ffffc097          	auipc	ra,0xffffc
    80004f00:	50c080e7          	jalr	1292(ra) # 80001408 <_Z8sem_openPP3Semj>
}
    80004f04:	01813083          	ld	ra,24(sp)
    80004f08:	01013403          	ld	s0,16(sp)
    80004f0c:	00813483          	ld	s1,8(sp)
    80004f10:	00013903          	ld	s2,0(sp)
    80004f14:	02010113          	addi	sp,sp,32
    80004f18:	00008067          	ret

0000000080004f1c <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80004f1c:	fe010113          	addi	sp,sp,-32
    80004f20:	00113c23          	sd	ra,24(sp)
    80004f24:	00813823          	sd	s0,16(sp)
    80004f28:	00913423          	sd	s1,8(sp)
    80004f2c:	01213023          	sd	s2,0(sp)
    80004f30:	02010413          	addi	s0,sp,32
    80004f34:	00050493          	mv	s1,a0
    80004f38:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80004f3c:	01853503          	ld	a0,24(a0)
    80004f40:	ffffc097          	auipc	ra,0xffffc
    80004f44:	564080e7          	jalr	1380(ra) # 800014a4 <_Z8sem_waitP3Sem>

    sem_wait(mutexTail);
    80004f48:	0304b503          	ld	a0,48(s1)
    80004f4c:	ffffc097          	auipc	ra,0xffffc
    80004f50:	558080e7          	jalr	1368(ra) # 800014a4 <_Z8sem_waitP3Sem>
    buffer[tail] = val;
    80004f54:	0084b783          	ld	a5,8(s1)
    80004f58:	0144a703          	lw	a4,20(s1)
    80004f5c:	00271713          	slli	a4,a4,0x2
    80004f60:	00e787b3          	add	a5,a5,a4
    80004f64:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80004f68:	0144a783          	lw	a5,20(s1)
    80004f6c:	0017879b          	addiw	a5,a5,1
    80004f70:	0004a703          	lw	a4,0(s1)
    80004f74:	02e7e7bb          	remw	a5,a5,a4
    80004f78:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80004f7c:	0304b503          	ld	a0,48(s1)
    80004f80:	ffffc097          	auipc	ra,0xffffc
    80004f84:	570080e7          	jalr	1392(ra) # 800014f0 <_Z10sem_signalP3Sem>

    sem_signal(itemAvailable);
    80004f88:	0204b503          	ld	a0,32(s1)
    80004f8c:	ffffc097          	auipc	ra,0xffffc
    80004f90:	564080e7          	jalr	1380(ra) # 800014f0 <_Z10sem_signalP3Sem>

}
    80004f94:	01813083          	ld	ra,24(sp)
    80004f98:	01013403          	ld	s0,16(sp)
    80004f9c:	00813483          	ld	s1,8(sp)
    80004fa0:	00013903          	ld	s2,0(sp)
    80004fa4:	02010113          	addi	sp,sp,32
    80004fa8:	00008067          	ret

0000000080004fac <_ZN6Buffer3getEv>:

int Buffer::get() {
    80004fac:	fe010113          	addi	sp,sp,-32
    80004fb0:	00113c23          	sd	ra,24(sp)
    80004fb4:	00813823          	sd	s0,16(sp)
    80004fb8:	00913423          	sd	s1,8(sp)
    80004fbc:	01213023          	sd	s2,0(sp)
    80004fc0:	02010413          	addi	s0,sp,32
    80004fc4:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80004fc8:	02053503          	ld	a0,32(a0)
    80004fcc:	ffffc097          	auipc	ra,0xffffc
    80004fd0:	4d8080e7          	jalr	1240(ra) # 800014a4 <_Z8sem_waitP3Sem>

    sem_wait(mutexHead);
    80004fd4:	0284b503          	ld	a0,40(s1)
    80004fd8:	ffffc097          	auipc	ra,0xffffc
    80004fdc:	4cc080e7          	jalr	1228(ra) # 800014a4 <_Z8sem_waitP3Sem>

    int ret = buffer[head];
    80004fe0:	0084b703          	ld	a4,8(s1)
    80004fe4:	0104a783          	lw	a5,16(s1)
    80004fe8:	00279693          	slli	a3,a5,0x2
    80004fec:	00d70733          	add	a4,a4,a3
    80004ff0:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80004ff4:	0017879b          	addiw	a5,a5,1
    80004ff8:	0004a703          	lw	a4,0(s1)
    80004ffc:	02e7e7bb          	remw	a5,a5,a4
    80005000:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80005004:	0284b503          	ld	a0,40(s1)
    80005008:	ffffc097          	auipc	ra,0xffffc
    8000500c:	4e8080e7          	jalr	1256(ra) # 800014f0 <_Z10sem_signalP3Sem>

    sem_signal(spaceAvailable);
    80005010:	0184b503          	ld	a0,24(s1)
    80005014:	ffffc097          	auipc	ra,0xffffc
    80005018:	4dc080e7          	jalr	1244(ra) # 800014f0 <_Z10sem_signalP3Sem>

    return ret;
}
    8000501c:	00090513          	mv	a0,s2
    80005020:	01813083          	ld	ra,24(sp)
    80005024:	01013403          	ld	s0,16(sp)
    80005028:	00813483          	ld	s1,8(sp)
    8000502c:	00013903          	ld	s2,0(sp)
    80005030:	02010113          	addi	sp,sp,32
    80005034:	00008067          	ret

0000000080005038 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80005038:	fe010113          	addi	sp,sp,-32
    8000503c:	00113c23          	sd	ra,24(sp)
    80005040:	00813823          	sd	s0,16(sp)
    80005044:	00913423          	sd	s1,8(sp)
    80005048:	01213023          	sd	s2,0(sp)
    8000504c:	02010413          	addi	s0,sp,32
    80005050:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80005054:	02853503          	ld	a0,40(a0)
    80005058:	ffffc097          	auipc	ra,0xffffc
    8000505c:	44c080e7          	jalr	1100(ra) # 800014a4 <_Z8sem_waitP3Sem>
    sem_wait(mutexTail);
    80005060:	0304b503          	ld	a0,48(s1)
    80005064:	ffffc097          	auipc	ra,0xffffc
    80005068:	440080e7          	jalr	1088(ra) # 800014a4 <_Z8sem_waitP3Sem>

    if (tail >= head) {
    8000506c:	0144a783          	lw	a5,20(s1)
    80005070:	0104a903          	lw	s2,16(s1)
    80005074:	0327ce63          	blt	a5,s2,800050b0 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80005078:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    8000507c:	0304b503          	ld	a0,48(s1)
    80005080:	ffffc097          	auipc	ra,0xffffc
    80005084:	470080e7          	jalr	1136(ra) # 800014f0 <_Z10sem_signalP3Sem>
    sem_signal(mutexHead);
    80005088:	0284b503          	ld	a0,40(s1)
    8000508c:	ffffc097          	auipc	ra,0xffffc
    80005090:	464080e7          	jalr	1124(ra) # 800014f0 <_Z10sem_signalP3Sem>

    return ret;
}
    80005094:	00090513          	mv	a0,s2
    80005098:	01813083          	ld	ra,24(sp)
    8000509c:	01013403          	ld	s0,16(sp)
    800050a0:	00813483          	ld	s1,8(sp)
    800050a4:	00013903          	ld	s2,0(sp)
    800050a8:	02010113          	addi	sp,sp,32
    800050ac:	00008067          	ret
        ret = cap - head + tail;
    800050b0:	0004a703          	lw	a4,0(s1)
    800050b4:	4127093b          	subw	s2,a4,s2
    800050b8:	00f9093b          	addw	s2,s2,a5
    800050bc:	fc1ff06f          	j	8000507c <_ZN6Buffer6getCntEv+0x44>

00000000800050c0 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    800050c0:	fe010113          	addi	sp,sp,-32
    800050c4:	00113c23          	sd	ra,24(sp)
    800050c8:	00813823          	sd	s0,16(sp)
    800050cc:	00913423          	sd	s1,8(sp)
    800050d0:	02010413          	addi	s0,sp,32
    800050d4:	00050493          	mv	s1,a0
    putc('\n');
    800050d8:	00a00513          	li	a0,10
    800050dc:	ffffc097          	auipc	ra,0xffffc
    800050e0:	590080e7          	jalr	1424(ra) # 8000166c <_Z4putcc>
    printString("Buffer deleted!\n");
    800050e4:	00004517          	auipc	a0,0x4
    800050e8:	22c50513          	addi	a0,a0,556 # 80009310 <CONSOLE_STATUS+0x300>
    800050ec:	00001097          	auipc	ra,0x1
    800050f0:	f18080e7          	jalr	-232(ra) # 80006004 <_Z11printStringPKc>
    while (getCnt() > 0) {
    800050f4:	00048513          	mv	a0,s1
    800050f8:	00000097          	auipc	ra,0x0
    800050fc:	f40080e7          	jalr	-192(ra) # 80005038 <_ZN6Buffer6getCntEv>
    80005100:	02a05c63          	blez	a0,80005138 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80005104:	0084b783          	ld	a5,8(s1)
    80005108:	0104a703          	lw	a4,16(s1)
    8000510c:	00271713          	slli	a4,a4,0x2
    80005110:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80005114:	0007c503          	lbu	a0,0(a5)
    80005118:	ffffc097          	auipc	ra,0xffffc
    8000511c:	554080e7          	jalr	1364(ra) # 8000166c <_Z4putcc>
        head = (head + 1) % cap;
    80005120:	0104a783          	lw	a5,16(s1)
    80005124:	0017879b          	addiw	a5,a5,1
    80005128:	0004a703          	lw	a4,0(s1)
    8000512c:	02e7e7bb          	remw	a5,a5,a4
    80005130:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80005134:	fc1ff06f          	j	800050f4 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80005138:	02100513          	li	a0,33
    8000513c:	ffffc097          	auipc	ra,0xffffc
    80005140:	530080e7          	jalr	1328(ra) # 8000166c <_Z4putcc>
    putc('\n');
    80005144:	00a00513          	li	a0,10
    80005148:	ffffc097          	auipc	ra,0xffffc
    8000514c:	524080e7          	jalr	1316(ra) # 8000166c <_Z4putcc>
    mem_free(buffer);
    80005150:	0084b503          	ld	a0,8(s1)
    80005154:	ffffc097          	auipc	ra,0xffffc
    80005158:	158080e7          	jalr	344(ra) # 800012ac <_Z8mem_freePv>
    sem_close(itemAvailable);
    8000515c:	0204b503          	ld	a0,32(s1)
    80005160:	ffffc097          	auipc	ra,0xffffc
    80005164:	2f8080e7          	jalr	760(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(spaceAvailable);
    80005168:	0184b503          	ld	a0,24(s1)
    8000516c:	ffffc097          	auipc	ra,0xffffc
    80005170:	2ec080e7          	jalr	748(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(mutexTail);
    80005174:	0304b503          	ld	a0,48(s1)
    80005178:	ffffc097          	auipc	ra,0xffffc
    8000517c:	2e0080e7          	jalr	736(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(mutexHead);
    80005180:	0284b503          	ld	a0,40(s1)
    80005184:	ffffc097          	auipc	ra,0xffffc
    80005188:	2d4080e7          	jalr	724(ra) # 80001458 <_Z9sem_closeP3Sem>
}
    8000518c:	01813083          	ld	ra,24(sp)
    80005190:	01013403          	ld	s0,16(sp)
    80005194:	00813483          	ld	s1,8(sp)
    80005198:	02010113          	addi	sp,sp,32
    8000519c:	00008067          	ret

00000000800051a0 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800051a0:	fe010113          	addi	sp,sp,-32
    800051a4:	00113c23          	sd	ra,24(sp)
    800051a8:	00813823          	sd	s0,16(sp)
    800051ac:	00913423          	sd	s1,8(sp)
    800051b0:	01213023          	sd	s2,0(sp)
    800051b4:	02010413          	addi	s0,sp,32
    800051b8:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800051bc:	00100793          	li	a5,1
    800051c0:	02a7f863          	bgeu	a5,a0,800051f0 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800051c4:	00a00793          	li	a5,10
    800051c8:	02f577b3          	remu	a5,a0,a5
    800051cc:	02078e63          	beqz	a5,80005208 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800051d0:	fff48513          	addi	a0,s1,-1
    800051d4:	00000097          	auipc	ra,0x0
    800051d8:	fcc080e7          	jalr	-52(ra) # 800051a0 <_ZL9fibonaccim>
    800051dc:	00050913          	mv	s2,a0
    800051e0:	ffe48513          	addi	a0,s1,-2
    800051e4:	00000097          	auipc	ra,0x0
    800051e8:	fbc080e7          	jalr	-68(ra) # 800051a0 <_ZL9fibonaccim>
    800051ec:	00a90533          	add	a0,s2,a0
}
    800051f0:	01813083          	ld	ra,24(sp)
    800051f4:	01013403          	ld	s0,16(sp)
    800051f8:	00813483          	ld	s1,8(sp)
    800051fc:	00013903          	ld	s2,0(sp)
    80005200:	02010113          	addi	sp,sp,32
    80005204:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005208:	ffffc097          	auipc	ra,0xffffc
    8000520c:	1c4080e7          	jalr	452(ra) # 800013cc <_Z15thread_dispatchv>
    80005210:	fc1ff06f          	j	800051d0 <_ZL9fibonaccim+0x30>

0000000080005214 <_ZL11workerBodyDPv>:
    printString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005214:	fe010113          	addi	sp,sp,-32
    80005218:	00113c23          	sd	ra,24(sp)
    8000521c:	00813823          	sd	s0,16(sp)
    80005220:	00913423          	sd	s1,8(sp)
    80005224:	01213023          	sd	s2,0(sp)
    80005228:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000522c:	00a00493          	li	s1,10
    80005230:	0400006f          	j	80005270 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005234:	00004517          	auipc	a0,0x4
    80005238:	04450513          	addi	a0,a0,68 # 80009278 <CONSOLE_STATUS+0x268>
    8000523c:	00001097          	auipc	ra,0x1
    80005240:	dc8080e7          	jalr	-568(ra) # 80006004 <_Z11printStringPKc>
    80005244:	00000613          	li	a2,0
    80005248:	00a00593          	li	a1,10
    8000524c:	00048513          	mv	a0,s1
    80005250:	00001097          	auipc	ra,0x1
    80005254:	f64080e7          	jalr	-156(ra) # 800061b4 <_Z8printIntiii>
    80005258:	00004517          	auipc	a0,0x4
    8000525c:	22050513          	addi	a0,a0,544 # 80009478 <CONSOLE_STATUS+0x468>
    80005260:	00001097          	auipc	ra,0x1
    80005264:	da4080e7          	jalr	-604(ra) # 80006004 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005268:	0014849b          	addiw	s1,s1,1
    8000526c:	0ff4f493          	andi	s1,s1,255
    80005270:	00c00793          	li	a5,12
    80005274:	fc97f0e3          	bgeu	a5,s1,80005234 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005278:	00004517          	auipc	a0,0x4
    8000527c:	00850513          	addi	a0,a0,8 # 80009280 <CONSOLE_STATUS+0x270>
    80005280:	00001097          	auipc	ra,0x1
    80005284:	d84080e7          	jalr	-636(ra) # 80006004 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005288:	00500313          	li	t1,5
    thread_dispatch();
    8000528c:	ffffc097          	auipc	ra,0xffffc
    80005290:	140080e7          	jalr	320(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005294:	01000513          	li	a0,16
    80005298:	00000097          	auipc	ra,0x0
    8000529c:	f08080e7          	jalr	-248(ra) # 800051a0 <_ZL9fibonaccim>
    800052a0:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800052a4:	00004517          	auipc	a0,0x4
    800052a8:	fec50513          	addi	a0,a0,-20 # 80009290 <CONSOLE_STATUS+0x280>
    800052ac:	00001097          	auipc	ra,0x1
    800052b0:	d58080e7          	jalr	-680(ra) # 80006004 <_Z11printStringPKc>
    800052b4:	00000613          	li	a2,0
    800052b8:	00a00593          	li	a1,10
    800052bc:	0009051b          	sext.w	a0,s2
    800052c0:	00001097          	auipc	ra,0x1
    800052c4:	ef4080e7          	jalr	-268(ra) # 800061b4 <_Z8printIntiii>
    800052c8:	00004517          	auipc	a0,0x4
    800052cc:	1b050513          	addi	a0,a0,432 # 80009478 <CONSOLE_STATUS+0x468>
    800052d0:	00001097          	auipc	ra,0x1
    800052d4:	d34080e7          	jalr	-716(ra) # 80006004 <_Z11printStringPKc>
    800052d8:	0400006f          	j	80005318 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800052dc:	00004517          	auipc	a0,0x4
    800052e0:	f9c50513          	addi	a0,a0,-100 # 80009278 <CONSOLE_STATUS+0x268>
    800052e4:	00001097          	auipc	ra,0x1
    800052e8:	d20080e7          	jalr	-736(ra) # 80006004 <_Z11printStringPKc>
    800052ec:	00000613          	li	a2,0
    800052f0:	00a00593          	li	a1,10
    800052f4:	00048513          	mv	a0,s1
    800052f8:	00001097          	auipc	ra,0x1
    800052fc:	ebc080e7          	jalr	-324(ra) # 800061b4 <_Z8printIntiii>
    80005300:	00004517          	auipc	a0,0x4
    80005304:	17850513          	addi	a0,a0,376 # 80009478 <CONSOLE_STATUS+0x468>
    80005308:	00001097          	auipc	ra,0x1
    8000530c:	cfc080e7          	jalr	-772(ra) # 80006004 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005310:	0014849b          	addiw	s1,s1,1
    80005314:	0ff4f493          	andi	s1,s1,255
    80005318:	00f00793          	li	a5,15
    8000531c:	fc97f0e3          	bgeu	a5,s1,800052dc <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005320:	00004517          	auipc	a0,0x4
    80005324:	f8050513          	addi	a0,a0,-128 # 800092a0 <CONSOLE_STATUS+0x290>
    80005328:	00001097          	auipc	ra,0x1
    8000532c:	cdc080e7          	jalr	-804(ra) # 80006004 <_Z11printStringPKc>
    finishedD = true;
    80005330:	00100793          	li	a5,1
    80005334:	00007717          	auipc	a4,0x7
    80005338:	baf70223          	sb	a5,-1116(a4) # 8000bed8 <_ZL9finishedD>
    thread_dispatch();
    8000533c:	ffffc097          	auipc	ra,0xffffc
    80005340:	090080e7          	jalr	144(ra) # 800013cc <_Z15thread_dispatchv>
}
    80005344:	01813083          	ld	ra,24(sp)
    80005348:	01013403          	ld	s0,16(sp)
    8000534c:	00813483          	ld	s1,8(sp)
    80005350:	00013903          	ld	s2,0(sp)
    80005354:	02010113          	addi	sp,sp,32
    80005358:	00008067          	ret

000000008000535c <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    8000535c:	fe010113          	addi	sp,sp,-32
    80005360:	00113c23          	sd	ra,24(sp)
    80005364:	00813823          	sd	s0,16(sp)
    80005368:	00913423          	sd	s1,8(sp)
    8000536c:	01213023          	sd	s2,0(sp)
    80005370:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005374:	00000493          	li	s1,0
    80005378:	0400006f          	j	800053b8 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    8000537c:	00004517          	auipc	a0,0x4
    80005380:	ecc50513          	addi	a0,a0,-308 # 80009248 <CONSOLE_STATUS+0x238>
    80005384:	00001097          	auipc	ra,0x1
    80005388:	c80080e7          	jalr	-896(ra) # 80006004 <_Z11printStringPKc>
    8000538c:	00000613          	li	a2,0
    80005390:	00a00593          	li	a1,10
    80005394:	00048513          	mv	a0,s1
    80005398:	00001097          	auipc	ra,0x1
    8000539c:	e1c080e7          	jalr	-484(ra) # 800061b4 <_Z8printIntiii>
    800053a0:	00004517          	auipc	a0,0x4
    800053a4:	0d850513          	addi	a0,a0,216 # 80009478 <CONSOLE_STATUS+0x468>
    800053a8:	00001097          	auipc	ra,0x1
    800053ac:	c5c080e7          	jalr	-932(ra) # 80006004 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800053b0:	0014849b          	addiw	s1,s1,1
    800053b4:	0ff4f493          	andi	s1,s1,255
    800053b8:	00200793          	li	a5,2
    800053bc:	fc97f0e3          	bgeu	a5,s1,8000537c <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800053c0:	00004517          	auipc	a0,0x4
    800053c4:	e9050513          	addi	a0,a0,-368 # 80009250 <CONSOLE_STATUS+0x240>
    800053c8:	00001097          	auipc	ra,0x1
    800053cc:	c3c080e7          	jalr	-964(ra) # 80006004 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800053d0:	00700313          	li	t1,7
    thread_dispatch();
    800053d4:	ffffc097          	auipc	ra,0xffffc
    800053d8:	ff8080e7          	jalr	-8(ra) # 800013cc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800053dc:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800053e0:	00004517          	auipc	a0,0x4
    800053e4:	e8050513          	addi	a0,a0,-384 # 80009260 <CONSOLE_STATUS+0x250>
    800053e8:	00001097          	auipc	ra,0x1
    800053ec:	c1c080e7          	jalr	-996(ra) # 80006004 <_Z11printStringPKc>
    800053f0:	00000613          	li	a2,0
    800053f4:	00a00593          	li	a1,10
    800053f8:	0009051b          	sext.w	a0,s2
    800053fc:	00001097          	auipc	ra,0x1
    80005400:	db8080e7          	jalr	-584(ra) # 800061b4 <_Z8printIntiii>
    80005404:	00004517          	auipc	a0,0x4
    80005408:	07450513          	addi	a0,a0,116 # 80009478 <CONSOLE_STATUS+0x468>
    8000540c:	00001097          	auipc	ra,0x1
    80005410:	bf8080e7          	jalr	-1032(ra) # 80006004 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005414:	00c00513          	li	a0,12
    80005418:	00000097          	auipc	ra,0x0
    8000541c:	d88080e7          	jalr	-632(ra) # 800051a0 <_ZL9fibonaccim>
    80005420:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005424:	00004517          	auipc	a0,0x4
    80005428:	e4450513          	addi	a0,a0,-444 # 80009268 <CONSOLE_STATUS+0x258>
    8000542c:	00001097          	auipc	ra,0x1
    80005430:	bd8080e7          	jalr	-1064(ra) # 80006004 <_Z11printStringPKc>
    80005434:	00000613          	li	a2,0
    80005438:	00a00593          	li	a1,10
    8000543c:	0009051b          	sext.w	a0,s2
    80005440:	00001097          	auipc	ra,0x1
    80005444:	d74080e7          	jalr	-652(ra) # 800061b4 <_Z8printIntiii>
    80005448:	00004517          	auipc	a0,0x4
    8000544c:	03050513          	addi	a0,a0,48 # 80009478 <CONSOLE_STATUS+0x468>
    80005450:	00001097          	auipc	ra,0x1
    80005454:	bb4080e7          	jalr	-1100(ra) # 80006004 <_Z11printStringPKc>
    80005458:	0400006f          	j	80005498 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    8000545c:	00004517          	auipc	a0,0x4
    80005460:	dec50513          	addi	a0,a0,-532 # 80009248 <CONSOLE_STATUS+0x238>
    80005464:	00001097          	auipc	ra,0x1
    80005468:	ba0080e7          	jalr	-1120(ra) # 80006004 <_Z11printStringPKc>
    8000546c:	00000613          	li	a2,0
    80005470:	00a00593          	li	a1,10
    80005474:	00048513          	mv	a0,s1
    80005478:	00001097          	auipc	ra,0x1
    8000547c:	d3c080e7          	jalr	-708(ra) # 800061b4 <_Z8printIntiii>
    80005480:	00004517          	auipc	a0,0x4
    80005484:	ff850513          	addi	a0,a0,-8 # 80009478 <CONSOLE_STATUS+0x468>
    80005488:	00001097          	auipc	ra,0x1
    8000548c:	b7c080e7          	jalr	-1156(ra) # 80006004 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005490:	0014849b          	addiw	s1,s1,1
    80005494:	0ff4f493          	andi	s1,s1,255
    80005498:	00500793          	li	a5,5
    8000549c:	fc97f0e3          	bgeu	a5,s1,8000545c <_ZL11workerBodyCPv+0x100>
    printString("C finished!\n");
    800054a0:	00004517          	auipc	a0,0x4
    800054a4:	e8850513          	addi	a0,a0,-376 # 80009328 <CONSOLE_STATUS+0x318>
    800054a8:	00001097          	auipc	ra,0x1
    800054ac:	b5c080e7          	jalr	-1188(ra) # 80006004 <_Z11printStringPKc>
    finishedC = true;
    800054b0:	00100793          	li	a5,1
    800054b4:	00007717          	auipc	a4,0x7
    800054b8:	a2f702a3          	sb	a5,-1499(a4) # 8000bed9 <_ZL9finishedC>
    thread_dispatch();
    800054bc:	ffffc097          	auipc	ra,0xffffc
    800054c0:	f10080e7          	jalr	-240(ra) # 800013cc <_Z15thread_dispatchv>
}
    800054c4:	01813083          	ld	ra,24(sp)
    800054c8:	01013403          	ld	s0,16(sp)
    800054cc:	00813483          	ld	s1,8(sp)
    800054d0:	00013903          	ld	s2,0(sp)
    800054d4:	02010113          	addi	sp,sp,32
    800054d8:	00008067          	ret

00000000800054dc <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800054dc:	fe010113          	addi	sp,sp,-32
    800054e0:	00113c23          	sd	ra,24(sp)
    800054e4:	00813823          	sd	s0,16(sp)
    800054e8:	00913423          	sd	s1,8(sp)
    800054ec:	01213023          	sd	s2,0(sp)
    800054f0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800054f4:	00000913          	li	s2,0
    800054f8:	0380006f          	j	80005530 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    800054fc:	ffffc097          	auipc	ra,0xffffc
    80005500:	ed0080e7          	jalr	-304(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005504:	00148493          	addi	s1,s1,1
    80005508:	000027b7          	lui	a5,0x2
    8000550c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005510:	0097ee63          	bltu	a5,s1,8000552c <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005514:	00000713          	li	a4,0
    80005518:	000077b7          	lui	a5,0x7
    8000551c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005520:	fce7eee3          	bltu	a5,a4,800054fc <_ZL11workerBodyBPv+0x20>
    80005524:	00170713          	addi	a4,a4,1
    80005528:	ff1ff06f          	j	80005518 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    8000552c:	00190913          	addi	s2,s2,1
    80005530:	00f00793          	li	a5,15
    80005534:	0527e063          	bltu	a5,s2,80005574 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80005538:	00004517          	auipc	a0,0x4
    8000553c:	cf850513          	addi	a0,a0,-776 # 80009230 <CONSOLE_STATUS+0x220>
    80005540:	00001097          	auipc	ra,0x1
    80005544:	ac4080e7          	jalr	-1340(ra) # 80006004 <_Z11printStringPKc>
    80005548:	00000613          	li	a2,0
    8000554c:	00a00593          	li	a1,10
    80005550:	0009051b          	sext.w	a0,s2
    80005554:	00001097          	auipc	ra,0x1
    80005558:	c60080e7          	jalr	-928(ra) # 800061b4 <_Z8printIntiii>
    8000555c:	00004517          	auipc	a0,0x4
    80005560:	f1c50513          	addi	a0,a0,-228 # 80009478 <CONSOLE_STATUS+0x468>
    80005564:	00001097          	auipc	ra,0x1
    80005568:	aa0080e7          	jalr	-1376(ra) # 80006004 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000556c:	00000493          	li	s1,0
    80005570:	f99ff06f          	j	80005508 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80005574:	00004517          	auipc	a0,0x4
    80005578:	cc450513          	addi	a0,a0,-828 # 80009238 <CONSOLE_STATUS+0x228>
    8000557c:	00001097          	auipc	ra,0x1
    80005580:	a88080e7          	jalr	-1400(ra) # 80006004 <_Z11printStringPKc>
    finishedB = true;
    80005584:	00100793          	li	a5,1
    80005588:	00007717          	auipc	a4,0x7
    8000558c:	94f70923          	sb	a5,-1710(a4) # 8000beda <_ZL9finishedB>
    thread_dispatch();
    80005590:	ffffc097          	auipc	ra,0xffffc
    80005594:	e3c080e7          	jalr	-452(ra) # 800013cc <_Z15thread_dispatchv>
}
    80005598:	01813083          	ld	ra,24(sp)
    8000559c:	01013403          	ld	s0,16(sp)
    800055a0:	00813483          	ld	s1,8(sp)
    800055a4:	00013903          	ld	s2,0(sp)
    800055a8:	02010113          	addi	sp,sp,32
    800055ac:	00008067          	ret

00000000800055b0 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800055b0:	fe010113          	addi	sp,sp,-32
    800055b4:	00113c23          	sd	ra,24(sp)
    800055b8:	00813823          	sd	s0,16(sp)
    800055bc:	00913423          	sd	s1,8(sp)
    800055c0:	01213023          	sd	s2,0(sp)
    800055c4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800055c8:	00000913          	li	s2,0
    800055cc:	0380006f          	j	80005604 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800055d0:	ffffc097          	auipc	ra,0xffffc
    800055d4:	dfc080e7          	jalr	-516(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800055d8:	00148493          	addi	s1,s1,1
    800055dc:	000027b7          	lui	a5,0x2
    800055e0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800055e4:	0097ee63          	bltu	a5,s1,80005600 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800055e8:	00000713          	li	a4,0
    800055ec:	000077b7          	lui	a5,0x7
    800055f0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800055f4:	fce7eee3          	bltu	a5,a4,800055d0 <_ZL11workerBodyAPv+0x20>
    800055f8:	00170713          	addi	a4,a4,1
    800055fc:	ff1ff06f          	j	800055ec <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005600:	00190913          	addi	s2,s2,1
    80005604:	00900793          	li	a5,9
    80005608:	0527e063          	bltu	a5,s2,80005648 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000560c:	00004517          	auipc	a0,0x4
    80005610:	c0c50513          	addi	a0,a0,-1012 # 80009218 <CONSOLE_STATUS+0x208>
    80005614:	00001097          	auipc	ra,0x1
    80005618:	9f0080e7          	jalr	-1552(ra) # 80006004 <_Z11printStringPKc>
    8000561c:	00000613          	li	a2,0
    80005620:	00a00593          	li	a1,10
    80005624:	0009051b          	sext.w	a0,s2
    80005628:	00001097          	auipc	ra,0x1
    8000562c:	b8c080e7          	jalr	-1140(ra) # 800061b4 <_Z8printIntiii>
    80005630:	00004517          	auipc	a0,0x4
    80005634:	e4850513          	addi	a0,a0,-440 # 80009478 <CONSOLE_STATUS+0x468>
    80005638:	00001097          	auipc	ra,0x1
    8000563c:	9cc080e7          	jalr	-1588(ra) # 80006004 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005640:	00000493          	li	s1,0
    80005644:	f99ff06f          	j	800055dc <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80005648:	00004517          	auipc	a0,0x4
    8000564c:	bd850513          	addi	a0,a0,-1064 # 80009220 <CONSOLE_STATUS+0x210>
    80005650:	00001097          	auipc	ra,0x1
    80005654:	9b4080e7          	jalr	-1612(ra) # 80006004 <_Z11printStringPKc>
    finishedA = true;
    80005658:	00100793          	li	a5,1
    8000565c:	00007717          	auipc	a4,0x7
    80005660:	86f70fa3          	sb	a5,-1921(a4) # 8000bedb <_ZL9finishedA>
}
    80005664:	01813083          	ld	ra,24(sp)
    80005668:	01013403          	ld	s0,16(sp)
    8000566c:	00813483          	ld	s1,8(sp)
    80005670:	00013903          	ld	s2,0(sp)
    80005674:	02010113          	addi	sp,sp,32
    80005678:	00008067          	ret

000000008000567c <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    8000567c:	fd010113          	addi	sp,sp,-48
    80005680:	02113423          	sd	ra,40(sp)
    80005684:	02813023          	sd	s0,32(sp)
    80005688:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    8000568c:	00000613          	li	a2,0
    80005690:	00000597          	auipc	a1,0x0
    80005694:	f2058593          	addi	a1,a1,-224 # 800055b0 <_ZL11workerBodyAPv>
    80005698:	fd040513          	addi	a0,s0,-48
    8000569c:	ffffc097          	auipc	ra,0xffffc
    800056a0:	c5c080e7          	jalr	-932(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    800056a4:	00004517          	auipc	a0,0x4
    800056a8:	c0c50513          	addi	a0,a0,-1012 # 800092b0 <CONSOLE_STATUS+0x2a0>
    800056ac:	00001097          	auipc	ra,0x1
    800056b0:	958080e7          	jalr	-1704(ra) # 80006004 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800056b4:	00000613          	li	a2,0
    800056b8:	00000597          	auipc	a1,0x0
    800056bc:	e2458593          	addi	a1,a1,-476 # 800054dc <_ZL11workerBodyBPv>
    800056c0:	fd840513          	addi	a0,s0,-40
    800056c4:	ffffc097          	auipc	ra,0xffffc
    800056c8:	c34080e7          	jalr	-972(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    800056cc:	00004517          	auipc	a0,0x4
    800056d0:	bfc50513          	addi	a0,a0,-1028 # 800092c8 <CONSOLE_STATUS+0x2b8>
    800056d4:	00001097          	auipc	ra,0x1
    800056d8:	930080e7          	jalr	-1744(ra) # 80006004 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800056dc:	00000613          	li	a2,0
    800056e0:	00000597          	auipc	a1,0x0
    800056e4:	c7c58593          	addi	a1,a1,-900 # 8000535c <_ZL11workerBodyCPv>
    800056e8:	fe040513          	addi	a0,s0,-32
    800056ec:	ffffc097          	auipc	ra,0xffffc
    800056f0:	c0c080e7          	jalr	-1012(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    800056f4:	00004517          	auipc	a0,0x4
    800056f8:	bec50513          	addi	a0,a0,-1044 # 800092e0 <CONSOLE_STATUS+0x2d0>
    800056fc:	00001097          	auipc	ra,0x1
    80005700:	908080e7          	jalr	-1784(ra) # 80006004 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005704:	00000613          	li	a2,0
    80005708:	00000597          	auipc	a1,0x0
    8000570c:	b0c58593          	addi	a1,a1,-1268 # 80005214 <_ZL11workerBodyDPv>
    80005710:	fe840513          	addi	a0,s0,-24
    80005714:	ffffc097          	auipc	ra,0xffffc
    80005718:	be4080e7          	jalr	-1052(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    8000571c:	00004517          	auipc	a0,0x4
    80005720:	bdc50513          	addi	a0,a0,-1060 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80005724:	00001097          	auipc	ra,0x1
    80005728:	8e0080e7          	jalr	-1824(ra) # 80006004 <_Z11printStringPKc>
    8000572c:	00c0006f          	j	80005738 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005730:	ffffc097          	auipc	ra,0xffffc
    80005734:	c9c080e7          	jalr	-868(ra) # 800013cc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005738:	00006797          	auipc	a5,0x6
    8000573c:	7a37c783          	lbu	a5,1955(a5) # 8000bedb <_ZL9finishedA>
    80005740:	fe0788e3          	beqz	a5,80005730 <_Z18Threads_C_API_testv+0xb4>
    80005744:	00006797          	auipc	a5,0x6
    80005748:	7967c783          	lbu	a5,1942(a5) # 8000beda <_ZL9finishedB>
    8000574c:	fe0782e3          	beqz	a5,80005730 <_Z18Threads_C_API_testv+0xb4>
    80005750:	00006797          	auipc	a5,0x6
    80005754:	7897c783          	lbu	a5,1929(a5) # 8000bed9 <_ZL9finishedC>
    80005758:	fc078ce3          	beqz	a5,80005730 <_Z18Threads_C_API_testv+0xb4>
    8000575c:	00006797          	auipc	a5,0x6
    80005760:	77c7c783          	lbu	a5,1916(a5) # 8000bed8 <_ZL9finishedD>
    80005764:	fc0786e3          	beqz	a5,80005730 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80005768:	02813083          	ld	ra,40(sp)
    8000576c:	02013403          	ld	s0,32(sp)
    80005770:	03010113          	addi	sp,sp,48
    80005774:	00008067          	ret

0000000080005778 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80005778:	fd010113          	addi	sp,sp,-48
    8000577c:	02113423          	sd	ra,40(sp)
    80005780:	02813023          	sd	s0,32(sp)
    80005784:	00913c23          	sd	s1,24(sp)
    80005788:	01213823          	sd	s2,16(sp)
    8000578c:	01313423          	sd	s3,8(sp)
    80005790:	03010413          	addi	s0,sp,48
    80005794:	00050993          	mv	s3,a0
    80005798:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    8000579c:	00000913          	li	s2,0
    800057a0:	00c0006f          	j	800057ac <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800057a4:	ffffd097          	auipc	ra,0xffffd
    800057a8:	9a4080e7          	jalr	-1628(ra) # 80002148 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    800057ac:	ffffc097          	auipc	ra,0xffffc
    800057b0:	e74080e7          	jalr	-396(ra) # 80001620 <_Z4getcv>
    800057b4:	0005059b          	sext.w	a1,a0
    800057b8:	01b00793          	li	a5,27
    800057bc:	02f58a63          	beq	a1,a5,800057f0 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    800057c0:	0084b503          	ld	a0,8(s1)
    800057c4:	00001097          	auipc	ra,0x1
    800057c8:	c64080e7          	jalr	-924(ra) # 80006428 <_ZN9BufferCPP3putEi>
        i++;
    800057cc:	0019071b          	addiw	a4,s2,1
    800057d0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800057d4:	0004a683          	lw	a3,0(s1)
    800057d8:	0026979b          	slliw	a5,a3,0x2
    800057dc:	00d787bb          	addw	a5,a5,a3
    800057e0:	0017979b          	slliw	a5,a5,0x1
    800057e4:	02f767bb          	remw	a5,a4,a5
    800057e8:	fc0792e3          	bnez	a5,800057ac <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    800057ec:	fb9ff06f          	j	800057a4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    800057f0:	00100793          	li	a5,1
    800057f4:	00006717          	auipc	a4,0x6
    800057f8:	6ef72623          	sw	a5,1772(a4) # 8000bee0 <_ZL9threadEnd>
    td->buffer->put('!');
    800057fc:	0209b783          	ld	a5,32(s3)
    80005800:	02100593          	li	a1,33
    80005804:	0087b503          	ld	a0,8(a5)
    80005808:	00001097          	auipc	ra,0x1
    8000580c:	c20080e7          	jalr	-992(ra) # 80006428 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80005810:	0104b503          	ld	a0,16(s1)
    80005814:	ffffd097          	auipc	ra,0xffffd
    80005818:	9f8080e7          	jalr	-1544(ra) # 8000220c <_ZN9Semaphore6signalEv>
}
    8000581c:	02813083          	ld	ra,40(sp)
    80005820:	02013403          	ld	s0,32(sp)
    80005824:	01813483          	ld	s1,24(sp)
    80005828:	01013903          	ld	s2,16(sp)
    8000582c:	00813983          	ld	s3,8(sp)
    80005830:	03010113          	addi	sp,sp,48
    80005834:	00008067          	ret

0000000080005838 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80005838:	fe010113          	addi	sp,sp,-32
    8000583c:	00113c23          	sd	ra,24(sp)
    80005840:	00813823          	sd	s0,16(sp)
    80005844:	00913423          	sd	s1,8(sp)
    80005848:	01213023          	sd	s2,0(sp)
    8000584c:	02010413          	addi	s0,sp,32
    80005850:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005854:	00000913          	li	s2,0
    80005858:	00c0006f          	j	80005864 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    8000585c:	ffffd097          	auipc	ra,0xffffd
    80005860:	8ec080e7          	jalr	-1812(ra) # 80002148 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80005864:	00006797          	auipc	a5,0x6
    80005868:	67c7a783          	lw	a5,1660(a5) # 8000bee0 <_ZL9threadEnd>
    8000586c:	02079e63          	bnez	a5,800058a8 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80005870:	0004a583          	lw	a1,0(s1)
    80005874:	0305859b          	addiw	a1,a1,48
    80005878:	0084b503          	ld	a0,8(s1)
    8000587c:	00001097          	auipc	ra,0x1
    80005880:	bac080e7          	jalr	-1108(ra) # 80006428 <_ZN9BufferCPP3putEi>
        i++;
    80005884:	0019071b          	addiw	a4,s2,1
    80005888:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000588c:	0004a683          	lw	a3,0(s1)
    80005890:	0026979b          	slliw	a5,a3,0x2
    80005894:	00d787bb          	addw	a5,a5,a3
    80005898:	0017979b          	slliw	a5,a5,0x1
    8000589c:	02f767bb          	remw	a5,a4,a5
    800058a0:	fc0792e3          	bnez	a5,80005864 <_ZN12ProducerSync8producerEPv+0x2c>
    800058a4:	fb9ff06f          	j	8000585c <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    800058a8:	0104b503          	ld	a0,16(s1)
    800058ac:	ffffd097          	auipc	ra,0xffffd
    800058b0:	960080e7          	jalr	-1696(ra) # 8000220c <_ZN9Semaphore6signalEv>
}
    800058b4:	01813083          	ld	ra,24(sp)
    800058b8:	01013403          	ld	s0,16(sp)
    800058bc:	00813483          	ld	s1,8(sp)
    800058c0:	00013903          	ld	s2,0(sp)
    800058c4:	02010113          	addi	sp,sp,32
    800058c8:	00008067          	ret

00000000800058cc <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    800058cc:	fd010113          	addi	sp,sp,-48
    800058d0:	02113423          	sd	ra,40(sp)
    800058d4:	02813023          	sd	s0,32(sp)
    800058d8:	00913c23          	sd	s1,24(sp)
    800058dc:	01213823          	sd	s2,16(sp)
    800058e0:	01313423          	sd	s3,8(sp)
    800058e4:	01413023          	sd	s4,0(sp)
    800058e8:	03010413          	addi	s0,sp,48
    800058ec:	00050993          	mv	s3,a0
    800058f0:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800058f4:	00000a13          	li	s4,0
    800058f8:	01c0006f          	j	80005914 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    800058fc:	ffffd097          	auipc	ra,0xffffd
    80005900:	84c080e7          	jalr	-1972(ra) # 80002148 <_ZN6Thread8dispatchEv>
    80005904:	0500006f          	j	80005954 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80005908:	00a00513          	li	a0,10
    8000590c:	ffffc097          	auipc	ra,0xffffc
    80005910:	d60080e7          	jalr	-672(ra) # 8000166c <_Z4putcc>
    while (!threadEnd) {
    80005914:	00006797          	auipc	a5,0x6
    80005918:	5cc7a783          	lw	a5,1484(a5) # 8000bee0 <_ZL9threadEnd>
    8000591c:	06079263          	bnez	a5,80005980 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80005920:	00893503          	ld	a0,8(s2)
    80005924:	00001097          	auipc	ra,0x1
    80005928:	b94080e7          	jalr	-1132(ra) # 800064b8 <_ZN9BufferCPP3getEv>
        i++;
    8000592c:	001a049b          	addiw	s1,s4,1
    80005930:	00048a1b          	sext.w	s4,s1
        putc(key);
    80005934:	0ff57513          	andi	a0,a0,255
    80005938:	ffffc097          	auipc	ra,0xffffc
    8000593c:	d34080e7          	jalr	-716(ra) # 8000166c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80005940:	00092703          	lw	a4,0(s2)
    80005944:	0027179b          	slliw	a5,a4,0x2
    80005948:	00e787bb          	addw	a5,a5,a4
    8000594c:	02f4e7bb          	remw	a5,s1,a5
    80005950:	fa0786e3          	beqz	a5,800058fc <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80005954:	05000793          	li	a5,80
    80005958:	02f4e4bb          	remw	s1,s1,a5
    8000595c:	fa049ce3          	bnez	s1,80005914 <_ZN12ConsumerSync8consumerEPv+0x48>
    80005960:	fa9ff06f          	j	80005908 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80005964:	0209b783          	ld	a5,32(s3)
    80005968:	0087b503          	ld	a0,8(a5)
    8000596c:	00001097          	auipc	ra,0x1
    80005970:	b4c080e7          	jalr	-1204(ra) # 800064b8 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80005974:	0ff57513          	andi	a0,a0,255
    80005978:	ffffd097          	auipc	ra,0xffffd
    8000597c:	9c0080e7          	jalr	-1600(ra) # 80002338 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80005980:	0209b783          	ld	a5,32(s3)
    80005984:	0087b503          	ld	a0,8(a5)
    80005988:	00001097          	auipc	ra,0x1
    8000598c:	bbc080e7          	jalr	-1092(ra) # 80006544 <_ZN9BufferCPP6getCntEv>
    80005990:	fca04ae3          	bgtz	a0,80005964 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80005994:	01093503          	ld	a0,16(s2)
    80005998:	ffffd097          	auipc	ra,0xffffd
    8000599c:	874080e7          	jalr	-1932(ra) # 8000220c <_ZN9Semaphore6signalEv>
}
    800059a0:	02813083          	ld	ra,40(sp)
    800059a4:	02013403          	ld	s0,32(sp)
    800059a8:	01813483          	ld	s1,24(sp)
    800059ac:	01013903          	ld	s2,16(sp)
    800059b0:	00813983          	ld	s3,8(sp)
    800059b4:	00013a03          	ld	s4,0(sp)
    800059b8:	03010113          	addi	sp,sp,48
    800059bc:	00008067          	ret

00000000800059c0 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    800059c0:	f8010113          	addi	sp,sp,-128
    800059c4:	06113c23          	sd	ra,120(sp)
    800059c8:	06813823          	sd	s0,112(sp)
    800059cc:	06913423          	sd	s1,104(sp)
    800059d0:	07213023          	sd	s2,96(sp)
    800059d4:	05313c23          	sd	s3,88(sp)
    800059d8:	05413823          	sd	s4,80(sp)
    800059dc:	05513423          	sd	s5,72(sp)
    800059e0:	05613023          	sd	s6,64(sp)
    800059e4:	03713c23          	sd	s7,56(sp)
    800059e8:	03813823          	sd	s8,48(sp)
    800059ec:	03913423          	sd	s9,40(sp)
    800059f0:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    800059f4:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    800059f8:	00003517          	auipc	a0,0x3
    800059fc:	73850513          	addi	a0,a0,1848 # 80009130 <CONSOLE_STATUS+0x120>
    80005a00:	00000097          	auipc	ra,0x0
    80005a04:	604080e7          	jalr	1540(ra) # 80006004 <_Z11printStringPKc>
    getString(input, 30);
    80005a08:	01e00593          	li	a1,30
    80005a0c:	f8040493          	addi	s1,s0,-128
    80005a10:	00048513          	mv	a0,s1
    80005a14:	00000097          	auipc	ra,0x0
    80005a18:	678080e7          	jalr	1656(ra) # 8000608c <_Z9getStringPci>
    threadNum = stringToInt(input);
    80005a1c:	00048513          	mv	a0,s1
    80005a20:	00000097          	auipc	ra,0x0
    80005a24:	744080e7          	jalr	1860(ra) # 80006164 <_Z11stringToIntPKc>
    80005a28:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80005a2c:	00003517          	auipc	a0,0x3
    80005a30:	72450513          	addi	a0,a0,1828 # 80009150 <CONSOLE_STATUS+0x140>
    80005a34:	00000097          	auipc	ra,0x0
    80005a38:	5d0080e7          	jalr	1488(ra) # 80006004 <_Z11printStringPKc>
    getString(input, 30);
    80005a3c:	01e00593          	li	a1,30
    80005a40:	00048513          	mv	a0,s1
    80005a44:	00000097          	auipc	ra,0x0
    80005a48:	648080e7          	jalr	1608(ra) # 8000608c <_Z9getStringPci>
    n = stringToInt(input);
    80005a4c:	00048513          	mv	a0,s1
    80005a50:	00000097          	auipc	ra,0x0
    80005a54:	714080e7          	jalr	1812(ra) # 80006164 <_Z11stringToIntPKc>
    80005a58:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80005a5c:	00003517          	auipc	a0,0x3
    80005a60:	71450513          	addi	a0,a0,1812 # 80009170 <CONSOLE_STATUS+0x160>
    80005a64:	00000097          	auipc	ra,0x0
    80005a68:	5a0080e7          	jalr	1440(ra) # 80006004 <_Z11printStringPKc>
    80005a6c:	00000613          	li	a2,0
    80005a70:	00a00593          	li	a1,10
    80005a74:	00090513          	mv	a0,s2
    80005a78:	00000097          	auipc	ra,0x0
    80005a7c:	73c080e7          	jalr	1852(ra) # 800061b4 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80005a80:	00003517          	auipc	a0,0x3
    80005a84:	70850513          	addi	a0,a0,1800 # 80009188 <CONSOLE_STATUS+0x178>
    80005a88:	00000097          	auipc	ra,0x0
    80005a8c:	57c080e7          	jalr	1404(ra) # 80006004 <_Z11printStringPKc>
    80005a90:	00000613          	li	a2,0
    80005a94:	00a00593          	li	a1,10
    80005a98:	00048513          	mv	a0,s1
    80005a9c:	00000097          	auipc	ra,0x0
    80005aa0:	718080e7          	jalr	1816(ra) # 800061b4 <_Z8printIntiii>
    printString(".\n");
    80005aa4:	00003517          	auipc	a0,0x3
    80005aa8:	6fc50513          	addi	a0,a0,1788 # 800091a0 <CONSOLE_STATUS+0x190>
    80005aac:	00000097          	auipc	ra,0x0
    80005ab0:	558080e7          	jalr	1368(ra) # 80006004 <_Z11printStringPKc>
    if(threadNum > n) {
    80005ab4:	0324c463          	blt	s1,s2,80005adc <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80005ab8:	03205c63          	blez	s2,80005af0 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80005abc:	03800513          	li	a0,56
    80005ac0:	ffffc097          	auipc	ra,0xffffc
    80005ac4:	520080e7          	jalr	1312(ra) # 80001fe0 <_Znwm>
    80005ac8:	00050a93          	mv	s5,a0
    80005acc:	00048593          	mv	a1,s1
    80005ad0:	00001097          	auipc	ra,0x1
    80005ad4:	804080e7          	jalr	-2044(ra) # 800062d4 <_ZN9BufferCPPC1Ei>
    80005ad8:	0300006f          	j	80005b08 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005adc:	00003517          	auipc	a0,0x3
    80005ae0:	6cc50513          	addi	a0,a0,1740 # 800091a8 <CONSOLE_STATUS+0x198>
    80005ae4:	00000097          	auipc	ra,0x0
    80005ae8:	520080e7          	jalr	1312(ra) # 80006004 <_Z11printStringPKc>
        return;
    80005aec:	0140006f          	j	80005b00 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80005af0:	00003517          	auipc	a0,0x3
    80005af4:	6f850513          	addi	a0,a0,1784 # 800091e8 <CONSOLE_STATUS+0x1d8>
    80005af8:	00000097          	auipc	ra,0x0
    80005afc:	50c080e7          	jalr	1292(ra) # 80006004 <_Z11printStringPKc>
        return;
    80005b00:	000b8113          	mv	sp,s7
    80005b04:	2380006f          	j	80005d3c <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80005b08:	01000513          	li	a0,16
    80005b0c:	ffffc097          	auipc	ra,0xffffc
    80005b10:	4d4080e7          	jalr	1236(ra) # 80001fe0 <_Znwm>
    80005b14:	00050493          	mv	s1,a0
    80005b18:	00000593          	li	a1,0
    80005b1c:	ffffc097          	auipc	ra,0xffffc
    80005b20:	67c080e7          	jalr	1660(ra) # 80002198 <_ZN9SemaphoreC1Ej>
    80005b24:	00006797          	auipc	a5,0x6
    80005b28:	3c97b223          	sd	s1,964(a5) # 8000bee8 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80005b2c:	00391793          	slli	a5,s2,0x3
    80005b30:	00f78793          	addi	a5,a5,15
    80005b34:	ff07f793          	andi	a5,a5,-16
    80005b38:	40f10133          	sub	sp,sp,a5
    80005b3c:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80005b40:	0019071b          	addiw	a4,s2,1
    80005b44:	00171793          	slli	a5,a4,0x1
    80005b48:	00e787b3          	add	a5,a5,a4
    80005b4c:	00379793          	slli	a5,a5,0x3
    80005b50:	00f78793          	addi	a5,a5,15
    80005b54:	ff07f793          	andi	a5,a5,-16
    80005b58:	40f10133          	sub	sp,sp,a5
    80005b5c:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80005b60:	00191c13          	slli	s8,s2,0x1
    80005b64:	012c07b3          	add	a5,s8,s2
    80005b68:	00379793          	slli	a5,a5,0x3
    80005b6c:	00fa07b3          	add	a5,s4,a5
    80005b70:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80005b74:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80005b78:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80005b7c:	02800513          	li	a0,40
    80005b80:	ffffc097          	auipc	ra,0xffffc
    80005b84:	460080e7          	jalr	1120(ra) # 80001fe0 <_Znwm>
    80005b88:	00050b13          	mv	s6,a0
    80005b8c:	012c0c33          	add	s8,s8,s2
    80005b90:	003c1c13          	slli	s8,s8,0x3
    80005b94:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80005b98:	ffffc097          	auipc	ra,0xffffc
    80005b9c:	548080e7          	jalr	1352(ra) # 800020e0 <_ZN6ThreadC1Ev>
    80005ba0:	00006797          	auipc	a5,0x6
    80005ba4:	1d878793          	addi	a5,a5,472 # 8000bd78 <_ZTV12ConsumerSync+0x10>
    80005ba8:	00fb3023          	sd	a5,0(s6)
    80005bac:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80005bb0:	000b0513          	mv	a0,s6
    80005bb4:	ffffc097          	auipc	ra,0xffffc
    80005bb8:	55c080e7          	jalr	1372(ra) # 80002110 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005bbc:	00000493          	li	s1,0
    80005bc0:	0380006f          	j	80005bf8 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005bc4:	00006797          	auipc	a5,0x6
    80005bc8:	18c78793          	addi	a5,a5,396 # 8000bd50 <_ZTV12ProducerSync+0x10>
    80005bcc:	00fcb023          	sd	a5,0(s9)
    80005bd0:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80005bd4:	00349793          	slli	a5,s1,0x3
    80005bd8:	00f987b3          	add	a5,s3,a5
    80005bdc:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80005be0:	00349793          	slli	a5,s1,0x3
    80005be4:	00f987b3          	add	a5,s3,a5
    80005be8:	0007b503          	ld	a0,0(a5)
    80005bec:	ffffc097          	auipc	ra,0xffffc
    80005bf0:	524080e7          	jalr	1316(ra) # 80002110 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005bf4:	0014849b          	addiw	s1,s1,1
    80005bf8:	0b24d063          	bge	s1,s2,80005c98 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80005bfc:	00149793          	slli	a5,s1,0x1
    80005c00:	009787b3          	add	a5,a5,s1
    80005c04:	00379793          	slli	a5,a5,0x3
    80005c08:	00fa07b3          	add	a5,s4,a5
    80005c0c:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005c10:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80005c14:	00006717          	auipc	a4,0x6
    80005c18:	2d473703          	ld	a4,724(a4) # 8000bee8 <_ZL10waitForAll>
    80005c1c:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80005c20:	02905863          	blez	s1,80005c50 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80005c24:	02800513          	li	a0,40
    80005c28:	ffffc097          	auipc	ra,0xffffc
    80005c2c:	3b8080e7          	jalr	952(ra) # 80001fe0 <_Znwm>
    80005c30:	00050c93          	mv	s9,a0
    80005c34:	00149c13          	slli	s8,s1,0x1
    80005c38:	009c0c33          	add	s8,s8,s1
    80005c3c:	003c1c13          	slli	s8,s8,0x3
    80005c40:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005c44:	ffffc097          	auipc	ra,0xffffc
    80005c48:	49c080e7          	jalr	1180(ra) # 800020e0 <_ZN6ThreadC1Ev>
    80005c4c:	f79ff06f          	j	80005bc4 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80005c50:	02800513          	li	a0,40
    80005c54:	ffffc097          	auipc	ra,0xffffc
    80005c58:	38c080e7          	jalr	908(ra) # 80001fe0 <_Znwm>
    80005c5c:	00050c93          	mv	s9,a0
    80005c60:	00149c13          	slli	s8,s1,0x1
    80005c64:	009c0c33          	add	s8,s8,s1
    80005c68:	003c1c13          	slli	s8,s8,0x3
    80005c6c:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80005c70:	ffffc097          	auipc	ra,0xffffc
    80005c74:	470080e7          	jalr	1136(ra) # 800020e0 <_ZN6ThreadC1Ev>
    80005c78:	00006797          	auipc	a5,0x6
    80005c7c:	0b078793          	addi	a5,a5,176 # 8000bd28 <_ZTV16ProducerKeyboard+0x10>
    80005c80:	00fcb023          	sd	a5,0(s9)
    80005c84:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80005c88:	00349793          	slli	a5,s1,0x3
    80005c8c:	00f987b3          	add	a5,s3,a5
    80005c90:	0197b023          	sd	s9,0(a5)
    80005c94:	f4dff06f          	j	80005be0 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80005c98:	ffffc097          	auipc	ra,0xffffc
    80005c9c:	4b0080e7          	jalr	1200(ra) # 80002148 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80005ca0:	00000493          	li	s1,0
    80005ca4:	00994e63          	blt	s2,s1,80005cc0 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80005ca8:	00006517          	auipc	a0,0x6
    80005cac:	24053503          	ld	a0,576(a0) # 8000bee8 <_ZL10waitForAll>
    80005cb0:	ffffc097          	auipc	ra,0xffffc
    80005cb4:	524080e7          	jalr	1316(ra) # 800021d4 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80005cb8:	0014849b          	addiw	s1,s1,1
    80005cbc:	fe9ff06f          	j	80005ca4 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80005cc0:	00000493          	li	s1,0
    80005cc4:	0080006f          	j	80005ccc <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80005cc8:	0014849b          	addiw	s1,s1,1
    80005ccc:	0324d263          	bge	s1,s2,80005cf0 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80005cd0:	00349793          	slli	a5,s1,0x3
    80005cd4:	00f987b3          	add	a5,s3,a5
    80005cd8:	0007b503          	ld	a0,0(a5)
    80005cdc:	fe0506e3          	beqz	a0,80005cc8 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80005ce0:	00053783          	ld	a5,0(a0)
    80005ce4:	0087b783          	ld	a5,8(a5)
    80005ce8:	000780e7          	jalr	a5
    80005cec:	fddff06f          	j	80005cc8 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80005cf0:	000b0a63          	beqz	s6,80005d04 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80005cf4:	000b3783          	ld	a5,0(s6)
    80005cf8:	0087b783          	ld	a5,8(a5)
    80005cfc:	000b0513          	mv	a0,s6
    80005d00:	000780e7          	jalr	a5
    delete waitForAll;
    80005d04:	00006517          	auipc	a0,0x6
    80005d08:	1e453503          	ld	a0,484(a0) # 8000bee8 <_ZL10waitForAll>
    80005d0c:	00050863          	beqz	a0,80005d1c <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80005d10:	00053783          	ld	a5,0(a0)
    80005d14:	0087b783          	ld	a5,8(a5)
    80005d18:	000780e7          	jalr	a5
    delete buffer;
    80005d1c:	000a8e63          	beqz	s5,80005d38 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80005d20:	000a8513          	mv	a0,s5
    80005d24:	00001097          	auipc	ra,0x1
    80005d28:	8a8080e7          	jalr	-1880(ra) # 800065cc <_ZN9BufferCPPD1Ev>
    80005d2c:	000a8513          	mv	a0,s5
    80005d30:	ffffc097          	auipc	ra,0xffffc
    80005d34:	2d8080e7          	jalr	728(ra) # 80002008 <_ZdlPv>
    80005d38:	000b8113          	mv	sp,s7

}
    80005d3c:	f8040113          	addi	sp,s0,-128
    80005d40:	07813083          	ld	ra,120(sp)
    80005d44:	07013403          	ld	s0,112(sp)
    80005d48:	06813483          	ld	s1,104(sp)
    80005d4c:	06013903          	ld	s2,96(sp)
    80005d50:	05813983          	ld	s3,88(sp)
    80005d54:	05013a03          	ld	s4,80(sp)
    80005d58:	04813a83          	ld	s5,72(sp)
    80005d5c:	04013b03          	ld	s6,64(sp)
    80005d60:	03813b83          	ld	s7,56(sp)
    80005d64:	03013c03          	ld	s8,48(sp)
    80005d68:	02813c83          	ld	s9,40(sp)
    80005d6c:	08010113          	addi	sp,sp,128
    80005d70:	00008067          	ret
    80005d74:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80005d78:	000a8513          	mv	a0,s5
    80005d7c:	ffffc097          	auipc	ra,0xffffc
    80005d80:	28c080e7          	jalr	652(ra) # 80002008 <_ZdlPv>
    80005d84:	00048513          	mv	a0,s1
    80005d88:	00007097          	auipc	ra,0x7
    80005d8c:	240080e7          	jalr	576(ra) # 8000cfc8 <_Unwind_Resume>
    80005d90:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80005d94:	00048513          	mv	a0,s1
    80005d98:	ffffc097          	auipc	ra,0xffffc
    80005d9c:	270080e7          	jalr	624(ra) # 80002008 <_ZdlPv>
    80005da0:	00090513          	mv	a0,s2
    80005da4:	00007097          	auipc	ra,0x7
    80005da8:	224080e7          	jalr	548(ra) # 8000cfc8 <_Unwind_Resume>
    80005dac:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80005db0:	000b0513          	mv	a0,s6
    80005db4:	ffffc097          	auipc	ra,0xffffc
    80005db8:	254080e7          	jalr	596(ra) # 80002008 <_ZdlPv>
    80005dbc:	00048513          	mv	a0,s1
    80005dc0:	00007097          	auipc	ra,0x7
    80005dc4:	208080e7          	jalr	520(ra) # 8000cfc8 <_Unwind_Resume>
    80005dc8:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005dcc:	000c8513          	mv	a0,s9
    80005dd0:	ffffc097          	auipc	ra,0xffffc
    80005dd4:	238080e7          	jalr	568(ra) # 80002008 <_ZdlPv>
    80005dd8:	00048513          	mv	a0,s1
    80005ddc:	00007097          	auipc	ra,0x7
    80005de0:	1ec080e7          	jalr	492(ra) # 8000cfc8 <_Unwind_Resume>
    80005de4:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005de8:	000c8513          	mv	a0,s9
    80005dec:	ffffc097          	auipc	ra,0xffffc
    80005df0:	21c080e7          	jalr	540(ra) # 80002008 <_ZdlPv>
    80005df4:	00048513          	mv	a0,s1
    80005df8:	00007097          	auipc	ra,0x7
    80005dfc:	1d0080e7          	jalr	464(ra) # 8000cfc8 <_Unwind_Resume>

0000000080005e00 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005e00:	ff010113          	addi	sp,sp,-16
    80005e04:	00113423          	sd	ra,8(sp)
    80005e08:	00813023          	sd	s0,0(sp)
    80005e0c:	01010413          	addi	s0,sp,16
    80005e10:	00006797          	auipc	a5,0x6
    80005e14:	f6878793          	addi	a5,a5,-152 # 8000bd78 <_ZTV12ConsumerSync+0x10>
    80005e18:	00f53023          	sd	a5,0(a0)
    80005e1c:	ffffc097          	auipc	ra,0xffffc
    80005e20:	0d8080e7          	jalr	216(ra) # 80001ef4 <_ZN6ThreadD1Ev>
    80005e24:	00813083          	ld	ra,8(sp)
    80005e28:	00013403          	ld	s0,0(sp)
    80005e2c:	01010113          	addi	sp,sp,16
    80005e30:	00008067          	ret

0000000080005e34 <_ZN12ConsumerSyncD0Ev>:
    80005e34:	fe010113          	addi	sp,sp,-32
    80005e38:	00113c23          	sd	ra,24(sp)
    80005e3c:	00813823          	sd	s0,16(sp)
    80005e40:	00913423          	sd	s1,8(sp)
    80005e44:	02010413          	addi	s0,sp,32
    80005e48:	00050493          	mv	s1,a0
    80005e4c:	00006797          	auipc	a5,0x6
    80005e50:	f2c78793          	addi	a5,a5,-212 # 8000bd78 <_ZTV12ConsumerSync+0x10>
    80005e54:	00f53023          	sd	a5,0(a0)
    80005e58:	ffffc097          	auipc	ra,0xffffc
    80005e5c:	09c080e7          	jalr	156(ra) # 80001ef4 <_ZN6ThreadD1Ev>
    80005e60:	00048513          	mv	a0,s1
    80005e64:	ffffc097          	auipc	ra,0xffffc
    80005e68:	1a4080e7          	jalr	420(ra) # 80002008 <_ZdlPv>
    80005e6c:	01813083          	ld	ra,24(sp)
    80005e70:	01013403          	ld	s0,16(sp)
    80005e74:	00813483          	ld	s1,8(sp)
    80005e78:	02010113          	addi	sp,sp,32
    80005e7c:	00008067          	ret

0000000080005e80 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80005e80:	ff010113          	addi	sp,sp,-16
    80005e84:	00113423          	sd	ra,8(sp)
    80005e88:	00813023          	sd	s0,0(sp)
    80005e8c:	01010413          	addi	s0,sp,16
    80005e90:	00006797          	auipc	a5,0x6
    80005e94:	ec078793          	addi	a5,a5,-320 # 8000bd50 <_ZTV12ProducerSync+0x10>
    80005e98:	00f53023          	sd	a5,0(a0)
    80005e9c:	ffffc097          	auipc	ra,0xffffc
    80005ea0:	058080e7          	jalr	88(ra) # 80001ef4 <_ZN6ThreadD1Ev>
    80005ea4:	00813083          	ld	ra,8(sp)
    80005ea8:	00013403          	ld	s0,0(sp)
    80005eac:	01010113          	addi	sp,sp,16
    80005eb0:	00008067          	ret

0000000080005eb4 <_ZN12ProducerSyncD0Ev>:
    80005eb4:	fe010113          	addi	sp,sp,-32
    80005eb8:	00113c23          	sd	ra,24(sp)
    80005ebc:	00813823          	sd	s0,16(sp)
    80005ec0:	00913423          	sd	s1,8(sp)
    80005ec4:	02010413          	addi	s0,sp,32
    80005ec8:	00050493          	mv	s1,a0
    80005ecc:	00006797          	auipc	a5,0x6
    80005ed0:	e8478793          	addi	a5,a5,-380 # 8000bd50 <_ZTV12ProducerSync+0x10>
    80005ed4:	00f53023          	sd	a5,0(a0)
    80005ed8:	ffffc097          	auipc	ra,0xffffc
    80005edc:	01c080e7          	jalr	28(ra) # 80001ef4 <_ZN6ThreadD1Ev>
    80005ee0:	00048513          	mv	a0,s1
    80005ee4:	ffffc097          	auipc	ra,0xffffc
    80005ee8:	124080e7          	jalr	292(ra) # 80002008 <_ZdlPv>
    80005eec:	01813083          	ld	ra,24(sp)
    80005ef0:	01013403          	ld	s0,16(sp)
    80005ef4:	00813483          	ld	s1,8(sp)
    80005ef8:	02010113          	addi	sp,sp,32
    80005efc:	00008067          	ret

0000000080005f00 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005f00:	ff010113          	addi	sp,sp,-16
    80005f04:	00113423          	sd	ra,8(sp)
    80005f08:	00813023          	sd	s0,0(sp)
    80005f0c:	01010413          	addi	s0,sp,16
    80005f10:	00006797          	auipc	a5,0x6
    80005f14:	e1878793          	addi	a5,a5,-488 # 8000bd28 <_ZTV16ProducerKeyboard+0x10>
    80005f18:	00f53023          	sd	a5,0(a0)
    80005f1c:	ffffc097          	auipc	ra,0xffffc
    80005f20:	fd8080e7          	jalr	-40(ra) # 80001ef4 <_ZN6ThreadD1Ev>
    80005f24:	00813083          	ld	ra,8(sp)
    80005f28:	00013403          	ld	s0,0(sp)
    80005f2c:	01010113          	addi	sp,sp,16
    80005f30:	00008067          	ret

0000000080005f34 <_ZN16ProducerKeyboardD0Ev>:
    80005f34:	fe010113          	addi	sp,sp,-32
    80005f38:	00113c23          	sd	ra,24(sp)
    80005f3c:	00813823          	sd	s0,16(sp)
    80005f40:	00913423          	sd	s1,8(sp)
    80005f44:	02010413          	addi	s0,sp,32
    80005f48:	00050493          	mv	s1,a0
    80005f4c:	00006797          	auipc	a5,0x6
    80005f50:	ddc78793          	addi	a5,a5,-548 # 8000bd28 <_ZTV16ProducerKeyboard+0x10>
    80005f54:	00f53023          	sd	a5,0(a0)
    80005f58:	ffffc097          	auipc	ra,0xffffc
    80005f5c:	f9c080e7          	jalr	-100(ra) # 80001ef4 <_ZN6ThreadD1Ev>
    80005f60:	00048513          	mv	a0,s1
    80005f64:	ffffc097          	auipc	ra,0xffffc
    80005f68:	0a4080e7          	jalr	164(ra) # 80002008 <_ZdlPv>
    80005f6c:	01813083          	ld	ra,24(sp)
    80005f70:	01013403          	ld	s0,16(sp)
    80005f74:	00813483          	ld	s1,8(sp)
    80005f78:	02010113          	addi	sp,sp,32
    80005f7c:	00008067          	ret

0000000080005f80 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80005f80:	ff010113          	addi	sp,sp,-16
    80005f84:	00113423          	sd	ra,8(sp)
    80005f88:	00813023          	sd	s0,0(sp)
    80005f8c:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80005f90:	02053583          	ld	a1,32(a0)
    80005f94:	fffff097          	auipc	ra,0xfffff
    80005f98:	7e4080e7          	jalr	2020(ra) # 80005778 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005f9c:	00813083          	ld	ra,8(sp)
    80005fa0:	00013403          	ld	s0,0(sp)
    80005fa4:	01010113          	addi	sp,sp,16
    80005fa8:	00008067          	ret

0000000080005fac <_ZN12ProducerSync3runEv>:
    void run() override {
    80005fac:	ff010113          	addi	sp,sp,-16
    80005fb0:	00113423          	sd	ra,8(sp)
    80005fb4:	00813023          	sd	s0,0(sp)
    80005fb8:	01010413          	addi	s0,sp,16
        producer(td);
    80005fbc:	02053583          	ld	a1,32(a0)
    80005fc0:	00000097          	auipc	ra,0x0
    80005fc4:	878080e7          	jalr	-1928(ra) # 80005838 <_ZN12ProducerSync8producerEPv>
    }
    80005fc8:	00813083          	ld	ra,8(sp)
    80005fcc:	00013403          	ld	s0,0(sp)
    80005fd0:	01010113          	addi	sp,sp,16
    80005fd4:	00008067          	ret

0000000080005fd8 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005fd8:	ff010113          	addi	sp,sp,-16
    80005fdc:	00113423          	sd	ra,8(sp)
    80005fe0:	00813023          	sd	s0,0(sp)
    80005fe4:	01010413          	addi	s0,sp,16
        consumer(td);
    80005fe8:	02053583          	ld	a1,32(a0)
    80005fec:	00000097          	auipc	ra,0x0
    80005ff0:	8e0080e7          	jalr	-1824(ra) # 800058cc <_ZN12ConsumerSync8consumerEPv>
    }
    80005ff4:	00813083          	ld	ra,8(sp)
    80005ff8:	00013403          	ld	s0,0(sp)
    80005ffc:	01010113          	addi	sp,sp,16
    80006000:	00008067          	ret

0000000080006004 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80006004:	fe010113          	addi	sp,sp,-32
    80006008:	00113c23          	sd	ra,24(sp)
    8000600c:	00813823          	sd	s0,16(sp)
    80006010:	00913423          	sd	s1,8(sp)
    80006014:	02010413          	addi	s0,sp,32
    80006018:	00050493          	mv	s1,a0
    LOCK();
    8000601c:	00100613          	li	a2,1
    80006020:	00000593          	li	a1,0
    80006024:	00006517          	auipc	a0,0x6
    80006028:	ecc50513          	addi	a0,a0,-308 # 8000bef0 <lockPrint>
    8000602c:	ffffb097          	auipc	ra,0xffffb
    80006030:	1f0080e7          	jalr	496(ra) # 8000121c <copy_and_swap>
    80006034:	00050863          	beqz	a0,80006044 <_Z11printStringPKc+0x40>
    80006038:	ffffb097          	auipc	ra,0xffffb
    8000603c:	394080e7          	jalr	916(ra) # 800013cc <_Z15thread_dispatchv>
    80006040:	fddff06f          	j	8000601c <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80006044:	0004c503          	lbu	a0,0(s1)
    80006048:	00050a63          	beqz	a0,8000605c <_Z11printStringPKc+0x58>
    {
        putc(*string);
    8000604c:	ffffb097          	auipc	ra,0xffffb
    80006050:	620080e7          	jalr	1568(ra) # 8000166c <_Z4putcc>
        string++;
    80006054:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80006058:	fedff06f          	j	80006044 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    8000605c:	00000613          	li	a2,0
    80006060:	00100593          	li	a1,1
    80006064:	00006517          	auipc	a0,0x6
    80006068:	e8c50513          	addi	a0,a0,-372 # 8000bef0 <lockPrint>
    8000606c:	ffffb097          	auipc	ra,0xffffb
    80006070:	1b0080e7          	jalr	432(ra) # 8000121c <copy_and_swap>
    80006074:	fe0514e3          	bnez	a0,8000605c <_Z11printStringPKc+0x58>
}
    80006078:	01813083          	ld	ra,24(sp)
    8000607c:	01013403          	ld	s0,16(sp)
    80006080:	00813483          	ld	s1,8(sp)
    80006084:	02010113          	addi	sp,sp,32
    80006088:	00008067          	ret

000000008000608c <_Z9getStringPci>:

char* getString(char *buf, int max) {
    8000608c:	fd010113          	addi	sp,sp,-48
    80006090:	02113423          	sd	ra,40(sp)
    80006094:	02813023          	sd	s0,32(sp)
    80006098:	00913c23          	sd	s1,24(sp)
    8000609c:	01213823          	sd	s2,16(sp)
    800060a0:	01313423          	sd	s3,8(sp)
    800060a4:	01413023          	sd	s4,0(sp)
    800060a8:	03010413          	addi	s0,sp,48
    800060ac:	00050993          	mv	s3,a0
    800060b0:	00058a13          	mv	s4,a1
    LOCK();
    800060b4:	00100613          	li	a2,1
    800060b8:	00000593          	li	a1,0
    800060bc:	00006517          	auipc	a0,0x6
    800060c0:	e3450513          	addi	a0,a0,-460 # 8000bef0 <lockPrint>
    800060c4:	ffffb097          	auipc	ra,0xffffb
    800060c8:	158080e7          	jalr	344(ra) # 8000121c <copy_and_swap>
    800060cc:	00050863          	beqz	a0,800060dc <_Z9getStringPci+0x50>
    800060d0:	ffffb097          	auipc	ra,0xffffb
    800060d4:	2fc080e7          	jalr	764(ra) # 800013cc <_Z15thread_dispatchv>
    800060d8:	fddff06f          	j	800060b4 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800060dc:	00000913          	li	s2,0
    800060e0:	00090493          	mv	s1,s2
    800060e4:	0019091b          	addiw	s2,s2,1
    800060e8:	03495a63          	bge	s2,s4,8000611c <_Z9getStringPci+0x90>
        cc = getc();
    800060ec:	ffffb097          	auipc	ra,0xffffb
    800060f0:	534080e7          	jalr	1332(ra) # 80001620 <_Z4getcv>
        if(cc < 1)
    800060f4:	02050463          	beqz	a0,8000611c <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    800060f8:	009984b3          	add	s1,s3,s1
    800060fc:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80006100:	00a00793          	li	a5,10
    80006104:	00f50a63          	beq	a0,a5,80006118 <_Z9getStringPci+0x8c>
    80006108:	00d00793          	li	a5,13
    8000610c:	fcf51ae3          	bne	a0,a5,800060e0 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80006110:	00090493          	mv	s1,s2
    80006114:	0080006f          	j	8000611c <_Z9getStringPci+0x90>
    80006118:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    8000611c:	009984b3          	add	s1,s3,s1
    80006120:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80006124:	00000613          	li	a2,0
    80006128:	00100593          	li	a1,1
    8000612c:	00006517          	auipc	a0,0x6
    80006130:	dc450513          	addi	a0,a0,-572 # 8000bef0 <lockPrint>
    80006134:	ffffb097          	auipc	ra,0xffffb
    80006138:	0e8080e7          	jalr	232(ra) # 8000121c <copy_and_swap>
    8000613c:	fe0514e3          	bnez	a0,80006124 <_Z9getStringPci+0x98>
    return buf;
}
    80006140:	00098513          	mv	a0,s3
    80006144:	02813083          	ld	ra,40(sp)
    80006148:	02013403          	ld	s0,32(sp)
    8000614c:	01813483          	ld	s1,24(sp)
    80006150:	01013903          	ld	s2,16(sp)
    80006154:	00813983          	ld	s3,8(sp)
    80006158:	00013a03          	ld	s4,0(sp)
    8000615c:	03010113          	addi	sp,sp,48
    80006160:	00008067          	ret

0000000080006164 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80006164:	ff010113          	addi	sp,sp,-16
    80006168:	00813423          	sd	s0,8(sp)
    8000616c:	01010413          	addi	s0,sp,16
    80006170:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80006174:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80006178:	0006c603          	lbu	a2,0(a3)
    8000617c:	fd06071b          	addiw	a4,a2,-48
    80006180:	0ff77713          	andi	a4,a4,255
    80006184:	00900793          	li	a5,9
    80006188:	02e7e063          	bltu	a5,a4,800061a8 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    8000618c:	0025179b          	slliw	a5,a0,0x2
    80006190:	00a787bb          	addw	a5,a5,a0
    80006194:	0017979b          	slliw	a5,a5,0x1
    80006198:	00168693          	addi	a3,a3,1
    8000619c:	00c787bb          	addw	a5,a5,a2
    800061a0:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800061a4:	fd5ff06f          	j	80006178 <_Z11stringToIntPKc+0x14>
    return n;
}
    800061a8:	00813403          	ld	s0,8(sp)
    800061ac:	01010113          	addi	sp,sp,16
    800061b0:	00008067          	ret

00000000800061b4 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800061b4:	fc010113          	addi	sp,sp,-64
    800061b8:	02113c23          	sd	ra,56(sp)
    800061bc:	02813823          	sd	s0,48(sp)
    800061c0:	02913423          	sd	s1,40(sp)
    800061c4:	03213023          	sd	s2,32(sp)
    800061c8:	01313c23          	sd	s3,24(sp)
    800061cc:	04010413          	addi	s0,sp,64
    800061d0:	00050493          	mv	s1,a0
    800061d4:	00058913          	mv	s2,a1
    800061d8:	00060993          	mv	s3,a2
    LOCK();
    800061dc:	00100613          	li	a2,1
    800061e0:	00000593          	li	a1,0
    800061e4:	00006517          	auipc	a0,0x6
    800061e8:	d0c50513          	addi	a0,a0,-756 # 8000bef0 <lockPrint>
    800061ec:	ffffb097          	auipc	ra,0xffffb
    800061f0:	030080e7          	jalr	48(ra) # 8000121c <copy_and_swap>
    800061f4:	00050863          	beqz	a0,80006204 <_Z8printIntiii+0x50>
    800061f8:	ffffb097          	auipc	ra,0xffffb
    800061fc:	1d4080e7          	jalr	468(ra) # 800013cc <_Z15thread_dispatchv>
    80006200:	fddff06f          	j	800061dc <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80006204:	00098463          	beqz	s3,8000620c <_Z8printIntiii+0x58>
    80006208:	0804c463          	bltz	s1,80006290 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    8000620c:	0004851b          	sext.w	a0,s1
    neg = 0;
    80006210:	00000593          	li	a1,0
    }

    i = 0;
    80006214:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80006218:	0009079b          	sext.w	a5,s2
    8000621c:	0325773b          	remuw	a4,a0,s2
    80006220:	00048613          	mv	a2,s1
    80006224:	0014849b          	addiw	s1,s1,1
    80006228:	02071693          	slli	a3,a4,0x20
    8000622c:	0206d693          	srli	a3,a3,0x20
    80006230:	00006717          	auipc	a4,0x6
    80006234:	b6070713          	addi	a4,a4,-1184 # 8000bd90 <digits>
    80006238:	00d70733          	add	a4,a4,a3
    8000623c:	00074683          	lbu	a3,0(a4)
    80006240:	fd040713          	addi	a4,s0,-48
    80006244:	00c70733          	add	a4,a4,a2
    80006248:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    8000624c:	0005071b          	sext.w	a4,a0
    80006250:	0325553b          	divuw	a0,a0,s2
    80006254:	fcf772e3          	bgeu	a4,a5,80006218 <_Z8printIntiii+0x64>
    if(neg)
    80006258:	00058c63          	beqz	a1,80006270 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    8000625c:	fd040793          	addi	a5,s0,-48
    80006260:	009784b3          	add	s1,a5,s1
    80006264:	02d00793          	li	a5,45
    80006268:	fef48823          	sb	a5,-16(s1)
    8000626c:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80006270:	fff4849b          	addiw	s1,s1,-1
    80006274:	0204c463          	bltz	s1,8000629c <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80006278:	fd040793          	addi	a5,s0,-48
    8000627c:	009787b3          	add	a5,a5,s1
    80006280:	ff07c503          	lbu	a0,-16(a5)
    80006284:	ffffb097          	auipc	ra,0xffffb
    80006288:	3e8080e7          	jalr	1000(ra) # 8000166c <_Z4putcc>
    8000628c:	fe5ff06f          	j	80006270 <_Z8printIntiii+0xbc>
        x = -xx;
    80006290:	4090053b          	negw	a0,s1
        neg = 1;
    80006294:	00100593          	li	a1,1
        x = -xx;
    80006298:	f7dff06f          	j	80006214 <_Z8printIntiii+0x60>

    UNLOCK();
    8000629c:	00000613          	li	a2,0
    800062a0:	00100593          	li	a1,1
    800062a4:	00006517          	auipc	a0,0x6
    800062a8:	c4c50513          	addi	a0,a0,-948 # 8000bef0 <lockPrint>
    800062ac:	ffffb097          	auipc	ra,0xffffb
    800062b0:	f70080e7          	jalr	-144(ra) # 8000121c <copy_and_swap>
    800062b4:	fe0514e3          	bnez	a0,8000629c <_Z8printIntiii+0xe8>
    800062b8:	03813083          	ld	ra,56(sp)
    800062bc:	03013403          	ld	s0,48(sp)
    800062c0:	02813483          	ld	s1,40(sp)
    800062c4:	02013903          	ld	s2,32(sp)
    800062c8:	01813983          	ld	s3,24(sp)
    800062cc:	04010113          	addi	sp,sp,64
    800062d0:	00008067          	ret

00000000800062d4 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800062d4:	fd010113          	addi	sp,sp,-48
    800062d8:	02113423          	sd	ra,40(sp)
    800062dc:	02813023          	sd	s0,32(sp)
    800062e0:	00913c23          	sd	s1,24(sp)
    800062e4:	01213823          	sd	s2,16(sp)
    800062e8:	01313423          	sd	s3,8(sp)
    800062ec:	03010413          	addi	s0,sp,48
    800062f0:	00050493          	mv	s1,a0
    800062f4:	00058913          	mv	s2,a1
    800062f8:	0015879b          	addiw	a5,a1,1
    800062fc:	0007851b          	sext.w	a0,a5
    80006300:	00f4a023          	sw	a5,0(s1)
    80006304:	0004a823          	sw	zero,16(s1)
    80006308:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    8000630c:	00251513          	slli	a0,a0,0x2
    80006310:	ffffb097          	auipc	ra,0xffffb
    80006314:	f48080e7          	jalr	-184(ra) # 80001258 <_Z9mem_allocm>
    80006318:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    8000631c:	01000513          	li	a0,16
    80006320:	ffffc097          	auipc	ra,0xffffc
    80006324:	cc0080e7          	jalr	-832(ra) # 80001fe0 <_Znwm>
    80006328:	00050993          	mv	s3,a0
    8000632c:	00000593          	li	a1,0
    80006330:	ffffc097          	auipc	ra,0xffffc
    80006334:	e68080e7          	jalr	-408(ra) # 80002198 <_ZN9SemaphoreC1Ej>
    80006338:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    8000633c:	01000513          	li	a0,16
    80006340:	ffffc097          	auipc	ra,0xffffc
    80006344:	ca0080e7          	jalr	-864(ra) # 80001fe0 <_Znwm>
    80006348:	00050993          	mv	s3,a0
    8000634c:	00090593          	mv	a1,s2
    80006350:	ffffc097          	auipc	ra,0xffffc
    80006354:	e48080e7          	jalr	-440(ra) # 80002198 <_ZN9SemaphoreC1Ej>
    80006358:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    8000635c:	01000513          	li	a0,16
    80006360:	ffffc097          	auipc	ra,0xffffc
    80006364:	c80080e7          	jalr	-896(ra) # 80001fe0 <_Znwm>
    80006368:	00050913          	mv	s2,a0
    8000636c:	00100593          	li	a1,1
    80006370:	ffffc097          	auipc	ra,0xffffc
    80006374:	e28080e7          	jalr	-472(ra) # 80002198 <_ZN9SemaphoreC1Ej>
    80006378:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    8000637c:	01000513          	li	a0,16
    80006380:	ffffc097          	auipc	ra,0xffffc
    80006384:	c60080e7          	jalr	-928(ra) # 80001fe0 <_Znwm>
    80006388:	00050913          	mv	s2,a0
    8000638c:	00100593          	li	a1,1
    80006390:	ffffc097          	auipc	ra,0xffffc
    80006394:	e08080e7          	jalr	-504(ra) # 80002198 <_ZN9SemaphoreC1Ej>
    80006398:	0324b823          	sd	s2,48(s1)
}
    8000639c:	02813083          	ld	ra,40(sp)
    800063a0:	02013403          	ld	s0,32(sp)
    800063a4:	01813483          	ld	s1,24(sp)
    800063a8:	01013903          	ld	s2,16(sp)
    800063ac:	00813983          	ld	s3,8(sp)
    800063b0:	03010113          	addi	sp,sp,48
    800063b4:	00008067          	ret
    800063b8:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    800063bc:	00098513          	mv	a0,s3
    800063c0:	ffffc097          	auipc	ra,0xffffc
    800063c4:	c48080e7          	jalr	-952(ra) # 80002008 <_ZdlPv>
    800063c8:	00048513          	mv	a0,s1
    800063cc:	00007097          	auipc	ra,0x7
    800063d0:	bfc080e7          	jalr	-1028(ra) # 8000cfc8 <_Unwind_Resume>
    800063d4:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    800063d8:	00098513          	mv	a0,s3
    800063dc:	ffffc097          	auipc	ra,0xffffc
    800063e0:	c2c080e7          	jalr	-980(ra) # 80002008 <_ZdlPv>
    800063e4:	00048513          	mv	a0,s1
    800063e8:	00007097          	auipc	ra,0x7
    800063ec:	be0080e7          	jalr	-1056(ra) # 8000cfc8 <_Unwind_Resume>
    800063f0:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    800063f4:	00090513          	mv	a0,s2
    800063f8:	ffffc097          	auipc	ra,0xffffc
    800063fc:	c10080e7          	jalr	-1008(ra) # 80002008 <_ZdlPv>
    80006400:	00048513          	mv	a0,s1
    80006404:	00007097          	auipc	ra,0x7
    80006408:	bc4080e7          	jalr	-1084(ra) # 8000cfc8 <_Unwind_Resume>
    8000640c:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80006410:	00090513          	mv	a0,s2
    80006414:	ffffc097          	auipc	ra,0xffffc
    80006418:	bf4080e7          	jalr	-1036(ra) # 80002008 <_ZdlPv>
    8000641c:	00048513          	mv	a0,s1
    80006420:	00007097          	auipc	ra,0x7
    80006424:	ba8080e7          	jalr	-1112(ra) # 8000cfc8 <_Unwind_Resume>

0000000080006428 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80006428:	fe010113          	addi	sp,sp,-32
    8000642c:	00113c23          	sd	ra,24(sp)
    80006430:	00813823          	sd	s0,16(sp)
    80006434:	00913423          	sd	s1,8(sp)
    80006438:	01213023          	sd	s2,0(sp)
    8000643c:	02010413          	addi	s0,sp,32
    80006440:	00050493          	mv	s1,a0
    80006444:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80006448:	01853503          	ld	a0,24(a0)
    8000644c:	ffffc097          	auipc	ra,0xffffc
    80006450:	d88080e7          	jalr	-632(ra) # 800021d4 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80006454:	0304b503          	ld	a0,48(s1)
    80006458:	ffffc097          	auipc	ra,0xffffc
    8000645c:	d7c080e7          	jalr	-644(ra) # 800021d4 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80006460:	0084b783          	ld	a5,8(s1)
    80006464:	0144a703          	lw	a4,20(s1)
    80006468:	00271713          	slli	a4,a4,0x2
    8000646c:	00e787b3          	add	a5,a5,a4
    80006470:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006474:	0144a783          	lw	a5,20(s1)
    80006478:	0017879b          	addiw	a5,a5,1
    8000647c:	0004a703          	lw	a4,0(s1)
    80006480:	02e7e7bb          	remw	a5,a5,a4
    80006484:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80006488:	0304b503          	ld	a0,48(s1)
    8000648c:	ffffc097          	auipc	ra,0xffffc
    80006490:	d80080e7          	jalr	-640(ra) # 8000220c <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80006494:	0204b503          	ld	a0,32(s1)
    80006498:	ffffc097          	auipc	ra,0xffffc
    8000649c:	d74080e7          	jalr	-652(ra) # 8000220c <_ZN9Semaphore6signalEv>

}
    800064a0:	01813083          	ld	ra,24(sp)
    800064a4:	01013403          	ld	s0,16(sp)
    800064a8:	00813483          	ld	s1,8(sp)
    800064ac:	00013903          	ld	s2,0(sp)
    800064b0:	02010113          	addi	sp,sp,32
    800064b4:	00008067          	ret

00000000800064b8 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    800064b8:	fe010113          	addi	sp,sp,-32
    800064bc:	00113c23          	sd	ra,24(sp)
    800064c0:	00813823          	sd	s0,16(sp)
    800064c4:	00913423          	sd	s1,8(sp)
    800064c8:	01213023          	sd	s2,0(sp)
    800064cc:	02010413          	addi	s0,sp,32
    800064d0:	00050493          	mv	s1,a0
    itemAvailable->wait();
    800064d4:	02053503          	ld	a0,32(a0)
    800064d8:	ffffc097          	auipc	ra,0xffffc
    800064dc:	cfc080e7          	jalr	-772(ra) # 800021d4 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    800064e0:	0284b503          	ld	a0,40(s1)
    800064e4:	ffffc097          	auipc	ra,0xffffc
    800064e8:	cf0080e7          	jalr	-784(ra) # 800021d4 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    800064ec:	0084b703          	ld	a4,8(s1)
    800064f0:	0104a783          	lw	a5,16(s1)
    800064f4:	00279693          	slli	a3,a5,0x2
    800064f8:	00d70733          	add	a4,a4,a3
    800064fc:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006500:	0017879b          	addiw	a5,a5,1
    80006504:	0004a703          	lw	a4,0(s1)
    80006508:	02e7e7bb          	remw	a5,a5,a4
    8000650c:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80006510:	0284b503          	ld	a0,40(s1)
    80006514:	ffffc097          	auipc	ra,0xffffc
    80006518:	cf8080e7          	jalr	-776(ra) # 8000220c <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    8000651c:	0184b503          	ld	a0,24(s1)
    80006520:	ffffc097          	auipc	ra,0xffffc
    80006524:	cec080e7          	jalr	-788(ra) # 8000220c <_ZN9Semaphore6signalEv>

    return ret;
}
    80006528:	00090513          	mv	a0,s2
    8000652c:	01813083          	ld	ra,24(sp)
    80006530:	01013403          	ld	s0,16(sp)
    80006534:	00813483          	ld	s1,8(sp)
    80006538:	00013903          	ld	s2,0(sp)
    8000653c:	02010113          	addi	sp,sp,32
    80006540:	00008067          	ret

0000000080006544 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80006544:	fe010113          	addi	sp,sp,-32
    80006548:	00113c23          	sd	ra,24(sp)
    8000654c:	00813823          	sd	s0,16(sp)
    80006550:	00913423          	sd	s1,8(sp)
    80006554:	01213023          	sd	s2,0(sp)
    80006558:	02010413          	addi	s0,sp,32
    8000655c:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80006560:	02853503          	ld	a0,40(a0)
    80006564:	ffffc097          	auipc	ra,0xffffc
    80006568:	c70080e7          	jalr	-912(ra) # 800021d4 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    8000656c:	0304b503          	ld	a0,48(s1)
    80006570:	ffffc097          	auipc	ra,0xffffc
    80006574:	c64080e7          	jalr	-924(ra) # 800021d4 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80006578:	0144a783          	lw	a5,20(s1)
    8000657c:	0104a903          	lw	s2,16(s1)
    80006580:	0327ce63          	blt	a5,s2,800065bc <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80006584:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80006588:	0304b503          	ld	a0,48(s1)
    8000658c:	ffffc097          	auipc	ra,0xffffc
    80006590:	c80080e7          	jalr	-896(ra) # 8000220c <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80006594:	0284b503          	ld	a0,40(s1)
    80006598:	ffffc097          	auipc	ra,0xffffc
    8000659c:	c74080e7          	jalr	-908(ra) # 8000220c <_ZN9Semaphore6signalEv>

    return ret;
}
    800065a0:	00090513          	mv	a0,s2
    800065a4:	01813083          	ld	ra,24(sp)
    800065a8:	01013403          	ld	s0,16(sp)
    800065ac:	00813483          	ld	s1,8(sp)
    800065b0:	00013903          	ld	s2,0(sp)
    800065b4:	02010113          	addi	sp,sp,32
    800065b8:	00008067          	ret
        ret = cap - head + tail;
    800065bc:	0004a703          	lw	a4,0(s1)
    800065c0:	4127093b          	subw	s2,a4,s2
    800065c4:	00f9093b          	addw	s2,s2,a5
    800065c8:	fc1ff06f          	j	80006588 <_ZN9BufferCPP6getCntEv+0x44>

00000000800065cc <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    800065cc:	fe010113          	addi	sp,sp,-32
    800065d0:	00113c23          	sd	ra,24(sp)
    800065d4:	00813823          	sd	s0,16(sp)
    800065d8:	00913423          	sd	s1,8(sp)
    800065dc:	02010413          	addi	s0,sp,32
    800065e0:	00050493          	mv	s1,a0
    Console::putc('\n');
    800065e4:	00a00513          	li	a0,10
    800065e8:	ffffc097          	auipc	ra,0xffffc
    800065ec:	d50080e7          	jalr	-688(ra) # 80002338 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    800065f0:	00003517          	auipc	a0,0x3
    800065f4:	d2050513          	addi	a0,a0,-736 # 80009310 <CONSOLE_STATUS+0x300>
    800065f8:	00000097          	auipc	ra,0x0
    800065fc:	a0c080e7          	jalr	-1524(ra) # 80006004 <_Z11printStringPKc>
    while (getCnt()) {
    80006600:	00048513          	mv	a0,s1
    80006604:	00000097          	auipc	ra,0x0
    80006608:	f40080e7          	jalr	-192(ra) # 80006544 <_ZN9BufferCPP6getCntEv>
    8000660c:	02050c63          	beqz	a0,80006644 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80006610:	0084b783          	ld	a5,8(s1)
    80006614:	0104a703          	lw	a4,16(s1)
    80006618:	00271713          	slli	a4,a4,0x2
    8000661c:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80006620:	0007c503          	lbu	a0,0(a5)
    80006624:	ffffc097          	auipc	ra,0xffffc
    80006628:	d14080e7          	jalr	-748(ra) # 80002338 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    8000662c:	0104a783          	lw	a5,16(s1)
    80006630:	0017879b          	addiw	a5,a5,1
    80006634:	0004a703          	lw	a4,0(s1)
    80006638:	02e7e7bb          	remw	a5,a5,a4
    8000663c:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80006640:	fc1ff06f          	j	80006600 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80006644:	02100513          	li	a0,33
    80006648:	ffffc097          	auipc	ra,0xffffc
    8000664c:	cf0080e7          	jalr	-784(ra) # 80002338 <_ZN7Console4putcEc>
    Console::putc('\n');
    80006650:	00a00513          	li	a0,10
    80006654:	ffffc097          	auipc	ra,0xffffc
    80006658:	ce4080e7          	jalr	-796(ra) # 80002338 <_ZN7Console4putcEc>
    mem_free(buffer);
    8000665c:	0084b503          	ld	a0,8(s1)
    80006660:	ffffb097          	auipc	ra,0xffffb
    80006664:	c4c080e7          	jalr	-948(ra) # 800012ac <_Z8mem_freePv>
    delete itemAvailable;
    80006668:	0204b503          	ld	a0,32(s1)
    8000666c:	00050863          	beqz	a0,8000667c <_ZN9BufferCPPD1Ev+0xb0>
    80006670:	00053783          	ld	a5,0(a0)
    80006674:	0087b783          	ld	a5,8(a5)
    80006678:	000780e7          	jalr	a5
    delete spaceAvailable;
    8000667c:	0184b503          	ld	a0,24(s1)
    80006680:	00050863          	beqz	a0,80006690 <_ZN9BufferCPPD1Ev+0xc4>
    80006684:	00053783          	ld	a5,0(a0)
    80006688:	0087b783          	ld	a5,8(a5)
    8000668c:	000780e7          	jalr	a5
    delete mutexTail;
    80006690:	0304b503          	ld	a0,48(s1)
    80006694:	00050863          	beqz	a0,800066a4 <_ZN9BufferCPPD1Ev+0xd8>
    80006698:	00053783          	ld	a5,0(a0)
    8000669c:	0087b783          	ld	a5,8(a5)
    800066a0:	000780e7          	jalr	a5
    delete mutexHead;
    800066a4:	0284b503          	ld	a0,40(s1)
    800066a8:	00050863          	beqz	a0,800066b8 <_ZN9BufferCPPD1Ev+0xec>
    800066ac:	00053783          	ld	a5,0(a0)
    800066b0:	0087b783          	ld	a5,8(a5)
    800066b4:	000780e7          	jalr	a5
}
    800066b8:	01813083          	ld	ra,24(sp)
    800066bc:	01013403          	ld	s0,16(sp)
    800066c0:	00813483          	ld	s1,8(sp)
    800066c4:	02010113          	addi	sp,sp,32
    800066c8:	00008067          	ret

00000000800066cc <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    800066cc:	fe010113          	addi	sp,sp,-32
    800066d0:	00113c23          	sd	ra,24(sp)
    800066d4:	00813823          	sd	s0,16(sp)
    800066d8:	00913423          	sd	s1,8(sp)
    800066dc:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    800066e0:	00003517          	auipc	a0,0x3
    800066e4:	c5850513          	addi	a0,a0,-936 # 80009338 <CONSOLE_STATUS+0x328>
    800066e8:	00000097          	auipc	ra,0x0
    800066ec:	91c080e7          	jalr	-1764(ra) # 80006004 <_Z11printStringPKc>
    int test = getc() - '0';
    800066f0:	ffffb097          	auipc	ra,0xffffb
    800066f4:	f30080e7          	jalr	-208(ra) # 80001620 <_Z4getcv>
    800066f8:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    800066fc:	ffffb097          	auipc	ra,0xffffb
    80006700:	f24080e7          	jalr	-220(ra) # 80001620 <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80006704:	00700793          	li	a5,7
    80006708:	1097e263          	bltu	a5,s1,8000680c <_Z8userMainv+0x140>
    8000670c:	00249493          	slli	s1,s1,0x2
    80006710:	00003717          	auipc	a4,0x3
    80006714:	e8070713          	addi	a4,a4,-384 # 80009590 <CONSOLE_STATUS+0x580>
    80006718:	00e484b3          	add	s1,s1,a4
    8000671c:	0004a783          	lw	a5,0(s1)
    80006720:	00e787b3          	add	a5,a5,a4
    80006724:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80006728:	fffff097          	auipc	ra,0xfffff
    8000672c:	f54080e7          	jalr	-172(ra) # 8000567c <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80006730:	00003517          	auipc	a0,0x3
    80006734:	c2850513          	addi	a0,a0,-984 # 80009358 <CONSOLE_STATUS+0x348>
    80006738:	00000097          	auipc	ra,0x0
    8000673c:	8cc080e7          	jalr	-1844(ra) # 80006004 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80006740:	01813083          	ld	ra,24(sp)
    80006744:	01013403          	ld	s0,16(sp)
    80006748:	00813483          	ld	s1,8(sp)
    8000674c:	02010113          	addi	sp,sp,32
    80006750:	00008067          	ret
            Threads_CPP_API_test();
    80006754:	ffffe097          	auipc	ra,0xffffe
    80006758:	ae8080e7          	jalr	-1304(ra) # 8000423c <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    8000675c:	00003517          	auipc	a0,0x3
    80006760:	c3c50513          	addi	a0,a0,-964 # 80009398 <CONSOLE_STATUS+0x388>
    80006764:	00000097          	auipc	ra,0x0
    80006768:	8a0080e7          	jalr	-1888(ra) # 80006004 <_Z11printStringPKc>
            break;
    8000676c:	fd5ff06f          	j	80006740 <_Z8userMainv+0x74>
            producerConsumer_C_API();
    80006770:	ffffd097          	auipc	ra,0xffffd
    80006774:	320080e7          	jalr	800(ra) # 80003a90 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80006778:	00003517          	auipc	a0,0x3
    8000677c:	c6050513          	addi	a0,a0,-928 # 800093d8 <CONSOLE_STATUS+0x3c8>
    80006780:	00000097          	auipc	ra,0x0
    80006784:	884080e7          	jalr	-1916(ra) # 80006004 <_Z11printStringPKc>
            break;
    80006788:	fb9ff06f          	j	80006740 <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    8000678c:	fffff097          	auipc	ra,0xfffff
    80006790:	234080e7          	jalr	564(ra) # 800059c0 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80006794:	00003517          	auipc	a0,0x3
    80006798:	c9450513          	addi	a0,a0,-876 # 80009428 <CONSOLE_STATUS+0x418>
    8000679c:	00000097          	auipc	ra,0x0
    800067a0:	868080e7          	jalr	-1944(ra) # 80006004 <_Z11printStringPKc>
            break;
    800067a4:	f9dff06f          	j	80006740 <_Z8userMainv+0x74>
            testSleeping();
    800067a8:	00000097          	auipc	ra,0x0
    800067ac:	11c080e7          	jalr	284(ra) # 800068c4 <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    800067b0:	00003517          	auipc	a0,0x3
    800067b4:	cd050513          	addi	a0,a0,-816 # 80009480 <CONSOLE_STATUS+0x470>
    800067b8:	00000097          	auipc	ra,0x0
    800067bc:	84c080e7          	jalr	-1972(ra) # 80006004 <_Z11printStringPKc>
            break;
    800067c0:	f81ff06f          	j	80006740 <_Z8userMainv+0x74>
            testConsumerProducer();
    800067c4:	ffffe097          	auipc	ra,0xffffe
    800067c8:	f38080e7          	jalr	-200(ra) # 800046fc <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    800067cc:	00003517          	auipc	a0,0x3
    800067d0:	ce450513          	addi	a0,a0,-796 # 800094b0 <CONSOLE_STATUS+0x4a0>
    800067d4:	00000097          	auipc	ra,0x0
    800067d8:	830080e7          	jalr	-2000(ra) # 80006004 <_Z11printStringPKc>
            break;
    800067dc:	f65ff06f          	j	80006740 <_Z8userMainv+0x74>
            System_Mode_test();
    800067e0:	00000097          	auipc	ra,0x0
    800067e4:	658080e7          	jalr	1624(ra) # 80006e38 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    800067e8:	00003517          	auipc	a0,0x3
    800067ec:	d0850513          	addi	a0,a0,-760 # 800094f0 <CONSOLE_STATUS+0x4e0>
    800067f0:	00000097          	auipc	ra,0x0
    800067f4:	814080e7          	jalr	-2028(ra) # 80006004 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    800067f8:	00003517          	auipc	a0,0x3
    800067fc:	d1850513          	addi	a0,a0,-744 # 80009510 <CONSOLE_STATUS+0x500>
    80006800:	00000097          	auipc	ra,0x0
    80006804:	804080e7          	jalr	-2044(ra) # 80006004 <_Z11printStringPKc>
            break;
    80006808:	f39ff06f          	j	80006740 <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    8000680c:	00003517          	auipc	a0,0x3
    80006810:	d5c50513          	addi	a0,a0,-676 # 80009568 <CONSOLE_STATUS+0x558>
    80006814:	fffff097          	auipc	ra,0xfffff
    80006818:	7f0080e7          	jalr	2032(ra) # 80006004 <_Z11printStringPKc>
    8000681c:	f25ff06f          	j	80006740 <_Z8userMainv+0x74>

0000000080006820 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80006820:	fe010113          	addi	sp,sp,-32
    80006824:	00113c23          	sd	ra,24(sp)
    80006828:	00813823          	sd	s0,16(sp)
    8000682c:	00913423          	sd	s1,8(sp)
    80006830:	01213023          	sd	s2,0(sp)
    80006834:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80006838:	00053903          	ld	s2,0(a0)
    int i = 6;
    8000683c:	00600493          	li	s1,6
    while (--i > 0) {
    80006840:	fff4849b          	addiw	s1,s1,-1
    80006844:	04905463          	blez	s1,8000688c <_ZL9sleepyRunPv+0x6c>
        printString("Hello ");
    80006848:	00003517          	auipc	a0,0x3
    8000684c:	d6850513          	addi	a0,a0,-664 # 800095b0 <CONSOLE_STATUS+0x5a0>
    80006850:	fffff097          	auipc	ra,0xfffff
    80006854:	7b4080e7          	jalr	1972(ra) # 80006004 <_Z11printStringPKc>
        printInt(sleep_time);
    80006858:	00000613          	li	a2,0
    8000685c:	00a00593          	li	a1,10
    80006860:	0009051b          	sext.w	a0,s2
    80006864:	00000097          	auipc	ra,0x0
    80006868:	950080e7          	jalr	-1712(ra) # 800061b4 <_Z8printIntiii>
        printString(" !\n");
    8000686c:	00003517          	auipc	a0,0x3
    80006870:	d4c50513          	addi	a0,a0,-692 # 800095b8 <CONSOLE_STATUS+0x5a8>
    80006874:	fffff097          	auipc	ra,0xfffff
    80006878:	790080e7          	jalr	1936(ra) # 80006004 <_Z11printStringPKc>
        time_sleep(sleep_time);
    8000687c:	00090513          	mv	a0,s2
    80006880:	ffffb097          	auipc	ra,0xffffb
    80006884:	d54080e7          	jalr	-684(ra) # 800015d4 <_Z10time_sleepm>
    while (--i > 0) {
    80006888:	fb9ff06f          	j	80006840 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    8000688c:	00a00793          	li	a5,10
    80006890:	02f95933          	divu	s2,s2,a5
    80006894:	fff90913          	addi	s2,s2,-1
    80006898:	00005797          	auipc	a5,0x5
    8000689c:	66078793          	addi	a5,a5,1632 # 8000bef8 <_ZL8finished>
    800068a0:	01278933          	add	s2,a5,s2
    800068a4:	00100793          	li	a5,1
    800068a8:	00f90023          	sb	a5,0(s2)
}
    800068ac:	01813083          	ld	ra,24(sp)
    800068b0:	01013403          	ld	s0,16(sp)
    800068b4:	00813483          	ld	s1,8(sp)
    800068b8:	00013903          	ld	s2,0(sp)
    800068bc:	02010113          	addi	sp,sp,32
    800068c0:	00008067          	ret

00000000800068c4 <_Z12testSleepingv>:

void testSleeping() {
    800068c4:	fc010113          	addi	sp,sp,-64
    800068c8:	02113c23          	sd	ra,56(sp)
    800068cc:	02813823          	sd	s0,48(sp)
    800068d0:	02913423          	sd	s1,40(sp)
    800068d4:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    800068d8:	00a00793          	li	a5,10
    800068dc:	fcf43823          	sd	a5,-48(s0)
    800068e0:	01400793          	li	a5,20
    800068e4:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    800068e8:	00000493          	li	s1,0
    800068ec:	02c0006f          	j	80006918 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    800068f0:	00349793          	slli	a5,s1,0x3
    800068f4:	fd040613          	addi	a2,s0,-48
    800068f8:	00f60633          	add	a2,a2,a5
    800068fc:	00000597          	auipc	a1,0x0
    80006900:	f2458593          	addi	a1,a1,-220 # 80006820 <_ZL9sleepyRunPv>
    80006904:	fc040513          	addi	a0,s0,-64
    80006908:	00f50533          	add	a0,a0,a5
    8000690c:	ffffb097          	auipc	ra,0xffffb
    80006910:	9ec080e7          	jalr	-1556(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80006914:	0014849b          	addiw	s1,s1,1
    80006918:	00100793          	li	a5,1
    8000691c:	fc97dae3          	bge	a5,s1,800068f0 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80006920:	00005797          	auipc	a5,0x5
    80006924:	5d87c783          	lbu	a5,1496(a5) # 8000bef8 <_ZL8finished>
    80006928:	fe078ce3          	beqz	a5,80006920 <_Z12testSleepingv+0x5c>
    8000692c:	00005797          	auipc	a5,0x5
    80006930:	5cd7c783          	lbu	a5,1485(a5) # 8000bef9 <_ZL8finished+0x1>
    80006934:	fe0786e3          	beqz	a5,80006920 <_Z12testSleepingv+0x5c>
}
    80006938:	03813083          	ld	ra,56(sp)
    8000693c:	03013403          	ld	s0,48(sp)
    80006940:	02813483          	ld	s1,40(sp)
    80006944:	04010113          	addi	sp,sp,64
    80006948:	00008067          	ret

000000008000694c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    8000694c:	fe010113          	addi	sp,sp,-32
    80006950:	00113c23          	sd	ra,24(sp)
    80006954:	00813823          	sd	s0,16(sp)
    80006958:	00913423          	sd	s1,8(sp)
    8000695c:	01213023          	sd	s2,0(sp)
    80006960:	02010413          	addi	s0,sp,32
    80006964:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80006968:	00100793          	li	a5,1
    8000696c:	02a7f863          	bgeu	a5,a0,8000699c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80006970:	00a00793          	li	a5,10
    80006974:	02f577b3          	remu	a5,a0,a5
    80006978:	02078e63          	beqz	a5,800069b4 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    8000697c:	fff48513          	addi	a0,s1,-1
    80006980:	00000097          	auipc	ra,0x0
    80006984:	fcc080e7          	jalr	-52(ra) # 8000694c <_ZL9fibonaccim>
    80006988:	00050913          	mv	s2,a0
    8000698c:	ffe48513          	addi	a0,s1,-2
    80006990:	00000097          	auipc	ra,0x0
    80006994:	fbc080e7          	jalr	-68(ra) # 8000694c <_ZL9fibonaccim>
    80006998:	00a90533          	add	a0,s2,a0
}
    8000699c:	01813083          	ld	ra,24(sp)
    800069a0:	01013403          	ld	s0,16(sp)
    800069a4:	00813483          	ld	s1,8(sp)
    800069a8:	00013903          	ld	s2,0(sp)
    800069ac:	02010113          	addi	sp,sp,32
    800069b0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800069b4:	ffffb097          	auipc	ra,0xffffb
    800069b8:	a18080e7          	jalr	-1512(ra) # 800013cc <_Z15thread_dispatchv>
    800069bc:	fc1ff06f          	j	8000697c <_ZL9fibonaccim+0x30>

00000000800069c0 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800069c0:	fe010113          	addi	sp,sp,-32
    800069c4:	00113c23          	sd	ra,24(sp)
    800069c8:	00813823          	sd	s0,16(sp)
    800069cc:	00913423          	sd	s1,8(sp)
    800069d0:	01213023          	sd	s2,0(sp)
    800069d4:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800069d8:	00a00493          	li	s1,10
    800069dc:	0400006f          	j	80006a1c <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800069e0:	00003517          	auipc	a0,0x3
    800069e4:	89850513          	addi	a0,a0,-1896 # 80009278 <CONSOLE_STATUS+0x268>
    800069e8:	fffff097          	auipc	ra,0xfffff
    800069ec:	61c080e7          	jalr	1564(ra) # 80006004 <_Z11printStringPKc>
    800069f0:	00000613          	li	a2,0
    800069f4:	00a00593          	li	a1,10
    800069f8:	00048513          	mv	a0,s1
    800069fc:	fffff097          	auipc	ra,0xfffff
    80006a00:	7b8080e7          	jalr	1976(ra) # 800061b4 <_Z8printIntiii>
    80006a04:	00003517          	auipc	a0,0x3
    80006a08:	a7450513          	addi	a0,a0,-1420 # 80009478 <CONSOLE_STATUS+0x468>
    80006a0c:	fffff097          	auipc	ra,0xfffff
    80006a10:	5f8080e7          	jalr	1528(ra) # 80006004 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80006a14:	0014849b          	addiw	s1,s1,1
    80006a18:	0ff4f493          	andi	s1,s1,255
    80006a1c:	00c00793          	li	a5,12
    80006a20:	fc97f0e3          	bgeu	a5,s1,800069e0 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80006a24:	00003517          	auipc	a0,0x3
    80006a28:	85c50513          	addi	a0,a0,-1956 # 80009280 <CONSOLE_STATUS+0x270>
    80006a2c:	fffff097          	auipc	ra,0xfffff
    80006a30:	5d8080e7          	jalr	1496(ra) # 80006004 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80006a34:	00500313          	li	t1,5
    thread_dispatch();
    80006a38:	ffffb097          	auipc	ra,0xffffb
    80006a3c:	994080e7          	jalr	-1644(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80006a40:	01000513          	li	a0,16
    80006a44:	00000097          	auipc	ra,0x0
    80006a48:	f08080e7          	jalr	-248(ra) # 8000694c <_ZL9fibonaccim>
    80006a4c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80006a50:	00003517          	auipc	a0,0x3
    80006a54:	84050513          	addi	a0,a0,-1984 # 80009290 <CONSOLE_STATUS+0x280>
    80006a58:	fffff097          	auipc	ra,0xfffff
    80006a5c:	5ac080e7          	jalr	1452(ra) # 80006004 <_Z11printStringPKc>
    80006a60:	00000613          	li	a2,0
    80006a64:	00a00593          	li	a1,10
    80006a68:	0009051b          	sext.w	a0,s2
    80006a6c:	fffff097          	auipc	ra,0xfffff
    80006a70:	748080e7          	jalr	1864(ra) # 800061b4 <_Z8printIntiii>
    80006a74:	00003517          	auipc	a0,0x3
    80006a78:	a0450513          	addi	a0,a0,-1532 # 80009478 <CONSOLE_STATUS+0x468>
    80006a7c:	fffff097          	auipc	ra,0xfffff
    80006a80:	588080e7          	jalr	1416(ra) # 80006004 <_Z11printStringPKc>
    80006a84:	0400006f          	j	80006ac4 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006a88:	00002517          	auipc	a0,0x2
    80006a8c:	7f050513          	addi	a0,a0,2032 # 80009278 <CONSOLE_STATUS+0x268>
    80006a90:	fffff097          	auipc	ra,0xfffff
    80006a94:	574080e7          	jalr	1396(ra) # 80006004 <_Z11printStringPKc>
    80006a98:	00000613          	li	a2,0
    80006a9c:	00a00593          	li	a1,10
    80006aa0:	00048513          	mv	a0,s1
    80006aa4:	fffff097          	auipc	ra,0xfffff
    80006aa8:	710080e7          	jalr	1808(ra) # 800061b4 <_Z8printIntiii>
    80006aac:	00003517          	auipc	a0,0x3
    80006ab0:	9cc50513          	addi	a0,a0,-1588 # 80009478 <CONSOLE_STATUS+0x468>
    80006ab4:	fffff097          	auipc	ra,0xfffff
    80006ab8:	550080e7          	jalr	1360(ra) # 80006004 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80006abc:	0014849b          	addiw	s1,s1,1
    80006ac0:	0ff4f493          	andi	s1,s1,255
    80006ac4:	00f00793          	li	a5,15
    80006ac8:	fc97f0e3          	bgeu	a5,s1,80006a88 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80006acc:	00002517          	auipc	a0,0x2
    80006ad0:	7d450513          	addi	a0,a0,2004 # 800092a0 <CONSOLE_STATUS+0x290>
    80006ad4:	fffff097          	auipc	ra,0xfffff
    80006ad8:	530080e7          	jalr	1328(ra) # 80006004 <_Z11printStringPKc>
    finishedD = true;
    80006adc:	00100793          	li	a5,1
    80006ae0:	00005717          	auipc	a4,0x5
    80006ae4:	40f70d23          	sb	a5,1050(a4) # 8000befa <_ZL9finishedD>
    thread_dispatch();
    80006ae8:	ffffb097          	auipc	ra,0xffffb
    80006aec:	8e4080e7          	jalr	-1820(ra) # 800013cc <_Z15thread_dispatchv>
}
    80006af0:	01813083          	ld	ra,24(sp)
    80006af4:	01013403          	ld	s0,16(sp)
    80006af8:	00813483          	ld	s1,8(sp)
    80006afc:	00013903          	ld	s2,0(sp)
    80006b00:	02010113          	addi	sp,sp,32
    80006b04:	00008067          	ret

0000000080006b08 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80006b08:	fe010113          	addi	sp,sp,-32
    80006b0c:	00113c23          	sd	ra,24(sp)
    80006b10:	00813823          	sd	s0,16(sp)
    80006b14:	00913423          	sd	s1,8(sp)
    80006b18:	01213023          	sd	s2,0(sp)
    80006b1c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80006b20:	00000493          	li	s1,0
    80006b24:	0400006f          	j	80006b64 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80006b28:	00002517          	auipc	a0,0x2
    80006b2c:	72050513          	addi	a0,a0,1824 # 80009248 <CONSOLE_STATUS+0x238>
    80006b30:	fffff097          	auipc	ra,0xfffff
    80006b34:	4d4080e7          	jalr	1236(ra) # 80006004 <_Z11printStringPKc>
    80006b38:	00000613          	li	a2,0
    80006b3c:	00a00593          	li	a1,10
    80006b40:	00048513          	mv	a0,s1
    80006b44:	fffff097          	auipc	ra,0xfffff
    80006b48:	670080e7          	jalr	1648(ra) # 800061b4 <_Z8printIntiii>
    80006b4c:	00003517          	auipc	a0,0x3
    80006b50:	92c50513          	addi	a0,a0,-1748 # 80009478 <CONSOLE_STATUS+0x468>
    80006b54:	fffff097          	auipc	ra,0xfffff
    80006b58:	4b0080e7          	jalr	1200(ra) # 80006004 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80006b5c:	0014849b          	addiw	s1,s1,1
    80006b60:	0ff4f493          	andi	s1,s1,255
    80006b64:	00200793          	li	a5,2
    80006b68:	fc97f0e3          	bgeu	a5,s1,80006b28 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80006b6c:	00002517          	auipc	a0,0x2
    80006b70:	6e450513          	addi	a0,a0,1764 # 80009250 <CONSOLE_STATUS+0x240>
    80006b74:	fffff097          	auipc	ra,0xfffff
    80006b78:	490080e7          	jalr	1168(ra) # 80006004 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80006b7c:	00700313          	li	t1,7
    thread_dispatch();
    80006b80:	ffffb097          	auipc	ra,0xffffb
    80006b84:	84c080e7          	jalr	-1972(ra) # 800013cc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80006b88:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80006b8c:	00002517          	auipc	a0,0x2
    80006b90:	6d450513          	addi	a0,a0,1748 # 80009260 <CONSOLE_STATUS+0x250>
    80006b94:	fffff097          	auipc	ra,0xfffff
    80006b98:	470080e7          	jalr	1136(ra) # 80006004 <_Z11printStringPKc>
    80006b9c:	00000613          	li	a2,0
    80006ba0:	00a00593          	li	a1,10
    80006ba4:	0009051b          	sext.w	a0,s2
    80006ba8:	fffff097          	auipc	ra,0xfffff
    80006bac:	60c080e7          	jalr	1548(ra) # 800061b4 <_Z8printIntiii>
    80006bb0:	00003517          	auipc	a0,0x3
    80006bb4:	8c850513          	addi	a0,a0,-1848 # 80009478 <CONSOLE_STATUS+0x468>
    80006bb8:	fffff097          	auipc	ra,0xfffff
    80006bbc:	44c080e7          	jalr	1100(ra) # 80006004 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80006bc0:	00c00513          	li	a0,12
    80006bc4:	00000097          	auipc	ra,0x0
    80006bc8:	d88080e7          	jalr	-632(ra) # 8000694c <_ZL9fibonaccim>
    80006bcc:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80006bd0:	00002517          	auipc	a0,0x2
    80006bd4:	69850513          	addi	a0,a0,1688 # 80009268 <CONSOLE_STATUS+0x258>
    80006bd8:	fffff097          	auipc	ra,0xfffff
    80006bdc:	42c080e7          	jalr	1068(ra) # 80006004 <_Z11printStringPKc>
    80006be0:	00000613          	li	a2,0
    80006be4:	00a00593          	li	a1,10
    80006be8:	0009051b          	sext.w	a0,s2
    80006bec:	fffff097          	auipc	ra,0xfffff
    80006bf0:	5c8080e7          	jalr	1480(ra) # 800061b4 <_Z8printIntiii>
    80006bf4:	00003517          	auipc	a0,0x3
    80006bf8:	88450513          	addi	a0,a0,-1916 # 80009478 <CONSOLE_STATUS+0x468>
    80006bfc:	fffff097          	auipc	ra,0xfffff
    80006c00:	408080e7          	jalr	1032(ra) # 80006004 <_Z11printStringPKc>
    80006c04:	0400006f          	j	80006c44 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80006c08:	00002517          	auipc	a0,0x2
    80006c0c:	64050513          	addi	a0,a0,1600 # 80009248 <CONSOLE_STATUS+0x238>
    80006c10:	fffff097          	auipc	ra,0xfffff
    80006c14:	3f4080e7          	jalr	1012(ra) # 80006004 <_Z11printStringPKc>
    80006c18:	00000613          	li	a2,0
    80006c1c:	00a00593          	li	a1,10
    80006c20:	00048513          	mv	a0,s1
    80006c24:	fffff097          	auipc	ra,0xfffff
    80006c28:	590080e7          	jalr	1424(ra) # 800061b4 <_Z8printIntiii>
    80006c2c:	00003517          	auipc	a0,0x3
    80006c30:	84c50513          	addi	a0,a0,-1972 # 80009478 <CONSOLE_STATUS+0x468>
    80006c34:	fffff097          	auipc	ra,0xfffff
    80006c38:	3d0080e7          	jalr	976(ra) # 80006004 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80006c3c:	0014849b          	addiw	s1,s1,1
    80006c40:	0ff4f493          	andi	s1,s1,255
    80006c44:	00500793          	li	a5,5
    80006c48:	fc97f0e3          	bgeu	a5,s1,80006c08 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80006c4c:	00002517          	auipc	a0,0x2
    80006c50:	5d450513          	addi	a0,a0,1492 # 80009220 <CONSOLE_STATUS+0x210>
    80006c54:	fffff097          	auipc	ra,0xfffff
    80006c58:	3b0080e7          	jalr	944(ra) # 80006004 <_Z11printStringPKc>
    finishedC = true;
    80006c5c:	00100793          	li	a5,1
    80006c60:	00005717          	auipc	a4,0x5
    80006c64:	28f70da3          	sb	a5,667(a4) # 8000befb <_ZL9finishedC>
    thread_dispatch();
    80006c68:	ffffa097          	auipc	ra,0xffffa
    80006c6c:	764080e7          	jalr	1892(ra) # 800013cc <_Z15thread_dispatchv>
}
    80006c70:	01813083          	ld	ra,24(sp)
    80006c74:	01013403          	ld	s0,16(sp)
    80006c78:	00813483          	ld	s1,8(sp)
    80006c7c:	00013903          	ld	s2,0(sp)
    80006c80:	02010113          	addi	sp,sp,32
    80006c84:	00008067          	ret

0000000080006c88 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80006c88:	fe010113          	addi	sp,sp,-32
    80006c8c:	00113c23          	sd	ra,24(sp)
    80006c90:	00813823          	sd	s0,16(sp)
    80006c94:	00913423          	sd	s1,8(sp)
    80006c98:	01213023          	sd	s2,0(sp)
    80006c9c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80006ca0:	00000913          	li	s2,0
    80006ca4:	0400006f          	j	80006ce4 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80006ca8:	ffffa097          	auipc	ra,0xffffa
    80006cac:	724080e7          	jalr	1828(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006cb0:	00148493          	addi	s1,s1,1
    80006cb4:	000027b7          	lui	a5,0x2
    80006cb8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006cbc:	0097ee63          	bltu	a5,s1,80006cd8 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006cc0:	00000713          	li	a4,0
    80006cc4:	000077b7          	lui	a5,0x7
    80006cc8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006ccc:	fce7eee3          	bltu	a5,a4,80006ca8 <_ZL11workerBodyBPv+0x20>
    80006cd0:	00170713          	addi	a4,a4,1
    80006cd4:	ff1ff06f          	j	80006cc4 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80006cd8:	00a00793          	li	a5,10
    80006cdc:	04f90663          	beq	s2,a5,80006d28 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80006ce0:	00190913          	addi	s2,s2,1
    80006ce4:	00f00793          	li	a5,15
    80006ce8:	0527e463          	bltu	a5,s2,80006d30 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80006cec:	00002517          	auipc	a0,0x2
    80006cf0:	54450513          	addi	a0,a0,1348 # 80009230 <CONSOLE_STATUS+0x220>
    80006cf4:	fffff097          	auipc	ra,0xfffff
    80006cf8:	310080e7          	jalr	784(ra) # 80006004 <_Z11printStringPKc>
    80006cfc:	00000613          	li	a2,0
    80006d00:	00a00593          	li	a1,10
    80006d04:	0009051b          	sext.w	a0,s2
    80006d08:	fffff097          	auipc	ra,0xfffff
    80006d0c:	4ac080e7          	jalr	1196(ra) # 800061b4 <_Z8printIntiii>
    80006d10:	00002517          	auipc	a0,0x2
    80006d14:	76850513          	addi	a0,a0,1896 # 80009478 <CONSOLE_STATUS+0x468>
    80006d18:	fffff097          	auipc	ra,0xfffff
    80006d1c:	2ec080e7          	jalr	748(ra) # 80006004 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006d20:	00000493          	li	s1,0
    80006d24:	f91ff06f          	j	80006cb4 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80006d28:	14102ff3          	csrr	t6,sepc
    80006d2c:	fb5ff06f          	j	80006ce0 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80006d30:	00002517          	auipc	a0,0x2
    80006d34:	50850513          	addi	a0,a0,1288 # 80009238 <CONSOLE_STATUS+0x228>
    80006d38:	fffff097          	auipc	ra,0xfffff
    80006d3c:	2cc080e7          	jalr	716(ra) # 80006004 <_Z11printStringPKc>
    finishedB = true;
    80006d40:	00100793          	li	a5,1
    80006d44:	00005717          	auipc	a4,0x5
    80006d48:	1af70c23          	sb	a5,440(a4) # 8000befc <_ZL9finishedB>
    thread_dispatch();
    80006d4c:	ffffa097          	auipc	ra,0xffffa
    80006d50:	680080e7          	jalr	1664(ra) # 800013cc <_Z15thread_dispatchv>
}
    80006d54:	01813083          	ld	ra,24(sp)
    80006d58:	01013403          	ld	s0,16(sp)
    80006d5c:	00813483          	ld	s1,8(sp)
    80006d60:	00013903          	ld	s2,0(sp)
    80006d64:	02010113          	addi	sp,sp,32
    80006d68:	00008067          	ret

0000000080006d6c <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80006d6c:	fe010113          	addi	sp,sp,-32
    80006d70:	00113c23          	sd	ra,24(sp)
    80006d74:	00813823          	sd	s0,16(sp)
    80006d78:	00913423          	sd	s1,8(sp)
    80006d7c:	01213023          	sd	s2,0(sp)
    80006d80:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006d84:	00000913          	li	s2,0
    80006d88:	0380006f          	j	80006dc0 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80006d8c:	ffffa097          	auipc	ra,0xffffa
    80006d90:	640080e7          	jalr	1600(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006d94:	00148493          	addi	s1,s1,1
    80006d98:	000027b7          	lui	a5,0x2
    80006d9c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006da0:	0097ee63          	bltu	a5,s1,80006dbc <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006da4:	00000713          	li	a4,0
    80006da8:	000077b7          	lui	a5,0x7
    80006dac:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006db0:	fce7eee3          	bltu	a5,a4,80006d8c <_ZL11workerBodyAPv+0x20>
    80006db4:	00170713          	addi	a4,a4,1
    80006db8:	ff1ff06f          	j	80006da8 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80006dbc:	00190913          	addi	s2,s2,1
    80006dc0:	00900793          	li	a5,9
    80006dc4:	0527e063          	bltu	a5,s2,80006e04 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80006dc8:	00002517          	auipc	a0,0x2
    80006dcc:	45050513          	addi	a0,a0,1104 # 80009218 <CONSOLE_STATUS+0x208>
    80006dd0:	fffff097          	auipc	ra,0xfffff
    80006dd4:	234080e7          	jalr	564(ra) # 80006004 <_Z11printStringPKc>
    80006dd8:	00000613          	li	a2,0
    80006ddc:	00a00593          	li	a1,10
    80006de0:	0009051b          	sext.w	a0,s2
    80006de4:	fffff097          	auipc	ra,0xfffff
    80006de8:	3d0080e7          	jalr	976(ra) # 800061b4 <_Z8printIntiii>
    80006dec:	00002517          	auipc	a0,0x2
    80006df0:	68c50513          	addi	a0,a0,1676 # 80009478 <CONSOLE_STATUS+0x468>
    80006df4:	fffff097          	auipc	ra,0xfffff
    80006df8:	210080e7          	jalr	528(ra) # 80006004 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006dfc:	00000493          	li	s1,0
    80006e00:	f99ff06f          	j	80006d98 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006e04:	00002517          	auipc	a0,0x2
    80006e08:	41c50513          	addi	a0,a0,1052 # 80009220 <CONSOLE_STATUS+0x210>
    80006e0c:	fffff097          	auipc	ra,0xfffff
    80006e10:	1f8080e7          	jalr	504(ra) # 80006004 <_Z11printStringPKc>
    finishedA = true;
    80006e14:	00100793          	li	a5,1
    80006e18:	00005717          	auipc	a4,0x5
    80006e1c:	0ef702a3          	sb	a5,229(a4) # 8000befd <_ZL9finishedA>
}
    80006e20:	01813083          	ld	ra,24(sp)
    80006e24:	01013403          	ld	s0,16(sp)
    80006e28:	00813483          	ld	s1,8(sp)
    80006e2c:	00013903          	ld	s2,0(sp)
    80006e30:	02010113          	addi	sp,sp,32
    80006e34:	00008067          	ret

0000000080006e38 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006e38:	fd010113          	addi	sp,sp,-48
    80006e3c:	02113423          	sd	ra,40(sp)
    80006e40:	02813023          	sd	s0,32(sp)
    80006e44:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006e48:	00000613          	li	a2,0
    80006e4c:	00000597          	auipc	a1,0x0
    80006e50:	f2058593          	addi	a1,a1,-224 # 80006d6c <_ZL11workerBodyAPv>
    80006e54:	fd040513          	addi	a0,s0,-48
    80006e58:	ffffa097          	auipc	ra,0xffffa
    80006e5c:	4a0080e7          	jalr	1184(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80006e60:	00002517          	auipc	a0,0x2
    80006e64:	45050513          	addi	a0,a0,1104 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80006e68:	fffff097          	auipc	ra,0xfffff
    80006e6c:	19c080e7          	jalr	412(ra) # 80006004 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80006e70:	00000613          	li	a2,0
    80006e74:	00000597          	auipc	a1,0x0
    80006e78:	e1458593          	addi	a1,a1,-492 # 80006c88 <_ZL11workerBodyBPv>
    80006e7c:	fd840513          	addi	a0,s0,-40
    80006e80:	ffffa097          	auipc	ra,0xffffa
    80006e84:	478080e7          	jalr	1144(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80006e88:	00002517          	auipc	a0,0x2
    80006e8c:	44050513          	addi	a0,a0,1088 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80006e90:	fffff097          	auipc	ra,0xfffff
    80006e94:	174080e7          	jalr	372(ra) # 80006004 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006e98:	00000613          	li	a2,0
    80006e9c:	00000597          	auipc	a1,0x0
    80006ea0:	c6c58593          	addi	a1,a1,-916 # 80006b08 <_ZL11workerBodyCPv>
    80006ea4:	fe040513          	addi	a0,s0,-32
    80006ea8:	ffffa097          	auipc	ra,0xffffa
    80006eac:	450080e7          	jalr	1104(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80006eb0:	00002517          	auipc	a0,0x2
    80006eb4:	43050513          	addi	a0,a0,1072 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80006eb8:	fffff097          	auipc	ra,0xfffff
    80006ebc:	14c080e7          	jalr	332(ra) # 80006004 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80006ec0:	00000613          	li	a2,0
    80006ec4:	00000597          	auipc	a1,0x0
    80006ec8:	afc58593          	addi	a1,a1,-1284 # 800069c0 <_ZL11workerBodyDPv>
    80006ecc:	fe840513          	addi	a0,s0,-24
    80006ed0:	ffffa097          	auipc	ra,0xffffa
    80006ed4:	428080e7          	jalr	1064(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80006ed8:	00002517          	auipc	a0,0x2
    80006edc:	42050513          	addi	a0,a0,1056 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80006ee0:	fffff097          	auipc	ra,0xfffff
    80006ee4:	124080e7          	jalr	292(ra) # 80006004 <_Z11printStringPKc>
    80006ee8:	00c0006f          	j	80006ef4 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006eec:	ffffa097          	auipc	ra,0xffffa
    80006ef0:	4e0080e7          	jalr	1248(ra) # 800013cc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006ef4:	00005797          	auipc	a5,0x5
    80006ef8:	0097c783          	lbu	a5,9(a5) # 8000befd <_ZL9finishedA>
    80006efc:	fe0788e3          	beqz	a5,80006eec <_Z16System_Mode_testv+0xb4>
    80006f00:	00005797          	auipc	a5,0x5
    80006f04:	ffc7c783          	lbu	a5,-4(a5) # 8000befc <_ZL9finishedB>
    80006f08:	fe0782e3          	beqz	a5,80006eec <_Z16System_Mode_testv+0xb4>
    80006f0c:	00005797          	auipc	a5,0x5
    80006f10:	fef7c783          	lbu	a5,-17(a5) # 8000befb <_ZL9finishedC>
    80006f14:	fc078ce3          	beqz	a5,80006eec <_Z16System_Mode_testv+0xb4>
    80006f18:	00005797          	auipc	a5,0x5
    80006f1c:	fe27c783          	lbu	a5,-30(a5) # 8000befa <_ZL9finishedD>
    80006f20:	fc0786e3          	beqz	a5,80006eec <_Z16System_Mode_testv+0xb4>
    }

}
    80006f24:	02813083          	ld	ra,40(sp)
    80006f28:	02013403          	ld	s0,32(sp)
    80006f2c:	03010113          	addi	sp,sp,48
    80006f30:	00008067          	ret

0000000080006f34 <start>:
    80006f34:	ff010113          	addi	sp,sp,-16
    80006f38:	00813423          	sd	s0,8(sp)
    80006f3c:	01010413          	addi	s0,sp,16
    80006f40:	300027f3          	csrr	a5,mstatus
    80006f44:	ffffe737          	lui	a4,0xffffe
    80006f48:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff169f>
    80006f4c:	00e7f7b3          	and	a5,a5,a4
    80006f50:	00001737          	lui	a4,0x1
    80006f54:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006f58:	00e7e7b3          	or	a5,a5,a4
    80006f5c:	30079073          	csrw	mstatus,a5
    80006f60:	00000797          	auipc	a5,0x0
    80006f64:	16078793          	addi	a5,a5,352 # 800070c0 <system_main>
    80006f68:	34179073          	csrw	mepc,a5
    80006f6c:	00000793          	li	a5,0
    80006f70:	18079073          	csrw	satp,a5
    80006f74:	000107b7          	lui	a5,0x10
    80006f78:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006f7c:	30279073          	csrw	medeleg,a5
    80006f80:	30379073          	csrw	mideleg,a5
    80006f84:	104027f3          	csrr	a5,sie
    80006f88:	2227e793          	ori	a5,a5,546
    80006f8c:	10479073          	csrw	sie,a5
    80006f90:	fff00793          	li	a5,-1
    80006f94:	00a7d793          	srli	a5,a5,0xa
    80006f98:	3b079073          	csrw	pmpaddr0,a5
    80006f9c:	00f00793          	li	a5,15
    80006fa0:	3a079073          	csrw	pmpcfg0,a5
    80006fa4:	f14027f3          	csrr	a5,mhartid
    80006fa8:	0200c737          	lui	a4,0x200c
    80006fac:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006fb0:	0007869b          	sext.w	a3,a5
    80006fb4:	00269713          	slli	a4,a3,0x2
    80006fb8:	000f4637          	lui	a2,0xf4
    80006fbc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006fc0:	00d70733          	add	a4,a4,a3
    80006fc4:	0037979b          	slliw	a5,a5,0x3
    80006fc8:	020046b7          	lui	a3,0x2004
    80006fcc:	00d787b3          	add	a5,a5,a3
    80006fd0:	00c585b3          	add	a1,a1,a2
    80006fd4:	00371693          	slli	a3,a4,0x3
    80006fd8:	00005717          	auipc	a4,0x5
    80006fdc:	f2870713          	addi	a4,a4,-216 # 8000bf00 <timer_scratch>
    80006fe0:	00b7b023          	sd	a1,0(a5)
    80006fe4:	00d70733          	add	a4,a4,a3
    80006fe8:	00f73c23          	sd	a5,24(a4)
    80006fec:	02c73023          	sd	a2,32(a4)
    80006ff0:	34071073          	csrw	mscratch,a4
    80006ff4:	00000797          	auipc	a5,0x0
    80006ff8:	6ec78793          	addi	a5,a5,1772 # 800076e0 <timervec>
    80006ffc:	30579073          	csrw	mtvec,a5
    80007000:	300027f3          	csrr	a5,mstatus
    80007004:	0087e793          	ori	a5,a5,8
    80007008:	30079073          	csrw	mstatus,a5
    8000700c:	304027f3          	csrr	a5,mie
    80007010:	0807e793          	ori	a5,a5,128
    80007014:	30479073          	csrw	mie,a5
    80007018:	f14027f3          	csrr	a5,mhartid
    8000701c:	0007879b          	sext.w	a5,a5
    80007020:	00078213          	mv	tp,a5
    80007024:	30200073          	mret
    80007028:	00813403          	ld	s0,8(sp)
    8000702c:	01010113          	addi	sp,sp,16
    80007030:	00008067          	ret

0000000080007034 <timerinit>:
    80007034:	ff010113          	addi	sp,sp,-16
    80007038:	00813423          	sd	s0,8(sp)
    8000703c:	01010413          	addi	s0,sp,16
    80007040:	f14027f3          	csrr	a5,mhartid
    80007044:	0200c737          	lui	a4,0x200c
    80007048:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000704c:	0007869b          	sext.w	a3,a5
    80007050:	00269713          	slli	a4,a3,0x2
    80007054:	000f4637          	lui	a2,0xf4
    80007058:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000705c:	00d70733          	add	a4,a4,a3
    80007060:	0037979b          	slliw	a5,a5,0x3
    80007064:	020046b7          	lui	a3,0x2004
    80007068:	00d787b3          	add	a5,a5,a3
    8000706c:	00c585b3          	add	a1,a1,a2
    80007070:	00371693          	slli	a3,a4,0x3
    80007074:	00005717          	auipc	a4,0x5
    80007078:	e8c70713          	addi	a4,a4,-372 # 8000bf00 <timer_scratch>
    8000707c:	00b7b023          	sd	a1,0(a5)
    80007080:	00d70733          	add	a4,a4,a3
    80007084:	00f73c23          	sd	a5,24(a4)
    80007088:	02c73023          	sd	a2,32(a4)
    8000708c:	34071073          	csrw	mscratch,a4
    80007090:	00000797          	auipc	a5,0x0
    80007094:	65078793          	addi	a5,a5,1616 # 800076e0 <timervec>
    80007098:	30579073          	csrw	mtvec,a5
    8000709c:	300027f3          	csrr	a5,mstatus
    800070a0:	0087e793          	ori	a5,a5,8
    800070a4:	30079073          	csrw	mstatus,a5
    800070a8:	304027f3          	csrr	a5,mie
    800070ac:	0807e793          	ori	a5,a5,128
    800070b0:	30479073          	csrw	mie,a5
    800070b4:	00813403          	ld	s0,8(sp)
    800070b8:	01010113          	addi	sp,sp,16
    800070bc:	00008067          	ret

00000000800070c0 <system_main>:
    800070c0:	fe010113          	addi	sp,sp,-32
    800070c4:	00813823          	sd	s0,16(sp)
    800070c8:	00913423          	sd	s1,8(sp)
    800070cc:	00113c23          	sd	ra,24(sp)
    800070d0:	02010413          	addi	s0,sp,32
    800070d4:	00000097          	auipc	ra,0x0
    800070d8:	0c4080e7          	jalr	196(ra) # 80007198 <cpuid>
    800070dc:	00005497          	auipc	s1,0x5
    800070e0:	d4448493          	addi	s1,s1,-700 # 8000be20 <started>
    800070e4:	02050263          	beqz	a0,80007108 <system_main+0x48>
    800070e8:	0004a783          	lw	a5,0(s1)
    800070ec:	0007879b          	sext.w	a5,a5
    800070f0:	fe078ce3          	beqz	a5,800070e8 <system_main+0x28>
    800070f4:	0ff0000f          	fence
    800070f8:	00002517          	auipc	a0,0x2
    800070fc:	4f850513          	addi	a0,a0,1272 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80007100:	00001097          	auipc	ra,0x1
    80007104:	a7c080e7          	jalr	-1412(ra) # 80007b7c <panic>
    80007108:	00001097          	auipc	ra,0x1
    8000710c:	9d0080e7          	jalr	-1584(ra) # 80007ad8 <consoleinit>
    80007110:	00001097          	auipc	ra,0x1
    80007114:	15c080e7          	jalr	348(ra) # 8000826c <printfinit>
    80007118:	00002517          	auipc	a0,0x2
    8000711c:	36050513          	addi	a0,a0,864 # 80009478 <CONSOLE_STATUS+0x468>
    80007120:	00001097          	auipc	ra,0x1
    80007124:	ab8080e7          	jalr	-1352(ra) # 80007bd8 <__printf>
    80007128:	00002517          	auipc	a0,0x2
    8000712c:	49850513          	addi	a0,a0,1176 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80007130:	00001097          	auipc	ra,0x1
    80007134:	aa8080e7          	jalr	-1368(ra) # 80007bd8 <__printf>
    80007138:	00002517          	auipc	a0,0x2
    8000713c:	34050513          	addi	a0,a0,832 # 80009478 <CONSOLE_STATUS+0x468>
    80007140:	00001097          	auipc	ra,0x1
    80007144:	a98080e7          	jalr	-1384(ra) # 80007bd8 <__printf>
    80007148:	00001097          	auipc	ra,0x1
    8000714c:	4b0080e7          	jalr	1200(ra) # 800085f8 <kinit>
    80007150:	00000097          	auipc	ra,0x0
    80007154:	148080e7          	jalr	328(ra) # 80007298 <trapinit>
    80007158:	00000097          	auipc	ra,0x0
    8000715c:	16c080e7          	jalr	364(ra) # 800072c4 <trapinithart>
    80007160:	00000097          	auipc	ra,0x0
    80007164:	5c0080e7          	jalr	1472(ra) # 80007720 <plicinit>
    80007168:	00000097          	auipc	ra,0x0
    8000716c:	5e0080e7          	jalr	1504(ra) # 80007748 <plicinithart>
    80007170:	00000097          	auipc	ra,0x0
    80007174:	078080e7          	jalr	120(ra) # 800071e8 <userinit>
    80007178:	0ff0000f          	fence
    8000717c:	00100793          	li	a5,1
    80007180:	00002517          	auipc	a0,0x2
    80007184:	45850513          	addi	a0,a0,1112 # 800095d8 <CONSOLE_STATUS+0x5c8>
    80007188:	00f4a023          	sw	a5,0(s1)
    8000718c:	00001097          	auipc	ra,0x1
    80007190:	a4c080e7          	jalr	-1460(ra) # 80007bd8 <__printf>
    80007194:	0000006f          	j	80007194 <system_main+0xd4>

0000000080007198 <cpuid>:
    80007198:	ff010113          	addi	sp,sp,-16
    8000719c:	00813423          	sd	s0,8(sp)
    800071a0:	01010413          	addi	s0,sp,16
    800071a4:	00020513          	mv	a0,tp
    800071a8:	00813403          	ld	s0,8(sp)
    800071ac:	0005051b          	sext.w	a0,a0
    800071b0:	01010113          	addi	sp,sp,16
    800071b4:	00008067          	ret

00000000800071b8 <mycpu>:
    800071b8:	ff010113          	addi	sp,sp,-16
    800071bc:	00813423          	sd	s0,8(sp)
    800071c0:	01010413          	addi	s0,sp,16
    800071c4:	00020793          	mv	a5,tp
    800071c8:	00813403          	ld	s0,8(sp)
    800071cc:	0007879b          	sext.w	a5,a5
    800071d0:	00779793          	slli	a5,a5,0x7
    800071d4:	00006517          	auipc	a0,0x6
    800071d8:	d5c50513          	addi	a0,a0,-676 # 8000cf30 <cpus>
    800071dc:	00f50533          	add	a0,a0,a5
    800071e0:	01010113          	addi	sp,sp,16
    800071e4:	00008067          	ret

00000000800071e8 <userinit>:
    800071e8:	ff010113          	addi	sp,sp,-16
    800071ec:	00813423          	sd	s0,8(sp)
    800071f0:	01010413          	addi	s0,sp,16
    800071f4:	00813403          	ld	s0,8(sp)
    800071f8:	01010113          	addi	sp,sp,16
    800071fc:	ffffb317          	auipc	t1,0xffffb
    80007200:	a9830067          	jr	-1384(t1) # 80001c94 <main>

0000000080007204 <either_copyout>:
    80007204:	ff010113          	addi	sp,sp,-16
    80007208:	00813023          	sd	s0,0(sp)
    8000720c:	00113423          	sd	ra,8(sp)
    80007210:	01010413          	addi	s0,sp,16
    80007214:	02051663          	bnez	a0,80007240 <either_copyout+0x3c>
    80007218:	00058513          	mv	a0,a1
    8000721c:	00060593          	mv	a1,a2
    80007220:	0006861b          	sext.w	a2,a3
    80007224:	00002097          	auipc	ra,0x2
    80007228:	c60080e7          	jalr	-928(ra) # 80008e84 <__memmove>
    8000722c:	00813083          	ld	ra,8(sp)
    80007230:	00013403          	ld	s0,0(sp)
    80007234:	00000513          	li	a0,0
    80007238:	01010113          	addi	sp,sp,16
    8000723c:	00008067          	ret
    80007240:	00002517          	auipc	a0,0x2
    80007244:	3d850513          	addi	a0,a0,984 # 80009618 <CONSOLE_STATUS+0x608>
    80007248:	00001097          	auipc	ra,0x1
    8000724c:	934080e7          	jalr	-1740(ra) # 80007b7c <panic>

0000000080007250 <either_copyin>:
    80007250:	ff010113          	addi	sp,sp,-16
    80007254:	00813023          	sd	s0,0(sp)
    80007258:	00113423          	sd	ra,8(sp)
    8000725c:	01010413          	addi	s0,sp,16
    80007260:	02059463          	bnez	a1,80007288 <either_copyin+0x38>
    80007264:	00060593          	mv	a1,a2
    80007268:	0006861b          	sext.w	a2,a3
    8000726c:	00002097          	auipc	ra,0x2
    80007270:	c18080e7          	jalr	-1000(ra) # 80008e84 <__memmove>
    80007274:	00813083          	ld	ra,8(sp)
    80007278:	00013403          	ld	s0,0(sp)
    8000727c:	00000513          	li	a0,0
    80007280:	01010113          	addi	sp,sp,16
    80007284:	00008067          	ret
    80007288:	00002517          	auipc	a0,0x2
    8000728c:	3b850513          	addi	a0,a0,952 # 80009640 <CONSOLE_STATUS+0x630>
    80007290:	00001097          	auipc	ra,0x1
    80007294:	8ec080e7          	jalr	-1812(ra) # 80007b7c <panic>

0000000080007298 <trapinit>:
    80007298:	ff010113          	addi	sp,sp,-16
    8000729c:	00813423          	sd	s0,8(sp)
    800072a0:	01010413          	addi	s0,sp,16
    800072a4:	00813403          	ld	s0,8(sp)
    800072a8:	00002597          	auipc	a1,0x2
    800072ac:	3c058593          	addi	a1,a1,960 # 80009668 <CONSOLE_STATUS+0x658>
    800072b0:	00006517          	auipc	a0,0x6
    800072b4:	d0050513          	addi	a0,a0,-768 # 8000cfb0 <tickslock>
    800072b8:	01010113          	addi	sp,sp,16
    800072bc:	00001317          	auipc	t1,0x1
    800072c0:	5cc30067          	jr	1484(t1) # 80008888 <initlock>

00000000800072c4 <trapinithart>:
    800072c4:	ff010113          	addi	sp,sp,-16
    800072c8:	00813423          	sd	s0,8(sp)
    800072cc:	01010413          	addi	s0,sp,16
    800072d0:	00000797          	auipc	a5,0x0
    800072d4:	30078793          	addi	a5,a5,768 # 800075d0 <kernelvec>
    800072d8:	10579073          	csrw	stvec,a5
    800072dc:	00813403          	ld	s0,8(sp)
    800072e0:	01010113          	addi	sp,sp,16
    800072e4:	00008067          	ret

00000000800072e8 <usertrap>:
    800072e8:	ff010113          	addi	sp,sp,-16
    800072ec:	00813423          	sd	s0,8(sp)
    800072f0:	01010413          	addi	s0,sp,16
    800072f4:	00813403          	ld	s0,8(sp)
    800072f8:	01010113          	addi	sp,sp,16
    800072fc:	00008067          	ret

0000000080007300 <usertrapret>:
    80007300:	ff010113          	addi	sp,sp,-16
    80007304:	00813423          	sd	s0,8(sp)
    80007308:	01010413          	addi	s0,sp,16
    8000730c:	00813403          	ld	s0,8(sp)
    80007310:	01010113          	addi	sp,sp,16
    80007314:	00008067          	ret

0000000080007318 <kerneltrap>:
    80007318:	fe010113          	addi	sp,sp,-32
    8000731c:	00813823          	sd	s0,16(sp)
    80007320:	00113c23          	sd	ra,24(sp)
    80007324:	00913423          	sd	s1,8(sp)
    80007328:	02010413          	addi	s0,sp,32
    8000732c:	142025f3          	csrr	a1,scause
    80007330:	100027f3          	csrr	a5,sstatus
    80007334:	0027f793          	andi	a5,a5,2
    80007338:	10079c63          	bnez	a5,80007450 <kerneltrap+0x138>
    8000733c:	142027f3          	csrr	a5,scause
    80007340:	0207ce63          	bltz	a5,8000737c <kerneltrap+0x64>
    80007344:	00002517          	auipc	a0,0x2
    80007348:	36c50513          	addi	a0,a0,876 # 800096b0 <CONSOLE_STATUS+0x6a0>
    8000734c:	00001097          	auipc	ra,0x1
    80007350:	88c080e7          	jalr	-1908(ra) # 80007bd8 <__printf>
    80007354:	141025f3          	csrr	a1,sepc
    80007358:	14302673          	csrr	a2,stval
    8000735c:	00002517          	auipc	a0,0x2
    80007360:	36450513          	addi	a0,a0,868 # 800096c0 <CONSOLE_STATUS+0x6b0>
    80007364:	00001097          	auipc	ra,0x1
    80007368:	874080e7          	jalr	-1932(ra) # 80007bd8 <__printf>
    8000736c:	00002517          	auipc	a0,0x2
    80007370:	36c50513          	addi	a0,a0,876 # 800096d8 <CONSOLE_STATUS+0x6c8>
    80007374:	00001097          	auipc	ra,0x1
    80007378:	808080e7          	jalr	-2040(ra) # 80007b7c <panic>
    8000737c:	0ff7f713          	andi	a4,a5,255
    80007380:	00900693          	li	a3,9
    80007384:	04d70063          	beq	a4,a3,800073c4 <kerneltrap+0xac>
    80007388:	fff00713          	li	a4,-1
    8000738c:	03f71713          	slli	a4,a4,0x3f
    80007390:	00170713          	addi	a4,a4,1
    80007394:	fae798e3          	bne	a5,a4,80007344 <kerneltrap+0x2c>
    80007398:	00000097          	auipc	ra,0x0
    8000739c:	e00080e7          	jalr	-512(ra) # 80007198 <cpuid>
    800073a0:	06050663          	beqz	a0,8000740c <kerneltrap+0xf4>
    800073a4:	144027f3          	csrr	a5,sip
    800073a8:	ffd7f793          	andi	a5,a5,-3
    800073ac:	14479073          	csrw	sip,a5
    800073b0:	01813083          	ld	ra,24(sp)
    800073b4:	01013403          	ld	s0,16(sp)
    800073b8:	00813483          	ld	s1,8(sp)
    800073bc:	02010113          	addi	sp,sp,32
    800073c0:	00008067          	ret
    800073c4:	00000097          	auipc	ra,0x0
    800073c8:	3d0080e7          	jalr	976(ra) # 80007794 <plic_claim>
    800073cc:	00a00793          	li	a5,10
    800073d0:	00050493          	mv	s1,a0
    800073d4:	06f50863          	beq	a0,a5,80007444 <kerneltrap+0x12c>
    800073d8:	fc050ce3          	beqz	a0,800073b0 <kerneltrap+0x98>
    800073dc:	00050593          	mv	a1,a0
    800073e0:	00002517          	auipc	a0,0x2
    800073e4:	2b050513          	addi	a0,a0,688 # 80009690 <CONSOLE_STATUS+0x680>
    800073e8:	00000097          	auipc	ra,0x0
    800073ec:	7f0080e7          	jalr	2032(ra) # 80007bd8 <__printf>
    800073f0:	01013403          	ld	s0,16(sp)
    800073f4:	01813083          	ld	ra,24(sp)
    800073f8:	00048513          	mv	a0,s1
    800073fc:	00813483          	ld	s1,8(sp)
    80007400:	02010113          	addi	sp,sp,32
    80007404:	00000317          	auipc	t1,0x0
    80007408:	3c830067          	jr	968(t1) # 800077cc <plic_complete>
    8000740c:	00006517          	auipc	a0,0x6
    80007410:	ba450513          	addi	a0,a0,-1116 # 8000cfb0 <tickslock>
    80007414:	00001097          	auipc	ra,0x1
    80007418:	498080e7          	jalr	1176(ra) # 800088ac <acquire>
    8000741c:	00005717          	auipc	a4,0x5
    80007420:	a0870713          	addi	a4,a4,-1528 # 8000be24 <ticks>
    80007424:	00072783          	lw	a5,0(a4)
    80007428:	00006517          	auipc	a0,0x6
    8000742c:	b8850513          	addi	a0,a0,-1144 # 8000cfb0 <tickslock>
    80007430:	0017879b          	addiw	a5,a5,1
    80007434:	00f72023          	sw	a5,0(a4)
    80007438:	00001097          	auipc	ra,0x1
    8000743c:	540080e7          	jalr	1344(ra) # 80008978 <release>
    80007440:	f65ff06f          	j	800073a4 <kerneltrap+0x8c>
    80007444:	00001097          	auipc	ra,0x1
    80007448:	09c080e7          	jalr	156(ra) # 800084e0 <uartintr>
    8000744c:	fa5ff06f          	j	800073f0 <kerneltrap+0xd8>
    80007450:	00002517          	auipc	a0,0x2
    80007454:	22050513          	addi	a0,a0,544 # 80009670 <CONSOLE_STATUS+0x660>
    80007458:	00000097          	auipc	ra,0x0
    8000745c:	724080e7          	jalr	1828(ra) # 80007b7c <panic>

0000000080007460 <clockintr>:
    80007460:	fe010113          	addi	sp,sp,-32
    80007464:	00813823          	sd	s0,16(sp)
    80007468:	00913423          	sd	s1,8(sp)
    8000746c:	00113c23          	sd	ra,24(sp)
    80007470:	02010413          	addi	s0,sp,32
    80007474:	00006497          	auipc	s1,0x6
    80007478:	b3c48493          	addi	s1,s1,-1220 # 8000cfb0 <tickslock>
    8000747c:	00048513          	mv	a0,s1
    80007480:	00001097          	auipc	ra,0x1
    80007484:	42c080e7          	jalr	1068(ra) # 800088ac <acquire>
    80007488:	00005717          	auipc	a4,0x5
    8000748c:	99c70713          	addi	a4,a4,-1636 # 8000be24 <ticks>
    80007490:	00072783          	lw	a5,0(a4)
    80007494:	01013403          	ld	s0,16(sp)
    80007498:	01813083          	ld	ra,24(sp)
    8000749c:	00048513          	mv	a0,s1
    800074a0:	0017879b          	addiw	a5,a5,1
    800074a4:	00813483          	ld	s1,8(sp)
    800074a8:	00f72023          	sw	a5,0(a4)
    800074ac:	02010113          	addi	sp,sp,32
    800074b0:	00001317          	auipc	t1,0x1
    800074b4:	4c830067          	jr	1224(t1) # 80008978 <release>

00000000800074b8 <devintr>:
    800074b8:	142027f3          	csrr	a5,scause
    800074bc:	00000513          	li	a0,0
    800074c0:	0007c463          	bltz	a5,800074c8 <devintr+0x10>
    800074c4:	00008067          	ret
    800074c8:	fe010113          	addi	sp,sp,-32
    800074cc:	00813823          	sd	s0,16(sp)
    800074d0:	00113c23          	sd	ra,24(sp)
    800074d4:	00913423          	sd	s1,8(sp)
    800074d8:	02010413          	addi	s0,sp,32
    800074dc:	0ff7f713          	andi	a4,a5,255
    800074e0:	00900693          	li	a3,9
    800074e4:	04d70c63          	beq	a4,a3,8000753c <devintr+0x84>
    800074e8:	fff00713          	li	a4,-1
    800074ec:	03f71713          	slli	a4,a4,0x3f
    800074f0:	00170713          	addi	a4,a4,1
    800074f4:	00e78c63          	beq	a5,a4,8000750c <devintr+0x54>
    800074f8:	01813083          	ld	ra,24(sp)
    800074fc:	01013403          	ld	s0,16(sp)
    80007500:	00813483          	ld	s1,8(sp)
    80007504:	02010113          	addi	sp,sp,32
    80007508:	00008067          	ret
    8000750c:	00000097          	auipc	ra,0x0
    80007510:	c8c080e7          	jalr	-884(ra) # 80007198 <cpuid>
    80007514:	06050663          	beqz	a0,80007580 <devintr+0xc8>
    80007518:	144027f3          	csrr	a5,sip
    8000751c:	ffd7f793          	andi	a5,a5,-3
    80007520:	14479073          	csrw	sip,a5
    80007524:	01813083          	ld	ra,24(sp)
    80007528:	01013403          	ld	s0,16(sp)
    8000752c:	00813483          	ld	s1,8(sp)
    80007530:	00200513          	li	a0,2
    80007534:	02010113          	addi	sp,sp,32
    80007538:	00008067          	ret
    8000753c:	00000097          	auipc	ra,0x0
    80007540:	258080e7          	jalr	600(ra) # 80007794 <plic_claim>
    80007544:	00a00793          	li	a5,10
    80007548:	00050493          	mv	s1,a0
    8000754c:	06f50663          	beq	a0,a5,800075b8 <devintr+0x100>
    80007550:	00100513          	li	a0,1
    80007554:	fa0482e3          	beqz	s1,800074f8 <devintr+0x40>
    80007558:	00048593          	mv	a1,s1
    8000755c:	00002517          	auipc	a0,0x2
    80007560:	13450513          	addi	a0,a0,308 # 80009690 <CONSOLE_STATUS+0x680>
    80007564:	00000097          	auipc	ra,0x0
    80007568:	674080e7          	jalr	1652(ra) # 80007bd8 <__printf>
    8000756c:	00048513          	mv	a0,s1
    80007570:	00000097          	auipc	ra,0x0
    80007574:	25c080e7          	jalr	604(ra) # 800077cc <plic_complete>
    80007578:	00100513          	li	a0,1
    8000757c:	f7dff06f          	j	800074f8 <devintr+0x40>
    80007580:	00006517          	auipc	a0,0x6
    80007584:	a3050513          	addi	a0,a0,-1488 # 8000cfb0 <tickslock>
    80007588:	00001097          	auipc	ra,0x1
    8000758c:	324080e7          	jalr	804(ra) # 800088ac <acquire>
    80007590:	00005717          	auipc	a4,0x5
    80007594:	89470713          	addi	a4,a4,-1900 # 8000be24 <ticks>
    80007598:	00072783          	lw	a5,0(a4)
    8000759c:	00006517          	auipc	a0,0x6
    800075a0:	a1450513          	addi	a0,a0,-1516 # 8000cfb0 <tickslock>
    800075a4:	0017879b          	addiw	a5,a5,1
    800075a8:	00f72023          	sw	a5,0(a4)
    800075ac:	00001097          	auipc	ra,0x1
    800075b0:	3cc080e7          	jalr	972(ra) # 80008978 <release>
    800075b4:	f65ff06f          	j	80007518 <devintr+0x60>
    800075b8:	00001097          	auipc	ra,0x1
    800075bc:	f28080e7          	jalr	-216(ra) # 800084e0 <uartintr>
    800075c0:	fadff06f          	j	8000756c <devintr+0xb4>
	...

00000000800075d0 <kernelvec>:
    800075d0:	f0010113          	addi	sp,sp,-256
    800075d4:	00113023          	sd	ra,0(sp)
    800075d8:	00213423          	sd	sp,8(sp)
    800075dc:	00313823          	sd	gp,16(sp)
    800075e0:	00413c23          	sd	tp,24(sp)
    800075e4:	02513023          	sd	t0,32(sp)
    800075e8:	02613423          	sd	t1,40(sp)
    800075ec:	02713823          	sd	t2,48(sp)
    800075f0:	02813c23          	sd	s0,56(sp)
    800075f4:	04913023          	sd	s1,64(sp)
    800075f8:	04a13423          	sd	a0,72(sp)
    800075fc:	04b13823          	sd	a1,80(sp)
    80007600:	04c13c23          	sd	a2,88(sp)
    80007604:	06d13023          	sd	a3,96(sp)
    80007608:	06e13423          	sd	a4,104(sp)
    8000760c:	06f13823          	sd	a5,112(sp)
    80007610:	07013c23          	sd	a6,120(sp)
    80007614:	09113023          	sd	a7,128(sp)
    80007618:	09213423          	sd	s2,136(sp)
    8000761c:	09313823          	sd	s3,144(sp)
    80007620:	09413c23          	sd	s4,152(sp)
    80007624:	0b513023          	sd	s5,160(sp)
    80007628:	0b613423          	sd	s6,168(sp)
    8000762c:	0b713823          	sd	s7,176(sp)
    80007630:	0b813c23          	sd	s8,184(sp)
    80007634:	0d913023          	sd	s9,192(sp)
    80007638:	0da13423          	sd	s10,200(sp)
    8000763c:	0db13823          	sd	s11,208(sp)
    80007640:	0dc13c23          	sd	t3,216(sp)
    80007644:	0fd13023          	sd	t4,224(sp)
    80007648:	0fe13423          	sd	t5,232(sp)
    8000764c:	0ff13823          	sd	t6,240(sp)
    80007650:	cc9ff0ef          	jal	ra,80007318 <kerneltrap>
    80007654:	00013083          	ld	ra,0(sp)
    80007658:	00813103          	ld	sp,8(sp)
    8000765c:	01013183          	ld	gp,16(sp)
    80007660:	02013283          	ld	t0,32(sp)
    80007664:	02813303          	ld	t1,40(sp)
    80007668:	03013383          	ld	t2,48(sp)
    8000766c:	03813403          	ld	s0,56(sp)
    80007670:	04013483          	ld	s1,64(sp)
    80007674:	04813503          	ld	a0,72(sp)
    80007678:	05013583          	ld	a1,80(sp)
    8000767c:	05813603          	ld	a2,88(sp)
    80007680:	06013683          	ld	a3,96(sp)
    80007684:	06813703          	ld	a4,104(sp)
    80007688:	07013783          	ld	a5,112(sp)
    8000768c:	07813803          	ld	a6,120(sp)
    80007690:	08013883          	ld	a7,128(sp)
    80007694:	08813903          	ld	s2,136(sp)
    80007698:	09013983          	ld	s3,144(sp)
    8000769c:	09813a03          	ld	s4,152(sp)
    800076a0:	0a013a83          	ld	s5,160(sp)
    800076a4:	0a813b03          	ld	s6,168(sp)
    800076a8:	0b013b83          	ld	s7,176(sp)
    800076ac:	0b813c03          	ld	s8,184(sp)
    800076b0:	0c013c83          	ld	s9,192(sp)
    800076b4:	0c813d03          	ld	s10,200(sp)
    800076b8:	0d013d83          	ld	s11,208(sp)
    800076bc:	0d813e03          	ld	t3,216(sp)
    800076c0:	0e013e83          	ld	t4,224(sp)
    800076c4:	0e813f03          	ld	t5,232(sp)
    800076c8:	0f013f83          	ld	t6,240(sp)
    800076cc:	10010113          	addi	sp,sp,256
    800076d0:	10200073          	sret
    800076d4:	00000013          	nop
    800076d8:	00000013          	nop
    800076dc:	00000013          	nop

00000000800076e0 <timervec>:
    800076e0:	34051573          	csrrw	a0,mscratch,a0
    800076e4:	00b53023          	sd	a1,0(a0)
    800076e8:	00c53423          	sd	a2,8(a0)
    800076ec:	00d53823          	sd	a3,16(a0)
    800076f0:	01853583          	ld	a1,24(a0)
    800076f4:	02053603          	ld	a2,32(a0)
    800076f8:	0005b683          	ld	a3,0(a1)
    800076fc:	00c686b3          	add	a3,a3,a2
    80007700:	00d5b023          	sd	a3,0(a1)
    80007704:	00200593          	li	a1,2
    80007708:	14459073          	csrw	sip,a1
    8000770c:	01053683          	ld	a3,16(a0)
    80007710:	00853603          	ld	a2,8(a0)
    80007714:	00053583          	ld	a1,0(a0)
    80007718:	34051573          	csrrw	a0,mscratch,a0
    8000771c:	30200073          	mret

0000000080007720 <plicinit>:
    80007720:	ff010113          	addi	sp,sp,-16
    80007724:	00813423          	sd	s0,8(sp)
    80007728:	01010413          	addi	s0,sp,16
    8000772c:	00813403          	ld	s0,8(sp)
    80007730:	0c0007b7          	lui	a5,0xc000
    80007734:	00100713          	li	a4,1
    80007738:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000773c:	00e7a223          	sw	a4,4(a5)
    80007740:	01010113          	addi	sp,sp,16
    80007744:	00008067          	ret

0000000080007748 <plicinithart>:
    80007748:	ff010113          	addi	sp,sp,-16
    8000774c:	00813023          	sd	s0,0(sp)
    80007750:	00113423          	sd	ra,8(sp)
    80007754:	01010413          	addi	s0,sp,16
    80007758:	00000097          	auipc	ra,0x0
    8000775c:	a40080e7          	jalr	-1472(ra) # 80007198 <cpuid>
    80007760:	0085171b          	slliw	a4,a0,0x8
    80007764:	0c0027b7          	lui	a5,0xc002
    80007768:	00e787b3          	add	a5,a5,a4
    8000776c:	40200713          	li	a4,1026
    80007770:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80007774:	00813083          	ld	ra,8(sp)
    80007778:	00013403          	ld	s0,0(sp)
    8000777c:	00d5151b          	slliw	a0,a0,0xd
    80007780:	0c2017b7          	lui	a5,0xc201
    80007784:	00a78533          	add	a0,a5,a0
    80007788:	00052023          	sw	zero,0(a0)
    8000778c:	01010113          	addi	sp,sp,16
    80007790:	00008067          	ret

0000000080007794 <plic_claim>:
    80007794:	ff010113          	addi	sp,sp,-16
    80007798:	00813023          	sd	s0,0(sp)
    8000779c:	00113423          	sd	ra,8(sp)
    800077a0:	01010413          	addi	s0,sp,16
    800077a4:	00000097          	auipc	ra,0x0
    800077a8:	9f4080e7          	jalr	-1548(ra) # 80007198 <cpuid>
    800077ac:	00813083          	ld	ra,8(sp)
    800077b0:	00013403          	ld	s0,0(sp)
    800077b4:	00d5151b          	slliw	a0,a0,0xd
    800077b8:	0c2017b7          	lui	a5,0xc201
    800077bc:	00a78533          	add	a0,a5,a0
    800077c0:	00452503          	lw	a0,4(a0)
    800077c4:	01010113          	addi	sp,sp,16
    800077c8:	00008067          	ret

00000000800077cc <plic_complete>:
    800077cc:	fe010113          	addi	sp,sp,-32
    800077d0:	00813823          	sd	s0,16(sp)
    800077d4:	00913423          	sd	s1,8(sp)
    800077d8:	00113c23          	sd	ra,24(sp)
    800077dc:	02010413          	addi	s0,sp,32
    800077e0:	00050493          	mv	s1,a0
    800077e4:	00000097          	auipc	ra,0x0
    800077e8:	9b4080e7          	jalr	-1612(ra) # 80007198 <cpuid>
    800077ec:	01813083          	ld	ra,24(sp)
    800077f0:	01013403          	ld	s0,16(sp)
    800077f4:	00d5179b          	slliw	a5,a0,0xd
    800077f8:	0c201737          	lui	a4,0xc201
    800077fc:	00f707b3          	add	a5,a4,a5
    80007800:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007804:	00813483          	ld	s1,8(sp)
    80007808:	02010113          	addi	sp,sp,32
    8000780c:	00008067          	ret

0000000080007810 <consolewrite>:
    80007810:	fb010113          	addi	sp,sp,-80
    80007814:	04813023          	sd	s0,64(sp)
    80007818:	04113423          	sd	ra,72(sp)
    8000781c:	02913c23          	sd	s1,56(sp)
    80007820:	03213823          	sd	s2,48(sp)
    80007824:	03313423          	sd	s3,40(sp)
    80007828:	03413023          	sd	s4,32(sp)
    8000782c:	01513c23          	sd	s5,24(sp)
    80007830:	05010413          	addi	s0,sp,80
    80007834:	06c05c63          	blez	a2,800078ac <consolewrite+0x9c>
    80007838:	00060993          	mv	s3,a2
    8000783c:	00050a13          	mv	s4,a0
    80007840:	00058493          	mv	s1,a1
    80007844:	00000913          	li	s2,0
    80007848:	fff00a93          	li	s5,-1
    8000784c:	01c0006f          	j	80007868 <consolewrite+0x58>
    80007850:	fbf44503          	lbu	a0,-65(s0)
    80007854:	0019091b          	addiw	s2,s2,1
    80007858:	00148493          	addi	s1,s1,1
    8000785c:	00001097          	auipc	ra,0x1
    80007860:	a9c080e7          	jalr	-1380(ra) # 800082f8 <uartputc>
    80007864:	03298063          	beq	s3,s2,80007884 <consolewrite+0x74>
    80007868:	00048613          	mv	a2,s1
    8000786c:	00100693          	li	a3,1
    80007870:	000a0593          	mv	a1,s4
    80007874:	fbf40513          	addi	a0,s0,-65
    80007878:	00000097          	auipc	ra,0x0
    8000787c:	9d8080e7          	jalr	-1576(ra) # 80007250 <either_copyin>
    80007880:	fd5518e3          	bne	a0,s5,80007850 <consolewrite+0x40>
    80007884:	04813083          	ld	ra,72(sp)
    80007888:	04013403          	ld	s0,64(sp)
    8000788c:	03813483          	ld	s1,56(sp)
    80007890:	02813983          	ld	s3,40(sp)
    80007894:	02013a03          	ld	s4,32(sp)
    80007898:	01813a83          	ld	s5,24(sp)
    8000789c:	00090513          	mv	a0,s2
    800078a0:	03013903          	ld	s2,48(sp)
    800078a4:	05010113          	addi	sp,sp,80
    800078a8:	00008067          	ret
    800078ac:	00000913          	li	s2,0
    800078b0:	fd5ff06f          	j	80007884 <consolewrite+0x74>

00000000800078b4 <consoleread>:
    800078b4:	f9010113          	addi	sp,sp,-112
    800078b8:	06813023          	sd	s0,96(sp)
    800078bc:	04913c23          	sd	s1,88(sp)
    800078c0:	05213823          	sd	s2,80(sp)
    800078c4:	05313423          	sd	s3,72(sp)
    800078c8:	05413023          	sd	s4,64(sp)
    800078cc:	03513c23          	sd	s5,56(sp)
    800078d0:	03613823          	sd	s6,48(sp)
    800078d4:	03713423          	sd	s7,40(sp)
    800078d8:	03813023          	sd	s8,32(sp)
    800078dc:	06113423          	sd	ra,104(sp)
    800078e0:	01913c23          	sd	s9,24(sp)
    800078e4:	07010413          	addi	s0,sp,112
    800078e8:	00060b93          	mv	s7,a2
    800078ec:	00050913          	mv	s2,a0
    800078f0:	00058c13          	mv	s8,a1
    800078f4:	00060b1b          	sext.w	s6,a2
    800078f8:	00005497          	auipc	s1,0x5
    800078fc:	6e048493          	addi	s1,s1,1760 # 8000cfd8 <cons>
    80007900:	00400993          	li	s3,4
    80007904:	fff00a13          	li	s4,-1
    80007908:	00a00a93          	li	s5,10
    8000790c:	05705e63          	blez	s7,80007968 <consoleread+0xb4>
    80007910:	09c4a703          	lw	a4,156(s1)
    80007914:	0984a783          	lw	a5,152(s1)
    80007918:	0007071b          	sext.w	a4,a4
    8000791c:	08e78463          	beq	a5,a4,800079a4 <consoleread+0xf0>
    80007920:	07f7f713          	andi	a4,a5,127
    80007924:	00e48733          	add	a4,s1,a4
    80007928:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000792c:	0017869b          	addiw	a3,a5,1
    80007930:	08d4ac23          	sw	a3,152(s1)
    80007934:	00070c9b          	sext.w	s9,a4
    80007938:	0b370663          	beq	a4,s3,800079e4 <consoleread+0x130>
    8000793c:	00100693          	li	a3,1
    80007940:	f9f40613          	addi	a2,s0,-97
    80007944:	000c0593          	mv	a1,s8
    80007948:	00090513          	mv	a0,s2
    8000794c:	f8e40fa3          	sb	a4,-97(s0)
    80007950:	00000097          	auipc	ra,0x0
    80007954:	8b4080e7          	jalr	-1868(ra) # 80007204 <either_copyout>
    80007958:	01450863          	beq	a0,s4,80007968 <consoleread+0xb4>
    8000795c:	001c0c13          	addi	s8,s8,1
    80007960:	fffb8b9b          	addiw	s7,s7,-1
    80007964:	fb5c94e3          	bne	s9,s5,8000790c <consoleread+0x58>
    80007968:	000b851b          	sext.w	a0,s7
    8000796c:	06813083          	ld	ra,104(sp)
    80007970:	06013403          	ld	s0,96(sp)
    80007974:	05813483          	ld	s1,88(sp)
    80007978:	05013903          	ld	s2,80(sp)
    8000797c:	04813983          	ld	s3,72(sp)
    80007980:	04013a03          	ld	s4,64(sp)
    80007984:	03813a83          	ld	s5,56(sp)
    80007988:	02813b83          	ld	s7,40(sp)
    8000798c:	02013c03          	ld	s8,32(sp)
    80007990:	01813c83          	ld	s9,24(sp)
    80007994:	40ab053b          	subw	a0,s6,a0
    80007998:	03013b03          	ld	s6,48(sp)
    8000799c:	07010113          	addi	sp,sp,112
    800079a0:	00008067          	ret
    800079a4:	00001097          	auipc	ra,0x1
    800079a8:	1d8080e7          	jalr	472(ra) # 80008b7c <push_on>
    800079ac:	0984a703          	lw	a4,152(s1)
    800079b0:	09c4a783          	lw	a5,156(s1)
    800079b4:	0007879b          	sext.w	a5,a5
    800079b8:	fef70ce3          	beq	a4,a5,800079b0 <consoleread+0xfc>
    800079bc:	00001097          	auipc	ra,0x1
    800079c0:	234080e7          	jalr	564(ra) # 80008bf0 <pop_on>
    800079c4:	0984a783          	lw	a5,152(s1)
    800079c8:	07f7f713          	andi	a4,a5,127
    800079cc:	00e48733          	add	a4,s1,a4
    800079d0:	01874703          	lbu	a4,24(a4)
    800079d4:	0017869b          	addiw	a3,a5,1
    800079d8:	08d4ac23          	sw	a3,152(s1)
    800079dc:	00070c9b          	sext.w	s9,a4
    800079e0:	f5371ee3          	bne	a4,s3,8000793c <consoleread+0x88>
    800079e4:	000b851b          	sext.w	a0,s7
    800079e8:	f96bf2e3          	bgeu	s7,s6,8000796c <consoleread+0xb8>
    800079ec:	08f4ac23          	sw	a5,152(s1)
    800079f0:	f7dff06f          	j	8000796c <consoleread+0xb8>

00000000800079f4 <consputc>:
    800079f4:	10000793          	li	a5,256
    800079f8:	00f50663          	beq	a0,a5,80007a04 <consputc+0x10>
    800079fc:	00001317          	auipc	t1,0x1
    80007a00:	9f430067          	jr	-1548(t1) # 800083f0 <uartputc_sync>
    80007a04:	ff010113          	addi	sp,sp,-16
    80007a08:	00113423          	sd	ra,8(sp)
    80007a0c:	00813023          	sd	s0,0(sp)
    80007a10:	01010413          	addi	s0,sp,16
    80007a14:	00800513          	li	a0,8
    80007a18:	00001097          	auipc	ra,0x1
    80007a1c:	9d8080e7          	jalr	-1576(ra) # 800083f0 <uartputc_sync>
    80007a20:	02000513          	li	a0,32
    80007a24:	00001097          	auipc	ra,0x1
    80007a28:	9cc080e7          	jalr	-1588(ra) # 800083f0 <uartputc_sync>
    80007a2c:	00013403          	ld	s0,0(sp)
    80007a30:	00813083          	ld	ra,8(sp)
    80007a34:	00800513          	li	a0,8
    80007a38:	01010113          	addi	sp,sp,16
    80007a3c:	00001317          	auipc	t1,0x1
    80007a40:	9b430067          	jr	-1612(t1) # 800083f0 <uartputc_sync>

0000000080007a44 <consoleintr>:
    80007a44:	fe010113          	addi	sp,sp,-32
    80007a48:	00813823          	sd	s0,16(sp)
    80007a4c:	00913423          	sd	s1,8(sp)
    80007a50:	01213023          	sd	s2,0(sp)
    80007a54:	00113c23          	sd	ra,24(sp)
    80007a58:	02010413          	addi	s0,sp,32
    80007a5c:	00005917          	auipc	s2,0x5
    80007a60:	57c90913          	addi	s2,s2,1404 # 8000cfd8 <cons>
    80007a64:	00050493          	mv	s1,a0
    80007a68:	00090513          	mv	a0,s2
    80007a6c:	00001097          	auipc	ra,0x1
    80007a70:	e40080e7          	jalr	-448(ra) # 800088ac <acquire>
    80007a74:	02048c63          	beqz	s1,80007aac <consoleintr+0x68>
    80007a78:	0a092783          	lw	a5,160(s2)
    80007a7c:	09892703          	lw	a4,152(s2)
    80007a80:	07f00693          	li	a3,127
    80007a84:	40e7873b          	subw	a4,a5,a4
    80007a88:	02e6e263          	bltu	a3,a4,80007aac <consoleintr+0x68>
    80007a8c:	00d00713          	li	a4,13
    80007a90:	04e48063          	beq	s1,a4,80007ad0 <consoleintr+0x8c>
    80007a94:	07f7f713          	andi	a4,a5,127
    80007a98:	00e90733          	add	a4,s2,a4
    80007a9c:	0017879b          	addiw	a5,a5,1
    80007aa0:	0af92023          	sw	a5,160(s2)
    80007aa4:	00970c23          	sb	s1,24(a4)
    80007aa8:	08f92e23          	sw	a5,156(s2)
    80007aac:	01013403          	ld	s0,16(sp)
    80007ab0:	01813083          	ld	ra,24(sp)
    80007ab4:	00813483          	ld	s1,8(sp)
    80007ab8:	00013903          	ld	s2,0(sp)
    80007abc:	00005517          	auipc	a0,0x5
    80007ac0:	51c50513          	addi	a0,a0,1308 # 8000cfd8 <cons>
    80007ac4:	02010113          	addi	sp,sp,32
    80007ac8:	00001317          	auipc	t1,0x1
    80007acc:	eb030067          	jr	-336(t1) # 80008978 <release>
    80007ad0:	00a00493          	li	s1,10
    80007ad4:	fc1ff06f          	j	80007a94 <consoleintr+0x50>

0000000080007ad8 <consoleinit>:
    80007ad8:	fe010113          	addi	sp,sp,-32
    80007adc:	00113c23          	sd	ra,24(sp)
    80007ae0:	00813823          	sd	s0,16(sp)
    80007ae4:	00913423          	sd	s1,8(sp)
    80007ae8:	02010413          	addi	s0,sp,32
    80007aec:	00005497          	auipc	s1,0x5
    80007af0:	4ec48493          	addi	s1,s1,1260 # 8000cfd8 <cons>
    80007af4:	00048513          	mv	a0,s1
    80007af8:	00002597          	auipc	a1,0x2
    80007afc:	bf058593          	addi	a1,a1,-1040 # 800096e8 <CONSOLE_STATUS+0x6d8>
    80007b00:	00001097          	auipc	ra,0x1
    80007b04:	d88080e7          	jalr	-632(ra) # 80008888 <initlock>
    80007b08:	00000097          	auipc	ra,0x0
    80007b0c:	7ac080e7          	jalr	1964(ra) # 800082b4 <uartinit>
    80007b10:	01813083          	ld	ra,24(sp)
    80007b14:	01013403          	ld	s0,16(sp)
    80007b18:	00000797          	auipc	a5,0x0
    80007b1c:	d9c78793          	addi	a5,a5,-612 # 800078b4 <consoleread>
    80007b20:	0af4bc23          	sd	a5,184(s1)
    80007b24:	00000797          	auipc	a5,0x0
    80007b28:	cec78793          	addi	a5,a5,-788 # 80007810 <consolewrite>
    80007b2c:	0cf4b023          	sd	a5,192(s1)
    80007b30:	00813483          	ld	s1,8(sp)
    80007b34:	02010113          	addi	sp,sp,32
    80007b38:	00008067          	ret

0000000080007b3c <console_read>:
    80007b3c:	ff010113          	addi	sp,sp,-16
    80007b40:	00813423          	sd	s0,8(sp)
    80007b44:	01010413          	addi	s0,sp,16
    80007b48:	00813403          	ld	s0,8(sp)
    80007b4c:	00005317          	auipc	t1,0x5
    80007b50:	54433303          	ld	t1,1348(t1) # 8000d090 <devsw+0x10>
    80007b54:	01010113          	addi	sp,sp,16
    80007b58:	00030067          	jr	t1

0000000080007b5c <console_write>:
    80007b5c:	ff010113          	addi	sp,sp,-16
    80007b60:	00813423          	sd	s0,8(sp)
    80007b64:	01010413          	addi	s0,sp,16
    80007b68:	00813403          	ld	s0,8(sp)
    80007b6c:	00005317          	auipc	t1,0x5
    80007b70:	52c33303          	ld	t1,1324(t1) # 8000d098 <devsw+0x18>
    80007b74:	01010113          	addi	sp,sp,16
    80007b78:	00030067          	jr	t1

0000000080007b7c <panic>:
    80007b7c:	fe010113          	addi	sp,sp,-32
    80007b80:	00113c23          	sd	ra,24(sp)
    80007b84:	00813823          	sd	s0,16(sp)
    80007b88:	00913423          	sd	s1,8(sp)
    80007b8c:	02010413          	addi	s0,sp,32
    80007b90:	00050493          	mv	s1,a0
    80007b94:	00002517          	auipc	a0,0x2
    80007b98:	b5c50513          	addi	a0,a0,-1188 # 800096f0 <CONSOLE_STATUS+0x6e0>
    80007b9c:	00005797          	auipc	a5,0x5
    80007ba0:	5807ae23          	sw	zero,1436(a5) # 8000d138 <pr+0x18>
    80007ba4:	00000097          	auipc	ra,0x0
    80007ba8:	034080e7          	jalr	52(ra) # 80007bd8 <__printf>
    80007bac:	00048513          	mv	a0,s1
    80007bb0:	00000097          	auipc	ra,0x0
    80007bb4:	028080e7          	jalr	40(ra) # 80007bd8 <__printf>
    80007bb8:	00002517          	auipc	a0,0x2
    80007bbc:	8c050513          	addi	a0,a0,-1856 # 80009478 <CONSOLE_STATUS+0x468>
    80007bc0:	00000097          	auipc	ra,0x0
    80007bc4:	018080e7          	jalr	24(ra) # 80007bd8 <__printf>
    80007bc8:	00100793          	li	a5,1
    80007bcc:	00004717          	auipc	a4,0x4
    80007bd0:	24f72e23          	sw	a5,604(a4) # 8000be28 <panicked>
    80007bd4:	0000006f          	j	80007bd4 <panic+0x58>

0000000080007bd8 <__printf>:
    80007bd8:	f3010113          	addi	sp,sp,-208
    80007bdc:	08813023          	sd	s0,128(sp)
    80007be0:	07313423          	sd	s3,104(sp)
    80007be4:	09010413          	addi	s0,sp,144
    80007be8:	05813023          	sd	s8,64(sp)
    80007bec:	08113423          	sd	ra,136(sp)
    80007bf0:	06913c23          	sd	s1,120(sp)
    80007bf4:	07213823          	sd	s2,112(sp)
    80007bf8:	07413023          	sd	s4,96(sp)
    80007bfc:	05513c23          	sd	s5,88(sp)
    80007c00:	05613823          	sd	s6,80(sp)
    80007c04:	05713423          	sd	s7,72(sp)
    80007c08:	03913c23          	sd	s9,56(sp)
    80007c0c:	03a13823          	sd	s10,48(sp)
    80007c10:	03b13423          	sd	s11,40(sp)
    80007c14:	00005317          	auipc	t1,0x5
    80007c18:	50c30313          	addi	t1,t1,1292 # 8000d120 <pr>
    80007c1c:	01832c03          	lw	s8,24(t1)
    80007c20:	00b43423          	sd	a1,8(s0)
    80007c24:	00c43823          	sd	a2,16(s0)
    80007c28:	00d43c23          	sd	a3,24(s0)
    80007c2c:	02e43023          	sd	a4,32(s0)
    80007c30:	02f43423          	sd	a5,40(s0)
    80007c34:	03043823          	sd	a6,48(s0)
    80007c38:	03143c23          	sd	a7,56(s0)
    80007c3c:	00050993          	mv	s3,a0
    80007c40:	4a0c1663          	bnez	s8,800080ec <__printf+0x514>
    80007c44:	60098c63          	beqz	s3,8000825c <__printf+0x684>
    80007c48:	0009c503          	lbu	a0,0(s3)
    80007c4c:	00840793          	addi	a5,s0,8
    80007c50:	f6f43c23          	sd	a5,-136(s0)
    80007c54:	00000493          	li	s1,0
    80007c58:	22050063          	beqz	a0,80007e78 <__printf+0x2a0>
    80007c5c:	00002a37          	lui	s4,0x2
    80007c60:	00018ab7          	lui	s5,0x18
    80007c64:	000f4b37          	lui	s6,0xf4
    80007c68:	00989bb7          	lui	s7,0x989
    80007c6c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007c70:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007c74:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007c78:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80007c7c:	00148c9b          	addiw	s9,s1,1
    80007c80:	02500793          	li	a5,37
    80007c84:	01998933          	add	s2,s3,s9
    80007c88:	38f51263          	bne	a0,a5,8000800c <__printf+0x434>
    80007c8c:	00094783          	lbu	a5,0(s2)
    80007c90:	00078c9b          	sext.w	s9,a5
    80007c94:	1e078263          	beqz	a5,80007e78 <__printf+0x2a0>
    80007c98:	0024849b          	addiw	s1,s1,2
    80007c9c:	07000713          	li	a4,112
    80007ca0:	00998933          	add	s2,s3,s1
    80007ca4:	38e78a63          	beq	a5,a4,80008038 <__printf+0x460>
    80007ca8:	20f76863          	bltu	a4,a5,80007eb8 <__printf+0x2e0>
    80007cac:	42a78863          	beq	a5,a0,800080dc <__printf+0x504>
    80007cb0:	06400713          	li	a4,100
    80007cb4:	40e79663          	bne	a5,a4,800080c0 <__printf+0x4e8>
    80007cb8:	f7843783          	ld	a5,-136(s0)
    80007cbc:	0007a603          	lw	a2,0(a5)
    80007cc0:	00878793          	addi	a5,a5,8
    80007cc4:	f6f43c23          	sd	a5,-136(s0)
    80007cc8:	42064a63          	bltz	a2,800080fc <__printf+0x524>
    80007ccc:	00a00713          	li	a4,10
    80007cd0:	02e677bb          	remuw	a5,a2,a4
    80007cd4:	00002d97          	auipc	s11,0x2
    80007cd8:	a44d8d93          	addi	s11,s11,-1468 # 80009718 <digits>
    80007cdc:	00900593          	li	a1,9
    80007ce0:	0006051b          	sext.w	a0,a2
    80007ce4:	00000c93          	li	s9,0
    80007ce8:	02079793          	slli	a5,a5,0x20
    80007cec:	0207d793          	srli	a5,a5,0x20
    80007cf0:	00fd87b3          	add	a5,s11,a5
    80007cf4:	0007c783          	lbu	a5,0(a5)
    80007cf8:	02e656bb          	divuw	a3,a2,a4
    80007cfc:	f8f40023          	sb	a5,-128(s0)
    80007d00:	14c5d863          	bge	a1,a2,80007e50 <__printf+0x278>
    80007d04:	06300593          	li	a1,99
    80007d08:	00100c93          	li	s9,1
    80007d0c:	02e6f7bb          	remuw	a5,a3,a4
    80007d10:	02079793          	slli	a5,a5,0x20
    80007d14:	0207d793          	srli	a5,a5,0x20
    80007d18:	00fd87b3          	add	a5,s11,a5
    80007d1c:	0007c783          	lbu	a5,0(a5)
    80007d20:	02e6d73b          	divuw	a4,a3,a4
    80007d24:	f8f400a3          	sb	a5,-127(s0)
    80007d28:	12a5f463          	bgeu	a1,a0,80007e50 <__printf+0x278>
    80007d2c:	00a00693          	li	a3,10
    80007d30:	00900593          	li	a1,9
    80007d34:	02d777bb          	remuw	a5,a4,a3
    80007d38:	02079793          	slli	a5,a5,0x20
    80007d3c:	0207d793          	srli	a5,a5,0x20
    80007d40:	00fd87b3          	add	a5,s11,a5
    80007d44:	0007c503          	lbu	a0,0(a5)
    80007d48:	02d757bb          	divuw	a5,a4,a3
    80007d4c:	f8a40123          	sb	a0,-126(s0)
    80007d50:	48e5f263          	bgeu	a1,a4,800081d4 <__printf+0x5fc>
    80007d54:	06300513          	li	a0,99
    80007d58:	02d7f5bb          	remuw	a1,a5,a3
    80007d5c:	02059593          	slli	a1,a1,0x20
    80007d60:	0205d593          	srli	a1,a1,0x20
    80007d64:	00bd85b3          	add	a1,s11,a1
    80007d68:	0005c583          	lbu	a1,0(a1)
    80007d6c:	02d7d7bb          	divuw	a5,a5,a3
    80007d70:	f8b401a3          	sb	a1,-125(s0)
    80007d74:	48e57263          	bgeu	a0,a4,800081f8 <__printf+0x620>
    80007d78:	3e700513          	li	a0,999
    80007d7c:	02d7f5bb          	remuw	a1,a5,a3
    80007d80:	02059593          	slli	a1,a1,0x20
    80007d84:	0205d593          	srli	a1,a1,0x20
    80007d88:	00bd85b3          	add	a1,s11,a1
    80007d8c:	0005c583          	lbu	a1,0(a1)
    80007d90:	02d7d7bb          	divuw	a5,a5,a3
    80007d94:	f8b40223          	sb	a1,-124(s0)
    80007d98:	46e57663          	bgeu	a0,a4,80008204 <__printf+0x62c>
    80007d9c:	02d7f5bb          	remuw	a1,a5,a3
    80007da0:	02059593          	slli	a1,a1,0x20
    80007da4:	0205d593          	srli	a1,a1,0x20
    80007da8:	00bd85b3          	add	a1,s11,a1
    80007dac:	0005c583          	lbu	a1,0(a1)
    80007db0:	02d7d7bb          	divuw	a5,a5,a3
    80007db4:	f8b402a3          	sb	a1,-123(s0)
    80007db8:	46ea7863          	bgeu	s4,a4,80008228 <__printf+0x650>
    80007dbc:	02d7f5bb          	remuw	a1,a5,a3
    80007dc0:	02059593          	slli	a1,a1,0x20
    80007dc4:	0205d593          	srli	a1,a1,0x20
    80007dc8:	00bd85b3          	add	a1,s11,a1
    80007dcc:	0005c583          	lbu	a1,0(a1)
    80007dd0:	02d7d7bb          	divuw	a5,a5,a3
    80007dd4:	f8b40323          	sb	a1,-122(s0)
    80007dd8:	3eeaf863          	bgeu	s5,a4,800081c8 <__printf+0x5f0>
    80007ddc:	02d7f5bb          	remuw	a1,a5,a3
    80007de0:	02059593          	slli	a1,a1,0x20
    80007de4:	0205d593          	srli	a1,a1,0x20
    80007de8:	00bd85b3          	add	a1,s11,a1
    80007dec:	0005c583          	lbu	a1,0(a1)
    80007df0:	02d7d7bb          	divuw	a5,a5,a3
    80007df4:	f8b403a3          	sb	a1,-121(s0)
    80007df8:	42eb7e63          	bgeu	s6,a4,80008234 <__printf+0x65c>
    80007dfc:	02d7f5bb          	remuw	a1,a5,a3
    80007e00:	02059593          	slli	a1,a1,0x20
    80007e04:	0205d593          	srli	a1,a1,0x20
    80007e08:	00bd85b3          	add	a1,s11,a1
    80007e0c:	0005c583          	lbu	a1,0(a1)
    80007e10:	02d7d7bb          	divuw	a5,a5,a3
    80007e14:	f8b40423          	sb	a1,-120(s0)
    80007e18:	42ebfc63          	bgeu	s7,a4,80008250 <__printf+0x678>
    80007e1c:	02079793          	slli	a5,a5,0x20
    80007e20:	0207d793          	srli	a5,a5,0x20
    80007e24:	00fd8db3          	add	s11,s11,a5
    80007e28:	000dc703          	lbu	a4,0(s11)
    80007e2c:	00a00793          	li	a5,10
    80007e30:	00900c93          	li	s9,9
    80007e34:	f8e404a3          	sb	a4,-119(s0)
    80007e38:	00065c63          	bgez	a2,80007e50 <__printf+0x278>
    80007e3c:	f9040713          	addi	a4,s0,-112
    80007e40:	00f70733          	add	a4,a4,a5
    80007e44:	02d00693          	li	a3,45
    80007e48:	fed70823          	sb	a3,-16(a4)
    80007e4c:	00078c93          	mv	s9,a5
    80007e50:	f8040793          	addi	a5,s0,-128
    80007e54:	01978cb3          	add	s9,a5,s9
    80007e58:	f7f40d13          	addi	s10,s0,-129
    80007e5c:	000cc503          	lbu	a0,0(s9)
    80007e60:	fffc8c93          	addi	s9,s9,-1
    80007e64:	00000097          	auipc	ra,0x0
    80007e68:	b90080e7          	jalr	-1136(ra) # 800079f4 <consputc>
    80007e6c:	ffac98e3          	bne	s9,s10,80007e5c <__printf+0x284>
    80007e70:	00094503          	lbu	a0,0(s2)
    80007e74:	e00514e3          	bnez	a0,80007c7c <__printf+0xa4>
    80007e78:	1a0c1663          	bnez	s8,80008024 <__printf+0x44c>
    80007e7c:	08813083          	ld	ra,136(sp)
    80007e80:	08013403          	ld	s0,128(sp)
    80007e84:	07813483          	ld	s1,120(sp)
    80007e88:	07013903          	ld	s2,112(sp)
    80007e8c:	06813983          	ld	s3,104(sp)
    80007e90:	06013a03          	ld	s4,96(sp)
    80007e94:	05813a83          	ld	s5,88(sp)
    80007e98:	05013b03          	ld	s6,80(sp)
    80007e9c:	04813b83          	ld	s7,72(sp)
    80007ea0:	04013c03          	ld	s8,64(sp)
    80007ea4:	03813c83          	ld	s9,56(sp)
    80007ea8:	03013d03          	ld	s10,48(sp)
    80007eac:	02813d83          	ld	s11,40(sp)
    80007eb0:	0d010113          	addi	sp,sp,208
    80007eb4:	00008067          	ret
    80007eb8:	07300713          	li	a4,115
    80007ebc:	1ce78a63          	beq	a5,a4,80008090 <__printf+0x4b8>
    80007ec0:	07800713          	li	a4,120
    80007ec4:	1ee79e63          	bne	a5,a4,800080c0 <__printf+0x4e8>
    80007ec8:	f7843783          	ld	a5,-136(s0)
    80007ecc:	0007a703          	lw	a4,0(a5)
    80007ed0:	00878793          	addi	a5,a5,8
    80007ed4:	f6f43c23          	sd	a5,-136(s0)
    80007ed8:	28074263          	bltz	a4,8000815c <__printf+0x584>
    80007edc:	00002d97          	auipc	s11,0x2
    80007ee0:	83cd8d93          	addi	s11,s11,-1988 # 80009718 <digits>
    80007ee4:	00f77793          	andi	a5,a4,15
    80007ee8:	00fd87b3          	add	a5,s11,a5
    80007eec:	0007c683          	lbu	a3,0(a5)
    80007ef0:	00f00613          	li	a2,15
    80007ef4:	0007079b          	sext.w	a5,a4
    80007ef8:	f8d40023          	sb	a3,-128(s0)
    80007efc:	0047559b          	srliw	a1,a4,0x4
    80007f00:	0047569b          	srliw	a3,a4,0x4
    80007f04:	00000c93          	li	s9,0
    80007f08:	0ee65063          	bge	a2,a4,80007fe8 <__printf+0x410>
    80007f0c:	00f6f693          	andi	a3,a3,15
    80007f10:	00dd86b3          	add	a3,s11,a3
    80007f14:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007f18:	0087d79b          	srliw	a5,a5,0x8
    80007f1c:	00100c93          	li	s9,1
    80007f20:	f8d400a3          	sb	a3,-127(s0)
    80007f24:	0cb67263          	bgeu	a2,a1,80007fe8 <__printf+0x410>
    80007f28:	00f7f693          	andi	a3,a5,15
    80007f2c:	00dd86b3          	add	a3,s11,a3
    80007f30:	0006c583          	lbu	a1,0(a3)
    80007f34:	00f00613          	li	a2,15
    80007f38:	0047d69b          	srliw	a3,a5,0x4
    80007f3c:	f8b40123          	sb	a1,-126(s0)
    80007f40:	0047d593          	srli	a1,a5,0x4
    80007f44:	28f67e63          	bgeu	a2,a5,800081e0 <__printf+0x608>
    80007f48:	00f6f693          	andi	a3,a3,15
    80007f4c:	00dd86b3          	add	a3,s11,a3
    80007f50:	0006c503          	lbu	a0,0(a3)
    80007f54:	0087d813          	srli	a6,a5,0x8
    80007f58:	0087d69b          	srliw	a3,a5,0x8
    80007f5c:	f8a401a3          	sb	a0,-125(s0)
    80007f60:	28b67663          	bgeu	a2,a1,800081ec <__printf+0x614>
    80007f64:	00f6f693          	andi	a3,a3,15
    80007f68:	00dd86b3          	add	a3,s11,a3
    80007f6c:	0006c583          	lbu	a1,0(a3)
    80007f70:	00c7d513          	srli	a0,a5,0xc
    80007f74:	00c7d69b          	srliw	a3,a5,0xc
    80007f78:	f8b40223          	sb	a1,-124(s0)
    80007f7c:	29067a63          	bgeu	a2,a6,80008210 <__printf+0x638>
    80007f80:	00f6f693          	andi	a3,a3,15
    80007f84:	00dd86b3          	add	a3,s11,a3
    80007f88:	0006c583          	lbu	a1,0(a3)
    80007f8c:	0107d813          	srli	a6,a5,0x10
    80007f90:	0107d69b          	srliw	a3,a5,0x10
    80007f94:	f8b402a3          	sb	a1,-123(s0)
    80007f98:	28a67263          	bgeu	a2,a0,8000821c <__printf+0x644>
    80007f9c:	00f6f693          	andi	a3,a3,15
    80007fa0:	00dd86b3          	add	a3,s11,a3
    80007fa4:	0006c683          	lbu	a3,0(a3)
    80007fa8:	0147d79b          	srliw	a5,a5,0x14
    80007fac:	f8d40323          	sb	a3,-122(s0)
    80007fb0:	21067663          	bgeu	a2,a6,800081bc <__printf+0x5e4>
    80007fb4:	02079793          	slli	a5,a5,0x20
    80007fb8:	0207d793          	srli	a5,a5,0x20
    80007fbc:	00fd8db3          	add	s11,s11,a5
    80007fc0:	000dc683          	lbu	a3,0(s11)
    80007fc4:	00800793          	li	a5,8
    80007fc8:	00700c93          	li	s9,7
    80007fcc:	f8d403a3          	sb	a3,-121(s0)
    80007fd0:	00075c63          	bgez	a4,80007fe8 <__printf+0x410>
    80007fd4:	f9040713          	addi	a4,s0,-112
    80007fd8:	00f70733          	add	a4,a4,a5
    80007fdc:	02d00693          	li	a3,45
    80007fe0:	fed70823          	sb	a3,-16(a4)
    80007fe4:	00078c93          	mv	s9,a5
    80007fe8:	f8040793          	addi	a5,s0,-128
    80007fec:	01978cb3          	add	s9,a5,s9
    80007ff0:	f7f40d13          	addi	s10,s0,-129
    80007ff4:	000cc503          	lbu	a0,0(s9)
    80007ff8:	fffc8c93          	addi	s9,s9,-1
    80007ffc:	00000097          	auipc	ra,0x0
    80008000:	9f8080e7          	jalr	-1544(ra) # 800079f4 <consputc>
    80008004:	ff9d18e3          	bne	s10,s9,80007ff4 <__printf+0x41c>
    80008008:	0100006f          	j	80008018 <__printf+0x440>
    8000800c:	00000097          	auipc	ra,0x0
    80008010:	9e8080e7          	jalr	-1560(ra) # 800079f4 <consputc>
    80008014:	000c8493          	mv	s1,s9
    80008018:	00094503          	lbu	a0,0(s2)
    8000801c:	c60510e3          	bnez	a0,80007c7c <__printf+0xa4>
    80008020:	e40c0ee3          	beqz	s8,80007e7c <__printf+0x2a4>
    80008024:	00005517          	auipc	a0,0x5
    80008028:	0fc50513          	addi	a0,a0,252 # 8000d120 <pr>
    8000802c:	00001097          	auipc	ra,0x1
    80008030:	94c080e7          	jalr	-1716(ra) # 80008978 <release>
    80008034:	e49ff06f          	j	80007e7c <__printf+0x2a4>
    80008038:	f7843783          	ld	a5,-136(s0)
    8000803c:	03000513          	li	a0,48
    80008040:	01000d13          	li	s10,16
    80008044:	00878713          	addi	a4,a5,8
    80008048:	0007bc83          	ld	s9,0(a5)
    8000804c:	f6e43c23          	sd	a4,-136(s0)
    80008050:	00000097          	auipc	ra,0x0
    80008054:	9a4080e7          	jalr	-1628(ra) # 800079f4 <consputc>
    80008058:	07800513          	li	a0,120
    8000805c:	00000097          	auipc	ra,0x0
    80008060:	998080e7          	jalr	-1640(ra) # 800079f4 <consputc>
    80008064:	00001d97          	auipc	s11,0x1
    80008068:	6b4d8d93          	addi	s11,s11,1716 # 80009718 <digits>
    8000806c:	03ccd793          	srli	a5,s9,0x3c
    80008070:	00fd87b3          	add	a5,s11,a5
    80008074:	0007c503          	lbu	a0,0(a5)
    80008078:	fffd0d1b          	addiw	s10,s10,-1
    8000807c:	004c9c93          	slli	s9,s9,0x4
    80008080:	00000097          	auipc	ra,0x0
    80008084:	974080e7          	jalr	-1676(ra) # 800079f4 <consputc>
    80008088:	fe0d12e3          	bnez	s10,8000806c <__printf+0x494>
    8000808c:	f8dff06f          	j	80008018 <__printf+0x440>
    80008090:	f7843783          	ld	a5,-136(s0)
    80008094:	0007bc83          	ld	s9,0(a5)
    80008098:	00878793          	addi	a5,a5,8
    8000809c:	f6f43c23          	sd	a5,-136(s0)
    800080a0:	000c9a63          	bnez	s9,800080b4 <__printf+0x4dc>
    800080a4:	1080006f          	j	800081ac <__printf+0x5d4>
    800080a8:	001c8c93          	addi	s9,s9,1
    800080ac:	00000097          	auipc	ra,0x0
    800080b0:	948080e7          	jalr	-1720(ra) # 800079f4 <consputc>
    800080b4:	000cc503          	lbu	a0,0(s9)
    800080b8:	fe0518e3          	bnez	a0,800080a8 <__printf+0x4d0>
    800080bc:	f5dff06f          	j	80008018 <__printf+0x440>
    800080c0:	02500513          	li	a0,37
    800080c4:	00000097          	auipc	ra,0x0
    800080c8:	930080e7          	jalr	-1744(ra) # 800079f4 <consputc>
    800080cc:	000c8513          	mv	a0,s9
    800080d0:	00000097          	auipc	ra,0x0
    800080d4:	924080e7          	jalr	-1756(ra) # 800079f4 <consputc>
    800080d8:	f41ff06f          	j	80008018 <__printf+0x440>
    800080dc:	02500513          	li	a0,37
    800080e0:	00000097          	auipc	ra,0x0
    800080e4:	914080e7          	jalr	-1772(ra) # 800079f4 <consputc>
    800080e8:	f31ff06f          	j	80008018 <__printf+0x440>
    800080ec:	00030513          	mv	a0,t1
    800080f0:	00000097          	auipc	ra,0x0
    800080f4:	7bc080e7          	jalr	1980(ra) # 800088ac <acquire>
    800080f8:	b4dff06f          	j	80007c44 <__printf+0x6c>
    800080fc:	40c0053b          	negw	a0,a2
    80008100:	00a00713          	li	a4,10
    80008104:	02e576bb          	remuw	a3,a0,a4
    80008108:	00001d97          	auipc	s11,0x1
    8000810c:	610d8d93          	addi	s11,s11,1552 # 80009718 <digits>
    80008110:	ff700593          	li	a1,-9
    80008114:	02069693          	slli	a3,a3,0x20
    80008118:	0206d693          	srli	a3,a3,0x20
    8000811c:	00dd86b3          	add	a3,s11,a3
    80008120:	0006c683          	lbu	a3,0(a3)
    80008124:	02e557bb          	divuw	a5,a0,a4
    80008128:	f8d40023          	sb	a3,-128(s0)
    8000812c:	10b65e63          	bge	a2,a1,80008248 <__printf+0x670>
    80008130:	06300593          	li	a1,99
    80008134:	02e7f6bb          	remuw	a3,a5,a4
    80008138:	02069693          	slli	a3,a3,0x20
    8000813c:	0206d693          	srli	a3,a3,0x20
    80008140:	00dd86b3          	add	a3,s11,a3
    80008144:	0006c683          	lbu	a3,0(a3)
    80008148:	02e7d73b          	divuw	a4,a5,a4
    8000814c:	00200793          	li	a5,2
    80008150:	f8d400a3          	sb	a3,-127(s0)
    80008154:	bca5ece3          	bltu	a1,a0,80007d2c <__printf+0x154>
    80008158:	ce5ff06f          	j	80007e3c <__printf+0x264>
    8000815c:	40e007bb          	negw	a5,a4
    80008160:	00001d97          	auipc	s11,0x1
    80008164:	5b8d8d93          	addi	s11,s11,1464 # 80009718 <digits>
    80008168:	00f7f693          	andi	a3,a5,15
    8000816c:	00dd86b3          	add	a3,s11,a3
    80008170:	0006c583          	lbu	a1,0(a3)
    80008174:	ff100613          	li	a2,-15
    80008178:	0047d69b          	srliw	a3,a5,0x4
    8000817c:	f8b40023          	sb	a1,-128(s0)
    80008180:	0047d59b          	srliw	a1,a5,0x4
    80008184:	0ac75e63          	bge	a4,a2,80008240 <__printf+0x668>
    80008188:	00f6f693          	andi	a3,a3,15
    8000818c:	00dd86b3          	add	a3,s11,a3
    80008190:	0006c603          	lbu	a2,0(a3)
    80008194:	00f00693          	li	a3,15
    80008198:	0087d79b          	srliw	a5,a5,0x8
    8000819c:	f8c400a3          	sb	a2,-127(s0)
    800081a0:	d8b6e4e3          	bltu	a3,a1,80007f28 <__printf+0x350>
    800081a4:	00200793          	li	a5,2
    800081a8:	e2dff06f          	j	80007fd4 <__printf+0x3fc>
    800081ac:	00001c97          	auipc	s9,0x1
    800081b0:	54cc8c93          	addi	s9,s9,1356 # 800096f8 <CONSOLE_STATUS+0x6e8>
    800081b4:	02800513          	li	a0,40
    800081b8:	ef1ff06f          	j	800080a8 <__printf+0x4d0>
    800081bc:	00700793          	li	a5,7
    800081c0:	00600c93          	li	s9,6
    800081c4:	e0dff06f          	j	80007fd0 <__printf+0x3f8>
    800081c8:	00700793          	li	a5,7
    800081cc:	00600c93          	li	s9,6
    800081d0:	c69ff06f          	j	80007e38 <__printf+0x260>
    800081d4:	00300793          	li	a5,3
    800081d8:	00200c93          	li	s9,2
    800081dc:	c5dff06f          	j	80007e38 <__printf+0x260>
    800081e0:	00300793          	li	a5,3
    800081e4:	00200c93          	li	s9,2
    800081e8:	de9ff06f          	j	80007fd0 <__printf+0x3f8>
    800081ec:	00400793          	li	a5,4
    800081f0:	00300c93          	li	s9,3
    800081f4:	dddff06f          	j	80007fd0 <__printf+0x3f8>
    800081f8:	00400793          	li	a5,4
    800081fc:	00300c93          	li	s9,3
    80008200:	c39ff06f          	j	80007e38 <__printf+0x260>
    80008204:	00500793          	li	a5,5
    80008208:	00400c93          	li	s9,4
    8000820c:	c2dff06f          	j	80007e38 <__printf+0x260>
    80008210:	00500793          	li	a5,5
    80008214:	00400c93          	li	s9,4
    80008218:	db9ff06f          	j	80007fd0 <__printf+0x3f8>
    8000821c:	00600793          	li	a5,6
    80008220:	00500c93          	li	s9,5
    80008224:	dadff06f          	j	80007fd0 <__printf+0x3f8>
    80008228:	00600793          	li	a5,6
    8000822c:	00500c93          	li	s9,5
    80008230:	c09ff06f          	j	80007e38 <__printf+0x260>
    80008234:	00800793          	li	a5,8
    80008238:	00700c93          	li	s9,7
    8000823c:	bfdff06f          	j	80007e38 <__printf+0x260>
    80008240:	00100793          	li	a5,1
    80008244:	d91ff06f          	j	80007fd4 <__printf+0x3fc>
    80008248:	00100793          	li	a5,1
    8000824c:	bf1ff06f          	j	80007e3c <__printf+0x264>
    80008250:	00900793          	li	a5,9
    80008254:	00800c93          	li	s9,8
    80008258:	be1ff06f          	j	80007e38 <__printf+0x260>
    8000825c:	00001517          	auipc	a0,0x1
    80008260:	4a450513          	addi	a0,a0,1188 # 80009700 <CONSOLE_STATUS+0x6f0>
    80008264:	00000097          	auipc	ra,0x0
    80008268:	918080e7          	jalr	-1768(ra) # 80007b7c <panic>

000000008000826c <printfinit>:
    8000826c:	fe010113          	addi	sp,sp,-32
    80008270:	00813823          	sd	s0,16(sp)
    80008274:	00913423          	sd	s1,8(sp)
    80008278:	00113c23          	sd	ra,24(sp)
    8000827c:	02010413          	addi	s0,sp,32
    80008280:	00005497          	auipc	s1,0x5
    80008284:	ea048493          	addi	s1,s1,-352 # 8000d120 <pr>
    80008288:	00048513          	mv	a0,s1
    8000828c:	00001597          	auipc	a1,0x1
    80008290:	48458593          	addi	a1,a1,1156 # 80009710 <CONSOLE_STATUS+0x700>
    80008294:	00000097          	auipc	ra,0x0
    80008298:	5f4080e7          	jalr	1524(ra) # 80008888 <initlock>
    8000829c:	01813083          	ld	ra,24(sp)
    800082a0:	01013403          	ld	s0,16(sp)
    800082a4:	0004ac23          	sw	zero,24(s1)
    800082a8:	00813483          	ld	s1,8(sp)
    800082ac:	02010113          	addi	sp,sp,32
    800082b0:	00008067          	ret

00000000800082b4 <uartinit>:
    800082b4:	ff010113          	addi	sp,sp,-16
    800082b8:	00813423          	sd	s0,8(sp)
    800082bc:	01010413          	addi	s0,sp,16
    800082c0:	100007b7          	lui	a5,0x10000
    800082c4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800082c8:	f8000713          	li	a4,-128
    800082cc:	00e781a3          	sb	a4,3(a5)
    800082d0:	00300713          	li	a4,3
    800082d4:	00e78023          	sb	a4,0(a5)
    800082d8:	000780a3          	sb	zero,1(a5)
    800082dc:	00e781a3          	sb	a4,3(a5)
    800082e0:	00700693          	li	a3,7
    800082e4:	00d78123          	sb	a3,2(a5)
    800082e8:	00e780a3          	sb	a4,1(a5)
    800082ec:	00813403          	ld	s0,8(sp)
    800082f0:	01010113          	addi	sp,sp,16
    800082f4:	00008067          	ret

00000000800082f8 <uartputc>:
    800082f8:	00004797          	auipc	a5,0x4
    800082fc:	b307a783          	lw	a5,-1232(a5) # 8000be28 <panicked>
    80008300:	00078463          	beqz	a5,80008308 <uartputc+0x10>
    80008304:	0000006f          	j	80008304 <uartputc+0xc>
    80008308:	fd010113          	addi	sp,sp,-48
    8000830c:	02813023          	sd	s0,32(sp)
    80008310:	00913c23          	sd	s1,24(sp)
    80008314:	01213823          	sd	s2,16(sp)
    80008318:	01313423          	sd	s3,8(sp)
    8000831c:	02113423          	sd	ra,40(sp)
    80008320:	03010413          	addi	s0,sp,48
    80008324:	00004917          	auipc	s2,0x4
    80008328:	b0c90913          	addi	s2,s2,-1268 # 8000be30 <uart_tx_r>
    8000832c:	00093783          	ld	a5,0(s2)
    80008330:	00004497          	auipc	s1,0x4
    80008334:	b0848493          	addi	s1,s1,-1272 # 8000be38 <uart_tx_w>
    80008338:	0004b703          	ld	a4,0(s1)
    8000833c:	02078693          	addi	a3,a5,32
    80008340:	00050993          	mv	s3,a0
    80008344:	02e69c63          	bne	a3,a4,8000837c <uartputc+0x84>
    80008348:	00001097          	auipc	ra,0x1
    8000834c:	834080e7          	jalr	-1996(ra) # 80008b7c <push_on>
    80008350:	00093783          	ld	a5,0(s2)
    80008354:	0004b703          	ld	a4,0(s1)
    80008358:	02078793          	addi	a5,a5,32
    8000835c:	00e79463          	bne	a5,a4,80008364 <uartputc+0x6c>
    80008360:	0000006f          	j	80008360 <uartputc+0x68>
    80008364:	00001097          	auipc	ra,0x1
    80008368:	88c080e7          	jalr	-1908(ra) # 80008bf0 <pop_on>
    8000836c:	00093783          	ld	a5,0(s2)
    80008370:	0004b703          	ld	a4,0(s1)
    80008374:	02078693          	addi	a3,a5,32
    80008378:	fce688e3          	beq	a3,a4,80008348 <uartputc+0x50>
    8000837c:	01f77693          	andi	a3,a4,31
    80008380:	00005597          	auipc	a1,0x5
    80008384:	dc058593          	addi	a1,a1,-576 # 8000d140 <uart_tx_buf>
    80008388:	00d586b3          	add	a3,a1,a3
    8000838c:	00170713          	addi	a4,a4,1
    80008390:	01368023          	sb	s3,0(a3)
    80008394:	00e4b023          	sd	a4,0(s1)
    80008398:	10000637          	lui	a2,0x10000
    8000839c:	02f71063          	bne	a4,a5,800083bc <uartputc+0xc4>
    800083a0:	0340006f          	j	800083d4 <uartputc+0xdc>
    800083a4:	00074703          	lbu	a4,0(a4)
    800083a8:	00f93023          	sd	a5,0(s2)
    800083ac:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800083b0:	00093783          	ld	a5,0(s2)
    800083b4:	0004b703          	ld	a4,0(s1)
    800083b8:	00f70e63          	beq	a4,a5,800083d4 <uartputc+0xdc>
    800083bc:	00564683          	lbu	a3,5(a2)
    800083c0:	01f7f713          	andi	a4,a5,31
    800083c4:	00e58733          	add	a4,a1,a4
    800083c8:	0206f693          	andi	a3,a3,32
    800083cc:	00178793          	addi	a5,a5,1
    800083d0:	fc069ae3          	bnez	a3,800083a4 <uartputc+0xac>
    800083d4:	02813083          	ld	ra,40(sp)
    800083d8:	02013403          	ld	s0,32(sp)
    800083dc:	01813483          	ld	s1,24(sp)
    800083e0:	01013903          	ld	s2,16(sp)
    800083e4:	00813983          	ld	s3,8(sp)
    800083e8:	03010113          	addi	sp,sp,48
    800083ec:	00008067          	ret

00000000800083f0 <uartputc_sync>:
    800083f0:	ff010113          	addi	sp,sp,-16
    800083f4:	00813423          	sd	s0,8(sp)
    800083f8:	01010413          	addi	s0,sp,16
    800083fc:	00004717          	auipc	a4,0x4
    80008400:	a2c72703          	lw	a4,-1492(a4) # 8000be28 <panicked>
    80008404:	02071663          	bnez	a4,80008430 <uartputc_sync+0x40>
    80008408:	00050793          	mv	a5,a0
    8000840c:	100006b7          	lui	a3,0x10000
    80008410:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80008414:	02077713          	andi	a4,a4,32
    80008418:	fe070ce3          	beqz	a4,80008410 <uartputc_sync+0x20>
    8000841c:	0ff7f793          	andi	a5,a5,255
    80008420:	00f68023          	sb	a5,0(a3)
    80008424:	00813403          	ld	s0,8(sp)
    80008428:	01010113          	addi	sp,sp,16
    8000842c:	00008067          	ret
    80008430:	0000006f          	j	80008430 <uartputc_sync+0x40>

0000000080008434 <uartstart>:
    80008434:	ff010113          	addi	sp,sp,-16
    80008438:	00813423          	sd	s0,8(sp)
    8000843c:	01010413          	addi	s0,sp,16
    80008440:	00004617          	auipc	a2,0x4
    80008444:	9f060613          	addi	a2,a2,-1552 # 8000be30 <uart_tx_r>
    80008448:	00004517          	auipc	a0,0x4
    8000844c:	9f050513          	addi	a0,a0,-1552 # 8000be38 <uart_tx_w>
    80008450:	00063783          	ld	a5,0(a2)
    80008454:	00053703          	ld	a4,0(a0)
    80008458:	04f70263          	beq	a4,a5,8000849c <uartstart+0x68>
    8000845c:	100005b7          	lui	a1,0x10000
    80008460:	00005817          	auipc	a6,0x5
    80008464:	ce080813          	addi	a6,a6,-800 # 8000d140 <uart_tx_buf>
    80008468:	01c0006f          	j	80008484 <uartstart+0x50>
    8000846c:	0006c703          	lbu	a4,0(a3)
    80008470:	00f63023          	sd	a5,0(a2)
    80008474:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80008478:	00063783          	ld	a5,0(a2)
    8000847c:	00053703          	ld	a4,0(a0)
    80008480:	00f70e63          	beq	a4,a5,8000849c <uartstart+0x68>
    80008484:	01f7f713          	andi	a4,a5,31
    80008488:	00e806b3          	add	a3,a6,a4
    8000848c:	0055c703          	lbu	a4,5(a1)
    80008490:	00178793          	addi	a5,a5,1
    80008494:	02077713          	andi	a4,a4,32
    80008498:	fc071ae3          	bnez	a4,8000846c <uartstart+0x38>
    8000849c:	00813403          	ld	s0,8(sp)
    800084a0:	01010113          	addi	sp,sp,16
    800084a4:	00008067          	ret

00000000800084a8 <uartgetc>:
    800084a8:	ff010113          	addi	sp,sp,-16
    800084ac:	00813423          	sd	s0,8(sp)
    800084b0:	01010413          	addi	s0,sp,16
    800084b4:	10000737          	lui	a4,0x10000
    800084b8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800084bc:	0017f793          	andi	a5,a5,1
    800084c0:	00078c63          	beqz	a5,800084d8 <uartgetc+0x30>
    800084c4:	00074503          	lbu	a0,0(a4)
    800084c8:	0ff57513          	andi	a0,a0,255
    800084cc:	00813403          	ld	s0,8(sp)
    800084d0:	01010113          	addi	sp,sp,16
    800084d4:	00008067          	ret
    800084d8:	fff00513          	li	a0,-1
    800084dc:	ff1ff06f          	j	800084cc <uartgetc+0x24>

00000000800084e0 <uartintr>:
    800084e0:	100007b7          	lui	a5,0x10000
    800084e4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800084e8:	0017f793          	andi	a5,a5,1
    800084ec:	0a078463          	beqz	a5,80008594 <uartintr+0xb4>
    800084f0:	fe010113          	addi	sp,sp,-32
    800084f4:	00813823          	sd	s0,16(sp)
    800084f8:	00913423          	sd	s1,8(sp)
    800084fc:	00113c23          	sd	ra,24(sp)
    80008500:	02010413          	addi	s0,sp,32
    80008504:	100004b7          	lui	s1,0x10000
    80008508:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000850c:	0ff57513          	andi	a0,a0,255
    80008510:	fffff097          	auipc	ra,0xfffff
    80008514:	534080e7          	jalr	1332(ra) # 80007a44 <consoleintr>
    80008518:	0054c783          	lbu	a5,5(s1)
    8000851c:	0017f793          	andi	a5,a5,1
    80008520:	fe0794e3          	bnez	a5,80008508 <uartintr+0x28>
    80008524:	00004617          	auipc	a2,0x4
    80008528:	90c60613          	addi	a2,a2,-1780 # 8000be30 <uart_tx_r>
    8000852c:	00004517          	auipc	a0,0x4
    80008530:	90c50513          	addi	a0,a0,-1780 # 8000be38 <uart_tx_w>
    80008534:	00063783          	ld	a5,0(a2)
    80008538:	00053703          	ld	a4,0(a0)
    8000853c:	04f70263          	beq	a4,a5,80008580 <uartintr+0xa0>
    80008540:	100005b7          	lui	a1,0x10000
    80008544:	00005817          	auipc	a6,0x5
    80008548:	bfc80813          	addi	a6,a6,-1028 # 8000d140 <uart_tx_buf>
    8000854c:	01c0006f          	j	80008568 <uartintr+0x88>
    80008550:	0006c703          	lbu	a4,0(a3)
    80008554:	00f63023          	sd	a5,0(a2)
    80008558:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000855c:	00063783          	ld	a5,0(a2)
    80008560:	00053703          	ld	a4,0(a0)
    80008564:	00f70e63          	beq	a4,a5,80008580 <uartintr+0xa0>
    80008568:	01f7f713          	andi	a4,a5,31
    8000856c:	00e806b3          	add	a3,a6,a4
    80008570:	0055c703          	lbu	a4,5(a1)
    80008574:	00178793          	addi	a5,a5,1
    80008578:	02077713          	andi	a4,a4,32
    8000857c:	fc071ae3          	bnez	a4,80008550 <uartintr+0x70>
    80008580:	01813083          	ld	ra,24(sp)
    80008584:	01013403          	ld	s0,16(sp)
    80008588:	00813483          	ld	s1,8(sp)
    8000858c:	02010113          	addi	sp,sp,32
    80008590:	00008067          	ret
    80008594:	00004617          	auipc	a2,0x4
    80008598:	89c60613          	addi	a2,a2,-1892 # 8000be30 <uart_tx_r>
    8000859c:	00004517          	auipc	a0,0x4
    800085a0:	89c50513          	addi	a0,a0,-1892 # 8000be38 <uart_tx_w>
    800085a4:	00063783          	ld	a5,0(a2)
    800085a8:	00053703          	ld	a4,0(a0)
    800085ac:	04f70263          	beq	a4,a5,800085f0 <uartintr+0x110>
    800085b0:	100005b7          	lui	a1,0x10000
    800085b4:	00005817          	auipc	a6,0x5
    800085b8:	b8c80813          	addi	a6,a6,-1140 # 8000d140 <uart_tx_buf>
    800085bc:	01c0006f          	j	800085d8 <uartintr+0xf8>
    800085c0:	0006c703          	lbu	a4,0(a3)
    800085c4:	00f63023          	sd	a5,0(a2)
    800085c8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800085cc:	00063783          	ld	a5,0(a2)
    800085d0:	00053703          	ld	a4,0(a0)
    800085d4:	02f70063          	beq	a4,a5,800085f4 <uartintr+0x114>
    800085d8:	01f7f713          	andi	a4,a5,31
    800085dc:	00e806b3          	add	a3,a6,a4
    800085e0:	0055c703          	lbu	a4,5(a1)
    800085e4:	00178793          	addi	a5,a5,1
    800085e8:	02077713          	andi	a4,a4,32
    800085ec:	fc071ae3          	bnez	a4,800085c0 <uartintr+0xe0>
    800085f0:	00008067          	ret
    800085f4:	00008067          	ret

00000000800085f8 <kinit>:
    800085f8:	fc010113          	addi	sp,sp,-64
    800085fc:	02913423          	sd	s1,40(sp)
    80008600:	fffff7b7          	lui	a5,0xfffff
    80008604:	00006497          	auipc	s1,0x6
    80008608:	b5b48493          	addi	s1,s1,-1189 # 8000e15f <end+0xfff>
    8000860c:	02813823          	sd	s0,48(sp)
    80008610:	01313c23          	sd	s3,24(sp)
    80008614:	00f4f4b3          	and	s1,s1,a5
    80008618:	02113c23          	sd	ra,56(sp)
    8000861c:	03213023          	sd	s2,32(sp)
    80008620:	01413823          	sd	s4,16(sp)
    80008624:	01513423          	sd	s5,8(sp)
    80008628:	04010413          	addi	s0,sp,64
    8000862c:	000017b7          	lui	a5,0x1
    80008630:	01100993          	li	s3,17
    80008634:	00f487b3          	add	a5,s1,a5
    80008638:	01b99993          	slli	s3,s3,0x1b
    8000863c:	06f9e063          	bltu	s3,a5,8000869c <kinit+0xa4>
    80008640:	00005a97          	auipc	s5,0x5
    80008644:	b20a8a93          	addi	s5,s5,-1248 # 8000d160 <end>
    80008648:	0754ec63          	bltu	s1,s5,800086c0 <kinit+0xc8>
    8000864c:	0734fa63          	bgeu	s1,s3,800086c0 <kinit+0xc8>
    80008650:	00088a37          	lui	s4,0x88
    80008654:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80008658:	00003917          	auipc	s2,0x3
    8000865c:	7e890913          	addi	s2,s2,2024 # 8000be40 <kmem>
    80008660:	00ca1a13          	slli	s4,s4,0xc
    80008664:	0140006f          	j	80008678 <kinit+0x80>
    80008668:	000017b7          	lui	a5,0x1
    8000866c:	00f484b3          	add	s1,s1,a5
    80008670:	0554e863          	bltu	s1,s5,800086c0 <kinit+0xc8>
    80008674:	0534f663          	bgeu	s1,s3,800086c0 <kinit+0xc8>
    80008678:	00001637          	lui	a2,0x1
    8000867c:	00100593          	li	a1,1
    80008680:	00048513          	mv	a0,s1
    80008684:	00000097          	auipc	ra,0x0
    80008688:	5e4080e7          	jalr	1508(ra) # 80008c68 <__memset>
    8000868c:	00093783          	ld	a5,0(s2)
    80008690:	00f4b023          	sd	a5,0(s1)
    80008694:	00993023          	sd	s1,0(s2)
    80008698:	fd4498e3          	bne	s1,s4,80008668 <kinit+0x70>
    8000869c:	03813083          	ld	ra,56(sp)
    800086a0:	03013403          	ld	s0,48(sp)
    800086a4:	02813483          	ld	s1,40(sp)
    800086a8:	02013903          	ld	s2,32(sp)
    800086ac:	01813983          	ld	s3,24(sp)
    800086b0:	01013a03          	ld	s4,16(sp)
    800086b4:	00813a83          	ld	s5,8(sp)
    800086b8:	04010113          	addi	sp,sp,64
    800086bc:	00008067          	ret
    800086c0:	00001517          	auipc	a0,0x1
    800086c4:	07050513          	addi	a0,a0,112 # 80009730 <digits+0x18>
    800086c8:	fffff097          	auipc	ra,0xfffff
    800086cc:	4b4080e7          	jalr	1204(ra) # 80007b7c <panic>

00000000800086d0 <freerange>:
    800086d0:	fc010113          	addi	sp,sp,-64
    800086d4:	000017b7          	lui	a5,0x1
    800086d8:	02913423          	sd	s1,40(sp)
    800086dc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800086e0:	009504b3          	add	s1,a0,s1
    800086e4:	fffff537          	lui	a0,0xfffff
    800086e8:	02813823          	sd	s0,48(sp)
    800086ec:	02113c23          	sd	ra,56(sp)
    800086f0:	03213023          	sd	s2,32(sp)
    800086f4:	01313c23          	sd	s3,24(sp)
    800086f8:	01413823          	sd	s4,16(sp)
    800086fc:	01513423          	sd	s5,8(sp)
    80008700:	01613023          	sd	s6,0(sp)
    80008704:	04010413          	addi	s0,sp,64
    80008708:	00a4f4b3          	and	s1,s1,a0
    8000870c:	00f487b3          	add	a5,s1,a5
    80008710:	06f5e463          	bltu	a1,a5,80008778 <freerange+0xa8>
    80008714:	00005a97          	auipc	s5,0x5
    80008718:	a4ca8a93          	addi	s5,s5,-1460 # 8000d160 <end>
    8000871c:	0954e263          	bltu	s1,s5,800087a0 <freerange+0xd0>
    80008720:	01100993          	li	s3,17
    80008724:	01b99993          	slli	s3,s3,0x1b
    80008728:	0734fc63          	bgeu	s1,s3,800087a0 <freerange+0xd0>
    8000872c:	00058a13          	mv	s4,a1
    80008730:	00003917          	auipc	s2,0x3
    80008734:	71090913          	addi	s2,s2,1808 # 8000be40 <kmem>
    80008738:	00002b37          	lui	s6,0x2
    8000873c:	0140006f          	j	80008750 <freerange+0x80>
    80008740:	000017b7          	lui	a5,0x1
    80008744:	00f484b3          	add	s1,s1,a5
    80008748:	0554ec63          	bltu	s1,s5,800087a0 <freerange+0xd0>
    8000874c:	0534fa63          	bgeu	s1,s3,800087a0 <freerange+0xd0>
    80008750:	00001637          	lui	a2,0x1
    80008754:	00100593          	li	a1,1
    80008758:	00048513          	mv	a0,s1
    8000875c:	00000097          	auipc	ra,0x0
    80008760:	50c080e7          	jalr	1292(ra) # 80008c68 <__memset>
    80008764:	00093703          	ld	a4,0(s2)
    80008768:	016487b3          	add	a5,s1,s6
    8000876c:	00e4b023          	sd	a4,0(s1)
    80008770:	00993023          	sd	s1,0(s2)
    80008774:	fcfa76e3          	bgeu	s4,a5,80008740 <freerange+0x70>
    80008778:	03813083          	ld	ra,56(sp)
    8000877c:	03013403          	ld	s0,48(sp)
    80008780:	02813483          	ld	s1,40(sp)
    80008784:	02013903          	ld	s2,32(sp)
    80008788:	01813983          	ld	s3,24(sp)
    8000878c:	01013a03          	ld	s4,16(sp)
    80008790:	00813a83          	ld	s5,8(sp)
    80008794:	00013b03          	ld	s6,0(sp)
    80008798:	04010113          	addi	sp,sp,64
    8000879c:	00008067          	ret
    800087a0:	00001517          	auipc	a0,0x1
    800087a4:	f9050513          	addi	a0,a0,-112 # 80009730 <digits+0x18>
    800087a8:	fffff097          	auipc	ra,0xfffff
    800087ac:	3d4080e7          	jalr	980(ra) # 80007b7c <panic>

00000000800087b0 <kfree>:
    800087b0:	fe010113          	addi	sp,sp,-32
    800087b4:	00813823          	sd	s0,16(sp)
    800087b8:	00113c23          	sd	ra,24(sp)
    800087bc:	00913423          	sd	s1,8(sp)
    800087c0:	02010413          	addi	s0,sp,32
    800087c4:	03451793          	slli	a5,a0,0x34
    800087c8:	04079c63          	bnez	a5,80008820 <kfree+0x70>
    800087cc:	00005797          	auipc	a5,0x5
    800087d0:	99478793          	addi	a5,a5,-1644 # 8000d160 <end>
    800087d4:	00050493          	mv	s1,a0
    800087d8:	04f56463          	bltu	a0,a5,80008820 <kfree+0x70>
    800087dc:	01100793          	li	a5,17
    800087e0:	01b79793          	slli	a5,a5,0x1b
    800087e4:	02f57e63          	bgeu	a0,a5,80008820 <kfree+0x70>
    800087e8:	00001637          	lui	a2,0x1
    800087ec:	00100593          	li	a1,1
    800087f0:	00000097          	auipc	ra,0x0
    800087f4:	478080e7          	jalr	1144(ra) # 80008c68 <__memset>
    800087f8:	00003797          	auipc	a5,0x3
    800087fc:	64878793          	addi	a5,a5,1608 # 8000be40 <kmem>
    80008800:	0007b703          	ld	a4,0(a5)
    80008804:	01813083          	ld	ra,24(sp)
    80008808:	01013403          	ld	s0,16(sp)
    8000880c:	00e4b023          	sd	a4,0(s1)
    80008810:	0097b023          	sd	s1,0(a5)
    80008814:	00813483          	ld	s1,8(sp)
    80008818:	02010113          	addi	sp,sp,32
    8000881c:	00008067          	ret
    80008820:	00001517          	auipc	a0,0x1
    80008824:	f1050513          	addi	a0,a0,-240 # 80009730 <digits+0x18>
    80008828:	fffff097          	auipc	ra,0xfffff
    8000882c:	354080e7          	jalr	852(ra) # 80007b7c <panic>

0000000080008830 <kalloc>:
    80008830:	fe010113          	addi	sp,sp,-32
    80008834:	00813823          	sd	s0,16(sp)
    80008838:	00913423          	sd	s1,8(sp)
    8000883c:	00113c23          	sd	ra,24(sp)
    80008840:	02010413          	addi	s0,sp,32
    80008844:	00003797          	auipc	a5,0x3
    80008848:	5fc78793          	addi	a5,a5,1532 # 8000be40 <kmem>
    8000884c:	0007b483          	ld	s1,0(a5)
    80008850:	02048063          	beqz	s1,80008870 <kalloc+0x40>
    80008854:	0004b703          	ld	a4,0(s1)
    80008858:	00001637          	lui	a2,0x1
    8000885c:	00500593          	li	a1,5
    80008860:	00048513          	mv	a0,s1
    80008864:	00e7b023          	sd	a4,0(a5)
    80008868:	00000097          	auipc	ra,0x0
    8000886c:	400080e7          	jalr	1024(ra) # 80008c68 <__memset>
    80008870:	01813083          	ld	ra,24(sp)
    80008874:	01013403          	ld	s0,16(sp)
    80008878:	00048513          	mv	a0,s1
    8000887c:	00813483          	ld	s1,8(sp)
    80008880:	02010113          	addi	sp,sp,32
    80008884:	00008067          	ret

0000000080008888 <initlock>:
    80008888:	ff010113          	addi	sp,sp,-16
    8000888c:	00813423          	sd	s0,8(sp)
    80008890:	01010413          	addi	s0,sp,16
    80008894:	00813403          	ld	s0,8(sp)
    80008898:	00b53423          	sd	a1,8(a0)
    8000889c:	00052023          	sw	zero,0(a0)
    800088a0:	00053823          	sd	zero,16(a0)
    800088a4:	01010113          	addi	sp,sp,16
    800088a8:	00008067          	ret

00000000800088ac <acquire>:
    800088ac:	fe010113          	addi	sp,sp,-32
    800088b0:	00813823          	sd	s0,16(sp)
    800088b4:	00913423          	sd	s1,8(sp)
    800088b8:	00113c23          	sd	ra,24(sp)
    800088bc:	01213023          	sd	s2,0(sp)
    800088c0:	02010413          	addi	s0,sp,32
    800088c4:	00050493          	mv	s1,a0
    800088c8:	10002973          	csrr	s2,sstatus
    800088cc:	100027f3          	csrr	a5,sstatus
    800088d0:	ffd7f793          	andi	a5,a5,-3
    800088d4:	10079073          	csrw	sstatus,a5
    800088d8:	fffff097          	auipc	ra,0xfffff
    800088dc:	8e0080e7          	jalr	-1824(ra) # 800071b8 <mycpu>
    800088e0:	07852783          	lw	a5,120(a0)
    800088e4:	06078e63          	beqz	a5,80008960 <acquire+0xb4>
    800088e8:	fffff097          	auipc	ra,0xfffff
    800088ec:	8d0080e7          	jalr	-1840(ra) # 800071b8 <mycpu>
    800088f0:	07852783          	lw	a5,120(a0)
    800088f4:	0004a703          	lw	a4,0(s1)
    800088f8:	0017879b          	addiw	a5,a5,1
    800088fc:	06f52c23          	sw	a5,120(a0)
    80008900:	04071063          	bnez	a4,80008940 <acquire+0x94>
    80008904:	00100713          	li	a4,1
    80008908:	00070793          	mv	a5,a4
    8000890c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008910:	0007879b          	sext.w	a5,a5
    80008914:	fe079ae3          	bnez	a5,80008908 <acquire+0x5c>
    80008918:	0ff0000f          	fence
    8000891c:	fffff097          	auipc	ra,0xfffff
    80008920:	89c080e7          	jalr	-1892(ra) # 800071b8 <mycpu>
    80008924:	01813083          	ld	ra,24(sp)
    80008928:	01013403          	ld	s0,16(sp)
    8000892c:	00a4b823          	sd	a0,16(s1)
    80008930:	00013903          	ld	s2,0(sp)
    80008934:	00813483          	ld	s1,8(sp)
    80008938:	02010113          	addi	sp,sp,32
    8000893c:	00008067          	ret
    80008940:	0104b903          	ld	s2,16(s1)
    80008944:	fffff097          	auipc	ra,0xfffff
    80008948:	874080e7          	jalr	-1932(ra) # 800071b8 <mycpu>
    8000894c:	faa91ce3          	bne	s2,a0,80008904 <acquire+0x58>
    80008950:	00001517          	auipc	a0,0x1
    80008954:	de850513          	addi	a0,a0,-536 # 80009738 <digits+0x20>
    80008958:	fffff097          	auipc	ra,0xfffff
    8000895c:	224080e7          	jalr	548(ra) # 80007b7c <panic>
    80008960:	00195913          	srli	s2,s2,0x1
    80008964:	fffff097          	auipc	ra,0xfffff
    80008968:	854080e7          	jalr	-1964(ra) # 800071b8 <mycpu>
    8000896c:	00197913          	andi	s2,s2,1
    80008970:	07252e23          	sw	s2,124(a0)
    80008974:	f75ff06f          	j	800088e8 <acquire+0x3c>

0000000080008978 <release>:
    80008978:	fe010113          	addi	sp,sp,-32
    8000897c:	00813823          	sd	s0,16(sp)
    80008980:	00113c23          	sd	ra,24(sp)
    80008984:	00913423          	sd	s1,8(sp)
    80008988:	01213023          	sd	s2,0(sp)
    8000898c:	02010413          	addi	s0,sp,32
    80008990:	00052783          	lw	a5,0(a0)
    80008994:	00079a63          	bnez	a5,800089a8 <release+0x30>
    80008998:	00001517          	auipc	a0,0x1
    8000899c:	da850513          	addi	a0,a0,-600 # 80009740 <digits+0x28>
    800089a0:	fffff097          	auipc	ra,0xfffff
    800089a4:	1dc080e7          	jalr	476(ra) # 80007b7c <panic>
    800089a8:	01053903          	ld	s2,16(a0)
    800089ac:	00050493          	mv	s1,a0
    800089b0:	fffff097          	auipc	ra,0xfffff
    800089b4:	808080e7          	jalr	-2040(ra) # 800071b8 <mycpu>
    800089b8:	fea910e3          	bne	s2,a0,80008998 <release+0x20>
    800089bc:	0004b823          	sd	zero,16(s1)
    800089c0:	0ff0000f          	fence
    800089c4:	0f50000f          	fence	iorw,ow
    800089c8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800089cc:	ffffe097          	auipc	ra,0xffffe
    800089d0:	7ec080e7          	jalr	2028(ra) # 800071b8 <mycpu>
    800089d4:	100027f3          	csrr	a5,sstatus
    800089d8:	0027f793          	andi	a5,a5,2
    800089dc:	04079a63          	bnez	a5,80008a30 <release+0xb8>
    800089e0:	07852783          	lw	a5,120(a0)
    800089e4:	02f05e63          	blez	a5,80008a20 <release+0xa8>
    800089e8:	fff7871b          	addiw	a4,a5,-1
    800089ec:	06e52c23          	sw	a4,120(a0)
    800089f0:	00071c63          	bnez	a4,80008a08 <release+0x90>
    800089f4:	07c52783          	lw	a5,124(a0)
    800089f8:	00078863          	beqz	a5,80008a08 <release+0x90>
    800089fc:	100027f3          	csrr	a5,sstatus
    80008a00:	0027e793          	ori	a5,a5,2
    80008a04:	10079073          	csrw	sstatus,a5
    80008a08:	01813083          	ld	ra,24(sp)
    80008a0c:	01013403          	ld	s0,16(sp)
    80008a10:	00813483          	ld	s1,8(sp)
    80008a14:	00013903          	ld	s2,0(sp)
    80008a18:	02010113          	addi	sp,sp,32
    80008a1c:	00008067          	ret
    80008a20:	00001517          	auipc	a0,0x1
    80008a24:	d4050513          	addi	a0,a0,-704 # 80009760 <digits+0x48>
    80008a28:	fffff097          	auipc	ra,0xfffff
    80008a2c:	154080e7          	jalr	340(ra) # 80007b7c <panic>
    80008a30:	00001517          	auipc	a0,0x1
    80008a34:	d1850513          	addi	a0,a0,-744 # 80009748 <digits+0x30>
    80008a38:	fffff097          	auipc	ra,0xfffff
    80008a3c:	144080e7          	jalr	324(ra) # 80007b7c <panic>

0000000080008a40 <holding>:
    80008a40:	00052783          	lw	a5,0(a0)
    80008a44:	00079663          	bnez	a5,80008a50 <holding+0x10>
    80008a48:	00000513          	li	a0,0
    80008a4c:	00008067          	ret
    80008a50:	fe010113          	addi	sp,sp,-32
    80008a54:	00813823          	sd	s0,16(sp)
    80008a58:	00913423          	sd	s1,8(sp)
    80008a5c:	00113c23          	sd	ra,24(sp)
    80008a60:	02010413          	addi	s0,sp,32
    80008a64:	01053483          	ld	s1,16(a0)
    80008a68:	ffffe097          	auipc	ra,0xffffe
    80008a6c:	750080e7          	jalr	1872(ra) # 800071b8 <mycpu>
    80008a70:	01813083          	ld	ra,24(sp)
    80008a74:	01013403          	ld	s0,16(sp)
    80008a78:	40a48533          	sub	a0,s1,a0
    80008a7c:	00153513          	seqz	a0,a0
    80008a80:	00813483          	ld	s1,8(sp)
    80008a84:	02010113          	addi	sp,sp,32
    80008a88:	00008067          	ret

0000000080008a8c <push_off>:
    80008a8c:	fe010113          	addi	sp,sp,-32
    80008a90:	00813823          	sd	s0,16(sp)
    80008a94:	00113c23          	sd	ra,24(sp)
    80008a98:	00913423          	sd	s1,8(sp)
    80008a9c:	02010413          	addi	s0,sp,32
    80008aa0:	100024f3          	csrr	s1,sstatus
    80008aa4:	100027f3          	csrr	a5,sstatus
    80008aa8:	ffd7f793          	andi	a5,a5,-3
    80008aac:	10079073          	csrw	sstatus,a5
    80008ab0:	ffffe097          	auipc	ra,0xffffe
    80008ab4:	708080e7          	jalr	1800(ra) # 800071b8 <mycpu>
    80008ab8:	07852783          	lw	a5,120(a0)
    80008abc:	02078663          	beqz	a5,80008ae8 <push_off+0x5c>
    80008ac0:	ffffe097          	auipc	ra,0xffffe
    80008ac4:	6f8080e7          	jalr	1784(ra) # 800071b8 <mycpu>
    80008ac8:	07852783          	lw	a5,120(a0)
    80008acc:	01813083          	ld	ra,24(sp)
    80008ad0:	01013403          	ld	s0,16(sp)
    80008ad4:	0017879b          	addiw	a5,a5,1
    80008ad8:	06f52c23          	sw	a5,120(a0)
    80008adc:	00813483          	ld	s1,8(sp)
    80008ae0:	02010113          	addi	sp,sp,32
    80008ae4:	00008067          	ret
    80008ae8:	0014d493          	srli	s1,s1,0x1
    80008aec:	ffffe097          	auipc	ra,0xffffe
    80008af0:	6cc080e7          	jalr	1740(ra) # 800071b8 <mycpu>
    80008af4:	0014f493          	andi	s1,s1,1
    80008af8:	06952e23          	sw	s1,124(a0)
    80008afc:	fc5ff06f          	j	80008ac0 <push_off+0x34>

0000000080008b00 <pop_off>:
    80008b00:	ff010113          	addi	sp,sp,-16
    80008b04:	00813023          	sd	s0,0(sp)
    80008b08:	00113423          	sd	ra,8(sp)
    80008b0c:	01010413          	addi	s0,sp,16
    80008b10:	ffffe097          	auipc	ra,0xffffe
    80008b14:	6a8080e7          	jalr	1704(ra) # 800071b8 <mycpu>
    80008b18:	100027f3          	csrr	a5,sstatus
    80008b1c:	0027f793          	andi	a5,a5,2
    80008b20:	04079663          	bnez	a5,80008b6c <pop_off+0x6c>
    80008b24:	07852783          	lw	a5,120(a0)
    80008b28:	02f05a63          	blez	a5,80008b5c <pop_off+0x5c>
    80008b2c:	fff7871b          	addiw	a4,a5,-1
    80008b30:	06e52c23          	sw	a4,120(a0)
    80008b34:	00071c63          	bnez	a4,80008b4c <pop_off+0x4c>
    80008b38:	07c52783          	lw	a5,124(a0)
    80008b3c:	00078863          	beqz	a5,80008b4c <pop_off+0x4c>
    80008b40:	100027f3          	csrr	a5,sstatus
    80008b44:	0027e793          	ori	a5,a5,2
    80008b48:	10079073          	csrw	sstatus,a5
    80008b4c:	00813083          	ld	ra,8(sp)
    80008b50:	00013403          	ld	s0,0(sp)
    80008b54:	01010113          	addi	sp,sp,16
    80008b58:	00008067          	ret
    80008b5c:	00001517          	auipc	a0,0x1
    80008b60:	c0450513          	addi	a0,a0,-1020 # 80009760 <digits+0x48>
    80008b64:	fffff097          	auipc	ra,0xfffff
    80008b68:	018080e7          	jalr	24(ra) # 80007b7c <panic>
    80008b6c:	00001517          	auipc	a0,0x1
    80008b70:	bdc50513          	addi	a0,a0,-1060 # 80009748 <digits+0x30>
    80008b74:	fffff097          	auipc	ra,0xfffff
    80008b78:	008080e7          	jalr	8(ra) # 80007b7c <panic>

0000000080008b7c <push_on>:
    80008b7c:	fe010113          	addi	sp,sp,-32
    80008b80:	00813823          	sd	s0,16(sp)
    80008b84:	00113c23          	sd	ra,24(sp)
    80008b88:	00913423          	sd	s1,8(sp)
    80008b8c:	02010413          	addi	s0,sp,32
    80008b90:	100024f3          	csrr	s1,sstatus
    80008b94:	100027f3          	csrr	a5,sstatus
    80008b98:	0027e793          	ori	a5,a5,2
    80008b9c:	10079073          	csrw	sstatus,a5
    80008ba0:	ffffe097          	auipc	ra,0xffffe
    80008ba4:	618080e7          	jalr	1560(ra) # 800071b8 <mycpu>
    80008ba8:	07852783          	lw	a5,120(a0)
    80008bac:	02078663          	beqz	a5,80008bd8 <push_on+0x5c>
    80008bb0:	ffffe097          	auipc	ra,0xffffe
    80008bb4:	608080e7          	jalr	1544(ra) # 800071b8 <mycpu>
    80008bb8:	07852783          	lw	a5,120(a0)
    80008bbc:	01813083          	ld	ra,24(sp)
    80008bc0:	01013403          	ld	s0,16(sp)
    80008bc4:	0017879b          	addiw	a5,a5,1
    80008bc8:	06f52c23          	sw	a5,120(a0)
    80008bcc:	00813483          	ld	s1,8(sp)
    80008bd0:	02010113          	addi	sp,sp,32
    80008bd4:	00008067          	ret
    80008bd8:	0014d493          	srli	s1,s1,0x1
    80008bdc:	ffffe097          	auipc	ra,0xffffe
    80008be0:	5dc080e7          	jalr	1500(ra) # 800071b8 <mycpu>
    80008be4:	0014f493          	andi	s1,s1,1
    80008be8:	06952e23          	sw	s1,124(a0)
    80008bec:	fc5ff06f          	j	80008bb0 <push_on+0x34>

0000000080008bf0 <pop_on>:
    80008bf0:	ff010113          	addi	sp,sp,-16
    80008bf4:	00813023          	sd	s0,0(sp)
    80008bf8:	00113423          	sd	ra,8(sp)
    80008bfc:	01010413          	addi	s0,sp,16
    80008c00:	ffffe097          	auipc	ra,0xffffe
    80008c04:	5b8080e7          	jalr	1464(ra) # 800071b8 <mycpu>
    80008c08:	100027f3          	csrr	a5,sstatus
    80008c0c:	0027f793          	andi	a5,a5,2
    80008c10:	04078463          	beqz	a5,80008c58 <pop_on+0x68>
    80008c14:	07852783          	lw	a5,120(a0)
    80008c18:	02f05863          	blez	a5,80008c48 <pop_on+0x58>
    80008c1c:	fff7879b          	addiw	a5,a5,-1
    80008c20:	06f52c23          	sw	a5,120(a0)
    80008c24:	07853783          	ld	a5,120(a0)
    80008c28:	00079863          	bnez	a5,80008c38 <pop_on+0x48>
    80008c2c:	100027f3          	csrr	a5,sstatus
    80008c30:	ffd7f793          	andi	a5,a5,-3
    80008c34:	10079073          	csrw	sstatus,a5
    80008c38:	00813083          	ld	ra,8(sp)
    80008c3c:	00013403          	ld	s0,0(sp)
    80008c40:	01010113          	addi	sp,sp,16
    80008c44:	00008067          	ret
    80008c48:	00001517          	auipc	a0,0x1
    80008c4c:	b4050513          	addi	a0,a0,-1216 # 80009788 <digits+0x70>
    80008c50:	fffff097          	auipc	ra,0xfffff
    80008c54:	f2c080e7          	jalr	-212(ra) # 80007b7c <panic>
    80008c58:	00001517          	auipc	a0,0x1
    80008c5c:	b1050513          	addi	a0,a0,-1264 # 80009768 <digits+0x50>
    80008c60:	fffff097          	auipc	ra,0xfffff
    80008c64:	f1c080e7          	jalr	-228(ra) # 80007b7c <panic>

0000000080008c68 <__memset>:
    80008c68:	ff010113          	addi	sp,sp,-16
    80008c6c:	00813423          	sd	s0,8(sp)
    80008c70:	01010413          	addi	s0,sp,16
    80008c74:	1a060e63          	beqz	a2,80008e30 <__memset+0x1c8>
    80008c78:	40a007b3          	neg	a5,a0
    80008c7c:	0077f793          	andi	a5,a5,7
    80008c80:	00778693          	addi	a3,a5,7
    80008c84:	00b00813          	li	a6,11
    80008c88:	0ff5f593          	andi	a1,a1,255
    80008c8c:	fff6071b          	addiw	a4,a2,-1
    80008c90:	1b06e663          	bltu	a3,a6,80008e3c <__memset+0x1d4>
    80008c94:	1cd76463          	bltu	a4,a3,80008e5c <__memset+0x1f4>
    80008c98:	1a078e63          	beqz	a5,80008e54 <__memset+0x1ec>
    80008c9c:	00b50023          	sb	a1,0(a0)
    80008ca0:	00100713          	li	a4,1
    80008ca4:	1ae78463          	beq	a5,a4,80008e4c <__memset+0x1e4>
    80008ca8:	00b500a3          	sb	a1,1(a0)
    80008cac:	00200713          	li	a4,2
    80008cb0:	1ae78a63          	beq	a5,a4,80008e64 <__memset+0x1fc>
    80008cb4:	00b50123          	sb	a1,2(a0)
    80008cb8:	00300713          	li	a4,3
    80008cbc:	18e78463          	beq	a5,a4,80008e44 <__memset+0x1dc>
    80008cc0:	00b501a3          	sb	a1,3(a0)
    80008cc4:	00400713          	li	a4,4
    80008cc8:	1ae78263          	beq	a5,a4,80008e6c <__memset+0x204>
    80008ccc:	00b50223          	sb	a1,4(a0)
    80008cd0:	00500713          	li	a4,5
    80008cd4:	1ae78063          	beq	a5,a4,80008e74 <__memset+0x20c>
    80008cd8:	00b502a3          	sb	a1,5(a0)
    80008cdc:	00700713          	li	a4,7
    80008ce0:	18e79e63          	bne	a5,a4,80008e7c <__memset+0x214>
    80008ce4:	00b50323          	sb	a1,6(a0)
    80008ce8:	00700e93          	li	t4,7
    80008cec:	00859713          	slli	a4,a1,0x8
    80008cf0:	00e5e733          	or	a4,a1,a4
    80008cf4:	01059e13          	slli	t3,a1,0x10
    80008cf8:	01c76e33          	or	t3,a4,t3
    80008cfc:	01859313          	slli	t1,a1,0x18
    80008d00:	006e6333          	or	t1,t3,t1
    80008d04:	02059893          	slli	a7,a1,0x20
    80008d08:	40f60e3b          	subw	t3,a2,a5
    80008d0c:	011368b3          	or	a7,t1,a7
    80008d10:	02859813          	slli	a6,a1,0x28
    80008d14:	0108e833          	or	a6,a7,a6
    80008d18:	03059693          	slli	a3,a1,0x30
    80008d1c:	003e589b          	srliw	a7,t3,0x3
    80008d20:	00d866b3          	or	a3,a6,a3
    80008d24:	03859713          	slli	a4,a1,0x38
    80008d28:	00389813          	slli	a6,a7,0x3
    80008d2c:	00f507b3          	add	a5,a0,a5
    80008d30:	00e6e733          	or	a4,a3,a4
    80008d34:	000e089b          	sext.w	a7,t3
    80008d38:	00f806b3          	add	a3,a6,a5
    80008d3c:	00e7b023          	sd	a4,0(a5)
    80008d40:	00878793          	addi	a5,a5,8
    80008d44:	fed79ce3          	bne	a5,a3,80008d3c <__memset+0xd4>
    80008d48:	ff8e7793          	andi	a5,t3,-8
    80008d4c:	0007871b          	sext.w	a4,a5
    80008d50:	01d787bb          	addw	a5,a5,t4
    80008d54:	0ce88e63          	beq	a7,a4,80008e30 <__memset+0x1c8>
    80008d58:	00f50733          	add	a4,a0,a5
    80008d5c:	00b70023          	sb	a1,0(a4)
    80008d60:	0017871b          	addiw	a4,a5,1
    80008d64:	0cc77663          	bgeu	a4,a2,80008e30 <__memset+0x1c8>
    80008d68:	00e50733          	add	a4,a0,a4
    80008d6c:	00b70023          	sb	a1,0(a4)
    80008d70:	0027871b          	addiw	a4,a5,2
    80008d74:	0ac77e63          	bgeu	a4,a2,80008e30 <__memset+0x1c8>
    80008d78:	00e50733          	add	a4,a0,a4
    80008d7c:	00b70023          	sb	a1,0(a4)
    80008d80:	0037871b          	addiw	a4,a5,3
    80008d84:	0ac77663          	bgeu	a4,a2,80008e30 <__memset+0x1c8>
    80008d88:	00e50733          	add	a4,a0,a4
    80008d8c:	00b70023          	sb	a1,0(a4)
    80008d90:	0047871b          	addiw	a4,a5,4
    80008d94:	08c77e63          	bgeu	a4,a2,80008e30 <__memset+0x1c8>
    80008d98:	00e50733          	add	a4,a0,a4
    80008d9c:	00b70023          	sb	a1,0(a4)
    80008da0:	0057871b          	addiw	a4,a5,5
    80008da4:	08c77663          	bgeu	a4,a2,80008e30 <__memset+0x1c8>
    80008da8:	00e50733          	add	a4,a0,a4
    80008dac:	00b70023          	sb	a1,0(a4)
    80008db0:	0067871b          	addiw	a4,a5,6
    80008db4:	06c77e63          	bgeu	a4,a2,80008e30 <__memset+0x1c8>
    80008db8:	00e50733          	add	a4,a0,a4
    80008dbc:	00b70023          	sb	a1,0(a4)
    80008dc0:	0077871b          	addiw	a4,a5,7
    80008dc4:	06c77663          	bgeu	a4,a2,80008e30 <__memset+0x1c8>
    80008dc8:	00e50733          	add	a4,a0,a4
    80008dcc:	00b70023          	sb	a1,0(a4)
    80008dd0:	0087871b          	addiw	a4,a5,8
    80008dd4:	04c77e63          	bgeu	a4,a2,80008e30 <__memset+0x1c8>
    80008dd8:	00e50733          	add	a4,a0,a4
    80008ddc:	00b70023          	sb	a1,0(a4)
    80008de0:	0097871b          	addiw	a4,a5,9
    80008de4:	04c77663          	bgeu	a4,a2,80008e30 <__memset+0x1c8>
    80008de8:	00e50733          	add	a4,a0,a4
    80008dec:	00b70023          	sb	a1,0(a4)
    80008df0:	00a7871b          	addiw	a4,a5,10
    80008df4:	02c77e63          	bgeu	a4,a2,80008e30 <__memset+0x1c8>
    80008df8:	00e50733          	add	a4,a0,a4
    80008dfc:	00b70023          	sb	a1,0(a4)
    80008e00:	00b7871b          	addiw	a4,a5,11
    80008e04:	02c77663          	bgeu	a4,a2,80008e30 <__memset+0x1c8>
    80008e08:	00e50733          	add	a4,a0,a4
    80008e0c:	00b70023          	sb	a1,0(a4)
    80008e10:	00c7871b          	addiw	a4,a5,12
    80008e14:	00c77e63          	bgeu	a4,a2,80008e30 <__memset+0x1c8>
    80008e18:	00e50733          	add	a4,a0,a4
    80008e1c:	00b70023          	sb	a1,0(a4)
    80008e20:	00d7879b          	addiw	a5,a5,13
    80008e24:	00c7f663          	bgeu	a5,a2,80008e30 <__memset+0x1c8>
    80008e28:	00f507b3          	add	a5,a0,a5
    80008e2c:	00b78023          	sb	a1,0(a5)
    80008e30:	00813403          	ld	s0,8(sp)
    80008e34:	01010113          	addi	sp,sp,16
    80008e38:	00008067          	ret
    80008e3c:	00b00693          	li	a3,11
    80008e40:	e55ff06f          	j	80008c94 <__memset+0x2c>
    80008e44:	00300e93          	li	t4,3
    80008e48:	ea5ff06f          	j	80008cec <__memset+0x84>
    80008e4c:	00100e93          	li	t4,1
    80008e50:	e9dff06f          	j	80008cec <__memset+0x84>
    80008e54:	00000e93          	li	t4,0
    80008e58:	e95ff06f          	j	80008cec <__memset+0x84>
    80008e5c:	00000793          	li	a5,0
    80008e60:	ef9ff06f          	j	80008d58 <__memset+0xf0>
    80008e64:	00200e93          	li	t4,2
    80008e68:	e85ff06f          	j	80008cec <__memset+0x84>
    80008e6c:	00400e93          	li	t4,4
    80008e70:	e7dff06f          	j	80008cec <__memset+0x84>
    80008e74:	00500e93          	li	t4,5
    80008e78:	e75ff06f          	j	80008cec <__memset+0x84>
    80008e7c:	00600e93          	li	t4,6
    80008e80:	e6dff06f          	j	80008cec <__memset+0x84>

0000000080008e84 <__memmove>:
    80008e84:	ff010113          	addi	sp,sp,-16
    80008e88:	00813423          	sd	s0,8(sp)
    80008e8c:	01010413          	addi	s0,sp,16
    80008e90:	0e060863          	beqz	a2,80008f80 <__memmove+0xfc>
    80008e94:	fff6069b          	addiw	a3,a2,-1
    80008e98:	0006881b          	sext.w	a6,a3
    80008e9c:	0ea5e863          	bltu	a1,a0,80008f8c <__memmove+0x108>
    80008ea0:	00758713          	addi	a4,a1,7
    80008ea4:	00a5e7b3          	or	a5,a1,a0
    80008ea8:	40a70733          	sub	a4,a4,a0
    80008eac:	0077f793          	andi	a5,a5,7
    80008eb0:	00f73713          	sltiu	a4,a4,15
    80008eb4:	00174713          	xori	a4,a4,1
    80008eb8:	0017b793          	seqz	a5,a5
    80008ebc:	00e7f7b3          	and	a5,a5,a4
    80008ec0:	10078863          	beqz	a5,80008fd0 <__memmove+0x14c>
    80008ec4:	00900793          	li	a5,9
    80008ec8:	1107f463          	bgeu	a5,a6,80008fd0 <__memmove+0x14c>
    80008ecc:	0036581b          	srliw	a6,a2,0x3
    80008ed0:	fff8081b          	addiw	a6,a6,-1
    80008ed4:	02081813          	slli	a6,a6,0x20
    80008ed8:	01d85893          	srli	a7,a6,0x1d
    80008edc:	00858813          	addi	a6,a1,8
    80008ee0:	00058793          	mv	a5,a1
    80008ee4:	00050713          	mv	a4,a0
    80008ee8:	01088833          	add	a6,a7,a6
    80008eec:	0007b883          	ld	a7,0(a5)
    80008ef0:	00878793          	addi	a5,a5,8
    80008ef4:	00870713          	addi	a4,a4,8
    80008ef8:	ff173c23          	sd	a7,-8(a4)
    80008efc:	ff0798e3          	bne	a5,a6,80008eec <__memmove+0x68>
    80008f00:	ff867713          	andi	a4,a2,-8
    80008f04:	02071793          	slli	a5,a4,0x20
    80008f08:	0207d793          	srli	a5,a5,0x20
    80008f0c:	00f585b3          	add	a1,a1,a5
    80008f10:	40e686bb          	subw	a3,a3,a4
    80008f14:	00f507b3          	add	a5,a0,a5
    80008f18:	06e60463          	beq	a2,a4,80008f80 <__memmove+0xfc>
    80008f1c:	0005c703          	lbu	a4,0(a1)
    80008f20:	00e78023          	sb	a4,0(a5)
    80008f24:	04068e63          	beqz	a3,80008f80 <__memmove+0xfc>
    80008f28:	0015c603          	lbu	a2,1(a1)
    80008f2c:	00100713          	li	a4,1
    80008f30:	00c780a3          	sb	a2,1(a5)
    80008f34:	04e68663          	beq	a3,a4,80008f80 <__memmove+0xfc>
    80008f38:	0025c603          	lbu	a2,2(a1)
    80008f3c:	00200713          	li	a4,2
    80008f40:	00c78123          	sb	a2,2(a5)
    80008f44:	02e68e63          	beq	a3,a4,80008f80 <__memmove+0xfc>
    80008f48:	0035c603          	lbu	a2,3(a1)
    80008f4c:	00300713          	li	a4,3
    80008f50:	00c781a3          	sb	a2,3(a5)
    80008f54:	02e68663          	beq	a3,a4,80008f80 <__memmove+0xfc>
    80008f58:	0045c603          	lbu	a2,4(a1)
    80008f5c:	00400713          	li	a4,4
    80008f60:	00c78223          	sb	a2,4(a5)
    80008f64:	00e68e63          	beq	a3,a4,80008f80 <__memmove+0xfc>
    80008f68:	0055c603          	lbu	a2,5(a1)
    80008f6c:	00500713          	li	a4,5
    80008f70:	00c782a3          	sb	a2,5(a5)
    80008f74:	00e68663          	beq	a3,a4,80008f80 <__memmove+0xfc>
    80008f78:	0065c703          	lbu	a4,6(a1)
    80008f7c:	00e78323          	sb	a4,6(a5)
    80008f80:	00813403          	ld	s0,8(sp)
    80008f84:	01010113          	addi	sp,sp,16
    80008f88:	00008067          	ret
    80008f8c:	02061713          	slli	a4,a2,0x20
    80008f90:	02075713          	srli	a4,a4,0x20
    80008f94:	00e587b3          	add	a5,a1,a4
    80008f98:	f0f574e3          	bgeu	a0,a5,80008ea0 <__memmove+0x1c>
    80008f9c:	02069613          	slli	a2,a3,0x20
    80008fa0:	02065613          	srli	a2,a2,0x20
    80008fa4:	fff64613          	not	a2,a2
    80008fa8:	00e50733          	add	a4,a0,a4
    80008fac:	00c78633          	add	a2,a5,a2
    80008fb0:	fff7c683          	lbu	a3,-1(a5)
    80008fb4:	fff78793          	addi	a5,a5,-1
    80008fb8:	fff70713          	addi	a4,a4,-1
    80008fbc:	00d70023          	sb	a3,0(a4)
    80008fc0:	fec798e3          	bne	a5,a2,80008fb0 <__memmove+0x12c>
    80008fc4:	00813403          	ld	s0,8(sp)
    80008fc8:	01010113          	addi	sp,sp,16
    80008fcc:	00008067          	ret
    80008fd0:	02069713          	slli	a4,a3,0x20
    80008fd4:	02075713          	srli	a4,a4,0x20
    80008fd8:	00170713          	addi	a4,a4,1
    80008fdc:	00e50733          	add	a4,a0,a4
    80008fe0:	00050793          	mv	a5,a0
    80008fe4:	0005c683          	lbu	a3,0(a1)
    80008fe8:	00178793          	addi	a5,a5,1
    80008fec:	00158593          	addi	a1,a1,1
    80008ff0:	fed78fa3          	sb	a3,-1(a5)
    80008ff4:	fee798e3          	bne	a5,a4,80008fe4 <__memmove+0x160>
    80008ff8:	f89ff06f          	j	80008f80 <__memmove+0xfc>
    80008ffc:	0000                	unimp
	...
