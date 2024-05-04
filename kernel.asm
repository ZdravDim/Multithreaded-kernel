
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000b117          	auipc	sp,0xb
    80000004:	7d013103          	ld	sp,2000(sp) # 8000b7d0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	418060ef          	jal	ra,80006434 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5RiscV16handle_interruptEv>:
.global _ZN5RiscV16handle_interruptEv
.type _ZN5RiscV16handle_interruptEv, @function
_ZN5RiscV16handle_interruptEv:

    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
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
    80001028:	04b13c23          	sd	a1,88(sp)
    8000102c:	06c13023          	sd	a2,96(sp)
    80001030:	06d13423          	sd	a3,104(sp)
    80001034:	06e13823          	sd	a4,112(sp)
    80001038:	06f13c23          	sd	a5,120(sp)
    8000103c:	09013023          	sd	a6,128(sp)
    80001040:	09113423          	sd	a7,136(sp)
    80001044:	09213823          	sd	s2,144(sp)
    80001048:	09313c23          	sd	s3,152(sp)
    8000104c:	0b413023          	sd	s4,160(sp)
    80001050:	0b513423          	sd	s5,168(sp)
    80001054:	0b613823          	sd	s6,176(sp)
    80001058:	0b713c23          	sd	s7,184(sp)
    8000105c:	0d813023          	sd	s8,192(sp)
    80001060:	0d913423          	sd	s9,200(sp)
    80001064:	0da13823          	sd	s10,208(sp)
    80001068:	0db13c23          	sd	s11,216(sp)
    8000106c:	0fc13023          	sd	t3,224(sp)
    80001070:	0fd13423          	sd	t4,232(sp)
    80001074:	0fe13823          	sd	t5,240(sp)
    80001078:	0ff13c23          	sd	t6,248(sp)

    call _ZN5RiscV22handle_supervisor_trapEv
    8000107c:	26d010ef          	jal	ra,80002ae8 <_ZN5RiscV22handle_supervisor_trapEv>

    .irp index, 0,1,2,3,4,5,6,7,8,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001080:	00013003          	ld	zero,0(sp)
    80001084:	00813083          	ld	ra,8(sp)
    80001088:	01013103          	ld	sp,16(sp)
    8000108c:	01813183          	ld	gp,24(sp)
    80001090:	02013203          	ld	tp,32(sp)
    80001094:	02813283          	ld	t0,40(sp)
    80001098:	03013303          	ld	t1,48(sp)
    8000109c:	03813383          	ld	t2,56(sp)
    800010a0:	04013403          	ld	s0,64(sp)
    800010a4:	05813583          	ld	a1,88(sp)
    800010a8:	06013603          	ld	a2,96(sp)
    800010ac:	06813683          	ld	a3,104(sp)
    800010b0:	07013703          	ld	a4,112(sp)
    800010b4:	07813783          	ld	a5,120(sp)
    800010b8:	08013803          	ld	a6,128(sp)
    800010bc:	08813883          	ld	a7,136(sp)
    800010c0:	09013903          	ld	s2,144(sp)
    800010c4:	09813983          	ld	s3,152(sp)
    800010c8:	0a013a03          	ld	s4,160(sp)
    800010cc:	0a813a83          	ld	s5,168(sp)
    800010d0:	0b013b03          	ld	s6,176(sp)
    800010d4:	0b813b83          	ld	s7,184(sp)
    800010d8:	0c013c03          	ld	s8,192(sp)
    800010dc:	0c813c83          	ld	s9,200(sp)
    800010e0:	0d013d03          	ld	s10,208(sp)
    800010e4:	0d813d83          	ld	s11,216(sp)
    800010e8:	0e013e03          	ld	t3,224(sp)
    800010ec:	0e813e83          	ld	t4,232(sp)
    800010f0:	0f013f03          	ld	t5,240(sp)
    800010f4:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    800010f8:	10010113          	addi	sp,sp,256

    sret
    800010fc:	10200073          	sret

0000000080001100 <_ZN5RiscV14push_registersEv>:

.global _ZN5RiscV14push_registersEv
.type _ZN5RiscV14push_registersEv, @function
_ZN5RiscV14push_registersEv:

    addi sp, sp, -256
    80001100:	f0010113          	addi	sp,sp,-256
    .irp index, 2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001104:	00213823          	sd	sp,16(sp)
    80001108:	00313c23          	sd	gp,24(sp)
    8000110c:	02413023          	sd	tp,32(sp)
    80001110:	02513423          	sd	t0,40(sp)
    80001114:	02613823          	sd	t1,48(sp)
    80001118:	02713c23          	sd	t2,56(sp)
    8000111c:	04813023          	sd	s0,64(sp)
    80001120:	04913423          	sd	s1,72(sp)
    80001124:	04a13823          	sd	a0,80(sp)
    80001128:	04b13c23          	sd	a1,88(sp)
    8000112c:	06c13023          	sd	a2,96(sp)
    80001130:	06d13423          	sd	a3,104(sp)
    80001134:	06e13823          	sd	a4,112(sp)
    80001138:	06f13c23          	sd	a5,120(sp)
    8000113c:	09013023          	sd	a6,128(sp)
    80001140:	09113423          	sd	a7,136(sp)
    80001144:	09213823          	sd	s2,144(sp)
    80001148:	09313c23          	sd	s3,152(sp)
    8000114c:	0b413023          	sd	s4,160(sp)
    80001150:	0b513423          	sd	s5,168(sp)
    80001154:	0b613823          	sd	s6,176(sp)
    80001158:	0b713c23          	sd	s7,184(sp)
    8000115c:	0d813023          	sd	s8,192(sp)
    80001160:	0d913423          	sd	s9,200(sp)
    80001164:	0da13823          	sd	s10,208(sp)
    80001168:	0db13c23          	sd	s11,216(sp)
    8000116c:	0fc13023          	sd	t3,224(sp)
    80001170:	0fd13423          	sd	t4,232(sp)
    80001174:	0fe13823          	sd	t5,240(sp)
    80001178:	0ff13c23          	sd	t6,248(sp)

    ret
    8000117c:	00008067          	ret

0000000080001180 <_ZN5RiscV13pop_registersEv>:
.type _ZN5RiscV13pop_registersEv, @function
_ZN5RiscV13pop_registersEv:

    .irp index, 2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001180:	01013103          	ld	sp,16(sp)
    80001184:	01813183          	ld	gp,24(sp)
    80001188:	02013203          	ld	tp,32(sp)
    8000118c:	02813283          	ld	t0,40(sp)
    80001190:	03013303          	ld	t1,48(sp)
    80001194:	03813383          	ld	t2,56(sp)
    80001198:	04013403          	ld	s0,64(sp)
    8000119c:	04813483          	ld	s1,72(sp)
    800011a0:	05013503          	ld	a0,80(sp)
    800011a4:	05813583          	ld	a1,88(sp)
    800011a8:	06013603          	ld	a2,96(sp)
    800011ac:	06813683          	ld	a3,104(sp)
    800011b0:	07013703          	ld	a4,112(sp)
    800011b4:	07813783          	ld	a5,120(sp)
    800011b8:	08013803          	ld	a6,128(sp)
    800011bc:	08813883          	ld	a7,136(sp)
    800011c0:	09013903          	ld	s2,144(sp)
    800011c4:	09813983          	ld	s3,152(sp)
    800011c8:	0a013a03          	ld	s4,160(sp)
    800011cc:	0a813a83          	ld	s5,168(sp)
    800011d0:	0b013b03          	ld	s6,176(sp)
    800011d4:	0b813b83          	ld	s7,184(sp)
    800011d8:	0c013c03          	ld	s8,192(sp)
    800011dc:	0c813c83          	ld	s9,200(sp)
    800011e0:	0d013d03          	ld	s10,208(sp)
    800011e4:	0d813d83          	ld	s11,216(sp)
    800011e8:	0e013e03          	ld	t3,224(sp)
    800011ec:	0e813e83          	ld	t4,232(sp)
    800011f0:	0f013f03          	ld	t5,240(sp)
    800011f4:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    800011f8:	10010113          	addi	sp,sp,256

    800011fc:	00008067          	ret

0000000080001200 <_ZN3TCB14context_switchEPNS_7ContextES1_>:
.global _ZN3TCB14context_switchEPNS_7ContextES1_
.type _ZN3TCB14context_switchEPNS_7ContextES1_, @function
_ZN3TCB14context_switchEPNS_7ContextES1_:

    #store old -> context
	sd ra, 0 * 8(a0)
    80001200:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
	sd sp, 1 * 8(a0)
    80001204:	00253423          	sd	sp,8(a0)

    #load running -> context
	ld ra, 0 * 8(a1)
    80001208:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000120c:	0085b103          	ld	sp,8(a1)

    80001210:	00008067          	ret

0000000080001214 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001214:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001218:	00b29a63          	bne	t0,a1,8000122c <fail>
    sc.w t0, a2, (a0)      # Try to update.
    8000121c:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001220:	fe029ae3          	bnez	t0,80001214 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001224:	00000513          	li	a0,0
    jr ra                  # Return.
    80001228:	00008067          	ret

000000008000122c <fail>:
    fail:
    li a0, 1               # Set return to failure.
    8000122c:	00100513          	li	a0,1
    80001230:	00008067          	ret

0000000080001234 <_Z7syscallmmmmm>:
#include "../h/syscall_c.hpp"

void syscall(uint64 syscall_code, uint64 a1 = 0, uint64 a2 = 0, uint64 a3 = 0, uint64 a4 = 0) {
    80001234:	ff010113          	addi	sp,sp,-16
    80001238:	00813423          	sd	s0,8(sp)
    8000123c:	01010413          	addi	s0,sp,16
    __asm__ volatile("ecall");
    80001240:	00000073          	ecall
}
    80001244:	00813403          	ld	s0,8(sp)
    80001248:	01010113          	addi	sp,sp,16
    8000124c:	00008067          	ret

0000000080001250 <_Z9mem_allocm>:

void* mem_alloc (size_t size) {
    if (size == 0) return nullptr;
    80001250:	04050663          	beqz	a0,8000129c <_Z9mem_allocm+0x4c>
void* mem_alloc (size_t size) {
    80001254:	ff010113          	addi	sp,sp,-16
    80001258:	00113423          	sd	ra,8(sp)
    8000125c:	00813023          	sd	s0,0(sp)
    80001260:	01010413          	addi	s0,sp,16
    size = MemoryAllocator::get_number_of_blocks(size);
    80001264:	00001097          	auipc	ra,0x1
    80001268:	638080e7          	jalr	1592(ra) # 8000289c <_ZN15MemoryAllocator20get_number_of_blocksEm>
    8000126c:	00050593          	mv	a1,a0
    void volatile *addr;
    syscall(MEM_ALLOC, size);
    80001270:	00000713          	li	a4,0
    80001274:	00000693          	li	a3,0
    80001278:	00000613          	li	a2,0
    8000127c:	00100513          	li	a0,1
    80001280:	00000097          	auipc	ra,0x0
    80001284:	fb4080e7          	jalr	-76(ra) # 80001234 <_Z7syscallmmmmm>
    __asm__ volatile ("mv %0, a0" : "=r"(addr));
    80001288:	00050513          	mv	a0,a0
    return (void*) addr;
}
    8000128c:	00813083          	ld	ra,8(sp)
    80001290:	00013403          	ld	s0,0(sp)
    80001294:	01010113          	addi	sp,sp,16
    80001298:	00008067          	ret
    if (size == 0) return nullptr;
    8000129c:	00000513          	li	a0,0
}
    800012a0:	00008067          	ret

00000000800012a4 <_Z8mem_freePv>:

int mem_free (void* addr) {
    800012a4:	fe010113          	addi	sp,sp,-32
    800012a8:	00113c23          	sd	ra,24(sp)
    800012ac:	00813823          	sd	s0,16(sp)
    800012b0:	02010413          	addi	s0,sp,32
    800012b4:	00050593          	mv	a1,a0
    int volatile success;
    syscall(MEM_FREE, (uint64) addr);
    800012b8:	00000713          	li	a4,0
    800012bc:	00000693          	li	a3,0
    800012c0:	00000613          	li	a2,0
    800012c4:	00200513          	li	a0,2
    800012c8:	00000097          	auipc	ra,0x0
    800012cc:	f6c080e7          	jalr	-148(ra) # 80001234 <_Z7syscallmmmmm>
    __asm__ volatile ("mv %0, a0" : "=r"(success));
    800012d0:	00050793          	mv	a5,a0
    800012d4:	fef42623          	sw	a5,-20(s0)
    return success;
    800012d8:	fec42503          	lw	a0,-20(s0)
}
    800012dc:	0005051b          	sext.w	a0,a0
    800012e0:	01813083          	ld	ra,24(sp)
    800012e4:	01013403          	ld	s0,16(sp)
    800012e8:	02010113          	addi	sp,sp,32
    800012ec:	00008067          	ret

00000000800012f0 <_Z13thread_createPP3TCBPFvPvES2_>:

int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg) {
    800012f0:	fc010113          	addi	sp,sp,-64
    800012f4:	02113c23          	sd	ra,56(sp)
    800012f8:	02813823          	sd	s0,48(sp)
    800012fc:	02913423          	sd	s1,40(sp)
    80001300:	03213023          	sd	s2,32(sp)
    80001304:	01313c23          	sd	s3,24(sp)
    80001308:	04010413          	addi	s0,sp,64
    8000130c:	00050913          	mv	s2,a0
    80001310:	00058493          	mv	s1,a1
    80001314:	00060993          	mv	s3,a2
    void* stack_space = nullptr;
    /// main thread alredy has it's stack
    if (start_routine) stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    80001318:	04058c63          	beqz	a1,80001370 <_Z13thread_createPP3TCBPFvPvES2_+0x80>
    8000131c:	00001537          	lui	a0,0x1
    80001320:	00000097          	auipc	ra,0x0
    80001324:	f30080e7          	jalr	-208(ra) # 80001250 <_Z9mem_allocm>
    80001328:	00050713          	mv	a4,a0
    int volatile status;
    syscall(THREAD_CREATE, (uint64) handle, (uint64) start_routine, (uint64) arg, (uint64) stack_space);
    8000132c:	00098693          	mv	a3,s3
    80001330:	00048613          	mv	a2,s1
    80001334:	00090593          	mv	a1,s2
    80001338:	01100513          	li	a0,17
    8000133c:	00000097          	auipc	ra,0x0
    80001340:	ef8080e7          	jalr	-264(ra) # 80001234 <_Z7syscallmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(status));
    80001344:	00050793          	mv	a5,a0
    80001348:	fcf42623          	sw	a5,-52(s0)
    return status;
    8000134c:	fcc42503          	lw	a0,-52(s0)
}
    80001350:	0005051b          	sext.w	a0,a0
    80001354:	03813083          	ld	ra,56(sp)
    80001358:	03013403          	ld	s0,48(sp)
    8000135c:	02813483          	ld	s1,40(sp)
    80001360:	02013903          	ld	s2,32(sp)
    80001364:	01813983          	ld	s3,24(sp)
    80001368:	04010113          	addi	sp,sp,64
    8000136c:	00008067          	ret
    void* stack_space = nullptr;
    80001370:	00000713          	li	a4,0
    80001374:	fb9ff06f          	j	8000132c <_Z13thread_createPP3TCBPFvPvES2_+0x3c>

0000000080001378 <_Z11thread_exitv>:

int thread_exit () {
    80001378:	fe010113          	addi	sp,sp,-32
    8000137c:	00113c23          	sd	ra,24(sp)
    80001380:	00813823          	sd	s0,16(sp)
    80001384:	02010413          	addi	s0,sp,32
    int volatile status;
    syscall(THREAD_EXIT);
    80001388:	00000713          	li	a4,0
    8000138c:	00000693          	li	a3,0
    80001390:	00000613          	li	a2,0
    80001394:	00000593          	li	a1,0
    80001398:	01200513          	li	a0,18
    8000139c:	00000097          	auipc	ra,0x0
    800013a0:	e98080e7          	jalr	-360(ra) # 80001234 <_Z7syscallmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(status));
    800013a4:	00050793          	mv	a5,a0
    800013a8:	fef42623          	sw	a5,-20(s0)
    return status;
    800013ac:	fec42503          	lw	a0,-20(s0)
}
    800013b0:	0005051b          	sext.w	a0,a0
    800013b4:	01813083          	ld	ra,24(sp)
    800013b8:	01013403          	ld	s0,16(sp)
    800013bc:	02010113          	addi	sp,sp,32
    800013c0:	00008067          	ret

00000000800013c4 <_Z15thread_dispatchv>:

void thread_dispatch () {
    800013c4:	ff010113          	addi	sp,sp,-16
    800013c8:	00113423          	sd	ra,8(sp)
    800013cc:	00813023          	sd	s0,0(sp)
    800013d0:	01010413          	addi	s0,sp,16
    syscall(THREAD_DISPATCH);
    800013d4:	00000713          	li	a4,0
    800013d8:	00000693          	li	a3,0
    800013dc:	00000613          	li	a2,0
    800013e0:	00000593          	li	a1,0
    800013e4:	01300513          	li	a0,19
    800013e8:	00000097          	auipc	ra,0x0
    800013ec:	e4c080e7          	jalr	-436(ra) # 80001234 <_Z7syscallmmmmm>
}
    800013f0:	00813083          	ld	ra,8(sp)
    800013f4:	00013403          	ld	s0,0(sp)
    800013f8:	01010113          	addi	sp,sp,16
    800013fc:	00008067          	ret

0000000080001400 <_Z8sem_openPP3Semj>:

int sem_open (sem_t* handle, unsigned init) { return 0; }
    80001400:	ff010113          	addi	sp,sp,-16
    80001404:	00813423          	sd	s0,8(sp)
    80001408:	01010413          	addi	s0,sp,16
    8000140c:	00000513          	li	a0,0
    80001410:	00813403          	ld	s0,8(sp)
    80001414:	01010113          	addi	sp,sp,16
    80001418:	00008067          	ret

000000008000141c <_Z9sem_closeP3Sem>:

int sem_close (sem_t handle) { return 0; }
    8000141c:	ff010113          	addi	sp,sp,-16
    80001420:	00813423          	sd	s0,8(sp)
    80001424:	01010413          	addi	s0,sp,16
    80001428:	00000513          	li	a0,0
    8000142c:	00813403          	ld	s0,8(sp)
    80001430:	01010113          	addi	sp,sp,16
    80001434:	00008067          	ret

0000000080001438 <_Z8sem_waitP3Sem>:

int sem_wait (sem_t id) { return 0; }
    80001438:	ff010113          	addi	sp,sp,-16
    8000143c:	00813423          	sd	s0,8(sp)
    80001440:	01010413          	addi	s0,sp,16
    80001444:	00000513          	li	a0,0
    80001448:	00813403          	ld	s0,8(sp)
    8000144c:	01010113          	addi	sp,sp,16
    80001450:	00008067          	ret

0000000080001454 <_Z10sem_signalP3Sem>:

int sem_signal (sem_t id) { return 0; }
    80001454:	ff010113          	addi	sp,sp,-16
    80001458:	00813423          	sd	s0,8(sp)
    8000145c:	01010413          	addi	s0,sp,16
    80001460:	00000513          	li	a0,0
    80001464:	00813403          	ld	s0,8(sp)
    80001468:	01010113          	addi	sp,sp,16
    8000146c:	00008067          	ret

0000000080001470 <_Z13sem_timedwaitP3Semm>:

int sem_timedwait(sem_t id, time_t timeout) { return 0; }
    80001470:	ff010113          	addi	sp,sp,-16
    80001474:	00813423          	sd	s0,8(sp)
    80001478:	01010413          	addi	s0,sp,16
    8000147c:	00000513          	li	a0,0
    80001480:	00813403          	ld	s0,8(sp)
    80001484:	01010113          	addi	sp,sp,16
    80001488:	00008067          	ret

000000008000148c <_Z11sem_trywaitP3Sem>:

int sem_trywait(sem_t id) { return 0; }
    8000148c:	ff010113          	addi	sp,sp,-16
    80001490:	00813423          	sd	s0,8(sp)
    80001494:	01010413          	addi	s0,sp,16
    80001498:	00000513          	li	a0,0
    8000149c:	00813403          	ld	s0,8(sp)
    800014a0:	01010113          	addi	sp,sp,16
    800014a4:	00008067          	ret

00000000800014a8 <_Z10time_sleepm>:

int time_sleep (time_t) { return 0; }
    800014a8:	ff010113          	addi	sp,sp,-16
    800014ac:	00813423          	sd	s0,8(sp)
    800014b0:	01010413          	addi	s0,sp,16
    800014b4:	00000513          	li	a0,0
    800014b8:	00813403          	ld	s0,8(sp)
    800014bc:	01010113          	addi	sp,sp,16
    800014c0:	00008067          	ret

00000000800014c4 <_Z4getcv>:

char getc () {
    800014c4:	fe010113          	addi	sp,sp,-32
    800014c8:	00113c23          	sd	ra,24(sp)
    800014cc:	00813823          	sd	s0,16(sp)
    800014d0:	02010413          	addi	s0,sp,32
    char volatile c;
    syscall(GETC);
    800014d4:	00000713          	li	a4,0
    800014d8:	00000693          	li	a3,0
    800014dc:	00000613          	li	a2,0
    800014e0:	00000593          	li	a1,0
    800014e4:	04100513          	li	a0,65
    800014e8:	00000097          	auipc	ra,0x0
    800014ec:	d4c080e7          	jalr	-692(ra) # 80001234 <_Z7syscallmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(c));
    800014f0:	00050793          	mv	a5,a0
    800014f4:	fef407a3          	sb	a5,-17(s0)
    return c;
    800014f8:	fef44503          	lbu	a0,-17(s0)
}
    800014fc:	0ff57513          	andi	a0,a0,255
    80001500:	01813083          	ld	ra,24(sp)
    80001504:	01013403          	ld	s0,16(sp)
    80001508:	02010113          	addi	sp,sp,32
    8000150c:	00008067          	ret

0000000080001510 <_Z4putcc>:

void putc (char c) {
    80001510:	ff010113          	addi	sp,sp,-16
    80001514:	00113423          	sd	ra,8(sp)
    80001518:	00813023          	sd	s0,0(sp)
    8000151c:	01010413          	addi	s0,sp,16
    80001520:	00050593          	mv	a1,a0
    syscall(PUTC, c);
    80001524:	00000713          	li	a4,0
    80001528:	00000693          	li	a3,0
    8000152c:	00000613          	li	a2,0
    80001530:	04200513          	li	a0,66
    80001534:	00000097          	auipc	ra,0x0
    80001538:	d00080e7          	jalr	-768(ra) # 80001234 <_Z7syscallmmmmm>
    8000153c:	00813083          	ld	ra,8(sp)
    80001540:	00013403          	ld	s0,0(sp)
    80001544:	01010113          	addi	sp,sp,16
    80001548:	00008067          	ret

000000008000154c <_ZN3SemD1Ev>:
#include "../h/semaphore.hpp"

Sem::~Sem() {
    8000154c:	ff010113          	addi	sp,sp,-16
    80001550:	00113423          	sd	ra,8(sp)
    80001554:	00813023          	sd	s0,0(sp)
    80001558:	01010413          	addi	s0,sp,16
    8000155c:	0000a797          	auipc	a5,0xa
    80001560:	02478793          	addi	a5,a5,36 # 8000b580 <_ZTV3Sem+0x10>
    80001564:	00f53023          	sd	a5,0(a0) # 1000 <_entry-0x7ffff000>
    blocked_threads.free();
    80001568:	00850513          	addi	a0,a0,8
    8000156c:	00002097          	auipc	ra,0x2
    80001570:	830080e7          	jalr	-2000(ra) # 80002d9c <_ZN10ThreadList4freeEv>
}
    80001574:	00813083          	ld	ra,8(sp)
    80001578:	00013403          	ld	s0,0(sp)
    8000157c:	01010113          	addi	sp,sp,16
    80001580:	00008067          	ret

0000000080001584 <_ZN3SemD0Ev>:
Sem::~Sem() {
    80001584:	fe010113          	addi	sp,sp,-32
    80001588:	00113c23          	sd	ra,24(sp)
    8000158c:	00813823          	sd	s0,16(sp)
    80001590:	00913423          	sd	s1,8(sp)
    80001594:	02010413          	addi	s0,sp,32
    80001598:	00050493          	mv	s1,a0
}
    8000159c:	00000097          	auipc	ra,0x0
    800015a0:	fb0080e7          	jalr	-80(ra) # 8000154c <_ZN3SemD1Ev>
    800015a4:	00048513          	mv	a0,s1
    800015a8:	00001097          	auipc	ra,0x1
    800015ac:	ae8080e7          	jalr	-1304(ra) # 80002090 <_ZdlPv>
    800015b0:	01813083          	ld	ra,24(sp)
    800015b4:	01013403          	ld	s0,16(sp)
    800015b8:	00813483          	ld	s1,8(sp)
    800015bc:	02010113          	addi	sp,sp,32
    800015c0:	00008067          	ret

00000000800015c4 <_ZN3Sem5blockEv>:
    if (closed) return -1;
    if (++value <= 0) unblock();
    return 0;
}

void Sem::block() {
    800015c4:	fe010113          	addi	sp,sp,-32
    800015c8:	00113c23          	sd	ra,24(sp)
    800015cc:	00813823          	sd	s0,16(sp)
    800015d0:	00913423          	sd	s1,8(sp)
    800015d4:	01213023          	sd	s2,0(sp)
    800015d8:	02010413          	addi	s0,sp,32
    TCB* old = TCB::running;
    800015dc:	0000a917          	auipc	s2,0xa
    800015e0:	1fc93903          	ld	s2,508(s2) # 8000b7d8 <_GLOBAL_OFFSET_TABLE_+0x20>
    800015e4:	00093483          	ld	s1,0(s2)
    blocked_threads.push_back(old);
    800015e8:	00048593          	mv	a1,s1
    800015ec:	00850513          	addi	a0,a0,8
    800015f0:	00001097          	auipc	ra,0x1
    800015f4:	66c080e7          	jalr	1644(ra) # 80002c5c <_ZN10ThreadList9push_backEP3TCB>
    TCB::running = Scheduler::get();
    800015f8:	00001097          	auipc	ra,0x1
    800015fc:	324080e7          	jalr	804(ra) # 8000291c <_ZN9Scheduler3getEv>
    80001600:	00050593          	mv	a1,a0
    80001604:	00a93023          	sd	a0,0(s2)
    TCB::yield(old, TCB::running);
    80001608:	00048513          	mv	a0,s1
    8000160c:	00000097          	auipc	ra,0x0
    80001610:	5ec080e7          	jalr	1516(ra) # 80001bf8 <_ZN3TCB5yieldEPS_S0_>
}
    80001614:	01813083          	ld	ra,24(sp)
    80001618:	01013403          	ld	s0,16(sp)
    8000161c:	00813483          	ld	s1,8(sp)
    80001620:	00013903          	ld	s2,0(sp)
    80001624:	02010113          	addi	sp,sp,32
    80001628:	00008067          	ret

000000008000162c <_ZN3Sem4waitEv>:
    if (closed) return -1;
    8000162c:	01c54783          	lbu	a5,28(a0)
    80001630:	06079063          	bnez	a5,80001690 <_ZN3Sem4waitEv+0x64>
int Sem::wait() {
    80001634:	fe010113          	addi	sp,sp,-32
    80001638:	00113c23          	sd	ra,24(sp)
    8000163c:	00813823          	sd	s0,16(sp)
    80001640:	00913423          	sd	s1,8(sp)
    80001644:	02010413          	addi	s0,sp,32
    80001648:	00050493          	mv	s1,a0
    if (--value < 0) {
    8000164c:	01852783          	lw	a5,24(a0)
    80001650:	fff7879b          	addiw	a5,a5,-1
    80001654:	00f52c23          	sw	a5,24(a0)
    80001658:	02079713          	slli	a4,a5,0x20
    8000165c:	00074e63          	bltz	a4,80001678 <_ZN3Sem4waitEv+0x4c>
    return 0;
    80001660:	00000513          	li	a0,0
}
    80001664:	01813083          	ld	ra,24(sp)
    80001668:	01013403          	ld	s0,16(sp)
    8000166c:	00813483          	ld	s1,8(sp)
    80001670:	02010113          	addi	sp,sp,32
    80001674:	00008067          	ret
        block();
    80001678:	00000097          	auipc	ra,0x0
    8000167c:	f4c080e7          	jalr	-180(ra) # 800015c4 <_ZN3Sem5blockEv>
        if (closed) return -2; /// thread released because Semaphore is closed
    80001680:	01c4c783          	lbu	a5,28(s1)
    80001684:	00079a63          	bnez	a5,80001698 <_ZN3Sem4waitEv+0x6c>
    return 0;
    80001688:	00000513          	li	a0,0
    8000168c:	fd9ff06f          	j	80001664 <_ZN3Sem4waitEv+0x38>
    if (closed) return -1;
    80001690:	fff00513          	li	a0,-1
}
    80001694:	00008067          	ret
        if (closed) return -2; /// thread released because Semaphore is closed
    80001698:	ffe00513          	li	a0,-2
    8000169c:	fc9ff06f          	j	80001664 <_ZN3Sem4waitEv+0x38>

00000000800016a0 <_ZN3Sem7unblockEv>:

void Sem::unblock() {
    800016a0:	ff010113          	addi	sp,sp,-16
    800016a4:	00113423          	sd	ra,8(sp)
    800016a8:	00813023          	sd	s0,0(sp)
    800016ac:	01010413          	addi	s0,sp,16
    TCB* thread = blocked_threads.get_first();
    800016b0:	00850513          	addi	a0,a0,8
    800016b4:	00001097          	auipc	ra,0x1
    800016b8:	554080e7          	jalr	1364(ra) # 80002c08 <_ZN10ThreadList9get_firstEv>
    Scheduler::put(thread);
    800016bc:	00001097          	auipc	ra,0x1
    800016c0:	200080e7          	jalr	512(ra) # 800028bc <_ZN9Scheduler3putEP3TCB>
}
    800016c4:	00813083          	ld	ra,8(sp)
    800016c8:	00013403          	ld	s0,0(sp)
    800016cc:	01010113          	addi	sp,sp,16
    800016d0:	00008067          	ret

00000000800016d4 <_ZN3Sem6signalEv>:
    if (closed) return -1;
    800016d4:	01c54783          	lbu	a5,28(a0)
    800016d8:	04079663          	bnez	a5,80001724 <_ZN3Sem6signalEv+0x50>
    if (++value <= 0) unblock();
    800016dc:	01852783          	lw	a5,24(a0)
    800016e0:	0017879b          	addiw	a5,a5,1
    800016e4:	0007871b          	sext.w	a4,a5
    800016e8:	00f52c23          	sw	a5,24(a0)
    800016ec:	00e05663          	blez	a4,800016f8 <_ZN3Sem6signalEv+0x24>
    return 0;
    800016f0:	00000513          	li	a0,0
}
    800016f4:	00008067          	ret
int Sem::signal() {
    800016f8:	ff010113          	addi	sp,sp,-16
    800016fc:	00113423          	sd	ra,8(sp)
    80001700:	00813023          	sd	s0,0(sp)
    80001704:	01010413          	addi	s0,sp,16
    if (++value <= 0) unblock();
    80001708:	00000097          	auipc	ra,0x0
    8000170c:	f98080e7          	jalr	-104(ra) # 800016a0 <_ZN3Sem7unblockEv>
    return 0;
    80001710:	00000513          	li	a0,0
}
    80001714:	00813083          	ld	ra,8(sp)
    80001718:	00013403          	ld	s0,0(sp)
    8000171c:	01010113          	addi	sp,sp,16
    80001720:	00008067          	ret
    if (closed) return -1;
    80001724:	fff00513          	li	a0,-1
    80001728:	00008067          	ret

000000008000172c <_ZN3Sem9timedWaitEm>:

int Sem::timedWait(time_t time) {
    8000172c:	ff010113          	addi	sp,sp,-16
    80001730:	00813423          	sd	s0,8(sp)
    80001734:	01010413          	addi	s0,sp,16
    return 0;
}
    80001738:	00000513          	li	a0,0
    8000173c:	00813403          	ld	s0,8(sp)
    80001740:	01010113          	addi	sp,sp,16
    80001744:	00008067          	ret

0000000080001748 <_ZN3Sem7tryWaitEv>:

int Sem::tryWait() {
    80001748:	ff010113          	addi	sp,sp,-16
    8000174c:	00813423          	sd	s0,8(sp)
    80001750:	01010413          	addi	s0,sp,16
    return 0;
}
    80001754:	00000513          	li	a0,0
    80001758:	00813403          	ld	s0,8(sp)
    8000175c:	01010113          	addi	sp,sp,16
    80001760:	00008067          	ret

0000000080001764 <_Z7workerAPv>:
    void* address = mem_alloc(50);
    MemoryAllocator::print();
    mem_free(address);
    MemoryAllocator::print();
}
void workerA(void *args) {
    80001764:	fe010113          	addi	sp,sp,-32
    80001768:	00113c23          	sd	ra,24(sp)
    8000176c:	00813823          	sd	s0,16(sp)
    80001770:	00913423          	sd	s1,8(sp)
    80001774:	02010413          	addi	s0,sp,32
    __putc('\n');
    80001778:	00a00513          	li	a0,10
    8000177c:	00007097          	auipc	ra,0x7
    80001780:	d80080e7          	jalr	-640(ra) # 800084fc <__putc>
    for (int i = 0; i < 10; ++i) __putc('A');
    80001784:	00000493          	li	s1,0
    80001788:	00900793          	li	a5,9
    8000178c:	0097cc63          	blt	a5,s1,800017a4 <_Z7workerAPv+0x40>
    80001790:	04100513          	li	a0,65
    80001794:	00007097          	auipc	ra,0x7
    80001798:	d68080e7          	jalr	-664(ra) # 800084fc <__putc>
    8000179c:	0014849b          	addiw	s1,s1,1
    800017a0:	fe9ff06f          	j	80001788 <_Z7workerAPv+0x24>
}
    800017a4:	01813083          	ld	ra,24(sp)
    800017a8:	01013403          	ld	s0,16(sp)
    800017ac:	00813483          	ld	s1,8(sp)
    800017b0:	02010113          	addi	sp,sp,32
    800017b4:	00008067          	ret

00000000800017b8 <_Z7workerBPv>:
void workerB(void *args) {
    800017b8:	fe010113          	addi	sp,sp,-32
    800017bc:	00113c23          	sd	ra,24(sp)
    800017c0:	00813823          	sd	s0,16(sp)
    800017c4:	00913423          	sd	s1,8(sp)
    800017c8:	02010413          	addi	s0,sp,32
    __putc('\n');
    800017cc:	00a00513          	li	a0,10
    800017d0:	00007097          	auipc	ra,0x7
    800017d4:	d2c080e7          	jalr	-724(ra) # 800084fc <__putc>
    for (int i = 0; i < 10; ++i) __putc('B');
    800017d8:	00000493          	li	s1,0
    800017dc:	00900793          	li	a5,9
    800017e0:	0097cc63          	blt	a5,s1,800017f8 <_Z7workerBPv+0x40>
    800017e4:	04200513          	li	a0,66
    800017e8:	00007097          	auipc	ra,0x7
    800017ec:	d14080e7          	jalr	-748(ra) # 800084fc <__putc>
    800017f0:	0014849b          	addiw	s1,s1,1
    800017f4:	fe9ff06f          	j	800017dc <_Z7workerBPv+0x24>
}
    800017f8:	01813083          	ld	ra,24(sp)
    800017fc:	01013403          	ld	s0,16(sp)
    80001800:	00813483          	ld	s1,8(sp)
    80001804:	02010113          	addi	sp,sp,32
    80001808:	00008067          	ret

000000008000180c <printNumber>:
extern "C" void printNumber(uint64 num) {
    8000180c:	fd010113          	addi	sp,sp,-48
    80001810:	02113423          	sd	ra,40(sp)
    80001814:	02813023          	sd	s0,32(sp)
    80001818:	00913c23          	sd	s1,24(sp)
    8000181c:	01213823          	sd	s2,16(sp)
    80001820:	01313423          	sd	s3,8(sp)
    80001824:	03010413          	addi	s0,sp,48
    80001828:	00050913          	mv	s2,a0
    __putc('\n');
    8000182c:	00a00513          	li	a0,10
    80001830:	00007097          	auipc	ra,0x7
    80001834:	ccc080e7          	jalr	-820(ra) # 800084fc <__putc>
    __putc('N');
    80001838:	04e00513          	li	a0,78
    8000183c:	00007097          	auipc	ra,0x7
    80001840:	cc0080e7          	jalr	-832(ra) # 800084fc <__putc>
    __putc(':');
    80001844:	03a00513          	li	a0,58
    80001848:	00007097          	auipc	ra,0x7
    8000184c:	cb4080e7          	jalr	-844(ra) # 800084fc <__putc>
    __putc(' ');
    80001850:	02000513          	li	a0,32
    80001854:	00007097          	auipc	ra,0x7
    80001858:	ca8080e7          	jalr	-856(ra) # 800084fc <__putc>
    if (!num) __putc('0');
    8000185c:	00090863          	beqz	s2,8000186c <printNumber+0x60>
    uint64 num2 = 0, zero_count = 0;
    80001860:	00000993          	li	s3,0
    80001864:	00000493          	li	s1,0
    80001868:	01c0006f          	j	80001884 <printNumber+0x78>
    if (!num) __putc('0');
    8000186c:	03000513          	li	a0,48
    80001870:	00007097          	auipc	ra,0x7
    80001874:	c8c080e7          	jalr	-884(ra) # 800084fc <__putc>
    80001878:	fe9ff06f          	j	80001860 <printNumber+0x54>
        num /= 10;
    8000187c:	00a00793          	li	a5,10
    80001880:	02f95933          	divu	s2,s2,a5
    while (num) {
    80001884:	02090463          	beqz	s2,800018ac <printNumber+0xa0>
        num2 *= 10;
    80001888:	00249793          	slli	a5,s1,0x2
    8000188c:	009784b3          	add	s1,a5,s1
    80001890:	00149793          	slli	a5,s1,0x1
        num2 += num % 10;
    80001894:	00a00493          	li	s1,10
    80001898:	029974b3          	remu	s1,s2,s1
    8000189c:	00f484b3          	add	s1,s1,a5
        if (!num2) ++zero_count;
    800018a0:	fc049ee3          	bnez	s1,8000187c <printNumber+0x70>
    800018a4:	00198993          	addi	s3,s3,1
    800018a8:	fd5ff06f          	j	8000187c <printNumber+0x70>
    while (num2) {
    800018ac:	02048063          	beqz	s1,800018cc <printNumber+0xc0>
        __putc(num2 % 10 + '0');
    800018b0:	00a00913          	li	s2,10
    800018b4:	0324f533          	remu	a0,s1,s2
    800018b8:	03050513          	addi	a0,a0,48
    800018bc:	00007097          	auipc	ra,0x7
    800018c0:	c40080e7          	jalr	-960(ra) # 800084fc <__putc>
        num2 /= 10;
    800018c4:	0324d4b3          	divu	s1,s1,s2
    while (num2) {
    800018c8:	fe5ff06f          	j	800018ac <printNumber+0xa0>
    while (zero_count--) __putc('0');
    800018cc:	fff98493          	addi	s1,s3,-1
    800018d0:	00098c63          	beqz	s3,800018e8 <printNumber+0xdc>
    800018d4:	03000513          	li	a0,48
    800018d8:	00007097          	auipc	ra,0x7
    800018dc:	c24080e7          	jalr	-988(ra) # 800084fc <__putc>
    800018e0:	00048993          	mv	s3,s1
    800018e4:	fe9ff06f          	j	800018cc <printNumber+0xc0>
}
    800018e8:	02813083          	ld	ra,40(sp)
    800018ec:	02013403          	ld	s0,32(sp)
    800018f0:	01813483          	ld	s1,24(sp)
    800018f4:	01013903          	ld	s2,16(sp)
    800018f8:	00813983          	ld	s3,8(sp)
    800018fc:	03010113          	addi	sp,sp,48
    80001900:	00008067          	ret

0000000080001904 <_Z19testMemoryAllocatorv>:
void testMemoryAllocator() {
    80001904:	fe010113          	addi	sp,sp,-32
    80001908:	00113c23          	sd	ra,24(sp)
    8000190c:	00813823          	sd	s0,16(sp)
    80001910:	00913423          	sd	s1,8(sp)
    80001914:	01213023          	sd	s2,0(sp)
    80001918:	02010413          	addi	s0,sp,32
    MemoryAllocator::print();
    8000191c:	00001097          	auipc	ra,0x1
    80001920:	edc080e7          	jalr	-292(ra) # 800027f8 <_ZN15MemoryAllocator5printEv>
    void *address = MemoryAllocator::mem_alloc(1);
    80001924:	00100513          	li	a0,1
    80001928:	00001097          	auipc	ra,0x1
    8000192c:	b78080e7          	jalr	-1160(ra) # 800024a0 <_ZN15MemoryAllocator9mem_allocEm>
    80001930:	00050493          	mv	s1,a0
    MemoryAllocator::print();
    80001934:	00001097          	auipc	ra,0x1
    80001938:	ec4080e7          	jalr	-316(ra) # 800027f8 <_ZN15MemoryAllocator5printEv>
    int s1 = MemoryAllocator::mem_free(address);
    8000193c:	00048513          	mv	a0,s1
    80001940:	00001097          	auipc	ra,0x1
    80001944:	d4c080e7          	jalr	-692(ra) # 8000268c <_ZN15MemoryAllocator8mem_freeEPv>
    80001948:	00050913          	mv	s2,a0
    MemoryAllocator::print();
    8000194c:	00001097          	auipc	ra,0x1
    80001950:	eac080e7          	jalr	-340(ra) # 800027f8 <_ZN15MemoryAllocator5printEv>
    int s2 = MemoryAllocator::mem_free(address);
    80001954:	00048513          	mv	a0,s1
    80001958:	00001097          	auipc	ra,0x1
    8000195c:	d34080e7          	jalr	-716(ra) # 8000268c <_ZN15MemoryAllocator8mem_freeEPv>
    80001960:	00050493          	mv	s1,a0
    MemoryAllocator::print();
    80001964:	00001097          	auipc	ra,0x1
    80001968:	e94080e7          	jalr	-364(ra) # 800027f8 <_ZN15MemoryAllocator5printEv>
    __putc('\n');
    8000196c:	00a00513          	li	a0,10
    80001970:	00007097          	auipc	ra,0x7
    80001974:	b8c080e7          	jalr	-1140(ra) # 800084fc <__putc>
    if (s1 == 0) __putc('G'); /// G means Good (passed)
    80001978:	02090263          	beqz	s2,8000199c <_Z19testMemoryAllocatorv+0x98>
    if (s2 == -3) __putc('G'); /// same
    8000197c:	ffd00793          	li	a5,-3
    80001980:	02f48663          	beq	s1,a5,800019ac <_Z19testMemoryAllocatorv+0xa8>
}
    80001984:	01813083          	ld	ra,24(sp)
    80001988:	01013403          	ld	s0,16(sp)
    8000198c:	00813483          	ld	s1,8(sp)
    80001990:	00013903          	ld	s2,0(sp)
    80001994:	02010113          	addi	sp,sp,32
    80001998:	00008067          	ret
    if (s1 == 0) __putc('G'); /// G means Good (passed)
    8000199c:	04700513          	li	a0,71
    800019a0:	00007097          	auipc	ra,0x7
    800019a4:	b5c080e7          	jalr	-1188(ra) # 800084fc <__putc>
    800019a8:	fd5ff06f          	j	8000197c <_Z19testMemoryAllocatorv+0x78>
    if (s2 == -3) __putc('G'); /// same
    800019ac:	04700513          	li	a0,71
    800019b0:	00007097          	auipc	ra,0x7
    800019b4:	b4c080e7          	jalr	-1204(ra) # 800084fc <__putc>
}
    800019b8:	fcdff06f          	j	80001984 <_Z19testMemoryAllocatorv+0x80>

00000000800019bc <_Z11testMemoryCv>:
void testMemoryC() {
    800019bc:	fe010113          	addi	sp,sp,-32
    800019c0:	00113c23          	sd	ra,24(sp)
    800019c4:	00813823          	sd	s0,16(sp)
    800019c8:	00913423          	sd	s1,8(sp)
    800019cc:	02010413          	addi	s0,sp,32
    MemoryAllocator::print();
    800019d0:	00001097          	auipc	ra,0x1
    800019d4:	e28080e7          	jalr	-472(ra) # 800027f8 <_ZN15MemoryAllocator5printEv>
    void* address = mem_alloc(50);
    800019d8:	03200513          	li	a0,50
    800019dc:	00000097          	auipc	ra,0x0
    800019e0:	874080e7          	jalr	-1932(ra) # 80001250 <_Z9mem_allocm>
    800019e4:	00050493          	mv	s1,a0
    MemoryAllocator::print();
    800019e8:	00001097          	auipc	ra,0x1
    800019ec:	e10080e7          	jalr	-496(ra) # 800027f8 <_ZN15MemoryAllocator5printEv>
    mem_free(address);
    800019f0:	00048513          	mv	a0,s1
    800019f4:	00000097          	auipc	ra,0x0
    800019f8:	8b0080e7          	jalr	-1872(ra) # 800012a4 <_Z8mem_freePv>
    MemoryAllocator::print();
    800019fc:	00001097          	auipc	ra,0x1
    80001a00:	dfc080e7          	jalr	-516(ra) # 800027f8 <_ZN15MemoryAllocator5printEv>
}
    80001a04:	01813083          	ld	ra,24(sp)
    80001a08:	01013403          	ld	s0,16(sp)
    80001a0c:	00813483          	ld	s1,8(sp)
    80001a10:	02010113          	addi	sp,sp,32
    80001a14:	00008067          	ret

0000000080001a18 <_Z11testThreadsv>:
void testThreads() {
    80001a18:	fe010113          	addi	sp,sp,-32
    80001a1c:	00113c23          	sd	ra,24(sp)
    80001a20:	00813823          	sd	s0,16(sp)
    80001a24:	00913423          	sd	s1,8(sp)
    80001a28:	02010413          	addi	s0,sp,32
    static thread_t threads[3];

    thread_create(&threads[0], nullptr, nullptr);
    80001a2c:	0000a497          	auipc	s1,0xa
    80001a30:	e0448493          	addi	s1,s1,-508 # 8000b830 <_ZZ11testThreadsvE7threads>
    80001a34:	00000613          	li	a2,0
    80001a38:	00000593          	li	a1,0
    80001a3c:	00048513          	mv	a0,s1
    80001a40:	00000097          	auipc	ra,0x0
    80001a44:	8b0080e7          	jalr	-1872(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running = threads[0];
    80001a48:	0004b703          	ld	a4,0(s1)
    80001a4c:	0000a797          	auipc	a5,0xa
    80001a50:	d8c7b783          	ld	a5,-628(a5) # 8000b7d8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001a54:	00e7b023          	sd	a4,0(a5)

    thread_create(&threads[1], workerA, nullptr);
    80001a58:	00000613          	li	a2,0
    80001a5c:	00000597          	auipc	a1,0x0
    80001a60:	d0858593          	addi	a1,a1,-760 # 80001764 <_Z7workerAPv>
    80001a64:	0000a517          	auipc	a0,0xa
    80001a68:	dd450513          	addi	a0,a0,-556 # 8000b838 <_ZZ11testThreadsvE7threads+0x8>
    80001a6c:	00000097          	auipc	ra,0x0
    80001a70:	884080e7          	jalr	-1916(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&threads[2], workerB, nullptr);
    80001a74:	00000613          	li	a2,0
    80001a78:	00000597          	auipc	a1,0x0
    80001a7c:	d4058593          	addi	a1,a1,-704 # 800017b8 <_Z7workerBPv>
    80001a80:	0000a517          	auipc	a0,0xa
    80001a84:	dc050513          	addi	a0,a0,-576 # 8000b840 <_ZZ11testThreadsvE7threads+0x10>
    80001a88:	00000097          	auipc	ra,0x0
    80001a8c:	868080e7          	jalr	-1944(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    80001a90:	00c0006f          	j	80001a9c <_Z11testThreadsv+0x84>

    while (!threads[1] -> is_finished() || !threads[2] -> is_finished()) thread_dispatch();
    80001a94:	00000097          	auipc	ra,0x0
    80001a98:	930080e7          	jalr	-1744(ra) # 800013c4 <_Z15thread_dispatchv>
    80001a9c:	0000a517          	auipc	a0,0xa
    80001aa0:	d9c53503          	ld	a0,-612(a0) # 8000b838 <_ZZ11testThreadsvE7threads+0x8>
    80001aa4:	00000097          	auipc	ra,0x0
    80001aa8:	508080e7          	jalr	1288(ra) # 80001fac <_ZNK3TCB11is_finishedEv>
    80001aac:	fe0504e3          	beqz	a0,80001a94 <_Z11testThreadsv+0x7c>
    80001ab0:	0000a517          	auipc	a0,0xa
    80001ab4:	d9053503          	ld	a0,-624(a0) # 8000b840 <_ZZ11testThreadsvE7threads+0x10>
    80001ab8:	00000097          	auipc	ra,0x0
    80001abc:	4f4080e7          	jalr	1268(ra) # 80001fac <_ZNK3TCB11is_finishedEv>
    80001ac0:	fc050ae3          	beqz	a0,80001a94 <_Z11testThreadsv+0x7c>
}
    80001ac4:	01813083          	ld	ra,24(sp)
    80001ac8:	01013403          	ld	s0,16(sp)
    80001acc:	00813483          	ld	s1,8(sp)
    80001ad0:	02010113          	addi	sp,sp,32
    80001ad4:	00008067          	ret

0000000080001ad8 <_Z10initializev>:

void userMain();
void initialize() {
    80001ad8:	ff010113          	addi	sp,sp,-16
    80001adc:	00113423          	sd	ra,8(sp)
    80001ae0:	00813023          	sd	s0,0(sp)
    80001ae4:	01010413          	addi	s0,sp,16
    /// Set interrupt routine handler
    RiscV::write_stvec((uint64) &RiscV::handle_interrupt);
    80001ae8:	0000a797          	auipc	a5,0xa
    80001aec:	ce07b783          	ld	a5,-800(a5) # 8000b7c8 <_GLOBAL_OFFSET_TABLE_+0x10>
    __asm__ volatile ("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void RiscV::write_stvec(uint64 val) {
    __asm__ volatile ("csrw stvec, %0" : : "r"(val));
    80001af0:	10579073          	csrw	stvec,a5
    /// Enable software interrupts
//    RiscV::ms_sstatus(RiscV::SSTATUS_SIE);
    /// Initialize Memory Allocator
    MemoryAllocator::initialize();
    80001af4:	00001097          	auipc	ra,0x1
    80001af8:	ac8080e7          	jalr	-1336(ra) # 800025bc <_ZN15MemoryAllocator10initializeEv>
}
    80001afc:	00813083          	ld	ra,8(sp)
    80001b00:	00013403          	ld	s0,0(sp)
    80001b04:	01010113          	addi	sp,sp,16
    80001b08:	00008067          	ret

0000000080001b0c <_Z4testv>:
void test() {
    80001b0c:	ff010113          	addi	sp,sp,-16
    80001b10:	00113423          	sd	ra,8(sp)
    80001b14:	00813023          	sd	s0,0(sp)
    80001b18:	01010413          	addi	s0,sp,16
    /// Test Memory Allocation
    testMemoryAllocator();
    80001b1c:	00000097          	auipc	ra,0x0
    80001b20:	de8080e7          	jalr	-536(ra) # 80001904 <_Z19testMemoryAllocatorv>
    testMemoryC();
    80001b24:	00000097          	auipc	ra,0x0
    80001b28:	e98080e7          	jalr	-360(ra) # 800019bc <_Z11testMemoryCv>
    /// Test Threads
    testThreads();
    80001b2c:	00000097          	auipc	ra,0x0
    80001b30:	eec080e7          	jalr	-276(ra) # 80001a18 <_Z11testThreadsv>
    /// Test Everything
//    userMain();
}
    80001b34:	00813083          	ld	ra,8(sp)
    80001b38:	00013403          	ld	s0,0(sp)
    80001b3c:	01010113          	addi	sp,sp,16
    80001b40:	00008067          	ret

0000000080001b44 <main>:


int main() {
    80001b44:	ff010113          	addi	sp,sp,-16
    80001b48:	00113423          	sd	ra,8(sp)
    80001b4c:	00813023          	sd	s0,0(sp)
    80001b50:	01010413          	addi	s0,sp,16
    initialize();
    80001b54:	00000097          	auipc	ra,0x0
    80001b58:	f84080e7          	jalr	-124(ra) # 80001ad8 <_Z10initializev>
    test();
    80001b5c:	00000097          	auipc	ra,0x0
    80001b60:	fb0080e7          	jalr	-80(ra) # 80001b0c <_Z4testv>
    __putc('\n');
    80001b64:	00a00513          	li	a0,10
    80001b68:	00007097          	auipc	ra,0x7
    80001b6c:	994080e7          	jalr	-1644(ra) # 800084fc <__putc>
    return 0;
    80001b70:	00000513          	li	a0,0
    80001b74:	00813083          	ld	ra,8(sp)
    80001b78:	00013403          	ld	s0,0(sp)
    80001b7c:	01010113          	addi	sp,sp,16
    80001b80:	00008067          	ret

0000000080001b84 <_ZN3TCBC1EPFvPvES0_S0_NS_7ContextE>:
    };
    *handle = new TCB(start_routine, arg, stack_begin_address, context);
    return 0;
}

TCB::TCB(void (*function_body)(void *), void *arg, void *stack, Context context) : context(context) {
    80001b84:	00e53423          	sd	a4,8(a0)
    80001b88:	00f53823          	sd	a5,16(a0)
    id = cnt++;
    80001b8c:	0000a717          	auipc	a4,0xa
    80001b90:	cbc70713          	addi	a4,a4,-836 # 8000b848 <_ZN3TCB3cntE>
    80001b94:	00072783          	lw	a5,0(a4)
    80001b98:	0017881b          	addiw	a6,a5,1
    80001b9c:	01072023          	sw	a6,0(a4)
    80001ba0:	00f52023          	sw	a5,0(a0)
    status = RUNNABLE;
    80001ba4:	00052c23          	sw	zero,24(a0)
    this -> function_body = function_body;
    80001ba8:	02b53023          	sd	a1,32(a0)
    this -> arg = arg;
    80001bac:	02c53423          	sd	a2,40(a0)
    this -> stack = stack;
    80001bb0:	02d53823          	sd	a3,48(a0)
    time_slice = DEFAULT_TIME_SLICE;
    80001bb4:	00200793          	li	a5,2
    80001bb8:	02f53c23          	sd	a5,56(a0)
    time_to_sleep = 0;
    80001bbc:	04053423          	sd	zero,72(a0)
    next_ready = nullptr;
    80001bc0:	04053023          	sd	zero,64(a0)
    next_sleeping = nullptr;
    80001bc4:	04053823          	sd	zero,80(a0)
    if (function_body) Scheduler::put(this);
    80001bc8:	02058663          	beqz	a1,80001bf4 <_ZN3TCBC1EPFvPvES0_S0_NS_7ContextE+0x70>
TCB::TCB(void (*function_body)(void *), void *arg, void *stack, Context context) : context(context) {
    80001bcc:	fe010113          	addi	sp,sp,-32
    80001bd0:	00113c23          	sd	ra,24(sp)
    80001bd4:	00813823          	sd	s0,16(sp)
    80001bd8:	02010413          	addi	s0,sp,32
    if (function_body) Scheduler::put(this);
    80001bdc:	00001097          	auipc	ra,0x1
    80001be0:	ce0080e7          	jalr	-800(ra) # 800028bc <_ZN9Scheduler3putEP3TCB>
}
    80001be4:	01813083          	ld	ra,24(sp)
    80001be8:	01013403          	ld	s0,16(sp)
    80001bec:	02010113          	addi	sp,sp,32
    80001bf0:	00008067          	ret
    80001bf4:	00008067          	ret

0000000080001bf8 <_ZN3TCB5yieldEPS_S0_>:
    RiscV::popSppSpie();
    running -> function_body(running -> arg);
    thread_exit();
}

void TCB::yield(TCB *old_running, TCB *new_running) {
    80001bf8:	fe010113          	addi	sp,sp,-32
    80001bfc:	00113c23          	sd	ra,24(sp)
    80001c00:	00813823          	sd	s0,16(sp)
    80001c04:	00913423          	sd	s1,8(sp)
    80001c08:	01213023          	sd	s2,0(sp)
    80001c0c:	02010413          	addi	s0,sp,32
    80001c10:	00050493          	mv	s1,a0
    80001c14:	00058913          	mv	s2,a1
    RiscV::push_registers();
    80001c18:	fffff097          	auipc	ra,0xfffff
    80001c1c:	4e8080e7          	jalr	1256(ra) # 80001100 <_ZN5RiscV14push_registersEv>
    if (old_running != new_running) context_switch(&old_running -> context, &new_running -> context);
    80001c20:	01248a63          	beq	s1,s2,80001c34 <_ZN3TCB5yieldEPS_S0_+0x3c>
    80001c24:	00890593          	addi	a1,s2,8
    80001c28:	00848513          	addi	a0,s1,8
    80001c2c:	fffff097          	auipc	ra,0xfffff
    80001c30:	5d4080e7          	jalr	1492(ra) # 80001200 <_ZN3TCB14context_switchEPNS_7ContextES1_>
    RiscV::pop_registers();
    80001c34:	fffff097          	auipc	ra,0xfffff
    80001c38:	54c080e7          	jalr	1356(ra) # 80001180 <_ZN5RiscV13pop_registersEv>
}
    80001c3c:	01813083          	ld	ra,24(sp)
    80001c40:	01013403          	ld	s0,16(sp)
    80001c44:	00813483          	ld	s1,8(sp)
    80001c48:	00013903          	ld	s2,0(sp)
    80001c4c:	02010113          	addi	sp,sp,32
    80001c50:	00008067          	ret

0000000080001c54 <_ZN3TCB8dispatchEv>:

void TCB::dispatch() {
    80001c54:	fe010113          	addi	sp,sp,-32
    80001c58:	00113c23          	sd	ra,24(sp)
    80001c5c:	00813823          	sd	s0,16(sp)
    80001c60:	00913423          	sd	s1,8(sp)
    80001c64:	02010413          	addi	s0,sp,32
    TCB* old = running;
    80001c68:	0000a497          	auipc	s1,0xa
    80001c6c:	be84b483          	ld	s1,-1048(s1) # 8000b850 <_ZN3TCB7runningE>
    if (old -> status != FINISHED && old -> status != BLOCKED) Scheduler::put(old);
    80001c70:	0184a783          	lw	a5,24(s1)
    80001c74:	00400713          	li	a4,4
    80001c78:	00e78663          	beq	a5,a4,80001c84 <_ZN3TCB8dispatchEv+0x30>
    80001c7c:	00200713          	li	a4,2
    80001c80:	02e79e63          	bne	a5,a4,80001cbc <_ZN3TCB8dispatchEv+0x68>
    running = Scheduler::get();
    80001c84:	00001097          	auipc	ra,0x1
    80001c88:	c98080e7          	jalr	-872(ra) # 8000291c <_ZN9Scheduler3getEv>
    80001c8c:	00050593          	mv	a1,a0
    80001c90:	0000a797          	auipc	a5,0xa
    80001c94:	bca7b023          	sd	a0,-1088(a5) # 8000b850 <_ZN3TCB7runningE>
    if (old != running) yield(old, running);
    80001c98:	00a48863          	beq	s1,a0,80001ca8 <_ZN3TCB8dispatchEv+0x54>
    80001c9c:	00048513          	mv	a0,s1
    80001ca0:	00000097          	auipc	ra,0x0
    80001ca4:	f58080e7          	jalr	-168(ra) # 80001bf8 <_ZN3TCB5yieldEPS_S0_>
}
    80001ca8:	01813083          	ld	ra,24(sp)
    80001cac:	01013403          	ld	s0,16(sp)
    80001cb0:	00813483          	ld	s1,8(sp)
    80001cb4:	02010113          	addi	sp,sp,32
    80001cb8:	00008067          	ret
    if (old -> status != FINISHED && old -> status != BLOCKED) Scheduler::put(old);
    80001cbc:	00048513          	mv	a0,s1
    80001cc0:	00001097          	auipc	ra,0x1
    80001cc4:	bfc080e7          	jalr	-1028(ra) # 800028bc <_ZN9Scheduler3putEP3TCB>
    80001cc8:	fbdff06f          	j	80001c84 <_ZN3TCB8dispatchEv+0x30>

0000000080001ccc <_ZNK3TCB14get_next_readyEv>:

TCB *TCB::get_next_ready() const {
    80001ccc:	ff010113          	addi	sp,sp,-16
    80001cd0:	00813423          	sd	s0,8(sp)
    80001cd4:	01010413          	addi	s0,sp,16
    return next_ready;
}
    80001cd8:	04053503          	ld	a0,64(a0)
    80001cdc:	00813403          	ld	s0,8(sp)
    80001ce0:	01010113          	addi	sp,sp,16
    80001ce4:	00008067          	ret

0000000080001ce8 <_ZN3TCB14set_next_readyEPS_>:

void TCB::set_next_ready(TCB *next) {
    80001ce8:	ff010113          	addi	sp,sp,-16
    80001cec:	00813423          	sd	s0,8(sp)
    80001cf0:	01010413          	addi	s0,sp,16
    next_ready = next;
    80001cf4:	04b53023          	sd	a1,64(a0)
}
    80001cf8:	00813403          	ld	s0,8(sp)
    80001cfc:	01010113          	addi	sp,sp,16
    80001d00:	00008067          	ret

0000000080001d04 <_ZN3TCB17set_next_sleepingEPS_>:

void TCB::set_next_sleeping(TCB *next) {
    80001d04:	ff010113          	addi	sp,sp,-16
    80001d08:	00813423          	sd	s0,8(sp)
    80001d0c:	01010413          	addi	s0,sp,16
    next_sleeping = next;
    80001d10:	04b53823          	sd	a1,80(a0)
}
    80001d14:	00813403          	ld	s0,8(sp)
    80001d18:	01010113          	addi	sp,sp,16
    80001d1c:	00008067          	ret

0000000080001d20 <_ZNK3TCB17get_next_sleepingEv>:

TCB* TCB::get_next_sleeping() const {
    80001d20:	ff010113          	addi	sp,sp,-16
    80001d24:	00813423          	sd	s0,8(sp)
    80001d28:	01010413          	addi	s0,sp,16
    return next_sleeping;
}
    80001d2c:	05053503          	ld	a0,80(a0)
    80001d30:	00813403          	ld	s0,8(sp)
    80001d34:	01010113          	addi	sp,sp,16
    80001d38:	00008067          	ret

0000000080001d3c <_ZN3TCB17set_time_to_sleepEm>:

void TCB::set_time_to_sleep(time_t time) {
    80001d3c:	ff010113          	addi	sp,sp,-16
    80001d40:	00813423          	sd	s0,8(sp)
    80001d44:	01010413          	addi	s0,sp,16
    time_to_sleep = time;
    80001d48:	04b53423          	sd	a1,72(a0)
}
    80001d4c:	00813403          	ld	s0,8(sp)
    80001d50:	01010113          	addi	sp,sp,16
    80001d54:	00008067          	ret

0000000080001d58 <_ZNK3TCB17get_time_to_sleepEv>:

time_t TCB::get_time_to_sleep() const {
    80001d58:	ff010113          	addi	sp,sp,-16
    80001d5c:	00813423          	sd	s0,8(sp)
    80001d60:	01010413          	addi	s0,sp,16
    return time_to_sleep;
}
    80001d64:	04853503          	ld	a0,72(a0)
    80001d68:	00813403          	ld	s0,8(sp)
    80001d6c:	01010113          	addi	sp,sp,16
    80001d70:	00008067          	ret

0000000080001d74 <_ZN3TCB10set_statusENS_6StatusE>:

void TCB::set_status(TCB::Status stat) {
    80001d74:	ff010113          	addi	sp,sp,-16
    80001d78:	00813423          	sd	s0,8(sp)
    80001d7c:	01010413          	addi	s0,sp,16
    this -> status = stat;
    80001d80:	00b52c23          	sw	a1,24(a0)
}
    80001d84:	00813403          	ld	s0,8(sp)
    80001d88:	01010113          	addi	sp,sp,16
    80001d8c:	00008067          	ret

0000000080001d90 <_ZN3TCB11thread_exitEv>:
void TCB::thread_exit() {
    80001d90:	ff010113          	addi	sp,sp,-16
    80001d94:	00113423          	sd	ra,8(sp)
    80001d98:	00813023          	sd	s0,0(sp)
    80001d9c:	01010413          	addi	s0,sp,16
    running -> set_status(Status::FINISHED);
    80001da0:	00400593          	li	a1,4
    80001da4:	0000a517          	auipc	a0,0xa
    80001da8:	aac53503          	ld	a0,-1364(a0) # 8000b850 <_ZN3TCB7runningE>
    80001dac:	00000097          	auipc	ra,0x0
    80001db0:	fc8080e7          	jalr	-56(ra) # 80001d74 <_ZN3TCB10set_statusENS_6StatusE>
    dispatch();
    80001db4:	00000097          	auipc	ra,0x0
    80001db8:	ea0080e7          	jalr	-352(ra) # 80001c54 <_ZN3TCB8dispatchEv>
}
    80001dbc:	00813083          	ld	ra,8(sp)
    80001dc0:	00013403          	ld	s0,0(sp)
    80001dc4:	01010113          	addi	sp,sp,16
    80001dc8:	00008067          	ret

0000000080001dcc <_ZN3TCB16wrapper_functionEv>:
void TCB::wrapper_function() {
    80001dcc:	ff010113          	addi	sp,sp,-16
    80001dd0:	00113423          	sd	ra,8(sp)
    80001dd4:	00813023          	sd	s0,0(sp)
    80001dd8:	01010413          	addi	s0,sp,16
    RiscV::popSppSpie();
    80001ddc:	00001097          	auipc	ra,0x1
    80001de0:	cec080e7          	jalr	-788(ra) # 80002ac8 <_ZN5RiscV10popSppSpieEv>
    running -> function_body(running -> arg);
    80001de4:	0000a797          	auipc	a5,0xa
    80001de8:	a6c7b783          	ld	a5,-1428(a5) # 8000b850 <_ZN3TCB7runningE>
    80001dec:	0207b703          	ld	a4,32(a5)
    80001df0:	0287b503          	ld	a0,40(a5)
    80001df4:	000700e7          	jalr	a4
    thread_exit();
    80001df8:	00000097          	auipc	ra,0x0
    80001dfc:	f98080e7          	jalr	-104(ra) # 80001d90 <_ZN3TCB11thread_exitEv>
}
    80001e00:	00813083          	ld	ra,8(sp)
    80001e04:	00013403          	ld	s0,0(sp)
    80001e08:	01010113          	addi	sp,sp,16
    80001e0c:	00008067          	ret

0000000080001e10 <_ZN3TCB5startEv>:

void TCB::start() {
    80001e10:	fe010113          	addi	sp,sp,-32
    80001e14:	00113c23          	sd	ra,24(sp)
    80001e18:	00813823          	sd	s0,16(sp)
    80001e1c:	00913423          	sd	s1,8(sp)
    80001e20:	02010413          	addi	s0,sp,32
    80001e24:	00050493          	mv	s1,a0
    Scheduler::put(this);
    80001e28:	00001097          	auipc	ra,0x1
    80001e2c:	a94080e7          	jalr	-1388(ra) # 800028bc <_ZN9Scheduler3putEP3TCB>
    if (!running) running = this;
    80001e30:	0000a797          	auipc	a5,0xa
    80001e34:	a207b783          	ld	a5,-1504(a5) # 8000b850 <_ZN3TCB7runningE>
    80001e38:	00078c63          	beqz	a5,80001e50 <_ZN3TCB5startEv+0x40>
}
    80001e3c:	01813083          	ld	ra,24(sp)
    80001e40:	01013403          	ld	s0,16(sp)
    80001e44:	00813483          	ld	s1,8(sp)
    80001e48:	02010113          	addi	sp,sp,32
    80001e4c:	00008067          	ret
    if (!running) running = this;
    80001e50:	0000a797          	auipc	a5,0xa
    80001e54:	a097b023          	sd	s1,-1536(a5) # 8000b850 <_ZN3TCB7runningE>
}
    80001e58:	fe5ff06f          	j	80001e3c <_ZN3TCB5startEv+0x2c>

0000000080001e5c <_ZN3TCBnwEm>:

void *TCB::operator new(size_t size) {
    80001e5c:	ff010113          	addi	sp,sp,-16
    80001e60:	00113423          	sd	ra,8(sp)
    80001e64:	00813023          	sd	s0,0(sp)
    80001e68:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    80001e6c:	00001097          	auipc	ra,0x1
    80001e70:	a30080e7          	jalr	-1488(ra) # 8000289c <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80001e74:	00000097          	auipc	ra,0x0
    80001e78:	62c080e7          	jalr	1580(ra) # 800024a0 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001e7c:	00813083          	ld	ra,8(sp)
    80001e80:	00013403          	ld	s0,0(sp)
    80001e84:	01010113          	addi	sp,sp,16
    80001e88:	00008067          	ret

0000000080001e8c <_ZN3TCBdlEPv>:

void TCB::operator delete(void *addr) {
    80001e8c:	ff010113          	addi	sp,sp,-16
    80001e90:	00113423          	sd	ra,8(sp)
    80001e94:	00813023          	sd	s0,0(sp)
    80001e98:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    80001e9c:	00000097          	auipc	ra,0x0
    80001ea0:	7f0080e7          	jalr	2032(ra) # 8000268c <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001ea4:	00813083          	ld	ra,8(sp)
    80001ea8:	00013403          	ld	s0,0(sp)
    80001eac:	01010113          	addi	sp,sp,16
    80001eb0:	00008067          	ret

0000000080001eb4 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>:
int TCB::thread_create(thread_t *handle, void(*start_routine)(void *), void *arg, void *stack_begin_address) {
    80001eb4:	fa010113          	addi	sp,sp,-96
    80001eb8:	04113c23          	sd	ra,88(sp)
    80001ebc:	04813823          	sd	s0,80(sp)
    80001ec0:	04913423          	sd	s1,72(sp)
    80001ec4:	05213023          	sd	s2,64(sp)
    80001ec8:	03313c23          	sd	s3,56(sp)
    80001ecc:	03413823          	sd	s4,48(sp)
    80001ed0:	03513423          	sd	s5,40(sp)
    80001ed4:	06010413          	addi	s0,sp,96
    80001ed8:	00050993          	mv	s3,a0
    80001edc:	00058a13          	mv	s4,a1
    80001ee0:	00060a93          	mv	s5,a2
    80001ee4:	00068493          	mv	s1,a3
    Context context = {
    80001ee8:	00000797          	auipc	a5,0x0
    80001eec:	ee478793          	addi	a5,a5,-284 # 80001dcc <_ZN3TCB16wrapper_functionEv>
    80001ef0:	faf43023          	sd	a5,-96(s0)
            (uint64) (stack_begin_address ? (uint64) stack_begin_address + DEFAULT_STACK_SIZE - 1 : 0)
    80001ef4:	04068663          	beqz	a3,80001f40 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_+0x8c>
    80001ef8:	000017b7          	lui	a5,0x1
    80001efc:	fff78793          	addi	a5,a5,-1 # fff <_entry-0x7ffff001>
    80001f00:	00f687b3          	add	a5,a3,a5
    *handle = new TCB(start_routine, arg, stack_begin_address, context);
    80001f04:	fa043703          	ld	a4,-96(s0)
    80001f08:	fae43823          	sd	a4,-80(s0)
    80001f0c:	faf43c23          	sd	a5,-72(s0)
    80001f10:	05800513          	li	a0,88
    80001f14:	00000097          	auipc	ra,0x0
    80001f18:	f48080e7          	jalr	-184(ra) # 80001e5c <_ZN3TCBnwEm>
    80001f1c:	00050913          	mv	s2,a0
    80001f20:	fb043703          	ld	a4,-80(s0)
    80001f24:	fb843783          	ld	a5,-72(s0)
    80001f28:	00048693          	mv	a3,s1
    80001f2c:	000a8613          	mv	a2,s5
    80001f30:	000a0593          	mv	a1,s4
    80001f34:	00000097          	auipc	ra,0x0
    80001f38:	c50080e7          	jalr	-944(ra) # 80001b84 <_ZN3TCBC1EPFvPvES0_S0_NS_7ContextE>
    80001f3c:	0280006f          	j	80001f64 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_+0xb0>
            (uint64) (stack_begin_address ? (uint64) stack_begin_address + DEFAULT_STACK_SIZE - 1 : 0)
    80001f40:	00000793          	li	a5,0
    80001f44:	fc1ff06f          	j	80001f04 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_+0x50>
    80001f48:	00050493          	mv	s1,a0
    *handle = new TCB(start_routine, arg, stack_begin_address, context);
    80001f4c:	00090513          	mv	a0,s2
    80001f50:	00000097          	auipc	ra,0x0
    80001f54:	f3c080e7          	jalr	-196(ra) # 80001e8c <_ZN3TCBdlEPv>
    80001f58:	00048513          	mv	a0,s1
    80001f5c:	0000b097          	auipc	ra,0xb
    80001f60:	a4c080e7          	jalr	-1460(ra) # 8000c9a8 <_Unwind_Resume>
    80001f64:	0129b023          	sd	s2,0(s3)
}
    80001f68:	00000513          	li	a0,0
    80001f6c:	05813083          	ld	ra,88(sp)
    80001f70:	05013403          	ld	s0,80(sp)
    80001f74:	04813483          	ld	s1,72(sp)
    80001f78:	04013903          	ld	s2,64(sp)
    80001f7c:	03813983          	ld	s3,56(sp)
    80001f80:	03013a03          	ld	s4,48(sp)
    80001f84:	02813a83          	ld	s5,40(sp)
    80001f88:	06010113          	addi	sp,sp,96
    80001f8c:	00008067          	ret

0000000080001f90 <_ZNK3TCB14get_time_sliceEv>:

time_t TCB::get_time_slice() const {
    80001f90:	ff010113          	addi	sp,sp,-16
    80001f94:	00813423          	sd	s0,8(sp)
    80001f98:	01010413          	addi	s0,sp,16
    return time_slice;
}
    80001f9c:	03853503          	ld	a0,56(a0)
    80001fa0:	00813403          	ld	s0,8(sp)
    80001fa4:	01010113          	addi	sp,sp,16
    80001fa8:	00008067          	ret

0000000080001fac <_ZNK3TCB11is_finishedEv>:

bool TCB::is_finished() const {
    80001fac:	ff010113          	addi	sp,sp,-16
    80001fb0:	00813423          	sd	s0,8(sp)
    80001fb4:	01010413          	addi	s0,sp,16
    return status == FINISHED;
    80001fb8:	01852503          	lw	a0,24(a0)
    80001fbc:	ffc50513          	addi	a0,a0,-4
}
    80001fc0:	00153513          	seqz	a0,a0
    80001fc4:	00813403          	ld	s0,8(sp)
    80001fc8:	01010113          	addi	sp,sp,16
    80001fcc:	00008067          	ret

0000000080001fd0 <_ZN6ThreadD1Ev>:

Thread::Thread(void (*body)(void *), void *arg) : myHandle(nullptr) {
    thread_create(&myHandle, body, arg);
}

Thread::~Thread() {
    80001fd0:	fe010113          	addi	sp,sp,-32
    80001fd4:	00113c23          	sd	ra,24(sp)
    80001fd8:	00813823          	sd	s0,16(sp)
    80001fdc:	00913423          	sd	s1,8(sp)
    80001fe0:	02010413          	addi	s0,sp,32
    80001fe4:	00050493          	mv	s1,a0
    80001fe8:	00009797          	auipc	a5,0x9
    80001fec:	5f078793          	addi	a5,a5,1520 # 8000b5d8 <_ZTV6Thread+0x10>
    80001ff0:	00f53023          	sd	a5,0(a0)
    myHandle -> set_status(TCB::FINISHED);
    80001ff4:	00400593          	li	a1,4
    80001ff8:	00853503          	ld	a0,8(a0)
    80001ffc:	00000097          	auipc	ra,0x0
    80002000:	d78080e7          	jalr	-648(ra) # 80001d74 <_ZN3TCB10set_statusENS_6StatusE>
    delete myHandle;
    80002004:	0084b503          	ld	a0,8(s1)
    80002008:	00050663          	beqz	a0,80002014 <_ZN6ThreadD1Ev+0x44>
    8000200c:	00000097          	auipc	ra,0x0
    80002010:	e80080e7          	jalr	-384(ra) # 80001e8c <_ZN3TCBdlEPv>
}
    80002014:	01813083          	ld	ra,24(sp)
    80002018:	01013403          	ld	s0,16(sp)
    8000201c:	00813483          	ld	s1,8(sp)
    80002020:	02010113          	addi	sp,sp,32
    80002024:	00008067          	ret

0000000080002028 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) : myHandle(nullptr) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    80002028:	00009797          	auipc	a5,0x9
    8000202c:	5d878793          	addi	a5,a5,1496 # 8000b600 <_ZTV9Semaphore+0x10>
    80002030:	00f53023          	sd	a5,0(a0)
    if (myHandle) sem_close(myHandle);
    80002034:	00853503          	ld	a0,8(a0)
    80002038:	02050663          	beqz	a0,80002064 <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    8000203c:	ff010113          	addi	sp,sp,-16
    80002040:	00113423          	sd	ra,8(sp)
    80002044:	00813023          	sd	s0,0(sp)
    80002048:	01010413          	addi	s0,sp,16
    if (myHandle) sem_close(myHandle);
    8000204c:	fffff097          	auipc	ra,0xfffff
    80002050:	3d0080e7          	jalr	976(ra) # 8000141c <_Z9sem_closeP3Sem>
}
    80002054:	00813083          	ld	ra,8(sp)
    80002058:	00013403          	ld	s0,0(sp)
    8000205c:	01010113          	addi	sp,sp,16
    80002060:	00008067          	ret
    80002064:	00008067          	ret

0000000080002068 <_Znwm>:
void* operator new(size_t size){
    80002068:	ff010113          	addi	sp,sp,-16
    8000206c:	00113423          	sd	ra,8(sp)
    80002070:	00813023          	sd	s0,0(sp)
    80002074:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80002078:	fffff097          	auipc	ra,0xfffff
    8000207c:	1d8080e7          	jalr	472(ra) # 80001250 <_Z9mem_allocm>
}
    80002080:	00813083          	ld	ra,8(sp)
    80002084:	00013403          	ld	s0,0(sp)
    80002088:	01010113          	addi	sp,sp,16
    8000208c:	00008067          	ret

0000000080002090 <_ZdlPv>:
void operator delete(void* p) noexcept {
    80002090:	ff010113          	addi	sp,sp,-16
    80002094:	00113423          	sd	ra,8(sp)
    80002098:	00813023          	sd	s0,0(sp)
    8000209c:	01010413          	addi	s0,sp,16
    mem_free(p);
    800020a0:	fffff097          	auipc	ra,0xfffff
    800020a4:	204080e7          	jalr	516(ra) # 800012a4 <_Z8mem_freePv>
}
    800020a8:	00813083          	ld	ra,8(sp)
    800020ac:	00013403          	ld	s0,0(sp)
    800020b0:	01010113          	addi	sp,sp,16
    800020b4:	00008067          	ret

00000000800020b8 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    800020b8:	fe010113          	addi	sp,sp,-32
    800020bc:	00113c23          	sd	ra,24(sp)
    800020c0:	00813823          	sd	s0,16(sp)
    800020c4:	00913423          	sd	s1,8(sp)
    800020c8:	02010413          	addi	s0,sp,32
    800020cc:	00050493          	mv	s1,a0
}
    800020d0:	00000097          	auipc	ra,0x0
    800020d4:	f00080e7          	jalr	-256(ra) # 80001fd0 <_ZN6ThreadD1Ev>
    800020d8:	00048513          	mv	a0,s1
    800020dc:	00000097          	auipc	ra,0x0
    800020e0:	fb4080e7          	jalr	-76(ra) # 80002090 <_ZdlPv>
    800020e4:	01813083          	ld	ra,24(sp)
    800020e8:	01013403          	ld	s0,16(sp)
    800020ec:	00813483          	ld	s1,8(sp)
    800020f0:	02010113          	addi	sp,sp,32
    800020f4:	00008067          	ret

00000000800020f8 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800020f8:	fe010113          	addi	sp,sp,-32
    800020fc:	00113c23          	sd	ra,24(sp)
    80002100:	00813823          	sd	s0,16(sp)
    80002104:	00913423          	sd	s1,8(sp)
    80002108:	02010413          	addi	s0,sp,32
    8000210c:	00050493          	mv	s1,a0
}
    80002110:	00000097          	auipc	ra,0x0
    80002114:	f18080e7          	jalr	-232(ra) # 80002028 <_ZN9SemaphoreD1Ev>
    80002118:	00048513          	mv	a0,s1
    8000211c:	00000097          	auipc	ra,0x0
    80002120:	f74080e7          	jalr	-140(ra) # 80002090 <_ZdlPv>
    80002124:	01813083          	ld	ra,24(sp)
    80002128:	01013403          	ld	s0,16(sp)
    8000212c:	00813483          	ld	s1,8(sp)
    80002130:	02010113          	addi	sp,sp,32
    80002134:	00008067          	ret

0000000080002138 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) : myHandle(nullptr) {
    80002138:	ff010113          	addi	sp,sp,-16
    8000213c:	00113423          	sd	ra,8(sp)
    80002140:	00813023          	sd	s0,0(sp)
    80002144:	01010413          	addi	s0,sp,16
    80002148:	00009797          	auipc	a5,0x9
    8000214c:	49078793          	addi	a5,a5,1168 # 8000b5d8 <_ZTV6Thread+0x10>
    80002150:	00f53023          	sd	a5,0(a0)
    80002154:	00053423          	sd	zero,8(a0)
    thread_create(&myHandle, body, arg);
    80002158:	00850513          	addi	a0,a0,8
    8000215c:	fffff097          	auipc	ra,0xfffff
    80002160:	194080e7          	jalr	404(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
}
    80002164:	00813083          	ld	ra,8(sp)
    80002168:	00013403          	ld	s0,0(sp)
    8000216c:	01010113          	addi	sp,sp,16
    80002170:	00008067          	ret

0000000080002174 <_ZN6Thread5startEv>:
int Thread::start() {
    80002174:	ff010113          	addi	sp,sp,-16
    80002178:	00113423          	sd	ra,8(sp)
    8000217c:	00813023          	sd	s0,0(sp)
    80002180:	01010413          	addi	s0,sp,16
    myHandle -> start();
    80002184:	00853503          	ld	a0,8(a0)
    80002188:	00000097          	auipc	ra,0x0
    8000218c:	c88080e7          	jalr	-888(ra) # 80001e10 <_ZN3TCB5startEv>
}
    80002190:	00000513          	li	a0,0
    80002194:	00813083          	ld	ra,8(sp)
    80002198:	00013403          	ld	s0,0(sp)
    8000219c:	01010113          	addi	sp,sp,16
    800021a0:	00008067          	ret

00000000800021a4 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    800021a4:	ff010113          	addi	sp,sp,-16
    800021a8:	00113423          	sd	ra,8(sp)
    800021ac:	00813023          	sd	s0,0(sp)
    800021b0:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800021b4:	fffff097          	auipc	ra,0xfffff
    800021b8:	210080e7          	jalr	528(ra) # 800013c4 <_Z15thread_dispatchv>
}
    800021bc:	00813083          	ld	ra,8(sp)
    800021c0:	00013403          	ld	s0,0(sp)
    800021c4:	01010113          	addi	sp,sp,16
    800021c8:	00008067          	ret

00000000800021cc <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    800021cc:	ff010113          	addi	sp,sp,-16
    800021d0:	00113423          	sd	ra,8(sp)
    800021d4:	00813023          	sd	s0,0(sp)
    800021d8:	01010413          	addi	s0,sp,16
    time_sleep(time);
    800021dc:	fffff097          	auipc	ra,0xfffff
    800021e0:	2cc080e7          	jalr	716(ra) # 800014a8 <_Z10time_sleepm>
}
    800021e4:	00000513          	li	a0,0
    800021e8:	00813083          	ld	ra,8(sp)
    800021ec:	00013403          	ld	s0,0(sp)
    800021f0:	01010113          	addi	sp,sp,16
    800021f4:	00008067          	ret

00000000800021f8 <_ZN6ThreadC1Ev>:
Thread::Thread() : myHandle(nullptr) {
    800021f8:	ff010113          	addi	sp,sp,-16
    800021fc:	00813423          	sd	s0,8(sp)
    80002200:	01010413          	addi	s0,sp,16
    80002204:	00009797          	auipc	a5,0x9
    80002208:	3d478793          	addi	a5,a5,980 # 8000b5d8 <_ZTV6Thread+0x10>
    8000220c:	00f53023          	sd	a5,0(a0)
    80002210:	00053423          	sd	zero,8(a0)
}
    80002214:	00813403          	ld	s0,8(sp)
    80002218:	01010113          	addi	sp,sp,16
    8000221c:	00008067          	ret

0000000080002220 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) : myHandle(nullptr) {
    80002220:	ff010113          	addi	sp,sp,-16
    80002224:	00113423          	sd	ra,8(sp)
    80002228:	00813023          	sd	s0,0(sp)
    8000222c:	01010413          	addi	s0,sp,16
    80002230:	00009797          	auipc	a5,0x9
    80002234:	3d078793          	addi	a5,a5,976 # 8000b600 <_ZTV9Semaphore+0x10>
    80002238:	00f53023          	sd	a5,0(a0)
    8000223c:	00053423          	sd	zero,8(a0)
    sem_open(&myHandle, init);
    80002240:	00850513          	addi	a0,a0,8
    80002244:	fffff097          	auipc	ra,0xfffff
    80002248:	1bc080e7          	jalr	444(ra) # 80001400 <_Z8sem_openPP3Semj>
}
    8000224c:	00813083          	ld	ra,8(sp)
    80002250:	00013403          	ld	s0,0(sp)
    80002254:	01010113          	addi	sp,sp,16
    80002258:	00008067          	ret

000000008000225c <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    if (myHandle) return sem_wait(myHandle);
    8000225c:	00853503          	ld	a0,8(a0)
    80002260:	02050663          	beqz	a0,8000228c <_ZN9Semaphore4waitEv+0x30>
int Semaphore::wait() {
    80002264:	ff010113          	addi	sp,sp,-16
    80002268:	00113423          	sd	ra,8(sp)
    8000226c:	00813023          	sd	s0,0(sp)
    80002270:	01010413          	addi	s0,sp,16
    if (myHandle) return sem_wait(myHandle);
    80002274:	fffff097          	auipc	ra,0xfffff
    80002278:	1c4080e7          	jalr	452(ra) # 80001438 <_Z8sem_waitP3Sem>
    return -1;
}
    8000227c:	00813083          	ld	ra,8(sp)
    80002280:	00013403          	ld	s0,0(sp)
    80002284:	01010113          	addi	sp,sp,16
    80002288:	00008067          	ret
    return -1;
    8000228c:	fff00513          	li	a0,-1
}
    80002290:	00008067          	ret

0000000080002294 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    if (myHandle) return sem_signal(myHandle);
    80002294:	00853503          	ld	a0,8(a0)
    80002298:	02050663          	beqz	a0,800022c4 <_ZN9Semaphore6signalEv+0x30>
int Semaphore::signal() {
    8000229c:	ff010113          	addi	sp,sp,-16
    800022a0:	00113423          	sd	ra,8(sp)
    800022a4:	00813023          	sd	s0,0(sp)
    800022a8:	01010413          	addi	s0,sp,16
    if (myHandle) return sem_signal(myHandle);
    800022ac:	fffff097          	auipc	ra,0xfffff
    800022b0:	1a8080e7          	jalr	424(ra) # 80001454 <_Z10sem_signalP3Sem>
    return -1;
}
    800022b4:	00813083          	ld	ra,8(sp)
    800022b8:	00013403          	ld	s0,0(sp)
    800022bc:	01010113          	addi	sp,sp,16
    800022c0:	00008067          	ret
    return -1;
    800022c4:	fff00513          	li	a0,-1
}
    800022c8:	00008067          	ret

00000000800022cc <_ZN9Semaphore9timedWaitEm>:

int Semaphore::timedWait(time_t) {
    800022cc:	ff010113          	addi	sp,sp,-16
    800022d0:	00813423          	sd	s0,8(sp)
    800022d4:	01010413          	addi	s0,sp,16
    return 0;
}
    800022d8:	00000513          	li	a0,0
    800022dc:	00813403          	ld	s0,8(sp)
    800022e0:	01010113          	addi	sp,sp,16
    800022e4:	00008067          	ret

00000000800022e8 <_ZN9Semaphore7tryWaitEv>:

int Semaphore::tryWait() {
    800022e8:	ff010113          	addi	sp,sp,-16
    800022ec:	00813423          	sd	s0,8(sp)
    800022f0:	01010413          	addi	s0,sp,16
    return 0;
}
    800022f4:	00000513          	li	a0,0
    800022f8:	00813403          	ld	s0,8(sp)
    800022fc:	01010113          	addi	sp,sp,16
    80002300:	00008067          	ret

0000000080002304 <_ZN14PeriodicThread9terminateEv>:

void PeriodicThread::terminate() {
    80002304:	ff010113          	addi	sp,sp,-16
    80002308:	00813423          	sd	s0,8(sp)
    8000230c:	01010413          	addi	s0,sp,16

}
    80002310:	00813403          	ld	s0,8(sp)
    80002314:	01010113          	addi	sp,sp,16
    80002318:	00008067          	ret

000000008000231c <_ZN14PeriodicThreadC1Em>:

PeriodicThread::PeriodicThread(time_t period) {
    8000231c:	fe010113          	addi	sp,sp,-32
    80002320:	00113c23          	sd	ra,24(sp)
    80002324:	00813823          	sd	s0,16(sp)
    80002328:	00913423          	sd	s1,8(sp)
    8000232c:	02010413          	addi	s0,sp,32
    80002330:	00050493          	mv	s1,a0
    80002334:	00000097          	auipc	ra,0x0
    80002338:	ec4080e7          	jalr	-316(ra) # 800021f8 <_ZN6ThreadC1Ev>
    8000233c:	00009797          	auipc	a5,0x9
    80002340:	26c78793          	addi	a5,a5,620 # 8000b5a8 <_ZTV14PeriodicThread+0x10>
    80002344:	00f4b023          	sd	a5,0(s1)

}
    80002348:	01813083          	ld	ra,24(sp)
    8000234c:	01013403          	ld	s0,16(sp)
    80002350:	00813483          	ld	s1,8(sp)
    80002354:	02010113          	addi	sp,sp,32
    80002358:	00008067          	ret

000000008000235c <_ZN7Console4getcEv>:

char Console::getc() {
    8000235c:	ff010113          	addi	sp,sp,-16
    80002360:	00113423          	sd	ra,8(sp)
    80002364:	00813023          	sd	s0,0(sp)
    80002368:	01010413          	addi	s0,sp,16
    return ::getc();
    8000236c:	fffff097          	auipc	ra,0xfffff
    80002370:	158080e7          	jalr	344(ra) # 800014c4 <_Z4getcv>
}
    80002374:	00813083          	ld	ra,8(sp)
    80002378:	00013403          	ld	s0,0(sp)
    8000237c:	01010113          	addi	sp,sp,16
    80002380:	00008067          	ret

0000000080002384 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80002384:	ff010113          	addi	sp,sp,-16
    80002388:	00113423          	sd	ra,8(sp)
    8000238c:	00813023          	sd	s0,0(sp)
    80002390:	01010413          	addi	s0,sp,16
    ::putc(c);
    80002394:	fffff097          	auipc	ra,0xfffff
    80002398:	17c080e7          	jalr	380(ra) # 80001510 <_Z4putcc>
}
    8000239c:	00813083          	ld	ra,8(sp)
    800023a0:	00013403          	ld	s0,0(sp)
    800023a4:	01010113          	addi	sp,sp,16
    800023a8:	00008067          	ret

00000000800023ac <_ZN6Thread3runEv>:
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    800023ac:	ff010113          	addi	sp,sp,-16
    800023b0:	00813423          	sd	s0,8(sp)
    800023b4:	01010413          	addi	s0,sp,16
    800023b8:	00813403          	ld	s0,8(sp)
    800023bc:	01010113          	addi	sp,sp,16
    800023c0:	00008067          	ret

00000000800023c4 <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    800023c4:	ff010113          	addi	sp,sp,-16
    800023c8:	00813423          	sd	s0,8(sp)
    800023cc:	01010413          	addi	s0,sp,16
    800023d0:	00813403          	ld	s0,8(sp)
    800023d4:	01010113          	addi	sp,sp,16
    800023d8:	00008067          	ret

00000000800023dc <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    800023dc:	ff010113          	addi	sp,sp,-16
    800023e0:	00113423          	sd	ra,8(sp)
    800023e4:	00813023          	sd	s0,0(sp)
    800023e8:	01010413          	addi	s0,sp,16
    800023ec:	00009797          	auipc	a5,0x9
    800023f0:	1bc78793          	addi	a5,a5,444 # 8000b5a8 <_ZTV14PeriodicThread+0x10>
    800023f4:	00f53023          	sd	a5,0(a0)
    800023f8:	00000097          	auipc	ra,0x0
    800023fc:	bd8080e7          	jalr	-1064(ra) # 80001fd0 <_ZN6ThreadD1Ev>
    80002400:	00813083          	ld	ra,8(sp)
    80002404:	00013403          	ld	s0,0(sp)
    80002408:	01010113          	addi	sp,sp,16
    8000240c:	00008067          	ret

0000000080002410 <_ZN14PeriodicThreadD0Ev>:
    80002410:	fe010113          	addi	sp,sp,-32
    80002414:	00113c23          	sd	ra,24(sp)
    80002418:	00813823          	sd	s0,16(sp)
    8000241c:	00913423          	sd	s1,8(sp)
    80002420:	02010413          	addi	s0,sp,32
    80002424:	00050493          	mv	s1,a0
    80002428:	00009797          	auipc	a5,0x9
    8000242c:	18078793          	addi	a5,a5,384 # 8000b5a8 <_ZTV14PeriodicThread+0x10>
    80002430:	00f53023          	sd	a5,0(a0)
    80002434:	00000097          	auipc	ra,0x0
    80002438:	b9c080e7          	jalr	-1124(ra) # 80001fd0 <_ZN6ThreadD1Ev>
    8000243c:	00048513          	mv	a0,s1
    80002440:	00000097          	auipc	ra,0x0
    80002444:	c50080e7          	jalr	-944(ra) # 80002090 <_ZdlPv>
    80002448:	01813083          	ld	ra,24(sp)
    8000244c:	01013403          	ld	s0,16(sp)
    80002450:	00813483          	ld	s1,8(sp)
    80002454:	02010113          	addi	sp,sp,32
    80002458:	00008067          	ret

000000008000245c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>:
        instance = (MemoryAllocator*) MemoryAllocator::mem_alloc(sizeof(MemoryAllocator));
    }
}

/// helper function for removing element from linked list
void MemoryAllocator::removeNode(MemSeg *toRemove, MemSeg *nextSeg, bool newIsCreated) {
    8000245c:	ff010113          	addi	sp,sp,-16
    80002460:	00813423          	sd	s0,8(sp)
    80002464:	01010413          	addi	s0,sp,16
    if (toRemove -> prev) toRemove -> prev -> next = nextSeg;
    80002468:	00853783          	ld	a5,8(a0)
    8000246c:	02078463          	beqz	a5,80002494 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x38>
    80002470:	00b7b823          	sd	a1,16(a5)
    else freeSegHead = nextSeg;
    if (toRemove -> next) toRemove -> next -> prev = (newIsCreated) ? toRemove -> prev : nextSeg;
    80002474:	01053783          	ld	a5,16(a0)
    80002478:	00078863          	beqz	a5,80002488 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x2c>
    8000247c:	00060463          	beqz	a2,80002484 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x28>
    80002480:	00853583          	ld	a1,8(a0)
    80002484:	00b7b423          	sd	a1,8(a5)
}
    80002488:	00813403          	ld	s0,8(sp)
    8000248c:	01010113          	addi	sp,sp,16
    80002490:	00008067          	ret
    else freeSegHead = nextSeg;
    80002494:	00009797          	auipc	a5,0x9
    80002498:	3cb7b623          	sd	a1,972(a5) # 8000b860 <_ZN15MemoryAllocator11freeSegHeadE>
    8000249c:	fd9ff06f          	j	80002474 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x18>

00000000800024a0 <_ZN15MemoryAllocator9mem_allocEm>:

/// allocate `size` blocks
void *MemoryAllocator::mem_alloc(size_t size) {
    800024a0:	fe010113          	addi	sp,sp,-32
    800024a4:	00113c23          	sd	ra,24(sp)
    800024a8:	00813823          	sd	s0,16(sp)
    800024ac:	00913423          	sd	s1,8(sp)
    800024b0:	01213023          	sd	s2,0(sp)
    800024b4:	02010413          	addi	s0,sp,32
    if (size <= 0) return nullptr;
    800024b8:	0e050e63          	beqz	a0,800025b4 <_ZN15MemoryAllocator9mem_allocEm+0x114>
    size_t bytesToAllocate = size * MEM_BLOCK_SIZE;
    800024bc:	00651913          	slli	s2,a0,0x6
    MemSeg *tmp = freeSegHead;
    800024c0:	00009497          	auipc	s1,0x9
    800024c4:	3a04b483          	ld	s1,928(s1) # 8000b860 <_ZN15MemoryAllocator11freeSegHeadE>
    while (tmp) {
    800024c8:	0a048e63          	beqz	s1,80002584 <_ZN15MemoryAllocator9mem_allocEm+0xe4>
        if (tmp -> size < bytesToAllocate) {
    800024cc:	0004b783          	ld	a5,0(s1)
    800024d0:	0527e463          	bltu	a5,s2,80002518 <_ZN15MemoryAllocator9mem_allocEm+0x78>
            tmp = tmp -> next;
            continue;
        }
        /// update free memory list
        size_t remaining = tmp -> size - bytesToAllocate;
    800024d4:	412787b3          	sub	a5,a5,s2
        if (remaining < sizeof(MemSeg)) removeNode(tmp, tmp->next, false);
    800024d8:	01700713          	li	a4,23
    800024dc:	04f76263          	bltu	a4,a5,80002520 <_ZN15MemoryAllocator9mem_allocEm+0x80>
    800024e0:	00000613          	li	a2,0
    800024e4:	0104b583          	ld	a1,16(s1)
    800024e8:	00048513          	mv	a0,s1
    800024ec:	00000097          	auipc	ra,0x0
    800024f0:	f70080e7          	jalr	-144(ra) # 8000245c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
        }

        /// update used memory list
        /// insert segment after tmp2
        MemSeg* tmp2 = 0;
        if (usedSegHead && (char*) tmp > (char*) usedSegHead)
    800024f4:	00009797          	auipc	a5,0x9
    800024f8:	3747b783          	ld	a5,884(a5) # 8000b868 <_ZN15MemoryAllocator11usedSegHeadE>
    800024fc:	04078863          	beqz	a5,8000254c <_ZN15MemoryAllocator9mem_allocEm+0xac>
    80002500:	0497fa63          	bgeu	a5,s1,80002554 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
            for (tmp2 = usedSegHead; tmp2 -> next && (char*) tmp > (char*) (tmp2 -> next); tmp2 = tmp2 -> next);
    80002504:	00078713          	mv	a4,a5
    80002508:	0107b783          	ld	a5,16(a5)
    8000250c:	04078663          	beqz	a5,80002558 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
    80002510:	fe97eae3          	bltu	a5,s1,80002504 <_ZN15MemoryAllocator9mem_allocEm+0x64>
    80002514:	0440006f          	j	80002558 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
            tmp = tmp -> next;
    80002518:	0104b483          	ld	s1,16(s1)
    while (tmp) {
    8000251c:	fadff06f          	j	800024c8 <_ZN15MemoryAllocator9mem_allocEm+0x28>
            MemSeg* newFree = (MemSeg*) ((char*) tmp + bytesToAllocate);
    80002520:	012485b3          	add	a1,s1,s2
            newFree -> prev = tmp -> prev;
    80002524:	0084b703          	ld	a4,8(s1)
    80002528:	00e5b423          	sd	a4,8(a1)
            newFree -> next = tmp -> next;
    8000252c:	0104b703          	ld	a4,16(s1)
    80002530:	00e5b823          	sd	a4,16(a1)
            newFree -> size = remaining;
    80002534:	00f5b023          	sd	a5,0(a1)
            removeNode(tmp, newFree, true);
    80002538:	00100613          	li	a2,1
    8000253c:	00048513          	mv	a0,s1
    80002540:	00000097          	auipc	ra,0x0
    80002544:	f1c080e7          	jalr	-228(ra) # 8000245c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
    80002548:	fadff06f          	j	800024f4 <_ZN15MemoryAllocator9mem_allocEm+0x54>
        MemSeg* tmp2 = 0;
    8000254c:	00078713          	mv	a4,a5
    80002550:	0080006f          	j	80002558 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
    80002554:	00000713          	li	a4,0
        MemSeg* newUsed = (MemSeg*) tmp;
        newUsed -> size = bytesToAllocate;
    80002558:	0124b023          	sd	s2,0(s1)
        newUsed -> prev = tmp2;
    8000255c:	00e4b423          	sd	a4,8(s1)
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    80002560:	04070063          	beqz	a4,800025a0 <_ZN15MemoryAllocator9mem_allocEm+0x100>
    80002564:	01073783          	ld	a5,16(a4)
    80002568:	00f4b823          	sd	a5,16(s1)
        if (tmp2) tmp2 -> next = newUsed;
    8000256c:	02070e63          	beqz	a4,800025a8 <_ZN15MemoryAllocator9mem_allocEm+0x108>
    80002570:	00973823          	sd	s1,16(a4)
        else usedSegHead = newUsed;
        if (newUsed -> next) newUsed -> next -> prev = newUsed;
    80002574:	0104b783          	ld	a5,16(s1)
    80002578:	00078463          	beqz	a5,80002580 <_ZN15MemoryAllocator9mem_allocEm+0xe0>
    8000257c:	0097b423          	sd	s1,8(a5)
        return (void*) ((char*)tmp + sizeof(MemSeg));
    80002580:	01848493          	addi	s1,s1,24
    }
    return nullptr;
}
    80002584:	00048513          	mv	a0,s1
    80002588:	01813083          	ld	ra,24(sp)
    8000258c:	01013403          	ld	s0,16(sp)
    80002590:	00813483          	ld	s1,8(sp)
    80002594:	00013903          	ld	s2,0(sp)
    80002598:	02010113          	addi	sp,sp,32
    8000259c:	00008067          	ret
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    800025a0:	00070793          	mv	a5,a4
    800025a4:	fc5ff06f          	j	80002568 <_ZN15MemoryAllocator9mem_allocEm+0xc8>
        else usedSegHead = newUsed;
    800025a8:	00009797          	auipc	a5,0x9
    800025ac:	2c97b023          	sd	s1,704(a5) # 8000b868 <_ZN15MemoryAllocator11usedSegHeadE>
    800025b0:	fc5ff06f          	j	80002574 <_ZN15MemoryAllocator9mem_allocEm+0xd4>
    if (size <= 0) return nullptr;
    800025b4:	00000493          	li	s1,0
    800025b8:	fcdff06f          	j	80002584 <_ZN15MemoryAllocator9mem_allocEm+0xe4>

00000000800025bc <_ZN15MemoryAllocator10initializeEv>:
    if (!instance) {
    800025bc:	00009797          	auipc	a5,0x9
    800025c0:	2b47b783          	ld	a5,692(a5) # 8000b870 <_ZN15MemoryAllocator8instanceE>
    800025c4:	00078463          	beqz	a5,800025cc <_ZN15MemoryAllocator10initializeEv+0x10>
    800025c8:	00008067          	ret
void MemoryAllocator::initialize() {
    800025cc:	fe010113          	addi	sp,sp,-32
    800025d0:	00113c23          	sd	ra,24(sp)
    800025d4:	00813823          	sd	s0,16(sp)
    800025d8:	00913423          	sd	s1,8(sp)
    800025dc:	02010413          	addi	s0,sp,32
        freeSegHead = (MemSeg*) HEAP_START_ADDR;
    800025e0:	00009797          	auipc	a5,0x9
    800025e4:	1e07b783          	ld	a5,480(a5) # 8000b7c0 <_GLOBAL_OFFSET_TABLE_+0x8>
    800025e8:	0007b783          	ld	a5,0(a5)
    800025ec:	00009497          	auipc	s1,0x9
    800025f0:	27448493          	addi	s1,s1,628 # 8000b860 <_ZN15MemoryAllocator11freeSegHeadE>
    800025f4:	00f4b023          	sd	a5,0(s1)
        freeSegHead -> size = (size_t) HEAP_END_ADDR - (size_t) HEAP_START_ADDR;
    800025f8:	00009717          	auipc	a4,0x9
    800025fc:	1e873703          	ld	a4,488(a4) # 8000b7e0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002600:	00073703          	ld	a4,0(a4)
    80002604:	40f70733          	sub	a4,a4,a5
    80002608:	00e7b023          	sd	a4,0(a5)
        freeSegHead -> prev = nullptr;
    8000260c:	0004b783          	ld	a5,0(s1)
    80002610:	0007b423          	sd	zero,8(a5)
        freeSegHead -> next = nullptr;
    80002614:	0007b823          	sd	zero,16(a5)
        instance = (MemoryAllocator*) MemoryAllocator::mem_alloc(sizeof(MemoryAllocator));
    80002618:	00100513          	li	a0,1
    8000261c:	00000097          	auipc	ra,0x0
    80002620:	e84080e7          	jalr	-380(ra) # 800024a0 <_ZN15MemoryAllocator9mem_allocEm>
    80002624:	00a4b823          	sd	a0,16(s1)
}
    80002628:	01813083          	ld	ra,24(sp)
    8000262c:	01013403          	ld	s0,16(sp)
    80002630:	00813483          	ld	s1,8(sp)
    80002634:	02010113          	addi	sp,sp,32
    80002638:	00008067          	ret

000000008000263c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>:
    }
    return 0;
}

/// join free segment with next if possible
void MemoryAllocator::tryToJoin(MemSeg *seg) {
    8000263c:	ff010113          	addi	sp,sp,-16
    80002640:	00813423          	sd	s0,8(sp)
    80002644:	01010413          	addi	s0,sp,16
    if (seg -> next && (char*) seg + seg -> size == (char*) seg -> next) {
    80002648:	01053783          	ld	a5,16(a0)
    8000264c:	00078863          	beqz	a5,8000265c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    80002650:	00053703          	ld	a4,0(a0)
    80002654:	00e506b3          	add	a3,a0,a4
    80002658:	00d78863          	beq	a5,a3,80002668 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x2c>
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
        seg -> next = seg -> next -> next;
        if (seg -> next) seg -> next -> prev = seg;
    }
}
    8000265c:	00813403          	ld	s0,8(sp)
    80002660:	01010113          	addi	sp,sp,16
    80002664:	00008067          	ret
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
    80002668:	0007b683          	ld	a3,0(a5)
    8000266c:	00d70733          	add	a4,a4,a3
    80002670:	01870713          	addi	a4,a4,24
    80002674:	00e53023          	sd	a4,0(a0)
        seg -> next = seg -> next -> next;
    80002678:	0107b783          	ld	a5,16(a5)
    8000267c:	00f53823          	sd	a5,16(a0)
        if (seg -> next) seg -> next -> prev = seg;
    80002680:	fc078ee3          	beqz	a5,8000265c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    80002684:	00a7b423          	sd	a0,8(a5)
}
    80002688:	fd5ff06f          	j	8000265c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>

000000008000268c <_ZN15MemoryAllocator8mem_freeEPv>:
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    8000268c:	14050263          	beqz	a0,800027d0 <_ZN15MemoryAllocator8mem_freeEPv+0x144>
int MemoryAllocator::mem_free(void *addr) {
    80002690:	fd010113          	addi	sp,sp,-48
    80002694:	02113423          	sd	ra,40(sp)
    80002698:	02813023          	sd	s0,32(sp)
    8000269c:	00913c23          	sd	s1,24(sp)
    800026a0:	01213823          	sd	s2,16(sp)
    800026a4:	01313423          	sd	s3,8(sp)
    800026a8:	03010413          	addi	s0,sp,48
    800026ac:	00050913          	mv	s2,a0
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    800026b0:	00009797          	auipc	a5,0x9
    800026b4:	1107b783          	ld	a5,272(a5) # 8000b7c0 <_GLOBAL_OFFSET_TABLE_+0x8>
    800026b8:	0007b783          	ld	a5,0(a5)
    800026bc:	10f56e63          	bltu	a0,a5,800027d8 <_ZN15MemoryAllocator8mem_freeEPv+0x14c>
    800026c0:	00009797          	auipc	a5,0x9
    800026c4:	1207b783          	ld	a5,288(a5) # 8000b7e0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800026c8:	0007b783          	ld	a5,0(a5)
    800026cc:	10a7ea63          	bltu	a5,a0,800027e0 <_ZN15MemoryAllocator8mem_freeEPv+0x154>
    if (!usedSegHead) return -2;
    800026d0:	00009797          	auipc	a5,0x9
    800026d4:	1987b783          	ld	a5,408(a5) # 8000b868 <_ZN15MemoryAllocator11usedSegHeadE>
    800026d8:	10078863          	beqz	a5,800027e8 <_ZN15MemoryAllocator8mem_freeEPv+0x15c>
    addr = (void*) ((char*) addr - sizeof(MemSeg));
    800026dc:	fe850493          	addi	s1,a0,-24
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    800026e0:	00078863          	beqz	a5,800026f0 <_ZN15MemoryAllocator8mem_freeEPv+0x64>
        if (tmp == segToFree) {
    800026e4:	08978e63          	beq	a5,s1,80002780 <_ZN15MemoryAllocator8mem_freeEPv+0xf4>
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    800026e8:	0107b783          	ld	a5,16(a5)
    800026ec:	ff5ff06f          	j	800026e0 <_ZN15MemoryAllocator8mem_freeEPv+0x54>
    bool found = false;
    800026f0:	00000793          	li	a5,0
    if (!found) return -3;
    800026f4:	0e078e63          	beqz	a5,800027f0 <_ZN15MemoryAllocator8mem_freeEPv+0x164>
    removeNode(segToFree, segToFree -> next, false);
    800026f8:	00000613          	li	a2,0
    800026fc:	ff893583          	ld	a1,-8(s2)
    80002700:	00048513          	mv	a0,s1
    80002704:	00000097          	auipc	ra,0x0
    80002708:	d58080e7          	jalr	-680(ra) # 8000245c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
    if (!freeSegHead) {
    8000270c:	00009797          	auipc	a5,0x9
    80002710:	1547b783          	ld	a5,340(a5) # 8000b860 <_ZN15MemoryAllocator11freeSegHeadE>
    80002714:	06078a63          	beqz	a5,80002788 <_ZN15MemoryAllocator8mem_freeEPv+0xfc>
    else if ((char*) addr < (char*) freeSegHead) {
    80002718:	08f4e463          	bltu	s1,a5,800027a0 <_ZN15MemoryAllocator8mem_freeEPv+0x114>
        for (tmp = freeSegHead; tmp -> next && (char*) (tmp -> next) < (char*) segToFree; tmp = tmp -> next);
    8000271c:	00078993          	mv	s3,a5
    80002720:	0107b783          	ld	a5,16(a5)
    80002724:	00078463          	beqz	a5,8000272c <_ZN15MemoryAllocator8mem_freeEPv+0xa0>
    80002728:	fe97eae3          	bltu	a5,s1,8000271c <_ZN15MemoryAllocator8mem_freeEPv+0x90>
        segToFree -> prev = tmp;
    8000272c:	ff393823          	sd	s3,-16(s2)
        segToFree -> next = tmp -> next;
    80002730:	0109b783          	ld	a5,16(s3)
    80002734:	fef93c23          	sd	a5,-8(s2)
        tmp -> next = segToFree;
    80002738:	0099b823          	sd	s1,16(s3)
        if (segToFree -> next) segToFree -> next -> prev = segToFree;
    8000273c:	ff893783          	ld	a5,-8(s2)
    80002740:	00078463          	beqz	a5,80002748 <_ZN15MemoryAllocator8mem_freeEPv+0xbc>
    80002744:	0097b423          	sd	s1,8(a5)
        tryToJoin(segToFree);
    80002748:	00048513          	mv	a0,s1
    8000274c:	00000097          	auipc	ra,0x0
    80002750:	ef0080e7          	jalr	-272(ra) # 8000263c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
        tryToJoin(tmp);
    80002754:	00098513          	mv	a0,s3
    80002758:	00000097          	auipc	ra,0x0
    8000275c:	ee4080e7          	jalr	-284(ra) # 8000263c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    80002760:	00000513          	li	a0,0
}
    80002764:	02813083          	ld	ra,40(sp)
    80002768:	02013403          	ld	s0,32(sp)
    8000276c:	01813483          	ld	s1,24(sp)
    80002770:	01013903          	ld	s2,16(sp)
    80002774:	00813983          	ld	s3,8(sp)
    80002778:	03010113          	addi	sp,sp,48
    8000277c:	00008067          	ret
            found = true;
    80002780:	00100793          	li	a5,1
    80002784:	f71ff06f          	j	800026f4 <_ZN15MemoryAllocator8mem_freeEPv+0x68>
        freeSegHead = segToFree;
    80002788:	00009797          	auipc	a5,0x9
    8000278c:	0c97bc23          	sd	s1,216(a5) # 8000b860 <_ZN15MemoryAllocator11freeSegHeadE>
        segToFree -> prev = segToFree -> next = nullptr;
    80002790:	fe093c23          	sd	zero,-8(s2)
    80002794:	fe093823          	sd	zero,-16(s2)
    return 0;
    80002798:	00000513          	li	a0,0
    8000279c:	fc9ff06f          	j	80002764 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
        segToFree -> prev = nullptr;
    800027a0:	fe093823          	sd	zero,-16(s2)
        segToFree -> next = freeSegHead;
    800027a4:	00009797          	auipc	a5,0x9
    800027a8:	0bc78793          	addi	a5,a5,188 # 8000b860 <_ZN15MemoryAllocator11freeSegHeadE>
    800027ac:	0007b703          	ld	a4,0(a5)
    800027b0:	fee93c23          	sd	a4,-8(s2)
        freeSegHead -> prev = segToFree;
    800027b4:	00973423          	sd	s1,8(a4)
        freeSegHead = segToFree;
    800027b8:	0097b023          	sd	s1,0(a5)
        tryToJoin(segToFree);
    800027bc:	00048513          	mv	a0,s1
    800027c0:	00000097          	auipc	ra,0x0
    800027c4:	e7c080e7          	jalr	-388(ra) # 8000263c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    800027c8:	00000513          	li	a0,0
    800027cc:	f99ff06f          	j	80002764 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    800027d0:	fff00513          	li	a0,-1
}
    800027d4:	00008067          	ret
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    800027d8:	fff00513          	li	a0,-1
    800027dc:	f89ff06f          	j	80002764 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    800027e0:	fff00513          	li	a0,-1
    800027e4:	f81ff06f          	j	80002764 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!usedSegHead) return -2;
    800027e8:	ffe00513          	li	a0,-2
    800027ec:	f79ff06f          	j	80002764 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!found) return -3;
    800027f0:	ffd00513          	li	a0,-3
    800027f4:	f71ff06f          	j	80002764 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>

00000000800027f8 <_ZN15MemoryAllocator5printEv>:

void MemoryAllocator::print() {
    800027f8:	fe010113          	addi	sp,sp,-32
    800027fc:	00113c23          	sd	ra,24(sp)
    80002800:	00813823          	sd	s0,16(sp)
    80002804:	00913423          	sd	s1,8(sp)
    80002808:	02010413          	addi	s0,sp,32
    __putc('\n');
    8000280c:	00a00513          	li	a0,10
    80002810:	00006097          	auipc	ra,0x6
    80002814:	cec080e7          	jalr	-788(ra) # 800084fc <__putc>
    __putc('M');
    80002818:	04d00513          	li	a0,77
    8000281c:	00006097          	auipc	ra,0x6
    80002820:	ce0080e7          	jalr	-800(ra) # 800084fc <__putc>
    __putc(':');
    80002824:	03a00513          	li	a0,58
    80002828:	00006097          	auipc	ra,0x6
    8000282c:	cd4080e7          	jalr	-812(ra) # 800084fc <__putc>
    __putc(' ');
    80002830:	02000513          	li	a0,32
    80002834:	00006097          	auipc	ra,0x6
    80002838:	cc8080e7          	jalr	-824(ra) # 800084fc <__putc>
    for (MemSeg* tmp = freeSegHead; tmp; tmp = tmp -> next) __putc('f');
    8000283c:	00009497          	auipc	s1,0x9
    80002840:	0244b483          	ld	s1,36(s1) # 8000b860 <_ZN15MemoryAllocator11freeSegHeadE>
    80002844:	00048c63          	beqz	s1,8000285c <_ZN15MemoryAllocator5printEv+0x64>
    80002848:	06600513          	li	a0,102
    8000284c:	00006097          	auipc	ra,0x6
    80002850:	cb0080e7          	jalr	-848(ra) # 800084fc <__putc>
    80002854:	0104b483          	ld	s1,16(s1)
    80002858:	fedff06f          	j	80002844 <_ZN15MemoryAllocator5printEv+0x4c>
    __putc('\t');
    8000285c:	00900513          	li	a0,9
    80002860:	00006097          	auipc	ra,0x6
    80002864:	c9c080e7          	jalr	-868(ra) # 800084fc <__putc>
    for (MemSeg* tmp = usedSegHead; tmp; tmp = tmp -> next) __putc('u');
    80002868:	00009497          	auipc	s1,0x9
    8000286c:	0004b483          	ld	s1,0(s1) # 8000b868 <_ZN15MemoryAllocator11usedSegHeadE>
    80002870:	00048c63          	beqz	s1,80002888 <_ZN15MemoryAllocator5printEv+0x90>
    80002874:	07500513          	li	a0,117
    80002878:	00006097          	auipc	ra,0x6
    8000287c:	c84080e7          	jalr	-892(ra) # 800084fc <__putc>
    80002880:	0104b483          	ld	s1,16(s1)
    80002884:	fedff06f          	j	80002870 <_ZN15MemoryAllocator5printEv+0x78>
}
    80002888:	01813083          	ld	ra,24(sp)
    8000288c:	01013403          	ld	s0,16(sp)
    80002890:	00813483          	ld	s1,8(sp)
    80002894:	02010113          	addi	sp,sp,32
    80002898:	00008067          	ret

000000008000289c <_ZN15MemoryAllocator20get_number_of_blocksEm>:

size_t MemoryAllocator::get_number_of_blocks(size_t size) {
    8000289c:	ff010113          	addi	sp,sp,-16
    800028a0:	00813423          	sd	s0,8(sp)
    800028a4:	01010413          	addi	s0,sp,16
    return (size + sizeof(MemoryAllocator::MemSeg) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    800028a8:	05750513          	addi	a0,a0,87
}
    800028ac:	00655513          	srli	a0,a0,0x6
    800028b0:	00813403          	ld	s0,8(sp)
    800028b4:	01010113          	addi	sp,sp,16
    800028b8:	00008067          	ret

00000000800028bc <_ZN9Scheduler3putEP3TCB>:

TCB* Scheduler::head_ready = nullptr;
TCB* Scheduler::tail_ready = nullptr;
TCB* Scheduler::head_sleeping = nullptr;

void Scheduler::put(TCB *thread) {
    800028bc:	fe010113          	addi	sp,sp,-32
    800028c0:	00113c23          	sd	ra,24(sp)
    800028c4:	00813823          	sd	s0,16(sp)
    800028c8:	00913423          	sd	s1,8(sp)
    800028cc:	02010413          	addi	s0,sp,32
    800028d0:	00050493          	mv	s1,a0
    if (tail_ready) {
    800028d4:	00009517          	auipc	a0,0x9
    800028d8:	fa453503          	ld	a0,-92(a0) # 8000b878 <_ZN9Scheduler10tail_readyE>
    800028dc:	02051463          	bnez	a0,80002904 <_ZN9Scheduler3putEP3TCB+0x48>
        tail_ready -> set_next_ready(thread);
        tail_ready = thread;
        return;
    }
    head_ready = tail_ready = thread;
    800028e0:	00009797          	auipc	a5,0x9
    800028e4:	f9878793          	addi	a5,a5,-104 # 8000b878 <_ZN9Scheduler10tail_readyE>
    800028e8:	0097b023          	sd	s1,0(a5)
    800028ec:	0097b423          	sd	s1,8(a5)
}
    800028f0:	01813083          	ld	ra,24(sp)
    800028f4:	01013403          	ld	s0,16(sp)
    800028f8:	00813483          	ld	s1,8(sp)
    800028fc:	02010113          	addi	sp,sp,32
    80002900:	00008067          	ret
        tail_ready -> set_next_ready(thread);
    80002904:	00048593          	mv	a1,s1
    80002908:	fffff097          	auipc	ra,0xfffff
    8000290c:	3e0080e7          	jalr	992(ra) # 80001ce8 <_ZN3TCB14set_next_readyEPS_>
        tail_ready = thread;
    80002910:	00009797          	auipc	a5,0x9
    80002914:	f697b423          	sd	s1,-152(a5) # 8000b878 <_ZN9Scheduler10tail_readyE>
        return;
    80002918:	fd9ff06f          	j	800028f0 <_ZN9Scheduler3putEP3TCB+0x34>

000000008000291c <_ZN9Scheduler3getEv>:

TCB* Scheduler::get() {
    8000291c:	fe010113          	addi	sp,sp,-32
    80002920:	00113c23          	sd	ra,24(sp)
    80002924:	00813823          	sd	s0,16(sp)
    80002928:	00913423          	sd	s1,8(sp)
    8000292c:	02010413          	addi	s0,sp,32
    if (!head_ready) return nullptr;
    80002930:	00009497          	auipc	s1,0x9
    80002934:	f504b483          	ld	s1,-176(s1) # 8000b880 <_ZN9Scheduler10head_readyE>
    80002938:	00048c63          	beqz	s1,80002950 <_ZN9Scheduler3getEv+0x34>
    TCB *head = head_ready;
    head_ready = head_ready -> get_next_ready();
    8000293c:	00048513          	mv	a0,s1
    80002940:	fffff097          	auipc	ra,0xfffff
    80002944:	38c080e7          	jalr	908(ra) # 80001ccc <_ZNK3TCB14get_next_readyEv>
    80002948:	00009797          	auipc	a5,0x9
    8000294c:	f2a7bc23          	sd	a0,-200(a5) # 8000b880 <_ZN9Scheduler10head_readyE>
    return head;
}
    80002950:	00048513          	mv	a0,s1
    80002954:	01813083          	ld	ra,24(sp)
    80002958:	01013403          	ld	s0,16(sp)
    8000295c:	00813483          	ld	s1,8(sp)
    80002960:	02010113          	addi	sp,sp,32
    80002964:	00008067          	ret

0000000080002968 <_ZN9Scheduler12put_to_sleepEP3TCBm>:

void Scheduler::put_to_sleep(TCB *thread, time_t time) {
    80002968:	fc010113          	addi	sp,sp,-64
    8000296c:	02113c23          	sd	ra,56(sp)
    80002970:	02813823          	sd	s0,48(sp)
    80002974:	02913423          	sd	s1,40(sp)
    80002978:	03213023          	sd	s2,32(sp)
    8000297c:	01313c23          	sd	s3,24(sp)
    80002980:	01413823          	sd	s4,16(sp)
    80002984:	01513423          	sd	s5,8(sp)
    80002988:	04010413          	addi	s0,sp,64
    8000298c:	00050a93          	mv	s5,a0
    80002990:	00058993          	mv	s3,a1
    thread -> set_status(TCB::Status::SLEEPING);
    80002994:	00100593          	li	a1,1
    80002998:	fffff097          	auipc	ra,0xfffff
    8000299c:	3dc080e7          	jalr	988(ra) # 80001d74 <_ZN3TCB10set_statusENS_6StatusE>
    if (!head_sleeping) {
    800029a0:	00009497          	auipc	s1,0x9
    800029a4:	ee84b483          	ld	s1,-280(s1) # 8000b888 <_ZN9Scheduler13head_sleepingE>
    800029a8:	02048e63          	beqz	s1,800029e4 <_ZN9Scheduler12put_to_sleepEP3TCBm+0x7c>
        thread -> set_next_sleeping(nullptr);
        thread -> set_time_to_sleep(time);
        return;
    }
    TCB* tmp = head_sleeping, *prev = nullptr;
    time_t current_time = 0;
    800029ac:	00000913          	li	s2,0
    TCB* tmp = head_sleeping, *prev = nullptr;
    800029b0:	00000a13          	li	s4,0
    while (tmp) {
    800029b4:	04048c63          	beqz	s1,80002a0c <_ZN9Scheduler12put_to_sleepEP3TCBm+0xa4>
        current_time += tmp -> get_time_to_sleep();
    800029b8:	00048513          	mv	a0,s1
    800029bc:	fffff097          	auipc	ra,0xfffff
    800029c0:	39c080e7          	jalr	924(ra) # 80001d58 <_ZNK3TCB17get_time_to_sleepEv>
    800029c4:	00a90933          	add	s2,s2,a0
        if (current_time > time) {
    800029c8:	0729e463          	bltu	s3,s2,80002a30 <_ZN9Scheduler12put_to_sleepEP3TCBm+0xc8>
            for (TCB* curr = tmp -> get_next_sleeping(); curr; curr = curr -> get_next_sleeping())
                curr -> set_time_to_sleep(curr -> get_time_to_sleep() - new_time);
            break;
        }
        prev = tmp;
        tmp = tmp -> get_next_sleeping();
    800029cc:	00048513          	mv	a0,s1
    800029d0:	fffff097          	auipc	ra,0xfffff
    800029d4:	350080e7          	jalr	848(ra) # 80001d20 <_ZNK3TCB17get_next_sleepingEv>
        prev = tmp;
    800029d8:	00048a13          	mv	s4,s1
        tmp = tmp -> get_next_sleeping();
    800029dc:	00050493          	mv	s1,a0
    while (tmp) {
    800029e0:	fd5ff06f          	j	800029b4 <_ZN9Scheduler12put_to_sleepEP3TCBm+0x4c>
        head_sleeping = thread;
    800029e4:	00009797          	auipc	a5,0x9
    800029e8:	eb57b223          	sd	s5,-348(a5) # 8000b888 <_ZN9Scheduler13head_sleepingE>
        thread -> set_next_sleeping(nullptr);
    800029ec:	00000593          	li	a1,0
    800029f0:	000a8513          	mv	a0,s5
    800029f4:	fffff097          	auipc	ra,0xfffff
    800029f8:	310080e7          	jalr	784(ra) # 80001d04 <_ZN3TCB17set_next_sleepingEPS_>
        thread -> set_time_to_sleep(time);
    800029fc:	00098593          	mv	a1,s3
    80002a00:	000a8513          	mv	a0,s5
    80002a04:	fffff097          	auipc	ra,0xfffff
    80002a08:	338080e7          	jalr	824(ra) # 80001d3c <_ZN3TCB17set_time_to_sleepEm>
    }
}
    80002a0c:	03813083          	ld	ra,56(sp)
    80002a10:	03013403          	ld	s0,48(sp)
    80002a14:	02813483          	ld	s1,40(sp)
    80002a18:	02013903          	ld	s2,32(sp)
    80002a1c:	01813983          	ld	s3,24(sp)
    80002a20:	01013a03          	ld	s4,16(sp)
    80002a24:	00813a83          	ld	s5,8(sp)
    80002a28:	04010113          	addi	sp,sp,64
    80002a2c:	00008067          	ret
            time_t new_time = prev ? time - prev -> get_time_to_sleep() : time;
    80002a30:	000a0a63          	beqz	s4,80002a44 <_ZN9Scheduler12put_to_sleepEP3TCBm+0xdc>
    80002a34:	000a0513          	mv	a0,s4
    80002a38:	fffff097          	auipc	ra,0xfffff
    80002a3c:	320080e7          	jalr	800(ra) # 80001d58 <_ZNK3TCB17get_time_to_sleepEv>
    80002a40:	40a989b3          	sub	s3,s3,a0
            thread -> set_time_to_sleep(new_time);
    80002a44:	00098593          	mv	a1,s3
    80002a48:	000a8513          	mv	a0,s5
    80002a4c:	fffff097          	auipc	ra,0xfffff
    80002a50:	2f0080e7          	jalr	752(ra) # 80001d3c <_ZN3TCB17set_time_to_sleepEm>
            thread -> set_next_sleeping(tmp);
    80002a54:	00048593          	mv	a1,s1
    80002a58:	000a8513          	mv	a0,s5
    80002a5c:	fffff097          	auipc	ra,0xfffff
    80002a60:	2a8080e7          	jalr	680(ra) # 80001d04 <_ZN3TCB17set_next_sleepingEPS_>
            if (prev) prev -> set_next_sleeping(thread);
    80002a64:	040a0c63          	beqz	s4,80002abc <_ZN9Scheduler12put_to_sleepEP3TCBm+0x154>
    80002a68:	000a8593          	mv	a1,s5
    80002a6c:	000a0513          	mv	a0,s4
    80002a70:	fffff097          	auipc	ra,0xfffff
    80002a74:	294080e7          	jalr	660(ra) # 80001d04 <_ZN3TCB17set_next_sleepingEPS_>
            for (TCB* curr = tmp -> get_next_sleeping(); curr; curr = curr -> get_next_sleeping())
    80002a78:	00048513          	mv	a0,s1
    80002a7c:	fffff097          	auipc	ra,0xfffff
    80002a80:	2a4080e7          	jalr	676(ra) # 80001d20 <_ZNK3TCB17get_next_sleepingEv>
    80002a84:	00050493          	mv	s1,a0
    80002a88:	f80482e3          	beqz	s1,80002a0c <_ZN9Scheduler12put_to_sleepEP3TCBm+0xa4>
                curr -> set_time_to_sleep(curr -> get_time_to_sleep() - new_time);
    80002a8c:	00048513          	mv	a0,s1
    80002a90:	fffff097          	auipc	ra,0xfffff
    80002a94:	2c8080e7          	jalr	712(ra) # 80001d58 <_ZNK3TCB17get_time_to_sleepEv>
    80002a98:	413505b3          	sub	a1,a0,s3
    80002a9c:	00048513          	mv	a0,s1
    80002aa0:	fffff097          	auipc	ra,0xfffff
    80002aa4:	29c080e7          	jalr	668(ra) # 80001d3c <_ZN3TCB17set_time_to_sleepEm>
            for (TCB* curr = tmp -> get_next_sleeping(); curr; curr = curr -> get_next_sleeping())
    80002aa8:	00048513          	mv	a0,s1
    80002aac:	fffff097          	auipc	ra,0xfffff
    80002ab0:	274080e7          	jalr	628(ra) # 80001d20 <_ZNK3TCB17get_next_sleepingEv>
    80002ab4:	00050493          	mv	s1,a0
    80002ab8:	fd1ff06f          	j	80002a88 <_ZN9Scheduler12put_to_sleepEP3TCBm+0x120>
            else head_sleeping = thread;
    80002abc:	00009797          	auipc	a5,0x9
    80002ac0:	dd57b623          	sd	s5,-564(a5) # 8000b888 <_ZN9Scheduler13head_sleepingE>
    80002ac4:	fb5ff06f          	j	80002a78 <_ZN9Scheduler12put_to_sleepEP3TCBm+0x110>

0000000080002ac8 <_ZN5RiscV10popSppSpieEv>:
    SUPERVISOR_INTERRUPT = 0x0000000000000009UL,
};

/// used in thread wrapper function when initializing thread because thread stack is empty
/// pc = (sepc = ra)
void RiscV::popSppSpie() {
    80002ac8:	ff010113          	addi	sp,sp,-16
    80002acc:	00813423          	sd	s0,8(sp)
    80002ad0:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80002ad4:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80002ad8:	10200073          	sret
}
    80002adc:	00813403          	ld	s0,8(sp)
    80002ae0:	01010113          	addi	sp,sp,16
    80002ae4:	00008067          	ret

0000000080002ae8 <_ZN5RiscV22handle_supervisor_trapEv>:

/// interrupt handler
void RiscV::handle_supervisor_trap() {
    80002ae8:	fc010113          	addi	sp,sp,-64
    80002aec:	02113c23          	sd	ra,56(sp)
    80002af0:	02813823          	sd	s0,48(sp)
    80002af4:	02913423          	sd	s1,40(sp)
    80002af8:	03213023          	sd	s2,32(sp)
    80002afc:	04010413          	addi	s0,sp,64
    /// read values from registers
    uint64 syscall_code, a1, a2, a3, a4;
    __asm__ volatile("mv %0, a0" : "=r"(syscall_code));
    80002b00:	00050813          	mv	a6,a0
    __asm__ volatile("mv %0, a1" : "=r"(a1));
    80002b04:	00058513          	mv	a0,a1
    __asm__ volatile("mv %0, a2" : "=r"(a2));
    80002b08:	00060593          	mv	a1,a2
    __asm__ volatile("mv %0, a3" : "=r"(a3));
    80002b0c:	00068613          	mv	a2,a3
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    80002b10:	00070693          	mv	a3,a4
    __asm__ volatile ("csrr %0, scause" : "=r"(scause));
    80002b14:	142027f3          	csrr	a5,scause
    80002b18:	fcf43423          	sd	a5,-56(s0)
    return scause;
    80002b1c:	fc843703          	ld	a4,-56(s0)

    uint64 scause = read_scause();

    /// interrupt caused by Timer
    if (scause == SOFTWARE_INTERRUPT) {
    80002b20:	fff00793          	li	a5,-1
    80002b24:	03f79793          	slli	a5,a5,0x3f
    80002b28:	00178793          	addi	a5,a5,1
    80002b2c:	02f70463          	beq	a4,a5,80002b54 <_ZN5RiscV22handle_supervisor_trapEv+0x6c>
//        }
//        mc_sip(SIP_SSIE);
    }

    /// External interrupt (Console)
    else if (scause == HARDWARE_INTERRUPT) {
    80002b30:	fff00793          	li	a5,-1
    80002b34:	03f79793          	slli	a5,a5,0x3f
    80002b38:	00978793          	addi	a5,a5,9
    80002b3c:	02f70863          	beq	a4,a5,80002b6c <_ZN5RiscV22handle_supervisor_trapEv+0x84>
        console_handler();
    }

    /// illegal instruction
    else if (scause == INVALID_INTERRUPT) {
    80002b40:	00200793          	li	a5,2
    80002b44:	02f70a63          	beq	a4,a5,80002b78 <_ZN5RiscV22handle_supervisor_trapEv+0x90>
        __asm__ volatile("mv a0, %0" : : "r"(val));
        return;
    }

    /// interrupt from supervisor / user mode
    else if (scause == USER_INTERRUPT || scause == SUPERVISOR_INTERRUPT) {
    80002b48:	ff870713          	addi	a4,a4,-8
    80002b4c:	00100793          	li	a5,1
    80002b50:	02e7fa63          	bgeu	a5,a4,80002b84 <_ZN5RiscV22handle_supervisor_trapEv+0x9c>
                break;
        }
        write_sepc(sepc);
        write_sstatus(sstatus);
    }
    80002b54:	03813083          	ld	ra,56(sp)
    80002b58:	03013403          	ld	s0,48(sp)
    80002b5c:	02813483          	ld	s1,40(sp)
    80002b60:	02013903          	ld	s2,32(sp)
    80002b64:	04010113          	addi	sp,sp,64
    80002b68:	00008067          	ret
        console_handler();
    80002b6c:	00006097          	auipc	ra,0x6
    80002b70:	a04080e7          	jalr	-1532(ra) # 80008570 <console_handler>
    80002b74:	fe1ff06f          	j	80002b54 <_ZN5RiscV22handle_supervisor_trapEv+0x6c>
        __asm__ volatile("mv a0, %0" : : "r"(val));
    80002b78:	00100793          	li	a5,1
    80002b7c:	00078513          	mv	a0,a5
        return;
    80002b80:	fd5ff06f          	j	80002b54 <_ZN5RiscV22handle_supervisor_trapEv+0x6c>
    __asm__ volatile ("csrr %0, sepc" : "=r"(sepc));
    80002b84:	141027f3          	csrr	a5,sepc
    80002b88:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80002b8c:	fd843483          	ld	s1,-40(s0)
        uint64 sepc = read_sepc() + 4;
    80002b90:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrc sstatus, %0" : : "r"(mask));
}

inline uint64 RiscV::read_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    80002b94:	100027f3          	csrr	a5,sstatus
    80002b98:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80002b9c:	fd043903          	ld	s2,-48(s0)
        switch(syscall_code) {
    80002ba0:	01300793          	li	a5,19
    80002ba4:	0307e463          	bltu	a5,a6,80002bcc <_ZN5RiscV22handle_supervisor_trapEv+0xe4>
    80002ba8:	00281813          	slli	a6,a6,0x2
    80002bac:	00006717          	auipc	a4,0x6
    80002bb0:	47470713          	addi	a4,a4,1140 # 80009020 <CONSOLE_STATUS+0x10>
    80002bb4:	00e80833          	add	a6,a6,a4
    80002bb8:	00082783          	lw	a5,0(a6)
    80002bbc:	00e787b3          	add	a5,a5,a4
    80002bc0:	00078067          	jr	a5
                MemoryAllocator::mem_alloc((size_t) a1);
    80002bc4:	00000097          	auipc	ra,0x0
    80002bc8:	8dc080e7          	jalr	-1828(ra) # 800024a0 <_ZN15MemoryAllocator9mem_allocEm>
    __asm__ volatile ("csrw sepc, %0" : : "r"(val));
    80002bcc:	14149073          	csrw	sepc,s1
}

inline void RiscV::write_sstatus(uint64 val) {
    __asm__ volatile ("csrw sstatus, %0" : : "r"(val));
    80002bd0:	10091073          	csrw	sstatus,s2
}
    80002bd4:	f81ff06f          	j	80002b54 <_ZN5RiscV22handle_supervisor_trapEv+0x6c>
                MemoryAllocator::mem_free((void *) a1);
    80002bd8:	00000097          	auipc	ra,0x0
    80002bdc:	ab4080e7          	jalr	-1356(ra) # 8000268c <_ZN15MemoryAllocator8mem_freeEPv>
                break;
    80002be0:	fedff06f          	j	80002bcc <_ZN5RiscV22handle_supervisor_trapEv+0xe4>
                TCB::thread_create((thread_t *) a1, (void (*)(void *)) a2, (void *) a3, (void *) a4);
    80002be4:	fffff097          	auipc	ra,0xfffff
    80002be8:	2d0080e7          	jalr	720(ra) # 80001eb4 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>
                break;
    80002bec:	fe1ff06f          	j	80002bcc <_ZN5RiscV22handle_supervisor_trapEv+0xe4>
                TCB::thread_exit();
    80002bf0:	fffff097          	auipc	ra,0xfffff
    80002bf4:	1a0080e7          	jalr	416(ra) # 80001d90 <_ZN3TCB11thread_exitEv>
                break;
    80002bf8:	fd5ff06f          	j	80002bcc <_ZN5RiscV22handle_supervisor_trapEv+0xe4>
                TCB::dispatch();
    80002bfc:	fffff097          	auipc	ra,0xfffff
    80002c00:	058080e7          	jalr	88(ra) # 80001c54 <_ZN3TCB8dispatchEv>
                break;
    80002c04:	fc9ff06f          	j	80002bcc <_ZN5RiscV22handle_supervisor_trapEv+0xe4>

0000000080002c08 <_ZN10ThreadList9get_firstEv>:
    Node* node = new Node(thread);
    node -> next = head;
    head = node;
}

TCB *ThreadList::get_first() {
    80002c08:	ff010113          	addi	sp,sp,-16
    80002c0c:	00813423          	sd	s0,8(sp)
    80002c10:	01010413          	addi	s0,sp,16
    return (head ? head -> data : nullptr);
    80002c14:	00053503          	ld	a0,0(a0)
    80002c18:	00050463          	beqz	a0,80002c20 <_ZN10ThreadList9get_firstEv+0x18>
    80002c1c:	00053503          	ld	a0,0(a0)
}
    80002c20:	00813403          	ld	s0,8(sp)
    80002c24:	01010113          	addi	sp,sp,16
    80002c28:	00008067          	ret

0000000080002c2c <_ZN10ThreadList4NodenwEm>:

void ThreadList::free() {
    while (get_first()) remove_first();
}

void *ThreadList::Node::operator new(size_t size) {
    80002c2c:	ff010113          	addi	sp,sp,-16
    80002c30:	00113423          	sd	ra,8(sp)
    80002c34:	00813023          	sd	s0,0(sp)
    80002c38:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    80002c3c:	00000097          	auipc	ra,0x0
    80002c40:	c60080e7          	jalr	-928(ra) # 8000289c <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80002c44:	00000097          	auipc	ra,0x0
    80002c48:	85c080e7          	jalr	-1956(ra) # 800024a0 <_ZN15MemoryAllocator9mem_allocEm>
}
    80002c4c:	00813083          	ld	ra,8(sp)
    80002c50:	00013403          	ld	s0,0(sp)
    80002c54:	01010113          	addi	sp,sp,16
    80002c58:	00008067          	ret

0000000080002c5c <_ZN10ThreadList9push_backEP3TCB>:
void ThreadList::push_back(TCB *thread) {
    80002c5c:	fe010113          	addi	sp,sp,-32
    80002c60:	00113c23          	sd	ra,24(sp)
    80002c64:	00813823          	sd	s0,16(sp)
    80002c68:	00913423          	sd	s1,8(sp)
    80002c6c:	01213023          	sd	s2,0(sp)
    80002c70:	02010413          	addi	s0,sp,32
    80002c74:	00050493          	mv	s1,a0
    80002c78:	00058913          	mv	s2,a1
    tail = (head ? head : tail -> next) = new Node(thread);
    80002c7c:	01000513          	li	a0,16
    80002c80:	00000097          	auipc	ra,0x0
    80002c84:	fac080e7          	jalr	-84(ra) # 80002c2c <_ZN10ThreadList4NodenwEm>
        struct Node *next;

        void* operator new(size_t size);
        void operator delete(void* addr);

        explicit Node(TCB* data) : data(data), next(nullptr) {}
    80002c88:	01253023          	sd	s2,0(a0)
    80002c8c:	00053423          	sd	zero,8(a0)
    80002c90:	0004b783          	ld	a5,0(s1)
    80002c94:	02078263          	beqz	a5,80002cb8 <_ZN10ThreadList9push_backEP3TCB+0x5c>
    80002c98:	00a4b023          	sd	a0,0(s1)
    80002c9c:	00a4b423          	sd	a0,8(s1)
}
    80002ca0:	01813083          	ld	ra,24(sp)
    80002ca4:	01013403          	ld	s0,16(sp)
    80002ca8:	00813483          	ld	s1,8(sp)
    80002cac:	00013903          	ld	s2,0(sp)
    80002cb0:	02010113          	addi	sp,sp,32
    80002cb4:	00008067          	ret
    tail = (head ? head : tail -> next) = new Node(thread);
    80002cb8:	0084b783          	ld	a5,8(s1)
    80002cbc:	00a7b423          	sd	a0,8(a5)
    80002cc0:	fddff06f          	j	80002c9c <_ZN10ThreadList9push_backEP3TCB+0x40>

0000000080002cc4 <_ZN10ThreadList10push_frontEP3TCB>:
void ThreadList::push_front(TCB *thread) {
    80002cc4:	fe010113          	addi	sp,sp,-32
    80002cc8:	00113c23          	sd	ra,24(sp)
    80002ccc:	00813823          	sd	s0,16(sp)
    80002cd0:	00913423          	sd	s1,8(sp)
    80002cd4:	01213023          	sd	s2,0(sp)
    80002cd8:	02010413          	addi	s0,sp,32
    80002cdc:	00050493          	mv	s1,a0
    80002ce0:	00058913          	mv	s2,a1
    Node* node = new Node(thread);
    80002ce4:	01000513          	li	a0,16
    80002ce8:	00000097          	auipc	ra,0x0
    80002cec:	f44080e7          	jalr	-188(ra) # 80002c2c <_ZN10ThreadList4NodenwEm>
    80002cf0:	01253023          	sd	s2,0(a0)
    80002cf4:	00053423          	sd	zero,8(a0)
    node -> next = head;
    80002cf8:	0004b783          	ld	a5,0(s1)
    80002cfc:	00f53423          	sd	a5,8(a0)
    head = node;
    80002d00:	00a4b023          	sd	a0,0(s1)
}
    80002d04:	01813083          	ld	ra,24(sp)
    80002d08:	01013403          	ld	s0,16(sp)
    80002d0c:	00813483          	ld	s1,8(sp)
    80002d10:	00013903          	ld	s2,0(sp)
    80002d14:	02010113          	addi	sp,sp,32
    80002d18:	00008067          	ret

0000000080002d1c <_ZN10ThreadList4NodedlEPv>:

void ThreadList::Node::operator delete(void *addr) {
    80002d1c:	ff010113          	addi	sp,sp,-16
    80002d20:	00113423          	sd	ra,8(sp)
    80002d24:	00813023          	sd	s0,0(sp)
    80002d28:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    80002d2c:	00000097          	auipc	ra,0x0
    80002d30:	960080e7          	jalr	-1696(ra) # 8000268c <_ZN15MemoryAllocator8mem_freeEPv>
}
    80002d34:	00813083          	ld	ra,8(sp)
    80002d38:	00013403          	ld	s0,0(sp)
    80002d3c:	01010113          	addi	sp,sp,16
    80002d40:	00008067          	ret

0000000080002d44 <_ZN10ThreadList12remove_firstEv>:
TCB *ThreadList::remove_first() {
    80002d44:	fe010113          	addi	sp,sp,-32
    80002d48:	00113c23          	sd	ra,24(sp)
    80002d4c:	00813823          	sd	s0,16(sp)
    80002d50:	00913423          	sd	s1,8(sp)
    80002d54:	02010413          	addi	s0,sp,32
    80002d58:	00050793          	mv	a5,a0
    if (!head) return nullptr;
    80002d5c:	00053503          	ld	a0,0(a0)
    80002d60:	02050a63          	beqz	a0,80002d94 <_ZN10ThreadList12remove_firstEv+0x50>
    TCB* thread = tmp -> data;
    80002d64:	00053483          	ld	s1,0(a0)
    head = head -> next;
    80002d68:	00853703          	ld	a4,8(a0)
    80002d6c:	00e7b023          	sd	a4,0(a5)
    head -> next = nullptr;
    80002d70:	00073423          	sd	zero,8(a4)
    delete tmp;
    80002d74:	00000097          	auipc	ra,0x0
    80002d78:	fa8080e7          	jalr	-88(ra) # 80002d1c <_ZN10ThreadList4NodedlEPv>
}
    80002d7c:	00048513          	mv	a0,s1
    80002d80:	01813083          	ld	ra,24(sp)
    80002d84:	01013403          	ld	s0,16(sp)
    80002d88:	00813483          	ld	s1,8(sp)
    80002d8c:	02010113          	addi	sp,sp,32
    80002d90:	00008067          	ret
    if (!head) return nullptr;
    80002d94:	00050493          	mv	s1,a0
    80002d98:	fe5ff06f          	j	80002d7c <_ZN10ThreadList12remove_firstEv+0x38>

0000000080002d9c <_ZN10ThreadList4freeEv>:
void ThreadList::free() {
    80002d9c:	fe010113          	addi	sp,sp,-32
    80002da0:	00113c23          	sd	ra,24(sp)
    80002da4:	00813823          	sd	s0,16(sp)
    80002da8:	00913423          	sd	s1,8(sp)
    80002dac:	02010413          	addi	s0,sp,32
    80002db0:	00050493          	mv	s1,a0
    while (get_first()) remove_first();
    80002db4:	00048513          	mv	a0,s1
    80002db8:	00000097          	auipc	ra,0x0
    80002dbc:	e50080e7          	jalr	-432(ra) # 80002c08 <_ZN10ThreadList9get_firstEv>
    80002dc0:	00050a63          	beqz	a0,80002dd4 <_ZN10ThreadList4freeEv+0x38>
    80002dc4:	00048513          	mv	a0,s1
    80002dc8:	00000097          	auipc	ra,0x0
    80002dcc:	f7c080e7          	jalr	-132(ra) # 80002d44 <_ZN10ThreadList12remove_firstEv>
    80002dd0:	fe5ff06f          	j	80002db4 <_ZN10ThreadList4freeEv+0x18>
}
    80002dd4:	01813083          	ld	ra,24(sp)
    80002dd8:	01013403          	ld	s0,16(sp)
    80002ddc:	00813483          	ld	s1,8(sp)
    80002de0:	02010113          	addi	sp,sp,32
    80002de4:	00008067          	ret

0000000080002de8 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80002de8:	fe010113          	addi	sp,sp,-32
    80002dec:	00113c23          	sd	ra,24(sp)
    80002df0:	00813823          	sd	s0,16(sp)
    80002df4:	00913423          	sd	s1,8(sp)
    80002df8:	01213023          	sd	s2,0(sp)
    80002dfc:	02010413          	addi	s0,sp,32
    80002e00:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80002e04:	00000913          	li	s2,0
    80002e08:	00c0006f          	j	80002e14 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002e0c:	ffffe097          	auipc	ra,0xffffe
    80002e10:	5b8080e7          	jalr	1464(ra) # 800013c4 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80002e14:	ffffe097          	auipc	ra,0xffffe
    80002e18:	6b0080e7          	jalr	1712(ra) # 800014c4 <_Z4getcv>
    80002e1c:	0005059b          	sext.w	a1,a0
    80002e20:	01b00793          	li	a5,27
    80002e24:	02f58a63          	beq	a1,a5,80002e58 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80002e28:	0084b503          	ld	a0,8(s1)
    80002e2c:	00003097          	auipc	ra,0x3
    80002e30:	384080e7          	jalr	900(ra) # 800061b0 <_ZN6Buffer3putEi>
        i++;
    80002e34:	0019071b          	addiw	a4,s2,1
    80002e38:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002e3c:	0004a683          	lw	a3,0(s1)
    80002e40:	0026979b          	slliw	a5,a3,0x2
    80002e44:	00d787bb          	addw	a5,a5,a3
    80002e48:	0017979b          	slliw	a5,a5,0x1
    80002e4c:	02f767bb          	remw	a5,a4,a5
    80002e50:	fc0792e3          	bnez	a5,80002e14 <_ZL16producerKeyboardPv+0x2c>
    80002e54:	fb9ff06f          	j	80002e0c <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80002e58:	00100793          	li	a5,1
    80002e5c:	00009717          	auipc	a4,0x9
    80002e60:	a2f72a23          	sw	a5,-1484(a4) # 8000b890 <_ZL9threadEnd>
    data->buffer->put('!');
    80002e64:	02100593          	li	a1,33
    80002e68:	0084b503          	ld	a0,8(s1)
    80002e6c:	00003097          	auipc	ra,0x3
    80002e70:	344080e7          	jalr	836(ra) # 800061b0 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80002e74:	0104b503          	ld	a0,16(s1)
    80002e78:	ffffe097          	auipc	ra,0xffffe
    80002e7c:	5dc080e7          	jalr	1500(ra) # 80001454 <_Z10sem_signalP3Sem>
}
    80002e80:	01813083          	ld	ra,24(sp)
    80002e84:	01013403          	ld	s0,16(sp)
    80002e88:	00813483          	ld	s1,8(sp)
    80002e8c:	00013903          	ld	s2,0(sp)
    80002e90:	02010113          	addi	sp,sp,32
    80002e94:	00008067          	ret

0000000080002e98 <_ZL8producerPv>:

static void producer(void *arg) {
    80002e98:	fe010113          	addi	sp,sp,-32
    80002e9c:	00113c23          	sd	ra,24(sp)
    80002ea0:	00813823          	sd	s0,16(sp)
    80002ea4:	00913423          	sd	s1,8(sp)
    80002ea8:	01213023          	sd	s2,0(sp)
    80002eac:	02010413          	addi	s0,sp,32
    80002eb0:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002eb4:	00000913          	li	s2,0
    80002eb8:	00c0006f          	j	80002ec4 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002ebc:	ffffe097          	auipc	ra,0xffffe
    80002ec0:	508080e7          	jalr	1288(ra) # 800013c4 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80002ec4:	00009797          	auipc	a5,0x9
    80002ec8:	9cc7a783          	lw	a5,-1588(a5) # 8000b890 <_ZL9threadEnd>
    80002ecc:	02079e63          	bnez	a5,80002f08 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80002ed0:	0004a583          	lw	a1,0(s1)
    80002ed4:	0305859b          	addiw	a1,a1,48
    80002ed8:	0084b503          	ld	a0,8(s1)
    80002edc:	00003097          	auipc	ra,0x3
    80002ee0:	2d4080e7          	jalr	724(ra) # 800061b0 <_ZN6Buffer3putEi>
        i++;
    80002ee4:	0019071b          	addiw	a4,s2,1
    80002ee8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002eec:	0004a683          	lw	a3,0(s1)
    80002ef0:	0026979b          	slliw	a5,a3,0x2
    80002ef4:	00d787bb          	addw	a5,a5,a3
    80002ef8:	0017979b          	slliw	a5,a5,0x1
    80002efc:	02f767bb          	remw	a5,a4,a5
    80002f00:	fc0792e3          	bnez	a5,80002ec4 <_ZL8producerPv+0x2c>
    80002f04:	fb9ff06f          	j	80002ebc <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80002f08:	0104b503          	ld	a0,16(s1)
    80002f0c:	ffffe097          	auipc	ra,0xffffe
    80002f10:	548080e7          	jalr	1352(ra) # 80001454 <_Z10sem_signalP3Sem>
}
    80002f14:	01813083          	ld	ra,24(sp)
    80002f18:	01013403          	ld	s0,16(sp)
    80002f1c:	00813483          	ld	s1,8(sp)
    80002f20:	00013903          	ld	s2,0(sp)
    80002f24:	02010113          	addi	sp,sp,32
    80002f28:	00008067          	ret

0000000080002f2c <_ZL8consumerPv>:

static void consumer(void *arg) {
    80002f2c:	fd010113          	addi	sp,sp,-48
    80002f30:	02113423          	sd	ra,40(sp)
    80002f34:	02813023          	sd	s0,32(sp)
    80002f38:	00913c23          	sd	s1,24(sp)
    80002f3c:	01213823          	sd	s2,16(sp)
    80002f40:	01313423          	sd	s3,8(sp)
    80002f44:	03010413          	addi	s0,sp,48
    80002f48:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002f4c:	00000993          	li	s3,0
    80002f50:	01c0006f          	j	80002f6c <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80002f54:	ffffe097          	auipc	ra,0xffffe
    80002f58:	470080e7          	jalr	1136(ra) # 800013c4 <_Z15thread_dispatchv>
    80002f5c:	0500006f          	j	80002fac <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80002f60:	00a00513          	li	a0,10
    80002f64:	ffffe097          	auipc	ra,0xffffe
    80002f68:	5ac080e7          	jalr	1452(ra) # 80001510 <_Z4putcc>
    while (!threadEnd) {
    80002f6c:	00009797          	auipc	a5,0x9
    80002f70:	9247a783          	lw	a5,-1756(a5) # 8000b890 <_ZL9threadEnd>
    80002f74:	06079063          	bnez	a5,80002fd4 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80002f78:	00893503          	ld	a0,8(s2)
    80002f7c:	00003097          	auipc	ra,0x3
    80002f80:	2c4080e7          	jalr	708(ra) # 80006240 <_ZN6Buffer3getEv>
        i++;
    80002f84:	0019849b          	addiw	s1,s3,1
    80002f88:	0004899b          	sext.w	s3,s1
        putc(key);
    80002f8c:	0ff57513          	andi	a0,a0,255
    80002f90:	ffffe097          	auipc	ra,0xffffe
    80002f94:	580080e7          	jalr	1408(ra) # 80001510 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80002f98:	00092703          	lw	a4,0(s2)
    80002f9c:	0027179b          	slliw	a5,a4,0x2
    80002fa0:	00e787bb          	addw	a5,a5,a4
    80002fa4:	02f4e7bb          	remw	a5,s1,a5
    80002fa8:	fa0786e3          	beqz	a5,80002f54 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80002fac:	05000793          	li	a5,80
    80002fb0:	02f4e4bb          	remw	s1,s1,a5
    80002fb4:	fa049ce3          	bnez	s1,80002f6c <_ZL8consumerPv+0x40>
    80002fb8:	fa9ff06f          	j	80002f60 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80002fbc:	00893503          	ld	a0,8(s2)
    80002fc0:	00003097          	auipc	ra,0x3
    80002fc4:	280080e7          	jalr	640(ra) # 80006240 <_ZN6Buffer3getEv>
        putc(key);
    80002fc8:	0ff57513          	andi	a0,a0,255
    80002fcc:	ffffe097          	auipc	ra,0xffffe
    80002fd0:	544080e7          	jalr	1348(ra) # 80001510 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80002fd4:	00893503          	ld	a0,8(s2)
    80002fd8:	00003097          	auipc	ra,0x3
    80002fdc:	2f4080e7          	jalr	756(ra) # 800062cc <_ZN6Buffer6getCntEv>
    80002fe0:	fca04ee3          	bgtz	a0,80002fbc <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80002fe4:	01093503          	ld	a0,16(s2)
    80002fe8:	ffffe097          	auipc	ra,0xffffe
    80002fec:	46c080e7          	jalr	1132(ra) # 80001454 <_Z10sem_signalP3Sem>
}
    80002ff0:	02813083          	ld	ra,40(sp)
    80002ff4:	02013403          	ld	s0,32(sp)
    80002ff8:	01813483          	ld	s1,24(sp)
    80002ffc:	01013903          	ld	s2,16(sp)
    80003000:	00813983          	ld	s3,8(sp)
    80003004:	03010113          	addi	sp,sp,48
    80003008:	00008067          	ret

000000008000300c <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    8000300c:	f9010113          	addi	sp,sp,-112
    80003010:	06113423          	sd	ra,104(sp)
    80003014:	06813023          	sd	s0,96(sp)
    80003018:	04913c23          	sd	s1,88(sp)
    8000301c:	05213823          	sd	s2,80(sp)
    80003020:	05313423          	sd	s3,72(sp)
    80003024:	05413023          	sd	s4,64(sp)
    80003028:	03513c23          	sd	s5,56(sp)
    8000302c:	03613823          	sd	s6,48(sp)
    80003030:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80003034:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003038:	00006517          	auipc	a0,0x6
    8000303c:	03850513          	addi	a0,a0,56 # 80009070 <CONSOLE_STATUS+0x60>
    80003040:	00002097          	auipc	ra,0x2
    80003044:	220080e7          	jalr	544(ra) # 80005260 <_Z11printStringPKc>
    getString(input, 30);
    80003048:	01e00593          	li	a1,30
    8000304c:	fa040493          	addi	s1,s0,-96
    80003050:	00048513          	mv	a0,s1
    80003054:	00002097          	auipc	ra,0x2
    80003058:	294080e7          	jalr	660(ra) # 800052e8 <_Z9getStringPci>
    threadNum = stringToInt(input);
    8000305c:	00048513          	mv	a0,s1
    80003060:	00002097          	auipc	ra,0x2
    80003064:	360080e7          	jalr	864(ra) # 800053c0 <_Z11stringToIntPKc>
    80003068:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    8000306c:	00006517          	auipc	a0,0x6
    80003070:	02450513          	addi	a0,a0,36 # 80009090 <CONSOLE_STATUS+0x80>
    80003074:	00002097          	auipc	ra,0x2
    80003078:	1ec080e7          	jalr	492(ra) # 80005260 <_Z11printStringPKc>
    getString(input, 30);
    8000307c:	01e00593          	li	a1,30
    80003080:	00048513          	mv	a0,s1
    80003084:	00002097          	auipc	ra,0x2
    80003088:	264080e7          	jalr	612(ra) # 800052e8 <_Z9getStringPci>
    n = stringToInt(input);
    8000308c:	00048513          	mv	a0,s1
    80003090:	00002097          	auipc	ra,0x2
    80003094:	330080e7          	jalr	816(ra) # 800053c0 <_Z11stringToIntPKc>
    80003098:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    8000309c:	00006517          	auipc	a0,0x6
    800030a0:	01450513          	addi	a0,a0,20 # 800090b0 <CONSOLE_STATUS+0xa0>
    800030a4:	00002097          	auipc	ra,0x2
    800030a8:	1bc080e7          	jalr	444(ra) # 80005260 <_Z11printStringPKc>
    800030ac:	00000613          	li	a2,0
    800030b0:	00a00593          	li	a1,10
    800030b4:	00090513          	mv	a0,s2
    800030b8:	00002097          	auipc	ra,0x2
    800030bc:	358080e7          	jalr	856(ra) # 80005410 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800030c0:	00006517          	auipc	a0,0x6
    800030c4:	00850513          	addi	a0,a0,8 # 800090c8 <CONSOLE_STATUS+0xb8>
    800030c8:	00002097          	auipc	ra,0x2
    800030cc:	198080e7          	jalr	408(ra) # 80005260 <_Z11printStringPKc>
    800030d0:	00000613          	li	a2,0
    800030d4:	00a00593          	li	a1,10
    800030d8:	00048513          	mv	a0,s1
    800030dc:	00002097          	auipc	ra,0x2
    800030e0:	334080e7          	jalr	820(ra) # 80005410 <_Z8printIntiii>
    printString(".\n");
    800030e4:	00006517          	auipc	a0,0x6
    800030e8:	ffc50513          	addi	a0,a0,-4 # 800090e0 <CONSOLE_STATUS+0xd0>
    800030ec:	00002097          	auipc	ra,0x2
    800030f0:	174080e7          	jalr	372(ra) # 80005260 <_Z11printStringPKc>
    if(threadNum > n) {
    800030f4:	0324c463          	blt	s1,s2,8000311c <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    800030f8:	03205c63          	blez	s2,80003130 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    800030fc:	03800513          	li	a0,56
    80003100:	fffff097          	auipc	ra,0xfffff
    80003104:	f68080e7          	jalr	-152(ra) # 80002068 <_Znwm>
    80003108:	00050a13          	mv	s4,a0
    8000310c:	00048593          	mv	a1,s1
    80003110:	00003097          	auipc	ra,0x3
    80003114:	004080e7          	jalr	4(ra) # 80006114 <_ZN6BufferC1Ei>
    80003118:	0300006f          	j	80003148 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    8000311c:	00006517          	auipc	a0,0x6
    80003120:	fcc50513          	addi	a0,a0,-52 # 800090e8 <CONSOLE_STATUS+0xd8>
    80003124:	00002097          	auipc	ra,0x2
    80003128:	13c080e7          	jalr	316(ra) # 80005260 <_Z11printStringPKc>
        return;
    8000312c:	0140006f          	j	80003140 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003130:	00006517          	auipc	a0,0x6
    80003134:	ff850513          	addi	a0,a0,-8 # 80009128 <CONSOLE_STATUS+0x118>
    80003138:	00002097          	auipc	ra,0x2
    8000313c:	128080e7          	jalr	296(ra) # 80005260 <_Z11printStringPKc>
        return;
    80003140:	000b0113          	mv	sp,s6
    80003144:	1500006f          	j	80003294 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003148:	00000593          	li	a1,0
    8000314c:	00008517          	auipc	a0,0x8
    80003150:	74c50513          	addi	a0,a0,1868 # 8000b898 <_ZL10waitForAll>
    80003154:	ffffe097          	auipc	ra,0xffffe
    80003158:	2ac080e7          	jalr	684(ra) # 80001400 <_Z8sem_openPP3Semj>
    thread_t threads[threadNum];
    8000315c:	00391793          	slli	a5,s2,0x3
    80003160:	00f78793          	addi	a5,a5,15
    80003164:	ff07f793          	andi	a5,a5,-16
    80003168:	40f10133          	sub	sp,sp,a5
    8000316c:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003170:	0019071b          	addiw	a4,s2,1
    80003174:	00171793          	slli	a5,a4,0x1
    80003178:	00e787b3          	add	a5,a5,a4
    8000317c:	00379793          	slli	a5,a5,0x3
    80003180:	00f78793          	addi	a5,a5,15
    80003184:	ff07f793          	andi	a5,a5,-16
    80003188:	40f10133          	sub	sp,sp,a5
    8000318c:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003190:	00191613          	slli	a2,s2,0x1
    80003194:	012607b3          	add	a5,a2,s2
    80003198:	00379793          	slli	a5,a5,0x3
    8000319c:	00f987b3          	add	a5,s3,a5
    800031a0:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800031a4:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    800031a8:	00008717          	auipc	a4,0x8
    800031ac:	6f073703          	ld	a4,1776(a4) # 8000b898 <_ZL10waitForAll>
    800031b0:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    800031b4:	00078613          	mv	a2,a5
    800031b8:	00000597          	auipc	a1,0x0
    800031bc:	d7458593          	addi	a1,a1,-652 # 80002f2c <_ZL8consumerPv>
    800031c0:	f9840513          	addi	a0,s0,-104
    800031c4:	ffffe097          	auipc	ra,0xffffe
    800031c8:	12c080e7          	jalr	300(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800031cc:	00000493          	li	s1,0
    800031d0:	0280006f          	j	800031f8 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    800031d4:	00000597          	auipc	a1,0x0
    800031d8:	c1458593          	addi	a1,a1,-1004 # 80002de8 <_ZL16producerKeyboardPv>
                      data + i);
    800031dc:	00179613          	slli	a2,a5,0x1
    800031e0:	00f60633          	add	a2,a2,a5
    800031e4:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    800031e8:	00c98633          	add	a2,s3,a2
    800031ec:	ffffe097          	auipc	ra,0xffffe
    800031f0:	104080e7          	jalr	260(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800031f4:	0014849b          	addiw	s1,s1,1
    800031f8:	0524d263          	bge	s1,s2,8000323c <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    800031fc:	00149793          	slli	a5,s1,0x1
    80003200:	009787b3          	add	a5,a5,s1
    80003204:	00379793          	slli	a5,a5,0x3
    80003208:	00f987b3          	add	a5,s3,a5
    8000320c:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003210:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80003214:	00008717          	auipc	a4,0x8
    80003218:	68473703          	ld	a4,1668(a4) # 8000b898 <_ZL10waitForAll>
    8000321c:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003220:	00048793          	mv	a5,s1
    80003224:	00349513          	slli	a0,s1,0x3
    80003228:	00aa8533          	add	a0,s5,a0
    8000322c:	fa9054e3          	blez	s1,800031d4 <_Z22producerConsumer_C_APIv+0x1c8>
    80003230:	00000597          	auipc	a1,0x0
    80003234:	c6858593          	addi	a1,a1,-920 # 80002e98 <_ZL8producerPv>
    80003238:	fa5ff06f          	j	800031dc <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    8000323c:	ffffe097          	auipc	ra,0xffffe
    80003240:	188080e7          	jalr	392(ra) # 800013c4 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003244:	00000493          	li	s1,0
    80003248:	00994e63          	blt	s2,s1,80003264 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    8000324c:	00008517          	auipc	a0,0x8
    80003250:	64c53503          	ld	a0,1612(a0) # 8000b898 <_ZL10waitForAll>
    80003254:	ffffe097          	auipc	ra,0xffffe
    80003258:	1e4080e7          	jalr	484(ra) # 80001438 <_Z8sem_waitP3Sem>
    for (int i = 0; i <= threadNum; i++) {
    8000325c:	0014849b          	addiw	s1,s1,1
    80003260:	fe9ff06f          	j	80003248 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003264:	00008517          	auipc	a0,0x8
    80003268:	63453503          	ld	a0,1588(a0) # 8000b898 <_ZL10waitForAll>
    8000326c:	ffffe097          	auipc	ra,0xffffe
    80003270:	1b0080e7          	jalr	432(ra) # 8000141c <_Z9sem_closeP3Sem>
    delete buffer;
    80003274:	000a0e63          	beqz	s4,80003290 <_Z22producerConsumer_C_APIv+0x284>
    80003278:	000a0513          	mv	a0,s4
    8000327c:	00003097          	auipc	ra,0x3
    80003280:	0d8080e7          	jalr	216(ra) # 80006354 <_ZN6BufferD1Ev>
    80003284:	000a0513          	mv	a0,s4
    80003288:	fffff097          	auipc	ra,0xfffff
    8000328c:	e08080e7          	jalr	-504(ra) # 80002090 <_ZdlPv>
    80003290:	000b0113          	mv	sp,s6

}
    80003294:	f9040113          	addi	sp,s0,-112
    80003298:	06813083          	ld	ra,104(sp)
    8000329c:	06013403          	ld	s0,96(sp)
    800032a0:	05813483          	ld	s1,88(sp)
    800032a4:	05013903          	ld	s2,80(sp)
    800032a8:	04813983          	ld	s3,72(sp)
    800032ac:	04013a03          	ld	s4,64(sp)
    800032b0:	03813a83          	ld	s5,56(sp)
    800032b4:	03013b03          	ld	s6,48(sp)
    800032b8:	07010113          	addi	sp,sp,112
    800032bc:	00008067          	ret
    800032c0:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    800032c4:	000a0513          	mv	a0,s4
    800032c8:	fffff097          	auipc	ra,0xfffff
    800032cc:	dc8080e7          	jalr	-568(ra) # 80002090 <_ZdlPv>
    800032d0:	00048513          	mv	a0,s1
    800032d4:	00009097          	auipc	ra,0x9
    800032d8:	6d4080e7          	jalr	1748(ra) # 8000c9a8 <_Unwind_Resume>

00000000800032dc <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800032dc:	fe010113          	addi	sp,sp,-32
    800032e0:	00113c23          	sd	ra,24(sp)
    800032e4:	00813823          	sd	s0,16(sp)
    800032e8:	00913423          	sd	s1,8(sp)
    800032ec:	01213023          	sd	s2,0(sp)
    800032f0:	02010413          	addi	s0,sp,32
    800032f4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800032f8:	00100793          	li	a5,1
    800032fc:	02a7f863          	bgeu	a5,a0,8000332c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003300:	00a00793          	li	a5,10
    80003304:	02f577b3          	remu	a5,a0,a5
    80003308:	02078e63          	beqz	a5,80003344 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    8000330c:	fff48513          	addi	a0,s1,-1
    80003310:	00000097          	auipc	ra,0x0
    80003314:	fcc080e7          	jalr	-52(ra) # 800032dc <_ZL9fibonaccim>
    80003318:	00050913          	mv	s2,a0
    8000331c:	ffe48513          	addi	a0,s1,-2
    80003320:	00000097          	auipc	ra,0x0
    80003324:	fbc080e7          	jalr	-68(ra) # 800032dc <_ZL9fibonaccim>
    80003328:	00a90533          	add	a0,s2,a0
}
    8000332c:	01813083          	ld	ra,24(sp)
    80003330:	01013403          	ld	s0,16(sp)
    80003334:	00813483          	ld	s1,8(sp)
    80003338:	00013903          	ld	s2,0(sp)
    8000333c:	02010113          	addi	sp,sp,32
    80003340:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003344:	ffffe097          	auipc	ra,0xffffe
    80003348:	080080e7          	jalr	128(ra) # 800013c4 <_Z15thread_dispatchv>
    8000334c:	fc1ff06f          	j	8000330c <_ZL9fibonaccim+0x30>

0000000080003350 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003350:	fe010113          	addi	sp,sp,-32
    80003354:	00113c23          	sd	ra,24(sp)
    80003358:	00813823          	sd	s0,16(sp)
    8000335c:	00913423          	sd	s1,8(sp)
    80003360:	01213023          	sd	s2,0(sp)
    80003364:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003368:	00000913          	li	s2,0
    8000336c:	0380006f          	j	800033a4 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003370:	ffffe097          	auipc	ra,0xffffe
    80003374:	054080e7          	jalr	84(ra) # 800013c4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003378:	00148493          	addi	s1,s1,1
    8000337c:	000027b7          	lui	a5,0x2
    80003380:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003384:	0097ee63          	bltu	a5,s1,800033a0 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003388:	00000713          	li	a4,0
    8000338c:	000077b7          	lui	a5,0x7
    80003390:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003394:	fce7eee3          	bltu	a5,a4,80003370 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003398:	00170713          	addi	a4,a4,1
    8000339c:	ff1ff06f          	j	8000338c <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800033a0:	00190913          	addi	s2,s2,1
    800033a4:	00900793          	li	a5,9
    800033a8:	0527e063          	bltu	a5,s2,800033e8 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800033ac:	00006517          	auipc	a0,0x6
    800033b0:	dac50513          	addi	a0,a0,-596 # 80009158 <CONSOLE_STATUS+0x148>
    800033b4:	00002097          	auipc	ra,0x2
    800033b8:	eac080e7          	jalr	-340(ra) # 80005260 <_Z11printStringPKc>
    800033bc:	00000613          	li	a2,0
    800033c0:	00a00593          	li	a1,10
    800033c4:	0009051b          	sext.w	a0,s2
    800033c8:	00002097          	auipc	ra,0x2
    800033cc:	048080e7          	jalr	72(ra) # 80005410 <_Z8printIntiii>
    800033d0:	00006517          	auipc	a0,0x6
    800033d4:	cd850513          	addi	a0,a0,-808 # 800090a8 <CONSOLE_STATUS+0x98>
    800033d8:	00002097          	auipc	ra,0x2
    800033dc:	e88080e7          	jalr	-376(ra) # 80005260 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800033e0:	00000493          	li	s1,0
    800033e4:	f99ff06f          	j	8000337c <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    800033e8:	00006517          	auipc	a0,0x6
    800033ec:	d7850513          	addi	a0,a0,-648 # 80009160 <CONSOLE_STATUS+0x150>
    800033f0:	00002097          	auipc	ra,0x2
    800033f4:	e70080e7          	jalr	-400(ra) # 80005260 <_Z11printStringPKc>
    finishedA = true;
    800033f8:	00100793          	li	a5,1
    800033fc:	00008717          	auipc	a4,0x8
    80003400:	4af70223          	sb	a5,1188(a4) # 8000b8a0 <_ZL9finishedA>
}
    80003404:	01813083          	ld	ra,24(sp)
    80003408:	01013403          	ld	s0,16(sp)
    8000340c:	00813483          	ld	s1,8(sp)
    80003410:	00013903          	ld	s2,0(sp)
    80003414:	02010113          	addi	sp,sp,32
    80003418:	00008067          	ret

000000008000341c <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    8000341c:	fe010113          	addi	sp,sp,-32
    80003420:	00113c23          	sd	ra,24(sp)
    80003424:	00813823          	sd	s0,16(sp)
    80003428:	00913423          	sd	s1,8(sp)
    8000342c:	01213023          	sd	s2,0(sp)
    80003430:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003434:	00000913          	li	s2,0
    80003438:	0380006f          	j	80003470 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    8000343c:	ffffe097          	auipc	ra,0xffffe
    80003440:	f88080e7          	jalr	-120(ra) # 800013c4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003444:	00148493          	addi	s1,s1,1
    80003448:	000027b7          	lui	a5,0x2
    8000344c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003450:	0097ee63          	bltu	a5,s1,8000346c <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003454:	00000713          	li	a4,0
    80003458:	000077b7          	lui	a5,0x7
    8000345c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003460:	fce7eee3          	bltu	a5,a4,8000343c <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003464:	00170713          	addi	a4,a4,1
    80003468:	ff1ff06f          	j	80003458 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    8000346c:	00190913          	addi	s2,s2,1
    80003470:	00f00793          	li	a5,15
    80003474:	0527e063          	bltu	a5,s2,800034b4 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003478:	00006517          	auipc	a0,0x6
    8000347c:	cf850513          	addi	a0,a0,-776 # 80009170 <CONSOLE_STATUS+0x160>
    80003480:	00002097          	auipc	ra,0x2
    80003484:	de0080e7          	jalr	-544(ra) # 80005260 <_Z11printStringPKc>
    80003488:	00000613          	li	a2,0
    8000348c:	00a00593          	li	a1,10
    80003490:	0009051b          	sext.w	a0,s2
    80003494:	00002097          	auipc	ra,0x2
    80003498:	f7c080e7          	jalr	-132(ra) # 80005410 <_Z8printIntiii>
    8000349c:	00006517          	auipc	a0,0x6
    800034a0:	c0c50513          	addi	a0,a0,-1012 # 800090a8 <CONSOLE_STATUS+0x98>
    800034a4:	00002097          	auipc	ra,0x2
    800034a8:	dbc080e7          	jalr	-580(ra) # 80005260 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800034ac:	00000493          	li	s1,0
    800034b0:	f99ff06f          	j	80003448 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    800034b4:	00006517          	auipc	a0,0x6
    800034b8:	cc450513          	addi	a0,a0,-828 # 80009178 <CONSOLE_STATUS+0x168>
    800034bc:	00002097          	auipc	ra,0x2
    800034c0:	da4080e7          	jalr	-604(ra) # 80005260 <_Z11printStringPKc>
    finishedB = true;
    800034c4:	00100793          	li	a5,1
    800034c8:	00008717          	auipc	a4,0x8
    800034cc:	3cf70ca3          	sb	a5,985(a4) # 8000b8a1 <_ZL9finishedB>
    thread_dispatch();
    800034d0:	ffffe097          	auipc	ra,0xffffe
    800034d4:	ef4080e7          	jalr	-268(ra) # 800013c4 <_Z15thread_dispatchv>
}
    800034d8:	01813083          	ld	ra,24(sp)
    800034dc:	01013403          	ld	s0,16(sp)
    800034e0:	00813483          	ld	s1,8(sp)
    800034e4:	00013903          	ld	s2,0(sp)
    800034e8:	02010113          	addi	sp,sp,32
    800034ec:	00008067          	ret

00000000800034f0 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    800034f0:	fe010113          	addi	sp,sp,-32
    800034f4:	00113c23          	sd	ra,24(sp)
    800034f8:	00813823          	sd	s0,16(sp)
    800034fc:	00913423          	sd	s1,8(sp)
    80003500:	01213023          	sd	s2,0(sp)
    80003504:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003508:	00000493          	li	s1,0
    8000350c:	0400006f          	j	8000354c <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003510:	00006517          	auipc	a0,0x6
    80003514:	c7850513          	addi	a0,a0,-904 # 80009188 <CONSOLE_STATUS+0x178>
    80003518:	00002097          	auipc	ra,0x2
    8000351c:	d48080e7          	jalr	-696(ra) # 80005260 <_Z11printStringPKc>
    80003520:	00000613          	li	a2,0
    80003524:	00a00593          	li	a1,10
    80003528:	00048513          	mv	a0,s1
    8000352c:	00002097          	auipc	ra,0x2
    80003530:	ee4080e7          	jalr	-284(ra) # 80005410 <_Z8printIntiii>
    80003534:	00006517          	auipc	a0,0x6
    80003538:	b7450513          	addi	a0,a0,-1164 # 800090a8 <CONSOLE_STATUS+0x98>
    8000353c:	00002097          	auipc	ra,0x2
    80003540:	d24080e7          	jalr	-732(ra) # 80005260 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003544:	0014849b          	addiw	s1,s1,1
    80003548:	0ff4f493          	andi	s1,s1,255
    8000354c:	00200793          	li	a5,2
    80003550:	fc97f0e3          	bgeu	a5,s1,80003510 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003554:	00006517          	auipc	a0,0x6
    80003558:	c3c50513          	addi	a0,a0,-964 # 80009190 <CONSOLE_STATUS+0x180>
    8000355c:	00002097          	auipc	ra,0x2
    80003560:	d04080e7          	jalr	-764(ra) # 80005260 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003564:	00700313          	li	t1,7
    thread_dispatch();
    80003568:	ffffe097          	auipc	ra,0xffffe
    8000356c:	e5c080e7          	jalr	-420(ra) # 800013c4 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003570:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003574:	00006517          	auipc	a0,0x6
    80003578:	c2c50513          	addi	a0,a0,-980 # 800091a0 <CONSOLE_STATUS+0x190>
    8000357c:	00002097          	auipc	ra,0x2
    80003580:	ce4080e7          	jalr	-796(ra) # 80005260 <_Z11printStringPKc>
    80003584:	00000613          	li	a2,0
    80003588:	00a00593          	li	a1,10
    8000358c:	0009051b          	sext.w	a0,s2
    80003590:	00002097          	auipc	ra,0x2
    80003594:	e80080e7          	jalr	-384(ra) # 80005410 <_Z8printIntiii>
    80003598:	00006517          	auipc	a0,0x6
    8000359c:	b1050513          	addi	a0,a0,-1264 # 800090a8 <CONSOLE_STATUS+0x98>
    800035a0:	00002097          	auipc	ra,0x2
    800035a4:	cc0080e7          	jalr	-832(ra) # 80005260 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800035a8:	00c00513          	li	a0,12
    800035ac:	00000097          	auipc	ra,0x0
    800035b0:	d30080e7          	jalr	-720(ra) # 800032dc <_ZL9fibonaccim>
    800035b4:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800035b8:	00006517          	auipc	a0,0x6
    800035bc:	bf050513          	addi	a0,a0,-1040 # 800091a8 <CONSOLE_STATUS+0x198>
    800035c0:	00002097          	auipc	ra,0x2
    800035c4:	ca0080e7          	jalr	-864(ra) # 80005260 <_Z11printStringPKc>
    800035c8:	00000613          	li	a2,0
    800035cc:	00a00593          	li	a1,10
    800035d0:	0009051b          	sext.w	a0,s2
    800035d4:	00002097          	auipc	ra,0x2
    800035d8:	e3c080e7          	jalr	-452(ra) # 80005410 <_Z8printIntiii>
    800035dc:	00006517          	auipc	a0,0x6
    800035e0:	acc50513          	addi	a0,a0,-1332 # 800090a8 <CONSOLE_STATUS+0x98>
    800035e4:	00002097          	auipc	ra,0x2
    800035e8:	c7c080e7          	jalr	-900(ra) # 80005260 <_Z11printStringPKc>
    800035ec:	0400006f          	j	8000362c <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800035f0:	00006517          	auipc	a0,0x6
    800035f4:	b9850513          	addi	a0,a0,-1128 # 80009188 <CONSOLE_STATUS+0x178>
    800035f8:	00002097          	auipc	ra,0x2
    800035fc:	c68080e7          	jalr	-920(ra) # 80005260 <_Z11printStringPKc>
    80003600:	00000613          	li	a2,0
    80003604:	00a00593          	li	a1,10
    80003608:	00048513          	mv	a0,s1
    8000360c:	00002097          	auipc	ra,0x2
    80003610:	e04080e7          	jalr	-508(ra) # 80005410 <_Z8printIntiii>
    80003614:	00006517          	auipc	a0,0x6
    80003618:	a9450513          	addi	a0,a0,-1388 # 800090a8 <CONSOLE_STATUS+0x98>
    8000361c:	00002097          	auipc	ra,0x2
    80003620:	c44080e7          	jalr	-956(ra) # 80005260 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003624:	0014849b          	addiw	s1,s1,1
    80003628:	0ff4f493          	andi	s1,s1,255
    8000362c:	00500793          	li	a5,5
    80003630:	fc97f0e3          	bgeu	a5,s1,800035f0 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80003634:	00006517          	auipc	a0,0x6
    80003638:	b2c50513          	addi	a0,a0,-1236 # 80009160 <CONSOLE_STATUS+0x150>
    8000363c:	00002097          	auipc	ra,0x2
    80003640:	c24080e7          	jalr	-988(ra) # 80005260 <_Z11printStringPKc>
    finishedC = true;
    80003644:	00100793          	li	a5,1
    80003648:	00008717          	auipc	a4,0x8
    8000364c:	24f70d23          	sb	a5,602(a4) # 8000b8a2 <_ZL9finishedC>
    thread_dispatch();
    80003650:	ffffe097          	auipc	ra,0xffffe
    80003654:	d74080e7          	jalr	-652(ra) # 800013c4 <_Z15thread_dispatchv>
}
    80003658:	01813083          	ld	ra,24(sp)
    8000365c:	01013403          	ld	s0,16(sp)
    80003660:	00813483          	ld	s1,8(sp)
    80003664:	00013903          	ld	s2,0(sp)
    80003668:	02010113          	addi	sp,sp,32
    8000366c:	00008067          	ret

0000000080003670 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003670:	fe010113          	addi	sp,sp,-32
    80003674:	00113c23          	sd	ra,24(sp)
    80003678:	00813823          	sd	s0,16(sp)
    8000367c:	00913423          	sd	s1,8(sp)
    80003680:	01213023          	sd	s2,0(sp)
    80003684:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003688:	00a00493          	li	s1,10
    8000368c:	0400006f          	j	800036cc <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003690:	00006517          	auipc	a0,0x6
    80003694:	b2850513          	addi	a0,a0,-1240 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80003698:	00002097          	auipc	ra,0x2
    8000369c:	bc8080e7          	jalr	-1080(ra) # 80005260 <_Z11printStringPKc>
    800036a0:	00000613          	li	a2,0
    800036a4:	00a00593          	li	a1,10
    800036a8:	00048513          	mv	a0,s1
    800036ac:	00002097          	auipc	ra,0x2
    800036b0:	d64080e7          	jalr	-668(ra) # 80005410 <_Z8printIntiii>
    800036b4:	00006517          	auipc	a0,0x6
    800036b8:	9f450513          	addi	a0,a0,-1548 # 800090a8 <CONSOLE_STATUS+0x98>
    800036bc:	00002097          	auipc	ra,0x2
    800036c0:	ba4080e7          	jalr	-1116(ra) # 80005260 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800036c4:	0014849b          	addiw	s1,s1,1
    800036c8:	0ff4f493          	andi	s1,s1,255
    800036cc:	00c00793          	li	a5,12
    800036d0:	fc97f0e3          	bgeu	a5,s1,80003690 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    800036d4:	00006517          	auipc	a0,0x6
    800036d8:	aec50513          	addi	a0,a0,-1300 # 800091c0 <CONSOLE_STATUS+0x1b0>
    800036dc:	00002097          	auipc	ra,0x2
    800036e0:	b84080e7          	jalr	-1148(ra) # 80005260 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800036e4:	00500313          	li	t1,5
    thread_dispatch();
    800036e8:	ffffe097          	auipc	ra,0xffffe
    800036ec:	cdc080e7          	jalr	-804(ra) # 800013c4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800036f0:	01000513          	li	a0,16
    800036f4:	00000097          	auipc	ra,0x0
    800036f8:	be8080e7          	jalr	-1048(ra) # 800032dc <_ZL9fibonaccim>
    800036fc:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003700:	00006517          	auipc	a0,0x6
    80003704:	ad050513          	addi	a0,a0,-1328 # 800091d0 <CONSOLE_STATUS+0x1c0>
    80003708:	00002097          	auipc	ra,0x2
    8000370c:	b58080e7          	jalr	-1192(ra) # 80005260 <_Z11printStringPKc>
    80003710:	00000613          	li	a2,0
    80003714:	00a00593          	li	a1,10
    80003718:	0009051b          	sext.w	a0,s2
    8000371c:	00002097          	auipc	ra,0x2
    80003720:	cf4080e7          	jalr	-780(ra) # 80005410 <_Z8printIntiii>
    80003724:	00006517          	auipc	a0,0x6
    80003728:	98450513          	addi	a0,a0,-1660 # 800090a8 <CONSOLE_STATUS+0x98>
    8000372c:	00002097          	auipc	ra,0x2
    80003730:	b34080e7          	jalr	-1228(ra) # 80005260 <_Z11printStringPKc>
    80003734:	0400006f          	j	80003774 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003738:	00006517          	auipc	a0,0x6
    8000373c:	a8050513          	addi	a0,a0,-1408 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80003740:	00002097          	auipc	ra,0x2
    80003744:	b20080e7          	jalr	-1248(ra) # 80005260 <_Z11printStringPKc>
    80003748:	00000613          	li	a2,0
    8000374c:	00a00593          	li	a1,10
    80003750:	00048513          	mv	a0,s1
    80003754:	00002097          	auipc	ra,0x2
    80003758:	cbc080e7          	jalr	-836(ra) # 80005410 <_Z8printIntiii>
    8000375c:	00006517          	auipc	a0,0x6
    80003760:	94c50513          	addi	a0,a0,-1716 # 800090a8 <CONSOLE_STATUS+0x98>
    80003764:	00002097          	auipc	ra,0x2
    80003768:	afc080e7          	jalr	-1284(ra) # 80005260 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000376c:	0014849b          	addiw	s1,s1,1
    80003770:	0ff4f493          	andi	s1,s1,255
    80003774:	00f00793          	li	a5,15
    80003778:	fc97f0e3          	bgeu	a5,s1,80003738 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    8000377c:	00006517          	auipc	a0,0x6
    80003780:	a6450513          	addi	a0,a0,-1436 # 800091e0 <CONSOLE_STATUS+0x1d0>
    80003784:	00002097          	auipc	ra,0x2
    80003788:	adc080e7          	jalr	-1316(ra) # 80005260 <_Z11printStringPKc>
    finishedD = true;
    8000378c:	00100793          	li	a5,1
    80003790:	00008717          	auipc	a4,0x8
    80003794:	10f709a3          	sb	a5,275(a4) # 8000b8a3 <_ZL9finishedD>
    thread_dispatch();
    80003798:	ffffe097          	auipc	ra,0xffffe
    8000379c:	c2c080e7          	jalr	-980(ra) # 800013c4 <_Z15thread_dispatchv>
}
    800037a0:	01813083          	ld	ra,24(sp)
    800037a4:	01013403          	ld	s0,16(sp)
    800037a8:	00813483          	ld	s1,8(sp)
    800037ac:	00013903          	ld	s2,0(sp)
    800037b0:	02010113          	addi	sp,sp,32
    800037b4:	00008067          	ret

00000000800037b8 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    800037b8:	fc010113          	addi	sp,sp,-64
    800037bc:	02113c23          	sd	ra,56(sp)
    800037c0:	02813823          	sd	s0,48(sp)
    800037c4:	02913423          	sd	s1,40(sp)
    800037c8:	03213023          	sd	s2,32(sp)
    800037cc:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    800037d0:	02000513          	li	a0,32
    800037d4:	fffff097          	auipc	ra,0xfffff
    800037d8:	894080e7          	jalr	-1900(ra) # 80002068 <_Znwm>
    800037dc:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    800037e0:	fffff097          	auipc	ra,0xfffff
    800037e4:	a18080e7          	jalr	-1512(ra) # 800021f8 <_ZN6ThreadC1Ev>
    800037e8:	00008797          	auipc	a5,0x8
    800037ec:	e3878793          	addi	a5,a5,-456 # 8000b620 <_ZTV7WorkerA+0x10>
    800037f0:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    800037f4:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    800037f8:	00006517          	auipc	a0,0x6
    800037fc:	9f850513          	addi	a0,a0,-1544 # 800091f0 <CONSOLE_STATUS+0x1e0>
    80003800:	00002097          	auipc	ra,0x2
    80003804:	a60080e7          	jalr	-1440(ra) # 80005260 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003808:	02000513          	li	a0,32
    8000380c:	fffff097          	auipc	ra,0xfffff
    80003810:	85c080e7          	jalr	-1956(ra) # 80002068 <_Znwm>
    80003814:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003818:	fffff097          	auipc	ra,0xfffff
    8000381c:	9e0080e7          	jalr	-1568(ra) # 800021f8 <_ZN6ThreadC1Ev>
    80003820:	00008797          	auipc	a5,0x8
    80003824:	e2878793          	addi	a5,a5,-472 # 8000b648 <_ZTV7WorkerB+0x10>
    80003828:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    8000382c:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003830:	00006517          	auipc	a0,0x6
    80003834:	9d850513          	addi	a0,a0,-1576 # 80009208 <CONSOLE_STATUS+0x1f8>
    80003838:	00002097          	auipc	ra,0x2
    8000383c:	a28080e7          	jalr	-1496(ra) # 80005260 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003840:	02000513          	li	a0,32
    80003844:	fffff097          	auipc	ra,0xfffff
    80003848:	824080e7          	jalr	-2012(ra) # 80002068 <_Znwm>
    8000384c:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003850:	fffff097          	auipc	ra,0xfffff
    80003854:	9a8080e7          	jalr	-1624(ra) # 800021f8 <_ZN6ThreadC1Ev>
    80003858:	00008797          	auipc	a5,0x8
    8000385c:	e1878793          	addi	a5,a5,-488 # 8000b670 <_ZTV7WorkerC+0x10>
    80003860:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003864:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003868:	00006517          	auipc	a0,0x6
    8000386c:	9b850513          	addi	a0,a0,-1608 # 80009220 <CONSOLE_STATUS+0x210>
    80003870:	00002097          	auipc	ra,0x2
    80003874:	9f0080e7          	jalr	-1552(ra) # 80005260 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003878:	02000513          	li	a0,32
    8000387c:	ffffe097          	auipc	ra,0xffffe
    80003880:	7ec080e7          	jalr	2028(ra) # 80002068 <_Znwm>
    80003884:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003888:	fffff097          	auipc	ra,0xfffff
    8000388c:	970080e7          	jalr	-1680(ra) # 800021f8 <_ZN6ThreadC1Ev>
    80003890:	00008797          	auipc	a5,0x8
    80003894:	e0878793          	addi	a5,a5,-504 # 8000b698 <_ZTV7WorkerD+0x10>
    80003898:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    8000389c:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    800038a0:	00006517          	auipc	a0,0x6
    800038a4:	99850513          	addi	a0,a0,-1640 # 80009238 <CONSOLE_STATUS+0x228>
    800038a8:	00002097          	auipc	ra,0x2
    800038ac:	9b8080e7          	jalr	-1608(ra) # 80005260 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    800038b0:	00000493          	li	s1,0
    800038b4:	00300793          	li	a5,3
    800038b8:	0297c663          	blt	a5,s1,800038e4 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    800038bc:	00349793          	slli	a5,s1,0x3
    800038c0:	fe040713          	addi	a4,s0,-32
    800038c4:	00f707b3          	add	a5,a4,a5
    800038c8:	fe07b503          	ld	a0,-32(a5)
    800038cc:	fffff097          	auipc	ra,0xfffff
    800038d0:	8a8080e7          	jalr	-1880(ra) # 80002174 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    800038d4:	0014849b          	addiw	s1,s1,1
    800038d8:	fddff06f          	j	800038b4 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    800038dc:	fffff097          	auipc	ra,0xfffff
    800038e0:	8c8080e7          	jalr	-1848(ra) # 800021a4 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800038e4:	00008797          	auipc	a5,0x8
    800038e8:	fbc7c783          	lbu	a5,-68(a5) # 8000b8a0 <_ZL9finishedA>
    800038ec:	fe0788e3          	beqz	a5,800038dc <_Z20Threads_CPP_API_testv+0x124>
    800038f0:	00008797          	auipc	a5,0x8
    800038f4:	fb17c783          	lbu	a5,-79(a5) # 8000b8a1 <_ZL9finishedB>
    800038f8:	fe0782e3          	beqz	a5,800038dc <_Z20Threads_CPP_API_testv+0x124>
    800038fc:	00008797          	auipc	a5,0x8
    80003900:	fa67c783          	lbu	a5,-90(a5) # 8000b8a2 <_ZL9finishedC>
    80003904:	fc078ce3          	beqz	a5,800038dc <_Z20Threads_CPP_API_testv+0x124>
    80003908:	00008797          	auipc	a5,0x8
    8000390c:	f9b7c783          	lbu	a5,-101(a5) # 8000b8a3 <_ZL9finishedD>
    80003910:	fc0786e3          	beqz	a5,800038dc <_Z20Threads_CPP_API_testv+0x124>
    80003914:	fc040493          	addi	s1,s0,-64
    80003918:	0080006f          	j	80003920 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    8000391c:	00848493          	addi	s1,s1,8
    80003920:	fe040793          	addi	a5,s0,-32
    80003924:	08f48663          	beq	s1,a5,800039b0 <_Z20Threads_CPP_API_testv+0x1f8>
    80003928:	0004b503          	ld	a0,0(s1)
    8000392c:	fe0508e3          	beqz	a0,8000391c <_Z20Threads_CPP_API_testv+0x164>
    80003930:	00053783          	ld	a5,0(a0)
    80003934:	0087b783          	ld	a5,8(a5)
    80003938:	000780e7          	jalr	a5
    8000393c:	fe1ff06f          	j	8000391c <_Z20Threads_CPP_API_testv+0x164>
    80003940:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80003944:	00048513          	mv	a0,s1
    80003948:	ffffe097          	auipc	ra,0xffffe
    8000394c:	748080e7          	jalr	1864(ra) # 80002090 <_ZdlPv>
    80003950:	00090513          	mv	a0,s2
    80003954:	00009097          	auipc	ra,0x9
    80003958:	054080e7          	jalr	84(ra) # 8000c9a8 <_Unwind_Resume>
    8000395c:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003960:	00048513          	mv	a0,s1
    80003964:	ffffe097          	auipc	ra,0xffffe
    80003968:	72c080e7          	jalr	1836(ra) # 80002090 <_ZdlPv>
    8000396c:	00090513          	mv	a0,s2
    80003970:	00009097          	auipc	ra,0x9
    80003974:	038080e7          	jalr	56(ra) # 8000c9a8 <_Unwind_Resume>
    80003978:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    8000397c:	00048513          	mv	a0,s1
    80003980:	ffffe097          	auipc	ra,0xffffe
    80003984:	710080e7          	jalr	1808(ra) # 80002090 <_ZdlPv>
    80003988:	00090513          	mv	a0,s2
    8000398c:	00009097          	auipc	ra,0x9
    80003990:	01c080e7          	jalr	28(ra) # 8000c9a8 <_Unwind_Resume>
    80003994:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003998:	00048513          	mv	a0,s1
    8000399c:	ffffe097          	auipc	ra,0xffffe
    800039a0:	6f4080e7          	jalr	1780(ra) # 80002090 <_ZdlPv>
    800039a4:	00090513          	mv	a0,s2
    800039a8:	00009097          	auipc	ra,0x9
    800039ac:	000080e7          	jalr	ra # 8000c9a8 <_Unwind_Resume>
}
    800039b0:	03813083          	ld	ra,56(sp)
    800039b4:	03013403          	ld	s0,48(sp)
    800039b8:	02813483          	ld	s1,40(sp)
    800039bc:	02013903          	ld	s2,32(sp)
    800039c0:	04010113          	addi	sp,sp,64
    800039c4:	00008067          	ret

00000000800039c8 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    800039c8:	ff010113          	addi	sp,sp,-16
    800039cc:	00113423          	sd	ra,8(sp)
    800039d0:	00813023          	sd	s0,0(sp)
    800039d4:	01010413          	addi	s0,sp,16
    800039d8:	00008797          	auipc	a5,0x8
    800039dc:	c4878793          	addi	a5,a5,-952 # 8000b620 <_ZTV7WorkerA+0x10>
    800039e0:	00f53023          	sd	a5,0(a0)
    800039e4:	ffffe097          	auipc	ra,0xffffe
    800039e8:	5ec080e7          	jalr	1516(ra) # 80001fd0 <_ZN6ThreadD1Ev>
    800039ec:	00813083          	ld	ra,8(sp)
    800039f0:	00013403          	ld	s0,0(sp)
    800039f4:	01010113          	addi	sp,sp,16
    800039f8:	00008067          	ret

00000000800039fc <_ZN7WorkerAD0Ev>:
    800039fc:	fe010113          	addi	sp,sp,-32
    80003a00:	00113c23          	sd	ra,24(sp)
    80003a04:	00813823          	sd	s0,16(sp)
    80003a08:	00913423          	sd	s1,8(sp)
    80003a0c:	02010413          	addi	s0,sp,32
    80003a10:	00050493          	mv	s1,a0
    80003a14:	00008797          	auipc	a5,0x8
    80003a18:	c0c78793          	addi	a5,a5,-1012 # 8000b620 <_ZTV7WorkerA+0x10>
    80003a1c:	00f53023          	sd	a5,0(a0)
    80003a20:	ffffe097          	auipc	ra,0xffffe
    80003a24:	5b0080e7          	jalr	1456(ra) # 80001fd0 <_ZN6ThreadD1Ev>
    80003a28:	00048513          	mv	a0,s1
    80003a2c:	ffffe097          	auipc	ra,0xffffe
    80003a30:	664080e7          	jalr	1636(ra) # 80002090 <_ZdlPv>
    80003a34:	01813083          	ld	ra,24(sp)
    80003a38:	01013403          	ld	s0,16(sp)
    80003a3c:	00813483          	ld	s1,8(sp)
    80003a40:	02010113          	addi	sp,sp,32
    80003a44:	00008067          	ret

0000000080003a48 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003a48:	ff010113          	addi	sp,sp,-16
    80003a4c:	00113423          	sd	ra,8(sp)
    80003a50:	00813023          	sd	s0,0(sp)
    80003a54:	01010413          	addi	s0,sp,16
    80003a58:	00008797          	auipc	a5,0x8
    80003a5c:	bf078793          	addi	a5,a5,-1040 # 8000b648 <_ZTV7WorkerB+0x10>
    80003a60:	00f53023          	sd	a5,0(a0)
    80003a64:	ffffe097          	auipc	ra,0xffffe
    80003a68:	56c080e7          	jalr	1388(ra) # 80001fd0 <_ZN6ThreadD1Ev>
    80003a6c:	00813083          	ld	ra,8(sp)
    80003a70:	00013403          	ld	s0,0(sp)
    80003a74:	01010113          	addi	sp,sp,16
    80003a78:	00008067          	ret

0000000080003a7c <_ZN7WorkerBD0Ev>:
    80003a7c:	fe010113          	addi	sp,sp,-32
    80003a80:	00113c23          	sd	ra,24(sp)
    80003a84:	00813823          	sd	s0,16(sp)
    80003a88:	00913423          	sd	s1,8(sp)
    80003a8c:	02010413          	addi	s0,sp,32
    80003a90:	00050493          	mv	s1,a0
    80003a94:	00008797          	auipc	a5,0x8
    80003a98:	bb478793          	addi	a5,a5,-1100 # 8000b648 <_ZTV7WorkerB+0x10>
    80003a9c:	00f53023          	sd	a5,0(a0)
    80003aa0:	ffffe097          	auipc	ra,0xffffe
    80003aa4:	530080e7          	jalr	1328(ra) # 80001fd0 <_ZN6ThreadD1Ev>
    80003aa8:	00048513          	mv	a0,s1
    80003aac:	ffffe097          	auipc	ra,0xffffe
    80003ab0:	5e4080e7          	jalr	1508(ra) # 80002090 <_ZdlPv>
    80003ab4:	01813083          	ld	ra,24(sp)
    80003ab8:	01013403          	ld	s0,16(sp)
    80003abc:	00813483          	ld	s1,8(sp)
    80003ac0:	02010113          	addi	sp,sp,32
    80003ac4:	00008067          	ret

0000000080003ac8 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003ac8:	ff010113          	addi	sp,sp,-16
    80003acc:	00113423          	sd	ra,8(sp)
    80003ad0:	00813023          	sd	s0,0(sp)
    80003ad4:	01010413          	addi	s0,sp,16
    80003ad8:	00008797          	auipc	a5,0x8
    80003adc:	b9878793          	addi	a5,a5,-1128 # 8000b670 <_ZTV7WorkerC+0x10>
    80003ae0:	00f53023          	sd	a5,0(a0)
    80003ae4:	ffffe097          	auipc	ra,0xffffe
    80003ae8:	4ec080e7          	jalr	1260(ra) # 80001fd0 <_ZN6ThreadD1Ev>
    80003aec:	00813083          	ld	ra,8(sp)
    80003af0:	00013403          	ld	s0,0(sp)
    80003af4:	01010113          	addi	sp,sp,16
    80003af8:	00008067          	ret

0000000080003afc <_ZN7WorkerCD0Ev>:
    80003afc:	fe010113          	addi	sp,sp,-32
    80003b00:	00113c23          	sd	ra,24(sp)
    80003b04:	00813823          	sd	s0,16(sp)
    80003b08:	00913423          	sd	s1,8(sp)
    80003b0c:	02010413          	addi	s0,sp,32
    80003b10:	00050493          	mv	s1,a0
    80003b14:	00008797          	auipc	a5,0x8
    80003b18:	b5c78793          	addi	a5,a5,-1188 # 8000b670 <_ZTV7WorkerC+0x10>
    80003b1c:	00f53023          	sd	a5,0(a0)
    80003b20:	ffffe097          	auipc	ra,0xffffe
    80003b24:	4b0080e7          	jalr	1200(ra) # 80001fd0 <_ZN6ThreadD1Ev>
    80003b28:	00048513          	mv	a0,s1
    80003b2c:	ffffe097          	auipc	ra,0xffffe
    80003b30:	564080e7          	jalr	1380(ra) # 80002090 <_ZdlPv>
    80003b34:	01813083          	ld	ra,24(sp)
    80003b38:	01013403          	ld	s0,16(sp)
    80003b3c:	00813483          	ld	s1,8(sp)
    80003b40:	02010113          	addi	sp,sp,32
    80003b44:	00008067          	ret

0000000080003b48 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003b48:	ff010113          	addi	sp,sp,-16
    80003b4c:	00113423          	sd	ra,8(sp)
    80003b50:	00813023          	sd	s0,0(sp)
    80003b54:	01010413          	addi	s0,sp,16
    80003b58:	00008797          	auipc	a5,0x8
    80003b5c:	b4078793          	addi	a5,a5,-1216 # 8000b698 <_ZTV7WorkerD+0x10>
    80003b60:	00f53023          	sd	a5,0(a0)
    80003b64:	ffffe097          	auipc	ra,0xffffe
    80003b68:	46c080e7          	jalr	1132(ra) # 80001fd0 <_ZN6ThreadD1Ev>
    80003b6c:	00813083          	ld	ra,8(sp)
    80003b70:	00013403          	ld	s0,0(sp)
    80003b74:	01010113          	addi	sp,sp,16
    80003b78:	00008067          	ret

0000000080003b7c <_ZN7WorkerDD0Ev>:
    80003b7c:	fe010113          	addi	sp,sp,-32
    80003b80:	00113c23          	sd	ra,24(sp)
    80003b84:	00813823          	sd	s0,16(sp)
    80003b88:	00913423          	sd	s1,8(sp)
    80003b8c:	02010413          	addi	s0,sp,32
    80003b90:	00050493          	mv	s1,a0
    80003b94:	00008797          	auipc	a5,0x8
    80003b98:	b0478793          	addi	a5,a5,-1276 # 8000b698 <_ZTV7WorkerD+0x10>
    80003b9c:	00f53023          	sd	a5,0(a0)
    80003ba0:	ffffe097          	auipc	ra,0xffffe
    80003ba4:	430080e7          	jalr	1072(ra) # 80001fd0 <_ZN6ThreadD1Ev>
    80003ba8:	00048513          	mv	a0,s1
    80003bac:	ffffe097          	auipc	ra,0xffffe
    80003bb0:	4e4080e7          	jalr	1252(ra) # 80002090 <_ZdlPv>
    80003bb4:	01813083          	ld	ra,24(sp)
    80003bb8:	01013403          	ld	s0,16(sp)
    80003bbc:	00813483          	ld	s1,8(sp)
    80003bc0:	02010113          	addi	sp,sp,32
    80003bc4:	00008067          	ret

0000000080003bc8 <_ZN7WorkerA3runEv>:
    void run() override {
    80003bc8:	ff010113          	addi	sp,sp,-16
    80003bcc:	00113423          	sd	ra,8(sp)
    80003bd0:	00813023          	sd	s0,0(sp)
    80003bd4:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003bd8:	00000593          	li	a1,0
    80003bdc:	fffff097          	auipc	ra,0xfffff
    80003be0:	774080e7          	jalr	1908(ra) # 80003350 <_ZN7WorkerA11workerBodyAEPv>
    }
    80003be4:	00813083          	ld	ra,8(sp)
    80003be8:	00013403          	ld	s0,0(sp)
    80003bec:	01010113          	addi	sp,sp,16
    80003bf0:	00008067          	ret

0000000080003bf4 <_ZN7WorkerB3runEv>:
    void run() override {
    80003bf4:	ff010113          	addi	sp,sp,-16
    80003bf8:	00113423          	sd	ra,8(sp)
    80003bfc:	00813023          	sd	s0,0(sp)
    80003c00:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80003c04:	00000593          	li	a1,0
    80003c08:	00000097          	auipc	ra,0x0
    80003c0c:	814080e7          	jalr	-2028(ra) # 8000341c <_ZN7WorkerB11workerBodyBEPv>
    }
    80003c10:	00813083          	ld	ra,8(sp)
    80003c14:	00013403          	ld	s0,0(sp)
    80003c18:	01010113          	addi	sp,sp,16
    80003c1c:	00008067          	ret

0000000080003c20 <_ZN7WorkerC3runEv>:
    void run() override {
    80003c20:	ff010113          	addi	sp,sp,-16
    80003c24:	00113423          	sd	ra,8(sp)
    80003c28:	00813023          	sd	s0,0(sp)
    80003c2c:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80003c30:	00000593          	li	a1,0
    80003c34:	00000097          	auipc	ra,0x0
    80003c38:	8bc080e7          	jalr	-1860(ra) # 800034f0 <_ZN7WorkerC11workerBodyCEPv>
    }
    80003c3c:	00813083          	ld	ra,8(sp)
    80003c40:	00013403          	ld	s0,0(sp)
    80003c44:	01010113          	addi	sp,sp,16
    80003c48:	00008067          	ret

0000000080003c4c <_ZN7WorkerD3runEv>:
    void run() override {
    80003c4c:	ff010113          	addi	sp,sp,-16
    80003c50:	00113423          	sd	ra,8(sp)
    80003c54:	00813023          	sd	s0,0(sp)
    80003c58:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80003c5c:	00000593          	li	a1,0
    80003c60:	00000097          	auipc	ra,0x0
    80003c64:	a10080e7          	jalr	-1520(ra) # 80003670 <_ZN7WorkerD11workerBodyDEPv>
    }
    80003c68:	00813083          	ld	ra,8(sp)
    80003c6c:	00013403          	ld	s0,0(sp)
    80003c70:	01010113          	addi	sp,sp,16
    80003c74:	00008067          	ret

0000000080003c78 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80003c78:	f8010113          	addi	sp,sp,-128
    80003c7c:	06113c23          	sd	ra,120(sp)
    80003c80:	06813823          	sd	s0,112(sp)
    80003c84:	06913423          	sd	s1,104(sp)
    80003c88:	07213023          	sd	s2,96(sp)
    80003c8c:	05313c23          	sd	s3,88(sp)
    80003c90:	05413823          	sd	s4,80(sp)
    80003c94:	05513423          	sd	s5,72(sp)
    80003c98:	05613023          	sd	s6,64(sp)
    80003c9c:	03713c23          	sd	s7,56(sp)
    80003ca0:	03813823          	sd	s8,48(sp)
    80003ca4:	03913423          	sd	s9,40(sp)
    80003ca8:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80003cac:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80003cb0:	00005517          	auipc	a0,0x5
    80003cb4:	3c050513          	addi	a0,a0,960 # 80009070 <CONSOLE_STATUS+0x60>
    80003cb8:	00001097          	auipc	ra,0x1
    80003cbc:	5a8080e7          	jalr	1448(ra) # 80005260 <_Z11printStringPKc>
    getString(input, 30);
    80003cc0:	01e00593          	li	a1,30
    80003cc4:	f8040493          	addi	s1,s0,-128
    80003cc8:	00048513          	mv	a0,s1
    80003ccc:	00001097          	auipc	ra,0x1
    80003cd0:	61c080e7          	jalr	1564(ra) # 800052e8 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003cd4:	00048513          	mv	a0,s1
    80003cd8:	00001097          	auipc	ra,0x1
    80003cdc:	6e8080e7          	jalr	1768(ra) # 800053c0 <_Z11stringToIntPKc>
    80003ce0:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80003ce4:	00005517          	auipc	a0,0x5
    80003ce8:	3ac50513          	addi	a0,a0,940 # 80009090 <CONSOLE_STATUS+0x80>
    80003cec:	00001097          	auipc	ra,0x1
    80003cf0:	574080e7          	jalr	1396(ra) # 80005260 <_Z11printStringPKc>
    getString(input, 30);
    80003cf4:	01e00593          	li	a1,30
    80003cf8:	00048513          	mv	a0,s1
    80003cfc:	00001097          	auipc	ra,0x1
    80003d00:	5ec080e7          	jalr	1516(ra) # 800052e8 <_Z9getStringPci>
    n = stringToInt(input);
    80003d04:	00048513          	mv	a0,s1
    80003d08:	00001097          	auipc	ra,0x1
    80003d0c:	6b8080e7          	jalr	1720(ra) # 800053c0 <_Z11stringToIntPKc>
    80003d10:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80003d14:	00005517          	auipc	a0,0x5
    80003d18:	39c50513          	addi	a0,a0,924 # 800090b0 <CONSOLE_STATUS+0xa0>
    80003d1c:	00001097          	auipc	ra,0x1
    80003d20:	544080e7          	jalr	1348(ra) # 80005260 <_Z11printStringPKc>
    printInt(threadNum);
    80003d24:	00000613          	li	a2,0
    80003d28:	00a00593          	li	a1,10
    80003d2c:	00098513          	mv	a0,s3
    80003d30:	00001097          	auipc	ra,0x1
    80003d34:	6e0080e7          	jalr	1760(ra) # 80005410 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80003d38:	00005517          	auipc	a0,0x5
    80003d3c:	39050513          	addi	a0,a0,912 # 800090c8 <CONSOLE_STATUS+0xb8>
    80003d40:	00001097          	auipc	ra,0x1
    80003d44:	520080e7          	jalr	1312(ra) # 80005260 <_Z11printStringPKc>
    printInt(n);
    80003d48:	00000613          	li	a2,0
    80003d4c:	00a00593          	li	a1,10
    80003d50:	00048513          	mv	a0,s1
    80003d54:	00001097          	auipc	ra,0x1
    80003d58:	6bc080e7          	jalr	1724(ra) # 80005410 <_Z8printIntiii>
    printString(".\n");
    80003d5c:	00005517          	auipc	a0,0x5
    80003d60:	38450513          	addi	a0,a0,900 # 800090e0 <CONSOLE_STATUS+0xd0>
    80003d64:	00001097          	auipc	ra,0x1
    80003d68:	4fc080e7          	jalr	1276(ra) # 80005260 <_Z11printStringPKc>
    if (threadNum > n) {
    80003d6c:	0334c463          	blt	s1,s3,80003d94 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80003d70:	03305c63          	blez	s3,80003da8 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80003d74:	03800513          	li	a0,56
    80003d78:	ffffe097          	auipc	ra,0xffffe
    80003d7c:	2f0080e7          	jalr	752(ra) # 80002068 <_Znwm>
    80003d80:	00050a93          	mv	s5,a0
    80003d84:	00048593          	mv	a1,s1
    80003d88:	00001097          	auipc	ra,0x1
    80003d8c:	7a8080e7          	jalr	1960(ra) # 80005530 <_ZN9BufferCPPC1Ei>
    80003d90:	0300006f          	j	80003dc0 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003d94:	00005517          	auipc	a0,0x5
    80003d98:	35450513          	addi	a0,a0,852 # 800090e8 <CONSOLE_STATUS+0xd8>
    80003d9c:	00001097          	auipc	ra,0x1
    80003da0:	4c4080e7          	jalr	1220(ra) # 80005260 <_Z11printStringPKc>
        return;
    80003da4:	0140006f          	j	80003db8 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003da8:	00005517          	auipc	a0,0x5
    80003dac:	38050513          	addi	a0,a0,896 # 80009128 <CONSOLE_STATUS+0x118>
    80003db0:	00001097          	auipc	ra,0x1
    80003db4:	4b0080e7          	jalr	1200(ra) # 80005260 <_Z11printStringPKc>
        return;
    80003db8:	000c0113          	mv	sp,s8
    80003dbc:	2140006f          	j	80003fd0 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80003dc0:	01000513          	li	a0,16
    80003dc4:	ffffe097          	auipc	ra,0xffffe
    80003dc8:	2a4080e7          	jalr	676(ra) # 80002068 <_Znwm>
    80003dcc:	00050913          	mv	s2,a0
    80003dd0:	00000593          	li	a1,0
    80003dd4:	ffffe097          	auipc	ra,0xffffe
    80003dd8:	44c080e7          	jalr	1100(ra) # 80002220 <_ZN9SemaphoreC1Ej>
    80003ddc:	00008797          	auipc	a5,0x8
    80003de0:	ad27ba23          	sd	s2,-1324(a5) # 8000b8b0 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80003de4:	00399793          	slli	a5,s3,0x3
    80003de8:	00f78793          	addi	a5,a5,15
    80003dec:	ff07f793          	andi	a5,a5,-16
    80003df0:	40f10133          	sub	sp,sp,a5
    80003df4:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80003df8:	0019871b          	addiw	a4,s3,1
    80003dfc:	00171793          	slli	a5,a4,0x1
    80003e00:	00e787b3          	add	a5,a5,a4
    80003e04:	00379793          	slli	a5,a5,0x3
    80003e08:	00f78793          	addi	a5,a5,15
    80003e0c:	ff07f793          	andi	a5,a5,-16
    80003e10:	40f10133          	sub	sp,sp,a5
    80003e14:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80003e18:	00199493          	slli	s1,s3,0x1
    80003e1c:	013484b3          	add	s1,s1,s3
    80003e20:	00349493          	slli	s1,s1,0x3
    80003e24:	009b04b3          	add	s1,s6,s1
    80003e28:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80003e2c:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80003e30:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003e34:	02800513          	li	a0,40
    80003e38:	ffffe097          	auipc	ra,0xffffe
    80003e3c:	230080e7          	jalr	560(ra) # 80002068 <_Znwm>
    80003e40:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80003e44:	ffffe097          	auipc	ra,0xffffe
    80003e48:	3b4080e7          	jalr	948(ra) # 800021f8 <_ZN6ThreadC1Ev>
    80003e4c:	00008797          	auipc	a5,0x8
    80003e50:	8c478793          	addi	a5,a5,-1852 # 8000b710 <_ZTV8Consumer+0x10>
    80003e54:	00fbb023          	sd	a5,0(s7)
    80003e58:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80003e5c:	000b8513          	mv	a0,s7
    80003e60:	ffffe097          	auipc	ra,0xffffe
    80003e64:	314080e7          	jalr	788(ra) # 80002174 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80003e68:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80003e6c:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80003e70:	00008797          	auipc	a5,0x8
    80003e74:	a407b783          	ld	a5,-1472(a5) # 8000b8b0 <_ZL10waitForAll>
    80003e78:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003e7c:	02800513          	li	a0,40
    80003e80:	ffffe097          	auipc	ra,0xffffe
    80003e84:	1e8080e7          	jalr	488(ra) # 80002068 <_Znwm>
    80003e88:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80003e8c:	ffffe097          	auipc	ra,0xffffe
    80003e90:	36c080e7          	jalr	876(ra) # 800021f8 <_ZN6ThreadC1Ev>
    80003e94:	00008797          	auipc	a5,0x8
    80003e98:	82c78793          	addi	a5,a5,-2004 # 8000b6c0 <_ZTV16ProducerKeyborad+0x10>
    80003e9c:	00f4b023          	sd	a5,0(s1)
    80003ea0:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003ea4:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80003ea8:	00048513          	mv	a0,s1
    80003eac:	ffffe097          	auipc	ra,0xffffe
    80003eb0:	2c8080e7          	jalr	712(ra) # 80002174 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003eb4:	00100913          	li	s2,1
    80003eb8:	0300006f          	j	80003ee8 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003ebc:	00008797          	auipc	a5,0x8
    80003ec0:	82c78793          	addi	a5,a5,-2004 # 8000b6e8 <_ZTV8Producer+0x10>
    80003ec4:	00fcb023          	sd	a5,0(s9)
    80003ec8:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80003ecc:	00391793          	slli	a5,s2,0x3
    80003ed0:	00fa07b3          	add	a5,s4,a5
    80003ed4:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80003ed8:	000c8513          	mv	a0,s9
    80003edc:	ffffe097          	auipc	ra,0xffffe
    80003ee0:	298080e7          	jalr	664(ra) # 80002174 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003ee4:	0019091b          	addiw	s2,s2,1
    80003ee8:	05395263          	bge	s2,s3,80003f2c <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80003eec:	00191493          	slli	s1,s2,0x1
    80003ef0:	012484b3          	add	s1,s1,s2
    80003ef4:	00349493          	slli	s1,s1,0x3
    80003ef8:	009b04b3          	add	s1,s6,s1
    80003efc:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80003f00:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80003f04:	00008797          	auipc	a5,0x8
    80003f08:	9ac7b783          	ld	a5,-1620(a5) # 8000b8b0 <_ZL10waitForAll>
    80003f0c:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80003f10:	02800513          	li	a0,40
    80003f14:	ffffe097          	auipc	ra,0xffffe
    80003f18:	154080e7          	jalr	340(ra) # 80002068 <_Znwm>
    80003f1c:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003f20:	ffffe097          	auipc	ra,0xffffe
    80003f24:	2d8080e7          	jalr	728(ra) # 800021f8 <_ZN6ThreadC1Ev>
    80003f28:	f95ff06f          	j	80003ebc <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80003f2c:	ffffe097          	auipc	ra,0xffffe
    80003f30:	278080e7          	jalr	632(ra) # 800021a4 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80003f34:	00000493          	li	s1,0
    80003f38:	0099ce63          	blt	s3,s1,80003f54 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80003f3c:	00008517          	auipc	a0,0x8
    80003f40:	97453503          	ld	a0,-1676(a0) # 8000b8b0 <_ZL10waitForAll>
    80003f44:	ffffe097          	auipc	ra,0xffffe
    80003f48:	318080e7          	jalr	792(ra) # 8000225c <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80003f4c:	0014849b          	addiw	s1,s1,1
    80003f50:	fe9ff06f          	j	80003f38 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80003f54:	00008517          	auipc	a0,0x8
    80003f58:	95c53503          	ld	a0,-1700(a0) # 8000b8b0 <_ZL10waitForAll>
    80003f5c:	00050863          	beqz	a0,80003f6c <_Z20testConsumerProducerv+0x2f4>
    80003f60:	00053783          	ld	a5,0(a0)
    80003f64:	0087b783          	ld	a5,8(a5)
    80003f68:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80003f6c:	00000493          	li	s1,0
    80003f70:	0080006f          	j	80003f78 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80003f74:	0014849b          	addiw	s1,s1,1
    80003f78:	0334d263          	bge	s1,s3,80003f9c <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80003f7c:	00349793          	slli	a5,s1,0x3
    80003f80:	00fa07b3          	add	a5,s4,a5
    80003f84:	0007b503          	ld	a0,0(a5)
    80003f88:	fe0506e3          	beqz	a0,80003f74 <_Z20testConsumerProducerv+0x2fc>
    80003f8c:	00053783          	ld	a5,0(a0)
    80003f90:	0087b783          	ld	a5,8(a5)
    80003f94:	000780e7          	jalr	a5
    80003f98:	fddff06f          	j	80003f74 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80003f9c:	000b8a63          	beqz	s7,80003fb0 <_Z20testConsumerProducerv+0x338>
    80003fa0:	000bb783          	ld	a5,0(s7)
    80003fa4:	0087b783          	ld	a5,8(a5)
    80003fa8:	000b8513          	mv	a0,s7
    80003fac:	000780e7          	jalr	a5
    delete buffer;
    80003fb0:	000a8e63          	beqz	s5,80003fcc <_Z20testConsumerProducerv+0x354>
    80003fb4:	000a8513          	mv	a0,s5
    80003fb8:	00002097          	auipc	ra,0x2
    80003fbc:	870080e7          	jalr	-1936(ra) # 80005828 <_ZN9BufferCPPD1Ev>
    80003fc0:	000a8513          	mv	a0,s5
    80003fc4:	ffffe097          	auipc	ra,0xffffe
    80003fc8:	0cc080e7          	jalr	204(ra) # 80002090 <_ZdlPv>
    80003fcc:	000c0113          	mv	sp,s8
}
    80003fd0:	f8040113          	addi	sp,s0,-128
    80003fd4:	07813083          	ld	ra,120(sp)
    80003fd8:	07013403          	ld	s0,112(sp)
    80003fdc:	06813483          	ld	s1,104(sp)
    80003fe0:	06013903          	ld	s2,96(sp)
    80003fe4:	05813983          	ld	s3,88(sp)
    80003fe8:	05013a03          	ld	s4,80(sp)
    80003fec:	04813a83          	ld	s5,72(sp)
    80003ff0:	04013b03          	ld	s6,64(sp)
    80003ff4:	03813b83          	ld	s7,56(sp)
    80003ff8:	03013c03          	ld	s8,48(sp)
    80003ffc:	02813c83          	ld	s9,40(sp)
    80004000:	08010113          	addi	sp,sp,128
    80004004:	00008067          	ret
    80004008:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    8000400c:	000a8513          	mv	a0,s5
    80004010:	ffffe097          	auipc	ra,0xffffe
    80004014:	080080e7          	jalr	128(ra) # 80002090 <_ZdlPv>
    80004018:	00048513          	mv	a0,s1
    8000401c:	00009097          	auipc	ra,0x9
    80004020:	98c080e7          	jalr	-1652(ra) # 8000c9a8 <_Unwind_Resume>
    80004024:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80004028:	00090513          	mv	a0,s2
    8000402c:	ffffe097          	auipc	ra,0xffffe
    80004030:	064080e7          	jalr	100(ra) # 80002090 <_ZdlPv>
    80004034:	00048513          	mv	a0,s1
    80004038:	00009097          	auipc	ra,0x9
    8000403c:	970080e7          	jalr	-1680(ra) # 8000c9a8 <_Unwind_Resume>
    80004040:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004044:	000b8513          	mv	a0,s7
    80004048:	ffffe097          	auipc	ra,0xffffe
    8000404c:	048080e7          	jalr	72(ra) # 80002090 <_ZdlPv>
    80004050:	00048513          	mv	a0,s1
    80004054:	00009097          	auipc	ra,0x9
    80004058:	954080e7          	jalr	-1708(ra) # 8000c9a8 <_Unwind_Resume>
    8000405c:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004060:	00048513          	mv	a0,s1
    80004064:	ffffe097          	auipc	ra,0xffffe
    80004068:	02c080e7          	jalr	44(ra) # 80002090 <_ZdlPv>
    8000406c:	00090513          	mv	a0,s2
    80004070:	00009097          	auipc	ra,0x9
    80004074:	938080e7          	jalr	-1736(ra) # 8000c9a8 <_Unwind_Resume>
    80004078:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    8000407c:	000c8513          	mv	a0,s9
    80004080:	ffffe097          	auipc	ra,0xffffe
    80004084:	010080e7          	jalr	16(ra) # 80002090 <_ZdlPv>
    80004088:	00048513          	mv	a0,s1
    8000408c:	00009097          	auipc	ra,0x9
    80004090:	91c080e7          	jalr	-1764(ra) # 8000c9a8 <_Unwind_Resume>

0000000080004094 <_ZN8Consumer3runEv>:
    void run() override {
    80004094:	fd010113          	addi	sp,sp,-48
    80004098:	02113423          	sd	ra,40(sp)
    8000409c:	02813023          	sd	s0,32(sp)
    800040a0:	00913c23          	sd	s1,24(sp)
    800040a4:	01213823          	sd	s2,16(sp)
    800040a8:	01313423          	sd	s3,8(sp)
    800040ac:	03010413          	addi	s0,sp,48
    800040b0:	00050913          	mv	s2,a0
        int i = 0;
    800040b4:	00000993          	li	s3,0
    800040b8:	0100006f          	j	800040c8 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    800040bc:	00a00513          	li	a0,10
    800040c0:	ffffe097          	auipc	ra,0xffffe
    800040c4:	2c4080e7          	jalr	708(ra) # 80002384 <_ZN7Console4putcEc>
        while (!threadEnd) {
    800040c8:	00007797          	auipc	a5,0x7
    800040cc:	7e07a783          	lw	a5,2016(a5) # 8000b8a8 <_ZL9threadEnd>
    800040d0:	04079a63          	bnez	a5,80004124 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    800040d4:	02093783          	ld	a5,32(s2)
    800040d8:	0087b503          	ld	a0,8(a5)
    800040dc:	00001097          	auipc	ra,0x1
    800040e0:	638080e7          	jalr	1592(ra) # 80005714 <_ZN9BufferCPP3getEv>
            i++;
    800040e4:	0019849b          	addiw	s1,s3,1
    800040e8:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    800040ec:	0ff57513          	andi	a0,a0,255
    800040f0:	ffffe097          	auipc	ra,0xffffe
    800040f4:	294080e7          	jalr	660(ra) # 80002384 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    800040f8:	05000793          	li	a5,80
    800040fc:	02f4e4bb          	remw	s1,s1,a5
    80004100:	fc0494e3          	bnez	s1,800040c8 <_ZN8Consumer3runEv+0x34>
    80004104:	fb9ff06f          	j	800040bc <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80004108:	02093783          	ld	a5,32(s2)
    8000410c:	0087b503          	ld	a0,8(a5)
    80004110:	00001097          	auipc	ra,0x1
    80004114:	604080e7          	jalr	1540(ra) # 80005714 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80004118:	0ff57513          	andi	a0,a0,255
    8000411c:	ffffe097          	auipc	ra,0xffffe
    80004120:	268080e7          	jalr	616(ra) # 80002384 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80004124:	02093783          	ld	a5,32(s2)
    80004128:	0087b503          	ld	a0,8(a5)
    8000412c:	00001097          	auipc	ra,0x1
    80004130:	674080e7          	jalr	1652(ra) # 800057a0 <_ZN9BufferCPP6getCntEv>
    80004134:	fca04ae3          	bgtz	a0,80004108 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004138:	02093783          	ld	a5,32(s2)
    8000413c:	0107b503          	ld	a0,16(a5)
    80004140:	ffffe097          	auipc	ra,0xffffe
    80004144:	154080e7          	jalr	340(ra) # 80002294 <_ZN9Semaphore6signalEv>
    }
    80004148:	02813083          	ld	ra,40(sp)
    8000414c:	02013403          	ld	s0,32(sp)
    80004150:	01813483          	ld	s1,24(sp)
    80004154:	01013903          	ld	s2,16(sp)
    80004158:	00813983          	ld	s3,8(sp)
    8000415c:	03010113          	addi	sp,sp,48
    80004160:	00008067          	ret

0000000080004164 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004164:	ff010113          	addi	sp,sp,-16
    80004168:	00113423          	sd	ra,8(sp)
    8000416c:	00813023          	sd	s0,0(sp)
    80004170:	01010413          	addi	s0,sp,16
    80004174:	00007797          	auipc	a5,0x7
    80004178:	59c78793          	addi	a5,a5,1436 # 8000b710 <_ZTV8Consumer+0x10>
    8000417c:	00f53023          	sd	a5,0(a0)
    80004180:	ffffe097          	auipc	ra,0xffffe
    80004184:	e50080e7          	jalr	-432(ra) # 80001fd0 <_ZN6ThreadD1Ev>
    80004188:	00813083          	ld	ra,8(sp)
    8000418c:	00013403          	ld	s0,0(sp)
    80004190:	01010113          	addi	sp,sp,16
    80004194:	00008067          	ret

0000000080004198 <_ZN8ConsumerD0Ev>:
    80004198:	fe010113          	addi	sp,sp,-32
    8000419c:	00113c23          	sd	ra,24(sp)
    800041a0:	00813823          	sd	s0,16(sp)
    800041a4:	00913423          	sd	s1,8(sp)
    800041a8:	02010413          	addi	s0,sp,32
    800041ac:	00050493          	mv	s1,a0
    800041b0:	00007797          	auipc	a5,0x7
    800041b4:	56078793          	addi	a5,a5,1376 # 8000b710 <_ZTV8Consumer+0x10>
    800041b8:	00f53023          	sd	a5,0(a0)
    800041bc:	ffffe097          	auipc	ra,0xffffe
    800041c0:	e14080e7          	jalr	-492(ra) # 80001fd0 <_ZN6ThreadD1Ev>
    800041c4:	00048513          	mv	a0,s1
    800041c8:	ffffe097          	auipc	ra,0xffffe
    800041cc:	ec8080e7          	jalr	-312(ra) # 80002090 <_ZdlPv>
    800041d0:	01813083          	ld	ra,24(sp)
    800041d4:	01013403          	ld	s0,16(sp)
    800041d8:	00813483          	ld	s1,8(sp)
    800041dc:	02010113          	addi	sp,sp,32
    800041e0:	00008067          	ret

00000000800041e4 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    800041e4:	ff010113          	addi	sp,sp,-16
    800041e8:	00113423          	sd	ra,8(sp)
    800041ec:	00813023          	sd	s0,0(sp)
    800041f0:	01010413          	addi	s0,sp,16
    800041f4:	00007797          	auipc	a5,0x7
    800041f8:	4cc78793          	addi	a5,a5,1228 # 8000b6c0 <_ZTV16ProducerKeyborad+0x10>
    800041fc:	00f53023          	sd	a5,0(a0)
    80004200:	ffffe097          	auipc	ra,0xffffe
    80004204:	dd0080e7          	jalr	-560(ra) # 80001fd0 <_ZN6ThreadD1Ev>
    80004208:	00813083          	ld	ra,8(sp)
    8000420c:	00013403          	ld	s0,0(sp)
    80004210:	01010113          	addi	sp,sp,16
    80004214:	00008067          	ret

0000000080004218 <_ZN16ProducerKeyboradD0Ev>:
    80004218:	fe010113          	addi	sp,sp,-32
    8000421c:	00113c23          	sd	ra,24(sp)
    80004220:	00813823          	sd	s0,16(sp)
    80004224:	00913423          	sd	s1,8(sp)
    80004228:	02010413          	addi	s0,sp,32
    8000422c:	00050493          	mv	s1,a0
    80004230:	00007797          	auipc	a5,0x7
    80004234:	49078793          	addi	a5,a5,1168 # 8000b6c0 <_ZTV16ProducerKeyborad+0x10>
    80004238:	00f53023          	sd	a5,0(a0)
    8000423c:	ffffe097          	auipc	ra,0xffffe
    80004240:	d94080e7          	jalr	-620(ra) # 80001fd0 <_ZN6ThreadD1Ev>
    80004244:	00048513          	mv	a0,s1
    80004248:	ffffe097          	auipc	ra,0xffffe
    8000424c:	e48080e7          	jalr	-440(ra) # 80002090 <_ZdlPv>
    80004250:	01813083          	ld	ra,24(sp)
    80004254:	01013403          	ld	s0,16(sp)
    80004258:	00813483          	ld	s1,8(sp)
    8000425c:	02010113          	addi	sp,sp,32
    80004260:	00008067          	ret

0000000080004264 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004264:	ff010113          	addi	sp,sp,-16
    80004268:	00113423          	sd	ra,8(sp)
    8000426c:	00813023          	sd	s0,0(sp)
    80004270:	01010413          	addi	s0,sp,16
    80004274:	00007797          	auipc	a5,0x7
    80004278:	47478793          	addi	a5,a5,1140 # 8000b6e8 <_ZTV8Producer+0x10>
    8000427c:	00f53023          	sd	a5,0(a0)
    80004280:	ffffe097          	auipc	ra,0xffffe
    80004284:	d50080e7          	jalr	-688(ra) # 80001fd0 <_ZN6ThreadD1Ev>
    80004288:	00813083          	ld	ra,8(sp)
    8000428c:	00013403          	ld	s0,0(sp)
    80004290:	01010113          	addi	sp,sp,16
    80004294:	00008067          	ret

0000000080004298 <_ZN8ProducerD0Ev>:
    80004298:	fe010113          	addi	sp,sp,-32
    8000429c:	00113c23          	sd	ra,24(sp)
    800042a0:	00813823          	sd	s0,16(sp)
    800042a4:	00913423          	sd	s1,8(sp)
    800042a8:	02010413          	addi	s0,sp,32
    800042ac:	00050493          	mv	s1,a0
    800042b0:	00007797          	auipc	a5,0x7
    800042b4:	43878793          	addi	a5,a5,1080 # 8000b6e8 <_ZTV8Producer+0x10>
    800042b8:	00f53023          	sd	a5,0(a0)
    800042bc:	ffffe097          	auipc	ra,0xffffe
    800042c0:	d14080e7          	jalr	-748(ra) # 80001fd0 <_ZN6ThreadD1Ev>
    800042c4:	00048513          	mv	a0,s1
    800042c8:	ffffe097          	auipc	ra,0xffffe
    800042cc:	dc8080e7          	jalr	-568(ra) # 80002090 <_ZdlPv>
    800042d0:	01813083          	ld	ra,24(sp)
    800042d4:	01013403          	ld	s0,16(sp)
    800042d8:	00813483          	ld	s1,8(sp)
    800042dc:	02010113          	addi	sp,sp,32
    800042e0:	00008067          	ret

00000000800042e4 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    800042e4:	fe010113          	addi	sp,sp,-32
    800042e8:	00113c23          	sd	ra,24(sp)
    800042ec:	00813823          	sd	s0,16(sp)
    800042f0:	00913423          	sd	s1,8(sp)
    800042f4:	02010413          	addi	s0,sp,32
    800042f8:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    800042fc:	ffffd097          	auipc	ra,0xffffd
    80004300:	1c8080e7          	jalr	456(ra) # 800014c4 <_Z4getcv>
    80004304:	0005059b          	sext.w	a1,a0
    80004308:	01b00793          	li	a5,27
    8000430c:	00f58c63          	beq	a1,a5,80004324 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80004310:	0204b783          	ld	a5,32(s1)
    80004314:	0087b503          	ld	a0,8(a5)
    80004318:	00001097          	auipc	ra,0x1
    8000431c:	36c080e7          	jalr	876(ra) # 80005684 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80004320:	fddff06f          	j	800042fc <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004324:	00100793          	li	a5,1
    80004328:	00007717          	auipc	a4,0x7
    8000432c:	58f72023          	sw	a5,1408(a4) # 8000b8a8 <_ZL9threadEnd>
        td->buffer->put('!');
    80004330:	0204b783          	ld	a5,32(s1)
    80004334:	02100593          	li	a1,33
    80004338:	0087b503          	ld	a0,8(a5)
    8000433c:	00001097          	auipc	ra,0x1
    80004340:	348080e7          	jalr	840(ra) # 80005684 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004344:	0204b783          	ld	a5,32(s1)
    80004348:	0107b503          	ld	a0,16(a5)
    8000434c:	ffffe097          	auipc	ra,0xffffe
    80004350:	f48080e7          	jalr	-184(ra) # 80002294 <_ZN9Semaphore6signalEv>
    }
    80004354:	01813083          	ld	ra,24(sp)
    80004358:	01013403          	ld	s0,16(sp)
    8000435c:	00813483          	ld	s1,8(sp)
    80004360:	02010113          	addi	sp,sp,32
    80004364:	00008067          	ret

0000000080004368 <_ZN8Producer3runEv>:
    void run() override {
    80004368:	fe010113          	addi	sp,sp,-32
    8000436c:	00113c23          	sd	ra,24(sp)
    80004370:	00813823          	sd	s0,16(sp)
    80004374:	00913423          	sd	s1,8(sp)
    80004378:	01213023          	sd	s2,0(sp)
    8000437c:	02010413          	addi	s0,sp,32
    80004380:	00050493          	mv	s1,a0
        int i = 0;
    80004384:	00000913          	li	s2,0
        while (!threadEnd) {
    80004388:	00007797          	auipc	a5,0x7
    8000438c:	5207a783          	lw	a5,1312(a5) # 8000b8a8 <_ZL9threadEnd>
    80004390:	04079263          	bnez	a5,800043d4 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004394:	0204b783          	ld	a5,32(s1)
    80004398:	0007a583          	lw	a1,0(a5)
    8000439c:	0305859b          	addiw	a1,a1,48
    800043a0:	0087b503          	ld	a0,8(a5)
    800043a4:	00001097          	auipc	ra,0x1
    800043a8:	2e0080e7          	jalr	736(ra) # 80005684 <_ZN9BufferCPP3putEi>
            i++;
    800043ac:	0019071b          	addiw	a4,s2,1
    800043b0:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    800043b4:	0204b783          	ld	a5,32(s1)
    800043b8:	0007a783          	lw	a5,0(a5)
    800043bc:	00e787bb          	addw	a5,a5,a4
    800043c0:	00500513          	li	a0,5
    800043c4:	02a7e53b          	remw	a0,a5,a0
    800043c8:	ffffe097          	auipc	ra,0xffffe
    800043cc:	e04080e7          	jalr	-508(ra) # 800021cc <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    800043d0:	fb9ff06f          	j	80004388 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    800043d4:	0204b783          	ld	a5,32(s1)
    800043d8:	0107b503          	ld	a0,16(a5)
    800043dc:	ffffe097          	auipc	ra,0xffffe
    800043e0:	eb8080e7          	jalr	-328(ra) # 80002294 <_ZN9Semaphore6signalEv>
    }
    800043e4:	01813083          	ld	ra,24(sp)
    800043e8:	01013403          	ld	s0,16(sp)
    800043ec:	00813483          	ld	s1,8(sp)
    800043f0:	00013903          	ld	s2,0(sp)
    800043f4:	02010113          	addi	sp,sp,32
    800043f8:	00008067          	ret

00000000800043fc <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800043fc:	fe010113          	addi	sp,sp,-32
    80004400:	00113c23          	sd	ra,24(sp)
    80004404:	00813823          	sd	s0,16(sp)
    80004408:	00913423          	sd	s1,8(sp)
    8000440c:	01213023          	sd	s2,0(sp)
    80004410:	02010413          	addi	s0,sp,32
    80004414:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004418:	00100793          	li	a5,1
    8000441c:	02a7f863          	bgeu	a5,a0,8000444c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004420:	00a00793          	li	a5,10
    80004424:	02f577b3          	remu	a5,a0,a5
    80004428:	02078e63          	beqz	a5,80004464 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    8000442c:	fff48513          	addi	a0,s1,-1
    80004430:	00000097          	auipc	ra,0x0
    80004434:	fcc080e7          	jalr	-52(ra) # 800043fc <_ZL9fibonaccim>
    80004438:	00050913          	mv	s2,a0
    8000443c:	ffe48513          	addi	a0,s1,-2
    80004440:	00000097          	auipc	ra,0x0
    80004444:	fbc080e7          	jalr	-68(ra) # 800043fc <_ZL9fibonaccim>
    80004448:	00a90533          	add	a0,s2,a0
}
    8000444c:	01813083          	ld	ra,24(sp)
    80004450:	01013403          	ld	s0,16(sp)
    80004454:	00813483          	ld	s1,8(sp)
    80004458:	00013903          	ld	s2,0(sp)
    8000445c:	02010113          	addi	sp,sp,32
    80004460:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004464:	ffffd097          	auipc	ra,0xffffd
    80004468:	f60080e7          	jalr	-160(ra) # 800013c4 <_Z15thread_dispatchv>
    8000446c:	fc1ff06f          	j	8000442c <_ZL9fibonaccim+0x30>

0000000080004470 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004470:	fe010113          	addi	sp,sp,-32
    80004474:	00113c23          	sd	ra,24(sp)
    80004478:	00813823          	sd	s0,16(sp)
    8000447c:	00913423          	sd	s1,8(sp)
    80004480:	01213023          	sd	s2,0(sp)
    80004484:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004488:	00a00493          	li	s1,10
    8000448c:	0400006f          	j	800044cc <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004490:	00005517          	auipc	a0,0x5
    80004494:	d2850513          	addi	a0,a0,-728 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80004498:	00001097          	auipc	ra,0x1
    8000449c:	dc8080e7          	jalr	-568(ra) # 80005260 <_Z11printStringPKc>
    800044a0:	00000613          	li	a2,0
    800044a4:	00a00593          	li	a1,10
    800044a8:	00048513          	mv	a0,s1
    800044ac:	00001097          	auipc	ra,0x1
    800044b0:	f64080e7          	jalr	-156(ra) # 80005410 <_Z8printIntiii>
    800044b4:	00005517          	auipc	a0,0x5
    800044b8:	bf450513          	addi	a0,a0,-1036 # 800090a8 <CONSOLE_STATUS+0x98>
    800044bc:	00001097          	auipc	ra,0x1
    800044c0:	da4080e7          	jalr	-604(ra) # 80005260 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800044c4:	0014849b          	addiw	s1,s1,1
    800044c8:	0ff4f493          	andi	s1,s1,255
    800044cc:	00c00793          	li	a5,12
    800044d0:	fc97f0e3          	bgeu	a5,s1,80004490 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800044d4:	00005517          	auipc	a0,0x5
    800044d8:	cec50513          	addi	a0,a0,-788 # 800091c0 <CONSOLE_STATUS+0x1b0>
    800044dc:	00001097          	auipc	ra,0x1
    800044e0:	d84080e7          	jalr	-636(ra) # 80005260 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800044e4:	00500313          	li	t1,5
    thread_dispatch();
    800044e8:	ffffd097          	auipc	ra,0xffffd
    800044ec:	edc080e7          	jalr	-292(ra) # 800013c4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800044f0:	01000513          	li	a0,16
    800044f4:	00000097          	auipc	ra,0x0
    800044f8:	f08080e7          	jalr	-248(ra) # 800043fc <_ZL9fibonaccim>
    800044fc:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004500:	00005517          	auipc	a0,0x5
    80004504:	cd050513          	addi	a0,a0,-816 # 800091d0 <CONSOLE_STATUS+0x1c0>
    80004508:	00001097          	auipc	ra,0x1
    8000450c:	d58080e7          	jalr	-680(ra) # 80005260 <_Z11printStringPKc>
    80004510:	00000613          	li	a2,0
    80004514:	00a00593          	li	a1,10
    80004518:	0009051b          	sext.w	a0,s2
    8000451c:	00001097          	auipc	ra,0x1
    80004520:	ef4080e7          	jalr	-268(ra) # 80005410 <_Z8printIntiii>
    80004524:	00005517          	auipc	a0,0x5
    80004528:	b8450513          	addi	a0,a0,-1148 # 800090a8 <CONSOLE_STATUS+0x98>
    8000452c:	00001097          	auipc	ra,0x1
    80004530:	d34080e7          	jalr	-716(ra) # 80005260 <_Z11printStringPKc>
    80004534:	0400006f          	j	80004574 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004538:	00005517          	auipc	a0,0x5
    8000453c:	c8050513          	addi	a0,a0,-896 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80004540:	00001097          	auipc	ra,0x1
    80004544:	d20080e7          	jalr	-736(ra) # 80005260 <_Z11printStringPKc>
    80004548:	00000613          	li	a2,0
    8000454c:	00a00593          	li	a1,10
    80004550:	00048513          	mv	a0,s1
    80004554:	00001097          	auipc	ra,0x1
    80004558:	ebc080e7          	jalr	-324(ra) # 80005410 <_Z8printIntiii>
    8000455c:	00005517          	auipc	a0,0x5
    80004560:	b4c50513          	addi	a0,a0,-1204 # 800090a8 <CONSOLE_STATUS+0x98>
    80004564:	00001097          	auipc	ra,0x1
    80004568:	cfc080e7          	jalr	-772(ra) # 80005260 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000456c:	0014849b          	addiw	s1,s1,1
    80004570:	0ff4f493          	andi	s1,s1,255
    80004574:	00f00793          	li	a5,15
    80004578:	fc97f0e3          	bgeu	a5,s1,80004538 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    8000457c:	00005517          	auipc	a0,0x5
    80004580:	c6450513          	addi	a0,a0,-924 # 800091e0 <CONSOLE_STATUS+0x1d0>
    80004584:	00001097          	auipc	ra,0x1
    80004588:	cdc080e7          	jalr	-804(ra) # 80005260 <_Z11printStringPKc>
    finishedD = true;
    8000458c:	00100793          	li	a5,1
    80004590:	00007717          	auipc	a4,0x7
    80004594:	32f70423          	sb	a5,808(a4) # 8000b8b8 <_ZL9finishedD>
    thread_dispatch();
    80004598:	ffffd097          	auipc	ra,0xffffd
    8000459c:	e2c080e7          	jalr	-468(ra) # 800013c4 <_Z15thread_dispatchv>
}
    800045a0:	01813083          	ld	ra,24(sp)
    800045a4:	01013403          	ld	s0,16(sp)
    800045a8:	00813483          	ld	s1,8(sp)
    800045ac:	00013903          	ld	s2,0(sp)
    800045b0:	02010113          	addi	sp,sp,32
    800045b4:	00008067          	ret

00000000800045b8 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800045b8:	fe010113          	addi	sp,sp,-32
    800045bc:	00113c23          	sd	ra,24(sp)
    800045c0:	00813823          	sd	s0,16(sp)
    800045c4:	00913423          	sd	s1,8(sp)
    800045c8:	01213023          	sd	s2,0(sp)
    800045cc:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800045d0:	00000493          	li	s1,0
    800045d4:	0400006f          	j	80004614 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800045d8:	00005517          	auipc	a0,0x5
    800045dc:	bb050513          	addi	a0,a0,-1104 # 80009188 <CONSOLE_STATUS+0x178>
    800045e0:	00001097          	auipc	ra,0x1
    800045e4:	c80080e7          	jalr	-896(ra) # 80005260 <_Z11printStringPKc>
    800045e8:	00000613          	li	a2,0
    800045ec:	00a00593          	li	a1,10
    800045f0:	00048513          	mv	a0,s1
    800045f4:	00001097          	auipc	ra,0x1
    800045f8:	e1c080e7          	jalr	-484(ra) # 80005410 <_Z8printIntiii>
    800045fc:	00005517          	auipc	a0,0x5
    80004600:	aac50513          	addi	a0,a0,-1364 # 800090a8 <CONSOLE_STATUS+0x98>
    80004604:	00001097          	auipc	ra,0x1
    80004608:	c5c080e7          	jalr	-932(ra) # 80005260 <_Z11printStringPKc>
    for (; i < 3; i++) {
    8000460c:	0014849b          	addiw	s1,s1,1
    80004610:	0ff4f493          	andi	s1,s1,255
    80004614:	00200793          	li	a5,2
    80004618:	fc97f0e3          	bgeu	a5,s1,800045d8 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    8000461c:	00005517          	auipc	a0,0x5
    80004620:	b7450513          	addi	a0,a0,-1164 # 80009190 <CONSOLE_STATUS+0x180>
    80004624:	00001097          	auipc	ra,0x1
    80004628:	c3c080e7          	jalr	-964(ra) # 80005260 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000462c:	00700313          	li	t1,7
    thread_dispatch();
    80004630:	ffffd097          	auipc	ra,0xffffd
    80004634:	d94080e7          	jalr	-620(ra) # 800013c4 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004638:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    8000463c:	00005517          	auipc	a0,0x5
    80004640:	b6450513          	addi	a0,a0,-1180 # 800091a0 <CONSOLE_STATUS+0x190>
    80004644:	00001097          	auipc	ra,0x1
    80004648:	c1c080e7          	jalr	-996(ra) # 80005260 <_Z11printStringPKc>
    8000464c:	00000613          	li	a2,0
    80004650:	00a00593          	li	a1,10
    80004654:	0009051b          	sext.w	a0,s2
    80004658:	00001097          	auipc	ra,0x1
    8000465c:	db8080e7          	jalr	-584(ra) # 80005410 <_Z8printIntiii>
    80004660:	00005517          	auipc	a0,0x5
    80004664:	a4850513          	addi	a0,a0,-1464 # 800090a8 <CONSOLE_STATUS+0x98>
    80004668:	00001097          	auipc	ra,0x1
    8000466c:	bf8080e7          	jalr	-1032(ra) # 80005260 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004670:	00c00513          	li	a0,12
    80004674:	00000097          	auipc	ra,0x0
    80004678:	d88080e7          	jalr	-632(ra) # 800043fc <_ZL9fibonaccim>
    8000467c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004680:	00005517          	auipc	a0,0x5
    80004684:	b2850513          	addi	a0,a0,-1240 # 800091a8 <CONSOLE_STATUS+0x198>
    80004688:	00001097          	auipc	ra,0x1
    8000468c:	bd8080e7          	jalr	-1064(ra) # 80005260 <_Z11printStringPKc>
    80004690:	00000613          	li	a2,0
    80004694:	00a00593          	li	a1,10
    80004698:	0009051b          	sext.w	a0,s2
    8000469c:	00001097          	auipc	ra,0x1
    800046a0:	d74080e7          	jalr	-652(ra) # 80005410 <_Z8printIntiii>
    800046a4:	00005517          	auipc	a0,0x5
    800046a8:	a0450513          	addi	a0,a0,-1532 # 800090a8 <CONSOLE_STATUS+0x98>
    800046ac:	00001097          	auipc	ra,0x1
    800046b0:	bb4080e7          	jalr	-1100(ra) # 80005260 <_Z11printStringPKc>
    800046b4:	0400006f          	j	800046f4 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800046b8:	00005517          	auipc	a0,0x5
    800046bc:	ad050513          	addi	a0,a0,-1328 # 80009188 <CONSOLE_STATUS+0x178>
    800046c0:	00001097          	auipc	ra,0x1
    800046c4:	ba0080e7          	jalr	-1120(ra) # 80005260 <_Z11printStringPKc>
    800046c8:	00000613          	li	a2,0
    800046cc:	00a00593          	li	a1,10
    800046d0:	00048513          	mv	a0,s1
    800046d4:	00001097          	auipc	ra,0x1
    800046d8:	d3c080e7          	jalr	-708(ra) # 80005410 <_Z8printIntiii>
    800046dc:	00005517          	auipc	a0,0x5
    800046e0:	9cc50513          	addi	a0,a0,-1588 # 800090a8 <CONSOLE_STATUS+0x98>
    800046e4:	00001097          	auipc	ra,0x1
    800046e8:	b7c080e7          	jalr	-1156(ra) # 80005260 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800046ec:	0014849b          	addiw	s1,s1,1
    800046f0:	0ff4f493          	andi	s1,s1,255
    800046f4:	00500793          	li	a5,5
    800046f8:	fc97f0e3          	bgeu	a5,s1,800046b8 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800046fc:	00005517          	auipc	a0,0x5
    80004700:	a6450513          	addi	a0,a0,-1436 # 80009160 <CONSOLE_STATUS+0x150>
    80004704:	00001097          	auipc	ra,0x1
    80004708:	b5c080e7          	jalr	-1188(ra) # 80005260 <_Z11printStringPKc>
    finishedC = true;
    8000470c:	00100793          	li	a5,1
    80004710:	00007717          	auipc	a4,0x7
    80004714:	1af704a3          	sb	a5,425(a4) # 8000b8b9 <_ZL9finishedC>
    thread_dispatch();
    80004718:	ffffd097          	auipc	ra,0xffffd
    8000471c:	cac080e7          	jalr	-852(ra) # 800013c4 <_Z15thread_dispatchv>
}
    80004720:	01813083          	ld	ra,24(sp)
    80004724:	01013403          	ld	s0,16(sp)
    80004728:	00813483          	ld	s1,8(sp)
    8000472c:	00013903          	ld	s2,0(sp)
    80004730:	02010113          	addi	sp,sp,32
    80004734:	00008067          	ret

0000000080004738 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004738:	fe010113          	addi	sp,sp,-32
    8000473c:	00113c23          	sd	ra,24(sp)
    80004740:	00813823          	sd	s0,16(sp)
    80004744:	00913423          	sd	s1,8(sp)
    80004748:	01213023          	sd	s2,0(sp)
    8000474c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004750:	00000913          	li	s2,0
    80004754:	0380006f          	j	8000478c <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004758:	ffffd097          	auipc	ra,0xffffd
    8000475c:	c6c080e7          	jalr	-916(ra) # 800013c4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004760:	00148493          	addi	s1,s1,1
    80004764:	000027b7          	lui	a5,0x2
    80004768:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000476c:	0097ee63          	bltu	a5,s1,80004788 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004770:	00000713          	li	a4,0
    80004774:	000077b7          	lui	a5,0x7
    80004778:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000477c:	fce7eee3          	bltu	a5,a4,80004758 <_ZL11workerBodyBPv+0x20>
    80004780:	00170713          	addi	a4,a4,1
    80004784:	ff1ff06f          	j	80004774 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004788:	00190913          	addi	s2,s2,1
    8000478c:	00f00793          	li	a5,15
    80004790:	0527e063          	bltu	a5,s2,800047d0 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004794:	00005517          	auipc	a0,0x5
    80004798:	9dc50513          	addi	a0,a0,-1572 # 80009170 <CONSOLE_STATUS+0x160>
    8000479c:	00001097          	auipc	ra,0x1
    800047a0:	ac4080e7          	jalr	-1340(ra) # 80005260 <_Z11printStringPKc>
    800047a4:	00000613          	li	a2,0
    800047a8:	00a00593          	li	a1,10
    800047ac:	0009051b          	sext.w	a0,s2
    800047b0:	00001097          	auipc	ra,0x1
    800047b4:	c60080e7          	jalr	-928(ra) # 80005410 <_Z8printIntiii>
    800047b8:	00005517          	auipc	a0,0x5
    800047bc:	8f050513          	addi	a0,a0,-1808 # 800090a8 <CONSOLE_STATUS+0x98>
    800047c0:	00001097          	auipc	ra,0x1
    800047c4:	aa0080e7          	jalr	-1376(ra) # 80005260 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800047c8:	00000493          	li	s1,0
    800047cc:	f99ff06f          	j	80004764 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    800047d0:	00005517          	auipc	a0,0x5
    800047d4:	9a850513          	addi	a0,a0,-1624 # 80009178 <CONSOLE_STATUS+0x168>
    800047d8:	00001097          	auipc	ra,0x1
    800047dc:	a88080e7          	jalr	-1400(ra) # 80005260 <_Z11printStringPKc>
    finishedB = true;
    800047e0:	00100793          	li	a5,1
    800047e4:	00007717          	auipc	a4,0x7
    800047e8:	0cf70b23          	sb	a5,214(a4) # 8000b8ba <_ZL9finishedB>
    thread_dispatch();
    800047ec:	ffffd097          	auipc	ra,0xffffd
    800047f0:	bd8080e7          	jalr	-1064(ra) # 800013c4 <_Z15thread_dispatchv>
}
    800047f4:	01813083          	ld	ra,24(sp)
    800047f8:	01013403          	ld	s0,16(sp)
    800047fc:	00813483          	ld	s1,8(sp)
    80004800:	00013903          	ld	s2,0(sp)
    80004804:	02010113          	addi	sp,sp,32
    80004808:	00008067          	ret

000000008000480c <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    8000480c:	fe010113          	addi	sp,sp,-32
    80004810:	00113c23          	sd	ra,24(sp)
    80004814:	00813823          	sd	s0,16(sp)
    80004818:	00913423          	sd	s1,8(sp)
    8000481c:	01213023          	sd	s2,0(sp)
    80004820:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004824:	00000913          	li	s2,0
    80004828:	0380006f          	j	80004860 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    8000482c:	ffffd097          	auipc	ra,0xffffd
    80004830:	b98080e7          	jalr	-1128(ra) # 800013c4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004834:	00148493          	addi	s1,s1,1
    80004838:	000027b7          	lui	a5,0x2
    8000483c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004840:	0097ee63          	bltu	a5,s1,8000485c <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004844:	00000713          	li	a4,0
    80004848:	000077b7          	lui	a5,0x7
    8000484c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004850:	fce7eee3          	bltu	a5,a4,8000482c <_ZL11workerBodyAPv+0x20>
    80004854:	00170713          	addi	a4,a4,1
    80004858:	ff1ff06f          	j	80004848 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000485c:	00190913          	addi	s2,s2,1
    80004860:	00900793          	li	a5,9
    80004864:	0527e063          	bltu	a5,s2,800048a4 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004868:	00005517          	auipc	a0,0x5
    8000486c:	8f050513          	addi	a0,a0,-1808 # 80009158 <CONSOLE_STATUS+0x148>
    80004870:	00001097          	auipc	ra,0x1
    80004874:	9f0080e7          	jalr	-1552(ra) # 80005260 <_Z11printStringPKc>
    80004878:	00000613          	li	a2,0
    8000487c:	00a00593          	li	a1,10
    80004880:	0009051b          	sext.w	a0,s2
    80004884:	00001097          	auipc	ra,0x1
    80004888:	b8c080e7          	jalr	-1140(ra) # 80005410 <_Z8printIntiii>
    8000488c:	00005517          	auipc	a0,0x5
    80004890:	81c50513          	addi	a0,a0,-2020 # 800090a8 <CONSOLE_STATUS+0x98>
    80004894:	00001097          	auipc	ra,0x1
    80004898:	9cc080e7          	jalr	-1588(ra) # 80005260 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000489c:	00000493          	li	s1,0
    800048a0:	f99ff06f          	j	80004838 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800048a4:	00005517          	auipc	a0,0x5
    800048a8:	8bc50513          	addi	a0,a0,-1860 # 80009160 <CONSOLE_STATUS+0x150>
    800048ac:	00001097          	auipc	ra,0x1
    800048b0:	9b4080e7          	jalr	-1612(ra) # 80005260 <_Z11printStringPKc>
    finishedA = true;
    800048b4:	00100793          	li	a5,1
    800048b8:	00007717          	auipc	a4,0x7
    800048bc:	00f701a3          	sb	a5,3(a4) # 8000b8bb <_ZL9finishedA>
}
    800048c0:	01813083          	ld	ra,24(sp)
    800048c4:	01013403          	ld	s0,16(sp)
    800048c8:	00813483          	ld	s1,8(sp)
    800048cc:	00013903          	ld	s2,0(sp)
    800048d0:	02010113          	addi	sp,sp,32
    800048d4:	00008067          	ret

00000000800048d8 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    800048d8:	fd010113          	addi	sp,sp,-48
    800048dc:	02113423          	sd	ra,40(sp)
    800048e0:	02813023          	sd	s0,32(sp)
    800048e4:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800048e8:	00000613          	li	a2,0
    800048ec:	00000597          	auipc	a1,0x0
    800048f0:	f2058593          	addi	a1,a1,-224 # 8000480c <_ZL11workerBodyAPv>
    800048f4:	fd040513          	addi	a0,s0,-48
    800048f8:	ffffd097          	auipc	ra,0xffffd
    800048fc:	9f8080e7          	jalr	-1544(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80004900:	00005517          	auipc	a0,0x5
    80004904:	8f050513          	addi	a0,a0,-1808 # 800091f0 <CONSOLE_STATUS+0x1e0>
    80004908:	00001097          	auipc	ra,0x1
    8000490c:	958080e7          	jalr	-1704(ra) # 80005260 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004910:	00000613          	li	a2,0
    80004914:	00000597          	auipc	a1,0x0
    80004918:	e2458593          	addi	a1,a1,-476 # 80004738 <_ZL11workerBodyBPv>
    8000491c:	fd840513          	addi	a0,s0,-40
    80004920:	ffffd097          	auipc	ra,0xffffd
    80004924:	9d0080e7          	jalr	-1584(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80004928:	00005517          	auipc	a0,0x5
    8000492c:	8e050513          	addi	a0,a0,-1824 # 80009208 <CONSOLE_STATUS+0x1f8>
    80004930:	00001097          	auipc	ra,0x1
    80004934:	930080e7          	jalr	-1744(ra) # 80005260 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004938:	00000613          	li	a2,0
    8000493c:	00000597          	auipc	a1,0x0
    80004940:	c7c58593          	addi	a1,a1,-900 # 800045b8 <_ZL11workerBodyCPv>
    80004944:	fe040513          	addi	a0,s0,-32
    80004948:	ffffd097          	auipc	ra,0xffffd
    8000494c:	9a8080e7          	jalr	-1624(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80004950:	00005517          	auipc	a0,0x5
    80004954:	8d050513          	addi	a0,a0,-1840 # 80009220 <CONSOLE_STATUS+0x210>
    80004958:	00001097          	auipc	ra,0x1
    8000495c:	908080e7          	jalr	-1784(ra) # 80005260 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004960:	00000613          	li	a2,0
    80004964:	00000597          	auipc	a1,0x0
    80004968:	b0c58593          	addi	a1,a1,-1268 # 80004470 <_ZL11workerBodyDPv>
    8000496c:	fe840513          	addi	a0,s0,-24
    80004970:	ffffd097          	auipc	ra,0xffffd
    80004974:	980080e7          	jalr	-1664(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80004978:	00005517          	auipc	a0,0x5
    8000497c:	8c050513          	addi	a0,a0,-1856 # 80009238 <CONSOLE_STATUS+0x228>
    80004980:	00001097          	auipc	ra,0x1
    80004984:	8e0080e7          	jalr	-1824(ra) # 80005260 <_Z11printStringPKc>
    80004988:	00c0006f          	j	80004994 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    8000498c:	ffffd097          	auipc	ra,0xffffd
    80004990:	a38080e7          	jalr	-1480(ra) # 800013c4 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004994:	00007797          	auipc	a5,0x7
    80004998:	f277c783          	lbu	a5,-217(a5) # 8000b8bb <_ZL9finishedA>
    8000499c:	fe0788e3          	beqz	a5,8000498c <_Z18Threads_C_API_testv+0xb4>
    800049a0:	00007797          	auipc	a5,0x7
    800049a4:	f1a7c783          	lbu	a5,-230(a5) # 8000b8ba <_ZL9finishedB>
    800049a8:	fe0782e3          	beqz	a5,8000498c <_Z18Threads_C_API_testv+0xb4>
    800049ac:	00007797          	auipc	a5,0x7
    800049b0:	f0d7c783          	lbu	a5,-243(a5) # 8000b8b9 <_ZL9finishedC>
    800049b4:	fc078ce3          	beqz	a5,8000498c <_Z18Threads_C_API_testv+0xb4>
    800049b8:	00007797          	auipc	a5,0x7
    800049bc:	f007c783          	lbu	a5,-256(a5) # 8000b8b8 <_ZL9finishedD>
    800049c0:	fc0786e3          	beqz	a5,8000498c <_Z18Threads_C_API_testv+0xb4>
    }

}
    800049c4:	02813083          	ld	ra,40(sp)
    800049c8:	02013403          	ld	s0,32(sp)
    800049cc:	03010113          	addi	sp,sp,48
    800049d0:	00008067          	ret

00000000800049d4 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    800049d4:	fd010113          	addi	sp,sp,-48
    800049d8:	02113423          	sd	ra,40(sp)
    800049dc:	02813023          	sd	s0,32(sp)
    800049e0:	00913c23          	sd	s1,24(sp)
    800049e4:	01213823          	sd	s2,16(sp)
    800049e8:	01313423          	sd	s3,8(sp)
    800049ec:	03010413          	addi	s0,sp,48
    800049f0:	00050993          	mv	s3,a0
    800049f4:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800049f8:	00000913          	li	s2,0
    800049fc:	00c0006f          	j	80004a08 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004a00:	ffffd097          	auipc	ra,0xffffd
    80004a04:	7a4080e7          	jalr	1956(ra) # 800021a4 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80004a08:	ffffd097          	auipc	ra,0xffffd
    80004a0c:	abc080e7          	jalr	-1348(ra) # 800014c4 <_Z4getcv>
    80004a10:	0005059b          	sext.w	a1,a0
    80004a14:	01b00793          	li	a5,27
    80004a18:	02f58a63          	beq	a1,a5,80004a4c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004a1c:	0084b503          	ld	a0,8(s1)
    80004a20:	00001097          	auipc	ra,0x1
    80004a24:	c64080e7          	jalr	-924(ra) # 80005684 <_ZN9BufferCPP3putEi>
        i++;
    80004a28:	0019071b          	addiw	a4,s2,1
    80004a2c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004a30:	0004a683          	lw	a3,0(s1)
    80004a34:	0026979b          	slliw	a5,a3,0x2
    80004a38:	00d787bb          	addw	a5,a5,a3
    80004a3c:	0017979b          	slliw	a5,a5,0x1
    80004a40:	02f767bb          	remw	a5,a4,a5
    80004a44:	fc0792e3          	bnez	a5,80004a08 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004a48:	fb9ff06f          	j	80004a00 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80004a4c:	00100793          	li	a5,1
    80004a50:	00007717          	auipc	a4,0x7
    80004a54:	e6f72823          	sw	a5,-400(a4) # 8000b8c0 <_ZL9threadEnd>
    td->buffer->put('!');
    80004a58:	0209b783          	ld	a5,32(s3)
    80004a5c:	02100593          	li	a1,33
    80004a60:	0087b503          	ld	a0,8(a5)
    80004a64:	00001097          	auipc	ra,0x1
    80004a68:	c20080e7          	jalr	-992(ra) # 80005684 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004a6c:	0104b503          	ld	a0,16(s1)
    80004a70:	ffffe097          	auipc	ra,0xffffe
    80004a74:	824080e7          	jalr	-2012(ra) # 80002294 <_ZN9Semaphore6signalEv>
}
    80004a78:	02813083          	ld	ra,40(sp)
    80004a7c:	02013403          	ld	s0,32(sp)
    80004a80:	01813483          	ld	s1,24(sp)
    80004a84:	01013903          	ld	s2,16(sp)
    80004a88:	00813983          	ld	s3,8(sp)
    80004a8c:	03010113          	addi	sp,sp,48
    80004a90:	00008067          	ret

0000000080004a94 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80004a94:	fe010113          	addi	sp,sp,-32
    80004a98:	00113c23          	sd	ra,24(sp)
    80004a9c:	00813823          	sd	s0,16(sp)
    80004aa0:	00913423          	sd	s1,8(sp)
    80004aa4:	01213023          	sd	s2,0(sp)
    80004aa8:	02010413          	addi	s0,sp,32
    80004aac:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004ab0:	00000913          	li	s2,0
    80004ab4:	00c0006f          	j	80004ac0 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004ab8:	ffffd097          	auipc	ra,0xffffd
    80004abc:	6ec080e7          	jalr	1772(ra) # 800021a4 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80004ac0:	00007797          	auipc	a5,0x7
    80004ac4:	e007a783          	lw	a5,-512(a5) # 8000b8c0 <_ZL9threadEnd>
    80004ac8:	02079e63          	bnez	a5,80004b04 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80004acc:	0004a583          	lw	a1,0(s1)
    80004ad0:	0305859b          	addiw	a1,a1,48
    80004ad4:	0084b503          	ld	a0,8(s1)
    80004ad8:	00001097          	auipc	ra,0x1
    80004adc:	bac080e7          	jalr	-1108(ra) # 80005684 <_ZN9BufferCPP3putEi>
        i++;
    80004ae0:	0019071b          	addiw	a4,s2,1
    80004ae4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004ae8:	0004a683          	lw	a3,0(s1)
    80004aec:	0026979b          	slliw	a5,a3,0x2
    80004af0:	00d787bb          	addw	a5,a5,a3
    80004af4:	0017979b          	slliw	a5,a5,0x1
    80004af8:	02f767bb          	remw	a5,a4,a5
    80004afc:	fc0792e3          	bnez	a5,80004ac0 <_ZN12ProducerSync8producerEPv+0x2c>
    80004b00:	fb9ff06f          	j	80004ab8 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80004b04:	0104b503          	ld	a0,16(s1)
    80004b08:	ffffd097          	auipc	ra,0xffffd
    80004b0c:	78c080e7          	jalr	1932(ra) # 80002294 <_ZN9Semaphore6signalEv>
}
    80004b10:	01813083          	ld	ra,24(sp)
    80004b14:	01013403          	ld	s0,16(sp)
    80004b18:	00813483          	ld	s1,8(sp)
    80004b1c:	00013903          	ld	s2,0(sp)
    80004b20:	02010113          	addi	sp,sp,32
    80004b24:	00008067          	ret

0000000080004b28 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004b28:	fd010113          	addi	sp,sp,-48
    80004b2c:	02113423          	sd	ra,40(sp)
    80004b30:	02813023          	sd	s0,32(sp)
    80004b34:	00913c23          	sd	s1,24(sp)
    80004b38:	01213823          	sd	s2,16(sp)
    80004b3c:	01313423          	sd	s3,8(sp)
    80004b40:	01413023          	sd	s4,0(sp)
    80004b44:	03010413          	addi	s0,sp,48
    80004b48:	00050993          	mv	s3,a0
    80004b4c:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004b50:	00000a13          	li	s4,0
    80004b54:	01c0006f          	j	80004b70 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80004b58:	ffffd097          	auipc	ra,0xffffd
    80004b5c:	64c080e7          	jalr	1612(ra) # 800021a4 <_ZN6Thread8dispatchEv>
    80004b60:	0500006f          	j	80004bb0 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004b64:	00a00513          	li	a0,10
    80004b68:	ffffd097          	auipc	ra,0xffffd
    80004b6c:	9a8080e7          	jalr	-1624(ra) # 80001510 <_Z4putcc>
    while (!threadEnd) {
    80004b70:	00007797          	auipc	a5,0x7
    80004b74:	d507a783          	lw	a5,-688(a5) # 8000b8c0 <_ZL9threadEnd>
    80004b78:	06079263          	bnez	a5,80004bdc <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80004b7c:	00893503          	ld	a0,8(s2)
    80004b80:	00001097          	auipc	ra,0x1
    80004b84:	b94080e7          	jalr	-1132(ra) # 80005714 <_ZN9BufferCPP3getEv>
        i++;
    80004b88:	001a049b          	addiw	s1,s4,1
    80004b8c:	00048a1b          	sext.w	s4,s1
        putc(key);
    80004b90:	0ff57513          	andi	a0,a0,255
    80004b94:	ffffd097          	auipc	ra,0xffffd
    80004b98:	97c080e7          	jalr	-1668(ra) # 80001510 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80004b9c:	00092703          	lw	a4,0(s2)
    80004ba0:	0027179b          	slliw	a5,a4,0x2
    80004ba4:	00e787bb          	addw	a5,a5,a4
    80004ba8:	02f4e7bb          	remw	a5,s1,a5
    80004bac:	fa0786e3          	beqz	a5,80004b58 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80004bb0:	05000793          	li	a5,80
    80004bb4:	02f4e4bb          	remw	s1,s1,a5
    80004bb8:	fa049ce3          	bnez	s1,80004b70 <_ZN12ConsumerSync8consumerEPv+0x48>
    80004bbc:	fa9ff06f          	j	80004b64 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80004bc0:	0209b783          	ld	a5,32(s3)
    80004bc4:	0087b503          	ld	a0,8(a5)
    80004bc8:	00001097          	auipc	ra,0x1
    80004bcc:	b4c080e7          	jalr	-1204(ra) # 80005714 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80004bd0:	0ff57513          	andi	a0,a0,255
    80004bd4:	ffffd097          	auipc	ra,0xffffd
    80004bd8:	7b0080e7          	jalr	1968(ra) # 80002384 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80004bdc:	0209b783          	ld	a5,32(s3)
    80004be0:	0087b503          	ld	a0,8(a5)
    80004be4:	00001097          	auipc	ra,0x1
    80004be8:	bbc080e7          	jalr	-1092(ra) # 800057a0 <_ZN9BufferCPP6getCntEv>
    80004bec:	fca04ae3          	bgtz	a0,80004bc0 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80004bf0:	01093503          	ld	a0,16(s2)
    80004bf4:	ffffd097          	auipc	ra,0xffffd
    80004bf8:	6a0080e7          	jalr	1696(ra) # 80002294 <_ZN9Semaphore6signalEv>
}
    80004bfc:	02813083          	ld	ra,40(sp)
    80004c00:	02013403          	ld	s0,32(sp)
    80004c04:	01813483          	ld	s1,24(sp)
    80004c08:	01013903          	ld	s2,16(sp)
    80004c0c:	00813983          	ld	s3,8(sp)
    80004c10:	00013a03          	ld	s4,0(sp)
    80004c14:	03010113          	addi	sp,sp,48
    80004c18:	00008067          	ret

0000000080004c1c <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004c1c:	f8010113          	addi	sp,sp,-128
    80004c20:	06113c23          	sd	ra,120(sp)
    80004c24:	06813823          	sd	s0,112(sp)
    80004c28:	06913423          	sd	s1,104(sp)
    80004c2c:	07213023          	sd	s2,96(sp)
    80004c30:	05313c23          	sd	s3,88(sp)
    80004c34:	05413823          	sd	s4,80(sp)
    80004c38:	05513423          	sd	s5,72(sp)
    80004c3c:	05613023          	sd	s6,64(sp)
    80004c40:	03713c23          	sd	s7,56(sp)
    80004c44:	03813823          	sd	s8,48(sp)
    80004c48:	03913423          	sd	s9,40(sp)
    80004c4c:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80004c50:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004c54:	00004517          	auipc	a0,0x4
    80004c58:	41c50513          	addi	a0,a0,1052 # 80009070 <CONSOLE_STATUS+0x60>
    80004c5c:	00000097          	auipc	ra,0x0
    80004c60:	604080e7          	jalr	1540(ra) # 80005260 <_Z11printStringPKc>
    getString(input, 30);
    80004c64:	01e00593          	li	a1,30
    80004c68:	f8040493          	addi	s1,s0,-128
    80004c6c:	00048513          	mv	a0,s1
    80004c70:	00000097          	auipc	ra,0x0
    80004c74:	678080e7          	jalr	1656(ra) # 800052e8 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004c78:	00048513          	mv	a0,s1
    80004c7c:	00000097          	auipc	ra,0x0
    80004c80:	744080e7          	jalr	1860(ra) # 800053c0 <_Z11stringToIntPKc>
    80004c84:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004c88:	00004517          	auipc	a0,0x4
    80004c8c:	40850513          	addi	a0,a0,1032 # 80009090 <CONSOLE_STATUS+0x80>
    80004c90:	00000097          	auipc	ra,0x0
    80004c94:	5d0080e7          	jalr	1488(ra) # 80005260 <_Z11printStringPKc>
    getString(input, 30);
    80004c98:	01e00593          	li	a1,30
    80004c9c:	00048513          	mv	a0,s1
    80004ca0:	00000097          	auipc	ra,0x0
    80004ca4:	648080e7          	jalr	1608(ra) # 800052e8 <_Z9getStringPci>
    n = stringToInt(input);
    80004ca8:	00048513          	mv	a0,s1
    80004cac:	00000097          	auipc	ra,0x0
    80004cb0:	714080e7          	jalr	1812(ra) # 800053c0 <_Z11stringToIntPKc>
    80004cb4:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80004cb8:	00004517          	auipc	a0,0x4
    80004cbc:	3f850513          	addi	a0,a0,1016 # 800090b0 <CONSOLE_STATUS+0xa0>
    80004cc0:	00000097          	auipc	ra,0x0
    80004cc4:	5a0080e7          	jalr	1440(ra) # 80005260 <_Z11printStringPKc>
    80004cc8:	00000613          	li	a2,0
    80004ccc:	00a00593          	li	a1,10
    80004cd0:	00090513          	mv	a0,s2
    80004cd4:	00000097          	auipc	ra,0x0
    80004cd8:	73c080e7          	jalr	1852(ra) # 80005410 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004cdc:	00004517          	auipc	a0,0x4
    80004ce0:	3ec50513          	addi	a0,a0,1004 # 800090c8 <CONSOLE_STATUS+0xb8>
    80004ce4:	00000097          	auipc	ra,0x0
    80004ce8:	57c080e7          	jalr	1404(ra) # 80005260 <_Z11printStringPKc>
    80004cec:	00000613          	li	a2,0
    80004cf0:	00a00593          	li	a1,10
    80004cf4:	00048513          	mv	a0,s1
    80004cf8:	00000097          	auipc	ra,0x0
    80004cfc:	718080e7          	jalr	1816(ra) # 80005410 <_Z8printIntiii>
    printString(".\n");
    80004d00:	00004517          	auipc	a0,0x4
    80004d04:	3e050513          	addi	a0,a0,992 # 800090e0 <CONSOLE_STATUS+0xd0>
    80004d08:	00000097          	auipc	ra,0x0
    80004d0c:	558080e7          	jalr	1368(ra) # 80005260 <_Z11printStringPKc>
    if(threadNum > n) {
    80004d10:	0324c463          	blt	s1,s2,80004d38 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80004d14:	03205c63          	blez	s2,80004d4c <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004d18:	03800513          	li	a0,56
    80004d1c:	ffffd097          	auipc	ra,0xffffd
    80004d20:	34c080e7          	jalr	844(ra) # 80002068 <_Znwm>
    80004d24:	00050a93          	mv	s5,a0
    80004d28:	00048593          	mv	a1,s1
    80004d2c:	00001097          	auipc	ra,0x1
    80004d30:	804080e7          	jalr	-2044(ra) # 80005530 <_ZN9BufferCPPC1Ei>
    80004d34:	0300006f          	j	80004d64 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004d38:	00004517          	auipc	a0,0x4
    80004d3c:	3b050513          	addi	a0,a0,944 # 800090e8 <CONSOLE_STATUS+0xd8>
    80004d40:	00000097          	auipc	ra,0x0
    80004d44:	520080e7          	jalr	1312(ra) # 80005260 <_Z11printStringPKc>
        return;
    80004d48:	0140006f          	j	80004d5c <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004d4c:	00004517          	auipc	a0,0x4
    80004d50:	3dc50513          	addi	a0,a0,988 # 80009128 <CONSOLE_STATUS+0x118>
    80004d54:	00000097          	auipc	ra,0x0
    80004d58:	50c080e7          	jalr	1292(ra) # 80005260 <_Z11printStringPKc>
        return;
    80004d5c:	000b8113          	mv	sp,s7
    80004d60:	2380006f          	j	80004f98 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80004d64:	01000513          	li	a0,16
    80004d68:	ffffd097          	auipc	ra,0xffffd
    80004d6c:	300080e7          	jalr	768(ra) # 80002068 <_Znwm>
    80004d70:	00050493          	mv	s1,a0
    80004d74:	00000593          	li	a1,0
    80004d78:	ffffd097          	auipc	ra,0xffffd
    80004d7c:	4a8080e7          	jalr	1192(ra) # 80002220 <_ZN9SemaphoreC1Ej>
    80004d80:	00007797          	auipc	a5,0x7
    80004d84:	b497b423          	sd	s1,-1208(a5) # 8000b8c8 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80004d88:	00391793          	slli	a5,s2,0x3
    80004d8c:	00f78793          	addi	a5,a5,15
    80004d90:	ff07f793          	andi	a5,a5,-16
    80004d94:	40f10133          	sub	sp,sp,a5
    80004d98:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80004d9c:	0019071b          	addiw	a4,s2,1
    80004da0:	00171793          	slli	a5,a4,0x1
    80004da4:	00e787b3          	add	a5,a5,a4
    80004da8:	00379793          	slli	a5,a5,0x3
    80004dac:	00f78793          	addi	a5,a5,15
    80004db0:	ff07f793          	andi	a5,a5,-16
    80004db4:	40f10133          	sub	sp,sp,a5
    80004db8:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80004dbc:	00191c13          	slli	s8,s2,0x1
    80004dc0:	012c07b3          	add	a5,s8,s2
    80004dc4:	00379793          	slli	a5,a5,0x3
    80004dc8:	00fa07b3          	add	a5,s4,a5
    80004dcc:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004dd0:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80004dd4:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80004dd8:	02800513          	li	a0,40
    80004ddc:	ffffd097          	auipc	ra,0xffffd
    80004de0:	28c080e7          	jalr	652(ra) # 80002068 <_Znwm>
    80004de4:	00050b13          	mv	s6,a0
    80004de8:	012c0c33          	add	s8,s8,s2
    80004dec:	003c1c13          	slli	s8,s8,0x3
    80004df0:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80004df4:	ffffd097          	auipc	ra,0xffffd
    80004df8:	404080e7          	jalr	1028(ra) # 800021f8 <_ZN6ThreadC1Ev>
    80004dfc:	00007797          	auipc	a5,0x7
    80004e00:	98c78793          	addi	a5,a5,-1652 # 8000b788 <_ZTV12ConsumerSync+0x10>
    80004e04:	00fb3023          	sd	a5,0(s6)
    80004e08:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80004e0c:	000b0513          	mv	a0,s6
    80004e10:	ffffd097          	auipc	ra,0xffffd
    80004e14:	364080e7          	jalr	868(ra) # 80002174 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004e18:	00000493          	li	s1,0
    80004e1c:	0380006f          	j	80004e54 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004e20:	00007797          	auipc	a5,0x7
    80004e24:	94078793          	addi	a5,a5,-1728 # 8000b760 <_ZTV12ProducerSync+0x10>
    80004e28:	00fcb023          	sd	a5,0(s9)
    80004e2c:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80004e30:	00349793          	slli	a5,s1,0x3
    80004e34:	00f987b3          	add	a5,s3,a5
    80004e38:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80004e3c:	00349793          	slli	a5,s1,0x3
    80004e40:	00f987b3          	add	a5,s3,a5
    80004e44:	0007b503          	ld	a0,0(a5)
    80004e48:	ffffd097          	auipc	ra,0xffffd
    80004e4c:	32c080e7          	jalr	812(ra) # 80002174 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004e50:	0014849b          	addiw	s1,s1,1
    80004e54:	0b24d063          	bge	s1,s2,80004ef4 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80004e58:	00149793          	slli	a5,s1,0x1
    80004e5c:	009787b3          	add	a5,a5,s1
    80004e60:	00379793          	slli	a5,a5,0x3
    80004e64:	00fa07b3          	add	a5,s4,a5
    80004e68:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004e6c:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80004e70:	00007717          	auipc	a4,0x7
    80004e74:	a5873703          	ld	a4,-1448(a4) # 8000b8c8 <_ZL10waitForAll>
    80004e78:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80004e7c:	02905863          	blez	s1,80004eac <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80004e80:	02800513          	li	a0,40
    80004e84:	ffffd097          	auipc	ra,0xffffd
    80004e88:	1e4080e7          	jalr	484(ra) # 80002068 <_Znwm>
    80004e8c:	00050c93          	mv	s9,a0
    80004e90:	00149c13          	slli	s8,s1,0x1
    80004e94:	009c0c33          	add	s8,s8,s1
    80004e98:	003c1c13          	slli	s8,s8,0x3
    80004e9c:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004ea0:	ffffd097          	auipc	ra,0xffffd
    80004ea4:	358080e7          	jalr	856(ra) # 800021f8 <_ZN6ThreadC1Ev>
    80004ea8:	f79ff06f          	j	80004e20 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80004eac:	02800513          	li	a0,40
    80004eb0:	ffffd097          	auipc	ra,0xffffd
    80004eb4:	1b8080e7          	jalr	440(ra) # 80002068 <_Znwm>
    80004eb8:	00050c93          	mv	s9,a0
    80004ebc:	00149c13          	slli	s8,s1,0x1
    80004ec0:	009c0c33          	add	s8,s8,s1
    80004ec4:	003c1c13          	slli	s8,s8,0x3
    80004ec8:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80004ecc:	ffffd097          	auipc	ra,0xffffd
    80004ed0:	32c080e7          	jalr	812(ra) # 800021f8 <_ZN6ThreadC1Ev>
    80004ed4:	00007797          	auipc	a5,0x7
    80004ed8:	86478793          	addi	a5,a5,-1948 # 8000b738 <_ZTV16ProducerKeyboard+0x10>
    80004edc:	00fcb023          	sd	a5,0(s9)
    80004ee0:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80004ee4:	00349793          	slli	a5,s1,0x3
    80004ee8:	00f987b3          	add	a5,s3,a5
    80004eec:	0197b023          	sd	s9,0(a5)
    80004ef0:	f4dff06f          	j	80004e3c <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80004ef4:	ffffd097          	auipc	ra,0xffffd
    80004ef8:	2b0080e7          	jalr	688(ra) # 800021a4 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004efc:	00000493          	li	s1,0
    80004f00:	00994e63          	blt	s2,s1,80004f1c <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80004f04:	00007517          	auipc	a0,0x7
    80004f08:	9c453503          	ld	a0,-1596(a0) # 8000b8c8 <_ZL10waitForAll>
    80004f0c:	ffffd097          	auipc	ra,0xffffd
    80004f10:	350080e7          	jalr	848(ra) # 8000225c <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004f14:	0014849b          	addiw	s1,s1,1
    80004f18:	fe9ff06f          	j	80004f00 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80004f1c:	00000493          	li	s1,0
    80004f20:	0080006f          	j	80004f28 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80004f24:	0014849b          	addiw	s1,s1,1
    80004f28:	0324d263          	bge	s1,s2,80004f4c <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80004f2c:	00349793          	slli	a5,s1,0x3
    80004f30:	00f987b3          	add	a5,s3,a5
    80004f34:	0007b503          	ld	a0,0(a5)
    80004f38:	fe0506e3          	beqz	a0,80004f24 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80004f3c:	00053783          	ld	a5,0(a0)
    80004f40:	0087b783          	ld	a5,8(a5)
    80004f44:	000780e7          	jalr	a5
    80004f48:	fddff06f          	j	80004f24 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80004f4c:	000b0a63          	beqz	s6,80004f60 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80004f50:	000b3783          	ld	a5,0(s6)
    80004f54:	0087b783          	ld	a5,8(a5)
    80004f58:	000b0513          	mv	a0,s6
    80004f5c:	000780e7          	jalr	a5
    delete waitForAll;
    80004f60:	00007517          	auipc	a0,0x7
    80004f64:	96853503          	ld	a0,-1688(a0) # 8000b8c8 <_ZL10waitForAll>
    80004f68:	00050863          	beqz	a0,80004f78 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80004f6c:	00053783          	ld	a5,0(a0)
    80004f70:	0087b783          	ld	a5,8(a5)
    80004f74:	000780e7          	jalr	a5
    delete buffer;
    80004f78:	000a8e63          	beqz	s5,80004f94 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80004f7c:	000a8513          	mv	a0,s5
    80004f80:	00001097          	auipc	ra,0x1
    80004f84:	8a8080e7          	jalr	-1880(ra) # 80005828 <_ZN9BufferCPPD1Ev>
    80004f88:	000a8513          	mv	a0,s5
    80004f8c:	ffffd097          	auipc	ra,0xffffd
    80004f90:	104080e7          	jalr	260(ra) # 80002090 <_ZdlPv>
    80004f94:	000b8113          	mv	sp,s7

}
    80004f98:	f8040113          	addi	sp,s0,-128
    80004f9c:	07813083          	ld	ra,120(sp)
    80004fa0:	07013403          	ld	s0,112(sp)
    80004fa4:	06813483          	ld	s1,104(sp)
    80004fa8:	06013903          	ld	s2,96(sp)
    80004fac:	05813983          	ld	s3,88(sp)
    80004fb0:	05013a03          	ld	s4,80(sp)
    80004fb4:	04813a83          	ld	s5,72(sp)
    80004fb8:	04013b03          	ld	s6,64(sp)
    80004fbc:	03813b83          	ld	s7,56(sp)
    80004fc0:	03013c03          	ld	s8,48(sp)
    80004fc4:	02813c83          	ld	s9,40(sp)
    80004fc8:	08010113          	addi	sp,sp,128
    80004fcc:	00008067          	ret
    80004fd0:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004fd4:	000a8513          	mv	a0,s5
    80004fd8:	ffffd097          	auipc	ra,0xffffd
    80004fdc:	0b8080e7          	jalr	184(ra) # 80002090 <_ZdlPv>
    80004fe0:	00048513          	mv	a0,s1
    80004fe4:	00008097          	auipc	ra,0x8
    80004fe8:	9c4080e7          	jalr	-1596(ra) # 8000c9a8 <_Unwind_Resume>
    80004fec:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80004ff0:	00048513          	mv	a0,s1
    80004ff4:	ffffd097          	auipc	ra,0xffffd
    80004ff8:	09c080e7          	jalr	156(ra) # 80002090 <_ZdlPv>
    80004ffc:	00090513          	mv	a0,s2
    80005000:	00008097          	auipc	ra,0x8
    80005004:	9a8080e7          	jalr	-1624(ra) # 8000c9a8 <_Unwind_Resume>
    80005008:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    8000500c:	000b0513          	mv	a0,s6
    80005010:	ffffd097          	auipc	ra,0xffffd
    80005014:	080080e7          	jalr	128(ra) # 80002090 <_ZdlPv>
    80005018:	00048513          	mv	a0,s1
    8000501c:	00008097          	auipc	ra,0x8
    80005020:	98c080e7          	jalr	-1652(ra) # 8000c9a8 <_Unwind_Resume>
    80005024:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005028:	000c8513          	mv	a0,s9
    8000502c:	ffffd097          	auipc	ra,0xffffd
    80005030:	064080e7          	jalr	100(ra) # 80002090 <_ZdlPv>
    80005034:	00048513          	mv	a0,s1
    80005038:	00008097          	auipc	ra,0x8
    8000503c:	970080e7          	jalr	-1680(ra) # 8000c9a8 <_Unwind_Resume>
    80005040:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005044:	000c8513          	mv	a0,s9
    80005048:	ffffd097          	auipc	ra,0xffffd
    8000504c:	048080e7          	jalr	72(ra) # 80002090 <_ZdlPv>
    80005050:	00048513          	mv	a0,s1
    80005054:	00008097          	auipc	ra,0x8
    80005058:	954080e7          	jalr	-1708(ra) # 8000c9a8 <_Unwind_Resume>

000000008000505c <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    8000505c:	ff010113          	addi	sp,sp,-16
    80005060:	00113423          	sd	ra,8(sp)
    80005064:	00813023          	sd	s0,0(sp)
    80005068:	01010413          	addi	s0,sp,16
    8000506c:	00006797          	auipc	a5,0x6
    80005070:	71c78793          	addi	a5,a5,1820 # 8000b788 <_ZTV12ConsumerSync+0x10>
    80005074:	00f53023          	sd	a5,0(a0)
    80005078:	ffffd097          	auipc	ra,0xffffd
    8000507c:	f58080e7          	jalr	-168(ra) # 80001fd0 <_ZN6ThreadD1Ev>
    80005080:	00813083          	ld	ra,8(sp)
    80005084:	00013403          	ld	s0,0(sp)
    80005088:	01010113          	addi	sp,sp,16
    8000508c:	00008067          	ret

0000000080005090 <_ZN12ConsumerSyncD0Ev>:
    80005090:	fe010113          	addi	sp,sp,-32
    80005094:	00113c23          	sd	ra,24(sp)
    80005098:	00813823          	sd	s0,16(sp)
    8000509c:	00913423          	sd	s1,8(sp)
    800050a0:	02010413          	addi	s0,sp,32
    800050a4:	00050493          	mv	s1,a0
    800050a8:	00006797          	auipc	a5,0x6
    800050ac:	6e078793          	addi	a5,a5,1760 # 8000b788 <_ZTV12ConsumerSync+0x10>
    800050b0:	00f53023          	sd	a5,0(a0)
    800050b4:	ffffd097          	auipc	ra,0xffffd
    800050b8:	f1c080e7          	jalr	-228(ra) # 80001fd0 <_ZN6ThreadD1Ev>
    800050bc:	00048513          	mv	a0,s1
    800050c0:	ffffd097          	auipc	ra,0xffffd
    800050c4:	fd0080e7          	jalr	-48(ra) # 80002090 <_ZdlPv>
    800050c8:	01813083          	ld	ra,24(sp)
    800050cc:	01013403          	ld	s0,16(sp)
    800050d0:	00813483          	ld	s1,8(sp)
    800050d4:	02010113          	addi	sp,sp,32
    800050d8:	00008067          	ret

00000000800050dc <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    800050dc:	ff010113          	addi	sp,sp,-16
    800050e0:	00113423          	sd	ra,8(sp)
    800050e4:	00813023          	sd	s0,0(sp)
    800050e8:	01010413          	addi	s0,sp,16
    800050ec:	00006797          	auipc	a5,0x6
    800050f0:	67478793          	addi	a5,a5,1652 # 8000b760 <_ZTV12ProducerSync+0x10>
    800050f4:	00f53023          	sd	a5,0(a0)
    800050f8:	ffffd097          	auipc	ra,0xffffd
    800050fc:	ed8080e7          	jalr	-296(ra) # 80001fd0 <_ZN6ThreadD1Ev>
    80005100:	00813083          	ld	ra,8(sp)
    80005104:	00013403          	ld	s0,0(sp)
    80005108:	01010113          	addi	sp,sp,16
    8000510c:	00008067          	ret

0000000080005110 <_ZN12ProducerSyncD0Ev>:
    80005110:	fe010113          	addi	sp,sp,-32
    80005114:	00113c23          	sd	ra,24(sp)
    80005118:	00813823          	sd	s0,16(sp)
    8000511c:	00913423          	sd	s1,8(sp)
    80005120:	02010413          	addi	s0,sp,32
    80005124:	00050493          	mv	s1,a0
    80005128:	00006797          	auipc	a5,0x6
    8000512c:	63878793          	addi	a5,a5,1592 # 8000b760 <_ZTV12ProducerSync+0x10>
    80005130:	00f53023          	sd	a5,0(a0)
    80005134:	ffffd097          	auipc	ra,0xffffd
    80005138:	e9c080e7          	jalr	-356(ra) # 80001fd0 <_ZN6ThreadD1Ev>
    8000513c:	00048513          	mv	a0,s1
    80005140:	ffffd097          	auipc	ra,0xffffd
    80005144:	f50080e7          	jalr	-176(ra) # 80002090 <_ZdlPv>
    80005148:	01813083          	ld	ra,24(sp)
    8000514c:	01013403          	ld	s0,16(sp)
    80005150:	00813483          	ld	s1,8(sp)
    80005154:	02010113          	addi	sp,sp,32
    80005158:	00008067          	ret

000000008000515c <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    8000515c:	ff010113          	addi	sp,sp,-16
    80005160:	00113423          	sd	ra,8(sp)
    80005164:	00813023          	sd	s0,0(sp)
    80005168:	01010413          	addi	s0,sp,16
    8000516c:	00006797          	auipc	a5,0x6
    80005170:	5cc78793          	addi	a5,a5,1484 # 8000b738 <_ZTV16ProducerKeyboard+0x10>
    80005174:	00f53023          	sd	a5,0(a0)
    80005178:	ffffd097          	auipc	ra,0xffffd
    8000517c:	e58080e7          	jalr	-424(ra) # 80001fd0 <_ZN6ThreadD1Ev>
    80005180:	00813083          	ld	ra,8(sp)
    80005184:	00013403          	ld	s0,0(sp)
    80005188:	01010113          	addi	sp,sp,16
    8000518c:	00008067          	ret

0000000080005190 <_ZN16ProducerKeyboardD0Ev>:
    80005190:	fe010113          	addi	sp,sp,-32
    80005194:	00113c23          	sd	ra,24(sp)
    80005198:	00813823          	sd	s0,16(sp)
    8000519c:	00913423          	sd	s1,8(sp)
    800051a0:	02010413          	addi	s0,sp,32
    800051a4:	00050493          	mv	s1,a0
    800051a8:	00006797          	auipc	a5,0x6
    800051ac:	59078793          	addi	a5,a5,1424 # 8000b738 <_ZTV16ProducerKeyboard+0x10>
    800051b0:	00f53023          	sd	a5,0(a0)
    800051b4:	ffffd097          	auipc	ra,0xffffd
    800051b8:	e1c080e7          	jalr	-484(ra) # 80001fd0 <_ZN6ThreadD1Ev>
    800051bc:	00048513          	mv	a0,s1
    800051c0:	ffffd097          	auipc	ra,0xffffd
    800051c4:	ed0080e7          	jalr	-304(ra) # 80002090 <_ZdlPv>
    800051c8:	01813083          	ld	ra,24(sp)
    800051cc:	01013403          	ld	s0,16(sp)
    800051d0:	00813483          	ld	s1,8(sp)
    800051d4:	02010113          	addi	sp,sp,32
    800051d8:	00008067          	ret

00000000800051dc <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    800051dc:	ff010113          	addi	sp,sp,-16
    800051e0:	00113423          	sd	ra,8(sp)
    800051e4:	00813023          	sd	s0,0(sp)
    800051e8:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    800051ec:	02053583          	ld	a1,32(a0)
    800051f0:	fffff097          	auipc	ra,0xfffff
    800051f4:	7e4080e7          	jalr	2020(ra) # 800049d4 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    800051f8:	00813083          	ld	ra,8(sp)
    800051fc:	00013403          	ld	s0,0(sp)
    80005200:	01010113          	addi	sp,sp,16
    80005204:	00008067          	ret

0000000080005208 <_ZN12ProducerSync3runEv>:
    void run() override {
    80005208:	ff010113          	addi	sp,sp,-16
    8000520c:	00113423          	sd	ra,8(sp)
    80005210:	00813023          	sd	s0,0(sp)
    80005214:	01010413          	addi	s0,sp,16
        producer(td);
    80005218:	02053583          	ld	a1,32(a0)
    8000521c:	00000097          	auipc	ra,0x0
    80005220:	878080e7          	jalr	-1928(ra) # 80004a94 <_ZN12ProducerSync8producerEPv>
    }
    80005224:	00813083          	ld	ra,8(sp)
    80005228:	00013403          	ld	s0,0(sp)
    8000522c:	01010113          	addi	sp,sp,16
    80005230:	00008067          	ret

0000000080005234 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005234:	ff010113          	addi	sp,sp,-16
    80005238:	00113423          	sd	ra,8(sp)
    8000523c:	00813023          	sd	s0,0(sp)
    80005240:	01010413          	addi	s0,sp,16
        consumer(td);
    80005244:	02053583          	ld	a1,32(a0)
    80005248:	00000097          	auipc	ra,0x0
    8000524c:	8e0080e7          	jalr	-1824(ra) # 80004b28 <_ZN12ConsumerSync8consumerEPv>
    }
    80005250:	00813083          	ld	ra,8(sp)
    80005254:	00013403          	ld	s0,0(sp)
    80005258:	01010113          	addi	sp,sp,16
    8000525c:	00008067          	ret

0000000080005260 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005260:	fe010113          	addi	sp,sp,-32
    80005264:	00113c23          	sd	ra,24(sp)
    80005268:	00813823          	sd	s0,16(sp)
    8000526c:	00913423          	sd	s1,8(sp)
    80005270:	02010413          	addi	s0,sp,32
    80005274:	00050493          	mv	s1,a0
    LOCK();
    80005278:	00100613          	li	a2,1
    8000527c:	00000593          	li	a1,0
    80005280:	00006517          	auipc	a0,0x6
    80005284:	65050513          	addi	a0,a0,1616 # 8000b8d0 <lockPrint>
    80005288:	ffffc097          	auipc	ra,0xffffc
    8000528c:	f8c080e7          	jalr	-116(ra) # 80001214 <copy_and_swap>
    80005290:	00050863          	beqz	a0,800052a0 <_Z11printStringPKc+0x40>
    80005294:	ffffc097          	auipc	ra,0xffffc
    80005298:	130080e7          	jalr	304(ra) # 800013c4 <_Z15thread_dispatchv>
    8000529c:	fddff06f          	j	80005278 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800052a0:	0004c503          	lbu	a0,0(s1)
    800052a4:	00050a63          	beqz	a0,800052b8 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    800052a8:	ffffc097          	auipc	ra,0xffffc
    800052ac:	268080e7          	jalr	616(ra) # 80001510 <_Z4putcc>
        string++;
    800052b0:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800052b4:	fedff06f          	j	800052a0 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    800052b8:	00000613          	li	a2,0
    800052bc:	00100593          	li	a1,1
    800052c0:	00006517          	auipc	a0,0x6
    800052c4:	61050513          	addi	a0,a0,1552 # 8000b8d0 <lockPrint>
    800052c8:	ffffc097          	auipc	ra,0xffffc
    800052cc:	f4c080e7          	jalr	-180(ra) # 80001214 <copy_and_swap>
    800052d0:	fe0514e3          	bnez	a0,800052b8 <_Z11printStringPKc+0x58>
}
    800052d4:	01813083          	ld	ra,24(sp)
    800052d8:	01013403          	ld	s0,16(sp)
    800052dc:	00813483          	ld	s1,8(sp)
    800052e0:	02010113          	addi	sp,sp,32
    800052e4:	00008067          	ret

00000000800052e8 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800052e8:	fd010113          	addi	sp,sp,-48
    800052ec:	02113423          	sd	ra,40(sp)
    800052f0:	02813023          	sd	s0,32(sp)
    800052f4:	00913c23          	sd	s1,24(sp)
    800052f8:	01213823          	sd	s2,16(sp)
    800052fc:	01313423          	sd	s3,8(sp)
    80005300:	01413023          	sd	s4,0(sp)
    80005304:	03010413          	addi	s0,sp,48
    80005308:	00050993          	mv	s3,a0
    8000530c:	00058a13          	mv	s4,a1
    LOCK();
    80005310:	00100613          	li	a2,1
    80005314:	00000593          	li	a1,0
    80005318:	00006517          	auipc	a0,0x6
    8000531c:	5b850513          	addi	a0,a0,1464 # 8000b8d0 <lockPrint>
    80005320:	ffffc097          	auipc	ra,0xffffc
    80005324:	ef4080e7          	jalr	-268(ra) # 80001214 <copy_and_swap>
    80005328:	00050863          	beqz	a0,80005338 <_Z9getStringPci+0x50>
    8000532c:	ffffc097          	auipc	ra,0xffffc
    80005330:	098080e7          	jalr	152(ra) # 800013c4 <_Z15thread_dispatchv>
    80005334:	fddff06f          	j	80005310 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005338:	00000913          	li	s2,0
    8000533c:	00090493          	mv	s1,s2
    80005340:	0019091b          	addiw	s2,s2,1
    80005344:	03495a63          	bge	s2,s4,80005378 <_Z9getStringPci+0x90>
        cc = getc();
    80005348:	ffffc097          	auipc	ra,0xffffc
    8000534c:	17c080e7          	jalr	380(ra) # 800014c4 <_Z4getcv>
        if(cc < 1)
    80005350:	02050463          	beqz	a0,80005378 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005354:	009984b3          	add	s1,s3,s1
    80005358:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    8000535c:	00a00793          	li	a5,10
    80005360:	00f50a63          	beq	a0,a5,80005374 <_Z9getStringPci+0x8c>
    80005364:	00d00793          	li	a5,13
    80005368:	fcf51ae3          	bne	a0,a5,8000533c <_Z9getStringPci+0x54>
        buf[i++] = c;
    8000536c:	00090493          	mv	s1,s2
    80005370:	0080006f          	j	80005378 <_Z9getStringPci+0x90>
    80005374:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005378:	009984b3          	add	s1,s3,s1
    8000537c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005380:	00000613          	li	a2,0
    80005384:	00100593          	li	a1,1
    80005388:	00006517          	auipc	a0,0x6
    8000538c:	54850513          	addi	a0,a0,1352 # 8000b8d0 <lockPrint>
    80005390:	ffffc097          	auipc	ra,0xffffc
    80005394:	e84080e7          	jalr	-380(ra) # 80001214 <copy_and_swap>
    80005398:	fe0514e3          	bnez	a0,80005380 <_Z9getStringPci+0x98>
    return buf;
}
    8000539c:	00098513          	mv	a0,s3
    800053a0:	02813083          	ld	ra,40(sp)
    800053a4:	02013403          	ld	s0,32(sp)
    800053a8:	01813483          	ld	s1,24(sp)
    800053ac:	01013903          	ld	s2,16(sp)
    800053b0:	00813983          	ld	s3,8(sp)
    800053b4:	00013a03          	ld	s4,0(sp)
    800053b8:	03010113          	addi	sp,sp,48
    800053bc:	00008067          	ret

00000000800053c0 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800053c0:	ff010113          	addi	sp,sp,-16
    800053c4:	00813423          	sd	s0,8(sp)
    800053c8:	01010413          	addi	s0,sp,16
    800053cc:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800053d0:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800053d4:	0006c603          	lbu	a2,0(a3)
    800053d8:	fd06071b          	addiw	a4,a2,-48
    800053dc:	0ff77713          	andi	a4,a4,255
    800053e0:	00900793          	li	a5,9
    800053e4:	02e7e063          	bltu	a5,a4,80005404 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800053e8:	0025179b          	slliw	a5,a0,0x2
    800053ec:	00a787bb          	addw	a5,a5,a0
    800053f0:	0017979b          	slliw	a5,a5,0x1
    800053f4:	00168693          	addi	a3,a3,1
    800053f8:	00c787bb          	addw	a5,a5,a2
    800053fc:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005400:	fd5ff06f          	j	800053d4 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005404:	00813403          	ld	s0,8(sp)
    80005408:	01010113          	addi	sp,sp,16
    8000540c:	00008067          	ret

0000000080005410 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005410:	fc010113          	addi	sp,sp,-64
    80005414:	02113c23          	sd	ra,56(sp)
    80005418:	02813823          	sd	s0,48(sp)
    8000541c:	02913423          	sd	s1,40(sp)
    80005420:	03213023          	sd	s2,32(sp)
    80005424:	01313c23          	sd	s3,24(sp)
    80005428:	04010413          	addi	s0,sp,64
    8000542c:	00050493          	mv	s1,a0
    80005430:	00058913          	mv	s2,a1
    80005434:	00060993          	mv	s3,a2
    LOCK();
    80005438:	00100613          	li	a2,1
    8000543c:	00000593          	li	a1,0
    80005440:	00006517          	auipc	a0,0x6
    80005444:	49050513          	addi	a0,a0,1168 # 8000b8d0 <lockPrint>
    80005448:	ffffc097          	auipc	ra,0xffffc
    8000544c:	dcc080e7          	jalr	-564(ra) # 80001214 <copy_and_swap>
    80005450:	00050863          	beqz	a0,80005460 <_Z8printIntiii+0x50>
    80005454:	ffffc097          	auipc	ra,0xffffc
    80005458:	f70080e7          	jalr	-144(ra) # 800013c4 <_Z15thread_dispatchv>
    8000545c:	fddff06f          	j	80005438 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005460:	00098463          	beqz	s3,80005468 <_Z8printIntiii+0x58>
    80005464:	0804c463          	bltz	s1,800054ec <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005468:	0004851b          	sext.w	a0,s1
    neg = 0;
    8000546c:	00000593          	li	a1,0
    }

    i = 0;
    80005470:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005474:	0009079b          	sext.w	a5,s2
    80005478:	0325773b          	remuw	a4,a0,s2
    8000547c:	00048613          	mv	a2,s1
    80005480:	0014849b          	addiw	s1,s1,1
    80005484:	02071693          	slli	a3,a4,0x20
    80005488:	0206d693          	srli	a3,a3,0x20
    8000548c:	00006717          	auipc	a4,0x6
    80005490:	31470713          	addi	a4,a4,788 # 8000b7a0 <digits>
    80005494:	00d70733          	add	a4,a4,a3
    80005498:	00074683          	lbu	a3,0(a4)
    8000549c:	fd040713          	addi	a4,s0,-48
    800054a0:	00c70733          	add	a4,a4,a2
    800054a4:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800054a8:	0005071b          	sext.w	a4,a0
    800054ac:	0325553b          	divuw	a0,a0,s2
    800054b0:	fcf772e3          	bgeu	a4,a5,80005474 <_Z8printIntiii+0x64>
    if(neg)
    800054b4:	00058c63          	beqz	a1,800054cc <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    800054b8:	fd040793          	addi	a5,s0,-48
    800054bc:	009784b3          	add	s1,a5,s1
    800054c0:	02d00793          	li	a5,45
    800054c4:	fef48823          	sb	a5,-16(s1)
    800054c8:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800054cc:	fff4849b          	addiw	s1,s1,-1
    800054d0:	0204c463          	bltz	s1,800054f8 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    800054d4:	fd040793          	addi	a5,s0,-48
    800054d8:	009787b3          	add	a5,a5,s1
    800054dc:	ff07c503          	lbu	a0,-16(a5)
    800054e0:	ffffc097          	auipc	ra,0xffffc
    800054e4:	030080e7          	jalr	48(ra) # 80001510 <_Z4putcc>
    800054e8:	fe5ff06f          	j	800054cc <_Z8printIntiii+0xbc>
        x = -xx;
    800054ec:	4090053b          	negw	a0,s1
        neg = 1;
    800054f0:	00100593          	li	a1,1
        x = -xx;
    800054f4:	f7dff06f          	j	80005470 <_Z8printIntiii+0x60>

    UNLOCK();
    800054f8:	00000613          	li	a2,0
    800054fc:	00100593          	li	a1,1
    80005500:	00006517          	auipc	a0,0x6
    80005504:	3d050513          	addi	a0,a0,976 # 8000b8d0 <lockPrint>
    80005508:	ffffc097          	auipc	ra,0xffffc
    8000550c:	d0c080e7          	jalr	-756(ra) # 80001214 <copy_and_swap>
    80005510:	fe0514e3          	bnez	a0,800054f8 <_Z8printIntiii+0xe8>
    80005514:	03813083          	ld	ra,56(sp)
    80005518:	03013403          	ld	s0,48(sp)
    8000551c:	02813483          	ld	s1,40(sp)
    80005520:	02013903          	ld	s2,32(sp)
    80005524:	01813983          	ld	s3,24(sp)
    80005528:	04010113          	addi	sp,sp,64
    8000552c:	00008067          	ret

0000000080005530 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005530:	fd010113          	addi	sp,sp,-48
    80005534:	02113423          	sd	ra,40(sp)
    80005538:	02813023          	sd	s0,32(sp)
    8000553c:	00913c23          	sd	s1,24(sp)
    80005540:	01213823          	sd	s2,16(sp)
    80005544:	01313423          	sd	s3,8(sp)
    80005548:	03010413          	addi	s0,sp,48
    8000554c:	00050493          	mv	s1,a0
    80005550:	00058913          	mv	s2,a1
    80005554:	0015879b          	addiw	a5,a1,1
    80005558:	0007851b          	sext.w	a0,a5
    8000555c:	00f4a023          	sw	a5,0(s1)
    80005560:	0004a823          	sw	zero,16(s1)
    80005564:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005568:	00251513          	slli	a0,a0,0x2
    8000556c:	ffffc097          	auipc	ra,0xffffc
    80005570:	ce4080e7          	jalr	-796(ra) # 80001250 <_Z9mem_allocm>
    80005574:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005578:	01000513          	li	a0,16
    8000557c:	ffffd097          	auipc	ra,0xffffd
    80005580:	aec080e7          	jalr	-1300(ra) # 80002068 <_Znwm>
    80005584:	00050993          	mv	s3,a0
    80005588:	00000593          	li	a1,0
    8000558c:	ffffd097          	auipc	ra,0xffffd
    80005590:	c94080e7          	jalr	-876(ra) # 80002220 <_ZN9SemaphoreC1Ej>
    80005594:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005598:	01000513          	li	a0,16
    8000559c:	ffffd097          	auipc	ra,0xffffd
    800055a0:	acc080e7          	jalr	-1332(ra) # 80002068 <_Znwm>
    800055a4:	00050993          	mv	s3,a0
    800055a8:	00090593          	mv	a1,s2
    800055ac:	ffffd097          	auipc	ra,0xffffd
    800055b0:	c74080e7          	jalr	-908(ra) # 80002220 <_ZN9SemaphoreC1Ej>
    800055b4:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    800055b8:	01000513          	li	a0,16
    800055bc:	ffffd097          	auipc	ra,0xffffd
    800055c0:	aac080e7          	jalr	-1364(ra) # 80002068 <_Znwm>
    800055c4:	00050913          	mv	s2,a0
    800055c8:	00100593          	li	a1,1
    800055cc:	ffffd097          	auipc	ra,0xffffd
    800055d0:	c54080e7          	jalr	-940(ra) # 80002220 <_ZN9SemaphoreC1Ej>
    800055d4:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800055d8:	01000513          	li	a0,16
    800055dc:	ffffd097          	auipc	ra,0xffffd
    800055e0:	a8c080e7          	jalr	-1396(ra) # 80002068 <_Znwm>
    800055e4:	00050913          	mv	s2,a0
    800055e8:	00100593          	li	a1,1
    800055ec:	ffffd097          	auipc	ra,0xffffd
    800055f0:	c34080e7          	jalr	-972(ra) # 80002220 <_ZN9SemaphoreC1Ej>
    800055f4:	0324b823          	sd	s2,48(s1)
}
    800055f8:	02813083          	ld	ra,40(sp)
    800055fc:	02013403          	ld	s0,32(sp)
    80005600:	01813483          	ld	s1,24(sp)
    80005604:	01013903          	ld	s2,16(sp)
    80005608:	00813983          	ld	s3,8(sp)
    8000560c:	03010113          	addi	sp,sp,48
    80005610:	00008067          	ret
    80005614:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005618:	00098513          	mv	a0,s3
    8000561c:	ffffd097          	auipc	ra,0xffffd
    80005620:	a74080e7          	jalr	-1420(ra) # 80002090 <_ZdlPv>
    80005624:	00048513          	mv	a0,s1
    80005628:	00007097          	auipc	ra,0x7
    8000562c:	380080e7          	jalr	896(ra) # 8000c9a8 <_Unwind_Resume>
    80005630:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005634:	00098513          	mv	a0,s3
    80005638:	ffffd097          	auipc	ra,0xffffd
    8000563c:	a58080e7          	jalr	-1448(ra) # 80002090 <_ZdlPv>
    80005640:	00048513          	mv	a0,s1
    80005644:	00007097          	auipc	ra,0x7
    80005648:	364080e7          	jalr	868(ra) # 8000c9a8 <_Unwind_Resume>
    8000564c:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005650:	00090513          	mv	a0,s2
    80005654:	ffffd097          	auipc	ra,0xffffd
    80005658:	a3c080e7          	jalr	-1476(ra) # 80002090 <_ZdlPv>
    8000565c:	00048513          	mv	a0,s1
    80005660:	00007097          	auipc	ra,0x7
    80005664:	348080e7          	jalr	840(ra) # 8000c9a8 <_Unwind_Resume>
    80005668:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    8000566c:	00090513          	mv	a0,s2
    80005670:	ffffd097          	auipc	ra,0xffffd
    80005674:	a20080e7          	jalr	-1504(ra) # 80002090 <_ZdlPv>
    80005678:	00048513          	mv	a0,s1
    8000567c:	00007097          	auipc	ra,0x7
    80005680:	32c080e7          	jalr	812(ra) # 8000c9a8 <_Unwind_Resume>

0000000080005684 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005684:	fe010113          	addi	sp,sp,-32
    80005688:	00113c23          	sd	ra,24(sp)
    8000568c:	00813823          	sd	s0,16(sp)
    80005690:	00913423          	sd	s1,8(sp)
    80005694:	01213023          	sd	s2,0(sp)
    80005698:	02010413          	addi	s0,sp,32
    8000569c:	00050493          	mv	s1,a0
    800056a0:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800056a4:	01853503          	ld	a0,24(a0)
    800056a8:	ffffd097          	auipc	ra,0xffffd
    800056ac:	bb4080e7          	jalr	-1100(ra) # 8000225c <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800056b0:	0304b503          	ld	a0,48(s1)
    800056b4:	ffffd097          	auipc	ra,0xffffd
    800056b8:	ba8080e7          	jalr	-1112(ra) # 8000225c <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800056bc:	0084b783          	ld	a5,8(s1)
    800056c0:	0144a703          	lw	a4,20(s1)
    800056c4:	00271713          	slli	a4,a4,0x2
    800056c8:	00e787b3          	add	a5,a5,a4
    800056cc:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800056d0:	0144a783          	lw	a5,20(s1)
    800056d4:	0017879b          	addiw	a5,a5,1
    800056d8:	0004a703          	lw	a4,0(s1)
    800056dc:	02e7e7bb          	remw	a5,a5,a4
    800056e0:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800056e4:	0304b503          	ld	a0,48(s1)
    800056e8:	ffffd097          	auipc	ra,0xffffd
    800056ec:	bac080e7          	jalr	-1108(ra) # 80002294 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    800056f0:	0204b503          	ld	a0,32(s1)
    800056f4:	ffffd097          	auipc	ra,0xffffd
    800056f8:	ba0080e7          	jalr	-1120(ra) # 80002294 <_ZN9Semaphore6signalEv>

}
    800056fc:	01813083          	ld	ra,24(sp)
    80005700:	01013403          	ld	s0,16(sp)
    80005704:	00813483          	ld	s1,8(sp)
    80005708:	00013903          	ld	s2,0(sp)
    8000570c:	02010113          	addi	sp,sp,32
    80005710:	00008067          	ret

0000000080005714 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005714:	fe010113          	addi	sp,sp,-32
    80005718:	00113c23          	sd	ra,24(sp)
    8000571c:	00813823          	sd	s0,16(sp)
    80005720:	00913423          	sd	s1,8(sp)
    80005724:	01213023          	sd	s2,0(sp)
    80005728:	02010413          	addi	s0,sp,32
    8000572c:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005730:	02053503          	ld	a0,32(a0)
    80005734:	ffffd097          	auipc	ra,0xffffd
    80005738:	b28080e7          	jalr	-1240(ra) # 8000225c <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    8000573c:	0284b503          	ld	a0,40(s1)
    80005740:	ffffd097          	auipc	ra,0xffffd
    80005744:	b1c080e7          	jalr	-1252(ra) # 8000225c <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005748:	0084b703          	ld	a4,8(s1)
    8000574c:	0104a783          	lw	a5,16(s1)
    80005750:	00279693          	slli	a3,a5,0x2
    80005754:	00d70733          	add	a4,a4,a3
    80005758:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000575c:	0017879b          	addiw	a5,a5,1
    80005760:	0004a703          	lw	a4,0(s1)
    80005764:	02e7e7bb          	remw	a5,a5,a4
    80005768:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    8000576c:	0284b503          	ld	a0,40(s1)
    80005770:	ffffd097          	auipc	ra,0xffffd
    80005774:	b24080e7          	jalr	-1244(ra) # 80002294 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005778:	0184b503          	ld	a0,24(s1)
    8000577c:	ffffd097          	auipc	ra,0xffffd
    80005780:	b18080e7          	jalr	-1256(ra) # 80002294 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005784:	00090513          	mv	a0,s2
    80005788:	01813083          	ld	ra,24(sp)
    8000578c:	01013403          	ld	s0,16(sp)
    80005790:	00813483          	ld	s1,8(sp)
    80005794:	00013903          	ld	s2,0(sp)
    80005798:	02010113          	addi	sp,sp,32
    8000579c:	00008067          	ret

00000000800057a0 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800057a0:	fe010113          	addi	sp,sp,-32
    800057a4:	00113c23          	sd	ra,24(sp)
    800057a8:	00813823          	sd	s0,16(sp)
    800057ac:	00913423          	sd	s1,8(sp)
    800057b0:	01213023          	sd	s2,0(sp)
    800057b4:	02010413          	addi	s0,sp,32
    800057b8:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800057bc:	02853503          	ld	a0,40(a0)
    800057c0:	ffffd097          	auipc	ra,0xffffd
    800057c4:	a9c080e7          	jalr	-1380(ra) # 8000225c <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    800057c8:	0304b503          	ld	a0,48(s1)
    800057cc:	ffffd097          	auipc	ra,0xffffd
    800057d0:	a90080e7          	jalr	-1392(ra) # 8000225c <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    800057d4:	0144a783          	lw	a5,20(s1)
    800057d8:	0104a903          	lw	s2,16(s1)
    800057dc:	0327ce63          	blt	a5,s2,80005818 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    800057e0:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800057e4:	0304b503          	ld	a0,48(s1)
    800057e8:	ffffd097          	auipc	ra,0xffffd
    800057ec:	aac080e7          	jalr	-1364(ra) # 80002294 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    800057f0:	0284b503          	ld	a0,40(s1)
    800057f4:	ffffd097          	auipc	ra,0xffffd
    800057f8:	aa0080e7          	jalr	-1376(ra) # 80002294 <_ZN9Semaphore6signalEv>

    return ret;
}
    800057fc:	00090513          	mv	a0,s2
    80005800:	01813083          	ld	ra,24(sp)
    80005804:	01013403          	ld	s0,16(sp)
    80005808:	00813483          	ld	s1,8(sp)
    8000580c:	00013903          	ld	s2,0(sp)
    80005810:	02010113          	addi	sp,sp,32
    80005814:	00008067          	ret
        ret = cap - head + tail;
    80005818:	0004a703          	lw	a4,0(s1)
    8000581c:	4127093b          	subw	s2,a4,s2
    80005820:	00f9093b          	addw	s2,s2,a5
    80005824:	fc1ff06f          	j	800057e4 <_ZN9BufferCPP6getCntEv+0x44>

0000000080005828 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005828:	fe010113          	addi	sp,sp,-32
    8000582c:	00113c23          	sd	ra,24(sp)
    80005830:	00813823          	sd	s0,16(sp)
    80005834:	00913423          	sd	s1,8(sp)
    80005838:	02010413          	addi	s0,sp,32
    8000583c:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005840:	00a00513          	li	a0,10
    80005844:	ffffd097          	auipc	ra,0xffffd
    80005848:	b40080e7          	jalr	-1216(ra) # 80002384 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    8000584c:	00004517          	auipc	a0,0x4
    80005850:	a0450513          	addi	a0,a0,-1532 # 80009250 <CONSOLE_STATUS+0x240>
    80005854:	00000097          	auipc	ra,0x0
    80005858:	a0c080e7          	jalr	-1524(ra) # 80005260 <_Z11printStringPKc>
    while (getCnt()) {
    8000585c:	00048513          	mv	a0,s1
    80005860:	00000097          	auipc	ra,0x0
    80005864:	f40080e7          	jalr	-192(ra) # 800057a0 <_ZN9BufferCPP6getCntEv>
    80005868:	02050c63          	beqz	a0,800058a0 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    8000586c:	0084b783          	ld	a5,8(s1)
    80005870:	0104a703          	lw	a4,16(s1)
    80005874:	00271713          	slli	a4,a4,0x2
    80005878:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    8000587c:	0007c503          	lbu	a0,0(a5)
    80005880:	ffffd097          	auipc	ra,0xffffd
    80005884:	b04080e7          	jalr	-1276(ra) # 80002384 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005888:	0104a783          	lw	a5,16(s1)
    8000588c:	0017879b          	addiw	a5,a5,1
    80005890:	0004a703          	lw	a4,0(s1)
    80005894:	02e7e7bb          	remw	a5,a5,a4
    80005898:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    8000589c:	fc1ff06f          	j	8000585c <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800058a0:	02100513          	li	a0,33
    800058a4:	ffffd097          	auipc	ra,0xffffd
    800058a8:	ae0080e7          	jalr	-1312(ra) # 80002384 <_ZN7Console4putcEc>
    Console::putc('\n');
    800058ac:	00a00513          	li	a0,10
    800058b0:	ffffd097          	auipc	ra,0xffffd
    800058b4:	ad4080e7          	jalr	-1324(ra) # 80002384 <_ZN7Console4putcEc>
    mem_free(buffer);
    800058b8:	0084b503          	ld	a0,8(s1)
    800058bc:	ffffc097          	auipc	ra,0xffffc
    800058c0:	9e8080e7          	jalr	-1560(ra) # 800012a4 <_Z8mem_freePv>
    delete itemAvailable;
    800058c4:	0204b503          	ld	a0,32(s1)
    800058c8:	00050863          	beqz	a0,800058d8 <_ZN9BufferCPPD1Ev+0xb0>
    800058cc:	00053783          	ld	a5,0(a0)
    800058d0:	0087b783          	ld	a5,8(a5)
    800058d4:	000780e7          	jalr	a5
    delete spaceAvailable;
    800058d8:	0184b503          	ld	a0,24(s1)
    800058dc:	00050863          	beqz	a0,800058ec <_ZN9BufferCPPD1Ev+0xc4>
    800058e0:	00053783          	ld	a5,0(a0)
    800058e4:	0087b783          	ld	a5,8(a5)
    800058e8:	000780e7          	jalr	a5
    delete mutexTail;
    800058ec:	0304b503          	ld	a0,48(s1)
    800058f0:	00050863          	beqz	a0,80005900 <_ZN9BufferCPPD1Ev+0xd8>
    800058f4:	00053783          	ld	a5,0(a0)
    800058f8:	0087b783          	ld	a5,8(a5)
    800058fc:	000780e7          	jalr	a5
    delete mutexHead;
    80005900:	0284b503          	ld	a0,40(s1)
    80005904:	00050863          	beqz	a0,80005914 <_ZN9BufferCPPD1Ev+0xec>
    80005908:	00053783          	ld	a5,0(a0)
    8000590c:	0087b783          	ld	a5,8(a5)
    80005910:	000780e7          	jalr	a5
}
    80005914:	01813083          	ld	ra,24(sp)
    80005918:	01013403          	ld	s0,16(sp)
    8000591c:	00813483          	ld	s1,8(sp)
    80005920:	02010113          	addi	sp,sp,32
    80005924:	00008067          	ret

0000000080005928 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80005928:	fe010113          	addi	sp,sp,-32
    8000592c:	00113c23          	sd	ra,24(sp)
    80005930:	00813823          	sd	s0,16(sp)
    80005934:	00913423          	sd	s1,8(sp)
    80005938:	01213023          	sd	s2,0(sp)
    8000593c:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80005940:	00004517          	auipc	a0,0x4
    80005944:	92850513          	addi	a0,a0,-1752 # 80009268 <CONSOLE_STATUS+0x258>
    80005948:	00000097          	auipc	ra,0x0
    8000594c:	918080e7          	jalr	-1768(ra) # 80005260 <_Z11printStringPKc>
    int test = getc() - '0';
    80005950:	ffffc097          	auipc	ra,0xffffc
    80005954:	b74080e7          	jalr	-1164(ra) # 800014c4 <_Z4getcv>
    80005958:	0005091b          	sext.w	s2,a0
    8000595c:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80005960:	ffffc097          	auipc	ra,0xffffc
    80005964:	b64080e7          	jalr	-1180(ra) # 800014c4 <_Z4getcv>


    if ((test >= 1 && test <= 2) || test == 7) {
    80005968:	fcf9071b          	addiw	a4,s2,-49
    8000596c:	00100793          	li	a5,1
    80005970:	04e7f063          	bgeu	a5,a4,800059b0 <_Z8userMainv+0x88>
    80005974:	00700793          	li	a5,7
    80005978:	02f48c63          	beq	s1,a5,800059b0 <_Z8userMainv+0x88>
            printString("Nije navedeno da je zadatak 2 implementiran\n");
            return;
        }
    }

    if (test >= 3 && test <= 4) {
    8000597c:	fcd9079b          	addiw	a5,s2,-51
    80005980:	00100693          	li	a3,1
    80005984:	04f6fa63          	bgeu	a3,a5,800059d8 <_Z8userMainv+0xb0>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    80005988:	fcb9091b          	addiw	s2,s2,-53
    8000598c:	00100793          	li	a5,1
    80005990:	0527fe63          	bgeu	a5,s2,800059ec <_Z8userMainv+0xc4>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80005994:	00600793          	li	a5,6
    80005998:	02e7f463          	bgeu	a5,a4,800059c0 <_Z8userMainv+0x98>
            printString("Test se nije uspesno zavrsio\n");
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    8000599c:	00004517          	auipc	a0,0x4
    800059a0:	97c50513          	addi	a0,a0,-1668 # 80009318 <CONSOLE_STATUS+0x308>
    800059a4:	00000097          	auipc	ra,0x0
    800059a8:	8bc080e7          	jalr	-1860(ra) # 80005260 <_Z11printStringPKc>
    800059ac:	0140006f          	j	800059c0 <_Z8userMainv+0x98>
            printString("Nije navedeno da je zadatak 2 implementiran\n");
    800059b0:	00004517          	auipc	a0,0x4
    800059b4:	8d850513          	addi	a0,a0,-1832 # 80009288 <CONSOLE_STATUS+0x278>
    800059b8:	00000097          	auipc	ra,0x0
    800059bc:	8a8080e7          	jalr	-1880(ra) # 80005260 <_Z11printStringPKc>
    }
    800059c0:	01813083          	ld	ra,24(sp)
    800059c4:	01013403          	ld	s0,16(sp)
    800059c8:	00813483          	ld	s1,8(sp)
    800059cc:	00013903          	ld	s2,0(sp)
    800059d0:	02010113          	addi	sp,sp,32
    800059d4:	00008067          	ret
            printString("Nije navedeno da je zadatak 3 implementiran\n");
    800059d8:	00004517          	auipc	a0,0x4
    800059dc:	8e050513          	addi	a0,a0,-1824 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800059e0:	00000097          	auipc	ra,0x0
    800059e4:	880080e7          	jalr	-1920(ra) # 80005260 <_Z11printStringPKc>
            return;
    800059e8:	fd9ff06f          	j	800059c0 <_Z8userMainv+0x98>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    800059ec:	00004517          	auipc	a0,0x4
    800059f0:	8fc50513          	addi	a0,a0,-1796 # 800092e8 <CONSOLE_STATUS+0x2d8>
    800059f4:	00000097          	auipc	ra,0x0
    800059f8:	86c080e7          	jalr	-1940(ra) # 80005260 <_Z11printStringPKc>
            return;
    800059fc:	fc5ff06f          	j	800059c0 <_Z8userMainv+0x98>

0000000080005a00 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80005a00:	fe010113          	addi	sp,sp,-32
    80005a04:	00113c23          	sd	ra,24(sp)
    80005a08:	00813823          	sd	s0,16(sp)
    80005a0c:	00913423          	sd	s1,8(sp)
    80005a10:	01213023          	sd	s2,0(sp)
    80005a14:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005a18:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005a1c:	00600493          	li	s1,6
    while (--i > 0) {
    80005a20:	fff4849b          	addiw	s1,s1,-1
    80005a24:	04905463          	blez	s1,80005a6c <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80005a28:	00004517          	auipc	a0,0x4
    80005a2c:	91850513          	addi	a0,a0,-1768 # 80009340 <CONSOLE_STATUS+0x330>
    80005a30:	00000097          	auipc	ra,0x0
    80005a34:	830080e7          	jalr	-2000(ra) # 80005260 <_Z11printStringPKc>
        printInt(sleep_time);
    80005a38:	00000613          	li	a2,0
    80005a3c:	00a00593          	li	a1,10
    80005a40:	0009051b          	sext.w	a0,s2
    80005a44:	00000097          	auipc	ra,0x0
    80005a48:	9cc080e7          	jalr	-1588(ra) # 80005410 <_Z8printIntiii>
        printString(" !\n");
    80005a4c:	00004517          	auipc	a0,0x4
    80005a50:	8fc50513          	addi	a0,a0,-1796 # 80009348 <CONSOLE_STATUS+0x338>
    80005a54:	00000097          	auipc	ra,0x0
    80005a58:	80c080e7          	jalr	-2036(ra) # 80005260 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005a5c:	00090513          	mv	a0,s2
    80005a60:	ffffc097          	auipc	ra,0xffffc
    80005a64:	a48080e7          	jalr	-1464(ra) # 800014a8 <_Z10time_sleepm>
    while (--i > 0) {
    80005a68:	fb9ff06f          	j	80005a20 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005a6c:	00a00793          	li	a5,10
    80005a70:	02f95933          	divu	s2,s2,a5
    80005a74:	fff90913          	addi	s2,s2,-1
    80005a78:	00006797          	auipc	a5,0x6
    80005a7c:	e6078793          	addi	a5,a5,-416 # 8000b8d8 <_ZL8finished>
    80005a80:	01278933          	add	s2,a5,s2
    80005a84:	00100793          	li	a5,1
    80005a88:	00f90023          	sb	a5,0(s2)
}
    80005a8c:	01813083          	ld	ra,24(sp)
    80005a90:	01013403          	ld	s0,16(sp)
    80005a94:	00813483          	ld	s1,8(sp)
    80005a98:	00013903          	ld	s2,0(sp)
    80005a9c:	02010113          	addi	sp,sp,32
    80005aa0:	00008067          	ret

0000000080005aa4 <_Z12testSleepingv>:

void testSleeping() {
    80005aa4:	fc010113          	addi	sp,sp,-64
    80005aa8:	02113c23          	sd	ra,56(sp)
    80005aac:	02813823          	sd	s0,48(sp)
    80005ab0:	02913423          	sd	s1,40(sp)
    80005ab4:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005ab8:	00a00793          	li	a5,10
    80005abc:	fcf43823          	sd	a5,-48(s0)
    80005ac0:	01400793          	li	a5,20
    80005ac4:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005ac8:	00000493          	li	s1,0
    80005acc:	02c0006f          	j	80005af8 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005ad0:	00349793          	slli	a5,s1,0x3
    80005ad4:	fd040613          	addi	a2,s0,-48
    80005ad8:	00f60633          	add	a2,a2,a5
    80005adc:	00000597          	auipc	a1,0x0
    80005ae0:	f2458593          	addi	a1,a1,-220 # 80005a00 <_ZL9sleepyRunPv>
    80005ae4:	fc040513          	addi	a0,s0,-64
    80005ae8:	00f50533          	add	a0,a0,a5
    80005aec:	ffffc097          	auipc	ra,0xffffc
    80005af0:	804080e7          	jalr	-2044(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005af4:	0014849b          	addiw	s1,s1,1
    80005af8:	00100793          	li	a5,1
    80005afc:	fc97dae3          	bge	a5,s1,80005ad0 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80005b00:	00006797          	auipc	a5,0x6
    80005b04:	dd87c783          	lbu	a5,-552(a5) # 8000b8d8 <_ZL8finished>
    80005b08:	fe078ce3          	beqz	a5,80005b00 <_Z12testSleepingv+0x5c>
    80005b0c:	00006797          	auipc	a5,0x6
    80005b10:	dcd7c783          	lbu	a5,-563(a5) # 8000b8d9 <_ZL8finished+0x1>
    80005b14:	fe0786e3          	beqz	a5,80005b00 <_Z12testSleepingv+0x5c>
}
    80005b18:	03813083          	ld	ra,56(sp)
    80005b1c:	03013403          	ld	s0,48(sp)
    80005b20:	02813483          	ld	s1,40(sp)
    80005b24:	04010113          	addi	sp,sp,64
    80005b28:	00008067          	ret

0000000080005b2c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005b2c:	fe010113          	addi	sp,sp,-32
    80005b30:	00113c23          	sd	ra,24(sp)
    80005b34:	00813823          	sd	s0,16(sp)
    80005b38:	00913423          	sd	s1,8(sp)
    80005b3c:	01213023          	sd	s2,0(sp)
    80005b40:	02010413          	addi	s0,sp,32
    80005b44:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005b48:	00100793          	li	a5,1
    80005b4c:	02a7f863          	bgeu	a5,a0,80005b7c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005b50:	00a00793          	li	a5,10
    80005b54:	02f577b3          	remu	a5,a0,a5
    80005b58:	02078e63          	beqz	a5,80005b94 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005b5c:	fff48513          	addi	a0,s1,-1
    80005b60:	00000097          	auipc	ra,0x0
    80005b64:	fcc080e7          	jalr	-52(ra) # 80005b2c <_ZL9fibonaccim>
    80005b68:	00050913          	mv	s2,a0
    80005b6c:	ffe48513          	addi	a0,s1,-2
    80005b70:	00000097          	auipc	ra,0x0
    80005b74:	fbc080e7          	jalr	-68(ra) # 80005b2c <_ZL9fibonaccim>
    80005b78:	00a90533          	add	a0,s2,a0
}
    80005b7c:	01813083          	ld	ra,24(sp)
    80005b80:	01013403          	ld	s0,16(sp)
    80005b84:	00813483          	ld	s1,8(sp)
    80005b88:	00013903          	ld	s2,0(sp)
    80005b8c:	02010113          	addi	sp,sp,32
    80005b90:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005b94:	ffffc097          	auipc	ra,0xffffc
    80005b98:	830080e7          	jalr	-2000(ra) # 800013c4 <_Z15thread_dispatchv>
    80005b9c:	fc1ff06f          	j	80005b5c <_ZL9fibonaccim+0x30>

0000000080005ba0 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005ba0:	fe010113          	addi	sp,sp,-32
    80005ba4:	00113c23          	sd	ra,24(sp)
    80005ba8:	00813823          	sd	s0,16(sp)
    80005bac:	00913423          	sd	s1,8(sp)
    80005bb0:	01213023          	sd	s2,0(sp)
    80005bb4:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005bb8:	00a00493          	li	s1,10
    80005bbc:	0400006f          	j	80005bfc <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005bc0:	00003517          	auipc	a0,0x3
    80005bc4:	5f850513          	addi	a0,a0,1528 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80005bc8:	fffff097          	auipc	ra,0xfffff
    80005bcc:	698080e7          	jalr	1688(ra) # 80005260 <_Z11printStringPKc>
    80005bd0:	00000613          	li	a2,0
    80005bd4:	00a00593          	li	a1,10
    80005bd8:	00048513          	mv	a0,s1
    80005bdc:	00000097          	auipc	ra,0x0
    80005be0:	834080e7          	jalr	-1996(ra) # 80005410 <_Z8printIntiii>
    80005be4:	00003517          	auipc	a0,0x3
    80005be8:	4c450513          	addi	a0,a0,1220 # 800090a8 <CONSOLE_STATUS+0x98>
    80005bec:	fffff097          	auipc	ra,0xfffff
    80005bf0:	674080e7          	jalr	1652(ra) # 80005260 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005bf4:	0014849b          	addiw	s1,s1,1
    80005bf8:	0ff4f493          	andi	s1,s1,255
    80005bfc:	00c00793          	li	a5,12
    80005c00:	fc97f0e3          	bgeu	a5,s1,80005bc0 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005c04:	00003517          	auipc	a0,0x3
    80005c08:	5bc50513          	addi	a0,a0,1468 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80005c0c:	fffff097          	auipc	ra,0xfffff
    80005c10:	654080e7          	jalr	1620(ra) # 80005260 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005c14:	00500313          	li	t1,5
    thread_dispatch();
    80005c18:	ffffb097          	auipc	ra,0xffffb
    80005c1c:	7ac080e7          	jalr	1964(ra) # 800013c4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005c20:	01000513          	li	a0,16
    80005c24:	00000097          	auipc	ra,0x0
    80005c28:	f08080e7          	jalr	-248(ra) # 80005b2c <_ZL9fibonaccim>
    80005c2c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005c30:	00003517          	auipc	a0,0x3
    80005c34:	5a050513          	addi	a0,a0,1440 # 800091d0 <CONSOLE_STATUS+0x1c0>
    80005c38:	fffff097          	auipc	ra,0xfffff
    80005c3c:	628080e7          	jalr	1576(ra) # 80005260 <_Z11printStringPKc>
    80005c40:	00000613          	li	a2,0
    80005c44:	00a00593          	li	a1,10
    80005c48:	0009051b          	sext.w	a0,s2
    80005c4c:	fffff097          	auipc	ra,0xfffff
    80005c50:	7c4080e7          	jalr	1988(ra) # 80005410 <_Z8printIntiii>
    80005c54:	00003517          	auipc	a0,0x3
    80005c58:	45450513          	addi	a0,a0,1108 # 800090a8 <CONSOLE_STATUS+0x98>
    80005c5c:	fffff097          	auipc	ra,0xfffff
    80005c60:	604080e7          	jalr	1540(ra) # 80005260 <_Z11printStringPKc>
    80005c64:	0400006f          	j	80005ca4 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005c68:	00003517          	auipc	a0,0x3
    80005c6c:	55050513          	addi	a0,a0,1360 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80005c70:	fffff097          	auipc	ra,0xfffff
    80005c74:	5f0080e7          	jalr	1520(ra) # 80005260 <_Z11printStringPKc>
    80005c78:	00000613          	li	a2,0
    80005c7c:	00a00593          	li	a1,10
    80005c80:	00048513          	mv	a0,s1
    80005c84:	fffff097          	auipc	ra,0xfffff
    80005c88:	78c080e7          	jalr	1932(ra) # 80005410 <_Z8printIntiii>
    80005c8c:	00003517          	auipc	a0,0x3
    80005c90:	41c50513          	addi	a0,a0,1052 # 800090a8 <CONSOLE_STATUS+0x98>
    80005c94:	fffff097          	auipc	ra,0xfffff
    80005c98:	5cc080e7          	jalr	1484(ra) # 80005260 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005c9c:	0014849b          	addiw	s1,s1,1
    80005ca0:	0ff4f493          	andi	s1,s1,255
    80005ca4:	00f00793          	li	a5,15
    80005ca8:	fc97f0e3          	bgeu	a5,s1,80005c68 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005cac:	00003517          	auipc	a0,0x3
    80005cb0:	53450513          	addi	a0,a0,1332 # 800091e0 <CONSOLE_STATUS+0x1d0>
    80005cb4:	fffff097          	auipc	ra,0xfffff
    80005cb8:	5ac080e7          	jalr	1452(ra) # 80005260 <_Z11printStringPKc>
    finishedD = true;
    80005cbc:	00100793          	li	a5,1
    80005cc0:	00006717          	auipc	a4,0x6
    80005cc4:	c0f70d23          	sb	a5,-998(a4) # 8000b8da <_ZL9finishedD>
    thread_dispatch();
    80005cc8:	ffffb097          	auipc	ra,0xffffb
    80005ccc:	6fc080e7          	jalr	1788(ra) # 800013c4 <_Z15thread_dispatchv>
}
    80005cd0:	01813083          	ld	ra,24(sp)
    80005cd4:	01013403          	ld	s0,16(sp)
    80005cd8:	00813483          	ld	s1,8(sp)
    80005cdc:	00013903          	ld	s2,0(sp)
    80005ce0:	02010113          	addi	sp,sp,32
    80005ce4:	00008067          	ret

0000000080005ce8 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005ce8:	fe010113          	addi	sp,sp,-32
    80005cec:	00113c23          	sd	ra,24(sp)
    80005cf0:	00813823          	sd	s0,16(sp)
    80005cf4:	00913423          	sd	s1,8(sp)
    80005cf8:	01213023          	sd	s2,0(sp)
    80005cfc:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005d00:	00000493          	li	s1,0
    80005d04:	0400006f          	j	80005d44 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005d08:	00003517          	auipc	a0,0x3
    80005d0c:	48050513          	addi	a0,a0,1152 # 80009188 <CONSOLE_STATUS+0x178>
    80005d10:	fffff097          	auipc	ra,0xfffff
    80005d14:	550080e7          	jalr	1360(ra) # 80005260 <_Z11printStringPKc>
    80005d18:	00000613          	li	a2,0
    80005d1c:	00a00593          	li	a1,10
    80005d20:	00048513          	mv	a0,s1
    80005d24:	fffff097          	auipc	ra,0xfffff
    80005d28:	6ec080e7          	jalr	1772(ra) # 80005410 <_Z8printIntiii>
    80005d2c:	00003517          	auipc	a0,0x3
    80005d30:	37c50513          	addi	a0,a0,892 # 800090a8 <CONSOLE_STATUS+0x98>
    80005d34:	fffff097          	auipc	ra,0xfffff
    80005d38:	52c080e7          	jalr	1324(ra) # 80005260 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005d3c:	0014849b          	addiw	s1,s1,1
    80005d40:	0ff4f493          	andi	s1,s1,255
    80005d44:	00200793          	li	a5,2
    80005d48:	fc97f0e3          	bgeu	a5,s1,80005d08 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005d4c:	00003517          	auipc	a0,0x3
    80005d50:	44450513          	addi	a0,a0,1092 # 80009190 <CONSOLE_STATUS+0x180>
    80005d54:	fffff097          	auipc	ra,0xfffff
    80005d58:	50c080e7          	jalr	1292(ra) # 80005260 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005d5c:	00700313          	li	t1,7
    thread_dispatch();
    80005d60:	ffffb097          	auipc	ra,0xffffb
    80005d64:	664080e7          	jalr	1636(ra) # 800013c4 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005d68:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005d6c:	00003517          	auipc	a0,0x3
    80005d70:	43450513          	addi	a0,a0,1076 # 800091a0 <CONSOLE_STATUS+0x190>
    80005d74:	fffff097          	auipc	ra,0xfffff
    80005d78:	4ec080e7          	jalr	1260(ra) # 80005260 <_Z11printStringPKc>
    80005d7c:	00000613          	li	a2,0
    80005d80:	00a00593          	li	a1,10
    80005d84:	0009051b          	sext.w	a0,s2
    80005d88:	fffff097          	auipc	ra,0xfffff
    80005d8c:	688080e7          	jalr	1672(ra) # 80005410 <_Z8printIntiii>
    80005d90:	00003517          	auipc	a0,0x3
    80005d94:	31850513          	addi	a0,a0,792 # 800090a8 <CONSOLE_STATUS+0x98>
    80005d98:	fffff097          	auipc	ra,0xfffff
    80005d9c:	4c8080e7          	jalr	1224(ra) # 80005260 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005da0:	00c00513          	li	a0,12
    80005da4:	00000097          	auipc	ra,0x0
    80005da8:	d88080e7          	jalr	-632(ra) # 80005b2c <_ZL9fibonaccim>
    80005dac:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005db0:	00003517          	auipc	a0,0x3
    80005db4:	3f850513          	addi	a0,a0,1016 # 800091a8 <CONSOLE_STATUS+0x198>
    80005db8:	fffff097          	auipc	ra,0xfffff
    80005dbc:	4a8080e7          	jalr	1192(ra) # 80005260 <_Z11printStringPKc>
    80005dc0:	00000613          	li	a2,0
    80005dc4:	00a00593          	li	a1,10
    80005dc8:	0009051b          	sext.w	a0,s2
    80005dcc:	fffff097          	auipc	ra,0xfffff
    80005dd0:	644080e7          	jalr	1604(ra) # 80005410 <_Z8printIntiii>
    80005dd4:	00003517          	auipc	a0,0x3
    80005dd8:	2d450513          	addi	a0,a0,724 # 800090a8 <CONSOLE_STATUS+0x98>
    80005ddc:	fffff097          	auipc	ra,0xfffff
    80005de0:	484080e7          	jalr	1156(ra) # 80005260 <_Z11printStringPKc>
    80005de4:	0400006f          	j	80005e24 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005de8:	00003517          	auipc	a0,0x3
    80005dec:	3a050513          	addi	a0,a0,928 # 80009188 <CONSOLE_STATUS+0x178>
    80005df0:	fffff097          	auipc	ra,0xfffff
    80005df4:	470080e7          	jalr	1136(ra) # 80005260 <_Z11printStringPKc>
    80005df8:	00000613          	li	a2,0
    80005dfc:	00a00593          	li	a1,10
    80005e00:	00048513          	mv	a0,s1
    80005e04:	fffff097          	auipc	ra,0xfffff
    80005e08:	60c080e7          	jalr	1548(ra) # 80005410 <_Z8printIntiii>
    80005e0c:	00003517          	auipc	a0,0x3
    80005e10:	29c50513          	addi	a0,a0,668 # 800090a8 <CONSOLE_STATUS+0x98>
    80005e14:	fffff097          	auipc	ra,0xfffff
    80005e18:	44c080e7          	jalr	1100(ra) # 80005260 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005e1c:	0014849b          	addiw	s1,s1,1
    80005e20:	0ff4f493          	andi	s1,s1,255
    80005e24:	00500793          	li	a5,5
    80005e28:	fc97f0e3          	bgeu	a5,s1,80005de8 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80005e2c:	00003517          	auipc	a0,0x3
    80005e30:	33450513          	addi	a0,a0,820 # 80009160 <CONSOLE_STATUS+0x150>
    80005e34:	fffff097          	auipc	ra,0xfffff
    80005e38:	42c080e7          	jalr	1068(ra) # 80005260 <_Z11printStringPKc>
    finishedC = true;
    80005e3c:	00100793          	li	a5,1
    80005e40:	00006717          	auipc	a4,0x6
    80005e44:	a8f70da3          	sb	a5,-1381(a4) # 8000b8db <_ZL9finishedC>
    thread_dispatch();
    80005e48:	ffffb097          	auipc	ra,0xffffb
    80005e4c:	57c080e7          	jalr	1404(ra) # 800013c4 <_Z15thread_dispatchv>
}
    80005e50:	01813083          	ld	ra,24(sp)
    80005e54:	01013403          	ld	s0,16(sp)
    80005e58:	00813483          	ld	s1,8(sp)
    80005e5c:	00013903          	ld	s2,0(sp)
    80005e60:	02010113          	addi	sp,sp,32
    80005e64:	00008067          	ret

0000000080005e68 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005e68:	fe010113          	addi	sp,sp,-32
    80005e6c:	00113c23          	sd	ra,24(sp)
    80005e70:	00813823          	sd	s0,16(sp)
    80005e74:	00913423          	sd	s1,8(sp)
    80005e78:	01213023          	sd	s2,0(sp)
    80005e7c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005e80:	00000913          	li	s2,0
    80005e84:	0400006f          	j	80005ec4 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80005e88:	ffffb097          	auipc	ra,0xffffb
    80005e8c:	53c080e7          	jalr	1340(ra) # 800013c4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005e90:	00148493          	addi	s1,s1,1
    80005e94:	000027b7          	lui	a5,0x2
    80005e98:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005e9c:	0097ee63          	bltu	a5,s1,80005eb8 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005ea0:	00000713          	li	a4,0
    80005ea4:	000077b7          	lui	a5,0x7
    80005ea8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005eac:	fce7eee3          	bltu	a5,a4,80005e88 <_ZL11workerBodyBPv+0x20>
    80005eb0:	00170713          	addi	a4,a4,1
    80005eb4:	ff1ff06f          	j	80005ea4 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80005eb8:	00a00793          	li	a5,10
    80005ebc:	04f90663          	beq	s2,a5,80005f08 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80005ec0:	00190913          	addi	s2,s2,1
    80005ec4:	00f00793          	li	a5,15
    80005ec8:	0527e463          	bltu	a5,s2,80005f10 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80005ecc:	00003517          	auipc	a0,0x3
    80005ed0:	2a450513          	addi	a0,a0,676 # 80009170 <CONSOLE_STATUS+0x160>
    80005ed4:	fffff097          	auipc	ra,0xfffff
    80005ed8:	38c080e7          	jalr	908(ra) # 80005260 <_Z11printStringPKc>
    80005edc:	00000613          	li	a2,0
    80005ee0:	00a00593          	li	a1,10
    80005ee4:	0009051b          	sext.w	a0,s2
    80005ee8:	fffff097          	auipc	ra,0xfffff
    80005eec:	528080e7          	jalr	1320(ra) # 80005410 <_Z8printIntiii>
    80005ef0:	00003517          	auipc	a0,0x3
    80005ef4:	1b850513          	addi	a0,a0,440 # 800090a8 <CONSOLE_STATUS+0x98>
    80005ef8:	fffff097          	auipc	ra,0xfffff
    80005efc:	368080e7          	jalr	872(ra) # 80005260 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005f00:	00000493          	li	s1,0
    80005f04:	f91ff06f          	j	80005e94 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80005f08:	14102ff3          	csrr	t6,sepc
    80005f0c:	fb5ff06f          	j	80005ec0 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80005f10:	00003517          	auipc	a0,0x3
    80005f14:	26850513          	addi	a0,a0,616 # 80009178 <CONSOLE_STATUS+0x168>
    80005f18:	fffff097          	auipc	ra,0xfffff
    80005f1c:	348080e7          	jalr	840(ra) # 80005260 <_Z11printStringPKc>
    finishedB = true;
    80005f20:	00100793          	li	a5,1
    80005f24:	00006717          	auipc	a4,0x6
    80005f28:	9af70c23          	sb	a5,-1608(a4) # 8000b8dc <_ZL9finishedB>
    thread_dispatch();
    80005f2c:	ffffb097          	auipc	ra,0xffffb
    80005f30:	498080e7          	jalr	1176(ra) # 800013c4 <_Z15thread_dispatchv>
}
    80005f34:	01813083          	ld	ra,24(sp)
    80005f38:	01013403          	ld	s0,16(sp)
    80005f3c:	00813483          	ld	s1,8(sp)
    80005f40:	00013903          	ld	s2,0(sp)
    80005f44:	02010113          	addi	sp,sp,32
    80005f48:	00008067          	ret

0000000080005f4c <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005f4c:	fe010113          	addi	sp,sp,-32
    80005f50:	00113c23          	sd	ra,24(sp)
    80005f54:	00813823          	sd	s0,16(sp)
    80005f58:	00913423          	sd	s1,8(sp)
    80005f5c:	01213023          	sd	s2,0(sp)
    80005f60:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005f64:	00000913          	li	s2,0
    80005f68:	0380006f          	j	80005fa0 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005f6c:	ffffb097          	auipc	ra,0xffffb
    80005f70:	458080e7          	jalr	1112(ra) # 800013c4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005f74:	00148493          	addi	s1,s1,1
    80005f78:	000027b7          	lui	a5,0x2
    80005f7c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005f80:	0097ee63          	bltu	a5,s1,80005f9c <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005f84:	00000713          	li	a4,0
    80005f88:	000077b7          	lui	a5,0x7
    80005f8c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005f90:	fce7eee3          	bltu	a5,a4,80005f6c <_ZL11workerBodyAPv+0x20>
    80005f94:	00170713          	addi	a4,a4,1
    80005f98:	ff1ff06f          	j	80005f88 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005f9c:	00190913          	addi	s2,s2,1
    80005fa0:	00900793          	li	a5,9
    80005fa4:	0527e063          	bltu	a5,s2,80005fe4 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005fa8:	00003517          	auipc	a0,0x3
    80005fac:	1b050513          	addi	a0,a0,432 # 80009158 <CONSOLE_STATUS+0x148>
    80005fb0:	fffff097          	auipc	ra,0xfffff
    80005fb4:	2b0080e7          	jalr	688(ra) # 80005260 <_Z11printStringPKc>
    80005fb8:	00000613          	li	a2,0
    80005fbc:	00a00593          	li	a1,10
    80005fc0:	0009051b          	sext.w	a0,s2
    80005fc4:	fffff097          	auipc	ra,0xfffff
    80005fc8:	44c080e7          	jalr	1100(ra) # 80005410 <_Z8printIntiii>
    80005fcc:	00003517          	auipc	a0,0x3
    80005fd0:	0dc50513          	addi	a0,a0,220 # 800090a8 <CONSOLE_STATUS+0x98>
    80005fd4:	fffff097          	auipc	ra,0xfffff
    80005fd8:	28c080e7          	jalr	652(ra) # 80005260 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005fdc:	00000493          	li	s1,0
    80005fe0:	f99ff06f          	j	80005f78 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80005fe4:	00003517          	auipc	a0,0x3
    80005fe8:	17c50513          	addi	a0,a0,380 # 80009160 <CONSOLE_STATUS+0x150>
    80005fec:	fffff097          	auipc	ra,0xfffff
    80005ff0:	274080e7          	jalr	628(ra) # 80005260 <_Z11printStringPKc>
    finishedA = true;
    80005ff4:	00100793          	li	a5,1
    80005ff8:	00006717          	auipc	a4,0x6
    80005ffc:	8ef702a3          	sb	a5,-1819(a4) # 8000b8dd <_ZL9finishedA>
}
    80006000:	01813083          	ld	ra,24(sp)
    80006004:	01013403          	ld	s0,16(sp)
    80006008:	00813483          	ld	s1,8(sp)
    8000600c:	00013903          	ld	s2,0(sp)
    80006010:	02010113          	addi	sp,sp,32
    80006014:	00008067          	ret

0000000080006018 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006018:	fd010113          	addi	sp,sp,-48
    8000601c:	02113423          	sd	ra,40(sp)
    80006020:	02813023          	sd	s0,32(sp)
    80006024:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006028:	00000613          	li	a2,0
    8000602c:	00000597          	auipc	a1,0x0
    80006030:	f2058593          	addi	a1,a1,-224 # 80005f4c <_ZL11workerBodyAPv>
    80006034:	fd040513          	addi	a0,s0,-48
    80006038:	ffffb097          	auipc	ra,0xffffb
    8000603c:	2b8080e7          	jalr	696(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80006040:	00003517          	auipc	a0,0x3
    80006044:	1b050513          	addi	a0,a0,432 # 800091f0 <CONSOLE_STATUS+0x1e0>
    80006048:	fffff097          	auipc	ra,0xfffff
    8000604c:	218080e7          	jalr	536(ra) # 80005260 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80006050:	00000613          	li	a2,0
    80006054:	00000597          	auipc	a1,0x0
    80006058:	e1458593          	addi	a1,a1,-492 # 80005e68 <_ZL11workerBodyBPv>
    8000605c:	fd840513          	addi	a0,s0,-40
    80006060:	ffffb097          	auipc	ra,0xffffb
    80006064:	290080e7          	jalr	656(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80006068:	00003517          	auipc	a0,0x3
    8000606c:	1a050513          	addi	a0,a0,416 # 80009208 <CONSOLE_STATUS+0x1f8>
    80006070:	fffff097          	auipc	ra,0xfffff
    80006074:	1f0080e7          	jalr	496(ra) # 80005260 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006078:	00000613          	li	a2,0
    8000607c:	00000597          	auipc	a1,0x0
    80006080:	c6c58593          	addi	a1,a1,-916 # 80005ce8 <_ZL11workerBodyCPv>
    80006084:	fe040513          	addi	a0,s0,-32
    80006088:	ffffb097          	auipc	ra,0xffffb
    8000608c:	268080e7          	jalr	616(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80006090:	00003517          	auipc	a0,0x3
    80006094:	19050513          	addi	a0,a0,400 # 80009220 <CONSOLE_STATUS+0x210>
    80006098:	fffff097          	auipc	ra,0xfffff
    8000609c:	1c8080e7          	jalr	456(ra) # 80005260 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800060a0:	00000613          	li	a2,0
    800060a4:	00000597          	auipc	a1,0x0
    800060a8:	afc58593          	addi	a1,a1,-1284 # 80005ba0 <_ZL11workerBodyDPv>
    800060ac:	fe840513          	addi	a0,s0,-24
    800060b0:	ffffb097          	auipc	ra,0xffffb
    800060b4:	240080e7          	jalr	576(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    800060b8:	00003517          	auipc	a0,0x3
    800060bc:	18050513          	addi	a0,a0,384 # 80009238 <CONSOLE_STATUS+0x228>
    800060c0:	fffff097          	auipc	ra,0xfffff
    800060c4:	1a0080e7          	jalr	416(ra) # 80005260 <_Z11printStringPKc>
    800060c8:	00c0006f          	j	800060d4 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800060cc:	ffffb097          	auipc	ra,0xffffb
    800060d0:	2f8080e7          	jalr	760(ra) # 800013c4 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800060d4:	00006797          	auipc	a5,0x6
    800060d8:	8097c783          	lbu	a5,-2039(a5) # 8000b8dd <_ZL9finishedA>
    800060dc:	fe0788e3          	beqz	a5,800060cc <_Z16System_Mode_testv+0xb4>
    800060e0:	00005797          	auipc	a5,0x5
    800060e4:	7fc7c783          	lbu	a5,2044(a5) # 8000b8dc <_ZL9finishedB>
    800060e8:	fe0782e3          	beqz	a5,800060cc <_Z16System_Mode_testv+0xb4>
    800060ec:	00005797          	auipc	a5,0x5
    800060f0:	7ef7c783          	lbu	a5,2031(a5) # 8000b8db <_ZL9finishedC>
    800060f4:	fc078ce3          	beqz	a5,800060cc <_Z16System_Mode_testv+0xb4>
    800060f8:	00005797          	auipc	a5,0x5
    800060fc:	7e27c783          	lbu	a5,2018(a5) # 8000b8da <_ZL9finishedD>
    80006100:	fc0786e3          	beqz	a5,800060cc <_Z16System_Mode_testv+0xb4>
    }

}
    80006104:	02813083          	ld	ra,40(sp)
    80006108:	02013403          	ld	s0,32(sp)
    8000610c:	03010113          	addi	sp,sp,48
    80006110:	00008067          	ret

0000000080006114 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006114:	fe010113          	addi	sp,sp,-32
    80006118:	00113c23          	sd	ra,24(sp)
    8000611c:	00813823          	sd	s0,16(sp)
    80006120:	00913423          	sd	s1,8(sp)
    80006124:	01213023          	sd	s2,0(sp)
    80006128:	02010413          	addi	s0,sp,32
    8000612c:	00050493          	mv	s1,a0
    80006130:	00058913          	mv	s2,a1
    80006134:	0015879b          	addiw	a5,a1,1
    80006138:	0007851b          	sext.w	a0,a5
    8000613c:	00f4a023          	sw	a5,0(s1)
    80006140:	0004a823          	sw	zero,16(s1)
    80006144:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006148:	00251513          	slli	a0,a0,0x2
    8000614c:	ffffb097          	auipc	ra,0xffffb
    80006150:	104080e7          	jalr	260(ra) # 80001250 <_Z9mem_allocm>
    80006154:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006158:	00000593          	li	a1,0
    8000615c:	02048513          	addi	a0,s1,32
    80006160:	ffffb097          	auipc	ra,0xffffb
    80006164:	2a0080e7          	jalr	672(ra) # 80001400 <_Z8sem_openPP3Semj>
    sem_open(&spaceAvailable, _cap);
    80006168:	00090593          	mv	a1,s2
    8000616c:	01848513          	addi	a0,s1,24
    80006170:	ffffb097          	auipc	ra,0xffffb
    80006174:	290080e7          	jalr	656(ra) # 80001400 <_Z8sem_openPP3Semj>
    sem_open(&mutexHead, 1);
    80006178:	00100593          	li	a1,1
    8000617c:	02848513          	addi	a0,s1,40
    80006180:	ffffb097          	auipc	ra,0xffffb
    80006184:	280080e7          	jalr	640(ra) # 80001400 <_Z8sem_openPP3Semj>
    sem_open(&mutexTail, 1);
    80006188:	00100593          	li	a1,1
    8000618c:	03048513          	addi	a0,s1,48
    80006190:	ffffb097          	auipc	ra,0xffffb
    80006194:	270080e7          	jalr	624(ra) # 80001400 <_Z8sem_openPP3Semj>
}
    80006198:	01813083          	ld	ra,24(sp)
    8000619c:	01013403          	ld	s0,16(sp)
    800061a0:	00813483          	ld	s1,8(sp)
    800061a4:	00013903          	ld	s2,0(sp)
    800061a8:	02010113          	addi	sp,sp,32
    800061ac:	00008067          	ret

00000000800061b0 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    800061b0:	fe010113          	addi	sp,sp,-32
    800061b4:	00113c23          	sd	ra,24(sp)
    800061b8:	00813823          	sd	s0,16(sp)
    800061bc:	00913423          	sd	s1,8(sp)
    800061c0:	01213023          	sd	s2,0(sp)
    800061c4:	02010413          	addi	s0,sp,32
    800061c8:	00050493          	mv	s1,a0
    800061cc:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800061d0:	01853503          	ld	a0,24(a0)
    800061d4:	ffffb097          	auipc	ra,0xffffb
    800061d8:	264080e7          	jalr	612(ra) # 80001438 <_Z8sem_waitP3Sem>

    sem_wait(mutexTail);
    800061dc:	0304b503          	ld	a0,48(s1)
    800061e0:	ffffb097          	auipc	ra,0xffffb
    800061e4:	258080e7          	jalr	600(ra) # 80001438 <_Z8sem_waitP3Sem>
    buffer[tail] = val;
    800061e8:	0084b783          	ld	a5,8(s1)
    800061ec:	0144a703          	lw	a4,20(s1)
    800061f0:	00271713          	slli	a4,a4,0x2
    800061f4:	00e787b3          	add	a5,a5,a4
    800061f8:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800061fc:	0144a783          	lw	a5,20(s1)
    80006200:	0017879b          	addiw	a5,a5,1
    80006204:	0004a703          	lw	a4,0(s1)
    80006208:	02e7e7bb          	remw	a5,a5,a4
    8000620c:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006210:	0304b503          	ld	a0,48(s1)
    80006214:	ffffb097          	auipc	ra,0xffffb
    80006218:	240080e7          	jalr	576(ra) # 80001454 <_Z10sem_signalP3Sem>

    sem_signal(itemAvailable);
    8000621c:	0204b503          	ld	a0,32(s1)
    80006220:	ffffb097          	auipc	ra,0xffffb
    80006224:	234080e7          	jalr	564(ra) # 80001454 <_Z10sem_signalP3Sem>

}
    80006228:	01813083          	ld	ra,24(sp)
    8000622c:	01013403          	ld	s0,16(sp)
    80006230:	00813483          	ld	s1,8(sp)
    80006234:	00013903          	ld	s2,0(sp)
    80006238:	02010113          	addi	sp,sp,32
    8000623c:	00008067          	ret

0000000080006240 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006240:	fe010113          	addi	sp,sp,-32
    80006244:	00113c23          	sd	ra,24(sp)
    80006248:	00813823          	sd	s0,16(sp)
    8000624c:	00913423          	sd	s1,8(sp)
    80006250:	01213023          	sd	s2,0(sp)
    80006254:	02010413          	addi	s0,sp,32
    80006258:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    8000625c:	02053503          	ld	a0,32(a0)
    80006260:	ffffb097          	auipc	ra,0xffffb
    80006264:	1d8080e7          	jalr	472(ra) # 80001438 <_Z8sem_waitP3Sem>

    sem_wait(mutexHead);
    80006268:	0284b503          	ld	a0,40(s1)
    8000626c:	ffffb097          	auipc	ra,0xffffb
    80006270:	1cc080e7          	jalr	460(ra) # 80001438 <_Z8sem_waitP3Sem>

    int ret = buffer[head];
    80006274:	0084b703          	ld	a4,8(s1)
    80006278:	0104a783          	lw	a5,16(s1)
    8000627c:	00279693          	slli	a3,a5,0x2
    80006280:	00d70733          	add	a4,a4,a3
    80006284:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006288:	0017879b          	addiw	a5,a5,1
    8000628c:	0004a703          	lw	a4,0(s1)
    80006290:	02e7e7bb          	remw	a5,a5,a4
    80006294:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006298:	0284b503          	ld	a0,40(s1)
    8000629c:	ffffb097          	auipc	ra,0xffffb
    800062a0:	1b8080e7          	jalr	440(ra) # 80001454 <_Z10sem_signalP3Sem>

    sem_signal(spaceAvailable);
    800062a4:	0184b503          	ld	a0,24(s1)
    800062a8:	ffffb097          	auipc	ra,0xffffb
    800062ac:	1ac080e7          	jalr	428(ra) # 80001454 <_Z10sem_signalP3Sem>

    return ret;
}
    800062b0:	00090513          	mv	a0,s2
    800062b4:	01813083          	ld	ra,24(sp)
    800062b8:	01013403          	ld	s0,16(sp)
    800062bc:	00813483          	ld	s1,8(sp)
    800062c0:	00013903          	ld	s2,0(sp)
    800062c4:	02010113          	addi	sp,sp,32
    800062c8:	00008067          	ret

00000000800062cc <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800062cc:	fe010113          	addi	sp,sp,-32
    800062d0:	00113c23          	sd	ra,24(sp)
    800062d4:	00813823          	sd	s0,16(sp)
    800062d8:	00913423          	sd	s1,8(sp)
    800062dc:	01213023          	sd	s2,0(sp)
    800062e0:	02010413          	addi	s0,sp,32
    800062e4:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800062e8:	02853503          	ld	a0,40(a0)
    800062ec:	ffffb097          	auipc	ra,0xffffb
    800062f0:	14c080e7          	jalr	332(ra) # 80001438 <_Z8sem_waitP3Sem>
    sem_wait(mutexTail);
    800062f4:	0304b503          	ld	a0,48(s1)
    800062f8:	ffffb097          	auipc	ra,0xffffb
    800062fc:	140080e7          	jalr	320(ra) # 80001438 <_Z8sem_waitP3Sem>

    if (tail >= head) {
    80006300:	0144a783          	lw	a5,20(s1)
    80006304:	0104a903          	lw	s2,16(s1)
    80006308:	0327ce63          	blt	a5,s2,80006344 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    8000630c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006310:	0304b503          	ld	a0,48(s1)
    80006314:	ffffb097          	auipc	ra,0xffffb
    80006318:	140080e7          	jalr	320(ra) # 80001454 <_Z10sem_signalP3Sem>
    sem_signal(mutexHead);
    8000631c:	0284b503          	ld	a0,40(s1)
    80006320:	ffffb097          	auipc	ra,0xffffb
    80006324:	134080e7          	jalr	308(ra) # 80001454 <_Z10sem_signalP3Sem>

    return ret;
}
    80006328:	00090513          	mv	a0,s2
    8000632c:	01813083          	ld	ra,24(sp)
    80006330:	01013403          	ld	s0,16(sp)
    80006334:	00813483          	ld	s1,8(sp)
    80006338:	00013903          	ld	s2,0(sp)
    8000633c:	02010113          	addi	sp,sp,32
    80006340:	00008067          	ret
        ret = cap - head + tail;
    80006344:	0004a703          	lw	a4,0(s1)
    80006348:	4127093b          	subw	s2,a4,s2
    8000634c:	00f9093b          	addw	s2,s2,a5
    80006350:	fc1ff06f          	j	80006310 <_ZN6Buffer6getCntEv+0x44>

0000000080006354 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006354:	fe010113          	addi	sp,sp,-32
    80006358:	00113c23          	sd	ra,24(sp)
    8000635c:	00813823          	sd	s0,16(sp)
    80006360:	00913423          	sd	s1,8(sp)
    80006364:	02010413          	addi	s0,sp,32
    80006368:	00050493          	mv	s1,a0
    putc('\n');
    8000636c:	00a00513          	li	a0,10
    80006370:	ffffb097          	auipc	ra,0xffffb
    80006374:	1a0080e7          	jalr	416(ra) # 80001510 <_Z4putcc>
    printString("Buffer deleted!\n");
    80006378:	00003517          	auipc	a0,0x3
    8000637c:	ed850513          	addi	a0,a0,-296 # 80009250 <CONSOLE_STATUS+0x240>
    80006380:	fffff097          	auipc	ra,0xfffff
    80006384:	ee0080e7          	jalr	-288(ra) # 80005260 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006388:	00048513          	mv	a0,s1
    8000638c:	00000097          	auipc	ra,0x0
    80006390:	f40080e7          	jalr	-192(ra) # 800062cc <_ZN6Buffer6getCntEv>
    80006394:	02a05c63          	blez	a0,800063cc <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006398:	0084b783          	ld	a5,8(s1)
    8000639c:	0104a703          	lw	a4,16(s1)
    800063a0:	00271713          	slli	a4,a4,0x2
    800063a4:	00e787b3          	add	a5,a5,a4
        putc(ch);
    800063a8:	0007c503          	lbu	a0,0(a5)
    800063ac:	ffffb097          	auipc	ra,0xffffb
    800063b0:	164080e7          	jalr	356(ra) # 80001510 <_Z4putcc>
        head = (head + 1) % cap;
    800063b4:	0104a783          	lw	a5,16(s1)
    800063b8:	0017879b          	addiw	a5,a5,1
    800063bc:	0004a703          	lw	a4,0(s1)
    800063c0:	02e7e7bb          	remw	a5,a5,a4
    800063c4:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    800063c8:	fc1ff06f          	j	80006388 <_ZN6BufferD1Ev+0x34>
    putc('!');
    800063cc:	02100513          	li	a0,33
    800063d0:	ffffb097          	auipc	ra,0xffffb
    800063d4:	140080e7          	jalr	320(ra) # 80001510 <_Z4putcc>
    putc('\n');
    800063d8:	00a00513          	li	a0,10
    800063dc:	ffffb097          	auipc	ra,0xffffb
    800063e0:	134080e7          	jalr	308(ra) # 80001510 <_Z4putcc>
    mem_free(buffer);
    800063e4:	0084b503          	ld	a0,8(s1)
    800063e8:	ffffb097          	auipc	ra,0xffffb
    800063ec:	ebc080e7          	jalr	-324(ra) # 800012a4 <_Z8mem_freePv>
    sem_close(itemAvailable);
    800063f0:	0204b503          	ld	a0,32(s1)
    800063f4:	ffffb097          	auipc	ra,0xffffb
    800063f8:	028080e7          	jalr	40(ra) # 8000141c <_Z9sem_closeP3Sem>
    sem_close(spaceAvailable);
    800063fc:	0184b503          	ld	a0,24(s1)
    80006400:	ffffb097          	auipc	ra,0xffffb
    80006404:	01c080e7          	jalr	28(ra) # 8000141c <_Z9sem_closeP3Sem>
    sem_close(mutexTail);
    80006408:	0304b503          	ld	a0,48(s1)
    8000640c:	ffffb097          	auipc	ra,0xffffb
    80006410:	010080e7          	jalr	16(ra) # 8000141c <_Z9sem_closeP3Sem>
    sem_close(mutexHead);
    80006414:	0284b503          	ld	a0,40(s1)
    80006418:	ffffb097          	auipc	ra,0xffffb
    8000641c:	004080e7          	jalr	4(ra) # 8000141c <_Z9sem_closeP3Sem>
}
    80006420:	01813083          	ld	ra,24(sp)
    80006424:	01013403          	ld	s0,16(sp)
    80006428:	00813483          	ld	s1,8(sp)
    8000642c:	02010113          	addi	sp,sp,32
    80006430:	00008067          	ret

0000000080006434 <start>:
    80006434:	ff010113          	addi	sp,sp,-16
    80006438:	00813423          	sd	s0,8(sp)
    8000643c:	01010413          	addi	s0,sp,16
    80006440:	300027f3          	csrr	a5,mstatus
    80006444:	ffffe737          	lui	a4,0xffffe
    80006448:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1cbf>
    8000644c:	00e7f7b3          	and	a5,a5,a4
    80006450:	00001737          	lui	a4,0x1
    80006454:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006458:	00e7e7b3          	or	a5,a5,a4
    8000645c:	30079073          	csrw	mstatus,a5
    80006460:	00000797          	auipc	a5,0x0
    80006464:	16078793          	addi	a5,a5,352 # 800065c0 <system_main>
    80006468:	34179073          	csrw	mepc,a5
    8000646c:	00000793          	li	a5,0
    80006470:	18079073          	csrw	satp,a5
    80006474:	000107b7          	lui	a5,0x10
    80006478:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000647c:	30279073          	csrw	medeleg,a5
    80006480:	30379073          	csrw	mideleg,a5
    80006484:	104027f3          	csrr	a5,sie
    80006488:	2227e793          	ori	a5,a5,546
    8000648c:	10479073          	csrw	sie,a5
    80006490:	fff00793          	li	a5,-1
    80006494:	00a7d793          	srli	a5,a5,0xa
    80006498:	3b079073          	csrw	pmpaddr0,a5
    8000649c:	00f00793          	li	a5,15
    800064a0:	3a079073          	csrw	pmpcfg0,a5
    800064a4:	f14027f3          	csrr	a5,mhartid
    800064a8:	0200c737          	lui	a4,0x200c
    800064ac:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800064b0:	0007869b          	sext.w	a3,a5
    800064b4:	00269713          	slli	a4,a3,0x2
    800064b8:	000f4637          	lui	a2,0xf4
    800064bc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800064c0:	00d70733          	add	a4,a4,a3
    800064c4:	0037979b          	slliw	a5,a5,0x3
    800064c8:	020046b7          	lui	a3,0x2004
    800064cc:	00d787b3          	add	a5,a5,a3
    800064d0:	00c585b3          	add	a1,a1,a2
    800064d4:	00371693          	slli	a3,a4,0x3
    800064d8:	00005717          	auipc	a4,0x5
    800064dc:	40870713          	addi	a4,a4,1032 # 8000b8e0 <timer_scratch>
    800064e0:	00b7b023          	sd	a1,0(a5)
    800064e4:	00d70733          	add	a4,a4,a3
    800064e8:	00f73c23          	sd	a5,24(a4)
    800064ec:	02c73023          	sd	a2,32(a4)
    800064f0:	34071073          	csrw	mscratch,a4
    800064f4:	00000797          	auipc	a5,0x0
    800064f8:	6ec78793          	addi	a5,a5,1772 # 80006be0 <timervec>
    800064fc:	30579073          	csrw	mtvec,a5
    80006500:	300027f3          	csrr	a5,mstatus
    80006504:	0087e793          	ori	a5,a5,8
    80006508:	30079073          	csrw	mstatus,a5
    8000650c:	304027f3          	csrr	a5,mie
    80006510:	0807e793          	ori	a5,a5,128
    80006514:	30479073          	csrw	mie,a5
    80006518:	f14027f3          	csrr	a5,mhartid
    8000651c:	0007879b          	sext.w	a5,a5
    80006520:	00078213          	mv	tp,a5
    80006524:	30200073          	mret
    80006528:	00813403          	ld	s0,8(sp)
    8000652c:	01010113          	addi	sp,sp,16
    80006530:	00008067          	ret

0000000080006534 <timerinit>:
    80006534:	ff010113          	addi	sp,sp,-16
    80006538:	00813423          	sd	s0,8(sp)
    8000653c:	01010413          	addi	s0,sp,16
    80006540:	f14027f3          	csrr	a5,mhartid
    80006544:	0200c737          	lui	a4,0x200c
    80006548:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000654c:	0007869b          	sext.w	a3,a5
    80006550:	00269713          	slli	a4,a3,0x2
    80006554:	000f4637          	lui	a2,0xf4
    80006558:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000655c:	00d70733          	add	a4,a4,a3
    80006560:	0037979b          	slliw	a5,a5,0x3
    80006564:	020046b7          	lui	a3,0x2004
    80006568:	00d787b3          	add	a5,a5,a3
    8000656c:	00c585b3          	add	a1,a1,a2
    80006570:	00371693          	slli	a3,a4,0x3
    80006574:	00005717          	auipc	a4,0x5
    80006578:	36c70713          	addi	a4,a4,876 # 8000b8e0 <timer_scratch>
    8000657c:	00b7b023          	sd	a1,0(a5)
    80006580:	00d70733          	add	a4,a4,a3
    80006584:	00f73c23          	sd	a5,24(a4)
    80006588:	02c73023          	sd	a2,32(a4)
    8000658c:	34071073          	csrw	mscratch,a4
    80006590:	00000797          	auipc	a5,0x0
    80006594:	65078793          	addi	a5,a5,1616 # 80006be0 <timervec>
    80006598:	30579073          	csrw	mtvec,a5
    8000659c:	300027f3          	csrr	a5,mstatus
    800065a0:	0087e793          	ori	a5,a5,8
    800065a4:	30079073          	csrw	mstatus,a5
    800065a8:	304027f3          	csrr	a5,mie
    800065ac:	0807e793          	ori	a5,a5,128
    800065b0:	30479073          	csrw	mie,a5
    800065b4:	00813403          	ld	s0,8(sp)
    800065b8:	01010113          	addi	sp,sp,16
    800065bc:	00008067          	ret

00000000800065c0 <system_main>:
    800065c0:	fe010113          	addi	sp,sp,-32
    800065c4:	00813823          	sd	s0,16(sp)
    800065c8:	00913423          	sd	s1,8(sp)
    800065cc:	00113c23          	sd	ra,24(sp)
    800065d0:	02010413          	addi	s0,sp,32
    800065d4:	00000097          	auipc	ra,0x0
    800065d8:	0c4080e7          	jalr	196(ra) # 80006698 <cpuid>
    800065dc:	00005497          	auipc	s1,0x5
    800065e0:	22448493          	addi	s1,s1,548 # 8000b800 <started>
    800065e4:	02050263          	beqz	a0,80006608 <system_main+0x48>
    800065e8:	0004a783          	lw	a5,0(s1)
    800065ec:	0007879b          	sext.w	a5,a5
    800065f0:	fe078ce3          	beqz	a5,800065e8 <system_main+0x28>
    800065f4:	0ff0000f          	fence
    800065f8:	00003517          	auipc	a0,0x3
    800065fc:	d8850513          	addi	a0,a0,-632 # 80009380 <CONSOLE_STATUS+0x370>
    80006600:	00001097          	auipc	ra,0x1
    80006604:	a7c080e7          	jalr	-1412(ra) # 8000707c <panic>
    80006608:	00001097          	auipc	ra,0x1
    8000660c:	9d0080e7          	jalr	-1584(ra) # 80006fd8 <consoleinit>
    80006610:	00001097          	auipc	ra,0x1
    80006614:	15c080e7          	jalr	348(ra) # 8000776c <printfinit>
    80006618:	00003517          	auipc	a0,0x3
    8000661c:	a9050513          	addi	a0,a0,-1392 # 800090a8 <CONSOLE_STATUS+0x98>
    80006620:	00001097          	auipc	ra,0x1
    80006624:	ab8080e7          	jalr	-1352(ra) # 800070d8 <__printf>
    80006628:	00003517          	auipc	a0,0x3
    8000662c:	d2850513          	addi	a0,a0,-728 # 80009350 <CONSOLE_STATUS+0x340>
    80006630:	00001097          	auipc	ra,0x1
    80006634:	aa8080e7          	jalr	-1368(ra) # 800070d8 <__printf>
    80006638:	00003517          	auipc	a0,0x3
    8000663c:	a7050513          	addi	a0,a0,-1424 # 800090a8 <CONSOLE_STATUS+0x98>
    80006640:	00001097          	auipc	ra,0x1
    80006644:	a98080e7          	jalr	-1384(ra) # 800070d8 <__printf>
    80006648:	00001097          	auipc	ra,0x1
    8000664c:	4b0080e7          	jalr	1200(ra) # 80007af8 <kinit>
    80006650:	00000097          	auipc	ra,0x0
    80006654:	148080e7          	jalr	328(ra) # 80006798 <trapinit>
    80006658:	00000097          	auipc	ra,0x0
    8000665c:	16c080e7          	jalr	364(ra) # 800067c4 <trapinithart>
    80006660:	00000097          	auipc	ra,0x0
    80006664:	5c0080e7          	jalr	1472(ra) # 80006c20 <plicinit>
    80006668:	00000097          	auipc	ra,0x0
    8000666c:	5e0080e7          	jalr	1504(ra) # 80006c48 <plicinithart>
    80006670:	00000097          	auipc	ra,0x0
    80006674:	078080e7          	jalr	120(ra) # 800066e8 <userinit>
    80006678:	0ff0000f          	fence
    8000667c:	00100793          	li	a5,1
    80006680:	00003517          	auipc	a0,0x3
    80006684:	ce850513          	addi	a0,a0,-792 # 80009368 <CONSOLE_STATUS+0x358>
    80006688:	00f4a023          	sw	a5,0(s1)
    8000668c:	00001097          	auipc	ra,0x1
    80006690:	a4c080e7          	jalr	-1460(ra) # 800070d8 <__printf>
    80006694:	0000006f          	j	80006694 <system_main+0xd4>

0000000080006698 <cpuid>:
    80006698:	ff010113          	addi	sp,sp,-16
    8000669c:	00813423          	sd	s0,8(sp)
    800066a0:	01010413          	addi	s0,sp,16
    800066a4:	00020513          	mv	a0,tp
    800066a8:	00813403          	ld	s0,8(sp)
    800066ac:	0005051b          	sext.w	a0,a0
    800066b0:	01010113          	addi	sp,sp,16
    800066b4:	00008067          	ret

00000000800066b8 <mycpu>:
    800066b8:	ff010113          	addi	sp,sp,-16
    800066bc:	00813423          	sd	s0,8(sp)
    800066c0:	01010413          	addi	s0,sp,16
    800066c4:	00020793          	mv	a5,tp
    800066c8:	00813403          	ld	s0,8(sp)
    800066cc:	0007879b          	sext.w	a5,a5
    800066d0:	00779793          	slli	a5,a5,0x7
    800066d4:	00006517          	auipc	a0,0x6
    800066d8:	23c50513          	addi	a0,a0,572 # 8000c910 <cpus>
    800066dc:	00f50533          	add	a0,a0,a5
    800066e0:	01010113          	addi	sp,sp,16
    800066e4:	00008067          	ret

00000000800066e8 <userinit>:
    800066e8:	ff010113          	addi	sp,sp,-16
    800066ec:	00813423          	sd	s0,8(sp)
    800066f0:	01010413          	addi	s0,sp,16
    800066f4:	00813403          	ld	s0,8(sp)
    800066f8:	01010113          	addi	sp,sp,16
    800066fc:	ffffb317          	auipc	t1,0xffffb
    80006700:	44830067          	jr	1096(t1) # 80001b44 <main>

0000000080006704 <either_copyout>:
    80006704:	ff010113          	addi	sp,sp,-16
    80006708:	00813023          	sd	s0,0(sp)
    8000670c:	00113423          	sd	ra,8(sp)
    80006710:	01010413          	addi	s0,sp,16
    80006714:	02051663          	bnez	a0,80006740 <either_copyout+0x3c>
    80006718:	00058513          	mv	a0,a1
    8000671c:	00060593          	mv	a1,a2
    80006720:	0006861b          	sext.w	a2,a3
    80006724:	00002097          	auipc	ra,0x2
    80006728:	c60080e7          	jalr	-928(ra) # 80008384 <__memmove>
    8000672c:	00813083          	ld	ra,8(sp)
    80006730:	00013403          	ld	s0,0(sp)
    80006734:	00000513          	li	a0,0
    80006738:	01010113          	addi	sp,sp,16
    8000673c:	00008067          	ret
    80006740:	00003517          	auipc	a0,0x3
    80006744:	c6850513          	addi	a0,a0,-920 # 800093a8 <CONSOLE_STATUS+0x398>
    80006748:	00001097          	auipc	ra,0x1
    8000674c:	934080e7          	jalr	-1740(ra) # 8000707c <panic>

0000000080006750 <either_copyin>:
    80006750:	ff010113          	addi	sp,sp,-16
    80006754:	00813023          	sd	s0,0(sp)
    80006758:	00113423          	sd	ra,8(sp)
    8000675c:	01010413          	addi	s0,sp,16
    80006760:	02059463          	bnez	a1,80006788 <either_copyin+0x38>
    80006764:	00060593          	mv	a1,a2
    80006768:	0006861b          	sext.w	a2,a3
    8000676c:	00002097          	auipc	ra,0x2
    80006770:	c18080e7          	jalr	-1000(ra) # 80008384 <__memmove>
    80006774:	00813083          	ld	ra,8(sp)
    80006778:	00013403          	ld	s0,0(sp)
    8000677c:	00000513          	li	a0,0
    80006780:	01010113          	addi	sp,sp,16
    80006784:	00008067          	ret
    80006788:	00003517          	auipc	a0,0x3
    8000678c:	c4850513          	addi	a0,a0,-952 # 800093d0 <CONSOLE_STATUS+0x3c0>
    80006790:	00001097          	auipc	ra,0x1
    80006794:	8ec080e7          	jalr	-1812(ra) # 8000707c <panic>

0000000080006798 <trapinit>:
    80006798:	ff010113          	addi	sp,sp,-16
    8000679c:	00813423          	sd	s0,8(sp)
    800067a0:	01010413          	addi	s0,sp,16
    800067a4:	00813403          	ld	s0,8(sp)
    800067a8:	00003597          	auipc	a1,0x3
    800067ac:	c5058593          	addi	a1,a1,-944 # 800093f8 <CONSOLE_STATUS+0x3e8>
    800067b0:	00006517          	auipc	a0,0x6
    800067b4:	1e050513          	addi	a0,a0,480 # 8000c990 <tickslock>
    800067b8:	01010113          	addi	sp,sp,16
    800067bc:	00001317          	auipc	t1,0x1
    800067c0:	5cc30067          	jr	1484(t1) # 80007d88 <initlock>

00000000800067c4 <trapinithart>:
    800067c4:	ff010113          	addi	sp,sp,-16
    800067c8:	00813423          	sd	s0,8(sp)
    800067cc:	01010413          	addi	s0,sp,16
    800067d0:	00000797          	auipc	a5,0x0
    800067d4:	30078793          	addi	a5,a5,768 # 80006ad0 <kernelvec>
    800067d8:	10579073          	csrw	stvec,a5
    800067dc:	00813403          	ld	s0,8(sp)
    800067e0:	01010113          	addi	sp,sp,16
    800067e4:	00008067          	ret

00000000800067e8 <usertrap>:
    800067e8:	ff010113          	addi	sp,sp,-16
    800067ec:	00813423          	sd	s0,8(sp)
    800067f0:	01010413          	addi	s0,sp,16
    800067f4:	00813403          	ld	s0,8(sp)
    800067f8:	01010113          	addi	sp,sp,16
    800067fc:	00008067          	ret

0000000080006800 <usertrapret>:
    80006800:	ff010113          	addi	sp,sp,-16
    80006804:	00813423          	sd	s0,8(sp)
    80006808:	01010413          	addi	s0,sp,16
    8000680c:	00813403          	ld	s0,8(sp)
    80006810:	01010113          	addi	sp,sp,16
    80006814:	00008067          	ret

0000000080006818 <kerneltrap>:
    80006818:	fe010113          	addi	sp,sp,-32
    8000681c:	00813823          	sd	s0,16(sp)
    80006820:	00113c23          	sd	ra,24(sp)
    80006824:	00913423          	sd	s1,8(sp)
    80006828:	02010413          	addi	s0,sp,32
    8000682c:	142025f3          	csrr	a1,scause
    80006830:	100027f3          	csrr	a5,sstatus
    80006834:	0027f793          	andi	a5,a5,2
    80006838:	10079c63          	bnez	a5,80006950 <kerneltrap+0x138>
    8000683c:	142027f3          	csrr	a5,scause
    80006840:	0207ce63          	bltz	a5,8000687c <kerneltrap+0x64>
    80006844:	00003517          	auipc	a0,0x3
    80006848:	bfc50513          	addi	a0,a0,-1028 # 80009440 <CONSOLE_STATUS+0x430>
    8000684c:	00001097          	auipc	ra,0x1
    80006850:	88c080e7          	jalr	-1908(ra) # 800070d8 <__printf>
    80006854:	141025f3          	csrr	a1,sepc
    80006858:	14302673          	csrr	a2,stval
    8000685c:	00003517          	auipc	a0,0x3
    80006860:	bf450513          	addi	a0,a0,-1036 # 80009450 <CONSOLE_STATUS+0x440>
    80006864:	00001097          	auipc	ra,0x1
    80006868:	874080e7          	jalr	-1932(ra) # 800070d8 <__printf>
    8000686c:	00003517          	auipc	a0,0x3
    80006870:	bfc50513          	addi	a0,a0,-1028 # 80009468 <CONSOLE_STATUS+0x458>
    80006874:	00001097          	auipc	ra,0x1
    80006878:	808080e7          	jalr	-2040(ra) # 8000707c <panic>
    8000687c:	0ff7f713          	andi	a4,a5,255
    80006880:	00900693          	li	a3,9
    80006884:	04d70063          	beq	a4,a3,800068c4 <kerneltrap+0xac>
    80006888:	fff00713          	li	a4,-1
    8000688c:	03f71713          	slli	a4,a4,0x3f
    80006890:	00170713          	addi	a4,a4,1
    80006894:	fae798e3          	bne	a5,a4,80006844 <kerneltrap+0x2c>
    80006898:	00000097          	auipc	ra,0x0
    8000689c:	e00080e7          	jalr	-512(ra) # 80006698 <cpuid>
    800068a0:	06050663          	beqz	a0,8000690c <kerneltrap+0xf4>
    800068a4:	144027f3          	csrr	a5,sip
    800068a8:	ffd7f793          	andi	a5,a5,-3
    800068ac:	14479073          	csrw	sip,a5
    800068b0:	01813083          	ld	ra,24(sp)
    800068b4:	01013403          	ld	s0,16(sp)
    800068b8:	00813483          	ld	s1,8(sp)
    800068bc:	02010113          	addi	sp,sp,32
    800068c0:	00008067          	ret
    800068c4:	00000097          	auipc	ra,0x0
    800068c8:	3d0080e7          	jalr	976(ra) # 80006c94 <plic_claim>
    800068cc:	00a00793          	li	a5,10
    800068d0:	00050493          	mv	s1,a0
    800068d4:	06f50863          	beq	a0,a5,80006944 <kerneltrap+0x12c>
    800068d8:	fc050ce3          	beqz	a0,800068b0 <kerneltrap+0x98>
    800068dc:	00050593          	mv	a1,a0
    800068e0:	00003517          	auipc	a0,0x3
    800068e4:	b4050513          	addi	a0,a0,-1216 # 80009420 <CONSOLE_STATUS+0x410>
    800068e8:	00000097          	auipc	ra,0x0
    800068ec:	7f0080e7          	jalr	2032(ra) # 800070d8 <__printf>
    800068f0:	01013403          	ld	s0,16(sp)
    800068f4:	01813083          	ld	ra,24(sp)
    800068f8:	00048513          	mv	a0,s1
    800068fc:	00813483          	ld	s1,8(sp)
    80006900:	02010113          	addi	sp,sp,32
    80006904:	00000317          	auipc	t1,0x0
    80006908:	3c830067          	jr	968(t1) # 80006ccc <plic_complete>
    8000690c:	00006517          	auipc	a0,0x6
    80006910:	08450513          	addi	a0,a0,132 # 8000c990 <tickslock>
    80006914:	00001097          	auipc	ra,0x1
    80006918:	498080e7          	jalr	1176(ra) # 80007dac <acquire>
    8000691c:	00005717          	auipc	a4,0x5
    80006920:	ee870713          	addi	a4,a4,-280 # 8000b804 <ticks>
    80006924:	00072783          	lw	a5,0(a4)
    80006928:	00006517          	auipc	a0,0x6
    8000692c:	06850513          	addi	a0,a0,104 # 8000c990 <tickslock>
    80006930:	0017879b          	addiw	a5,a5,1
    80006934:	00f72023          	sw	a5,0(a4)
    80006938:	00001097          	auipc	ra,0x1
    8000693c:	540080e7          	jalr	1344(ra) # 80007e78 <release>
    80006940:	f65ff06f          	j	800068a4 <kerneltrap+0x8c>
    80006944:	00001097          	auipc	ra,0x1
    80006948:	09c080e7          	jalr	156(ra) # 800079e0 <uartintr>
    8000694c:	fa5ff06f          	j	800068f0 <kerneltrap+0xd8>
    80006950:	00003517          	auipc	a0,0x3
    80006954:	ab050513          	addi	a0,a0,-1360 # 80009400 <CONSOLE_STATUS+0x3f0>
    80006958:	00000097          	auipc	ra,0x0
    8000695c:	724080e7          	jalr	1828(ra) # 8000707c <panic>

0000000080006960 <clockintr>:
    80006960:	fe010113          	addi	sp,sp,-32
    80006964:	00813823          	sd	s0,16(sp)
    80006968:	00913423          	sd	s1,8(sp)
    8000696c:	00113c23          	sd	ra,24(sp)
    80006970:	02010413          	addi	s0,sp,32
    80006974:	00006497          	auipc	s1,0x6
    80006978:	01c48493          	addi	s1,s1,28 # 8000c990 <tickslock>
    8000697c:	00048513          	mv	a0,s1
    80006980:	00001097          	auipc	ra,0x1
    80006984:	42c080e7          	jalr	1068(ra) # 80007dac <acquire>
    80006988:	00005717          	auipc	a4,0x5
    8000698c:	e7c70713          	addi	a4,a4,-388 # 8000b804 <ticks>
    80006990:	00072783          	lw	a5,0(a4)
    80006994:	01013403          	ld	s0,16(sp)
    80006998:	01813083          	ld	ra,24(sp)
    8000699c:	00048513          	mv	a0,s1
    800069a0:	0017879b          	addiw	a5,a5,1
    800069a4:	00813483          	ld	s1,8(sp)
    800069a8:	00f72023          	sw	a5,0(a4)
    800069ac:	02010113          	addi	sp,sp,32
    800069b0:	00001317          	auipc	t1,0x1
    800069b4:	4c830067          	jr	1224(t1) # 80007e78 <release>

00000000800069b8 <devintr>:
    800069b8:	142027f3          	csrr	a5,scause
    800069bc:	00000513          	li	a0,0
    800069c0:	0007c463          	bltz	a5,800069c8 <devintr+0x10>
    800069c4:	00008067          	ret
    800069c8:	fe010113          	addi	sp,sp,-32
    800069cc:	00813823          	sd	s0,16(sp)
    800069d0:	00113c23          	sd	ra,24(sp)
    800069d4:	00913423          	sd	s1,8(sp)
    800069d8:	02010413          	addi	s0,sp,32
    800069dc:	0ff7f713          	andi	a4,a5,255
    800069e0:	00900693          	li	a3,9
    800069e4:	04d70c63          	beq	a4,a3,80006a3c <devintr+0x84>
    800069e8:	fff00713          	li	a4,-1
    800069ec:	03f71713          	slli	a4,a4,0x3f
    800069f0:	00170713          	addi	a4,a4,1
    800069f4:	00e78c63          	beq	a5,a4,80006a0c <devintr+0x54>
    800069f8:	01813083          	ld	ra,24(sp)
    800069fc:	01013403          	ld	s0,16(sp)
    80006a00:	00813483          	ld	s1,8(sp)
    80006a04:	02010113          	addi	sp,sp,32
    80006a08:	00008067          	ret
    80006a0c:	00000097          	auipc	ra,0x0
    80006a10:	c8c080e7          	jalr	-884(ra) # 80006698 <cpuid>
    80006a14:	06050663          	beqz	a0,80006a80 <devintr+0xc8>
    80006a18:	144027f3          	csrr	a5,sip
    80006a1c:	ffd7f793          	andi	a5,a5,-3
    80006a20:	14479073          	csrw	sip,a5
    80006a24:	01813083          	ld	ra,24(sp)
    80006a28:	01013403          	ld	s0,16(sp)
    80006a2c:	00813483          	ld	s1,8(sp)
    80006a30:	00200513          	li	a0,2
    80006a34:	02010113          	addi	sp,sp,32
    80006a38:	00008067          	ret
    80006a3c:	00000097          	auipc	ra,0x0
    80006a40:	258080e7          	jalr	600(ra) # 80006c94 <plic_claim>
    80006a44:	00a00793          	li	a5,10
    80006a48:	00050493          	mv	s1,a0
    80006a4c:	06f50663          	beq	a0,a5,80006ab8 <devintr+0x100>
    80006a50:	00100513          	li	a0,1
    80006a54:	fa0482e3          	beqz	s1,800069f8 <devintr+0x40>
    80006a58:	00048593          	mv	a1,s1
    80006a5c:	00003517          	auipc	a0,0x3
    80006a60:	9c450513          	addi	a0,a0,-1596 # 80009420 <CONSOLE_STATUS+0x410>
    80006a64:	00000097          	auipc	ra,0x0
    80006a68:	674080e7          	jalr	1652(ra) # 800070d8 <__printf>
    80006a6c:	00048513          	mv	a0,s1
    80006a70:	00000097          	auipc	ra,0x0
    80006a74:	25c080e7          	jalr	604(ra) # 80006ccc <plic_complete>
    80006a78:	00100513          	li	a0,1
    80006a7c:	f7dff06f          	j	800069f8 <devintr+0x40>
    80006a80:	00006517          	auipc	a0,0x6
    80006a84:	f1050513          	addi	a0,a0,-240 # 8000c990 <tickslock>
    80006a88:	00001097          	auipc	ra,0x1
    80006a8c:	324080e7          	jalr	804(ra) # 80007dac <acquire>
    80006a90:	00005717          	auipc	a4,0x5
    80006a94:	d7470713          	addi	a4,a4,-652 # 8000b804 <ticks>
    80006a98:	00072783          	lw	a5,0(a4)
    80006a9c:	00006517          	auipc	a0,0x6
    80006aa0:	ef450513          	addi	a0,a0,-268 # 8000c990 <tickslock>
    80006aa4:	0017879b          	addiw	a5,a5,1
    80006aa8:	00f72023          	sw	a5,0(a4)
    80006aac:	00001097          	auipc	ra,0x1
    80006ab0:	3cc080e7          	jalr	972(ra) # 80007e78 <release>
    80006ab4:	f65ff06f          	j	80006a18 <devintr+0x60>
    80006ab8:	00001097          	auipc	ra,0x1
    80006abc:	f28080e7          	jalr	-216(ra) # 800079e0 <uartintr>
    80006ac0:	fadff06f          	j	80006a6c <devintr+0xb4>
	...

0000000080006ad0 <kernelvec>:
    80006ad0:	f0010113          	addi	sp,sp,-256
    80006ad4:	00113023          	sd	ra,0(sp)
    80006ad8:	00213423          	sd	sp,8(sp)
    80006adc:	00313823          	sd	gp,16(sp)
    80006ae0:	00413c23          	sd	tp,24(sp)
    80006ae4:	02513023          	sd	t0,32(sp)
    80006ae8:	02613423          	sd	t1,40(sp)
    80006aec:	02713823          	sd	t2,48(sp)
    80006af0:	02813c23          	sd	s0,56(sp)
    80006af4:	04913023          	sd	s1,64(sp)
    80006af8:	04a13423          	sd	a0,72(sp)
    80006afc:	04b13823          	sd	a1,80(sp)
    80006b00:	04c13c23          	sd	a2,88(sp)
    80006b04:	06d13023          	sd	a3,96(sp)
    80006b08:	06e13423          	sd	a4,104(sp)
    80006b0c:	06f13823          	sd	a5,112(sp)
    80006b10:	07013c23          	sd	a6,120(sp)
    80006b14:	09113023          	sd	a7,128(sp)
    80006b18:	09213423          	sd	s2,136(sp)
    80006b1c:	09313823          	sd	s3,144(sp)
    80006b20:	09413c23          	sd	s4,152(sp)
    80006b24:	0b513023          	sd	s5,160(sp)
    80006b28:	0b613423          	sd	s6,168(sp)
    80006b2c:	0b713823          	sd	s7,176(sp)
    80006b30:	0b813c23          	sd	s8,184(sp)
    80006b34:	0d913023          	sd	s9,192(sp)
    80006b38:	0da13423          	sd	s10,200(sp)
    80006b3c:	0db13823          	sd	s11,208(sp)
    80006b40:	0dc13c23          	sd	t3,216(sp)
    80006b44:	0fd13023          	sd	t4,224(sp)
    80006b48:	0fe13423          	sd	t5,232(sp)
    80006b4c:	0ff13823          	sd	t6,240(sp)
    80006b50:	cc9ff0ef          	jal	ra,80006818 <kerneltrap>
    80006b54:	00013083          	ld	ra,0(sp)
    80006b58:	00813103          	ld	sp,8(sp)
    80006b5c:	01013183          	ld	gp,16(sp)
    80006b60:	02013283          	ld	t0,32(sp)
    80006b64:	02813303          	ld	t1,40(sp)
    80006b68:	03013383          	ld	t2,48(sp)
    80006b6c:	03813403          	ld	s0,56(sp)
    80006b70:	04013483          	ld	s1,64(sp)
    80006b74:	04813503          	ld	a0,72(sp)
    80006b78:	05013583          	ld	a1,80(sp)
    80006b7c:	05813603          	ld	a2,88(sp)
    80006b80:	06013683          	ld	a3,96(sp)
    80006b84:	06813703          	ld	a4,104(sp)
    80006b88:	07013783          	ld	a5,112(sp)
    80006b8c:	07813803          	ld	a6,120(sp)
    80006b90:	08013883          	ld	a7,128(sp)
    80006b94:	08813903          	ld	s2,136(sp)
    80006b98:	09013983          	ld	s3,144(sp)
    80006b9c:	09813a03          	ld	s4,152(sp)
    80006ba0:	0a013a83          	ld	s5,160(sp)
    80006ba4:	0a813b03          	ld	s6,168(sp)
    80006ba8:	0b013b83          	ld	s7,176(sp)
    80006bac:	0b813c03          	ld	s8,184(sp)
    80006bb0:	0c013c83          	ld	s9,192(sp)
    80006bb4:	0c813d03          	ld	s10,200(sp)
    80006bb8:	0d013d83          	ld	s11,208(sp)
    80006bbc:	0d813e03          	ld	t3,216(sp)
    80006bc0:	0e013e83          	ld	t4,224(sp)
    80006bc4:	0e813f03          	ld	t5,232(sp)
    80006bc8:	0f013f83          	ld	t6,240(sp)
    80006bcc:	10010113          	addi	sp,sp,256
    80006bd0:	10200073          	sret
    80006bd4:	00000013          	nop
    80006bd8:	00000013          	nop
    80006bdc:	00000013          	nop

0000000080006be0 <timervec>:
    80006be0:	34051573          	csrrw	a0,mscratch,a0
    80006be4:	00b53023          	sd	a1,0(a0)
    80006be8:	00c53423          	sd	a2,8(a0)
    80006bec:	00d53823          	sd	a3,16(a0)
    80006bf0:	01853583          	ld	a1,24(a0)
    80006bf4:	02053603          	ld	a2,32(a0)
    80006bf8:	0005b683          	ld	a3,0(a1)
    80006bfc:	00c686b3          	add	a3,a3,a2
    80006c00:	00d5b023          	sd	a3,0(a1)
    80006c04:	00200593          	li	a1,2
    80006c08:	14459073          	csrw	sip,a1
    80006c0c:	01053683          	ld	a3,16(a0)
    80006c10:	00853603          	ld	a2,8(a0)
    80006c14:	00053583          	ld	a1,0(a0)
    80006c18:	34051573          	csrrw	a0,mscratch,a0
    80006c1c:	30200073          	mret

0000000080006c20 <plicinit>:
    80006c20:	ff010113          	addi	sp,sp,-16
    80006c24:	00813423          	sd	s0,8(sp)
    80006c28:	01010413          	addi	s0,sp,16
    80006c2c:	00813403          	ld	s0,8(sp)
    80006c30:	0c0007b7          	lui	a5,0xc000
    80006c34:	00100713          	li	a4,1
    80006c38:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006c3c:	00e7a223          	sw	a4,4(a5)
    80006c40:	01010113          	addi	sp,sp,16
    80006c44:	00008067          	ret

0000000080006c48 <plicinithart>:
    80006c48:	ff010113          	addi	sp,sp,-16
    80006c4c:	00813023          	sd	s0,0(sp)
    80006c50:	00113423          	sd	ra,8(sp)
    80006c54:	01010413          	addi	s0,sp,16
    80006c58:	00000097          	auipc	ra,0x0
    80006c5c:	a40080e7          	jalr	-1472(ra) # 80006698 <cpuid>
    80006c60:	0085171b          	slliw	a4,a0,0x8
    80006c64:	0c0027b7          	lui	a5,0xc002
    80006c68:	00e787b3          	add	a5,a5,a4
    80006c6c:	40200713          	li	a4,1026
    80006c70:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006c74:	00813083          	ld	ra,8(sp)
    80006c78:	00013403          	ld	s0,0(sp)
    80006c7c:	00d5151b          	slliw	a0,a0,0xd
    80006c80:	0c2017b7          	lui	a5,0xc201
    80006c84:	00a78533          	add	a0,a5,a0
    80006c88:	00052023          	sw	zero,0(a0)
    80006c8c:	01010113          	addi	sp,sp,16
    80006c90:	00008067          	ret

0000000080006c94 <plic_claim>:
    80006c94:	ff010113          	addi	sp,sp,-16
    80006c98:	00813023          	sd	s0,0(sp)
    80006c9c:	00113423          	sd	ra,8(sp)
    80006ca0:	01010413          	addi	s0,sp,16
    80006ca4:	00000097          	auipc	ra,0x0
    80006ca8:	9f4080e7          	jalr	-1548(ra) # 80006698 <cpuid>
    80006cac:	00813083          	ld	ra,8(sp)
    80006cb0:	00013403          	ld	s0,0(sp)
    80006cb4:	00d5151b          	slliw	a0,a0,0xd
    80006cb8:	0c2017b7          	lui	a5,0xc201
    80006cbc:	00a78533          	add	a0,a5,a0
    80006cc0:	00452503          	lw	a0,4(a0)
    80006cc4:	01010113          	addi	sp,sp,16
    80006cc8:	00008067          	ret

0000000080006ccc <plic_complete>:
    80006ccc:	fe010113          	addi	sp,sp,-32
    80006cd0:	00813823          	sd	s0,16(sp)
    80006cd4:	00913423          	sd	s1,8(sp)
    80006cd8:	00113c23          	sd	ra,24(sp)
    80006cdc:	02010413          	addi	s0,sp,32
    80006ce0:	00050493          	mv	s1,a0
    80006ce4:	00000097          	auipc	ra,0x0
    80006ce8:	9b4080e7          	jalr	-1612(ra) # 80006698 <cpuid>
    80006cec:	01813083          	ld	ra,24(sp)
    80006cf0:	01013403          	ld	s0,16(sp)
    80006cf4:	00d5179b          	slliw	a5,a0,0xd
    80006cf8:	0c201737          	lui	a4,0xc201
    80006cfc:	00f707b3          	add	a5,a4,a5
    80006d00:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006d04:	00813483          	ld	s1,8(sp)
    80006d08:	02010113          	addi	sp,sp,32
    80006d0c:	00008067          	ret

0000000080006d10 <consolewrite>:
    80006d10:	fb010113          	addi	sp,sp,-80
    80006d14:	04813023          	sd	s0,64(sp)
    80006d18:	04113423          	sd	ra,72(sp)
    80006d1c:	02913c23          	sd	s1,56(sp)
    80006d20:	03213823          	sd	s2,48(sp)
    80006d24:	03313423          	sd	s3,40(sp)
    80006d28:	03413023          	sd	s4,32(sp)
    80006d2c:	01513c23          	sd	s5,24(sp)
    80006d30:	05010413          	addi	s0,sp,80
    80006d34:	06c05c63          	blez	a2,80006dac <consolewrite+0x9c>
    80006d38:	00060993          	mv	s3,a2
    80006d3c:	00050a13          	mv	s4,a0
    80006d40:	00058493          	mv	s1,a1
    80006d44:	00000913          	li	s2,0
    80006d48:	fff00a93          	li	s5,-1
    80006d4c:	01c0006f          	j	80006d68 <consolewrite+0x58>
    80006d50:	fbf44503          	lbu	a0,-65(s0)
    80006d54:	0019091b          	addiw	s2,s2,1
    80006d58:	00148493          	addi	s1,s1,1
    80006d5c:	00001097          	auipc	ra,0x1
    80006d60:	a9c080e7          	jalr	-1380(ra) # 800077f8 <uartputc>
    80006d64:	03298063          	beq	s3,s2,80006d84 <consolewrite+0x74>
    80006d68:	00048613          	mv	a2,s1
    80006d6c:	00100693          	li	a3,1
    80006d70:	000a0593          	mv	a1,s4
    80006d74:	fbf40513          	addi	a0,s0,-65
    80006d78:	00000097          	auipc	ra,0x0
    80006d7c:	9d8080e7          	jalr	-1576(ra) # 80006750 <either_copyin>
    80006d80:	fd5518e3          	bne	a0,s5,80006d50 <consolewrite+0x40>
    80006d84:	04813083          	ld	ra,72(sp)
    80006d88:	04013403          	ld	s0,64(sp)
    80006d8c:	03813483          	ld	s1,56(sp)
    80006d90:	02813983          	ld	s3,40(sp)
    80006d94:	02013a03          	ld	s4,32(sp)
    80006d98:	01813a83          	ld	s5,24(sp)
    80006d9c:	00090513          	mv	a0,s2
    80006da0:	03013903          	ld	s2,48(sp)
    80006da4:	05010113          	addi	sp,sp,80
    80006da8:	00008067          	ret
    80006dac:	00000913          	li	s2,0
    80006db0:	fd5ff06f          	j	80006d84 <consolewrite+0x74>

0000000080006db4 <consoleread>:
    80006db4:	f9010113          	addi	sp,sp,-112
    80006db8:	06813023          	sd	s0,96(sp)
    80006dbc:	04913c23          	sd	s1,88(sp)
    80006dc0:	05213823          	sd	s2,80(sp)
    80006dc4:	05313423          	sd	s3,72(sp)
    80006dc8:	05413023          	sd	s4,64(sp)
    80006dcc:	03513c23          	sd	s5,56(sp)
    80006dd0:	03613823          	sd	s6,48(sp)
    80006dd4:	03713423          	sd	s7,40(sp)
    80006dd8:	03813023          	sd	s8,32(sp)
    80006ddc:	06113423          	sd	ra,104(sp)
    80006de0:	01913c23          	sd	s9,24(sp)
    80006de4:	07010413          	addi	s0,sp,112
    80006de8:	00060b93          	mv	s7,a2
    80006dec:	00050913          	mv	s2,a0
    80006df0:	00058c13          	mv	s8,a1
    80006df4:	00060b1b          	sext.w	s6,a2
    80006df8:	00006497          	auipc	s1,0x6
    80006dfc:	bc048493          	addi	s1,s1,-1088 # 8000c9b8 <cons>
    80006e00:	00400993          	li	s3,4
    80006e04:	fff00a13          	li	s4,-1
    80006e08:	00a00a93          	li	s5,10
    80006e0c:	05705e63          	blez	s7,80006e68 <consoleread+0xb4>
    80006e10:	09c4a703          	lw	a4,156(s1)
    80006e14:	0984a783          	lw	a5,152(s1)
    80006e18:	0007071b          	sext.w	a4,a4
    80006e1c:	08e78463          	beq	a5,a4,80006ea4 <consoleread+0xf0>
    80006e20:	07f7f713          	andi	a4,a5,127
    80006e24:	00e48733          	add	a4,s1,a4
    80006e28:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80006e2c:	0017869b          	addiw	a3,a5,1
    80006e30:	08d4ac23          	sw	a3,152(s1)
    80006e34:	00070c9b          	sext.w	s9,a4
    80006e38:	0b370663          	beq	a4,s3,80006ee4 <consoleread+0x130>
    80006e3c:	00100693          	li	a3,1
    80006e40:	f9f40613          	addi	a2,s0,-97
    80006e44:	000c0593          	mv	a1,s8
    80006e48:	00090513          	mv	a0,s2
    80006e4c:	f8e40fa3          	sb	a4,-97(s0)
    80006e50:	00000097          	auipc	ra,0x0
    80006e54:	8b4080e7          	jalr	-1868(ra) # 80006704 <either_copyout>
    80006e58:	01450863          	beq	a0,s4,80006e68 <consoleread+0xb4>
    80006e5c:	001c0c13          	addi	s8,s8,1
    80006e60:	fffb8b9b          	addiw	s7,s7,-1
    80006e64:	fb5c94e3          	bne	s9,s5,80006e0c <consoleread+0x58>
    80006e68:	000b851b          	sext.w	a0,s7
    80006e6c:	06813083          	ld	ra,104(sp)
    80006e70:	06013403          	ld	s0,96(sp)
    80006e74:	05813483          	ld	s1,88(sp)
    80006e78:	05013903          	ld	s2,80(sp)
    80006e7c:	04813983          	ld	s3,72(sp)
    80006e80:	04013a03          	ld	s4,64(sp)
    80006e84:	03813a83          	ld	s5,56(sp)
    80006e88:	02813b83          	ld	s7,40(sp)
    80006e8c:	02013c03          	ld	s8,32(sp)
    80006e90:	01813c83          	ld	s9,24(sp)
    80006e94:	40ab053b          	subw	a0,s6,a0
    80006e98:	03013b03          	ld	s6,48(sp)
    80006e9c:	07010113          	addi	sp,sp,112
    80006ea0:	00008067          	ret
    80006ea4:	00001097          	auipc	ra,0x1
    80006ea8:	1d8080e7          	jalr	472(ra) # 8000807c <push_on>
    80006eac:	0984a703          	lw	a4,152(s1)
    80006eb0:	09c4a783          	lw	a5,156(s1)
    80006eb4:	0007879b          	sext.w	a5,a5
    80006eb8:	fef70ce3          	beq	a4,a5,80006eb0 <consoleread+0xfc>
    80006ebc:	00001097          	auipc	ra,0x1
    80006ec0:	234080e7          	jalr	564(ra) # 800080f0 <pop_on>
    80006ec4:	0984a783          	lw	a5,152(s1)
    80006ec8:	07f7f713          	andi	a4,a5,127
    80006ecc:	00e48733          	add	a4,s1,a4
    80006ed0:	01874703          	lbu	a4,24(a4)
    80006ed4:	0017869b          	addiw	a3,a5,1
    80006ed8:	08d4ac23          	sw	a3,152(s1)
    80006edc:	00070c9b          	sext.w	s9,a4
    80006ee0:	f5371ee3          	bne	a4,s3,80006e3c <consoleread+0x88>
    80006ee4:	000b851b          	sext.w	a0,s7
    80006ee8:	f96bf2e3          	bgeu	s7,s6,80006e6c <consoleread+0xb8>
    80006eec:	08f4ac23          	sw	a5,152(s1)
    80006ef0:	f7dff06f          	j	80006e6c <consoleread+0xb8>

0000000080006ef4 <consputc>:
    80006ef4:	10000793          	li	a5,256
    80006ef8:	00f50663          	beq	a0,a5,80006f04 <consputc+0x10>
    80006efc:	00001317          	auipc	t1,0x1
    80006f00:	9f430067          	jr	-1548(t1) # 800078f0 <uartputc_sync>
    80006f04:	ff010113          	addi	sp,sp,-16
    80006f08:	00113423          	sd	ra,8(sp)
    80006f0c:	00813023          	sd	s0,0(sp)
    80006f10:	01010413          	addi	s0,sp,16
    80006f14:	00800513          	li	a0,8
    80006f18:	00001097          	auipc	ra,0x1
    80006f1c:	9d8080e7          	jalr	-1576(ra) # 800078f0 <uartputc_sync>
    80006f20:	02000513          	li	a0,32
    80006f24:	00001097          	auipc	ra,0x1
    80006f28:	9cc080e7          	jalr	-1588(ra) # 800078f0 <uartputc_sync>
    80006f2c:	00013403          	ld	s0,0(sp)
    80006f30:	00813083          	ld	ra,8(sp)
    80006f34:	00800513          	li	a0,8
    80006f38:	01010113          	addi	sp,sp,16
    80006f3c:	00001317          	auipc	t1,0x1
    80006f40:	9b430067          	jr	-1612(t1) # 800078f0 <uartputc_sync>

0000000080006f44 <consoleintr>:
    80006f44:	fe010113          	addi	sp,sp,-32
    80006f48:	00813823          	sd	s0,16(sp)
    80006f4c:	00913423          	sd	s1,8(sp)
    80006f50:	01213023          	sd	s2,0(sp)
    80006f54:	00113c23          	sd	ra,24(sp)
    80006f58:	02010413          	addi	s0,sp,32
    80006f5c:	00006917          	auipc	s2,0x6
    80006f60:	a5c90913          	addi	s2,s2,-1444 # 8000c9b8 <cons>
    80006f64:	00050493          	mv	s1,a0
    80006f68:	00090513          	mv	a0,s2
    80006f6c:	00001097          	auipc	ra,0x1
    80006f70:	e40080e7          	jalr	-448(ra) # 80007dac <acquire>
    80006f74:	02048c63          	beqz	s1,80006fac <consoleintr+0x68>
    80006f78:	0a092783          	lw	a5,160(s2)
    80006f7c:	09892703          	lw	a4,152(s2)
    80006f80:	07f00693          	li	a3,127
    80006f84:	40e7873b          	subw	a4,a5,a4
    80006f88:	02e6e263          	bltu	a3,a4,80006fac <consoleintr+0x68>
    80006f8c:	00d00713          	li	a4,13
    80006f90:	04e48063          	beq	s1,a4,80006fd0 <consoleintr+0x8c>
    80006f94:	07f7f713          	andi	a4,a5,127
    80006f98:	00e90733          	add	a4,s2,a4
    80006f9c:	0017879b          	addiw	a5,a5,1
    80006fa0:	0af92023          	sw	a5,160(s2)
    80006fa4:	00970c23          	sb	s1,24(a4)
    80006fa8:	08f92e23          	sw	a5,156(s2)
    80006fac:	01013403          	ld	s0,16(sp)
    80006fb0:	01813083          	ld	ra,24(sp)
    80006fb4:	00813483          	ld	s1,8(sp)
    80006fb8:	00013903          	ld	s2,0(sp)
    80006fbc:	00006517          	auipc	a0,0x6
    80006fc0:	9fc50513          	addi	a0,a0,-1540 # 8000c9b8 <cons>
    80006fc4:	02010113          	addi	sp,sp,32
    80006fc8:	00001317          	auipc	t1,0x1
    80006fcc:	eb030067          	jr	-336(t1) # 80007e78 <release>
    80006fd0:	00a00493          	li	s1,10
    80006fd4:	fc1ff06f          	j	80006f94 <consoleintr+0x50>

0000000080006fd8 <consoleinit>:
    80006fd8:	fe010113          	addi	sp,sp,-32
    80006fdc:	00113c23          	sd	ra,24(sp)
    80006fe0:	00813823          	sd	s0,16(sp)
    80006fe4:	00913423          	sd	s1,8(sp)
    80006fe8:	02010413          	addi	s0,sp,32
    80006fec:	00006497          	auipc	s1,0x6
    80006ff0:	9cc48493          	addi	s1,s1,-1588 # 8000c9b8 <cons>
    80006ff4:	00048513          	mv	a0,s1
    80006ff8:	00002597          	auipc	a1,0x2
    80006ffc:	48058593          	addi	a1,a1,1152 # 80009478 <CONSOLE_STATUS+0x468>
    80007000:	00001097          	auipc	ra,0x1
    80007004:	d88080e7          	jalr	-632(ra) # 80007d88 <initlock>
    80007008:	00000097          	auipc	ra,0x0
    8000700c:	7ac080e7          	jalr	1964(ra) # 800077b4 <uartinit>
    80007010:	01813083          	ld	ra,24(sp)
    80007014:	01013403          	ld	s0,16(sp)
    80007018:	00000797          	auipc	a5,0x0
    8000701c:	d9c78793          	addi	a5,a5,-612 # 80006db4 <consoleread>
    80007020:	0af4bc23          	sd	a5,184(s1)
    80007024:	00000797          	auipc	a5,0x0
    80007028:	cec78793          	addi	a5,a5,-788 # 80006d10 <consolewrite>
    8000702c:	0cf4b023          	sd	a5,192(s1)
    80007030:	00813483          	ld	s1,8(sp)
    80007034:	02010113          	addi	sp,sp,32
    80007038:	00008067          	ret

000000008000703c <console_read>:
    8000703c:	ff010113          	addi	sp,sp,-16
    80007040:	00813423          	sd	s0,8(sp)
    80007044:	01010413          	addi	s0,sp,16
    80007048:	00813403          	ld	s0,8(sp)
    8000704c:	00006317          	auipc	t1,0x6
    80007050:	a2433303          	ld	t1,-1500(t1) # 8000ca70 <devsw+0x10>
    80007054:	01010113          	addi	sp,sp,16
    80007058:	00030067          	jr	t1

000000008000705c <console_write>:
    8000705c:	ff010113          	addi	sp,sp,-16
    80007060:	00813423          	sd	s0,8(sp)
    80007064:	01010413          	addi	s0,sp,16
    80007068:	00813403          	ld	s0,8(sp)
    8000706c:	00006317          	auipc	t1,0x6
    80007070:	a0c33303          	ld	t1,-1524(t1) # 8000ca78 <devsw+0x18>
    80007074:	01010113          	addi	sp,sp,16
    80007078:	00030067          	jr	t1

000000008000707c <panic>:
    8000707c:	fe010113          	addi	sp,sp,-32
    80007080:	00113c23          	sd	ra,24(sp)
    80007084:	00813823          	sd	s0,16(sp)
    80007088:	00913423          	sd	s1,8(sp)
    8000708c:	02010413          	addi	s0,sp,32
    80007090:	00050493          	mv	s1,a0
    80007094:	00002517          	auipc	a0,0x2
    80007098:	3ec50513          	addi	a0,a0,1004 # 80009480 <CONSOLE_STATUS+0x470>
    8000709c:	00006797          	auipc	a5,0x6
    800070a0:	a607ae23          	sw	zero,-1412(a5) # 8000cb18 <pr+0x18>
    800070a4:	00000097          	auipc	ra,0x0
    800070a8:	034080e7          	jalr	52(ra) # 800070d8 <__printf>
    800070ac:	00048513          	mv	a0,s1
    800070b0:	00000097          	auipc	ra,0x0
    800070b4:	028080e7          	jalr	40(ra) # 800070d8 <__printf>
    800070b8:	00002517          	auipc	a0,0x2
    800070bc:	ff050513          	addi	a0,a0,-16 # 800090a8 <CONSOLE_STATUS+0x98>
    800070c0:	00000097          	auipc	ra,0x0
    800070c4:	018080e7          	jalr	24(ra) # 800070d8 <__printf>
    800070c8:	00100793          	li	a5,1
    800070cc:	00004717          	auipc	a4,0x4
    800070d0:	72f72e23          	sw	a5,1852(a4) # 8000b808 <panicked>
    800070d4:	0000006f          	j	800070d4 <panic+0x58>

00000000800070d8 <__printf>:
    800070d8:	f3010113          	addi	sp,sp,-208
    800070dc:	08813023          	sd	s0,128(sp)
    800070e0:	07313423          	sd	s3,104(sp)
    800070e4:	09010413          	addi	s0,sp,144
    800070e8:	05813023          	sd	s8,64(sp)
    800070ec:	08113423          	sd	ra,136(sp)
    800070f0:	06913c23          	sd	s1,120(sp)
    800070f4:	07213823          	sd	s2,112(sp)
    800070f8:	07413023          	sd	s4,96(sp)
    800070fc:	05513c23          	sd	s5,88(sp)
    80007100:	05613823          	sd	s6,80(sp)
    80007104:	05713423          	sd	s7,72(sp)
    80007108:	03913c23          	sd	s9,56(sp)
    8000710c:	03a13823          	sd	s10,48(sp)
    80007110:	03b13423          	sd	s11,40(sp)
    80007114:	00006317          	auipc	t1,0x6
    80007118:	9ec30313          	addi	t1,t1,-1556 # 8000cb00 <pr>
    8000711c:	01832c03          	lw	s8,24(t1)
    80007120:	00b43423          	sd	a1,8(s0)
    80007124:	00c43823          	sd	a2,16(s0)
    80007128:	00d43c23          	sd	a3,24(s0)
    8000712c:	02e43023          	sd	a4,32(s0)
    80007130:	02f43423          	sd	a5,40(s0)
    80007134:	03043823          	sd	a6,48(s0)
    80007138:	03143c23          	sd	a7,56(s0)
    8000713c:	00050993          	mv	s3,a0
    80007140:	4a0c1663          	bnez	s8,800075ec <__printf+0x514>
    80007144:	60098c63          	beqz	s3,8000775c <__printf+0x684>
    80007148:	0009c503          	lbu	a0,0(s3)
    8000714c:	00840793          	addi	a5,s0,8
    80007150:	f6f43c23          	sd	a5,-136(s0)
    80007154:	00000493          	li	s1,0
    80007158:	22050063          	beqz	a0,80007378 <__printf+0x2a0>
    8000715c:	00002a37          	lui	s4,0x2
    80007160:	00018ab7          	lui	s5,0x18
    80007164:	000f4b37          	lui	s6,0xf4
    80007168:	00989bb7          	lui	s7,0x989
    8000716c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007170:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007174:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007178:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000717c:	00148c9b          	addiw	s9,s1,1
    80007180:	02500793          	li	a5,37
    80007184:	01998933          	add	s2,s3,s9
    80007188:	38f51263          	bne	a0,a5,8000750c <__printf+0x434>
    8000718c:	00094783          	lbu	a5,0(s2)
    80007190:	00078c9b          	sext.w	s9,a5
    80007194:	1e078263          	beqz	a5,80007378 <__printf+0x2a0>
    80007198:	0024849b          	addiw	s1,s1,2
    8000719c:	07000713          	li	a4,112
    800071a0:	00998933          	add	s2,s3,s1
    800071a4:	38e78a63          	beq	a5,a4,80007538 <__printf+0x460>
    800071a8:	20f76863          	bltu	a4,a5,800073b8 <__printf+0x2e0>
    800071ac:	42a78863          	beq	a5,a0,800075dc <__printf+0x504>
    800071b0:	06400713          	li	a4,100
    800071b4:	40e79663          	bne	a5,a4,800075c0 <__printf+0x4e8>
    800071b8:	f7843783          	ld	a5,-136(s0)
    800071bc:	0007a603          	lw	a2,0(a5)
    800071c0:	00878793          	addi	a5,a5,8
    800071c4:	f6f43c23          	sd	a5,-136(s0)
    800071c8:	42064a63          	bltz	a2,800075fc <__printf+0x524>
    800071cc:	00a00713          	li	a4,10
    800071d0:	02e677bb          	remuw	a5,a2,a4
    800071d4:	00002d97          	auipc	s11,0x2
    800071d8:	2d4d8d93          	addi	s11,s11,724 # 800094a8 <digits>
    800071dc:	00900593          	li	a1,9
    800071e0:	0006051b          	sext.w	a0,a2
    800071e4:	00000c93          	li	s9,0
    800071e8:	02079793          	slli	a5,a5,0x20
    800071ec:	0207d793          	srli	a5,a5,0x20
    800071f0:	00fd87b3          	add	a5,s11,a5
    800071f4:	0007c783          	lbu	a5,0(a5)
    800071f8:	02e656bb          	divuw	a3,a2,a4
    800071fc:	f8f40023          	sb	a5,-128(s0)
    80007200:	14c5d863          	bge	a1,a2,80007350 <__printf+0x278>
    80007204:	06300593          	li	a1,99
    80007208:	00100c93          	li	s9,1
    8000720c:	02e6f7bb          	remuw	a5,a3,a4
    80007210:	02079793          	slli	a5,a5,0x20
    80007214:	0207d793          	srli	a5,a5,0x20
    80007218:	00fd87b3          	add	a5,s11,a5
    8000721c:	0007c783          	lbu	a5,0(a5)
    80007220:	02e6d73b          	divuw	a4,a3,a4
    80007224:	f8f400a3          	sb	a5,-127(s0)
    80007228:	12a5f463          	bgeu	a1,a0,80007350 <__printf+0x278>
    8000722c:	00a00693          	li	a3,10
    80007230:	00900593          	li	a1,9
    80007234:	02d777bb          	remuw	a5,a4,a3
    80007238:	02079793          	slli	a5,a5,0x20
    8000723c:	0207d793          	srli	a5,a5,0x20
    80007240:	00fd87b3          	add	a5,s11,a5
    80007244:	0007c503          	lbu	a0,0(a5)
    80007248:	02d757bb          	divuw	a5,a4,a3
    8000724c:	f8a40123          	sb	a0,-126(s0)
    80007250:	48e5f263          	bgeu	a1,a4,800076d4 <__printf+0x5fc>
    80007254:	06300513          	li	a0,99
    80007258:	02d7f5bb          	remuw	a1,a5,a3
    8000725c:	02059593          	slli	a1,a1,0x20
    80007260:	0205d593          	srli	a1,a1,0x20
    80007264:	00bd85b3          	add	a1,s11,a1
    80007268:	0005c583          	lbu	a1,0(a1)
    8000726c:	02d7d7bb          	divuw	a5,a5,a3
    80007270:	f8b401a3          	sb	a1,-125(s0)
    80007274:	48e57263          	bgeu	a0,a4,800076f8 <__printf+0x620>
    80007278:	3e700513          	li	a0,999
    8000727c:	02d7f5bb          	remuw	a1,a5,a3
    80007280:	02059593          	slli	a1,a1,0x20
    80007284:	0205d593          	srli	a1,a1,0x20
    80007288:	00bd85b3          	add	a1,s11,a1
    8000728c:	0005c583          	lbu	a1,0(a1)
    80007290:	02d7d7bb          	divuw	a5,a5,a3
    80007294:	f8b40223          	sb	a1,-124(s0)
    80007298:	46e57663          	bgeu	a0,a4,80007704 <__printf+0x62c>
    8000729c:	02d7f5bb          	remuw	a1,a5,a3
    800072a0:	02059593          	slli	a1,a1,0x20
    800072a4:	0205d593          	srli	a1,a1,0x20
    800072a8:	00bd85b3          	add	a1,s11,a1
    800072ac:	0005c583          	lbu	a1,0(a1)
    800072b0:	02d7d7bb          	divuw	a5,a5,a3
    800072b4:	f8b402a3          	sb	a1,-123(s0)
    800072b8:	46ea7863          	bgeu	s4,a4,80007728 <__printf+0x650>
    800072bc:	02d7f5bb          	remuw	a1,a5,a3
    800072c0:	02059593          	slli	a1,a1,0x20
    800072c4:	0205d593          	srli	a1,a1,0x20
    800072c8:	00bd85b3          	add	a1,s11,a1
    800072cc:	0005c583          	lbu	a1,0(a1)
    800072d0:	02d7d7bb          	divuw	a5,a5,a3
    800072d4:	f8b40323          	sb	a1,-122(s0)
    800072d8:	3eeaf863          	bgeu	s5,a4,800076c8 <__printf+0x5f0>
    800072dc:	02d7f5bb          	remuw	a1,a5,a3
    800072e0:	02059593          	slli	a1,a1,0x20
    800072e4:	0205d593          	srli	a1,a1,0x20
    800072e8:	00bd85b3          	add	a1,s11,a1
    800072ec:	0005c583          	lbu	a1,0(a1)
    800072f0:	02d7d7bb          	divuw	a5,a5,a3
    800072f4:	f8b403a3          	sb	a1,-121(s0)
    800072f8:	42eb7e63          	bgeu	s6,a4,80007734 <__printf+0x65c>
    800072fc:	02d7f5bb          	remuw	a1,a5,a3
    80007300:	02059593          	slli	a1,a1,0x20
    80007304:	0205d593          	srli	a1,a1,0x20
    80007308:	00bd85b3          	add	a1,s11,a1
    8000730c:	0005c583          	lbu	a1,0(a1)
    80007310:	02d7d7bb          	divuw	a5,a5,a3
    80007314:	f8b40423          	sb	a1,-120(s0)
    80007318:	42ebfc63          	bgeu	s7,a4,80007750 <__printf+0x678>
    8000731c:	02079793          	slli	a5,a5,0x20
    80007320:	0207d793          	srli	a5,a5,0x20
    80007324:	00fd8db3          	add	s11,s11,a5
    80007328:	000dc703          	lbu	a4,0(s11)
    8000732c:	00a00793          	li	a5,10
    80007330:	00900c93          	li	s9,9
    80007334:	f8e404a3          	sb	a4,-119(s0)
    80007338:	00065c63          	bgez	a2,80007350 <__printf+0x278>
    8000733c:	f9040713          	addi	a4,s0,-112
    80007340:	00f70733          	add	a4,a4,a5
    80007344:	02d00693          	li	a3,45
    80007348:	fed70823          	sb	a3,-16(a4)
    8000734c:	00078c93          	mv	s9,a5
    80007350:	f8040793          	addi	a5,s0,-128
    80007354:	01978cb3          	add	s9,a5,s9
    80007358:	f7f40d13          	addi	s10,s0,-129
    8000735c:	000cc503          	lbu	a0,0(s9)
    80007360:	fffc8c93          	addi	s9,s9,-1
    80007364:	00000097          	auipc	ra,0x0
    80007368:	b90080e7          	jalr	-1136(ra) # 80006ef4 <consputc>
    8000736c:	ffac98e3          	bne	s9,s10,8000735c <__printf+0x284>
    80007370:	00094503          	lbu	a0,0(s2)
    80007374:	e00514e3          	bnez	a0,8000717c <__printf+0xa4>
    80007378:	1a0c1663          	bnez	s8,80007524 <__printf+0x44c>
    8000737c:	08813083          	ld	ra,136(sp)
    80007380:	08013403          	ld	s0,128(sp)
    80007384:	07813483          	ld	s1,120(sp)
    80007388:	07013903          	ld	s2,112(sp)
    8000738c:	06813983          	ld	s3,104(sp)
    80007390:	06013a03          	ld	s4,96(sp)
    80007394:	05813a83          	ld	s5,88(sp)
    80007398:	05013b03          	ld	s6,80(sp)
    8000739c:	04813b83          	ld	s7,72(sp)
    800073a0:	04013c03          	ld	s8,64(sp)
    800073a4:	03813c83          	ld	s9,56(sp)
    800073a8:	03013d03          	ld	s10,48(sp)
    800073ac:	02813d83          	ld	s11,40(sp)
    800073b0:	0d010113          	addi	sp,sp,208
    800073b4:	00008067          	ret
    800073b8:	07300713          	li	a4,115
    800073bc:	1ce78a63          	beq	a5,a4,80007590 <__printf+0x4b8>
    800073c0:	07800713          	li	a4,120
    800073c4:	1ee79e63          	bne	a5,a4,800075c0 <__printf+0x4e8>
    800073c8:	f7843783          	ld	a5,-136(s0)
    800073cc:	0007a703          	lw	a4,0(a5)
    800073d0:	00878793          	addi	a5,a5,8
    800073d4:	f6f43c23          	sd	a5,-136(s0)
    800073d8:	28074263          	bltz	a4,8000765c <__printf+0x584>
    800073dc:	00002d97          	auipc	s11,0x2
    800073e0:	0ccd8d93          	addi	s11,s11,204 # 800094a8 <digits>
    800073e4:	00f77793          	andi	a5,a4,15
    800073e8:	00fd87b3          	add	a5,s11,a5
    800073ec:	0007c683          	lbu	a3,0(a5)
    800073f0:	00f00613          	li	a2,15
    800073f4:	0007079b          	sext.w	a5,a4
    800073f8:	f8d40023          	sb	a3,-128(s0)
    800073fc:	0047559b          	srliw	a1,a4,0x4
    80007400:	0047569b          	srliw	a3,a4,0x4
    80007404:	00000c93          	li	s9,0
    80007408:	0ee65063          	bge	a2,a4,800074e8 <__printf+0x410>
    8000740c:	00f6f693          	andi	a3,a3,15
    80007410:	00dd86b3          	add	a3,s11,a3
    80007414:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007418:	0087d79b          	srliw	a5,a5,0x8
    8000741c:	00100c93          	li	s9,1
    80007420:	f8d400a3          	sb	a3,-127(s0)
    80007424:	0cb67263          	bgeu	a2,a1,800074e8 <__printf+0x410>
    80007428:	00f7f693          	andi	a3,a5,15
    8000742c:	00dd86b3          	add	a3,s11,a3
    80007430:	0006c583          	lbu	a1,0(a3)
    80007434:	00f00613          	li	a2,15
    80007438:	0047d69b          	srliw	a3,a5,0x4
    8000743c:	f8b40123          	sb	a1,-126(s0)
    80007440:	0047d593          	srli	a1,a5,0x4
    80007444:	28f67e63          	bgeu	a2,a5,800076e0 <__printf+0x608>
    80007448:	00f6f693          	andi	a3,a3,15
    8000744c:	00dd86b3          	add	a3,s11,a3
    80007450:	0006c503          	lbu	a0,0(a3)
    80007454:	0087d813          	srli	a6,a5,0x8
    80007458:	0087d69b          	srliw	a3,a5,0x8
    8000745c:	f8a401a3          	sb	a0,-125(s0)
    80007460:	28b67663          	bgeu	a2,a1,800076ec <__printf+0x614>
    80007464:	00f6f693          	andi	a3,a3,15
    80007468:	00dd86b3          	add	a3,s11,a3
    8000746c:	0006c583          	lbu	a1,0(a3)
    80007470:	00c7d513          	srli	a0,a5,0xc
    80007474:	00c7d69b          	srliw	a3,a5,0xc
    80007478:	f8b40223          	sb	a1,-124(s0)
    8000747c:	29067a63          	bgeu	a2,a6,80007710 <__printf+0x638>
    80007480:	00f6f693          	andi	a3,a3,15
    80007484:	00dd86b3          	add	a3,s11,a3
    80007488:	0006c583          	lbu	a1,0(a3)
    8000748c:	0107d813          	srli	a6,a5,0x10
    80007490:	0107d69b          	srliw	a3,a5,0x10
    80007494:	f8b402a3          	sb	a1,-123(s0)
    80007498:	28a67263          	bgeu	a2,a0,8000771c <__printf+0x644>
    8000749c:	00f6f693          	andi	a3,a3,15
    800074a0:	00dd86b3          	add	a3,s11,a3
    800074a4:	0006c683          	lbu	a3,0(a3)
    800074a8:	0147d79b          	srliw	a5,a5,0x14
    800074ac:	f8d40323          	sb	a3,-122(s0)
    800074b0:	21067663          	bgeu	a2,a6,800076bc <__printf+0x5e4>
    800074b4:	02079793          	slli	a5,a5,0x20
    800074b8:	0207d793          	srli	a5,a5,0x20
    800074bc:	00fd8db3          	add	s11,s11,a5
    800074c0:	000dc683          	lbu	a3,0(s11)
    800074c4:	00800793          	li	a5,8
    800074c8:	00700c93          	li	s9,7
    800074cc:	f8d403a3          	sb	a3,-121(s0)
    800074d0:	00075c63          	bgez	a4,800074e8 <__printf+0x410>
    800074d4:	f9040713          	addi	a4,s0,-112
    800074d8:	00f70733          	add	a4,a4,a5
    800074dc:	02d00693          	li	a3,45
    800074e0:	fed70823          	sb	a3,-16(a4)
    800074e4:	00078c93          	mv	s9,a5
    800074e8:	f8040793          	addi	a5,s0,-128
    800074ec:	01978cb3          	add	s9,a5,s9
    800074f0:	f7f40d13          	addi	s10,s0,-129
    800074f4:	000cc503          	lbu	a0,0(s9)
    800074f8:	fffc8c93          	addi	s9,s9,-1
    800074fc:	00000097          	auipc	ra,0x0
    80007500:	9f8080e7          	jalr	-1544(ra) # 80006ef4 <consputc>
    80007504:	ff9d18e3          	bne	s10,s9,800074f4 <__printf+0x41c>
    80007508:	0100006f          	j	80007518 <__printf+0x440>
    8000750c:	00000097          	auipc	ra,0x0
    80007510:	9e8080e7          	jalr	-1560(ra) # 80006ef4 <consputc>
    80007514:	000c8493          	mv	s1,s9
    80007518:	00094503          	lbu	a0,0(s2)
    8000751c:	c60510e3          	bnez	a0,8000717c <__printf+0xa4>
    80007520:	e40c0ee3          	beqz	s8,8000737c <__printf+0x2a4>
    80007524:	00005517          	auipc	a0,0x5
    80007528:	5dc50513          	addi	a0,a0,1500 # 8000cb00 <pr>
    8000752c:	00001097          	auipc	ra,0x1
    80007530:	94c080e7          	jalr	-1716(ra) # 80007e78 <release>
    80007534:	e49ff06f          	j	8000737c <__printf+0x2a4>
    80007538:	f7843783          	ld	a5,-136(s0)
    8000753c:	03000513          	li	a0,48
    80007540:	01000d13          	li	s10,16
    80007544:	00878713          	addi	a4,a5,8
    80007548:	0007bc83          	ld	s9,0(a5)
    8000754c:	f6e43c23          	sd	a4,-136(s0)
    80007550:	00000097          	auipc	ra,0x0
    80007554:	9a4080e7          	jalr	-1628(ra) # 80006ef4 <consputc>
    80007558:	07800513          	li	a0,120
    8000755c:	00000097          	auipc	ra,0x0
    80007560:	998080e7          	jalr	-1640(ra) # 80006ef4 <consputc>
    80007564:	00002d97          	auipc	s11,0x2
    80007568:	f44d8d93          	addi	s11,s11,-188 # 800094a8 <digits>
    8000756c:	03ccd793          	srli	a5,s9,0x3c
    80007570:	00fd87b3          	add	a5,s11,a5
    80007574:	0007c503          	lbu	a0,0(a5)
    80007578:	fffd0d1b          	addiw	s10,s10,-1
    8000757c:	004c9c93          	slli	s9,s9,0x4
    80007580:	00000097          	auipc	ra,0x0
    80007584:	974080e7          	jalr	-1676(ra) # 80006ef4 <consputc>
    80007588:	fe0d12e3          	bnez	s10,8000756c <__printf+0x494>
    8000758c:	f8dff06f          	j	80007518 <__printf+0x440>
    80007590:	f7843783          	ld	a5,-136(s0)
    80007594:	0007bc83          	ld	s9,0(a5)
    80007598:	00878793          	addi	a5,a5,8
    8000759c:	f6f43c23          	sd	a5,-136(s0)
    800075a0:	000c9a63          	bnez	s9,800075b4 <__printf+0x4dc>
    800075a4:	1080006f          	j	800076ac <__printf+0x5d4>
    800075a8:	001c8c93          	addi	s9,s9,1
    800075ac:	00000097          	auipc	ra,0x0
    800075b0:	948080e7          	jalr	-1720(ra) # 80006ef4 <consputc>
    800075b4:	000cc503          	lbu	a0,0(s9)
    800075b8:	fe0518e3          	bnez	a0,800075a8 <__printf+0x4d0>
    800075bc:	f5dff06f          	j	80007518 <__printf+0x440>
    800075c0:	02500513          	li	a0,37
    800075c4:	00000097          	auipc	ra,0x0
    800075c8:	930080e7          	jalr	-1744(ra) # 80006ef4 <consputc>
    800075cc:	000c8513          	mv	a0,s9
    800075d0:	00000097          	auipc	ra,0x0
    800075d4:	924080e7          	jalr	-1756(ra) # 80006ef4 <consputc>
    800075d8:	f41ff06f          	j	80007518 <__printf+0x440>
    800075dc:	02500513          	li	a0,37
    800075e0:	00000097          	auipc	ra,0x0
    800075e4:	914080e7          	jalr	-1772(ra) # 80006ef4 <consputc>
    800075e8:	f31ff06f          	j	80007518 <__printf+0x440>
    800075ec:	00030513          	mv	a0,t1
    800075f0:	00000097          	auipc	ra,0x0
    800075f4:	7bc080e7          	jalr	1980(ra) # 80007dac <acquire>
    800075f8:	b4dff06f          	j	80007144 <__printf+0x6c>
    800075fc:	40c0053b          	negw	a0,a2
    80007600:	00a00713          	li	a4,10
    80007604:	02e576bb          	remuw	a3,a0,a4
    80007608:	00002d97          	auipc	s11,0x2
    8000760c:	ea0d8d93          	addi	s11,s11,-352 # 800094a8 <digits>
    80007610:	ff700593          	li	a1,-9
    80007614:	02069693          	slli	a3,a3,0x20
    80007618:	0206d693          	srli	a3,a3,0x20
    8000761c:	00dd86b3          	add	a3,s11,a3
    80007620:	0006c683          	lbu	a3,0(a3)
    80007624:	02e557bb          	divuw	a5,a0,a4
    80007628:	f8d40023          	sb	a3,-128(s0)
    8000762c:	10b65e63          	bge	a2,a1,80007748 <__printf+0x670>
    80007630:	06300593          	li	a1,99
    80007634:	02e7f6bb          	remuw	a3,a5,a4
    80007638:	02069693          	slli	a3,a3,0x20
    8000763c:	0206d693          	srli	a3,a3,0x20
    80007640:	00dd86b3          	add	a3,s11,a3
    80007644:	0006c683          	lbu	a3,0(a3)
    80007648:	02e7d73b          	divuw	a4,a5,a4
    8000764c:	00200793          	li	a5,2
    80007650:	f8d400a3          	sb	a3,-127(s0)
    80007654:	bca5ece3          	bltu	a1,a0,8000722c <__printf+0x154>
    80007658:	ce5ff06f          	j	8000733c <__printf+0x264>
    8000765c:	40e007bb          	negw	a5,a4
    80007660:	00002d97          	auipc	s11,0x2
    80007664:	e48d8d93          	addi	s11,s11,-440 # 800094a8 <digits>
    80007668:	00f7f693          	andi	a3,a5,15
    8000766c:	00dd86b3          	add	a3,s11,a3
    80007670:	0006c583          	lbu	a1,0(a3)
    80007674:	ff100613          	li	a2,-15
    80007678:	0047d69b          	srliw	a3,a5,0x4
    8000767c:	f8b40023          	sb	a1,-128(s0)
    80007680:	0047d59b          	srliw	a1,a5,0x4
    80007684:	0ac75e63          	bge	a4,a2,80007740 <__printf+0x668>
    80007688:	00f6f693          	andi	a3,a3,15
    8000768c:	00dd86b3          	add	a3,s11,a3
    80007690:	0006c603          	lbu	a2,0(a3)
    80007694:	00f00693          	li	a3,15
    80007698:	0087d79b          	srliw	a5,a5,0x8
    8000769c:	f8c400a3          	sb	a2,-127(s0)
    800076a0:	d8b6e4e3          	bltu	a3,a1,80007428 <__printf+0x350>
    800076a4:	00200793          	li	a5,2
    800076a8:	e2dff06f          	j	800074d4 <__printf+0x3fc>
    800076ac:	00002c97          	auipc	s9,0x2
    800076b0:	ddcc8c93          	addi	s9,s9,-548 # 80009488 <CONSOLE_STATUS+0x478>
    800076b4:	02800513          	li	a0,40
    800076b8:	ef1ff06f          	j	800075a8 <__printf+0x4d0>
    800076bc:	00700793          	li	a5,7
    800076c0:	00600c93          	li	s9,6
    800076c4:	e0dff06f          	j	800074d0 <__printf+0x3f8>
    800076c8:	00700793          	li	a5,7
    800076cc:	00600c93          	li	s9,6
    800076d0:	c69ff06f          	j	80007338 <__printf+0x260>
    800076d4:	00300793          	li	a5,3
    800076d8:	00200c93          	li	s9,2
    800076dc:	c5dff06f          	j	80007338 <__printf+0x260>
    800076e0:	00300793          	li	a5,3
    800076e4:	00200c93          	li	s9,2
    800076e8:	de9ff06f          	j	800074d0 <__printf+0x3f8>
    800076ec:	00400793          	li	a5,4
    800076f0:	00300c93          	li	s9,3
    800076f4:	dddff06f          	j	800074d0 <__printf+0x3f8>
    800076f8:	00400793          	li	a5,4
    800076fc:	00300c93          	li	s9,3
    80007700:	c39ff06f          	j	80007338 <__printf+0x260>
    80007704:	00500793          	li	a5,5
    80007708:	00400c93          	li	s9,4
    8000770c:	c2dff06f          	j	80007338 <__printf+0x260>
    80007710:	00500793          	li	a5,5
    80007714:	00400c93          	li	s9,4
    80007718:	db9ff06f          	j	800074d0 <__printf+0x3f8>
    8000771c:	00600793          	li	a5,6
    80007720:	00500c93          	li	s9,5
    80007724:	dadff06f          	j	800074d0 <__printf+0x3f8>
    80007728:	00600793          	li	a5,6
    8000772c:	00500c93          	li	s9,5
    80007730:	c09ff06f          	j	80007338 <__printf+0x260>
    80007734:	00800793          	li	a5,8
    80007738:	00700c93          	li	s9,7
    8000773c:	bfdff06f          	j	80007338 <__printf+0x260>
    80007740:	00100793          	li	a5,1
    80007744:	d91ff06f          	j	800074d4 <__printf+0x3fc>
    80007748:	00100793          	li	a5,1
    8000774c:	bf1ff06f          	j	8000733c <__printf+0x264>
    80007750:	00900793          	li	a5,9
    80007754:	00800c93          	li	s9,8
    80007758:	be1ff06f          	j	80007338 <__printf+0x260>
    8000775c:	00002517          	auipc	a0,0x2
    80007760:	d3450513          	addi	a0,a0,-716 # 80009490 <CONSOLE_STATUS+0x480>
    80007764:	00000097          	auipc	ra,0x0
    80007768:	918080e7          	jalr	-1768(ra) # 8000707c <panic>

000000008000776c <printfinit>:
    8000776c:	fe010113          	addi	sp,sp,-32
    80007770:	00813823          	sd	s0,16(sp)
    80007774:	00913423          	sd	s1,8(sp)
    80007778:	00113c23          	sd	ra,24(sp)
    8000777c:	02010413          	addi	s0,sp,32
    80007780:	00005497          	auipc	s1,0x5
    80007784:	38048493          	addi	s1,s1,896 # 8000cb00 <pr>
    80007788:	00048513          	mv	a0,s1
    8000778c:	00002597          	auipc	a1,0x2
    80007790:	d1458593          	addi	a1,a1,-748 # 800094a0 <CONSOLE_STATUS+0x490>
    80007794:	00000097          	auipc	ra,0x0
    80007798:	5f4080e7          	jalr	1524(ra) # 80007d88 <initlock>
    8000779c:	01813083          	ld	ra,24(sp)
    800077a0:	01013403          	ld	s0,16(sp)
    800077a4:	0004ac23          	sw	zero,24(s1)
    800077a8:	00813483          	ld	s1,8(sp)
    800077ac:	02010113          	addi	sp,sp,32
    800077b0:	00008067          	ret

00000000800077b4 <uartinit>:
    800077b4:	ff010113          	addi	sp,sp,-16
    800077b8:	00813423          	sd	s0,8(sp)
    800077bc:	01010413          	addi	s0,sp,16
    800077c0:	100007b7          	lui	a5,0x10000
    800077c4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800077c8:	f8000713          	li	a4,-128
    800077cc:	00e781a3          	sb	a4,3(a5)
    800077d0:	00300713          	li	a4,3
    800077d4:	00e78023          	sb	a4,0(a5)
    800077d8:	000780a3          	sb	zero,1(a5)
    800077dc:	00e781a3          	sb	a4,3(a5)
    800077e0:	00700693          	li	a3,7
    800077e4:	00d78123          	sb	a3,2(a5)
    800077e8:	00e780a3          	sb	a4,1(a5)
    800077ec:	00813403          	ld	s0,8(sp)
    800077f0:	01010113          	addi	sp,sp,16
    800077f4:	00008067          	ret

00000000800077f8 <uartputc>:
    800077f8:	00004797          	auipc	a5,0x4
    800077fc:	0107a783          	lw	a5,16(a5) # 8000b808 <panicked>
    80007800:	00078463          	beqz	a5,80007808 <uartputc+0x10>
    80007804:	0000006f          	j	80007804 <uartputc+0xc>
    80007808:	fd010113          	addi	sp,sp,-48
    8000780c:	02813023          	sd	s0,32(sp)
    80007810:	00913c23          	sd	s1,24(sp)
    80007814:	01213823          	sd	s2,16(sp)
    80007818:	01313423          	sd	s3,8(sp)
    8000781c:	02113423          	sd	ra,40(sp)
    80007820:	03010413          	addi	s0,sp,48
    80007824:	00004917          	auipc	s2,0x4
    80007828:	fec90913          	addi	s2,s2,-20 # 8000b810 <uart_tx_r>
    8000782c:	00093783          	ld	a5,0(s2)
    80007830:	00004497          	auipc	s1,0x4
    80007834:	fe848493          	addi	s1,s1,-24 # 8000b818 <uart_tx_w>
    80007838:	0004b703          	ld	a4,0(s1)
    8000783c:	02078693          	addi	a3,a5,32
    80007840:	00050993          	mv	s3,a0
    80007844:	02e69c63          	bne	a3,a4,8000787c <uartputc+0x84>
    80007848:	00001097          	auipc	ra,0x1
    8000784c:	834080e7          	jalr	-1996(ra) # 8000807c <push_on>
    80007850:	00093783          	ld	a5,0(s2)
    80007854:	0004b703          	ld	a4,0(s1)
    80007858:	02078793          	addi	a5,a5,32
    8000785c:	00e79463          	bne	a5,a4,80007864 <uartputc+0x6c>
    80007860:	0000006f          	j	80007860 <uartputc+0x68>
    80007864:	00001097          	auipc	ra,0x1
    80007868:	88c080e7          	jalr	-1908(ra) # 800080f0 <pop_on>
    8000786c:	00093783          	ld	a5,0(s2)
    80007870:	0004b703          	ld	a4,0(s1)
    80007874:	02078693          	addi	a3,a5,32
    80007878:	fce688e3          	beq	a3,a4,80007848 <uartputc+0x50>
    8000787c:	01f77693          	andi	a3,a4,31
    80007880:	00005597          	auipc	a1,0x5
    80007884:	2a058593          	addi	a1,a1,672 # 8000cb20 <uart_tx_buf>
    80007888:	00d586b3          	add	a3,a1,a3
    8000788c:	00170713          	addi	a4,a4,1
    80007890:	01368023          	sb	s3,0(a3)
    80007894:	00e4b023          	sd	a4,0(s1)
    80007898:	10000637          	lui	a2,0x10000
    8000789c:	02f71063          	bne	a4,a5,800078bc <uartputc+0xc4>
    800078a0:	0340006f          	j	800078d4 <uartputc+0xdc>
    800078a4:	00074703          	lbu	a4,0(a4)
    800078a8:	00f93023          	sd	a5,0(s2)
    800078ac:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800078b0:	00093783          	ld	a5,0(s2)
    800078b4:	0004b703          	ld	a4,0(s1)
    800078b8:	00f70e63          	beq	a4,a5,800078d4 <uartputc+0xdc>
    800078bc:	00564683          	lbu	a3,5(a2)
    800078c0:	01f7f713          	andi	a4,a5,31
    800078c4:	00e58733          	add	a4,a1,a4
    800078c8:	0206f693          	andi	a3,a3,32
    800078cc:	00178793          	addi	a5,a5,1
    800078d0:	fc069ae3          	bnez	a3,800078a4 <uartputc+0xac>
    800078d4:	02813083          	ld	ra,40(sp)
    800078d8:	02013403          	ld	s0,32(sp)
    800078dc:	01813483          	ld	s1,24(sp)
    800078e0:	01013903          	ld	s2,16(sp)
    800078e4:	00813983          	ld	s3,8(sp)
    800078e8:	03010113          	addi	sp,sp,48
    800078ec:	00008067          	ret

00000000800078f0 <uartputc_sync>:
    800078f0:	ff010113          	addi	sp,sp,-16
    800078f4:	00813423          	sd	s0,8(sp)
    800078f8:	01010413          	addi	s0,sp,16
    800078fc:	00004717          	auipc	a4,0x4
    80007900:	f0c72703          	lw	a4,-244(a4) # 8000b808 <panicked>
    80007904:	02071663          	bnez	a4,80007930 <uartputc_sync+0x40>
    80007908:	00050793          	mv	a5,a0
    8000790c:	100006b7          	lui	a3,0x10000
    80007910:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007914:	02077713          	andi	a4,a4,32
    80007918:	fe070ce3          	beqz	a4,80007910 <uartputc_sync+0x20>
    8000791c:	0ff7f793          	andi	a5,a5,255
    80007920:	00f68023          	sb	a5,0(a3)
    80007924:	00813403          	ld	s0,8(sp)
    80007928:	01010113          	addi	sp,sp,16
    8000792c:	00008067          	ret
    80007930:	0000006f          	j	80007930 <uartputc_sync+0x40>

0000000080007934 <uartstart>:
    80007934:	ff010113          	addi	sp,sp,-16
    80007938:	00813423          	sd	s0,8(sp)
    8000793c:	01010413          	addi	s0,sp,16
    80007940:	00004617          	auipc	a2,0x4
    80007944:	ed060613          	addi	a2,a2,-304 # 8000b810 <uart_tx_r>
    80007948:	00004517          	auipc	a0,0x4
    8000794c:	ed050513          	addi	a0,a0,-304 # 8000b818 <uart_tx_w>
    80007950:	00063783          	ld	a5,0(a2)
    80007954:	00053703          	ld	a4,0(a0)
    80007958:	04f70263          	beq	a4,a5,8000799c <uartstart+0x68>
    8000795c:	100005b7          	lui	a1,0x10000
    80007960:	00005817          	auipc	a6,0x5
    80007964:	1c080813          	addi	a6,a6,448 # 8000cb20 <uart_tx_buf>
    80007968:	01c0006f          	j	80007984 <uartstart+0x50>
    8000796c:	0006c703          	lbu	a4,0(a3)
    80007970:	00f63023          	sd	a5,0(a2)
    80007974:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007978:	00063783          	ld	a5,0(a2)
    8000797c:	00053703          	ld	a4,0(a0)
    80007980:	00f70e63          	beq	a4,a5,8000799c <uartstart+0x68>
    80007984:	01f7f713          	andi	a4,a5,31
    80007988:	00e806b3          	add	a3,a6,a4
    8000798c:	0055c703          	lbu	a4,5(a1)
    80007990:	00178793          	addi	a5,a5,1
    80007994:	02077713          	andi	a4,a4,32
    80007998:	fc071ae3          	bnez	a4,8000796c <uartstart+0x38>
    8000799c:	00813403          	ld	s0,8(sp)
    800079a0:	01010113          	addi	sp,sp,16
    800079a4:	00008067          	ret

00000000800079a8 <uartgetc>:
    800079a8:	ff010113          	addi	sp,sp,-16
    800079ac:	00813423          	sd	s0,8(sp)
    800079b0:	01010413          	addi	s0,sp,16
    800079b4:	10000737          	lui	a4,0x10000
    800079b8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800079bc:	0017f793          	andi	a5,a5,1
    800079c0:	00078c63          	beqz	a5,800079d8 <uartgetc+0x30>
    800079c4:	00074503          	lbu	a0,0(a4)
    800079c8:	0ff57513          	andi	a0,a0,255
    800079cc:	00813403          	ld	s0,8(sp)
    800079d0:	01010113          	addi	sp,sp,16
    800079d4:	00008067          	ret
    800079d8:	fff00513          	li	a0,-1
    800079dc:	ff1ff06f          	j	800079cc <uartgetc+0x24>

00000000800079e0 <uartintr>:
    800079e0:	100007b7          	lui	a5,0x10000
    800079e4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800079e8:	0017f793          	andi	a5,a5,1
    800079ec:	0a078463          	beqz	a5,80007a94 <uartintr+0xb4>
    800079f0:	fe010113          	addi	sp,sp,-32
    800079f4:	00813823          	sd	s0,16(sp)
    800079f8:	00913423          	sd	s1,8(sp)
    800079fc:	00113c23          	sd	ra,24(sp)
    80007a00:	02010413          	addi	s0,sp,32
    80007a04:	100004b7          	lui	s1,0x10000
    80007a08:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007a0c:	0ff57513          	andi	a0,a0,255
    80007a10:	fffff097          	auipc	ra,0xfffff
    80007a14:	534080e7          	jalr	1332(ra) # 80006f44 <consoleintr>
    80007a18:	0054c783          	lbu	a5,5(s1)
    80007a1c:	0017f793          	andi	a5,a5,1
    80007a20:	fe0794e3          	bnez	a5,80007a08 <uartintr+0x28>
    80007a24:	00004617          	auipc	a2,0x4
    80007a28:	dec60613          	addi	a2,a2,-532 # 8000b810 <uart_tx_r>
    80007a2c:	00004517          	auipc	a0,0x4
    80007a30:	dec50513          	addi	a0,a0,-532 # 8000b818 <uart_tx_w>
    80007a34:	00063783          	ld	a5,0(a2)
    80007a38:	00053703          	ld	a4,0(a0)
    80007a3c:	04f70263          	beq	a4,a5,80007a80 <uartintr+0xa0>
    80007a40:	100005b7          	lui	a1,0x10000
    80007a44:	00005817          	auipc	a6,0x5
    80007a48:	0dc80813          	addi	a6,a6,220 # 8000cb20 <uart_tx_buf>
    80007a4c:	01c0006f          	j	80007a68 <uartintr+0x88>
    80007a50:	0006c703          	lbu	a4,0(a3)
    80007a54:	00f63023          	sd	a5,0(a2)
    80007a58:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007a5c:	00063783          	ld	a5,0(a2)
    80007a60:	00053703          	ld	a4,0(a0)
    80007a64:	00f70e63          	beq	a4,a5,80007a80 <uartintr+0xa0>
    80007a68:	01f7f713          	andi	a4,a5,31
    80007a6c:	00e806b3          	add	a3,a6,a4
    80007a70:	0055c703          	lbu	a4,5(a1)
    80007a74:	00178793          	addi	a5,a5,1
    80007a78:	02077713          	andi	a4,a4,32
    80007a7c:	fc071ae3          	bnez	a4,80007a50 <uartintr+0x70>
    80007a80:	01813083          	ld	ra,24(sp)
    80007a84:	01013403          	ld	s0,16(sp)
    80007a88:	00813483          	ld	s1,8(sp)
    80007a8c:	02010113          	addi	sp,sp,32
    80007a90:	00008067          	ret
    80007a94:	00004617          	auipc	a2,0x4
    80007a98:	d7c60613          	addi	a2,a2,-644 # 8000b810 <uart_tx_r>
    80007a9c:	00004517          	auipc	a0,0x4
    80007aa0:	d7c50513          	addi	a0,a0,-644 # 8000b818 <uart_tx_w>
    80007aa4:	00063783          	ld	a5,0(a2)
    80007aa8:	00053703          	ld	a4,0(a0)
    80007aac:	04f70263          	beq	a4,a5,80007af0 <uartintr+0x110>
    80007ab0:	100005b7          	lui	a1,0x10000
    80007ab4:	00005817          	auipc	a6,0x5
    80007ab8:	06c80813          	addi	a6,a6,108 # 8000cb20 <uart_tx_buf>
    80007abc:	01c0006f          	j	80007ad8 <uartintr+0xf8>
    80007ac0:	0006c703          	lbu	a4,0(a3)
    80007ac4:	00f63023          	sd	a5,0(a2)
    80007ac8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007acc:	00063783          	ld	a5,0(a2)
    80007ad0:	00053703          	ld	a4,0(a0)
    80007ad4:	02f70063          	beq	a4,a5,80007af4 <uartintr+0x114>
    80007ad8:	01f7f713          	andi	a4,a5,31
    80007adc:	00e806b3          	add	a3,a6,a4
    80007ae0:	0055c703          	lbu	a4,5(a1)
    80007ae4:	00178793          	addi	a5,a5,1
    80007ae8:	02077713          	andi	a4,a4,32
    80007aec:	fc071ae3          	bnez	a4,80007ac0 <uartintr+0xe0>
    80007af0:	00008067          	ret
    80007af4:	00008067          	ret

0000000080007af8 <kinit>:
    80007af8:	fc010113          	addi	sp,sp,-64
    80007afc:	02913423          	sd	s1,40(sp)
    80007b00:	fffff7b7          	lui	a5,0xfffff
    80007b04:	00006497          	auipc	s1,0x6
    80007b08:	03b48493          	addi	s1,s1,59 # 8000db3f <end+0xfff>
    80007b0c:	02813823          	sd	s0,48(sp)
    80007b10:	01313c23          	sd	s3,24(sp)
    80007b14:	00f4f4b3          	and	s1,s1,a5
    80007b18:	02113c23          	sd	ra,56(sp)
    80007b1c:	03213023          	sd	s2,32(sp)
    80007b20:	01413823          	sd	s4,16(sp)
    80007b24:	01513423          	sd	s5,8(sp)
    80007b28:	04010413          	addi	s0,sp,64
    80007b2c:	000017b7          	lui	a5,0x1
    80007b30:	01100993          	li	s3,17
    80007b34:	00f487b3          	add	a5,s1,a5
    80007b38:	01b99993          	slli	s3,s3,0x1b
    80007b3c:	06f9e063          	bltu	s3,a5,80007b9c <kinit+0xa4>
    80007b40:	00005a97          	auipc	s5,0x5
    80007b44:	000a8a93          	mv	s5,s5
    80007b48:	0754ec63          	bltu	s1,s5,80007bc0 <kinit+0xc8>
    80007b4c:	0734fa63          	bgeu	s1,s3,80007bc0 <kinit+0xc8>
    80007b50:	00088a37          	lui	s4,0x88
    80007b54:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007b58:	00004917          	auipc	s2,0x4
    80007b5c:	cc890913          	addi	s2,s2,-824 # 8000b820 <kmem>
    80007b60:	00ca1a13          	slli	s4,s4,0xc
    80007b64:	0140006f          	j	80007b78 <kinit+0x80>
    80007b68:	000017b7          	lui	a5,0x1
    80007b6c:	00f484b3          	add	s1,s1,a5
    80007b70:	0554e863          	bltu	s1,s5,80007bc0 <kinit+0xc8>
    80007b74:	0534f663          	bgeu	s1,s3,80007bc0 <kinit+0xc8>
    80007b78:	00001637          	lui	a2,0x1
    80007b7c:	00100593          	li	a1,1
    80007b80:	00048513          	mv	a0,s1
    80007b84:	00000097          	auipc	ra,0x0
    80007b88:	5e4080e7          	jalr	1508(ra) # 80008168 <__memset>
    80007b8c:	00093783          	ld	a5,0(s2)
    80007b90:	00f4b023          	sd	a5,0(s1)
    80007b94:	00993023          	sd	s1,0(s2)
    80007b98:	fd4498e3          	bne	s1,s4,80007b68 <kinit+0x70>
    80007b9c:	03813083          	ld	ra,56(sp)
    80007ba0:	03013403          	ld	s0,48(sp)
    80007ba4:	02813483          	ld	s1,40(sp)
    80007ba8:	02013903          	ld	s2,32(sp)
    80007bac:	01813983          	ld	s3,24(sp)
    80007bb0:	01013a03          	ld	s4,16(sp)
    80007bb4:	00813a83          	ld	s5,8(sp)
    80007bb8:	04010113          	addi	sp,sp,64
    80007bbc:	00008067          	ret
    80007bc0:	00002517          	auipc	a0,0x2
    80007bc4:	90050513          	addi	a0,a0,-1792 # 800094c0 <digits+0x18>
    80007bc8:	fffff097          	auipc	ra,0xfffff
    80007bcc:	4b4080e7          	jalr	1204(ra) # 8000707c <panic>

0000000080007bd0 <freerange>:
    80007bd0:	fc010113          	addi	sp,sp,-64
    80007bd4:	000017b7          	lui	a5,0x1
    80007bd8:	02913423          	sd	s1,40(sp)
    80007bdc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007be0:	009504b3          	add	s1,a0,s1
    80007be4:	fffff537          	lui	a0,0xfffff
    80007be8:	02813823          	sd	s0,48(sp)
    80007bec:	02113c23          	sd	ra,56(sp)
    80007bf0:	03213023          	sd	s2,32(sp)
    80007bf4:	01313c23          	sd	s3,24(sp)
    80007bf8:	01413823          	sd	s4,16(sp)
    80007bfc:	01513423          	sd	s5,8(sp)
    80007c00:	01613023          	sd	s6,0(sp)
    80007c04:	04010413          	addi	s0,sp,64
    80007c08:	00a4f4b3          	and	s1,s1,a0
    80007c0c:	00f487b3          	add	a5,s1,a5
    80007c10:	06f5e463          	bltu	a1,a5,80007c78 <freerange+0xa8>
    80007c14:	00005a97          	auipc	s5,0x5
    80007c18:	f2ca8a93          	addi	s5,s5,-212 # 8000cb40 <end>
    80007c1c:	0954e263          	bltu	s1,s5,80007ca0 <freerange+0xd0>
    80007c20:	01100993          	li	s3,17
    80007c24:	01b99993          	slli	s3,s3,0x1b
    80007c28:	0734fc63          	bgeu	s1,s3,80007ca0 <freerange+0xd0>
    80007c2c:	00058a13          	mv	s4,a1
    80007c30:	00004917          	auipc	s2,0x4
    80007c34:	bf090913          	addi	s2,s2,-1040 # 8000b820 <kmem>
    80007c38:	00002b37          	lui	s6,0x2
    80007c3c:	0140006f          	j	80007c50 <freerange+0x80>
    80007c40:	000017b7          	lui	a5,0x1
    80007c44:	00f484b3          	add	s1,s1,a5
    80007c48:	0554ec63          	bltu	s1,s5,80007ca0 <freerange+0xd0>
    80007c4c:	0534fa63          	bgeu	s1,s3,80007ca0 <freerange+0xd0>
    80007c50:	00001637          	lui	a2,0x1
    80007c54:	00100593          	li	a1,1
    80007c58:	00048513          	mv	a0,s1
    80007c5c:	00000097          	auipc	ra,0x0
    80007c60:	50c080e7          	jalr	1292(ra) # 80008168 <__memset>
    80007c64:	00093703          	ld	a4,0(s2)
    80007c68:	016487b3          	add	a5,s1,s6
    80007c6c:	00e4b023          	sd	a4,0(s1)
    80007c70:	00993023          	sd	s1,0(s2)
    80007c74:	fcfa76e3          	bgeu	s4,a5,80007c40 <freerange+0x70>
    80007c78:	03813083          	ld	ra,56(sp)
    80007c7c:	03013403          	ld	s0,48(sp)
    80007c80:	02813483          	ld	s1,40(sp)
    80007c84:	02013903          	ld	s2,32(sp)
    80007c88:	01813983          	ld	s3,24(sp)
    80007c8c:	01013a03          	ld	s4,16(sp)
    80007c90:	00813a83          	ld	s5,8(sp)
    80007c94:	00013b03          	ld	s6,0(sp)
    80007c98:	04010113          	addi	sp,sp,64
    80007c9c:	00008067          	ret
    80007ca0:	00002517          	auipc	a0,0x2
    80007ca4:	82050513          	addi	a0,a0,-2016 # 800094c0 <digits+0x18>
    80007ca8:	fffff097          	auipc	ra,0xfffff
    80007cac:	3d4080e7          	jalr	980(ra) # 8000707c <panic>

0000000080007cb0 <kfree>:
    80007cb0:	fe010113          	addi	sp,sp,-32
    80007cb4:	00813823          	sd	s0,16(sp)
    80007cb8:	00113c23          	sd	ra,24(sp)
    80007cbc:	00913423          	sd	s1,8(sp)
    80007cc0:	02010413          	addi	s0,sp,32
    80007cc4:	03451793          	slli	a5,a0,0x34
    80007cc8:	04079c63          	bnez	a5,80007d20 <kfree+0x70>
    80007ccc:	00005797          	auipc	a5,0x5
    80007cd0:	e7478793          	addi	a5,a5,-396 # 8000cb40 <end>
    80007cd4:	00050493          	mv	s1,a0
    80007cd8:	04f56463          	bltu	a0,a5,80007d20 <kfree+0x70>
    80007cdc:	01100793          	li	a5,17
    80007ce0:	01b79793          	slli	a5,a5,0x1b
    80007ce4:	02f57e63          	bgeu	a0,a5,80007d20 <kfree+0x70>
    80007ce8:	00001637          	lui	a2,0x1
    80007cec:	00100593          	li	a1,1
    80007cf0:	00000097          	auipc	ra,0x0
    80007cf4:	478080e7          	jalr	1144(ra) # 80008168 <__memset>
    80007cf8:	00004797          	auipc	a5,0x4
    80007cfc:	b2878793          	addi	a5,a5,-1240 # 8000b820 <kmem>
    80007d00:	0007b703          	ld	a4,0(a5)
    80007d04:	01813083          	ld	ra,24(sp)
    80007d08:	01013403          	ld	s0,16(sp)
    80007d0c:	00e4b023          	sd	a4,0(s1)
    80007d10:	0097b023          	sd	s1,0(a5)
    80007d14:	00813483          	ld	s1,8(sp)
    80007d18:	02010113          	addi	sp,sp,32
    80007d1c:	00008067          	ret
    80007d20:	00001517          	auipc	a0,0x1
    80007d24:	7a050513          	addi	a0,a0,1952 # 800094c0 <digits+0x18>
    80007d28:	fffff097          	auipc	ra,0xfffff
    80007d2c:	354080e7          	jalr	852(ra) # 8000707c <panic>

0000000080007d30 <kalloc>:
    80007d30:	fe010113          	addi	sp,sp,-32
    80007d34:	00813823          	sd	s0,16(sp)
    80007d38:	00913423          	sd	s1,8(sp)
    80007d3c:	00113c23          	sd	ra,24(sp)
    80007d40:	02010413          	addi	s0,sp,32
    80007d44:	00004797          	auipc	a5,0x4
    80007d48:	adc78793          	addi	a5,a5,-1316 # 8000b820 <kmem>
    80007d4c:	0007b483          	ld	s1,0(a5)
    80007d50:	02048063          	beqz	s1,80007d70 <kalloc+0x40>
    80007d54:	0004b703          	ld	a4,0(s1)
    80007d58:	00001637          	lui	a2,0x1
    80007d5c:	00500593          	li	a1,5
    80007d60:	00048513          	mv	a0,s1
    80007d64:	00e7b023          	sd	a4,0(a5)
    80007d68:	00000097          	auipc	ra,0x0
    80007d6c:	400080e7          	jalr	1024(ra) # 80008168 <__memset>
    80007d70:	01813083          	ld	ra,24(sp)
    80007d74:	01013403          	ld	s0,16(sp)
    80007d78:	00048513          	mv	a0,s1
    80007d7c:	00813483          	ld	s1,8(sp)
    80007d80:	02010113          	addi	sp,sp,32
    80007d84:	00008067          	ret

0000000080007d88 <initlock>:
    80007d88:	ff010113          	addi	sp,sp,-16
    80007d8c:	00813423          	sd	s0,8(sp)
    80007d90:	01010413          	addi	s0,sp,16
    80007d94:	00813403          	ld	s0,8(sp)
    80007d98:	00b53423          	sd	a1,8(a0)
    80007d9c:	00052023          	sw	zero,0(a0)
    80007da0:	00053823          	sd	zero,16(a0)
    80007da4:	01010113          	addi	sp,sp,16
    80007da8:	00008067          	ret

0000000080007dac <acquire>:
    80007dac:	fe010113          	addi	sp,sp,-32
    80007db0:	00813823          	sd	s0,16(sp)
    80007db4:	00913423          	sd	s1,8(sp)
    80007db8:	00113c23          	sd	ra,24(sp)
    80007dbc:	01213023          	sd	s2,0(sp)
    80007dc0:	02010413          	addi	s0,sp,32
    80007dc4:	00050493          	mv	s1,a0
    80007dc8:	10002973          	csrr	s2,sstatus
    80007dcc:	100027f3          	csrr	a5,sstatus
    80007dd0:	ffd7f793          	andi	a5,a5,-3
    80007dd4:	10079073          	csrw	sstatus,a5
    80007dd8:	fffff097          	auipc	ra,0xfffff
    80007ddc:	8e0080e7          	jalr	-1824(ra) # 800066b8 <mycpu>
    80007de0:	07852783          	lw	a5,120(a0)
    80007de4:	06078e63          	beqz	a5,80007e60 <acquire+0xb4>
    80007de8:	fffff097          	auipc	ra,0xfffff
    80007dec:	8d0080e7          	jalr	-1840(ra) # 800066b8 <mycpu>
    80007df0:	07852783          	lw	a5,120(a0)
    80007df4:	0004a703          	lw	a4,0(s1)
    80007df8:	0017879b          	addiw	a5,a5,1
    80007dfc:	06f52c23          	sw	a5,120(a0)
    80007e00:	04071063          	bnez	a4,80007e40 <acquire+0x94>
    80007e04:	00100713          	li	a4,1
    80007e08:	00070793          	mv	a5,a4
    80007e0c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007e10:	0007879b          	sext.w	a5,a5
    80007e14:	fe079ae3          	bnez	a5,80007e08 <acquire+0x5c>
    80007e18:	0ff0000f          	fence
    80007e1c:	fffff097          	auipc	ra,0xfffff
    80007e20:	89c080e7          	jalr	-1892(ra) # 800066b8 <mycpu>
    80007e24:	01813083          	ld	ra,24(sp)
    80007e28:	01013403          	ld	s0,16(sp)
    80007e2c:	00a4b823          	sd	a0,16(s1)
    80007e30:	00013903          	ld	s2,0(sp)
    80007e34:	00813483          	ld	s1,8(sp)
    80007e38:	02010113          	addi	sp,sp,32
    80007e3c:	00008067          	ret
    80007e40:	0104b903          	ld	s2,16(s1)
    80007e44:	fffff097          	auipc	ra,0xfffff
    80007e48:	874080e7          	jalr	-1932(ra) # 800066b8 <mycpu>
    80007e4c:	faa91ce3          	bne	s2,a0,80007e04 <acquire+0x58>
    80007e50:	00001517          	auipc	a0,0x1
    80007e54:	67850513          	addi	a0,a0,1656 # 800094c8 <digits+0x20>
    80007e58:	fffff097          	auipc	ra,0xfffff
    80007e5c:	224080e7          	jalr	548(ra) # 8000707c <panic>
    80007e60:	00195913          	srli	s2,s2,0x1
    80007e64:	fffff097          	auipc	ra,0xfffff
    80007e68:	854080e7          	jalr	-1964(ra) # 800066b8 <mycpu>
    80007e6c:	00197913          	andi	s2,s2,1
    80007e70:	07252e23          	sw	s2,124(a0)
    80007e74:	f75ff06f          	j	80007de8 <acquire+0x3c>

0000000080007e78 <release>:
    80007e78:	fe010113          	addi	sp,sp,-32
    80007e7c:	00813823          	sd	s0,16(sp)
    80007e80:	00113c23          	sd	ra,24(sp)
    80007e84:	00913423          	sd	s1,8(sp)
    80007e88:	01213023          	sd	s2,0(sp)
    80007e8c:	02010413          	addi	s0,sp,32
    80007e90:	00052783          	lw	a5,0(a0)
    80007e94:	00079a63          	bnez	a5,80007ea8 <release+0x30>
    80007e98:	00001517          	auipc	a0,0x1
    80007e9c:	63850513          	addi	a0,a0,1592 # 800094d0 <digits+0x28>
    80007ea0:	fffff097          	auipc	ra,0xfffff
    80007ea4:	1dc080e7          	jalr	476(ra) # 8000707c <panic>
    80007ea8:	01053903          	ld	s2,16(a0)
    80007eac:	00050493          	mv	s1,a0
    80007eb0:	fffff097          	auipc	ra,0xfffff
    80007eb4:	808080e7          	jalr	-2040(ra) # 800066b8 <mycpu>
    80007eb8:	fea910e3          	bne	s2,a0,80007e98 <release+0x20>
    80007ebc:	0004b823          	sd	zero,16(s1)
    80007ec0:	0ff0000f          	fence
    80007ec4:	0f50000f          	fence	iorw,ow
    80007ec8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80007ecc:	ffffe097          	auipc	ra,0xffffe
    80007ed0:	7ec080e7          	jalr	2028(ra) # 800066b8 <mycpu>
    80007ed4:	100027f3          	csrr	a5,sstatus
    80007ed8:	0027f793          	andi	a5,a5,2
    80007edc:	04079a63          	bnez	a5,80007f30 <release+0xb8>
    80007ee0:	07852783          	lw	a5,120(a0)
    80007ee4:	02f05e63          	blez	a5,80007f20 <release+0xa8>
    80007ee8:	fff7871b          	addiw	a4,a5,-1
    80007eec:	06e52c23          	sw	a4,120(a0)
    80007ef0:	00071c63          	bnez	a4,80007f08 <release+0x90>
    80007ef4:	07c52783          	lw	a5,124(a0)
    80007ef8:	00078863          	beqz	a5,80007f08 <release+0x90>
    80007efc:	100027f3          	csrr	a5,sstatus
    80007f00:	0027e793          	ori	a5,a5,2
    80007f04:	10079073          	csrw	sstatus,a5
    80007f08:	01813083          	ld	ra,24(sp)
    80007f0c:	01013403          	ld	s0,16(sp)
    80007f10:	00813483          	ld	s1,8(sp)
    80007f14:	00013903          	ld	s2,0(sp)
    80007f18:	02010113          	addi	sp,sp,32
    80007f1c:	00008067          	ret
    80007f20:	00001517          	auipc	a0,0x1
    80007f24:	5d050513          	addi	a0,a0,1488 # 800094f0 <digits+0x48>
    80007f28:	fffff097          	auipc	ra,0xfffff
    80007f2c:	154080e7          	jalr	340(ra) # 8000707c <panic>
    80007f30:	00001517          	auipc	a0,0x1
    80007f34:	5a850513          	addi	a0,a0,1448 # 800094d8 <digits+0x30>
    80007f38:	fffff097          	auipc	ra,0xfffff
    80007f3c:	144080e7          	jalr	324(ra) # 8000707c <panic>

0000000080007f40 <holding>:
    80007f40:	00052783          	lw	a5,0(a0)
    80007f44:	00079663          	bnez	a5,80007f50 <holding+0x10>
    80007f48:	00000513          	li	a0,0
    80007f4c:	00008067          	ret
    80007f50:	fe010113          	addi	sp,sp,-32
    80007f54:	00813823          	sd	s0,16(sp)
    80007f58:	00913423          	sd	s1,8(sp)
    80007f5c:	00113c23          	sd	ra,24(sp)
    80007f60:	02010413          	addi	s0,sp,32
    80007f64:	01053483          	ld	s1,16(a0)
    80007f68:	ffffe097          	auipc	ra,0xffffe
    80007f6c:	750080e7          	jalr	1872(ra) # 800066b8 <mycpu>
    80007f70:	01813083          	ld	ra,24(sp)
    80007f74:	01013403          	ld	s0,16(sp)
    80007f78:	40a48533          	sub	a0,s1,a0
    80007f7c:	00153513          	seqz	a0,a0
    80007f80:	00813483          	ld	s1,8(sp)
    80007f84:	02010113          	addi	sp,sp,32
    80007f88:	00008067          	ret

0000000080007f8c <push_off>:
    80007f8c:	fe010113          	addi	sp,sp,-32
    80007f90:	00813823          	sd	s0,16(sp)
    80007f94:	00113c23          	sd	ra,24(sp)
    80007f98:	00913423          	sd	s1,8(sp)
    80007f9c:	02010413          	addi	s0,sp,32
    80007fa0:	100024f3          	csrr	s1,sstatus
    80007fa4:	100027f3          	csrr	a5,sstatus
    80007fa8:	ffd7f793          	andi	a5,a5,-3
    80007fac:	10079073          	csrw	sstatus,a5
    80007fb0:	ffffe097          	auipc	ra,0xffffe
    80007fb4:	708080e7          	jalr	1800(ra) # 800066b8 <mycpu>
    80007fb8:	07852783          	lw	a5,120(a0)
    80007fbc:	02078663          	beqz	a5,80007fe8 <push_off+0x5c>
    80007fc0:	ffffe097          	auipc	ra,0xffffe
    80007fc4:	6f8080e7          	jalr	1784(ra) # 800066b8 <mycpu>
    80007fc8:	07852783          	lw	a5,120(a0)
    80007fcc:	01813083          	ld	ra,24(sp)
    80007fd0:	01013403          	ld	s0,16(sp)
    80007fd4:	0017879b          	addiw	a5,a5,1
    80007fd8:	06f52c23          	sw	a5,120(a0)
    80007fdc:	00813483          	ld	s1,8(sp)
    80007fe0:	02010113          	addi	sp,sp,32
    80007fe4:	00008067          	ret
    80007fe8:	0014d493          	srli	s1,s1,0x1
    80007fec:	ffffe097          	auipc	ra,0xffffe
    80007ff0:	6cc080e7          	jalr	1740(ra) # 800066b8 <mycpu>
    80007ff4:	0014f493          	andi	s1,s1,1
    80007ff8:	06952e23          	sw	s1,124(a0)
    80007ffc:	fc5ff06f          	j	80007fc0 <push_off+0x34>

0000000080008000 <pop_off>:
    80008000:	ff010113          	addi	sp,sp,-16
    80008004:	00813023          	sd	s0,0(sp)
    80008008:	00113423          	sd	ra,8(sp)
    8000800c:	01010413          	addi	s0,sp,16
    80008010:	ffffe097          	auipc	ra,0xffffe
    80008014:	6a8080e7          	jalr	1704(ra) # 800066b8 <mycpu>
    80008018:	100027f3          	csrr	a5,sstatus
    8000801c:	0027f793          	andi	a5,a5,2
    80008020:	04079663          	bnez	a5,8000806c <pop_off+0x6c>
    80008024:	07852783          	lw	a5,120(a0)
    80008028:	02f05a63          	blez	a5,8000805c <pop_off+0x5c>
    8000802c:	fff7871b          	addiw	a4,a5,-1
    80008030:	06e52c23          	sw	a4,120(a0)
    80008034:	00071c63          	bnez	a4,8000804c <pop_off+0x4c>
    80008038:	07c52783          	lw	a5,124(a0)
    8000803c:	00078863          	beqz	a5,8000804c <pop_off+0x4c>
    80008040:	100027f3          	csrr	a5,sstatus
    80008044:	0027e793          	ori	a5,a5,2
    80008048:	10079073          	csrw	sstatus,a5
    8000804c:	00813083          	ld	ra,8(sp)
    80008050:	00013403          	ld	s0,0(sp)
    80008054:	01010113          	addi	sp,sp,16
    80008058:	00008067          	ret
    8000805c:	00001517          	auipc	a0,0x1
    80008060:	49450513          	addi	a0,a0,1172 # 800094f0 <digits+0x48>
    80008064:	fffff097          	auipc	ra,0xfffff
    80008068:	018080e7          	jalr	24(ra) # 8000707c <panic>
    8000806c:	00001517          	auipc	a0,0x1
    80008070:	46c50513          	addi	a0,a0,1132 # 800094d8 <digits+0x30>
    80008074:	fffff097          	auipc	ra,0xfffff
    80008078:	008080e7          	jalr	8(ra) # 8000707c <panic>

000000008000807c <push_on>:
    8000807c:	fe010113          	addi	sp,sp,-32
    80008080:	00813823          	sd	s0,16(sp)
    80008084:	00113c23          	sd	ra,24(sp)
    80008088:	00913423          	sd	s1,8(sp)
    8000808c:	02010413          	addi	s0,sp,32
    80008090:	100024f3          	csrr	s1,sstatus
    80008094:	100027f3          	csrr	a5,sstatus
    80008098:	0027e793          	ori	a5,a5,2
    8000809c:	10079073          	csrw	sstatus,a5
    800080a0:	ffffe097          	auipc	ra,0xffffe
    800080a4:	618080e7          	jalr	1560(ra) # 800066b8 <mycpu>
    800080a8:	07852783          	lw	a5,120(a0)
    800080ac:	02078663          	beqz	a5,800080d8 <push_on+0x5c>
    800080b0:	ffffe097          	auipc	ra,0xffffe
    800080b4:	608080e7          	jalr	1544(ra) # 800066b8 <mycpu>
    800080b8:	07852783          	lw	a5,120(a0)
    800080bc:	01813083          	ld	ra,24(sp)
    800080c0:	01013403          	ld	s0,16(sp)
    800080c4:	0017879b          	addiw	a5,a5,1
    800080c8:	06f52c23          	sw	a5,120(a0)
    800080cc:	00813483          	ld	s1,8(sp)
    800080d0:	02010113          	addi	sp,sp,32
    800080d4:	00008067          	ret
    800080d8:	0014d493          	srli	s1,s1,0x1
    800080dc:	ffffe097          	auipc	ra,0xffffe
    800080e0:	5dc080e7          	jalr	1500(ra) # 800066b8 <mycpu>
    800080e4:	0014f493          	andi	s1,s1,1
    800080e8:	06952e23          	sw	s1,124(a0)
    800080ec:	fc5ff06f          	j	800080b0 <push_on+0x34>

00000000800080f0 <pop_on>:
    800080f0:	ff010113          	addi	sp,sp,-16
    800080f4:	00813023          	sd	s0,0(sp)
    800080f8:	00113423          	sd	ra,8(sp)
    800080fc:	01010413          	addi	s0,sp,16
    80008100:	ffffe097          	auipc	ra,0xffffe
    80008104:	5b8080e7          	jalr	1464(ra) # 800066b8 <mycpu>
    80008108:	100027f3          	csrr	a5,sstatus
    8000810c:	0027f793          	andi	a5,a5,2
    80008110:	04078463          	beqz	a5,80008158 <pop_on+0x68>
    80008114:	07852783          	lw	a5,120(a0)
    80008118:	02f05863          	blez	a5,80008148 <pop_on+0x58>
    8000811c:	fff7879b          	addiw	a5,a5,-1
    80008120:	06f52c23          	sw	a5,120(a0)
    80008124:	07853783          	ld	a5,120(a0)
    80008128:	00079863          	bnez	a5,80008138 <pop_on+0x48>
    8000812c:	100027f3          	csrr	a5,sstatus
    80008130:	ffd7f793          	andi	a5,a5,-3
    80008134:	10079073          	csrw	sstatus,a5
    80008138:	00813083          	ld	ra,8(sp)
    8000813c:	00013403          	ld	s0,0(sp)
    80008140:	01010113          	addi	sp,sp,16
    80008144:	00008067          	ret
    80008148:	00001517          	auipc	a0,0x1
    8000814c:	3d050513          	addi	a0,a0,976 # 80009518 <digits+0x70>
    80008150:	fffff097          	auipc	ra,0xfffff
    80008154:	f2c080e7          	jalr	-212(ra) # 8000707c <panic>
    80008158:	00001517          	auipc	a0,0x1
    8000815c:	3a050513          	addi	a0,a0,928 # 800094f8 <digits+0x50>
    80008160:	fffff097          	auipc	ra,0xfffff
    80008164:	f1c080e7          	jalr	-228(ra) # 8000707c <panic>

0000000080008168 <__memset>:
    80008168:	ff010113          	addi	sp,sp,-16
    8000816c:	00813423          	sd	s0,8(sp)
    80008170:	01010413          	addi	s0,sp,16
    80008174:	1a060e63          	beqz	a2,80008330 <__memset+0x1c8>
    80008178:	40a007b3          	neg	a5,a0
    8000817c:	0077f793          	andi	a5,a5,7
    80008180:	00778693          	addi	a3,a5,7
    80008184:	00b00813          	li	a6,11
    80008188:	0ff5f593          	andi	a1,a1,255
    8000818c:	fff6071b          	addiw	a4,a2,-1
    80008190:	1b06e663          	bltu	a3,a6,8000833c <__memset+0x1d4>
    80008194:	1cd76463          	bltu	a4,a3,8000835c <__memset+0x1f4>
    80008198:	1a078e63          	beqz	a5,80008354 <__memset+0x1ec>
    8000819c:	00b50023          	sb	a1,0(a0)
    800081a0:	00100713          	li	a4,1
    800081a4:	1ae78463          	beq	a5,a4,8000834c <__memset+0x1e4>
    800081a8:	00b500a3          	sb	a1,1(a0)
    800081ac:	00200713          	li	a4,2
    800081b0:	1ae78a63          	beq	a5,a4,80008364 <__memset+0x1fc>
    800081b4:	00b50123          	sb	a1,2(a0)
    800081b8:	00300713          	li	a4,3
    800081bc:	18e78463          	beq	a5,a4,80008344 <__memset+0x1dc>
    800081c0:	00b501a3          	sb	a1,3(a0)
    800081c4:	00400713          	li	a4,4
    800081c8:	1ae78263          	beq	a5,a4,8000836c <__memset+0x204>
    800081cc:	00b50223          	sb	a1,4(a0)
    800081d0:	00500713          	li	a4,5
    800081d4:	1ae78063          	beq	a5,a4,80008374 <__memset+0x20c>
    800081d8:	00b502a3          	sb	a1,5(a0)
    800081dc:	00700713          	li	a4,7
    800081e0:	18e79e63          	bne	a5,a4,8000837c <__memset+0x214>
    800081e4:	00b50323          	sb	a1,6(a0)
    800081e8:	00700e93          	li	t4,7
    800081ec:	00859713          	slli	a4,a1,0x8
    800081f0:	00e5e733          	or	a4,a1,a4
    800081f4:	01059e13          	slli	t3,a1,0x10
    800081f8:	01c76e33          	or	t3,a4,t3
    800081fc:	01859313          	slli	t1,a1,0x18
    80008200:	006e6333          	or	t1,t3,t1
    80008204:	02059893          	slli	a7,a1,0x20
    80008208:	40f60e3b          	subw	t3,a2,a5
    8000820c:	011368b3          	or	a7,t1,a7
    80008210:	02859813          	slli	a6,a1,0x28
    80008214:	0108e833          	or	a6,a7,a6
    80008218:	03059693          	slli	a3,a1,0x30
    8000821c:	003e589b          	srliw	a7,t3,0x3
    80008220:	00d866b3          	or	a3,a6,a3
    80008224:	03859713          	slli	a4,a1,0x38
    80008228:	00389813          	slli	a6,a7,0x3
    8000822c:	00f507b3          	add	a5,a0,a5
    80008230:	00e6e733          	or	a4,a3,a4
    80008234:	000e089b          	sext.w	a7,t3
    80008238:	00f806b3          	add	a3,a6,a5
    8000823c:	00e7b023          	sd	a4,0(a5)
    80008240:	00878793          	addi	a5,a5,8
    80008244:	fed79ce3          	bne	a5,a3,8000823c <__memset+0xd4>
    80008248:	ff8e7793          	andi	a5,t3,-8
    8000824c:	0007871b          	sext.w	a4,a5
    80008250:	01d787bb          	addw	a5,a5,t4
    80008254:	0ce88e63          	beq	a7,a4,80008330 <__memset+0x1c8>
    80008258:	00f50733          	add	a4,a0,a5
    8000825c:	00b70023          	sb	a1,0(a4)
    80008260:	0017871b          	addiw	a4,a5,1
    80008264:	0cc77663          	bgeu	a4,a2,80008330 <__memset+0x1c8>
    80008268:	00e50733          	add	a4,a0,a4
    8000826c:	00b70023          	sb	a1,0(a4)
    80008270:	0027871b          	addiw	a4,a5,2
    80008274:	0ac77e63          	bgeu	a4,a2,80008330 <__memset+0x1c8>
    80008278:	00e50733          	add	a4,a0,a4
    8000827c:	00b70023          	sb	a1,0(a4)
    80008280:	0037871b          	addiw	a4,a5,3
    80008284:	0ac77663          	bgeu	a4,a2,80008330 <__memset+0x1c8>
    80008288:	00e50733          	add	a4,a0,a4
    8000828c:	00b70023          	sb	a1,0(a4)
    80008290:	0047871b          	addiw	a4,a5,4
    80008294:	08c77e63          	bgeu	a4,a2,80008330 <__memset+0x1c8>
    80008298:	00e50733          	add	a4,a0,a4
    8000829c:	00b70023          	sb	a1,0(a4)
    800082a0:	0057871b          	addiw	a4,a5,5
    800082a4:	08c77663          	bgeu	a4,a2,80008330 <__memset+0x1c8>
    800082a8:	00e50733          	add	a4,a0,a4
    800082ac:	00b70023          	sb	a1,0(a4)
    800082b0:	0067871b          	addiw	a4,a5,6
    800082b4:	06c77e63          	bgeu	a4,a2,80008330 <__memset+0x1c8>
    800082b8:	00e50733          	add	a4,a0,a4
    800082bc:	00b70023          	sb	a1,0(a4)
    800082c0:	0077871b          	addiw	a4,a5,7
    800082c4:	06c77663          	bgeu	a4,a2,80008330 <__memset+0x1c8>
    800082c8:	00e50733          	add	a4,a0,a4
    800082cc:	00b70023          	sb	a1,0(a4)
    800082d0:	0087871b          	addiw	a4,a5,8
    800082d4:	04c77e63          	bgeu	a4,a2,80008330 <__memset+0x1c8>
    800082d8:	00e50733          	add	a4,a0,a4
    800082dc:	00b70023          	sb	a1,0(a4)
    800082e0:	0097871b          	addiw	a4,a5,9
    800082e4:	04c77663          	bgeu	a4,a2,80008330 <__memset+0x1c8>
    800082e8:	00e50733          	add	a4,a0,a4
    800082ec:	00b70023          	sb	a1,0(a4)
    800082f0:	00a7871b          	addiw	a4,a5,10
    800082f4:	02c77e63          	bgeu	a4,a2,80008330 <__memset+0x1c8>
    800082f8:	00e50733          	add	a4,a0,a4
    800082fc:	00b70023          	sb	a1,0(a4)
    80008300:	00b7871b          	addiw	a4,a5,11
    80008304:	02c77663          	bgeu	a4,a2,80008330 <__memset+0x1c8>
    80008308:	00e50733          	add	a4,a0,a4
    8000830c:	00b70023          	sb	a1,0(a4)
    80008310:	00c7871b          	addiw	a4,a5,12
    80008314:	00c77e63          	bgeu	a4,a2,80008330 <__memset+0x1c8>
    80008318:	00e50733          	add	a4,a0,a4
    8000831c:	00b70023          	sb	a1,0(a4)
    80008320:	00d7879b          	addiw	a5,a5,13
    80008324:	00c7f663          	bgeu	a5,a2,80008330 <__memset+0x1c8>
    80008328:	00f507b3          	add	a5,a0,a5
    8000832c:	00b78023          	sb	a1,0(a5)
    80008330:	00813403          	ld	s0,8(sp)
    80008334:	01010113          	addi	sp,sp,16
    80008338:	00008067          	ret
    8000833c:	00b00693          	li	a3,11
    80008340:	e55ff06f          	j	80008194 <__memset+0x2c>
    80008344:	00300e93          	li	t4,3
    80008348:	ea5ff06f          	j	800081ec <__memset+0x84>
    8000834c:	00100e93          	li	t4,1
    80008350:	e9dff06f          	j	800081ec <__memset+0x84>
    80008354:	00000e93          	li	t4,0
    80008358:	e95ff06f          	j	800081ec <__memset+0x84>
    8000835c:	00000793          	li	a5,0
    80008360:	ef9ff06f          	j	80008258 <__memset+0xf0>
    80008364:	00200e93          	li	t4,2
    80008368:	e85ff06f          	j	800081ec <__memset+0x84>
    8000836c:	00400e93          	li	t4,4
    80008370:	e7dff06f          	j	800081ec <__memset+0x84>
    80008374:	00500e93          	li	t4,5
    80008378:	e75ff06f          	j	800081ec <__memset+0x84>
    8000837c:	00600e93          	li	t4,6
    80008380:	e6dff06f          	j	800081ec <__memset+0x84>

0000000080008384 <__memmove>:
    80008384:	ff010113          	addi	sp,sp,-16
    80008388:	00813423          	sd	s0,8(sp)
    8000838c:	01010413          	addi	s0,sp,16
    80008390:	0e060863          	beqz	a2,80008480 <__memmove+0xfc>
    80008394:	fff6069b          	addiw	a3,a2,-1
    80008398:	0006881b          	sext.w	a6,a3
    8000839c:	0ea5e863          	bltu	a1,a0,8000848c <__memmove+0x108>
    800083a0:	00758713          	addi	a4,a1,7
    800083a4:	00a5e7b3          	or	a5,a1,a0
    800083a8:	40a70733          	sub	a4,a4,a0
    800083ac:	0077f793          	andi	a5,a5,7
    800083b0:	00f73713          	sltiu	a4,a4,15
    800083b4:	00174713          	xori	a4,a4,1
    800083b8:	0017b793          	seqz	a5,a5
    800083bc:	00e7f7b3          	and	a5,a5,a4
    800083c0:	10078863          	beqz	a5,800084d0 <__memmove+0x14c>
    800083c4:	00900793          	li	a5,9
    800083c8:	1107f463          	bgeu	a5,a6,800084d0 <__memmove+0x14c>
    800083cc:	0036581b          	srliw	a6,a2,0x3
    800083d0:	fff8081b          	addiw	a6,a6,-1
    800083d4:	02081813          	slli	a6,a6,0x20
    800083d8:	01d85893          	srli	a7,a6,0x1d
    800083dc:	00858813          	addi	a6,a1,8
    800083e0:	00058793          	mv	a5,a1
    800083e4:	00050713          	mv	a4,a0
    800083e8:	01088833          	add	a6,a7,a6
    800083ec:	0007b883          	ld	a7,0(a5)
    800083f0:	00878793          	addi	a5,a5,8
    800083f4:	00870713          	addi	a4,a4,8
    800083f8:	ff173c23          	sd	a7,-8(a4)
    800083fc:	ff0798e3          	bne	a5,a6,800083ec <__memmove+0x68>
    80008400:	ff867713          	andi	a4,a2,-8
    80008404:	02071793          	slli	a5,a4,0x20
    80008408:	0207d793          	srli	a5,a5,0x20
    8000840c:	00f585b3          	add	a1,a1,a5
    80008410:	40e686bb          	subw	a3,a3,a4
    80008414:	00f507b3          	add	a5,a0,a5
    80008418:	06e60463          	beq	a2,a4,80008480 <__memmove+0xfc>
    8000841c:	0005c703          	lbu	a4,0(a1)
    80008420:	00e78023          	sb	a4,0(a5)
    80008424:	04068e63          	beqz	a3,80008480 <__memmove+0xfc>
    80008428:	0015c603          	lbu	a2,1(a1)
    8000842c:	00100713          	li	a4,1
    80008430:	00c780a3          	sb	a2,1(a5)
    80008434:	04e68663          	beq	a3,a4,80008480 <__memmove+0xfc>
    80008438:	0025c603          	lbu	a2,2(a1)
    8000843c:	00200713          	li	a4,2
    80008440:	00c78123          	sb	a2,2(a5)
    80008444:	02e68e63          	beq	a3,a4,80008480 <__memmove+0xfc>
    80008448:	0035c603          	lbu	a2,3(a1)
    8000844c:	00300713          	li	a4,3
    80008450:	00c781a3          	sb	a2,3(a5)
    80008454:	02e68663          	beq	a3,a4,80008480 <__memmove+0xfc>
    80008458:	0045c603          	lbu	a2,4(a1)
    8000845c:	00400713          	li	a4,4
    80008460:	00c78223          	sb	a2,4(a5)
    80008464:	00e68e63          	beq	a3,a4,80008480 <__memmove+0xfc>
    80008468:	0055c603          	lbu	a2,5(a1)
    8000846c:	00500713          	li	a4,5
    80008470:	00c782a3          	sb	a2,5(a5)
    80008474:	00e68663          	beq	a3,a4,80008480 <__memmove+0xfc>
    80008478:	0065c703          	lbu	a4,6(a1)
    8000847c:	00e78323          	sb	a4,6(a5)
    80008480:	00813403          	ld	s0,8(sp)
    80008484:	01010113          	addi	sp,sp,16
    80008488:	00008067          	ret
    8000848c:	02061713          	slli	a4,a2,0x20
    80008490:	02075713          	srli	a4,a4,0x20
    80008494:	00e587b3          	add	a5,a1,a4
    80008498:	f0f574e3          	bgeu	a0,a5,800083a0 <__memmove+0x1c>
    8000849c:	02069613          	slli	a2,a3,0x20
    800084a0:	02065613          	srli	a2,a2,0x20
    800084a4:	fff64613          	not	a2,a2
    800084a8:	00e50733          	add	a4,a0,a4
    800084ac:	00c78633          	add	a2,a5,a2
    800084b0:	fff7c683          	lbu	a3,-1(a5)
    800084b4:	fff78793          	addi	a5,a5,-1
    800084b8:	fff70713          	addi	a4,a4,-1
    800084bc:	00d70023          	sb	a3,0(a4)
    800084c0:	fec798e3          	bne	a5,a2,800084b0 <__memmove+0x12c>
    800084c4:	00813403          	ld	s0,8(sp)
    800084c8:	01010113          	addi	sp,sp,16
    800084cc:	00008067          	ret
    800084d0:	02069713          	slli	a4,a3,0x20
    800084d4:	02075713          	srli	a4,a4,0x20
    800084d8:	00170713          	addi	a4,a4,1
    800084dc:	00e50733          	add	a4,a0,a4
    800084e0:	00050793          	mv	a5,a0
    800084e4:	0005c683          	lbu	a3,0(a1)
    800084e8:	00178793          	addi	a5,a5,1
    800084ec:	00158593          	addi	a1,a1,1
    800084f0:	fed78fa3          	sb	a3,-1(a5)
    800084f4:	fee798e3          	bne	a5,a4,800084e4 <__memmove+0x160>
    800084f8:	f89ff06f          	j	80008480 <__memmove+0xfc>

00000000800084fc <__putc>:
    800084fc:	fe010113          	addi	sp,sp,-32
    80008500:	00813823          	sd	s0,16(sp)
    80008504:	00113c23          	sd	ra,24(sp)
    80008508:	02010413          	addi	s0,sp,32
    8000850c:	00050793          	mv	a5,a0
    80008510:	fef40593          	addi	a1,s0,-17
    80008514:	00100613          	li	a2,1
    80008518:	00000513          	li	a0,0
    8000851c:	fef407a3          	sb	a5,-17(s0)
    80008520:	fffff097          	auipc	ra,0xfffff
    80008524:	b3c080e7          	jalr	-1220(ra) # 8000705c <console_write>
    80008528:	01813083          	ld	ra,24(sp)
    8000852c:	01013403          	ld	s0,16(sp)
    80008530:	02010113          	addi	sp,sp,32
    80008534:	00008067          	ret

0000000080008538 <__getc>:
    80008538:	fe010113          	addi	sp,sp,-32
    8000853c:	00813823          	sd	s0,16(sp)
    80008540:	00113c23          	sd	ra,24(sp)
    80008544:	02010413          	addi	s0,sp,32
    80008548:	fe840593          	addi	a1,s0,-24
    8000854c:	00100613          	li	a2,1
    80008550:	00000513          	li	a0,0
    80008554:	fffff097          	auipc	ra,0xfffff
    80008558:	ae8080e7          	jalr	-1304(ra) # 8000703c <console_read>
    8000855c:	fe844503          	lbu	a0,-24(s0)
    80008560:	01813083          	ld	ra,24(sp)
    80008564:	01013403          	ld	s0,16(sp)
    80008568:	02010113          	addi	sp,sp,32
    8000856c:	00008067          	ret

0000000080008570 <console_handler>:
    80008570:	fe010113          	addi	sp,sp,-32
    80008574:	00813823          	sd	s0,16(sp)
    80008578:	00113c23          	sd	ra,24(sp)
    8000857c:	00913423          	sd	s1,8(sp)
    80008580:	02010413          	addi	s0,sp,32
    80008584:	14202773          	csrr	a4,scause
    80008588:	100027f3          	csrr	a5,sstatus
    8000858c:	0027f793          	andi	a5,a5,2
    80008590:	06079e63          	bnez	a5,8000860c <console_handler+0x9c>
    80008594:	00074c63          	bltz	a4,800085ac <console_handler+0x3c>
    80008598:	01813083          	ld	ra,24(sp)
    8000859c:	01013403          	ld	s0,16(sp)
    800085a0:	00813483          	ld	s1,8(sp)
    800085a4:	02010113          	addi	sp,sp,32
    800085a8:	00008067          	ret
    800085ac:	0ff77713          	andi	a4,a4,255
    800085b0:	00900793          	li	a5,9
    800085b4:	fef712e3          	bne	a4,a5,80008598 <console_handler+0x28>
    800085b8:	ffffe097          	auipc	ra,0xffffe
    800085bc:	6dc080e7          	jalr	1756(ra) # 80006c94 <plic_claim>
    800085c0:	00a00793          	li	a5,10
    800085c4:	00050493          	mv	s1,a0
    800085c8:	02f50c63          	beq	a0,a5,80008600 <console_handler+0x90>
    800085cc:	fc0506e3          	beqz	a0,80008598 <console_handler+0x28>
    800085d0:	00050593          	mv	a1,a0
    800085d4:	00001517          	auipc	a0,0x1
    800085d8:	e4c50513          	addi	a0,a0,-436 # 80009420 <CONSOLE_STATUS+0x410>
    800085dc:	fffff097          	auipc	ra,0xfffff
    800085e0:	afc080e7          	jalr	-1284(ra) # 800070d8 <__printf>
    800085e4:	01013403          	ld	s0,16(sp)
    800085e8:	01813083          	ld	ra,24(sp)
    800085ec:	00048513          	mv	a0,s1
    800085f0:	00813483          	ld	s1,8(sp)
    800085f4:	02010113          	addi	sp,sp,32
    800085f8:	ffffe317          	auipc	t1,0xffffe
    800085fc:	6d430067          	jr	1748(t1) # 80006ccc <plic_complete>
    80008600:	fffff097          	auipc	ra,0xfffff
    80008604:	3e0080e7          	jalr	992(ra) # 800079e0 <uartintr>
    80008608:	fddff06f          	j	800085e4 <console_handler+0x74>
    8000860c:	00001517          	auipc	a0,0x1
    80008610:	f1450513          	addi	a0,a0,-236 # 80009520 <digits+0x78>
    80008614:	fffff097          	auipc	ra,0xfffff
    80008618:	a68080e7          	jalr	-1432(ra) # 8000707c <panic>
	...
